<?php

require_once '../../model/project.php';

$projectID = $_POST['projectID'];
$project = new project($projectID);

$result = ($project->project_budget)  - ($project->inTake);

echo json_encode($result);
