<?php

$link = mysqli_connect("localhost", "root", "", "blogs");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Escape user inputs for security
$title = mysqli_real_escape_string($link, $_REQUEST['title']);
$descp = mysqli_real_escape_string($link, $_REQUEST['editor1']);
$author = mysqli_real_escape_string($link, $_REQUEST['author']);
 
//insertion of table 
$sql ="INSERT INTO articles(`id`, `title`, `description`, `author`) VALUES (null,'$title','$descp','$author')";
if(mysqli_query($link, $sql)){
    $string = "Records added successfully."; 
   echo "<script> alert($string) </script>";
} else{
    $string2 = "ERROR: Could not able to execute $sql. " . mysqli_error($link);
    echo "<script> alert($string2) </script>";
}
mysqli_close($link);
?>
