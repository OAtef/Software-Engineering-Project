$(document).ready(function(){

    var num = 1;
    var imgs = new Array();

    $("#insertProject").hide();

    // btns
    $("#finishbtn").hide();

    //divs
    $("#pro-insert2").hide();
    $("#pro-insert3").hide();
    $("#pro-insert4").hide();
    $("#pro-insert5").hide();
    $("#org_chooseTable").hide();
    
    $(document).on('click','#projectimgBtn',function(e){

        $('input[type="file"]').bind({
            change : function()
            {
                var input = this,
                files = input.files;
  
                if (files.length > 0) {
                    var regExp = new RegExp('image.(jpeg|jpg|gif|png)', 'i');
                    for (var i = 0; i < files.length; i++)
                    {
                        var file = file = files[i];
                        var matcher = regExp.test(file.type);
  
                        if (!matcher)
                        {
                            alert('invalid file');
                        }
                    }
                    imgs = files;

                } /* else {
                    alert('please add 1 file');
                }  */  
            }
        });

        $.ajax({ 
            url: '../Model/user_intermediate.php',
            data: {function2call: 'get_chooseTable'},
            type: 'POST',
            dataType: "JSON",
            success: function(data) { 
                console.log(data);

                $("#leader_chooseTable").empty();
                $("#members_chooseTable").empty();
                $("#org_chooseTable").empty();

                var div1 = document.getElementById("leader_chooseTable");
                var div2 = document.getElementById("members_chooseTable");
                //var div3 = document.getElementById("org_chooseTable");

                var table_leader = '<div class="table-responsive"> <br> <table class="table table-bordered leader" id="dataTable" width="100%" cellspacing="0"> <thead> <tr>';
                var table_member = '<div class="table-responsive"> <br> <table class="table table-bordered member" id="dataTable" width="100%" cellspacing="0"> <thead> <tr>';
                
                var table = "";
                var headers = data[0];
                var vals = data[1];

                var obj_size = vals.length;
                var arr_size = vals[0].user_values.length;

                table += "<th> Check </th>";
                for (var key in headers) {
                    table += "<th>" + (key) + "</th>";
                }

                table += "<th> Email </th>";

                table += "</tr> </thead> <tfoot> <tr>";

                table += "<th> Check </th>";
                for (var key in headers) {
                    table += "<th>" + (key) + "</th>";
                }

                table += "<th> Email </th>";

                table += "</tr> </tfoot>";

                table += "<tbody>";
                var a =0;
                while(a < obj_size){
                    table += "<tr>";

                    table += "<td><input type='checkbox' value='"+ (vals[a].user_values[a]) + "'/></td> ";
                    var b=1;
                    while (b < arr_size){
                         table += "<td>" + (vals[a].user_values[b]) + "</td>";
                        b += 1;
                    }

                    a += 1;

                }

                table += '</body>';
                div1.innerHTML+= (table_leader + table);
                div2.innerHTML+= (table_member + table);
                //div3.innerHTML+= table;

            },
            error: function(data){
                console.log(data);
                $("#errormsg").html(data.responseText);
            }
        });
    }); 

    $(document).on('click','#insert_project_Btn',function(e){

        var div_leaders = document.getElementById("leaders");
        var div_members = document.getElementById("members");

        $.ajax({ 
            url: '../Model/user_intermediate.php',
            data: {function2call: 'get_chooseTable'},
            type: 'POST',
            dataType: "JSON",
            success: function(data) { 
                console.log(data);

                var headers = data[0];
                var values = data[1];

                var table_leader = ' <div class="table-responsive"> <br> <table class="table table-bordered leader" id="dataTable" width="100%" cellspacing="0"> <thead> <tr>';
                var table_member = ' <div class="table-responsive"> <br> <table class="table table-bordered member" id="dataTable" width="100%" cellspacing="0"> <thead> <tr>';
                
                var table = "";

                table += "<th> Checked </th>";

                for (var key in headers) {
                    table += "<th>" + (key) + "</th>";
                }

                table += "<th> Email </th>";

                table += "</tr> </thead> <tfoot> <tr>";

                table += "<th> Checked </th>";

                for (var key in headers) {
                    table += "<th>" + (key) + "</th>";
                }

                table += "<th> Email </th>";


                table += "</tr> </tfoot>";

                var obj_size = values.length;
                var arr_size = values[0].user_values.length;

                var a =0;

                table += "<tbody>";
                while(a < obj_size){
                    table += "<tr>";
                    table += "<td><input type='checkbox' value='" + (values[a].user_values[a]) + "'/></td>";
                    var b=1;
                    while (b < arr_size){
                        table += "<td>" + (values[a].user_values[b]) + "</td>";
                        b += 1;
                    }

                    a += 1;

                }

                table += '</body> </table>';
                div_leaders.innerHTML+= (table_leader+table);
                div_members.innerHTML+= (table_member+table);
            },
            error: function(data){
            console.log(data);
            $("#errormsg").html(data.responseText);
            }
        });

        $.ajax({ 
            url: '../Model/user_intermediate.php',
            data: {function2call: 'get_project_categories'},
            type: 'POST',
            dataType: "JSON",
            success: function(data) { 
                console.log(data);

                for (var key in data) {
                    $("<option id'cat-" + key + "'>" + data[key] + "</option>").appendTo("#select_categories");
                }
        
            },
            error: function(data){
            console.log(data);
            $("#errormsg").html(data.responseText);
            }
        });

        e.preventDefault();
        e.stopImmediatePropagation();

        $("#foundationMembers").hide();
        $("#tablediv").hide();
        $("#update_form_div").hide();
        $("#insert_form_div").hide();
        $("#emails").hide();
        $("#settingsPage").hide();
        $("#insertProject").show();
        $("#emailForm").hide();
        $("#logg").hide();  
        $("#dashboard").hide(); 

        return false;

    });

    $(document).on('click','#nextbtn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        $("#pro-insert"+num).hide();
        num++;
        $("#pro-insert"+num).show();

        if(num == 5){
            $("#finishbtn").show();
            $("#nextbtn").hide();
        }

        return false;

    });

    $(document).on('click','#previousbtn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        if(num == 1 || num < 1){
            num = 1;
        }
        else{

            $("#pro-insert"+num).hide();
            num--;
            $("#pro-insert"+num).show();

            $("#finishbtn").hide();
            $("#nextbtn").show();
            return false;

        }

    });

    $('input[name="yes_no_org"]').click(function () {
        if ($(this).attr("value") == "yes") {
            $("#org_chooseTable").show('slow');
        }
        if ($(this).attr("value") == "no") {
            $("#org_chooseTable").hide('slow');
        }
    });

    $('input[name="yes_no_img"]').trigger('click');  // trigger the event

    $('input[name="yes_no_img"]').click(function () {
        if ($(this).attr("value") == "yes") {
            $("#chooseImg").show('slow');
        }
        if ($(this).attr("value") == "no") {
            $("#chooseImg").hide('slow');
        }
    });

    $('input[name="yes_no_img"]').trigger('click');  // trigger the event
    
    $(document).on('click','#finishbtn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        var project_name = $("#proj_name").val();
        var budget = $("#budget").val();
        var num_of_phases = $("#phases").val();
        var project_notes = $("#project_notes").val();
        var selectedCategory = $("#select_categories").children("option:selected").val();

        if(project_name == "" || budget == "" || num_of_phases == "" || selectedCategory == ""){
            alert(" You Must Enter All Informations");
            return;
        }else{
            var phase = 100 / num_of_phases;

            var arr = new Array();

            arr.push(project_name);
            arr.push(budget);
            arr.push(num_of_phases);
            arr.push(phase);
            arr.push(selectedCategory);
            if(project_notes == ""){
                arr.push("");
            }else{
                arr.push(project_notes);
            }
        }

        var checked_leaders = new Array();
        checked_leaders.push(
            $("input:checkbox:checked", ".leader").map(function() {
                return $(this).val();
            }).get()
        );

        var checked_members = new Array();
        checked_members.push(
            $("input:checkbox:checked", ".member").map(function() {
                return $(this).val();
            }).get()
        );

        



        


        return false;
    });

});