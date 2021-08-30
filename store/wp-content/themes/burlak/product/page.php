<?php
  $image = get_the_post_thumbnail_url($news->ID, 'medium');
  $image_lazy = get_the_post_thumbnail_url($news->ID, 'lazy');
  $image_full = get_the_post_thumbnail_url($news->ID, 'full');
?>
<div class="container">
  <div class="product product--page">
    <?php if($image): ?>
      <div class="product__side">
        <div class="product__image">
          <a data-fancybox href="<?= $image_full ?>">
            <div class="lazy">
              <img src="<?= $image_lazy ?>" data-lazy="<?= $image ?>" alt="<?= get_the_title() ?>">
            </div>
          </a>
        </div>
      </div>
    <?php endif; ?>
    <div class="product__side">
      <div class="product__data">
        <div class="product__title">
          <h1><?php the_title() ?></h1>
        </div>
        <div class="product__content content">
          <?php the_content() ?>
        </div>
      </div>
    </div>
  </div>
</div>