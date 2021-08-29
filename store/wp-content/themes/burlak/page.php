<?php
  get_header();
  get_template_part('blocks/breadcrumbs');
  get_template_part('page/content');
  if (is_singular('news') && get_field('related')) {
    my_get_template_part('sections/section', array(
      'mini_margin' => true,
      'header' => array(
        'title' => 'Похожие новости'
      ),
      'content' => array(
        'path' => 'news/related'
      )
    ));
  }
  get_footer();
