<!DOCTYPE HTML>
<html>
<head>
    <title>Insert Page </title>

    <!-- Latest compiled and minified Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

</head>
<body>

    <!-- container -->
    <div class="container">

        <div class="page-header">
            <h1>Create New User</h1>
        </div>


        <!-- html form here where the product information will be entered -->
    <form action="doInsertUser.php" method="post">
        <table class='table table-hover table-responsive table-bordered'>
            <tr>
                <td>First Name</td>
                <td><input type='text' name='fname' id='fname' class='form-control' /></td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td><input type='text' name='lname' id='lname' class='form-control'/></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type='email' name='email' id='email' class='form-control' /></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type='password' name='password' id='password' class='form-control' /></td>
            </tr>
            <tr>
                <td>Birth Date</td>
                <td><input type='date' name='bdate' id='bdate' class='form-control' /></td>
            </tr>
            <tr>
                <td>User Type</td>
                <td><input type='text' name='usertype' id='usertype' class='form-control' /></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type='submit' value='Save' class='btn btn-primary' name="add_user" />
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
