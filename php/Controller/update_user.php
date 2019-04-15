<?php

require '../Model/usertypes.php';
require '../Model/login.php';

$uv = new user_values(null);

$values = $_POST['arr'];
$userID = $_POST['userID'];
$usertypeID = $_POST['usertypeID'];
$len = $_POST['len'];

if($len == sizeof($values)){
  $uv->update_values($usertypeID, $userID, $values);
}else{
  $x=0;
  $vals = array();
  while($x < $len){
    $vals[$x] = $values[$x];
    $x++;
  }

  $uv->update_values($usertypeID, $userID, $values);
  $email = $values[$len];
  $pass = $values[$len+1];

  $log = new login(null);
  $log->update_logins($email, $pass, $userID);
}

?>