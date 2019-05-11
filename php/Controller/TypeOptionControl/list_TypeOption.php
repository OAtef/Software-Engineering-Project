<?php

require_once ('../../Model/useroptions.php');
require_once ('../../View/Users/TypeOptionV.php');

$TypeOptions = new user_options(NULL);
$Display = $_POST["DisplayType"];

switch ($Display) {

  case 'all':
    $x = $TypeOptions->list_options();
    $table = TypeOptionV::showList($x);
    echo json_encode($table);
    break;

  case 'update':
    if (isset($_POST["optionName"]) && !is_numeric($_POST["optionName"])) {
      $typename = mysqli_real_escape_string($_POST["optionName"]);
    }
    if (isset($_POST["typeName"]) && !is_numeric($_POST["typeName"])) {
      $parentname = mysqli_real_escape_string($_POST["typeName"]);
    }

    $updateForm = TypeOptionV::showUpdate($typename, $parentname);
    echo json_encode($updateForm);
    break;

}

?>
