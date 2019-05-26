<?php

require_once 'database.php';
require_once 'crud.php';

class daily_donations implements crud
{
    public $id;
    public $amount;
    public $category;

    function __construct($category)
    {
        $db = database::getInstance();

        $data = array();
        $data['date'] = date("Y/m/d");
        $data['projectCategoryID'] = $category;

        $row = database::select('tb_daily_donation', $data, array());

        if(!empty($row)){
            $this->id = $row[0]['id'];
            $this->amount = $row[0]['amount'];
        }
    }

    public function _create(array $data)
    {
        $db = database::getInstance();

        $dataa = array();
        $dataa['date'] = date("Y/m/d");
        $dataa['projectCategoryID'] = $data[0];

        database::insert("tb_daily_donation", $dataa);

        return database::lastId();

    }

    public function _read(array $conditions, array $like)
    {
        // TODO: Implement _read() method.
    }

    public function _update(array $data, array $condition)
    {
        $db = database::getInstance();

        $con = array();
        $con["date"] = date("Y/m/d");
        $con['projectCategoryID'] = $data[1];

        $dataa = array();
        $dataa["amount"] = $data[0];


        database::update("tb_daily_donation", $dataa, $con);
    }

    public function _delete(array $data)
    {
        $db = database::getInstance();

        $dataa = array();
        $dataa["id"] = $data[0];

        database::delete("tb_daily_donation", $dataa);
    }

}