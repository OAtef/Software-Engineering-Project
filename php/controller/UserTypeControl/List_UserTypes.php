<?php

require_once ('../../model/usertypes.php');
require_once ('../../model/errors.php');
require_once ('../../view/Users/UserTypeV.php');

$db = database::getInstance();
$error = new errors();
$ut = new usertypes(array());

if (isset($_POST['parentID'])) {
  $parentID = mysqli_real_escape_string($db::$con, $_POST['parentID']);
}else {
  $error->_read(array(997), array());
  $emsg = array("error"=>$error->user_error);
  echo json_encode($emsg);
  die;
}
$Display = $_POST["DisplayType"];

switch ($Display) {

  case 'all':
    $x = $ut->list_usertypesTest($parentID);
    $table = UserTypeV::showList($x);
    echo json_encode($table);
    break;

  case 'single':
    $x = $ut->list_usertypesTest($parentID);
    $options = UserTypeV::ShowTypeOption($x);
    echo json_encode($options);
    break;

  case 'update':
    if (isset($_POST["TypeName"]) && !empty($_POST["TypeName"]) && !is_numeric($_POST["TypeName"])) {
      $typename = mysqli_real_escape_string($db::$con, $_POST["TypeName"]);
    }else {
      $error->_read(array(999), array());
      $emsg = array("error"=>$error->user_error);
      echo json_encode($emsg);
      die;
    }
    if (isset($_POST["ParentName"]) && !empty($_POST["ParentName"]) && !is_numeric($_POST["ParentName"])) {
      $parentname = mysqli_real_escape_string($db::$con, $_POST["ParentName"]);
    }else {
      $error->_read(array(998), array());
      $emsg = array("error"=>$error->user_error);
      echo json_encode($emsg);
      die;
    }

    $x = $ut->list_usertypesTest($parentID);
    $updateForm = UserTypeV::showUpdate($typename, $parentname, $x);
    echo json_encode($updateForm);
    break;

}

?>
