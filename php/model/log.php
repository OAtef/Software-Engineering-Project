<?php

require_once 'database.php';

class log
{

    public $id;
    public $action;


    public function log_info()
    {

        $db = database::getInstance();

        $row = $db::select("tb_data_log", null, null);
        $array = array();
        $sumofarrays = array();
         $i = 0 ;
        for ( $i = 0; $i<sizeof($row); $i++)
        {
            $array[$i] = $row[$i]["action"];
            $arraytime[$i] = $row[$i]["action_time"];

            $sumofarrays[0][$i] =  $array[$i];
            $sumofarrays[1][$i] = $arraytime[$i];
        }



        return $sumofarrays;

    }
}

