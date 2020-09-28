<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Opportunity_model extends App_Model
{
    private $contact_columns;

    public function __construct()
    {
        parent::__construct();

        $this->load->model(['client_vault_entries_model', 'client_groups_model', 'statement_model']);
    }

    /**
     * Get opportunity object based on passed opportunityid if not passed opportunityid return array of all opportunities
     * @param  mixed $id    opportunity id
     * @param  array  $where
     * @return mixed
     */
    public function get($id = '', $where = [])
    {
        $this->db->select("*");


        if ((is_array($where) && count($where) > 0) || (is_string($where) && $where != '')) {
            $this->db->where($where);
        }

        if (is_numeric($id)) {
            $this->db->where(db_prefix() . 'opportunities.id', $id);
            $opportunity = $this->db->get(db_prefix() . 'opportunities')->row();

            $GLOBALS['opportunity'] = $opportunity;

            return $opportunity;
        }

        $this->db->order_by('id', 'asc');

        return $this->db->get(db_prefix() . 'opportunities')->result_array();
    }


    public function get_data($select = "",$where = array(),$single_row = false,$join = array(), $like = array(),$or_where = "",$where_in = "", $order_by = "" ,$odr_method=""){

        
        $this->db->select($select);
        $this->db->from(db_prefix() . 'opportunities');
        if (!empty($join)) {
            foreach ($join as $key => $value) {
                $this->db->join($key,$value);
            }
        }

        if (!empty($where)) {
            $this->db->where($where);
        }


        if (!empty($or_where)) {
            $this->db->or_where($or_where);
        }       
        
        if (!empty($where_in)) {
            
            foreach ($where_in as $key => $value) {
                $this->db->where_in($key, $value);
            }
            
        }

        if (!empty($like)) {
            $this->db->like($like);
        }

        if ($single_row) {
            
            if (!empty($order_by)) {
                $this->db->order_by($order_by,$odr_method);
            }

            $res = $this->db->get()->row();

        }else{

            if (!empty($order_by)) {
                $this->db->order_by($order_by,$odr_method);
            }

            $res = $this->db->get()->result();

        }

        return $res;

    }

    /**
     * @param array $_POST data
     * @param opportunity_request is this request from the customer area
     * @return integer Insert ID
     * Add new opportunity to database
     */
    public function add($data, $client_or_lead_convert_request = false)
    {
       
        foreach ($data as $feilds => $values) {
            if($feilds == 'contacts'){
                $data['contacts'] = implode(",",$values);
            }
        }
        $data['datecreated'] = date('Y-m-d H:i:s');

        $this->db->insert(db_prefix() . 'opportunities', $data);
        $id = $this->db->insert_id();
        // if ($id) {
        //     $log = 'ID: ' . $id;

        //     if ($log == '' && isset($contact_id)) {
        //         $log = get_contact_full_name($contact_id);
        //     }

        //     $isStaff = null;
        //     if (!is_client_logged_in() && is_staff_logged_in()) {
        //         $log .= ', From Staff: ' . get_staff_user_id();
        //         $isStaff = get_staff_user_id();
        //     }

        //     log_activity('New Opportunity Created [' . $log . ']', $isStaff);
        //     log_opportunity_activity($id,'Opportunity Created [' . $log . ']', $isStaff);
        // }

        return $id;
    }

    /**
     * @param  array $_POST data
     * @param  integer ID
     * @return boolean
     * Update opportunity informations
     */
    public function update($data, $id, $client_request = false)
    {
      
        $affectedRows = 0;
        foreach ($data as $feilds => $values) {
            if($feilds == 'contacts'){
                $data['contacts'] = implode(",",$values);
            }
        }

        $data = hooks()->apply_filters('before_opportunity_updated', $data, $id);

        $this->db->where('id', $id);
        $this->db->update(db_prefix() . 'opportunities', $data);

        if ($this->db->affected_rows() > 0) {
            $affectedRows++;
        }

        if ($affectedRows > 0) {
            

            log_activity('Opportunity Info Updated [ID: ' . $id . ']');
            hooks()->do_action('after_opportunity_updated', $id);
            //log_opportunity_activity($id,'Opportunity Profile Updated [ID: ' . $id . ']');

            return true;
        }

        return false;
    }



    public function add_call_log($data)
    {
        $this->db->insert(db_prefix() . 'call_log', $data);
        $id = $this->db->insert_id();
         if ($id) {
            $log = 'ID: ' . $id;

            if ($log == '' && isset($contact_id)) {
                $log = get_contact_full_name($contact_id);
            }

            $isStaff = null;
            if (!is_client_logged_in() && is_staff_logged_in()) {
                $log .= ', From Staff: ' . get_staff_user_id();
                $isStaff = get_staff_user_id();
            }

            log_activity('New Call Log Created [' . $log . ']', $isStaff);
            log_opportunity_activity($data['opportunity_id'],'Opportunity Call Log Created [' . $log . ']', $isStaff);
        }
    }


    public function get_call_log($id='')
    {
        $this->db->select("*");
        $this->db->where(db_prefix() . 'call_log.id', $id);
        $call_log = $this->db->get(db_prefix() . 'call_log')->row();
        return $call_log;
    }


    public function update_call_log($id='',$data)
    {
        $this->db->where('id', $id);
        $this->db->update(db_prefix() . 'call_log', $data);

        if ($this->db->affected_rows() > 0) {
            $affectedRows++;
        }

        if ($affectedRows > 0) {
            log_opportunity_activity($data['opportunity_id'],'Opportunity Call Log Updated [ID: ' . $id . ']');
            return true;
        }

    }

    public function add_team($data)
    {
        $this->db->insert(db_prefix() . 'teams', $data);
        $id = $this->db->insert_id();
         if ($id) {
            $log = 'ID: ' . $id;

            if ($log == '' && isset($contact_id)) {
                $log = get_contact_full_name($contact_id);
            }

            $isStaff = null;
            if (!is_client_logged_in() && is_staff_logged_in()) {
                $log .= ', From Staff: ' . get_staff_user_id();
                $isStaff = get_staff_user_id();
            }
            log_opportunity_activity($data['opportunity_id'],'Team Created [' . $log . ']', $isStaff);
        }
    }


    /**
     * @param  array $_POST data
     * @param  integer ID
     * @return boolean
     * Update team informations
     */
    public function update_team($team, $id, $opportunity_id)
    {
    
        $this->db->where('id', $id);
        $data['team_members'] = $team;
        $this->db->update(db_prefix() . 'teams', $data);
        $log = 'ID: ' . $id;
        $isStaff = null;
        if (!is_client_logged_in() && is_staff_logged_in()) {
            $log .= ', From Staff: ' . get_staff_user_id();
            $isStaff = get_staff_user_id();
        }
        log_opportunity_activity($opportunity_id,'Opportunity Team Updated [' . $log . ']', $isStaff);
        return true;

        
    }


    /**
     * @param  array $_POST data
     * @param  integer ID
     * @return boolean
     * Update team informations
     */
    public function update_contact($data,$opportunity_id)
    {
    
        $this->db->where('id', $opportunity_id);
        $this->db->update(db_prefix() . 'opportunities', $data);
        $log = 'ID: ' . $opportunity_id;
        $isStaff = null;
        if (!is_client_logged_in() && is_staff_logged_in()) {
            $log .= ', From Staff: ' . get_staff_user_id();
            $isStaff = get_staff_user_id();
        }
        log_opportunity_activity($opportunity_id,'Opportunity Contact Updated [' . $log . ']', $isStaff);
        return true;

        
    }

    public function delete_team_member($opportunity_id,$team_member)
    {
        $this->db->select("*");
        $this->db->from(db_prefix() . 'teams');
        $this->db->where('opportunity_id',$opportunity_id);
        $res = $this->db->get()->row();
        $members = (explode(",",$res->team_members));
        delete_arrays_elements($team_member,$members);
        $members = array_values($members);

        $data['team_members'] = implode(",",$members);
        $this->db->where('opportunity_id', $opportunity_id);
        $this->db->update(db_prefix() . 'teams', $data);


        $log = 'ID: ' . $team_member;
        $isStaff = null;
        if (!is_client_logged_in() && is_staff_logged_in()) {
            $log .= ', From Staff: ' . get_staff_user_id();
            $isStaff = get_staff_user_id();
        }
        log_opportunity_activity($opportunity_id,'Opportunity Team Member Deleted [' . $log . ']', $isStaff);
        return true;
    }


     public function delete_opportunity_contact($opportunity_id,$contact)
    {
        $this->db->select("*");
        $this->db->from(db_prefix() . 'opportunities');
        $this->db->where('id',$opportunity_id);
        $res = $this->db->get()->row();
        //$contacts = json_decode($res->contacts);
        $contacts = (explode(",",$res->contacts));
        delete_arrays_elements($contact,$contacts);
        $contacts = array_values($contacts);
        // $data['contacts'] = json_encode($contacts);
        $data['contacts'] = implode(",",$contacts);
        $this->db->where('id', $opportunity_id);
        $this->db->update(db_prefix() . 'opportunities', $data);

        $log = 'ID: ' . $contact;
        $isStaff = null;
        if (!is_client_logged_in() && is_staff_logged_in()) {
            $log .= ', From Staff: ' . get_staff_user_id();
            $isStaff = get_staff_user_id();
        }
        log_opportunity_activity($opportunity_id,'Opportunity Contact Deleted [' . $log . ']', $isStaff);
        return true;
    }


    public function get_staff()
    {
        $this->db->select("*");
        $this->db->order_by('staffid', 'asc');
        return $this->db->get(db_prefix() . 'staff')->result_array();
    }

    

    /**
     * Get customer staff members that are added as customer admins
     * @param  mixed $id customer id
     * @return array
     */
    public function get_admins($id)
    {
        $this->db->where('customer_id', $id);

        return $this->db->get(db_prefix() . 'customer_admins')->result_array();
    }

    /**
     * Get unique staff id's of customer admins
     * @return array
     */
    public function get_customers_admin_unique_ids()
    {
        return $this->db->query('SELECT DISTINCT(staff_id) FROM ' . db_prefix() . 'customer_admins')->result_array();
    }



    /**
     * @param  integer ID
     * @return boolean
     * Delete client, also deleting rows from, dismissed client announcements, ticket replies, tickets, autologin, user notes
     */
    public function delete($id)
    {
        $affectedRows = 0;
       
        $this->db->where('id', $id);
        $this->db->delete(db_prefix() . 'opportunities');
        if ($this->db->affected_rows() > 0) {
            $affectedRows++;
            // Delete all opportunity estimates
            $this->db->where('opportunity', $id);
            $this->db->delete(db_prefix() . 'estimates');

            // Delete all opportunity expenses
            $this->db->where('opportunity', $id);
            $this->db->delete(db_prefix() . 'expenses');

            // Delete all opportunity proposals
            $this->db->where('rel_id', $id);
            $this->db->where('rel_type', 'opportunity');
            $this->db->delete(db_prefix() . 'proposals');

            // Delete all opportunity tasks
            $this->db->where('rel_id', $id);
            $this->db->where('rel_type', 'opportunity');
            $this->db->delete(db_prefix() . 'tasks');

            // Delete all opportunity teams
            $this->db->where('opportunity_id', $id);
            $this->db->delete(db_prefix() . 'teams');

            // Delete all opportunity calllogs
            $this->db->where('opportunity_id', $id);
            $this->db->delete(db_prefix() . 'call_log');


            // Delete all opportunity shared_opportunity_files
            $this->db->where('opportunity_id', $id);
            $this->db->delete(db_prefix() . 'shared_opportunity_files');


            // Delete all opportunity notes
            $this->db->where('rel_id', $id);
            $this->db->where('rel_type', 'opportunity');
            $this->db->delete(db_prefix() . 'notes');


            // Delete all opportunity activity log opportunity
            $this->db->where('opportunity_id', $id);
            $this->db->delete(db_prefix() . 'activity_log_opportunity');


        }
        if ($affectedRows > 0) {
           
            log_activity('Opportunity Deleted [ID: ' . $id . ']');

            return true;
        }

        return false;
    }

    /**
     * Delete customer contact
     * @param  mixed $id contact id
     * @return boolean
     */
    public function delete_contact($id)
    {
        hooks()->do_action('before_delete_contact', $id);

        $this->db->where('id', $id);
        $result      = $this->db->get(db_prefix() . 'contacts')->row();
        $customer_id = $result->userid;

        $last_activity = get_last_system_activity_id();

        $this->db->where('id', $id);
        $this->db->delete(db_prefix() . 'contacts');

        if ($this->db->affected_rows() > 0) {
            if (is_dir(get_upload_path_by_type('contact_profile_images') . $id)) {
                delete_dir(get_upload_path_by_type('contact_profile_images') . $id);
            }

            $this->db->where('contact_id', $id);
            $this->db->delete(db_prefix() . 'consents');

            $this->db->where('contact_id', $id);
            $this->db->delete(db_prefix() . 'shared_customer_files');

            $this->db->where('userid', $id);
            $this->db->where('staff', 0);
            $this->db->delete(db_prefix() . 'dismissed_announcements');

            $this->db->where('relid', $id);
            $this->db->where('fieldto', 'contacts');
            $this->db->delete(db_prefix() . 'customfieldsvalues');

            $this->db->where('userid', $id);
            $this->db->delete(db_prefix() . 'contact_permissions');

            $this->db->where('user_id', $id);
            $this->db->where('staff', 0);
            $this->db->delete(db_prefix() . 'user_auto_login');

            $this->db->select('ticketid');
            $this->db->where('contactid', $id);
            $this->db->where('userid', $customer_id);
            $tickets = $this->db->get(db_prefix() . 'tickets')->result_array();

            $this->load->model('tickets_model');
            foreach ($tickets as $ticket) {
                $this->tickets_model->delete($ticket['ticketid']);
            }

            $this->load->model('tasks_model');

            $this->db->where('addedfrom', $id);
            $this->db->where('is_added_from_contact', 1);
            $tasks = $this->db->get(db_prefix() . 'tasks')->result_array();

            foreach ($tasks as $task) {
                $this->tasks_model->delete_task($task['id'], false);
            }

            // Added from contact in customer profile
            $this->db->where('contact_id', $id);
            $this->db->where('rel_type', 'customer');
            $attachments = $this->db->get(db_prefix() . 'files')->result_array();

            foreach ($attachments as $attachment) {
                $this->delete_attachment($attachment['id']);
            }

            // Remove contact files uploaded to tasks
            $this->db->where('rel_type', 'task');
            $this->db->where('contact_id', $id);
            $filesUploadedFromContactToTasks = $this->db->get(db_prefix() . 'files')->result_array();

            foreach ($filesUploadedFromContactToTasks as $file) {
                $this->tasks_model->remove_task_attachment($file['id']);
            }

            $this->db->where('contact_id', $id);
            $tasksComments = $this->db->get(db_prefix() . 'task_comments')->result_array();
            foreach ($tasksComments as $comment) {
                $this->tasks_model->remove_comment($comment['id'], true);
            }

            $this->load->model('projects_model');

            $this->db->where('contact_id', $id);
            $files = $this->db->get(db_prefix() . 'project_files')->result_array();
            foreach ($files as $file) {
                $this->projects_model->remove_file($file['id'], false);
            }

            $this->db->where('contact_id', $id);
            $discussions = $this->db->get(db_prefix() . 'projectdiscussions')->result_array();
            foreach ($discussions as $discussion) {
                $this->projects_model->delete_discussion($discussion['id'], false);
            }

            $this->db->where('contact_id', $id);
            $discussionsComments = $this->db->get(db_prefix() . 'projectdiscussioncomments')->result_array();
            foreach ($discussionsComments as $comment) {
                $this->projects_model->delete_discussion_comment($comment['id'], false);
            }

            $this->db->where('contact_id', $id);
            $this->db->delete(db_prefix() . 'user_meta');

            $this->db->where('(email="' . $result->email . '" OR bcc LIKE "%' . $result->email . '%" OR cc LIKE "%' . $result->email . '%")');
            $this->db->delete(db_prefix() . 'mail_queue');

            if (is_gdpr()) {
                $this->db->where('email', $result->email);
                $this->db->delete(db_prefix() . 'listemails');

                if (!empty($result->last_ip)) {
                    $this->db->where('ip', $result->last_ip);
                    $this->db->delete(db_prefix() . 'knowedge_base_article_feedback');
                }

                $this->db->where('email', $result->email);
                $this->db->delete(db_prefix() . 'tickets_pipe_log');

                $this->db->where('email', $result->email);
                $this->db->delete(db_prefix() . 'tracked_mails');

                $this->db->where('contact_id', $id);
                $this->db->delete(db_prefix() . 'project_activity');

                $this->db->where('(additional_data LIKE "%' . $result->email . '%" OR full_name LIKE "%' . $result->firstname . ' ' . $result->lastname . '%")');
                $this->db->where('additional_data != "" AND additional_data IS NOT NULL');
                $this->db->delete(db_prefix() . 'sales_activity');

                $contactActivityQuery = false;
                if (!empty($result->email)) {
                    $this->db->or_like('description', $result->email);
                    $contactActivityQuery = true;
                }
                if (!empty($result->firstname)) {
                    $this->db->or_like('description', $result->firstname);
                    $contactActivityQuery = true;
                }
                if (!empty($result->lastname)) {
                    $this->db->or_like('description', $result->lastname);
                    $contactActivityQuery = true;
                }

                if (!empty($result->phonenumber)) {
                    $this->db->or_like('description', $result->phonenumber);
                    $contactActivityQuery = true;
                }

                if (!empty($result->last_ip)) {
                    $this->db->or_like('description', $result->last_ip);
                    $contactActivityQuery = true;
                }

                if ($contactActivityQuery) {
                    $this->db->delete(db_prefix() . 'activity_log');
                }
            }

            // Delete activity log caused by delete contact function
            if ($last_activity) {
                $this->db->where('id >', $last_activity->id);
                $this->db->delete(db_prefix() . 'activity_log');
            }

            hooks()->do_action('contact_deleted', $id, $result);

            return true;
        }

        return false;
    }


    /**
     * Get activity object based on passed opportunity id if not passed opportunity id return array of all opportunities
     * @param  mixed $id    opportunity id
     * @param  array  $where
     * @return mixed
     */
    public function get_activities($id = '', $where = [])
    {
        $this->db->select("*");


        if ((is_array($where) && count($where) > 0) || (is_string($where) && $where != '')) {
            $this->db->where($where);
        }

        if (is_numeric($id)) {
            $this->db->where(db_prefix() . 'activity_log_opportunity.opportunity_id', $id);
             $this->db->order_by('id', 'asc');
            return $this->db->get(db_prefix() . 'activity_log_opportunity')->result_array();
        }
        $this->db->order_by('id', 'asc');
        return $this->db->get(db_prefix() . 'activity_log_opportunity')->result_array();
    }


    /**
     * Get team member object based on passed opportunity id if not passed opportunity id return array of all opportunities
     * @param  mixed $id    opportunity id
     * @param  array  $where
     * @return mixed
     */
    public function get_team_members($id = '', $where = [])
    {
        $this->db->select("*");
        if ((is_array($where) && count($where) > 0) || (is_string($where) && $where != '')) {
            $this->db->where($where);
        }
        if (is_numeric($id)) {
            $this->db->where(db_prefix() . 'teams.opportunity_id', $id);
             $this->db->order_by('opportunity_id', 'asc');
            return $this->db->get(db_prefix() . 'teams')->row();
        }
        $this->db->order_by('opportunity_id', 'asc');
        return $this->db->get(db_prefix() . 'teams')->row();
    }


    /**
     * Get customer default currency
     * @param  mixed $id customer id
     * @return mixed
     */
    public function get_customer_default_currency($id)
    {
        $this->db->select('default_currency');
        $this->db->where('userid', $id);
        $result = $this->db->get(db_prefix() . 'clients')->row();
        if ($result) {
            return $result->default_currency;
        }

        return false;
    }

    /**
     *  Get customer billing details
     * @param   mixed $id   customer id
     * @return  array
     */
    public function get_customer_billing_and_shipping_details($id)
    {
        $this->db->select('billing_street,billing_city,billing_state,billing_zip,billing_country,shipping_street,shipping_city,shipping_state,shipping_zip,shipping_country');
        $this->db->from(db_prefix() . 'clients');
        $this->db->where('userid', $id);

        $result = $this->db->get()->result_array();
        if (count($result) > 0) {
            $result[0]['billing_street']  = clear_textarea_breaks($result[0]['billing_street']);
            $result[0]['shipping_street'] = clear_textarea_breaks($result[0]['shipping_street']);
        }

        return $result;
    }

    /**
     * Get customer files uploaded in the customer profile
     * @param  mixed $id    customer id
     * @param  array  $where perform where
     * @return array
     */
    public function get_customer_files($id, $where = [])
    {
        $this->db->where($where);
        $this->db->where('rel_id', $id);
        $this->db->where('rel_type', 'customer');
        $this->db->order_by('dateadded', 'desc');

        return $this->db->get(db_prefix() . 'files')->result_array();
    }

    /**
     * Delete customer attachment uploaded from the customer profile
     * @param  mixed $id attachment id
     * @return boolean
     */
    public function delete_attachment($id)
    {
        $this->db->where('id', $id);
        $attachment = $this->db->get(db_prefix() . 'files')->row();
        $deleted    = false;
        if ($attachment) {
            if (empty($attachment->external)) {
                $relPath  = get_upload_path_by_type('opportunity') . $attachment->rel_id . '/';
                $fullPath = $relPath . $attachment->file_name;
                unlink($fullPath);
                $fname     = pathinfo($fullPath, PATHINFO_FILENAME);
                $fext      = pathinfo($fullPath, PATHINFO_EXTENSION);
                $thumbPath = $relPath . $fname . '_thumb.' . $fext;
                if (file_exists($thumbPath)) {
                    unlink($thumbPath);
                }
            }

            $this->db->where('id', $id);
            $this->db->delete(db_prefix() . 'files');
            if ($this->db->affected_rows() > 0) {
                $deleted = true;
                $this->db->where('id', $id);
                $this->db->delete(db_prefix() . 'shared_opportunity_files');
                log_activity('Opportunity Attachment Deleted [ID: ' . $attachment->rel_id . ']');

                $log = 'ID: ' . $id;

                $isStaff = null;
                if (!is_client_logged_in() && is_staff_logged_in()) {
                    $log .= ', From Staff: ' . get_staff_user_id();
                    $isStaff = get_staff_user_id();
                }
                log_opportunity_activity($attachment->rel_id,'Opportunity Attachment Deleted [' . $log . ']', $isStaff);


            }

            if (is_dir(get_upload_path_by_type('opportunity') . $attachment->rel_id)) {
                // Check if no attachments left, so we can delete the folder also
                $other_attachments = list_files(get_upload_path_by_type('opportunity') . $attachment->rel_id);
                if (count($other_attachments) == 0) {
                    delete_dir(get_upload_path_by_type('opportunity') . $attachment->rel_id);
                }
            }
        }

        return $deleted;
    }

    /**
     * @param  integer ID
     * @param  integer Status ID
     * @return boolean
     * Update contact status Active/Inactive
     */
    public function change_contact_status($id, $status)
    {
        $status = hooks()->apply_filters('change_contact_status', $status, $id);

        $this->db->where('id', $id);
        $this->db->update(db_prefix() . 'contacts', [
            'active' => $status,
        ]);
        if ($this->db->affected_rows() > 0) {
            hooks()->do_action('contact_status_changed', [
                'id'     => $id,
                'status' => $status,
            ]);

            log_activity('Contact Status Changed [ContactID: ' . $id . ' Status(Active/Inactive): ' . $status . ']');

            return true;
        }

        return false;
    }

    /**
     * @param  integer ID
     * @param  integer Status ID
     * @return boolean
     * Update client status Active/Inactive
     */
    public function change_client_status($id, $status)
    {
        $this->db->where('userid', $id);
        $this->db->update(db_prefix() . 'clients', [
            'active' => $status,
        ]);

        if ($this->db->affected_rows() > 0) {
            hooks()->do_action('client_status_changed', [
                'id'     => $id,
                'status' => $status,
            ]);

            log_activity('Customer Status Changed [ID: ' . $id . ' Status(Active/Inactive): ' . $status . ']');

            return true;
        }

        return false;
    }

    /**
     * Change contact password, used from client area
     * @param  mixed $id          contact id to change password
     * @param  string $oldPassword old password to verify
     * @param  string $newPassword new password
     * @return boolean
     */
    public function change_contact_password($id, $oldPassword, $newPassword)
    {
        // Get current password
        $this->db->where('id', $id);
        $client = $this->db->get(db_prefix() . 'contacts')->row();

        if (!app_hasher()->CheckPassword($oldPassword, $client->password)) {
            return [
                'old_password_not_match' => true,
            ];
        }

        $this->db->where('id', $id);
        $this->db->update(db_prefix() . 'contacts', [
            'last_password_change' => date('Y-m-d H:i:s'),
            'password'             => app_hash_password($newPassword),
        ]);

        if ($this->db->affected_rows() > 0) {
            log_activity('Contact Password Changed [ContactID: ' . $id . ']');

            return true;
        }

        return false;
    }

    /**
     * Get customer groups where customer belongs
     * @param  mixed $id customer id
     * @return array
     */
    public function get_customer_groups($id)
    {
        return $this->client_groups_model->get_customer_groups($id);
    }

    /**
     * Get all customer groups
     * @param  string $id
     * @return mixed
     */
    public function get_groups($id = '')
    {
        return $this->client_groups_model->get_groups($id);
    }

    /**
     * Delete customer groups
     * @param  mixed $id group id
     * @return boolean
     */
    public function delete_group($id)
    {
        return $this->client_groups_model->delete($id);
    }

    /**
     * Add new customer groups
     * @param array $data $_POST data
     */
    public function add_group($data)
    {
        return $this->client_groups_model->add($data);
    }

    /**
     * Edit customer group
     * @param  array $data $_POST data
     * @return boolean
     */
    public function edit_group($data)
    {
        return $this->client_groups_model->edit($data);
    }

    
    /**
    * Get customer statement formatted
    * @param  mixed $customer_id customer id
    * @param  string $from        date from
    * @param  string $to          date to
    * @return array
    */
    public function get_statement($customer_id, $from, $to)
    {
        return $this->statement_model->get_statement($customer_id, $from, $to);
    }

    /**
    * Send customer statement to email
    * @param  mixed $customer_id customer id
    * @param  array $send_to     array of contact emails to send
    * @param  string $from        date from
    * @param  string $to          date to
    * @param  string $cc          email CC
    * @return boolean
    */
    public function send_statement_to_email($customer_id, $send_to, $from, $to, $cc = '')
    {
        return $this->statement_model->send_statement_to_email($customer_id, $send_to, $from, $to, $cc);
    }

    /**
     * When customer register, mark the contact and the customer as inactive and set the registration_confirmed field to 0
     * @param  mixed $client_id  the customer id
     * @return boolean
     */
    public function require_confirmation($client_id)
    {
        $contact_id = get_primary_contact_user_id($client_id);
        $this->db->where('userid', $client_id);
        $this->db->update(db_prefix() . 'clients', ['active' => 0, 'registration_confirmed' => 0]);

        $this->db->where('id', $contact_id);
        $this->db->update(db_prefix() . 'contacts', ['active' => 0]);

        return true;
    }

    public function confirm_registration($client_id)
    {
        $contact_id = get_primary_contact_user_id($client_id);
        $this->db->where('userid', $client_id);
        $this->db->update(db_prefix() . 'clients', ['active' => 1, 'registration_confirmed' => 1]);

        $this->db->where('id', $contact_id);
        $this->db->update(db_prefix() . 'contacts', ['active' => 1]);

        $contact = $this->get_contact($contact_id);

        if ($contact) {
            send_mail_template('customer_registration_confirmed', $contact);

            return true;
        }

        return false;
    }

    public function send_verification_email($id)
    {
        $contact = $this->get_contact($id);

        if (empty($contact->email)) {
            return false;
        }

        $success = send_mail_template('customer_contact_verification', $contact);

        if ($success) {
            $this->db->where('id', $id);
            $this->db->update(db_prefix() . 'contacts', ['email_verification_sent_at' => date('Y-m-d H:i:s')]);
        }

        return $success;
    }

    public function mark_email_as_verified($id)
    {
        $contact = $this->get_contact($id);

        $this->db->where('id', $id);
        $this->db->update(db_prefix() . 'contacts', [
            'email_verified_at'          => date('Y-m-d H:i:s'),
            'email_verification_key'     => null,
            'email_verification_sent_at' => null,
        ]);

        if ($this->db->affected_rows() > 0) {

            // Check for previous tickets opened by this email/contact and link to the contact
            $this->load->model('tickets_model');
            $this->tickets_model->transfer_email_tickets_to_contact($contact->email, $contact->id);

            return true;
        }

        return false;
    }

    public function get_clients_distinct_countries()
    {
        return $this->db->query('SELECT DISTINCT(country_id), short_name FROM ' . db_prefix() . 'clients JOIN ' . db_prefix() . 'countries ON ' . db_prefix() . 'countries.country_id=' . db_prefix() . 'clients.country')->result_array();
    }

    public function send_notification_customer_profile_file_uploaded_to_responsible_staff($contact_id, $customer_id)
    {
        $staff         = $this->get_staff_members_that_can_access_customer($customer_id);
        $merge_fields  = $this->app_merge_fields->format_feature('client_merge_fields', $customer_id, $contact_id);
        $notifiedUsers = [];


        foreach ($staff as $member) {
            mail_template('customer_profile_uploaded_file_to_staff', $member['email'], $member['staffid'])
            ->set_merge_fields($merge_fields)
            ->send();

            if (add_notification([
                    'touserid' => $member['staffid'],
                    'description' => 'not_customer_uploaded_file',
                    'link' => 'clients/client/' . $customer_id . '?group=attachments',
                ])) {
                array_push($notifiedUsers, $member['staffid']);
            }
        }
        pusher_trigger_notification($notifiedUsers);
    }

    public function get_staff_members_that_can_access_customer($id)
    {
        $id = $this->db->escape_str($id);

        return $this->db->query('SELECT * FROM ' . db_prefix() . 'staff
            WHERE (
                    admin=1
                    OR staffid IN (SELECT staff_id FROM ' . db_prefix() . "customer_admins WHERE customer_id='.$id.')
                    OR staffid IN(SELECT staff_id FROM " . db_prefix() . 'staff_permissions WHERE feature = "customers" AND capability="view")
                )
            AND active=1')->result_array();
    }

    private function check_zero_columns($data)
    {
        if (!isset($data['show_primary_contact'])) {
            $data['show_primary_contact'] = 0;
        }

        if (isset($data['default_currency']) && $data['default_currency'] == '' || !isset($data['default_currency'])) {
            $data['default_currency'] = 0;
        }

        if (isset($data['country']) && $data['country'] == '' || !isset($data['country'])) {
            $data['country'] = 0;
        }

        if (isset($data['billing_country']) && $data['billing_country'] == '' || !isset($data['billing_country'])) {
            $data['billing_country'] = 0;
        }

        if (isset($data['shipping_country']) && $data['shipping_country'] == '' || !isset($data['shipping_country'])) {
            $data['shipping_country'] = 0;
        }

        return $data;
    }

     public function get_call_logs($id)
    {   
        $this->db->join(db_prefix() . 'staff', db_prefix() . 'staff.staffid=' . db_prefix() . 'call_log.addedfrom');
        $this->db->where('opportunity_id', $id);
        $this->db->order_by('date', 'desc');
        return $call_log = $this->db->get(db_prefix() . 'call_log')->result_array();
        
    }

    public function add_note($data, $rel_type, $rel_id)
    {
        $data['dateadded']   = date('Y-m-d H:i:s');
        $data['addedfrom']   = get_staff_user_id();
        $data['rel_type']    = $rel_type;
        $data['rel_id']      = $rel_id;
        $data['description'] = nl2br($data['description']);

        $data = hooks()->apply_filters('create_note_data', $data, $rel_type, $rel_id);

        $this->db->insert(db_prefix() . 'notes', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            hooks()->do_action('note_created', $insert_id, $data);

            $log = 'ID: ' . $insert_id;

            $isStaff = null;
            if (!is_client_logged_in() && is_staff_logged_in()) {
                $log .= ', From Staff: ' . get_staff_user_id();
                $isStaff = get_staff_user_id();
            }
            log_opportunity_activity($rel_id,'Opportunity Note Created [' . $log . ']', $isStaff);

            return $insert_id;
        }

        return false;
    }

    public function edit_note($data, $id)
    {
        hooks()->do_action('before_update_note', [
            'data' => $data,
            'id'   => $id,
        ]);

        $opportunity = $data['opportunity'];

       
        $this->db->where('id', $id);
        $this->db->update(db_prefix() . 'notes', $data = [
            'description' => nl2br($data['description']),
        ]);

        // Bitsclan Solutions Start Code 
        if ($this->db->affected_rows() > 0) {
            hooks()->do_action('note_updated', $id, $data);
            $log = 'ID: ' . $id;

            $isStaff = null;
            if (!is_client_logged_in() && is_staff_logged_in()) {
                $log .= ', From Staff: ' . get_staff_user_id();
                $isStaff = get_staff_user_id();
            }
            log_opportunity_activity($opportunity,'Opportunity Update Note [' . $log . ']', $isStaff);

            return true;
        }
        // Bitsclan Solutions End Code
        return false;
    }

    public function delete_call_log($note_id)
    {
        
        $this->db->where('id', $note_id);
        $note = $this->db->get(db_prefix() . 'call_log')->row();
        $opportunity_id = $note->opportunity_id;
        $this->db->where('id', $note_id);
        $this->db->delete(db_prefix() . 'call_log');
        $log = 'ID: ' . $note_id;

        $isStaff = null;
        if (!is_client_logged_in() && is_staff_logged_in()) {
            $log .= ', From Staff: ' . get_staff_user_id();
            $isStaff = get_staff_user_id();
        }
        log_opportunity_activity($opportunity_id,'Opportunity Call log Deleted  [' . $log . ']', $isStaff);
        return true;   
    }

    public function get_customer_opportunities($customer_id = '')
    {
        $this->db->where('account', $customer_id);
        return $this->db->get(db_prefix() . 'opportunities')->result_array();
    }
}
