<?php

require_once ('fpdf.php');

$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial', 'B', 12);

$pdf->Cell(55, 5,'Reference Code', 0, 0);
$pdf->Cell(58, 5,': 026ETY', 0, 0);
$pdf->Cell(25, 5,'Date', 0, 0);
$pdf->Cell(52, 5,': 2019-05-04 11:47:10 AM', 0, 1);

$pdf->Cell(55, 5,'Donation Amount', 0, 0);
$pdf->Cell(58, 5,': 200', 0, 0);
$pdf->Cell(25, 5,'Donation', 0, 0);
$pdf->Cell(52, 5,': Online', 0, 1);

$pdf->Cell(55, 5,'Status', 0, 0);
$pdf->Cell(58, 5,': Complete', 0, 1);

$pdf->Line(10, 30, 200, 30);

$pdf->Ln(10);
$pdf->Cell(55, 5,'Donation Id', 0, 0);
$pdf->Cell(58, 5,': 64351-84503', 0, 1);

$pdf->Cell(55, 5,'Donation Method', 0, 0);
$pdf->Cell(58, 5,': Offline', 0, 1);

$pdf->Cell(55, 5,'Product Delivery Charge', 0, 0);
$pdf->Cell(58, 5,': 10', 0, 1);

$pdf->Cell(55, 5,'Total Amount', 0, 0);
$pdf->Cell(58, 5,': 210', 0, 1);

$pdf->Line(10, 60, 200, 60);

$pdf->Ln(10);
$pdf->Cell(55, 5,'Paid by', 0, 0);
$pdf->Cell(58, 5,': Habiba Hegazy', 0, 1);

$pdf->Line(155, 75, 195, 75);

$pdf->Ln(5);
$pdf->Cell(140, 5,' ', 0, 0);
$pdf->Cell(50, 5,': Signature', 0, 1, 'C');

$pdf->output();