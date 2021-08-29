<?php
  $news = get_field('related');
  if($news) my_get_template_part('news/list', array(
    'news' => $news
  ));
?>