<?php

include_once 'database.php';

class gender
{

  public $id;
  public $gender_name;

  function __construct($id)
  {
    $db = database::getInstance();
    $data = array();

    if($id != NULL){

      $data["id"] = $id;
      $data["isdeleted"] = 0;

      $row = database::select("tb_gender", $data, null);

      $this->id = $id;
      $this->gender_name = $row[0]["gender_name"];

    }
  }

  public static function _read(){

    $db = database::getInstance();
    $data = array();
    $result = array();

    $data["isdeleted"] = 0;

    $rows = database::select("tb_gender", $data, null);

    for ($i=0; $i < sizeof($rows); $i++) {

      $result[$i] = new gender($rows[$i]["id"]);
    }

    return $result;
  }

}


?>
