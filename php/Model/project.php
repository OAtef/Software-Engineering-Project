<?php

require_once 'database.php';
require_once 'crud.php';

class project 
{
    public $id;
    public $project_name;
    public $project_budget;
    public $num_of_phases;
    public $current_phase;
    public $notes;
    public $projectcategoryID;

    public function insert_Project_information($project_info){

      $db = database::getInstance();

      $data = array();

      $data["project_name"] = $project_info[0];
      $data["project_budget"] = $project_info[1];
      $data["num_of_phases"] = $project_info[2];
      $data["projectcategoryID"] = $project_info[3];
      $data["notes"] = $project_info[4];

      database::insert("tb_project", $data);
      return (database::lastId());

    }

    public function insert_Project_images($imgs, $projectID){

      $db = database::getInstance();

      $x=0;
      while($x < sizeof($imgs)){

        $data = array();
        $data["projectID"] = $projectID;
        $img  = addslashes(file_get_contents($_FILES[$imgs[$x]]["tmp_name"]));
        $data["img"] = $img;

        database::insert("tb_project_image", $data, null);

        $x++;
      }
    }

    public function delete_project($projectID){

      $db = database::getInstance();

      $data = array();
      $data["id"] = $projectID;
      database::delete("tb_project", $data, null);

      $pro = new Project(null);
      $pro->delete_project_member($projectID);

      

    }

    public function delete_project_member($projectID){

      $db = database::getInstance();

      $data1 = array();
      $data1["projectID"] = $projectID;
      database::delete("rtb_user_project", $data1, null);

    }

    public function update_project_information($dataup, $projectID){

      $db = database::getInstance();

      $conditions = array();
      $conditions["id"] = $projectID;

      database::update("tb_project", $dataup, $conditions);
    }

    public function list_project($projectCategoryID){

      $db = database::getInstance();

      $data = array();
      $data["projectcategoryID"] = $projectCategoryID;
      $data["isdeleted"] = 0;

      $row = database::select("tb_project", $data, null);

      $projects = array();
      $i = 0;
      while($i < sizeof($row)){

        $arr = array();

        array_push($arr, $row[$i]["id"]);    
        array_push($arr, $row[$i]["project_name"]);    
        array_push($arr, $row[$i]["project_budget"]);    
        array_push($arr, $row[$i]["current_phase"]);    
        array_push($arr, $row[$i]["num_of_phases"]);  
        array_push($arr, $row[$i]["notes"]);
  
        
        array_push($projects, $arr);

        $i++;
      }

      return $projects;
    }

    public function list_project_members($projectID){

      $data = array();
      $data["projectID"] = $projectID;
      $data["isdeleted"] = 0;

      $row = database::select("rtb_user_project", $data, null);

      $team_leader = array();
      $team_member = array();

      $i = 0;
      while($i < sizeof($row)){
        if($row[$i]["roleID"] == 1){
          array_push($team_leader, $row[$i]["userID"]);
        }
        if($row[$i]["roleID"] == 2){
          array_push($team_member, $row[$i]["userID"]);
        }
        $i++;
      }


      $arr = array();
      $arr[0] = $team_leader;
      $arr[1] = $team_member;

      return $arr;

    }
}

?>
