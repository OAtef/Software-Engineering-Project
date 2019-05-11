var typeID;
var addparentID;
var typesLoaded = 0;
var addLoaded = 0;

$.ajax({
  url: '../Controller/UserTypeControl/List_UserTypes.php',
  data: {
    parentID: 0,
    DisplayType: "single"
  },
  type: 'POST',
  dataType: "JSON",
  success: function(data) {

    $(data).appendTo("#dropdown-usertype-table1");
    $(data).appendTo("#dropdown-usertype-insert");
    // $(data).appendTo("#dropdown-MainUserType");
    $(data).appendTo("#dropdown-email-table");
    $(data).appendTo("#dropdown-UserTypes");

  },
  error: function(data) {
    console.log(data);
    $("#errormsg").html(data.responseText);
  }
});

$(document).on('click', '#ShowAddTypeSettingsBtn', function(e) {

  e.preventDefault();
  e.stopImmediatePropagation();

  if (addLoaded == 0) {
    $.ajax({
      url: '../Controller/UserTypeControl/AddUserType.php',
      data: {
        parentID: 0,
        condition: "show"
      },
      type: 'POST',
      dataType: "JSON",
      success: function(data) {

        var div = document.getElementById("AddTypeSettings");

        div.innerHTML += data;

        addLoaded = 1;

      },
      error: function(data) {
        console.log(data);
      }
    });
  }

  $("#AddTypeSettings").show();
  $("#allTypesTable").hide();
  $("#update_typeForm").hide();

  return false;
});

$(document).on('click', '#ShowListTypeSettingsBtn', function(e) {

  e.preventDefault();
  e.stopImmediatePropagation();

  if (typesLoaded != 1) {
    listAllTypesTable();
  }

  $("#AddTypeSettings").hide();
  $("#allTypesTable").show();
  $("#update_typeForm").hide();

  return false;
});

$(document).on('click', '#addSubTypeBtn', function(e) { // insert

  e.preventDefault();
  e.stopImmediatePropagation();

  // var form_arr = $('#insertUserSubTypeForm').serialize();
  // form_arr += '&';

  // var form_arr = $('#TypeName').val();
  var xyz = document.getElementById("TypeName").value;
  // console.log(xyz);

  $.ajax({
    url: "../Controller/UserTypeControl/AddUserType.php",
    type: "POST",
    data: {
      condition: 'Add',
      parentID: addparentID,
      arr: xyz
    },
    success: function(data) {
      console.log(data);
      $("#allTypesTable").hide();
      $("#allTypesTable").empty();
      listAllTypesTable();
      $("#sucessType_div").css("display", "block");

    },
    error: function(data) {
      console.log(data);
      $("#errorType_div").css("display", "block");
      //$("#errormsg").html(data.responseText);
    }
  });
  return false;
});

$(document).on('click', '.dropdown1', function(e) {

  e.preventDefault();
  e.stopImmediatePropagation();

  var id = $(this).attr('id');
  parentID = id.substr(id.indexOf('-') + 1, id.indexOf('-'));

  $.ajax({
    url: '../Controller/UserTypeControl/List_UserTypes.php',
    data: {
      parentID: parentID,
      DisplayType: "single"
    },
    type: 'POST',
    dataType: "JSON",
    success: function(data) {

      $('#dropdown-usertype-table2').empty();
      $("#dropdown-usertype-insert2").empty();

      $(data).appendTo("#dropdown-usertype-table2");
      $(data).appendTo("#dropdown-usertype-insert2");

      $('.t2').show();
      $('.i2').show();

    },
    error: function(data) {
      console.log(data);
    }
  });
  return false;
});

$(document).on('click', '.deleteTypebtn', function(e) {

  e.preventDefault();
  e.stopImmediatePropagation();

  var id = $(this).attr('id');
  id = id.substr(id.indexOf('-') + 1, id.indexOf('-'));

  $.ajax({
    url: '../Controller/UserTypeControl/Delete_Type.php',
    data: {
      typeID: typeID
    },
    type: 'POST',
    success: function(data) {
      $("#sucessType_div").css("display", "block");
      $("#allTypesTable").hide();
      $("#allTypesTable").empty();
      listAllTypesTable();
      $("#allTypesTable").show();
      // notifiy done sucessfully
    },
    error: function(data) {
      console.log(data);
      $("#errorType_div").css("display", "block");
      //$("#errormsg").html(data.responseText);
    }
  });

  return false;
});

$(document).on('click', '.updateTypebtn', function(e) {

  e.preventDefault();
  e.stopImmediatePropagation();

  $("#allTypesTable").hide();

  var id = $(this).attr('id');
  typeID = id.substr(id.indexOf('-') + 1, id.indexOf('-'));

  var typename = $("#typename-" + typeID).text();
  var parentname = $("#parentname-" + typeID).text();

  var formdiv;

  $.ajax({
    url: '../Controller/UserTypeControl/List_UserTypes.php',
    data: {
      parentID: 0,
      TypeName: typename,
      ParentName: parentname,
      DisplayType: "update"
    },
    type: 'POST',
    dataType: "JSON",
    success: function(data) {

      $("#update_typeForm").empty();
      $("#allTypesTable").hide();
      $("#update_typeForm").show();

      formdiv = document.getElementById("update_typeForm");

      formdiv.innerHTML += data;

    },
    error: function(data) {
      console.log(data);
      $("#errormsg").html(data.responseText);
    }
  });

  return false;
});

$(document).on('click', '.EditDropdown', function(e) {
  e.preventDefault();
  e.stopImmediatePropagation();

  var id = $(this).attr('id');
  addparentID = id.substr(id.indexOf('-') + 1, id.indexOf('-'));


  // document.getElementById("ParentTypeName").value = $(this).text();
  document.getElementById("AddParentTypeName").value = $(this).text();
});

$(document).on('click', '#saveTypeChangesBtn', function(e) { // update

  e.preventDefault();
  e.stopImmediatePropagation();

  var name = $('#typeName').val();

  console.log(name);

  $.ajax({
    url: "../Controller/UserTypeControl/Update_UserTypes.php",
    type: "POST",
    data: {
      typeID: typeID,
      arr: name
    },
    success: function(data) {
      console.log(data);
      $("#allTypesTable").hide();
      $("#allTypesTable").empty();
      listAllTypesTable();
      $("#sucessTypeUpdate_div").css("display", "block");
    },
    error: function(data) {
      console.log(data);
      $("#errorTypeUpdate_div").css("display", "block");
      //$("#errormsg").html(data.responseText);
    }
  });
  return false;
});

function listAllTypesTable() {

  var div = document.getElementById("allTypesTable");

  $.ajax({
    url: '../Controller/UserTypeControl/List_UserTypes.php',
    data: {
      parentID: "all",
      DisplayType: "all"
    },
    type: 'POST',
    dataType: "JSON",
    success: function(data) {

      div.innerHTML += data;
      typesLoaded = 1;

    },
    error: function(data) {
      console.log(data);
      $("#errormsg").html(data.responseText);
    }
  });
}
