<?php
$page = get_page_by_path('shipping-and-payment');
?>
<a class="stores stores--header ajax" href="<?php the_permalink($page->ID) ?>?tab=1">
  <?php get_template_part('icons/pin') ?>
  <span>Рестораны</span>
</a>