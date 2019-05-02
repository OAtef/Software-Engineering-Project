<?php

include_once('../config.api/dbConnection.php');

$db = DbConnection::getInstance();

class Class_payment_method
{
    public $Id;
    public $method_name;

    function select_payment_method(){

        $options = DbConnection::select("tb_payment_method", null,null);

        $paymentData = array();
        $i=0;

        while($i < sizeof($options)){

            $paymentData[$i] = $options[$i]["method_name"];
            $i++;
        }
        return $paymentData;


    }


}