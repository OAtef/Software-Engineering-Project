<?php

require_once ('../config.api/dbConnection.php');
class Users
{
  public $id;
  public $usertypeID;

  function __construct($id) {

    $db = DbConnection::getInstance();
    if ($id != "")
		{	

      $data = array();
      $data["id"] = $id;
      $data["isdeleted"] = 0;
      
      $row = DbConnection::select("tb_users", $data, null); // returns single row data
      
      $this->usertypeID = $row[0]["usertypeID"];
			$this->id = $id;
		}
  
  }

  public function insert_user($userTypeID){

    $db = DbConnection::getInstance();

    $data = array();
    $data["usertypeID"] = $userTypeID;
    DbConnection::insert("tb_users", $data, null);
    $this->id = DbConnection::lastId();
    $this->userTypeID = $userTypeID;

    return $this->id;
  }

  public function delete_user($userID){

    $db = DbConnection::getInstance();

    $data = array();
    $data["id"] = $userID;
    
    DbConnection::delete("tb_users", $data, null);

  }

  public function select_user($userTypeID){

    $db = DbConnection::getInstance();

    $data = array();
    $data["usertypeID"] = $userTypeID;
    $data["isdeleted"] = 0;
    
    $rows = DbConnection::select("tb_users", $data, null);

    $ids = array();
    $i=0;

    while($i < sizeof($rows)){

      $ids[] = $rows[$i]["id"];
      $i++;
    }
    
    return $ids;
  }

  public function update_user($usertypeID, $userID){

    $db = DbConnection::getInstance();

    $conditions = array();
    $conditions["id"] = $userID;

    $data = array();
    $data["usertypeID"] = $id;
    DbConnection::update("tb_users", $data, $conditions);

  }

}
?>
