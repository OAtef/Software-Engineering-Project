<?php

require_once ('../../Model/usertypes.php');
require_once ('../../View/Users/UserTypeV.php');

$db = database::getInstance();
$ut = new usertypes(NULL);

if (isset($_POST['parentID'])) {
  $parentID = mysqli_real_escape_string($db::$con, $_POST['parentID']);
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
    if (isset($_POST["TypeName"]) && !is_numeric($_POST["TypeName"])) {
      $typename = mysqli_real_escape_string($db::$con, $_POST["TypeName"]);
    }
    if (isset($_POST["ParentName"]) && !is_numeric($_POST["ParentName"])) {
      $parentname = mysqli_real_escape_string($db::$con, $_POST["ParentName"]);
    }

    $x = $ut->list_usertypesTest($parentID);
    $updateForm = UserTypeV::showUpdate($typename, $parentname, $x);
    echo json_encode($updateForm);
    break;

}

?>
