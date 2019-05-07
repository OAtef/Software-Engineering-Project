<?php

require_once ('../../Model/usertypes.php');

$ut = new usertypes(NULL);

$values = $_POST['arr'];
$ID = $_POST['typeID'];
$ut->update($ID, $values);

?>
