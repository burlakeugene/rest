<?php
$args = array(
	'taxonomy'     => 'product_cat',
	'orderby'      => 'name',
	'show_count'   => 0,
	'pad_counts'   => 0,
	'hierarchical' => 1,
	'title_li'     => '',
	'hide_empty'   => 1,
);
$categories = get_categories($args);
?>
<div class="product__categories">
	<?php
    foreach ($categories as $category):
			$url = esc_url(get_term_link($category));
			$current_url =  home_url($wp->request).'/';
			?>
				<a href="<?= $url ?>" class="ajax <?= $current_url === $url ? 'active' : '' ?>">
					<?= woocommerce_subcategory_thumbnail($category); ?>
					<?= $category->name ?>
				</a>
			<?php
    endforeach;
	?>
</div>