<?php

// include_once('dbConnection.php');
include("address.php");

$SelectedID = $_POST["addressID"];

echo Address::GetAddressChildren($SelectedID);

?>
