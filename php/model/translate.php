<?php

require_once 'database.php';

class translate
{

  public $id;
  public $en;
  public $ar;

  function __construct($value)
  {
    $db = database::getInstance();
    mysqli_query(database::$con,"SET NAMES 'UTF8'");

    if (!is_numeric($value) && $value != NULL) {

      $data = array();
      $data["en"] = $value;

      $row = database::select("tb_transaltion", $data, null); // returns single row data

      $this->id = $row[0]["id"];
      $this->en = $value;
      $this->ar =$row[0]["ar"];

    }
    elseif (is_numeric($value) && $value != NULL) {
      // code...
    }
  }

  public function _read()
  {

  }

  public function _update()
  {

  }

  public function _create()
  {

  }

  public function _delete()
  {

  }


}


?>
