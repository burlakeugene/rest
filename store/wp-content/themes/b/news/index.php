<?php
  $post_info = get_post_type_object('news');
  $args = array(
    'numberposts' => 3,
    'post_type' => $post_info->name,
    'orderby' => 'date',
    'order' => 'ASC'
  );
  $news = get_posts($args);
  my_get_template_part('news/list', array(
    'news' => $news
  ));
?>