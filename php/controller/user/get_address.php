<?php

require_once '../../model/address.php';

if (isset($_POST["addressID"])) {
  $addressArr = address::GetAddressChildren($_POST["addressID"]);
  $form = '';

  for ($i=0; $i < sizeof($addressArr); $i++) {

    $form .= "<option value='".$addressArr[$i]->id."'> ".$addressArr[$i]->address_name." </option>";
  }

  echo json_encode($form);

}




?>
