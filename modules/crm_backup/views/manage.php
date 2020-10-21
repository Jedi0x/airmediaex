<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
  <div class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="panel_s">
          <div class="panel-body">
            <div class="_buttons">
              <?php if (has_permission('crm_backup','','create')) { ?>
                <a href="<?php echo admin_url('crm_backup/manage'); ?>" class="btn btn-info mright5 test pull-left display-block"><?php echo _l('backup_settings'); ?></a>
              <?php } ?>

              <div class="visible-xs">
                <div class="clearfix"></div>
              </div>
            </div>
            <div class="clearfix"></div>
            <hr class="hr-panel-heading" />
            <div class="clearfix mtop20"></div>
              <?php
              $table_data = array();
              $_table_data = array(
                '<span class="hide"> - </span><div class="checkbox mass_select_all_wrap"><input type="checkbox" id="mass_select_all" data-to-table="clients"><label></label></div>',

                array(
                 'name'=>_l('backup_name'),
                 'th_attrs'=>array('class'=>'toggleable', 'id'=>'th-backup_name')
               ),
                array(
                 'name'=>_l('service_type'),
                 'th_attrs'=>array('class'=>'toggleable', 'id'=>'th-service_type')
               ),
                array(
                 'name'=>_l('datecreated'),
                 'th_attrs'=>array('class'=>'toggleable', 'id'=>'th-datecreated')
               ),
              );
              foreach($_table_data as $_t){
                array_push($table_data,$_t);
              }

              $table_data = hooks()->apply_filters('crm_backup_table_columns', $table_data);

              render_datatable($table_data,'crm_backup',[],[
               'data-last-order-identifier' => 'crm_backup',
               'data-default-order'         => get_table_last_order('crm_backup'),
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
    var crm_backupServerParams = {};
    $.each($('._hidden_inputs._filters input'),function(){
      crm_backupServerParams[$(this).attr('name')] = '[name="'+$(this).attr('name')+'"]';
    });
    crm_backupServerParams['exclude_inactive'] = '[name="exclude_inactive"]:checked';
    var tAPI = initDataTable('.table-crm_backup', admin_url+'crm_backup/table', [0], [0], crm_backupServerParams,<?php echo hooks()->apply_filters('customers_table_default_order', json_encode(array(2,'asc'))); ?>);
    $('input[name="exclude_inactive"]').on('change',function(){
      tAPI.ajax.reload();
    });
  });
</script>
</body>
</html>
