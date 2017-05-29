<?php echo $header; ?>
<div class="home-slider-wrapper">
  <div class="home-slider">
    <div class="container home-slider__container">
      <?php echo $home_top_top; ?>
    </div>
  </div>
</div>
<script type="text/javascript">
	$("li.home").addClass("current");
	$(".breadcrumb_wrapper").hide();
</script>
<div class="main">
  <div class="home_top_wrapper">
<?php echo $home_top_left; ?><?php echo $home_top_center; ?><?php echo $home_top_right; ?>
</div>
<div class="clearfix product-home">
  <div class="container">
    <div class="col">
      <?php echo $column_left; ?>
      <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-sm-6'; ?>
      <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-sm-9'; ?>
      <?php } else { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } ?>
    </div>
    <div class="col">
      
    </div>
  </div>
</div>
  <div class="row">
    <div id="content" class="<?php echo $class; ?> homepage">
    <?php echo $content_top; ?>
     <?php echo $content_bottom_half; ?>
     <?php echo $content_bottom; ?>
     </div>
    <?php echo $column_right; ?>
    </div>
</div>

<div class="consult">
  <div class="container consult__container">
    <div class="consult__question">
      <h2>Есть <span>вопросы</span></h2>
      <p>Наши специалисты с удовольствием ответят на любой ваш вопрос!</p>
    </div>
    <div class="consult__form">
      
    </div>
  </div>
</div>

<div class="oficial-destr">
  <div class="container oficial-destr__container">
    <div class="title oficial-destr__title">
      <h2>официальные дистрибьюторы линейных диффузоров</h2>
    </div>
    <div class="oficial-destr__images">
      <img src="/image/distributor.jpg" alt="distributor">
      <img src="/image/distributor2.png" alt="distributor">
    </div>
  </div>
</div>
<?php echo $footer; ?> 