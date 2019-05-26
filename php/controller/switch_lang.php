<?php

session_start();

// $ref = filter_var($_SERVER['HTTP_REFERER'], FILTER_VALIDATE_URL);


$_SESSION['lang'] = $_GET['lang'];

// echo $_GET['lang'];

header('Location: ../view/profile.php');


?>
