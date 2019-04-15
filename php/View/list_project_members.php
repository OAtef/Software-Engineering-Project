<?php

$projectID = $_POST['projectID'];
$project = new Project(null);
$x = $project->list_project_members($projectID);
echo json_encode($x);

?>