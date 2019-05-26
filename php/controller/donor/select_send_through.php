<?php

require_once('../../model/send_through.php');

$s_through = new send_through(null);
$x = $s_through->select_tecs();
echo json_encode($x);