<?php

require_once('../../model/payment_method.php');

$methodID = $_POST['paymentMethod'];

$pm = new payment_method($methodID);

$x = $pm->select_payment_options($methodID);

session_start();
$_SESSION['minimum_donation'] = $x[3][0] = $pm->method_cost;

echo json_encode($x);

