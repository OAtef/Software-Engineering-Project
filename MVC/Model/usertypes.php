<?php

include_once('../config.api/db.php');

class UserTypes
{

  public $id;
  public $usertype_name;
  public $parentID;
  public $rOUT_ids;

  function __construct($id) {

    $db = DbConnection::getInstance();
    if ($id != "")
    {

      $data = array();
      $data["id"] = $id;

      $rows_vals = $db::select("tb_usertype", $data); // returns single row data
      $this->id = $id;
      $this->usertype_name = $row["usertype_name"];
      $this->parentID = $row["parentID"];

      $data1 = array();
      $data1["parentID"] = $this->parentID;
      $data1["isdeleted"] = 0;

      $rows_rout = $db::select("rtb_option_usertype", $data); // returns single row data

      $i=0;
      while($i < sizeof($rows_rout)){
        $rOUT_ids[$i] = $rows_rout[$i]["id"];
        $i++;
      }
    }

  }

  static function Get_usertype_children($parentID){

    $arr = array();

    $sql = "SELECT id,usertype_name FROM tb_usertype WHERE parentID = '$parentID'";
    $result = mysqli_query($GLOBALS["db"], $sql);

    while($row = mysqli_fetch_array($result)){

      array_push($arr, $row[0]);
      array_push($arr, $row[1]);

    }
      echo json_encode($arr);
  }

  static function list($parentID){

    $db = DbConnection::getInstance();
    $result = array();

    $data = array();
    $data["parentID"] = $parentID;

    $rows = $db::select("tb_usertype", $data);

    $i = 0;
    while($i < sizeof($rows)){
      $result[$rows["id"]] = $rows["usertype_name"];
      $i++;
    }

    return $result;

    //$sql = "SELECT id,usertype_name FROM tb_usertype WHERE parentID = '$parentID'";
    //$result = mysqli_query($GLOBALS["db"], $sql);



    /* while($row = mysqli_fetch_array($result)){

      array_push($arr, $row[0]);
      array_push($arr, $row[1]);

    }
      echo  json_encode($arr);*/
  }

  static function insert($parentID, $names){
    $db = DbConnection::getInstance();

      $i = 0;
      while( $i < sizeof($names)){
        //$query = "INSERT tb_usertype (usertype_name, parentID) VALUES ($names[$i], $parentID[$i])";
        //mysqli_query($GLOBALS["db"], $query);

        $data = array();
        $data["usertype_name"] = $$names[$i];
        $data["parentID"] = $$parentID[$i];

        $db::insert("tb_usertype", $data);
        $i++;
      }
  }

  static function update($id, $name){

    $db = DbConnection::getInstance();

    $data = array();
    $data["id"] = $id;
    $data["usertype_name"] = $name;
    $db::update("tb_usertype", $data);
    $this->id = $id;
    $this->usertype_name = $name;


  }

  static function delete($id){

    //$query = "UPDATE tb_usertype SET isdeleted='1' WHERE id='$id'";
   // mysqli_query($GLOBALS["db"], $query);

    $db = DbConnection::getInstance();

    $data = array();
    $data["id"] = $id;

    $db::delete("tb_usertype", $data);

  }

}

?>
