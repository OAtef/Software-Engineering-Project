<?php

require_once 'database.php';
require_once 'crud.php';

class profile_photo implements crud {

    public $id;
    public $user_id;
    public $url;

    public function _create(array $data){

        $db = database::getInstance();

        $dataa = array();
        $dataa['url'] = $data[0]; // userID
        $dataa['userID'] = $data[1];  //url
        
        database::insert('tb_profile_photo', $dataa);
    }

    public function _delete(array $data) {
        $db = database::getInstance();

        $dataa = array();
        $dataa['userID'] = $data[0];

        database::delete("tb_profile_photo", $dataa, null);
    }


    public function _read(array $conditions, array $like) {

        $db = database::getInstance();

        $data = array();
        $this->user_id = $data['userID'] = $conditions[0];

        $row = database::select('tb_profile_photo', $data, null);

        return $row[0]['url'];
    }

    public function _update(array $data, array $condition) {

        $db = database::getInstance();

        $con = array();
        $con['userID'] = $data[1];  //url

        $dataa = array();
        $dataa['url'] = $data[0]; // userID

        database::update("tb_profile_photo", $dataa, $con);

    }

}
