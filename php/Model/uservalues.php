<?php

require_once 'database.php';
require_once 'crud.php';

require_once 'usertypes.php';
require_once 'users.php';
require_once 'login.php';

class user_values implements crud
{
  
  public $user_values = array();
  
  function __construct($val_arr){

    if($val_arr != null){
      $this->user_values = $val_arr;
    }

  }

  public function _create(array $data){

    $db = database::getInstance();

    $user = new users(null);
    $user_data['usertypeID'] = $data[0];
    $userID = $user->_create($user_data);

    $ut = new usertypes($data[0]);

    $vals = $data[1];
    $i = 0;
    while($i < sizeof($ut->rOUT_ids)){

      $insert_data = array();
      $insert_data["userID"] = $userID;
      $insert_data["optionUserID"] = $ut->rOUT_ids[$i];
      $insert_data["value"] = $vals[$i];

      $i++;
      database::insert("tb_option_user_values", $insert_data);
    }

    return $userID;
  }
  
  public function _read(array $conditions, array $like){ // select values

    $db = database::getInstance();

    $user = new users(null);
    $userIDs = $user->_read($conditions, array());

    $object_array = array(); # array of objects
    $i = 0;
    while($i < sizeof($userIDs)){

      $data = array();
      $data['isdeleted'] = 0;
      $data['userID'] = $userIDs[$i];

      $ut = new usertypes($conditions[0]);
      
      $user_values_array = array();
      array_push($user_values_array, $userIDs[$i]);    

      $j = 0;
      while($j < sizeof($ut->rOUT_ids)){
      
        $data['optionUserID'] = $ut->rOUT_ids[$j];
        $data['isdeleted'] = 0;
        $rows = database::select("tb_option_user_values", $data, null);
    
        array_push($user_values_array, $rows[0]['value']);
        $j++;
    
      }

      $log = new login($userIDs[$i]);
      array_push($user_values_array, $log->email);      
      $myobj = new user_values($user_values_array);
      $object_array[$i] = $myobj;
      $i++;
    }

    return $object_array;
  }
  
  public function _update(array $data, array $condition){

    $db = database::getInstance();

    $ut = new usertypes($condition["userID"]);

    $i = 0;
    while($i < sizeof($ut->rOUT_ids)){

      $condition["optionUserID"] = $ut->rOUT_ids[$i];
      
      database::update("tb_option_user_values", $data[$i], $condition);
      $i++;
      
    }
    
  }
  
  public function _delete(array $data){

    $db = database::getInstance();

    // $data = array();
    // $data["userID"] = $userID;

    database::delete("tb_option_user_values", $data);

  }
  
}

?>
