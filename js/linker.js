
    $(document).on('click', '.link-page', function(e){

    var pageToGet = $(this).attr("id") + "-li";
    var pageToGet2 = $(this).attr("id");
    var id = "#" + pageToGet + " , ." + pageToGet + "-father";

    jQuery('.page-content').html("<div class='loader'><div class='spinner'></div></div>");
    $(".spinner").show();


    $.ajax({
        url: '../controller/html_pages/get_page.php',
        data: {page: pageToGet2},
        type: 'POST',
        dataType: "HTML",
        success: function(data) {

            $(".page-content").fadeOut(500, function () {

                $('.page-content').empty();
                $('.page-content').html(data);
                $("li.active").removeClass("active");
                $(id).addClass("active");

            }).fadeIn(500);

        },
        error: function(data){
            console.log(data);
        }
    });

});
