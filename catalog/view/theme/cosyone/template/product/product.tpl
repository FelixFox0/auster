<?php echo $header; ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js"></script>

 
<?php 

//function ralcolorpicker () {

    $ralclassic = [
        'yellow_and_beige' => [
            'name' => 'Yellow and Beige','ral-colorpicker_header_yellow_and_beige',
            'colors' => [
                ['name' => 'RAL 1000', 'hex' => '#BEBD7F'],
                ['name' => 'RAL 1001', 'hex' => '#C2B078'],
                ['name' => 'RAL 1002', 'hex' => '#C6A664'],
                ['name' => 'RAL 1003', 'hex' => '#E5BE01'],
                ['name' => 'RAL 1004', 'hex' => '#CDA434'],
                ['name' => 'RAL 1005', 'hex' => '#A98307'],
                ['name' => 'RAL 1006', 'hex' => '#E4A010'],
                ['name' => 'RAL 1007', 'hex' => '#DC9D00'],
                ['name' => 'RAL 1011', 'hex' => '#8A6642'],
                ['name' => 'RAL 1012', 'hex' => '#C7B446'],
                ['name' => 'RAL 1013', 'hex' => '#EAE6CA'],
                ['name' => 'RAL 1014', 'hex' => '#E1CC4F'],
                ['name' => 'RAL 1015', 'hex' => '#E6D690'],
                ['name' => 'RAL 1016', 'hex' => '#EDFF21'],
                ['name' => 'RAL 1017', 'hex' => '#F5D033'],
                ['name' => 'RAL 1018', 'hex' => '#F8F32B'],
                ['name' => 'RAL 1019', 'hex' => '#9E9764'],
                ['name' => 'RAL 1020', 'hex' => '#999950'],
                ['name' => 'RAL 1021', 'hex' => '#F3DA0B'],
                ['name' => 'RAL 1023', 'hex' => '#FAD201'],
                ['name' => 'RAL 1024', 'hex' => '#AEA04B'],
                ['name' => 'RAL 1026', 'hex' => '#FFFF00'],
                ['name' => 'RAL 1027', 'hex' => '#9D9101'],
                ['name' => 'RAL 1028', 'hex' => '#F4A900'],
                ['name' => 'RAL 1032', 'hex' => '#D6AE01'],
                ['name' => 'RAL 1033', 'hex' => '#F3A505'],
                ['name' => 'RAL 1034', 'hex' => '#EFA94A'],
                ['name' => 'RAL 1035', 'hex' => '#6A5D4D'],
                ['name' => 'RAL 1036', 'hex' => '#705335'],
                ['name' => 'RAL 1037', 'hex' => '#F39F18'],
            ],
        ],
        'orange' => [
            'name' => 'Orange','ral-colorpicker_header_orange',
            'colors' => [
                ['name' => 'RAL 2000', 'hex' => '#ED760E'],
                ['name' => 'RAL 2001', 'hex' => '#C93C20'],
                ['name' => 'RAL 2002', 'hex' => '#CB2821'],
                ['name' => 'RAL 2003', 'hex' => '#FF7514'],
                ['name' => 'RAL 2004', 'hex' => '#F44611'],
                ['name' => 'RAL 2005', 'hex' => '#FF2301'],
                ['name' => 'RAL 2007', 'hex' => '#FFA420'],
                ['name' => 'RAL 2008', 'hex' => '#F75E25'],
                ['name' => 'RAL 2009', 'hex' => '#F54021'],
                ['name' => 'RAL 2010', 'hex' => '#D84B20'],
                ['name' => 'RAL 2011', 'hex' => '#EC7C26'],
                ['name' => 'RAL 2012', 'hex' => '#E55137'],
                ['name' => 'RAL 2013', 'hex' => '#C35831'],
            ],
        ],
        'red' => [
            'name' => 'Red','ral-colorpicker_header_red',
            'colors' => [
                ['name' => 'RAL 3000', 'hex' => '#AF2B1E'],
                ['name' => 'RAL 3001', 'hex' => '#A52019'],
                ['name' => 'RAL 3002', 'hex' => '#A2231D'],
                ['name' => 'RAL 3003', 'hex' => '#9B111E'],
                ['name' => 'RAL 3004', 'hex' => '#75151E'],
                ['name' => 'RAL 3005', 'hex' => '#5E2129'],
                ['name' => 'RAL 3007', 'hex' => '#412227'],
                ['name' => 'RAL 3009', 'hex' => '#642424'],
                ['name' => 'RAL 3011', 'hex' => '#781F19'],
                ['name' => 'RAL 3012', 'hex' => '#C1876B'],
                ['name' => 'RAL 3013', 'hex' => '#A12312'],
                ['name' => 'RAL 3014', 'hex' => '#D36E70'],
                ['name' => 'RAL 3015', 'hex' => '#EA899A'],
                ['name' => 'RAL 3016', 'hex' => '#B32821'],
                ['name' => 'RAL 3017', 'hex' => '#E63244'],
                ['name' => 'RAL 3018', 'hex' => '#D53032'],
                ['name' => 'RAL 3020', 'hex' => '#CC0605'],
                ['name' => 'RAL 3022', 'hex' => '#D95030'],
                ['name' => 'RAL 3024', 'hex' => '#F80000'],
                ['name' => 'RAL 3026', 'hex' => '#FE0000'],
                ['name' => 'RAL 3027', 'hex' => '#C51D34'],
                ['name' => 'RAL 3028', 'hex' => '#CB3234'],
                ['name' => 'RAL 3031', 'hex' => '#B32428'],
                ['name' => 'RAL 3032', 'hex' => '#721422'],
                ['name' => 'RAL 3033', 'hex' => '#B44C43'],
            ],
        ],
        'violet' => [
            'name' => 'Violet','ral-colorpicker_header_violet',
            'colors' => [
                ['name' => 'RAL 4001', 'hex' => '#6D3F5B'],
                ['name' => 'RAL 4002', 'hex' => '#922B3E'],
                ['name' => 'RAL 4003', 'hex' => '#DE4C8A'],
                ['name' => 'RAL 4004', 'hex' => '#641C34'],
                ['name' => 'RAL 4005', 'hex' => '#6C4675'],
                ['name' => 'RAL 4006', 'hex' => '#A03472'],
                ['name' => 'RAL 4007', 'hex' => '#4A192C'],
                ['name' => 'RAL 4008', 'hex' => '#924E7D'],
                ['name' => 'RAL 4009', 'hex' => '#A18594'],
                ['name' => 'RAL 4010', 'hex' => '#CF3476'],
                ['name' => 'RAL 4011', 'hex' => '#8673A1'],
                ['name' => 'RAL 4012', 'hex' => '#6C6874'],
            ],
        ],
        'blue' => [
            'name' => 'Blue','ral-colorpicker_header_blue',
            'colors' => [
                ['name' => 'RAL 5001', 'hex' => '#1F3438'],
                ['name' => 'RAL 5002', 'hex' => '#20214F'],
                ['name' => 'RAL 5003', 'hex' => '#1D1E33'],
                ['name' => 'RAL 5004', 'hex' => '#18171C'],
                ['name' => 'RAL 5005', 'hex' => '#1E2460'],
                ['name' => 'RAL 5007', 'hex' => '#3E5F8A'],
                ['name' => 'RAL 5008', 'hex' => '#26252D'],
                ['name' => 'RAL 5009', 'hex' => '#025669'],
                ['name' => 'RAL 5010', 'hex' => '#0E294B'],
                ['name' => 'RAL 5011', 'hex' => '#231A24'],
                ['name' => 'RAL 5012', 'hex' => '#3B83BD'],
                ['name' => 'RAL 5013', 'hex' => '#1E213D'],
                ['name' => 'RAL 5014', 'hex' => '#606E8C'],
                ['name' => 'RAL 5015', 'hex' => '#2271B3'],
                ['name' => 'RAL 5017', 'hex' => '#063971'],
                ['name' => 'RAL 5018', 'hex' => '#3F888F'],
                ['name' => 'RAL 5019', 'hex' => '#1B5583'],
                ['name' => 'RAL 5020', 'hex' => '#1D334A'],
                ['name' => 'RAL 5021', 'hex' => '#256D7B'],
                ['name' => 'RAL 5022', 'hex' => '#252850'],
                ['name' => 'RAL 5023', 'hex' => '#49678D'],
                ['name' => 'RAL 5024', 'hex' => '#5D9B9B'],
                ['name' => 'RAL 5025', 'hex' => '#2A6478'],
                ['name' => 'RAL 5026', 'hex' => '#102C54'],
            ],
        ],
        'green' => [
            'name' => 'Green','ral-colorpicker_header_green',
            'colors' => [
                ['name' => 'RAL 6000', 'hex' => '#316650'],
                ['name' => 'RAL 6001', 'hex' => '#287233'],
                ['name' => 'RAL 6002', 'hex' => '#2D572C'],
                ['name' => 'RAL 6003', 'hex' => '#424632'],
                ['name' => 'RAL 6004', 'hex' => '#1F3A3D'],
                ['name' => 'RAL 6005', 'hex' => '#2F4538'],
                ['name' => 'RAL 6006', 'hex' => '#3E3B32'],
                ['name' => 'RAL 6007', 'hex' => '#343B29'],
                ['name' => 'RAL 6008', 'hex' => '#39352A'],
                ['name' => 'RAL 6009', 'hex' => '#31372B'],
                ['name' => 'RAL 6010', 'hex' => '#35682D'],
                ['name' => 'RAL 6011', 'hex' => '#587246'],
                ['name' => 'RAL 6012', 'hex' => '#343E40'],
                ['name' => 'RAL 6013', 'hex' => '#6C7156'],
                ['name' => 'RAL 6014', 'hex' => '#47402E'],
                ['name' => 'RAL 6015', 'hex' => '#3B3C36'],
                ['name' => 'RAL 6016', 'hex' => '#1E5945'],
                ['name' => 'RAL 6017', 'hex' => '#4C9141'],
                ['name' => 'RAL 6018', 'hex' => '#57A639'],
                ['name' => 'RAL 6019', 'hex' => '#BDECB6'],
                ['name' => 'RAL 6020', 'hex' => '#2E3A23'],
                ['name' => 'RAL 6021', 'hex' => '#89AC76'],
                ['name' => 'RAL 6022', 'hex' => '#25221B'],
                ['name' => 'RAL 6024', 'hex' => '#308446'],
                ['name' => 'RAL 6025', 'hex' => '#3D642D'],
                ['name' => 'RAL 6026', 'hex' => '#015D52'],
                ['name' => 'RAL 6027', 'hex' => '#84C3BE'],
                ['name' => 'RAL 6028', 'hex' => '#2C5545'],
                ['name' => 'RAL 6029', 'hex' => '#20603D'],
                ['name' => 'RAL 6032', 'hex' => '#317F43'],
                ['name' => 'RAL 6033', 'hex' => '#497E76'],
                ['name' => 'RAL 6034', 'hex' => '#7FB5B5'],
                ['name' => 'RAL 6035', 'hex' => '#1C542D'],
                ['name' => 'RAL 6036', 'hex' => '#193737'],
                ['name' => 'RAL 6037', 'hex' => '#008F39'],
                ['name' => 'RAL 6038', 'hex' => '#00BB2D'],
            ],
        ],
        'grey' => [
            'name' => 'Grey','ral-colorpicker_header_grey',
            'colors' => [
                ['name' => 'RAL 7000', 'hex' => '#78858B'],
                ['name' => 'RAL 7001', 'hex' => '#8A9597'],
                ['name' => 'RAL 7002', 'hex' => '#7E7B52'],
                ['name' => 'RAL 7003', 'hex' => '#6C7059'],
                ['name' => 'RAL 7004', 'hex' => '#969992'],
                ['name' => 'RAL 7005', 'hex' => '#646B63'],
                ['name' => 'RAL 7006', 'hex' => '#6D6552'],
                ['name' => 'RAL 7008', 'hex' => '#6A5F31'],
                ['name' => 'RAL 7009', 'hex' => '#4D5645'],
                ['name' => 'RAL 7010', 'hex' => '#4C514A'],
                ['name' => 'RAL 7011', 'hex' => '#434B4D'],
                ['name' => 'RAL 7012', 'hex' => '#4E5754'],
                ['name' => 'RAL 7013', 'hex' => '#464531'],
                ['name' => 'RAL 7015', 'hex' => '#434750'],
                ['name' => 'RAL 7016', 'hex' => '#293133'],
                ['name' => 'RAL 7021', 'hex' => '#23282B'],
                ['name' => 'RAL 7022', 'hex' => '#332F2C'],
                ['name' => 'RAL 7023', 'hex' => '#686C5E'],
                ['name' => 'RAL 7024', 'hex' => '#474A51'],
                ['name' => 'RAL 7026', 'hex' => '#2F353B'],
                ['name' => 'RAL 7030', 'hex' => '#8B8C7A'],
                ['name' => 'RAL 7031', 'hex' => '#474B4E'],
                ['name' => 'RAL 7032', 'hex' => '#B8B799'],
                ['name' => 'RAL 7033', 'hex' => '#7D8471'],
                ['name' => 'RAL 7034', 'hex' => '#8F8B66'],
                ['name' => 'RAL 7035', 'hex' => '#D7D7D7'],
                ['name' => 'RAL 7036', 'hex' => '#7F7679'],
                ['name' => 'RAL 7037', 'hex' => '#7D7F7D'],
                ['name' => 'RAL 7038', 'hex' => '#B5B8B1'],
                ['name' => 'RAL 7039', 'hex' => '#6C6960'],
                ['name' => 'RAL 7040', 'hex' => '#9DA1AA'],
                ['name' => 'RAL 7042', 'hex' => '#8D948D'],
                ['name' => 'RAL 7043', 'hex' => '#4E5452'],
                ['name' => 'RAL 7044', 'hex' => '#CAC4B0'],
                ['name' => 'RAL 7045', 'hex' => '#909090'],
                ['name' => 'RAL 7046', 'hex' => '#82898F'],
                ['name' => 'RAL 7047', 'hex' => '#D0D0D0'],
                ['name' => 'RAL 7048', 'hex' => '#898176'],
            ],
        ],
        'brown' => [
            'name' => 'Brown','ral-colorpicker_header_brown',
            'colors' => [
                ['name' => 'RAL 8000', 'hex' => '#826C34'],
                ['name' => 'RAL 8001', 'hex' => '#955F20'],
                ['name' => 'RAL 8002', 'hex' => '#6C3B2A'],
                ['name' => 'RAL 8003', 'hex' => '#734222'],
                ['name' => 'RAL 8004', 'hex' => '#8E402A'],
                ['name' => 'RAL 8007', 'hex' => '#59351F'],
                ['name' => 'RAL 8008', 'hex' => '#6F4F28'],
                ['name' => 'RAL 8011', 'hex' => '#5B3A29'],
                ['name' => 'RAL 8012', 'hex' => '#592321'],
                ['name' => 'RAL 8014', 'hex' => '#382C1E'],
                ['name' => 'RAL 8015', 'hex' => '#633A34'],
                ['name' => 'RAL 8016', 'hex' => '#4C2F27'],
                ['name' => 'RAL 8017', 'hex' => '#45322E'],
                ['name' => 'RAL 8019', 'hex' => '#403A3A'],
                ['name' => 'RAL 8022', 'hex' => '#212121'],
                ['name' => 'RAL 8023', 'hex' => '#A65E2E'],
                ['name' => 'RAL 8024', 'hex' => '#79553D'],
                ['name' => 'RAL 8025', 'hex' => '#755C48'],
                ['name' => 'RAL 8028', 'hex' => '#4E3B31'],
                ['name' => 'RAL 8029', 'hex' => '#763C28'],
            ],
        ],
        'white_and_black' => [
            'name' => 'White and Black','ral-colorpicker_header_white_and_black',
            'colors' => [
                ['name' => 'RAL 9001', 'hex' => '#FDF4E3'],
                ['name' => 'RAL 9002', 'hex' => '#E7EBDA'],
                ['name' => 'RAL 9003', 'hex' => '#F4F4F4'],
                ['name' => 'RAL 9004', 'hex' => '#282828'],
                ['name' => 'RAL 9005', 'hex' => '#0A0A0A'],
                ['name' => 'RAL 9006', 'hex' => '#A5A5A5'],
                ['name' => 'RAL 9007', 'hex' => '#8F8F8F'],
                ['name' => 'RAL 9010', 'hex' => '#FFFFFF'],
                ['name' => 'RAL 9011', 'hex' => '#1C1C1C'],
                ['name' => 'RAL 9016', 'hex' => '#F6F6F6'],
                ['name' => 'RAL 9017', 'hex' => '#1E1E1E'],
                ['name' => 'RAL 9018', 'hex' => '#D7D7D7'],
                ['name' => 'RAL 9022', 'hex' => '#9C9C9C'],
                ['name' => 'RAL 9023', 'hex' => '#828282'],
            ],
        ],
    ];
    $output = '';
    //$output = '<select class="ralcp-select">';
    foreach($ralclassic as $optgroup) {
        //if($atts['headers'] == 1) { $output .= '<optgroup label="'.$optgroup['name'].'">'; }
        foreach($optgroup['colors'] as $color) {
            $output .= '<option value="'.$color['name'].'" hex="'.$color['hex'].'" style="background-color:'.$color['hex'].'">'.$color['name'].'</option>';
        }
        //if($atts['headers'] == 1) { $output .= '</optgroup>'; }
    }
    //$output .= '</select>';

    
//}

?>
<?php //echo $output; ?>
<?php //echo ralcolorpicker(); ?>


<div id="product1" class="prod container">

   <div class="row"><?php echo $column_left; ?>
   <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
<div id="content" class="<?php echo $class; ?> product" itemscope itemtype="http://data-vocabulary.org/Product">
  <?php echo $content_top; ?>
  
  <div class="clearfix product-info">
    <?php if ($thumb || $images) { ?>
    <div class="left">
      <?php if ($thumb) { ?>
      <div class="image">
      <?php if ($cosyone_product_zoom) { ?>
      <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom" style="cursor:move" rel="position:'inside', showTitle: false" id='zoom1'><img itemprop="image" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
      <!-- zoom link-->
      <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" id="zoom-btn" class="colorbox" rel="colorbox"><i class="fa fa-search-plus"></i></a>
      <?php } else { ?>
      <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox"><img itemprop="image" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
      <?php } ?>
      
      <?php if ($cosyone_percentage_sale_badge == 'enabled') { ?>
      <?php if (!$special) { ?>
        <?php } else { ?>
         <div class="sale_badge">-<?php echo $sales_percantage_main; ?>%</div>
        <?php } ?>
        <?php } ?>
      </div>
      
      <?php } ?>
      
      <?php if ($images) { ?>

      <div class="image-additional prod" style="width:<?php echo $thumb_width; ?>px; height:<?php echo $additional_height; ?>px">      
      <ul class="image_carousel owl-carousel">
       <!-- Additional images -->
        <?php foreach ($images as $image) { ?>
        <li class="item">
        <?php if ($cosyone_product_zoom) { ?>
        <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom-gallery colorbox" rel="useZoom: 'zoom1', smallImage: '<?php echo $image['thumb']; ?>'">
        <?php } else { ?>
        <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="colorbox" rel="useZoom: 'zoom1', smallImage: '<?php echo $image['thumb']; ?>'">
        <?php } ?>
        <img src="<?php echo $image['small']; ?>" title="<?php echo $heading_title; ?>" width="<?php echo $additional_width; ?>" height="<?php echo $additional_height; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
        <?php } ?>
        
        <!-- Show even the main image among the additional if  -->
         <?php if ($cosyone_product_zoom) { ?>
       <li><a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom-gallery colorbox" rel="useZoom: 'zoom1', smallImage: '<?php echo $thumb; ?>'"><img src="<?php echo $small; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" width="<?php echo $additional_width; ?>" height="<?php echo $additional_height; ?>"/></a></li>
        <?php } ?>
        </ul>
        
      </div>
      <?php } ?>
      <?php if($cosyone_product_share == 'image'){ ?>
     <!-- AddThis Button START -->
     <div class="addthis_toolbox addthis_default_style addthis_32x32_style">
			<a class="addthis_button_preferred_1"></a>
			<a class="addthis_button_preferred_2"></a>
			<a class="addthis_button_preferred_3"></a>
			<a class="addthis_button_preferred_4"></a>
			<a class="addthis_button_compact"></a>
            <a class="addthis_counter addthis_bubble_style"></a>
			</div>
	<!-- AddThis Button END -->
		<?php } ?>
    </div>
    <?php } ?>
   <div class="right" style="margin-<?php if ($direction == 'rtl') { echo 'right'; } else { echo 'left'; } ?>:<?php echo $thumb_width; ?>px">
      
      <h1 itemprop="name"><?php echo $heading_title; ?></h1>
      <p><a class="btn show-catalog" target="_blank" href="http://auster-stone.com.ua/shd20">Смотреть каталог </a></p>



        <div class="cart">
         
      <?php if ($price) { ?> 
      <div class="price">
        
        <?php if (!$special) { ?>
        <i class="ic-bage"></i><span itemprop="price"><?php echo $price; ?></span>
        <?php } else { ?>
        <?php if (!$cosyone_product_yousave) { ?>
        <i class="ic-bage"></i><span class="price-old"><?php echo $price; ?></span> <span class="price-new" itemprop="price"><?php echo $special; ?></span>
        <?php } ?>
        <?php } ?>
          
      </div> 
     </span> <!-- rich snippet ends -->
      <?php } ?>
        
          
          <div class="cart__inner">
            <div class="counter">
              <a class="quantity_button minus icon">-</a><input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="quantity" /><a class="quantity_button plus icon">+</a>
           
            <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
            </div>

            <button type="submit" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="button contrast"><i class="fa fa-shopping-cart"></i> <?php echo $button_cart; ?></button>
          </div>
        
        
        
       </div> <!-- Cart ends -->
        
        <?php if ($price) { ?>
        <meta itemprop="currency" content="<?php echo $currency_code; ?>" />
        <span itemprop="offerDetails" itemscope itemtype="http://data-vocabulary.org/Offer"><!-- Rich snippets start -->
        <?php if (($special) && ($cosyone_product_yousave)) { ?>
        
        <div class="extended_offer">
        
        <div class="price-new"><?php echo $text_special_price; ?><span class="amount contrast_font" itemprop="price"><?php echo $special; ?></span></div>
        <div class="price-old"><?php echo $text_old_price; ?><span class="amount contrast_font"><?php echo $price; ?></span></div>
        <div class="price-save"><?php echo $text_you_save; ?><span class="amount contrast_font"><?php echo $yousave; ?></span> </div>
        </div>

        <?php } ?>
        
        <?php if (($special_date_end > 0) && ($cosyone_product_countdown)) { ?>
        <div class="contrast_font"><div class="offer"></div></div> 
		
        <?php if ($cosyone_product_hurry) { ?>
        <div class="hurry">
        <span class="items_left contrast_color"><?php echo $text_stock_quantity; ?></span>
        <span class="items_sold"><?php echo $text_items_sold; ?></span>
        </div>
        <?php } ?>
        <?php } ?>
        <?php } ?>
       
      
        <?php if ($minimum > 1) { ?>
        <div class="minimum"><?php echo $text_minimum; ?></div>
        <?php } ?>
        <?php if ($price) { ?>
      	<?php if ($points) { ?>
        <div class="reward"><?php echo $text_points; ?> <?php echo $points; ?></div>
        <?php } ?>
       <?php if ($discounts) { ?>
        <div class="discount">
          <?php foreach ($discounts as $discount) { ?>
          <span><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <?php } ?>
     </div>

       
    </div> <!-- product-info-right END -->
    
    </div> <!-- product-info END -->

<?php if ($options) { ?>
<div class="params-product">
  <?php if ($price) { ?> 
      <div class="price">
        
        <?php if (!$special) { ?>
        <i class="ic-bage--white"></i><span itemprop="price"><?php echo $price; ?></span>
        <?php } else { ?>
        <?php if (!$cosyone_product_yousave) { ?>
        <i class="ic-bage--white"></i><span class="price-old"><?php echo $price; ?></span> <span class="price-new" itemprop="price"><?php echo $special; ?></span>
        <?php } ?>
        <?php } ?>
          
      </div> 
     </span> <!-- rich snippet ends -->
      <?php } ?>
<input type='hidden' name='product_type' value='<?php echo $product_type; ?>'>
<input type='hidden' name='product_id' value='<?php echo $product_id; ?>'>
    <?php if ($options) { ?>

    
    <div class="params-product__options">
      <div class="options contrast_font">
      <h2><?php echo $text_option; ?></h2>
        <?php foreach ($options as $option) { ?>
        <?php //var_dump($option); ?>
                
        <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <!--<select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">-->
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="<?php echo $option['element_id']; ?>" class="form-control">
  
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <!--<option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>-->
                <option value="<?php echo $option_value['name_el']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
        
        <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>" class="<?php echo $option['element_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <!--<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />-->
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['name_el']; ?>" />
                    <i></i>
                    
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
        
        <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
    
        
            
         <?php if ($option['type'] == 'image') { ?>
         <?php if($cosyone_image_options == 'thumbs'){ ?>
         <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
         <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
         <div id="input-option<?php echo $option['product_option_id']; ?>" class="clean-option-image">
            <?php foreach ($option['product_option_value'] as $option_value) { ?>
              <div class="single-option main_font" <?php if ($option_value['price']) { ?>data-tooltip="<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>"<?php } ?>>
              <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name']; ?>" /></label>
                </div>
            <?php } ?>
          </div>
          </div>
         <?php } else { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php } ?>
        
        <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <!--<input type="text" name="<?php echo $option['element_id']; ?>" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="<?php echo $option['element_id']; ?>" class="form-control" />-->
            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="<?php echo $option['element_id']; ?>" class="form-control" />
            
            </div>
            <?php } ?>
            
        <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label><br />
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="button"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
        <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
        <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
         <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
        <?php } ?>
      </div> <!-- .options ends -->
      <?php } ?>
      </div>


      <div class="params-product__result">

          <div id="product">
          <div class="params-product__result-title">
            Результат
          </div>
          <div class="clearfix params-product__result-container">
         <?php if ($recurrings) { ?>
              <h3><?php echo $text_payment_recurring ?></h3>
              <div class="form-group required">
                <select name="recurring_id" class="form-control">
                  <option value=""><?php echo $text_select; ?></option>
                  <?php foreach ($recurrings as $recurring) { ?>
                  <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                  <?php } ?>
                </select>
                <div class="help-block" id="recurring-description"></div>
              </div>
        <?php } ?>
        
         
        
        <div class="dop-character">
            <div>
                <div><?php echo $text_dln_dif; ?></div>
                <div id="dln_dif" class="green"></div>
            </div>
            
            <div class="rashod">
                <div><?php echo $text_dln_dif2; ?></div>
                <div id="dln_dif2" class="green"></div>
            </div>
            
            <div>
                <div><?php echo $text_vis_dif; ?></div>
                <div id="vis_dif" class="green"></div>
            </div>
            
            
            <div>
                <div><?php echo $text_zgiv_sech; ?></div>
                <div id="zgiv_sech" class="green"></div>
            </div>
            
            <div class="dlina">
                <div><?php echo $text_vozn_rash_vozd; ?></div>
                <div id="vozn_rash_vozd" class="green"></div>
            </div>
            
            
            
            
            <div>
                <div><?php echo $text_skor_vozd; ?></div>
                <div id="skor_vozd" class="green"></div>
            </div>
            
            <div>
                <div><?php echo $text_skor_vih_vozd; ?></div>
                <div id="skor_vih_vozd" class="green"></div>
            </div>
            <div>
                <div><?php echo $text_razn_t; ?></div>
                <div id="razn_t" class="green"></div>
            </div>
            
            <div>
                <div><?php echo $text_pot_dav; ?></div>
                <div id="pot_dav" class="green"></div>
            </div>
          </div>
        </div>
        </div>
      </div>
  </div>
   
   <?php } ?>
  
  <ul class="nav nav-tabs product-page">
  
	<?php /* ?><li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li><?php */ ?>
                
    <?php if ($attribute_groups) { ?>
    <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
    <?php } ?>
   
    <?php if ($review_status) { ?>
    <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
    <?php } ?>
    
    
    
    
    <?php if($tabs['chert']){ ?>
                    
                    <?php if($tabs['tab'][0]){ ?>
                    <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
                    <?php } ?>
                    
                    
                    <?php if($tabs['tab'][1]){ ?>
                    <li><a href="#tab-razmeri" data-toggle="tab"><?php echo $tab_razmeri; ?></a></li>
                    <?php } ?>
                    
                    
                    <?php if($tabs['tab'][2]){ ?>
                    <li><a href="#tab-chertezi" data-toggle="tab"><?php echo $tab_chertezi; ?></a></li>
                    <?php } ?>
                   
                    
                    <?php if($tabs['tab'][3]){ ?>
                    <li><a href="#tab-sertificati" data-toggle="tab"><?php echo $tab_sertificati; ?></a></li>
                    <?php } ?>
                    
                    
                    <?php if($tabs['tab'][4]){ ?>
                    <li><a href="#tab-delivery" data-toggle="tab"><?php echo $tab_delivery; ?></a></li>
                    <?php } ?>
                    
                    
                    <?php } else { ?>
                    
                        <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
                        <li><a href="#tab-razmeri" data-toggle="tab"><?php echo $tab_razmeri; ?></a></li>
                        <li><a href="#tab-chertezi" data-toggle="tab"><?php echo $tab_chertezi; ?></a></li>
                        <li><a href="#tab-sertificati" data-toggle="tab"><?php echo $tab_sertificati; ?></a></li>
                        <li><a href="#tab-delivery" data-toggle="tab"><?php echo $tab_delivery; ?></a></li>
                    <?php } ?>
    
    
    
    
    <?php if ($product_tabs_5) { ?>
	<?php foreach($product_tabs_5 as $product_tab_5) { ?>
	<li><a href="#tab-product-tab<?php echo $product_tab_5['tab_id'];?>" data-toggle="tab"><?php echo $product_tab_5['name']; ?></a></li>
	<?php } ?>
	<?php } ?>
    

  </ul>
  
  <div class="tab-content">
      
      <div class="tab-pane" id="tab-razmeri">
                        <?php if($product_type == 2 && $luk_price){ ?>
                        <table class='table_class_lik'>
                            <tbody>
                                <tr>
                                    <td rowspan="100" class="tablename sideA">
                                        <div class="sideA-vertical">
                                            <strong><?php echo $text_dlina; ?></strong>
                                        </div>
                                    </td>
                                    <td colspan="100" class="tablename sideB">
                                        <strong><?php echo $text_shirina; ?></strong>
                                    </td>
                                </tr>
                                <tr>
                                    <th></th>
                                    <?php for($a=250;$a<=1000;$a+=50){
                                        echo "<th>$a</th>";
                                    } ?>
                                </tr>
                                <?php  for($b=200;$b<=1000;$b+=50){
                                echo '<tr>';
                                echo '<td>'.$b.'</td>';
                                    for($c=250;$c<=1000;$c+=50){
                                        echo '<td';
                                        if(isset($green_field[$c][$b])){
                                            echo' class="green_td" ';
                                        }
                                        echo '>'.$product_curs*$luk_price[$c][$b].'грн.</td>';
                                    }
                                echo '</tr>';
                            }  ?>
                            </tbody>
                        </table>
                        <?php }elseif($product_type == 3){
                            ?>
                             <table class='table_class_lik'>
                            <tbody>
                                <tr>
                                    <td></td>
                                    <td>1000 мм</td>
                                    <td>2000 мм</td>
                                    <td>3000 мм</td>
                                    <td>4000 мм</td>
                                    <td>5000 мм</td>
                                    <td>6000 мм</td>
                                    <!--<td>7000 мм</td>
                                    <td>8000 мм</td>
                                    <td>9000 мм</td>
                                    <td>10000 мм</td>-->
                                </tr>
                                <?php
                                for($a=1;$a<=4;$a++){ ?>
                                <tr>
                                    <td><?php echo $a; ?>-<?php echo $text_schel; ?></td>
                                    <td><?php echo $pr_f_tab['val_'.$a.'_shch']; ?> грн.</td>
                                    <?php
                                        for($b=2;$b<=6;$b++){ ?>
                                            <td><?php echo $pr_f_tab['val_'.$a.'_shch']*$b*0.8; ?> грн.</td>
                                        <?php }
                                    ?>
                                </tr>
                                <?php } ?>

                            </tbody>
                             </table>

                        <?php }elseif($product_type == 4){ ?>
                             <table class='table_class_lik'>
                            <tbody>
                                <tr>
                                    <td></td>
                                    <td>1000 мм</td>
                                    <td>2000 мм</td>
                                    <td>3000 мм</td>
                                    <td>4000 мм</td>
                                    <td>5000 мм</td>
                                    <td>6000 мм</td>
                                    <!--<td>7000 мм</td>
                                    <td>8000 мм</td>
                                    <td>9000 мм</td>
                                    <td>10000 мм</td>-->
                                </tr>

                                <tr>
                                    <td>1-щелевая</td>
                                    <td><?php echo $pr_f_tab['val_1_shch']; ?> грн.</td>
                                    <?php
                                        /* for($b=2;$b<=10;$b++){ */
                                        for($b=2;$b<=6;$b++){ ?>
                                            <td><?php echo $pr_f_tab['val_1_shch']*$b*0.8; ?> грн.</td>
                                        <?php }
                                    ?>
                                </tr>


                            </tbody>
                             </table>
                        <?php } ?>

                    </div>
                    <div class="tab-pane" id="tab-chertezi">
                         <?php if ($chert) { ?>
                    <ul class="thumbnails">


                      <?php foreach ($chert as $image) { ?>
                      <li class="image-additional"><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
                      <?php } ?>

                    </ul>
                    <?php } ?>
                    </div>
                    <div class="tab-pane" id="tab-sertificati">
                         <?php if ($sert) { ?>
                    <ul class="thumbnails">


                      <?php foreach ($sert as $image) { ?>
                      <li class="image-additional"><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
                      <?php } ?>

                    </ul>
                    <?php } ?>
                    </div>
                    <div class="tab-pane" id="tab-delivery"><?php echo $dostavka; ?></div>
      
      
  
  <div class="tab-pane active" id="tab-description"><?php echo $description; ?>
  <?php if ($tags) { ?>
  <div class="tags">
    <?php for ($i = 0; $i < count($tags); $i++) { ?>
    <?php if ($i < (count($tags) - 1)) { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
    <?php } else { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
    <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>
  </div>
  
  <?php if ($attribute_groups) { ?>
  <div class="tab-pane" id="tab-specification">
    <table class="attribute">
      <?php foreach ($attribute_groups as $attribute_group) { ?>
      <thead>
        <tr>
          <td colspan="2"><?php echo $attribute_group['name']; ?></td>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
        <tr>
          <td><?php echo $attribute['name']; ?></td>
          <td><?php echo $attribute['text']; ?></td>
        </tr>
        <?php } ?>
      </tbody>
      <?php } ?>
    </table>
  </div>
  <?php } ?>
  
  <?php if ($review_status) { ?>
  <div class="tab-pane" id="tab-review">
    <form id="form-review" class="form-horizontal">
    <div id="review"></div>
    <div class="write_review contrast_font">
    <h2 id="review-title"><?php echo $text_write; ?></h2>
    
    
    <?php if ($review_guest) { ?>
   
   <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="" id="input-name" class="form-control" />
                  </div>
                </div>
    
    <div class="form-group required">
    <div class="col-sm-12">
    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
    <textarea name="text" id="input-review" rows="8" style="width: 100%;"></textarea>
    <small><?php echo $text_note; ?></small>
    </div>
    </div>
    
    <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <span class="main_font"><?php echo $entry_bad; ?></span>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<span class="main_font"><?php echo $entry_good; ?></span>
                    </div>
                </div>
         		
                <?php if ((float)VERSION >= 2.1) { ?>
        			<div class="vertical-captcha"><?php echo $captcha; ?></div>
                	<div class="col-sm-12 text-right"><a id="button-review" class="button"><?php echo $button_continue; ?></a></div>
                    <div class="clearfix"></div>
        		<?php } else { ?>
                    <div class="form-group">
                    <div class="col-sm-6">
                    <?php if ($site_key) { ?>
                    <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
                    <?php } ?>
                    </div>
                    <div class="col-sm-6"><a id="button-review" class="button pull-right"><?php echo $button_continue; ?></a></div>
                    </div>
                <?php } ?>
                
                </div>
                
                <?php } else { ?>
                <div class="alert alert-info main_font"><?php echo $text_login; ?></div>
                </div>
                <?php } ?>
                </form>
                </div>
                
                <?php } ?>

  <?php if ($product_tabs_5) { ?>
	<?php foreach($product_tabs_5 as $product_tab_5) { ?>
    <div class="tab-pane" id="tab-product-tab<?php echo $product_tab_5['tab_id'];?>">
	<?php echo $product_tab_5['text']; ?>
    </div>
	<?php } ?>
  <?php } ?>
  
  </div>
  
   
      
  	<?php if ($products) { ?>
  	<div class="box products">
  	<div class="box-heading products title title--green"><h2><?php echo $text_related; ?></h2></div>
    <div class="<?php echo $cosyone_grid_related; ?>">
    <div class="grid_holder">
    <div class="product-grid carousel owl-carousel related">
      <?php foreach ($products as $product) { ?>
      <div class="item product-layout ">
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
            <a href="<?php echo $product['href']; ?>">Подробнее</a>
            <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="ic-cart2"></i></button>
          </div>
        </div>
      </div>
      <?php } ?>
    </div>
    </div>
    </div>
    </div>
  <?php } ?>
  
  
  <?php echo $content_bottom; ?></div>
  <?php echo $column_right; ?></div>

<script type="text/javascript" src="catalog/view/theme/cosyone/js/cloud-zoom.1.0.2.min.js"></script>

<script type="text/javascript"><!--
$(document).ready(function() {
   $('.colorbox').colorbox({
      overlayClose: true,
	  maxWidth:'95%',
	  rel:'gallery',
    opacity: 0.5
}); 
$('#ral_color').html('<?php echo $output; ?>');
$('#ral_color').on('change ready', function(event) {
    $(this).css({"background-color": $(this).find('option:selected').attr('hex'),
                "color" : "#fff",
                "text-shadow" : "1px 1px 1px rgba(0,0,0, .7)"
                });
    
});
});
//--></script>
<script type="text/javascript">
        jQuery(function($) {
			//Product thumbnails
			$(".cloud-zoom-gallery").last().removeClass("cboxElement");
			$(".cloud-zoom-gallery").click(function() {
				$("#zoom-btn").attr('href', $(this).attr('href'));
				$("#zoom-btn").attr('title', $(this).attr('title'));
			
						$(".cloud-zoom-gallery").each(function() {
						$(this).addClass("cboxElement");
					});
					$(this).removeClass("cboxElement");
							});
            
        });
</script>


<script type="text/javascript">
$('.quantity_button.plus').on('click', function(){
        var oldVal = $('input.quantity').val();
        var newVal = (parseInt($('input.quantity').val(),10) +1);
      $('input.quantity').val(newVal);
    });

    $('.quantity_button.minus').on('click', function(){
        var oldVal = $('input.quantity').val();
        if (oldVal > 1)
        {
            var newVal = (parseInt($('input.quantity').val(),10) -1);
        }
        else
        {
            newVal = 1;
        }
        $('input.quantity').val(newVal);
    });
</script>
<?php if ($special_date_end > 0) { ?>

<script type="text/javascript">
	$('.offer').countdown({
		until: <?php echo $special_date_end ?>, 
		layout: '{desc}<i>{dn}</i> {dl} <i>{hn}</i> {hl} <i>{mn}</i> {ml} <i>{sn}</i> {sl}',
		description: '<span class="main_font"><?php echo $text_expire ?></span>&nbsp;'
		});
</script>
<?php } ?>
<script type="text/javascript">
$(".to_review").click(function() {
    $('html, body').animate({
        scrollTop: $("#tab-review").offset().top
    }, 1000);
});
</script>

<!-- Default scrips below -->    
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			
			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product1 input[type=\'text\'], #product1 input[type=\'hidden\'], #product1 input[type=\'radio\']:checked, #product1 input[type=\'checkbox\']:checked, #product1 select, #product1 textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));
						
						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}
				
				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}
				
				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}
			
			if (json['success']) {
				
				$.colorbox({
html:'<div class="cart_notification"><div class="product"><img src="' + json['image'] + '"/><span>' + json['success'] + '</span></div><div class="bottom"><a class="btn btn-default" href="' + json['link_cart'] + '">' + json['text_cart'] + '</a> ' + '<a class="btn btn-primary" href="' + json['link_checkout'] + '">' + json['text_checkout'] + '</a></div></div>',
className: "notification",
initialHeight:50,
initialWidth:50,
width:"90%",
maxWidth:400,
height:"90%",
maxHeight:200
});
				
				$('#cart-total').html(json['total']);
				
				$('#cart').load('index.php?route=common/cart/info #cart > *'); //Added
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;
	
	$('#form-upload').remove();
	
	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');
	
	$('#form-upload input[name=\'file\']').trigger('click');
	
	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}
	
	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);
			
			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();
					
					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}
					
					if (json['success']) {
						alert(json['success']);
						
						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script> 
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});
//--></script>
<script>
                        //$('.check_type input').on('change',function(){
                        $('.check_type input').on('change',function(){
                        //console.log($(this).val());
                        if($('.check_type input:checked').val()==="dlina"){
                            console.log($(this).val());
                            $('.dlina').show();
                            $('.rashod').hide();
                        }else{
                            $('.dlina').hide();
                            $('.rashod').show();
                        }
                        
                        $('#rash_vozd').trigger('change');
                        });
                        
                        $('#count_shcheley, #dlin_resh, #rash_vozd, #t_out_dif, #t_out_dif2, #rast_ot_pov, #type_resh, #input-quantity, #dlin_proz, #s_vozd_iz_rasp').on('change keyup',function(){
                            //console.log($(this).val());
                            var treb_ziv_sech = ($('#rash_vozd').val() / $('#input-quantity').val())/(3600* $('#s_vozd_iz_rasp').val());
                            //console.log(treb_ziv_sech);

                            
                            if($('#count_shcheley').val()==="1"){
                                var m = 2.19;
                                var n = 2.03;
                            }
                            if($('#count_shcheley').val()==="2"){
                                var m = 2.47;
                                var n = 1.673;        
                            }
                            if($('#count_shcheley').val()==="3"){
                                var m = 1.92;
                                var n = 1.68;
                            }
                            if($('#count_shcheley').val()==="4"){
                                var m = 1.61;
                                var n = 1.17;
                            }
                            
                            //console.log($('.check_type input:checked').val());
                            if($('.check_type input:checked').val()==="dlina"){
                                
                            
                                if(($('#type_resh').val()==="SHR") || ($('#type_resh').val()==="SHL")){
                                    var dln_dif = $('#dlin_resh').val()-28;
                                }else{
                                    var dln_dif = $('#dlin_resh').val()-28*2;
                                }
                            console.log(dln_dif);
                            }else{
                            
                                var dln_dif = Math.ceil((treb_ziv_sech *1000000)/($('#dlin_proz').val()*$('#count_shcheley').val())/100)*100-10;
                            console.log(dln_dif);
                            }
                            
                            $('#dln_dif').html(dln_dif);
                            
                            
                            if(($('#type_resh').val()==="SHR") || ($('#type_resh').val()==="SHL")){
                                $('#dln_dif2').html(dln_dif+28);
                            } else if ($('#type_resh').val()==="SHD") {
                                $('#dln_dif2').html(dln_dif+28*2);
                            }else{
                                $('#dln_dif2').html(dln_dif);
                            }
                            
                            var vis_dif = $('#count_shcheley').val() * $('#dlin_proz').val() + 20 * ($('#count_shcheley').val()-1) + 28*2;
                            $('#vis_dif').html(vis_dif);
                            
                            var zgiv_sech = (dln_dif*$('#dlin_proz').val()*$('#count_shcheley').val())/1000000;
                            $('#zgiv_sech').html(zgiv_sech.toFixed(5));
                            
                            var vozn_rash_vozd = (parseFloat($('#s_vozd_iz_rasp').val())*3600*zgiv_sech);
                            
                            //$('#vozn_rash_vozd').html(vozn_rash_vozd);
                            vozn_rash_vozd = Math.ceil(vozn_rash_vozd/10)*10
                            $('#vozn_rash_vozd').html(vozn_rash_vozd);
                            
                            
                            if($('.check_type input:checked').val()==="dlina"){
                                var skor_vozd = vozn_rash_vozd/(zgiv_sech * 3600);
                            }else{
                                var skor_vozd = parseFloat($('#rash_vozd').val())/(zgiv_sech * 3600);
                            }
            
                            $('#skor_vozd').html(skor_vozd.toFixed(2));
                            
                            
                            
                            
                                var skor_vih_vozd = skor_vozd * m *(Math.pow((((parseFloat($('#dlin_proz').val())* parseFloat($('#count_shcheley').val()))/1000)/parseFloat($('#rast_ot_pov').val())),0.5));
                            
            
                            if(skor_vih_vozd>0.5){
                                skor_vih_vozd = skor_vih_vozd.toFixed(2) + ' Значение не должно превышать 0,5 м/с';
                            }else{
                                skor_vih_vozd = skor_vih_vozd.toFixed(2);
                            }
                            $('#skor_vih_vozd').html(skor_vih_vozd);
                            
                            var razn_t = Math.abs($('#t_out_dif2').val() - $('#t_out_dif').val()) * n *(Math.pow(((parseFloat($('#count_shcheley').val())/50)/parseFloat($('#rast_ot_pov').val())),0.5));
                            if(razn_t>1.5){
                                razn_t = 'Значение не должно превышать 1,5 ⁰С';
                            }else{
                                razn_t = razn_t.toFixed(2);
                            }
                            $('#razn_t').html(razn_t);
                            
                            if($('.check_type input:checked').val()==="dlina"){
                                s_vozdvvoda = (vozn_rash_vozd/($('#input-quantity').val()))/14400;
                            }else{
                                s_vozdvvoda = (parseFloat($('#rash_vozd').val())/($('#input-quantity').val()))/14400;
                            }
                            
                            var dzeta = 2.0213+2.6795/Math.pow((zgiv_sech/s_vozdvvoda),1.756);
                            
                            if($('.check_type input:checked').val()==="dlina"){
                                var pot_dav = dzeta*(1.2 * Math.pow((vozn_rash_vozd/$('#input-quantity').val()/(3600 * s_vozdvvoda)),2))/2
                            }else{
                                var pot_dav = dzeta*(1.2 * Math.pow((parseFloat($('#rash_vozd').val())/$('#input-quantity').val()/(3600 * s_vozdvvoda)),2))/2
                            }
                            
                            $('#pot_dav').html(pot_dav.toFixed(2));
                            
                            /*
                            var zgiv_sech = ($('#count_shcheley').val()/50000)*($('#dlin_resh').val()-(28*2));
                            $('#zgiv_sech').html(zgiv_sech.toFixed(5));
                            var skor_vozd = $('#rash_vozd').val()/3600/parseFloat($('#s_vozdvvoda').val());
                            $('#skor_vozd').html(skor_vozd.toFixed(2));
                            var dzeta = 2.0213+2.6795/Math.pow((zgiv_sech/parseFloat($('#s_vozdvvoda').val())),1.756);
                            //var azaz = zgiv_sech/parseFloat($('#s_vozdvvoda').val());
                            //console.log(azaz);
                            //console.log(Math.pow(azaz,1.756));
                            //console.log(dzeta);
                            var ro = 353/(273+parseFloat($('#t_out_dif').val()));
                            //console.log(ro);
                            //var pot_dav = ((2.0213+(2.6795/(zgiv_sech/$('#s_vozdvvoda').val())^1.756))*(353/(273+$('#t_out_dif').val()))*(skor_vozd^2))/2;
                            var pot_dav = (dzeta*ro*skor_vozd*skor_vozd)/2;
//console.log(pot_dav);
                            $('#pot_dav').html(pot_dav.toFixed(2));
                            
                            
                            
                            
                            var skor_vih_vozd = $('#rash_vozd').val()/3600/zgiv_sech * m *(Math.pow(((parseFloat($('#count_shcheley').val())/50)/parseFloat($('#rast_ot_pov').val())),0.5));
                            //console.log(Math.pow(((parseFloat($('#count_shcheley').val())/500)/parseFloat($('#rast_ot_pov').val())),0.5));
                            //console.log($('#count_shcheley').val()/50);
                            //console.log(parseFloat($('#rast_ot_pov').val()));
                            //console.log(($('#count_shcheley').val()/50)/(parseFloat($('#rast_ot_pov').val()));
                            
                            if(skor_vih_vozd>0.5){
                                skor_vih_vozd = skor_vih_vozd.toFixed(2) + ' Значение не должно превышать 0,5 м/с';
                            }else{
                                skor_vih_vozd = skor_vih_vozd.toFixed(2);
                            }
                            $('#skor_vih_vozd').html(skor_vih_vozd);
                            
                            var razn_t = Math.abs($('#t_out_dif2').val() - $('#t_out_dif').val()) * n *(Math.pow(((parseFloat($('#count_shcheley').val())/50)/parseFloat($('#rast_ot_pov').val())),0.5));
                            if(razn_t>1.5){
                                razn_t = 'Значение не должно превышать 1,5 ⁰С';
                            }else{
                                razn_t = razn_t.toFixed(2);
                            }
                            $('#razn_t').html(razn_t);
                            */
                           //research_t(); 
                        });
                        
                        
                       /* $('#count_shcheley, #type_resh').on('change',function(){
                            console.log(this);
                            $.ajax({
                                url: 'index.php?route=product/product/changeimage&product_id=<?php echo $product_id; ?>',
                                type: 'post',
                                data: 'number_of_slots=' + $('#count_shcheley').val() + '&lattice_type=' + $('#type_resh').val(),
                                dataType: 'json',
                                success: function(json){
                                    //console.log(json);
                                    // $('.image-additional.prod .owl-item').remove();
                                    console.log(json);
                                    
                                    //var arr = $.map(json, function(el) { return el; })

                                    if(json.images.length) {
                                        var carousel = $(".prod .image_carousel");
                                        carousel.data('owl.carousel').destroy();
                                        var html = "";
                                        json.images.map(function(elem, index) {
                                          return html +='<li class="item">'
                                          + '<a href="'+elem.popup+'" title="" class="cloud-zoom-gallery colorbox" rel="useZoom: \'zoom1\', smallImage: '+elem.thumb+'">'
                                          + '<img src="'+elem.small+'" title="" alt="img" />'
                                          +'</li>' 
                                          
                                        });

                                        carousel.html(html);
                                        carousel.owlCarousel({
                                          items: 3,
                                          autoPlay: 3000,
                                          nav: false,
                                          margin: 15
                                        });

                                        jQuery(function($) {
                                            Product thumbnails
                                            
                                            $(".cloud-zoom-gallery").click(function() {
                                                $("#zoom-btn").attr('href', $(this).attr('href'));
                                                $("#zoom-btn").attr('title', $(this).attr('title'));
                                            
                                                        $(".cloud-zoom-gallery").each(function() {
                                                        $(this).addClass("cboxElement");
                                                    });
                                                    $(this).removeClass("cboxElement");
                                                            });
                                            
                                        });
                                        
                                    }

                                    
                                }
                            });
                        });*/
    <?php if(false){ ?>                    
    function research_t(){
        $.ajax({
                url: 'index.php?route=product/product/reloadRrice',
                type: 'post',
		//data: $('.params-product').serialize(),
                data: $('#product1 input[type=\'text\'], #product1 input[type=\'hidden\'], #product1 input[type=\'radio\']:checked, #product1 input[type=\'checkbox\']:checked, #product1 select, #product1 textarea'),

                success: function(result){
                    console.log(result);
                   /*var outtext = $.parseJSON(result);
                    if(outtext.full_price != undefined){
                       $('.text_old_pr_count').html(outtext.full_price[0]+'<span class="kop">'+outtext.full_price[1]+'</span>грн.');
                       $('.text_econom_count').html(outtext.econom[0]+'<span class="kop">'+outtext.econom[1]+'</span>грн.');
                       $('.text_now_pr_count').html(outtext.n_price[0]+'<span class="kop">'+outtext.n_price[1]+'</span>грн.');
                       $('.text_skidka_count').html(outtext.skidka+'%');
                    }else{
                        $('.text_now_pr_count').html(outtext.luk_price_fist[0]+'<span class="kop">'+outtext.luk_price_fist[1]+'</span>грн.');
                    }*/
                    //
                }
            });
    }
    
    
    
    
    <?php } ?>                    
                     </script> 

<script type="text/javascript"><!--
$('.product-grid').owlCarousel({
  items: 4,
  autoPlay: 3000,
  nav: false,
  margin: 30
});
--></script>


<script type="text/javascript"><!--
$('.image_carousel').owlCarousel({
  items: 3,
  autoPlay: 3000,
  loop: true,
  nav: false,
  margin: 15
});
--></script>

<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js"></script>
</div>
<?php echo $footer; ?>