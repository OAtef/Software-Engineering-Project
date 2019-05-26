<?php

include_once('database.php');
include_once('crud.php');


$db = database::getInstance();

class donation_reason implements crud
{
    public $id;
    public $reason;
    public $sendtoID;

    function __construct($id)
    {
        if($id != null){

            $data = array();
            $data["id"] = $id;
            $data["isdeleted"] = 0;
            $row = database::select("tb_donation_reason", $data,null);

            $this->id = $id;
            $this->reason = $row[0]["reason"];
            $this->sendtoID = $row[0]["sendtoID"];

        }
    }

    public function _create(array $data)
    {
        // TODO: Implement _create() method.
    }

    public function _update(array $data, array $condition)
    {
        // TODO: Implement _update() method.
    }

    public function _delete(array $data)
    {
        // TODO: Implement _delete() method.
    }

    public function _read(array $conditions, array $like)
    {

        $con['isdeleted'] = 0;

        $options = database::select("tb_donation_reason", $con,null);

        $reasons = array();
        $i=0;

        while($i < sizeof($options)){

            $reasons[$options[$i]["id"]] = $options[$i]["reason"];
            $i++;
        }
        return $reasons;
    }
}