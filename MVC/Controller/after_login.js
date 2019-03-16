$(document).ready(function(){

    $("#content").hide();

    $.ajax({ 
        url: '../Model/user_intermediate.php',
        data: {function2call: 'get_html'},
        type: 'POST',
        dataType: "JSON",                                                  
        success: function(data) {

            //console.log(data);

            $(data).appendTo("#content");

            $(".se-pre-con").fadeOut("slow");
            $("#content").show();
            
        },
        error: function(data){
            console.log(data);
        }
    });
	


});