<?php
// get_template_part('blocks/breadcrumbs')
?>
<div class="product__list">
	<?php
		if($products):
		foreach ($products as $product):
			my_get_template_part('product/item', array(
				'product' => $product
			));
		endforeach;
		elseif (have_posts()) :
			while (have_posts()) : the_post();
				get_template_part('product/item');
			endwhile;
		else:
			get_template_part('blocks/empty');
		endif;
		the_posts_pagination();
	?>
</div>