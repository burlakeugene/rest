<?php
get_header();
?>
<div class="container">
  <?php get_template_part(get_post_type() . '/list'); ?>
</div>
<?php
get_footer();
?>