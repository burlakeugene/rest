<?php
$image = get_the_post_thumbnail_url(get_the_ID(), 'news-lazy');
$image_lazy = get_the_post_thumbnail_url(get_the_ID(), 'news');
?>
<div class="news-item">
  <div class="news-item-inner">
    <a class="news-item-image ajax" href="<?php the_permalink() ?>">
      <div class="lazy">
        <img src="<?= $image ?>" data-lazy="<?= $image_lazy ?>" alt="<?php the_title() ?>">
      </div>
    </a>
    <a class="news-item-title ajax" href="<?php the_permalink() ?>">
      <?php the_title() ?>
    </a>
    <div class="news-item-text">
      <?php the_excerpt() ?>
    </div>
    <div class="news-item-more">
      <a class="ajax" href="<?php the_permalink() ?>">
        Читать больше
      </a>
    </div>
  </div>
</div>