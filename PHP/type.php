<?php
include_once('dbConnection.php');

class Types
{

  public $ID;
  public $typename;

   function __construct($id){

      $sql ="SELECT * FROM users WHERE id='$id'";
      $result = mysqli_query($GLOBALS["db"], $sql);

      if(mysqli_num_rows($result) == 1){

        while($row = mysqli_fetch_array($result)){
          $this->ID = $row["id"];
          $this->typename = $row["typeName"];
        
        }

      }
    }
  static function addusertype($obj){

    $add_user_query="INSERT INTO usertype (id, typeName)  VALUES ('$obj->$ID', '$obj->$typename')";
      mysqli_query($GLOBALS["db"], $add_user_query);

  }

  static function deleteusertype($obj){

      $delete_user_query = "DELETE FROM usertype WHERE usertype.id = $obj->$ID";
      mysqli_query($GLOBALS["db"], $delete_user_query);
      if (mysqli_affected_rows($GLOBALS["db"]) == 1) {
        return 1;
      }
      else{
        return 0;
      }

  }

  static function updateusertype($obj){

        $update_user_query = "UPDATE usertype SET id='$obj->$ID', typeName='$obj->$typename'";
      mysqli_query($GLOBALS["db"], $update_user_query) or die(mysqli_error($mysqli));
      if (mysqli_affected_rows($GLOBALS["db"]) == 1) {
            return 1;
          }
          else{
            return 0;
          }

  }
  
  }
?>