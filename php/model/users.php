<?php

require_once 'database.php';
require_once 'crud.php';

class users implements crud
{
  public $id;
  public $usertypeID;

  function __construct($id){

    $db = database::getInstance();

    if ($id != "") {

      $data = array();
      $data["id"] = $id;
      $data["isdeleted"] = 0;
      
      $row = database::select("tb_users", $data, null); // returns single row data
      
      $this->usertypeID = $row[0]["usertypeID"];
      $this->id = $id;
	}
  
  }

  public function _create(array $data){

    $db = database::getInstance();

    $user_data = array();
    $user_data['usertypeID'] = $data[0];

    $rand_num = database::rand_number("tb_users");
    $user_data['rand_number'] = $rand_num;

    database::insert("tb_users", $user_data);
    return database::lastId();

  }

  public function _delete(array $data){

    $dataa = array();
    $dataa["id"] = $data[0];

    $db = database::getInstance();
    
    database::delete("tb_users", $dataa);

  }

  public function _read(array $conditions, array $like){ // select users according to userType

    $data = array();
    $data["usertypeID"] = $conditions[0];
    $data["isdeleted"] = 0;

    $db = database::getInstance();
    
    $rows = database::select("tb_users", $data, null);

    $ids = array();
    $i=0;

    if(!empty($rows)) {
      while($i < sizeof($rows)){

        $ids[] = $rows[$i]["id"];
        $i++;
      }
      
      return $ids;
    }

  }

  public function _update(array $data, array $condition){

    $con = array();
    $con["id"] = $condition[0];

    $dataa = array();
    $dataa["usertypeID"] = $data[0];

    $db = database::getInstance();

    database::update("tb_users", $dataa, $con);
  }
}
?>
