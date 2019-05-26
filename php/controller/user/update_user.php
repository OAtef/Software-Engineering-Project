<?php

require_once '../../model/user_values.php';
require_once '../../model/login.php';
require_once '../../model/phone_numbers.php';
require_once '../../model/profile_photo.php';
require_once '../../model/errors.php';

$error = new errors(null);

$new_password = '';
$new_email = '';

$userID = $_POST['userID']; // need to be a number

$uv = new user_values(null);
$log = new login($userID);
$pn = new phone_numbers($userID);

session_start();
$len = $_SESSION['length_labels'];

$log_con = array($userID);

// variables from Page
$values = $_POST['arr'];
$usertypeID = $_POST['usertypeID']; // need to be a number


$z = 0;
while($z < $len){

    if($values[$z] != ''){

        $values[$z] = validate($values[$z]);

        if(DateTime::createFromFormat('m-d-Y', $values[$z]) !== false){

            $today_dt = new DateTime($today);
            $entered_dt = new DateTime($values[$z]);

            if ($expire_dt > $today_dt) {
                $error->_read(array(888), array());
                $emsg = array("error"=>$error->user_error);
                echo json_encode($emsg);
                die;
            }
        }

        $z++;

    }else{
        //exit ('some fields are empty');
        $error->_read(array(231), array());
        $emsg = array("error"=>$error->user_error);
        echo json_encode($emsg);
        die;
    }
}

if(isset($_FILES['file']) ){

    if(!empty($_FILES['file']['tmp_name'])){

        $new_image_name = 'image_' . date('Y-m-d-H-i-s') . '_' . uniqid() . '.jpg';
        $new_location = "../../../img/uploaded/".$new_image_name;

        $filename = strtolower($_FILES['file']['name']);

        $ext = pathinfo($filename,PATHINFO_EXTENSION);

        $valid_extensions = array("jpg","jpeg","png");


        if(in_array($ext, $valid_extensions)) {

            if(move_uploaded_file($_FILES['file']['tmp_name'],$new_location)){

                $img = new profile_photo(null);
                $img ->_update(array($new_location), array($userID));

            }
            else{
                $error->_read(array(899), array());
                $emsg = array("error"=>$error->user_error);
                echo json_encode($emsg);
                die;
            }
        }else{
            $error->_read(array(558), array());
            $emsg = array("error"=>$error->user_error);
            echo json_encode($emsg);
            die;
        }

    }
}

// varify phone number
$inserted_phone = validate($values[$len+3]);
$phonenumberr = filter_var($inserted_phone, FILTER_VALIDATE_INT);

if($phonenumberr === false){
    $error->_read(array(876), array());
    $emsg = array("error"=>$error->user_error);
    echo json_encode($emsg);
    die;
}


if((int)$inserted_phone  > 0 ){

    if(strlen((string)$inserted_phone) != 11){
        $error->_read(array(110), array());
        $emsg = array("error"=>$error->user_error);
        echo json_encode($emsg);
        die;
    }
    else{

        if($inserted_phone != $pn->phone_num){
            $pn->_update(array($inserted_phone), $log_con);
        }
    }

}
else{
    $error->_read(array(435), array());
    $emsg = array("error"=>$error->user_error);
    echo json_encode($emsg);
    die;
}


$inserted_email = validate($values[$len]);
$inserted_password = validate($values[$len+1]);
$inserted_new_password = validate($values[$len+2]);


if($inserted_password != ''){ // check if the old password is not empty

    if($inserted_password != $log->password){ // check if the old password is correct
        //exit('Password was not correct');
        $error->_read(array(889), array());
        $emsg = array("error"=>$error->user_error);
        echo json_encode($emsg);
        die;
    }
    else{

        if($inserted_new_password != ''){ // check if a new password was inserted / added

            $valid = validation_password($inserted_new_password);

            if($valid != ''){
                $error->_read(array($valid), array());
                $emsg = array("error"=>$error->user_error);
                echo json_encode($emsg);
                die;

            }
            
        }
        if($inserted_email != ''){ // check if a new email was inserted / added

            if (validation_email($inserted_email) == 0) {
                $error->_read(array(667), array());
                $emsg = array("error"=>$error->user_error);
                echo json_encode($emsg);
                die;
            }else{
                $new_email = $inserted_email;
            }

        }

        if($new_email != '' && $new_password != ''){

            $what_to_update = 'both';
            $log_data = array($what_to_update,$new_email,$new_password);
            $log->_update($log_data, $log_con);

        } else if($new_email != ''){
            
            $what_to_update = 'email';
            $log_data = array($what_to_update,$new_email,$new_password);
            $log->_update($log_data, $log_con);

        } else if($new_password != ''){
            
            $what_to_update = 'password';
            $log_data = array($what_to_update,$new_email,$new_password);
            $log->_update($log_data, $log_con);
        }

        $x=0;
        $vals = array();
        while($x < $len){
            $vals[$x] = $values[$x];
            $x++;
        }
        $con = array($usertypeID, $userID);
        $uv->_update($vals, $con);

        $smsg = array("success"=>"account updated successfully");
        echo json_encode($smsg);
        die;

    }
    }else{
        $error->_read(array(999), array());
        $emsg = array("error"=>$error->user_error);
        echo json_encode($emsg);
        die;
        //exit('You need to enter user password to confirm the change');
    }


function validation_password($password) {

    $uppercase = preg_match('@[A-Z]@', $password);
    $lowercase = preg_match('@[a-z]@', $password);
    $number    = preg_match('@[0-9]@', $password);
    $specialChars = preg_match('@[^\w]@', $password);


    if(strlen($password) > 12){

        if(!$uppercase){
            return 123;
        }
        else{
            if(!$lowercase){
                return 234;
            }
            else{
                if(!$number){
                    return 345;
                }
                else{
                    if(!$specialChars){
                        return 456;
                    }
                }
            }
        }

    }else{
        return 567;
    }

    return '';

}

function email_validation($email_address){

    // set API Access Key
    $access_key = '65dae5b8d5fd1386346e2721ac236d49';

    // Initialize CURL:
    $ch = curl_init('http://apilayer.net/api/check?access_key='.$access_key.'&email='.$email_address.'');
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

    // Store the data:
    $json = curl_exec($ch);
    curl_close($ch);

    // Decode JSON response:
    $validationResult = json_decode($json, true);

    if ($validationResult['format_valid'] && $validationResult['smtp_check']) {
        echo "Email is valid";
    }else{
        echo "Email is not valid";
    }

}

function validate($input){

    $input = trim($input);
    $input = stripslashes($input);
    $input = strip_tags($input);

    return $input;

}

