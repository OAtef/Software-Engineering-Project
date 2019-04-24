<?php

interface IStats
{
  public function performStat();
}

// Class to get Donations for each Gender
class genderdonation implements IStats
{

  public function performStat()
  {
    $array = array("Male"=>35, "Female"=>37, "Others"=>43);
    return $array;
  }
}


?>
