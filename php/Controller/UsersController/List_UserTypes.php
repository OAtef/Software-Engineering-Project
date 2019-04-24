<?php

require_once ('../../Model/usertypes.php');
require_once ('../../View/UserTypeV.php');

$ut = new usertypes(NULL);

$parentID = $_POST['parentID'];
if (is_numeric($parentID)) {

  $x = $ut->list_usertypesTest($parentID);
  $options = UserTypeV::ShowTypeOption($x);
  echo json_encode($options);

}else {

  $x = $ut->list_usertypesTest($parentID);
  $table = UserTypeV::showList($x);
  echo json_encode($table);
}


?>
