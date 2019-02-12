<?php

include_once('dbConnection.php');

class Users
{

  public $ID;
  public $firstname;
  public $lastname;
  public $email;
  public $password;
  public $bdate;
  public $typeid;

  static function login($email,$password){

    $login_query = "SELECT * FROM users WHERE email='$email' AND password='$password'";
    $login_query_result = mysqli_query($GLOBALS["db"], $login_query);
    if($row = mysqli_fetch_array($login_query_result)){

      return new Users($row[0]);

    }
    return NULL;

  }

  static function deleteUser($id){

    $delete_user_query = "DELETE FROM users where id='$id'";
    mysqli_query($GLOBALS["db"], $delete_user_query);
    if (mysqli_affected_rows($GLOBALS["db"]) == 1) {
      return 1;
    }
    else{
      return 0;
    }

  }

  static function insertUser($obj){

    $insert_user_query ="INSERT INTO users (firstName, lastName, email, password, Bdate, typeID) VALUES ('$obj->firstname', '$obj->lastname', '$obj->email', '$obj->password', '$obj->bdate', '$obj->typeid')";

    if (mysqli_query($GLOBALS["db"], $insert_user_query)) {
      return 1;
    }else {
      return 0;
    }

  }

  static function updateUser($obj){

    
    $update_user_query = "UPDATE users SET firstName='$obj->firstname', lastName='$obj->lastname', email='$obj->email', password='$obj->password',
      Bdate='$obj->bdate', typeID='$obj->typeid'";

    mysqli_query($GLOBALS["db"], $update_user_query) or die(mysqli_error($mysqli));
    if (mysqli_affected_rows($GLOBALS["db"]) == 1) {
      return 1;
    }
    else{
      return 0;
    }

  }

  static function selectAllUsers(){

    $select_users_query ="SELECT * FROM users ORDER BY firstName";
    $dataSet = mysqli_query($GLOBALS["db"], $select_users_query);

    $i=0;
    $result_arr = NULL;

    while($row = mysqli_fetch_array($dataSet)){
      $myobj = new Users($row["ID"]);
      $result_arr[$i] = $myobj;
      $i++;
    }
    return $result_arr;

  }

  function __construct($id){

    $sql ="SELECT * FROM users WHERE id='$id'";
    $result = mysqli_query($GLOBALS["db"], $sql);

    if(mysqli_num_rows($result) == 1){

      while($row = mysqli_fetch_array($result)){
        $this->ID = $row["ID"];
        $this->firstname = $row["firstName"];
        $this->lastname = $row["lastName"];
        $this->email = $row["email"];
        $this->password = $row["password"];
        $this->bdate = $row["Bdate"];
        $this->typeid = $row["typeID"];
      }
    }
  }

}

?>
