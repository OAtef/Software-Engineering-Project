<?php

require_once ('../config.api/db.php');
require_once ('usertypes_class.php');
require_once ('users_class.php');
require_once ('uservalues_class.php');
require_once ('useroptions_class.php');


if(isset($_POST['function2call']) && !empty($_POST['function2call'])) {

  $function2call = $_POST['function2call'];
  $uv = new User_Values(NULL);
  $user = new Users(NULL);
  $ut = new UserTypes(NULL);

  switch($function2call) {
      case 'list_users' :
        $usertypeID = $_POST['usertypeID'];
        $x = $uv->select_values($usertypeID);
        echo json_encode($x);
        break;

      case 'update_user' :
        $values = $_POST['arr'];
        $userID = $_POST['userID'];
        $usertypeID = $_POST['usertypeID'];

        $uv->update_values($usertypeID, $userID, $values);
        break;

      case 'insert_user' :
        $values = $_POST['arr'];
        $usertypeID = $_POST['usertypeID'];
        $uv->insert_values($usertypeID, $values);
        break;

      case 'delete_user' :
        $userID = $_POST['userID'];
        $user->delete_user($userID);
        $uv->delete_values($userID);
        break;

      case 'list_userTypes' :
        $parentID = $_POST['parentID'];
        $x = $ut->list_usertypes($parentID);
        echo json_encode($x);
        break;

      case 'insert_subUserType' :
        $values = $_POST['arr'];
        $parentID = $_POST['parentID'];
        $ut->insert($parentID, $values);
        break;

        case 'label_header' :
          $parentID = $_POST['parentID'];
          $oo = new Options(NULL);
          $oo->select_allOptions($parentID);
          $x = $oo->headers_rows;
          echo json_encode($x);
          break;

  }
}

?>
