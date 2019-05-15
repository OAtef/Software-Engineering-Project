<?php

require_once ('../../Model/usertypes.php');
require_once ('../../View/Users/UserTypeV.php');

$db = database::getInstance();
$ut = new usertypes(NULL);

$Condition = $_POST['condition'];
if (isset($_POST['parentID']) && is_numeric($_POST['parentID'])) {
  $parentID = mysqli_real_escape_string($db::$con, $_POST['parentID']);
}

switch ($Condition) {
  case 'show':
    $x = $ut->list_usertypesTest($parentID);
    $updateForm = UserTypeV::addUserType($x);
    echo json_encode($updateForm);
    break;

  case 'Add':
    if (isset($_POST['arr']) && !is_numeric($_POST['arr'])) {
      $values = mysqli_real_escape_string($db::$con, $_POST['arr']);
    }
    if (isset($_POST['parentID']) && is_numeric($_POST['parentID'])) {
      $parentID = mysqli_real_escape_string($db::$con, $_POST['parentID']);
    }

    echo json_encode($ut->insert($parentID, $values));
    break;
}

?>
