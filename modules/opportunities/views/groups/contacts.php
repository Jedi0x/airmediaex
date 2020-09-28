<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<h4 class="customer-profile-group-heading"><?php echo  _l('contact') ; ?></h4>
<div class="row">
   <div class="additional"></div>
   <div class="col-md-12">
      <div class="team-members project-overview-team-members">
         <hr class="hr-panel-heading project-area-separation" />
         <div class="inline-block pull-right mright10 project-member-settings" data-toggle="tooltip" data-title="<?php echo _l('add_edit_contact'); ?>">
            <a href="#" data-toggle="modal" class="pull-right" data-target="#add-edit_opportunities_teasm"><i class="fa fa-cog"></i></a>
         </div>
         
         <p class="bold font-size-14 project-info"><?php echo _l('contact'); ?></p>
         <div class="clearfix"></div>
         <?php 
            $members = array();
            $team = '';
            
            if(isset($opportunity)){
              $contact = $opportunity->contacts;
              //$contacts = json_decode($contacts); 
             $contacts = (explode(",",$contact)); 
            } ?>
         <?php
         if(count($contacts) == 0){
            echo '<p class="text-muted mtop10 no-mbot">'._l('no_contact_members').'</p>';
         }
         foreach($contacts as $contact){ 
            $contact = get_contact($contact);  ?>
            <div class="media">
               <div class="media-left">
                  <a href="<?php echo admin_url('profile/'.$contact->id); ?>">
                     <?php $url =  contact_profile_image_url($contact->id); 
                      $profile_image = '<img src="' . $url . '" class="staff-profile-image-small media-object" />';
                      echo $profile_image;
                     ?>

                  </a>
               </div>
               <div class="media-body">
                  <?php if(count($contacts) > 1){ ?>
                  <a href="<?php echo admin_url('opportunities/remove_contact/'.$opportunity->id.'/'.$contact->id); ?>" class="pull-right text-danger _delete"><i class="fa fa fa-times"></i></a>
                <?php } ?>
                  <h5 class="media-heading mtop5"><?php echo get_contact_full_name($contact->id); ?></h5>
               </div>
            </div><?php 
         } ?>
      </div>
   </div>
</div>

<div class="modal fade" id="add-edit_opportunities_teasm" tabindex="-1" role="dialog">
   <div class="modal-dialog">
      <?php echo form_open(admin_url( 'opportunities/add_contact/'.$opportunity->id)); ?>
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
               <h4 class="modal-title"><?php echo _l('contact'); ?></h4>
            </div>
            <div class="modal-body"><?php 
            $members = array();
            $team = '';
            
            if(isset($opportunity)){
              $contact = $opportunity->contacts;
              //$contacts = json_decode($contact); 
               $contacts = (explode(",",$contact));  
            } ?>


               <div class="form-group mbot15 select-placeholder">
                  <label for="contacts" class="control-label"><?php echo _l('add_contacts'); ?></label>
                  <br />
                  <select class="selectpicker" id= "contacts" data-toggle="" name="contacts[]" multiple="true" data-width="100%"  data-title="<?php echo _l('opportunity_contacts'); ?>"><?php
                     foreach ($opportunity_contacts as $k => $v) { ?>
                        <option value = '<?=$v['id']?>' <?php echo (in_array($v['id'],$contacts)) ? "selected" : "" ;?> > <?=$v['firstname']." ".$v['lastname']?></option> <?php
                     } ?>
                  </select>
               </div>
            </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
            <button type="submit" class="btn btn-info" autocomplete="off" data-loading-text="<?php echo _l('wait_text'); ?>"><?php echo _l('submit'); ?></button>
         </div>
      </div>
      <!-- /.modal-content -->
      <?php echo form_close(); ?>
   </div>
   <!-- /.modal-dialog -->
</div>






