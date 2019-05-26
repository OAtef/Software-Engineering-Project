<?php

require_once '../../model/project.php';

$categoryID = $_POST['categoryID'];
$project = new project(null);

$x = $project->_read(array($categoryID), array());

if(!empty($x)){
    echo json_encode($x);
}else{
    echo json_encode('No data to be displayed');
}

