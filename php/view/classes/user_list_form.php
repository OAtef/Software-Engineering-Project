<?php

require_once '../../model/user_option.php';
require_once '../../model/user_values.php';
require_once 'usersView.php';


$parentID = $_POST['parentID'];
$data_oo = array($parentID);

$oo = new user_option(null);
$oo->_read($data_oo, array());

$x = $oo->headers_rows;

$uv = new user_values(null);

$data = array($_POST['usertypeID']);
$x = $uv->_read($data, array());

$u_view = new usersView(null);
$html = $u_view->show_table($oo->headers_rows, $x);

session_start();
$_SESSION['length_labels'] = sizeof($x);

$out = array();
$out[0] = $x;
$out[1] = $html;

echo json_encode($out);