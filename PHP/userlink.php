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
       

 function addlink ($obj){

   $sql="INSERT INTO `userlink` (`id`, `typeID`, `LinkID`) VALUES ( '$obj->typeid', '$obj->linkid')";
   mysql_query($sql);
 }


function deletelink ($obj){

$sql="DELETE FROM `userlink` WHERE `userlink`.`ID` = '$obj->ID'";
        mysql_query($sql);

}

function updatelink (){

 $sql="UPDATE `userlink` SET `typeID` ='$typeid', `LinkID` ='$linkid' ";
  mysql_query($sql);

}


}


?>
