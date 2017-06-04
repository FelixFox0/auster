<label><?php if ($text_agree) { ?>
  <?php echo $text_agree; ?>
  <?php if ($agree) { ?>
  <input type="checkbox" name="agree" value="1" checked="checked" />
  <?php } else { ?>
  <input type="checkbox" name="agree" value="1" />
  <?php } ?>
<?php } ?></label>
<div class="confirm text-right"><a id="button-payment-method" class="button back-button"><i class="ic-back _reverse"></i><?php echo $button_continue; ?></a></div>