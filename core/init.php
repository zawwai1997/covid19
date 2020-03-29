<?php

//error_reporting(0);
//ini_set('display_errors', 0);

require_once 'database/Connection.php';

require_once 'classes/User.php';
require_once 'session_helper.php';

session_start();

global $pdo;

$user = new User($pdo);