<?php

require_once '../../model/request_donation.php';
require_once '../../model/daily_donations.php';

$requestID = $_POST['requestID'];
$value = $_POST['value'];
$categoryID = $_POST['categoryID'];

$don = new daily_donations(null);

$arr = array($value, $categoryID);

$don->_update($arr, array());

$rd = new request_donation(null);
$rd->change_status($requestID);

$smsg = array("success"=>"Recieved Successfully");
echo json_encode($smsg);
die;