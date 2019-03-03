<?php

include_once('../config.api/dbConnection.php');

class Address
{
  public $id;
  public $address_name;
  public $addresstypeID;
  public $parentID;

  static function GetAddress($parentID){
    $sql = "SELECT * FROM tb_address WHERE id = '$parentID'";

    $result = mysqli_query($GLOBALS["db"], $sql);

    $row = mysqli_fetch_array($result);

    echo $row["address_name"] . " ";

    if ($row["parentID"] != NULL)
    {
      GetAddress($row["parentID"]);
    }
  }

  static function GetAddressChildren($parentID){
    $json = array();

    $sql = "SELECT * FROM tb_address WHERE parentID = '$parentID'";

    $result = mysqli_query($GLOBALS["db"], $sql);

    while($row = mysqli_fetch_array($result))
    {
      $json[] = $row;
    }

    return json_encode($json);
  }

  function __construct($x){
  }

}

if(isset($_POST['function2call']) && !empty($_POST['function2call'])) {
  
  $function2call = $_POST['function2call'];
  $SelectedID = $_POST["addressID"];
  $address = new Address(NULL);

  switch($function2call) {
      case 'GetAddressChildren': 
        $address::GetAddressChildren($SelectedID);
        break;
  }
}

?>
