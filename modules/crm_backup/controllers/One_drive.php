<?php

defined('BASEPATH') or exit('No direct script access allowed');

class One_drive extends AdminController {

    public function __construct() {
        parent::__construct();
    }

    public function index() {
        if ($this->input->post()) {
            $data = $this->input->post();
            update_options($data);
            $this->authorize();
        }
    }

    //authorize google drive
    public function authorize() {
        $this->onedriveapi->authorize();
    }

    //get access token of drive and save
    public function save_access_token() {
        if (!empty($_GET)) {
            $this->onedriveapi->save_access_token(get_array_value($_GET, 'code'));
            set_alert('success', _l('authorized'));
            redirect(admin_url('crm_backup/manage'));
        }
    }

}

