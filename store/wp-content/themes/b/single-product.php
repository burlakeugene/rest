<?php
  get_header();
  get_template_part('blocks/breadcrumbs');
  get_template_part('blocks/shipping');
  get_template_part('product/page');
  if (get_field('data')['related']) {
    my_get_template_part('sections/section', array(
      'mini_margin' => true,
      'header' => array(
        'title' => 'С этим товаром заказывают'
      ),
      'content' => array(
        'path' => 'product/related'
      )
    ));
  }
  get_footer();
