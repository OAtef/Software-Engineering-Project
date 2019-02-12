<?php
// include database connection
include_once('type.php');
 
try {
     // get record ID
    // isset() is a PHP function used to verify if a value is there or not
    $id=isset($_GET['id']) ? $_GET['id'] : die('ERROR: Record ID not found.');
 
   $obj = new Types($id);
   $return = Types::deleteusertype($obj);
     
    if($return == 1){
        // redirect to read records page and 
        // tell the user record was deleted
        header('Location: UTI.php?action=deleted');
    }else{
        die('Unable to delete record.');
    }
}
 
// show error
catch(PDOException $exception){
    die('ERROR: ' . $exception->getMessage());
}
?>