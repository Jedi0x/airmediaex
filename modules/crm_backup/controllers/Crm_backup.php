<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Crm_backup extends AdminController
{   
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Crm_backup_model');
    }

    public function index()
    {
        
    	if (!has_permission('crm_backup', '', 'view')) {
            if (!have_assigned_customers() && !has_permission('crm_backup', '', 'create')) {
                access_denied('crm_backup');
            }
        }

        $data['crm_backups'] = $this->Crm_backup_model->get();
        $data['title'] = _l('crm_backup');
        $this->load->view('manage', $data);
    }

    public function manage()
    {
        if (!has_permission('crm_backup', '', 'view')) {
            if (!have_assigned_customers() && !has_permission('crm_backup', '', 'create')) {
                access_denied('crm_backup');
            }
        }

        if($this->input->post()){
            $insert = $this->input->post();
            update_options($insert);
            set_alert('success', _l('settings_updated'));
            redirect(admin_url('crm_backup/manage'));
        }
    
        $data['backup_created_at'] = get_option('backup_created_at');
        $data['backup_remove'] = get_option('backup_remove');

        $data['title'] = _l('crm_backup');
        $this->load->view('index', $data);
    }

    /* Table  */

    public function table()
    {
        if (!has_permission('crm_backup', '', 'view')) {
            if (!have_assigned_customers() && !has_permission('crm_backup', '', 'create')) {
                ajax_access_denied();
            }
        }
        $this->app->get_table_data(module_views_path('crm_backup', 'table'));
    }


    public function update_settings()
    {
        if ($this->input->post()) {

            $data = $this->input->post();
            update_options($data);
            $success = true;
            $message = _l('added_successfully', _l('settings_updated'));

            echo json_encode([
                'success' => $success,
                'message' => $message,
            ]);  
        }
        
    }



    public function restore_backup($id)
    {   
        ini_set('max_execution_time', 6000);
        $crm_backup = $this->Crm_backup_model->get($id);
        $backup_name =  explode(".zip",$crm_backup->backup_name);
        $zip = new ZipArchive;
        if ($zip->open(CRM_BACKUPS_FOLDER.$crm_backup->backup_name) === TRUE) {
       
            $zip->extractTo(CRM_BACKUPS_FOLDER.$backup_name[0]);
            $zip->close();

            $assets_src = CRM_BACKUPS_FOLDER.$backup_name[0].'/assets'; 
            $assets_dst = FCPATH.'assets'; 
            $this->custom_copy($assets_src, $assets_dst); 

            $application_src = CRM_BACKUPS_FOLDER.$backup_name[0].'/application'; 
            $application_dst = FCPATH.'application'; 
            $this->custom_copy($application_src, $application_dst); 

            $modules_src = CRM_BACKUPS_FOLDER.$backup_name[0].'/modules'; 
            $modules_dst = FCPATH.'modules'; 
            $this->custom_copy($modules_src, $modules_dst); 

            $uploads_src = CRM_BACKUPS_FOLDER.$backup_name[0].'/uploads'; 
            $uploads_dst = FCPATH.'uploads'; 
            $this->custom_copy($uploads_src, $uploads_dst); 

            $dest = CRM_BACKUPS_FOLDER . $backup_name[0];
            $this->deleteDirectory($dest);
            
            set_alert('success', _l('backup_restored'));
            redirect(admin_url());

        } else {
            set_alert('danger', _l('backup_restored'));
            redirect(admin_url());
        }
    }

    public function custom_copy($src, $dst) {  
  
    // open the source directory 
    $dir = opendir($src);  
  
    // Make the destination directory if not exist 
    @mkdir($dst);  
  
    // Loop through the files in source directory 
    while( $file = readdir($dir) ) {  
  
        if (( $file != '.' ) && ( $file != '..' )) {  
            if ( is_dir($src . '/' . $file) )  
            {  
  
                // Recursively calling custom copy function 
                // for sub directory  
                $this->custom_copy($src . '/' . $file, $dst . '/' . $file);  
  
            }  
            else {  
                copy($src . '/' . $file, $dst . '/' . $file);  
            }  
        }  
    }  
  
    closedir($dir); 
}

    public function deleteDirectory($dir) {
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



    public function delete_backup($id)
    {
        $crm_backup = $this->Crm_backup_model->get($id);
        unlink(CRM_BACKUPS_FOLDER.$crm_backup->backup_name);

        if(get_option('dropbox_drive_active') == 1){
            $this->dropboxapi->delete_file($crm_backup->backup_name);
        }
        if(get_option('google_drive_active') == 1){
            $this->google->delete_file($crm_backup->google_drive_file_id);
        }
        if(get_option('onedrive_active') == 1){
            $this->onedriveapi->delete($crm_backup->onedrive_file);
        }

        $res = $this->Crm_backup_model->delete($id);
        if($res){
            set_alert('success', _l('backup_deleted'));
            redirect(admin_url('crm_backup'));
        }
        
    }


}