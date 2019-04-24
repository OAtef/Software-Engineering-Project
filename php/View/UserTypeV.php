<?php

class UserTypeV
{
  public static function showList($data)
  {
    $FinalData = '<div class="table-responsive"> <br> <table class="table table-bordered userstable" id="dataTable" width="100%" cellspacing="0"> <thead> <tr>
                  <th> UserType Name</th>
                  <th> ParentID Name</th>
                  <th> Control </th>
                  </tr> </thead> <tfoot> <tr>
                  <th> UserType Name</th>
                  <th> ParentID Name</th>
                  <th> Control </th>
                  </tr> </tfoot>
                  <tbody>';

    for ($i = 0; $i < sizeof($data); $i++) {
      $FinalData .= '<tr>
                     <td>'.$data[$i]->usertype_name.'</td>';

      if ($data[$i]->parentID == 0) {
        $FinalData .= '<td>Main</td>';
      }else {
        for ($j = 0; $j < sizeof($data); $j++) {
          if ($data[$j]->id == $data[$i]->parentID) {
            $FinalData .= '<td>'.$data[$j]->usertype_name.'</td>';
          }
        }
      }

      $FinalData .= '<td> <a id="update-'.$data[$i]->id.'"href="#" class="btn btn-primary btn-circle m-r-1em updateTypebtn"><i class="fa fa-edit"></i></a>
                     <a id="del-'.$data[$i]->id.'" href="#" class="btn btn-danger btn-circle deleteTypebtn"><i class="fas fa-trash"></i></a> </td> </tr>';

    }
    $FinalData .= '</body>';

    return $FinalData;
  }

  public static function ShowTypeOption($data)
  {
    $FinalData = "";

    for ($i=0; $i < sizeof($data); $i++) {

      $FinalData .= "<a class='dropdown1 dropdown-item' id='link-". $data[$i]->id ."'>". $data[$i]->usertype_name ."</a>";
    }

    return $FinalData;
  }
}




?>
