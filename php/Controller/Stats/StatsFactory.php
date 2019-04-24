<?php

require_once("StatsClasses.php");

class statsfactory
{
  private $StatType = NULL;

  function __construct($StatName)
  {
    $this->StatType = $this->changeStatType($StatName);
  }

  public function performeStats()
  {
    return $this->StatType->performStat();
  }

  public function changeStatType($StatName)
  {
    switch ($StatName) {
      case 'GenderDonation':
        return new genderdonation();
        break;
    }
  }
}





?>
