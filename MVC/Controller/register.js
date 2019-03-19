$(document).ready(function() {

  var size;

  $.ajax({ 
    url: '../Model/user_intermediate.php',
    data: {function2call: 'get_signup_form'},
    type: 'POST',
    dataType: "JSON",
    success: function(data){
      console.log(data);

      size = Object.keys(data).length;
      var div = document.getElementById("here");
      var into = "";


      var i = 0;
      for (var key in data) {

        arr = data[key];

        into += '<div class="form-group"><input type="'+ arr[1] +'" class="form-control form-control-user" id="input-'+ i++ +'" placeholder="'+ arr[0] +'"></div>';

      }

      div.innerHTML+= into;

    },
    error: function(data){
      console.log(data);
    }
  });

  $(document).on('click','#signupBtn',function(e){

    e.preventDefault();
    e.stopImmediatePropagation();

    var inpass = document.getElementById("inpass").val();
    var repass = document.getElementById("repass").val();
    

    if(inpass == repass){
      var email = document.getElementById("emaill").val();
      var arr = new Array();
      
      var i = 0;
      while(i<size){
        var id = "input-"+i;
        var value = document.getElementById(id).val();
        arr.push(value);
        i++;
      }

      var arr2 = new Array();

      arr2.push(email);
      arr2.push(repass);

      $.ajax({ 
        url: '../Model/user_intermediate.php',
        data: {function2call: 'save_signup_info', values1: arr, values2: arr2},
        type: 'POST',
        dataType: "JSON",
        success: function(data){
          console.log(data);
    
        },
        error: function(data){
          console.log(data);
        }
      });
    
    }

    else{
      alert("passwords are not equal");
    }

    return false;
});

});
