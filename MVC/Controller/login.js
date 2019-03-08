$(document).on('click','#loginBtn',function(e){

    e.preventDefault();
    e.stopImmediatePropagation();

    var email = document.getElementById("InputEmail").value;
    var pass = document.getElementById("InputPassword").value;

    console.log(email + " " + pass);

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

            $.ajax({ url: '../Model/users.php',
            data: {function2call: 'login', email: email, password: pass}, // check if userID of that email does match the userID of th password
            type: 'POST',                                                   // in case of security compare hashes
            dataType: "JSON",
            success: function(data) {

                console.log(data);

                if(data == 1){
                    // direct it to admin.html
                    window.location.href = "admin.html";
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
