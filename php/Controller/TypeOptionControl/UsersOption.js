var optionID;
var optionTypeID;
var optionsLoaded = 0;
var addLoaded = 0;

$(document).on('click', '#showAddOptionBtn', function(e) {

  e.preventDefault();
  e.stopImmediatePropagation();

  if (addLoaded == 0) {
    $.ajax({
      url: '../Controller/TypeOptionControl/Add_Option.php',
      data: {
        condition: "show"
      },
      type: 'POST',
      dataType: "JSON",
      success: function(data) {

        var div = document.getElementById("AddOptionSettings");

        div.innerHTML += data;

        addLoaded = 1;

      },
      error: function(data) {
        console.log(data);
      }
    });
  }

  $("#AddOptionSettings").show();
  $("#allOptionsTable").hide();
  $("#update_OptionForm").hide();

  return false;
});

$(document).on('click', '#showListOptionBtn', function(e) {

  e.preventDefault();
  e.stopImmediatePropagation();

  if (optionsLoaded != 1) {
    listAllOptionsTable();
  }

  $("#AddOptionSettings").hide();
  $("#allOptionsTable").show();
  $("#update_OptionForm").hide();

  return false;
});

$(document).on('click', '#addOptionBtn', function(e) { // insert

  e.preventDefault();
  e.stopImmediatePropagation();

  var optionName = document.getElementById("OptionName").value;
  var optionType = document.getElementById("OptionTypeName").value;

  $.ajax({
    url: "../Controller/TypeOptionControl/Add_Option.php",
    type: "POST",
    data: {
      condition: "add",
      OptionName: optionName,
      OptionType: optionType,
      OptionTypeID: optionTypeID
    },
    success: function(data) {
      console.log(data);
      $("#allOptionsTable").hide();
      $("#allOptionsTable").empty();
      listAllOptionsTable();
      $("#sucessOption_div").css("display", "block");

    },
    error: function(data) {
      console.log(data);
      $("#errorOption_div").css("display", "block");
      //$("#errormsg").html(data.responseText);
    }
  });
  return false;
});

$(document).on('click', '.updateOptionbtn', function(e) {

  e.preventDefault();
  e.stopImmediatePropagation();

  $("#allOptionsTable").hide();

  var id = $(this).attr('id');
  optionID = id.substr(id.indexOf('-') + 1, id.indexOf('-'));

  var optionname = $("#optionname-" + optionID).text();
  var optiontype = $("#optiontype-" + optionID).text();

  var formdiv;

  $.ajax({
    url: '../Controller/TypeOptionControl/List_TypeOption.php',
    data: {
      DisplayType: "update",
      optionName: optionname,
      typeName: optiontype
    },
    type: 'POST',
    dataType: "JSON",
    success: function(data) {

      $("#update_OptionForm").empty();
      $("#allOptionsTable").hide();
      $("#update_OptionForm").show();

      formdiv = document.getElementById("update_OptionForm");

      formdiv.innerHTML += data;

    },
    error: function(data) {
      console.log(data);
      $("#errormsg").html(data.responseText);
    }
  });

  return false;
});

$(document).on('click', '.deleteOptionbtn', function(e) {

  e.preventDefault();
  e.stopImmediatePropagation();

  var id = $(this).attr('id');

  optionID = id.substr(id.indexOf('-') + 1, id.indexOf('-'));

  $.ajax({
    url: '../Controller/TypeOptionControl/Delete_Option.php',
    data: {
      optionID: optionID
    },
    type: 'POST',
    success: function(data) {
      $("#sucessOption_div").css("display", "block");
      $("#allOptionsTable").hide();
      $("#allOptionsTable").empty();
      listAllOptionsTable();
      $("#allOptionsTable").show();
      // notifiy done sucessfully
    },
    error: function(data) {
      console.log(data);
      $("#errorOption_div").css("display", "block");
      //$("#errormsg").html(data.responseText);
    }
  });
  return false;
});

$(document).on('click', '#saveOptionChangesBtn', function(e) { // update

  e.preventDefault();
  e.stopImmediatePropagation();

  var name = $('#UpdateOptionName').val();
  var type = $('#UpdateOptionTypeName').val();

  $.ajax({
    url: "../Controller/TypeOptionControl/Update_Option.php",
    type: "POST",
    data: {
      optionID: optionID,
      name: name,
      type: type,
      typeID: optionTypeID
    },
    success: function(data) {
      console.log(data);
      $("#allOptionsTable").hide();
      $("#allOptionsTable").empty();
      listAllOptionsTable();
      $("#sucessOptionUpdate_div").css("display", "block");
    },
    error: function(data) {
      console.log(data);
      $("#errorOptionUpdate_div").css("display", "block");
      //$("#errormsg").html(data.responseText);
    }
  });
  return false;
});

$(document).on('click', '.OptionTypesDropdown', function(e) {
  e.preventDefault();
  e.stopImmediatePropagation();

  var id = $(this).attr('id');
  optionTypeID = id.substr(id.indexOf('-') + 1, id.indexOf('-'));

  if ($("#OptionTypeName").length > 0) {
    document.getElementById("OptionTypeName").value = $(this).text();
  }
  if ($("#UpdateOptionTypeName").length > 0) {
    document.getElementById("UpdateOptionTypeName").value = $(this).text();
  }

});

function listAllOptionsTable() {

  var div = document.getElementById("allOptionsTable");

  $.ajax({
    url: '../Controller/TypeOptionControl/List_TypeOption.php',
    data: {
      DisplayType: "all",
    },
    type: 'POST',
    dataType: "JSON",
    success: function(data) {

      div.innerHTML += data;
      optionsLoaded = 1;

    },
    error: function(data) {
      console.log(data);
      $("#errormsg").html(data.responseText);
    }
  });
}
