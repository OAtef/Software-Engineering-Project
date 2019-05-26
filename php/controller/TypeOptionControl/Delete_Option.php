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

$TypeOptions->_delete(array($optionID));
$emsg = array("success"=>"Option Deleted");
echo json_encode($emsg);

?>
