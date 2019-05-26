<?php

require_once '../../model/database.php';
require_once '../../model/crud.php';
require_once '../../model/facade.php';
require_once '../../model/manual_send.php';
require_once '../../model/login.php';
require_once '../../model/forget_password.php';
require_once '../../model/errors.php';

$error = new errors(null);

$email= $_POST['email'];

if(isset($_POST['email'])){
    $email= $_POST['email'];
}
else{
    //exit ('no email was entered');
    $error->_read(array(334), array());
    $emsg = array("error"=>$error->user_error);
    echo json_encode($emsg);
    die;
}

$login = new login(null);
$EmailExist = $login->check_email_exist($email);
if ($EmailExist == true)
{


    $fp = new forget_password(null);
    $c_temp = $fp->_create($email);

    if($c_temp == true){
        $temp = $fp->temp;

        $sm = new manual_send();
        $sm->emails = array($email);

        $facade = new facade(null);
        $sm->deatch($facade->sms);
        $sm->deatch($facade->whatsapp);

        $msg = new messages(300);

        $the_Message = str_replace("__temp__", $string ,$msg->content);

        $sm->massage_content = $the_Message;
        $sm->massage_subject = $msg->subject;
        $sm->notify();
    }
    else{
        $error->_read(array(665), array());
        $emsg = array("error"=>$error->user_error);
        echo json_encode($emsg);
        die;
        //exit('system error happened (could not make a temprory password)');
    }


}
else
{
    $error->_read(array(556), array());
    $emsg = array("error"=>$error->user_error);
    echo json_encode($emsg);
    die;
    //exit('email not exist please try again');
}

?>