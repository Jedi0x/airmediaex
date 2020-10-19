<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Crm_backup extends AdminController
{   
    public function __construct()
    {
        parent::__construct();
   
    }

    public function index()
    {
    	if (!has_permission('crm_backup', '', 'view')) {
            if (!have_assigned_customers() && !has_permission('crm_backup', '', 'create')) {
                access_denied('crm_backup');
            }
        }

        if($this->input->post()){
        	$insert = $this->input->post();
        	update_option('backup_created_at', $insert['backup_created_at']);
        	update_option('backup_remove', $insert['backup_remove']);
            set_alert('success', _l('settings_updated'));
            redirect(admin_url('crm_backup'));
        }
    
        $data['backup_created_at'] = get_option('backup_created_at');
        $data['backup_remove'] = get_option('backup_remove');

        $data['title'] = _l('crm_backup');
        $this->load->view('manage', $data);
    }
}