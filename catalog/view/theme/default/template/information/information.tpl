<?php echo $header; ?>
<div class="static-page">
  <div class="container">
    <?php echo $column_left; ?>
      <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-sm-6'; ?>
      <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-sm-9'; ?>
      <?php } else { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } ?>
      <div id="content"><?php echo $content_top; ?>
        <div class="title title--green">
          <h1><?php echo $heading_title; ?></h1>
        </div>
        <?php echo $description; ?><?php echo $content_bottom; ?>
        </div>
      <?php echo $column_right; ?>
  </div>
</div>
<?php echo $footer; ?>