<?php

require_once 'FPDF/fpdf.php';
require_once 'send_to.php';
require_once 'send_through.php';
require_once 'payment_method.php';
require_once 'user_values.php';
require_once 'payment_options.php';

class invoiceDecorator
{
    protected $pdf;
    public $userID;
    public $categoryID;
    public $donationReasonID;
    public $donation_amount;
    public $payment_method_id;
    public $ref_id;
    public $codee;
    public $payment_options_ids;
    public $payment_vals;

    function __construct(FPDF $pdf) {
        $this->pdf = $pdf;
    }

    public function showInvoice(){

        $return = $this->pdf->Output('invoice.pdf', 'S');
        $return = base64_encode($return);
        $return = 'data:application/pdf;base64,'.$return;

        return $return;
    }

}