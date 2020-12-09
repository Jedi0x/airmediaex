<?php
defined('BASEPATH') or exit('No direct script access allowed');

use Krizalys\Onedrive\Onedrive;

class Onedriveapi
{
    private $ci;
    public $app_key;
    public $app_secret;
    public $redirect_uri;
    public $client;
    public function __construct(){
        ini_set('memory_limit', '256M');
        $this->ci = &get_instance();
        require_once('./modules/'.CRM_BACKUP . '/third_party/Onedrive/vendor/autoload.php');
        $this->app_key      = get_option('onedrive_app_key');
        $this->app_secret   = get_option('onedrive_app_secret');
        $this->redirect_uri = get_option('onedrive_redirect_url');
        $this->client = Onedrive::client($this->app_key);
    }

    public function authorize() {
        // Gets a log in URL with sufficient privileges from the OneDrive API.
        $url = $this->client->getLogInUrl([
            'files.read',
            'files.read.all',
            'files.readwrite',
            'files.readwrite.all',
            'directory.read.all',
            'directory.readwrite.all',
            'offline_access',
        ], $this->redirect_uri);

        update_option('onedrive_access_token', serialize($this->client->getState()));
        redirect($url);
    }


    public function save_access_token($code='')
    {
        $state = unserialize(get_option('onedrive_access_token'));
        $this->client = Onedrive::client($this->app_key,['state' => $state,]);
        // Obtain the token using the code received by the OneDrive API.
        $this->client->obtainAccessToken($this->app_secret, $code);
        // Persist the OneDrive client' state for next API requests.

        update_option('onedrive_access_token', serialize($this->client->getState()));
        update_option('one_drive_authorized', 1);
        
        return true;
    }

    public function upload_file($filename='')
    {   
        $state = unserialize(get_option('onedrive_access_token'));
        $this->client = Onedrive::client($this->app_key,['state' => $state]);
        $file = $this->client->getRoot()->upload($filename, CRM_BACKUPS_FOLDER.$filename);
        return serialize($file);

    }

    public function delete($filename)
    {   
        $state = unserialize(get_option('onedrive_access_token'));
        $this->client = Onedrive::client($this->app_key,['state' => $state]);
        $filename = unserialize($filename);
        return $filename->delete();
        debug($filename,true);
    }





}
