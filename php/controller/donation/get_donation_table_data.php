<?php

require_once('../../model/request_donation.php');

$categoryID = $_POST['categoryID'];
$status = 0;
$to_where = 'request';

$rd = new request_donation(null);
$x = $rd->_read(array($categoryID, $status, $to_where), array());
echo json_encode($x);
