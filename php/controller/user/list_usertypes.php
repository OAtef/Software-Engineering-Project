<?php

require_once '../../model/usertypes.php';

$ut = new usertypes(array());

$parentID = $_POST['parentID'];
$x = $ut->list_usertypes($parentID);
echo json_encode($x);

