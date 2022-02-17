<?php
$post_info = get_post_type_object('banners');
$args = array(
  'numberposts' => 2,
  'post_type' => $post_info->name,
  'meta_query'	=> array(
		'relation'		=> 'AND',
		array(
			'key'	 	=> 'grid',
			'value'	  	=> '1',
			'compare' 	=> '=',
		),
	),
);
$banners = get_posts($args);
?>
<div class="banners__grid">
<?php foreach ($banners as $banner) : ?>
        <?php
          $post = get_post($banner->ID);
          setup_postdata($post);
          get_template_part('banners/item--grid');
          ?>
      <?php endforeach ?>
</div>