<?php

require_once 'database.php';
require_once 'crud.php';

class usertypes
{

  public $id;
  public $usertype_name;
  public $parentID;
  public $rOUT_ids = array();

  function __construct(array $variables) {

      $db = database::getInstance();
      $data = array();
      $data1 = array();

      if (sizeof($variables) != 0) {

        $usertypeID = $variables[0];

          // get the parent
        $this->id = $data["id"] = $usertypeID;
        $row = database::select("tb_usertype", $data, null);

        $this->usertype_name = $row[0]["usertype_name"];
        $this->parentID =  $row[0]["parentID"];

        if($row[0]["parentID"] == 0){
          $data1["usertypeID"] = $usertypeID;
        }else{
          $data1["usertypeID"] = $row[0]["parentID"];
        }

        $data1["isdeleted"] = 0;

        if(array_key_exists(1, $variables)){
          $data1["show_in_checked"] = 0;
        }

        $rows_rout = database::select("rtb_option_usertype", $data1, null);



        $i=0;
        while($i < sizeof($rows_rout)){
          $this->rOUT_ids[$i] = $rows_rout[$i]["id"];
          $i++;
        }
      }
  }

  public function list_usertypes($parentID){

    $db = database::getInstance();

    $result = array();
    $mainTypeID = array();
    $mainTypeName = array();
    $data = array();

    if($parentID != NULL){

      if(!is_numeric($parentID) && $parentID == "all"){

        $data["isdeleted"] = 0;

        $rows = database::select("tb_usertype", $data, null);

        $i = 0;
        $j = 0;

        while($i < sizeof($rows)){

          $multiresult = array();

          $UserTypeName = $rows[$i]["usertype_name"];

          $multiresult[0] = $UserTypeName;

          if ($rows[$i]["parentID"] == 0) {

            $mainTypeID[$j] = $rows[$i]["id"];
            $mainTypeName[$j] = $rows[$i]["usertype_name"];

            $multiresult[1] = 'Main Type';
            $j++;
          }else {
            for ($x=0; $x < sizeof($mainTypeID); $x++) {

              if ($mainTypeID[$x] == $rows[$i]["parentID"]) {

                $multiresult[1] = $mainTypeName[$x];
              }
            }
          }
          $result[$rows[$i]["id"]] = $multiresult;
          $i++;
        }
        return $result;
      }
      else if(is_numeric($parentID)){

        $data["parentID"] = $parentID;
        $data["isdeleted"] = 0;

        $rows = database::select("tb_usertype", $data, null);

        $i = 0;
        while($i < sizeof($rows)){

          $result[$rows[$i]["id"]] = $rows[$i]["usertype_name"];
          $i++;
        }

        return $result;
      }
    }
  }

  public static function list_usertypesTest($parentID){

  $db = database::getInstance();

  $result = array();
  $data = array();

  if($parentID != NULL){

    if(!is_numeric($parentID) && $parentID == "all"){

      $data["isdeleted"] = 0;

      $rows = database::select("tb_usertype", $data, null);

      for ($i=0; $i < sizeof($rows); $i++) {

        $result[$i] = new usertypes(array($rows[$i]["id"]));
      }

      return $result;
    }
    else if(is_numeric($parentID)){

      $data["parentID"] = $parentID;
      $data["isdeleted"] = 0;

      $rows = database::select("tb_usertype", $data, null);

      for ($i=0; $i < sizeof($rows); $i++) {

        $result[$i] = new usertypes(array($rows[$i]["id"]));
      }

      return $result;
    }
  }
}

  public function insert($parentID, $names){

    // $db = database::getInstance();
    //
    //   $i = 0;
    //   $newarr = self::get_values($names, "=" , "&");
    //   while( $i < sizeof($newarr)){
    //
    //     $data = array();
    //     $data["usertype_name"] = $newarr[$i];
    //     $data["parentID"] = $parentID[$i];
    //
    //     database::insert("tb_usertype", $data);
    //     $i++;
    //   }

    $db = database::getInstance();

    $data = array();
    $data["usertype_name"] = $names;
    $data["parentID"] = $parentID;
    // $data["isdeleted"] = 0;

    return ($db->insert("tb_usertype", $data));
  }

  public function update($id, $name, $ParentTypeID){

    $db = database::getInstance();

    $data = array();
    $condition = array();
    $condition["id"] = $id;
    $data["usertype_name"] = $name;
    $data["parentID"] = $ParentTypeID;
    $db->update("tb_usertype", $data, $condition);
    $this->id = $id;
    $this->usertype_name = $name;
  }

  public function delete($id){

    $db = database::getInstance();

    $data = array();
    $data["id"] = $id;

    $db->delete("tb_usertype", $data);
  }

  // private function get_values($str, $startDelimiter, $endDelimiter) {
  //   $contents = array();
  //
  //   $startDelimiterLength = strlen($startDelimiter);
  //   $endDelimiterLength = strlen($endDelimiter);
  //   $startFrom = $contentStart = $contentEnd = 0;
  //
  //   while (false !== ($contentStart = strpos($str, $startDelimiter, $startFrom))) {
  //     $contentStart += $startDelimiterLength;
  //     $contentEnd = strpos($str, $endDelimiter, $contentStart);
  //
  //     if (false === $contentEnd) {
  //       break;
  //     }
  //
  //     $v = substr($str, $contentStart, $contentEnd - $contentStart);
  //     $contents[] = str_replace('%40', '@', $v);
  //     $startFrom = $contentEnd + $endDelimiterLength;
  //   }
  //
  //   return $contents;
  // }
  //
  // public function get_root($usertypeID){
  //
  //   $db = database::getInstance();
  //   $data = array();
  //
  //   $data["id"] = $usertypeID;
  //   $data["isdeleted"] = 0;
  //   $row = database::select("tb_usertype", $data, null);
  //
  //   if($row[0]["parentID"] != 0){
  //
  //     $this->get_root($row[0]["parentID"]);
  //
  //   }else{
  //     $this->id = $row[0]["id"];
  //   }
  // }
  //
  // public function get_usertype(array $data){
  //
  //   $db = database::getInstance();
  //
  //   $dataa = array();
  //   $dataa["id"] = $data[0];
  //
  //   $rows = database::select("tb_users", $dataa, null);
  //
  //   $this->id = $rows["usertypeID"];
  //   $this->usertype_name = $rows['usertype_name'];
  //   $this->parentID = $rows['parentID'];
  //
  //   return $rows["usertypeID"];
  //
  // }



}


?>
