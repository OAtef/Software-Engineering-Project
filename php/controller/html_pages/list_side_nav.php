<?php

require_once '../../model/page_html.php';
require_once '../../model/translate.php';
session_start();

$h1 = new page_html(null);

$data = array();
$data[0] = $_SESSION['typeID'];

if (!isset($_SESSION['lang'])) {
  $_SESSION['lang'] = 1;
}
switch ($_SESSION['lang']) {
  case 1:
    $lang = "en";
    break;

  case 2:
    $lang = "ar";
    break;

  default:
    $lang = "en";
    break;
}
// $lang = $_SESSION['lang'];
// $lang = "ar";

$menu = $h1->_read($data, array());

$sen = '';
$pageName = '';
$pageClassName = '';
$icon = '';

if (!empty($menu)) {

    foreach ($menu as $value) {

        if (count($value) == 3) {
            for ($i = 0; $i < count($value); $i++) {
                if ($i == 0) {
                    $pageName = $value[$i];
                } else if ($i == 1) {
                    $pageClassName = $value[$i];
                } else {
                    $icon = $value[$i];
                }
            }

            // $sen .= "<li id='$pageClassName-li'><a id='$pageClassName' class='link-page'> <i class='$icon'></i>$pageName</a></li>";

            if ($lang == "en") {
              $sen .= "<li id='$pageClassName-li'><a id='$pageClassName' class='link-page'> <i class='$icon'></i>$pageName</a></li>";
            }
            elseif ($lang == "ar") {
              $translation = new translate($pageName);

              $sen .= "<li id='$pageClassName-li'><a id='$pageClassName' class='link-page'> <i class='$icon'></i>$translation->ar</a></li>";
            }

        } else {
            $counter = -1;
            for ($i = 0; $i < count($value); $i++) {
                if ($i == 0) {
                    $pageName = $value[$i];
                } else if ($i == 1) {
                    $pageClassName = $value[$i];
                    $icon = $value[$i + 1];

                    if ($lang == "en") {
                      $sen .= "<li  class='$pageClassName'>
                                   <a href='#" . $pageClassName . "Dropdown' aria-expanded='false' data-toggle='collapse'> <i class='$icon'></i>$pageName</a>
                                   <ul id='" . $pageClassName . "Dropdown' class='collapse list-unstyled'>";
                    }
                    elseif ($lang == "ar") {
                      $translation = new translate($pageName);

                      $sen .= "<li  class='$pageClassName'>
                                   <a href='#" . $pageClassName . "Dropdown' aria-expanded='false' data-toggle='collapse'> <i class='$icon'></i>$translation->ar</a>
                                   <ul id='" . $pageClassName . "Dropdown' class='collapse list-unstyled'>";
                    }

                } else if ($i == 2) {
                    $counter = 0;
                } else if ($counter == 0) {
                    $pageName = $value[$i];
                    $counter++;
                } else if ($counter == 1) {
                    $pageClassName = $value[$i];
                    $counter++;

                    if ($lang == "en") {

                      $sen .= "<li id='$pageClassName-li'><a id='$pageClassName' class='link-page'>$pageName</a></li>";
                    }
                    elseif ($lang == "ar") {
                      $translation = new translate($pageName);

                      $sen .= "<li id='$pageClassName-li'><a id='$pageClassName' class='link-page'>$translation->ar</a></li>";
                    }

                    if ($i == count($value) - 2) {

                        $sen .= "</ul></li>";
                    }
                } else if ($counter == 2) {
                    $counter = 0;
                }
            }
        }
    }

    echo $sen;
}
