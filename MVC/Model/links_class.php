<?php

require_once ('../config.api/dbConnection.php');


class Links
{
    public $id;
    public $page_name;
    public $HTML;

  function __construct($userid){

    $db = DbConnection::getInstance();
    if($userid != null){
        $user = new Users($userid);

        $ut = new UserTypes(null);
        $ut->get_root($user->usertypeID);
        $rootID = $ut->id;

        $data = array();
        $data["usertypeID"] = $rootID;
        $data["isdeleted"] = 0;

        $row = DbConnection::select("rtb_user_links", $data, null);

        $data1 = array();
        $data1["id"] = $row[0]["linkID"];
        $data1["isdeleted"] = 0;

        $row1 = DbConnection::select("tb_links", $data1, null);

        if($row1 == null){ // get this to js
            // redirect
            echo "error null returned - redirect";
        }
        else{
            $this->id = $row1[0]["id"];
            $this->HTML = stripslashes($row1[0]["HTML"]);
            $this->page_name = $row1[0]["page_name"];
        }
    }
  }

  function insert_page($page_name, $html){

    $db = DbConnection::getInstance();

    $data = array();
    $data["page_name"] = $page_name;
    echo $page_name;
    $data["HTML"] = addslashes($html);
    echo $html;

    DbConnection::insert("tb_links", $data);
  }

  function delete_page($id){

    $db = DbConnection::getInstance();

    $data = array();
    $data["id"] = $id;

    DbConnection::delete("tb_links", $data);
  }

  function get_pages(){

    $db = DbConnection::getInstance();

    $data = array();
    $data["isdeleted"] = 0;
    $row = DbConnection::select("tb_links", $data, null);

    $arr = array();

    $i=0;
    while($i < sizeof($row)){
        $arr[$row[$i]["id"]] = $row[$i]["page_name"];
        $i++;
    }

    return $arr;
  }

  function modify_page(){


  }


}

?>
