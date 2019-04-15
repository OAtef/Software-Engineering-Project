<?php

require_once ('../config.api/dbConnection.php');

class From
{
  public $id;
  public $form_name;

  public $options = array();

  function __construct($id){  // get a certain 


  
  }

  function get_form_options($form_name){

    $db = DbConnection::getInstance();

    $data = array();
    $like = array();
    $like["form_name"] = $form_name;
    $data["isdeleted"] = 0;

    $row = DbConnection::select("tb_forms", $data, $like);

    $data1 = array();
    $data1["formID"] = $row[0]["id"];
    $data1["isdeleted"] = 0;

    $row2 = DbConnection::select("rtb_option_form", $data1, null);

    $i = 0;
    $options = array();
    $option_id = array();
    
    while($i < sizeof($row2)){
      $options_ids = $row2[$i]["optionID"];
      $opt = new Options($options_ids);
    
      $arr = array();
      array_push($arr, $opt->option_name);
      array_push($arr, $opt->option_type);
    
      array_push($option_id, $opt->id);

      $options[$i] = $arr;
      $i++;
    }
  $this->options = $options;

  session_start();
  $_SESSION['option_id'] = $option_id;
  }

  function insert_form(){

  }

  function delete_form(){

  }

  function update_form(){

  }

  function list_form(){

  }

}

  


?>