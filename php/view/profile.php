<?php

require_once '../model/users.php';
require_once '../model/page_components.php';
require_once '../model/theme.php';
session_start();

if (isset($_SESSION['user-id'])) {
    $userID = $_SESSION['user-id'];
} else {
    header("location:../view/login.php");
}
if ($userID == -1) {
    header("location:../view/login.php");
}

$xx = array($_SESSION['typeID']);
$page_components = new page_components(null);
$arr = $page_components->_read($xx, array());

$t1 = new theme();

$data = array($userID);
$themeCode = $t1->readUserTheme($data);
if (!empty($themeCode)) {
    $linkCode = $themeCode;
} else {
    $linkCode = "../../css/libraries/style.blue.css~../../css/profile-blue.css";
}

?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Profile</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="robots" content="all,follow">
        <meta http-equiv="content-type" content="application/vnd.ms-excel; charset=UTF-8">

        <link rel="stylesheet" href="../../css/design-account.css">
        <link rel="stylesheet" href="../../css/libraries/bootstrap.min.css"> <!-- version 4.0.0 -->

        <!-- Font Awesome CSS-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link rel="stylesheet" href="../../css/libraries/font-awesome.min.css">
        <!-- Custom Font Icons CSS-->
        <link rel="stylesheet" href="../../css/libraries/font.css">
        <link rel="stylesheet" href="../../css/libraries/multi-select.css">
        <!-- theme stylesheet-->
        <link rel='stylesheet' href='../../css/libraries/style.blue.css'>
        <link rel='stylesheet' href='../../css/profile-blue.css'>
        <link href="../../css/sb-admin-2.min.css" rel="stylesheet">
        <link href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet">




        <script src="../../js/sweetalert2.js"></script>


        <div class="screen-theme">
            <!-- theme stylesheet-->
            <?php
            $theme = explode("~", $linkCode);
            echo "<link rel='stylesheet' href='$theme[0]' id='theme-stylesheet'>";
            echo "<link rel='stylesheet' href='$theme[1]' id='theme-stylesheet2'>";
            ?>
        </div>

        <link rel="stylesheet" href="../../css/default.css">

        <!-- Google Charts API -->
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

        <script src="../../js/libraries/jquery-3.2.1.min.js"></script>


        <style>
            input {
                width: 100%;
            }
        </style>

        <style>

            #page-container {
                position: relative;
                min-height: 100vh;
            }

            #content-wrap {
                padding-bottom: 2.5rem;    /* Footer height */
            }

            #footer {
                position: fixed;
                bottom: 0;
                width: 100%;
                height: 2.5rem;            /* Footer height */
            }

        </style>

    </head>
    <body>

        <header class="header">
            <div id="position1"> </div>
        </header>

        <div id="page-container">
            <div id="content-wrap">
                <div style="float: left; width: 320px;" id="position2"> </div>
                <div style="float: right; width: 320px;" id="position3"> </div>
                <div id="position4" class="page-content" style="" class="container"> </div>
            </div>
        </div>


        <footer id="footer">
            <div id="position5"> </div>

        </footer>

        <script type='text/javascript'>

            var arr = <?php echo json_encode($arr) ?>;

            for (var x in arr) {
                var xx = arr[x];
                $(xx[0]).appendTo("#position"+xx[1]);
            }

        </script>
        <script src="../../js/libraries/jquery.tabletoCSV.js"></script>
        <script src="../../js/libraries/popper.js"></script>
        <script src="../../js/libraries/bootstrap.min.js"></script>
        <script src="../../js/libraries/front.js"></script>
        <script src="../../js/libraries/jquery.multi-select.js"></script>
        <script src="../../js/linker.js"></script>
        <script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

    </body>
</html>
