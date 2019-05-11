<?php

require_once ('../../Model/useroptions.php');

$TypeOptions = new user_options(NULL);

if (isset($_POST['optionID']) && is_numeric($_POST['optionID'])) {
  $optionID = mysqli_real_escape_string($_POST['optionID']);
}

$TypeOptions->delete_option($optionID);

?>
