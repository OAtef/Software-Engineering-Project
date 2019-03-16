<?php

include_once('../config.api/dbConnection.php');
class Users
{
  public $user_values = array();

  static function login($email, $pass){

    $query = "SELECT userID FROM tb_option_user_values WHERE value='$email'";
    $result = mysqli_query($GLOBALS["db"], $query);
    $userID = mysqli_fetch_array($result);

    $query2 = "SELECT userID FROM tb_option_user_values WHERE value='$pass' and userID='$userID[0]'";
    $result2 = mysqli_query($GLOBALS["db"], $query2);

    if(mysqli_num_rows($result2) > 0){
      echo 1;
    }
    else{
      echo 0;
    }
  }

  static function get_values($str, $startDelimiter, $endDelimiter) {
    $contents = array();
    $startDelimiterLength = strlen($startDelimiter);
    $endDelimiterLength = strlen($endDelimiter);
    $startFrom = $contentStart = $contentEnd = 0;

    while (false !== ($contentStart = strpos($str, $startDelimiter, $startFrom))) {
      $contentStart += $startDelimiterLength;
      $contentEnd = strpos($str, $endDelimiter, $contentStart);

      if (false === $contentEnd) {
        break;
      }

      $v = substr($str, $contentStart, $contentEnd - $contentStart);
      $contents[] = str_replace('%40', '@', $v);
      $startFrom = $contentEnd + $endDelimiterLength;
    }

    return $contents;
  }

  static function insert_user($usertypeID, $values, $parentID){
    // add Admin >> hy2ol admin which kind
    // add donar mafrod by defult hyb2a new donar .. hdelo id 2l root
    // add org / foundation .. 3ady

    $query_userID = "INSERT INTO tb_users (usertypeID) VALUES ($usertypeID)";
    $result = mysqli_query($GLOBALS["db"], $query_userID);
    $userID = mysqli_insert_id($GLOBALS["db"]);

    $query ="SELECT id FROM rtb_option_usertype where usertypeID='$parentID'";
    $resultOU = mysqli_query($GLOBALS["db"], $query);

    $users = new users(NULL);
    $form_vals = $users::get_values($values, "=", "&");

    $i = 0;
    while($rowOU = mysqli_fetch_array($resultOU)){

      $query = "INSERT tb_option_user_values (userID, optionUserID, value) VALUES ($userID, $rowOU[0], '$form_vals[$i]')";
      mysqli_query($GLOBALS["db"], $query);

      if (mysqli_affected_rows($GLOBALS["db"]) != 1) {
        echo mysqli_error($GLOBALS["db"]);
      }

      $i++;
    }
  }

  static function delete_user($userID){

    $delete_query = "UPDATE tb_option_user_values, tb_users SET tb_option_user_values.isdeleted=1, tb_users.isdeleted=1
    WHERE tb_option_user_values.userID='$userID' AND tb_users.id='$userID'";
    mysqli_query($GLOBALS["db"], $delete_query);

    if (mysqli_affected_rows($GLOBALS["db"]) != 1) {
      echo mysqli_error($GLOBALS["db"]);
    }
  }

  static function list_users($usertypeID, $parentID){

    $select_users_query ="SELECT id FROM tb_users where usertypeID='$usertypeID' AND isdeleted!='1'"; # return the ids
    $ids_resulted = mysqli_query($GLOBALS["db"], $select_users_query);

    $i=0;
    $object_array = NULL; # array of objects

    while($rowID = mysqli_fetch_array($ids_resulted)){

      $user_values_array = array(); # a temp array

      $query ="SELECT id FROM rtb_option_usertype where usertypeID='$parentID'"; # returns the optionIDs
      $result_OU = mysqli_query($GLOBALS["db"], $query);

      array_push($user_values_array, $rowID[0]);

      while($rowOU = mysqli_fetch_array($result_OU)){

        $value_query = "SELECT value FROM tb_option_user_values WHERE optionUserID='$rowOU[0]' AND userID='$rowID[0]' AND isdeleted!='1'"; # returns a single memeber value(1)
        $value_result = mysqli_query($GLOBALS["db"], $value_query);
        $row = mysqli_fetch_array($value_result);

        array_push($user_values_array, $row[0]);
      }

      $myobj = new Users($user_values_array);
      $object_array[$i] = $myobj;
      $i++;
    }

    echo json_encode($object_array);

  }

  static function update_user($userID, $parentID, $values){

    $query_ou ="SELECT optionID FROM rtb_option_usertype WHERE usertypeID='$parentID'"; # returns the optionIDs
    $resultOU = mysqli_query($GLOBALS["db"], $query_ou);

    $users = new users(NULL);
    $form_vals = $users::get_values($values, "=", "&");

      $i = 0;
      while($rowOU = mysqli_fetch_array($resultOU)){

        $query = "UPDATE tb_option_user_values SET value='$form_vals[$i]' WHERE userID='$userID' AND optionUserID='$rowOU[0]'";
        mysqli_query($GLOBALS["db"], $query);

         if (mysqli_affected_rows($GLOBALS["db"]) != 1) {
          echo mysqli_error($GLOBALS["db"]);
        }

       $i++;

      }

  }

  function __construct($val_arr){

    if($val_arr != NULL){
      $this->user_values = $val_arr;
    }

  }
}

if(isset($_POST['function2call']) && !empty($_POST['function2call'])) {

  $function2call = $_POST['function2call'];
  $user = new Users(NULL);

  switch($function2call) {
      case 'list_users' :
        $usertypeID = $_POST['usertypeID'];
        $parentID = $_POST['parentID'];
        $user::list_users($usertypeID, $parentID);
        break;

      case 'update_user' :
        $values = $_POST['arr'];
        $userID = $_POST['userID'];
        $parentID = $_POST['parentID'];
        $user::update_user($userID, $parentID, $values);
        break;

      case 'insert_user' :
        $values = $_POST['arr'];
        $usertypeID = $_POST['usertypeID'];
        $parentID = $_POST['parentID'];
        $user::insert_user($usertypeID, $values, $parentID);
        break;

      case 'delete_user' :
        $userID = $_POST['userID'];
        $user::delete_user($userID);
        break;

      case 'login' :
        $email = $_POST['email'];
        $pass = $_POST['password'];
        $user::login($email, $pass);
        break;
  }
}


?>
