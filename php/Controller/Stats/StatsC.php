<?php

require_once("StatsFactory.php");

$stats = new statsfactory($_POST["stat"]);
echo json_encode($stats->performeStats());


?>
