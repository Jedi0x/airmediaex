<?php echo form_open(admin_url('opportunities/update_call/'.$call_log->id)); ?>
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title"><?php echo _l('assign_admin'); ?></h4>
        </div>
        <div class="modal-body">
            <?php echo render_datetime_input('date','call_date_time',$call_log->date,array('data-date-min-date'=>_d(date('Y-m-d H:i:s')))); ?>
    		<?php echo render_input('call_number','call_number',$call_log->call_number); ?>
    		<?php echo render_textarea( 'description', 'call_description', $call_log->description,array( 'rows'=>5)); ?>
    		<input type="hidden" name="opportunity_id" value="<?=$call_log->opportunity_id?>">
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
            <button type="submit" class="btn btn-info"><?php echo _l('submit'); ?></button>
        </div>
    </div>
    <!-- /.modal-content -->
<?php echo form_close(); ?>