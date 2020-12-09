<table class="table invoice-items-table items table-item-group<?php echo $group->id; ?> table-main-invoice-edit has-calculations no-mtop item-group-<?php echo $group->id ?> group_items-drag" data-group-id = <?=$group->id?>>
  <thead>
    <tr>
      <th colspan="10"  class="dragger ui-sortable-handle">
        <h4 class="group-custom-head-class"><?php echo $group->name ?>
          <button type="button" onclick="delete_item_group(<?php echo $group->id ?>); return false;" class="btn pull-right btn-danger"><i class="fa fa-times"></i></button>
        </h4>
      </th>
    </tr>
    <tr>
      <th></th>
      <th width="20%" align="left"><i class="fa fa-exclamation-circle" aria-hidden="true" data-toggle="tooltip" data-title="<?php echo _l('item_description_new_lines_notice'); ?>"></i> <?php echo _l('invoice_table_item_heading'); ?></th>
      <th width="20%" align="left"><?php echo _l('invoice_table_item_description'); ?></th>
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
    <tbody class="item<?php echo $group->id ?> ui-sortable connectedSortable">
      <tr class="main">
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
          $select = '<select class="selectpicker display-block taxX'.$group->id.' main-tax" data-width="100%" name="taxname" multiple data-none-selected-text="'._l('no_tax').'">';
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
            <input type="number" value="0" class="form-control pull-left input-discount-group-percent" min="0" max="100" name="discount_group_percent" data-group-id = "<?php echo $group->id ?>">

            <input type="number" data-toggle="tooltip" data-title="<?php echo _l('numbers_not_formatted_while_editing') ?>" value="0" class="form-control pull-left input-discount-group-fixed hide" min="0" name="discount_group_total" data-group-id = "<?php echo $group->id ?>">
            <div class="input-group-addon">
              <div class="dropdown">
                <a class="dropdown-toggle" href="#" id="dropdown_menu_tax_total_type_1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                  <span class="discount-group-total-type-selected">%</span>
                  <span class="caret"></span>
                </a>
                <ul class="dropdown-menu discount-group-total-type-dropdown" id="discount-group-total-type-dropdown<?php echo $rand; ?>" aria-labelledby="dropdown_menu_tax_total_type">
                  <li>
                    <a href="#" class="discount-group-total-type discount-type-percent selected" data-group-id = "<?php echo $group->id ?>" data-item-id = "<?php echo $rand; ?>">%</a>
                  </li>
                  <li>
                    <a href="#" class="discount-group-total-type discount-type-fixed" data-group-id = "<?php echo $group->id ?>" data-item-id = "<?php echo $rand; ?>">
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
          <button type="button" onclick="add_group_item_to_table('undefined','undefined','undefined','',<?php echo $group->id; ?>); return false;" class="btn pull-right btn-info"><i class="fa fa-check"></i></button>
        </td>
        </tr>

            <?php 
            $i               = rand();
            $order = 1;
            $items_indicator = 'newitems';
            $sub_total = 0;

            foreach ($items as $k => $item) { 
              $item['id'] = $item['itemid'];
                $manual    = false;
                    $table_row = '<tr class="sortable item item'.$item['id'].'">';
                    $table_row .= '<td class="dragger">';
                    $item['id'] = $item['itemid'];
                    $item['qty'] = 1;
                    
                    $invoice_item_taxes = get_invoice_item_taxes($item['id']);
                    // passed like string
                    if ($item['id'] == 0) {
                        $invoice_item_taxes = $item['taxname'];
                        $manual             = true;
                    }
                   
                    $table_row .= '<input type="hidden" class="itemid" name="'. $items_indicator .'['  . $i . '][itemid]" value="' .$item['id']. '">';
                    $amount = $item['rate'] * $item['qty'];
                    $amount = app_format_number($amount);
                   
                    // order input
                    $table_row .= '<input type="hidden" class="item_group_id" name="'. $items_indicator .'['  . $i . '][group_id]" value="' .$group->id. '">';
                    $table_row .= '<input type="hidden" class="order" name="' . $items_indicator . '[' . $i . '][order]" value="'.$order.'">';
                    $table_row .= '</td>';
                    $table_row .= '<td class="bold description"><textarea name="' . $items_indicator . '[' . $i . '][description]" class="form-control" rows="5">' . clear_textarea_breaks($item['description']) . '</textarea></td>';
                    $table_row .= '<td><textarea name="' . $items_indicator . '[' . $i . '][long_description]" class="form-control" rows="5">' . clear_textarea_breaks($item['long_description']) . '</textarea></td>';

                    $table_row .= render_custom_fields_items_table_in($item,$items_indicator.'['.$i.']');

                    $table_row .= '<td>
                    <input type="text" name="' . $items_indicator . '[' . $i . '][part_number]" class="form-control" value="'.$item['part_number'].'">
                    </td>';

                    $table_row .= '<td><input type="number" min="0" onblur="calculate_total_group('.$item['id'].','.$group->id.');" onchange="calculate_total_group('.$item['id'].','.$group->id.');" data-quantity name="' . $items_indicator . '[' . $i . '][qty]" value="' . $item['qty'] . '" class="form-control">';

                    $unit_placeholder = '';
                    if(!$item['unit']){
                      $unit_placeholder = _l('unit');
                      $item['unit'] = '';
                    }

                    $table_row .= '<input type="text" placeholder="'.$unit_placeholder.'" name="'.$items_indicator.'['.$i.'][unit]" class="form-control input-transparent text-right" value="'.$item['unit'].'">';

                    $table_row .= '</td>';
                    $table_row .= '<td class="rate"><input type="number" data-toggle="tooltip" title="' . _l('numbers_not_formatted_while_editing') . '" onblur="calculate_total_group('.$item['id'].','.$group->id.');" onchange="calculate_total_group('.$item['id'].','.$group->id.');" name="' . $items_indicator . '[' . $i . '][rate]" value="' . $item['rate'] . '" class="form-control item-amount" data-amount = "'.$item['rate'].'"></td>';
                    $table_row .= '<td class="taxrate">' . $this->misc_model->get_taxes_dropdown_template('' . $items_indicator . '[' . $i . '][taxname][]', $invoice_item_taxes, 'invoice', $item['id'], true, $manual,$item['id']) . '</td>';


                    $table_row .= '<td class="discount">
                    <div class="input-group" id="discount-total-'.$item['id'].'">
                      <input type="number" value="0" class="form-control pull-left input-discount-group-percent shOw" min="0" max="100" name="' . $items_indicator . '[' . $i . '][discount_group_percent]" data-discount data-group-id = "'.$group->id.'">

                      <input type="number" data-toggle="tooltip" data-title="'._l('numbers_not_formatted_while_editing').'" value="0" class="form-control pull-left input-discount-group-fixed hide" min="0" name="' . $items_indicator . '[' . $i . '][discount_group_total]" data-group-id = "'.$group->id.'" data-discount>
                      <div class="input-group-addon">
                      <div class="dropdown">
                      <a class="dropdown-toggle" href="#" id="dropdown_menu_tax_total_type_1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                        <span class="discount-group-total-type-selected">%</span>
                        <span class="caret"></span>
                      </a>
                      <ul class="dropdown-menu discount-group-total-type-dropdown" id="discount-group-total-type-dropdown'.$item['id'].'" aria-labelledby="dropdown_menu_tax_total_type">
                        <li>
                          <a href="#" class="discount-group-total-type discount-type-percent selected" data-group-id = "'.$group->id .'" data-item-id = "'.$item['id'] .'">%</a>
                        </li>
                        <li>
                          <a href="#" class="discount-group-total-type discount-type-fixed" data-group-id = "'.$group->id .'" data-item-id = "'.$item['id'] .'">
                          '. _l('discount_fixed_amount').'
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                  </div>
                  </td>';

                    $table_row .= '<td class="amount-group" align="right">' . $amount . '</td>';
                    $table_row .= '<td><a href="#" class="btn btn-danger pull-left" onclick="delete_item(this,' . $item['id'] . ','.$group->id.'); return false;"><i class="fa fa-times"></i></a></td>';
                    if (isset($item['task_id'])) {
                      if (!is_array($item['task_id'])) {
                        $table_row .= form_hidden('billed_tasks['.$i.'][]', $item['task_id']);
                      } else {
                        foreach ($item['task_id'] as $task_id) {
                          $table_row .= form_hidden('billed_tasks['.$i.'][]', $task_id);
                        }
                      }
                    } else if (isset($item['expense_id'])) {
                      $table_row .= form_hidden('billed_expenses['.$i.'][]', $item['expense_id']);
                    }
                    $table_row .= '</tr>';
                    echo $table_row;
                    $i++;
                    $order++;
                    $sub_total+=$item['rate'] * $item['qty'];
               } ?>

              <tr style="border-bottom: solid 1px #f1f5f7;"> 
                <td colspan="7" align="right" style="padding: 10px 0px;"><span class="bold"><?php echo _l('invoice_subtotal'); ?> :</span></td>
                <td colspan="3" align="right" class="sub_total_group total<?php echo $group->id ?>" data-amount = "<?php echo $sub_total; ?>" style="padding: 10px 0px;">
                  <?php echo "$".app_format_number($sub_total); ?>
                </td>
              </tr>
              <div class="clearfix"></div>
           
           </tbody>
       </table>

    
      <div class="clearfix"></div>
     



