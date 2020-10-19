<?php 

function created_backup_options()
{
	$create_options = array();
	$create_options[0]['backup_create_id'] = 1;
	$create_options[0]['backup_name'] = 'Every Hour';

	$create_options[1]['backup_create_id'] = 2;
	$create_options[1]['backup_name'] = 'Every Day';

	$create_options[2]['backup_create_id'] = 3;
	$create_options[2]['backup_name'] = 'Every Week';

	$create_options[3]['backup_create_id'] = 4;
	$create_options[3]['backup_name'] = 'Every Month';

	return $create_options;
}


function remove_backup_options()
{
	$remove_options = array();

	$remove_options[0]['backup_create_id'] = 1;
	$remove_options[0]['backup_name'] = 'After Every Day';

	$remove_options[1]['backup_create_id'] = 2;
	$remove_options[1]['backup_name'] = 'After Every Week';

	$remove_options[2]['backup_create_id'] = 3;
	$remove_options[2]['backup_name'] = 'After Every Month';

	$remove_options[3]['backup_create_id'] = 4;
	$remove_options[3]['backup_name'] = 'After Every Year';

	return $remove_options;
}