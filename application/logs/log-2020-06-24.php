<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2020-06-24 17:41:19 --> Could not find the language line "datecreated"
ERROR - 2020-06-24 17:41:21 --> Query error: Column 'datecreated' in field list is ambiguous - Invalid query: 
    SELECT SQL_CALC_FOUND_ROWS tblopportunities.id as id, project_name, tblclients.company as company, CONCAT(tblstaff.firstname," ", tblstaff.lastname) as staffname, probability, status, delivery_date, projected_sale_date, datecreated 
    FROM tblopportunities
    LEFT JOIN tblclients ON tblclients.userid=tblopportunities.account  LEFT JOIN tblstaff ON tblstaff.staffid=tblopportunities.owner
    
    
    
    ORDER BY tblclients.company ASC
    LIMIT 0, 25
    
ERROR - 2020-06-24 17:42:28 --> Could not find the language line "datecreated"
ERROR - 2020-06-24 17:42:39 --> Could not find the language line "datecreated"
ERROR - 2020-06-24 18:00:41 --> Could not find the language line "datecreated"
ERROR - 2020-06-24 18:05:03 --> Could not find the language line "proposal_for_opportunity"
ERROR - 2020-06-24 18:05:03 --> Severity: error --> Exception: Call to undefined function get_opportunity_profile_tabs() E:\xampp7\htdocs\perfex_crm\modules\opportunities\controllers\Opportunities.php 148
ERROR - 2020-06-24 18:08:48 --> Severity: Compile Error --> Cannot redeclare get_opportunity_profile_tabs() (previously declared in E:\xampp7\htdocs\perfex_crm\modules\opportunities\helpers\opportunity_helper.php:28) E:\xampp7\htdocs\perfex_crm\modules\opportunities\helpers\opportunity_helper.php 41
ERROR - 2020-06-24 18:09:05 --> Severity: error --> Exception: Using $this when not in object context E:\xampp7\htdocs\perfex_crm\modules\opportunities\helpers\opportunity_helper.php 36
ERROR - 2020-06-24 18:09:58 --> Severity: error --> Exception: Using $this when not in object context E:\xampp7\htdocs\perfex_crm\modules\opportunities\helpers\opportunity_helper.php 37
ERROR - 2020-06-24 18:10:09 --> Severity: error --> Exception: Call to undefined method Opportunities::get() E:\xampp7\htdocs\perfex_crm\modules\opportunities\helpers\opportunity_helper.php 38
ERROR - 2020-06-24 18:10:48 --> Severity: error --> Exception: Call to undefined method Opportunities::get() E:\xampp7\htdocs\perfex_crm\modules\opportunities\helpers\opportunity_helper.php 38
ERROR - 2020-06-24 18:11:41 --> Severity: error --> Exception: Using $this when not in object context E:\xampp7\htdocs\perfex_crm\modules\opportunities\helpers\opportunity_helper.php 178
ERROR - 2020-06-24 18:12:31 --> Severity: error --> Exception: Using $this when not in object context E:\xampp7\htdocs\perfex_crm\modules\opportunities\helpers\opportunity_helper.php 178
ERROR - 2020-06-24 18:13:43 --> Severity: error --> Exception: syntax error, unexpected ';' E:\xampp7\htdocs\perfex_crm\modules\opportunities\helpers\opportunity_helper.php 175
ERROR - 2020-06-24 18:14:01 --> 404 Page Not Found: 
ERROR - 2020-06-24 18:25:25 --> 404 Page Not Found: 
ERROR - 2020-06-24 18:32:06 --> Could not find the language line "ol_call_log"
ERROR - 2020-06-24 18:32:06 --> Could not find the language line "ol_activity"
ERROR - 2020-06-24 18:38:24 --> Could not find the language line "ol_call_log"
ERROR - 2020-06-24 18:38:24 --> Could not find the language line "ol_activity"
ERROR - 2020-06-24 18:38:24 --> Severity: Notice --> Undefined property: Opportunities::$Opportunity_model E:\xampp7\htdocs\perfex_crm\modules\opportunities\controllers\Opportunities.php 220
ERROR - 2020-06-24 18:38:24 --> Severity: error --> Exception: Call to a member function get() on null E:\xampp7\htdocs\perfex_crm\modules\opportunities\controllers\Opportunities.php 220
ERROR - 2020-06-24 18:40:12 --> Could not find the language line "ol_call_log"
ERROR - 2020-06-24 18:40:12 --> Could not find the language line "ol_activity"
ERROR - 2020-06-24 18:40:12 --> Severity: Notice --> Undefined property: Opportunities::$Opportunity_model E:\xampp7\htdocs\perfex_crm\modules\opportunities\controllers\Opportunities.php 220
ERROR - 2020-06-24 18:40:12 --> Severity: error --> Exception: Call to a member function get() on null E:\xampp7\htdocs\perfex_crm\modules\opportunities\controllers\Opportunities.php 220
ERROR - 2020-06-24 18:41:59 --> Could not find the language line "ol_call_log"
ERROR - 2020-06-24 18:41:59 --> Could not find the language line "ol_activity"
ERROR - 2020-06-24 18:41:59 --> Severity: Notice --> Undefined property: Opportunities::$Opportunity_model E:\xampp7\htdocs\perfex_crm\modules\opportunities\controllers\Opportunities.php 220
ERROR - 2020-06-24 18:41:59 --> Severity: error --> Exception: Call to a member function get() on null E:\xampp7\htdocs\perfex_crm\modules\opportunities\controllers\Opportunities.php 220
ERROR - 2020-06-24 18:42:35 --> Could not find the language line "ol_call_log"
ERROR - 2020-06-24 18:42:35 --> Could not find the language line "ol_activity"
ERROR - 2020-06-24 18:42:35 --> Severity: Notice --> Undefined property: Opportunities::$opportunity_model E:\xampp7\htdocs\perfex_crm\modules\opportunities\controllers\Opportunities.php 147
ERROR - 2020-06-24 18:42:35 --> Severity: error --> Exception: Call to a member function get() on null E:\xampp7\htdocs\perfex_crm\modules\opportunities\controllers\Opportunities.php 147
ERROR - 2020-06-24 18:43:17 --> Could not find the language line "ol_call_log"
ERROR - 2020-06-24 18:43:17 --> Could not find the language line "ol_activity"
ERROR - 2020-06-24 18:43:17 --> Severity: Notice --> Undefined property: Opportunities::$Opportunity_model E:\xampp7\htdocs\perfex_crm\modules\opportunities\controllers\Opportunities.php 220
ERROR - 2020-06-24 18:43:17 --> Severity: error --> Exception: Call to a member function get() on null E:\xampp7\htdocs\perfex_crm\modules\opportunities\controllers\Opportunities.php 220
ERROR - 2020-06-24 18:43:36 --> Could not find the language line "ol_call_log"
ERROR - 2020-06-24 18:43:36 --> Could not find the language line "ol_activity"
ERROR - 2020-06-24 18:43:36 --> Severity: Notice --> Undefined property: Opportunities::$Staff_model E:\xampp7\htdocs\perfex_crm\modules\opportunities\controllers\Opportunities.php 238
ERROR - 2020-06-24 18:43:36 --> Severity: error --> Exception: Call to a member function get() on null E:\xampp7\htdocs\perfex_crm\modules\opportunities\controllers\Opportunities.php 238
ERROR - 2020-06-24 18:43:48 --> Could not find the language line "ol_call_log"
ERROR - 2020-06-24 18:43:48 --> Could not find the language line "ol_activity"
ERROR - 2020-06-24 18:44:22 --> Could not find the language line "ol_call_log"
ERROR - 2020-06-24 18:44:22 --> Could not find the language line "ol_activity"
ERROR - 2020-06-24 18:45:05 --> Could not find the language line "ol_call_log"
ERROR - 2020-06-24 18:45:05 --> Could not find the language line "ol_activity"
ERROR - 2020-06-24 18:47:42 --> Could not find the language line "ol_call_log"
ERROR - 2020-06-24 18:47:42 --> Could not find the language line "ol_activity"
ERROR - 2020-06-24 18:48:29 --> Could not find the language line "ol_call_log"
ERROR - 2020-06-24 18:48:29 --> Could not find the language line "ol_activity"
ERROR - 2020-06-24 18:48:29 --> Could not find the language line "datecreated"
ERROR - 2020-06-24 18:48:30 --> Could not find the language line "ol_call_log"
ERROR - 2020-06-24 18:48:30 --> Could not find the language line "ol_activity"
ERROR - 2020-06-24 18:48:34 --> Could not find the language line "ol_call_log"
ERROR - 2020-06-24 18:48:34 --> Could not find the language line "ol_activity"
ERROR - 2020-06-24 18:50:11 --> Could not find the language line "ol_call_log"
ERROR - 2020-06-24 18:50:11 --> Could not find the language line "ol_activity"
ERROR - 2020-06-24 18:50:36 --> Could not find the language line "call_log"
ERROR - 2020-06-24 18:50:37 --> Could not find the language line "activity"
ERROR - 2020-06-24 18:55:41 --> Severity: error --> Exception: Call to undefined function get_contact() E:\xampp7\htdocs\perfex_crm\modules\opportunities\views\groups\contacts.php 28
ERROR - 2020-06-24 19:13:33 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ') ENGINE=InnoDB DEFAULT CHARSET=utf8' at line 4 - Invalid query: CREATE TABLE `tblshared_opportunity_files` (
    `id` int(11) NOT NULL,
    `opportunity_id` int(11) NOT NULL,
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
ERROR - 2020-06-24 19:20:46 --> Could not find the language line "datecreated"
ERROR - 2020-06-24 19:21:01 --> Could not find the language line "datecreated"
ERROR - 2020-06-24 19:21:34 --> Could not find the language line "datecreated"
ERROR - 2020-06-24 19:23:16 --> Could not find the language line "datecreated"
ERROR - 2020-06-24 19:41:44 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ENGINE=InnoDB DEFAULT CHARSET=utf8' at line 1 - Invalid query: ALTER TABLE `tblestimates` ADD opportunity  int(11) NOT NULL ENGINE=InnoDB DEFAULT CHARSET=utf8;
ERROR - 2020-06-24 19:44:06 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ']' at line 1 - Invalid query: ALTER TABLE `tblestimates` ADD opportunity  int(11) NOT NULL AFTER clientid];
ERROR - 2020-06-24 19:45:27 --> Query error: Duplicate column name 'opportunity' - Invalid query: ALTER TABLE `tblestimates` ADD opportunity  int(11) NOT NULL AFTER clientid ;
ERROR - 2020-06-24 19:48:42 --> Could not find the language line "datecreated"
ERROR - 2020-06-24 19:49:14 --> Severity: error --> Exception: Call to undefined function log_opportunity_activity() E:\xampp7\htdocs\perfex_crm\modules\opportunities\models\Opportunity_model.php 112
ERROR - 2020-06-24 19:50:37 --> Could not find the language line "proposal_for_opportunity"
ERROR - 2020-06-24 19:52:04 --> Could not find the language line "datecreated"
ERROR - 2020-06-24 19:53:17 --> Could not find the language line "datecreated"
ERROR - 2020-06-24 19:57:26 --> Could not find the language line "datecreated"
ERROR - 2020-06-24 20:09:00 --> Severity: Notice --> Undefined property: Opportunities::$app_opportunities_tabs E:\xampp7\htdocs\perfex_crm\modules\opportunities\helpers\opportunity_helper.php 43
ERROR - 2020-06-24 20:09:00 --> Severity: error --> Exception: Call to a member function add_opportunity_profile_tab() on null E:\xampp7\htdocs\perfex_crm\modules\opportunities\helpers\opportunity_helper.php 43
ERROR - 2020-06-24 20:11:55 --> Severity: Notice --> Undefined property: Opportunities::$app_opportunities_tabs E:\xampp7\htdocs\perfex_crm\modules\opportunities\helpers\opportunity_helper.php 43
ERROR - 2020-06-24 20:11:55 --> Severity: error --> Exception: Call to a member function add_opportunity_profile_tab() on null E:\xampp7\htdocs\perfex_crm\modules\opportunities\helpers\opportunity_helper.php 43
ERROR - 2020-06-24 20:14:42 --> Severity: error --> Exception: Class 'app\services\OpportunityActivityLogger' not found E:\xampp7\htdocs\perfex_crm\modules\opportunities\helpers\opportunity_helper.php 156
ERROR - 2020-06-24 20:15:39 --> Severity: error --> Exception: syntax error, unexpected '}', expecting end of file E:\xampp7\htdocs\perfex_crm\modules\opportunities\helpers\opportunity_helper.php 188
ERROR - 2020-06-24 20:15:41 --> Severity: error --> Exception: syntax error, unexpected '}', expecting end of file E:\xampp7\htdocs\perfex_crm\modules\opportunities\helpers\opportunity_helper.php 188
ERROR - 2020-06-24 20:19:07 --> Could not find the language line "datecreated"
ERROR - 2020-06-24 20:19:43 --> Could not find the language line "datecreated"
