<?php

defined('BASEPATH') or exit('No direct script access allowed');

$hasPermissionDelete = has_permission('crm_backup', '', 'delete');

$this->ci->db->query("SET sql_mode = ''");

$aColumns = [
   
    db_prefix().'crm_backups.id as id',
    'backup_name',
    db_prefix().'crm_backups.datecreated as datecreated',
];

$sIndexColumn = 'id';
$sTable       = db_prefix().'crm_backups';
$where        = [];
// Add blank where all filter can be stored
$filter = [];
$join = [];

$result = data_tables_init($aColumns, $sIndexColumn, $sTable, $join, $where);

$output  = $result['output'];
$rResult = $result['rResult'];

foreach ($rResult as $aRow) {
    $row = [];

    // Bulk actions
    $row[] = '<div class="checkbox"><input type="checkbox" value="' . $aRow['id'] . '"><label></label></div>';
    // User id

    $name = $aRow['backup_name'];

    $name .= '<div class="row-options">';
    if ($hasPermissionDelete) {
        $name .= '<a href="' . admin_url('crm_backup/delete_backup/' . $aRow['id']) . '" class="text-danger _delete">' . _l('delete') . '</a>';
    }
     $name .= '| <a href="' . admin_url('crm_backup/restore_backup/' . $aRow['id']) . '">' . _l('restore_backup') . '</a>';

    $name .= '</div>';

    $row[] = $name;


    $row[] = _dt($aRow['datecreated']);

    $output['aaData'][] = $row;
}
