<?php

include_once 'database.php';
include_once 'crud.php';

class login implements crud 
{
  public $email;
  public $password;

  public function __construct($userID){

    $db = database::getInstance();

    if($userID != null){

        $data["userID"] = $userID;
        $data["isdeleted"] = 0;	 
    
        $row = database::select("tb_logins", $data, null);

        if($row != null){

            $this->email = $row[0]["email"];
            $this->password = $row[0]["password"];
        }
    }
  }

  public function _create(array $data){
    
    $db = database::getInstance();
    database::insert("tb_logins", $data);
        
  }

  public function _delete(array $data){

    $db = database::getInstance();
    database::delete("tb_logins", $data, null);

  }

  public function _read(array $conditions, array $like){ // check access
    
    $db = database::getInstance();

    $con = array();
    $con["email"] = $conditions[0];
    $con["password"] = $conditions[1];
    
    $row = database::select("tb_logins", $con, null);
    
    if($row != null){
      return $row[0]["userID"];
    }
  }

  public function _update(array $data, array $condition){
  
    $db = database::getInstance();

    $condition = array();
    $condition["userID"] = $condition[0];

    $update_data = array();
    $update_data["email"] = $data[0];
    $update_data["password"] = $data[1];

    database::update("tb_option_user_values", $update_data, $condition);
  }

}

?>