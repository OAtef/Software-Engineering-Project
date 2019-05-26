<?php

require_once '../../model/project.php';

$projectID = $_POST['projectID'];

$project = new project(null);

$x = $project->list_project_members($projectID);

session_start();
$_SESSION['present_leaders'] = $x[0];
$_SESSION['present_members'] = $x[1];


echo json_encode($x);

?>