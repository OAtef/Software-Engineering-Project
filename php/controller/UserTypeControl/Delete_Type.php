<?php

require_once ('../../model/usertypes.php');
require_once ('../../model/errors.php');

$db = database::getInstance();
$error = new errors();
$ut = new usertypes(array());

if (isset($_POST['typeID']) && !empty($_POST['typeID']) && is_numeric($_POST['typeID'])) {
  $TypeID = mysqli_real_escape_string($db::$con, $_POST['typeID']);
}else {
  $error->_read(array(997), array());
  $emsg = array("error"=>$error->user_error);
  echo json_encode($emsg);
  die;
}

$ut->delete($TypeID);
$emsg = array("success"=>"User Type Deleted");
echo json_encode($emsg);

?>
