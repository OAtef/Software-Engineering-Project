<?php

require_once 'database.php';
require_once 'crud.php';

$db = database::getInstance();

class project_category implements crud
{

  public $id;
  public $category_name;

  function __construct($id){

      if($id != null){

          $data = array();
          $data['id'] = $id;
          $data["isdeleted"] = 0;

          $row = database::select("tb_project_category", $data, null);

          $this->id = $id;
          $this->category_name = $row[0]['category_name'];

      }

  }

  public function _create(array $data)
  {
      // TODO: Implement _create() method.
  }

  public function _read(array $conditions, array $like) {

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

  public function list_all()
  {
    $result = array();

    $rows = database::select("tb_project_category", null, null);

    for ($i=0; $i < sizeof($rows); $i++) {

      $result[$i] = new project_category($rows[$i]["id"]);
    }

    return $result;
  }

  public function _update(array $data, array $condition)
  {
      // TODO: Implement _update() method.
  }

  public function _delete(array $data)
  {
      // TODO: Implement _delete() method.
  }
}
