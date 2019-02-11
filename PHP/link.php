<?php

include('dbConnection.php');

class Link
{

  public $ID;
  public $url;
  public $name;

  function __construct($id){

    $Query ="SELECT * FROM links WHERE id='$id'";
    $result = mysqli_query($GLOBALS["db"], $Query);

    if(mysqli_num_rows($result) == 1){

      while($row = mysqli_fetch_array($result)){
        $this->ID = $row["ID"];
        $this->url = $row["url"];
        $this->name = $row["name"];
      }
    }
  }

  function addLink($myLink){

    $InsertLinkQuery = "INSERT INTO links (id, url, name) VALUES (NULL, '$myLink->url', '$myLink->name')";
    if(mysqli_query($GLOBALS["db"], $InsertLinkQuery)){

    }else {

    }
  }

  function deleteLink($deleteID){

    $DeleteLinkQuery = "DELETE FROM links WHERE ID='$deleteID'";

    if(mysqli_query($GLOBALS["db"], $DeleteLinkQuery)){

    }else {

    }
  }

  static function updateLinks($obj){

    $update_Link_Query = "UPDATE links SET url='$obj->url', name='$obj->name'";

    if (mysqli_query($GLOBALS["db"], $update_Link_Query)) {

    }else{
      die(mysqli_error($mysqli));
    }
  }

  static function selectAllLinks(){

    $select_link_query ="SELECT * FROM links ORDER BY id";
    $dataSet = mysqli_query($GLOBALS["db"], $select_link_query);

    $i=0;
    $result_arr = NULL;

    while($row = mysqli_fetch_array($dataSet)){
      $myobj = new Link($row["id"]);
      $result_arr[$i] = $myobj;
      $i++;
    }
    return $result_arr;

  }

}


?>
