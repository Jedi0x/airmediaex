<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<!-- bitsclan solutions -->
<div role="tabpanel" class="tab-pane" id="pdf_customizations">
    <p class="text-muted">
        <?php echo _l('settings_invoice_quote_pdf_note'); ?>
    </p>
    

    <p class="bold"><?php echo _l('invoice_add_note'); ?></p>
    <?php

    /* 
    Invoice
     - Standard note
     - Shipping terms
     - Payment terms
     - Labour terms
     - Terms & conditions terms 
    */

    $invoice_note = get_option('invoice_note_standard');

    echo render_textarea('settings[invoice_note_standard]','',$invoice_note,array('rows'=>6,'placeholder'=>_l('lead_add_edit_add_note'),'data-task-ae-editor'=>true, !is_mobile() ? 'onclick' : 'onfocus'=>(!isset($invoice_note) || isset($invoice_note) && $invoice_note == '' ? 'init_editor(\'.tinymce-invoice\', {height:300, auto_focus: true});' : '')),array(),'no-mbot','tinymce-invoice'); ?>

   


    <?php $value = get_option('invoice_terms'); ?>
    <?php echo render_textarea('settings[invoice_terms]','invoice_terms',$value,array(),array(),'mtop15'); ?>


    <?php $value = get_option('invoice_shipping_terms'); ?>
    <?php echo render_textarea('settings[invoice_shipping_terms]','invoice_shipping_terms',$value,array(),array(),'mtop15'); ?>


    <?php $value = get_option('invoice_payment_terms'); ?>
    <?php echo render_textarea('settings[invoice_payment_terms]','invoice_payment_terms',$value,array(),array(),'mtop15'); ?>

    <?php $value = get_option('invoice_labour_terms'); ?>
    <?php echo render_textarea('settings[invoice_labour_terms]','invoice_labour_terms',$value,array(),array(),'mtop15'); ?>


     <hr />


    <p class="bold"><?php echo _l('estimate_add_note'); ?></p>
    <?php

    /* 
    Estimate
     - Standard note
     - Shipping terms
     - Payment terms
     - Labour terms
     - Terms & conditions terms 
    */



    $estimate_note = get_option('estimate_note_standard');
    echo render_textarea('settings[estimate_note_standard]','',$estimate_note,array('rows'=>6,'placeholder'=>_l('lead_add_edit_add_note'),'data-task-ae-editor'=>true, !is_mobile() ? 'onclick' : 'onfocus'=>(!isset($estimate_note) || isset($estimate_note) && $estimate_note == '' ? 'init_editor(\'.tinymce-estimate\', {height:300, auto_focus: true});' : '')),array(),'no-mbot','tinymce-estimate'); ?>


    <?php $value = get_option('estimate_terms'); ?>
    <?php echo render_textarea('settings[estimate_terms]','estimate_terms',$value,array(),array(),'mtop15'); ?>


    <?php $value = get_option('estimate_shipping_terms'); ?>
    <?php echo render_textarea('settings[estimate_shipping_terms]','estimate_shipping_terms',$value,array(),array(),'mtop15'); ?>


    <?php $value = get_option('estimate_payment_terms'); ?>
    <?php echo render_textarea('settings[estimate_payment_terms]','estimate_payment_terms',$value,array(),array(),'mtop15'); ?>

    <?php $value = get_option('estimate_labour_terms'); ?>
    <?php echo render_textarea('settings[estimate_labour_terms]','estimate_labour_terms',$value,array(),array(),'mtop15'); ?>


    
    <hr />

    

     

   

   
</div>
