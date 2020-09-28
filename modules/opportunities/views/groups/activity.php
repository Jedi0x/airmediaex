<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<h4 class="customer-profile-group-heading"><?php echo _l('activity_tab'); ?></h4>
<div class="row">
   <?php  $customer_custom_fields = false; ?>
   <div class="additional"></div>
   <div class="col-md-12">
      <div class="tab-content mtop15">
         <div role="tabpanel" class="tab-pane<?php if(!$this->input->get('tab')){echo ' active';}; ?>" id="contact_info">
            <div class="row">
               <div class="activity-feed">
                  <?php foreach($activities as $log){ ?>
                     <div class="feed-item">
                        <div class="date">
                           <span class="text-has-action" data-toggle="tooltip" data-title="<?php echo _dt($log['date']); ?>">
                              <?php echo time_ago($log['date']); ?>
                           </span>
                        </div>
                        <div class="text">
                           <?php echo $log['staffid']; ?><br />
                           <?php echo $log['description']; ?>
                        </div>
                     </div>
                  <?php } ?>
               </div>
               

            </div>
         </div>
      </div>
   </div>
</div>



