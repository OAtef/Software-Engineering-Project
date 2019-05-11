<?php

require_once ('../../Model/optiontype.php');

class TypeOptionV
{

  public static function addTypeOption()
  {
    $FinalData = "<div id='sucessOption_div' class='alert alert-success' style='display: none'> Record was updated. </div>
                  <div id='errorOption_div' class='alert alert-danger' style='display: none'> Something Wrong Happend. </div>

                  <form id='insertOptionForm' method='post'>
                        <div class='table-responsive'>
                          <table class='table table-hover table-bordered'>
                            <tbody>
                              <tr>
                                <td> Option Name: </td>
                                <td>
                                  <input type='text' id='OptionName' name='OptionName' class='form=control' />
                                </td>
                              </tr>
                              <tr>
                                <td> Option Type: </td>
                                <td>
                                  <input type='text' id='OptionTypeName' name='OptionType' class='form=control' readonly='readonly' />
                                  <button class='btn btn-primary dropdown-toggle' type='button' id='dropdownMenuButton' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                                  Type
                                  </button>
                                  <div id='dropdown-OptionType' class='dropdown-menu animated--fade-in' aria-labelledby='dropdownMenuButton' x-placement='top-start' style='position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;'>";

    $FinalData .= self::ShowOptionType();

    $FinalData .= "             </div>
                                </td>
                              </tr>
                              <tr>
                                <td></td>
                                <td>
                                  <input id='addOptionBtn' type='submit' value='Add Option' class='btn btn-primary' name='addOptionBtn' />
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
    $FinalData = '<div id="sucessOptionTable_div" class="alert alert-success" style="display: none"> Record was updated. </div>
                  <div id="errorOptionTable_div" class="alert alert-danger" style="display: none"> Something Wrong Happend. </div>
                  <div class="table-responsive"> <br> <table class="table table-bordered userstable" id="dataTable" width="100%" cellspacing="0"> <thead> <tr>
                  <th> Option Name</th>
                  <th> Option Type</th>
                  <th> Control </th>
                  </tr> </thead> <tfoot> <tr>
                  <th> Option Name</th>
                  <th> Option Type</th>
                  <th> Control </th>
                  </tr> </tfoot>
                  <tbody>';

    for ($i = 0; $i < sizeof($data); $i++) {
      $FinalData .= '<tr>
                     <td id="optionname-'.$data[$i]->id.'">'.$data[$i]->option_name.'</td>
                     <td id="optiontype-'.$data[$i]->id.'">'.$data[$i]->option_type.'</td>

                     <td> <a id="update-'.$data[$i]->id.'"href="#" class="btn btn-primary btn-circle m-r-1em updateOptionbtn"><i class="fa fa-edit"></i></a>
                          <a id="del-'.$data[$i]->id.'" href="#" class="btn btn-danger btn-circle deleteOptionbtn"><i class="fas fa-trash"></i></a>
                     </td> </tr>';

    }
    $FinalData .= '</body>';

    return $FinalData;
  }

  public static function ShowOptionType()
  {
    $options = option_type::list_options_type();
    $FinalData = "";

    for ($i=0; $i < sizeof($options); $i++) {

      $FinalData .= "<a class='OptionTypesDropdown dropdown-item' id='type-".$options[$i]->id."'>".$options[$i]->type."</a>";
    }

    return $FinalData;
  }

  public static function showUpdate($optionName, $optionType)
  {
    $FinalData = "<div id='sucessOptionUpdate_div' class='alert alert-success' style='display: none'> Record was updated. </div>
                  <div id='errorOptionUpdate_div' class='alert alert-danger' style='display: none'> Something Wrong Happend. </div>
                  <form id='updateOptionForm' method='post'>
                  <div class='table-responsive'> <table class='table table-hover table-bordered'> <tbody>
                  <tr> <td>Option Name</td> <td><input type='text' id = 'UpdateOptionName' class='form=control' value='".$optionName."' /></td></tr>
                  <tr> <td>Option Type</td> <td><input type='text' id = 'UpdateOptionTypeName' name='UpdateOptionTypeName' class='form=control' readonly='readonly' value='".$optionType."' />

                  <button class='btn btn-primary dropdown-toggle' type='button' id='dropdownMenuButton' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>Type </button>
                  <div id='dropdown-OptionType' class='dropdown-menu animated--fade-in' aria-labelledby='dropdownMenuButton' x-placement='top-start' style='position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;'>";

    $FinalData .= self::ShowOptionType();

    $FinalData .= "</tr> <tr> <td>  </td> <td> <input id='saveOptionChangesBtn' type='submit' value='Save Changes' class='btn btn-primary' name='saveOptionChangesBtn'/> </td> </tr> </tbody> </table> </div> </form>";

    return $FinalData;
  }
}

?>
