<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Crm_backups
{
    private $ci;

    public function __construct()
    {
        $this->ci = &get_instance();
    }

    public function make_backup_crm($manual = false)
    {
        $this->create_crm_backup_directory();
        $manager = $this->get_backup_manager_name();

        if ($manager == 'backup_manager') {
            $configFileSystemProvider = new \BackupManager\Config\Config([
                'local' => [
                    'type' => 'Local',
                    'root' => CRM_BACKUPS_FOLDER,
                ],
            ]);

            // Only mysql is supported, not sure if this do the job
            if ($this->ci->db->dbdriver != 'mysqli') {
                return $this->crm_backup_codeigniter();
            }

            /**
            * If port is configured in the hostname e.q. hostname:port
            * @var string
            */

            $port = '';
            if ($parsePort = parse_url(APP_DB_HOSTNAME, PHP_URL_PORT)) {
                if (is_int($parsePort)) {
                    $port = $parsePort;
                }
            }

            $configDatabase = new \BackupManager\Config\Config([
                'production' => [
                    'type'     => 'mysql',
                    'host'     => APP_DB_HOSTNAME,
                    'port'     => $port,
                    'user'     => APP_DB_USERNAME,
                    'pass'     => APP_DB_PASSWORD,
                    'database' => APP_DB_NAME,
                ],
            ]);

            // build providers
            $filesystems = new \BackupManager\Filesystems\FilesystemProvider($configFileSystemProvider);
            $filesystems->add(new \BackupManager\Filesystems\LocalFilesystem);
            $databases = new \BackupManager\Databases\DatabaseProvider($configDatabase);
            $databases->add(new \BackupManager\Databases\MysqlDatabase);
            $compressors = new \BackupManager\Compressors\CompressorProvider;
            $compressors->add(new \BackupManager\Compressors\GzipCompressor);
            $compressors->add(new \BackupManager\Compressors\NullCompressor);

            // build manager
            $manager = new \BackupManager\Manager($filesystems, $databases, $compressors);

            $backup_name = date('Y-m-d-H-i-s') . '_backup-v' . wordwrap($this->ci->app->get_current_db_version(), 1, '-', true) . '.sql';

            try {

                /*
                Restore example, not working
                $manager->makeRestore()->run('local', '2018-06-12-12-02-28_backup.sql.gz', 'production', 'gzip');
                die;
                */

                $manager->makeBackup()
                    ->run('production', [
                        new \BackupManager\Filesystems\Destination('local', $backup_name),
                    ], 'null');

                    

                if ($manual == false) {
                    update_option('last_auto_backup', time());
                }

                $this->maybe_delete_old_backups();

                return true;
            } catch (Exception $e) {
                if (ENVIRONMENT !== 'production') {
                    log_activity('NEW BACKUP MANAGER ERROR [' . $e->getMessage() . ']');
                }

                return false;
            }
        } elseif ($manager == 'codeigniter') {
            return $this->crm_backup_codeigniter($manual);
        }
    }

   

    public function create_crm_backup_directory()
    {
        if (!is_dir(CRM_BACKUPS_FOLDER)) {
            mkdir(CRM_BACKUPS_FOLDER, 0755);
            $fp = fopen(rtrim(CRM_BACKUPS_FOLDER, '/') . '/' . 'index.html', 'w');
            fclose($fp);
            fopen(CRM_BACKUPS_FOLDER . '.htaccess', 'w');
            $fp = fopen(CRM_BACKUPS_FOLDER . '.htaccess', 'a+');
            if ($fp) {
                fwrite($fp, 'Order Deny,Allow' . PHP_EOL . 'Deny from all');
                fclose($fp);
            }
        }
    }

    public function get_backup_manager_name()
    {
        return defined('APP_DATABASE_BACKUP_MANAGER') ? APP_DATABASE_BACKUP_MANAGER : 'codeigniter';
    }

    private function crm_backup_codeigniter($manual)
    {
        $backup_created_at =  get_option('backup_created_at');
        $last_backup =  get_option('last_crm_backup');

        if($backup_created_at == 1){
            $backup_date = $last_backup + 60 * 60;
        }else if($backup_created_at == 2){
            $backup_date = $last_backup + 1  * 24 * 60 * 60;
        }else if($backup_created_at == 3){
            $backup_date = $last_backup + 7 * 24 * 60 * 60;
        }else if($backup_created_at == 4){
            $backup_date = $last_backup + 30 * 24 * 60 * 60;
        }

        if(time() > $backup_date){
            ini_set('max_execution_time', 600);
            $this->ci->load->library('zip');
            $this->handle_memory_limit_error();
            $this->ci->load->dbutil();

            $date_now = date('Y-m-d-H-i-s');
            $dest = unique_filename(CRM_BACKUPS_FOLDER, 'crm_backup_' . $date_now);

            $backup_name = $dest.'/database_backup_' . date('Y-m-d-H-i-s') . '-v' . wordwrap($this->ci->app->get_current_db_version(), 1, '-', true) . '.zip';

            $save_backup_path = CRM_BACKUPS_FOLDER . $backup_name;

            $application = "./application";
            $assets = "./assets";
            $system = "./system";
            $modules = "./modules";
            $indexfile = "./index.php";
            $uploads = "./uploads";
            $htaccessfile = "./.htaccess";
            $dest = CRM_BACKUPS_FOLDER . $dest;

            $bk_application = $this->folder_backup($application,$dest,"/application");
            $bk_assets = $this->folder_backup($assets,$dest,"/assets");
            $bk_system = $this->folder_backup($system,$dest,"/system");
            $modules = $this->folder_backup($modules,$dest,"/modules");
            $uploads = $this->folder_backup($uploads,$dest,"/uploads");
            $bk_index = $this->CopyFiles($indexfile,$dest."/index.php");
            $bk_htaccess = $this->CopyFiles($htaccessfile,$dest."/ .htaccess");

            $prefs = [
                    'format'   => 'zip',
                    'filename' => date('Y-m-d-H-i-s') . '_backup.sql',
                ];

            $backup           = @$this->ci->dbutil->backup($prefs);


            $this->ci->load->helper('file');

            if (@write_file($save_backup_path, $backup)) {

                $this->create_crm_backup_zip($dest,$date_now);
               
                if ($manual == false) {
                    update_option('last_auto_backup', time());
                }

                // $this->maybe_delete_old_backups();

                return true;
            }
        }

        return false;
    }

    private function create_crm_backup_zip($destination,$date_now)
    {
        $zip = new ZipArchive();
        $rootPath = realpath($destination);
        $zip->open(CRM_BACKUPS_FOLDER .'crm_backup_'.$date_now.'.zip', ZipArchive::CREATE | ZipArchive::OVERWRITE);


        $files = new RecursiveIteratorIterator(
            new RecursiveDirectoryIterator($rootPath),
            RecursiveIteratorIterator::LEAVES_ONLY
        );

        foreach ($files as $name => $file)
        {
            // Skip directories (they would be added automatically)
            if (!$file->isDir())
            {
                // Get real and relative path for current file
                $filePath = $file->getRealPath();
                $relativePath = substr($filePath, strlen($rootPath) + 1);
                // Add current file to archive
                $zip->addFile($filePath, $relativePath);
            }
        }

        // Zip archive will be created only after closing object
        $zip->close();

        update_option('last_crm_backup',time());

        $this->upload_on_drive('crm_backup_'.$date_now.'.zip');
        $this->deleteDirectory($destination);
    }

    private function upload_on_drive($folder)
    {
        $CI = &get_instance();

        $google_drive_file_id = NULL;
        $onedrive_file = NULL;
        if(get_option('dropbox_drive_active') == 1){
            $CI->dropboxapi->upload_file($folder);
        }
        if(get_option('google_drive_active') == 1){
            $response = $CI->google->upload_file($folder);
            $google_drive_file_id = $response['file_id'];
        }
        if(get_option('onedrive_active') == 1){
            $response = $CI->onedriveapi->upload_file($folder);
            $onedrive_file = $response;
        }
        $data = array('backup_name' => $folder, 'google_drive_file_id' => $google_drive_file_id, 'onedrive_file' => $onedrive_file, 'datecreated'=> date('Y-m-d H:i:s'));
        $CI->db->insert(db_prefix() . 'crm_backups', $data);
    }


    private function deleteDirectory($dir) {
        if (!file_exists($dir)) {
            return true;
        }

        if (!is_dir($dir)) {
            return unlink($dir);
        }

        foreach (scandir($dir) as $item) {
            if ($item == '.' || $item == '..') {
                continue;
            }

            if (!$this->deleteDirectory($dir . DIRECTORY_SEPARATOR . $item)) {
                return false;
            }

        }

        return rmdir($dir);
    }

    private function maybe_delete_old_backups()
    {
        $delete_backups = get_option('delete_backups_older_then');
        // After write backup check for delete
        if ($delete_backups != '0') {
            $backups                 = list_files(CRM_BACKUPS_FOLDER);
            $backups_days_to_seconds = ($delete_backups * 24 * 60 * 60);
            foreach ($backups as $b) {
                if ($b == 'index.html') {
                    continue;
                }
                if ((time() - filectime(CRM_BACKUPS_FOLDER . $b)) > $backups_days_to_seconds) {
                    @unlink(CRM_BACKUPS_FOLDER . $b);
                }
            }
        }
    }

    private function handle_memory_limit_error()
    {
        register_shutdown_function(function () {
            $error = error_get_last();

            if (null !== $error) {
                if (strpos($error['message'], 'Allowed memory size of') !== false) {
                    echo '<h2>A a fatal error has been triggered during backup because of PHP memory limit.</h2>';
                    echo '<div style="font-size:18px;">';
                    echo '<p>Your current PHP memory limit is ' . ini_get('memory_limit') . ' which seems <b>too low</b> to process the database backup.</p>';
                    echo '<p>As a suggestion please try the following:</p>';
                    echo '<ul>';
                    echo '<li>Increase the PHP memory limit and try again to perform a database backup again.</li>';
                    echo '<li>Try the optional backup manager (improved one) by defining a constant in application/config/app-config.php at the bottom add: <pre><code>define(\'APP_DATABASE_BACKUP_MANAGER\', \'backup_manager\');</code></pre></li>';
                    echo '</ul>';
                    echo '</div>';
                } else {
                    trigger_error('Fatal error: ' . $error['message'] . 'in ' . $error['file'] . ' on line ' . $error['line'], E_USER_ERROR);
                }
            }
        });
    }

    private function folder_backup($source,$dest,$folder,$app =true)
    {

        if(is_dir($source))
        {
            if(!is_dir($dest))
            {
                mkdir($dest, 0777, true);
            }

            if(!is_dir($dest.$folder) && $app == true)
            {
                mkdir($dest.$folder, 0777, true);
            }

            $dir_items = array_diff(scandir($source), array('..', '.'));

            if(count($dir_items) > 0)
            {
                foreach($dir_items as $v)
                {

                    if ($app == true) {
                        
                        $this->folder_backup(rtrim(rtrim($source, '/'), '\\').DIRECTORY_SEPARATOR.$v, rtrim(rtrim($dest.$folder, '/'), '\\').DIRECTORY_SEPARATOR.$v,false);
                    }else{

                        $this->folder_backup(rtrim(rtrim($source, '/'), '\\').DIRECTORY_SEPARATOR.$v, rtrim(rtrim($dest."/", '/'), '\\').DIRECTORY_SEPARATOR.$v,false);
                    }


                }
                if (@write_file($dest, $source)) {

                }
                return true;
                
            }


        }
        elseif(is_file($source))
        {
            copy($source, $dest);
        }
    }


    private function CopyFiles($source, $dest)
    {
        if(is_file($source))
        {
            copy($source, $dest);
            return true;
        }
    }

    
}
