<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Crm_backup_model extends App_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Get crm_backups object based on passed crm_backups.id if not passed crm_backups.id return array of all crm_backupss
     * @param  mixed $id    crm_backups id
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
            $this->db->where(db_prefix() . 'crm_backups.file_id', $id);
            $crm_backups = $this->db->get(db_prefix() . 'crm_backups')->row();

            $GLOBALS['crm_backups'] = $crm_backups;

            return $crm_backups;
        }

        $this->db->order_by('id', 'asc');

        return $this->db->get(db_prefix() . 'crm_backups')->result_array();
    }

    /**
     * @param array $_POST data
     * @param crm_backups is this request
     * @return integer Insert ID
     * Add new crm_backups to database
     */
    public function add($data)
    {
       
        $data['datecreated'] = date('Y-m-d H:i:s');
        $this->db->insert(db_prefix() . 'crm_backups', $data);
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

            log_activity('New crm_backups Created [' . $log . ']', $isStaff);
        }

        return $id;
    }

    /**
     * @param  array $_POST data
     * @param  integer ID
     * @return boolean
     * Update crm_backups informations
     */
    public function update($data, $id)
    {
      
        $affectedRows = 0;
        $this->db->where('id', $id);
        $this->db->update(db_prefix() . 'crm_backups', $data);

        if ($this->db->affected_rows() > 0) {
            $affectedRows++;
        }

        if ($affectedRows > 0) {
            
            log_activity('crm_backups Info Updated [ID: ' . $id . ']');
            return true;
        }

        return false;
    }


    /**
     * Delete crm_backups from database
     * @param  mixed $id crm_backupsid
     * @return boolean
     */
    public function delete($id)
    {
        $current         = $this->get($id);
        $this->db->where('file_id', $id);
        $this->db->delete(db_prefix() . 'crm_backups');
        if ($this->db->affected_rows() > 0) {
            return true;
        }
        return false;
    }
    
}
