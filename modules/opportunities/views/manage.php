<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
   <div class="content">
      <div class="row">
         <div class="col-md-12">
            <div class="_filters _hidden_inputs hidden">
               <?php
                  echo form_hidden('my_customers');
                  echo form_hidden('requires_registration_confirmation');
                  foreach($groups as $group){
                     echo form_hidden('customer_group_'.$group['id']);
                  }
                  foreach($contract_types as $type){
                     echo form_hidden('contract_type_'.$type['id']);
                  }
                  foreach($invoice_statuses as $status){
                     echo form_hidden('invoices_'.$status);
                  }
                  foreach($estimate_statuses as $status){
                     echo form_hidden('estimates_'.$status);
                  }
                  foreach($project_statuses as $status){
                  echo form_hidden('projects_'.$status['id']);
                  }
                  foreach($proposal_statuses as $status){
                  echo form_hidden('proposals_'.$status);
                  }
                  foreach($customer_admins as $cadmin){
                  echo form_hidden('responsible_admin_'.$cadmin['staff_id']);
                  }
                  foreach($countries as $country){
                  echo form_hidden('country_'.$country['country_id']);
                  }
                  ?>
            </div>
            <div class="panel_s">
               <div class="panel-body">
                  <div class="_buttons">
                     <?php if (has_permission('opportunities','','create')) { ?>
                     <a href="<?php echo admin_url('opportunities/opportunity'); ?>" class="btn btn-info mright5 test pull-left display-block">
                     <?php echo _l('new_opportunity'); ?></a>
                     <?php } ?>
                    
                     <div class="visible-xs">
                        <div class="clearfix"></div>
                     </div>

                  </div>
                  <div class="clearfix"></div>

                  <hr class="hr-panel-heading" />
                  <a href="#" data-toggle="modal" data-target="#customers_bulk_action" class="bulk-actions-btn table-btn hide" data-table=".table-clients"><?php echo _l('bulk_actions'); ?></a>
                  <div class="modal fade bulk_actions" id="customers_bulk_action" tabindex="-1" role="dialog">
                     <div class="modal-dialog" role="document">
                        <div class="modal-content">
                           <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                              <h4 class="modal-title"><?php echo _l('bulk_actions'); ?></h4>
                           </div>
                           <div class="modal-body">
                              <?php if(has_permission('opportunities','','delete')){ ?>
                              <div class="checkbox checkbox-danger">
                                 <input type="checkbox" name="mass_delete" id="mass_delete">
                                 <label for="mass_delete"><?php echo _l('mass_delete'); ?></label>
                              </div>
                              <hr class="mass_delete_separator" />
                              <?php } ?>
                              <div id="bulk_change">
                                 <?php echo render_select('move_to_groups_customers_bulk[]',$groups,array('id','name'),'customer_groups','', array('multiple'=>true),array(),'','',false); ?>
                                 <p class="text-danger"><?php echo _l('bulk_action_customers_groups_warning'); ?></p>
                              </div>
                           </div>
                           <div class="modal-footer">
                              <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
                              <a href="#" class="btn btn-info" onclick="customers_bulk_action(this); return false;"><?php echo _l('confirm'); ?></a>
                           </div>
                        </div>
                        <!-- /.modal-content -->
                     </div>
                     <!-- /.modal-dialog -->
                  </div>
                  <!-- /.modal -->
  
                  <div class="clearfix mtop20"></div>
                  <?php
                     $table_data = array();
                     $_table_data = array(
                      '<span class="hide"> - </span><div class="checkbox mass_select_all_wrap"><input type="checkbox" id="mass_select_all" data-to-table="clients"><label></label></div>',
                
                        array(
                         'name'=>_l('profile_project_name'),
                         'th_attrs'=>array('class'=>'toggleable', 'id'=>'th-company')
                        ),
                        array(
                         'name'=>_l('profile_account'),
                         'th_attrs'=>array('class'=>'toggleable', 'id'=>'th-primary-contact')
                        ),
                        array(
                         'name'=>_l('profile_owner'),
                         'th_attrs'=>array('class'=>'toggleable', 'id'=>'th-primary-contact')
                        ),
                         array(
                         'name'=>_l('profile_probability'),
                         'th_attrs'=>array('class'=>'toggleable', 'id'=>'th-primary-contact-email')
                        ),
                        array(
                         'name'=>_l('profile_status'),
                         'th_attrs'=>array('class'=>'toggleable', 'id'=>'th-phone')
                        ),
                         array(
                         'name'=>_l('profile_delivery_date'),
                         'th_attrs'=>array('class'=>'toggleable', 'id'=>'th-active')
                        ),
                          array(
                         'name'=>_l('profile_projected_sale_date'),
                         'th_attrs'=>array('class'=>'toggleable', 'id'=>'th-active')
                        ),
                         array(
                         'name'=>_l('datecreated'),
                         'th_attrs'=>array('class'=>'toggleable', 'id'=>'th-active')
                        ),
                      );
                     foreach($_table_data as $_t){
                      array_push($table_data,$_t);
                     }

                     
                     $table_data = hooks()->apply_filters('opportunities_table_columns', $table_data);

                     render_datatable($table_data,'opportunities',[],[
                           'data-last-order-identifier' => 'opportunities',
                           'data-default-order'         => get_table_last_order('opportunities'),
                     ]);
                     ?>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<?php init_tail(); ?>
<script>
   $(function(){
       var CustomersServerParams = {};
       $.each($('._hidden_inputs._filters input'),function(){
          CustomersServerParams[$(this).attr('name')] = '[name="'+$(this).attr('name')+'"]';
      });
       CustomersServerParams['exclude_inactive'] = '[name="exclude_inactive"]:checked';

       var tAPI = initDataTable('.table-opportunities', admin_url+'opportunities/table', [0], [0], CustomersServerParams,<?php echo hooks()->apply_filters('customers_table_default_order', json_encode(array(2,'asc'))); ?>);
       $('input[name="exclude_inactive"]').on('change',function(){
           tAPI.ajax.reload();
       });
   });
   function customers_bulk_action(event) {
       var r = confirm(app.lang.confirm_action_prompt);
       if (r == false) {
           return false;
       } else {
           var mass_delete = $('#mass_delete').prop('checked');
           var ids = [];
           var data = {};
           if(mass_delete == false || typeof(mass_delete) == 'undefined'){
               data.groups = $('select[name="move_to_groups_customers_bulk[]"]').selectpicker('val');
               if (data.groups.length == 0) {
                   data.groups = 'remove_all';
               }
           } else {
               data.mass_delete = true;
           }
           var rows = $('.table-clients').find('tbody tr');
           $.each(rows, function() {
               var checkbox = $($(this).find('td').eq(0)).find('input');
               if (checkbox.prop('checked') == true) {
                   ids.push(checkbox.val());
               }
           });
           data.ids = ids;
           $(event).addClass('disabled');
           setTimeout(function(){
             $.post(admin_url + 'opportunities/bulk_action', data).done(function() {
              window.location.reload();
          });
         },50);
       }
   }
</script>
</body>
</html>
