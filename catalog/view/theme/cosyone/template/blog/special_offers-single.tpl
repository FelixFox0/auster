
<?php echo $header; ?>
<?php echo $content_top; ?>

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
                <div class="hits__carousel">
              <!-- <div class="collection-grid__sizer"></div> -->
                <?php if($blog['image']): ?>
                  <a href="<?php echo $blog['image']; ?>"><img src="<?php echo $blog['image']; ?>" alt="<?php $blog['image']; ?>"></a>
                  
                  <?php else: ?>
                    <a href="/image/<?php echo $image; ?>"><img src="/image/no_image.png" alt="/image/no_image.png" /></a>
                  
                <?php endif; ?>
                <?php $i=0; ?>
                <?php foreach ($images as $key => $image) : ?>
                 <?php $i++; ?>
                    
                    <?php if($i==3){ ?>
                        <div class="collection-grid__item">
                            <a href="<?php echo $image; ?>"><img src="<?php echo $image; ?>" alt="img"></a>
                        </div>
                    <?php $i=0; ?>
                    <?php }elseif($i==1){ ?>
                        <div class="collection-grid__item">
                            <a href="<?php echo $image; ?>"><img src="<?php echo $image; ?>" alt="img"></a>
                    <?php }else{ ?>
                            <a href="<?php echo $image; ?>"><img src="<?php echo $image; ?>" alt="img"></a>
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
    <a href="/<?php echo $breadcrumbs[1]['href'] ?>"><?php echo $back_to_galery ?></a>
    
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
    items: 1,
    autoPlay: true,
    navigation: true,
    navigationText: ["<span><i class='fa fa-angle-left'></i></span>","<span><i class='fa fa-angle-right'></i></span>"],
    dots: true,
    autoHeight: true
  });
});
</script> 


<!-- <script type="text/javascript">$(document).ready(function() {
  $('.collection-grid').magnificPopup({
    type:'image',
    delegate: 'a',
    gallery: {
      enabled:true
    }
  });
});
//</script>  -->



<?php echo $footer; ?>
