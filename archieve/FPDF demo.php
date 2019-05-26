<?php

require_once ('fpdf.php');

$con = 1;
$con2 = 0;

$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial', 'B', 12);

$pdf->Cell(55, 5,'Reference Code', 0, 0);
$pdf->Cell(58, 5,': 026ETY', 0, 0);
$pdf->Cell(50, 5,'Date', 0, 0);
$pdf->Cell(52, 5,': 2019-05-04', 0, 1);

$pdf->Cell(55, 5,'Donation on', 0, 0);
$pdf->Cell(58, 5,': project category', 0, 0);
$pdf->Cell(50, 5,'Donation Reason', 0, 0);
$pdf->Cell(52, 5,': gift', 0, 1);

$pdf->Line(10, 30, 200, 30);

$pdf->Ln(13);

if($con == 1){

    $pdf->Cell(25, 5,'Send to', 0, 0);
    $pdf->Cell(58, 5,': Name', 0, 0);

    $pdf->Cell(35, 5,'Send through', 0, 0);
    $pdf->Cell(58, 5,': whatsapp', 0, 1);

    $pdf->Ln(2);

    $pdf->Cell(55, 5,'Contact information', 0, 0);
    $pdf->Cell(58, 5,'', 0, 1);

    $pdf->Ln(2);

    $pdf->Cell(35, 5,'Mobile Number', 0, 0);
    $pdf->Cell(58, 5,': 1234567890', 0, 0);

    $pdf->Cell(15, 5,'Email', 0, 0);
    $pdf->Cell(58, 5,': Habiba@gmail.com', 0, 1);

    $pdf->Ln(1);

    $pdf->Line(10, 60, 200, 60);

    $pdf->Ln(13);

    if($con2 == 1){

        $pdf->Cell(55, 5,'Donation Method', 0, 0);
        $pdf->Cell(58, 5,': Bank Transfer', 0, 1);

        $pdf->Cell(55, 5,'Bank Name', 0, 0);
        $pdf->Cell(58, 5,': AL ATHAD', 0, 1);

        $pdf->Cell(55, 5,'Bank Account Number', 0, 0);
        $pdf->Cell(58, 5,': 67897542357765', 0, 1);

        $pdf->Line(10, 90, 200, 90);

        $pdf->Ln(13);

        $pdf->Cell(55, 5,'Donation Method Charge', 0, 0);
        $pdf->Cell(58, 5,': 10 pound', 0, 1);

        $pdf->Cell(55, 5,'Donation Amount ', 0, 0);
        $pdf->Cell(58, 5,': 200 pound', 0, 1);

        $pdf->Cell(55, 5,'Total Amount', 0, 0);
        $pdf->Cell(58, 5,': 210 pound', 0, 1);

        $pdf->Line(10, 115, 200, 115);

        $pdf->Ln(10);
        $pdf->Cell(55, 5,'Paid by', 0, 0);
        $pdf->Cell(58, 5,': Habiba Hegazy', 0, 1);

        $pdf->Image('lifefromwater.png', 10, 130, 100, 35);


        $pdf->Line(155, 135, 195, 135);

        $pdf->Ln(5);
        $pdf->Cell(140, 5,' ', 0, 0);
        $pdf->Cell(50, 20,': Signature', 0, 1, 'C');



    }
    else{

        $pdf->Cell(55, 5,'Donation Method', 0, 0);
        $pdf->Cell(58, 5,': Offline', 0, 1);

        $pdf->Cell(55, 5,'Donation Method Charge', 0, 0);
        $pdf->Cell(58, 5,': 10 pound', 0, 1);

        $pdf->Cell(55, 5,'Donation Amount ', 0, 0);
        $pdf->Cell(58, 5,': 200 pound', 0, 1);

        $pdf->Cell(55, 5,'Total Amount', 0, 0);
        $pdf->Cell(58, 5,': 210 pound', 0, 1);

        $pdf->Line(10, 90, 200, 90);

        $pdf->Ln(10);
        $pdf->Cell(55, 5,'Paid by', 0, 0);
        $pdf->Cell(58, 5,': Habiba Hegazy', 0, 1);

        $pdf->Image('lifefromwater.png', 10, 110, 100, 35);


        $pdf->Line(155, 113, 195, 113);

        $pdf->Ln(5);
        $pdf->Cell(140, 5,' ', 0, 0);
        $pdf->Cell(50, 20,': Signature', 0, 1, 'C');

    }


}
else{

    if($con2 == 1){

        $pdf->Cell(55, 5,'Donation Method', 0, 0);
        $pdf->Cell(58, 5,': Bank Transfer', 0, 1);

        $pdf->Cell(55, 5,'Bank Name', 0, 0);
        $pdf->Cell(58, 5,': AL ATHAD', 0, 1);

        $pdf->Cell(55, 5,'Bank Account Number', 0, 0);
        $pdf->Cell(58, 5,': 67897542357765', 0, 1);

        $pdf->Line(10, 55, 200, 55);

        $pdf->Ln(13);

        $pdf->Cell(55, 5,'Donation Method Charge', 0, 0);
        $pdf->Cell(58, 5,': 10 pound', 0, 1);

        $pdf->Cell(55, 5,'Donation Amount ', 0, 0);
        $pdf->Cell(58, 5,': 200 pound', 0, 1);

        $pdf->Cell(55, 5,'Total Amount', 0, 0);
        $pdf->Cell(58, 5,': 210 pound', 0, 1);

        $pdf->Line(10, 80, 200, 80);


        $pdf->Ln(10);
        $pdf->Cell(55, 5,'Paid by', 0, 0);
        $pdf->Cell(58, 5,': Habiba Hegazy', 0, 1);

        $pdf->Image('lifefromwater.png', 10, 100, 100, 35);

        $pdf->Line(155, 100, 195, 100);

        $pdf->Ln(5);
        $pdf->Cell(140, 5,' ', 0, 0);
        $pdf->Cell(50, 20,': Signature', 0, 1, 'C');



    }else{

        $pdf->Cell(55, 5,'Donation Method', 0, 0);
        $pdf->Cell(58, 5,': Offline', 0, 1);

        $pdf->Cell(55, 5,'Donation Method Charge', 0, 0);
        $pdf->Cell(58, 5,': 10 pound', 0, 1);

        $pdf->Cell(55, 5,'Donation Amount ', 0, 0);
        $pdf->Cell(58, 5,': 200 pound', 0, 1);

        $pdf->Cell(55, 5,'Total Amount', 0, 0);
        $pdf->Cell(58, 5,': 210 pound', 0, 1);

        $pdf->Line(10, 60, 200, 60);

        $pdf->Ln(10);
        $pdf->Cell(55, 5,'Paid by', 0, 0);
        $pdf->Cell(58, 5,': Habiba Hegazy', 0, 1);

        $pdf->Image('lifefromwater.png', 10, 70, 100, 35);


        $pdf->Line(155, 80, 195, 80);

        $pdf->Ln(5);
        $pdf->Cell(140, 5,' ', 0, 0);
        $pdf->Cell(50, 20,': Signature', 0, 1, 'C');

    }







}





$pdf->output();