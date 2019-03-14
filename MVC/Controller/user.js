var headers = new Array();
var users = new Array();
var userID;
var usertypeID;
var parentID;
var loaded;

var utid_insert; // for checking and not repeating html
var utid_update;

$(document).ready(function(){

  $("#emailsPage").hide();
  $("#foundationMembers").hide();
  $("#tasksPage").hide();
  $('.t2').hide();
  $('.i2').hide();
  $("#settingsPage").hide();

    $('.table-message tbody tr').click(
      function()
      {
        $(this).toggleClass('resolved');
      }
    );

    $.ajax({ url: '../Model/user_intermediate.php',
    data: {function2call: 'list_userTypes', parentID: 0},
    type: 'POST',
    dataType: "JSON",
    success: function(data) {

       var arr = new Array();

       arr = data;

       for (var key in arr) {
        $("<a class='dropdown1 dropdown-item' id='link-" + key + "'>" + arr[key] + "</a>").appendTo("#dropdown-usertype-table1");
        $("<a class='dropdown1 dropdown-item' id='link-" + key + "'>" + arr[key] + "</a>").appendTo("#dropdown-usertype-insert");
        $("<a class='dropdown1 dropdown-item' id='link-" + key + "'>" + arr[key] + "</a>").appendTo("#dropdown-MainUserType");
       }

    },
    error: function(data){
       console.log(data);
       $("#errormsg").html(data.responseText);
   }
    });

    // show and hide clicks

    $(document).on('click','#list_edit_btn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        $("#tasksPage").hide();
        $("#theTable").empty();
        $("#sucess_div").hide();
        $("#tablediv").show();
        $("#update_form_div").hide();
        $("#insert_form_div").hide();
        $("#foundationMembers").show();
        $("#emailsPage").hide();
        $("#settingsPage").hide();

        return false;
    });

    $(document).on('click','#addMemBtn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        $("#tasksPage").hide();
        $("#insert_form").empty();
        $("#foundationMembers").show();
        $("#tablediv").hide();
        $("#update_form_div").hide();
        $("#insert_form_div").show();
        $("#emailsPage").hide();
        $("#settingsPage").hide();

        return false;
    });

    $(document).on('click','#Tasksbtn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        $("#tasksPage").show();
        $("#insert_form").empty();
        $("#foundationMembers").hide();
        $("#tablediv").hide();
        $("#update_form_div").hide();
        $("#insert_form_div").hide();
        $("#emailsPage").hide();
        $("#settingsPage").hide();

        return false;
    });

    $(document).on('click','#settingsBtn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        $("#settingsPage").show();
        $("#tasksPage").hide();
        $("#insert_form").empty();
        $("#foundationMembers").hide();
        $("#tablediv").hide();
        $("#update_form_div").hide();
        $("#insert_form_div").hide();
        $("#emailsPage").hide();

        return false;
    });

    $(document).on('click','#multiMsg',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        $("#emailsPage").show();
        $("#settingsPage").hide();
        $("#tasksPage").hide();
        $("#insert_form").empty();
        $("#foundationMembers").hide();
        $("#tablediv").hide();
        $("#update_form_div").hide();
        $("#insert_form_div").hide();

        return false;
    });

    $(document).on('click','#SubTypeFormBtn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        $("#AddUserSubTypeForm").show();
        $("#AddUserMainTypeForm").hide();

        return false;
    });

    $(document).on('click','#MainTypeFormBtn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        $("#AddUserSubTypeForm").hide();
        $("#AddUserMainTypeForm").show();


        return false;
    });

    $(document).on('click','#ShowAddTypeSettingsBtn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        $("#AddTypeSettings").show();
        $("#allTypesTable").hide();

        return false;
    });

    $(document).on('click','#ShowListTypeSettingsBtn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        if (loaded != 1) {
          listAllTypesTable();
        }


        $("#AddTypeSettings").hide();
        $("#allTypesTable").show();

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

        deleteUser(id);
        return false;
    });

    $(document).on('click','.dropdown1',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        var id = $(this).attr('id');
        parentID = id.substr(id.indexOf('-')+1, id.indexOf('-'));

        $.ajax({ url: '../Model/user_intermediate.php',
        data: {function2call: 'list_userTypes', parentID: parentID},
        type: 'POST',
        dataType: "JSON",
        success: function(data) {

            if(data != null){

                $('#dropdown-usertype-table2').empty();
                $("#dropdown-usertype-insert2").empty();

                for (var key in data) {
                    $("<a class='dropdown2 dropdown-item userTable' id='link-" + key + "'>" + data[key] + "</a>").appendTo("#dropdown-usertype-table2");
                    $("<a class='dropdown2 dropdown-item insertUser' id='link-" + key + "'>" + data[key] + "</a>").appendTo("#dropdown-usertype-insert2");
                }

                $('.t2').show();
                $('.i2').show();

            }

        },
        error: function(data){
           console.log(data);
       }
        });
        return false;
    });

    $(document).on('click','.dropdown2',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        var id = $(this).attr('id');
        usertypeID = id.substr(id.indexOf('-')+1, id.indexOf('-'));

        if($(this).hasClass('userTable')){
            $('#theTable').empty();
            $("#tableScript").remove();
            usertypetable();
        }
        else if($(this).hasClass('insertUser')){
            if(usertypeID != utid_insert){
                $('#insert_form').empty();
                insertUser();
            }else{
                $('#insert_form').show();
            }
        }
        return false;
    });

    // functions

    $(document).on('click','#saveChangesBtn',function(e){ // update

        e.preventDefault();
        e.stopImmediatePropagation();

        var form_arr = $('form').serialize();
        form_arr += '&';

        $.ajax({
            url: "../Model/user_intermediate.php",
            type: "POST",
            data: {function2call: 'update_user', usertypeID: usertypeID, userID: userID, arr: form_arr},
            success: function(data) {
                console.log(data);
                $("#sucess_div").css("display", "block");
            },
            error: function(data){
                console.log(data);
                $("#error_div").css("display", "block");
                //$("#errormsg").html(data.responseText);
            }
        });
        return false;
    });

    $(document).on('click','#addMemberBtn',function(e){ // insert

        e.preventDefault();
        e.stopImmediatePropagation();

        var form_arr = $('#insertForm').serialize();
        form_arr += '&';
        console.log(form_arr);

        $.ajax({
            url: "../Model/user_intermediate.php",
            type: "POST",
            data: {function2call: 'insert_user', usertypeID: usertypeID, arr: form_arr},
            success: function(data) {
                console.log(data);
                $("#sucess_div").css("display", "block");
                /* for(var key in headers){
                    $('td[name='+key+']').val("");
                } */
            },
            error: function(data){
                console.log(data);
                $("#error_div").css("display", "block");
                //$("#errormsg").html(data.responseText);
            }
        });
        return false;
    });

    $(document).on('click','#addSubTypeBtn',function(e){ // insert

        e.preventDefault();
        e.stopImmediatePropagation();

        var form_arr = $('#insertUserSubTypeForm').serialize();
        form_arr += '&';
        console.log(form_arr);

        $.ajax({
            url: "../Model/user_intermediate.php",
            type: "POST",
            data: {function2call: 'insert_subUserType', parentID: parentID, arr: form_arr},
            success: function(data) {
                console.log(data);
                $("#sucessType_div").css("display", "block");
                /* for(var key in headers){
                    $('td[name='+key+']').val("");
                } */
            },
            error: function(data){
                console.log(data);
                $("#errorType_div").css("display", "block");
                //$("#errormsg").html(data.responseText);
            }
        });
        return false;
    });

});

function insertUser(){

        utid_insert = usertypeID;

        var formdiv = document.getElementById("insert_form");

        var form = " <form id='insertForm' method='post'> " +
            " <div class='table-responsive'> <table class='table table-hover table-bordered'> <tbody> ";

        $.ajax({
            url: '../Model/user_intermediate.php',
            data: {function2call: 'label_header', parentID: parentID},
            type: 'POST',
            dataType: "JSON",
            success: function(data) {

                if(data.length != 0){

                    headers = data;
                    for (var key in headers) {
                        form += "<tr> <td>"+ key + "</td> <td><input type='" + headers[key] + "' name='" + key + "' class='form=control' /></td>";
                    }

                    form += "</tr> <tr> <td>  </td> <td> <input id='addMemberBtn' type='submit' value='Add Member' class='btn btn-primary' name='saveChangesBtn'/> " +
                        "</td> </tr> </tbody> </table> </div> </form>";

                    formdiv.innerHTML+= form;
                }else{
                    form += "<div class='alert alert-danger'> No Options Exist for such User Type </div></body>";
                    formdiv.innerHTML+= form;
                }


            },
            error: function(data){
                console.log(data);
                //$("#errormsg").html(data.responseText);
            }
        });

}

function usertypetable(){

        var div = document.getElementById("theTable");
        var table = ' <div class="table-responsive"> <br> <table class="table table-bordered userstable" id="dataTable" width="100%" cellspacing="0"> <thead> <tr>';

        $.ajax({
            url: '../Model/user_intermediate.php',
            data: {function2call: 'label_header', parentID: parentID},
            type: 'POST',
            dataType: "JSON",
            success: function(data) {
                console.log(data);

                if(data != null){

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
                        url: '../Model/user_intermediate.php',
                        data: {function2call: 'list_users', usertypeID: usertypeID},
                        type: 'POST',
                        dataType: "JSON",
                        success: function(data) {
                            console.log(data);

                            if(data != null){

                                users = data;

                                var obj_size = data.length;
                                console.log(obj_size);
                                var arr_size = data[0].user_values.length;

                                var a =0;

                                table += "<tbody>";
                                while(a < obj_size){
                                    table += "<tr>";

                                    console.log(data[a]);
                                    var b=1;
                                    while (b < arr_size){
                                        console.log(data[a].user_values[b]);
                                        table += "<td>" + (data[a].user_values[b]) + "</td>";
                                        b += 1;
                                    }

                                    table += "<td> <a id='update-" + a + "' href='#' class='btn btn-primary btn-circle m-r-1em updatebtn'><i class='fa fa-edit'></i></a> " +
                                    "<a id='del-" + a + "' href='#' class='btn btn-danger btn-circle deletebtn'><i class='fas fa-trash'></i></a> </td> </tr>";

                                    a += 1;

                                }

                                table += '</body>';
                                div.innerHTML+= table;

                            }
                        },
                        error: function(data){
                            console.log(data);
                            $("#errormsg").html(data.responseText);
                        }

                    });

                    var script = document.createElement("script"); //Make a script DOM node
                    script.id = "tableScript";
                    script.src = '../../js/demo/datatables-demo.js'; //Set it's src to the provided URL
                    document.body.appendChild(script);
                } else{
                    // notify no data input managed for such a usertype
                }

            },
            error: function(data){
                console.log(data);
                $("#errormsg").html(data.responseText);
            }
        });
}

function listAllTypesTable(){

        var div = document.getElementById("allTypesTable");
        var table = ' <div class="table-responsive"> <br> <table class="table table-bordered userstable" id="dataTable" width="100%" cellspacing="0"> <thead> <tr>';

        table += "<th> UserType Name</th>"
        table += "<th> ParentID Name</th>"
        table += "<th> Control </th>"

        table += "</tr> </thead> <tfoot> <tr>"
        table += "<th> UserType Name</th>"
        table += "<th> ParentID Name</th>"
        table += "<th> Control </th>"
        table += "</tr> </tfoot>";

        $.ajax({
            url: '../Model/user_intermediate.php',
            data: {function2call: 'list_userTypes', parentID: "all"},
            type: 'POST',
            dataType: "JSON",
            success: function(data) {

              if (data != null) {

                table += "<tbody>";

                for (var x in data) {

                  table += "<tr>";

                  var list = data[x];

                  var userTypename = list[0];
                  var typeParentID = list[1];

                  table += "<td>" + userTypename + "</td>";
                  table += "<td>" + typeParentID + "</td>";

                  table += "<td> <a id='update-" + x + "' href='#' class='btn btn-primary btn-circle m-r-1em updatebtn'><i class='fa fa-edit'></i></a> " +
                  "<a id='del-" + x + "' href='#' class='btn btn-danger btn-circle deletebtn'><i class='fas fa-trash'></i></a> </td> </tr>";

                }
                table += '</body>';
              }
              div.innerHTML+= table;
              loaded = 1;

              console.log(data);

            },
            error: function(data){
                console.log(data);
                $("#errormsg").html(data.responseText);
            }
        });
}

function updateUser(id){

    var user_obj_index = id.substr(id.indexOf('-')+1, id.indexOf('-'));
    userID = users[user_obj_index].user_values[0];

    if(userID != utid_update){

        utid_update = usertypeID;
        $("#update_form_div").empty();
        $("#tablediv").hide();
        $("#update_form_div").show();

        var formdiv = document.getElementById("update_form_div");

        var form = " <form id='updateForm' method='post'> " +
            " <div class='table-responsive'> <table class='table table-hover table-bordered'> <tbody> ";

        var i = 1;
        for (var key in headers) {
            form += "<tr> <td>"+ key + "</td> <td><input type='" + headers[key] + "' name='" + key + "' class='form=control' value='" + users[user_obj_index].user_values[i] + "' /></td>";
            i++;
        }

        form += "</tr> <tr> <td>  </td> <td> <input id='saveChangesBtn' type='submit' value='Save Changes' class='btn btn-primary' name='saveChangesBtn'/> " +
            "</td> </tr> </tbody> </table> </div> </form>";

            // <a href="index.php" style="position: absolute; margin-left: 2px;" class="btn btn-danger">Back to read products</a>

        formdiv.innerHTML+= form;

    }else{
        $("#update_form_div").show();
    }
}

function deleteUser(id){

    var user_obj_index = id.substr(id.indexOf('-')+1, id.indexOf('-'));
    userID = users[user_obj_index].user_values[0];

    $.ajax({
        url: '../Model/user_intermediate.php',
        data: {function2call: 'delete_user', userID: userID},
        type: 'POST',
        success: function(data) {
            $("#sucess_div").css("display", "block");
            $("#theTable").hide();
            $("#theTable").empty();
            usertypetable();
            $("#theTable").show();
            // notifiy done sucessfully
        },
        error: function(data){
            console.log(data);
            $("#error_div").css("display", "block");
            //$("#errormsg").html(data.responseText);
        }
    });
}
