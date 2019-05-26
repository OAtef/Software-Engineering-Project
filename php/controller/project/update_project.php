<?php

require_once '../../model/project.php';
require_once '../../model/errors.php';

$error = new errors(null);

if(!isset($_POST['pro_info'])){
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

    $projectLeaders = $_POST['checked_leaders'];
    $projectMembers = $_POST['checked_members'];

    $project_info = $_POST['pro_info'];
    $projectID = $_POST['projectID'];
    if(!is_numeric($projectID)){
        exit('some data is not numeric');
    }

    $z = 0;
    while($z < sizeof($project_info)){

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
        $project = new Project($projectID);

        $result = $project->_update($project_info, array($projectID));

        session_start();
        $new_leaders = array_diff($_SESSION['present_leaders'], $projectLeaders); // 3yza 2li fe 2l new array bs
        if($new_leaders != null){
            $project->remove_project_member($projectID, $new_leaders, 1);

        }

        $removed_leaders = array_diff($projectLeaders, $_SESSION['present_leaders']);
        if($removed_leaders != null){
            $project->insert_Project_Members($projectID, $removed_leaders, 1);

        }

        $new_members = array_diff($_SESSION['present_members'], $projectMembers);
        if($new_members != null){
            $project->remove_project_member($projectID, $new_members, 2);

        }

        $removed_members = array_diff($projectMembers, $_SESSION['present_members']);
        if($removed_members != null){
            $project->insert_Project_Members($projectID, $removed_members, 2);

        }

        $smsg = array("success"=>"project is updated successfully");
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