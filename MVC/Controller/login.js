function login_Function(){

    var email = document.getElementById("InputEmail").value;
    var pass = document.getElementById("InputPassword").value;

    if(email == ""){
        // alert enter email
        return;
    }
    if(pass == ""){
        // alert enter pass
        return;
    }

    $.ajax({ url: '../Model/users.php',
    data: {function2call: 'login', email: email, password: pass}, // check if userID of that email does match the userID of th password 
    type: 'POST',                                                   // in case of security compare hashes 
    dataType: "JSON",
    success: function(data) {

        // direct it to index.html
       
    },
    error: function(data){
       console.log(data);
   }
});

    
}




