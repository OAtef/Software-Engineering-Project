$(document).ready(function() {

  $.ajax({
    url: "PHP/doGetAddress.php",
    data: {addressID: 0},
    type: "POST",
    dataType: "json",
    success: function(data) {

      $("<option value='' disabled selected>Choose your option</option>").appendTo("#countryBox");

      for (var i = 0; i < data.length; i++) {
        var obj = data[i];
        $("<option value='" + obj.id + "'>" + obj.address_name + "</option>").appendTo("#countryBox");

      }
    },
    error: function(data2) {
      alert("document Error");
    }
  });

});

$("#countryBox").change(function() {

  $("#governmentBox").empty();

  $.ajax({
    url: "PHP/doGetAddress.php",
    data: { addressID: $("#countryBox :selected").val() },
    type: "POST",
    dataType: "json",
    success: function(data) {

      $("<option value='' disabled selected>Choose your option</option>").appendTo("#governmentBox");

      for (var i = 0; i < data.length; i++) {
        var obj = data[i];
        $("<option value='" + obj.id + "'>" + obj.address_name + "</option>").appendTo("#governmentBox");

      }
    },
    error: function(data2) {

    }
  });

}).trigger("change");

$("#governmentBox").change(function() {

  $("#cityBox").empty();

  $.ajax({
    url: "PHP/doGetAddress.php",
    data: { addressID: $("#governmentBox :selected").val() },
    type: "POST",
    dataType: "json",
    success: function(data) {

      $("<option value='' disabled selected>Choose your option</option>").appendTo("#cityBox");

      for (var i = 0; i < data.length; i++) {
        var obj = data[i];
        $("<option value='" + obj.id + "'>" + obj.address_name + "</option>").appendTo("#cityBox");

      }
    },
    error: function(data2) {

    }
  });

}).trigger("change");
