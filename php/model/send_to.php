<?php

require_once 'database.php';
require_once 'crud.php';

$db = database::getInstance();

class send_to implements crud
{
    public $id;
    public $receiver_name;
    public $receiver_mobile;
    public $receiver_Email;
    public $send_throughID;
    public $send_by;
    public $ref_id;


    function insert_receiver_data()
    {

         $data["receiver_name"] = $this->receiver_name;
         $data["receiver_Email"] = $this->receiver_Email;
         $data["receiver_mobile"] = $this->receiver_mobile;
         $data["send_throughID"] = $this->send_throughID;
         $data['send_by'] = $this->send_by;
         $data["ref_id"] = $this->ref_id;

        $r = database::insert("tb_send_to", $data);

        return $r;
    }


    public function _create(array $data)
    {
        // TODO: Implement _create() method.
    }

    public function _read(array $conditions, array $like)
    {
        $row = database::select("tb_send_to", $conditions, null);

        $this->id = $row[0]['id'];
        $this->receiver_name = $row[0]['receiver_name'];
        $this->receiver_mobile = $row[0]['receiver_mobile'];
        $this->receiver_Email = $row[0]['receiver_Email'];
        $this->send_throughID = $row[0]['send_throughID'];
        $this->send_by = $row[0]['send_by'];
        $this->ref_id = $row[0]['ref_id'];

    }

    public function _update(array $data, array $condition)
    {
        // TODO: Implement _update() method.
    }

    public function _delete(array $data)
    {
        // TODO: Implement _delete() method.
    }
}