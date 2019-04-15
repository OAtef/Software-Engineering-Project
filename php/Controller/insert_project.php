<?php


$project_info = $_POST['project_info'];
$project_imgs = $_POST['project_imgs'];

$project = new Project(null);
$projectID = $project->insert_Project_information($project_info);

if($project_imgs != null){
  $project->insert_Project_images($project_imgs, $projectID);
} 

?>