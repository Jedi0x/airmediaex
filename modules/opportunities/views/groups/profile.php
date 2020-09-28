<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<h4 class="customer-profile-group-heading"><?php echo _l('client_add_edit_profile'); ?></h4>
  <div class="row">
    <a href="<?php echo admin_url('opportunities/opportunity/' . $opportunity->id . '?group=opportunity_profile'); ?>" class="btn btn-info test pull-left display-block" style ="margin-left: 22px;">
                     <?php echo _l('edit'); ?></a>
                  
   <div class="additional"></div>
   <div class="col-md-12">
                  
      <div class="tab-content mtop15">


         <div role="tabpanel" class="tab-pane<?php if(!$this->input->get('tab')){echo ' active';}; ?>" id="contact_info">
            <div class="row">
     
               <div class="col-md-6">
                <p><b><?php  echo _l('profile_project_name'); ?></b> : <?php echo $opportunity->project_name; ?></p>
                  
                <p><b><?php echo _l('profile_client_contacts'); ?></b> : <ul style="list-style: disc !important; padding-left: 20px;">
                <?php
                  if(isset($opportunity)){
                     $_contacts = $opportunity->contacts;
                     $selected_contacts =  (explode(",",$_contacts));
                     foreach ($profile_client_contact as $k => $v) { 
                      echo (in_array($v['id'],$selected_contacts)) ? "<li>".$v['firstname']." ".$v['lastname']."</li>" : "";
                     }
                  } 
                  ?>
                  </ul>
                </p>
                
                <p><b><?php  echo _l('profile_delivery_date'); ?></b> : <?php echo _d($opportunity->delivery_date); ?></p>

                <p><b><?php  echo _l('profile_probability'); ?></b> : <?php echo $opportunity->probability." %"; ?></p>
    
               </div>
               <div class="col-md-6">
                <p><b><?php  echo _l('profile_account'); ?></b> : <?php 

                  foreach ($companies as $k => $company) {
                    if($company['userid'] == $opportunity->account){
                      echo $company['company'];
                    }
                  }

                ?></p>


                <p><b><?php  echo _l('profile_owner'); ?></b> : <?php 
                  foreach ($staffs as $k => $staff) {
                    if($staff['staffid'] == $opportunity->owner){
                      echo $staff['full_name'];
                    }
                  }

                ?></p>
                  

                  <p><b><?php  echo _l('profile_projected_sale_date'); ?></b> : <?php echo _d($opportunity->projected_sale_date); ?></p>


                  <?php 
                     
                     $status_names = array('Prospecting','Proposal Sent','Negotiating','Investigating','Closed');
                     // 1 for Prospecting || 2 for Proposal Sent || 3 for Negotiating || 4 for Investigating || 5 for Closed  
                     $status =  array();
                     foreach ($status_names as $key => $value) {
                        array_push($status, array('id' => $key+1, 'name' => $value));
                     }


                     
                     $closed_status_name =  array('Lost','Won','Dead');
                     // 1 for Lost || 2 for Won || 3 for Dead
                     
                     $closed_status = array();
                     foreach ($closed_status_name as $k => $v) {
                        array_push($closed_status, array('id' => $k+1, 'name' => $v));
                     }
     
                    
                  ?>
                  <p><b><?php  echo _l('profile_status'); ?></b> : <?php 
                  foreach ($status as $k => $stat) {
                    if($stat['id'] == $opportunity->status){
                      echo $stat['name'];
                    }
                  }


                  foreach ($closed_status as $k => $closed_stat) {
                    if($closed_stat['id'] == $opportunity->closed_status){
                      echo " <small>".$closed_stat['name']."</small>";
                    }
                  }



                ?></p>

                 



                  

                  
               </div>
            </div>
         </div>


      </div>
   </div>

</div>
<?php $this->load->view('opportunities/opportunity_group'); ?>


