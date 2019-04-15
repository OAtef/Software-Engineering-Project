<?php

include_once '../Model/login.php';

$emptyArr = array();

/* if (isset($_POST['loginBtn'])) {

    // define variables and set to empty values
    $emailErr = $email = $password = "";

    if (empty($_POST["InputEmail"])) {
        $emailErr = "Email is required";
    } else {
        $email = test_input($_POST["InputEmail"]);
        // check if email address is well-formed
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
          $emailErr = "Invalid email format";
        }
        else{

            $l1 = new login(null);
            $password = $_POST['InputPassword'];

            $data = array();
            $data[0] = $_POST['InputEmail'];
            $data[1] = $_POST['InputPassword'];
            
            $result = $l1->_read($data, $emptyArr);

            if(!empty($result)){
                $_SESSION['user-id'] = $result;
                header("location:../view/profile.php");
            } else{
               // show error message
               header("location:../View/index.php");
            }
        }
    }
}

function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}  */

if (isset($_POST['loginBtn'])) {
    $l1 = new login(null);

    $data = array();
    
    $data[0] = $_POST['InputEmail'];
    $data[1] = $_POST['InputPassword'];
    
    $result = $l1->_read($data, $emptyArr);
    if(!empty($result)){
        foreach ($result as $value) {
            $userID=$value['userid'];
        }
        session_start();
        $_SESSION['user-id'] = $userID;
        header("location:../View/profile.php");
    }else{
        // select error message
        header("location:../View/index.php");
    }
}
