<?php
$typeID = 3;
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Signup Page</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="robots" content="all,follow">
        <!-- Bootstrap CSS-->
        <link rel="stylesheet" href="../../css/libraries/bootstrap.min.css">
        <!-- Font Awesome CSS-->
        <link rel="stylesheet" href="../../css/libraries/font-awesome.min.css">
        <!-- Custom Font Icons CSS-->
        <link rel="stylesheet" href="../../css/libraries/font.css">
        <link rel='stylesheet' href='../../css/libraries/style.blue.css'>
        <link rel='stylesheet' href='../../css/profile-blue.css'>
        <link href="../../css/sb-admin-2.min.css" rel="stylesheet">
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

            input{
                width: 100%;
            }

        </style>
    </head>

    <body class="bg-gradient-primary">
        <div class="signup-page container">
            <div class="container d-flex align-items-center">
                <div class="form-holder has-shadow">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="info d-flex align-items-center">
                            </div>
                        </div>
                        <!-- Form Panel    -->
                        <div class="col-lg-6 bg-white">
                            <div class="form d-flex align-items-center">
                                <div class="content">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome To Our Foundation!</h1>
                                    </div>

                                    <div id="signup-form"></div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- JavaScript files-->
        <script>

            $.ajax({
                url: 'classes/sign_up_form.php',
                type: 'POST',
                dataType: "JSON",
                success: function(data) {
                    len = data[0];
                    signup.innerHTML+= data[1];
                    $('#signup-form').show();

                },
                error: function(data){
                    console.log(data);
                }
            });

            var signup = document.getElementById("signup-form");

            $(document).on('click','#insertMember',function(e) {
                $("#insertForm").on('submit', (function(e) {

                    e.preventDefault();
                    e.stopImmediatePropagation();

                    var data = new FormData(this);

                    var x = 1;
                    var z = 0;
                    while(z < len){
                        var id = "in-"+x;
                        var value = document.getElementById(id).value;
                        data.append('arr[]', value);
                        z++;
                        x++;
                    }

                    data.append('arr[]', document.getElementById("userEmail").value);
                    data.append('arr[]', document.getElementById("userPass").value);
                    data.append('arr[]', document.getElementById("phone_number").value);
                    data.append('usertypeID', <?php echo $typeID ?>);

                    $.ajax({
                        url: "../controller/user/add_user.php",
                        type: "POST",
                        data: data,
                        contentType: false,
                        cache: false,
                        processData: false,
                        dataType: 'JSON',
                        success: function(data) {

                            if(data['error']){
                                Swal({type: 'error', title: data['error'],
                                    toast: true, position: 'top-right',
                                    showConfirmButton: false, timer: 3000 });
                            }else{
                                Swal({type: 'success', title: data['success'],
                                    toast: true, position: 'top-right',
                                    showConfirmButton: false, timer: 3000 });
                                document.getElementById("insertForm").reset();
                                window.location.replace("login.php");
                            }

                            console.log(data);

                        },
                        error: function(data){
                            console.log(data);
                        }
                    });
                    return false;
                }));
            });



        </script>

        <script src="../../js/libraries/jquery-3.2.1.min.js"></script>
        <script src="../../js/libraries/bootstrap.min.js"></script>
        <script src="../../js/libraries/front.js"></script>
    </body>
</html>


