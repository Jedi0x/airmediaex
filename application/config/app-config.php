<?php

defined('BASEPATH') or exit('No direct script access allowed');
/*
* --------------------------------------------------------------------------
* Base Site URL
* --------------------------------------------------------------------------
*
* URL to your CodeIgniter root. Typically this will be your base URL,
* WITH a trailing slash:
*
*   http://example.com/
*
* If this is not set then CodeIgniter will try guess the protocol, domain
* and path to your installation. However, you should always configure this
* explicitly and never rely on auto-guessing, especially in production
* environments.
*
*/
if ($_SERVER['HTTP_HOST'] == 'localhost' || $_SERVER['HTTP_HOST'] == '127.0.0.1') {

	$hostname = 'localhost';
	$username = 'root';
	$password = '';
	$database = 'airmedia';
	$app_base_url = 'http://localhost/airmediaex/';

}elseif ($_SERVER['HTTP_HOST'] == 'junaidtest.blogbaaz.com')  {

	$hostname = 'shareddb-i.hosting.stackcp.net';
	$username = 'backupmoddb-3737b083';
	$password = 'crp5kc71fp';
	$database = 'backupmoddb-3737b083';
	$app_base_url = 'https://junaidtest.blogbaaz.com/';
}

else{
	//live portal 
	$hostname = '';
	$username = '';
	$password = '';
	$database = '';
	$app_base_url = '';
}

define('APP_BASE_URL', $app_base_url);

/*
* --------------------------------------------------------------------------
* Encryption Key
* IMPORTANT: Do not change this ever!
* --------------------------------------------------------------------------
*
* If you use the Encryption class, you must set an encryption key.
* See the user guide for more info.
*
* http://codeigniter.com/user_guide/libraries/encryption.html
*
* Auto added on install
*/
define('APP_ENC_KEY', '4566ca37d52b9c2bb33e6c5202ffff01');


/**
 * Database Credentials
 * The hostname of your database server
 */
define('APP_DB_HOSTNAME', $hostname);
/**
 * The username used to connect to the database
 */
define('APP_DB_USERNAME', $username);
/**
 * The password used to connect to the database
 */
define('APP_DB_PASSWORD', $password);
/**
 * The name of the database you want to connect to
 */
define('APP_DB_NAME', $database);

/**
 * @since  2.3.0
 * Database charset
 */
define('APP_DB_CHARSET', 'utf8');
/**
 * @since  2.3.0
 * Database collation
 */
define('APP_DB_COLLATION', 'utf8_general_ci');

/**
 *
 * Session handler driver
 * By default the database driver will be used.
 *
 * For files session use this config:
 * define('SESS_DRIVER', 'files');
 * define('SESS_SAVE_PATH', NULL);
 * In case you are having problem with the SESS_SAVE_PATH consult with your hosting provider to set "session.save_path" value to php.ini
 *
 */
define('SESS_DRIVER', 'database');
define('SESS_SAVE_PATH', 'sessions');

/**
 * Enables CSRF Protection
 */
define('APP_CSRF_PROTECTION', true);