<?php

class decorator01 extends invoiceDecorator
{
    protected $invoice;

    function __construct(invoiceDecorator $invoice) {
        $this->invoice = $invoice;
    }

    public function addinfo(){

        $pm = new payment_method($this->invoice->payment_method_id);

        $this->invoice->pdf->Cell(55, 5,'Payment Method', 0, 0);
        $this->invoice->pdf->Cell(58, 5,': ' . $pm->method_name, 0, 1);

        $po = new payment_options($this->invoice->payment_options_ids);

        $i = 0;
        while ($i < sizeof($po->opt_names)){

            $this->invoice->pdf->Cell(55, 5,$po->opt_names[$i], 0, 0);
            $this->invoice->pdf->Cell(58, 5,': ' . $this->invoice->payment_vals[$i], 0, 1);

            $i++;

        }

        $this->invoice->pdf->Line(10, 55, 200, 55);

        $this->invoice->pdf->Ln(13);

        $this->invoice->pdf->Cell(55, 5,'Payment Method Charge', 0, 0);
        $this->invoice->pdf->Cell(58, 5,': ' . $pm->method_cost . ' pound', 0, 1);

        $this->invoice->pdf->Cell(55, 5,'Donation Amount ', 0, 0);
        $this->invoice->pdf->Cell(58, 5,': ' . $this->invoice->donation_amount . ' pound', 0, 1);

        $total = $pm->method_cost + $this->invoice->donation_amount;

        $this->invoice->pdf->Cell(55, 5,'Total Amount', 0, 0);
        $this->invoice->pdf->Cell(58, 5,': ' . $total . ' pound', 0, 1);

        $this->invoice->pdf->Line(10, 80, 200, 80);

        $uv = new user_values(null);
        $user_data = $uv->get_specific_user_data($this->invoice->userID);

        $this->invoice->pdf->Ln(10);
        $this->invoice->pdf->Cell(55, 5,'Paid by', 0, 0);
        $this->invoice->pdf->Cell(58, 5,': ' .$user_data[0]. " " . $user_data[1], 0, 1);

        $this->invoice->pdf->Image('../../../img/lifefromwater.png', 10, 100, 100, 35);

        $this->invoice->pdf->Line(155, 100, 195, 100);

        $this->invoice->pdf->Ln(5);
        $this->invoice->pdf->Cell(140, 5,' ', 0, 0);
        $this->invoice->pdf->Cell(50, 20,': Signature', 0, 1, 'C');

    }

}