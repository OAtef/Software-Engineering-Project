<?php

include_once('../config.api/dbConnection.php');

$db = DbConnection::getInstance();

class Class_send_through
{
   public $id;
   public $through_tech;

function select_tecs()
{

    $options = DbConnection::select("tb_send_through", null,null);

    $tecs = array();
    $i=0;

    while($i < sizeof($options)){

        $tecs[$i] = $options[$i]["through_tech"];
        $i++;
    }
    return $tecs;
}
}