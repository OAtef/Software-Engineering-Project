<?php

require_once 'database.php';
require_once 'crud.php';

class errors implements crud
{
    public $id;
    public $user_error;
    public $error_code;


    public function _create(array $data)
    {
        // TODO: Implement _create() method.
    }

    public function _read(array $conditions, array $like)
    {
        $db = database::getInstance();

        $data = array();
        $data['error_code'] = $conditions[0];

        $row = database::select("tb_errors", $data, null);

        if(!empty($row)){

            $this->id = $row[0]['id'];
            $this->error_code = $conditions[0];
            $this->user_error = $row[0]['user_error'];
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