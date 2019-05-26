<?php

require_once '../../model/project_category.php';

$pro_cat = new project_category(null);
$x = $pro_cat->_read(array(), array());

echo json_encode($x);

