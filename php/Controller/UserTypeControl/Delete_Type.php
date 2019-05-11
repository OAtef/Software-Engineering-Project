<?php

require_once ('../../Model/usertypes.php');

$ut = new usertypes(NULL);

if (isset($_POST['typeID']) && is_numeric($_POST['typeID'])) {
  $TypeID = mysqli_real_escape_string($_POST['typeID']);
}

$ut->delete($TypeID);
$TypeOptions->delete($TypeID);

?>
