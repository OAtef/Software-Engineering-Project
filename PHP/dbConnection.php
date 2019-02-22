<?php

$servername = "localhost";
$username = "root";
$password = "";
$DBname = "software-project-test";

// connect to the database
$GLOBALS["db"] = $db = mysqli_connect($servername, $username, $password, $DBname);

?>
