<?php

require_once 'database.php';
require_once 'crud.php';

class option_payment_values implements crud
{
    public $id;
    public $optionPaymentID;
    public $value;
    public $paymentID;
    public $userID;



    function insert_pay_data()
    {

        $data["optionPaymentID"]=$this->optionPaymentID;
        $data["value"]=$this->value;
        $data["paymentID"]=$this->paymentID;
        $data["userID"]=1;

        $r = database::insert("tb_option_payment_values", $data);

        return $r;
    }

    public function _create(array $data)
    {
        // TODO: Implement _create() method.
    }

    public function _read(array $conditions, array $like)
    {
        // TODO: Implement _read() method.
    }

    public function _update(array $data, array $condition)
    {
        // TODO: Implement _update() method.
    }

    public function _delete(array $data)
    {
        // TODO: Implement _delete() method.
    }
}