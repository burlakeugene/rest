<?php
$post_info = get_post_type_object('news');
$args = array(
  'numberposts' => 4,
  'post_type' => $post_info->name,
  'orderby' => 'date',
  'order' => 'ASC'
);
$news = get_posts($args);
?>

<div class="section">
  <div class="container">
    <div class="section-title">
      <h2><?= $post_info->label ?></h2>
    </div>
    <div class="news">
      <?php foreach ($news as $news_item) : ?>
        <?php
          $post = get_post($news_item->ID);
          setup_postdata($post);
          get_template_part('news/item');
          ?>
      <?php endforeach ?>
    </div>
    <div class="section-button">
      <a class="ajax" href="<?= get_post_type_archive_link($post_info->name) ?>">
        Смотреть все
      </a>
    </div>
  </div>
</div>
<?php wp_reset_postdata() ?>