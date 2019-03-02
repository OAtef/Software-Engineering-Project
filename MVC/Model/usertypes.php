<?php

include_once('../config.api/dbConnection.php');

class UserTypes
{
  public $user_values = array();


  static function list_usertypes(){

    $arr = array();

    $query ="SELECT id, usertype_name FROM tb_usertype"; 
    $result = mysqli_query($GLOBALS["db"], $query);

    while($row = mysqli_fetch_array($result)){

      array_push($arr, $row[0]);
      array_push($arr, $row[1]);
      
    }
      echo json_encode($arr);  
  }

  function __construct(){

  }
  
}

if(isset($_POST['function2call']) && !empty($_POST['function2call'])) {
  $function2call = $_POST['function2call'];
  switch($function2call) {
      case 'list_usertypes' : 
        $ut = new UserTypes();
        $ut::list_usertypes();
        break;
      case 'other' : // do something;
        break;
      // other cases
  }
}

?>


