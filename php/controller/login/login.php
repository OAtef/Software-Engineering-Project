<?php

require_once '../../model/login.php';
require_once '../../model/users.php';
require_once '../../model/usertypes.php';
require_once '../../model/main_page.php';

session_start();

$emptyArr = array();

if (isset($_POST['loginBtn'])) {

    $l1 = new login(null);

    $data = array();
    $data[0] = $_POST['InputEmail'];
    $data[1] = $_POST['InputPassword'];
    
    $result = $l1->_read($data, $emptyArr);
    if(!empty($result)) {
        $_SESSION['user-id'] = $result;

        $user = new users($_SESSION['user-id']);
        $typeID = $user->usertypeID;

        $_SESSION['typeID'] = $typeID;

        $ut = new usertypes(array($typeID));
        $_SESSION['parentUT'] = $ut->parentID;

        $mp = new main_page(null);
        $mp->_read(array($ut->parentID), array());

        if(!empty($mp->link)){
            header($mp->link);
        }
        else{
            $mp = new main_page(4);
            header($mp->link);
        }

    }else{
        $mp = new main_page(3);
        header($mp->link);
    }
}
