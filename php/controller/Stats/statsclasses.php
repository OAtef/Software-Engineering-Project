<?php

require_once ('../../model/request_donation.php');
require_once ('../../model/payment_method.php');
require_once ('../../model/project_category.php');

interface IStats
{
  public function performStat();
}

// Class to get Donations for each Gender
class paymentmethoddonation implements IStats
{

  public function performStat()
  {

    $result = array();
    $methods = array();

    $RD = new request_donation(NULL);
    $PM = new payment_method(NULL);

    $Donations = $RD->list_all();
    $PaymentMethods = $PM->list_all();

    // $result = array_fill(0, sizeof($Donations), 0);

    for ($i=0; $i < sizeof($PaymentMethods); $i++) {

      $result[$PaymentMethods[$i]->method_name] = 0;
      $methods[$PaymentMethods[$i]->id] = $PaymentMethods[$i]->method_name;
    }

    for ($i=0; $i < sizeof($Donations); $i++) {

      $result[$methods[$Donations[$i]->paymentMethodID]] += $Donations[$i]->donationValue;
    }

    return $result;
  }
}

class projectcategorydonation implements IStats
{

  public function performStat()
  {
    $result = array();
    $categories = array();

    $RD = new request_donation(NULL);
    $PM = new project_category(NULL);

    $Donations = $RD->list_all();
    $ProjectCategory = $PM->list_all();

    // $result = array_fill(0, sizeof($Donations), 0);

    for ($i=0; $i < sizeof($ProjectCategory); $i++) {

      $result[$ProjectCategory[$i]->category_name] = 0;
      $categories[$ProjectCategory[$i]->id] = $ProjectCategory[$i]->category_name;
    }

    for ($i=0; $i < sizeof($Donations); $i++) {

      $result[$categories[$Donations[$i]->paymentMethodID]] += $Donations[$i]->donationValue;
    }

    return $result;
  }
}

class cards implements IStats
{

  public $Type = "";

  public function __construct($Type)
  {
    $this->Type = $Type;
  }

  public function performStat()
  {
    switch ($this->Type) {
      case 'Donation':
        return $this->donationStat();
        break;
    }
  }

  public function donationStat()
  {

    $result = 0;

    $RD = new request_donation(NULL);
    $currentDate = date("Y-m-d");

    $Donations = $RD->list_all();

    for ($i=0; $i < sizeof($Donations); $i++) {

      if ($currentDate == date('Y-m-d', strtotime($Donations[$i]->create_date))) {

        $result += $Donations[$i]->donationValue;
      }
    }

    return $result;
  }
}


?>
