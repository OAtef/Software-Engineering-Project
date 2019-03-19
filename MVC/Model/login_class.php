<?php

include_once('../config.api/dbConnection.php');

class Login
{
  public $id;
  public $email;
  public $password;
  public $userID;

  function __construct($userID){

    $db = DbConnection::getInstance();

    if($userID != null){

        $data["userID"] = $userID;
        //echo $userID;
        $data["isdeleted"] = 0;	 
    
        $row = DbConnection::select("tb_logins", $data, null);

        if($row != null){

            $this->email = $row[0]["email"];
            $this->password = $row[0]["password"];
        }
    }
  }

  function check_access($email, $password){

    $db = DbConnection::getInstance();
	  
    $data = array();
    $data["email"] = $email;
    $data["password"] = $password;
    $data["isdeleted"] = 0;	 

    $row = DbConnection::select("tb_logins", $data, null);

    if($row != null){

        session_start();
        $_SESSION['uid'] = $row[0]["userID"];
        return true;

    }
    else{
      return false;
    }

  }
  
  function insert_logins($email, $pass, $userID){

    $db = DbConnection::getInstance();

    $data = array();

    $data["email"] = $email;
    $data["password"] = $pass;
    $data["userID"] = $userID;
    
    $row = DbConnection::insert("tb_logins", $data);


  }

  function delete_logins($userID){
    $db = DbConnection::getInstance();

    $data = array();
    $data["id"] = $userID;
    
    DbConnection::delete("tb_logins", $data, null);
  }

  public static function update_values($email, $pass, $userID){

    $db = DbConnection::getInstance();

      $condition = array();
      $condition["userID"] = $userID;

      $data = array();
      $data["email"] = $email;
      $dat["password"] = $pass;

      DbConnection::update("tb_option_user_values", $data, $condition);
  }
}
?>