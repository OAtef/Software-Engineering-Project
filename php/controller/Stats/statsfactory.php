<?php

require_once("statsclasses.php");

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
      case 'PaymentMethodDonation':
        return new paymentmethoddonation();
        break;

      case 'ProjectCategoryDonation':
        return new projectcategorydonation();
        break;

      case 'DonationCard':
        return new cards("Donation");
        break;
    }


  }
}

?>
