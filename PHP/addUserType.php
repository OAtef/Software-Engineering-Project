<?php

innclude('dbConnection.php');

$TypeName;
$LinksID; //array
$TypeID;

$InsertTypeQuery = "INSERT INTO usertype () VALUES ()"; // name
$result = mysqli_query($db, $InsertTypeQuery);

//get ID

for ($i=0; $i < $linksID.size(); $i++) {
  //get each link ID or we could send the IDs in the array not names


  $InsertTypeLinksQuery = "INSERT INTO userlink () VALUES ()"; //related links
  $result = mysqli_query($db, $InsertTypeLinksQuery);
}

?>
