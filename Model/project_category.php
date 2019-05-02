<?php

include_once('../config.api/dbConnection.php');

$db = DbConnection::getInstance();

class project_category
{

  public $id;
  public $category_name;

  function __construct(){

  }

  function select_categories(){



    $data = array();

    $data["isdeleted"] = 0;
    $row = DbConnection::select("tb_project_category", $data, null);

    $cats = array();

    $i = 0;
    while($i < sizeof($row)){

      $cats[$i] =  $row[$i]['category_name'];

      $i++;
    }

    return $cats;


  }

  
}
