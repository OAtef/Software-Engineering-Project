<?php

require_once 'database.php';
require_once 'crud.php';

class paymentmethod
{

   public $id;
   public $method_name;

   public function __construct($id)
   {
     $db = database::getInstance();
     $data = array();

     if ($id != NULL) {

       $data["id"] = $id;
       $row = database::select("tb_payment_method", $data, null);

       $this->id = $id;
       $this->method_name = $row[0]["method_name"];
    }
   }

   public function list_all()
   {
     $result = array();

     $rows = database::select("tb_payment_method", null, null);

     for ($i=0; $i < sizeof($rows); $i++) {

       $result[$i] = new paymentmethod($rows[$i]["id"]);
     }

     return $result;
   }

}
