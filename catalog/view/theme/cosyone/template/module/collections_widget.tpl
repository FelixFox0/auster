<?php if(false){ ?>
<div class="collections-home">
      <div class="container collections-home__container">
          
         <?php //var_dump($collections); ?>
        <?php foreach ($collections as $special_offer) { ?>  
        
        <div class="collections-home__item">
            <p><span>youtube</span><?php echo $special_offer['youtube']; ?></p>
          <div class="collections-home__item-img">
            <a href="<?php echo $special_offer['link']; ?>" style="background-image: url(<?php echo $special_offer['image']; ?>);">
              <div class="go">
                <span>перейти</span>
              </div>
            </a>
          </div>
          <div class="collections-home__item-inf">
            <a href="<?php echo $special_offer['link']; ?>"><?php echo $special_offer['title']; ?></a>
            <span><?php echo $special_offer['description']; ?></span>
          </div>
        </div>
        
        <?php } ?>
        
        
      </div>
    </div>

<?php } ?>

<?php if(true){ ?>
<div id="collections<?php echo $module; ?>" class="special-offers">
    <div class="container special-offers__container">
        <div class="title">
            <h2><?php echo $heading_title_video; ?></h2>
        </div>
        <div class="special-offers__inner">
            <?php foreach ($collections as $key => $special_offer) { ?>
            
            <?php if ($key === 0) { ?>
                <div class="special-offers__left">
                    <div class="special-offers__title">
                        <h5><?php echo $special_offer['title']; ?></h5>
                    </div>
                    <a href="<?php echo $special_offer['youtube']; ?>" class="image popup-youtube" style="background-image: url(<?php echo $special_offer['image']; ?>)"></a>
                </div>
                <div class="special-offers__right">
            <?php } else { ?>
                <div class="panel-body special-offers__item">
                    <div class="special-offers__video">
                        <?php if($special_offer['image']): ?>

                            <a href="<?php echo $special_offer['youtube']; ?>" class="image popup-youtube" style="background-image: url(<?php echo $special_offer['image']; ?>)"></a>

                        <?php else: ?>
                            <a href="<?php echo $special_offer['youtube']; ?>" class="image" style="background-image: url(/image/video-social-seo.png)">
                        <?php endif; ?>
                        
                    </div>
                    <div class="special-offers__info">
                        <div class="special-offers__title">
                            <h5><?php echo $special_offer['title']; ?></h5>
                        </div>
                        <div class="special-offers__descr">
                            <p><?php echo $special_offer['description']; ?></p>
                        </div>
                    </div>
                  
                </div>
            <?php } ?>


            
            <?php } ?>
            </div>
        </div>
    </div>
</div>
<?php } ?>


 <script>
    $('.popup-youtube').magnificPopup({
    type: 'iframe',

});
</script>