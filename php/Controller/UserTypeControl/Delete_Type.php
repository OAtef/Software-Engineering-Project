<?php

require_once ('../../Model/usertypes.php');

$db = database::getInstance();
$ut = new usertypes(NULL);

if (isset($_POST['typeID']) && is_numeric($_POST['typeID'])) {
  $TypeID = mysqli_real_escape_string($db::$con, $_POST['typeID']);
}

$ut->delete($TypeID);
$TypeOptions->delete($TypeID);

?>
