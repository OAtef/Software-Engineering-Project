<?php

require_once ('../config.api/dbConnection.php');
require_once ('usertypes_class.php');
require_once ('users_class.php');

class User_Values
{
  public $user_values = array();
  
  function __construct($val_arr){

    if($val_arr != NULL){
      $this->user_values = $val_arr;
    }

  }

  public static function select_values($usertypeID){

    $db = DbConnection::getInstance();

    $user = new Users(NULL);
    $userIDs = $user->select_user($usertypeID);

    $object_array = array(); # array of objects
    $i = 0;
    while($i < sizeof($userIDs)){

      $data = array();
      $data['isdeleted'] = 0;
      $data['userID'] = $userIDs[$i];

      $ut = new UserTypes($usertypeID);
      
      $user_values_array = array();
      array_push($user_values_array, $userIDs[$i]);    

      $j = 0;
      while($j < sizeof($ut->rOUT_ids)){
      
        $data['optionUserID'] = $ut->rOUT_ids[$j];
        $data['isdeleted'] = 0;
        $rows = DbConnection::select("tb_option_user_values", $data);
    
        array_push($user_values_array, $rows[0]['value']);
        $j++;
    
      }
      
      $myobj = new User_Values($user_values_array);
      $object_array[$i] = $myobj;
      $i++;
    }

    return $object_array;
  }

  public static function delete_values($userID){

    $db = DbConnection::getInstance();

    $data = array();
    $data["userID"] = $userID;
    
    DbConnection::delete("tb_option_user_values", $data);

  }

  public static function insert_values($usertypeID, $vals){

    $db = DbConnection::getInstance();

    $user = new Users(NULL);
    $userID = $user->insert_user($usertypeID);
    $ut = new UserTypes($usertypeID);

    $values = User_Values::get_values($vals, "=", "&");

    $i = 0;
    while($i < sizeof($ut->rOUT_ids)){

      $data = array();
      $data["userID"] = $userID;
      $data["optionUserID"] = $ut->rOUT_ids[$i];
      $data["value"] = $values[$i];

      $i++;
      DbConnection::insert("tb_option_user_values", $data);
    }

  }

  private static function get_values($str, $startDelimiter, $endDelimiter) {
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

  public static function update_values($usertypeID, $userID, $vals){

    $db = DbConnection::getInstance();

    $ut = new UserTypes($usertypeID);

    $values = User_Values::get_values($vals, "=", "&");

    $i = 0;
    while($i < sizeof($ut->rOUT_ids)){

      $condition = array();
      $data = array();
      $condition["userID"] = $userID;
      $condition["optionUserID"] = $ut->rOUT_ids[$i];
      $data["value"] = $values[$i];
      $i++;
      DbConnection::update("tb_option_user_values", $data, $condition);

      
    }

  }

  public function check_values($password, $email){

    $db = DbConnection::getInstance();
	  
    $dataEmail = array();
    $dataEmail["value"] = $email;
    $dataEmail["isdeleted"] = 0;	  	  
    $rowEmail = DbConnection::select("tb_option_user_values", $dataEmail);

    if($rowEmail != null){

      $dataPassword = array();
      $dataPassword["value"] = $password;
      $dataPassword["isdeleted"] = 0;
      $userid = $dataPassword["userID"] = $rowEmail[0]["userID"];
       
      $rowPassword = DbConnection::select("tb_option_user_values", $dataPassword);

      if($rowPassword != null){

        session_start();
        $_SESSION['uid'] = $userid;

        return true;

      }
      else{
        return false;
      }

    }
    else{
      return false;
    }
  }

}

?>
