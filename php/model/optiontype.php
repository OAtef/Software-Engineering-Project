<?php

include_once 'database.php';
include_once 'crud.php';

class option_type
{

  public $id;
  public $type;

  function __construct($id) {

    $db = database::getInstance();
    $data = array();

    if($id != NULL){

      $data["id"] = $id;
      $data["isdeleted"] = 0;

      $row = database::select("tb_option_type", $data, null);

      $this->id = $id;
      $this->type = $row[0]["type"];

    }
  }

  public static function list_options_type(){

    $db = database::getInstance();
    $data = array();
    $result = array();

    $data["isdeleted"] = 0;

    $rows = database::select("tb_option_type", $data, null);

    for ($i=0; $i < sizeof($rows); $i++) {

      $result[$i] = new option_type($rows[$i]["id"]);
    }

    return $result;
  }

  public function select_option_type($typeid)
  {

    $types = array();
    $data = array();
    $i=0;
    while($i < sizeof($typeid)) {

      $data["id"]=$typeid[$i];
      $data["isdeleted"] = 0;
      $rows = database::select("tb_option_type", $data,null);
      $types[$i] = $rows[0]["type"];
      $i++;
    }

    return $types;

  }

}

?>
