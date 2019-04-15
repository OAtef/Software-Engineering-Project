<?php

require '../Model/users.php';
require '../Model/login.php';
require '../Model/usertypes.php';


$user = new users(null);
$uv = new user_values(null);

$userID = $_POST['userID'];
$user->delete_user($userID);
$uv->delete_values($userID);

$log = new login(null);
$log->delete_logins($userID);

?>