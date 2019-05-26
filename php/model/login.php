<?php

require_once 'database.php';
require_once 'crud.php';

class login implements crud {


    public $userID;
    public $email;
    public $password;

  public function __construct($userID){

    $db = database::getInstance();

    if($userID != null){

        $data["userID"] = $userID;
        $data["isdeleted"] = 0;	 
    
        $row = database::select("tb_logins", $data, null);

        if(sizeof($row) != 0){

            $this->email = $row[0]["email"];
            $this->password = $row[0]["password"];
        }
    }
  }

  public function _create(array $data){

      $log_data = array();
      $log_data["email"] = $data[0];
      $log_data["password"] = password_hash($data[1], PASSWORD_DEFAULT);
      $log_data["userID"] = $data[2];
    
    $db = database::getInstance();
    database::insert("tb_logins", $log_data);
        
  }

  public function _delete(array $data){

      $dataa = array();
      $dataa['userID'] = $data[0];

    $db = database::getInstance();
    database::delete("tb_logins", $dataa, null);

  }

  public function _read(array $conditions, array $like){ // check access
    
    $db = database::getInstance();

      $acceptance = $this->check_email_exist($conditions[0]);

      if(!empty($acceptance)){

          $hash = $this->password;

          if (password_verify($conditions[1], $hash) == true) {

              return $this->userID;

          }
      }
  }

  public function _update(array $data, array $condition){
  
    $db = database::getInstance();

      $update_data = array();

      $con = array();
    if(!is_numeric($condition[0])){
        $con['email'] = $condition[0];
        $update_data["password"] = password_hash($data[0], PASSWORD_DEFAULT);

    }else{
        $con["userID"] = $condition[0];
        $what_to_update = $data[0];
        if($what_to_update == 'both'){

            $update_data["email"] = $data[1];
            $update_data["password"] = password_hash($data[2], PASSWORD_DEFAULT);


        } else if($what_to_update == 'password'){

            $update_data["password"] = password_hash($data[1], PASSWORD_DEFAULT);

        }else if ($what_to_update == 'email'){

            $update_data["email"] = $data[1];

        }else{
            print('something is wrong');
        }
    }

    database::update("tb_logins", $update_data, $con);
  }

  public function check_email_exist($email){

      $db = database::getInstance();

      $data = array();
      $data["email"] = $email;

      $row = database::select("tb_logins", $data, null);

      if(!empty($row)){
          $this->userID = $row[0]['userID'];
          $this->password = $row[0]['password'];
          return true; // acceptable email
      }
      else{
          return false;  // unacceptable email
      }
  }

  public function get_emails(array $data){

      $db = database::getInstance();

      $emails = array();

      $i = 0;
      while($i < sizeof($data)){

          $dataa = array();
          $dataa['userID'] = $data[$i];
          $dataa['isdeleted'] = 0;

          $row = database::select("tb_logins", $dataa, null);

          if($row != null){
              array_push($emails, $row[0]["email"]);
          }

          $i++;
      }

      return $emails;
  }

}

?>