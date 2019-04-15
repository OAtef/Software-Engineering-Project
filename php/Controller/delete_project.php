<?php

$projectID = $_POST['projectID'];
$project = new Project(null);
$project->delete_project($projectID);

?>