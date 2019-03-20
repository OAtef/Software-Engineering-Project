$(document).ready(function(){

    var num = 1;
    var imgs = new Array();
    var pro_info = new Array();
    var projectID;
    var categoryID;
    var index;

    var pro_leaders = new Array();
    var pro_members = new Array();

    $("#insertProject").hide();
    $("#tableProject").hide();

    // btns
    $("#finishbtn").hide();

    //divs
    $("#pro-insert2").hide();
    $("#pro-insert3").hide();
    //$("#pro-insert4").hide();
    //$("#pro-insert5").hide();
    //$("#org_chooseTable").hide();
    $("#updateProject").hide();

    $.ajax({ 
        url: '../Model/user_intermediate.php',
        data: {function2call: 'get_project_categories'},
        type: 'POST',
        dataType: "JSON",
        success: function(data) { 
            console.log(data);

            for (var key in data) {
                $("<option value='" + key + "'>" + data[key] + "</option>").appendTo("#select_categories");
                $("<option value='" + key + "'>" + data[key] + "</option>").appendTo("#up-select_categories");
                $("<a class='dropdownProject dropdown-item' id='proCat-" + key + "'>" + data[key] + "</a>").appendTo("#dropdown-project-table");
            }
        },
        error: function(data){
        console.log(data);
        $("#errormsg").html(data.responseText);
        }
    });
    
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

                var table_leader = ' <div class="table-responsive"> <br> <table class="table table-bordered" id="leader" width="100%" cellspacing="0"> <thead> <tr>';
                var table_member = ' <div class="table-responsive"> <br> <table class="table table-bordered" id="member" width="100%" cellspacing="0"> <thead> <tr>';
                
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
                    
                    var b=0;
                    while (b < arr_size){
                        if(b==0){
                            table += "<td><input type='checkbox' value='" + (values[a].user_values[b]) + "'/></td>";
                        }
                        else{
                            table += "<td>" + (values[a].user_values[b]) + "</td>";
                        }
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

    $(document).on('click','#list_project_Btn',function(e){
        
        e.preventDefault();
        e.stopImmediatePropagation();

        $("#updateProject").hide();
        $("#foundationMembers").hide();
        $("#tablediv").hide();
        $("#update_form_div").hide();
        $("#insert_form_div").hide();
        $("#emails").hide();
        $("#settingsPage").hide();
        $("#insertProject").hide();
        $("#emailForm").hide();
        $("#logg").hide();  
        $("#dashboard").hide(); 
        $("#tableProject").show(); 
        $("#tableProject").hide();
        $("#ReqDonation").hide();


        return false;

    });

    $(document).on('click','#nextbtn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        $("#pro-insert"+num).hide();
        num++;
        $("#pro-insert"+num).show();

        if(num == 5-2){
            $("#finishbtn").show();
            $("#up-finishbtn").show();
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
            $("#up-finishbtn").hide();
            $("#nextbtn").show();
            return false;

        }

    });

/*     $('input[name="yes_no_org"]').click(function () {
        if ($(this).attr("value") == "yes") {
            $("#org_chooseTable").show('slow');
        }
        if ($(this).attr("value") == "no") {
            $("#org_chooseTable").hide('slow');
        }
    });
    $('input[name="yes_no_org"]').trigger('click');  // trigger the event */

/*     $('input[name="yes_no_img"]').click(function () {
        if ($(this).attr("value") == "yes") {
            $("#chooseImg").show('slow');
        }
        if ($(this).attr("value") == "no") {
            $("#chooseImg").hide('slow');
        }
    });

    $('input[name="yes_no_img"]').trigger('click');  // trigger the event */
    
    $(document).on('click','#finishbtn',function(e){ //insert

        e.preventDefault();
        e.stopImmediatePropagation();

        var project_name = $("#proj_name").val();
        var budget = $("#budget").val();
        var num_of_phases = $("#phases").val();
        var project_notes = $("#project_notes").val();
        console.log(project_notes);
        var selectedCategory = $("#select_categories").children("option:selected").val();

        if(project_name == "" || budget == "" || num_of_phases == "" || selectedCategory == ""){
            alert(" You Must Enter All Informations");
            return;
        }else{
            //var phase = 100 / num_of_phases;

            var arr = new Array();

            arr.push(project_name);
            arr.push(budget);
            arr.push(num_of_phases);
            //arr.push(phase);
            arr.push(selectedCategory);
            if(project_notes == ""){
                arr.push("");
            }else{
                arr.push(project_notes);
            }
        }

        var checked_leaders = new Array();
        checked_leaders.push(
            $("input:checkbox:checked", "#leader").map(function() {
                return $(this).val();
            }).get()
        );

        var checked_members = new Array();
        checked_members.push(
            $("input:checkbox:checked", "#member").map(function() {
                return $(this).val();
            }).get()
        );

        var all_members = new Array();
        all_members[0] = checked_leaders;
        all_members[1] = checked_members;

        console.log(all_members);

        $.ajax({ 
            url: '../Model/user_intermediate.php',
            data: {function2call: 'insert_project', project_info: arr, members: all_members},
            type: 'POST',
            dataType: "JSON",
            success: function(data) { 
                console.log(data);
            },
            error: function(data){
            console.log(data);
            }
        });

        return false;
    });

    $(document).on('click','.dropdownProject',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        $("#updateProject").hide();
        $("#proTable").show(); 

        var id = $(this).attr('id');
        categoryID = id.substr(id.indexOf('-')+1, id.indexOf('-'));

        $("#proTable").empty();

        var div = document.getElementById("proTable");

        $.ajax({ url: '../Model/user_intermediate.php',
        data: {function2call: 'list_projects', CategoryID: categoryID},
        type: 'POST',
        dataType: "JSON",
        success: function(data) { 
            console.log(data);

            var table = ' <div class="table-responsive"> <br> <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"> <thead> <tr>';
            
            table += "<th> Project Name </th>";
            table += "<th> Budget </th>";
            table += "<th> Current Phase </th>";
            table += "<th> Control </th>";

            table += "</tr> </thead> <tfoot> <tr>";

            table += "<th> Project Name </th>";
            table += "<th> Budget </th>";
            table += "<th> current phase </th>";
            table += "<th> Control </th>";

            table += "</tr> </tfoot>";

            if(data.length != 0){

                pro_info = data;

                var obj_size = data.length;
                var arr_size = data[0].length;

                var a =0;

                table += "<tbody>";
                while(a < obj_size){
                    table += "<tr>";
                    var b=1;
                    while (b < arr_size-2){
                        var arr = data[a];
                        table += "<td>" + (arr[b]) + "</td>";
                        b += 1;
                    }

                    table += "<td> <a id='update-" + a + "' href='#' class='btn btn-primary btn-circle m-r-1em updateProbtn'><i class='fa fa-edit'></i></a> " +
                    "<a id='del-" + a + "' href='#' class='btn btn-danger btn-circle deleteProbtn'><i class='fas fa-trash'></i></a> </td> </tr>";

                    a += 1;

                }

                table += '</body>';
            }
            else{
                table += "<tbody> <tr> <td colspan='3'> No Data Exist </tr> </td> </body>";
            }

            div.innerHTML+= table;
        },
        error: function(data){
           console.log(data);
       }
        });
        return false;
    });

    $(document).on('click','.deleteProbtn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        var id = $(this).attr('id');
        var pro_obj_index = id.substr(id.indexOf('-')+1, id.indexOf('-'));
        var xx = pro_info[pro_obj_index];
        projectID = xx[0];

        $.ajax({
            url: '../Model/user_intermediate.php',
            data: {function2call: 'delete_project', projectID: projectID},
            type: 'POST',
            dataType: "JSON",
            success: function(data) {
                console.log("success");
            },
            error: function(data){
                console.log(data);
            }
        });
        return false;

    });

    $(document).on('click','.updateProbtn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        var id = $(this).attr('id');
        var pro_obj_index = id.substr(id.indexOf('-')+1, id.indexOf('-'));
        index = pro_obj_index;
        var xx = pro_info[pro_obj_index];


        var content = "<div id='pro-insert1'>"+
        "<label> Project Name </label>"+
        "<input type='text' name='proj_name' id='up-proj_name' style='width: 50%;'> <hr>"+
        "<label> Budget </label>"+
        "<input type='number' name='budget' id='up-budget' style='width: 25%;'>"+
        "<label> Current Phase </label>"+
        "<input type='number' name='phases' id='up-cphases' style='width: 10%;'>"+
        "<label> Number of Phases </label>"+
        "<input type='number' name='phases' id='up-phases' style='width: 15%;'><hr>"+
        "<textarea placeholder='notes on project ..' id='up-project_notes'></textarea><hr> </div>"+
        "<div id='pro-insert2'> <label> Choose Team Leaders: </label> <hr>"+
        "<div id='up-leaders'></div> <hr></div>"+
        "<div id='pro-insert3'> <label> Choose Team Mmebers: </label> <hr>"+
        "<div id='up-members'></div> <hr> </div>"+
        "<div style='margin-left: 37%'> <a href='#' id='previousbtn' class='previous aa'>&laquo; Previous</a>"+
        "<a href='#' id='nextbtn' class='next aa'>Next &raquo;</a> <a href='#' id='up-finishbtn' class='next aa'> Done &raquo;&raquo;</a> </div>";

        var div = document.getElementById("updateProject");
        div.innerHTML += content;

        $("#pro-insert2").hide();
        $("#pro-insert3").hide();
        $("#up-finishbtn").hide();

        //--------------------------------------------------------------

        $.ajax({
            url: '../Model/user_intermediate.php',
            data: {function2call: 'list_project_members', projectID: xx[0]},
            type: 'POST',
            dataType: "JSON",
            success: function(data) {

                pro_leaders = data[0];
                pro_members = data[1];
            },
            error: function(data){
                console.log(data);
            }
        });

        $.ajax({ 
            url: '../Model/user_intermediate.php',
            data: {function2call: 'get_chooseTable'},
            type: 'POST',
            dataType: "JSON",
            success: function(data) { 
                console.log(data);

                var div_leaders = document.getElementById("up-leaders");
                var div_members = document.getElementById("up-members");

                var headers = data[0];
                var values = data[1];

                var table_leader = ' <div class="table-responsive"> <br> <table class="table table-bordered" id="up-leader" width="100%" cellspacing="0"> <thead> <tr>';
                var table_member = ' <div class="table-responsive"> <br> <table class="table table-bordered" id="up-member" width="100%" cellspacing="0"> <thead> <tr>';
                
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

                

                table += "<tbody>";

                table_leader += table;
                table_member += table;

                var a =0;
                while(a < obj_size){
                    table_leader += "<tr>";
                    var b=0;
                    while (b < arr_size){
                        if(b==0){
                            if(pro_leaders.includes(values[a].user_values[b]) == true){
                                table_leader += "<td><input type='checkbox' value='" + (values[a].user_values[b]) + "' checked/></td>";
                            }
                            else{
                                table_leader += "<td><input type='checkbox' value='" + (values[a].user_values[b]) + "'/></td>";
                            } 
                        }
                        else{
                            table_leader += "<td>" + (values[a].user_values[b]) + "</td>";
                        }
                        b += 1;
                    }
                    a += 1;
                }

                var a =0;
                while(a < obj_size){
                    table_member += "<tr>";
                    
                    var b=0;
                    while (b < arr_size){
                        if(b==0){
                            if(pro_members.includes(values[a].user_values[b]) == true){
                                table_member += "<td><input type='checkbox' value='" + (values[a].user_values[b]) + "' checked/></td>";
                            }
                            else{
                                table_member += "<td><input type='checkbox' value='" + (values[a].user_values[b]) + "'/></td>";
                            } 
                        }
                        else{
                            table_member += "<td>" + (values[a].user_values[b]) + "</td>";
                        }
                        b += 1;
                    }
                    a += 1;
                }

                table_leader += '</body> </table>';
                table_member += '</body> </table>';

                div_leaders.innerHTML+= (table_leader);
                div_members.innerHTML+= (table_member);
            },
            error: function(data){
            console.log(data);
            $("#errormsg").html(data.responseText);
            }
        });

        $("#up-proj_name").val(xx[1]);
        $("#up-budget").val(xx[2]);
        $("#up-cphases").val(xx[3]);
        $("#up-phases").val(xx[4]);
        $("#up-project_notes").val(xx[5]);

        $("#updateProject").show();
        $("#proTable").hide();

        return false;
    });

    $(document).on('click','#up-finishbtn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        var arr = {};
        var project = pro_info[index];

        var project_name = $("#up-proj_name").val();
        var budget = $("#up-budget").val();
        var num_of_phases = $("#up-phases").val();
        var current_phase = $("#up-cphases").val();
        var project_notes = $("#up-project_notes").val();

        if(project_name == "" || budget == "" || num_of_phases == "" || current_phase == ""){
            alert(" Some informations cant be empty");
            return;
        }else{

            if(project_name != project[1]){
                arr.project_name = project_name;
            }
            if(budget != project[2]){
                arr.project_budget = budget;
            }
            if(num_of_phases != project[4]){
                arr.num_of_phases = num_of_phases;
            }
            if(current_phase != project[3]){
                arr.current_phase = current_phase;
            }
            if(project_notes != project[5]){
                arr.notes = project_notes;
            }


            var checked_leaders = new Array();
            checked_leaders.push(
                $("input:checkbox:checked", "#up-leader").map(function() {
                    return $(this).val();
                }).get()
            );

            var unchecked_leaders = new Array();
            unchecked_leaders.push(
                $("input:checkbox:not(:checked)", "#up-leader").map(function() {
                    return $(this).val();
                }).get()
            );

            var checked_members = new Array();
            checked_members.push(
                $("input:checkbox:not(:checked)", "#up-member").map(function() {
                    return $(this).val();
                }).get()
            );

            var unchecked_members = new Array();
            unchecked_members.push(
                $("input:checkbox:not(:checked)", "#up-member").map(function() {
                    return $(this).val();
                }).get()
            );

                var new_leaders = new Array();
                var rev_leaders = new Array();

            var aa = 0
            while(aa < checked_leaders.length){
                if(!pro_leaders.includes(checked_leaders[aa])){ // new member
                    new_leaders.push(checked_leaders[aa]);
                }
                aa++;
            }

            var zz = 0
            while(zz < unchecked_leaders.length){
                if(checked_leaders.includes(unchecked_leaders[zz])){ // rev member
                    rev_leaders.push(unchecked_leaders[zz]);
                }
                zz++;
            }

            var new_members = new Array();
            var rev_members = new Array();

            var aa = 0
            while(aa < checked_members.length){
                if(!pro_members.includes(checked_members[aa])){ // new member
                    new_members.push(checked_members[aa]);
                }
                aa++;
            }

            var zz = 0
            while(zz < unchecked_members.length){
                if(checked_members.includes(unchecked_members[zz])){ // rev member
                    rev_members.push(unchecked_members[zz]);
                }
                zz++;
            }

            $.ajax({
                url: '../Model/user_intermediate.php',
                data: {function2call: 'update_project', pro_info: arr, hi_mem: new_members, bye_mem: rev_members, projectID: project[0], hi_led: new_leaders, bye_led: rev_leaders},
                type: 'POST',
                dataType: "JSON",
                success: function(data) {
                    console.log(data);
                },
                error: function(data){
                    console.log(data);
                }
            });

        }

        return false;

    });

});

