<!DOCTYPE HTML>
<html>
<head>
    <title>Read Records </title>
     
    <!-- Latest compiled and minified Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
         
    <!-- custom css -->
    <style>
    .m-r-1em{ margin-right:1em; }
    .m-b-1em{ margin-bottom:1em; }
    .m-l-1em{ margin-left:1em; }
    .mt0{ margin-top:0; }
    </style>
 
</head>
<body>
 
    <!-- container -->
    <div class="container">
  
        <div class="page-header">
            <h1>Read Reocrds</h1>
        </div>
     
        <?php
            include_once('users.php');
            
            $action = isset($_GET['action']) ? $_GET['action'] : "";
 
            // if it was redirected from delete.php
            if($action=='deleted'){
                echo "<div class='alert alert-success'>Record was deleted.</div>";
            }
            
            // select all data
            $obj = new Users(NULL);
            $arr = $obj::selectAllUsers();
            
            // this is how to get number of rows returned
            $num = count($arr);
            
            // link to create record form
            echo "<a href='create.php' class='btn btn-primary m-b-1em'>Insert New User</a>";
            
            //check if more than 0 record found
            if($num>0){
            
                echo "<table class='table table-hover table-responsive table-bordered'>";//start table
 
                    //creating our table heading
                    echo "<tr>";
                        echo "<th>ID</th>";
                        echo "<th>First Name</th>";
                        echo "<th>Last Name</th>";
                        echo "<th>Email</th>";
                        echo "<th>Password</th>";
                        echo "<th>Bdate</th>";
                        echo "<th>User Type</th>";
                    echo "</tr>";
                    
                   for($i=0; $i < $num; $i++){
                        
                        // creating new table row per record
                        echo "<tr>";
                            echo "<td>{$arr[$i]->ID}</td>";
                            echo "<td>{$arr[$i]->firstname}</td>";
                            echo "<td>{$arr[$i]->lastname}</td>";
                            echo "<td>{$arr[$i]->email}</td>";
                            echo "<td>{$arr[$i]->password}</td>";
                            echo "<td>{$arr[$i]->bdate}</td>";
                            echo "<td>{$arr[$i]->typeid}</td>";
                            echo "<td>";

                                // we will use this links on next part of this post
                                echo "<a href='update.php?id={$arr[$i]->ID}' class='btn btn-primary m-r-1em'>Edit</a>";
                    
                                // we will use this links on next part of this post
                                echo "<a href='#' onclick='delete_user({$arr[$i]->ID});'  class='btn btn-danger'>Delete</a>";
                            echo "</td>";
                        echo "</tr>";
                    }
            
                // end table
                echo "</table>";
                
            }
            
            // if no records found
            else{
                echo "<div class='alert alert-danger'>No records found.</div>";
            }
        ?>
         
    </div> <!-- end .container -->
     
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
   
<!-- Latest compiled and minified Bootstrap JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
<script type='text/javascript'>
// confirm record deletion
function delete_user( id ){
     
    var answer = confirm('Are you sure?');
    if (answer){
        // if user clicked ok, 
        // pass the id to delete.php and execute the delete query
        window.location = 'delete.php?id=' + id;
    } 
}
</script>
 
</body>
</html>