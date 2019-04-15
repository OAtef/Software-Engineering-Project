<?php

require_once '../Model/project.php';

$CategoryID = $_POST['CategoryID'];
$project = new project(null);

$x = $project->list_project($CategoryID);
echo json_encode($x);

?>