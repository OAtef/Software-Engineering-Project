  <?php

require_once 'invoiceDecorator.php';

class mainDecorator extends invoiceDecorator
{
    protected $invoice;

    function __construct(invoiceDecorator $invoice) {
        $this->invoice = $invoice;
    }

    public function addinfo(){

        $this->invoice->pdf->AddPage();
        $this->invoice->pdf->SetFont('Arial', 'B', 12);

        $this->invoice->pdf->Cell(55, 5,'Reference Code', 0, 0);
        $this->invoice->pdf->Cell(58, 5,': ' . $this->invoice->codee, 0, 0);
        $this->invoice->pdf->Cell(50, 5,'Date', 0, 0);
        $this->invoice->pdf->Cell(52, 5,': ' . date("Y/m/d"), 0, 1);

        $pc = new project_category($this->invoice->category_id);

        $this->invoice->pdf->Cell(55, 5,'Donation on', 0, 0);
        $this->invoice->pdf->Cell(58, 5,': ' . $pc->category_name, 0, 0);

        $dr = new donation_reason($this->invoice->donationReasonID);

        $this->invoice->pdf->Cell(50, 5,'Donation Reason', 0, 0);
        $this->invoice->pdf->Cell(52, 5,': ' . $dr->reason, 0, 1);

        $this->invoice->pdf->Line(10, 30, 200, 30);

        $this->invoice->pdf->Ln(13);

    }

}