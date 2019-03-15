<?php include_once('dbconnection.php');?>

<script src="https://cdn.ckeditor.com/4.11.3/standard/ckeditor.js"></script>


<body>

    <h2> Create Article </h2>

      
   
    <form id="myForm" method="post">

        <input type="text" name="title" id="title" placeholder="Enter Article Title">
        <input type="text" name="author" id="author" placeholder="Enter Author Name">
        <textarea name="editor1" id="editor1" rows="10" cols="80">
                This is my textarea to be replaced with CKEditor.
            </textarea>
        <script>
            // Replace the <textarea id="editor1"> with a CKEditor
                // instance, using default configuration.
                CKEDITOR.replace( 'editor1' );
            </script>

        <input type="submit" value="Create Article" id="sub" name="sub" onclick="onclick()">
    </form>

    </body>
 <script>

function onclick () {
    
    $('sub').on('click', function(e){
   e.preventDefault();

   var name = $('input#title').val(),
       email = $('input#author').val(),
       comments = $('textarea#editor1').val(),
       formData = 'name=' + name + '&email=' + email + '&comments=' + comments;

    $.ajax({
      type: 'post',
      url: 'inserttodb.php',
      data: formData,
      success: function(results) {
        $('ul#response').html(results);
      }
    });
});

</script>
        
   
