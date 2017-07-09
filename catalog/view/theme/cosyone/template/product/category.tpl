<?php echo $header; ?>
<div class="container">
  <div class="row">
  <div class="title">
    <h2><?php echo $text_prod; ?></h2>
  </div>

  <?php echo $column_left; ?>
<?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
	
    <div id="content" class="<?php echo $class; ?> <?php echo $cosyone_grid_category; ?>">
    <?php echo $content_top; ?>
  
  <h1 ><?php echo $heading_title; ?></h1>
   <?php if ($thumb || $description) { ?>   
  <div class="category-info">   
  <?php if ($cosyone_category_thumb == 'enabled' && ($thumb)) { ?>    
    <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>    
    <?php } ?>    
    <?php if ($description) { ?>    
    <?php echo $description; ?>   
    <?php } ?>    
  </div>    
  <?php } ?>    
      
  <?php if ($categories && $cosyone_category_refine) { ?>   
  <div class="categories-block">
    <div class="box-heading"><?php echo $text_refine; ?></div>    
  <div class="grid_holder">   
  <div class="category-grid <?php echo $cosyone_category_per_row; ?>">    
      
  <?php foreach ($categories as $category) { ?><!--   
    --><div class="item contrast_font">   
    <?php if ($category['thumb']) { ?>    
  <div class="image"><a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" /></a></div>    
   <?php } ?>    
     <div class="name"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></div>   
     </div>    
     <?php } ?>    
       </div>    
       </div><!--      
   -->
  </div>
  <?php } ?>

  <?php if ($products) { ?>

  <div id="main" class="product-<?php echo $cosyone_default_view; ?>">
  <div class="grid_holder">
    <?php foreach ($products as $product) { ?>
      <div class="product-layout col-lg-4 col-md-4 col-sm-6 col-xs-12">
        <div class="product-thumb transition">
          <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
          <div class="caption">
            <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>

            <?php if ($product['price']) { ?>
            <p class="price">
              <i class="ic-bage"></i>
              <?php if (!$product['special']) { ?>
              <?php echo $product['price']; ?>
              <?php } else { ?>
              <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
              <?php } ?>
            </p>
            <?php } ?>
          </div>
          <div class="button-group">
            <a href="<?php echo $product['href']; ?>"><?php echo $text_show; ?></a>
            <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="ic-cart2"></i></button>
          </div>
        </div>
      </div>
    <?php } ?>
    </div>
    </div>
  
  <div class="pagination_holder row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
  
  <?php } ?>
  <?php if (!$categories && !$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="pull-right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php } ?>
  <?php echo $content_bottom; ?></div>
  <?php echo $column_right; ?></div>
  

<script type="text/javascript">
$(function() {
	var pv = $.cookie('product_view');
	if (pv == 'g') {
		$('#main').removeClass();
		$('#main').addClass('product-grid');
		$('#list_view_icon').removeClass();
		$('#grid_view_icon').addClass('active');
	} else if (pv == 'l') {
		$('#main').removeClass();
		$('#main').addClass('product-list');
		$('#grid_view_icon').removeClass();
		$('#list_view_icon').addClass('active');
	} else {
		$('#<?php echo $cosyone_default_view?>_view_icon').addClass('active');
	}
});
$(document).ready(function() {
	$('#grid_view_icon').click(function() {
		$(this).addClass('active');
		$('#list_view_icon').removeClass();
		$('#main').fadeOut(300, function() {
			$(this).removeClass();
			$(this).addClass('product-grid').fadeIn(300);
			$.cookie('product_view', 'g');
		});
		return false;
	});
	$('#list_view_icon').click(function() {
		$(this).addClass('active');
		$('#grid_view_icon').removeClass();
		$('#main').fadeOut(300, function() {
			$(this).removeClass();
			$(this).addClass('product-list').fadeIn(300);
			$.cookie('product_view', 'l');
		});
		return false;
	});
});
</script>

</div>
<?php echo $footer; ?>