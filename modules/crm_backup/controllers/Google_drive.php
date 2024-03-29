<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Google_drive extends AdminController {

    function __construct() {
        parent::__construct();
    }

    public function index() {
        $this->authorize();
    }

    //authorize google drive
    public function authorize() {
        $this->google->authorize();
    }

    //get access token of drive and save
    public function save_access_token() {
        if (!empty($_GET)) {
            $this->google->save_access_token(get_array_value($_GET, 'code'));
            set_alert('success', _l('authorized'));
            redirect(admin_url('crm_backup/manage'));
        }
    }

}

