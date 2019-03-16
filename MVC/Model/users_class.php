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
      
      $row = DbConnection::select("tb_users", $data); // returns single row data
      
      $this->usertypeID = $row[0]["usertypeID"];
			$this->id = $id;
		}
  
  }

  public function insert_user($userTypeID){

    $db = DbConnection::getInstance();

    $data = array();
    $data["usertypeID"] = $userTypeID;
    DbConnection::insert("tb_users", $data);
    $this->id = DbConnection::lastId();
    $this->userTypeID = $userTypeID;

    return $this->id;
  }

  public function delete_user($userID){

    $db = DbConnection::getInstance();

    $data = array();
    $data["id"] = $userID;
    
    DbConnection::delete("tb_users", $data);

  }

  public function select_user($userTypeID){

    $db = DbConnection::getInstance();

    $data = array();
    $data["usertypeID"] = $userTypeID;
    $data["isdeleted"] = 0;
    
    $rows = DbConnection::select("tb_users", $data);

    $ids = array();
    $i=0;

    while($i < sizeof($rows)){

      $ids[] = $rows[$i]["id"];
      $i++;
    }
    
    return $ids;
  }

  public function update_user($id, $userTypeID){

    $db = DbConnection::getInstance();
    
    $data = array();
    $data["id"] = $id;
    DbConnection::update("tb_users", $data);
    $this->id = $id;
    $this->userTypeID = $userTypeID; 
  }

}
?>
