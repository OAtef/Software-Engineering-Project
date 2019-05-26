<?php

require_once('../../model/project_category.php');

$pc = new project_category(null);
$x = $pc->_read(array(), array());
echo json_encode($x);