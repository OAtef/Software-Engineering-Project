<?php

require_once('../../model/donation_reason.php');

$reason_sendtoID = $_POST['selected_reason']; // needed to be a number

$doReasons = new donation_reason($reason_sendtoID);

echo json_encode($doReasons->sendtoID);