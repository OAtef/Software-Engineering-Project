<?php

include_once('../config.api/dbConnection.php');

class Options
{
  static function label_header($parentID){

    $headers_rows = array();

    $query ="SELECT optionID FROM rtb_option_usertype where usertypeID='$parentID'"; 
    $result_OU = mysqli_query($GLOBALS["db"], $query);

    while($row = mysqli_fetch_array($result_OU)){

      $select_query = "SELECT option_name, option_type FROM tb_options WHERE id='$row[0]'";
      $result = mysqli_query($GLOBALS["db"], $select_query);

      while($head_row = mysqli_fetch_array($result)){
        # $array[$key] = $value;
        $headers_rows[$head_row[0]] = $head_row[1];
      }
      
    }
    echo json_encode($headers_rows);  # array contains the resulted names of headers and types of fileds
  
  }
  
}

if(isset($_POST['function2call']) && !empty($_POST['function2call'])) {
  
  $function2call = $_POST['function2call'];
  $parentID = $_POST['parentID'];  
  $opt = new Options(NULL);

  switch($function2call) {
      case 'label_header' : 
        $opt::label_header($parentID);
        break;
  }
}

?>


