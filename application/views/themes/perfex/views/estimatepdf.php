<?php

defined('BASEPATH') or exit('No direct script access allowed');

$dimensions = $pdf->getPageDimensions();

$header = '';


$header .= '<table style="background-color: #072e41; color: #fff; padding-top:25px; padding-bottom:20px;padding-left:15px; padding-right:10px;">
    <tbody>
        <tr>
            <td valign="middle">
                <h5 style="font-size:50px;font-weight:500;">QUOTE</h5>
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



$clientId = $estimate->clientid;



$companyName = $estimate->client->company;


if (isset($estimate->client->show_primary_contact) && $estimate->client->show_primary_contact == 1) {
    $primaryContactId = get_primary_contact_user_id($clientId);
    if ($primaryContactId) {
        $companyName = get_contact_full_name($primaryContactId) . '<br />' . $companyName;
    }
}


$street = '';

$street = $estimate->billing_street;

$city = '';

$city = $estimate->billing_city;


$state = $estimate->billing_state;

$zipCode = '';

$zipCode = $estimate->billing_zip;


$countryCode = '';
$countryName = '';
$country     = null;

$country = get_country($estimate->billing_country);

if ($country) {
    $countryCode = $country->iso2;
    $countryName = $country->short_name;
}

$phone = '';


$phone = $estimate->client->phonenumber;


$vat = '';

$vat = $estimate->client->vat;


$street = trim(preg_replace("/<br\W*?\/>/", "\n", $street));

$companyName = $companyName;
  

$billing_info .= '<table width="100%" style="padding-top:20px;"  cellspacing="10px">
    <tbody>
        <tr>
            <td align="left" width="35%">
          
                <table>
                    <tbody>
                        <tr>
                            <td style="color:#00aeef;text-transform:uppercase;">Quoted To</td>
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
                            <td style="color:#00aeef;text-transform:uppercase;">Shipped To</td>
                        </tr>
                        '.format_customer_info_invoice($estimate, 'invoice', 'shipping').'
                    </tbody>
                </table>
                
            </td>
            <td  align="right" width="40%">
                <span style="color:#00aeef;text-transform:uppercase;">PROJECT NAME:</span> BlackTrax Average<br>
                <span>System Size [SAMPLE]</span><br>
                <span>Quote No.: # ' . $estimate_number . '</span><br>
                <span>Created By: '. get_staff_full_name($estimate->addedfrom).'</span><br>
                <span>Quote Date: '.$estimate->date.'</span><br>
                <span>Expiration Date: '.$estimate->expirydate.'</span><br>
                <span>EST. DELIVERY DATE: '.$estimate->date.'</span>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="right" style="padding:0px;margin:0px;">
                <table width="100%"  cellspacing="0px" cellpadding="0px" >
                    <tbody>
                        <tr>
                            <td><h2 style="margin:0px;padding:0px;">TOTAL DUE: '.app_format_number($estimate->total).' USD</h2></td>
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

 
$items = get_group_items_table_data($estimate, 'invoice', 'pdf');


$tblhtml = $items->table();

$pdf->writeHTML($tblhtml, false, false, false, false, '');

$pdf->Ln(8);

$add_items       = $estimate->items;
  $total_amount_cal = 0;
  $sub_total = 0;
  $groups = array();
  $group_items = array();
  $discounted_price = 0;
  foreach ($add_items as $item) {
    if(!in_array($item['group_id'], $groups)){
      array_push($groups, $item['group_id']);
    }
  }

  foreach ($add_items as $item) {
    if(in_array($item['group_id'], $groups)){
      $group_id = $item['group_id'];
      $group_items[$group_id][] = array($item);
    } 
  } 

  foreach ($group_items as $group => $group_items_arr) {
    $_group = item_group($group);
    foreach ($group_items_arr  as $k => $item) { 
      $total_amount_cal+=$item[0]['rate']*$item[0]['qty'];
      $amount = $item[0]['rate'] * $item[0]['qty'];
      if($item[0]['discount_type'] == 'percentage'){
        $percentage = $item[0]['discount'];
        $discounted_value = ($percentage / 100) * $amount;
      }else{
        $discounted_value = $item[0]['discount'];
      }
      $discounted_price+=$discounted_value;
      $sub_total+=($amount - $discounted_value);
    }
  }


$subtotal_Session = '';
$subtotal_Session .='<table style="background-color:#ececec;" cellpadding="10px">
    <tbody>
        <tr>
            <td>Currency:</td>
            <td>USD</td>
            <td>Subtotal:</td>
            <td align="right">' . app_format_money($total_amount_cal, $estimate->currency_name) . '</td>
        </tr>
        <tr>
            <td>Discount Type:</td>
            <td >Rental Partner @10%</td>
            <td><p style="color:red;">Discount:</p><p>Discounted Subtotal:</p></td>
            <td align="right"><p style="color:red;">' . app_format_money($discounted_price, $estimate->currency_name) . '</p><p>' . app_format_money($sub_total, $estimate->currency_name) . '</p></td>
        </tr>';

        foreach ($items->taxes() as $tax) {
    $subtotal_Session .='<tr>
    <td><strong>' . $tax['taxname'] . ' (' . app_format_number($tax['taxrate']) . '%)' . '</strong></td>
    <td>' . app_format_money($tax['total_tax'], $estimate->currency_name) . '</td>
</tr>';
}

        
        $subtotal_Session .='<tr>
            <td>Shipping Provider:</td>
            <td>CAST - FedEx</td>
            <td>Shipping:</td>
            <td align="right">' . app_format_money($estimate->shipping, $estimate->currency_name) . '</td>
        </tr>
        <tr>
            <td colspan="4"><b><i>Payment Methods</i></b></td>
        </tr>

        <tr>
            <td colspan="2"><i>Wire Transfer, Credit Card, Cheque</i></td>
            <td >Total:</td>
            <td align="right">' . app_format_money($sub_total+$estimate->shipping, $estimate->currency_name) . '</td>
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
                    <td align="right" valign="middle">' . app_format_money($sub_total+$estimate->shipping, $estimate->currency_name) . '</td>
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
$payment_terms .='<h2 style="color:#17aaf9;">PAYMENT TERMS</h2>';
$payment_terms .='<table style="background-color:#ececec;margin-top:0px;"><tbody>';

$selected_payment_terms = (!empty($estimate->payment_term_select) ? unserialize($estimate->payment_term_select) : array());
$options = array('due_upon_receipt_of_invoice','net_15_days','net_30_days','installment','pre_paid','due_prior_to_releasing_the_shipment_and_or_services');
$count =  sizeof($selected_payment_terms);
$installment = 1;
foreach ($options as $k => $v) { 
    if(in_array($k,$selected_payment_terms)){
        $payment_terms .='
        <tr>
            <td>Installment '.$installment .'  '. _l($options[$k]).'</td>
            <td align="right"> ' .app_format_money($sub_total/$count, $estimate->currency_name). '</td>
        </tr>';
        $installment++;
    }
}
$payment_terms .='</tbody></table>';
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
$pdf->writeHTML($aditional_items, true, false, false, false, '');

$pdf->Ln(3);

$clearfication_Requirements = '';
$clearfication_Requirements .='<table  width="100%" style="padding-top:10px;padding-bottom:10px;border:1px solid #000;border-collapse: collapse;  border-spacing: 0; ">
<thead>
<tr style="background-color:#062e3f; color:#fff;">
<th align="center" style="color:#fff;"><h3>Clarifications Required before Proceeding</h3></th>
<th align="center" style="color:#fff;"><h3>Terms and Conditions</h3></th>
</tr>
</thead>
<tbody >
<tr style="border:1px solid #000;"  >
<td style="border-right:1px solid #000;"><ol type="1">
<li>CAST needs a 3D CAD of your location to understand the number and placement of BT Cams necessary to ensure complete coverage of your tracking area and to identify any occlusions</li>

<li>Pricing of the ‘Additional Items’ section is determined and charged back to you at a later date.</li>

<li>You will identify a suitable candidate(s) who will receive a dedicated and thorough training of the onsite operation of your BT System.</li>

<li>During installation and for remote Tech Support, you will supply internet access to the Server at your expense.</li>

<li>Please refer to the ‘Technical, Financial and Legal Terms & Conditions governing BlackTrax supply, install and/or rental transactions’ document which apply to this quote for further information.</li>

<li>You are responsible for locally sourcing CAT 6 Cables, POE switches, and lighting merge nodes for your BT System.</li>

<li style="background-color: yellow;">Your support services membership commences 2 weeks from the date that your BT System was shipped from CAST. There is no annual fee for the first year of support services. Succeeding years cost $2,500/year and are payable in advance of the commencement of each proceeding year.</li>
</ol></td>
<td><ol type="1">
<li>This Quote is not a formal invoice, contract or undertaking to supply and/or install the BT System.</li>

<li>This Quote, the documentation generated in conjunction with it, and any attachments are deemed strictly Confidential Information. You cannot copy, distribute, share, publish, disseminate or use it or the information in it, in
public or to any other party without the prior written permission of CAST.</li>

<li>This Quote relies on verbal and nonverbal information obtained from you. We have not attempted to test the veracity or accuracy of the information submitted by you. Any errors may change this quote price.</li>

<li>CAST may engage a BT Expert or BTD to complete a site survey for, install, calibrate, and/or commission your BT System at their discretion.</li>

<li>Onsite labour provided by CAST will not exceed 10 hours per day. Additional labour must be approved by both CAST and the client party and will be charged at a rate of $112.50 USD per hour.</li>

<li>Normal delivery time for receiving your BT System is 4 weeks from receiving your deposit payment. An expedited fee of 3% will be applied to the BT System price if a delivery time frame of 2 weeks is necessary.</li>
</ol></td>
</tr>

</tbody>
</table>
<hr style="width:100%;border-bottom:1px solid #000;margin:10px;"/>';
$pdf->writeHTML($clearfication_Requirements, true, false, false, false, '');




#bitsclan solutions

$estimate_note = get_option('estimate_note_standard');
$pdf->Ln(4);
$pdf->SetFont($font_name, 'B', $font_size);
$pdf->SetFont($font_name, '', $font_size);
$pdf->Ln(2);
$pdf->writeHTMLCell('', '', '', '', $estimate_note, 0, 1, false, true, 'L', true);




if (!empty($estimate->clientnote)) {
    $pdf->Ln(4);
    $pdf->SetFont($font_name, 'B', $font_size);
    $pdf->Cell(0, 0, _l('invoice_note'), 0, 1, 'L', 0, '', 0);
    $pdf->SetFont($font_name, '', $font_size);
    $pdf->Ln(2);
    $pdf->writeHTMLCell('', '', '', '', $estimate->clientnote, 0, 1, false, true, 'L', true);
}

if($estimate->term_and_conditions_active == 1){
    if (!empty($estimate->terms)) {
        $pdf->Ln(4);
        $pdf->SetFont($font_name, 'B', $font_size);
        $pdf->Cell(0, 0, _l('terms_and_conditions'), 0, 1, 'L', 0, '', 0);
        $pdf->SetFont($font_name, '', $font_size);
        $pdf->Ln(2);
        $pdf->writeHTMLCell('', '', '', '', $estimate->terms, 0, 1, false, true, 'L', true);
    }
}

if($estimate->shipping_active == 1){
    if (!empty($estimate->shipping_terms)) {
        $pdf->Ln(4);
        $pdf->SetFont($font_name, 'B', $font_size);
        $pdf->Cell(0, 0, _l('shipping'), 0, 1, 'L', 0, '', 0);
        $pdf->SetFont($font_name, '', $font_size);
        $pdf->Ln(2);
        $pdf->writeHTMLCell('', '', '', '', $estimate->shipping_terms, 0, 1, false, true, 'L', true);
    }
}

if($estimate->payment_terms_active == 1){
    if (!empty($estimate->payment_terms)) {
        $pdf->Ln(4);
        $pdf->SetFont($font_name, 'B', $font_size);
        $pdf->Cell(0, 0, _l('payment_terms'), 0, 1, 'L', 0, '', 0);
        $pdf->SetFont($font_name, '', $font_size);
        $pdf->Ln(2);
        $pdf->writeHTMLCell('', '', '', '', $estimate->payment_terms, 0, 1, false, true, 'L', true);
    }
}


if($estimate->labour_terms_active == 1){
    if (!empty($estimate->labour_terms)) {
        $pdf->Ln(4);
        $pdf->SetFont($font_name, 'B', $font_size);
        $pdf->Cell(0, 0, _l('labour_terms'), 0, 1, 'L', 0, '', 0);
        $pdf->SetFont($font_name, '', $font_size);
        $pdf->Ln(2);
        $pdf->writeHTMLCell('', '', '', '', $estimate->labour_terms, 0, 1, false, true, 'L', true);
    }
}
