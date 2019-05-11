<?php

include_once 'database.php';
include_once 'crud.php';

class user_options
{

  public $id;
  public $option_name;
  public $typeID;
  public $ref_table;
  public $option_type;

  function __construct($id) {

    $db = database::getInstance();
    $data = array();

    if($id != NULL){

      $data["id"] = $id;
      $data['isdeleted'] = 0;

      $row = database::select("tb_options_usertypes", $data, null);

      $this->id = $id;
      $this->option_name = $row[0]["option_name"];
      $this->option_type = $row[0]["option_type"];
      $this->typeID = $row[0]["typeID"];
      $this->ref_table = $row[0]["ref_table"];

    }
  }

  public function list_options(){

    $db = database::getInstance();
    $data = array();
    $result = array();

    $data["isdeleted"] = 0;

    $rows = database::select("tb_options_usertypes", $data, null);

    for ($i=0; $i < sizeof($rows); $i++) {

      $result[$i] = new user_options($rows[$i]["id"]);
    }

    return $result;
  }

  public function insert_option($OptionName, $OptionType, $OptionTypeID){

    $db = database::getInstance();

    if (!empty($OptionName) && !empty($OptionType)) {

      $data = array();
      $data["option_name"] = $OptionName;
      $data["option_type"] = $OptionType;
      $data["typeID"] = $OptionTypeID;

      return ($db->insert("tb_options_usertypes", $data));
    }else {
      echo "Empty Fields";
    }
  }

  public function delete_option($id){

    $db = database::getInstance();

    $data1 = array();
    $data1["optionID"] = $id;
    database::delete("rtb_option_usertype", $data1);

    $data = array();
    $data["id"] = $id;
    database::delete("tb_options_usertypes", $data);

  }

  public function update_option($id, $name, $type, $typeID){

    $db = database::getInstance();

    $condition = array();
    $condition["id"] = $id;

    $data = array();
    $data["option_name"] = $name;
    $data["option_type"] = $type;
    $data["typeID"] = $typeID;

    $db->update("tb_options_usertypes", $data, $condition);

  }
}

?>
