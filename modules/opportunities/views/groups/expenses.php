<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php if(isset($opportunity)){ ?>
<h4 class="customer-profile-group-heading"><?php echo _l('client_expenses_tab'); ?></h4>
<?php if(has_permission('expenses','','create')){ ?>
<a href="<?php echo admin_url('expenses/expense?opportunity_id='.$opportunity->id); ?>" class="btn btn-info mbot15">
    <?php echo _l('new_expense'); ?>
</a>
<?php } ?>
<div id="expenses_total" class="mbot25"></div>
<?php $this->load->view('admin/expenses/table_html', array('class'=>'expenses-single-client')); ?>
<?php } ?>
