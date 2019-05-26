<?php

require_once 'database.php';
require_once 'crud.php';
require_once 'optiontype.php';

$db = database::getInstance();

class payment_method implements crud
{
    public $id;
    public $method_name;
    public $method_cost;
    public $method_min;

    function __construct($id)
    {
        if($id != null){

            $data["id"] = $id;
            $data["isdeleted"] = 0;

            $row = database::select("tb_payment_method", $data,null);

            $this->id = $id;
            $this->method_name = $row[0]['method_name'];
            $this->method_cost = $row[0]['method_cost'];
            $this->method_min = $row[0]['minimum_amount'];

        }

    }

    public function _create(array $data)
    {
        // TODO: Implement _create() method.
    }

    public function _read(array $conditions, array $like)
    {

        $data["isdeleted"] = 0;
        $options = database::select("tb_payment_method", $data,null);

        $paymentData = array();
        $i=0;

        while($i < sizeof($options)){

            $paymentData[$options[$i]["id"]] = $options[$i]["method_name"];
            $i++;
        }
        return $paymentData;

    }

    public function list_all()
    {
      $result = array();

      $rows = database::select("tb_payment_method", null, null);

      for ($i=0; $i < sizeof($rows); $i++) {

        $result[$i] = new payment_method($rows[$i]["id"]);
      }

      return $result;
    }

    public function _update(array $data, array $condition)
    {
        // TODO: Implement _update() method.
    }

    public function _delete(array $data)
    {
        // TODO: Implement _delete() method.
    }

    public function select_payment_options($method_id)
    {

        $data = array();
        $data["payment_methodID"]=$method_id;
        $data["isdeleted"] = 0;

        $rows=database::select("rtb_option_payment_method", $data,null);

        $option_ID = array();
        $option_payment_ID = array();

        $i=0;
        while($i < sizeof($rows)) {
            $option_ID[$i] = $rows[$i]["optionID"];
            $option_payment_ID[$i] = $rows[$i]["id"];
            $i++;
        }

        $data = array();
        $option_name_id_type = array();

        $i=0;
        while($i < sizeof($option_payment_ID)){

            $option_name_id_type[0][$i] = $option_payment_ID[$i];
            $i++;

        }

        $typeIDs = array();
        $i=0;
        while($i < sizeof($option_ID)) {

            $data["id"] = $option_ID[$i];
            $data["isdeleted"] = 0;

            $ids = database::select("tb_options_payments", $data, null);
            $option_name_id_type[1][$i] = $ids[0]["option_name"];
            $typeIDs[$i] = $ids[0]["typeID"];
            $i++;
        }
        $obj = new option_type(null);

        $typename = $obj->select_option_type($typeIDs);

        $j=0;
        while($j < sizeof($typename)) {
            $option_name_id_type[2][$j] = $typename[$j];
            $j++;
        }


        return $option_name_id_type;

    }

}
