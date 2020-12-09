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
              <div class="horizontal-scrollable-tabs">
                <div class="scroller arrow-left"><i class="fa fa-angle-left"></i></div>
                <div class="scroller arrow-right"><i class="fa fa-angle-right"></i></div>

                <div class="horizontal-tabs">

                  <ul class="nav nav-tabs nav-tabs-horizontal" role="tablist">
                    <li role="presentation" class="active">
                      <a href="#backup_settings" aria-controls="online_payments_paypal_tab" role="tab" data-toggle="tab">
                        <?php echo _l('backup_settings'); ?>
                      </a>
                    </li>
                    <li role="presentation">
                      <a href="#google_drive_tab" aria-controls="online_payments_paypal_tab" role="tab" data-toggle="tab">
                        <?php echo _l('goole_drive_settings'); ?>
                      </a>
                    </li>
                    <li role="presentation">
                      <a href="#dropbox_tab" aria-controls="online_payments_paypal_tab" role="tab" data-toggle="tab">
                         <?php echo _l('dropbox'); ?>
                      </a>
                    </li>
                    <li role="presentation">
                      <a href="#one_drive_tab" aria-controls="online_payments_paypal_tab" role="tab" data-toggle="tab">
                        <?php echo _l('onedrive'); ?>
                      </a>
                    </li>
                  </ul>

                  <div class="tab-content mtop30">
                    <!-- Backup Settings -->
                    <div role="tabpanel" class="tab-pane active" id="backup_settings">
                      <div class="form-group">
                        <?php echo form_open_multipart($this->uri->uri_string(),array('class'=>'crm-backup-form','autocomplete'=>'off')); ?>
                        <div class="additional"></div>
                        <div class="col-md-12">
                          <div class="row">
                            <div class="col-md-12">
                              <h4><?php echo _l('backup_settings'); ?></h4>
                              <hr>
                              <div class="error-rep"></div><?php  
                                $selected = get_option('backup_created_at'); 
                                $create_options = created_backup_options();
                    
                                echo render_select('backup_created_at',$create_options,array( 'backup_create_id',array('backup_name')), 'backup_created_at',$selected,array('data-none-selected-text'=>_l('dropdown_non_selected_tex'))); 

                                $selected = get_option('backup_remove'); 
                                $remove_options = remove_backup_options();
                                echo render_select('backup_remove',$remove_options,array( 'backup_create_id',array('backup_name')), 'backup_remove',$selected,array('data-none-selected-text'=>_l('dropdown_non_selected_tex')));?>
                            </div>
                          </div>
                          <div class="text-right">
                            <button type="submit" class="btn btn-info disable-btn"><?php echo _l('submit'); ?></button>
                          </div>
                        </div>
                        <?php echo form_close(); ?>
                      </div>
                      <hr />
                    </div>

                    <!-- Google Drive Settings -->
                    <div role="tabpanel" class="tab-pane" id="google_drive_tab">
                      <div class="form-group">
                        <div class="additional"></div>
                        <?php echo form_open('admin/crm_backup/update_settings',array('id'=>'google-drive-api')); ?>
                        <div class="col-md-12">
                          <div class="row">
                            <div class="col-md-12">
                              <h4><?php echo _l('goole_drive_settings'); ?></h4>
                              <hr>

                              <div class="form-group" app-field-wrapper="google_drive_auth_status">
                                <?php  $value = get_option('google_drive_authorized'); 
                                  if($value == 1){
                                    $authorized_class = 'success';
                                    $authorized_text = _l('authorized');
                                  }else{
                                    $authorized_class = 'warning';
                                    $authorized_text = _l('unauthorized');
                                  }
                                ?>
                                <span class="label label-<?php echo $authorized_class; ?>" data-toggle="tooltip" data-placement="top" title="<?php echo _l('google_drive_authorized_status');  ?>"><?php echo $authorized_text; ?></span> 
                              </div>

                              <?php render_yes_no_option_backup('google_drive_active','goole_drive_settings_active'); ?>

                              <?php  $value = get_option('google_drive_client_id'); ?>
                              <?php echo render_input( 'google_drive_client_id', 'google_drive_client_id',$value,'text'); ?>

                              <?php  $value = get_option('google_drive_client_secret'); ?>
                              <?php echo render_input( 'google_drive_client_secret', 'google_drive_client_secret',$value,'text'); ?>

                              <?php  $value = get_option('google_drive_redirect_uri'); ?>
                              <?php echo render_input( 'google_drive_redirect_uri', 'google_drive_redirect_uri',$value); ?>

                            </div>
                          </div>
                          <div class="text-right">
                            <button type="submit" class="btn btn-info disable-btn"><?php echo _l('authorized_submit'); ?></button>
                          </div>
                        </div>
                        <?php echo form_close(); ?>
                      </div>
                    </div>
       

                    <!-- One Drive Settings -->
                    <div role="tabpanel" class="tab-pane" id="one_drive_tab">
                      <div class="form-group">
                        <div class="additional"></div>
             
        
                         <?php echo form_open_multipart('admin/crm_backup/one_drive',array('class'=>'onedrive-api','autocomplete'=>'off')); ?>
                        <div class="col-md-12">
                          <div class="row">
                            <div class="col-md-12">
                              <h4> <?php echo _l('onedrive_settings'); ?></h4>
                              <hr>

                              <div class="form-group" app-field-wrapper="one_drive_auth_status">
                                <?php  $value = get_option('one_drive_authorized'); 
                                  if($value == 1){
                                    $authorized_class = 'success';
                                    $authorized_text = _l('authorized');
                                  }else{
                                    $authorized_class = 'warning';
                                    $authorized_text = _l('unauthorized');
                                  }
                                ?>
                                <span class="label label-<?php echo $authorized_class; ?>" data-toggle="tooltip" data-placement="top" title="<?php echo _l('onedrive_authorized_status');  ?>"><?php echo $authorized_text; ?></span> 
                              </div>

                              <?php render_yes_no_option_backup('onedrive_active','onedrive_settings_active'); ?>

                              <?php  $value = get_option('onedrive_app_key'); ?>
                              <?php echo render_input( 'onedrive_app_key', 'onedrive_app_key',$value,'text'); ?>

                              <?php  $value = get_option('onedrive_app_secret'); ?>
                              <?php echo render_input( 'onedrive_app_secret', 'onedrive_app_secret',$value,'text'); ?>

                              <?php  $value = get_option('onedrive_redirect_url'); ?>
                              <?php echo render_input( 'onedrive_redirect_url', 'onedrive_redirect_url',$value); ?>

                            </div>
                          </div>
                          <div class="text-right">
                            <button type="submit" class="btn btn-info disable-btn"><?php echo _l('submit'); ?></button>
                          </div>
                        </div>
                        <?php echo form_close(); ?>
                      </div>
                    </div>

                    <!-- Dropbox Settings -->
                    <div role="tabpanel" class="tab-pane" id="dropbox_tab">
                      <div class="form-group">
                        <div class="additional"></div>
                         <?php echo form_open_multipart($this->uri->uri_string(),array('class'=>'dropbox-api','autocomplete'=>'off')); ?>
                        <div class="col-md-12">
                          <div class="row">
                            <div class="col-md-12">
                              <h4> <?php echo _l('dropbox_settings'); ?></h4>
                              <hr>

                              <?php render_yes_no_option_backup('dropbox_drive_active','dropbox_settings_active'); ?>

                              <?php  $value = get_option('dropbox_app_key'); ?>
                              <?php echo render_input( 'dropbox_app_key', 'dropbox_app_key',$value,'text'); ?>

                              <?php  $value = get_option('dropbox_app_secret'); ?>
                              <?php echo render_input( 'dropbox_app_secret', 'dropbox_app_secret',$value,'text'); ?>

                              <?php  $value = get_option('dropbox_access_token'); ?>
                              <?php echo render_input( 'dropbox_access_token', 'dropbox_access_token',$value); ?>

                            </div>
                          </div>
                          <div class="text-right">
                            <button type="submit" class="btn btn-info disable-btn"><?php echo _l('submit'); ?></button>
                          </div>
                        </div>
                        <?php echo form_close(); ?>
                      </div>
                    </div>

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<?php init_tail(); ?>
<script type="text/javascript">
  $(function() {
    validate_crm_backup_form();
    validate_google_drive_form();
    validate_dropbox_form();

    $("#backup_created_at").on("change",function(){
      var backup_created_at = $(this).val();
      var backup_remove = $('#backup_remove').val();
      if(backup_remove == 1 && backup_created_at == 2){
        $('.disable-btn').prop('disabled', true);
        $('.error-rep').html(`<div class="alert alert-danger" role="alert">Please select valid interval</div>`);
      }else if(backup_remove == 2 && backup_created_at == 3){
        $('.disable-btn').prop('disabled', true);
        $('.error-rep').html(`<div class="alert alert-danger" role="alert">Please select valid interval</div>`);
      }else if(backup_remove == 3 && backup_created_at == 4){
        $('.disable-btn').prop('disabled', true);
        $('.error-rep').html(`<div class="alert alert-danger" role="alert">Please select valid interval</div>`);
      }else{
        $('.disable-btn').prop('disabled', false);
        $('.error-rep').html(``);
      }

    });

    $("#backup_remove").on("change",function(){
      var backup_remove = $(this).val();
      var backup_created_at = $('#backup_created_at').val();
      if(backup_remove == 1 && backup_created_at == 2){
        $('.disable-btn').prop('disabled', true);
        $('.error-rep').html(`<div class="alert alert-danger" role="alert">Please select valid interval</div>`);
      }else if(backup_remove == 2 && backup_created_at == 3){
        $('.disable-btn').prop('disabled', true);
        $('.error-rep').html(`<div class="alert alert-danger" role="alert">Please select valid interval</div>`);
      }else if(backup_remove == 3 && backup_created_at == 4){
        $('.disable-btn').prop('disabled', true);
        $('.error-rep').html(`<div class="alert alert-danger" role="alert">Please select valid interval</div>`);
      }else{
        $('.disable-btn').prop('disabled', false);
        $('.error-rep').html(``);
      }
    });
  });




  function google_drive_manage(form) {
    var data = $(form).serialize();
    $('.disable-btn').prop('disabled', true);
    var url = form.action;
    $.post(url, data).done(function (response) {
      response = JSON.parse(response);
      if (response.success == true) {
        alert_float('success', response.message);
        setTimeout(
          function() {
            window.location.href = "<?php echo admin_url('crm_backup/google_drive'); ?>";
          }, 1000);

      }
    })
  } 


  function validate_crm_backup_form(){
    appValidateForm($('.crm-backup-form'), {
      backup_created_at: 'required',
      backup_remove: 'required',
    });
  }
 
  function validate_google_drive_form(){
      appValidateForm($('#google-drive-api'), {
        google_drive_client_id: 'required',
        google_drive_client_secret: 'required',
        google_drive_redirect_uri: 'required',
      }, google_drive_manage);
  }


  function validate_dropbox_form(){
      appValidateForm($('.dropbox-api'), {
        dropbox_app_key: 'required',
        dropbox_app_secret: 'required',
        dropbox_access_token: 'required',
      });
  }

  function validate_one_drive_form(){
      appValidateForm($('.onedrive-api'), {
        onedrive_app_secret: 'required',
        onedrive_app_key: 'required',
        onedrive_redirect_url: 'required',
      });
  }



</script>