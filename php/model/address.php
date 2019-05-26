<?php

include_once 'database.php';

class address
{
  public $id;
  public $address_name;
  public $parentID;

  public $finaladdress = array();

  public function __construct($id){

    if($id != null){

        $db = database::getInstance();

        $data = array();

        $data["id"] = $id;
        $data['isdeleted'] = 0;

        $row = database::select("tb_address", $data, null);

        $this->id = $id;
        $this->address_name = $row[0]["address_name"];
        $this->parentID = $row[0]["parentID"];
    }
  }

  public function GetAddress($id){

    $db = database::getInstance();

    $data = array();

    $data["id"] = $id;
    $data["isdeleted"] = 0;

    $row = database::select("tb_address", $data, null);

    if ($row[0]["parentID"] != 0)
    {
      address::GetAddress($row[0]["parentID"]);

    }
    array_push($this->finaladdress, new address($row[0]["id"]));
  }

  public static function GetAddressChildren($parentID){

    $db = database::getInstance();

    $data = array();
    $result = array();

    $data["parentID"] = $parentID;
    $data["isdeleted"] = 0;

    $row = database::select("tb_address", $data, null);

    for ($i=0; $i < sizeof($row); $i++) {
      $result[$i] = new address($row[$i]["id"]);
      // echo $row[$i]["address_name"] . " ";
    }
    return $result;
  }
}
