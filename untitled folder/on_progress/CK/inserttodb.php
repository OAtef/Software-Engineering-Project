<?php

$link = mysqli_connect("localhost", "root", "mysql", "software-project");

// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

// Escape user inputs for security

$descp = mysqli_real_escape_string($link, $_REQUEST['editor1']);


//insertion of table

//$sql ="INSERT INTO articles(`title`, `description`, `author`) VALUES ('$title','$descp','$author') ";
    $sql = "UPDATE articles SET description ='$descp' WHERE id = 0";
// $sql = "UPDATE articles
//    SET title = $title, description = $descp, author = $author
//  WHERE id=1";
if(mysqli_query($link, $sql)){
    $string = "Records added successfully.";
   echo "<script> alert($string) </script>";
} else{
    $string2 = "ERROR: Could not able to execute $sql. " . mysqli_error($link);
    echo "<script> alert($string2) </script>";
}
mysqli_close($link);
?>