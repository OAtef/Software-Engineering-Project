<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Reset Password</title>
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
    <script src="../../js/sweetalert2.js"></script>
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
<div class="change-password-page container">
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
                                <h1 class="h4 text-gray-900 mb-4" style="text-align: center !important;">Reset your password</h1>
                            </div>
                            <p class="mb-4" style="text-align: center !important;">We get it, stuff happens. Just enter your new password!</p>
                            <form id="login-form" method="post" >
                                <div class="form-group">
                                    <input id="InputTempPassword" type="password" name="InputTempPassword" required="" class="input-material">
                                    <label for="InputTempPassword" class="label-material">Temporary Password</label>
                                </div>
                                <div class="form-group">
                                    <input id="InputNewPassword" type="password" name="InputNewpassword" required="" class="input-material">
                                    <label for="InputNewPassword" class="label-material">New Password</label>
                                </div>
                                <div class="form-group">
                                    <input id="confirm" type="password" name="confirm" required="" class="input-material">
                                    <label for="confirm" class="label-material">Repeat New Password</label>
                                </div>
                                <button id="fpBtn" class="btn btn-primary" name="fpBtn" style=" width: 100%;">Reset Password</button>
                                <!-- This should be submit button but I replaced it with <a> for demo purposes-->
                                <hr>
                                <div class="text-center">
                                    <a class="small" href="profile.php">Create an Account!</a> <br>

                                </div>

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



<script>

    $(document).on('click','#fpBtn', function (e)
    {
        e.preventDefault();
        e.stopImmediatePropagation();
        var valueInputTempPassword = $('#InputTempPassword').val();
        var valueInputNewPassword = $('#InputNewPassword').val();
        var confirm = $('#confirm').val();


        $.ajax({
            url: '../controller/login/loginAfterForget.php',
            data: { tempPass: valueInputTempPassword, newPass:valueInputNewPassword, confirm: confirm},
            type: 'POST',
            dataType: 'JSON',
            success: function(data){
                if(data['error']){
                    Swal({type: 'error', title: data['error'],
                        toast: true, position: 'top-right',
                        showConfirmButton: false, timer: 3000 });
                }else{
                    Swal({type: 'success', title: data['success'],
                        toast: true, position: 'top-right',
                        showConfirmButton: false, timer: 3000 });
                }
            },
            error: function(data){
               console.log(data);
            }
        });
        return false;
    });




</script>