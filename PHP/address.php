<?php

include_once('dbConnection.php');

class Address
{
  public $id;
  public $address_name;
  public $addresstypeID;
  public $parentID;

  static function GetAddress($parentID)
  {
    $sql = "SELECT * FROM tb_address WHERE id = '$parentID'";

    $result = mysqli_query($GLOBALS["db"], $sql);

    $row = mysqli_fetch_array($result);

    echo $row["address_name"] . " ";

    if ($row["parentID"] != NULL)
    {
      GetAddress($row["parentID"]);
    }
  }

  static function GetAddressChildren($parentID)
  {
    $json = array();

    $sql = "SELECT * FROM tb_address WHERE parentID = '$parentID'";

    $result = mysqli_query($GLOBALS["db"], $sql);

    while($row = mysqli_fetch_array($result))
    {
      $json[] = $row;
    }

    return json_encode($json);
  }

}

?>
