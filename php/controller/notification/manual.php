<?php

require_once '../../model/manual_send.php';
require_once '../../model/errors.php';

$error = new errors(null);
$sm = new manual_send();

$msg = $_POST['message'];
$subj = $_POST['subject'];

if($msg == "" && $subj == ""){
    //exit('you must enter subject and message to be send');
    $error->_read(array(897), array());
    $emsg = array("error"=>$error->user_error);
    echo json_encode($emsg);
    die;

}
else{
    $sm->massage_content = $_POST['message'];
    $sm->massage_subject = $_POST['subject'];

    if(!isset($_POST['emails']) && isset($_POST['numbers'])){
        $sm->emails = $_POST['emails'];
    }
    elseif(isset($_POST['emails']) && !isset($_POST['numbers'])){
        $sm->numbers = $_POST['numbers'];
    }
    elseif(!isset($_POST['emails']) && !isset($_POST['numbers'])){
        //exit('you did not choose any candidate to send notification to');
        $error->_read(array(786), array());
        $emsg = array("error"=>$error->user_error);
        echo json_encode($emsg);
        die;
    }
    else{
        $sm->emails = $_POST['emails'];
        $sm->numbers = $_POST['numbers'];
    }

    $sm->notify();
    $smsg = array("success"=>"Notification is sent successfully");
    echo json_encode($smsg);
    die;
}
