<?php

require_once ('../../model/user_option.php');
require_once ('../../model/errors.php');
require_once ('../../view/Users/TypeOptionV.php');

$db = database::getInstance();
$error = new errors();
$TypeOptions = new user_option(NULL);
$Display = $_POST["DisplayType"];

switch ($Display) {

  case 'all':
    $x = $TypeOptions->list_options();
    $table = TypeOptionV::showList($x);
    echo json_encode($table);
    break;

  case 'update':
    if (isset($_POST["optionName"]) && !empty($_POST["optionName"]) && !is_numeric($_POST["optionName"])) {
      $typename = mysqli_real_escape_string($db::$con, $_POST["optionName"]);
    }else {
      $error->_read(array(999), array());
      $emsg = array("error"=>$error->user_error);
      echo json_encode($emsg);
      die;
    }
    if (isset($_POST["typeName"]) && !empty($_POST["typeName"]) && !is_numeric($_POST["typeName"])) {
      $parentname = mysqli_real_escape_string($db::$con, $_POST["typeName"]);
    }else {
      $error->_read(array(998), array());
      $emsg = array("error"=>$error->user_error);
      echo json_encode($emsg);
      die;
    }

    $updateForm = TypeOptionV::showUpdate($typename, $parentname);
    echo json_encode($updateForm);
    break;

}

?>
