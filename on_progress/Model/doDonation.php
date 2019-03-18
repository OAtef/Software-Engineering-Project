<?php

include_once('../config.api/dbConnection.php');

$db = DbConnection::getInstance();

$data = array();
$data1 = array();
$data1["option_name"] = $_POST['id1'];
$data1["isdeleted"] = 0;







$row= DbConnection::select("tb_options_donations", $data1,null); 


if(!empty($row)){ 

    $data["optionDrID"] = $row[0]["id"];
	
    $data["donationID"] = 1;

    $data3 = array();
    $data3["id"]=$data["optionDrID"];

    $row2=DbConnection::select("tb_payment_type", $data3,null); 

    $data["value"] = $row2[0]["method_name"];

	echo DbConnection::insert("tb_option_donation_values", $data);

	$data1["option_name"] = $_POST['id2'];
    $data1["isdeleted"] = 0;
    $row= DbConnection::select("tb_options_donations", $data1,null); 

    $data2["optionDrID"] = $row[0]["id"];
    $data2["value"] = $_POST['amount1'];
    $data2["donationID"] = 1;
	echo DbConnection::insert("tb_option_donation_values", $data2);

}


?>
