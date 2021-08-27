<?php
  $news = get_field('related');
  my_get_template_part('news/list', array(
    'news' => $news
  ));
?>