<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<style type="text/css">
  .group-custom-head-class{
    background-color: #415165;
    padding: 15px 20px 18px;
    color: #fff;
    margin: 0px;
  }
</style>
<div class="panel_s<?php if(!isset($invoice) || (isset($invoice) && count($invoices_to_merge) == 0 && (isset($invoice) && !isset($invoice_from_project) && count($expenses_to_bill) == 0 || $invoice->status == Invoices_model::STATUS_CANCELLED))){echo ' hide';} ?>" id="invoice_top_info">
   <div class="panel-body">
      <div class="row">
         <div id="merge" class="col-md-6">
            <?php
              if(isset($invoice)){
                 $this->load->view('admin/invoices/merge_invoice', array('invoices_to_merge'=>$invoices_to_merge));
              }
            ?>
         </div>
         <!--  When invoicing from project area the expenses are not visible here because you can select to bill expenses while trying to invoice project -->
         <?php if(!isset($invoice_from_project)){ ?>
           <div id="expenses_to_bill" class="col-md-6">
              <?php if(isset($invoice) && $invoice->status != Invoices_model::STATUS_CANCELLED){
                 $this->load->view('admin/invoices/bill_expenses',array('expenses_to_bill'=>$expenses_to_bill));
              } ?>
           </div>
         <?php } ?>
      </div>
   </div>

</div>
<div class="panel_s invoice accounting-template">
   <div class="additional"></div>
   <div class="panel-body">
      <?php if(isset($invoice)){ ?>
      <?php  echo format_invoice_status($invoice->status); ?>
      <hr class="hr-panel-heading" />
      <?php } ?>
      <?php hooks()->do_action('before_render_invoice_template'); ?>
      <?php if(isset($invoice)){
        echo form_hidden('merge_current_invoice',$invoice->id);
      } ?>
      <div class="row">
         <div class="col-md-6">
            <div class="f_client_id">
              <div class="form-group select-placeholder">
                <label for="clientid" class="control-label"><?php echo _l('invoice_select_customer'); ?></label>
                <select id="clientid" name="clientid" data-live-search="true" data-width="100%" class="ajax-search<?php if(isset($invoice) && empty($invoice->clientid)){echo ' customer-removed';} ?>" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
               <?php $selected = (isset($invoice) ? $invoice->clientid : '');
                 if($selected == ''){
                   $selected = (isset($customer_id) ? $customer_id: '');
                 }
                 if($selected != ''){
                    $rel_data = get_relation_data('customer',$selected);
                    $rel_val = get_relation_values($rel_data,'customer');
                    echo '<option value="'.$rel_val['id'].'" selected>'.$rel_val['name'].'</option>';
                 } ?>
                </select>
              </div>
            </div>
            <?php
            if(!isset($invoice_from_project)){ ?>
            <div class="form-group select-placeholder projects-wrapper<?php if((!isset($invoice)) || (isset($invoice) && !customer_has_projects($invoice->clientid))){ echo ' hide';} ?>">
               <label for="project_id"><?php echo _l('project'); ?></label>
              <div id="project_ajax_search_wrapper">
                   <select name="project_id" id="project_id" class="projects ajax-search" data-live-search="true" data-width="100%" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                   <?php
                     if(isset($invoice) && $invoice->project_id != 0){
                        echo '<option value="'.$invoice->project_id.'" selected>'.get_project_name_by_id($invoice->project_id).'</option>';
                     }
                   ?>
               </select>
               </div>
            </div>
            <?php } ?>





          <?php 
          $options = array('due_upon_receipt_of_invoice','net_15_days','net_30_days','installment','pre_paid','due_prior_to_releasing_the_shipment_and_or_services');

          $selected_payment_terms = (isset($invoice) ? unserialize($invoice->payment_term_select) : array());
          ?>
          <div class="form-group mbot15 select-placeholder">
            <label for="contacts" class="control-label"><?php echo _l('payment_terms'); ?></label>
            <br />
            <select class="selectpicker ajax-search" data-live-search="true" data-width="100%" id= "payment_terms" data-toggle="" name="payment_term_select[]"  data-width="100%"  data-title="<?php echo _l('payment_terms'); ?>">
              <?php 

                foreach ($options as $k => $v) { ?>
                  <option value = '<?=$k?>' <?php echo (in_array($k,$selected_payment_terms)) ? "selected" : "" ;?> ><?php echo _l($v); ?></option> <?php
                }

              ?>

            </select>
          </div>













            <div class="row">
               <div class="col-md-12">
               <hr class="hr-10" />
                  <a href="#" class="edit_shipping_billing_info" data-toggle="modal" data-target="#billing_and_shipping_details"><i class="fa fa-pencil-square-o"></i></a>
                  <?php include_once(APPPATH .'views/admin/invoices/billing_and_shipping_template.php'); ?>
               </div>
               <div class="col-md-6">
                  <p class="bold"><?php echo _l('invoice_bill_to'); ?></p>
                  <address>
                     <span class="billing_street">
                     <?php $billing_street = (isset($invoice) ? $invoice->billing_street : '--'); ?>
                     <?php $billing_street = ($billing_street == '' ? '--' :$billing_street); ?>
                     <?php echo $billing_street; ?></span><br>
                     <span class="billing_city">
                     <?php $billing_city = (isset($invoice) ? $invoice->billing_city : '--'); ?>
                     <?php $billing_city = ($billing_city == '' ? '--' :$billing_city); ?>
                     <?php echo $billing_city; ?></span>,
                     <span class="billing_state">
                     <?php $billing_state = (isset($invoice) ? $invoice->billing_state : '--'); ?>
                     <?php $billing_state = ($billing_state == '' ? '--' :$billing_state); ?>
                     <?php echo $billing_state; ?></span>
                     <br/>
                     <span class="billing_country">
                     <?php $billing_country = (isset($invoice) ? get_country_short_name($invoice->billing_country) : '--'); ?>
                     <?php $billing_country = ($billing_country == '' ? '--' :$billing_country); ?>
                     <?php echo $billing_country; ?></span>,
                     <span class="billing_zip">
                     <?php $billing_zip = (isset($invoice) ? $invoice->billing_zip : '--'); ?>
                     <?php $billing_zip = ($billing_zip == '' ? '--' :$billing_zip); ?>
                     <?php echo $billing_zip; ?></span>
                  </address>
               </div>
               <div class="col-md-6">
                  <p class="bold"><?php echo _l('ship_to'); ?></p>
                  <address>

                    <span class="contact_name">
                     <?php $contact_name = (isset($invoice) ? $invoice->contact_name : '--'); ?>
                     <?php $contact_name = ($contact_name == '' ? '--' :$contact_name); ?>
                     <?php echo $contact_name; ?></span><br>

                     <span class="shipping_street">
                     <?php $shipping_street = (isset($invoice) ? $invoice->shipping_street : '--'); ?>
                     <?php $shipping_street = ($shipping_street == '' ? '--' :$shipping_street); ?>
                     <?php echo $shipping_street; ?></span><br>
                     <span class="shipping_city">
                     <?php $shipping_city = (isset($invoice) ? $invoice->shipping_city : '--'); ?>
                     <?php $shipping_city = ($shipping_city == '' ? '--' :$shipping_city); ?>
                     <?php echo $shipping_city; ?></span>,
                     <span class="shipping_state">
                     <?php $shipping_state = (isset($invoice) ? $invoice->shipping_state : '--'); ?>
                     <?php $shipping_state = ($shipping_state == '' ? '--' :$shipping_state); ?>
                     <?php echo $shipping_state; ?></span>
                     <br/>
                     <span class="shipping_country">
                     <?php $shipping_country = (isset($invoice) ? get_country_short_name($invoice->shipping_country) : '--'); ?>
                     <?php $shipping_country = ($shipping_country == '' ? '--' :$shipping_country); ?>
                     <?php echo $shipping_country; ?></span>,
                     <span class="shipping_zip">
                     <?php $shipping_zip = (isset($invoice) ? $invoice->shipping_zip : '--'); ?>
                     <?php $shipping_zip = ($shipping_zip == '' ? '--' :$shipping_zip); ?>
                     <?php echo $shipping_zip; ?></span>
                  </address>
               </div>
            </div>
            <?php
               $next_invoice_number = get_option('next_invoice_number');
               $format = get_option('invoice_number_format');

               if(isset($invoice)){
                  $format = $invoice->number_format;
               }

               $prefix = get_option('invoice_prefix');

               if ($format == 1) {
                 $__number = $next_invoice_number;
                 if(isset($invoice)){
                   $__number = $invoice->number;
                   $prefix = '<span id="prefix">' . $invoice->prefix . '</span>';
                 }
               } else if($format == 2) {
                 if(isset($invoice)){
                   $__number = $invoice->number;
                   $prefix = $invoice->prefix;
                   $prefix = '<span id="prefix">'. $prefix . '</span><span id="prefix_year">' .date('Y',strtotime($invoice->date)).'</span>/';
                 } else {
                  $__number = $next_invoice_number;
                  $prefix = $prefix.'<span id="prefix_year">'.date('Y').'</span>/';
                }
               } else if($format == 3) {
                  if(isset($invoice)){
                   $yy = date('y',strtotime($invoice->date));
                   $__number = $invoice->number;
                   $prefix = '<span id="prefix">'. $invoice->prefix . '</span>';
                 } else {
                  $yy = date('y');
                  $__number = $next_invoice_number;
                }
               } else if($format == 4) {
                  if(isset($invoice)){
                   $yyyy = date('Y',strtotime($invoice->date));
                   $mm = date('m',strtotime($invoice->date));
                   $__number = $invoice->number;
                   $prefix = '<span id="prefix">'. $invoice->prefix . '</span>';
                 } else {
                  $yyyy = date('Y');
                  $mm = date('m');
                  $__number = $next_invoice_number;
                }
               }

               $_invoice_number = str_pad($__number, get_option('number_padding_prefixes'), '0', STR_PAD_LEFT);
               $isedit = isset($invoice) ? 'true' : 'false';
               $data_original_number = isset($invoice) ? $invoice->number : 'false';

               ?>
            <div class="form-group">
               <label for="number"><?php echo _l('invoice_add_edit_number'); ?></label>
               <div class="input-group">
                  <span class="input-group-addon">
                  <?php if(isset($invoice)){ ?>
                    <a href="#" onclick="return false;" data-toggle="popover" data-container='._transaction_form' data-html="true" data-content="<label class='control-label'><?php echo _l('settings_sales_invoice_prefix'); ?></label><div class='input-group'><input name='s_prefix' type='text' class='form-control' value='<?php echo $invoice->prefix; ?>'></div><button type='button' onclick='save_sales_number_settings(this); return false;' data-url='<?php echo admin_url('invoices/update_number_settings/'.$invoice->id); ?>' class='btn btn-info btn-block mtop15'><?php echo _l('submit'); ?></button>">
                    <i class="fa fa-cog"></i>
                    </a>
                  <?php }
                    echo $prefix;
                  ?>
                  </span>
                  <input type="text" name="number" class="form-control" value="<?php echo $_invoice_number; ?>" data-isedit="<?php echo $isedit; ?>" data-original-number="<?php echo $data_original_number; ?>">
                  <?php if($format == 3) { ?>
                  <span class="input-group-addon">
                     <span id="prefix_year" class="format-n-yy"><?php echo $yy; ?></span>
                  </span>
                  <?php } else if($format == 4) { ?>
                   <span class="input-group-addon">
                     <span id="prefix_month" class="format-mm-yyyy"><?php echo $mm; ?></span>
                     /
                     <span id="prefix_year" class="format-mm-yyyy"><?php echo $yyyy; ?></span>
                  </span>
                  <?php } ?>
               </div>
            </div>
            <div class="row">
               <div class="col-md-6">
                  <?php $value = (isset($invoice) ? _d($invoice->date) : _d(date('Y-m-d')));
                  $date_attrs = array();
                  if(isset($invoice) && $invoice->recurring > 0 && $invoice->last_recurring_date != null) {
                    $date_attrs['disabled'] = true;
                  }
                  ?>
                  <?php echo render_date_input('date','invoice_add_edit_date',$value,$date_attrs); ?>
               </div>
               <div class="col-md-6">
                  <?php
                  $value = '';
                  if(isset($invoice)){
                    $value = _d($invoice->duedate);
                  } else {
                    if(get_option('invoice_due_after') != 0){
                        $value = _d(date('Y-m-d', strtotime('+' . get_option('invoice_due_after') . ' DAY', strtotime(date('Y-m-d')))));
                    }
                  }
                   ?>
                  <?php echo render_date_input('duedate','invoice_add_edit_duedate',$value); ?>

               </div>
              <!--  <div class="col-md-6 projectname">
                 <?php echo  render_input('projectname','invoice_add_project_name'); ?>
               </div> -->
            </div>
                <?php if(is_invoices_overdue_reminders_enabled()){ ?>
               <div class="form-group">
                  <div class="checkbox checkbox-danger">
                     <input type="checkbox" <?php if(isset($invoice) && $invoice->cancel_overdue_reminders == 1){echo 'checked';} ?> id="cancel_overdue_reminders" name="cancel_overdue_reminders">
                     <label for="cancel_overdue_reminders"><?php echo _l('cancel_overdue_reminders_invoice') ?></label>
                  </div>
               </div>
               <?php } ?>
               <?php $rel_id = (isset($invoice) ? $invoice->id : false); ?>
               <?php
                  if(isset($custom_fields_rel_transfer)) {
                      $rel_id = $custom_fields_rel_transfer;
                  }
               ?>
               <?php echo render_custom_fields('invoice',$rel_id); ?>
         </div>
         <div class="col-md-6">
            <div class="panel_s no-shadow">

                   <div class="form-group">
                  <label for="tags" class="control-label"><i class="fa fa-tag" aria-hidden="true"></i> <?php echo _l('tags'); ?></label>
                  <input type="text" class="tagsinput" id="tags" name="tags" value="<?php echo (isset($invoice) ? prep_tags_input(get_tags_in($invoice->id,'invoice')) : ''); ?>" data-role="tagsinput">
               </div>
               <div class="form-group ponumber">
                   <?php $value = (isset($invoice) ? $invoice->ponumber : ''); ?>
                 <?php echo  render_input('ponumber','invoice_add_po_number',$value); ?>
               </div>
                 <div class="form-group projectname">
                   <?php $value = (isset($invoice) ? $invoice->projectname : ''); ?>
                 <?php echo  render_input('projectname','invoice_add_project_name',$value); ?>
               </div>
               <div class="form-group mbot15 select-placeholder">
                  <label for="allowed_payment_modes" class="control-label"><?php echo _l('invoice_add_edit_allowed_payment_modes'); ?></label>
                  <br />
                  <?php if(count($payment_modes) > 0){ ?>
                  <select class="selectpicker"
                  data-toggle="<?php echo $this->input->get('allowed_payment_modes'); ?>"
                  name="allowed_payment_modes[]"
                  data-actions-box="true"
                  multiple="true"
                  data-width="100%"
                  data-title="<?php echo _l('dropdown_non_selected_tex'); ?>">
                  <?php foreach($payment_modes as $mode){
                     $selected = '';
                     if(isset($invoice)){
                       if($invoice->allowed_payment_modes){
                        $inv_modes = unserialize($invoice->allowed_payment_modes);
                        if(is_array($inv_modes)) {
                         foreach($inv_modes as $_allowed_payment_mode){
                           if($_allowed_payment_mode == $mode['id']){
                             $selected = ' selected';
                           }
                         }
                       }
                     }
                     } else {
                     if($mode['selected_by_default'] == 1){
                        $selected = ' selected';
                     }
                     }
                     ?>
                     <option value="<?php echo $mode['id']; ?>"<?php echo $selected; ?>><?php echo $mode['name']; ?></option>
                  <?php } ?>
                  </select>
                  <?php } else { ?>
                  <p><?php echo _l('invoice_add_edit_no_payment_modes_found'); ?></p>
                  <a class="btn btn-info" href="<?php echo admin_url('paymentmodes'); ?>">
                  <?php echo _l('new_payment_mode'); ?>
                  </a>
                  <?php } ?>
               </div>

               <div class="row">
                  <div class="col-md-6">
                     <?php
                        $currency_attr = array('disabled'=>true,'data-show-subtext'=>true);
                        $currency_attr = apply_filters_deprecated('invoice_currency_disabled', [$currency_attr], '2.3.0', 'invoice_currency_attributes');

                        foreach($currencies as $currency){
                         if($currency['isdefault'] == 1){
                           $currency_attr['data-base'] = $currency['id'];
                         }
                         if(isset($invoice)){
                          if($currency['id'] == $invoice->currency){
                           $selected = $currency['id'];
                         }
                        } else {
                         if($currency['isdefault'] == 1){
                           $selected = $currency['id'];
                         }
                        }
                        }
                        $currency_attr = hooks()->apply_filters('invoice_currency_attributes',$currency_attr);
                        ?>
                     <?php echo render_select('currency', $currencies, array('id','name','symbol'), 'invoice_add_edit_currency', $selected, $currency_attr); ?>
                  </div>
                  <div class="col-md-6">       <!-- Arslan Code here -->
                     <?php

                
                        // $i = 0;
                        // $selected = '';
                        // foreach($staff as $member){
                        //  if(isset($invoice)){
                        //    if($invoice->sale_agent == $member['staffid']) {
                        //      $selected = $member['staffid'];
                        //    }
                        //  }
                        //  $i++;
                        // }
                        // // Arslan code here
                        // echo render_select('sale_agent',$staff,array('staffid',array('firstname','lastname')),'sale_agent_string',$selected,array('multiple'=>"true"));
                        ?>

                         <div class="form-group mbot15 select-placeholder">
                         <label for="sale_agent" class="control-label"><?php echo _l('sale_agent_string'); ?></label>

                    <select class="selectpicker" id= "sale_agent" data-toggle="" data-none-selected-text="Nothing selected" data-live-search="true" name="sale_agent[]" multiple="true" data-width="100%"  data-title="Nothing selected">
                  <?php
                      
                      $selected_contacts = array();
                      if(isset($invoice)){
                         $selected_sale_agents = $invoice->sale_agent;
                     $selected_contacts =  unserialize($selected_sale_agents);
                      }
                      
                     foreach ($staff as $k => $v) { ?>
                        <option value = '<?=$v['staffid']?>' <?php echo (in_array($v['staffid'],$selected_contacts)) ? "selected" : "" ;?>> <?=$v['firstname']." ".$v['lastname']?></option> <?php
                     }
                
                  ?>
                  </select>
                </div>





                  </div>
                  <div class="col-md-6">
                     <div class="form-group select-placeholder"<?php if(isset($invoice) && !empty($invoice->is_recurring_from)){ ?> data-toggle="tooltip" data-title="<?php echo _l('create_recurring_from_child_error_message', [_l('invoice_lowercase'),_l('invoice_lowercase'), _l('invoice_lowercase')]); ?>"<?php } ?>>
                        <label for="recurring" class="control-label">
                        <?php echo _l('invoice_add_edit_recurring'); ?>
                        </label>
                        <select class="selectpicker"
                        data-width="100%"
                        name="recurring"
                        data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>"
                        <?php
                        // The problem is that this invoice was generated from previous recurring invoice
                        // Then this new invoice you set it as recurring but the next invoice date was still taken from the previous invoice.
                        if(isset($invoice) && !empty($invoice->is_recurring_from)){echo 'disabled';} ?>
                        >
                           <?php for($i = 0; $i <=12; $i++){ ?>
                           <?php
                              $selected = '';
                              if(isset($invoice)){
                                if($invoice->custom_recurring == 0){
                                 if($invoice->recurring == $i){
                                   $selected = 'selected';
                                 }
                               }
                              }
                              if($i == 0){
                               $reccuring_string =  _l('invoice_add_edit_recurring_no');
                              } else if($i == 1){
                               $reccuring_string = _l('invoice_add_edit_recurring_month',$i);
                              } else {
                               $reccuring_string = _l('invoice_add_edit_recurring_months',$i);
                              }
                              ?>
                           <option value="<?php echo $i; ?>" <?php echo $selected; ?>><?php echo $reccuring_string; ?></option>
                           <?php } ?>
                           <option value="custom" <?php if(isset($invoice) && $invoice->recurring != 0 && $invoice->custom_recurring == 1){echo 'selected';} ?>><?php echo _l('recurring_custom'); ?></option>
                        </select>
                     </div>
                  </div>
                  <div class="col-md-6">
                     <div class="form-group select-placeholder">
                        <label for="discount_type" class="control-label"><?php echo _l('discount_type'); ?></label>
                        <select name="discount_type" class="selectpicker" data-width="100%" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                           <option value="" selected><?php echo _l('no_discount'); ?></option>
                           <option value="before_tax" <?php
                              if(isset($invoice)){ if($invoice->discount_type == 'before_tax'){ echo 'selected'; }} ?>><?php echo _l('discount_type_before_tax'); ?></option>
                           <option value="after_tax" <?php if(isset($invoice)){if($invoice->discount_type == 'after_tax'){echo 'selected';}} ?>><?php echo _l('discount_type_after_tax'); ?></option>
                        </select>
                     </div>
                  </div>
                  <div class="recurring_custom <?php if((isset($invoice) && $invoice->custom_recurring != 1) || (!isset($invoice))){echo 'hide';} ?>">
                     <div class="col-md-6">
                        <?php $value = (isset($invoice) && $invoice->custom_recurring == 1 ? $invoice->recurring : 1); ?>
                        <?php echo render_input('repeat_every_custom','',$value,'number',array('min'=>1)); ?>
                     </div>
                     <div class="col-md-6">
                        <select name="repeat_type_custom" id="repeat_type_custom" class="selectpicker" data-width="100%" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                           <option value="day" <?php if(isset($invoice) && $invoice->custom_recurring == 1 && $invoice->recurring_type == 'day'){echo 'selected';} ?>><?php echo _l('invoice_recurring_days'); ?></option>
                           <option value="week" <?php if(isset($invoice) && $invoice->custom_recurring == 1 && $invoice->recurring_type == 'week'){echo 'selected';} ?>><?php echo _l('invoice_recurring_weeks'); ?></option>
                           <option value="month" <?php if(isset($invoice) && $invoice->custom_recurring == 1 && $invoice->recurring_type == 'month'){echo 'selected';} ?>><?php echo _l('invoice_recurring_months'); ?></option>
                           <option value="year" <?php if(isset($invoice) && $invoice->custom_recurring == 1 && $invoice->recurring_type == 'year'){echo 'selected';} ?>><?php echo _l('invoice_recurring_years'); ?></option>
                        </select>
                     </div>
                  </div>
                  <div id="cycles_wrapper" class="<?php if(!isset($invoice) || (isset($invoice) && $invoice->recurring == 0)){echo ' hide';}?>">
                     <div class="col-md-12">
                        <?php $value = (isset($invoice) ? $invoice->cycles : 0); ?>
                        <div class="form-group recurring-cycles">
                          <label for="cycles"><?php echo _l('recurring_total_cycles'); ?>
                            <?php if(isset($invoice) && $invoice->total_cycles > 0){
                              echo '<small>' . _l('cycles_passed', $invoice->total_cycles) . '</small>';
                            }
                            ?>
                          </label>
                          <div class="input-group">
                            <input type="number" class="form-control"<?php if($value == 0){echo ' disabled'; } ?> name="cycles" id="cycles" value="<?php echo $value; ?>" <?php if(isset($invoice) && $invoice->total_cycles > 0){echo 'min="'.($invoice->total_cycles).'"';} ?>>
                            <div class="input-group-addon">
                              <div class="checkbox">
                                <input type="checkbox"<?php if($value == 0){echo ' checked';} ?> id="unlimited_cycles">
                                <label for="unlimited_cycles"><?php echo _l('cycles_infinity'); ?></label>
                              </div>
                            </div>
                          </div>
                        </div>
                     </div>
                  </div>
               </div>
               <?php $value = (isset($invoice) ? $invoice->adminnote : ''); ?>
               <?php echo render_textarea('adminnote','invoice_add_edit_admin_note',$value); ?>

            </div>
         </div>
      </div>
   </div>

      <div class="panel-body mtop10">
        <div class="row">
          <div class="col-md-12">
          <p class="bold"><?php echo  _l('quote_configuration'); ?></p>
            <div class="col-md-4">

              <div class="checkbox">
                <?php 
                  $checked = "";
                  if(isset($invoice)){
                    $checked = ($invoice->shipping_active == 1 ? 'checked' : '');
                  }
                   ?>
                <input type="checkbox"  class="shipping" name="shipping_active" value="1" <?php echo $checked; ?>>
                <label><?php echo  _l('shipping'); ?></label>
              </div>

              <div class="checkbox">
               <?php 
                  $checked = "";
                  if(isset($invoice)){
                    $checked = ($invoice->payment_terms_active == 1 ? 'checked' : '');
                  }
                   ?>
                <input type="checkbox"  class="payment_terms" name="payment_terms_active" value="1" <?php echo $checked; ?>>
                <label><?php echo  _l('payment_terms'); ?></label>
              </div>

            </div>
            <div class="col-md-4">

              <div class="checkbox">
                <?php 
                  $checked = "";
                  if(isset($invoice)){
                    $checked = ($invoice->term_and_conditions_active == 1 ? 'checked' : '');
                  }
                   ?>
                <input type="checkbox"  class="term_and_conditions" name="term_and_conditions_active" value="1" <?php echo $checked; ?>>
                <label><?php echo  _l('term_and_conditions'); ?></label>
              </div>

              <div class="checkbox">
                <?php 
                  $checked = "";
                  if(isset($invoice)){
                    $checked = ($invoice->labour_terms_active == 1 ? 'checked' : '');
                  }
                   ?>
                <input type="checkbox"  class="labour_terms" name="labour_terms_active" value="1" <?php echo $checked; ?>>
                <label><?php echo  _l('labour_terms'); ?></label>
              </div>

            </div>
            <div class="col-md-4"></div>
          </div>
        
      </div>
    </div>
    <?php  
      $sub_total = 0;
      $total_amount = 0; 
    ?>
   <div class="panel-body mtop10">
      <div class="row">
         <div class="col-md-4">
            <?php $this->load->view('admin/invoices/item_group_select'); ?>
         </div>
         <div class="col-md-8"></div>
      </div>
      <?php if(isset($invoice_from_project)){ echo '<hr class="no-mtop" />'; } ?>

 

      <!-- Bitsclan Solutions Start Code Invoice module    -->
      <?php $this->load->view('admin/invoices/invoice_group_template'); ?>
      <!-- Bitsclan Solutions End Code Invoice module -->



      <div class="col-md-8 col-md-offset-4">
         <table class="table text-right">
            <tbody>
              
               <tr id="subtotal">
                  <td><span class="bold"><?php echo _l('invoice_subtotal'); ?> :</span>
                  </td>
                  <!-- junaid code here -->
                  <td class="subtotal-group-invoice">
                    <?php echo "$".app_format_number($sub_total); ?>
                  </td>
               </tr>

               <!-- new code here -->
               <tr>
                <td>
                  <div class="row">
                    <div class="col-md-7"><span class="bold"><?php echo _l('discount_added'); ?></span></div>
                    <div class="col-md-5">
                      <?php
                      $selected = '';
                      if (isset($invoice)) {
                        $selected       = $invoice->discount_added;
                      }

                      $discount_options = array();
                      $discount_options[] = array('id' => 1, 'name' => 'Tech Partner/Studio 5%');
                      $discount_options[] = array('id' => 2, 'name' => 'Rental Partner 10%');
                      $discount_options[] = array('id' => 3, 'name' => 'Dealer 25%');
                      $discount_options[] = array('id' => 4, 'name' => 'Education 25%');
                      $discount_options[] = array('id' => 5, 'name' => 'Distributer 30%');
                      $discount_options[] = array('id' => 6, 'name' => 'Demo 40%');
                      ?>
                      <select class="selectpicker" data-live-search="true" id= "discount_added"  data-toggle="" name="discount_added" data-width="100%"  data-title="<?php echo _l('discount_added'); ?>">
                        <?php 

                        foreach ($discount_options as $key => $value) { ?>
                         <option value= '<?=$value["id"]?>' <?php if($selected == $value["id"]){ echo "selected"; } ?>> <?=$value["name"]?> </option>  
                       <?php }
                       ?>
                       
                     </select>
                   </div>
                 </div>
               </td>
               <td class="new-discount-total"> -<?php echo "$".app_format_number(0); ?></td>
             </tr>

             <!--  new code end here -->

               <tr id="discount_area">
                  <td>
                     <div class="row">
                        <div class="col-md-7">
                           <span class="bold">
                            <?php echo _l('invoice_discount'); ?>
                         </span>
                        </div>
                        <div class="col-md-5">
                            <div class="input-group" id="discount-total">

                                <input type="number" value="<?php echo (isset($invoice) ? $invoice->discount_percent : 0); ?>" class="form-control pull-left input-discount-percent<?php if(isset($invoice) && !is_sale_discount($invoice,'percent') && is_sale_discount_applied($invoice)){echo ' hide';} ?>" min="0" max="100" name="discount_percent">

                                <input type="number" data-toggle="tooltip" data-title="<?php echo _l('numbers_not_formatted_while_editing'); ?>" value="<?php echo (isset($invoice) ? $invoice->discount_total : 0); ?>" class="form-control pull-left input-discount-fixed<?php if(!isset($invoice) || (isset($invoice) && !is_sale_discount($invoice,'fixed'))){echo ' hide';} ?>" min="0" name="discount_total">

                                <div class="input-group-addon">
                                  <div class="dropdown">
                                    <a class="dropdown-toggle" href="#" id="dropdown_menu_tax_total_type" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                      <span class="discount-total-type-selected">
                                        <?php if(!isset($invoice) || isset($invoice) && (is_sale_discount($invoice,'percent') || !is_sale_discount_applied($invoice))) {
                                          echo '%';
                                        } else {
                                          echo _l('discount_fixed_amount');
                                        }
                                        ?>
                                      </span>
                                      <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu" id="discount-total-type-dropdown" aria-labelledby="dropdown_menu_tax_total_type">
                                      <li>
                                        <a href="#" class="discount-total-type discount-type-percent<?php if(!isset($invoice) || (isset($invoice) && is_sale_discount($invoice,'percent')) || (isset($invoice) && !is_sale_discount_applied($invoice))){echo ' selected';} ?>">%</a>
                                      </li>
                                      <li><a href="#" class="discount-total-type discount-type-fixed<?php if(isset($invoice) && is_sale_discount($invoice,'fixed')){echo ' selected';} ?>">
                                          <?php echo _l('discount_fixed_amount'); ?>
                                        </a>
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                            </div>
                        </div>
                     </div>
                  </td>
                  <td class="discount-total">
                    <?php echo "$".app_format_number(0); ?>
                  </td>
               </tr>
               <tr>
                  <td>
                     <div class="row">
                        <div class="col-md-7">
                           <span class="bold"><?php echo _l('invoice_adjustment'); ?></span>
                        </div>
                        <div class="col-md-5">
                           <input type="number" data-toggle="tooltip" data-title="<?php echo _l('numbers_not_formatted_while_editing'); ?>" value="<?php if(isset($invoice)){echo $invoice->adjustment; } else { echo 0; } ?>" class="form-control pull-left" name="adjustment">
                        </div>
                     </div>
                  </td>
                  <td class="adjustment"><?php if(isset($invoice)){ echo "$".app_format_number($invoice->adjustment); } else { echo "$".app_format_number(0); } ?></td>
               </tr>
               <tr>
                  <td>
                     <div class="row">
                        <div class="col-md-7">
                           <span class="bold"><?php echo _l('shipping'); ?></span>
                        </div>
                        <div class="col-md-5">
                           <input type="number" data-toggle="tooltip" data-title="<?php echo _l('numbers_not_formatted_while_editing'); ?>" value="<?php if(isset($invoice)){echo $invoice->shipping; } else { echo 1000; } ?>" class="form-control pull-left" name="shipping">
                        </div>
                     </div>
                  </td>
                  <td class="shipping"><?php if(isset($invoice)){ echo "$".app_format_number($invoice->shipping); } else { echo "$".app_format_number(1000); } ?></td>
               </tr>
               <tr>
                  <td><span class="bold"><?php echo _l('invoice_grand_total'); ?> :</span>
                  </td>
                  <!-- junaid code here -->
                  <td class="total-group-invoice">
                   
                    <?php 
                    $shipping_price = 0;
                    if(isset($invoice)){
                      $shipping_price = $invoice->shipping;
                    }
                    echo "$".app_format_number($total_amount+$shipping_price); 
                    ?>
                  </td>
               </tr>
            </tbody>
         </table>
      </div>
      <div id="removed-items"></div>
      <div id="billed-tasks"></div>
      <div id="billed-expenses"></div>
      <?php echo form_hidden('task_id'); ?>
      <?php echo form_hidden('expense_id'); ?>
   </div>
   <div class="row">
      <div class="col-md-12 mtop15">
         <div class="panel-body bottom-transaction">

            <?php $value = (isset($invoice) ? $invoice->clientnote : get_option('predefined_clientnote_invoice')); ?>
            <?php echo render_textarea('clientnote','invoice_add_edit_client_note',$value,array(),array(),'mtop15'); ?>
            
            <?php /*
              bitsclan comment here 
            <?php 
            $class_terms = "hide";
            if(isset($invoice)){
              $class_terms  = ($invoice->term_and_conditions_active == 1 ? '' : 'hide');
            }
            ?>
            
            <div class="term_and_conditions_box <?=$class_terms?>">
              <?php $value = (isset($invoice) ? $invoice->terms : get_option('predefined_terms_invoice')); ?>
              <?php echo render_textarea('terms','terms_and_conditions',$value,array(),array(),'mtop15'); ?>
            </div>

            <?php 
            $class_shipping = "hide";
            if(isset($invoice)){
              $class_shipping  = ($invoice->shipping_active == 1 ? '' : 'hide');
            }
            ?>

            <div class="shipping_box <?=$class_shipping?>">
              <?php $value = (isset($invoice) ? $invoice->shipping_terms : get_option('predefined_terms_invoice')); ?>
              <?php echo render_textarea('shipping_terms','shipping',$value,array(),array(),'mtop15'); ?>
            </div>

            <?php 
            $class_payment_term = "hide";
            if(isset($invoice)){
              $class_payment_term  = ($invoice->payment_terms_active == 1 ? '' : 'hide');
            }
            ?>

            <div class="payment_terms_box <?= $class_payment_term?>">
            <?php $value = (isset($invoice) ? $invoice->payment_terms : get_option('predefined_terms_invoice')); ?>
            <?php echo render_textarea('payment_terms','payment_terms',$value,array(),array(),'mtop15'); ?>
            </div>


            <?php 
            $class_labour = "hide";
            if(isset($invoice)){
              $class_labour  = ($invoice->labour_terms_active == 1 ? '' : 'hide');
            }
            ?>

            <div class="labour_terms_box <?=$class_labour?>">
            <?php $value = (isset($invoice) ? $invoice->labour_terms : get_option('predefined_terms_invoice')); ?>
            <?php echo render_textarea('labour_terms','labour_terms',$value,array(),array(),'mtop15'); ?>
            </div>
            */ ?>

            <div class="btn-bottom-toolbar text-right">
                <?php if(!isset($invoice)){ ?>
                <button class="btn-tr btn btn-default mleft10 text-right invoice-form-submit save-as-draft transaction-submit">
                <?php echo _l('save_as_draft'); ?>
                </button>
                <?php } ?>
              <div class="btn-group dropup">
                <button type="button" class="btn-tr btn btn-info invoice-form-submit transaction-submit"><?php echo _l('submit'); ?></button>
                <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <span class="caret"></span>
                </button>
                <ul class="dropdown-menu dropdown-menu-right width200">
                  <li>
                    <a href="#" class="invoice-form-submit save-and-send transaction-submit">
                      <?php echo _l('save_and_send'); ?>
                    </a>
                  </li>
                  <?php if(!isset($invoice)) { ?>
                  <li>
                    <a href="#" class="invoice-form-submit save-and-send-later transaction-submit">
                      <?php echo _l('save_and_send_later'); ?>
                    </a>
                  </li>
                  <li>
                      <a href="#" class="invoice-form-submit save-and-record-payment transaction-submit">
                        <?php echo _l('save_and_record_payment'); ?>
                      </a>
                  </li>
                <?php } ?>
                </ul>
              </div>
             </div>
         </div>
        <div class="btn-bottom-pusher"></div>
      </div>
   </div>
</div>


