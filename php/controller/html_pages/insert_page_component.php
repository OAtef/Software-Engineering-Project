<?php


require_once '../../model/page_components.php';

$name = $_POST['name'];
$html = $_POST['html'];
$position = $_POST['position'];

$pc = new page_components(NULL);

$data = array($name, $html, $position);

$pc->_create($data);
