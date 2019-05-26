<?php

require_once ('../../model/usertypes.php');
require_once ('../../model/errors.php');

$db = database::getInstance();
$error = new errors();
$ut = new usertypes(array());

if (isset($_POST['arr']) && !empty($_POST['arr']) && !is_numeric($_POST['arr'])) {
  $values = mysqli_real_escape_string($db::$con, $_POST['arr']);
}else {
  $error->_read(array(999), array());
  $emsg = array("error"=>$error->user_error);
  echo json_encode($emsg);
  die;
}
if (isset($_POST['parentID']) && !empty($_POST['parentID']) && is_numeric($_POST['parentID'])) {
  $ParentTypeID = mysqli_real_escape_string($db::$con, $_POST['parentID']);
}else {
  $error->_read(array(997), array());
  $emsg = array("error"=>$error->user_error);
  echo json_encode($emsg);
  die;
}
if (isset($_POST['typeID']) && !empty($_POST['typeID']) && is_numeric($_POST['typeID'])) {
  $ID = mysqli_real_escape_string($db::$con, $_POST['typeID']);
}else {
  $error->_read(array(997), array());
  $emsg = array("error"=>$error->user_error);
  echo json_encode($emsg);
  die;
}

$ut->update($ID, $values, $ParentTypeID);
$emsg = array("success"=>"User Type Updated");
echo json_encode($emsg);

?>
