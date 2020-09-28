<?php

/**
 * Ensures that the module init file can't be accessed directly, only within the application.
 */
defined('BASEPATH') or exit('No direct script access allowed');

/*
Module Name: Opportunities
Description: Opportunities Module For JAGA.
Version: 2.3.0
Requires at least: 2.3.*
Author – Bitsclan Solutions
Author URI: https://bitsclan.com
 */


define('OPPORTUNITIES_MODULE', 'opportunities');

hooks()->add_action('admin_init', 'opportunities_module_init_menu_items');
hooks()->add_action('admin_init', 'opportunities_module_permissions');
hooks()->add_action('admin_init', 'app_init_opportunity_profile_tabs');
hooks()->add_action('after_opportunity_added','callback_after_opportunity_added');
hooks()->add_action('after_opportunity_updated','callback_after_opportunity_updated');
hooks()->add_action('after_estimate_added_activity','callback_after_estimate_added_activity');
hooks()->add_action('after_estimate_updated_activity','callback_after_estimate_updated_activity');
hooks()->add_action('after_expense_added_activity','callback_after_expense_added_activity');
hooks()->add_action('after_expense_updated_activity','callback_after_expense_updated_activity');
hooks()->add_action('after_expense_delete_activity','callback_after_expense_delete');
hooks()->add_action('after_file_added_opportunity_activity','callback_after_added_file');
hooks()->add_action('after_added_proposal_activity','callback_after_proposal_added');
hooks()->add_action('after_updated_proposal_activity','callback_after_proposal_updated');
hooks()->add_action('after_add_task_activity','callback_after_task_added');
hooks()->add_action('after_update_task_activity','callback_after_task_updated');
hooks()->add_action('after_task_deleted_activity','callback_after_task_deleted_activity');



$CI = &get_instance();

/**
* Register activation module hook
*/
register_activation_hook(OPPORTUNITIES_MODULE, 'opportunities_module_activation_hook');

/**
* Register language files, must be registered if the module is using languages
*/
register_language_files(OPPORTUNITIES_MODULE, [OPPORTUNITIES_MODULE]);


/**
* Load the module helper
*/
$CI->load->helper(OPPORTUNITIES_MODULE . '/opportunity');

/**
* Load the module library
*/
$CI->load->library(OPPORTUNITIES_MODULE . '/app_opportunities_tabs');

function opportunities_module_activation_hook()
{
    $CI = &get_instance();
    require_once(__DIR__ . '/install.php');
}

/**
* Opportunity Added activity
*/

function callback_after_opportunity_added($id)
{
    $log = 'ID: ' . $id;
    $isStaff = null;
    if (!is_client_logged_in() && is_staff_logged_in()) {
        $log .= ', From Staff: ' . get_staff_user_id();
        $isStaff = get_staff_user_id();
    }

    log_activity('New Opportunity Created [' . $log . ']', $isStaff);
    log_opportunity_activity($id,'Opportunity Created [' . $log . ']', $isStaff);
}


/**
* Opportunity Updated activity
*/

function callback_after_opportunity_updated($id)
{
    $log = 'ID: ' . $id;
    $isStaff = null;
    if (!is_client_logged_in() && is_staff_logged_in()) {
        $log .= ', From Staff: ' . get_staff_user_id();
        $isStaff = get_staff_user_id();
    }

    log_opportunity_activity($id,'Opportunity Profile Updated [' . $log . ']', $isStaff);
}


/**
* Estimate Added activity
*/


function callback_after_estimate_added_activity($data)
{
    $log = 'ID: ' . $data['insert_id'];
    $isStaff = null;
    if (!is_client_logged_in() && is_staff_logged_in()) {
        $log .= ', From Staff: ' . get_staff_user_id();
        $isStaff = get_staff_user_id();
    }
    if(isset($data['opportunity']) && $data['opportunity'] != ""){
        log_opportunity_activity($data['opportunity'],'Opportunity Estimate Created [' . $log . ']', $isStaff);
    }
}

/**
* Estimate Updated activity
*/

function callback_after_estimate_updated_activity($data)
{
    $log = 'ID: ' . $data['id'];

        $isStaff = null;
        if (!is_client_logged_in() && is_staff_logged_in()) {
            $log .= ', From Staff: ' . get_staff_user_id();
            $isStaff = get_staff_user_id();
        }
        if(isset($data['opportunity']) && $data['opportunity'] != ""){
            log_opportunity_activity($data['opportunity'],'Opportunity Estimate Updated [' . $log . ']', $isStaff);
        }
}



/**
* Expense Added activity
*/


function callback_after_expense_added_activity($data)
{
    $log = 'ID: ' . $data['insert_id'];
    $isStaff = null;
    if (!is_client_logged_in() && is_staff_logged_in()) {
        $log .= ', From Staff: ' . get_staff_user_id();
        $isStaff = get_staff_user_id();
    }
    if(isset($data['opportunity']) && $data['opportunity'] != ""){
        log_opportunity_activity($data['opportunity'],'Opportunity Expense Created [' . $log . ']', $isStaff);
    }
}


/**
* Expense Updated activity
*/


function callback_after_expense_updated_activity($data)
{
    $log = 'ID: ' . $data['id'];
    $isStaff = null;
    if (!is_client_logged_in() && is_staff_logged_in()) {
        $log .= ', From Staff: ' . get_staff_user_id();
        $isStaff = get_staff_user_id();
    }
    if(isset($data['opportunity']) && $data['opportunity'] != ""){
        log_opportunity_activity($data['opportunity'],'Opportunity Expense Updated [' . $log . ']', $isStaff);
    }
}


/**
* Expense Delete activity
*/


function callback_after_expense_delete($data)
{
    $log = 'ID: ' . $data['id'];
    $isStaff = null;
    if (!is_client_logged_in() && is_staff_logged_in()) {
        $log .= ', From Staff: ' . get_staff_user_id();
        $isStaff = get_staff_user_id();
    }
    if(isset($data['opportunity']) && $data['opportunity'] != ""){
        log_opportunity_activity($data['opportunity'],'Opportunity Expense Deleted [' . $log . ']', $isStaff);
    }
}




/**
* Opportunity File Added activity
*/


function callback_after_added_file($data)
{
    $log = 'ID: ' . $data['insert_id'];
    $isStaff = null;
    if (!is_client_logged_in() && is_staff_logged_in()) {
        $log .= ', From Staff: ' . get_staff_user_id();
        $isStaff = get_staff_user_id();
    }
    log_opportunity_activity($data['rel_id'],'Opportunity Attachment Added [' . $log . ']', $isStaff);
}





/**
* Proposal Added activity
*/


function callback_after_proposal_added($data)
{
    $insert_id =  $data['insert_id'];
    $isStaff = null;
    $log = 'ID: ' . $insert_id;
    if (!is_client_logged_in() && is_staff_logged_in()) {
        $log .= ', From Staff: ' . get_staff_user_id();
        $isStaff = get_staff_user_id();
    }
    log_opportunity_activity($data['rel_id'],'Opportunity Proposal Created [' . $log . ']', $isStaff);
}




/**
* Proposal Updated activity
*/


function callback_after_proposal_updated($data)
{
    $id = $data['id'];
    $isStaff = null;
    $log = 'ID: ' . $id;
    if (!is_client_logged_in() && is_staff_logged_in()) {
        $log .= ', From Staff: ' . get_staff_user_id();
        $isStaff = get_staff_user_id();
    }
    log_opportunity_activity($data['rel_id'],'Opportunity Proposal Updated [' . $log . ']', $isStaff);
}



/**
* Task Added activity
*/


function callback_after_task_added($data)
{
    $insert_id =  $data['insert_id'];

    $isStaff = null;
    if (!is_client_logged_in() && is_staff_logged_in()) {
        $isStaff = get_staff_user_id();
    }
    log_opportunity_activity($data['rel_id'],'Opportunity Task Created [ID: ' . $insert_id . ', Name: ' . $data['name'] . ', From Staff: '.$isStaff.']', $isStaff);
}



/**
* Task Updated activity
*/


function callback_after_task_updated($data)
{
    $id = $data['id'];
    $isStaff = null;
    if (!is_client_logged_in() && is_staff_logged_in()) {
        $isStaff = get_staff_user_id();
    }
    log_opportunity_activity($data['rel_id'],'Opportunity Task Updated [ID: ' . $id . ', Name: ' . $data['name'] . ', From Staff: '.$isStaff.']', $isStaff);
}



/**
* Task Deleted activity
*/


function callback_after_task_deleted_activity($data)
{
    $id = $data['id'];
    $isStaff = null;
    if (!is_client_logged_in() && is_staff_logged_in()) {
        $isStaff = get_staff_user_id();
    }
    log_opportunity_activity($data['rel_id'],'Opportunity Task Deleted [ID: ' . $id . ', Name: ' . $data['name'] . ', From Staff: '.$isStaff.']', $isStaff);
}


/**
* Register opportunity module permissions
*/

function opportunities_module_permissions()
{
    $capabilities = [];
    $capabilities['capabilities'] = [
            'view'   => _l('permission_view') . '(' . _l('permission_global') . ')',
            'create' => _l('permission_create'),
            'edit'   => _l('permission_edit'),
            'delete' => _l('permission_delete'),
    ];

    register_staff_capabilities('opportunities', $capabilities, _l('opportunities'));
}



/**
* Register Opportunity Module Menu
*/


function opportunities_module_init_menu_items(){
    $CI = &get_instance();
	if (has_permission('opportunities', '', 'view')) {
        $CI->app_menu->add_sidebar_menu_item('opportunities', [
            'name'     => _l('opportunities'),
            'href'     => admin_url('opportunities'),
            'position' => 36,
            'icon'     => 'fa fa-certificate',
        ]);
    }
}



