<?php

require '../Model/useroptions.php';

$parentID = $_POST['parentID'];

$oo = new user_options(null);
$oo->select_allOptions($parentID);

$x = $oo->headers_rows;
echo json_encode($x);

?>