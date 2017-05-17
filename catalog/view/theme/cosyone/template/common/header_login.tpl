<?php if($cosyone_header_login == 'enabled'){ ?>
<?php if (!$logged) { ?>

	<span><?php echo $text_login; ?></span>

<?php } else { ?>
	<div class="login_drop_heading contrast_font">
  	<a class="log_link" href="<?php echo $logout_link; ?>"><i class="fa fa-user"></i> <?php echo $text_logout; ?></a>
    </div>
<?php } ?>
<?php } ?>