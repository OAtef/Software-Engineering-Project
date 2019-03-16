$(document).on('click','#loginBtn',function(e){

    e.preventDefault();
    e.stopImmediatePropagation();

    var email = document.getElementById("InputEmail").value;
    var pass = document.getElementById("InputPassword").value;

    //console.log(email + " " + pass);

    if(email == "" || !email.includes("@")){
        // alert enter email
        return;
    }
    else{
        if(pass == ""){
            // alert enter pass
            return;
        }
        else{

            $.ajax({ url: '../Model/user_intermediate.php',
            data: {function2call: 'login', email: email, pass: pass}, // check if userID of that email does match the userID of th password
            type: 'POST',                                                   // in case of security compare hashes
            dataType: "JSON",
            success: function(data) {

                console.log(data);

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

    }

    return false;

});
