<?php

require_once ('usertypes_class.php');
require_once ('users_class.php');
require_once ('uservalues_class.php');
require_once ('useroptions_class.php');
require_once ('links_class.php');

if(isset($_POST['function2call']) && !empty($_POST['function2call'])) {

  $function2call = $_POST['function2call'];
  $uv = new User_Values(NULL);
  $user = new Users(NULL);
  $ut = new UserTypes(NULL);
  $TypeOptions = new Options(NULL);

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

      case 'update_userType' :
        $values = $_POST['arr'];
        $ID = $_POST['typeID'];
        $ut->update($ID, $values);
        break;

      case 'delete_Type' :
        $TypeID = $_POST['typeID'];
        $ut->delete($TypeID);
        // $TypeOptions->delete($TypeID);
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

      case 'label_header' :
        $parentID = $_POST['parentID'];
        $oo = new Options(NULL);
        $oo->select_allOptions($parentID);
        $x = $oo->headers_rows;
        echo json_encode($x);
        break;

      case 'insert_html' :
        $page_name = $_POST['page_name'];
        $html = $_POST['HTML'];
        $links = new Links(NULL);
        $links->insert_page($page_name, $html);
        break;

      case 'html_pages' :
        $links = new Links(NULL);
        $x = $links->get_pages();
        echo json_encode($x);
        break;

      case 'delete_html' :
        $id = $_POST['num'];
        $links = new Links(NULL);
        $links->delete_page($id);
        break;

      case 'login' :
        $email = $_POST['email'];
        $pass =  $_POST['pass'];
        //echo $pass;
        $x = $uv->check_values($pass, $email);
        echo json_encode($x);
        break;

      case 'get_html':
        session_start();
        $links = new Links($_SESSION['uid']);
        $x = $links->HTML;
        echo json_encode($x);
        break;

  }
}

?>
