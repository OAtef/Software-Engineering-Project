<?php

require_once '../Model/useroptions.php';
require_once '../Model/usertypes.php';
require_once '../Model/uservalues.php';

$emptyArry = array();


session_start();
$usertypeID =  1 ;//$_SESSION['usertypeID']; // change later -- got it from login

$uv = new user_values(null);

$oo = new user_options(null);
$oo->select_allOptions($usertypeID);
$headers = $oo->headers_rows;

$ut = new usertypes(null);
$children_arr = $ut->list_usertypes($usertypeID);
$children_ids = array_keys($children_arr);

$i=0;
while($i < sizeof($children_ids)){

  $data = array();
  $data[0] = $children_ids[$i];
  
  $vals = $uv->_read($data, $emptyArry);
  $i++;
}

$rage3 = array();
$rage3[0] = $headers;
$rage3[1] = $vals;

echo json_encode($rage3);

?>