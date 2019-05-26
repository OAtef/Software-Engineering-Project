<?php

require_once 'database.php';
require_once 'crud.php';

class page_components implements crud
{

    public function _create(array $data)
    {
        $db = database::getInstance();

        $name = $data[0];
        $html = $data[1];
        $position = $data[2];
        $usertypeID = $data[3];

        $dataa = array();
        $dataa['name'] = $name;
        $dataa['html'] = addslashes($html);
        $dataa['position'] = $position;

        database::insert('tb_page_components', $dataa);
    }

    public function _read(array $conditions, array $like) // get_page_components according to the user type
    {
        $db = database::getInstance();

        $rtb_data = array();
        $rtb_data["isdeleted"] = 0;
        $rtb_data["usertypeID"] = $conditions[0];

        $row = database::select("rtb_page_component_usertype", $rtb_data,null);

        if(!empty($row)) {
            $arr = array();
            $i = 0;
            while($i < sizeof($row)){

                $con = array();
                $con["isdeleted"] = 0;
                $con['id'] = $row[$i]["page_componentID"];

                $page_row = database::select("tb_page_components", $con,null);


                $inner_arr = array();
                array_push($inner_arr, $page_row[0]["html"]);
                array_push($inner_arr, $page_row[0]["position"]);

                array_push($arr, $inner_arr);

                $i++;
            }
        }

        return $arr;

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
