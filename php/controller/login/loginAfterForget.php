<?php

require_once '../../model/database.php';
require_once '../../model/crud.php';
require_once '../../model/facade.php';
require_once '../../model/manual_send.php';
require_once '../../model/login.php';
require_once '../../model/errors.php';

$error = new errors(null);

if($_POST['tempPass'] && $_POST['newPass'] && $_POST['confirm']){
    $tempPass= $_POST['tempPass'];
    $newPass = $_POST['newPass'];
    $newPass2 = $_POST['confirm'];
}
else{
    //exit('some fields was not filled');
    $error->_read(array(231), array());
    $emsg = array("error"=>$error->user_error);
    echo json_encode($emsg);
    die;
}

if ($newPass == $newPass2)
{
    $fp = new forget_password($tempPass);

    if ($fp->email != '' && $fp->used == 0) {

        $email = $fp->email;
        $log = new login(null);
        $log->_update(array($newPass), array($email));

        $fp->_update(array(), array($fp->email));

        header('Location: ../view/login.php');
    }

    else {
        $error->_read(array(223), array());
        $emsg = array("error"=>$error->user_error);
        echo json_encode($emsg);
        die;
        //exit("Temporary password is already used");
    }
}

else{
    $error->_read(array(455), array());
    exit($error->user_error);

    //exit('the passwords entered are not matching');
}

