<?php

require_once 'database.php';
require_once 'crud.php';

class payment_options implements crud
{

    public $opt_names = array();

    function __construct(array $ids)
    {

        if(sizeof($ids) != 0){

            $i = 0;
            while($i < sizeof($ids)){

                $data = array();
                $data['id'] = $ids[$i];
                $data['isdeleted'] = 0;

                $row = database::select("tb_options_payments", $data, null);
                array_push($this->opt_names, $row[0]["option_name"]);

                $i++;

            }
        }
    }

    public function _create(array $data)
    {
        // TODO: Implement _create() method.
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