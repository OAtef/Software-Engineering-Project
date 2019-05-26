<?php

require_once '../../model/user_option.php';
require_once '../../model/user_values.php';
require_once 'usersView.php';

$userID = $_POST['userID'];
$parentID = $_POST['parentID'];

$oo = new user_option(null);
$oo->_read(array($parentID), array());

$x = $oo->headers_rows;

$uv = new user_values(null);
$data = array();

$user_vals = $uv->get_specific_user_data($userID);

session_start();
$_SESSION['length_labels'] = sizeof($x);

$u_view = new usersView(null);
$html = $u_view->update_form($oo->headers_rows, $user_vals);

echo $html;