<?php

include_once 'database.php';
include_once 'crud.php';

class page_html implements crud {

    public function _create(array $data)
    {
        $db = database::getInstance();

        $pageID = $data[0];
        $html = $data[1];

        $dataa = array();
        $dataa['pageID'] = $pageID;
        $dataa['html'] = addslashes($html);

        database::insert('tb_html', $dataa);
    }

    public function _read(array $conditions, array $like) {

        $db = database::getInstance();

        $data = array();
        $data['usertypeID'] = $conditions[0];

        $result = database::select('rtb_usertype_page', $data, null);

        if (sizeof($result) != 0) {
            $menu = array();

            foreach ($result as $value) {

                $pageID = $value['pageID'];

                $sqlPage = "SELECT name, class_name FROM tb_pages WHERE id=$pageID UNION SELECT name, class_name FROM tb_pages WHERE parent=$pageID";
                $items = database::query($sqlPage);

                if (!empty($items)) {
                    $list = array();
                    foreach ($items as $value2) {

                        array_push($list, $value2['name']);
                        array_push($list, $value2['class_name']);
                        $icon_code = "";

                        $dataa = array();
                        $dataa['pageID'] = $pageID;

                        $row3 = database::select('tb_page_icon', $dataa, null);
                        if (!empty($row3)) {
                            foreach ($row3 as $valueIcon) {
                                array_push($list, $valueIcon['icon_code']);
                                break;
                            }
                        }
                    }
                }
                array_push($menu, $list);
                unset($list);
            }

            return $menu;
        } else {
            return array();
        }

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

        database::delete("tb_html", $dataa);
    }

    public function read_page($pageClassName) {

        $db = database::getInstance();

        $sql = "SELECT `html` FROM `tb_html` WHERE `pageID`= (SELECT `id` FROM `tb_pages` WHERE `class_name`='$pageClassName')";
        $result = database::query($sql);
        return $result;
    }
}
