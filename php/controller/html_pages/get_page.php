<?php

require_once '../../model/page_html.php';

session_start();
$_SESSION['usertype_dropnum'] = 0; // used in viewing dropdowns

$h1 = new page_html();
$pageClassName = $_POST['page'];
$result = $h1->read_page($pageClassName);
if (!empty($result)) {
    foreach ($result as $value) {
        echo $value['html'];
    }
}