<?php

require_once '../../model/project.php';
require_once '../../model/request_donation.php';
require_once '../../model/errors.php';

$error = new errors(null);

if(!isset($_POST['selectedIDs'], $_POST['last_req'], $_POST['taken_from_req'], $_POST['project_taken_money'], $_POST['project_id'], $_POST['each_req_m'])){
    //exit('You must choose donations to get into the choosen project');
    $error->_read(array(990), array());
    $emsg = array("error"=>$error->user_error);
    echo json_encode($emsg);
    die;
}

$selectedIDs = $_POST['selectedIDs'];
$last_req = $_POST['last_req'];
$taken_from_req = $_POST['taken_from_req'];
$project_taken_money = $_POST['project_taken_money'];
$project_id = $_POST['project_id'];
$amounts = $_POST['each_req_m'];


$rd = new request_donation(null);
$project = new project($project_id);


$rd->rd_pro($selectedIDs, $amounts, $project_id);
$project->insert_money($project_id,$project_taken_money);

$rd->insert_money($selectedIDs, $last_req, $taken_from_req);
$rd->send_notifiy($selectedIDs, $project->project_name);


$userIDs = $rd->get_userIDs($selectedIDs);
$project->insert_Project_Members($project_id, $userIDs, 3);

$smsg = array("success"=>"Process is done Successfully");
echo json_encode($smsg);
die;
