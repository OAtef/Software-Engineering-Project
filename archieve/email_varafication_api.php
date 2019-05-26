<?php

// set API Access Key
$access_key = '65dae5b8d5fd1386346e2721ac236d49';
 
// set email address
$email_address = '1_6@gmail.com';
 
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