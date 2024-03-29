<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<h4 class="customer-profile-group-heading"><?php echo _l('opportunity_todo_tab'); ?></h4>
<?php if(isset($opportunity)){ ?>
<a href="#" data-toggle="modal" data-target=".reminder-modal-opportunity-<?php echo $opportunity->id; ?>" class="btn btn-info mbot25"><i class="fa fa-bell-o"></i> <?php echo _l('set_todo'); ?></a>
<div class="clearfix"></div>

<?php render_datatable(array( _l( 'reminder_description'), _l( 'reminder_date'), _l( 'reminder_staff'), _l( 'reminder_is_notified')), 'reminders');
$this->load->view('admin/includes/modals/reminder',array('id'=>$opportunity->id,'name'=>'opportunity','members'=>$members,'reminder_title'=>_l('set_reminder')));
} ?>
