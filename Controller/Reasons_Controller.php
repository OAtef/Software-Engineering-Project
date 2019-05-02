<?php

include_once('../Model/Class_donation_reason.php');
include_once('../Model/project_category.php');
include_once('../Model/Class_payment_method.php');
include_once('../Model/Class_send_through.php');


$doReasons = new Class_donation_reason(8);
$pc = new project_category();
$pm = new Class_payment_method();
$st = new Class_send_through();


$function2call = $_POST['function2call'];



switch($function2call) {
    case 'select_reasons' :

        $x = $doReasons->select_reasons();
        echo json_encode($x);
        break;

    case 'select_category' :

        $x = $pc->select_categories();
        echo json_encode($x);
        break;

    case 'select_payment_method' :

        $x = $pm->select_payment_method();
        echo json_encode($x);
        break;

    case 'select_reason_sendtoID' :

        $reason_sendtoID = $_POST['selected_reason'];
        $x = $doReasons->select_by_name($reason_sendtoID);
        echo json_encode($x);
        break;

    case 'select_send_through' :

        $x = $st->select_tecs();
        echo json_encode($x);
        break;



}
