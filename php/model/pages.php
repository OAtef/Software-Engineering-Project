<?php

require_once 'database.php';
require_once 'crud.php';


class page implements crud
{

    public function _create(array $data)
    {
        // TODO: Implement _create() method.
    }

    public function _read(array $conditions, array $like)
    {
        $db = database::getInstance();

        $sql = "SELECT `pageID` FROM `rtb_usertype_page` WHERE `usertypeID`='$conditions[0]' ORDER BY `order` ASC";
        $row = database::query($sql);

        if (!empty($row)) {

            $menu = array();

            $i = 0;
            while($i < sizeof($row)){

                $pageID = $row[$i]["pageID"];

                $sqlPage = "SELECT `name`, `class_name` FROM `tb_pages` WHERE `id`='$pageID' UNION SELECT `name`, `class_name` FROM `pages` WHERE `parent`='$pageID'";

                $row2 = database::query($sqlPage);

                $list = array();

                $j = 0;
                while($j < sizeof($row2)){

                    array_push($list, $row2[$j]['name']);
                    array_push($list, $row2[$j]['class_name']);

                    $iconSQL = "SELECT `icon_code` FROM `icon` WHERE `pageID`='$pageID'";
                    $icon = database::query($iconSQL);

                    if(!empty($icon)){
                        array_push($list, $icon['icon_code']);
                    }
                }

                array_push($menu, $list);
                unset($list);

            }
            return $menu;
        }
        else{
            return false;
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