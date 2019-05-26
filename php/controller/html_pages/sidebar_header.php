<?php

require_once '../../model/profile_photo.php';
require_once '../../model/usertypes.php';
session_start();

$ut = new usertypes(array($_SESSION['typeID']));
$type = $ut->usertype_name;

$p = new profile_photo(null);
$prof = array($_SESSION['user-id']);
$url = $p->_read($prof, array());

// to get the name of the user .. $_SESSION['user-name'] =
// go to option search for (Like firstname)
// get the id and utID and then search for the rquired id of rout
// get the userID and the id from rout >> search for the value >> which will be the first name

$name = 'omar';

$arr = array($name, $url, $type);

echo json_encode($arr);


