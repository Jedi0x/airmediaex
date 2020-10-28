<?php

/**
 * Ensures that the module init file can't be accessed directly, only within the application.
 */

defined('BASEPATH') or exit('No direct script access allowed');
/*
Module Name: CRM Backup
Description: CRM Backup module for Air-media
Author: Bitsclan Solutions
Author URI: https://bitsclan.com
Version: 1.0.0
Requires at least: 2.4.4
*/
require('./modules/backup/vendor/autoload.php');

define('CRM_BACKUP', 'crm_backup');

define('CRM_BACKUPS_FOLDER', FCPATH . 'crm_backups' . '/');

hooks()->add_action('admin_init', 'crm_backup_init_menu_items');
hooks()->add_action('admin_init', 'crm_backup_permissions');

hooks()->add_action('after_cron_run', 'crm_backup_perform');


$CI = &get_instance();

/**
* Register activation module hook
*/
register_activation_hook(CRM_BACKUP, 'crm_backup_activation_hook');

/**
* Register language files, must be registered if the module is using languages
*/
register_language_files(CRM_BACKUP, [CRM_BACKUP]);


/**
* Load the module helper
*/
$CI->load->helper(CRM_BACKUP . '/crm_backup');


/**
* Load the module libraries
*/
$CI->load->library(CRM_BACKUP . '/Crm_backups');

$CI->load->library(CRM_BACKUP . '/Google');

$CI->load->library(CRM_BACKUP . '/Dropboxapi');

$CI->load->library(CRM_BACKUP . '/Onedriveapi');
/**
* Activition hook
*/

function crm_backup_activation_hook()
{
    $CI = &get_instance();
    require_once(__DIR__ . '/install.php');
}

/**
* After Cronjob complete 
*/

function crm_backup_perform()
{
    $CI = &get_instance();
    $CI->crm_backups->make_backup_crm();
}

/**
* Register backup module permissions
*/

function crm_backup_permissions()
{
    $capabilities = [];
    $capabilities['capabilities'] = [
            'view'   => _l('permission_view') . '(' . _l('permission_global') . ')',
            'create' => _l('permission_create'),
            'edit'   => _l('permission_edit'),
            'delete' => _l('permission_delete'),
    ];

    register_staff_capabilities('crm_backup', $capabilities, _l('crm_backup'));
}



/**
* Register crm backup Module Menu
*/


function crm_backup_init_menu_items(){
    $CI = &get_instance();
    if (has_permission('crm_backup', '', 'view')) {
        $CI->app_menu->add_sidebar_menu_item('crm_backup', [
            'name'     => _l('crm_backup'),
            'href'     => admin_url('crm_backup'),
            'position' => 57,
            'icon'     => 'fa fa-history',
        ]);
    }
}

