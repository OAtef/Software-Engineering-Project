<?php

require_once ('../../Model/usertypes.php');
require_once ('../../View/Users/UserTypeV.php');

$ut = new usertypes(NULL);
$Condition = $_POST['condition'];
$parentID = $_POST['parentID'];

switch ($Condition) {
  case 'show':
    $x = $ut->list_usertypesTest($parentID);
    $updateForm = UserTypeV::addUserType($x);
    echo json_encode($updateForm);
    break;

  case 'Add':
    $values = $_POST['arr'];
    $parentID = $_POST['parentID'];
    echo json_encode($ut->insert($parentID, $values));
    break;
}

?>
