<?php

defined('BASEPATH') or exit('No direct script access allowed');

$hasPermissionDelete = has_permission('opportunities', '', 'delete');

$this->ci->db->query("SET sql_mode = ''");

$aColumns = [
   
    db_prefix().'opportunities.id as id',
    'project_name',
    db_prefix().'clients.company as company',
    'CONCAT('.db_prefix().'staff.firstname," ", '.db_prefix().'staff.lastname) as staffname',
    'probability',
    'status',
    'delivery_date',
    'projected_sale_date',
    db_prefix().'opportunities.datecreated as datecreated',
];

$sIndexColumn = 'id';
$sTable       = db_prefix().'opportunities';
$where        = [];
// Add blank where all filter can be stored
$filter = [];
$join = [];

$join = [
    'LEFT JOIN '.db_prefix().'clients ON '.db_prefix().'clients.userid='.db_prefix().'opportunities.account  LEFT JOIN '.db_prefix().'staff ON '.db_prefix().'staff.staffid='.db_prefix().'opportunities.owner LEFT JOIN '.db_prefix().'teams ON '.db_prefix().'teams.opportunity_id='.db_prefix().'opportunities.id',
];

array_push($where, 'AND ' . db_prefix() . 'opportunities.owner IN (SELECT staffid FROM ' . db_prefix() . 'staff WHERE staffid=' . get_staff_user_id() . ')');

array_push($where, 'OR  FIND_IN_SET ('. get_staff_user_id() .',' . db_prefix() . 'teams.team_members)');

$result = data_tables_init($aColumns, $sIndexColumn, $sTable, $join, $where);

$output  = $result['output'];
$rResult = $result['rResult'];

foreach ($rResult as $aRow) {
    $row = [];

    // Bulk actions
    $row[] = '<div class="checkbox"><input type="checkbox" value="' . $aRow['id'] . '"><label></label></div>';
    // User id

    $project_name = $aRow['project_name'];
    $isPerson = false;

    if ($project_name == '') {
        $project_name  = _l('no_company_view_profile');
        $isPerson = true;
    }

    $url = admin_url('opportunities/opportunity/' . $aRow['id']);


    $project_name = '<a href="' . $url . '">' . $project_name . '</a>';

    $project_name .= '<div class="row-options">';
    $project_name .= '<a href="' . admin_url('opportunities/opportunity/' . $aRow['id'] . ($isPerson && $aRow['id'] ? '?group=profile' : '')) . '">' . _l('view') . '</a>';

    if ($hasPermissionDelete) {
        $project_name .= ' | <a href="' . admin_url('opportunities/delete/' . $aRow['id']) . '" class="text-danger _delete">' . _l('delete') . '</a>';
    }

    $project_name .= '</div>';

    $row[] = $project_name;

    $row[] = $aRow['company'];

    $row[] = $aRow['staffname'];

    $row[] = $aRow['probability'];

    $status = $aRow['status'];
    if($status == 1){
        $show_status = 'Prospecting';
    }
    else if($status == 2){
        $show_status = 'Proposal Sent';
    }
    else if($status == 3){
        $show_status = 'Negotiating';
    }
    else if($status == 4){
        $show_status = 'Investigating';
    }
    else if($status == 5){
        $show_status = 'Closed';
    }

    $row[] = $show_status;

    $row[] = $aRow['delivery_date'];
    $row[] = $aRow['projected_sale_date'];
    $row[] = _dt($aRow['datecreated']);

    $output['aaData'][] = $row;
}
