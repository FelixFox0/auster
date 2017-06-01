<?php echo $header; ?>
<?php echo $content_top; ?>
<div class="look-book">
<div class="content look-book__inner">
  <div class="container">
      <div class="content__inner">  
        <div id="content" class="content__right">
        <div class="title title--white">
            <h1><?php echo $heading_title; ?>
            </h1>
          </div>

          <div class="look-book__container">
            <?php if(isset($blog) && $blog) : ?>
             
              <?php foreach ($blog as $key=>$post) : 
               if($key%2){ $class="look-h5-r";  }
               else { $class="look-h5-l";  }
              ?>

              <div class="look-book__item ">
                          <div class="info">                            
                            <div class="img">
                            <a href="<?php echo HTTP_SERVER; ?>index.php?route=blog/special_offers&amp;path=<?php echo $post['blog_id']; ?>" style="background-image: url('<?php echo $post['image']; ?>');">
                              
                              <i class="ic-eye"></i>
                            </a>
                             <?php if(false) : ?>
                                <?php //if($post['images']) : ?>
                                <div class="collection-grid">
                                    <?php $i=0; ?>
                                    <?php foreach ($post['images'] as $image) : 
                                      $i++;
                                      if($i>4){
                                      break;
                                      }  ?> 
                                    <div class="no-padding col-md-3 look-main">                                          
                                        <a href="<?php echo HTTP_SERVER; ?>index.php?route=blog/special_offers&amp;path=<?php echo $post['blog_id']; ?>"><img src="<?php echo $image['image']; ?>" alt="img" >
                                        </a>                                        
                                      </div>
                                    
                                    <?php endforeach; ?>
                                  </div>
                                </div>
                              <?php endif; ?>
                          </div>
                          <div class="look-book__title">
                              <a href="<?php echo HTTP_SERVER; ?>index.php?route=blog/special_offers&amp;path=<?php echo $post['blog_id']; ?>" class="look-sp-title <?php echo $class; ?>"><?php echo ucfirst($post['name']); ?></a>
                          </div>
                         
                          <div class="descr">
                             <p><?php //echo ucfirst($post['description']); ?>
                               <?php echo substr($post['description'], 0, 90); ?>...
                             </p>
                              <!-- <div class="special-offers__date">
                                <p class="date"><span class="icon-calendar"></span><?php echo $post['date_added']; ?></p>
                                <p class="time"><span class="icon-clock"></span><?php echo $post['time_added']; ?></p>
                              </div> -->
                              
                          </div>
                      </div>
              </div>
              <?php endforeach; ?>
            <?php endif; ?>
          </div>
          <div id="blog-pagination">
              <?php echo $pagination; ?>
          </div>
        </div>
    </div>
  </div>
  
</div>


</div>


<?php echo $footer; ?>

