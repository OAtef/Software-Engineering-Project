<?php

require_once('../../model/donation_reason.php');


$doReasons = new donation_reason(null);

$x = $doReasons->_read(array(), array());
echo json_encode($x);