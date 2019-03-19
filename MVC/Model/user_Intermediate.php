<?php

require_once ('usertypes_class.php');
require_once ('users_class.php');
require_once ('uservalues_class.php');
require_once ('useroptions_class.php');
require_once ('links_class.php');
require_once ('forms_class.php');
require_once ('login_class.php');
require_once ('project_category_class.php');


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
        $len = $_POST['len'];

        if($len == sizeof($values)){
          $uv->update_values($usertypeID, $userID, $values);
        }else{
          $x=0;
          $vals = array();
          while($x < $len){
            $vals[$x] = $values[$x];
            $x++;
          }

          $uv->update_values($usertypeID, $userID, $values);
          $email = $values[$len];
          $pass = $values[$len+1];

          $log = new Login(null);
          $log->update_logins($email, $pass, $userID);
        }  
        break;

      case 'insert_user' :
        $values = $_POST['arr'];
        $usertypeID = $_POST['usertypeID'];
        $len = $_POST['len'];

        if($len == sizeof($values)){
          $uv->insert_values($usertypeID, $values);
        }else{
          $x=0;
          $vals = array();
          while($x < $len){
            $vals[$x] = $values[$x];
            $x++;
          }

          $userID = $uv->insert_values($usertypeID, $vals);
          $email = $values[$len];
          $pass = $values[$len+1];

          $log = new Login(null);
          $log->insert_logins($email, $pass, $userID);
        }  
        break;

      case 'delete_user' :
        $userID = $_POST['userID'];
        $user->delete_user($userID);
        $uv->delete_values($userID);
        $log = new Login(null);
        $log->delete_logins($userID);
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
        
        $log = new Login(null);
        $x = $log->check_access($email, $pass);
        echo json_encode($x);
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
        session_start();
        $usertypeID =  1 ;//$_SESSION['usertypeID']; // change later -- got it from login 

        $oo = new Options(NULL);
        $oo->select_allOptions($usertypeID);
        $headers = $oo->headers_rows;

        $ut = new UserTypes(null);
        $children_arr = $ut->list_usertypes($usertypeID);
        $children_ids = array_keys($children_arr);

        $i=0;
        while($i < sizeof($children_ids)){

          $vals = $uv->select_values($children_ids[$i]);
          $i++;
        }
        
        $rage3 = array();
        $rage3[0] = $headers;
        $rage3[1] = $vals;
        
        echo json_encode($rage3);
        break;

      case 'get_project_categories':
        $pro_cat = new Project_Category(null);
        echo json_encode($pro_cat->select_categories());
        break;


  }
}

?>
