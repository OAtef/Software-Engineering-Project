<?php

require_once ('../Model/usertypes.php');
require_once ('../Model/users.php');
require_once ('../Model/uservalues.php');
require_once ('../Model/useroptions.php');
require_once ('../Model/login.php');
require_once ('../Model/project_category.php');
require_once ('../Model/user_Links.php');


if(isset($_POST['function2call']) && !empty($_POST['function2call'])) {

  $function2call = $_POST['function2call'];
  $uv = new User_Values(NULL);
  $user = new Users(NULL);
  $ut = new usertypes(NULL);
  $TypeOptions = new user_options(NULL);
  $usLinks = new UserLinks();


  switch($function2call) {
      case 'list_users' :
        break;

      case 'update_user' :
        break;

      case 'insert_user' :
        break;

      case 'delete_user' :
        break;

      case 'insert_subUserType' :
        $values = $_POST['arr'];
        $parentID = $_POST['parentID'];
        $ut->insert($parentID, $values);
        break;

      case 'List_usertypes' :
        $parentID = $_POST['parentID'];
        $x = $ut->list_usertypes($parentID);
        echo json_encode($x);
        break;

      case 'update_userType' :
        $values = $_POST['arr'];
        $ID = $_POST['typeID'];
        $ut->update($ID, $values);
        break;

      case 'delete_Type' :
        $TypeID = $_POST['typeID'];
        $ut->delete($TypeID);
        $TypeOptions->delete($TypeID);
        break;

      case 'insert_Option' :
        $OptionName = $_POST['OptionName'];
        $OptionType = $_POST['OptionType'];
        $TypeOptions->insert_option($OptionName, $OptionType);
        break;

      case 'list_Options' :
        $Type = $_POST['ListType'];
        $x = $TypeOptions->select_allOptions($Type);
        echo json_encode($x);
        break;

      case 'delete_Option' :
        $optionID = $_POST['optionID'];
        $TypeOptions->delete_option($optionID);
        break;

      case 'update_option' :
        $optionID = $_POST['optionID'];
        $name = $_POST['name'];
        $type = $_POST['type'];
        $TypeOptions->update_option($optionID, $name, $type);
        break;

  }
}

?>
