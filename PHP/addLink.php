<?php

include('dbConnection.php');

$LinkName = $_POST["friendlyname"];
$LinkUrl = $_POST["phylink"];

echo $LinkName;
echo $LinkUrl;

$InsertLinkQuery = "INSERT INTO links (id, url, name) VALUES (NULL, '$LinkUrl', '$LinkName')";
if($result = mysqli_query($db, $InsertLinkQuery)){
  header('Location: Software.php');
}else {
  echo "error";
}

?>
