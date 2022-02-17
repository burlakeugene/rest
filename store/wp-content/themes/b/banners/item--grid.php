<?php
$image = get_the_post_thumbnail_url(get_the_ID(), 'medium');
$fields = get_field('grid_data');
?>

<?php
  if ($fields['link']):
    $link = $fields['link_data'];
  ?>
    <a
      style="background-image: url(<?= $image ?>)"
      href="<?= $link['link'] ?>"
      target="<?= $link['external'] ? '_blank' : '' ?>"
      class="banner <?= $link['external'] ? '' : 'ajax' ?>"
    >
  <?php
  else:
  ?>
    <div class="banner" style="background-image: url(<?= $image ?>)">
  <?php
  endif;
?>
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
    <div class="banner__text__under">
      <?= $fields['under_text'] ?>
    </div>
  </div>
<?php
  if ($fields['link']):
  ?>
  </a>
<?php
  else:
?>
  </div>
<?php
  endif;
?>