<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Google_drive extends AdminController {

    function __construct() {
        parent::__construct();
        $this->load->library('crm_backup/google');
    }

    function index() {
        $this->authorize();
    }

    //authorize google drive
    function authorize() {
        $this->google->authorize();
    }

    //get access token of drive and save
    function save_access_token() {
        $this->access_only_admin();

        if (!empty($_GET)) {
            $this->google->save_access_token(get_array_value($_GET, 'code'));
            redirect(admin_url('crm_backup'));
        }
    }

}

/* End of file google_drive.php */
