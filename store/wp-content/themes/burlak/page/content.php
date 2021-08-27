<?php
  $image = get_the_post_thumbnail_url($news->ID, 'medium');
  $image_lazy = get_the_post_thumbnail_url($news->ID, 'lazy');
  $image_full = get_the_post_thumbnail_url($news->ID, 'full');
?>
<div class="container">
  <?php get_template_part('blocks/breadcrumbs') ?>
  <div class="page">
    <?php if($image): ?>
      <div class="page__side">
        <div class="page__image">
          <a data-fancybox href="<?= $image_full ?>">
            <div class="lazy">
              <img src="<?= $image_lazy ?>" data-lazy="<?= $image ?>" alt="<?= get_the_title() ?>">
            </div>
          </a>
        </div>
      </div>
    <?php endif; ?>
    <div class="page__side">
      <div class="page__data">
        <?php
          my_get_template_part('blocks/date', array(
            'value' => get_the_date()
          ));
        ?>
        <?php
          my_get_template_part('blocks/tags', array(
            'value' => get_the_tags()
          ));
        ?>
        <div class="page__title">
          <h1><?php the_title() ?></h1>
        </div>
        <div class="page__content content">
          <?php the_content() ?>
        </div>
        <?php get_template_part('blocks/share') ?>
      </div>
    </div>
  </div>
</div>