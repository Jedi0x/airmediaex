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
                <span style="color:#00aeef;text-transform:uppercase;">PROJECT NAME:</span> BlackTrax Average<br>
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

$subtotal_Session = '';
$subtotal_Session .='<table style="background-color:#ececec;" cellpadding="10px">
    <tbody>
        <tr>
            <td>Currency:</td>
            <td>USD</td>
            <td>Subtotal:</td>
            <td align="right">' . app_format_money($invoice->subtotal, $invoice->currency_name) . '</td>
        </tr>
        <tr>
            <td>Discount Type:</td>
            <td colspan="3">Rental Partner @10%</td>
        </tr>';

        foreach ($items->taxes() as $tax) {
    $subtotal_Session .='<tr>
    <td><strong>' . $tax['taxname'] . ' (' . app_format_number($tax['taxrate']) . '%)' . '</strong></td>
    <td>' . app_format_money($tax['total_tax'], $invoice->currency_name) . '</td>
</tr>';
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
                    <td align="right" valign="middle">' . app_format_money($invoice->total, $invoice->currency_name) . '</td>
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
            <td align="right">' . app_format_money($invoice->total/2, $invoice->currency_name) . '</td>
        </tr>
        <tr>
            <td>Installment 2 - 50 % Due prior to releasing the shipment</td>
            <td align="right">' . app_format_money($invoice->total/2, $invoice->currency_name) . '</td>
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
                <b>These Technical, Financial and Legal Terms & Conditions (Terms & Conditions) will frame the mutual understanding
                between you, or the entity you represent, and CAST BlackTrax Ltd. of 35 Ripley Avenue, Suite 1, Toronto, ON,
                Canada, M6S 3P2 or a CAST-authorized BlackTrax Expert (BTE) (collectively, CAST), concerning our discussions and
                deal- making, and will also govern any BlackTrax Preliminary Estimate, your Purchase Order, CAST’s invoice or
                other agreements for the supply, installation and/or rental of BlackTrax.</b>
            </td> 
        </tr>
        <tr>
            <td>
                CAST provides its Preliminary Estimate or Preliminary Rental Estimate (collectively, PE) only in reply to your Initial Survey which
                is deemed to be a serious inquiry expressly concerning the initial purchase of a BlackTrax System (limited to BTEs) or the initial
                purchase or rental and installation of a BlackTrax Solution. You may purchase additional or replacement Hardware Devices
                subsequently via another sales channel.
            </td>
        </tr>
        <tr>
            <td>
                A PE is only an estimate, generated on the basis of these Terms & Conditions, and in accordance with CAST’s policy that the
                Terms & Conditions underpinning the PE would be applied vertically to achieve consistent meanings, intended impacts and
                purposes in your PO and likewise in CAST’s invoice to you. CAST’s policy underscores that consistency in meanings and application
                of terms from PE to PO to invoice will yield a clearer uniform understanding of the technical, business and legal points of any
                transaction between you and CAST. If your PO contains different terms then these Terms & Conditions will prevail unless you and
                CAST agree otherwise in writing.
            </td>
        </tr>
        <tr>
            <td>
                A PE, PO, any CAST invoice as well as all correspondence, diagrams, layouts, designs, etc. constitutes Confidential Information and
                may include Intellectual Property belonging to CAST.
            </td>
        </tr>

        <tr>
        <td>
        <ol>
    <li>
        <b>Definitions</b> Unless otherwise defined the following definitions shall apply to these Terms & Conditions and any attachments and exhibits.
        <ol type="a">

            <li><b>"BlackTrax"</b> or <b>“BT”</b> means the powerful, accurate and cost-effective realtime tracking technology solution only available from CAST which delivers precise 3D & 6D positioning to electromechanical controllers for downstream interfacing automated and robotic technologies which are more particularly described at www.blacktrax.ca.
            </li>

            <li><b>“BT Downstream Interfacing Technology”</b> or <b>“BTdit”</b> means the automated lighting, 3D and spactial audio, multimedia, and/or robotic camera technologies that rely on the realtime delivery of precise, dynamic postioning data from BT so the BTdits know their target’s precise location and orientation, so, in turn, they can precisely deliver what they were cued to do. For greater clarity, BTdits are neither quoted, sold, installed, nor supported by CAST.
            </li>

            <li><b>“BTSolution”</b> means the turnkey, fully functioning BTSystem (see below) plus additional components required to complete the turnkey installation and any permits therefor and inspections thereof, if any. For greater certainty, the BTSolution excludes BTdits.
            </li>

            <li><b>“BTSystem”</b> is a realtime tracking system that is supplied by CAST, comprised of fully dedicated Hardware Devices, Software Product, and BTServer. The Software Product, which is licenced under an End User License Agreement (see www.blacktrax.ca), will be preinstalled as a single integrated whole. Each BTSystem is shipped with a BTCallibration Kit used for calibrating BTCams. For greater clarity, neither the BTSystem, Software Product, nor any Hardware Device can be separated for independent or other uses.
            </li>

            <li><b>“Business Day”</b> shall mean any Monday to Friday from the hours of 9:00 a.m. to 6:00 p.m. Eastern Time on which banks in the Province of Ontario Canada are open for business.
            </li>

            <li>Each party agrees to maintain the confidentiality of all information made available to it by the other party which is marked confidential or which the receiving party should reasonably assume would constitute confidential information of the disclosing party (Confidential Information). In the case of CAST, Confidential Information includes the terms of the Terms & Conditions, Initial Survey, verbal and nonverbal discussions concerning the the project outlined in the Initial Survey, and may contain Intellectual Property belonging to CAST. Each party shall use Confidential Information made available to it by the other party solely for purposes contemplated by the Initial Survey and shall provide such Confidential Information only to those individuals who have a need to review it for purposes contemplated. Otherwise, the receiving party shall maintain the confidentiality of all Confidential Information. This provision shall survive the expiry or termination of the PE and discussions about the project submitted in the Initial Survey. (See also Confidentiality).
            </li>

            <li><b>“Currency”</b> is expressed in US Dollars unless another currency is specified on the PE. CAST may fix a foreign currency conversion rate in writing for the transaction provided full payment is received within 30 days of such date. In the event payment for CAST’s subsequent invoice is not made in full within 30 days of setting such rate then CAST may reset the rate and you agree to pay the differential.
            </li>

            <li><b>“Dongle”</b> means a Hardware Device, which must be activated for in accordance with the EULA, are shipped with the BTSystem and registered to the End User. The Dongle remains inserted at all times in a USB port on the BTServer so Software Product operates.
            </li>

            <li><b>“Electronic transmission”</b> means that any PE, PO, CAST invoice or Notice transmitted by electronic transmission shall have the legal significance of a duly executed original delivered to the other party the next Business Day.
            </li>

            <li><b>“End User”</b> shall mean a person or legal entity, which deals at arms’ length to CAST, that must agree to all the terms of the EULA to become Licensed (see EULA below) by CAST, and thereby authorized to use the BTSystem and is entitled to Support Services.
            </li>

            <li><b>“End User Licence Agreement”</b> or <b>“EULA”</b> sets out the standard terms and conditions, which each End User accepts by executing the Certificate of Acceptance by which CAST grants a nonassignable, nontransferable, nonsublicencable, limited-use 12-month Licence. Depending on whether you rent, lease or purchase BT, the Licence may be renewable or extendable. For example, the initial BT purchase normally includes a Licence for the first year that you must renew in one year increments by payment of the annual Support Fee, which includes entitlement to Support Services (see below), before the begininng of each succeeding year. Failure to renew or extend means you have neither the Licence or authority to use BT.
            </li>

            <li><b>“Hardware Devices”</b> includes all upstream (to the BTServer) hardware devices specified and/or supplied by CAST that connect to and used by the BTServer. For greater clarity, BTdits are not Hardware Devices. For greater certainty, Hardware Devices supplied by CAST as the standard BTSystem configuration usually include 1-BTController (including 2 Timekeepers), 4-BTBeacons, 6-BTCams, 1-BTBeacon Docking Station.
            </li>

            <li><b>“Intellectual Property”</b> shall mean any right that is or may be granted or recognized under any all Canadian, foreign, federal, state, and common law regarding trademarks, service marks, domain names, Internet path names and addresses of whatsoever nature, trade dress, copyrights, know how, show how, patents, inventions (whether not patentable), mask works, software, propriety data, proprietary lists of (curent, past, potential) End Users and all other lists involved in CAST’s business, strategic plans, financial data, trade secrets, integrated circuit topographies, privacy, publicity, celebrity and personality rights and any other statutory provision or common or civil law principle regarding intellectual and industrial property and all applications for registration and/or issuance with respect to all foregoing and whether or not any of the foregoing is registered or patentable. For greater certainty, Intellectual Property includes all present and future worldwide copyrights, trade-marks, trade secrets, patents, patent applications, moral rights, contract rights, and other proprietary industrial property and/or intellectual property rights, including any custom design layouts concerning the installation of the BTSolution, all Initial Survey and Software Product documentation regardless of whether submitted to or delivered by CAST to you.
            </li>

            <li><b>“Parties”</b> or <b>“Party”</b> means both or individually CAST and you.
            </li>

            <li><b>“Purchase Order”</b> or <b>“PO”</b> means your legally binding PO which confirms your acceptance of these Terms & Conditions and PE, including, but not limited to, the configuration of the BTSystem, as well as its proposed installation design, delivery and installation date.
            </li>

            <li><b>“Software Product”</b> means the software and software updates supplied by CAST, which is Licenced and initialized on the BTServer, software which is not otherwise subject to a separate license agreement between End User and CAST or its suppliers, and all associated software components, media, printed materials and "online" or electronic documentation developed and provided by CAST. For greater certainty, reference to the BTServer includes the Software Product and Dongles.
            </li>

            <li><b>“Support Services”</b> may be delivered by CAST, a BTE or other parties specifically approved by CAST, and via the internet. Use of Support Services is governed by the CAST policies and programs described in the User Documentation, in “online” documentation, and/or other CAST-provided materials. For greater clarification, Support Services does not include source, supply, installation, programming of any BTdits. Pre-sale Support Services include provision of information about, installation plan and proposed configuration of your customized BTSystem and any assistance with the Initial Survey. Installation Support Services include scoping the site, completing the Initial Survey and 3D Space layout, obtaining government or municipal or authority permits and inspections, and sourcing and supplying whatever additional materiels that may be required to complete the turnkey installation including installing, callibrating, initializing, training, commissioning, and completing the Certificate of Acceptance at the time of turnover of the BTSolution. Other Support Services include post-sale Technical Support, Software Product updates, reminders to End Users to download and/or install the Software Product updates, reminders concerning payment of the annual Support Fee, as well as online diagnostics and Internet- based Services as outlined in the EULA.
            </li>   
        </ol>
    </li>

    <li>Initial Survey is prerequisite for a PE.
        <ol type="a">
            <li><b>“Initial Survey”</b> means the standard form document available from CAST or downloadable at www.blacktrax.ca which, together with the 3D CAD of the Space, becomes the formal request for quotation for a BTSolution with respect to a specific installation or project and prerequisite for obtaining a PE. An Initial Survey may be completed by CAST, a BTE or prospective End User, or in collaboration. A complete Initial Survey includes a 3D CAD of the Space and is used by CAST to ascertain the number and layout of Hardware Devices required to deliver the optimal BTSolution.
            </li>

            <li>Completion of Initial Survey. You are responsible for the complete, reliable and accurate description regarding the intended use of BT and End User’s requirements, as well as for surveying and obtaining the information concering the facility, details regarding the environment in which it will be used, the type of installation (purchase, rent, lease), and timing proposed for installing BT. You are also responsible for all direct and indirect costs incurred with regard thereto.
            </li>

            <li>CAST retains ownership of all information contained in the Initial Survey, including any diagrams, CADs, and electronic files attached as well as any communications concerning the Initial Survey and Preliminary Estimate, all of which is deemed Confidential Information.
            </li>
        </ol>
    </li>

    <li><b>CAST`s PE.</b>
        <ol type="a">

            <li><b>PE</b> means the form generated and emailed by CAST in response to the Initial Survey. It constitutes a quotation including an estimated price <b>(PE Price)</b> for the supply of a customized BT. For greater certainty, a PE includes any attachments and exhibits, specifications, drawings, notes, instructions and other information, whether physically attached or incorporated by reference, whether or not such information was verbal or nonverbal or was communicated before, at or after the date of the PE. CAST has no obligation to prepare a PE without first receiving a properly completed Initial Survey.
            </li>

            <li>A PE is valid until the <b>PEST Expiry Date</b> stipulated on the PE <b>(Valid Period)</b>. Extensions to the Valid Period are possible but only if granted in writing during the Valid Period by CAST. During this period, you may accept the price or amend the Initial Survey and CAST may issue a new Preliminary Estimate or confirm in writing its previously issued Preliminary Estimate. Such amendments neither extend nor restart the Valid Period.
            </li>

            <li><b>Configuration of BTSystem</b> that meets your needs drives the PE Price.PE Price is net of shipping and taxes. The PE does not include sales or import taxes or any taxes imposed on payments to CAST in its pricing model, so if such taxes are exigible then the amount thereof is strictly for your account.

                <ol type="i">
                    <li>The custom design of the BTSystem, and accordingly the PE Price, that meets your needs comprises a mix of Hardware Devices suitable for the particulars of the Space and foreseeable complexities for occlusion and operational factors, the strategic positions available to mount BTCams, as well as your specifications as per the Initial Survey, to deliver the most utile BTSolution.
                    </li>

                    <li>You acknowledge the PE applicability depends solely on the reliability of Initial Survey provided by you. The configuration of each BTSystem should prioritize the optimal delivery of streaming positional data and robust service and, within reason, not be compromised to achieve a particular price. CAST proposes the BTSystem configuration according to the Initial Survey on the basis that that configuration is best-suited for the Space and prospective End User’s need(s). CAST has no obligation to independently verify, complete an in-field survey, review any technical, design or creative plans, or to confirm the Initial Survey. For example, occlusion between any BTBeacon and BTCams, caused by movement of the trackable or props, may mandate changing the placement or increasing the number of BTCams for better coverage, requiring additional Hardware Devices and increasing the PE Price.
                    </li>

                    <li>You should review the PE carefully as its configuration and layout affect the PE Price. You may at any time make changes to the Initial Survey or by providing written documentation to CAST. In the event that such changes cause a material increase or decrease in the PE configuration and/or PE Price then CAST shall notify you by sending a revised PE.
                    </li>

                    <li>CAST includes Tier 2 Support and backoffice support for Support Services as well as Internet-based Services free of charge for the first-12month period and thereafter bills End Users for extensions or renewals, as the case may be, which amount is payable in advance for ongoing Support Services. Failure to renew or extend means you have neither the Licence or authority to use BT.
                    </li>
                </ol>
            </li>

            <li><b>PE Price is net of shipping and taxes.</b> The PE does not include sales or import taxes or any taxes imposed on payments to CAST in its pricing model, so if such taxes are exigible then the amount thereof is strictly for your account.
            </li>

        </ol>
    </li>
    <li>
        <b>Your PO places your order</b>

        <ol type="a">
            <li><b>our acceptance of the PE Price and Terms & Conditions</b> is confirmed by your delivery to CAST of your PO referencing the PE number and confirming the details in the PE.</li>

            <li><b>Your PO will also set out</b>
                <ol type="i">
                    <li>your proposed delivery and installation dates,</li>
                    <li>any special delivery instructions including import clearing instructions,</li>
                    <li>all contact and pertinent information concerning your import/customs clearing agent as well as confirmation that your agent will clear the shipment in the absence of which or if CAST clears the shipment for you then CAST may bill such costs plus and administration charge of at least 15% to you, and</li>
                    <li>confirmation of payment terms,</li>
                    <li>
                        <ol type="1">
                            <li>for the CAST invoice, and</li>
                            <li>for supplemental CAST invoice for shipping and/or other recoverable expenses.</li>
                        </ol>
                    </li>
                </ol>
            </li>
            <li>
                <ol type="1">
                    <li>
                        <b>CAST’s acceptance of your PO</b>
                        <ol type="a">
                            <li>
                                No PO shall be binding on CAST until accepted by CAST in writing which may be in the form of CAST’s Invoice.
                                <ol type="i">
                                    <li>CAST shall have five (5) Business Days to accept or reject your PO</li>
                                    <li>
                                        Your PO will be rejected if any terms and conditions
                                        <ol type="1">
                                            <li>are not the same as the PE including these Terms & Conditions, or</li>
                                            <li>if after highlighting “nonconforming terms” (which means any terms that are not consistent with these Terms & Conditions or other terms you propose) to CAST and such nonconforming terms are not accepted in writing by CAST, notwithstanding any other terms and conditions in the PO or other documentation.</li>
                                        </ol>
                                    </li>
                                    <li>CAST’s failure to object to nonconforming terms in your PO or other documents (including, without limitation, penalty clauses) shall neither be interpreted as a waiver of these Terms & Conditions nor the acceptance of any nonconforming terms.</li>
                                    <li>We will agree, acting in good faith, upon shipping instructions (date, destination, and any reasonable shipping and handling instructions).
                                        <ol type="1">
                                            <li>Generally shipping will occur not be more than 60 days from the CAST’s acceptance date of your PO.</li>
                                            <li>Otherwise, once the shipping date has been set and agreed by you and CAST, it cannot be cancelled or rescheduled within fifteen (15) days of that shipment date.</li>
                                        </ol>
                                    </li>
                                    <li>Payment and credit terms are subject to approval in advance by CAST’s Accounting Department. CAST, at its sole discretion, reserves the right to delay or cancel shipping or reject your PO under advice of its Accounting Department.</li>
                                </ol>
                            </li>
                            <li>Leasing or Lease Financing. If you are planning to lease or arrange financing arrangements for the purchase of BT, please contact CAST as special terms will apply.</li>
                            <li>Assignment. Neither your PO nor any interest therein, nor any claim arising hereunder shall be transferred or assigned by you without the prior written consent of CAST.</li>
                        </ol>
                    </li>
                </ol>
            </li>

        </ol>

    </li>
    <li>
        <b>CAST’s invoice and payment terms.</b>
        <ol type="a">
            <li><b>General conditions</b>
                <ol type="i">
                    <li>Pricing and terms will be the same as the PE as confirmed by your PO and as accepted by CAST.</li>
                    <li>Amounts delinquent beyond the payment due date are subject to a compounding 3% per month late fee prorated for the number of days past due and may impact, at CAST’s sole discretion, the delivery and/or installation of BT but does not alter your financial and legal obligation to CAST.</li>
                    <li>You will pay the amount of taxes except sales, use or similar taxes which CAST is required by law to collect from you. Sales, use and similar taxes shall be separately stated on CAST’s invoice unless your PO indicates a tax exemption.</li>
                </ol>
            </li>
            <li><b>Invoice payment terms</b> are set by CAST’s Accounting Department in advance of CAST’s acceptance of your PO and also consider whether your transaction is a purchase, lease or rental. CAST issues one invoice for each transaction on which the explicit payment terms are set out, generally as follows
                <ol type="i">
                    <li>for a purchase transaction then 50% advance is due on invoice, OR</li>
                    <li>for a lease or lease financing transaction payment terms will be specified and agreed by the Parties in advance of invoicing, OR</li>
                    <li>for a rental transaction, if the
                        <ol type="1">
                            <li>rental transaction price less than $15,000 then 100% down on invoice,</li>
                            <li>rental transaction price more than $15,000 then 50% down on invoice.</li>
                        </ol>
                    </li>
                </ol>
            </li>
            <li>
                <b>Payment</b>
                <ol type="i">
                    <li>You must pay the first instalment on time and satisfy CAST concerning payment of the balance due according to the payment terms before CAST will ship BT.</li>
                    <li>Payment for recoverable or shipping expenses and Taxes are due Net 30 days from CAST’s invoice date</li>
                    <li>All payments will be made by wire payment and only in the Currency agreed. Please email confirmation of your payment to accounting@castgroupinc.com .
                    <br>
                    WIRING INSTRUCTIONS – USD
                    <br><br>
                    Beneficiary Name: CAST Group of Companies Inc.
                    <br><br>
                    Beneficiary Address: 35 Ripley Avenue, Suite 1, Toronto, Ontario M6S 3P2 Canada
                    <br><br>
                    Beneficiary Account Number: 002 653362 070
                    <br><br>
                    Beneficiary SWIFT Code: HKBCCATT
                    <br><br>
                    Destination Bank: HSBC Bank Canada
                    <br><br>
                    Bank Address: 70 York Street, Toronto, Ontario, M5J 1S9
                    <br><br>
                    Intermediary/Correspondent Bank USD currency:
                    <br><br>
                    CitiBank
                    <br><br>
                    SWIFT Code: CITIUS33
                    <br><br>
                    ABA Routing Number: 021000089
                    <br><br>
                    Address: 389 Park Ave, New York, NY 10043
                    <br><br>
                    </li>
                </ol>
            </li>
            <li><b>Taxes.</b> Other than as set out in this Section, you are responsible for payment of all Taxes (other than taxes based on CAST’s income) and any related penalties and interest arising from the payment of fees to CAST or the delivery or license of the BTSystem. You will make all payments to CAST free and clear of and without reduction for any withholding taxes; any such taxes imposed on payments of fees to CAST will be your sole responsibility, and you will provide CAST with official receipts issued by the appropriate taxing authority, or such other evidence as the CAST may reasonably request, to establish that such taxes have been paid.</li>

            <li>
                <b>Warranty regarding BTSystem and Support Services</b> supplied by CAST.
                <ol type="i">
                    <li>CAST warrants that all goods or services furnished in accordance with its invoice will be free from defects in material or workmanship and will be in conformity with your PO, including drawings and specifications, if any, and reasonably fit for the purpose set out in the Initial Survey.</li>
                    <li>Warranty is subject to the “normal use” criteria. More specifically, warranty on hardware devices is 24 months, Dell provides its in-field warranty on the BTServer, and Support Services (which includes Tech Support, software updates, etc.) are ongoing subject to payment of an annual fee commencing the beginning of Year 2. There is no warranty on BTDiodes & stringers nor the BTBeacon battery.</li>
                    <li>CAST further warrants that such goods or services will be fit for the purpose for which they are sold, and where design is CAST’s responsibility, will be free from defects in design. Your approval of CAST’s design or material shall not be construed to relieve CAST of the warranties set forth herein.</li>
                </ol>
            </li>
        </ol>
    </li>
    <li>
        <b>Shipping, risk of loss or damage, and title</b>
        <ol type="a">
            <li>CAST will ship according to CAST`s standard commercial practice unless otherwise agreed in writing by CAST. You
            assume responsibility for the risk of loss or damage upon delivery to the designated carrier for shipment to you or its designated location.</li>

            <li>Subject to 7(a), title for the BTSystem passes from CAST to you upon receipt of your full payment for all amountsoutstanding and due to CAST in regard to the transaction.</li>

            <li>CAST and you will agree on the method and route for shipment of your BTSystem. Shipping and handling charges are additional to PE Price. If you requested special packing, or shipping instructions then such charges will be billed separately by CAST to you.</li>

            <li>CAST, acting reasonably and on a commercially viable basis, will prepare industry-standard shipping and customs information. Every package or other shipping unit, bill of lading, shipping memorandum and invoice will be marked with your PO Number as well as CAST’s invoice, part serial number and part tariff numbers.</li>

            <li>CAST will use reasonable commercial efforts to meet desired shipment dates but will not be liable to you in any way for any late shipment</li>

            <li>Right of inspection and rejection -- Materiel and equipment supplied by CAST shall be received subject to your
            inspection and approval within 10 days of your receipt of the goods, notwithstanding prior payment. If specifications or warranties are not met, material and equipment may be returned at CAST’s expense. No material or equipment returned to CAST as defective shall be replaced except upon your formal authorization.</li>

        </ol>
    </li>

    <li>
        <b>Installation and Support Services.</b>
        <ol type="a">
            <li>
                <b>Installation Warranties.</b> CAST warrants that
                <ol type="1">
                    <li>the Installation Support Services will substantially conform to the PE; and</li>
                    <li>the Support Services will be performed with reasonable skill, care and diligence consistent with industry standards.</li>
                </ol>
            </li>
        </ol>
        The remedies set out in this Section 8 are Customer’s exclusive remedies for breach of either warranty.
        <ol type="a">
            <li>If the Installation Support Services do not conform to the PE or are not performed with reasonable skill, care and diligence consistent with industry standards CAST shall re-perform such services to the extent necessary to correct the deficient services. If CAST cannot substantially correct a breach in a commercially reasonable manner, you may end the relevant services and recover the fees paid to CAST for the deficient services.</li>

            <li>Customer’s Responsibilities. You must provide CAST with all information, access, and full good faith cooperation reasonably necessary to enable CAST to deliver the Installation Support Services, and must also fulfill your obligations as set out in the PE or other BT documentation. If you fail to do this, CAST will be relieved of its obligations to the extent that the obligations are dependent upon your performance.</li>

            <li>General Undertaking. CAST shall comply with the provision of all laws including labour laws, rules, regulations and notifications issued there under from time to time. All safety and labour laws enforced by statutory agencies and by End User shall be applicable in the performance of the Support Services and CAST personnel shall abide by these laws.</li>

            <li style="background-color: yellow;">Annual fee for Other Support Services will be invoiced and is payable in advance of the commencement of the second and each succeeding 12-month period. The current annual fee of US$2500 is subject to change.</li>
        </ol>
    </li>

    <li>
        <b>Intellectual Property Rights</b>
        <ol type="a">
            <li>CAST solely owns the Intellectual Property. Upon payment in full of any amounts due for BT and future Support Services, End User shall have a non-transferable right to use BT for its internal business purposes. This right is renewable and shall continue for so long as, and be subject to the same terms and conditions as the right to use the Support Services.</li>

            <li>Unknown Infringement. If the normal operation, possession or use of BT by End User results in a Legal Claim or is otherwise found to infringe any 3rd party intellectual property right or CAST believes that this is likely, CAST must, at its option, either
                <ol type="i">
                    <li>obtain a license from such 3rd party for the benefit of End User;</li>
                    <li>modify BT so that it no longer infringes; or</li>
                    <li>if neither of these options is commercially feasible, terminate the relevant Support Services under these Terms & Conditions, in which case CAST shall refund to End User all unused fees pre-paid to CAST under the relevant Support Services for the infringing portion of BT.</li>
                </ol>
            </li>

            <li>
                However, CAST has no warranty obligations for
                <ol type="i">
                    <li>BT that has been modified by Customer or any third party, unless the modification has been approved in writing by CAST; or,</li>
                    <li>problems and issues with BT caused by any 3rd party software or hardware not originally a part of BT as supplied CAST, by reckless or accidental damage by you, or by other matters beyond CAST’s reasonable control.</li>
                </ol>
            </li>
        </ol>
    </li>

    <li>
        <b>Confidentiality.</b>
        <ol type="a">
            <li>The Software Product and Support Services contain valuable trade secrets and other proprietary or protected information that are the sole property of CAST and constitutes Confidential Information. You agree to use reasonable
            care to prevent other parties from learning of CAST Confidential Information.</li>

            <li>ertain End User data may include valuable trade secrets or other proprietary or protected information that are the sole property of the End User. CAST will take reasonable care to prevent other parties from learning of Customer Confidential Information.</li>

            <li>Sections 10(a) and (b) do not apply to any information that (i) is now, or subsequently becomes, through no act or failure to act on the part of receiving party (the “Receiver”), generally known or available to the public; (ii) is known by the Receiver at the time of receiving such information, as evidenced by the Receiver’s records; (iii) is subsequently provided to the Receiver by a 3rd party, as a matter of right and without restriction on disclosure; (iv) independently developed by the Receiver; or (iv) is required to be disclosed by law, provided that the party to whom the information belongs is given prior written notice of any such proposed disclosure.</li>

            <li>Publicity. CAST may list End User as a customer and use its logo on CAST’s website, on publicly available customer lists, and in media releases.</li>

        </ol>
    </li>

    <li>
        <b>General</b>
        <ol type="a">
            <li><b>Notice.</b> All notices, requests, demands and other communications required or permitted by the terms of these Terms & Conditions to be given by one party to the other (Notices) shall be in writing and shall be delivered personally, by electronic communication or by recognized overnight courier, or sent by facsimile to the parties at their respective addresses set forth above or at such other addresses as either party may hereafter notify the other of in such manner. Any Notice delivered personally, by electronic communication, by recognized overnight courier or sent by facsimile shall be deemed given on the date such notice is given or sent if such date is a Business Day and such Notice is received prior to 4:00 p.m. (Toronto time) on such date. If such date is not a Business Day or if such Notice is received at 4:00 p.m. or later (Toronto time) on a business day, Notice shall be deemed given on the immediately following Business Day. Until changed as herein provided, CAST’s facsimile number is 416-597-9594 and email address is mciobanu@castgroupinc.com and your fax or email is as shown on your PO.</li>

            <li>Independence. The relationship between you and CAST is that of independent companies. Nothing in these Terms & Conditions shall or shall be interpreted to constitute you and CAST as partners or joint venturers. Except as otherwise agreed to between the parties, neither party to this Agreement is granted any express or implied right or authority to bind the other or to make any commitment or representation or enter into any agreement on behalf of the other party.</li>

            <li>Governing Law. These Terms & Conditions and any legally binding agreement that results herefrom shall be governed by the laws of the Province of Ontario and the laws of Canada applicable therein.</li>

            <li>Assignment. These Terms & Conditions and any legally binding agreement that results herefrom may not be assigned without prior written consent of the other Party.</li>

            <li>Force Majeure. Neither of us shall be responsible for failure or delay of performance if caused by: an act of war, hostility, or sabotage; act of God; electrical, internet, or telecommunication outage that is not caused by the obligated party; government restrictions (including the denial or cancellation of any export or other license); other event outside the reasonable control of the obligated party. We both will use reasonable efforts to mitigate the effect of a force majeure event. If such event continues for more than 30 days, either of us may cancel unperformed services upon written notice. This Section does not excuse either Party’s obligation to take reasonable steps to follow its normal disaster recovery procedures or your obligation to pay for the services.</li>

            <li>General. The insertion of headings is for convenience of reference only and shall not affect the construction or interpretation of these Terms & Conditions. The terms "these Terms & Conditions", "herein" and similar expressions refer to this document and not to any particular portion hereof. These Terms & Conditions and any legally binding agreement that results herefrom constitutes the entire agreement between the parties hereto and supersede all prior agreements, whether oral or written, with respect to the subject matter hereof. These Terms & Conditions shall be binding upon and enure to the benefit of the parties hereto and their respective successors and permitted assigns. If any provision of this document is unenforceable, such provision will be changed and interpreted to accomplish the objectives of such provision to the greatest extent possible under applicable law and the remaining provisions will continue in full force and effect. These Terms & Conditions and any legally binding agreement that results herefrom may be executed in counterparts (by facsimile, email, or original signature), each of which shall constitute an original and all of which shall constitute one and the same agreement or legally binding document. No waiver of any rights, obligations or defaults shall be effective unless in writing and signed by the party against whom the same is sought to, be enforced. No modification or amendment to these Terms & Conditions may be made unless agreed to by the Parties hereto in writing.</li>

        </ol>
    </li>


    
</ol>
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
