<?php
  global $wp_query;
  $total_pages = $wp_query->max_num_pages;
  $current_page = $wp_query->query['paged'] ? $wp_query->query['paged'] : 1;
?>
<div class="products">
	<div class="load-more">
		<div class="list load-more__list">
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
				my_get_template_part('blocks/empty', array(
					'text' => 'Товары не найдены'
				));
			endif;
		?>
		</div>
		<?php
				if($current_page < $total_pages):
			?>
			<div class="load-more__pagination">
				<button class="button button--loader load-more__pagination__button">
					Загрузить еще
					<?php get_template_part('icons/loading') ?>
				</button>
				<?php the_posts_pagination() ?>
			</div>
		<?php endif; ?>
	</div>
</div>