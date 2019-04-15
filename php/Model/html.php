<?php

include_once 'database.php';
include_once 'crud.php';
include_once 'pages.php';

class html implements crud {

    public function _create(array $data) {
        // $page_name, $html

        $db = database::getInstance();

        $dataa = array();
        $dataa["page_name"] = $data[0];
        $dataa["HTML"] = addslashes($data[1]);

        database::insert("tb_links", $dataa);
    }

    public function _update(array $data, array $condition)
    {
        // TODO: Implement _update() method.
    }

    public function _delete(array $data)
    {
        $db = database::getInstance();

        $dataa = array();
        $dataa["id"] = $data[0];

        database::delete("tb_links", $dataa);
    }

    public function _read(array $conditions, array $like) { // read page

        $db = database::getInstance();

        $sql = "SELECT `html` FROM `tb_html` WHERE `page_id`= (SELECT `id` FROM `pages` WHERE `class_name`='$conditions[0]')";
        $row = database::query($sql);
        return $row;
    }

}
