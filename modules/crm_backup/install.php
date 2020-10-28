<?php 

add_option('backup_remove', '');
add_option('backup_created_at', '');
add_option('last_crm_backup','');

// Google Drive
add_option('google_drive_active',0);
add_option('google_drive_client_id', '');
add_option('google_drive_client_secret', '');
add_option('google_drive_redirect_uri', admin_url('crm_backup/google_drive/save_access_token'));
add_option('google_drive_authorized',0);
add_option('google_drive_oauth_access_token','');
add_option('google_drive_parent_folder_id','');
add_option('google_drive_folder_ids','');
add_option('google_drive_temp_file_ids','');

// DropBox

add_option('dropbox_drive_active',0);
add_option('dropbox_app_key','');
add_option('dropbox_app_secret','');
add_option('dropbox_access_token','');


// Onedrive/SkyDrive

add_option('one_drive_authorized',0);
add_option('onedrive_active',0);
add_option('onedrive_app_key','');
add_option('onedrive_app_secret','');
add_option('onedrive_access_token','');
add_option('onedrive_redirect_url',admin_url('crm_backup/one_drive/save_access_token'));



if (!$CI->db->table_exists(db_prefix() . 'crm_backups')) {
  $CI->db->query('CREATE TABLE `' . db_prefix() . 'crm_backups` (
  	`id` int(11) NOT NULL,
  	`backup_name` varchar(100) NOT NULL,
  	`google_drive_file_id`  varchar(100) DEFAULT NULL,
  	`onedrive_file` MEDIUMTEXT DEFAULT NULL,
  	`datecreated` datetime NOT NULL
	) ENGINE=InnoDB DEFAULT CHARSET=' . $CI->db->char_set . ';');

	$CI->db->query('ALTER TABLE `' . db_prefix() . 'crm_backups` 
		ADD PRIMARY KEY (`id`);');

	$CI->db->query('ALTER TABLE `' . db_prefix() . 'crm_backups`  
		MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;');
}


