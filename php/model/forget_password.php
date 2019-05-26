<?php

require_once 'database.php';
require_once 'crud.php';

class forget_password implements crud
{

    public $temp;
    public $email;
    public $used;

    function __construct($tempPass)
    {
        $db = database::getInstance();
        $data = array();
        $data["tempPassword"] = $tempPass;

        $row = database::select("tb_forget_password_data", $data , null);

        if(!empty($row)){
            $this->email = $row[0]["email"];
            $this->used = $row[0]["used"];

        }

    }

    public function _create(array $data)
    {
        $string = rand(0,255);
        $string = substr(md5($string),20);

        $db = database::getInstance();
        $data = array();
        $data["tempPassword"] = $string;
        $data["email"] = $data[0] ;

        $return = $db::insert("tb_forget_password_data",$data,null);
        if($return == true){
            $this->temp = $string;
        }
        return $return;
    }

    public function _read(array $conditions, array $like)
    {
        // TODO: Implement _read() method.
    }

    public function _update(array $data, array $condition)
    {
        $update_forget = array();
        $update_forget['used'] = 1;

        database::update("tb_forget_password_data", $update_forget , $data);
    }

    public function _delete(array $data)
    {
        // TODO: Implement _delete() method.
    }
}