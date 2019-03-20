<?php

require_once ('../config.api/dbConnection.php');


class Project
{
    public $id;
    public $project_name;
    public $project_budget;
    public $num_of_phases;
    public $current_phase;
    public $notes;
    public $projectcategoryID;

    public $rtb_members = array();

    public function insert_Project_information($project_info){

      $db = DbConnection::getInstance();

      $data = array();

      $data["project_name"] = $project_info[0];
      $data["project_budget"] = $project_info[1];
      $data["num_of_phases"] = $project_info[2];
      $data["projectcategoryID"] = $project_info[3];
      $data["notes"] = $project_info[4];

      DbConnection::insert("tb_project", $data, null);
      return (DbConnection::lastId());

      
    }

    public function insert_Project_members($members, $projectID){

      $db = DbConnection::getInstance();

      foreach ($members as $key => $values) {

        $role = $key+1;
        $arr = $values;

        $x=0;
        while($x < sizeof($arr)){

          $data = array();
          $data["roleID"] = $role;
          $data["projectID"] = $projectID;
          $data["userID"] = $values[$key][$x];

          DbConnection::insert("rtb_user_project", $data, null);

          $x++;
        }
      }
    }

    public function insert_Project_images($imgs, $projectID){

      $db = DbConnection::getInstance();

      $x=0;
      while($x < sizeof($imgs)){

        $data = array();
        $data["projectID"] = $projectID;
        $img  = addslashes(file_get_contents($_FILES[$imgs[$x]]["tmp_name"]));
        $data["img"] = $img;

        DbConnection::insert("tb_project_image", $data, null);

        $x++;
      }
    }

    public function delete_project($projectID){

      $db = DbConnection::getInstance();

      $data = array();
      $data["id"] = $projectID;
      DbConnection::delete("tb_project", $data, null);

      $pro = new Project(null);
      $pro->delete_project_member($projectID);

      

    }

    public function delete_project_member($projectID){

      $db = DbConnection::getInstance();

      $data1 = array();
      $data1["projectID"] = $projectID;
      DbConnection::delete("rtb_user_project", $data1, null);

    }

    public function update_project_information($dataup, $projectID){

      $db = DbConnection::getInstance();

      $conditions = array();
      $conditions["id"] = $projectID;

      DbConnection::update("tb_project", $dataup, $conditions);
    }

    public function list_project($projectCategoryID){

      $db = DbConnection::getInstance();

      $data = array();
      $data["projectcategoryID"] = $projectCategoryID;
      $data["isdeleted"] = 0;

      $row = DbConnection::select("tb_project", $data, null);

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

      $row = DbConnection::select("rtb_user_project", $data, null);

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

    public function insert_Project_member($members, $projectID, $role){

      $db = DbConnection::getInstance();


      $z=0;
      while($z < sizeof($members)){

        $mem = $members[$z];

        $x=0;
        while($x < sizeof($mem)){

          $data = array();
          $data["roleID"] = $role;
          $data["projectID"] = $projectID;
          $data["userID"] = $mem[$x];

          DbConnection::insert("rtb_user_project", $data, null);

          $x++;
        
      }


      $z++;
      }


    
    }

    public function delete_Project_member_specified($members, $projectID, $role){

      $db = DbConnection::getInstance();

      
        $x=0;
        while($x < sizeof($members)){

          $data = array();
          $data["roleID"] = $role;
          $data["projectID"] = $projectID;
          $data["userID"] = $members[$x];

          DbConnection::delete("rtb_user_project", $data, null);

          $x++;
        
      }
    }
}

?>
