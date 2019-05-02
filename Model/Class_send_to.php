<?php

include_once('../config.api/dbConnection.php');

$db = DbConnection::getInstance();

class Class_send_to
{
    public $id;
    public $receiver_name;
    public $receiver_mobile;
    public $receiver_Email;
    public $send_throughID;

    function insert_receiver_data($data)
    {
        $this->receiver_Email = $data["receiver_Email"];
        $this->receiver_mobile = $data["receiver_mobile"];
        $this->send_throughID = $data["send_throughID"];

    }
}