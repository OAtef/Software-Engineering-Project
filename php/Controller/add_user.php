<?php

require '../Model/users.php';
require '../Model/login.php';

$uv = new user_values(null);

$values = $_POST['arr'];
$usertypeID = $_POST['usertypeID'];
$len = $_POST['len'];

if($len == sizeof($values)){

    $data = array();
    $data[0] = $usertypeID;
    $data[1] = $values;

    $uv->_create($data);
}else{
    
    $x=0;
    $vals = array();
    while($x < $len){
        $vals[$x] = $values[$x];
        $x++;
    }

    $user_data = array();
    $user_data[0] = $userTypeID;
    $user_data[1] = $vals;

    $userID = $uv->_create($user_data); // values

    $log_data = array();
    $log_data["email"] = $values[$len];
    $log_data["password"] = $values[$len+1];
    $log_data["userID"] = $userID;
    
    $log = new login(null);
    $log->_create($log_data);
}

?>