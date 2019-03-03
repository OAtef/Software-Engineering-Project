var headers = new Array();
var users = new Array();
var usertypeID;
var oldemail;

var utidd; // for checking and not repeating html
var utid; // for checking and not repeating html

$(document).ready(function(){

    $("#emails").hide();
    $("#foundationMembers").hide();

    $.ajax({ url: '../Model/usertypes.php',
    data: {function2call: 'list_usertypes'},
    type: 'POST',
    dataType: "JSON",
    success: function(data) {
       var arr = new Array();

       arr = data;
       var i = 0;
       while(i < arr.length){

            var str1 = arr[i];
            var str2 = arr[++i];
           $("<a class='dropdown-item userTable' id='link-" + str1 + "'>" + str2 + "</a>").appendTo("#dropdown-usertype-table");
           $("<a class='dropdown-item insertUser' id='link-" + str1 + "'>" + str2 + "</a>").appendTo("#dropdown-usertype-insert");
           $("<a class='dropdown-item emailTable' id='link-" + str1 + "'>" + str2 + "</a>").appendTo("#dropdown-email-table");


           i += 2;
       }
       
    },
    error: function(data){
       console.log(data);
   }
});

    $(document).on('click','.dropdown-item',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        var id = $(this).attr('id');
        usertypeID = id.substr(id.indexOf('-')+1, id.indexOf('-'));

        if($(this).hasClass('userTable')){
            usertypetable(id);
        }
        else if($(this).hasClass('insertUser')){
            insertUser(id);

        }
        else if($(this).hasClass('emailTable')){

        }
       
        return false;
       
    });

    $(document).on('click','#saveChangesBtn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        var form_arr = $('form').serialize();
        form_arr += '&';
        //var len = Object.keys(headers).length;

        $.ajax({
            url: "../Model/users.php",
            type: "POST",
            data: {function2call: 'update_user', usertypeID: usertypeID, oldEmail: oldemail, arr: form_arr},
            success: function(data) {
                console.log(data);
                $("#sucess_div").css("display", "block");
            },
            error: function(data){
                console.log(data);
                //$("#errormsg").html(data.responseText);
            }
        }); 
       
        return false;
       
    });

    $(document).on('click','#list_edit_btn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        resetTable();
    $("#sucess_div").hide();

    $("#tablediv").show();
    $("#update_form_div").hide();
    $("#insert_form_div").hide();
    $("#foundationMembers").show();
    $("#emails").hide();
       
    return false;
       
    });

    $(document).on('click','#addMemBtn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        $("#foundationMembers").show();
        $("#tablediv").hide();
        $("#update_form_div").hide();
        $("#insert_form_div").show();
        $("#emails").hide();

        return false;
           
    });

    $(document).on('click','#addMemberBtn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        var form_arr = $('form').serialize();
        form_arr += '&';
        //var len = Object.keys(headers).length;

        $.ajax({
            url: "../Model/users.php",
            type: "POST",
            data: {function2call: 'insert_user', usertypeID: usertypeID, arr: form_arr},
            success: function(data) {
                console.log(data);
                $("#sucess_div").css("display", "block");
            },
            error: function(data){
                console.log(data);
                //$("#errormsg").html(data.responseText);
            }
        }); 
       
        return false;
       
    });

    $(document).on('click','.updatebtn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        var id = $(this).attr('id');
        updateUser(id);
       
        return false;
       
    });
    
    $(document).on('click','.deletebtn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        var id = $(this).attr('id');
        console.log(id);
        deleteUser(id);
       
        return false;
       
    });
    
});

function insertUser(){

    if(usertypeID != utidd){

        utidd = usertypeID;

        var formdiv = document.getElementById("insert_form_div");

        var form = " <form id='insertForm' method='post'> " +
            " <div class='table-responsive'> <table class='table table-hover table-bordered'> <tbody> ";

        $.ajax({ 
            url: '../Model/users.php',
            data: {function2call: 'tableHeader', usertypeID: usertypeID},
            type: 'POST',
            dataType: "JSON",
            success: function(data) {
                headers = data;
                for (var key in headers) {        
                    form += "<tr> <td>"+ key + "</td> <td><input type='" + headers[key] + "' name='" + key + "' class='form=control' /></td>"; 
                }

                form += "</tr> <tr> <td>  </td> <td> <input id='addMemberBtn' type='submit' value='Add Member' class='btn btn-primary' name='saveChangesBtn'/> " + 
                    "</td> </tr> </tbody> </table> </div> </form>";
                        
                formdiv.innerHTML+= form;

            },
            error: function(data){
                console.log(data);
                //$("#errormsg").html(data.responseText);
            }
        });   
    }

}


function usertypetable(){

    if(usertypeID != utid){
        utid = usertypeID;

        var div = document.getElementById("theTable");
        var table = ' <div class="table-responsive"> <br> <table class="table table-bordered userstable" id="dataTable" width="100%" cellspacing="0"> <thead> <tr>';   
    
        $.ajax({ 
            url: '../Model/users.php',
            data: {function2call: 'tableHeader', usertypeID: usertypeID},
            type: 'POST',
            dataType: "JSON",
            success: function(data) {
    
                headers = data;
                
                for (var key in headers) {
                    table += "<th>" + (key) + "</th>";
                }
    
                table += "<th> Control </th>";
    
                table += "</tr> </thead> <tfoot> <tr>";
                for (var key in headers) {
                    table += "<th>" + (key) + "</th>";
                }
    
                table += "<th> Control </th>";
    
                table += "</tr> </tfoot>";
    
                $.ajax({ 
                    url: '../Model/users.php',
                    data: {function2call: 'select_users', usertypeID: usertypeID},
                    type: 'POST',
                    dataType: "JSON",
                    success: function(data) {

                        console.log(data);
    
                        users = data;
            
                        var obj_size = data.length;
                        var arr_size = data[0].user_values.length;
            
                        var a =0;
            
                        table += "<tbody>";
                        while(a < obj_size){
                            table += "<tr>";

                            console.log(data[a]);
                            var b=0;
                            while (b < arr_size){
                                //console.log(data[a].user_values[b]);
                                table += "<td>" + (data[a].user_values[b]) + "</td>";
                                b += 1;
                            }
    
                            table += "<td> <a id='update-" + a + "' href='#' class='btn btn-primary m-r-1em updatebtn'>Edit</a> " +
                            "<a id='del-" + a + "' href='#' class='btn btn-danger deletebtn'>Delete</a> </td> </tr>";    
                            
                            a += 1;
    
                        }
            
                        div.innerHTML+= table + '</body>';
                        

                    },
                    error: function(data){
                        console.log(data);
                        //$("#errormsg").html(data.responseText);
                    }
            
                }); 
    
            },
            error: function(data){
                console.log(data);
                //$("#errormsg").html(data.responseText);
            }
        });   
    }

}

function updateUser(xx){

    $("#tablediv").hide();
    $("#update_form_div").show();

    user_obj_index = xx.substr(xx.indexOf('-')+1, xx.indexOf('-'));
    
    var formdiv = document.getElementById("update_form_div");

    var form = " <form id='updateForm' method='post'> " +
        " <div class='table-responsive'> <table class='table table-hover table-bordered'> <tbody> ";

        var i = 0;
    for (var key in headers) {        
        form += "<tr> <td>"+ key + "</td> <td><input type='" + headers[key] + "' name='" + key + "' class='form=control' value='" + users[user_obj_index].user_values[i] + "' /></td>"; 
        
        if((users[user_obj_index].user_values[i]).includes("@")){

            oldemail = users[user_obj_index].user_values[i];
        }

        i++;
    }

    form += "</tr> <tr> <td>  </td> <td> <input id='saveChangesBtn' type='submit' value='Save Changes' class='btn btn-primary' name='saveChangesBtn'/> " + 
        " <a href='index.php' style='position: absolute; margin-left: 2px;' class='btn btn-danger'>Back to read products</a> </td> </tr> </tbody> </table> </div> </form>";

            
    formdiv.innerHTML+= form;
    
}

function deleteUser(xx){

    user_obj_index = xx.substr(xx.indexOf('-')+1, xx.indexOf('-'));

    var i = 0;
    while (i < users[user_obj_index].user_values.length) {        
        if((users[user_obj_index].user_values[i]).includes("@")){
            oldemail = users[user_obj_index].user_values[i];
        }

        i++;
    }


    $.ajax({ 
        url: '../Model/users.php',
        data: {function2call: 'delete_user', usertypeID: usertypeID, oldEmail: oldemail},
        type: 'POST',
        dataType: "JSON",
        success: function(data) {

            // notifiy done sucessfully 

        },
        error: function(data){
            console.log(data);
            //$("#errormsg").html(data.responseText);
        }
    });











}

function resetTable(){
    utid = 0;
    $("#theTable").empty();

}


