<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper" class="opportunity_profile">
   <div class="content">
      <div class="row">
         <?php if($group == 'opportunity_profile' || $group == 'profile' ){ ?>
         <div class="btn-bottom-toolbar btn-toolbar-container-out text-right">
            <button class="btn btn-info only-save opportunity-form-submiter">
            <?php echo _l( 'submit'); ?>
            </button>
         </div>
         <?php } ?>
         <?php if(isset($opportunity)){ ?>
         <div class="col-md-3">
            <div class="panel_s mbot5">
               <div class="panel-body padding-10">
                  <h4 class="bold">
                     Opportunity
                  </h4>
               </div>
            </div>
            <?php $this->load->view('opportunities/tabs'); ?>
         </div>
         <?php } ?>
         <div class="col-md-<?php if(isset($opportunity)){echo 9;} else {echo 12;} ?>">
            <div class="panel_s">
               <div class="panel-body">
                  <?php if(isset($opportunity)){ ?>
                  <?php echo form_hidden('isedit'); ?>
                  <?php echo form_hidden('opportunity_id', $opportunity->id); ?>
                  <div class="clearfix"></div>
                  <?php } ?>
                  <div>
                     <div class="tab-content">
                        <?php
                        if(isset($add_new)){
                           $this->load->view((isset($tab) ? $tab['view'] : 'opportunities/groups/opportunity_profile'));
                        }else{
                           $this->load->view((isset($tab) ? $tab['view'] : 'opportunities/groups/profile'));
                        } 
                        ?>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <?php if($group == 'opportunity_profile'){ ?>
         <div class="btn-bottom-pusher"></div>
      <?php } ?>
   </div>
</div>
<?php init_tail(); ?>
<?php if(isset($client)){ ?>
<script>
   $(function(){
      init_rel_tasks_table(<?php echo $client->userid; ?>,'customer');
   });
</script>
<?php } ?>
<?php $this->load->view('opportunities/opportunity_js'); ?>
</body>
</html>
