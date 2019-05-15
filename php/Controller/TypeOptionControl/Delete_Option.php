<?php

require_once ('../../Model/useroptions.php');

$db = database::getInstance();
$TypeOptions = new user_options(NULL);

if (isset($_POST['optionID']) && is_numeric($_POST['optionID'])) {
  $optionID = mysqli_real_escape_string($db::$con, $_POST['optionID']);
}

$TypeOptions->delete_option($optionID);

?>
