<?php

require_once ('../../Model/usertypes.php');

$ut = new usertypes(NULL);

$TypeID = $_POST['typeID'];
$ut->delete($TypeID);
$TypeOptions->delete($TypeID);

?>
