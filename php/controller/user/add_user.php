<?php

require_once '../../model/users.php';
require_once '../../model/user_values.php';
require_once '../../model/login.php';
require_once '../../model/phone_numbers.php';
require_once '../../model/profile_photo.php';
require_once '../../model/errors.php';
require_once '../../model/manual_send.php';
require_once '../../model/facade.php';
require_once '../../model/messages.php';

$error = new errors(null);

$uv = new user_values(array());
$log = new login(null);
$phone = new phone_numbers(null);

session_start();
$len = $_SESSION['length_labels'];

$img_location = '';
if(isset($_FILES['file']) ){

    if(!empty($_FILES['file']['tmp_name'])){

        $new_image_name = 'image_' . date('Y-m-d-H-i-s') . '_' . uniqid() . '.jpg';
        $new_location = "../../../img/uploaded/".$new_image_name;

        $filename = strtolower($_FILES['file']['name']);

        $ext = pathinfo($filename,PATHINFO_EXTENSION);

        $valid_extensions = array("jpg","jpeg","png");


        if(in_array($ext, $valid_extensions)) {

            if(move_uploaded_file($_FILES['file']['tmp_name'],$new_location)){
                $img_location = $new_location;
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

// variables from Page
$values = $_POST['arr'];
$usertypeID = $_POST['usertypeID'];


//do some injection cleaning
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
        $error->_read(array(231), array());
        $emsg = array("error"=>$error->user_error);
        echo json_encode($emsg);
        die;
    }
}

// varify phone number
$phonenumber = validate($values[$len+2]);
$phonenumberr = filter_var($phonenumber, FILTER_VALIDATE_INT);

if($phonenumberr === false){
    $error->_read(array(876), array());
    $emsg = array("error"=>$error->user_error);
    echo json_encode($emsg);
    die;
}

if((int)$values[$len+2] > 0 ){
    if(strlen((string)$values[$len+2]) != 10){
        $error->_read(array(110), array());
        $emsg = array("error"=>$error->user_error);
        echo json_encode($emsg);
        die;
    }
}
else{
    $error->_read(array(435), array());
    $emsg = array("error"=>$error->user_error);
    echo json_encode($emsg);
    die;
}

// check if email was added to the list
if($values[$len] != ''){

    $email = validate($values[$len]);

    if (validation_email($email) == 0) {
        $error->_read(array(667), array());
        $emsg = array("error"=>$error->user_error);
        echo json_encode($emsg);
        die;

    }
    else{

        $acceptable = $log->check_email_exist($email);

        if(!empty($acceptable)){
            $error->_read(array(342), array());
            $emsg = array("error"=>$error->user_error);
            echo json_encode($emsg);
            die;
        }

        // check password
        if($values[$len+1] != ''){ // is not empty

            $password = validate($values[$len+1]);
            $valid = validation_password($password);

            if($valid != ''){

                $error->_read(array($valid), array());
                $emsg = array("error"=>$error->user_error);
                echo json_encode($emsg);
                die;

            }

            // add values to the database with email and password
            $x=0;
            $vals = array();
            while($x < $len){
                $vals[$x] = $values[$x];
                $x++;
            }

            $user_data = array();
            $user_data[0] = $usertypeID;
            $user_data[1] = $vals;

            $userID = $uv->_create($user_data); // values

            if($img_location != ''){

                $img_data = array($img_location, $userID);
                $img = new profile_photo(null);
                $img->_create($img_data);
            }

            $log_data = array();
            $log_data[0] = $email;
            $log_data[1] = $password;
            $log_data[2] = $userID;

            $sm = new manual_send();
            $sm->emails = array($email);

            $facade = new facade(null);
            $sm->deatch($facade->sms);
            $sm->deatch($facade->whatsapp);

            $msg = new messages(200);

            $the_Message = str_replace("__Email__", $email ,$msg->content);

            $sm->massage_content = $the_Message;
            $sm->massage_subject = $msg->subject;
            $sm->notify();

            $log->_create($log_data);

            if($values[$len+2] != ''){ // check phone number

                $p_data = array();
                $p_data[0] = $userID;
                $p_data[1] = $values[$len+2];

                $phone->_create($p_data);
            }

            $smsg = array("success"=>"account created successfully");
            echo json_encode($smsg);
            die;

        }else{

           $error->_read(array(678), array());
            $emsg = array("error"=>$error->user_error);
            echo json_encode($emsg);
            die;
        }
    }
}
else{

    // add values to the database without email and password
    $data = array();
    $data[0] = $usertypeID;
    $data[1] = $values;

    $userID = $uv->_create($data);

    if($img_location != ''){

        $img_data = array($img_location, $userID);
        $img = new profile_photo(null);
        $img->_create($img_data);
    }

    if($values[$len+2] != ''){ // check phone number

        $p_data = array();
        $p_data[0] = $userID;
        $p_data[1] = $values[$len+2];

        $phone->_create($p_data);
    }

    $smsg = array("success"=>"account created successfully");
    echo json_encode($smsg);
    die;

}

function validation_password($password) {

    $uppercase = preg_match('@[A-Z]@', $password);
    $lowercase = preg_match('@[a-z]@', $password);
    $number    = preg_match('@[0-9]@', $password);
    //$specialChars = preg_match('@[^\w]@', $password);


    if(strlen($password) < 12){
        return 567;
    }
    if(!$uppercase){
        return 123;
    }
    if(!$lowercase){
        return 234;
    }
    if(!$number){
        return 345;
    }
    //if(!$specialChars){
    //    return 456;
    //}
    return '';
}

function validation_email($email){

    // set API Access Key
    $access_key = '65dae5b8d5fd1386346e2721ac236d49';

    // set email address
    $email_address = $email;

    // Initialize CURL:
    $ch = curl_init('http://apilayer.net/api/check?access_key='.$access_key.'&email='.$email_address.'');
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

    // Store the data:
    $json = curl_exec($ch);
    curl_close($ch);

    // Decode JSON response:
    $validationResult = json_decode($json, true);

    if ($validationResult['format_valid'] && $validationResult['smtp_check']) {
        return 1;
    }else{
        return 0;
    }

}

function validate($input){

    $input = trim($input);
    $input = stripslashes($input);
    $input = strip_tags($input);

    return $input;

}
