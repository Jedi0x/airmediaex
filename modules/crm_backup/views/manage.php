<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper" class="warehouse_profile">
   <div class="content">
      <div class="row">
         <div class="col-md-12">
            <div class="panel_s">
               <div class="panel-body">
                  <div class="clearfix"></div>
                  <h4 class="customer-profile-group-heading"><?php echo _l('crm_backup'); ?></h4>
                  <div class="row">
                     <?php echo form_open_multipart($this->uri->uri_string(),array('class'=>'crm-backup-form','autocomplete'=>'off')); ?>
                     <div class="additional"></div>
                     <div class="col-md-12">
                        <div class="row">
                          <div class="col-md-12">
                            <div class="error-rep"></div><?php  
                              $selected =( isset($backup_created_at) ? $backup_created_at : ''); 
                              $create_options = created_backup_options();
                              
                              echo render_select('backup_created_at',$create_options,array( 'backup_create_id',array('backup_name')), 'backup_created_at',$selected,array('data-none-selected-text'=>_l('dropdown_non_selected_tex'))); 


                              $selected =( isset($backup_remove) ? $backup_remove : ''); 
                              $remove_options = remove_backup_options();
                              echo render_select('backup_remove',$remove_options,array( 'backup_create_id',array('backup_name')), 'backup_remove',$selected,array('data-none-selected-text'=>_l('dropdown_non_selected_tex'))); 


                              ?>

                           </div>
                        </div>
                        <div class="text-right">
                          <button type="submit" class="btn btn-info disable-btn"><?php echo _l('submit'); ?></button>
                       </div>
                    </div>
                 </div>
              </div>
              <?php echo form_close(); ?>
            </div>
         </div>
      </div>
   </div>
</div>
<?php init_tail(); ?>
<script type="text/javascript">
  $(function() {
    validate_crm_backup();
  });


  $(document).on('change', '#backup_created_at', function(e){

    var backup_remove = $("#backup_remove").selectpicker("val");
    var backup_created_at = $("#backup_created_at").selectpicker("val");

    if(backup_created_at == 2 &&  backup_remove == 1){  
      $(".error-rep").html(`<div class="alert alert-danger">Please select auto delete backup greater than created.</div>`)
      $('.disable-btn').prop('disabled', true);
    }else if(backup_created_at == 3 &&  backup_remove == 2){
      $(".error-rep").html(`<div class="alert alert-danger">Please select auto delete backup greater than created.</div>`)
      $('.disable-btn').prop('disabled', true);
    }else if(backup_created_at == 4 &&  backup_remove == 3){
      $(".error-rep").html(`<div class="alert alert-danger">Please select auto delete backup greater than created.</div>`)
      $('.disable-btn').prop('disabled', true);
    }else{
      $(".error-rep").html(``)
      $('.disable-btn').prop('disabled', false);
    }
       
  });

  $(document).on('change', '#backup_remove', function(e){

    var backup_remove = $("#backup_remove").selectpicker("val");
    var backup_created_at = $("#backup_created_at").selectpicker("val");

    if(backup_created_at == 2 &&  backup_remove == 1){  
      $(".error-rep").html(`<div class="alert alert-danger">Please select auto delete backup greater than created.</div>`)
      $('.disable-btn').prop('disabled', true);
    }else if(backup_created_at == 3 &&  backup_remove == 2){
      $(".error-rep").html(`<div class="alert alert-danger">Please select auto delete backup greater than created.</div>`)
      $('.disable-btn').prop('disabled', true);
    }else if(backup_created_at == 4 &&  backup_remove == 3){
      $(".error-rep").html(`<div class="alert alert-danger">Please select auto delete backup greater than created.</div>`)
      $('.disable-btn').prop('disabled', true);
    }else{
      $(".error-rep").html(``)
      $('.disable-btn').prop('disabled', false);
    }
       
  })
    
function validate_crm_backup(){
    appValidateForm($('.crm-backup-form'), {
      backup_created_at: 'required',
      backup_remove: 'required',
    });
  }
</script>
</body>
</html>
 