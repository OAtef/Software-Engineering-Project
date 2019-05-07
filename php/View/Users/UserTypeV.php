<?php

class UserTypeV
{

  public static function addUserType($userTypes)
  {
    $FinalData = "<div id='sucessType_div' class='alert alert-success' style='display: none'> Record was updated. </div>
                  <div id='errorType_div' class='alert alert-danger' style='display: none'> Something Wrong Happend. </div>

                  <form id='insertUserSubTypeForm' method='post'>
                        <div class='table-responsive'>
                          <table class='table table-hover table-bordered'>
                            <tbody>
                              <tr>
                                <td> Type Name: </td>
                                <td>
                                  <input type='text' id='TypeName' name='TypeName' class='form=control' />
                                </td>
                              </tr>
                              <tr>
                                <td> Parent Type: </td>
                                <td>
                                <input type='text' id='AddParentTypeName' name='ParentTypeName' class='form=control' readonly='readonly' />
                                  <button class='btn btn-primary dropdown-toggle' type='button' id='dropdownMenuButton' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                                    Type
                                  </button>
                                  <div id='dropdown-MainUserType' class='dropdown-menu animated--fade-in' aria-labelledby='dropdownMenuButton' x-placement='top-start' style='position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;'>";

    $FinalData .= self::ShowEditTypeOption($userTypes);

    $FinalData .= "             </div>
                                </td>
                              </tr>
                              <tr>
                                <td></td>
                                <td>
                                  <input id='addSubTypeBtn' type='submit' value='Add Type' class='btn btn-primary' name='addSubTypeBtn' />
                                </td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                      </form>";

    return $FinalData;
  }

  public static function showList($data)
  {
    $FinalData = '<div id="sucessTypeTable_div" class="alert alert-success" style="display: none"> Record was updated. </div>
                  <div id="errorTypeTable_div" class="alert alert-danger" style="display: none"> Something Wrong Happend. </div>
                  <div class="table-responsive"> <br> <table class="table table-bordered userstable" id="dataTable" width="100%" cellspacing="0"> <thead> <tr>
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
                     <td id="typename-'.$data[$i]->id.'">'.$data[$i]->usertype_name.'</td>';

      if ($data[$i]->parentID == 0) {
        $FinalData .= '<td id="parentname-'.$data[$i]->id.'">Main</td>';
      }else {
        for ($j = 0; $j < sizeof($data); $j++) {
          if ($data[$j]->id == $data[$i]->parentID) {
            $FinalData .= '<td id="parentname-'.$data[$i]->id.'">'.$data[$j]->usertype_name.'</td>';
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

  public static function ShowEditTypeOption($data)
  {
    $FinalData = "";

    for ($i=0; $i < sizeof($data); $i++) {

      $FinalData .= "<a class='EditDropdown dropdown-item' id='link-". $data[$i]->id ."'>". $data[$i]->usertype_name ."</a>";
    }

    return $FinalData;
  }

  public static function showUpdate($typename, $parentname, $userTypes)
  {
    $FinalData = "<div id='sucessTypeUpdate_div' class='alert alert-success' style='display: none'> Record was updated. </div>
                  <div id='errorTypeUpdate_div' class='alert alert-danger' style='display: none'> Something Wrong Happend. </div>
                  <form id='updateTypeForm' method='post'>
                  <div class='table-responsive'> <table class='table table-hover table-bordered'> <tbody>
                  <tr> <td>Type Name</td> <td><input type='text' id = 'typeName' name='typeName' class='form=control' value='".$typename."' /></td></tr>
                  <tr> <td>Parent Type</td> <td><input type='text' value='".$parentname."' id='ParentTypeName' name='ParentTypeName' class='form=control' readonly='readonly' />

                  <button class='btn btn-primary dropdown-toggle' type='button' id='dropdownMenuButton' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>Type </button>
                  <div id='MainUserTypes-Dropdown' class='dropdown-menu animated--fade-in' aria-labelledby='dropdownMenuButton' x-placement='top-start' style='position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;'>";

    $FinalData .= self::ShowEditTypeOption($userTypes);

    $FinalData .= "</div></td>
                   </tr> <tr> <td>  </td> <td> <input id='saveTypeChangesBtn' type='submit' value='Save Changes' class='btn btn-primary' name='saveTypeChangesBtn'/>
                   </td> </tr> </tbody> </table> </div> </form>";

    return $FinalData;
  }
}


// <td id = 'ParentTypeName'>'".$parentname."'</td>



?>
