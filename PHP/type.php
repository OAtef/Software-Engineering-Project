<?php

class Types
{

  public $ID;
  public $typename;

  function __construct(argument)
  {

  }
  function addType ($obj){

    $sql="INSERT INTO `usertype` (`id`, `typeName`)
          VALUES ('$obj->$ID', '$obj->$typename')";
    mysql_query($sql);

  }
  function deleteType ($obj){

    $delete_user_query = "DELETE FROM `usertype` WHERE `usertype`.`id` = $obj->$ID";

    mysqli_query($GLOBALS["db"], $delete_user_query);

    if (mysqli_affected_rows($GLOBALS["db"]) == 1) {
      return 1;
    }else{
      return 0;
    }

  }

  function updateType($obj){

    $update_user_query = "UPDATE usertype SET id='$obj->$ID', typeName='$obj->$typename'";

    mysqli_query($GLOBALS["db"], $update_user_query) or die(mysqli_error($mysqli));

    if (mysqli_affected_rows($GLOBALS["db"]) == 1) {
      return 1;
    }else{
      return 0;
    }

  }

}

?>
