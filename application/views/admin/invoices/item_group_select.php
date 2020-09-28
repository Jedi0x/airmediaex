<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="form-group mbot25 items-wrapper select-placeholder<?php if(has_permission('items','','create')){ echo ' input-group-select'; } ?>">
  <div class="<?php if(has_permission('items','','create')){ echo 'input-group input-group-select'; } ?>">
    <div class="items-select-wrapper">
     <select name="item_select_group" class="selectpicker no-margin<?php if($ajaxItems == true){echo ' ajax-search';} ?><?php if(has_permission('items','','create')){ echo ' _select_input_group'; } ?>" data-width="false" id="item_select_group" data-none-selected-text="<?php echo _l('add_item_group'); ?>" data-live-search="true">
      <option value=""></option>
      <?php foreach($items_groups as $key =>$_group){ ?>
 
       <option value="<?php echo $_group['id']; ?>"><?php echo $_group['name']; ?></option>
     <?php } ?>
   </select>
 </div>
 <?php if(has_permission('items','','create')){ ?>
 <div class="input-group-addon">
   <a href="#" data-toggle="modal" data-target="#sales_item_modal">
    <i class="fa fa-plus"></i>
  </a>
</div>
<?php } ?>
</div>
</div>
