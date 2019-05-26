<?php

require_once 'database.php';

$db = database::getInstance();

class send_through
{
   public $id;
   public $through_tech;

   function __construct($id)
   {
       if($id != null){

           $data = array();
           $data["id"] = $id;
           $data['isdeleted'] = 0;

           $row=database::select("tb_send_through", $data,null);

           $this->id = $id;
           $this->through_tech = $row[0]['through_tech'];

       }
   }

    function select_tecs()
    {

        $data['isdeleted'] = 0;

        $options = database::select("tb_send_through", $data,null);

        $tecs = array();
        $i=0;

        while($i < sizeof($options)){

            $tecs[$options[$i]["id"]] = $options[$i]["through_tech"];
            $i++;
        }
        return $tecs;
    }


}