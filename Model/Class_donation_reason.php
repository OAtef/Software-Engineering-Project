<?php

include_once('../config.api/dbConnection.php');

$db = DbConnection::getInstance();

class Class_donation_reason
{
    public $Id;
    public $reason;
    public $sendtoID;




    function __construct($id)

    {

        if ($id !="")
        {
            $data = array();
            $data["id"] = $id;
            $data["isdeleted"] = 0;

            $row=DbConnection::select("tb_donation_reason", $data,null);


                $this->reason=$row[0]["reason"];
                $this->sendtoID=$row[0]["sendtoID"];
                $this->Id=$id;



            }
        }

    function select_reasons_data(){

        $options = DbConnection::select("tb_donation_reason", null,null);

        $reasonsData = array();
        $i=0;

        while($i < sizeof($options)){

            $MyObj= new Class_donation_reason($options["id"]);
            $reasons[$i] = $MyObj;
            $i++;
        }
        return $reasonsData;

    }

    function select_reasons(){

        $options = DbConnection::select("tb_donation_reason", null,null);

        $reasons = array();
        $i=0;

        while($i < sizeof($options)){

            $reasons[$i] = $options[$i]["reason"];
            $i++;
        }
        return $reasons;

    }
    function select_by_name($reason_name)
    {
        $data = array();
        $data["reason"] = $reason_name;

        $row=DbConnection::select("tb_donation_reason", $data,null);
        $sendtoid = $row[0]["sendtoID"];

        return $sendtoid;
    }
}