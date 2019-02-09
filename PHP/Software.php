<!DOCTYPE html>
<html>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="../CSS/Control.css">
</head>

<body>

  <h2>Control Panel</h2>

  <!-- Users modal -->
  <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Users</button>

  <div id="id01" class="modal">

    <form class="modal-content animate" action="" method="post">
      <div class="imgcontainer">
        <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      </div>

      <div class="container">
        <label for="uname"><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="uname" required>

        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="psw" required>

        <label for="uname"><b>First Name</b></label>
        <input type="text" placeholder="Enter First Name" name="fname" required>

        <label for="uname"><b>Last Name</b></label>
        <input type="text" placeholder="Enter Last Name" name="lname" required>

        <!-- dropdown list -->
        <label for="uname"><b>Usertype ID</b></label>
        <input type="text" placeholder="Enter Usertype ID" name="typeid" required>

        <button type="submit">Insert</button>

      </div>

      <div class="container" style="background-color:#f1f1f1">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>

      </div>
    </form>
  </div>


  <!-- UserType -->
  <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;">UsersType</button>

  <div id="id02" class="modal">

    <form class="modal-content animate" action="" method="post">
      <div class="imgcontainer">
        <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      </div>

      <div class="container">
        <label for="uname"><b>Type Name</b></label>
        <input type="text" placeholder="Enter Username" name="uname" required>

        <!-- check boxes with the all the links in the database  -->
        <label for="uname"><b>Links</b></label>
        <input type="text" placeholder="Select Links" name="typeid" required>

        <button type="submit">Insert</button>

      </div>

      <div class="container" style="background-color:#f1f1f1">
        <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>

      </div>
    </form>
  </div>


  <!-- UserLinks -->
  <button onclick="document.getElementById('id03').style.display='block'" style="width:auto;">Users Links</button>

  <div id="id03" class="modal">

    <form class="modal-content animate" action="" method="post">
      <div class="imgcontainer">
        <span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">&times;</span>
      </div>

      <div class="container">
        <!-- dropdown list with all types -->
        <label for="uname"><b>Type ID</b></label>
        <input type="text" placeholder="Enter Username" name="uname" required>

        <!-- check boxes with all the links -->
        <label for="uname"><b>Link ID</b></label>
        <input type="text" placeholder="Enter Link ID" name="linkid" required>

        <button type="submit">Insert</button>

      </div>

      <div class="container" style="background-color:#f1f1f1">
        <button type="button" onclick="document.getElementById('id03').style.display='none'" class="cancelbtn">Cancel</button>

      </div>
    </form>
  </div>


  <!-- Links -->
  <button onclick="document.getElementById('id04').style.display='block'" style="width:auto;">Links</button>

  <div id="id04" class="modal">

    <form class="modal-content animate" action="addLink.php" method="post">
      <div class="imgcontainer">
        <span onclick="document.getElementById('id04').style.display='none'" class="close" title="Close Modal">&times;</span>
      </div>

      <div class="container">

        <label for="uname"><b>Physical Link</b></label>
        <input type="text" placeholder="Enter The Link" name="phylink" required>

        <label for="psw"><b>Friendly Name</b></label>
        <input type="text" placeholder="Enter Friend name" name="friendlyname" required>

        <button type="submit">Insert</button>

      </div>

      <div class="container" style="background-color:#f1f1f1">
        <button type="button" onclick="document.getElementById('id04').style.display='none'" class="cancelbtn">Cancel</button>

      </div>
    </form>
  </div>

</body>

</html>
