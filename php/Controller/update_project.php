<?php

$projectID = $_POST['projectID'];
$pro_info = $_POST['pro_info'];


if($pro_info != null){
  $project = new Project(null);
  $project->update_project_information($pro_info, $projectID);
}

?>