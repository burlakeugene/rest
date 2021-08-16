<?php
  get_header();
  get_template_part('banners/index');
  get_template_part('blocks/shipping');
  my_get_template_part('sections/section', array(
    'header' => array(
      'title' => 'Популярные товары',
      'link' => array(
        'ajax' => true,
        'href' => get_permalink(wc_get_page_id('shop')),
        'text' => 'Перейти в каталог'
      )
    ),
    'content' => array(
      'path' => 'product/popular'
    )
  ));
  my_get_template_part('sections/section', array(
    'header' => array(
      'title' => 'Новости и акции',
      'link' => array(
        'ajax' => true,
        'href' => get_post_type_archive_link('news'),
        'text' => 'Все новости и акции'
      )
    ),
    'content' => array(
      'path' => 'news/index'
    )
  ));
  get_footer();
?>