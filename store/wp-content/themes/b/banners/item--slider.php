<?php
$image = get_the_post_thumbnail_url(get_the_ID(), 'large');
$fields = get_field('slider_data');
?>

<div class="banner banner--big" style="background-image: url(<?= $image ?>)">
  <div class="banner__top">
    <?php get_template_part('banners/badge') ?>
  </div>
  <div class="banner__data">
    <div class="banner__title">
      <?= $fields['title'] ?>
    </div>
    <div class="banner__text">
      <?= $fields['text'] ?>
    </div>
    <?php if ($fields['link']):
      $link = $fields['link_data']
      ?>
      <div class="banner__link">
        <a
          href="<?= $link['link'] ?>"
          target="<?= $link['external'] ? '_blank' : '' ?>"
          class="<?= $link['external'] ? '' : 'ajax' ?>"
        >
          <?= $link['text'] ?>
        </a>
      </div>
    <?php endif;?>
  </div>
</div>