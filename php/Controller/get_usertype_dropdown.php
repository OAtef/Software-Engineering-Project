<?php

$parentID = $_POST['parentID'];
$x = $ut->list_usertypes($parentID);
echo json_encode($x);

?>