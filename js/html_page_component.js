$(document).ready(function(){
	
	$(document).on('click','#insert_btn',function(e){

        e.preventDefault();
        e.stopImmediatePropagation();

        var name = $('#name').val();
        var html_input = $('#html_input').val();
        var position = $('#position').val();


        if(name == "" || html_input == "" || position == "" ){

            // alert you need to enter data
            console.log("you need to enter data");
        }
        else{

            $.ajax({ 
                url: '../controller/html_pages/insert_page_component.php',
                data: {name: name, html: html_input, position: position},
                type: 'POST',                                                  
                success: function(data) {
                    console.log(data);
    
                    // alert
                },
                error: function(data){
                    console.log(data);
                }
            });
    

        }

    });	

	return false;
});
