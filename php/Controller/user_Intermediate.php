<?php

require_once ('../Model/usertypes.php');
require_once ('../Model/users.php');
require_once ('../Model/uservalues.php');
require_once ('../Model/useroptions.php');
//require_once ('links_class.php');
//require_once ('forms_class.php');
require_once ('../Model/login.php');
require_once ('../Model/project_category.php');
require_once ('../Model/user_Links.php');
//require_once ('project_class.php');


if(isset($_POST['function2call']) && !empty($_POST['function2call'])) {

  $function2call = $_POST['function2call'];
  $uv = new User_Values(NULL);
  $user = new Users(NULL);
  $ut = new UserTypes(NULL);
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

      case 'list_userTypes' :
        break;

      case 'login' :
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

      case 'list_Permissions' :
        $lin = new Links(NULL);
        $allLinks = $lin->get_pages();
        echo json_encode($allLinks);
        break;

      case 'insert_PermissionValue' :
        $typeID = $_POST['typeLink'];
        $pageID = $_POST['pageLink'];
        $usLinks->insert_Link($typeID, $pageID);
        break;

      case 'list_userLinks' :
        $list = $usLinks->List_Links();
        echo json_encode($list);
        break;

      case 'delete_Permission' :
        $permissionID = $_POST['permID'];
        $usLinks->delete_Link($permissionID);
        break;

      case 'edit_Permission' :
        $permissionID = $_POST['permID'];
        $newTypeID = $_POST['newTypeID'];
        $newLinkID = $_POST['newLinkID'];
        $usLinks->update_Link($permissionID, $newTypeID, $newLinkID);
        break;

      case 'label_header' :
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

      case 'get_html':
        session_start();
        $links = new Links($_SESSION['uid']);
        $x = $links->HTML;
        echo json_encode($x);
        break;

      case 'get_signup_html':
        $links = new Links(null);
        $page_name = $_POST['page_name'];
        if (strpos($page_name, 'signup') !== false || strpos($page_name, 'registor') !== false) {

          $links->get_usertype_relationT($page_name);
          $usert = new UserTypes($links->r_table_Vals[0]["usertypeID"]);

          session_start();
          $_SESSION['utid'] = $usert->id;

          $x = $links->HTML;
          echo json_encode($x);
        }
        break;

      case 'get_signup_form':
        $form = new From(null);
        $form->get_form_options("signup");
        echo json_encode($form->options);
        break;

      case 'save_signup_info': // i got a session feha options id used and usertypeID
        $vals = $_POST['values1'];
        $email_pass = $_POST['values2'];
        break;

      case 'get_chooseTable':
        break;

      case 'get_project_categories':
        break;

        case 'insert_project':
        break;

      case 'list_projects':
        break;

      case 'delete_project':
        break;

      case 'list_project_members':
        break;

      case 'update_project':
        break;


  }
}

?>
