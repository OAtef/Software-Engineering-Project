var headers = new Array();
var users = new Array();
var links = new Array();
var mainTypes = new Array();
var permissions = new Array();
var userID;
var typeID;
var permID;
var usertypeID;
var parentID;
var typeLink;
var typeLinkID
var pageLink;
var pageLinkID;

var utid_insert; // for checking and not repeating html
var utid_update;
var permissionsLoaded;

$(document).ready(function() {

  $("#emailsPage").hide();
  $("#emailForm").hide();
  $("#foundationMembers").hide();
  $("#ReqDonation").hide();
  $("#dashboard").show();

  // $("#tasksPage").hide();
  $('.t2').hide();
  $('.i2').hide();
  $("#settingsPage").hide();
  $("#logg").hide();

  $.ajax({
    url: 'list_permissions.php',
    type: 'POST',
    dataType: "JSON",
    success: function(data) {

      permissions = data;

      for (var key in permissions) {
        $("<a class='dropdown-item' id='link-" + key + "'>" + permissions[key] + "</a>").appendTo("#dropdown-Permissions");
      }

    },
    error: function(data) {
      console.log(data);
      $("#errormsg").html(data.responseText);
    }
  });

  // show and hide clicks

  $(document).on('click', '#logbtn', function(e) {

    e.preventDefault();
    e.stopImmediatePropagation();

    //$("#TasksForm").hide();
    $("#theTable").empty();
    $("#sucess_div").hide();
    $("#tablediv").hide();
    $("#update_form_div").hide();
    $("#insert_form_div").hide();
    $("#foundationMembers").hide();
    $("#emailsPage").hide();
    $("#settingsPage").hide();
    $("#logg").show();
    $("#insertProject").hide();
    $("#emailForm").hide();
    $("#dashboard").hide();
    $("#ReqDonation").hide();
    $("#tableProject").hide();


    return false;

  });

  $(document).on('click', '#dashboardbtn', function(e) {

    e.preventDefault();
    e.stopImmediatePropagation();

    $("#theTable").empty();
    $("#sucess_div").hide();
    $("#tablediv").hide();
    $("#update_form_div").hide();
    $("#insert_form_div").hide();
    $("#foundationMembers").hide();
    $("#emailsPage").hide();
    $("#settingsPage").hide();
    $("#logg").hide();
    $("#insertProject").hide();
    $("#emailForm").hide();
    $("#dashboard").show();
    $("#ReqDonation").hide();
    $("#tableProject").hide();


    return false;

  });


  $(document).on('click', '#multiMsg', function(e) {

    e.preventDefault();
    e.stopImmediatePropagation();

    //$("#TasksForm").hide();
    $("#theTable").empty();
    $("#sucess_div").hide();
    $("#tablediv").hide();
    $("#update_form_div").hide();
    $("#insert_form_div").hide();
    $("#foundationMembers").hide();
    $("#emailsPage").show();
    $("#settingsPage").hide();
    $("#logg").hide();
    $("#insertProject").hide();
    $("#emailForm").hide();
    $("#tableProject").hide();
    $("#dashboard").hide();
    $("#ReqDonation").hide();


    return false;

  });

  $(document).on('click', '#tosendform', function(e) {

    e.preventDefault();
    e.stopImmediatePropagation();

    //$("#TasksForm").hide();
    $("#theTable").empty();
    $("#sucess_div").hide();
    $("#tablediv").hide();
    $("#update_form_div").hide();
    $("#insert_form_div").hide();
    $("#foundationMembers").hide();
    $("#emailsPage").hide();
    $("#settingsPage").hide();
    $("#logg").hide();
    $("#insertProject").hide();
    $("#emailForm").show();
    $("#dashboard").hide();
    $("#tableProject").hide();
    $("#ReqDonation").hide();


    return false;

  });

  $(document).on('click', '#back_to_email_list', function(e) {

    e.preventDefault();
    e.stopImmediatePropagation();

    $("#emailsPage").show();
    $("#emailForm").hide();

    return false;

  });

  $(document).on('click', '#list_edit_btn', function(e) {

    e.preventDefault();
    e.stopImmediatePropagation();

    //$("#TasksForm").hide();
    $("#theTable").empty();
    $("#sucess_div").hide();
    $("#tablediv").show();
    $("#update_form_div").hide();
    $("#insert_form_div").hide();
    $("#foundationMembers").show();
    $("#emailsPage").hide();
    $("#settingsPage").hide();
    $("#logg").hide();
    $("#insertProject").hide();
    $("#emailForm").hide();
    $("#dashboard").hide();
    $("#tableProject").hide();
    $("#ReqDonation").hide();


    return false;

  });

  $(document).on('click', '#addMemBtn', function(e) {

    e.preventDefault();
    e.stopImmediatePropagation();

    //$("#TasksForm").hide();
    $("#insert_form").empty();
    $("#foundationMembers").show();
    $("#tablediv").hide();
    $("#update_form_div").hide();
    $("#insert_form_div").show();
    $("#emailsPage").hide();
    $("#settingsPage").hide();
    $("#logg").hide();
    $("#insertProject").hide();
    $("#emailForm").hide();
    $("#dashboard").hide();
    $("#tableProject").hide();
    $("#ReqDonation").hide();


    return false;

  });

  //Requested Donation

  $(document).on('click', '#reqDonationBtn', function(e) {

    e.preventDefault();
    e.stopImmediatePropagation();

    //$("#TasksForm").hide();
    $("#insert_form").hide();
    $("#foundationMembers").hide();
    $("#tablediv").hide();
    $("#update_form_div").hide();
    $("#insert_form_div").hide();
    $("#emailsPage").hide();
    $("#settingsPage").hide();
    $("#logg").hide();
    $("#insertProject").hide();
    $("#emailForm").hide();
    $("#dashboard").hide();
    $("#tableProject").hide();

  });

  $(document).on('click', '.updatebtn', function(e) {

    e.preventDefault();
    e.stopImmediatePropagation();

    var id = $(this).attr('id');

    updateUser(id);
    return false;

  });

  $(document).on('click', '.deletebtn', function(e) {

    e.preventDefault();
    e.stopImmediatePropagation();

    var id = $(this).attr('id');

    deleteUser(id);
    return false;

  });

  $(document).on('click', '.dropdown2', function(e) {

    e.preventDefault();
    e.stopImmediatePropagation();

    var id = $(this).attr('id');
    usertypeID = id.substr(id.indexOf('-') + 1, id.indexOf('-'));

    if ($(this).hasClass('userTable')) {
      $("#tableScript").remove();
      $('#theTable').empty();
      usertypetable();

      //$("#dataTable").DataTable();
    } else if ($(this).hasClass('insertUser')) {
      $('#insertForm').empty();
      insertUser();
    }
    return false;
  });

  $(document).on('click', '#settingsBtn', function(e) {
    e.preventDefault();
    e.stopImmediatePropagation();

    $("#settingsPage").show();
    $("#insert_form").empty();
    $("#foundationMembers").hide();
    $("#tablediv").hide();
    $("#update_form_div").hide();
    $("#insert_form_div").hide();
    $("#emailsPage").hide();
    $("#logg").hide();
    $("#insertProject").hide();
    $("#dashboard").hide();
    $("#tableProject").hide();
    $("#ReqDonation").hide();


    return false;
  });

  $(document).on('click', '#showLinkPermissionBtn', function(e) {

    e.preventDefault();
    e.stopImmediatePropagation();

    $("#LinkPermissionSettings").show();
    $("#allPermissionsTable").hide();
    $("#update_PermissionForm").hide();

    return false;
  });

  $(document).on('click', '#showListPermissionBtn', function(e) {

    e.preventDefault();
    e.stopImmediatePropagation();

    if (permissionsLoaded != 1) {
      listAllPermissionsTable();
    }

    $("#LinkPermissionSettings").hide();
    $("#allPermissionsTable").show();
    $("#update_PermissionForm").hide();

    return false;
  });

  $(document).on('click', '.updatePermissionbtn', function(e) {

    e.preventDefault();
    e.stopImmediatePropagation();

    $("#allPermissionsTable").hide();

    var id = $(this).attr('id');

    updatePermission(id);
    return false;
  });

  $(document).on('click', '.deletePermissionbtn', function(e) {

    e.preventDefault();
    e.stopImmediatePropagation();

    var id = $(this).attr('id');

    deletePermission(id);
    return false;
  });

  $(document).on('click', '#dropdown-UserTypes a', function(e) {
    e.preventDefault();
    e.stopImmediatePropagation();

    typeLink = $(this).attr('id');
    typeLinkID = typeLink.substr(typeLink.indexOf('-') + 1, typeLink.indexOf('-'));

    document.getElementById("UserTypeName").value = $(this).text();
    document.getElementById("UserTypeNameUpdate").value = $(this).text();
  });

  $(document).on('click', '#dropdown-Permissions a', function(e) {
    e.preventDefault();
    e.stopImmediatePropagation();

    pageLink = $(this).attr('id');
    pageLinkID = pageLink.substr(pageLink.indexOf('-') + 1, pageLink.indexOf('-'));

    document.getElementById("PermissionName").value = $(this).text();
    document.getElementById("PermissionNameUpdate").value = $(this).text();
  });

  $(document).on('click', '#LinkPermissionBtn', function(e) { // insert

    e.preventDefault();
    e.stopImmediatePropagation();

    $.ajax({
      url: "insert_permission_value.php",
      type: "POST",
      data: {
        typeLink: typeLinkID,
        pageLink: pageLinkID
      },
      success: function(data) {
        console.log(data);
        $("#sucessLinkPermission_div").css("display", "block");
        /* for(var key in headers){
            $('td[name='+key+']').val("");
        } */
      },
      error: function(data) {
        console.log(data);
        $("#errorLinkPermission_div").css("display", "block");
        //$("#errormsg").html(data.responseText);
      }
    });
    return false;
  });

  // functions

  $(document).on('click', '#saveChangesBtn', function(e) { // update

    e.preventDefault();
    e.stopImmediatePropagation();


    var len = Object.keys(headers).length;

    var x = 1;
    var z = 0;
    while (z < len) {

      var id = "up-" + x;
      var value = document.getElementById(id).value;
      form_arr.push(value);
      z++;
      x++;
    }

    if (document.getElementById("userEmail").value != "" && document.getElementById("userPass").value != "") {

      form_arr.push(document.getElementById("userEmail").value);
      form_arr.push(document.getElementById("userPass").value);
    }

    console.log(form_arr);

    $.ajax({
      url: "update_user.php",
      type: "POST",
      data: {
        usertypeID: usertypeID,
        userID: userID,
        arr: form_arr,
        len: len
      },
      success: function(data) {
        console.log(data);
        $("#sucess_div").css("display", "block");
      },
      error: function(data) {
        console.log(data);
        $("#error_div").css("display", "block");
        //$("#errormsg").html(data.responseText);
      }
    });
    return false;
  });




  $(document).on('click', '#savePermissionChangesBtn', function(e) { // update

    e.preventDefault();
    e.stopImmediatePropagation();

    var newTypeID = $('#UserTypeNameUpdate').val();
    var newLinkID = $('#PermissionNameUpdate').val();

    $.ajax({
      url: "edit_permission.php",
      type: "POST",
      data: {
        permID: permID,
        newTypeID: typeLinkID,
        newLinkID: pageLinkID
      },
      success: function(data) {
        console.log(data);
        $("#allPermissionsTable").hide();
        $("#allPermissionsTable").empty();
        listAllPermissionsTable();
        $("#sucessPermissionUpdate_div").css("display", "block");
      },
      error: function(data) {
        console.log(data);
        $("#errorPermissionUpdate_div").css("display", "block");
        //$("#errormsg").html(data.responseText);
      }
    });
    return false;
  });

  $(document).on('click', '#addMemberBtn', function(e) { // insert

    e.preventDefault();
    e.stopImmediatePropagation();

    var form_arr = new Array();

    var len = Object.keys(headers).length;

    var x = 1;
    var z = 0;
    while (z < len) {

      var id = "in-" + x;
      var value = document.getElementById(id).value;
      form_arr.push(value);
      z++;
      x++;
    }

    if (document.getElementById("userEmail").value != "" && document.getElementById("userPass").value != "") {

      form_arr.push(document.getElementById("userEmail").value);
      form_arr.push(document.getElementById("userPass").value);
    }

    console.log(form_arr);

    $.ajax({
      url: "insert_user.php",
      type: "POST",
      data: {
        usertypeID: usertypeID,
        arr: form_arr,
        len: len
      },
      success: function(data) {
        console.log(data);
        $("#sucess_div").css("display", "block");
        /* for(var key in headers){
            $('td[name='+key+']').val("");
        } */
      },
      error: function(data) {
        console.log(data);
        $("#error_div").css("display", "block");
        //$("#errormsg").html(data.responseText);
      }
    });
    return false;
  });

});

function insertUser() {

  utid_insert = usertypeID;

  var formdiv = document.getElementById("insert_form");

  var form = " <form id='insertForm' method='post'> " +
    " <div class='table-responsive'> <table class='table table-hover table-bordered'> <tbody> ";

  $.ajax({
    url: 'label_header.php',
    data: {
      parentID: parentID
    },
    type: 'POST',
    dataType: "JSON",
    success: function(data) {

      if (data.length != 0) {

        headers = data;
        var x = 1;
        for (var key in headers) {
          form += "<tr> <td>" + key + "</td> <td><input id='in-" + (x++) + "'type='" + headers[key] + "' name='" + key + "' class='form=control' /></td>";
        }

        form += "</tr> <tr> <td rowspan='3' style='width: 20%;'>  <p class='title_title'> Enter Information if User will Access the system </p> </td>" +
          " <tr> <td > <label for='email'>Email</label><input type='email' name='email' id='userEmail' maxlength='100'> </td>" +
          "</tr> <tr> <td> <label for='pass'>Password</label><input type='password' name='pass' id='userPass' maxlength='100'> </td> </tr>" +
          " </tr> </tr> <tr> <td colspan='2'> <input id='addMemberBtn' type='submit' value='Add Member' class='btn btn-primary' name='saveChangesBtn'/> " +
          "</td> </tr> </tbody> </table> </div> </form>";

        formdiv.innerHTML += form;
      } else {
        form += "<div class='alert alert-danger'> No Options Exist for such User Type </div></body>";
        formdiv.innerHTML += form;
      }


    },
    error: function(data) {
      console.log(data);
      //$("#errormsg").html(data.responseText);
    }
  });

}

function usertypetable() {

  var div = document.getElementById("theTable");
  var table = ' <div class="table-responsive"> <br> <table class="table table-bordered userstable" id="dataTable" width="100%" cellspacing="0"> <thead> <tr>';

  $.ajax({
    url: 'label_header.php',
    data: {
      parentID: parentID
    },
    type: 'POST',
    dataType: "JSON",
    success: function(data) {
      //console.log(data);

      if (data != null) {

        headers = data;

        for (var key in headers) {
          table += "<th>" + (key) + "</th>";
        }

        table += "<th> Email </th>";
        table += "<th> Control </th>";

        table += "</tr> </thead> <tfoot> <tr>";
        for (var key in headers) {
          table += "<th>" + (key) + "</th>";
        }

        table += "<th> Email </th>";
        table += "<th> Control </th>";

        table += "</tr> </tfoot>";

        $.ajax({
          url: 'list_users.php',
          data: {
            usertypeID: usertypeID
          },
          type: 'POST',
          dataType: "JSON",
          success: function(data) {
            console.log(data);

            if (data != null) {

              users = data;

              var obj_size = data.length;
              //console.log(obj_size);
              var arr_size = data[0].user_values.length;

              var a = 0;

              table += "<tbody>";
              while (a < obj_size) {
                table += "<tr>";

                //console.log(data[a]);
                var b = 1;
                while (b < arr_size) {
                  //console.log(data[a].user_values[b]);
                  table += "<td>" + (data[a].user_values[b]) + "</td>";
                  b += 1;
                }

                table += "<td> <a id='update-" + a + "' href='#' class='btn btn-primary btn-circle m-r-1em updatebtn'><i class='fa fa-edit'></i></a> " +
                  "<a id='del-" + a + "' href='#' class='btn btn-danger btn-circle deletebtn'><i class='fas fa-trash'></i></a> </td> </tr>";

                a += 1;

              }

              table += '</body>';
              div.innerHTML += table;

            }
          },
          error: function(data) {
            console.log(data);
            $("#errormsg").html(data.responseText);
          }

        });

        var script = document.createElement("script"); //Make a script DOM node
        script.id = "tableScript";
        script.src = '../../js/demo/datatables-demo.js'; //Set it's src to the provided URL
        document.body.appendChild(script);

      } else {
        // notify no data input managed for such a usertype
      }

    },
    error: function(data) {
      console.log(data);
      $("#errormsg").html(data.responseText);
    }
  });
}

function updateUser(id) {

  var user_obj_index = id.substr(id.indexOf('-') + 1, id.indexOf('-'));
  userID = users[user_obj_index].user_values[0];

  if (userID != utid_update) {

    utid_update = usertypeID;
    $("#update_form_div").empty();
    $("#tablediv").hide();
    $("#update_form_div").show();

    var formdiv = document.getElementById("update_form_div");

    var form = " <form id='updateForm' method='post'> " +
      " <div class='table-responsive'> <table class='table table-hover table-bordered'> <tbody> ";

    var i = 1;
    for (var key in headers) {
      form += "<tr> <td>" + key + "</td> <td><input id='up-" + i + "type='" + headers[key] + "' name='" + key + "' class='form=control' value='" + users[user_obj_index].user_values[i] + "' /></td>";
      i++;
    }

    if (users[user_obj_index].user_values[i] != null) {

      form += "<tr> <td> Email: </td> <td><input type='email' name='email' class='form=control' value='" + users[user_obj_index].user_values[i] + "' /></td>";
      form += "<tr> <td> Passowrd: </td> <td><input type='pass' name='pass' class='form=control' value='' /></td>";
    } else {
      form += "<tr> <td> Email: </td> <td><input type='email' name='email' class='form=control' value='' /></td>";
      form += "<tr> <td> Passowrd: </td> <td><input type='pass' name='pass' class='form=control' value='' /></td>";
    }


    form += "</tr> <tr> <td>  </td> <td> <input id='saveChangesBtn' type='submit' value='Save Changes' class='btn btn-primary' name='saveChangesBtn'/> " +
      "</td> </tr> </tbody> </table> </div> </form>";

    // <a href="index.php" style="position: absolute; margin-left: 2px;" class="btn btn-danger">Back to read products</a>

    formdiv.innerHTML += form;

  } else {
    $("#update_form_div").show();
  }
}

function deleteUser(id) {

  var user_obj_index = id.substr(id.indexOf('-') + 1, id.indexOf('-'));
  userID = users[user_obj_index].user_values[0];

  $.ajax({
    url: 'delete_user.php',
    data: {
      userID: userID
    },
    type: 'POST',
    success: function(data) {
      $("#sucess_div").css("display", "block");
      $("#theTable").hide();
      $("#theTable").empty();
      usertypetable();
      $("#theTable").show();
      // notifiy done sucessfully
    },
    error: function(data) {
      console.log(data);
      $("#error_div").css("display", "block");
      //$("#errormsg").html(data.responseText);
    }
  });
}



function listAllPermissionsTable() {

  var div = document.getElementById("allPermissionsTable");
  var table = ' <div class="table-responsive"> <br> <table class="table table-bordered userstable" id="dataTable" width="100%" cellspacing="0"> <thead> <tr>';

  table += "<th> Type Name</th>"
  table += "<th> Link Name</th>"
  table += "<th> Control </th>"

  table += "</tr> </thead> <tfoot> <tr>"
  table += "<th> Type Name</th>"
  table += "<th> Link Type</th>"
  table += "<th> Control </th>"
  table += "</tr> </tfoot>";

  $.ajax({
    url: 'list_user_links.php',
    type: 'POST',
    dataType: "JSON",
    success: function(data) {

      links = data;

      if (data != null) {

        table += "<tbody>";

        for (var x in data) {

          table += "<tr>";

          var list = data[x];

          var userLinktypeID = list[0];
          var userlinkID = list[1];

          table += "<td>" + mainTypes[userLinktypeID] + "</td>";
          table += "<td>" + permissions[userlinkID] + "</td>";

          table += "<td> <a id='update-" + x + "' href='#' class='btn btn-primary btn-circle m-r-1em updatePermissionbtn'><i class='fa fa-edit'></i></a> " +
            "<a id='del-" + x + "' href='#' class='btn btn-danger btn-circle deletePermissionbtn'><i class='fas fa-trash'></i></a> </td> </tr>";

        }
        table += '</body>';
      }
      div.innerHTML += table;
      permissionsLoaded = 1;

      console.log(data);
    },
    error: function(data) {
      console.log(data);
      $("#errormsg").html(data.responseText);
    }
  });
}

function updatePermission(id) {

  permID = id.substr(id.indexOf('-') + 1, id.indexOf('-'));

  var userLinktypeID = links[permID][0];
  var userlinkID = links[permID][1];

  // if(userID != utid_update){

  // utid_update = typeID;
  $("#update_PermissionForm").empty();
  $("#allPermissionsTable").hide();
  $("#update_PermissionForm").show();

  var formdiv = document.getElementById("update_PermissionForm");

  var form = "<div id='sucessPermissionUpdate_div' class='alert alert-success' style='display: none'> Record was updated. </div>";
  form += "<div id='errorPermissionUpdate_div' class='alert alert-danger' style='display: none'> Something Wrong Happend. </div>";

  form += " <form id='updatePermissionForm' method='post'> " +
    " <div class='table-responsive'> <table class='table table-hover table-bordered'> <tbody> ";

  form += "<tr> <td>Type Name</td> <td><input type='text' id='UserTypeNameUpdate' name='UserTypeNameUpdate' class='form=control' readonly='readonly' value='" + mainTypes[userLinktypeID] + "' />";
  form += "<button class='btn btn-primary dropdown-toggle' type='button' id='dropdownMenuButton' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>Type </button>";
  form += "<div id='dropdown-UserTypes' class='dropdown-menu animated--fade-in' aria-labelledby='dropdownMenuButton' x-placement='top-start' style='position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;'>";
  for (var key in mainTypes) {
    form += "<a class='dropdown-item' id='link-" + key + "'>" + mainTypes[key] + "</a>";
  }
  form += "</div></td>";

  form += "<tr> <td>Permission</td> <td><input type='text' id='PermissionNameUpdate' name='PermissionNameUpdate' class='form=control' readonly='readonly' value='" + permissions[userlinkID] + "' />";
  form += "<button class='btn btn-primary dropdown-toggle' type='button' id='dropdownMenuButton' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>Type </button>";
  form += "<div id='dropdown-Permissions' class='dropdown-menu animated--fade-in' aria-labelledby='dropdownMenuButton' x-placement='top-start' style='position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;'>";
  for (var key in permissions) {
    form += "<a class='dropdown-item' id='link-" + key + "'>" + permissions[key] + "</a>";
  }
  form += "</div></td>";

  form += "</tr> <tr> <td>  </td> <td> <input id='savePermissionChangesBtn' type='submit' value='Save Changes' class='btn btn-primary' name='saveOptionChangesBtn'/> " +
    "</td> </tr> </tbody> </table> </div> </form>";

  // <a href="index.php" style="position: absolute; margin-left: 2px;" class="btn btn-danger">Back to read products</a>

  formdiv.innerHTML += form;
  // }else{
  //     $("#update_form_div").show();
  // }
}

function deletePermission(id) {

  permID = id.substr(id.indexOf('-') + 1, id.indexOf('-'));

  $.ajax({
    url: 'delete_permission.php',
    data: {
      permID: permID
    },
    type: 'POST',
    success: function(data) {
      // $("#sucessPermissionTable_div").css("display", "block");
      $("#allPermissionsTable").hide();
      $("#allPermissionsTable").empty();
      listAllPermissionsTable();
      $("#allPermissionsTable").show();
      // notifiy done sucessfully
    },
    error: function(data) {
      console.log(data);
      // $("#errorPermissionTable_div").css("display", "block");
      //$("#errormsg").html(data.responseText);
    }
  });
}
