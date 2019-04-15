<?php

include_once 'database.php';
include_once 'crud.php';

class user_options
{

  public $id;
  public $option_name;
  public $option_type;

  public $headers_rows = array();

  function __construct($id) {

    if($id != NULL){

      $db = database::getInstance();

      $data = array();

      $data["id"] = $id;
      $data['isdeleted'] = 0;

      $row = database::select("tb_options_usertypes", $data, null);

      $this->id = $id;
      $this->option_name = $row[0]["option_name"];
      $this->option_type = $row[0]["option_type"];

    }
  }

  public function select_allOptions($parentID){

    $data = array();

    if($parentID != NULL){

      $db = database::getInstance();

      if (!is_numeric($parentID) && $parentID == "listAll") {

        $data["isdeleted"] = 0;

        $rows = database::select("tb_options_usertypes", $data, null);

        $i = 0;

        while($i < sizeof($rows)){

          $multiresult = array();

          $multiresult[0] = $rows[$i]["option_name"];
          $multiresult[1] = $rows[$i]["option_type"];

          $result[$rows[$i]["id"]] = $multiresult;
          $i++;
        }
        return $result;
      }

      if(!is_numeric($parentID) && $parentID == "all"){

        $data["isdeleted"] = 0;

        $row = database::select("tb_options_usertypes", $data, null);

        $i = 0;
        while($i < sizeof($rows)){
          $this->headers_rows[$row[$i]["option_name"]] = $row[$i]["option_type"];
          $i++;
        }
      }
      else if(is_numeric($parentID)){

        //echo $parentID;

        $data["usertypeID"] = $parentID;
        $data["isdeleted"] = 0;

        $optionIDs = database::select("rtb_option_usertype", $data, null);
        //echo sizeof($optionIDs);

        $i=0;
        while($i < sizeof($optionIDs)){

          $data1 = array();
          $data1["id"] =  $optionIDs[$i]["optionID"];
          $data1['isdeleted'] = 0;

          $row = database::select("tb_options_usertypes", $data1, null);

          $this->headers_rows[$row[0]["option_name"]] = $row[0]["option_type"];

          $i++;
        }
      }
    }
  }

  public function insert_option($OptionName, $OptionType){

    if (!empty($OptionName) && !empty($OptionType)) {

      $data = array();
      $data["option_name"] = $OptionName;
      $data["option_type"] = $OptionType;

      database::insert("tb_options_usertypes", $data);
    }else {
      echo "Empty Fields";
    }
  }

  public function delete_option($id){

    $db = database::getInstance();

    $data = array();
    $data["id"] = $id;
    database::delete("tb_options_usertypes", $data);

    $data1 = array();
    $data1["optionID"] = $id;
    database::delete("rtb_option_usertype", $data1);
  }

  public function update_option($id, $name, $type){

    $db = database::getInstance();

    $condition = array();
    $condition["id"] = $id;

    $data = array();
    $data["option_name"] = $name;
    $data["option_type"] = $type;

    database::update("tb_options_usertypes", $data, $condition);

  }
}

?>
