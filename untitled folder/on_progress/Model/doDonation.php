<?php

include_once('../config.api/dbConnection.php');

$db = DbConnection::getInstance();

//filling data



 function select_reasons(){

$options = DbConnection::select("tb_donation_reason", null,null); 

$reasons = array();
    $i=0;

    while($i < sizeof($options)){

      $reasons[] = $options[$i]["reason"];
      $i++;
    }
     return $reasons;
}


function select_PaymentTypes(){

$types = DbConnection::select("tb_payment_type", null,null); 

$methods = array();
    $i=0;

    while($i < sizeof($types)){

      $methods[] = $types[$i]["method_name"];
      $i++;
    }
     return $methods;
}
// $v = select_reasons();
// echo json_encode($v);

// if(isset($_POST['function2call']) && !empty($_POST['function2call'])) {
         $function2call = $_POST['function2call'];
         
         switch($function2call) {
              case 'select_reasons' :
                 
                 $x = select_reasons();
                 echo json_encode($x);
                 break;

              case 'select_types':

                   $y = select_PaymentTypes();
                   echo json_encode($y);
                   break;

              case 'insert_donation':
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

	$data4["option_name"]="DonationDate";
	$data4["isdeleted"] = 0;
	$row4= DbConnection::select("tb_options_donations", $data4,null); 
    $data5["optionDrID"] = $row4[0]["id"];
    $data5["value"] = date("Y/m/d");
    $data5["donationID"] = 1;
    echo DbConnection::insert("tb_option_donation_values", $data5);
}
             }
         // }



?>
