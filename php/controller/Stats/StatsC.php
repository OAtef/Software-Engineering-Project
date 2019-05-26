<?php

require_once("statsfactory.php");

$stats = new statsfactory($_POST["stat"]);
echo json_encode($stats->performeStats());


?>
