<!DOCTYPE HTML>
<html>
<head>
    <title>Update Record</title>
     
    <!-- Latest compiled and minified Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
         
</head>
<body>
 
    <!-- container -->
    <div class="container">
  
        <div class="page-header">
            <h1>Update User Information</h1>
        </div>
     
        <?php

            include_once('users.php');

            // get passed parameter value, in this case, the record ID
            // isset() is a PHP function used to verify if a value is there or not
            $id=isset($_GET['id']) ? $_GET['id'] : die('ERROR: Record ID not found.');
            
            $obj = new Users($id);
            
            // read current record's data
            try {

                $obj = new Users($id);
                
                // values to fill up our form
                $fname = $obj->firstname;
                $lname = $obj->lastname;
                $email = $obj->email;
                $pass = $obj->password;
                $bdate = $obj->bdate;
                $typeid = $obj->typeid;
            }
            
            // show error
            catch(PDOException $exception){
                die('ERROR: ' . $exception->getMessage());
            }

             // check if form was submitted
             if(isset($_POST['update_user']))
             {
                
                try{

                    $obj->firstname = $_POST['fname'];
                    $obj->lastname = $_POST["lname"];
                    $obj->email = $_POST["email"];
                    $obj->password = $_POST["password"];
                    $obj->bdate = $_POST["bdate"];
                    $obj->typeid = $_POST["usertype"];
                
                    $return = $obj::updateUser($obj);
                    
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
            <td>First Name</td>
            <td><input type='text' name='fname' value="<?php echo htmlspecialchars($fname, ENT_QUOTES);  ?>" class='form-control' /></td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td><input type='text' name='lname' value="<?php echo htmlspecialchars($lname, ENT_QUOTES);  ?>" class='form-control' /></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><textarea name='email' class='form-control'><?php echo htmlspecialchars($email, ENT_QUOTES);  ?></textarea></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type='text' name='password' value="<?php echo htmlspecialchars($pass, ENT_QUOTES);  ?>" class='form-control' /></td>
        </tr>
        <tr>
            <td>Birth Date</td>
            <td><input type='date' name='bdate' value="<?php echo htmlspecialchars($bdate, ENT_QUOTES);  ?>" class='form-control' /></td>
        </tr>
        <tr>
            <td>User Type</td>
            <td><input type='text' name='usertype' value="<?php echo htmlspecialchars($typeid, ENT_QUOTES);  ?>" class='form-control' /></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type='submit' value='Save Changes' class='btn btn-primary' name="update_user" />
                <a href='index.php' class='btn btn-danger'>Back to read products</a>
            </td>
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