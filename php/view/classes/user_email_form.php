<?php

require_once '../../model/user_option.php';
require_once '../../model/usertypes.php';
require_once '../../model/user_values.php';
require_once 'usersView.php';


$parentID = $_POST['parentID'];

$ut = new usertypes(array($parentID));
$relation_ids = $ut->rOUT_ids;

$data_oo = array($parentID, 'checked');

$oo = new user_option(null);
$oo->_read($data_oo, array()); // list of all options under such parent

$options = $oo->headers_rows;

$uv = new user_values(null);
$data = array($_POST['usertypeID'], 'checked');

$values = $uv->_read($data, array());

$u_view = new usersView(null);
$html = $u_view->check_table($options, $values, 'notifiy');

session_start();
$_SESSION['length_labels'] = sizeof($options);

$out = array();
$out[0] = $u_view->emails;
$out[1] = $u_view->numbers;
$out[2] = $html;

echo json_encode($out);