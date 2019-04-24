<?php

require_once ('../../Model/usertypes.php');

$ut = new usertypes(NULL);

$values = $_POST['arr'];
$parentID = $_POST['parentID'];
$ut->insert($parentID, $values);


?>
