<?php

require_once 'database.php';
require_once 'crud.php';

class theme implements crud {

    private $id;
    private $user_id;
    private $theme_links_id;

    public function _create(array $data) {
        $sql = "INSERT INTO `theme`( `user_id`, `theme_links_id`) VALUES ($data[0],$data[1])";
        $result = $this->booleanQuery($sql);
        return $result;
    }

    public function _read(array $conditions, array $like)  // To read selected theme
    {
        //$sql = "SELECT `theme_links_id` FROM `theme` WHERE `user_id`='$conditions[0]'";
        //$result = $this->dataQuery($sql);
        //if (!empty($result)) {
        //    $result2 = $this->update($data);
        //} else {
        //    $result2 = $this->create($data);
        //}
        //$code = $this->getThemeCode($data[1]);
        //return $code;
    }

    public function _update(array $data, array $condition)
    {
        //$sql = "UPDATE `theme` SET `theme_links_id`='$data[1]' WHERE `user_id`='$data[0]'";
        //$result = $this->booleanQuery($sql);
        //return $result;
    }

    public function _delete(array $data){}

    public function readUserTheme(array $data) {

        $db = database::getInstance();

        $conditions = array();
        $conditions['usertypeID'] = $data[0];

        $rows = database::select("rtb_usertype_theme", $conditions, null);
        if(!empty($rows)){
            $themeID = $rows[0]['themeID'];
        }else{
            $themeID = 1;
        }

        $code = $this->getThemeCode($themeID);
        return $code;
    }

    private function getThemeCode($themeID) {

        $db = database::getInstance();

        $conditions = array();
        $conditions['id'] = $themeID;

        $rows = database::select("tb_theme", $conditions, null);

        return $rows[0]['link'];
    }

}
?>




