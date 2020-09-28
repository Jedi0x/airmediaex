<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php if(isset($opportunity)){ ?>
<h4 class="customer-profile-group-heading"><?php echo _l('opportunity_call_log_tab'); ?></h4>
<div class="col-md-12">
<?php $user_notes = array(); ?>
 <a href="#" class="btn btn-success mtop15 mbot10" onclick="slideToggle('.calllog'); return false;"><?php echo _l('new_call_log'); ?></a>
 <div class="clearfix"></div>
<div class="row">
     <hr class="hr-panel-heading" />
</div>
 <div class="clearfix"></div>
 <div class="calllog hide">
    <?php echo form_open(admin_url( 'opportunities/add_call_log/'.$opportunity->id)); ?>
    <?php echo render_datetime_input('date','call_date_time','',array('data-date-min-date'=>_d(date('Y-m-d')))); ?>
    <?php echo render_input('call_number','call_number'); ?>
    <?php echo render_textarea( 'description', 'call_description', '',array( 'rows'=>5)); ?>
    <button class="btn btn-info pull-right mbot15">
        <?php echo _l( 'submit'); ?>
    </button>
    <?php echo form_close(); ?>
</div>
<div class="clearfix"></div>
<div class="mtop15">
    <table class="table dt-table scroll-responsive" data-order-col="2" data-order-type="desc">
        <thead>
            <tr>
                
                <th width="50%">
                    <?php echo _l( 'call_description'); ?>
                </th>
                <th>
                    <?php echo _l( 'call_number'); ?>
                </th>
                <th>
                    <?php echo _l( 'clients_notes_table_addedfrom_heading'); ?>
                </th>
                <th>
                    <?php echo _l( 'clients_notes_table_dateadded_heading'); ?>
                </th>
                <th>
                    <?php echo _l( 'options'); ?>
                </th>
            </tr>
        </thead>
        <tbody>
            <?php

            if(!empty($call_logs)){
            foreach($call_logs as $log){ ?>
            <tr>
              <td width="50%">
                <div data-note-description="<?php echo $log['id']; ?>">
                  <?php echo check_for_links($log['description']); ?>
              </div>
          </td>
          <td><?=$log['call_number']?></td>
          <td>
            <?php echo '<a href="'.admin_url( 'profile/'.$log[ 'addedfrom']). '">'.$log[ 'firstname'] . ' ' . $log[ 'lastname'] . '</a>' ?>
        </td>
        <td data-order="<?php echo $log['date']; ?>">
          <?php echo _dt($log[ 'date']); ?>
        </td>
        <td>
            <?php if($log['addedfrom'] == get_staff_user_id() || is_admin()){ ?>
            <a class="btn btn-default btn-icon edit_call_log" data-id = "<?=$log['id']?>"><i class="fa fa-pencil-square-o"></i></a>
            <a href="<?php echo admin_url('opportunities/delete_call_log/'. $log['id']); ?>" class="btn btn-danger btn-icon _delete"><i class="fa fa-remove"></i></a>
            <?php } ?>
        </td>
    </tr>
    <?php } 
}?>
</tbody>
</table>
</div>
<?php } ?>



<div class="modal fade" id="call_log_edit" tabindex="-1" role="dialog">
   <div class="modal-dialog show_body">
      
   </div>
   <!-- /.modal-dialog -->
</div>
