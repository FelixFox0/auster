<div id="footer" class="footer">
  <div class="container no-clearfix footer__container">
    <div class="footer__logo">
      <a href="#"><img src="/image/catalog/logoo2.png" alt=""></a>
    </div>
    <div class="footer__losung">покупай у отечественного производителя</div>
    <div class="footer__info">
      <div class="footer__column">
        <div class="footer__column-title">
        <i class="ic-cart"></i>
        <span>ПРОДУКЦИЯ</span>
        </div>
        <ul class="footer__list">
          <li class="footer__list-item">
            <a href="#">Вентиляционный решетки "Auster "</a>
          </li>
          <li class="footer__list-item">
            <a href="#">Решетки переливные для бассейнов " Wester "</a>
          </li>
          <li class="footer__list-item">
            <a href="#">Нержавеющие решетки для водоотвода "Fluxe "</a>
          </li>
          <li class="footer__list-item">
            <a href="#">Ревизионные и сантехнические люки - невидимки"</a>
          </li>
        </ul>
      </div>

      <div class="footer__column ">
        <div class="footer__column-title">
        <i class="ic-location"></i>
        <span>контакты</span>
        </div>
        <div class="footer__contacts">
          <div class="footer__contacts-address">
            <a href="#">Україна, м. Київ, ул. Визволителів, 17</a>
          </div>
          <div class="footer__contacts-mail">
            <a href="mailto:StonehengeKiev@gmail.com">StonehengeKiev@gmail.com</a>
          </div>
          <div class="footer__contacts-address">
            <a href="tel:+380 98-480-45-03">+380 98-480-45-03</a>
            <a href="tel:+380 66-922-69-70">+380 66-922-69-70</a>
            <a href="tel:+380 66-922-69-70">+380 66-922-69-70</a>
          </div>
        </div>
        
      </div>
    </div>
  </div>
  <div class="footer__copy">
    © Stonehenge company, 2017. Все права защищены
  </div>

  <?php if(false): ?>
	<div class="column">
	<div class="box-heading heading">
    <?php echo $cosyone_footer_custom_block_title; ?>
    </div>
    <div class="custom_block">
    <?php echo $cosyone_footer_custom_block; ?>
    </div>
    </div><!--
  --><div class="column">
    <div class="box-heading heading"><?php echo $text_information; ?></div>
    <ul class="contrast_font">
    <?php if ($informations) { ?>
      <?php foreach ($informations as $information) { ?>
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
      <?php } ?>
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
    </ul>
  </div><!--
  --><div class="column">
    <div class="box-heading heading"><?php echo $text_extra; ?></div>
    <ul class="contrast_font">
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div><!--
  --><div class="column">
    <div class="box-heading heading"><?php echo $text_account; ?></div>
    <ul class="contrast_font">
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </ul>
  </div>
</div> <!-- #footer ends --> 
  <div class="bottom_line"> <div class="scroll_to_top"><a class="scroll_top icon tablet_hide"><i class="fa fa-angle-up"></i></a></div>
  <div id="powered"><?php echo $powered; ?></div>
  <?php if ($cosyone_footer_payment_icon) { ?>
   <div id="footer_payment_icon"><img src="image/<?php echo $cosyone_footer_payment_icon; ?>" alt="" /></div>
   <?php } ?>
   <div class="clearfix"></div>
  </div>
<?php endif; ?>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

</div>  <!-- .outer_container ends -->
<script type="text/javascript" src="catalog/view/theme/cosyone/js/jquery.cookie.js"></script>

<script type="text/javascript" src="catalog/view/theme/cosyone/js/colorbox/jquery.colorbox-min.js"></script>
<link href="catalog/view/theme/cosyone/js/colorbox/custom_colorbox.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="catalog/view/theme/cosyone/js/quickview.js"></script>
<?php if($cosyone_use_retina) { ?>
<script type="text/javascript" src="catalog/view/theme/cosyone/js/retina.min.js"></script>
<?php } ?>
<?php echo $live_search; ?>
<?php echo $cosyone_cookie; ?>
</body></html>