<?php
$products = get_field('data')['related'];
my_get_template_part('product/list', array(
	'products' => $products
));