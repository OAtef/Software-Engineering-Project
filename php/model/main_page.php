<?php

require_once 'database.php';
require_once 'crud.php';

class main_page implements crud
{

    public $id;
    public $name;
    public $link;
    public $usertypeID;

    function __construct($id)
    {
        if($id != null){

            $data = array();
            $data['id'] = $id;
            $data['isdeleted'] = 0;

            $row = database::select('tb_main_page', $data, null);

            if(!empty($row)){
                $this->id = $id;
                $this->link = $row[0]['link'];
                $this->name = $row['name'];
                $this->usertypeID = $row['usertypeID'];
            }

        }
    }


    public function _create(array $data)
    {
        // TODO: Implement _create() method.
    }

    public function _read(array $conditions, array $like)
    {
        $db = database::getInstance();

        $data = array();
        $data['usertypeID'] = $conditions[0];
        $data['isdeleted'] = 0;

        $row = database::select('tb_main_page', $data, null);

        if(!empty($row)){
            $this->id = $row[0]['id'];
            $this->link = $row[0]['link'];
            $this->name = $row['name'];
            $this->usertypeID = $conditions[0];
        }
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