<?php

defined('BASEPATH') or exit('No direct script access allowed');

include_once(APPPATH . 'libraries/App_group_items_table_template.php');

class App_group_items_table extends App_group_items_table_template
{
    public function __construct($transaction, $type, $for = 'html', $admin_preview = false)
    {
        // Required
        $this->type          = strtolower($type);
        $this->admin_preview = $admin_preview;
        $this->for           = $for;

        $this->set_transaction($transaction);
        $this->set_items($transaction->items);

        parent::__construct();
    }

    /**
     * Builds the actual table items rows preview
     * @return string
     */
    public function items()
    {
        $html = '';

        $descriptionItemWidth = $this->get_description_item_width();

        $regularItemWidth  = $this->get_regular_items_width(6);
        $customFieldsItems = $this->get_custom_fields_for_table();

        $i = 1;
        $groups = array();
        $group_items = array();

        foreach ($this->items as $item) {
            if(!in_array($item['group_id'], $groups)){
                array_push($groups, $item['group_id']);
            }
        }

        foreach ($this->items as $item) {
           if(in_array($item['group_id'], $groups)){
                $group_id = $item['group_id'];
                $group_items[$group_id][] = array($item);
            } 
        }


        if ($this->for == 'html') {

            $descriptionItemWidth = $descriptionItemWidth - 5;
            $regularItemWidth     = $regularItemWidth - 5;
           

            $html.=' <div class="group_items-drag">';
            foreach ($group_items as $group => $group_items_arr) {
                $_group = item_group($group);

                $html.='<div class="item-group-'.$_group->id.' item-group"  data-group-id = "'.$_group->id.' " data-invoice-id = "'.$this->items[0]['rel_id'].'" data-type="'.$this->type.' ">
                    <table class="table items items-preview invoice-items-preview" data-type="'.$this->type.'" cellspacing="0px" cellpadding="0px" border-collapse: collapse;border-spacing: 0;>
                        <thead>
                            <tr class="odd" >
                                <th align="left;" width="5%">#</th>
                                <th class="description" align="left;" width="' . $descriptionItemWidth . '%">'.strtoupper($_group->name).'</th>
                                <th align="right" width="' . $regularItemWidth . '%">PART NUMBER</th>
                                <th align="right" width="' . $regularItemWidth . '%">QUANTITY</th>
                                <th align="right" width="' . $regularItemWidth . '%">UNIT PRICE</th>
                                <th align="right" width="' . $regularItemWidth . '%">TAX</th>
                                <th align="right" width="' . $regularItemWidth . '%">DISCOUNT</th>
                                <th width="' . $regularItemWidth . '%">NET TOTAL</th>
                            </tr>
                        </thead>
                        <tbody>';

                         $subtotal = 0;
                        foreach ($group_items_arr as $keyx => $item) {

                            $itemHTML = '';

                            // Open table row
                            $itemHTML .= '<tr' . $this->tr_attributes($item[0]) . '>';

                            // Table data number
                            $itemHTML .= '<td' . $this->td_attributes() . ' align="center" width="5%">' . $i  . ' </td>';

                            $itemHTML .= '<td class="description" align="left;"  width="' . $descriptionItemWidth . '%">';

                            /**
                             * Item description
                             */
                            if (!empty($item[0]['description'])) {
                                $itemHTML .= '<span style="font-size:' . $this->get_pdf_font_size() . 'px;"><strong>'
                                . $this->period_merge_field($item[0]['description'])
                                . '</strong></span>';

                                if (!empty($item[0]['long_description'])) {
                                    $itemHTML .= '<br />';
                                }
                            }

                            /**
                             * Item long description
                             */
                            if (!empty($item[0]['long_description'])) {
                                $itemHTML .= '<span style="color:#424242;">' . $this->period_merge_field($item[0]['long_description']) . '</span>';
                            }

                            $itemHTML .= '</td>';

                            /**
                             * Item custom fields
                             */
                            foreach ($customFieldsItems as $custom_field) {
                                $itemHTML .= '<td align="left" width="' . $regularItemWidth . '%">' . get_custom_field_value($item[0]['id'], $custom_field['id'], 'items') . '</td>';
                            }

                            $itemHTML .= '<td align="right" width="' . $regularItemWidth . '%">' . $item[0]['part_number'] . '</td>';

                            /**
                             * Item quantity
                             */
                            $itemHTML .= '<td align="right" width="' . $regularItemWidth . '%">' . floatVal($item[0]['qty']);

                            /**
                             * Maybe item has added unit?
                             */
                            if ($item[0]['unit']) {
                                $itemHTML .= ' ' . $item[0]['unit'];
                            }

                            $itemHTML .= '</td>';

                            /**
                             * Item rate
                             * @var string
                             */

                            $rate = hooks()->apply_filters(
                                'item_preview_rate',
                                app_format_money($item[0]['rate'], $this->transaction->currency_name, $this->exclude_currency()),
                                ['item' => $item[0], 'transaction' => $this->transaction]
                            );

                            $itemHTML .= '<td align="right" width="' . $regularItemWidth . '%">' . $rate . '</td>';

                            /**
                             * Items table taxes HTML custom function because it's too general for all features/options
                             * @var string
                             */


                            $itemHTML .= $this->taxes_html($item[0], $regularItemWidth);

                            /**
                             * Possible action hook user to include tax in item total amount calculated with the quantiy
                             * eq Rate * QTY + TAXES APPLIED
                             */
                            $amount = $item[0]['qty'] * $item[0]['rate'];
                            if($item[0]['discount_type'] == 'percentage'){
                                $discount = $item[0]['discount']." %";
                                $percentage = $item[0]['discount'];
                                $discounted_value = ($percentage / 100) * $amount;
                            }else{
                                $discount =  app_format_money($item[0]['discount'],$this->transaction->currency_name,$this->exclude_currency());
                                $discounted_value = $item[0]['discount'];
                            }

            
                            $item_amount_with_quantity = hooks()->apply_filters(
                                'item_preview_amount_with_currency',
                                app_format_money(($amount - $discounted_value), $this->transaction->currency_name, $this->exclude_currency()),
                                $item,
                                $this->transaction,
                                $this->exclude_currency()
                            );

                            if($item[0]['discount_type'] == 'percentage'){
                                $discount = $item[0]['discount']." %";
                            }else{
                                $discount =  app_format_money($item[0]['discount'],$this->transaction->currency_name,$this->exclude_currency());
                            }

                            $itemHTML .= '<td align="right" width="' . $regularItemWidth . '%">' . $discount . ' </td>';

                            $itemHTML .= '<td class="amount" align="right" width="' . $regularItemWidth . '%">' . $item_amount_with_quantity . '</td>';

                            // Close table row
                            $itemHTML .= '</tr>';

                            $html .= $itemHTML;

                            //$subtotal+=$item[0]['rate'] * $item[0]['qty'];
                            $subtotal+=($amount - $discounted_value);

                            $i++;
                        }


                        $html.='</tbody>';

                        $html.='<tfoot class="table text-right">
                        <tr>
                           <td  colspan=5 align="right"><span class="bold" >'._l('invoice_subtotal').'</span></td>
                           <td class="subtotal" colspan=3 align="right">'.app_format_money($subtotal,$this->transaction->currency_name).'</td>
                           
                        </tr>
                        </tfoot>
                    </table>
                </div>';
            }

            $html.=' </div>';

        }


        if($this->for == "pdf"){

            $descriptionItemWidth = 20;
            $regularItemWidth     = 13.3333;
            $customFieldsItems    = $this->get_custom_fields_for_table();

            $html.=' <div class="group_items-drag">';
            foreach ($group_items as $group => $group_items_arr) {
                $_group = item_group($group);

                $html.='<div class="item-group-'.$_group->id.' item-group"  data-group-id = "'.$_group->id.' " data-invoice-id = "'.$this->items[0]['rel_id'].'" data-type="'.$this->type.' ">

                    <table class="table-items" cellpadding="5" border-collapse="collapse" border-spacing="0">
                        <thead> 
                            <tr style="color:#00aeef;" >
                                <th class="description" align="left;" width="' . $descriptionItemWidth . '%">'.$_group->name.'</th>
                                <th width="' . $regularItemWidth . '%" style="padding:10px;">Part number</th>
                                <th width="' . $regularItemWidth . '%">Qty</th>
                                <th width="' . $regularItemWidth . '%">Unit Price</th>
                                <th width="' . $regularItemWidth . '%">Tax</th>
                                <th width="' . $regularItemWidth . '%">Discount</th>
                                <th width="' . $regularItemWidth . '%">Net Total</th>
                            </tr>
                        </thead>
                    <tbody>';

                    $subtotal = 0;
                    $c = 0;
                    foreach ($group_items_arr as $keyx => $item) {

                        $itemHTML = '';

                        if($c++%2==1){
                            $background = "background-color:#FFF;";

                        }else{
                            $background = "background-color:#e2e2e2;";
                            
                        }
                        // Open table row
                        $itemHTML .= '<tr style="'.$background.'">';


                        $itemHTML .= '<td class="description" align="left;"  width="' . $descriptionItemWidth . '%">';

                        /**
                         * Item description
                         */
                        if (!empty($item[0]['description'])) {
                            $itemHTML .= '<span style="font-size:' . $this->get_pdf_font_size() . 'px;"><strong>'
                            . $this->period_merge_field($item[0]['description'])
                            . '</strong></span>';

                            if (!empty($item[0]['long_description'])) {
                                $itemHTML .= '<br />';
                            }
                        }

                        /**
                         * Item long description
                         */
                        if (!empty($item[0]['long_description'])) {
                            $itemHTML .= '<span style="color:#424242;">' . $this->period_merge_field($item[0]['long_description']) . '</span>';
                        }

                        $itemHTML .= '</td>';

                        /**
                         * Item custom fields
                         */
                        foreach ($customFieldsItems as $custom_field) {
                            $itemHTML .= '<td align="left" width="' . $regularItemWidth . '%">' . get_custom_field_value($item[0]['id'], $custom_field['id'], 'items') . '</td>';
                        }

                        $itemHTML .= '<td width="' . $regularItemWidth . '%">' . $item[0]['part_number'] . '</td>';

                        /**
                         * Item quantity
                         */
                        $itemHTML .= '<td width="' . $regularItemWidth . '%">' . floatVal($item[0]['qty']);

                        /**
                         * Maybe item has added unit?
                         */
                        if ($item[0]['unit']) {
                            $itemHTML .= ' ' . $item[0]['unit'];
                        }

                        $itemHTML .= '</td>';

                        /**
                         * Item rate
                         * @var string
                         */
                        $rate = hooks()->apply_filters(
                            'item_preview_rate',
                            app_format_money($item[0]['rate'], $this->transaction->currency_name, $this->exclude_currency()),
                            ['item' => $item[0], 'transaction' => $this->transaction]
                        );

                        $itemHTML .= '<td align="right" width="' . $regularItemWidth . '%">' . $rate . '</td>';

                        /**
                         * Items table taxes HTML custom function because it's too general for all features/options
                         * @var string
                         */

                        $itemHTML .= $this->taxes_html($item[0], $regularItemWidth);

                        /**
                         * Possible action hook user to include tax in item total amount calculated with the quantiy
                         * eq Rate * QTY + TAXES APPLIED
                         */
                        $amount = $item[0]['qty'] * $item[0]['rate'];
                        if($item[0]['discount_type'] == 'percentage'){
                            $discount = $item[0]['discount']." %";
                            $percentage = $item[0]['discount'];
                            $discounted_value = ($percentage / 100) * $amount;
                        }else{
                            $discount =  app_format_money($item[0]['discount'],$this->transaction->currency_name,$this->exclude_currency());
                            $discounted_value = $item[0]['discount'];
                        }

                    
                        $item_amount_with_quantity = hooks()->apply_filters(
                            'item_preview_amount_with_currency',
                            app_format_money(($amount - $discounted_value), $this->transaction->currency_name, $this->exclude_currency()),
                            $item,
                            $this->transaction,
                            $this->exclude_currency()
                        );

                        if($item[0]['discount_type'] == 'percentage'){
                            $discount = $item[0]['discount']." %";
                        }else{
                            $discount =  app_format_money($item[0]['discount'],$this->transaction->currency_name,$this->exclude_currency());
                        }

                        $itemHTML .= '<td align="right" width="' . $regularItemWidth . '%">' . $discount . ' </td>';

                       

                        $itemHTML .= '<td class="amount" align="right" width="' . $regularItemWidth . '%">' . $item_amount_with_quantity . '</td>';

                        // Close table row
                        $itemHTML .= '</tr>';

                    $html .= $itemHTML;

                    //$subtotal+=$item[0]['rate'] * $item[0]['qty'];
                    $subtotal+=($amount - $discounted_value);

                    $i++;
                }

                $html.='<tr>
                            <td  colspan= "5" align="right"><b>'._l('invoice_subtotal').'</b></td>
                            <td  colspan= "2" align="right"><b>'.app_format_money($subtotal,$this->transaction->currency_name).'</b></td>
                        </tr>';

                $html.='</tbody> </table></div>';

            }

            $html.=' </div>';
        
        }

        return $html;
    }

    /**
     * Html headings preview
     * @return string
     */
    public function html_headings()
    {
        // $html = '<tr>';
        // $html .= '<th align="center">' . $this->number_heading() . '</th>';
        // $html .= '<th class="description" width="' . $this->get_description_item_width() . '%" align="left">' . $this->item_heading() . '</th>';

        // $customFieldsItems = $this->get_custom_fields_for_table();
        // foreach ($customFieldsItems as $cf) {
        //     $html .= '<th class="custom_field" align="left">' . $cf['name'] . '</th>';
        // }

        // $html .= '<th align="right">' . $this->qty_heading() . '</th>';
        // $html .= '<th align="right">' . $this->rate_heading() . '</th>';
        // if ($this->show_tax_per_item()) {
        //     $html .= '<th align="right">' . $this->tax_heading() . '</th>';
        // }
        // $html .= '<th align="right">' . $this->amount_heading() . '</th>';
        // $html .= '</tr>';
        $html= '';
        return $html;
    }

    /**
     * PDF headings preview
     * @return string
     */
    public function pdf_headings()
    {
        // $descriptionItemWidth = $this->get_description_item_width();
        // $regularItemWidth     = $this->get_regular_items_width(6);
        // $customFieldsItems    = $this->get_custom_fields_for_table();

        // $tblhtml = '<tr height="30" bgcolor="' . get_option('pdf_table_heading_color') . '" style="color:' . get_option('pdf_table_heading_text_color') . ';">';

        // $tblhtml .= '<th width="5%;" align="center">' . $this->number_heading() . '</th>';
        // $tblhtml .= '<th width="' . $descriptionItemWidth . '%" align="left">' . $this->item_heading() . '</th>';

        // foreach ($customFieldsItems as $cf) {
        //     $tblhtml .= '<th width="' . $regularItemWidth . '%" align="left">' . $cf['name'] . '</th>';
        // }

        // $tblhtml .= '<th width="' . $regularItemWidth . '%" align="right">' . $this->qty_heading() . '</th>';
        // $tblhtml .= '<th width="' . $regularItemWidth . '%" align="right">' . $this->rate_heading() . '</th>';

        // if ($this->show_tax_per_item()) {
        //     $tblhtml .= '<th width="' . $regularItemWidth . '%" align="right">' . $this->tax_heading() . '</th>';
        // }

        // $tblhtml .= '<th width="' . $regularItemWidth . '%" align="right">' . $this->amount_heading() . '</th>';
        // $tblhtml .= '</tr>';

        return '';
    }

    /**
     * Check for period merge field for recurring invoices
     *
     * @return string
     */
    protected function period_merge_field($text)
    {
        if ($this->type != 'invoice') {
            return $text;
        }

        // Is subscription invoice
        if (!property_exists($this->transaction, 'recurring_type')) {
            return $text;
        }

        $compareRecurring = $this->transaction->recurring_type;
        $compareDate      = !$this->transaction->last_recurring_date ? $this->transaction->date : $this->transaction->last_recurring_date;
        $transactionDate  = $this->transaction->date;

        // Is not Y-m-d format
        if (!preg_match('/^(\d{4})-(\d{1,2})-(\d{1,2})$/', $compareDate)) {
            $compareDate = to_sql_date($compareDate);
        }

        if (!preg_match('/^(\d{4})-(\d{1,2})-(\d{1,2})$/', $transactionDate)) {
            $transactionDate = to_sql_date($transactionDate);
        }

        if ($this->transaction->custom_recurring == 0) {
            $compareRecurring = 'month';
        }

        $next_date = date('Y-m-d', strtotime(
            '+' . $this->transaction->recurring . ' ' . strtoupper($compareRecurring),
            strtotime($compareDate)
        ));

        return str_ireplace('{period}', _d($transactionDate) . ' - ' . _d(date('Y-m-d', strtotime('-1 day', strtotime($next_date)))), $text);
    }

    protected function get_description_item_width()
    {
        $item_width = 38;

        // If show item taxes is disabled in PDF we should increase the item width table heading
        return $this->show_tax_per_item() == 0 ? $item_width + 15 : $item_width;
    }

    protected function get_regular_items_width($adjustment)
    {
        $descriptionItemWidth = $this->get_description_item_width();
        $customFieldsItems    = $this->get_custom_fields_for_table();
        // Calculate headings width, in case there are custom fields for items
        $totalheadings = $this->show_tax_per_item() == 1 ? 4 : 3;
        $totalheadings += count($customFieldsItems);

        return (100 - ($descriptionItemWidth + $adjustment)) / $totalheadings;
    }
}
