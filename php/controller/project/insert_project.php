<?php

require_once '../../model/project.php';
require_once '../../model/errors.php';

$error = new errors(null);

if(!isset($_POST['project_info'])){
    //exit('you must enter the project data');
    $error->_read(array(116), array());
    $emsg = array("error"=>$error->user_error);
    echo json_encode($emsg);
    die;
}
elseif(!isset($_POST['checked_members'])){
    //exit('you must choose a team members');
    $error->_read(array(117), array());
    $emsg = array("error"=>$error->user_error);
    echo json_encode($emsg);
    die;
}
elseif(!isset($_POST['checked_leaders'])){
    //exit('you must choose a team leaders');
    $error->_read(array(118), array());
    $emsg = array("error"=>$error->user_error);
    echo json_encode($emsg);
    die;
}
else{

    $project_info = $_POST['project_info'];
    $projectMembers = $_POST['checked_members'];
    $projectLeaders = $_POST['checked_leaders'];


    $z = 0;
    while($z < sizeof($project_info)-1){

        $project_info[$z] = validate($project_info[$z]);

        if((sizeof($project_info)-$z) == 1){
            break;
        }

        if($project_info[$z] != ''){

            if(is_numeric($project_info[$z])){
                if((int)$project_info[$z] < 0){
                    //exit('numeric fields cant be negative');
                    $error->_read(array(670), array());
                    $emsg = array("error"=>$error->user_error);
                    echo json_encode($emsg);
                    die;
                }
            }

            $z++;
        }else{
            //exit ('some fields are empty');
            $error->_read(array(231), array());
            $emsg = array("error"=>$error->user_error);
            echo json_encode($emsg);
            die;
        }
    }

    if (count($projectLeaders) > 0 && count($projectMembers) > 0) {
        $project = new Project(null);

        $projectID = $project->_create($project_info);
        $projectResult1 = $project->insert_Project_Members($projectID, $projectLeaders, 1);
        $projectResult2 = $project->insert_Project_Members($projectID, $projectMembers, 2);

        $smsg = array("success"=>"project is created successfully");
        echo json_encode($smsg);
        die;
    }
    else{
        $error->_read(array(119), array());
        $emsg = array("error"=>$error->user_error);
        echo json_encode($emsg);
        die;
        //exit "You Must Enter a Leader and members to the Project";
    }

}


function validate($input){

    $input = trim($input);
    $input = stripslashes($input);
    $input = strip_tags($input);

    return $input;

}