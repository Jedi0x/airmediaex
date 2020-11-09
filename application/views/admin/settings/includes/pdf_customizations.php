<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<!-- bitsclan solutions -->
<div role="tabpanel" class="tab-pane" id="pdf_customizations">
    <p class="text-muted">
        <?php echo _l('settings_invoice_quote_pdf_note'); ?>
    </p>
    

    <p class="bold"><?php echo _l('invoice_add_note'); ?></p>
    <?php

    $invoice_note = get_option('invoice_note_standard');

    echo render_textarea('settings[invoice_note_standard]','',$invoice_note,array('rows'=>6,'placeholder'=>_l('lead_add_edit_add_note'),'data-task-ae-editor'=>true, !is_mobile() ? 'onclick' : 'onfocus'=>(!isset($invoice_note) || isset($invoice_note) && $invoice_note == '' ? 'init_editor(\'.tinymce-invoice\', {height:300, auto_focus: true});' : '')),array(),'no-mbot','tinymce-invoice'); ?>

    <hr />
    <p class="bold"><?php echo _l('estimate_add_note'); ?></p>
    <?php

    $estimate_note = get_option('estimate_note_standard');
    echo render_textarea('settings[estimate_note_standard]','',$estimate_note,array('rows'=>6,'placeholder'=>_l('lead_add_edit_add_note'),'data-task-ae-editor'=>true, !is_mobile() ? 'onclick' : 'onfocus'=>(!isset($estimate_note) || isset($estimate_note) && $estimate_note == '' ? 'init_editor(\'.tinymce-estimate\', {height:300, auto_focus: true});' : '')),array(),'no-mbot','tinymce-estimate'); ?>
    
    
   
</div>
