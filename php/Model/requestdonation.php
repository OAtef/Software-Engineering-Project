<?php

require_once 'database.php';
require_once 'crud.php';

class requestdonation
{

   public $id;
   public $userID;
   public $projectCategoryID;
   public $donationReasonID;
   public $paymentMethodID;
   public $donationValue;
   public $valueTaken;

   public function __construct($id)
   {
     $db = database::getInstance();
     $data = array();

     if ($id != NULL) {

       $data["id"] = $id;
       $row = database::select("tb_request_donation", $data, null);

       $this->id = $id;
       $this->userID = $row[0]["userID"];
       $this->projectCategoryID =  $row[0]["projectCategoryID"];
       $this->donationReasonID = $row[0]["donationReasonID"];
       $this->paymentMethodID =  $row[0]["paymentMethodID"];
       $this->donationValue = $row[0]["donationValue"];
       $this->valueTaken =  $row[0]["valueTaken"];
    }
   }

   public function insert_donation_data($obj)
   {
     $db = database::getInstance();

     $data["userID"]=$obj->userID;
     $data["paymentMethodID"]=$obj->paymentMethodID;
     $data["donationReasonID"]=$obj->donationReasonID;
     $data["projectCategoryID"]=$obj->projectCategoryID;
     $data["donationValue"]=$obj->donationValue;

     $r = $db->insert("tb_request_donation", $data);

     return $r;
   }

   public function list_all()
   {
     $result = array();

     $rows = database::select("tb_request_donation", null, null);

     for ($i=0; $i < sizeof($rows); $i++) {

       $result[$i] = new requestdonation($rows[$i]["id"]);
     }

     return $result;
   }

}
