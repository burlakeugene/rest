<?php
$taxonomy     = 'product_cat';
$orderby      = 'name';
$show_count   = 0;
$pad_counts   = 0;
$hierarchical = 1;
$title        = '';
$empty        = 1;

$args = array(
       'taxonomy'     => $taxonomy,
       'orderby'      => $orderby,
       'show_count'   => $show_count,
       'pad_counts'   => $pad_counts,
       'hierarchical' => $hierarchical,
       'title_li'     => $title,
       'hide_empty'   => $empty,
      );
$categories = get_categories($args);
foreach ($categories as $category) {
    echo '<a href="' .  esc_url(get_term_link($category)) . '" class="ajax">';
    woocommerce_subcategory_thumbnail($category);
    echo $category->name;
    echo '</a>';
}
