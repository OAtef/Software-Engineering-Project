<!DOCTYPE HTML>
<html>
<head>
    <title>Update User Type</title>

    <!-- Latest compiled and minified Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

</head>
<body>

    <!-- container -->
    <div class="container">

        <div class="page-header">
            <h1>Update User Type</h1>
        </div>

        <?php

            include_once('type.php');

            // get passed parameter value, in this case, the record ID
            // isset() is a PHP function used to verify if a value is there or not
            $id=isset($_GET['id']) ? $_GET['id'] : die('ERROR: Record ID not found.');

            $obj = new Types($id);

            // read current record's data
            try {

                $obj = new Types($id);

                // values to fill up our form
                $usertypeid = $obj->ID;
                $usertypename = $obj->typename;
                
            }

            // show error
            catch(PDOException $exception){
                die('ERROR: ' . $exception->getMessage());
            }

             // check if form was submitted
             if(isset($_POST['update_usertype']))
             {

                try{

                    $obj->ID = $_POST['id'];
                    $obj->typename = $_POST["typeName"];
                  

                    $return = Types::updateusertype($obj);

                    // Execute the query
                    if($return == 1){
                        echo "<div class='alert alert-success'>Record was updated.</div>";
                    }else{
                        echo "<div class='alert alert-danger'>Unable to update record. Please try again.</div>";
                    }

                }

                // show errors
                catch(PDOException $exception){
                    die('ERROR: ' . $exception->getMessage());
                }
            }
        ?>


<!--we have our html form here where new record information can be updated-->
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"] . "?id={$id}");?>" method="post">
    <table class='table table-hover table-responsive table-bordered'>
        <tr>
            <td>User Type Name</td>
            <td><input type='text' name='usertypename' value="<?php echo htmlspecialchars($usertypename, ENT_QUOTES);  ?>" class='form-control' /></td>
        </tr>
        <tr>
            <td>User Type ID</td>
            <td><input type='text' name='usertypeid' value="<?php echo htmlspecialchars($usertypeid, ENT_QUOTES);  ?>" class='form-control' /></td>
        </tr>
     
        
      
        
    </table>
</form>

    </div> <!-- end .container -->

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<!-- Latest compiled and minified Bootstrap JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>
