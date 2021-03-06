<?php echo $header; ?>
<div class="home-slider-wrapper">
  <div class="home-slider">
    <div class="container home-slider__container">
      <?php echo $home_top_top; ?>
    </div>
  </div>
</div>
<div class="main">
  <div class="home_top_wrapper">
<?php echo $home_top_left; ?><?php echo $home_top_center; ?><?php echo $home_top_right; ?>
</div>
<div class="clearfix product-home">
  <div class="container">
    <div class="col">
      <div class="product-home__inner">
        <div class="product-home__left-column">
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
        </div>
        <div class="col">
          <?php echo $content_top; ?>
        </div>
      </div>
      
    </div>
  </div>
</div>
  <div class="row">
    <div id="content" class=" homepage">
    
     <?php echo $content_bottom_half; ?>
     <div class="home-videos">
       <?php echo $content_bottom; ?>
     </div>
     
     </div>
    <?php echo $column_right; ?>
    </div>
</div>

<div class="certificates">
  <div class="container certificates__container">
    <div class="title">
      <h2><?php echo $text_sert; ?></h2>
    </div>
    <div class="certificates__inner">
      <div class="certificates__col">
        <div class="certificates__text">
          <strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </strong>
        </div>
        <div class="certificates__text">
          Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
        </div>
      </div>
      <div class="certificates__col">
        <div class="owl-carousel certificates__carousel">
          <div class="item certificates__carousel-item">
            <a href="/image/cert1.jpg"><img src="/image/cert1.jpg" alt="cert"></a>
          </div>
          <div class="item certificates__carousel-item">
            <a href="/image/cert2.jpg"><img src="/image/cert2.jpg" alt="cert"></a>
          </div>
          <div class="item certificates__carousel-item">
            <a href="/image/cert3.jpg"><img src="/image/cert3.jpg" alt="cert"></a>
          </div>
        </div>
      </div>
    </div>
    
  </div>
</div>

<script>
  $('.certificates__carousel').owlCarousel({
  items: 2,
  slideSpeed:750,
  nav: true,
  responsive: true,
  addClassActive: true,
  loop: true,
  navText: [
  "<i class=' certificates__left'></i>",
  "<i class=' certificates__right'></i>"
  ],
});

$(".certificates__col").magnificPopup({
    delegate: 'a', 
    type: 'image',
    gallery: {
      enabled:true
    }
});

$('.special-offer__container').owlCarousel({
    margin:5,
    loop:true,
    autoWidth:true,
    items:5,
    nav: true,
    navText: ["<span><i class='ic-arrow-left'></i></span>","<span><i class='ic-arrow-right'></i></span>"],
    onInitialized: fixOwl,
    onRefreshed: fixOwl
})

function fixOwl() {
    var $stage = $('.owl-stage'),
        stageW = $stage.width(),
        $el = $('.owl-item'),
        elW = 0;
    $el.each(function() {
        elW += $(this).width()+ +($(this).css("margin-right").slice(0, -2))
    });
    if ( elW > stageW ) {
        $stage.width( elW );
    };
}


</script>



<div class="consult">
  <div class="container no-clearfix consult__container">
    <div class="consult__question">
      <h2><?php echo $text_questions; ?></h2>
      <p><?php echo $text_answer; ?></p>
    </div>
    <div class="consult__form">
      <h3 class="consult__form-title"><?php echo $text_consult; ?></h3>
      <p class="consult__form-subtitle"><?php echo $text_post_text; ?></p>
      <form action="" id="formx" type="POST">
        <div class="consult__input">
          <label for=""><?php echo $text_name; ?></label>
          <input required type="text" name="name" placeholder="<?php echo $text_name2; ?>">
        </div>
        <div class="consult__input">
          <label for=""><?php echo $text_phone; ?></label>
          <input required type="text" name="phone" placeholder="<?php echo $text_phone2; ?>">
        </div>
        <div class="consult__input">
          <label for=""><?php echo $text_mail; ?></label>
          <input type="email" name="mail" placeholder="<?php echo $text_mail2; ?>">
        </div>
        <div class="consult__input">
          <button>
            <i class="ic-send"></i>
            <span><?php echo $text_button; ?></span>
          </button>
        </div>
        <div class="consult__txt"><?php echo $text_post_text2; ?></div>
      </form>
    </div>
  </div>
</div>

<div class="oficial-destr">
  <div class="container oficial-destr__container">
    <div class="title oficial-destr__title">
      <h2><?php echo $text_dist; ?></h2>
    </div>
    <div class="oficial-destr__images">
      <img src="/image/distributor.jpg" alt="distributor">
      <img src="/image/distributor2.png" alt="distributor">
    </div>
  </div>
</div>
<?php echo $footer; ?> 