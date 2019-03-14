<?php

include_once('../model/usertypes.php');

if(isset($_POST['function2call']) && !empty($_POST['function2call'])) {

  $function2call = $_POST['function2call'];

  if (isset($_POST["usertypeID"])) {
    $SelectedID = $_POST["usertypeID"];
  }

  switch($function2call) {
      case 'list':
        echo json_encode(UserTypes::list($SelectedID));
        break;
  }
}

?>
