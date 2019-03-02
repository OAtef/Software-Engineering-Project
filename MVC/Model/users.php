<?php

include_once('../config.api/dbConnection.php');
class Users
{
  public $user_values = array();

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

/*   static function optionID_function($usertypeID){
    $query ="SELECT optionID FROM rtb_option_user where usertypeID='$usertypeID'"; # returns the optionIDs
    $result_OU = mysqli_query($GLOBALS["db"], $query);

    return $result_OU;
} */

  static function tableHeader($usertypeID){

    $headers_rows = array();

    $query ="SELECT optionID FROM rtb_option_user where usertypeID='$usertypeID'"; 
    $result_OU = mysqli_query($GLOBALS["db"], $query);

    while($row = mysqli_fetch_array($result_OU)){

      $select_query = "SELECT name, type FROM tb_options WHERE id='$row[0]'";
      $result = mysqli_query($GLOBALS["db"], $select_query);

      while($head_row = mysqli_fetch_array($result)){
        # $array[$key] = $value;
        $headers_rows[$head_row[0]] = $head_row[1];
      }
      
    }
    echo json_encode($headers_rows);  # array contains the resulted names of headers and types of fileds
  
  }

  static function select_users($usertypeID){

    $select_users_query ="SELECT id FROM tb_users where usertypeID='$usertypeID'"; # return the ids
    $ids_resulted = mysqli_query($GLOBALS["db"], $select_users_query);

    $query ="SELECT optionID FROM rtb_option_user where usertypeID='$usertypeID'"; # returns the optionIDs
    $result_OU = mysqli_query($GLOBALS["db"], $query);

    $i=0;
    $result_arr = NULL; # array of objects
    $val_arr = array(); # a temp array
    while($rowID = mysqli_fetch_array($ids_resulted)){
      while($rowOU = mysqli_fetch_array($result_OU)){
        
        $value_query = "SELECT value FROM tb_option_user_values WHERE optionUserID='$rowOU[0]' AND userID='$rowID[0]'"; # returns a single memeber value(1)
        $value_result = mysqli_query($GLOBALS["db"], $value_query);
        $x = 0;
        
        while($row = mysqli_fetch_array($value_result)) {
          $val = $row[$x];
          array_push($val_arr, $val);
          $x++;
        }
        
      }
    
      $myobj = new Users($val_arr);
      $val_arr = array(); # to empty the temp array
      $result_arr[$i] = $myobj;
      $i++;
    }
    echo json_encode($result_arr);
    #return $result_arr;

  }

  static function update_user($oldEmail, $usertypeID, $arr){

    $timespan = date("M,d,Y h:i:s");

    $userID_query = "SELECT userID FROM tb_option_user_values WHERE value='$oldEmail'";
    $userID_result = mysqli_query($GLOBALS["db"], $userID_query);
    
    $query_ou ="SELECT optionID FROM rtb_option_user WHERE usertypeID='$usertypeID'"; # returns the optionIDs
    $resultOU = mysqli_query($GLOBALS["db"], $query_ou);

    $users = new users(NULL);
    $form_vals = $users::get_values($arr, "=", "&");

     while($rowID = mysqli_fetch_array($userID_result)){
      $i = 0;
      while($rowOU = mysqli_fetch_array($resultOU)){
        
        $query = "UPDATE tb_option_user_values SET value='$form_vals[$i]',updatedTime='$timespan' WHERE userID='$rowID[0]' AND optionUserID='$rowOU[0]'";
        mysqli_query($GLOBALS["db"], $query);

         if (mysqli_affected_rows($GLOBALS["db"]) == 1) {
           echo "ok";
        }else{
         echo mysqli_error($GLOBALS["db"]);
       } 
       
       $i++;
        
      }
    } 

  }

  static function insert_user($usertypeID, $arr){

    $timespan = date("M,d,Y h:i:s");

    $query = "INSERT INTO tb_users (usertypeID, createdTime) VALUES ('$usertypeID', '$timespan')";
    $result = mysqli_query($GLOBALS["db"], $query);
    $userID = mysqli_insert_id($GLOBALS["db"]);

    $query ="SELECT optionID FROM rtb_option_user where usertypeID='$usertypeID'"; # returns the optionIDs
    $resultOU = mysqli_query($GLOBALS["db"], $query);

    $users = new users(NULL);
    $form_vals = $users::get_values($arr, "=", "&");

    $i = 0;
    while($rowOU = mysqli_fetch_array($resultOU)){
        
      $query = "INSERT tb_option_user_values (userID, optionUserID, value, createdTime) VALUES ('$userID', '$rowOU[0]', '$form_vals[$i]', '$timespan')";
      mysqli_query($GLOBALS["db"], $query);

      if (mysqli_affected_rows($GLOBALS["db"]) == 1) {
      }else{
        echo mysqli_error($GLOBALS["db"]);
      } 

      $i++;
        
      }
  }

  static function delete_user($oldEmail/*,  $usertypeID */){

    $timespan = date("M,d,Y h:i:s");

    $userID_query = "SELECT userID FROM tb_option_user_values WHERE value='$oldEmail'";
    $userID_result = mysqli_query($GLOBALS["db"], $userID_query);

    // $query_ou ="SELECT optionID FROM rtb_option_user WHERE usertypeID='$usertypeID'"; # returns the optionIDs
    // $resultOU = mysqli_query($GLOBALS["db"], $query_ou);

    while($rowID = mysqli_fetch_array($userID_result)){


      $query2 = "UPDATE tb_option_user_values ou,tb_users u SET ou.updatedTime='$timespan', ou.isdeleted=1, u.updatedTime='$timespan', u.isdeleted=1 
          WHERE ou.userID='$rowID[0]' AND u.userID='$rowID[0]'";
        mysqli_query($GLOBALS["db"], $query2);

        if (mysqli_affected_rows($GLOBALS["db"]) == 1) {
          echo "ok";
       }else{
        echo mysqli_error($GLOBALS["db"]);
      }  
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
  $usertypeID = $_POST['usertypeID'];  
  $user = new users(NULL);

  switch($function2call) {
      case 'tableHeader' : 
        $user::tableHeader($usertypeID);
        break;

      case 'select_users' :
        $user::select_users($usertypeID);
        break;

      case 'update_user' : 
        $arr = $_POST['arr'];
        $oldEmail = $_POST['oldEmail'];
        $user::update_user($oldEmail, $usertypeID, $arr);
        break; 

      case 'insert_user' :
        $arr = $_POST['arr'];
        $user::insert_user($usertypeID, $arr);
        break;

      case 'delete_user' :
        $oldEmail = $_POST['oldEmail'];
        $user::delete_user($oldEmail);
        break;
  }
}


?>
