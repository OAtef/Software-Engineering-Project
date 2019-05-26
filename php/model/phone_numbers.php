<?php

require_once 'database.php';
require_once 'crud.php';

class phone_numbers implements crud
{

    public $phone_num;

    function __construct($userID)
    {
        $db = database::getInstance();

        if($userID != null){

            $data["userID"] = $userID;
            $data["isdeleted"] = 0;

            $row = database::select("tb_phone_numbers", $data, null);

            if(sizeof($row) != 0){

                $this->phone_num = $row[0]["number"];
            }
        }
    }

    public function _create(array $data)
    {
        $db = database::getInstance();

        $info = array();
        $info['userID'] = $data[0];
        $info['number'] = $data[1];

        database::insert('tb_phone_numbers', $info);

    }

    public function _read(array $conditions, array $like) // conditions => array of userIDs
    {

        $db = database::getInstance();

        $i = 0;
        $phone_numbers = array();
        while($i < sizeof($conditions)){

            $data = array();
            $data['userID'] = $conditions[$i];

            $row = database::select("tb_phone_numbers", $data, null);

            if($row != null){
                array_push($phone_numbers, $row[0]["number"]);
            }
        }
        return $phone_numbers;
    }

    public function _update(array $data, array $condition)
    {
        $db = database::getInstance();

        $con = array();
        $con["userID"] = $condition[0];

        $update_data = array();
        $update_data["number"] = $data[0];


        database::update("tb_phone_numbers", $update_data, $con);
    }

    public function _delete(array $data)
    {
        $db = database::getInstance();

        $dataa = array();
        $dataa['userID'] = $data[0];

        database::delete("tb_phone_numbers", $dataa, null);
    }
}