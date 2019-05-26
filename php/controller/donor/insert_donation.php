<?php

require_once('../../model/FPDF/fpdf.php');
require_once('../../model/reference_paper.php');
require_once('../../model/invoiceDecorator.php');
require_once('../../model/decorator00.php');
require_once('../../model/decorator11.php');
require_once('../../model/decorator01.php');
require_once('../../model/decorator10.php');
require_once('../../model/mainDecorator.php');

require_once('../../model/request_donation.php');
require_once('../../model/project_category.php');
require_once('../../model/donation_reason.php');
require_once('../../model/option_payment_values.php');
require_once('../../model/send_to.php');
require_once('../../model/send_through.php');
require_once('../../model/payment_method.php');

session_start();
$userID = $_SESSION['user-id'];

$payment_values = array();
$payment_ids = array();
$reciever_info = array();

$payment_method_id = $_POST['payment_method_id'];
$donation_reason_id = $_POST['donation_reason_id'];
$category_id = $_POST['category_id'];

if(isset($_POST['payment_values'])){
    $payment_values = $_POST['payment_values'];

    $i = 0;
    while($i < sizeof($payment_values)){

        $payment_values[$i] = validate($payment_values[$i]);
        if($payment_values[$i] == ''){
            exit('you need to fully fill the payment required information');
        }
        $i++;
    }

    $payment_ids = $_POST['selected_ids'];
}

if(isset($_POST['reciever_info'])){
    $reciever_info = $_POST['reciever_info'];

    $reciever_info[$i] = validate($reciever_info[$i]);

    $i = 0;
    while($i < sizeof($reciever_info)){

        if($reciever_info[$i] == ''){
            exit('you need to fully fill the reciever required information');
        }

        if((sizeof($reciever_info)-$i) == 1){
            $valid_email = validate($reciever_info[$li]);

            if (validation_email($valid_email) == 0) {
                exit('Invalid email address');
            }
        }
        $i++;
    }
}

if(isset($_POST['donation_value'])) {
    $donation_value = $_POST['donation_value'];
}
else{
    exit('you need to enter a donation amount');
}

if ($donation_value < $_SESSION['minimum_donation']) {
    exit('donation value is lesser than the minimum');
}

$rd = new request_donation(null);
$rd->userID = 1;
$rd->paymentMethodID = $payment_method_id;
$rd->donationReasonID = $donation_reason_id;
$rd->projectCategoryID = $category_id;
$rd->donationValue = $donation_value;

$dr = new donation_reason($donation_reason_id);

$ref = new reference_paper();
$code = $ref->_create(array($userID));

$ref_id = $ref->id;

if($dr->sendtoID != 0) {

    if(sizeof($reciever_info) != 0){

        $i=0;
        while($i < sizeof($reciever_info)){

            if($reciever_info[$i] == ''){
                exit('not all reciever info is inserted' . $i);
            }

            $i++;
        }

        $i = $i-1;

        if(!is_numeric($reciever_info[$i])){
            exit('must be a number');
        }

        $s_to = new send_to(); // insert receiver info

        $s_to->receiver_name = $reciever_info[0];
        $s_to->receiver_mobile = $reciever_info[1];
        $s_to->receiver_Email = $reciever_info[2];
        $s_to->send_throughID = $reciever_info[3];
        $s_to->send_by = $userID;
        $s_to->ref_id = $ref_id;

        $x = $s_to->insert_receiver_data();
    }
}

if(sizeof($payment_values) != 0){

    $i=0;
    while($i < sizeof($payment_values)){

        if($payment_values[$i] == '')
            exit('not all reciever info is inserted');
        if(!is_numeric($payment_ids[$i]))
            exit('id must be numaric');

        $i++;
    }

    $opPayVal = new option_payment_values(); // insert payment data
    $i = 0;
    while($i < sizeof($payment_ids))
    {
        $opPayVal->value = $payment_values[$i];
        $opPayVal->optionPaymentID = $payment_ids[$i];
        $opPayVal->paymentID = $payment_method_id;
        $x = $opPayVal->insert_pay_data();
        $i++;

    }
}

$xx = $rd->_create(array()); // insert donation


if($xx == true){

    $pdf = new FPDF();

    $invoiceDecor = new InvoiceDecorator($pdf);
    $invoiceDecor->category_id = $category_id;
    $invoiceDecor->userID = $userID;
    $invoiceDecor->donation_amount = $donation_value;
    $invoiceDecor->payment_method_id = $payment_method_id;
    $invoiceDecor->donationReasonID = $donation_reason_id;
    $invoiceDecor->ref_id = $ref_id;
    $invoiceDecor->codee = $code;
    $invoiceDecor->payment_options_ids = $payment_ids;
    $invoiceDecor->payment_vals = $payment_values;

    $main = new mainDecorator($invoiceDecor);
    $main->addinfo();

    if($dr->sendtoID != 0 && sizeof($payment_values) != 0){
        $dec11 = new decorator11($invoiceDecor);
        $dec11->addinfo();
    }
    elseif ($dr->sendtoID == 0 && sizeof($payment_values) == 0){
        $dec00 = new decorator00($invoiceDecor);
        $dec00->addinfo();
    }
    elseif ($dr->sendtoID != 0 && sizeof($payment_values) == 0){
        $dec10 = new decorator10($invoiceDecor);
        $dec10->addinfo();
    }
    elseif ($dr->sendtoID == 0 && sizeof($payment_values) != 0){
        $dec01 = new decorator01($invoiceDecor);
        $dec01->addinfo();
    }

    $inv = $invoiceDecor->showInvoice();

    echo json_encode($inv);

}

function validate($input){

    $input = trim($input);
    $input = stripslashes($input);
    $input = strip_tags($input);

    return $input;

}

function validation_email($email){

    // set API Access Key
    $access_key = '65dae5b8d5fd1386346e2721ac236d49';

    // set email address
    $email_address = $email;

    // Initialize CURL:
    $ch = curl_init('http://apilayer.net/api/check?access_key='.$access_key.'&email='.$email_address.'');
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

    // Store the data:
    $json = curl_exec($ch);
    curl_close($ch);

    // Decode JSON response:
    $validationResult = json_decode($json, true);

    if ($validationResult['format_valid'] && $validationResult['smtp_check']) {
        return 1;
    }else{
        return 0;
    }

}






