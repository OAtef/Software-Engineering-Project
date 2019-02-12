<!DOCTYPE html>
<html lang="en">
<head>
  <title>Software Engineering Project</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Software Engineering</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Users</a></li>
      <li><a href="#">User Links</a></li>
      <li><a href="#">Links</a></li>
      <li><a href="#">User Types</a></li>
    </ul>
  </div>
</nav>
</body>
</html>
<html>

<body>
  
    <!-- container -->
    <div class="container">
   
        <div class="page-header">
            <h1>Create New User Type</h1>
        </div>
        <!-- html form here where the product information will be entered -->
    <form action="doInsertUserType.php" method="post">
        <table class='table table-hover table-responsive table-bordered'>
           
              <tr>
                <td>User Type Name</td>
                <td><input type='text' name='usertypename' id='usertypename' class='form-control' /></td>
            </tr>

            <tr>
                <td>User Type ID</td>
                <td><input type='text' name='usertypeid' id='usertypeid' class='form-control' /></td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <input type='submit' value='Save' class='btn btn-primary' name="add_usertype" />
                    <a href='UTI.php' class='btn btn-danger'>Back to read user types</a>
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
<?php


?>