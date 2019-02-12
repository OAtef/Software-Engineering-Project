<?php

include_once('type.php');

$obj = new Types(NULL);

    $obj->ID = $_POST['usertypeid'];
    echo ($obj->ID);
    $obj->typename = $_POST["usertypename"];
    Types::addusertype($obj);
    if (Types::addusertype($obj)) {
        header('Location: UTI.php');
      }else {
        header('Location: UTI.php');
        echo "<script>alert('Error inserting user');</script>";
      }
?>
