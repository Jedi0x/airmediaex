<?php

defined('BASEPATH') or exit('No direct script access allowed');
header('Content-Type: text/html; charset=utf-8');




/**
 * Print Array
 * @param  array and if you want to exit then true
 * @return printed array in pre tags
 */

function debug($arr, $exit = false)
{
  print "<pre>";
  print_r($arr);
  print "</pre>";
  if($exit)
    exit;
}

/**
 * Get predefined tabs array, used in opportunity profile
 * @return array
 */
function get_opportunity_profile_tabs()
{
    return get_instance()->app_opportunities_tabs->get_opportunity_profile_tabs();
}


/**
 * @todo
 * Find a way to get the  inside this function or refactor the hook
 * @param  string $group the tabs groups
 * @return null
 */


function app_init_opportunity_profile_tabs()
{
    $CI = &get_instance();

    $CI->app_opportunities_tabs->add_opportunity_profile_tab('profile', [
        'name'     => _l('client_add_edit_profile'),
        'icon'     => 'fa fa-user-circle',
        'view'     => 'opportunities/groups/profile',
        'position' => 5,
    ]);


    $CI->app_opportunities_tabs->add_opportunity_profile_tab('contacts', [
        'name'     => _l('contact'),
        'icon'     => 'fa fa-users',
        'view'     => 'opportunities/groups/contacts',
        'position' => 10,
    ]);

    $CI->app_opportunities_tabs->add_opportunity_profile_tab('notes', [
        'name'     => _l('contracts_notes_tab'),
        'icon'     => 'fa fa-sticky-note-o',
        'view'     => 'opportunities/groups/notes',
        'position' => 15,
    ]);

    $CI->app_opportunities_tabs->add_opportunity_profile_tab('proposals', [
        'name'     => _l('proposals'),
        'icon'     => 'fa fa-file-powerpoint-o',
        'view'     => 'opportunities/groups/proposals',
        'position' => 35,
    ]);


    $CI->app_opportunities_tabs->add_opportunity_profile_tab('estimates', [
        'name'     => _l('estimates'),
        'icon'     => 'fa fa-clipboard',
        'view'     => 'opportunities/groups/estimates',
        'position' => 45,
    ]);


    $CI->app_opportunities_tabs->add_opportunity_profile_tab('expenses', [
        'name'     => _l('expenses'),
        'icon'     => 'fa fa-file-text-o',
        'view'     => 'opportunities/groups/expenses',
        'position' => 55,
    ]);


    $CI->app_opportunities_tabs->add_opportunity_profile_tab('attachments', [
        'name'     => _l('customer_attachments'),
        'icon'     => 'fa fa-paperclip',
        'view'     => 'opportunities/groups/attachments',
        'position' => 80,
    ]);
   

    $CI->app_opportunities_tabs->add_opportunity_profile_tab('call_log', [
        'name'     => _l('call_log'),
        'icon'     => 'fa fa-phone',
        'view'     => 'opportunities/groups/call_log',
        'position' => 100,
    ]);


    $CI->app_opportunities_tabs->add_opportunity_profile_tab('tasks', [
        'name'     => _l('tasks'),
        'icon'     => 'fa fa-tasks',
        'view'     => 'opportunities/groups/tasks',
        'position' => 101,
    ]);


    $CI->app_opportunities_tabs->add_opportunity_profile_tab('team', [
        'name'     => _l('team'),
        'icon'     => 'fa fa-users',
        'view'     => 'opportunities/groups/team',
        'position' => 102,
    ]);


    $CI->app_opportunities_tabs->add_opportunity_profile_tab('activity', [
        'name'     => _l('activity'),
        'icon'     => 'fa fa-bar-chart',
        'view'     => 'opportunities/groups/activity',
        'position' => 110,
    ]);


   
}


/**
 * @todo
 * Get Contact information
 * @param  string $id of contact
 * @return array
 */

function get_contact($id = null)
{

    $client = get_instance()->clients_model->get_contact($id);
    return $client;
}



/**
 * Log Activity for everything
 * @param  string $description Activity Description
 * @param  integer $opportunity_id of opportunity  integer $staffid    The user who performs the activity, if null, the logged in staff member will used (if logged in)
 */

function log_opportunity_activity($opportunity_id,$description, $staffid = null)
{
    $CI  = & get_instance();
    $log = [
        'description' => $description,
        'opportunity_id' => $opportunity_id,
        'date'        => date('Y-m-d H:i:s'),
    ];
    if (!DEFINED('CRON')) {
        if ($staffid != null && is_numeric($staffid)) {
            $log['staffid'] = get_staff_full_name($staffid);
        } else {
            if (!is_client_logged_in()) {
                if (is_staff_logged_in()) {
                    $log['staffid'] = get_staff_full_name(get_staff_user_id());
                } else {
                    $log['staffid'] = null;
                }
            } else {
                $log['staffid'] = get_contact_full_name(get_contact_user_id());
            }
        }
    } else {
            // manually invoked cron
        if (is_staff_logged_in()) {
            $log['staffid'] = get_staff_full_name(get_staff_user_id());
        } else {
            $log['staffid'] = '[CRON]';
        }
    }

    $CI->db->insert(db_prefix() . 'activity_log_opportunity', $log);
    
}

/**
 * Delete arrays Elements
 * @param  string $element Array Element
 * @param  array $array of options
 */

function delete_arrays_elements($element, &$array){
    $index = array_search($element, $array);
    if($index !== false){
        unset($array[$index]);
    }
}

/**
 * Client attachments
 * @param  mixed $clientid Client ID to add attachments
 * @return array  - Result values
 */
function handle_opportunity_attachments_upload($id, $customer_upload = false)
{
    $path          = get_upload_path_by_type('opportunity') . $id . '/';
    $CI            = & get_instance();
    $totalUploaded = 0;

    if (isset($_FILES['file']['name'])
        && ($_FILES['file']['name'] != '' || is_array($_FILES['file']['name']) && count($_FILES['file']['name']) > 0)) {
        if (!is_array($_FILES['file']['name'])) {
            $_FILES['file']['name']     = [$_FILES['file']['name']];
            $_FILES['file']['type']     = [$_FILES['file']['type']];
            $_FILES['file']['tmp_name'] = [$_FILES['file']['tmp_name']];
            $_FILES['file']['error']    = [$_FILES['file']['error']];
            $_FILES['file']['size']     = [$_FILES['file']['size']];
        }

        _file_attachments_index_fix('file');
        for ($i = 0; $i < count($_FILES['file']['name']); $i++) {
            hooks()->do_action('before_upload_client_attachment', $id);
            // Get the temp file path
            $tmpFilePath = $_FILES['file']['tmp_name'][$i];
            // Make sure we have a filepath
            if (!empty($tmpFilePath) && $tmpFilePath != '') {
                if (_perfex_upload_error($_FILES['file']['error'][$i])
                    || !_upload_extension_allowed($_FILES['file']['name'][$i])) {
                    continue;
                }

                _maybe_create_upload_path($path);
                $filename    = unique_filename($path, $_FILES['file']['name'][$i]);
                $newFilePath = $path . $filename;
                // Upload the file into the temp dir
                if (move_uploaded_file($tmpFilePath, $newFilePath)) {
                    $attachment   = [];
                    $attachment[] = [
                    'file_name' => $filename,
                    'filetype'  => $_FILES['file']['type'][$i],
                    ];

                    if (is_image($newFilePath)) {
                        create_img_thumb($newFilePath, $filename);
                    }

                    if ($customer_upload == true) {
                        $attachment[0]['staffid']          = 0;
                        $attachment[0]['opportunity_id']       = $id;
                        $attachment['visible_to_customer'] = 1;
                    }

                    $CI->misc_model->add_attachment_to_database($id, 'opportunity', $attachment);
                    $totalUploaded++;
                }
            }
        }


    }

    return (bool) $totalUploaded;
}


    function get_customer_opportunities($customer_id = '')
    {   
        $ci = &get_instance();
        $ci->load->model(OPPORTUNITIES_MODULE.'/Opportunity_model');
        return $ci->Opportunity_model->get_customer_opportunities($customer_id);
    }


// Bitsclan Solutions Start Code 
/**
*  Get opportunity attachment
* @param   mixed $id   opportunity id
* @return  array
*/
function get_all_opportunity_attachments($id)
{
    $CI = &get_instance();

    $attachments                = [];
    $attachments['invoice']     = [];
    $attachments['estimate']    = [];
    $attachments['credit_note'] = [];
    $attachments['proposal']    = [];
    $attachments['contract']    = [];
    $attachments['lead']        = [];
    $attachments['task']        = [];
    $attachments['customer']    = [];
    $attachments['opportunity']    = [];
    $attachments['ticket']      = [];
    $attachments['expense']     = [];



    $CI->db->where('rel_id', $id);
    $CI->db->where('rel_type', 'opportunity');
    $opportunity_main_attachments = $CI->db->get(db_prefix() . 'files')->result_array();

    $attachments['opportunity'] = $opportunity_main_attachments;

    return hooks()->apply_filters('all_opportunity_attachments', $attachments, $id);
}
// Bitsclan Solutions End Code