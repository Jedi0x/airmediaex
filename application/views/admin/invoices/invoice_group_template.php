<div class="group_items"><?php 
  if (isset($invoice) || isset($add_items)) {
    $i               = 1;
    $items_indicator = 'newitems';

    if (isset($invoice)) {
      $add_items       = $invoice->items;
      $items_indicator = 'items';
    }  

    $groups = array();
    $group_items = array();
    foreach ($add_items as $item) {
      if(!in_array($item['group_id'], $groups)){
        array_push($groups, $item['group_id']);
      }
    }

    foreach ($add_items as $item) {
      if(in_array($item['group_id'], $groups)){
        $group_id = $item['group_id'];
        $group_items[$group_id][] = array($item);
      } 
    } 

    $sub_total = 0;
    $total_amount = 0;
    foreach ($group_items as $group => $group_items_arr) {
      $_group = item_group($group); ?>
      <table class="table invoice-items-table items table-item-group<?php echo $_group->id; ?> table-main-invoice-edit has-calculations no-mtop item-group-<?php echo $_group->id ?> item-group"  data-group-id = "<?php echo $_group->id; ?>">
      <thead>
        <tr>
          <th colspan="10"  class="dragger ui-sortable-handle">
            <h4 class="group-custom-head-class"><?php echo $_group->name ?>
              <button type="button" onclick="delete_item_group(<?php echo $_group->id ?>); return false;" class="btn pull-right btn-danger"><i class="fa fa-times"></i></button>
            </h4>
          </th>
        </tr>


              <tr>
                <th></th>
                <th width="20%" align="left"><i class="fa fa-exclamation-circle" aria-hidden="true" data-toggle="tooltip" data-title="<?php echo _l('item_description_new_lines_notice'); ?>"></i> <?php echo _l('invoice_table_item_heading'); ?></th>
                <th width="25%" align="left"><?php echo _l('invoice_table_item_description'); ?></th>
                <?php
                $custom_fields = get_custom_fields('items');
                foreach($custom_fields as $cf){
                  echo '<th width="15%" align="left" class="custom_field">' . $cf['name'] . '</th>';
                }
                $qty_heading = _l('invoice_table_quantity_heading');
                if(isset($invoice) && $invoice->show_quantity_as == 2 || isset($hours_quantity)){
                  $qty_heading = _l('invoice_table_hours_heading');
                } else if(isset($invoice) && $invoice->show_quantity_as == 3){
                  $qty_heading = _l('invoice_table_quantity_heading') .'/'._l('invoice_table_hours_heading');
                } ?>
                <th width="10%"><?php echo _l('part_number'); ?></th>
                <th width="10%" align="right" class="qty"><?php echo $qty_heading; ?></th>
                <th width="10%" align="right"><?php echo _l('invoice_table_rate_heading'); ?></th>
                <th width="10%" align="right"><?php echo _l('invoice_table_tax_heading'); ?></th>
                <th width="30%" align="right"><?php echo _l('invoice_discount'); ?></th>
                <th width="10%" align="right"><?php echo _l('invoice_table_amount_heading'); ?></th>
                <th align="center"><i class="fa fa-cog"></i></th>
              </tr>
              </thead>
                <tbody class="item<?php echo $_group->id ?> connectedSortable">
                  <!-- Junaid Code here -->
                  <tr>
                    <td colspan="10">
                      <div class="form-group items-wrapper select-placeholder input-group-select">
                        <div class="input-group input-group-select" style="width: 100%;">
                          <div class="items-select-wrapper">
                            <select class="selectpicker no-margin ajax-search item-select item-select<?=$_group->id?>" onchange="add_item_to_group(<?=$_group->id?>);" data-width="100%" data-none-selected-text="<?php echo _l('add_item'); ?>" data-live-search="true">
                              <option value=""></option>
                              <?php foreach($all_items as $group_id=>$_items){ ?>
                                <option value="<?php echo $_items['itemid']; ?>" data-subtext="<?php echo strip_tags(mb_substr($_items['long_description'],0,200)).'...'; ?>">(<?php echo app_format_number($_items['rate']); ; ?>) <?php echo $_items['description']; ?></option>
                              <?php } ?>
                            </select>
                          </div>
                        </div>
                      </div>
                    </td>
                  </tr>

                  <!-- <tr class="main">
                    <td></td>
                    <td>
                      <textarea name="description" class="form-control" rows="4" placeholder="<?php echo _l('item_description_placeholder'); ?>"></textarea>
                    </td>
                    <td>
                      <textarea name="long_description" rows="4" class="form-control" placeholder="<?php echo _l('item_long_description_placeholder'); ?>"></textarea>
                    </td>
                    <td>
                      <input type="text" placeholder="<?php echo _l('part_number'); ?>" name="part_number" class="form-control">
                    </td>
                    <?php echo render_custom_fields_items_table_add_edit_preview(); ?>
                    <td>
                      <input type="number" name="quantity" min="0" value="1" class="form-control" placeholder="<?php echo _l('item_quantity_placeholder'); ?>">
                      <input type="text" placeholder="<?php echo _l('unit'); ?>" data-toggle="tooltip" data-title="e.q kg, lots, packs" name="unit" class="form-control input-transparent text-right">
                    </td>
                    <td>
                      <input type="number" name="rate" class="form-control" placeholder="<?php echo _l('item_rate_placeholder'); ?>">
                    </td>
                    <td>
                      <?php
                      $default_tax = unserialize(get_option('default_tax'));
                      $select = '<select class="selectpicker display-block taxX'.$_group->id.' main-tax" data-width="100%" name="taxname" multiple data-none-selected-text="'._l('no_tax').'">';
                      foreach($taxes as $tax){
                        $selected = '';
                        if(is_array($default_tax)){
                          if(in_array($tax['name'] . '|' . $tax['taxrate'],$default_tax)){
                            $selected = ' selected ';
                          }
                        }
                        $select .= '<option value="'.$tax['name'].'|'.$tax['taxrate'].'"'.$selected.'data-taxrate="'.$tax['taxrate'].'" data-taxname="'.$tax['name'].'" data-subtext="'.$tax['name'].'">'.$tax['taxrate'].'%</option>';
                      }
                      $select .= '</select>';
                      echo $select;
                      ?>
                    </td>
                                    <td>
                  <?php $rand = rand(); ?>
                  <div class="input-group" id="discount-total-<?php echo $rand; ?>">
                    <input type="number" value="0" class="form-control pull-left input-discount-group-percent" min="0" max="100" name="discount_group_percent" data-group-id = "<?php echo $_group->id ?>">

                    <input type="number" data-toggle="tooltip" data-title="<?php echo _l('numbers_not_formatted_while_editing') ?>" value="0" class="form-control pull-left input-discount-group-fixed hide" min="0" name="discount_group_total" data-group-id = "<?php echo $_group->id ?>">
                    <div class="input-group-addon">
                      <div class="dropdown">
                        <a class="dropdown-toggle" href="#" id="dropdown_menu_tax_total_type_1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                          <span class="discount-group-total-type-selected">%</span>
                          <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu discount-group-total-type-dropdown" id="discount-group-total-type-dropdown<?php echo $rand; ?>" aria-labelledby="dropdown_menu_tax_total_type">
                          <li>
                            <a href="#" class="discount-group-total-type discount-type-percent selected" data-group-id = "<?php echo $_group->id ?>" data-item-id = "<?php echo $rand; ?>">%</a>
                          </li>
                          <li>
                            <a href="#" class="discount-group-total-type discount-type-fixed" data-group-id = "<?php echo $_group->id ?>" data-item-id = "<?php echo $rand; ?>">
                              <?php echo _l('discount_fixed_amount') ?>
                            </a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>


                </td>
                    <td></td>
                    <td>
                    <?php
                      $new_item = 'undefined';
                      if(isset($invoice)){
                        $new_item = true;
                      } ?>
                      <button type="button" onclick="add_group_item_to_table('undefined','undefined','undefined','',<?php echo $_group->id; ?>); return false;" class="btn pull-right btn-info"><i class="fa fa-check"></i></button>
                    </td>
                  </tr> -->
                  <?php 
                  $i               = rand();
                  $order = 1;
            
                  $items_indicator = 'newitems';
                  if (isset($invoice)) {
                    $add_items       = $invoice->items;
                    $items_indicator = 'items';
                  }
                  $sub_total = 0;

                  //debug($item);
                  foreach ($group_items_arr  as $k => $item) { 

                    $item[0]['itemid'] = $item[0]['id'];
                    $manual    = false;
                    $table_row = '<tr class="sortable item item'.$item[0]['id'].'">';
                    $table_row .= '<td class="dragger">';
                    $item[0]['id'] = $item[0]['itemid'];
                    $item[0]['qty'] = $item[0]['qty'];

                    $invoice_item_taxes = get_invoice_item_taxes($item[0]['id']);

                    // passed like string
                    if ($item[0]['id'] == 0) {
                      $invoice_item_taxes = $item[0]['taxname'];
                      $manual             = true;
                    }
                   
                    $table_row .= '<input type="hidden" class="itemid" name="'. $items_indicator .'['  . $i . '][itemid]" value="' .$item[0]['id']. '">';
                    $amount = $item[0]['rate'] * $item[0]['qty'];

                    
                    if($item[0]['discount_type'] == 'percentage'){
                      $percentage = $item[0]['discount'];
                      $discounted_value = ($percentage / 100) * $amount;
                    }else{
                       $discounted_value = $item[0]['discount'];
                    }
                    

                    $sub_total+=($amount - $discounted_value);

                    $amount = app_format_number($amount - $discounted_value);

                    // order input
                    $table_row .= '<input type="hidden" class="item_group_id"  name="'. $items_indicator .'['  . $i . '][group_id]" value="' .$_group->id. '">';
                    $table_row .= '<input type="hidden" class="order" name="' . $items_indicator . '[' . $i . '][order]" value="'.$order.'">';
                    $table_row .= '</td>';
                    $table_row .= '<td class="bold description"><textarea name="' . $items_indicator . '[' . $i . '][description]" class="form-control" rows="5">' . clear_textarea_breaks($item[0]['description']) . '</textarea></td>';
                    $table_row .= '<td><textarea name="' . $items_indicator . '[' . $i . '][long_description]" class="form-control" rows="5">' . clear_textarea_breaks($item[0]['long_description']) . '</textarea></td>';

                     $table_row .= '<td>
                    <input type="text" name="' . $items_indicator . '[' . $i . '][part_number]" class="form-control" value="'.$item[0]['part_number'].'">
                    </td>';

                    $table_row .= render_custom_fields_items_table_in($item[0],$items_indicator.'['.$i.']');

                    $table_row .= '<td><input type="number" min="0" onblur="calculate_total_group('.$item[0]['id'].','.$_group->id.');" onchange="calculate_total_group('.$item[0]['id'].','.$_group->id.');" data-quantity name="' . $items_indicator . '[' . $i . '][qty]" value="' . $item[0]['qty'] . '" class="form-control">';

                    $unit_placeholder = '';
                    if(!$item[0]['unit']){
                      $unit_placeholder = _l('unit');
                      $item['unit'] = '';
                    }

                    $table_row .= '<input type="text" placeholder="'.$unit_placeholder.'" name="'.$items_indicator.'['.$i.'][unit]" class="form-control input-transparent text-right" value="'.$item[0]['unit'].'">';

                    $table_row .= '</td>';

                    $table_row .= '<td class="rate"><input type="number" data-toggle="tooltip" title="' . _l('numbers_not_formatted_while_editing') . '" onblur="calculate_total_group('.$item[0]['id'].','.$_group->id.');" onchange="calculate_total_group('.$item[0]['id'].','.$_group->id.');" name="' . $items_indicator . '[' . $i . '][rate]" value="' . $item[0]['rate'] . '" class="form-control" data-amount = "'.$item[0]['rate'].'"></td>';

                    $table_row .= '<td class="taxrate">' . $this->misc_model->get_taxes_dropdown_template('' . $items_indicator . '[' . $i . '][taxname][]', $invoice_item_taxes, 'invoice', $item[0]['id'], true, $manual,$item[0]['id']) . '</td>';


     

                    $table_row .= '
                    <td class="discount">
                      <div class="input-group" id="discount-total-'.$item[0]['id'].'">
                        <input type="number" value="'. ($item[0]['discount_type'] == "percentage" ? $item[0]['discount'] : 0 ) .'" class="form-control pull-left input-discount-group-percent'. ($item[0]['discount_type'] == "percentage" ? ' shOw' : ' hide' ) .'" min="0" max="100" name="' . $items_indicator . '[' . $i . '][discount_group_percent]" data-discount data-group-id = "'.$_group->id.'">

                        <input type="number" data-toggle="tooltip" data-title="'._l('numbers_not_formatted_while_editing').'" value="'. ($item[0]['discount_type'] == "fix amount" ? $item[0]['discount'] : 0 ) .'" class="form-control pull-left input-discount-group-fixed '. ($item[0]['discount_type'] == "fix amount" ? ' shOw' : ' hide' ) .'" min="0" name="' . $items_indicator . '[' . $i . '][discount_group_total]" data-group-id = "'.$_group->id.'" data-discount>
                        <div class="input-group-addon">
                          <div class="dropdown">
                            <a class="dropdown-toggle" href="#" id="dropdown_menu_tax_total_type_1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                              <span class="discount-group-total-type-selected">'.($item[0]['discount_type'] == "fix amount" ? '$' : '%' ).'</span>
                              <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu discount-group-total-type-dropdown" id="discount-group-total-type-dropdown'.$item[0]['id'].'" aria-labelledby="dropdown_menu_tax_total_type">
                              <li>
                                <a href="#" class="discount-group-total-type discount-type-percent selected" data-group-id = "'.$_group->id .'" data-item-id = "'.$item[0]['id'] .'">%</a>
                              </li>
                              <li>
                                <a href="#" class="discount-group-total-type discount-type-fixed" data-group-id = "'.$_group->id .'" data-item-id = "'.$item[0]['id'] .'">
                                  '. _l('discount_fixed_amount').'
                                </a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </td>';

                    $table_row .= '<td class="amount-group" align="right">' . $amount . '</td>';
                    $table_row .= '<td><a href="#" class="btn btn-danger pull-left" onclick="delete_item(this,' . $item[0]['itemid'] . ','.$_group->id.'); return false;"><i class="fa fa-times"></i></a></td>';
                      if (isset($item[0]['task_id'])) {
                        if (!is_array($item[0]['task_id'])) {
                          $table_row .= form_hidden('billed_tasks['.$i.'][]', $item[0]['task_id']);
                        } else {
                          foreach ($item[0]['task_id'] as $task_id) {
                            $table_row .= form_hidden('billed_tasks['.$i.'][]', $task_id);
                          }
                        }
                      } else if (isset($item['expense_id'])) {
                        $table_row .= form_hidden('billed_expenses['.$i.'][]', $item[0]['expense_id']);
                      }
                      $table_row .= '</tr>';
                      echo $table_row;
                      $i++;
                      $order++;
                      
                   

                    }

                    $total_amount+=$sub_total;
                     ?>

                    
                    <div class="clearfix"></div>
                     
                  </tbody>
                  <tfoot>
                    <tr style="border-bottom: solid 1px #f1f5f7;"> 
                      <td colspan="7" align="right" style="padding: 10px 0px;"><span class="bold"><?php echo _l('invoice_subtotal'); ?> :</span></td>
                      <td colspan="3" align="right" class="sub_total_group total<?php echo $_group->id ?>" data-amount = "<?php echo $sub_total; ?>" style="padding: 10px 0px;">
                        <?php echo "$".app_format_number($sub_total); ?>
                      </td>
                    </tr>
                  </tfoot>
                </table>
 

          <?php
          }
        } ?>
      </div>
    