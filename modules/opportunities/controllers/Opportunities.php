<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Opportunities extends AdminController
{   
     public function __construct()
    {
        parent::__construct();
        $this->load->model('Staff_model');
        $this->load->model('Opportunity_model','opportunity');

    }

    public function index()
    {
        if (!has_permission('opportunities', '', 'view')) {
            if (!have_assigned_customers() && !has_permission('opportunities', '', 'create')) {
                access_denied('opportunities');
            }
        }

        $this->load->model('contracts_model');
        $data['contract_types'] = $this->contracts_model->get_contract_types();
        $data['groups']         = $this->clients_model->get_groups();
        $data['title']          = _l('opportunities');

        $this->load->model('proposals_model');
        $data['proposal_statuses'] = $this->proposals_model->get_statuses();

        $this->load->model('invoices_model');
        $data['invoice_statuses'] = $this->invoices_model->get_statuses();

        $this->load->model('estimates_model');
        $data['estimate_statuses'] = $this->estimates_model->get_statuses();

        $this->load->model('projects_model');
        $data['project_statuses'] = $this->projects_model->get_project_statuses();

        $data['customer_admins'] = $this->clients_model->get_customers_admin_unique_ids();

        $whereContactsLoggedIn = '';
        if (!has_permission('opportunities', '', 'view')) {
            $whereContactsLoggedIn = ' AND userid IN (SELECT customer_id FROM ' . db_prefix() . 'customer_admins WHERE staff_id=' . get_staff_user_id() . ')';
        }

        $data['contacts_logged_in_today'] = $this->clients_model->get_contacts('', 'last_login LIKE "' . date('Y-m-d') . '%"' . $whereContactsLoggedIn);

        $data['countries'] = $this->clients_model->get_clients_distinct_countries();

        $this->load->view('manage', $data);
    }

    public function table()
    {
        if (!has_permission('opportunities', '', 'view')) {
            if (!have_assigned_customers() && !has_permission('opportunities', '', 'create')) {
                ajax_access_denied();
            }
        }
        
        $this->app->get_table_data(module_views_path('opportunities', 'table'));
    }


    public function get_contacts()
    {
        $client = $_POST['id'];
        $contacts = $this->clients_model->get_contacts($client);
        foreach ($contacts as $k => $v) {
            echo "<option  value = '".$v['id']."'>".$v['firstname']." ".$v['lastname']."</option>";
        } 
    }

    public function all_contacts()
    {
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('all_contacts');
        }

        if (is_gdpr() && get_option('gdpr_enable_consent_for_contacts') == '1') {
            $this->load->model('gdpr_model');
            $data['consent_purposes'] = $this->gdpr_model->get_consent_purposes();
        }

        $data['title'] = _l('customer_contacts');
        $this->load->view('admin/clients/all_contacts', $data);
    }


    public function opportunity($id = '')
    {
        if (!has_permission('opportunities', '', 'view')) {
            if ($id != '' && !is_customer_admin($id)) {
                access_denied('opportunities');
            }
        }

        if ($this->input->post() && !$this->input->is_ajax_request()) {
            if ($id == '') {
                if (!has_permission('opportunities', '', 'create')) {
                    access_denied('opportunities');
                }

                $data = $this->input->post();
               
                $save_and_add_contact = false;
                if (isset($data['save_and_add_contact'])) {
                    unset($data['save_and_add_contact']);
                    $save_and_add_contact = true;
                }
                //add Opportunity
                $id = $this->opportunity->add($data);
                hooks()->do_action('after_opportunity_added', $id);

                
      
                if ($id) {
                    set_alert('success', _l('added_successfully', _l('proposal_for_opportunity')));
                    if ($save_and_add_contact == false) {
                        redirect(admin_url('opportunities/opportunity/' . $id));
                    } else {
                        redirect(admin_url('opportunities/opportunity/' . $id));
                    }
                }
            } else {
                if (!has_permission('opportunities', '', 'edit')) {
                    if (!is_customer_admin($id)) {
                        access_denied('opportunities');
                    }
                }
                //edit Opportunity
                $success = $this->opportunity->update($this->input->post(), $id);
                if ($success == true) {
                    set_alert('success', _l('updated_successfully', _l('proposal_for_opportunity')));
                }
                redirect(admin_url('opportunities/opportunity/' . $id));
            }
        }

        $group         = !$this->input->get('group') ? 'profile' : $this->input->get('group');
        $data['group'] = $group;

        if ($group != 'contacts' && $contact_id = $this->input->get('contactid')) {
            redirect(admin_url('opportunities/opportunity/' . $id . '?group=profile'));
        }

        if ($id == '') {
            $title = _l('add_new', _l('opportunity'));
            $data['add_new'] = true;
        } else {
            $opportunity  = $this->opportunity->get($id);
            $data['opportunities_tabs'] = get_opportunity_profile_tabs();
            
            
            $data['opportunities_tabs']['opportunity_profile'] = array('slug' => 'opportunity_profile','view' => 'opportunities/groups/opportunity_profile');
            //debug($data['opportunities_tabs'],true);
            if (!$opportunity) {
                show_404();
            }

            $data['contacts'] = $this->clients_model->get_contacts($id);
            $data['tab']      = isset($data['opportunities_tabs'][$group]) ? $data['opportunities_tabs'][$group] : null;

            if (!$data['tab']) {
                show_404();
            }

            // Fetch data based on groups
            if ($group == 'profile') {

                $data['opportunity_table'] = $this->db->query('SELECT ' . db_prefix() . 'opportunities.id as id, project_name, ' . db_prefix() . 'clients.company as company, CONCAT(' . db_prefix() . 'staff.firstname," ", ' . db_prefix() . 'staff.lastname) as staffname, probability, status, delivery_date, projected_sale_date, ' . db_prefix() . 'opportunities.datecreated as datecreated FROM ' . db_prefix() . 'opportunities LEFT JOIN ' . db_prefix() . 'clients ON ' . db_prefix() . 'clients.userid=' . db_prefix() . 'opportunities.account  LEFT JOIN ' . db_prefix() . 'staff ON ' . db_prefix() . 'staff.staffid=' . db_prefix() . 'opportunities.owner LEFT JOIN ' . db_prefix() . 'teams ON tblteams.opportunity_id=' . db_prefix() . 'opportunities.id  WHERE ' . db_prefix() . 'opportunities.id = '.$id.'  ORDER BY ' . db_prefix() . 'clients.company ASC')->result_array();
                    $data['customer_groups'] = $this->clients_model->get_customer_groups($id);
                $data['customer_admins'] = $this->clients_model->get_admins($id);
                $data['profile_client_contact']  =  $this->clients_model->get_contacts($opportunity->account);
            }elseif($group == 'opportunity_profile'){
                $data['customer_groups'] = $this->clients_model->get_customer_groups($id);
                $data['customer_admins'] = $this->clients_model->get_admins($id);
                $data['profile_client_contact']  =  $this->clients_model->get_contacts($opportunity->account);
            } elseif ($group == 'attachments') {
                $data['attachments'] = get_all_opportunity_attachments($id);
            } elseif ($group == 'contacts') {
                $data['opportunity_contacts'] = $this->clients_model->get_contacts($opportunity->account);
            } elseif ($group == 'estimates') {
                $this->load->model('estimates_model');
                $data['estimate_statuses'] = $this->estimates_model->get_statuses();
            } elseif ($group == 'invoices') {
                $this->load->model('invoices_model');
                $data['invoice_statuses'] = $this->invoices_model->get_statuses();
            } elseif ($group == 'credit_notes') {
                $this->load->model('credit_notes_model');
                $data['credit_notes_statuses'] = $this->credit_notes_model->get_statuses();
                $data['credits_available']     = $this->credit_notes_model->total_remaining_credits_by_customer($id);
            } elseif ($group == 'payments') {
                $this->load->model('payment_modes_model');
                $data['payment_modes'] = $this->payment_modes_model->get();
            } elseif ($group == 'notes') {
                $data['user_notes'] = $this->misc_model->get_notes($id, 'opportunity');
            } elseif ($group == 'call_log') {
                $data['call_logs'] = $this->opportunity->get_call_logs($id);
            }elseif ($group == 'projects') {
                $this->load->model('projects_model');
                $data['project_statuses'] = $this->projects_model->get_project_statuses();
            } elseif ($group == 'activity') {
                $data['activities'] = $this->opportunity->get_activities($id);
            } elseif ($group == 'team') {
                $data['teams'] = $this->opportunity->get_team_members($id);
            } elseif ($group == 'statement') {
                if (!has_permission('invoices', '', 'view') && !has_permission('payments', '', 'view')) {
                    set_alert('danger', _l('access_denied'));
                    redirect(admin_url('clients/client/' . $id));
                }
                $data = array_merge($data, prepare_mail_preview_data('customer_statement', $id));
            } elseif ($group == 'map') {
                if (get_option('google_api_key') != '' && !empty($client->latitude) && !empty($client->longitude)) {
                    $this->app_scripts->add('map-js', base_url($this->app_scripts->core_file('assets/js', 'map.js')) . '?v=' . $this->app_css->core_version());

                    $this->app_scripts->add('google-maps-api-js', [
                        'path'       => 'https://maps.googleapis.com/maps/api/js?key=' . get_option('google_api_key') . '&callback=initMap',
                        'attributes' => [
                            'async',
                            'defer',
                            'latitude'       => "$client->latitude",
                            'longitude'      => "$client->longitude",
                            'mapMarkerTitle' => "$client->company",
                        ],
                        ]);
                }
            }

            $data['staff'] = $this->staff_model->get('', ['active' => 1]);

            $data['opportunity'] = $opportunity;
            $data['opportunities']  = $this->opportunity->get();
            $data['staff_members'] = $this->opportunity->get_staff();

            

            $title          = $opportunity->project_name;

            // Get all active staff members (used to add reminder)
            $data['members'] = $data['staff'];

           
        }
    

        $this->load->model('currencies_model');
        $data['currencies'] = $this->currencies_model->get();
    
        $data['companies'] = $this->clients_model->get();
        $data['staffs'] = $this->Staff_model->get();

        $data['bodyclass'] = 'customer-profile dynamic-create-groups';
        $data['title']     = $title;

        // debug($data['tab']);
        // exit();

        // debug($data);
        $this->load->view('opportunities/opportunity', $data);
    }


    public function get_opportunities()
    {
        $client = $_POST['id'];
        $opportunities = $this->Opportunity_model->get("",array("account" => $client));
        foreach ($opportunities as $k => $v) {
            echo "<option  value = '".$v['id']."'>".$v['project_name']."</option>";
        } 
    }



    public function delete_call_log($id)
    {
        $success = $this->opportunity->delete_call_log($id);
        
        if (!$this->input->is_ajax_request()) {
            if ($success) {
                set_alert('success', _l('deleted', _l('opportunity_call_log')));
            }
            redirect($_SERVER['HTTP_REFERER']);
        } else {
            echo json_encode(['success' => $success]);
        }
    }



     public function delete_opportunity_note($id,$opportunity)
    {
        $success = $this->misc_model->delete_note($id);

        $log = 'ID: ' . $id;

        $isStaff = null;
        if (!is_client_logged_in() && is_staff_logged_in()) {
            $log .= ', From Staff: ' . get_staff_user_id();
            $isStaff = get_staff_user_id();
        }

        log_opportunity_activity($opportunity,'Opportunity Note Delete [' . $log . ']', $isStaff);

        if (!$this->input->is_ajax_request()) {
            if ($success) {
                set_alert('success', _l('deleted', _l('note')));
            }
            redirect($_SERVER['HTTP_REFERER']);
        } else {
            echo json_encode(['success' => $success]);
        }
    }

    public function export($contact_id)
    {
        if (is_admin()) {
            $this->load->library('gdpr/gdpr_contact');
            $this->gdpr_contact->export($contact_id);
        }
    }

    // Used to give a tip to the user if the company exists when new company is created
    public function check_duplicate_customer_name()
    {
        if (has_permission('customers', '', 'create')) {
            $companyName = trim($this->input->post('company'));
            $response    = [
                'exists'  => (bool) total_rows(db_prefix() . 'clients', ['company' => $companyName]) > 0,
                'message' => _l('company_exists_info', '<b>' . $companyName . '</b>'),
            ];
            echo json_encode($response);
        }
    }

    public function save_longitude_and_latitude($client_id)
    {
        if (!has_permission('customers', '', 'edit')) {
            if (!is_customer_admin($client_id)) {
                ajax_access_denied();
            }
        }

        $this->db->where('userid', $client_id);
        $this->db->update(db_prefix() . 'clients', [
            'longitude' => $this->input->post('longitude'),
            'latitude'  => $this->input->post('latitude'),
        ]);
        if ($this->db->affected_rows() > 0) {
            echo 'success';
        } else {
            echo 'false';
        }
    }

    public function add_call_log($opportunity_id='')
    {   
        $data = $this->input->post();
        $data['opportunity_id'] = $opportunity_id;
        $data['addedfrom']   = get_staff_user_id();
        $this->opportunity->add_call_log($data);
        set_alert('success', _l('added_successfully', _l('opportunity_call_log_tab')));
        redirect($_SERVER['HTTP_REFERER']);
    }


    public function add_team($opportunity_id='')
    {
        $input = $this->input->post();
        $data['team_members'] = implode(",",$input['team']);
        // $data['team_members'] = json_encode($input['team']);
        $data['opportunity_id'] = $opportunity_id;
        $data['datecreated'] = date('Y-m-d H:i:s');

        if(isset($input['team_id'])){
            $this->opportunity->update_team($data['team_members'],$input['team_id'],$opportunity_id);
            set_alert('success', _l('updated_successfully', _l('opportunity_team_member_tab')));
        }else{
            $this->opportunity->add_team($data);
            set_alert('success', _l('added_successfully', _l('opportunity_team_member_tab')));
        }
        
       
        redirect($_SERVER['HTTP_REFERER']);
    }


    public function remove_team_member($opportunity_id, $team_member)
    {
        $this->opportunity->delete_team_member($opportunity_id,$team_member);
        set_alert('success', _l('deleted', _l('opportunity_team_member_tab')));
        redirect($_SERVER['HTTP_REFERER']);
    }

    public function add_contact($opportunity_id='')
    {
        $input = $this->input->post();
        $data['contacts'] = implode(",",$input['contacts']);
        $this->opportunity->update_contact($data,$opportunity_id);
        set_alert('success', _l('updated_successfully', _l('opportunity_contact_tab')));
        redirect($_SERVER['HTTP_REFERER']);
    }

    public function remove_contact($opportunity_id, $contact)
    {
        $this->opportunity->delete_opportunity_contact($opportunity_id,$contact);
        set_alert('success', _l('deleted', _l('opportunity_contact_tab')));
        redirect($_SERVER['HTTP_REFERER']);
    }

    public function form_contact($customer_id, $contact_id = '')
    {
        if (!has_permission('customers', '', 'view')) {
            if (!is_customer_admin($customer_id)) {
                echo _l('access_denied');
                die;
            }
        }
        $data['customer_id'] = $customer_id;
        $data['contactid']   = $contact_id;
        if ($this->input->post()) {
            $data             = $this->input->post();
            $data['password'] = $this->input->post('password', false);

            unset($data['contactid']);
            if ($contact_id == '') {
                if (!has_permission('customers', '', 'create')) {
                    if (!is_customer_admin($customer_id)) {
                        header($_SERVER['SERVER_PROTOCOL'] . ' 400 Bad error');
                        echo json_encode([
                            'success' => false,
                            'message' => _l('access_denied'),
                        ]);
                        die;
                    }
                }
                $id      = $this->clients_model->add_contact($data, $customer_id);
                $message = '';
                $success = false;
                if ($id) {
                    handle_contact_profile_image_upload($id);
                    $success = true;
                    $message = _l('added_successfully', _l('contact'));
                }
                echo json_encode([
                    'success'             => $success,
                    'message'             => $message,
                    'has_primary_contact' => (total_rows(db_prefix() . 'contacts', ['userid' => $customer_id, 'is_primary' => 1]) > 0 ? true : false),
                    'is_individual'       => is_empty_customer_company($customer_id) && total_rows(db_prefix() . 'contacts', ['userid' => $customer_id]) == 1,
                ]);
                die;
            }
            if (!has_permission('customers', '', 'edit')) {
                if (!is_customer_admin($customer_id)) {
                    header($_SERVER['SERVER_PROTOCOL'] . ' 400 Bad error');
                    echo json_encode([
                            'success' => false,
                            'message' => _l('access_denied'),
                        ]);
                    die;
                }
            }
            $original_contact = $this->clients_model->get_contact($contact_id);
            $success          = $this->clients_model->update_contact($data, $contact_id);
            $message          = '';
            $proposal_warning = false;
            $original_email   = '';
            $updated          = false;
            if (is_array($success)) {
                if (isset($success['set_password_email_sent'])) {
                    $message = _l('set_password_email_sent_to_client');
                } elseif (isset($success['set_password_email_sent_and_profile_updated'])) {
                    $updated = true;
                    $message = _l('set_password_email_sent_to_client_and_profile_updated');
                }
            } else {
                if ($success == true) {
                    $updated = true;
                    $message = _l('updated_successfully', _l('contact'));
                }
            }
            if (handle_contact_profile_image_upload($contact_id) && !$updated) {
                $message = _l('updated_successfully', _l('contact'));
                $success = true;
            }
            if ($updated == true) {
                $contact = $this->clients_model->get_contact($contact_id);
                if (total_rows(db_prefix() . 'proposals', [
                        'rel_type' => 'customer',
                        'rel_id' => $contact->userid,
                        'email' => $original_contact->email,
                    ]) > 0 && ($original_contact->email != $contact->email)) {
                    $proposal_warning = true;
                    $original_email   = $original_contact->email;
                }
            }
            echo json_encode([
                    'success'             => $success,
                    'proposal_warning'    => $proposal_warning,
                    'message'             => $message,
                    'original_email'      => $original_email,
                    'has_primary_contact' => (total_rows(db_prefix() . 'contacts', ['userid' => $customer_id, 'is_primary' => 1]) > 0 ? true : false),
                ]);
            die;
        }
        if ($contact_id == '') {
            $title = _l('add_new', _l('contact_lowercase'));
        } else {
            $data['contact'] = $this->clients_model->get_contact($contact_id);

            if (!$data['contact']) {
                header($_SERVER['SERVER_PROTOCOL'] . ' 400 Bad error');
                echo json_encode([
                    'success' => false,
                    'message' => 'Contact Not Found',
                ]);
                die;
            }
            $title = $data['contact']->firstname . ' ' . $data['contact']->lastname;
        }

        $data['customer_permissions'] = get_contact_permissions();
        $data['title']                = $title;
        $this->load->view('admin/clients/modals/contact', $data);
    }


    public function edit_call_log()
    {
        $call_log_id = $_POST['id'];
        $data['call_log'] = $this->opportunity->get_call_log($call_log_id);
        $this->load->view('opportunities/modals/call_log', $data);

    }


    public function update_call($id='')
    {   
        $data = $this->input->post();
        $this->opportunity->update_call_log($id,$data);
        set_alert('success', _l('updated_successfully', _l('opportunity_call_log')));
        redirect($_SERVER['HTTP_REFERER']);
    }

    public function confirm_registration($client_id)
    {
        if (!is_admin()) {
            access_denied('Customer Confirm Registration, ID: ' . $client_id);
        }
        $this->clients_model->confirm_registration($client_id);
        set_alert('success', _l('customer_registration_successfully_confirmed'));
        redirect($_SERVER['HTTP_REFERER']);
    }

    public function update_file_share_visibility()
    {
        if ($this->input->post()) {
            $file_id           = $this->input->post('file_id');
            $share_opportunities_id = [];

            if ($this->input->post('share_opportunities_id')) {
                $share_opportunities_id = $this->input->post('share_opportunities_id');
            }

            $this->db->where('file_id', $file_id);
            $this->db->delete(db_prefix() . 'shared_opportunity_files');

            foreach ($share_opportunities_id as $share_opportunity_id) {
                $this->db->insert(db_prefix() . 'shared_opportunity_files', [
                    'file_id'    => $file_id,
                    'opportunity_id' => $share_opportunity_id,
                ]);
            }
        }
    }

    public function delete_contact_profile_image($contact_id)
    {
        hooks()->do_action('before_remove_contact_profile_image');
        if (file_exists(get_upload_path_by_type('contact_profile_images') . $contact_id)) {
            delete_dir(get_upload_path_by_type('contact_profile_images') . $contact_id);
        }
        $this->db->where('id', $contact_id);
        $this->db->update(db_prefix() . 'contacts', [
            'profile_image' => null,
        ]);
    }

    public function mark_as_active($id)
    {
        $this->db->where('userid', $id);
        $this->db->update(db_prefix() . 'clients', [
            'active' => 1,
        ]);
        redirect(admin_url('clients/client/' . $id));
    }

    public function consents($id)
    {
        if (!has_permission('customers', '', 'view')) {
            if (!is_customer_admin(get_user_id_by_contact_id($id))) {
                echo _l('access_denied');
                die;
            }
        }

        $this->load->model('gdpr_model');
        $data['purposes']   = $this->gdpr_model->get_consent_purposes($id, 'contact');
        $data['consents']   = $this->gdpr_model->get_consents(['contact_id' => $id]);
        $data['contact_id'] = $id;
        $this->load->view('admin/gdpr/contact_consent', $data);
    }

    public function update_all_proposal_emails_linked_to_customer($contact_id)
    {
        $success = false;
        $email   = '';
        if ($this->input->post('update')) {
            $this->load->model('proposals_model');

            $this->db->select('email,userid');
            $this->db->where('id', $contact_id);
            $contact = $this->db->get(db_prefix() . 'contacts')->row();

            $proposals = $this->proposals_model->get('', [
                'rel_type' => 'customer',
                'rel_id'   => $contact->userid,
                'email'    => $this->input->post('original_email'),
            ]);
            $affected_rows = 0;

            foreach ($proposals as $proposal) {
                $this->db->where('id', $proposal['id']);
                $this->db->update(db_prefix() . 'proposals', [
                    'email' => $contact->email,
                ]);
                if ($this->db->affected_rows() > 0) {
                    $affected_rows++;
                }
            }

            if ($affected_rows > 0) {
                $success = true;
            }
        }
        echo json_encode([
            'success' => $success,
            'message' => _l('proposals_emails_updated', [
                _l('contact_lowercase'),
                $contact->email,
            ]),
        ]);
    }

    public function assign_admins($id)
    {
        if (!has_permission('customers', '', 'create') && !has_permission('customers', '', 'edit')) {
            access_denied('customers');
        }
        $success = $this->clients_model->assign_admins($this->input->post(), $id);
        if ($success == true) {
            set_alert('success', _l('updated_successfully', _l('client')));
        }

        redirect(admin_url('clients/client/' . $id . '?tab=customer_admins'));
    }

    public function delete_customer_admin($customer_id, $staff_id)
    {
        if (!has_permission('customers', '', 'create') && !has_permission('customers', '', 'edit')) {
            access_denied('customers');
        }

        $this->db->where('customer_id', $customer_id);
        $this->db->where('staff_id', $staff_id);
        $this->db->delete(db_prefix() . 'customer_admins');
        redirect(admin_url('clients/client/' . $customer_id) . '?tab=customer_admins');
    }

    public function delete_contact($customer_id, $id)
    {
        if (!has_permission('customers', '', 'delete')) {
            if (!is_customer_admin($customer_id)) {
                access_denied('customers');
            }
        }
        $contact      = $this->clients_model->get_contact($id);
        $hasProposals = false;
        if ($contact && is_gdpr()) {
            if (total_rows(db_prefix() . 'proposals', ['email' => $contact->email]) > 0) {
                $hasProposals = true;
            }
        }

        $this->clients_model->delete_contact($id);
        if ($hasProposals) {
            $this->session->set_flashdata('gdpr_delete_warning', true);
        }
        redirect(admin_url('clients/client/' . $customer_id . '?group=contacts'));
    }

    public function contacts($client_id)
    {
        $this->app->get_table_data('contacts', [
            'client_id' => $client_id,
        ]);
    }

    public function upload_attachment($id)
    {
        handle_opportunity_attachments_upload($id);
    }

    public function add_external_attachment()
    {
        if ($this->input->post()) {
            $this->misc_model->add_attachment_to_database($this->input->post('clientid'), 'customer', $this->input->post('files'), $this->input->post('external'));
        }
    }

    public function delete_attachment($customer_id, $id)
    {
        if (has_permission('opportunities', '', 'delete') || is_customer_admin($customer_id)) {
            $this->opportunity->delete_attachment($id);
        }
        redirect($_SERVER['HTTP_REFERER']);
    }

    /* Delete Opportunity */
    public function delete($id)
    {
        if (!has_permission('opportunities', '', 'delete')) {
            access_denied('opportunities');
        }
        if (!$id) {
            redirect(admin_url('opportunities'));
        }
        $response = $this->opportunity->delete($id);
        if ($response == true) {
            set_alert('success', _l('deleted', _l('opportunity')));
        } else {
            set_alert('warning', _l('problem_deleting', _l('opportunity')));
        }
        redirect(admin_url('opportunities'));
    }

    public function get_customer_billing_and_shipping_details($id)
    {
        echo json_encode($this->clients_model->get_customer_billing_and_shipping_details($id));
    }


    public function estimate_table_opportunity($opportunity = '')
    {
        if (!has_permission('estimates', '', 'view') && !has_permission('estimates', '', 'view_own') && get_option('allow_staff_view_estimates_assigned') == '0') {
            ajax_access_denied();
        }

        $this->app->get_table_data('estimates', [
            'opportunity' => $opportunity,
        ]);
    }

    public function expenses_table_opportunity($opportunity = '')
    {
        if (!has_permission('expenses', '', 'view') && !has_permission('expenses', '', 'view_own')) {
            ajax_access_denied();
        }

        $this->app->get_table_data('expenses', [
            'opportunity' => $opportunity,
        ]);
    }


    
    public function add_note($rel_id, $rel_type)
    {
        if ($this->input->post()) {
            $success = $this->opportunity->add_note($this->input->post(), $rel_type, $rel_id);
            if ($success) {
                set_alert('success', _l('added_successfully', _l('note')));
            }
        }
        redirect($_SERVER['HTTP_REFERER']);
    }

    public function edit_note($id)
    {
        if ($this->input->post()) {
            $success = $this->opportunity->edit_note($this->input->post(), $id);
            echo json_encode([
                'success' => $success,
                'message' => _l('note_updated_successfully'),
            ]);
        }
    }

    public function delete_note($id)
    {
        $success = $this->opportunity->delete_note($id);

        if (!$this->input->is_ajax_request()) {
            if ($success) {
                set_alert('success', _l('deleted', _l('note')));
            }
            redirect($_SERVER['HTTP_REFERER']);
        } else {
            echo json_encode(['success' => $success]);
        }
    }
}
