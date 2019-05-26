<?php

include_once 'database.php';
include_once 'crud.php';

class user_option implements crud
{

  public $id;
  public $option_name;
  public $typeID;
  public $ref_table;
  public $option_type;

    public $headers_rows = array();
    public $headers_table = array();

    function __construct($id) {

        if($id != null){

            $db = database::getInstance();

            $data = array();

            $data["id"] = $id;
            $data['isdeleted'] = 0;

            $row = database::select("tb_options_usertypes", $data, null);

            $this->id = $id;
            $this->option_name = $row[0]["option_name"];
            $this->option_type = $row[0]["option_type"];
            $this->typeID = $row[0]["typeID"];
            $this->ref_table = $row[0]["ref_table"];

        }
    }

    public function _create(array $data){

        $OptionName = $data[0];
        $OptionType = $data[1];
        $OptionTypeID = $data[2];

        if (!empty($OptionName) && !empty($OptionType) && !empty($OptionTypeID)) {

            $data = array();
            $data["option_name"] = $OptionName;
            $data["option_type"] = $OptionType;
            $data["typeID"] = $OptionTypeID;


            return database::insert("tb_options_usertypes", $data);
        }else {
            echo "Empty Fields";
        }
    }

    public function list_options(){

      $db = database::getInstance();
      $data = array();
      $result = array();

      $data["isdeleted"] = 0;

      $rows = database::select("tb_options_usertypes", $data, null);

      for ($i=0; $i < sizeof($rows); $i++) {

        $result[$i] = new user_option($rows[$i]["id"]);
      }

      return $result;
    }

    public function _read(array $conditions, array $like) { // condition[0] -- $parentID ,, condition[1] -- 'checked'

        $parentID = $conditions[0];
        $data = array();

        if($parentID != null){

            $db = database::getInstance();

            if (!is_numeric($parentID) && $parentID == "listAll") {

                $data["isdeleted"] = 0;

                $rows = database::select("tb_options_usertypes", $data, null);

                $i = 0;

                while($i < sizeof($rows)){

                    $multiresult = array();

                    $multiresult[0] = $rows[$i]["option_name"];
                    $multiresult[1] = $rows[$i]["option_type"];

                    $result[$rows[$i]["id"]] = $multiresult;
                    $i++;
                }
                return $result;
            }

            if(!is_numeric($parentID) && $parentID == "all"){

                $data["isdeleted"] = 0;

                $row = database::select("tb_options_usertypes", $data, null);

                $i = 0;
                while($i < sizeof($row)){
                    $this->headers_rows[$row[$i]["option_name"]] = $row[$i]["option_type"];
                    $this->headers_table[$row[$i]["option_name"]] = $row[$i]["ref_table"];
                    $i++;
                }
            }
            else if(is_numeric($parentID)){

                $data["usertypeID"] = $parentID;

                // condition needed in checked tables
                if (array_key_exists(1, $conditions)) {
                    $data["show_in_checked"] = 0;
                }

                $data["isdeleted"] = 0;

                $optionIDs = database::select("rtb_option_usertype", $data, null);

                $i=0;
                while($i < sizeof($optionIDs)){

                    $data1 = array();
                    $data1["id"] =  $optionIDs[$i]["optionID"];
                    $data1['isdeleted'] = 0;

                    $row = database::select("tb_options_usertypes", $data1, null);

                    $this->headers_rows[$row[0]["option_name"]] = $row[0]["option_type"];
                    $this->headers_table[$row[0]["option_name"]] = $row[0]["ref_table"];

                    $i++;
                }
            }
        }
    }

    public function _update(array $data, array $condition)
    {
        $db = database::getInstance();

        $con = array();
        $conditions["id"] = $condition[0];

        $data1 = array();
        $data1["option_name"] = $data[0];
        $data1["option_type"] = $data[1];
        $data1["typeID"] = $data[2];


        database::update("tb_options_usertypes", $data1, $conditions);
    }

    public function _delete(array $data)
    {
        $db = database::getInstance();

        $data1 = array();
        $data1["optionID"] = $data[0];
        database::delete("rtb_option_usertype", $data1);

        $data2 = array();
        $data2["id"] = $data[0];
        database::delete("tb_options_usertypes", $data2);
    }
}
