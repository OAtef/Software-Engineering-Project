<?php

require_once '../../model/gender.php';
require_once '../../model/nationality.php';

class usersView
{
    public $emails;
    public $numbers;

    function __construct()
    {
        $this->emails = array();
        $this->numbers = array();
    }

    public function insert_page(array $data, array $refTable) {

        $form = " <form id='insertForm'  enctype='multipart/form-data' method='post'> " .
            " <div class='table-responsive'> <table class='table table-hover table-bordered'> <tbody> ";

        $form .= "<tr> <td> Upload Personal Photo </td><td><input type='file' name='file' id='file'> </td> </tr>" ;

        if(sizeof($data) != 0){

            $x = 1;

            foreach ($data as $key => $value) {
              if ($refTable[$key] == "tb_gender") {

                $genderArr = gender::_read();

                $form .= "<tr><td>Gender</td><td><select>";
                for ($i=0; $i < sizeof($genderArr); $i++) {

                  $form .= "<option id='in-9090' value='".$genderArr[$i]->id."'> ".$genderArr[$i]->gender_name." </option>";
                }
                $form .= "</select></tr></td>";
              }
              elseif ($refTable[$key] == "tb_nationality") {

                $nationalityArr = nationality::_read();

                $form .= "<tr><td>nationality</td><td><select>";
                for ($i=0; $i < sizeof($nationalityArr); $i++) {

                  $form .= "<option value='".$nationalityArr[$i]->id."'> ".$nationalityArr[$i]->nationality_name." </option>";
                }
                $form .= "</select></tr></td>";
              }
              elseif ($refTable[$key] == "tb_address") {
                
              }
              else {
                if ($value == "select") {
                  $form .= "";
                }
                elseif ($value == "date") {
                    $form .= "<tr> <td>" . $key . "</td> <td><input id='in-" . ($x++) . "'type='" . $value . "' name='" . $key . "' class='form=control' max='" . date("Y-m-d") . "'required/></td></tr>";
                }
                else {
                  $form .= "<tr> <td>" . $key . "</td> <td><input id='in-" . ($x++) . "'type='" . $value . "' name='" . $key . "' class='form=control' required/></td></tr>";
                }
              }
            }

            $form .= "<tr> <td> Phone Number </td><td><input type='number' name='phone_Num' id='phone_number' maxlength='11' minlength='11' required> </td> </tr>" ;

            $form .=  "<tr> <td rowspan='3' style='width: 20%;'>  <p class='title_title'> Enter Information if User will Access the system </p> </td>"  .
                " <tr> <td > <label for='email'>Email</label><input type='email' name='email' id='userEmail' > </td>" .
                "</tr> <tr> <td> <label for='pass'>Password</label><input type='password' name='pass' id='userPass' maxlength='100'> </td> </tr>" .
                " </tr> </tr> <tr> <td colspan='2'> <input id='insertMember' type='submit' value='Add Member' class='btn btn-primary' name='saveChangesBtn'/> " .
                "</td> </tr> </tbody> </table> </div> </form>";

        }else{
            $form .= "<div class='alert alert-danger'> No Options Exist for such User Type </div></body>";
        }

        return $form;

    }

    public function show_table(array $data, array $userData)
    {

        $table = "<table id='users_table' class='table table-striped table-hover table-bordered'>";
        $table .= '<thead> <tr>';

        $table .= '<th>#</th>';

        foreach ($data as $key => $value) {
            $table .= "<th>" . ($key) . "</th>";
        }

        $table .= "<th> Email </th>";
        $table .= "<th> Phone number </th>";
        $table .= "<th> Control </th>";
        $table .= "</tr> </thead> <tbody id='users_body_table'>";

        $obj_size = sizeof($userData);
        $obj = $userData[0];
        $arr_size = sizeof($obj->user_values);

        $a = 0;
        while($a < $obj_size) {

            $obj = $userData[$a];
            $table .= "<tr id='row-" .$a. "'> <td>" . ($a+1) . "</td>";

            $b = 1;
            while ($b < $arr_size){
                $table .= "<td>" . $obj->user_values[$b] . "</td>";
                $b += 1;
            }

            $table .= "<td> <a id='update-" .$a. "' href='#' class='updateFormbtn btn btn-primary btn-circle m-r-1em' title='Edit' data-toggle='tooltip'><i class='fa fa-edit'></i></a> " .
                "<a id='del-" .$a. "' href='#' class='deletebtn btn btn-danger btn-circle' title='Delete' data-toggle='tooltip'><i class='fas fa-trash'></i></a> </td> </tr>";

            $a += 1;

        }

        $table .= '</body> </table>';

        return $table;
    }

    public function update_form(array $data, array $userData) {

        $form = "";

        if(sizeof($data) != 0){

            $form .= " <form id='updateForm' enctype='multipart/form-data' method='post'> " .
                " <div class='table-responsive'> <table class='table table-hover table-bordered'> <tbody> ";

            $form .= "<tr> <td> Upload Personal Photo </td><td><input type='file' name='file' id='file'> </td> </tr>" ;

            $x = 1;
            $index = 0;
            foreach ($data as $key => $value) {
                if($value == 'date'){
                    $form .= "<tr> <td>" . $key . "</td> <td><input id='up-" . ($x++) . "'type='" . $value . "' name='" . $key . "' class='form=control' value='" . $userData[$index] . "' max='" . date("Y-m-d") . "' required/></td></tr>";
                }
                else{
                    $form .= "<tr> <td>" . $key . "</td> <td><input id='up-" . ($x++) . "'type='" . $value . "' name='" . $key . "' class='form=control' value='" . $userData[$index] . "'required/></td></tr>";
                }
                $index++;
            }

            if($userData[$index] != null || $userData[$index] != ""){
                $form .= "<tr> <td> Email: </td> <td><input type='email' id='up-userEmail' name='email' class='form=control' value='" . $userData[$index] . "' /></td></tr>";
            }
            else{
                $form .= "<tr> <td> Email: </td> <td><input type='email' id='up-userEmail' name='email' class='form=control' value='' /></td></tr>";
            }

            if($userData[$index+1] != null || $userData[$index+1] != ""){
                $form .= "<tr> <td> Phone Number: </td> <td><input type='number' id='up-phoneNum' name='phone' class='form=control' value='" . $userData[$index+1] . "' /></td></tr>";
            }else{
                $form .= "<tr> <td> Phone Number: </td> <td><input type='number' id='up-phoneNum' name='phone' class='form=control' value='' /></td></tr>";
            }

            $form .= "<tr> <td> New Passowrd: </td> <td><input type='pass' id='up-newUserPass' name='pass' class='form=control' value='' /></td></tr>";
            $form .= "<tr> <td> Confirm Passowrd: </td> <td><input placeholder='users password' type='pass' id='up-userPass' name='pass' class='form=control' value='' required/></td></tr>";

            $form .= "<tr> <td colspan='2'> <input id='updateUser' type='submit' value='Save Changes' class='btn btn-primary' name='saveChangesBtn'/> " .
                "</td> </tr> </tbody> </table> </div> </form>";

        }

        return $form;

    }

    public function check_table(array $data, array $userData){

        $table = "<table class='table table-striped table-hover table-bordered'>";
        $table .= '<thead> <tr>';

        $table .= '<th> Checked </th>';

        foreach ($data as $key => $value) {
            $table .= "<th>" . ($key) . "</th>";
        }

        $table .= "<th> Email </th>";
        $table .= "<th> Phone Number </th>";
        $table .= "</tr> </thead> <tbody>";

        $obj_size = sizeof($userData);
        $obj = $userData[0];
        $arr_size = sizeof($obj->user_values);

        $a = 0;
        while($a < $obj_size) {

            $table .= "<tr>";

            $obj = $userData[$a];

            $b = 0;
            while ($b < $arr_size){
                if($b == 0){

                    $table .= "<td><input class='checkboxClass' type='checkbox' value='" . $obj->user_values[$b] . "'</td>";
                }
                else{
                    $table .= "<td>" . $obj->user_values[$b] . "</td>";
                    if($b == $arr_size-2){

                        $this->emails[$obj->user_values[0]] = $obj->user_values[$b];

                    }
                    if($b == $arr_size-1){

                        $this->numbers[$obj->user_values[0]] = $obj->user_values[$b];

                    }
                }

                $b += 1;
            }
            $table .= '</tr>';
            $a += 1;

        }

        $table .= '</body> </table>';

        return $table;

    }
}

?>
