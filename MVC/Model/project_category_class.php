<?php

include_once('../config.api/dbConnection.php');

class Project_Category
{

  public $id;
  public $category_name;

  function __construct(){

    $db = DbConnection::getInstance();

  
  
  }

  function select_categories(){

    $db = DbConnection::getInstance();

    $data = array();

    $data["isdeleted"] = 0;
    $row = DbConnection::select("tb_project_category", $data, null); 

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