<?php

require_once 'database.php';
require_once 'crud.php';
require_once 'login.php';
require_once 'facade.php';
require_once 'manual_send.php';
require_once 'request_donation.php';

class project implements crud
{

    public $id;
    public $project_name;
    public $project_budget;
    public $inTake;
    public $num_of_phases;
    public $current_phase;
    public $notes;
    public $projectcategoryID;

    public $team_leaders;
    public $team_members;
    public $userID;
    public $projectID;
    public $roleID;

    function __construct($id)
    {

        $db = database::getInstance();

        if($id != null){

            $data = array();
            $data["id"] = $id;
            $data["isdeleted"] = 0;

            $row = database::select("tb_project", $data, null);

            if(sizeof($row) != 0){

                $this->id = $id;
                $this->project_name = $row[0]['project_name'];
                $this->project_budget = $row[0]['project_budget'];
                $this->inTake = $row[0]['inTake'];
                $this->num_of_phases = $row[0]['num_of_phases'];
                $this->notes = $row[0]['notes'];
                $this->projectcategoryID = $row[0]['projectcategoryID'];

            }


        }

    }

    public function _create(array $data)
    {
        $db = database::getInstance();

        $dataa = array();

        $dataa["project_name"] = $data[0];
        $dataa["project_budget"] = $data[1];
        $dataa["num_of_phases"] = $data[2];
        $dataa["projectcategoryID"] = $data[3];
        $dataa["notes"] = $data[4];

        database::insert("tb_project", $dataa);

        return (database::lastId());
    }

    public function insert_Project_Members($projectID, $users, $role)
    {
        $db = database::getInstance();

        $result = false;
        $data = array();

        for ($i = 0; $i < count($users); $i++) {

            $data["projectID"] = $projectID;
            $data["userID"] = $users[$i];
            $data["roleID"] = $role;

            $result = database::insert("rtb_user_project", $data);
            if (!$result)
                return $result;
        }

        return $result;

    }

    public function _read(array $conditions, array $like)
    {
        $db = database::getInstance();

        $data = array();
        $data["projectcategoryID"] = $conditions[0];
        $data["isdeleted"] = 0;

        $row = database::select("tb_project", $data, null);

        $projects = array();
        $i = 0;
        while ($i < sizeof($row)) {

            $arr = array();

            array_push($arr, $row[$i]["id"]);
            array_push($arr, $row[$i]["project_name"]);
            array_push($arr, $row[$i]["project_budget"]);
            array_push($arr, $row[$i]["inTake"]);
            array_push($arr, $row[$i]["current_phase"]);
            array_push($arr, $row[$i]["num_of_phases"]);
            array_push($arr, $row[$i]["notes"]);


            array_push($projects, $arr);

            $i++;
        }

        return $projects;
    }

    public function list_project_members($projectID)
    {

        $db = database::getInstance();

        $data = array();
        $data["projectID"] = $projectID;
        $data["isdeleted"] = 0;

        $row = database::select("rtb_user_project", $data, null);

        $team_leader = array();
        $team_member = array();
        $donators = array();


        $i = 0;
        while ($i < sizeof($row)) {
            if ($row[$i]["roleID"] == 1) {
                array_push($team_leader, $row[$i]["userID"]);
            }
            if ($row[$i]["roleID"] == 2) {
                array_push($team_member, $row[$i]["userID"]);
            }
            if ($row[$i]["roleID"] == 3) {
                array_push($donators, $row[$i]["userID"]);
            }
            $i++;
        }

        $arr = array();
        $arr[0] = $team_leader;
        $arr[1] = $team_member;
        $arr[2] = $donators;

        return $arr;

    }

    public function _update(array $data, array $condition)
    {
        $con = array();
        $con['id'] = $condition[0];

        $dataa = array();

        if($this->project_name != $data[0]){
            $dataa['project_name'] = $data[0];
        }
        if($this->project_budget != $data[1]){
            $dataa['project_budget'] = $data[1];
        }
        if($this->num_of_phases != $data[2]){
            $dataa['num_of_phases'] = $data[2];
        }
        if($this->current_phase != $data[3]){
            $dataa['current_phase'] = $data[3];

            $this->notifiy_phase_change($condition[0], $data[3]);

        }
        if($this->notes != $data[4]){
            $dataa['notes'] = $data[4];
        }

        if(sizeof($dataa) != 0){
            $result = database::update('tb_project', $dataa, $con);
            return $result;
        }
        return true;
    }

    public function _delete(array $data)
    {
        $db = database::getInstance();

        $array_data = array();

        $dataa = array();
        $dataa["id"] = $data[0];
        database::delete("tb_project", $dataa, null);

        $data1 = array();
        $data1["projectID"] = $data[0];
        $data1["isdeleted"] = 0;
        database::delete("rtb_user_project", $data1, null);

        $row = database::select("rtb_req_donation_project", $data1, null);
        if(!empty($row)){

            $i = 0;
            while($i < sizeof($row)){
                $array_data[$row[$i]['req_donationID']] = $row[$i]['taken_amount'];
                $i++;
            }
        }

        $rq = new request_donation(null);
        $rq->return_money($array_data);

        database::delete("rtb_req_donation_project", $data1, null);

    }

    public function insert_money($projectID, $money)
    {

        $db = database::getInstance();

        $sql = 'UPDATE tb_project SET inTake = inTake + ' . $money . 'WHERE id =' . $projectID;
        database::execute($sql);


    }

    public function list_conditioned($project_category_id){

        $query = "SELECT * FROM tb_project WHERE project_budget > inTake and projectcategoryID = $project_category_id and isdeleted = 0";
        $row = database::query($query);

        $arr = array();

        if(!empty($row)){

            $i = 0;
            while($i < sizeof($row)){

                $arr[$row[$i]["id"]] = $row[$i]["project_name"];
                $i++;

            }

            return $arr;

        }

    }

    public function remove_project_member($projectID, $users, $role){

        $db = database::getInstance();

        $data = array();
        $data["projectID"] = $projectID;
        $data["roleID"] = $role;

        for ($i = 0; $i < count($users); $i++) {

            $data["userID"] = $users[$i];
            database::delete("rtb_user_project",$data);

        }

    }

    public function notifiy_phase_change($projectID, $phaseNo){

        $db = database::getInstance();

        $arr = $this->list_project_members($projectID);

        $donators = $arr[2];
        $i = 0;
        while($i < sizeof($donators)){

            $log = new login($donators[$i]);

            $sm = new manual_send();
            $sm->emails = array($log->email);

            $i++;

        }

        $facade = new facade(null);
        $sm->deatch($facade->sms);
        $sm->deatch($facade->whatsapp);

        $msg = new messages(200);

        $the_Message = str_replace("__phaseNo__", $phaseNo ,$msg->content);

        $sm->massage_content = $the_Message;
        $sm->massage_subject = $msg->subject;
        $sm->notify();
    }

}

