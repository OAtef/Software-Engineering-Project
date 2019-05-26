<?php

require_once '../../model/users.php';
require_once '../../model/login.php';
require_once '../../model/user_values.php';
require_once '../../model/phone_numbers.php';
require_once '../../model/profile_photo.php';


$userID = $_POST['userID'];

if(isset($userID) && is_int($userID)){

    $data = array($userID);

    $user = new users(null);
    $user->_delete($data);

    $uv = new user_values(null);
    $uv->_delete($data);

    $log = new login(null);
    $log->_delete($data);

    $pic = new profile_photo(null);
    $pic->_delete($data);

    $pn = new phone_numbers(null);
    $pn->_delete($data);

    $smsg = array("success"=>"user is deleted successfully");
    echo json_encode($smsg);
    die;

}

