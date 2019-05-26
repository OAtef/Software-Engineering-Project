<?php

include_once('../../model/payment_method.php');

$pm = new payment_method(null);
$x = $pm->_read(array(), array());
echo json_encode($x);