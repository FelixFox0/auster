
<?php echo $header; ?>
<div class="home-slider-wrapper">
  <div class="home-slider">
    <div class="container home-slider__container">
      <?php echo $content_top; ?>
    </div>
  </div>
</div>


<div class="look-book-single">
<div class="content look-book-single__inner">
      <div class="content__inner">
        <div class="aside-wrap">
         
        <div id="content" class="content__right">
          <div class="container">
            <div class="title">
              <h1><?php echo ucfirst($blog['name']); ?></h1>
            </div>
          </div>

          <?php if($images) : ?>
              <div class="hits__carousel-inner">
                <div class="owl-carousel hits__carousel">
              <!-- <div class="collection-grid__sizer"></div> -->
                <?php $i=0; ?>
                <?php foreach ($images as $key => $image) : ?>
                 <?php $i++; ?>
                    
                    <?php if($i==3){ ?>
                        <div class="collection-grid__item item">
                            <a href="<?php echo $image; ?>" style="background-image: url(<?php echo $image; ?>);"><i class="ic-eye"></i></a>
                        </div>
                    <?php $i=0; ?>
                    <?php }elseif($i==1){ ?>
                        <div class="collection-grid__item item">
                            <a href="<?php echo $image; ?>" style="background-image: url(<?php echo $image; ?>);"><i class="ic-eye"></i></a>
                    <?php }else{ ?>
                            <a href="<?php echo $image; ?>" style="background-image: url(<?php echo $image; ?>);"><i class="ic-eye"></i></a>
                        </div>
                    
                    <?php } ?>
                    
                <?php endforeach; ?>
                <?php if($i==1){ ?>
                    </div>
                <?php } ?>
              </div>
            </div>
            </div>
          <?php endif; ?>
          <?php if(false){ ?> 
          <div class="title">
            <h2><?php echo ucfirst($blog['name']); ?></h2>
          </div>
          <div class="blog-single__date">
            <p class="date"><span class="icon-calendar"></span><?php echo $blog['date_added']; ?></p>
           <!-- <p class="time"><span class="icon-clock"></span><?php echo $blog['time_added']; ?></p>-->
          
          <div class="blog-single__container">
               <div class="blog-single__img">
                    <?php if($blog['image']): ?>
                      <img src="<?php echo $blog['image']; ?>" alt="<?php $blog['image']; ?>">
                      <?php else: ?>
                      <img src="/image/no_image.png" alt="/image/no_image.png" />
                    <?php endif; ?>
                    
                </div>
                <div class="blog-single__description">
                    <p><?php echo html_entity_decode($blog['description']); ?></p>
                </div>
          </div>
        </div>
        <?php } ?>  
      </div>
    </div>
    <div class="text-center">
      <a class="back-button" href="/<?php echo $breadcrumbs[1]['href'] ?>"><i class="ic-back"></i><?php echo $back_to_galery ?></a>
    </div>
    
<?php if(false){ ?>    
  <section class="main-title">
    <div class="container">
      <div class="main-title__container">
        <h1><?php echo ucfirst($blog['name']); ?></h1>
        <div class="main-title__sub">
          <?php echo html_entity_decode($blog['description']); ?>
        </div>
      </div>
    </div>
  </section>
<?php } ?>    
    
    
  
</div>
</div>


<style>
  .owl-carousel .owl-item {
    text-align: center;
  }
</style>

<script type="text/javascript">
$(document).ready(function() {
  $('.hits__carousel').owlCarousel({
    items: 5,
    margin: 34,
    autoPlay: true,
    loop: true,
    nav: true,
    navText: ["<span><i class='ic-arrow-left'></i></span>","<span><i class='ic-arrow-right'></i></span>"],
    dots: true,
  });
});
</script> 


<script type="text/javascript">$(document).ready(function() {
  $('.hits__carousel-inner').magnificPopup({
    type:'image',
    delegate: 'a',
    gallery: {
      enabled:true
    }
  });
});
//</script>


<?php echo $footer; ?>