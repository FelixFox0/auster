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
      <div class="product-home__inner">
        <div class="product-home__left-column">
          <div class="title">
            <h2>Продукция</h2>
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
    <div id="content" class="<?php echo $class; ?> homepage">
    
     <?php echo $content_bottom_half; ?>
     <?php echo $content_bottom; ?>
     </div>
    <?php echo $column_right; ?>
    </div>
</div>

<div class="certificates">
  <div class="container certificates__container">
    <div class="title">
      <h2>сертификаты</h2>
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
            <img src="/image/cert.png" alt="cert">
          </div>
          <div class="item certificates__carousel-item">
            <img src="/image/cert.png" alt="cert">
          </div>
          <div class="item certificates__carousel-item">
            <img src="/image/cert.png" alt="cert">
          </div>
          <div class="item certificates__carousel-item">
            <img src="/image/cert.png" alt="cert">
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
  navigation: true,
  responsive: true,
  addClassActive: true,
  navigationText: [
  "<i class=' certificates__left'></i>",
  "<i class=' certificates__right'></i>"
  ],
});
</script>


<div class="consult">
  <div class="container no-clearfix consult__container">
    <div class="consult__question">
      <h2>Есть <span>вопросы</span></h2>
      <p>Наши специалисты с удовольствием ответят на любой ваш вопрос!</p>
    </div>
    <div class="consult__form">
      <h3 class="consult__form-title">Консультация <span>эксперта</span></h3>
      <p class="consult__form-subtitle">Отправьте заявку и наш консультатнт свяжется 
с Вами в ближайшее время</p>
      <form action="">
        <div class="consult__input">
          <label for="">Ваше имя</label>
          <input type="text" placeholder="Введите имя">
        </div>
        <div class="consult__input">
          <label for="">Номер Вашего телефона</label>
          <input type="text" placeholder="Введите имя">
        </div>
        <div class="consult__input">
          <label for="">Ваш Е-mail</label>
          <input type="email" placeholder="Введите имя">
        </div>
        <div class="consult__input">
          <button>
            <i class="ic-send"></i>
            <span>Отправить</span>
          </button>
        </div>
        <div class="consult__txt">Мы заботимся о конфиденциальности Ваших данных</div>
      </form>
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