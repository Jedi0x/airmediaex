<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<h4 class="customer-profile-group-heading"><?php echo _l('client_add_edit_profile'); ?></h4>
<div class="row">
   <?php echo form_open($this->uri->uri_string(),array('class'=>'opportunity-form','autocomplete'=>'off')); ?>
   <?php  $customer_custom_fields = false; ?>
   <div class="additional"></div>
   <div class="col-md-12">

      <div class="tab-content mtop15">
         

         <div role="tabpanel" class="tab-pane<?php if(!$this->input->get('tab')){echo ' active';}; ?>" id="contact_info">
            <div class="row">
     
               <div class="col-md-6">
                  <?php  $value =( isset($opportunity) ? $opportunity->project_name : ''); ?>
                  <?php $attrs = array('autofocus' => true); ?>
                  <?php echo render_input( 'project_name', 'profile_project_name',$value,'text',$attrs); ?>

                  <div class="form-group mbot15 select-placeholder">
                  <label for="contacts" class="control-label"><?php echo _l('profile_client_contacts'); ?></label>
                  <br />
                  <select class="selectpicker" id= "contacts" data-toggle="" name="contacts[]" multiple="true" data-width="100%"  data-title="<?php echo _l('profile_client_contacts'); ?>">
                  <?php
                  if(isset($opportunity)){
                     $_contacts = $opportunity->contacts;
                     $selected_contacts =  (explode(",",$_contacts));
                     foreach ($profile_client_contact as $k => $v) { ?>
                        <option value = '<?=$v['id']?>' <?php echo (in_array($v['id'],$selected_contacts)) ? "selected" : "" ;?> > <?=$v['firstname']." ".$v['lastname']?></option> <?php
                     }
                  } 
                  ?>
                  </select>
               </div>
    
                  <?php $value = (isset($opportunity) ? _d($opportunity->delivery_date) : _d(date('Y-m-d'))); ?>
                  <?php echo render_date_input('delivery_date','profile_delivery_date',$value,array('data-date-min-date' => _d(date('Y-m-d')))); ?>
                  <?php $attrs = array('autofocus' => true, 'min' => 0, 'max' => 100, 'step' => 10); ?>
                  <?php  $selected=( isset($opportunity) ? $opportunity->probability : ''); ?>

                  <div class="form-group mbot15 select-placeholder">
                  <label for="contacts" class="control-label"><?php echo _l('profile_probability'); ?></label>
                  <br />
                  <select class="selectpicker" id= "contacts" data-toggle="" name="probability" data-width="100%"  data-title="<?php echo _l('profile_probability'); ?>">
                     <option value= '10' <?php if($selected == 10){ echo "selected"; } ?>> 10% </option> 
                     <option value= '25' <?php if($selected == 25){ echo "selected"; } ?>> 25% </option> 
                     <option value= '50' <?php if($selected == 50){ echo "selected"; } ?>> 50% </option> 
                     <option value= '60' <?php if($selected == 60){ echo "selected"; } ?>> 60% </option> 
                     <option value= '75' <?php if($selected == 75){ echo "selected"; } ?>> 75% </option> 
                     <option value= '80' <?php if($selected == 80){ echo "selected"; } ?>> 80% </option> 
                     <option value= '90' <?php if($selected == 90){ echo "selected"; } ?>> 90% </option> 
                     <option value= '100' <?php if($selected == 100){ echo "selected"; } ?>> 100% </option> 
                  </select>
               </div>
                
                    
   
               </div>
               <div class="col-md-6">

                  <?php 
                     $selected =( isset($opportunity) ? $opportunity->account : '');
                     echo render_select( 'account',$companies,array( 'userid',array( 'company')), 'profile_account',$selected,array('data-none-selected-text'=>_l('dropdown_non_selected_tex'))); 
                  ?>

                  <?php 
                     $selected =( isset($opportunity) ? $opportunity->owner : '');
                     echo render_select( 'owner',$staffs,array( 'staffid',array( 'full_name')), 'profile_owner',$selected,array('data-none-selected-text'=>_l('dropdown_non_selected_tex')));
                  ?>


                  <?php $value = (isset($opportunity) ? _d($opportunity->projected_sale_date) : _d(date('Y-m-d'))); ?>
                  <?php echo render_date_input('projected_sale_date','profile_projected_sale_date',$value,array('data-date-min-date' => _d(date('Y-m-d')))); ?>


                  <?php 
                     
                     $status_names = array('Prospecting','Proposal Sent','Negotiating','Investigating','Closed');
                     // 1 for Prospecting || 2 for Proposal Sent || 3 for Negotiating || 4 for Investigating || 5 for Closed  

                     $status =  array();
                     foreach ($status_names as $key => $value) {
                        array_push($status, array('id' => $key+1, 'name' => $value));
                     }
                     $selected =( isset($opportunity) ? $opportunity->status : '');
                     echo render_select( 'status',$status,array( 'id',array( 'name')), 'profile_status',$selected,array('data-none-selected-text'=>_l('dropdown_non_selected_tex')));
                  ?>

                  <?php 
                     
                     $closed_status_name =  array('Lost','Won','Dead');
                     // 1 for Lost || 2 for Won || 3 for Dead
                     
                     $closed_status = array();
                     foreach ($closed_status_name as $k => $v) {
                        array_push($closed_status, array('id' => $k+1, 'name' => $v));
                     }
     
                     $selected =( isset($opportunity) ? $opportunity->closed_status : '');
                     $class =( isset($opportunity) ? 'closed_status hide' : 'closed_status hide');

                     echo render_select('closed_status',$closed_status, array( 'id',array( 'name')), '', $selected , array('data-none-selected-text'=>_l('dropdown_non_selected_tex')), array(),'',$class);
                  ?>

                  
               </div>
            </div>
         </div>


      </div>
   </div>
   <?php echo form_close(); ?>
</div>
<?php if(isset($client)){ ?>
<?php if (has_permission('opportunities', '', 'create') || has_permission('opportunities', '', 'edit')) { ?>
<div class="modal fade" id="customer_admins_assign" tabindex="-1" role="dialog">
   <div class="modal-dialog">
      <?php echo form_open(admin_url('clients/assign_admins/'.$client->userid)); ?>
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title"><?php echo _l('assign_admin'); ?></h4>
         </div>
         <div class="modal-body">
            <?php
               $selected = array();
               foreach($customer_admins as $c_admin){
                  array_push($selected,$c_admin['staff_id']);
               }
               echo render_select('customer_admins[]',$staff,array('staffid',array('firstname','lastname')),'',$selected,array('multiple'=>true),array(),'','',false); ?>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
            <button type="submit" class="btn btn-info"><?php echo _l('submit'); ?></button>
         </div>
      </div>
      <!-- /.modal-content -->
      <?php echo form_close(); ?>
   </div>
   <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<?php } ?>
<?php } ?>
<?php $this->load->view('opportunities/opportunity_group'); ?>


