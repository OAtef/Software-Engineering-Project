<?php

require_once ('../../model/user_option.php');
require_once ('../../model/errors.php');
require_once ('../../view/Users/TypeOptionV.php');

$db = database::getInstance();
$error = new errors();
$TypeOptions = new user_option(NULL);
$Condition = $_POST['condition'];

switch ($Condition) {
  case 'show':
    $addform = TypeOptionV::addTypeOption();
    echo json_encode($addform);
    break;

  case 'add':
    if (isset($_POST['OptionName']) && !empty($_POST['OptionName']) && !is_numeric($_POST['OptionName'])) {
      $OptionName = mysqli_real_escape_string($db::$con, $_POST['OptionName']);
    }else {
      $error->_read(array(999), array());
      $emsg = array("error"=>$error->user_error);
      echo json_encode($emsg);
      die;
    }
    if (isset($_POST['OptionType']) && !empty($_POST['OptionType']) && !is_numeric($_POST['OptionType'])) {
      $OptionType = mysqli_real_escape_string($db::$con, $_POST['OptionType']);
    }else {
      $error->_read(array(998), array());
      $emsg = array("error"=>$error->user_error);
      echo json_encode($emsg);
      die;
    }
    if (isset($_POST['OptionTypeID']) && !empty($_POST['OptionTypeID']) && is_numeric($_POST['OptionTypeID'])) {
      $OptionTypeID = mysqli_real_escape_string($db::$con, $_POST['OptionTypeID']);
    }else {
      $error->_read(array(997), array());
      $emsg = array("error"=>$error->user_error);
      echo json_encode($emsg);
      die;
    }

    $TypeOptions->_create(array($OptionName, $OptionType, $OptionTypeID));
    $emsg = array("success"=>"Option Added");
    echo json_encode($emsg);
    break;
}

?>
