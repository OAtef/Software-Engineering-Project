$(document).on('click','#loginBtn',function(e){

    e.preventDefault();
    e.stopImmediatePropagation();

    var email = document.getElementById("InputEmail").value;
    var pass = document.getElementById("InputPassword").value;

    $.ajax({ 
        url: 'login.php',
        data: {email: email, pass: pass}, // check if userID of that email does match the userID of th password
        type: 'POST',                                                   // in case of security compare hashes
        dataType: "JSON",
        success: function(data) {

            if(data != false){
                // direct it to after_login.html
                window.location.href = "after_login.html";
            }
            else{
                alert("Incorrect Password");
            }
        },
        error: function(data){
            console.log(data);
        }
    });

}

