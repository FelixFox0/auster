<div id="special_offers<?php echo $module; ?>" class="special-offer">
    <div class="special-offer__title">
        <span class="icon-present"></span> Акции и спецпредложения
    </div>
    <div class="special-offer__container">
        <?php foreach ($special_offers as $special_offer) { ?>
        <div class="panel-body">
                <img src="<?php echo $special_offer['image']; ?>" />
                
                <p><?php echo $special_offer['description']; ?></p>
        </div>
        <?php foreach($special_offer['images'] as $img){ ?>
            <div>
                <a class="text-medium" href="<?php echo $special_offer['link']; ?>"><?php echo $special_offer['title']; ?></a>
                <img src="/image/<?php echo $img['image']; ?>" />
            </div>
            
            
        <?php } ?>
        <?php } ?>
    </div>
    <div class="special-offer__show-more">
        <a  class="text-medium" href="/index.php?route=blog/special_offers">Просмотреть все акции и спецпредложения</a>
    </div>
</div>
