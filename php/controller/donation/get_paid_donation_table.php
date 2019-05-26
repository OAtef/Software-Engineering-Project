<?php

require_once('../../model/request_donation.php');

$categoryID = $_POST['categoryID'];
$status = 1;
$to_where = 'paid';

$rd = new request_donation(null);
$x = $rd->_read(array($categoryID, $status, $to_where), array());

if(!empty($x)) {
    echo json_encode($x);
}
else{
    echo json_encode("no paid requested donations avaliable");
}

