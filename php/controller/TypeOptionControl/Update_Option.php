<?php

require_once ('../../model/user_option.php');
require_once ('../../model/errors.php');

$db = database::getInstance();
$error = new errors();
$TypeOptions = new user_option(NULL);

if (isset($_POST['optionID']) && !empty($_POST['optionID']) && is_numeric($_POST['optionID'])) {
  $optionID = mysqli_real_escape_string($db::$con, $_POST['optionID']);
}else {
  $error->_read(array(997), array());
  $emsg = array("error"=>$error->user_error);
  echo json_encode($emsg);
  die;
}
if (isset($_POST['name']) && !empty($_POST['name']) && !is_numeric($_POST['name'])) {
  $name = mysqli_real_escape_string($db::$con, $_POST['name']);
}else {
  $error->_read(array(999), array());
  $emsg = array("error"=>$error->user_error);
  echo json_encode($emsg);
  die;
}
if (isset($_POST['type']) && !empty($_POST['type']) && !is_numeric($_POST['type'])) {
  $type = mysqli_real_escape_string($db::$con, $_POST['type']);
}else {
  $error->_read(array(998), array());
  $emsg = array("error"=>$error->user_error);
  echo json_encode($emsg);
  die;
}
if (isset($_POST['typeID']) && !empty($_POST['typeID']) && is_numeric($_POST['typeID'])) {
  $typeID = mysqli_real_escape_string($db::$con, $_POST['typeID']);
}else {
  $error->_read(array(997), array());
  $emsg = array("error"=>$error->user_error);
  echo json_encode($emsg);
  die;
}

$TypeOptions->_update(array($name, $type, $typeID), array($optionID));
$emsg = array("success"=>"Option Updated");
echo json_encode($emsg);

?>
