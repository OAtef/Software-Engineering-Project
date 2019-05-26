<?php

require_once('../../model/project.php');

$project = new project(null);

$project_category_id = $_POST['categoryID'];

$x = $project->list_conditioned($project_category_id);

if(!empty($x)){
    echo json_encode($x);
}else{
    echo json_encode('no projects to be selected');
}

