<?php
session_start();
$_SESSION['user-id'] = -1;
$_SESSION['usertype-id'] = -1;
$_SESSION['usertype-name'] = '';
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Login Page</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="robots" content="all,follow">
        <!-- Bootstrap CSS-->
        <link rel="stylesheet" href="../../css/libraries/bootstrap.min.css">
        <!-- Font Awesome CSS-->
        <link rel="stylesheet" href="../../css/libraries/font-awesome.min.css">
        <!-- Custom Font Icons CSS-->
        <link rel="stylesheet" href="../../css/libraries/font.css">
        <!-- theme stylesheet-->
        <link rel="stylesheet" href="../../css/libraries/style.default.css" id="theme-stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <style>
            .bg-gradient-primary{
                background-color: #4e73df;
                background-image: -webkit-gradient(linear,left top,left bottom,color-stop(10%,#4e73df),to(#224abe));
                background-image: linear-gradient(180deg,#4e73df 10%,#224abe 100%);
                background-size: cover;
            }


        </style>
    </head>

    <body class="bg-gradient-primary">
        <div class="login-page container">
            <div class="container d-flex align-items-center">
                <div class="form-holder has-shadow">
                    <div class="row">
                        <!-- Logo & Information Panel-->
                        <div class="col-lg-6">
                            <div class="info d-flex align-items-center">
                            </div>
                        </div>
                        <!-- Form Panel    -->
                        <div class="col-lg-6 bg-white">
                            <div class="form d-flex align-items-center">
                                <div class="content">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                                    </div>
                                    <form id="login-form" method="post" action="../controller/login/login.php">
                                        <div class="form-group">
                                            <input id="InputEmail" type="email" name="InputEmail" required="" class="input-material">
                                            <label for="login-username" class="label-material">Email</label>
                                        </div>
                                        <div class="form-group">
                                            <input id="InputPassword" type="password" name="InputPassword" required="" class="input-material">
                                            <label for="login-password" class="label-material">Password</label>
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input" id="customCheck">
                                                <label class="custom-control-label" for="customCheck"> Remember Me </label>
                                            </div>
                                        </div>
                                        <button id="loginBtn" class="btn btn-primary" name="loginBtn" style=" width: 100%;">Login</button>
                                        <hr>
                                        <div class="text-center">
                                            <a class="small" href="forget_password.php">Forgot Password?</a>
                                        </div>
                                        <div class="text-center">
                                            <a class="small" href="signup.php">Create an Account!</a>
                                        </div>
                                        <!-- This should be submit button but I replaced it with <a> for demo purposes-->
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- JavaScript files-->
        <script src="../../js/libraries/jquery-3.2.1.min.js"></script>
        <script src="../../js/libraries/bootstrap.min.js"></script>
        <script src="../../js/libraries/front.js"></script>
    </body>
</html>
