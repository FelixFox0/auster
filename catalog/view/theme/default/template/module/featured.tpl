<div class="product-home__products">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-4 col-md-4 col-sm-6 col-xs-12">
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
<?php //var_dump($product['price']); ?>
        <?php if ($product['price']) { ?>
        <?php if ($product['price'] !== "0 грн.") { ?>
        <p class="price">
          <i class="ic-bage"></i>
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
        </p>
        <?php }else{ ?>
            <p><?php echo $text_msg; ?></p>
        <?php } ?>
        <?php } ?>
      </div>
      <div class="button-group">
        <a href="<?php echo $product['href']; ?>"><?php echo $text_show; ?></a>
        <?php if ($product['price'] !== "0 грн.") { ?>
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="ic-cart2"></i></button>
        <?php } ?>
      </div>
    </div>
  </div>
  <?php } ?>
</div>
