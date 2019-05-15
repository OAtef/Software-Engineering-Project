<?php

require_once 'database.php';
require_once 'crud.php';

class projectcategory
{

   public $id;
   public $category_name;

   public function __construct($id)
   {
     $db = database::getInstance();
     $data = array();

     if ($id != NULL) {

       $data["id"] = $id;
       $row = database::select("tb_project_category", $data, null);

       $this->id = $id;
       $this->category_name = $row[0]["category_name"];
    }
   }

   public function list_all()
   {
     $result = array();

     $rows = database::select("tb_project_category", null, null);

     for ($i=0; $i < sizeof($rows); $i++) {

       $result[$i] = new projectcategory($rows[$i]["id"]);
     }

     return $result;
   }

}
