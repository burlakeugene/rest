<?php
  $args = array(
    'post_type' => 'product',
    'posts_per_page' => 8,
    'tax_query' => array(
          array(
              'taxonomy' => 'product_visibility',
              'field'    => 'name',
              'terms'    => 'featured',
          ),
      ),
  );
$products = new WP_Query($args);
if ($products->have_posts()) {
    while ($products->have_posts()) : $products->the_post();
    wc_get_template_part('products/item');
    endwhile;
} else {
    wc_get_template_part('products/empty');
}
wp_reset_postdata();
