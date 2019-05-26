<?php

require_once 'database.php';
require_once 'crud.php';


class reference_paper implements crud
{
    public $id;

    public function _create(array $data)
    {
        $db = database::getInstance();

        $inserted_Data = array();
        $inserted_Data['userID'] = $data[0];

        $rand_num = database::rand_number("tb_reference_paper");
        $inserted_Data['rand_number'] = $rand_num;

        database::insert("tb_reference_paper", $inserted_Data);
        $newid = database::lastId();

        $this->id = $newid;

        $get_code = array();
        $get_code["id"] = $newid;
        $get_code["isdeleted"] = 0;

        $row = database::select("tb_reference_paper", $get_code, null); // returns single row data

        return $row[0]['rand_number'];
    }

    public function _read(array $conditions, array $like)
    {
        // TODO: Implement _read() method.
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