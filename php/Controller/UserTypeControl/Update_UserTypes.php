<?php

require_once ('../../Model/usertypes.php');

$db = database::getInstance();
$ut = new usertypes(NULL);

if (isset($_POST['arr']) && !is_numeric($_POST['arr'])) {
  $values = mysqli_real_escape_string($db::$con, $_POST['arr']);
}
if (isset($_POST['typeID']) && is_numeric($_POST['typeID'])) {
  $ID = mysqli_real_escape_string($db::$con, $_POST['typeID']);
}

$ut->update($ID, $values);

?>
