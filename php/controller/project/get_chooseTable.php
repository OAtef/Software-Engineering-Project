<?php

require_once '../../model/user_option.php';
require_once '../../model/usertypes.php';
require_once '../../model/user_values.php';
require_once '../../view/classes/usersView.php';
session_start();

$parentID =  $_SESSION['parentUT'];

$state = $_POST['state'];

$ut = new usertypes(array());
$children_arr = $ut->list_usertypes($parentID);
$children_ids = array_keys($children_arr);

$oo = new user_option(null);
$data_oo = array($parentID, 'checked');
$oo->_read($data_oo, array()); // list of all options under such parent
$options = $oo->headers_rows;

$all_values = array();

$i=0;
while($i < sizeof($children_ids)){

    $uv = new user_values(null);
    $data = array($children_ids[$i], 'checked');
    $values = $uv->_read($data, array());

    $all_values += $values;

    $i++;
}

$_SESSION['length_labels'] = sizeof($options);

$u_view = new usersView(null);

$html_leaders_table = '';
$html_members_table = '';

if($state == 'update'){
    $html_leaders_table = $u_view->check_table($options, $all_values, 'up-pro-leader');
    $html_members_table = $u_view->check_table($options, $all_values, 'up-pro-member');
}
elseif($state == 'insert'){
    $html_leaders_table = $u_view->check_table($options, $all_values, 'in-pro-leader');
    $html_members_table = $u_view->check_table($options, $all_values, 'in-pro-member');
}
else{
    exit('error something going wrong');
}

$out = array();
$out[0] = $html_leaders_table;
$out[1] = $html_members_table;

echo json_encode($out);
