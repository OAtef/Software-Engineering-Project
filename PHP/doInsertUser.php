<?php

include_once('users.php');

$obj = new Users(NULL);

$obj->firstname = $_POST['fname'];
$obj->lastname = $_POST["lname"];
$obj->email = $_POST["email"];
$obj->password = $_POST["password"];
$obj->bdate = $_POST["bdate"];
$obj->typeid = $_POST["usertype"];

if (Users::insertUser($obj)) {
  header('Location: index.php');
}else {
  header('Location: index.php');
  echo "<script>alert('Error inserting user');</script>";
}




?>
