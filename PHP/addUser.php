<?php

innclude('dbConnection.php');

$typeID; // get it from form or use sql to get it
$fname;
$lname;
$email;
$username;
$pass;
$Bdate;

$InsertUserQuery = "INSERT INTO users () VALUES ()";
$result = mysqli_query($db, $InsertUserQuery);

?>
