<?php
$posts_info = get_post_type_object('stores');
?>
<a class="stores stores--header ajax" href="<?= get_post_type_archive_link($posts_info->name) ?>">
  <?php get_template_part('icons/pin') ?>
  <span>Рестораны</span>
</a>