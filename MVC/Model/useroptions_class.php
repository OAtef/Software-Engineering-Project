<?php

include_once('../config.api/dbConnection.php');

class Options
{

  public $id;
  public $option_name;
  public $option_type;

  public $headers_rows = array();

  function __construct($id) {

    if($id != NULL){

      $db = DbConnection::getInstance();

      $data = array();

      $data["id"] = $id;
  
      $row = DbConnection::select("tb_options", $data); 
  
      $this->id = $id;
      $this->option_name = $row[0]["option_name"];
      $this->option_type = $row[0]["option_type"];

    }
  }

  public function select_allOptions($parentID){

    $data = array();
    
    if($parentID != NULL){

      $db = DbConnection::getInstance();

      if(!is_numeric($parentID) && $parentID == "all"){

        $data["isdeleted"] = 0;
    
        $row = DbConnection::select("tb_options", $data); 
  
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

        $optionIDs = DbConnection::select("rtb_option_usertype", $data); 
        //echo sizeof($optionIDs);

        $i=0;
        while($i < sizeof($optionIDs)){

          $data1 = array();
          $data1["id"] =  $optionIDs[$i]["optionID"];

          $row = DbConnection::select("tb_options", $data1); 

          $this->headers_rows[$row[0]["option_name"]] = $row[0]["option_type"];

          $i++;
        }
      }
    }
  }

  public function insert_option($usertypeID, $vals){

    foreach ($vals as $key => $value){
      $data = array();
      $data["option_name"] = $key;
      $data["option_type"] = $value;

      DbConnection::insert("tb_options", $data);
     }

  }

  public function delete_option($id){

    $db = DbConnection::getInstance();

    $data = array();
    $data["id"] = $id;
    DbConnection::delete("tb_options", $data);

    $data1 = array();
    $data1["optionID"] = $id;
    DbConnection::delete("rtb_option_usertype", $data1);
  }

  public function update_option($id, $vals){

    $db = DbConnection::getInstance();

    $condition = array();
    $condition["id"] = $id;

    foreach ($vals as $key => $value){
      $data = array();
      $data["option_name"] = $key;
      $data["option_type"] = $value;

      DbConnection::update("tb_options", $data, $condition);
     }
  }
}

?>


