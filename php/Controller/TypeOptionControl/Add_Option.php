<?php

require_once ('../../Model/useroptions.php');
require_once ('../../View/Users/TypeOptionV.php');

$TypeOptions = new user_options(NULL);
$Condition = $_POST['condition'];

switch ($Condition) {
  case 'show':
    $addform = TypeOptionV::addTypeOption();
    echo json_encode($addform);
    break;

  case 'add':

    if (isset($_POST['OptionName']) $$ !is_numeric($_POST['OptionName'])) {
      $OptionName = mysqli_real_escape_string($_POST['OptionName']);
    }
    if (isset($_POST['OptionType']) $$ !is_numeric($_POST['OptionType'])) {
      $OptionType = mysqli_real_escape_string($_POST['OptionType']);
    }
    if (isset($_POST['OptionTypeID']) $$ is_numeric($_POST['OptionTypeID'])) {
      $OptionTypeID = mysqli_real_escape_string($_POST['OptionTypeID']);
    }

    echo json_encode($TypeOptions->insert_option($OptionName, $OptionType, $OptionTypeID));
    break;
}

?>
