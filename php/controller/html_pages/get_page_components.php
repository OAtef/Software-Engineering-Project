<?php

require_once '../../model/page_components.php';
session_start();

$xx = array($_SESSION['typeID']);

// send it and get the page component

$page_components = new page_components(null);
$arr = $page_components->_read($xx, array());

//echo json_encode($arr);

?>