<?php

class UserLinks
{

  public $ID;
  public $typeid;
  public $linkid;

  function __construct(argument)
  {
$sql ="SELECT * FROM userlink WHERE id='$id'";
    $result = mysqli_query($GLOBALS["db"], $sql);

    if(mysqli_num_rows($result) == 1){

      while($row = mysqli_fetch_array($result)){
        $this->ID = $row["id"];
        $this->typeid = $row["typeID"];
        $this->linkid = $row["LinkID"];
       
                                     }
                                               }
  }

 function addlink ($obj){

   $sqladd="INSERT INTO userlink (id, typeID, LinkID) VALUES ( '$obj->typeid', '$obj->linkid')";
    mysqli_query($GLOBALS["db"], $sqladd);
 }


function deletelink ($obj){

$sqldelete="DELETE FROM userlink WHERE ID = '$obj->ID'";
        mysqli_query($GLOBALS["db"], $sqldelete);

}

function updatelink (){

 $sqlupdate="UPDATE userlink SET typeID ='$typeid', LinkID ='$linkid' ";
   mysqli_query($GLOBALS["db"], $sqlupdate);

}


}


?>
