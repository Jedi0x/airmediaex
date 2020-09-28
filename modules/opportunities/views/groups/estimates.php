<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php if(isset($opportunity)){ ?>
	<h4 class="customer-profile-group-heading"><?php echo _l('estimates'); ?></h4>
	<a href="<?php echo admin_url('estimates/estimate?opportunity_id='.$opportunity->id); ?>" class="btn btn-info mbot15"><?php echo _l('create_new_estimate'); ?></a>
	<div id="estimates_total"></div>
	<?php
	$this->load->view('admin/estimates/table_html', array('class'=>'estimates-single-client'));
	$this->load->view('modals/zip_estimates');
	?>
<?php } ?>
