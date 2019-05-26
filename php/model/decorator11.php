<?php

class decorator11 extends invoiceDecorator
{
    protected $invoice;

    function __construct(invoiceDecorator $invoice) {
        $this->invoice = $invoice;
    }

    public function addinfo(){

        $s_to = new send_to(null);

        $get_data = array();
        $get_data['ref_id'] = $this->refID;

        $s_to->_read($get_data, array());

        $this->invoice->pdf->Cell(25, 5,'Send to', 0, 0);
        $this->invoice->pdf->Cell(58, 5,': ' . $s_to->receiver_name, 0, 0);

        $send_thro = new send_through($s_to->send_throughID);

        $this->invoice->pdf->Cell(35, 5,'Send through', 0, 0);
        $this->invoice->pdf->Cell(58, 5,': ' . $send_thro->through_tech, 0, 1);

        $this->invoice->pdf->Ln(2);

        $this->invoice->pdf->Cell(55, 5,'Contact information', 0, 0);
        $this->invoice->pdf->Cell(58, 5,'', 0, 1);

        $this->invoice->pdf->Ln(2);

        $this->invoice->pdf->Cell(35, 5,'Mobile Number', 0, 0);
        $this->invoice->pdf->Cell(58, 5,': ' .  $s_to->receiver_mobile, 0, 0);

        $this->invoice->pdf->Cell(15, 5,'Email', 0, 0);
        $this->invoice->pdf->Cell(58, 5,': ' . $s_to->receiver_Email, 0, 1);

        $this->invoice->pdf->Ln(1);

        $this->invoice->pdf->Line(10, 60, 200, 60);

        $this->invoice->pdf->Ln(13);

        $pm = new payment_method($this->invoice->payment_method_id);

        $this->invoice->pdf->Cell(55, 5,'Payment Method', 0, 0);
        $this->invoice->pdf->Cell(58, 5,': ' . $pm->method_name, 0, 1);

        $po = new payment_options($this->invoice->payment_options_ids);

        $i=0;
        while ($i < sizeof($po->opt_names)){

            $this->invoice->pdf->Cell(55, 5,$po->opt_names[$i], 0, 0);
            $this->invoice->pdf->Cell(58, 5,': ' . $this->invoice->payment_vals[$i], 0, 1);

            $i++;

        }


        $this->invoice->pdf->Line(10, 90, 200, 90);

        $this->invoice->pdf->Ln(13);

        $this->invoice->pdf->Cell(55, 5,'Payment Method Charge', 0, 0);
        $this->invoice->pdf->Cell(58, 5,': ' . $pm->method_cost . ' pound', 0, 1);

        $this->invoice->pdf->Cell(55, 5,'Donation Amount ', 0, 0);
        $this->invoice->pdf->Cell(58, 5,': ' . $this->invoice->donation_amount . ' pound', 0, 1);

        $total = $pm->method_cost + $this->invoice->donation_amount;

        $this->invoice->pdf->Cell(55, 5,'Total Amount', 0, 0);
        $this->invoice->pdf->Cell(58, 5,': ' . $total . ' pound', 0, 1);

        $this->invoice->pdf->Line(10, 115, 200, 115);

        $uv = new user_values(null);
        $user_data = $uv->get_specific_user_data($this->invoice->userID);

        $this->invoice->pdf->Ln(10);
        $this->invoice->pdf->Cell(55, 5,'Paid by', 0, 0);
        $this->invoice->pdf->Cell(58, 5,': ' .$user_data[0]. " " . $user_data[1], 0, 1);

        $this->invoice->pdf->Image('../../../img/lifefromwater.png', 10, 130, 100, 35);


        $this->invoice->pdf->Line(155, 135, 195, 135);

        $this->invoice->pdf->Ln(5);
        $this->invoice->pdf->Cell(140, 5,' ', 0, 0);
        $this->invoice->pdf->Cell(50, 20,': Signature', 0, 1, 'C');





    }

}