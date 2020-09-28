<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<h4 class="customer-profile-group-heading"><?php echo _l('team'); ?></h4>
<div class="row">
   <div class="additional"></div>
   <div class="col-md-12">
      <div class="team-members project-overview-team-members">
         <hr class="hr-panel-heading project-area-separation" />
         <div class="inline-block pull-right mright10 project-member-settings" data-toggle="tooltip" data-title="<?php echo _l('add_edit_members'); ?>">
            <a href="#" data-toggle="modal" class="pull-right" data-target="#add-edit_opportunities_teasm"><i class="fa fa-cog"></i></a>
         </div>
         
         <p class="bold font-size-14 project-info"><?php echo _l('project_members'); ?></p>
         <div class="clearfix"></div>
         <?php 
            $members = array();
            $team = '';
            if(isset($opportunity)){
               if(!empty($teams)){
                  $team = $teams->team_members; ?>
                  <input type="hidden" name="team_id" value="<?=$teams->id?>">
                  <?php
                  if($team != ""){
                     $members = (explode(",",$team));
                  }
                  
               }
            } ?>
         <?php
         if(count($members) == 0){
            echo '<p class="text-muted mtop10 no-mbot">'._l('no_team_members').'</p>';
         }

         if(!empty($members)){
         foreach($members as $member){ 
            $member = get_staff($member);?>
            <div class="media">
               <div class="media-left">
                  <a href="<?php echo admin_url('profile/'.$member->staffid); ?>">
                     <?php echo staff_profile_image($member->staffid,array('staff-profile-image-small','media-object')); ?>
                  </a>
               </div>
               <div class="media-body">
                  <a href="<?php echo admin_url('opportunities/remove_team_member/'.$opportunity->id.'/'.$member->staffid); ?>" class="pull-right text-danger _delete"><i class="fa fa fa-times"></i></a>
                  <h5 class="media-heading mtop5"><a href="<?php echo admin_url('profile/'.$member->staffid); ?>"><?php echo get_staff_full_name($member->staffid); ?></a></h5>
               </div>
            </div><?php 
         }
         } ?>
      </div>
   </div>
</div>

<div class="modal fade" id="add-edit_opportunities_teasm" tabindex="-1" role="dialog">
   <div class="modal-dialog">
      <?php echo form_open(admin_url( 'opportunities/add_team/'.$opportunity->id)); ?>
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
               <h4 class="modal-title"><?php echo _l('project_members'); ?></h4>
            </div>
            <div class="modal-body"><?php 
               $selected_staff = array();
               $team = '';
               if(isset($opportunity)){
                  if(!empty($teams)){
                     $team = $teams->team_members; ?>
                     <input type="hidden" name="team_id" value="<?=$teams->id?>">
                     <?php
                        $selected_staff = (explode(",",$team)); 
                  }
               } ?>

               <div class="form-group mbot15 select-placeholder">
                  <label for="contacts" class="control-label"><?php echo _l('add_team_members'); ?></label>
                  <br />
                  <select class="selectpicker" id= "contacts" data-toggle="" name="team[]" multiple="true" data-width="100%"  data-title="<?php echo _l('team_members'); ?>"><?php
                     foreach ($staff_members as $k => $v) { ?>
                        <option value = '<?=$v['staffid']?>' <?php echo (in_array($v['staffid'],$selected_staff)) ? "selected" : "" ;?> > <?=$v['firstname']." ".$v['lastname']?></option> <?php
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





