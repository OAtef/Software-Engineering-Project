<?php

require_once '../../model/daily_donations.php';

$cat = $_POST['categoryID'];

$don = new daily_donations($cat);

if($don->amount != null){ // thier is today's date

    $arr = array($don->id, $don->amount);

    echo json_encode($arr);

}else{

    $id = $don->_create(array($cat));

    $arr = array($id, 0);

    echo json_encode($arr);
}
