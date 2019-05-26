<?php

include_once 'database.php';

class nationality
{

  public $id;
  public $nationality_name;

  function __construct($id)
  {
    $db = database::getInstance();
    $data = array();

    if($id != NULL){

      $data["id"] = $id;
      $data["isdeleted"] = 0;

      $row = database::select("tb_nationality", $data, null);

      $this->id = $id;
      $this->nationality_name = $row[0]["nationality_name"];

    }
  }

  public static function _read(){

    $db = database::getInstance();
    $data = array();
    $result = array();

    $data["isdeleted"] = 0;

    $rows = database::select("tb_nationality", $data, null);

    for ($i=0; $i < sizeof($rows); $i++) {

      $result[$i] = new nationality($rows[$i]["id"]);
    }

    return $result;
  }

}


?>
