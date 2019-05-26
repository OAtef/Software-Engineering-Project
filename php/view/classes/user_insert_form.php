<?php
require_once '../../model/user_option.php';
require_once 'usersView.php';


$parentID = $_POST['parentID'];

$oo = new user_option(null);
$oo->_read(array($parentID), array());

$x = $oo->headers_rows;
session_start();
$_SESSION['length_labels'] = sizeof($x);

$u_view = new usersView(null);
$html = $u_view->insert_page($oo->headers_rows, $oo->headers_table);

$arr = array();
$arr[0] = sizeof($x);
$arr[1] = $html;

echo json_encode($arr);