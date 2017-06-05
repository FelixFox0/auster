<?php if($cosyone_header_login == 'enabled'){ ?>
<?php if (!$logged) { ?>

	<a href="/login" class="flex"><i class="ic-man"></i><span><?php echo $text_login; ?></span></a>

<?php } else { ?>
  	<a class="log_link flex" href="<?php echo $logout_link; ?>"><i class="ic-man"></i><span><?php echo $text_logout; ?></span></a>
<?php } ?>
<?php } ?>