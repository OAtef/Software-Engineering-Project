<?php

include_once '../model/log.php';

$log = new log();
$arraylogs = array();
$arraylogs = $log->log_info();

echo json_encode($arraylogs);
