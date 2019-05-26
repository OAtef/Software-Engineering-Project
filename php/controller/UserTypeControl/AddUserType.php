<?php

require_once ('../../model/usertypes.php');
require_once ('../../model/errors.php');
require_once ('../../view/Users/UserTypeV.php');

$db = database::getInstance();
$error = new errors();
$ut = new usertypes(array());

$Condition = $_POST['condition'];
if (isset($_POST['parentID']) && is_numeric($_POST['parentID'])) {
  $parentID = mysqli_real_escape_string($db::$con, $_POST['parentID']);
}else {
  $error->_read(array(997), array());
  $emsg = array("error"=>$error->user_error);
  echo json_encode($emsg);
  die;
}

switch ($Condition) {
  case 'show':
    $x = $ut->list_usertypesTest($parentID);
    $updateForm = UserTypeV::addUserType($x);
    echo json_encode($updateForm);
    break;

  case 'Add':
    if (isset($_POST['arr']) && !empty($_POST['arr']) && !is_numeric($_POST['arr'])) {
      $name = mysqli_real_escape_string($db::$con, $_POST['arr']);
    }else {
      $error->_read(array(999), array());
      $emsg = array("error"=>$error->user_error);
      echo json_encode($emsg);
      die;
    }
    if (isset($_POST['parentID']) && !empty($_POST['parentID']) && is_numeric($_POST['parentID'])) {
      $parentID = mysqli_real_escape_string($db::$con, $_POST['parentID']);
    }else {
      $error->_read(array(997), array());
      $emsg = array("error"=>$error->user_error);
      echo json_encode($emsg);
      die;
    }

    $ut->insert($parentID, $name);
    $emsg = array("success"=>"User Type Added");
    echo json_encode($emsg);
    break;
}

?>
