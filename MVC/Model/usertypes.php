<?php

include_once('../config.api/dbConnection.php');

class UserTypes
{

  public $id;
  public $usertype_name;
  public $parentID;

  static function Get_usertype($parentID){
    $sql = "SELECT * FROM tb_usertype WHERE id = '$parentID'";

    $result = mysqli_query($GLOBALS["db"], $sql);

    $row = mysqli_fetch_array($result);

    if ($row["parentID"] != NULL)
    {
      Get_usertype($row["parentID"]);
    }
  }

  static function Get_usertype_children($parentID){

    $arr = array();

    $sql = "SELECT id,usertype_name FROM tb_usertype WHERE parentID = '$parentID'";
    $result = mysqli_query($GLOBALS["db"], $sql);

    while($row = mysqli_fetch_array($result)){

      array_push($arr, $row[0]);
      array_push($arr, $row[1]);

    }
      echo json_encode($arr);
  }

  function insert($parentID, $names){
      $i = 0;
      while( $i < sizeof($names)){
        $query = "INSERT tb_usertype (usertype_name, parentID) VALUES ($names[$i], $parentID[$i])";
        mysqli_query($GLOBALS["db"], $query);
        $i++;
      }
  }

  function update($id, $name){

    $query = "UPDATE tb_usertype SET usertype_name='$name' WHERE id='$id'";
    mysqli_query($GLOBALS["db"], $query);

  }

  function delete($id){

    $query = "UPDATE tb_usertype SET isdeleted='1' WHERE id='$id'";
    mysqli_query($GLOBALS["db"], $query);


  }

}

if(isset($_POST['function2call']) && !empty($_POST['function2call'])) {

  $function2call = $_POST['function2call'];
  $SelectedID = $_POST["usertypeID"];
  $ut = new UserTypes(NULL);

  switch($function2call) {
      case 'Get_usertype_children':
        $ut::Get_usertype_children($SelectedID);
        break;
  }
}

?>
