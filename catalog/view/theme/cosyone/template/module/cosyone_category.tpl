<div class="box cattegory-left">
  <div class="box-content box-category">
	<ul>
       <?php foreach ($categories as $category_1) { ?>
       <?php if ($category_1['category_1_id'] == $category_1_id) { ?>
         <li class="open active"><a href="<?php echo $category_1['href']; ?>" ><?php echo $category_1['name']; ?></a>
          <?php } else { ?>
          <li class="open"><a href="<?php echo $category_1['href']; ?>" ><?php echo $category_1['name']; ?></a> 
          <?php } ?>
          <?php if ($category_1['children']) { ?>
          <ul style="display: block;">
            <?php foreach ($category_1['children'] as $category_2) { ?>
            <?php if ($category_2['category_2_id'] == $category_2_id) { ?>
            <li class="open active"><a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
            <?php } else { ?>
          <li><a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
          <?php } ?>
             
            </li>
            <?php } ?>
          </ul>
          <?php } ?>
        </li>
        <?php } ?>
      </ul>
  </div>
</div>
<script>        
	$('.box-category li').bind().click(function(e) {
	$(this).toggleClass("open").find('>ul').stop(true, true).slideToggle(500)
	.end().siblings().find('>ul').slideUp().parent().removeClass("open");
	e.stopPropagation();
	});
			
	$('.box-category li a').click(function(e) {
	e.stopPropagation();
	});
</script>