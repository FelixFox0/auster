<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>

				
				<script src="catalog/view/javascript/mf/jquery-ui.min.js" type="text/javascript"></script>
			
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/cosyone/stylesheet/stylesheet.css" />
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/css/cabinet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/css/main.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/cosyone/js/cosyone_common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/cosyone/stylesheet/ie8.css" />
<![endif]-->
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<div class="outer_container <?php echo $cosyone_default_product_style; ?> <?php if($cosyone_use_custom){ echo $cosyone_container_layout; } ?> <?php echo $cosyone_use_breadcrumb; ?>">
<div class="popup-zakaz mfp-hide">
    <i class="popup__close icon-close"></i>
    <form action="" id="main-form" type="POST">
      <div class="input input--blue">
        <input type="text" placeholder="Ваше имя" name="name" required>
      </div>
      <div class="input input--blue">
        <input type="text" placeholder="Номер телефона" name="phone" required>
      </div>
      <div class="input input--blue">
        <input type="text" placeholder="E-mail" name="mail">
      </div>
      <button class="cant-get__button button button--primary send-form">Заказать</button>
    </form>
  </div>

  <div class="popup-success text-center mfp-hide">
    <div class="title title--green">
      <h2>Отправленно</h2>
    </div>
    <p class="consult__form-subtitle">Наш консультатнт свяжется 
с Вами в ближайшее время</p>
  </div>



<header class="header">
  <div class="container header__container">
    <div class="header__logo">
      <?php if ($logo) { ?>
      <div class="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
      <?php } ?>
    </div>
    <div class="header__info">
      <div class="header__top">
        <div class="header__login">
          <?php echo $header_login; ?>
        </div>
        <div class="header__lang">
          <?php echo $language; ?>
        </div>
        <div class="header__cart">
          <?php if ($cosyone_header_cart) { echo $cart; } ?>
        </div>
        <div class="header__callback">
          <a href=".popup-zakaz" class="flex"><i class="ic-phone"></i><span><?php echo $text_call_back; ?></span></a>
        </div>
      </div>
      <div class="header__bot">
        <div class="header__contacts">
          <div class="header__mail">
            <i class="ic-mail"></i>
            <a href="mailto:<?php echo $email; ?>"><?php echo $email; ?></a>
          </div>
          <div class="header__phones">
            <i class="ic-phone"></i>
            
            <?php foreach($telephone as $key=>$tel){ ?>
            <?php if ($key<2){ ?>
            <a href="tel:<?php echo $tel; ?>"><?php echo $tel; ?></a>
            <?php } ?>
            <?php } ?>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="menu_wrapper">
<div class="container menu_border"></div>
<div class="container menu_holder">
<div id="menu">

<a class="mobile_menu_trigger up_to_tablet visible-xs"><i class="fa fa-bars"></i> <?php echo $cosyone_text_mobile_menu; ?></a>
  <ul class="only_desktop">
  <li class="home only_desktop <?php echo $cosyone_show_home_icon; ?>"><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
       <?php if ($categories) { ?>
       <?php foreach ($categories as $category_1) { ?>
        <?php if ($category_1['category_1_id'] == $category_1_id) { ?>
    <li class="col<?php echo $category_1['column']; ?> current"><a href="<?php echo $category_1['href']; ?>" ><?php echo $category_1['name']; ?></a>
         <?php } else { ?>
         <li class="col<?php echo $category_1['column']; ?>"><a href="<?php echo $category_1['href']; ?>" ><?php echo $category_1['name']; ?></a>
         <?php } ?>
          <?php if ($category_1['children']) { ?>
          <div class="menu_drop_down" style="width: <?php echo ((($category_1['column']) * (195)) + (10)); ?>px">
          <div class="wrapper">
          <ul><?php foreach ($category_1['children'] as $category_2) { ?>
          <li class="column level2">
            <a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?><i class="fa fa-caret-right"></i></a>
            <?php if($cosyone_menu_mega_second_thumb == 'enabled' && $category_2['thumb']) { ?>
          <a href="<?php echo $category_2['href']; ?>" class="sub_thumb"><img src="<?php echo $category_2['thumb']; ?>" alt="<?php echo $category_2['name']; ?>"/></a>
          <?php } ?>
              <?php if ($category_2['children']) { ?>
              <div class="third">
              <ul>
               <?php foreach ($category_2['children'] as $category_3) { ?>
               <li><a href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
               <?php } ?>
              </ul>
              </div>
              <?php } ?>
            </li>
            <?php } ?>
          </ul>
          </div><!-- wrapper ends -->
          </div>
          <?php } ?>
        </li>
        <?php } ?>
        <?php } ?>
        <?php if($cosyone_custom_menu_block == 'enabled'){ ?>
    <li class="withsubs custom_block"><a><?php echo $cosyone_custom_menu_block_title; ?></i></a>
        <div class="menu_drop_down" style="width:<?php echo $cosyone_menu_block_width; ?>px">
        <?php echo $cosyone_menu_custom_block_content; ?>
        </div></li>
    <?php } ?>
        <?php if($cosyone_custom_menu_title1){ ?>
    <li><a href="<?php echo $cosyone_custom_menu_url1 ?>"><?php echo $cosyone_custom_menu_title1; ?></a></li>
        <?php } ?>
        <?php if($cosyone_custom_menu_title2){ ?>
    <li><a href="<?php echo $cosyone_custom_menu_url2 ?>"><?php echo $cosyone_custom_menu_title2; ?></a></li>
        <?php } ?>
        <?php if($cosyone_custom_menu_title3){ ?>
    <li><a href="<?php echo $cosyone_custom_menu_url3; ?>"><?php echo $cosyone_custom_menu_title3; ?></a></li>
        <?php } ?>
        <?php if($cosyone_custom_menu_title4){ ?>
    <li><a href="<?php echo $cosyone_custom_menu_url4; ?>"><?php echo $cosyone_custom_menu_title4; ?></a></li>
        <?php } ?>
        <?php if($cosyone_custom_menu_title5){ ?>
    <li><a href="<?php echo $cosyone_custom_menu_url5; ?>"><?php echo $cosyone_custom_menu_title5; ?></a></li>
        <?php } ?>
        <?php if($cosyone_custom_menu_title6){ ?>
    <li><a href="<?php echo $cosyone_custom_menu_url6; ?>"><?php echo $cosyone_custom_menu_title6; ?></a></li>
        <?php } ?>
      </ul>
    </div> <!-- menu_holder ends -->
</div> <!-- menu ends -->
</div> <!-- menu_wrapper ends -->
</header>

<div class="breadcrumb_wrapper"></div>
<div id="notification" class="container"></div>