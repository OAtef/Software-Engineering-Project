<?php

require_once '../../model/project.php';

$projectID = $_POST['projectID'];
$project = new project(null);
$project->_delete(array($projectID));

$smsg = array("success"=>"project is deleted successfully");
echo json_encode($smsg);
die;

