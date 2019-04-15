<?php

include_once 'database.php';
include_once 'crud.php';

class project_category
{

  public $id;
  public $category_name;

  function __construct(){

  }

  function select_categories(){

    $db = database::getInstance();

    $data = array();

    $data["isdeleted"] = 0;
    $row = database::select("tb_project_category", $data, null); 

    $cats = array();

    $i = 0;
    while($i < sizeof($row)){

      $cats[$row[$i]['id']] =  $row[$i]['category_name'];

      $i++;
    }

    return $cats;


  }

  
}
?>