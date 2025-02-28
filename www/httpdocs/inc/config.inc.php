<?php

// Enable for error reporting
error_reporting(E_ALL);

// Set locale
setlocale(LC_ALL, 'de_DE');
date_default_timezone_set('Europe/Berlin');

// Basic Internal Config Options
define('DS', DIRECTORY_SEPARATOR);
define('ROOT', realpath(dirname(dirname(__FILE__))) . DS);
define('LIBS', ROOT . 'libs' . DS);
define('CROOT', ROOT . '..' . DS);

// Change this if you'd like a different folder structure
define('NZB_DIR', CROOT . 'nzbs' . DS);
define('COOKIE_DIR', CROOT . 'cookies' . DS);
define('LOG_DIR', CROOT . 'logs' . DS);
define('CACHE_DIR', CROOT . 'cache' . DS);
define('CACHE_DURATION', 3600);
define('DISABLE_CACHE', false); // optional disabel cache for development

define('APP_NAME', "nzbto2newznab");

$inc_dir = get_include_path();
ini_set('include_path', $inc_dir . PATH_SEPARATOR . LIBS);

define('SMARTY_DIR', LIBS . 'smarty' . DS);

$www_top = str_replace("\\", "/", dirname($_SERVER['PHP_SELF']));
if (strlen($www_top) == 1) {
    $www_top = "";
} else if (substr($www_top, -1) == '/')
    $www_top = substr($www_top, 0, -1);

// Used everywhere an href is output
define('WWW_TOP', $www_top);

define('API_BASE', isset($_SERVER["HTTPS"]) ? "https://" : "http://" . $_SERVER["HTTP_HOST"] . '/');

define('INC_DIR', ROOT . 'inc' . DS);
// Path to themes directory.
define('THEME_DIR', ROOT . 'theme' . DS);

?>
