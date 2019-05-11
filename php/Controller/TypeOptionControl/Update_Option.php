<?php

require_once ('../../Model/useroptions.php');

$TypeOptions = new user_options(NULL);

if (isset($_POST['optionID']) && is_numeric($_POST['optionID'])) {
  $optionID = mysqli_real_escape_string($_POST['optionID']);
}
if (isset($_POST['name']) && !is_numeric($_POST['name'])) {
  $name = mysqli_real_escape_string($_POST['name']);
}
if (isset($_POST['type']) && !is_numeric($_POST['type'])) {
  $type = mysqli_real_escape_string();
}
if (isset($_POST['typeID']) && is_numeric($_POST['typeID'])) {
  $typeID = mysqli_real_escape_string($_POST['typeID']);
}

$TypeOptions->update_option($optionID, $name, $type, $typeID);

?>
