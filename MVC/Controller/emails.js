$(document).on('click','#multiMsg',function(e){

    e.preventDefault();
    e.stopImmediatePropagation();

    $("#foundationMembers").hide();
    $("#emails").show();
    $(".hide_to_send_email").show();
    $("#emailForm").hide();
    $("#table_email_list").hide();

    $.ajax({ 
          url: '../Model/emails.php',
         data: {function2call: 'allUsersList'},
          type: 'POST',
          dataType: "JSON",
          success: function(data) {

            },
            error: function(data){
            console.log(data);
        }
    });

        return false;      
});

$(document).on('click','#tosendform',function(e){ // SAVE THE SELECTED EMAILS IN AN ARRAY

    e.preventDefault();
    e.stopImmediatePropagation();

    $(".hide_to_send_email").hide();
    $("#emailForm").show();

        return false;      
});

$(document).on('click','#back_to_email_list',function(e){

    e.preventDefault();
    e.stopImmediatePropagation();

    $(".hide_to_send_email").show();
    $("#emailForm").hide();

        return false;      
});



    

