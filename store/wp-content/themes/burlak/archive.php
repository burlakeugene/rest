<?php
get_header();
$post_type = get_post_type();
?>
<div class="container">
  <?php get_template_part('blocks/breadcrumbs') ?>
  <?php my_get_template_part('blocks/top', array(
    'title' => array(
      'tag' => 'h1',
      'text' => post_type_archive_title('', false),
    ),
    'tags' => array(
      'link' => get_post_type_archive_link($post_type)
    )
  )) ?>
  <?php get_template_part($post_type . '/list'); ?>
</div>
<?php
get_footer();
?>