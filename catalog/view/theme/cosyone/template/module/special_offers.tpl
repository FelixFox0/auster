<div id="special_offers<?php echo $module; ?>" class="special-offer">
    <div class="container">
        <div class="title title--white">
            <h2>Фотогалерея</h2>
        </div>
    </div>
    <div class="special-offer__container owl-carousel">
        <?php foreach ($special_offers as $special_offer) { ?>

        <?php foreach($special_offer['images'] as $img){ ?>
            <div class="special-offer__item">
                <a class="text-medium" href="<?php echo $special_offer['link']; ?>">
                    <span><?php echo $special_offer['title']; ?></span>
                    <i class="ic-eye"></i>
                </a>
                <img src="<?php echo $img; ?>" alt="qwe"/>
            </div>

            
        <?php } ?>
        <?php } ?>
    </div>
</div>
