<?php

include("link.php");

$newLink = new Link(NULL);

$newLink->url = $_REQUEST["phylink"];
$newLink->name = $_REQUEST["friendlyname"];

Link::addLink($newLink);
?>
