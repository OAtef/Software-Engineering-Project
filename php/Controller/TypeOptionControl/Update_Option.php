<?php

require_once ('../../Model/useroptions.php');

$db = database::getInstance();
$TypeOptions = new user_options(NULL);

if (isset($_POST['optionID']) && is_numeric($_POST['optionID'])) {
  $optionID = mysqli_real_escape_string($db::$con, $_POST['optionID']);
}
if (isset($_POST['name']) && !is_numeric($_POST['name'])) {
  $name = mysqli_real_escape_string($db::$con, $_POST['name']);
}
if (isset($_POST['type']) && !is_numeric($_POST['type'])) {
  $type = mysqli_real_escape_string($db::$con, $_POST['type']);
}
if (isset($_POST['typeID']) && is_numeric($_POST['typeID'])) {
  $typeID = mysqli_real_escape_string($db::$con, $_POST['typeID']);
}

$TypeOptions->update_option($optionID, $name, $type, $typeID);

?>
