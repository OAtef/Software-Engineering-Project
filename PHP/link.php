<?php

include('dbConnection.php');

class Link
{

  public $ID;
  public $url;
  public $name;

  function __construct(argument)
  {

  }

  function addLink($myLink){

    $InsertLinkQuery = "INSERT INTO links (id, url, name) VALUES (NULL, '$myLink->url', '$myLink->name')";
    if($result = mysqli_query($db, $InsertLinkQuery)){

    }else {

    }

  }

  function deleteLink($deleteID){

    $DeleteLinkQuery = "DELETE FROM links WHERE ID='$deleteID'";

    if($result = mysqli_query($db, $DeleteLinkQuery)){

    }else {

    }

  }

}


?>
