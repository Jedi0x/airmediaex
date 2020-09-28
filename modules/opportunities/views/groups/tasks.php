<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<h4 class="customer-profile-group-heading"><?php echo _l('tasks'); ?></h4>
<?php if(isset($opportunity)){
    init_relation_tasks_table(array( 'data-new-rel-id'=>$opportunity->id,'data-new-rel-type'=>'opportunity'));
} ?>
