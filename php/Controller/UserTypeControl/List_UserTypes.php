<?php

require_once ('../../Model/usertypes.php');
require_once ('../../View/Users/UserTypeV.php');

$ut = new usertypes(NULL);

$parentID = $_POST['parentID'];
$Display = $_POST["DisplayType"];
$typename = NULL;
$parentname = NULL;

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
    $typename = $_POST["TypeName"];
    $parentname = $_POST["ParentName"];

    $x = $ut->list_usertypesTest($parentID);
    $updateForm = UserTypeV::showUpdate($typename, $parentname, $x);
    echo json_encode($updateForm);
    break;

}

?>
