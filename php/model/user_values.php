<?php

require_once 'database.php';
require_once 'crud.php';
require_once 'users.php';
require_once 'usertypes.php';
require_once 'login.php';
require_once 'phone_numbers.php';

class user_values implements crud {

  public $user_values = array();

  function __construct($val_arr){

    if($val_arr != null){
      $this->user_values = $val_arr;
    }

  }

  public function _create(array $data){

    $db = database::getInstance();

    $user = new users(null);

    $user_data = array();
    $user_data[0] = $data[0];
    $userID = $user->_create($user_data);

    $ut = new usertypes(array($data[0]));
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

    $ut = new usertypes($conditions);

    $user = new users(null);
    $userIDs = $user->_read($conditions, array());

    $object_array = array(); # array of objects
    if(!empty($userIDs)){
        $i = 0;
        while($i < sizeof($userIDs)){

            $data = array();

            $data['userID'] = $userIDs[$i];

            $user_values_array = array();
            array_push($user_values_array, $userIDs[$i]);

            $j = 0;
            while($j < sizeof($ut->rOUT_ids)){

                $data['optionUserID'] = $ut->rOUT_ids[$j];
                $data['isdeleted'] = 0;

                $rows = database::select("tb_option_user_values", $data, null);

                if(empty($rows)){

                    array_push($user_values_array, " ");
                }
                else{
                    array_push($user_values_array, $rows[0]['value']);
                }



                $j++;

            }

            $log = new login($userIDs[$i]);
            $pn = new phone_numbers($userIDs[$i]);
            array_push($user_values_array, $log->email);
            array_push($user_values_array, $pn->phone_num);
            $myobj = new user_values($user_values_array);
            $object_array[$i] = $myobj;
            $i++;
        }
    }
      return $object_array;
  }

  public function _update(array $data, array $condition){

    $db = database::getInstance();

    $usertypeID = $condition[0];
    $userID = $condition[1];

    $ut = new usertypes(array($usertypeID));

    $i = 0;
    while($i < sizeof($ut->rOUT_ids)){

      $con = array();
      $con["userID"] = $userID;
      $con["optionUserID"] = $ut->rOUT_ids[$i];

      $val = array();
      $val["value"] = $data[$i];

      $condition["optionUserID"] = $ut->rOUT_ids[$i];

      database::update("tb_option_user_values", $val, $con);
      $i++;

    }

  }

  public function _delete(array $data){

    $db = database::getInstance();

    $dataa = array();
    $dataa["userID"] = $data[0];

    database::delete("tb_option_user_values", $dataa);

  }

  public function get_specific_user_data($userID){

    $data = array();
    $data['isdeleted'] = 0;
    $data['userID'] = $userID;

    $user = new users($userID);

    $ut = new usertypes(array($user->usertypeID));

    $user_values_array = array();

    $j = 0;
    while($j < sizeof($ut->rOUT_ids)){

      $data['optionUserID'] = $ut->rOUT_ids[$j];
      $data['isdeleted'] = 0;
      $rows = database::select("tb_option_user_values", $data, null);

      array_push($user_values_array, $rows[0]['value']);
      $j++;

    }

    $log = new login($userID);
    $pn = new phone_numbers($userID);
    array_push($user_values_array, $log->email);
    array_push($user_values_array, $pn->phone_num);


    return $user_values_array;
}

}


