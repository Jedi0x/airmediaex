<?php 

function created_backup_options()
{
	$create_options = array();
	$create_options[0]['backup_create_id'] = 1;
	$create_options[0]['backup_name'] = 'Every Hour';

	$create_options[1]['backup_create_id'] = 2;
	$create_options[1]['backup_name'] = 'Every Day';

	$create_options[2]['backup_create_id'] = 3;
	$create_options[2]['backup_name'] = 'Every Week';

	$create_options[3]['backup_create_id'] = 4;
	$create_options[3]['backup_name'] = 'Every Month';

	return $create_options;
}


function remove_backup_options()
{
	$remove_options = array();

	$remove_options[0]['backup_create_id'] = 1;
	$remove_options[0]['backup_name'] = 'After Every Day';

	$remove_options[1]['backup_create_id'] = 2;
	$remove_options[1]['backup_name'] = 'After Every Week';

	$remove_options[2]['backup_create_id'] = 3;
	$remove_options[2]['backup_name'] = 'After Every Month';

	$remove_options[3]['backup_create_id'] = 4;
	$remove_options[3]['backup_name'] = 'After Every Year';

	return $remove_options;
}


if (!function_exists('get_array_value')) {

    function get_array_value(array $array, $key) {
        if (array_key_exists($key, $array)) {
            return $array[$key];
        }
    }

}


function update_options($options)
{
	foreach ($options as $key => $value) {
		update_option($key, $value);
	}
    return true;
}


/**
 * For more readable code created this function to render only yes or not values for settings
 * @param  string $option_value option from database to compare
 * @param  string $label        input label
 * @param  string $tooltip      tooltip
 */
function render_yes_no_option_backup($option_value, $label, $tooltip = '', $replace_yes_text = '', $replace_no_text = '', $replace_1 = '', $replace_0 = '')
{
    ob_start(); ?>
    <div class="form-group">
        <label for="<?php echo $option_value; ?>" class="control-label clearfix">
            <?php echo($tooltip != '' ? '<i class="fa fa-question-circle" data-toggle="tooltip" data-title="' . _l($tooltip, '', false) . '"></i> ': '') . _l($label, '', false); ?>
        </label>
        <div class="radio radio-primary radio-inline">
            <input type="radio" id="y_opt_1_<?php echo $label; ?>" name="<?php echo $option_value; ?>" value="<?php echo $replace_1 == '' ? 1 : $replace_1; ?>" <?php if (get_option($option_value) == ($replace_1 == '' ? '1' : $replace_1)) {
        echo 'checked';
    } ?>>
            <label for="y_opt_1_<?php echo $label; ?>">
                <?php echo $replace_yes_text == '' ? _l('settings_yes') : $replace_yes_text; ?>
            </label>
        </div>
        <div class="radio radio-primary radio-inline">
                <input type="radio" id="y_opt_2_<?php echo $label; ?>" name="<?php echo $option_value; ?>" value="<?php echo $replace_0 == '' ? 0 : $replace_0; ?>" <?php if (get_option($option_value) == ($replace_0 == '' ? '0' : $replace_0)) {
        echo 'checked';
    } ?>>
                <label for="y_opt_2_<?php echo $label; ?>">
                    <?php echo $replace_no_text == '' ? _l('settings_no') : $replace_no_text; ?>
                </label>
        </div>
    </div>
    <?php
    $settings = ob_get_contents();
    ob_end_clean();
    echo $settings;
}
