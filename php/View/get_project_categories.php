<?php

include_once '../Model/project_category.php';

$pro_cat = new project_category(null);
echo json_encode($pro_cat->select_categories());

?>