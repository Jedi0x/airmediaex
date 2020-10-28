<?php
defined('BASEPATH') or exit('No direct script access allowed');

use Kunnu\Dropbox\Dropbox;
use Kunnu\Dropbox\DropboxApp;
use Kunnu\Dropbox\DropboxFile;


class Dropboxapi
{
    private $ci;
    public $drop_object;
    public $drop_file;

    public function __construct()
    {
        $this->ci = &get_instance();
        require_once('./modules/'.CRM_BACKUP . '/third_party/Dropbox/vendor/autoload.php');
        ini_set('memory_limit', '256M');
        $appKey      = get_option('dropbox_app_key');
        $appSecret   = get_option('dropbox_app_secret');
        $accessToken = get_option('dropbox_access_token');
        $app = new DropboxApp($appKey, $appSecret, $accessToken);

        //Configure Dropbox service
        $this->drop_object = new Dropbox($app);
    }


    public function upload_file($file_name)
    { 
        $this->drop_file = new DropboxFile(CRM_BACKUPS_FOLDER.$file_name, DropboxFile::MODE_READ);
        $file = $this->drop_object->simpleUpload($this->drop_file, "/".$file_name, ['autorename' => true]);
        $response = $this->getProtectedValue($file,'data');
        return $response;   
    }

    public function delete_file($file_name)
    {
        $response = $this->drop_object->delete("/".$file_name);
        return $response;
    }

    private function getProtectedValue($obj, $name) {
      $array = (array)$obj;
      $prefix = chr(0).'*'.chr(0);
      return $array[$prefix.$name];
    }



}
