<?php

defined('BASEPATH') or exit('No direct script access allowed');

$dimensions = $pdf->getPageDimensions();

$header = '';


$header .= '<table style="background-color: #072e41; color: #fff; padding-top:25px; padding-bottom:20px;padding-left:15px; padding-right:10px;">
    <tbody>
        <tr>
            <td valign="middle">
                <h5 style="font-size:50px;font-weight:500;">' . _l('invoice_pdf_heading') . '</h5>
            </td>
            <td align="right">'.pdf_logo_url().'<br>'.format_organization_info().'<br>
                <span>Tel: 416-597-2278 ext. 242</span><br>
                <span>Fax: 416-597-9594</span><br>
                <span>GST/HST No.: 137926234</span><br>
            </td>
        </tr>
    </tbody>
</table>';

// Add logo


$pdf->writeHTML($header, false, false, false, false, '');

$billing_info = '';

$clientId = '';



$clientId = $invoice->clientid;



$companyName = $invoice->client->company;


if (isset($invoice->client->show_primary_contact) && $invoice->client->show_primary_contact == 1) {
    $primaryContactId = get_primary_contact_user_id($clientId);
    if ($primaryContactId) {
        $companyName = get_contact_full_name($primaryContactId) . '<br />' . $companyName;
    }
}


$street = '';

$street = $invoice->billing_street;

$city = '';

$city = $invoice->billing_city;


$state = $invoice->billing_state;

$zipCode = '';

$zipCode = $invoice->billing_zip;


$countryCode = '';
$countryName = '';
$country     = null;

$country = get_country($invoice->billing_country);

if ($country) {
    $countryCode = $country->iso2;
    $countryName = $country->short_name;
}

$phone = '';


$phone = $invoice->client->phonenumber;


$vat = '';

$vat = $invoice->client->vat;


$street = trim(preg_replace("/<br\W*?\/>/", "\n", $street));

$companyName = $companyName;
// Arslan code here
  $project_name='';
   if(isset($invoice->project_data))
          {
            $project_name = $invoice->project_data->name;
          }

$billing_info .= '<table width="100%" style="padding-top:20px;"  cellspacing="10px">
    <tbody>
        <tr>
            <td align="left" width="35%">
          
                <table>
                    <tbody>
                        <tr>
                            <td style="color:#00aeef;text-transform:uppercase;"> '. _l('invoice_bill_to') .'</td>
                        </tr>
                        <tr>
                            <td> '.trim($companyName) .'</td>
                        </tr>
                        <tr>
                            <td> '.$street .'</td>
                        </tr>
                        <tr>
                            <td> '.trim($city) .' '.trim($state).'</td>
                        </tr>
                        <tr>
                            <td> '.trim($countryCode) .' '.trim($zipCode).'</td>
                        </tr>

                        <tr>
                            <td> '.trim($vat) .'</td>
                        </tr>
                    </tbody>
                </table>
            </td>
            <td width="25%">
            <table>
                    <tbody>
                        <tr>
                            <td style="color:#00aeef;text-transform:uppercase;"> '. _l('ship_to') .'</td>
                        </tr>
                        '.format_customer_info_invoice($invoice, 'invoice', 'shipping').'
                    </tbody>
                </table>
                
            </td>
            <td  align="right" width="40%">
                <span style="color:#00aeef;text-transform:uppercase;">PROJECT NAME:</span>' .$project_name.'<br>
                <span>System Size [SAMPLE]</span><br>
                <span>Invoice No.: # ' . $invoice_number . '</span><br>
                <span>Invoice Date.: ' . $invoice->date. '</span><br>
                <span>Created By: '. get_staff_full_name($invoice->addedfrom).'</span><br>
                <span>Quote No: 19-####</span><br>
                <span>PO No: 12245</span><br>
                <span>EST. DELIVERY DATE: '.$invoice->duedate.'</span>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="right" style="padding:0px;margin:0px;">
                <table width="100%"  cellspacing="0px" cellpadding="0px" >
                    <tbody>
                        <tr>
                            <td><h2 style="margin:0px;padding:0px;">TOTAL DUE: '.app_format_number($invoice->total).' USD</h2></td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>';


$pdf->writeHTML($billing_info, false, false, false, false, '');




// The Table
// $pdf->Ln(hooks()->apply_filters('pdf_info_and_table_separator', 6));

// The items table

 
$items = get_group_items_table_data($invoice, 'invoice', 'pdf');


$tblhtml = $items->table();

$pdf->writeHTML($tblhtml, false, false, false, false, '');

$pdf->Ln(8);

$calculate_discount = 0;
$discount_name = '';


if($invoice->discount_added == 1){
    $discount_name = 'Tech Partner/Studio 5%';
    $calculate_discount = (5 / 100) * $invoice->subtotal;

}else if($invoice->discount_added == 2){
    $discount_name = 'Rental Partner 10%';
     $calculate_discount = (10 / 100) * $invoice->subtotal;
}
else if($invoice->discount_added == 3){
    $discount_name = 'Dealer 25%';
     $calculate_discount = (25 / 100) * $invoice->subtotal;
}
else if($invoice->discount_added == 4){
    $discount_name = 'Education 25%';
     $calculate_discount = (25 / 100) * $invoice->subtotal;
}
else if($invoice->discount_added == 5){
    $discount_name = 'Distributer 30%';
     $calculate_discount = (30 / 100) * $invoice->subtotal;
}
else if($invoice->discount_added == 6){
    $discount_name = 'Demo 40%';
     $calculate_discount = (40 / 100) * $invoice->subtotal;
}



foreach ($invoice->items as $k => $v) {
    $amount = $v['rate'] * $v['qty'];
    if($v['discount_type'] == 'percentage'){
    $percentage = $v['discount'];
    $discounted_value = ($percentage / 100) * $amount;
    }else{
        $discounted_value = $v['discount'];
    }
    $calculate_discount+=$discounted_value;
}




// $invoice->total = $invoice->total - $new_added_discount;






$subtotal_Session = '';
$subtotal_Session .='<table style="background-color:#ececec;" cellpadding="10px">
    <tbody>
        <tr>
            <td>Currency:</td>
            <td>USD</td>
            <td>Subtotal:</td>
            <td align="right">' . app_format_money($invoice->total_amount, $invoice->currency_name) . '</td>
        </tr>
        <tr>';
        if(!empty($invoice->discount_added)){
            $subtotal_Session .=' <td>Discount Type:</td><td >'.$discount_name.'</td>';
        }else{
           $subtotal_Session .=' <td></td><td ></td>'; 
        }




        $subtotal_Session .='<td><p style="color:red;">Discount:</p><p>Discounted Subtotal:</p></td>
            <td align="right"><p style="color:red;">' . app_format_money($calculate_discount, $invoice->currency_name) . '</p><p>' . app_format_money($invoice->before_adding_shipping, $invoice->currency_name) . '</p></td>
        </tr>';
        $tax_rate = 0;
        foreach ($items->taxes() as $tax) {
    $subtotal_Session .='<tr>
    <td><strong>' . $tax['taxname'] . ' (' . app_format_number($tax['taxrate']) . '%)' . '</strong></td>
    <td>' . app_format_money($tax['total_tax'], $invoice->currency_name) . '</td>
</tr>';
$tax_rate+=$tax['total_tax'];
}

        
        $subtotal_Session .='<tr>
            <td>Shipping Provider:</td>
            <td>CAST - FedEx</td>
            <td>Shipping:</td>
            <td align="right">' . app_format_money($invoice->shipping, $invoice->currency_name) . '</td>
        </tr>
        <tr>
            <td colspan="4"><b><i>Payment Methods</i></b></td>
        </tr>

        <tr>
            <td colspan="2"><i>Wire Transfer, Credit Card, Cheque</i></td>
            <td style="color:red;">Payments/Credits:</td>
            <td align="right">$0.00</td>
        </tr>
    </tbody>
</table>';

$pdf->writeHTML($subtotal_Session, false, false, false, false, '');

$pdf->Ln(hooks()->apply_filters('pdf_info_and_table_separator', 6));

$total_due = '';
$total_due .='<table style="background-color:#bdebfe; color:black;padding-left:10px;padding-right:10px;padding-top:10px;border-top:1px solid #000;" >
    <tbody>
        <tr>
            <td><b>Net Total of all items listed above</b></td>
            <td rowspan="2">
            <table>
            <tbody>
                <tr>
                    <td valign="middle"><h2>TOTAL DUE</h2></td>
                    <td align="right" valign="middle">' . app_format_money($invoice->total+$tax_rate, $invoice->currency_name) . '</td>
                </tr>
            </tbody></table>
            </td>
        </tr>
        <tr>
            <td style="padding-bottom:10px;"><i>excludes taxes and duties</i></td> 
        </tr>
    </tbody>
</table>';
$pdf->writeHTML($total_due, false, false, false, false, '');

$pdf->Ln(hooks()->apply_filters('pdf_info_and_table_separator', 6));

$payment_terms = '';

$payment_terms .='<h2>PAYMENT TERMS</h2>';
$payment_terms .='<table style="background-color:#ececec;margin-top:0px;">
    <tbody>
        <tr>
            <td>Installment 1 - 50% Upon receipt of invoice</td>
            <td align="right">' . app_format_money($invoice->total+$tax_rate/2, $invoice->currency_name) . '</td>
        </tr>
        <tr>
            <td>Installment 2 - 50 % Due prior to releasing the shipment</td>
            <td align="right">' . app_format_money($invoice->total+$tax_rate/2, $invoice->currency_name) . '</td>
        </tr>
    </tbody>
</table>';
$pdf->writeHTML($payment_terms, false, false, false, false, '');


$pdf->Ln(3);

$aditional_items = '';
$aditional_items .='<table  width="100%" style="padding-top:10px;padding-bottom:10px;border:1px solid #000;border-collapse: collapse;  border-spacing: 0; ">
    <thead>
    <tr style="background-color:#062e3f; color:#fff;">
    <th align="center" style="color:#fff;"><h3>Additional Items</h3></th>
    <th align="center" style="color:#fff;"><h3>Terms of Payment</h3></th>
    </tr>
    </thead>
    <tbody >
        <tr style="border:1px solid #000;"  >
            <td style="border:1px solid #000;">Onsite Support - BT Technician for training including installation, configuration and calibration.</td>
            <td align="center" style="border:1px solid #000;">4 days provided</td>
        </tr>
        <tr>
            <td style="border:1px solid #000;">Shipping - normal delivery time unless otherwise specified</td>
            <td align="center" valign="middle" rowspan ="2" style="border:1px solid #000;">Charged back</td>
        </tr>
        <tr>
            <td>Travel - airfare, accomodations, local travel, per diems</td>  
        </tr>
    </tbody>
</table>
<hr style="width:100%;border-bottom:1px solid #000;margin:10px;"/>';
$pdf->writeHTML($aditional_items, false, false, false, false, '');


#bitsclan solutions

$invoice_note = get_option('invoice_note_standard');
$pdf->Ln(3);
$pdf->Ln(hooks()->apply_filters('pdf_info_and_table_separator', 6));
$techinal_notes = '';
$techinal_notes .='<table width="100%" style="padding-top:20px;padding-bottom:20px;">
    <tbody>
        <tr style="background-color:#062e3f; color:#fff;">
            <td align="center"><h2>Technical, Financial and Legal Terms & Conditions governing BlackTrax<br>supply, install and/or rental Transactions</h2></td>
        </tr>
        <tr>
            <td>
                '.$invoice_note.'
            </td>
        </tr>
    </tbody>
</table>';





$pdf->writeHTML($techinal_notes, true, false, false, false, '');
$pdf->Ln(3);


if (!empty($invoice->clientnote)) {
    $pdf->Ln(4);
    $pdf->SetFont($font_name, 'B', $font_size);
    $pdf->Cell(0, 0, _l('invoice_note'), 0, 1, 'L', 0, '', 0);
    $pdf->SetFont($font_name, '', $font_size);
    $pdf->Ln(2);
    $pdf->writeHTMLCell('', '', '', '', $invoice->clientnote, 0, 1, false, true, 'L', true);
}

if($invoice->term_and_conditions_active == 1){
    if (!empty($invoice->terms)) {
        $pdf->Ln(4);
        $pdf->SetFont($font_name, 'B', $font_size);
        $pdf->Cell(0, 0, _l('terms_and_conditions'), 0, 1, 'L', 0, '', 0);
        $pdf->SetFont($font_name, '', $font_size);
        $pdf->Ln(2);
        $pdf->writeHTMLCell('', '', '', '', $invoice->terms, 0, 1, false, true, 'L', true);
    }
}

if($invoice->shipping_active == 1){
    if (!empty($invoice->shipping_terms)) {
        $pdf->Ln(4);
        $pdf->SetFont($font_name, 'B', $font_size);
        $pdf->Cell(0, 0, _l('shipping'), 0, 1, 'L', 0, '', 0);
        $pdf->SetFont($font_name, '', $font_size);
        $pdf->Ln(2);
        $pdf->writeHTMLCell('', '', '', '', $invoice->shipping_terms, 0, 1, false, true, 'L', true);
    }
}

if($invoice->payment_terms_active == 1){
    if (!empty($invoice->payment_terms)) {
        $pdf->Ln(4);
        $pdf->SetFont($font_name, 'B', $font_size);
        $pdf->Cell(0, 0, _l('payment_terms'), 0, 1, 'L', 0, '', 0);
        $pdf->SetFont($font_name, '', $font_size);
        $pdf->Ln(2);
        $pdf->writeHTMLCell('', '', '', '', $invoice->payment_terms, 0, 1, false, true, 'L', true);
    }
}


if($invoice->labour_terms_active == 1){
    if (!empty($invoice->labour_terms)) {
        $pdf->Ln(4);
        $pdf->SetFont($font_name, 'B', $font_size);
        $pdf->Cell(0, 0, _l('labour_terms'), 0, 1, 'L', 0, '', 0);
        $pdf->SetFont($font_name, '', $font_size);
        $pdf->Ln(2);
        $pdf->writeHTMLCell('', '', '', '', $invoice->labour_terms, 0, 1, false, true, 'L', true);
    }
}
