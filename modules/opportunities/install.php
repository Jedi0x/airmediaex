<?php

defined('BASEPATH') or exit('No direct script access allowed');

// add_option('sample_module', '[]');
// add_option('sample_module_active', '[]');

if (!$CI->db->table_exists(db_prefix() . 'opportunities')) {
  $CI->db->query('CREATE TABLE `' . db_prefix() . 'opportunities` (
  	`id` int(11) NOT NULL,
  	`project_name` varchar(100) NOT NULL,
  	`account` int(11) NOT NULL,
  	`contacts` varchar(100) NOT NULL,
  	`owner` int(11) NOT NULL,
  	`probability` int(11) NOT NULL,
  	`status` int(11) NOT NULL,
  	`closed_status` int(11) NOT NULL,
  	`delivery_date` varchar(100) NOT NULL,
  	`projected_sale_date` varchar(100) NOT NULL,
  	`datecreated` datetime NOT NULL
	) ENGINE=InnoDB DEFAULT CHARSET=' . $CI->db->char_set . ';');

	$CI->db->query('ALTER TABLE `' . db_prefix() . 'opportunities` 
		ADD PRIMARY KEY (`id`);');

	$CI->db->query('ALTER TABLE `' . db_prefix() . 'opportunities`  
		MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;');
}


if (!$CI->db->table_exists(db_prefix() . 'activity_log_opportunity')) {
  $CI->db->query('CREATE TABLE `' . db_prefix() . 'activity_log_opportunity` (
    `id` int(11) NOT NULL,
    `opportunity_id` int(11) NOT NULL,
    `description` mediumtext NOT NULL,
    `staffid` varchar(100) NOT NULL,
    `date` datetime NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=' . $CI->db->char_set . ';');

  $CI->db->query('ALTER TABLE `' . db_prefix() . 'activity_log_opportunity` 
    ADD PRIMARY KEY (`id`);');

  $CI->db->query('ALTER TABLE `' . db_prefix() . 'activity_log_opportunity`  
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;');
}


if (!$CI->db->table_exists(db_prefix() . 'call_log')) {
  $CI->db->query('CREATE TABLE `' . db_prefix() . 'call_log` (
    `id` int(11) NOT NULL,
    `call_number` varchar(100) NOT NULL,
    `opportunity_id` int(11) NOT NULL,
    `description` mediumtext NOT NULL,
    `addedfrom` int(11) NOT NULL,
    `date` datetime NOT NULL

  ) ENGINE=InnoDB DEFAULT CHARSET=' . $CI->db->char_set . ';');

  $CI->db->query('ALTER TABLE `' . db_prefix() . 'call_log` 
    ADD PRIMARY KEY (`id`);');

  $CI->db->query('ALTER TABLE `' . db_prefix() . 'call_log`  
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;');
}

if (!$CI->db->table_exists(db_prefix() . 'teams')) {
  $CI->db->query('CREATE TABLE `' . db_prefix() . 'teams` (
    `id` int(11) NOT NULL,
    `opportunity_id` int(11) NOT NULL,
    `team_members` varchar(100) NOT NULL,
    `datecreated` datetime NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=' . $CI->db->char_set . ';');

  $CI->db->query('ALTER TABLE `' . db_prefix() . 'teams` 
    ADD PRIMARY KEY (`id`);');

  $CI->db->query('ALTER TABLE `' . db_prefix() . 'teams`  
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;');
}



if (!$CI->db->table_exists(db_prefix() . 'shared_opportunity_files')) {
  $CI->db->query('CREATE TABLE `' . db_prefix() . 'shared_opportunity_files` (
    `id` int(11) NOT NULL,
    `opportunity_id` int(11) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=' . $CI->db->char_set . ';');

  $CI->db->query('ALTER TABLE `' . db_prefix() . 'shared_opportunity_files` 
    ADD PRIMARY KEY (`id`);');

  $CI->db->query('ALTER TABLE `' . db_prefix() . 'shared_opportunity_files`  
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;');
}


if (!$CI->db->field_exists('opportunity', db_prefix() . 'estimates')){
  $CI->db->query('ALTER TABLE `' . db_prefix() . 'estimates` ADD opportunity  int(11) NOT NULL AFTER clientid ;');
}

if (!$CI->db->field_exists('opportunity', db_prefix() . 'expenses')){
  $CI->db->query('ALTER TABLE `' . db_prefix() . 'expenses` ADD opportunity  int(11) NOT NULL AFTER clientid ;');
}


  



