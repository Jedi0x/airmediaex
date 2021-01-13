<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php init_head(); ?>
<div id="wrapper">
	<div class="content">
		<div class="row">
			<?php
			echo form_open($this->uri->uri_string(),array('id'=>'estimate-form','class'=>'_transaction_form'));
			if(isset($estimate)){
				echo form_hidden('isedit');
			}
			?>
			<div class="col-md-12">
				<?php $this->load->view('admin/estimates/estimate_template'); ?>
			</div>
			<?php echo form_close(); ?>
			<?php $this->load->view('admin/invoice_items/item'); ?>
		</div>
	</div>
</div>
</div>
<?php init_tail(); ?>
<script>
	$(function(){
		validate_estimate_form();
		// Init accountacy currency symbol
		init_currency();
		// Project ajax search
		init_ajax_project_search_by_customer_id();
		// Maybe items ajax search
	    init_ajax_search('items','#item_select.ajax-search',undefined,admin_url+'items/search');

	    
	    // new code here
	    setTimeout(function(){ calculate_total_group(0,''); }, 1000);
	});

	// Bitsclan Solutions Start Code 
	$(document).on('change', '#clientid', function(e){
	    var id = $(this).val();
	    $.ajax({
	        type: "POST",
	        url: admin_url+'opportunities/get_opportunities',
	        data:{id:id},
	        success: function(res){
	            
	            $("#contacts").html(res).selectpicker('refresh');

	        }
	    });
	});
	// Bitsclan Solutions End Code
</script>
</body>
</html>
