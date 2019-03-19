<?php

require_once ('../config.api/dbConnection.php');


class UserLinks
{
    public $id;
    public $usertypeID;
    public $linkID;

  function insert_Link($typeID, $linkID){

    $db = DbConnection::getInstance();

    $data = array();
    $data["usertypeID"] = $typeID;
    $data["linkID"] = $linkID;

    DbConnection::insert("rtb_user_links", $data);
  }

  function List_Links(){

    $db = DbConnection::getInstance();

    $data = array();
    $data["isdeleted"] = 0;
    $row = DbConnection::select("rtb_user_links", $data, null);

    $arr = array();

    $i=0;
    while($i < sizeof($row)){
      $multiresult = array();

      $multiresult[0] = $row[$i]["usertypeID"];
      $multiresult[1] = $row[$i]["linkID"];

      $arr[$row[$i]["id"]] = $multiresult;
      $i++;
    }

    return $arr;
  }

  function delete_Link($id){

    $db = DbConnection::getInstance();

    $data = array();
    $data["id"] = $id;

    DbConnection::delete("rtb_user_links", $data);
  }

  public function update_Link($id, $newTypeID, $newLinkID){

    $db = DbConnection::getInstance();

    $data = array();
    $condition = array();
    $condition["id"] = $id;
    $data["usertypeID"] = $newTypeID;
    $data["linkID"] = $newLinkID;
    $db->update("rtb_user_links", $data, $condition);
  }

}

?>
