<?php

require_once '../../model/page_html.php';

$pageID = $_POST['pageid'];
$html = $_POST['html'];
$h = new page_html(NULL);

$data = array($pageID, $html);

$h->_create($data);
