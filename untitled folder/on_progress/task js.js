$(document).ready(function(){

  $("#tasksPage").hide();


    $('.table-message tbody tr').click(
      function()
      {
        $(this).toggleClass('resolved');
      }
    );


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


