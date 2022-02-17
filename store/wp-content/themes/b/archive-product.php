<?php
get_header();
get_template_part('blocks/breadcrumbs');
get_template_part('blocks/shipping');
$query = get_queried_object();
$link = is_tax() ? get_term_link($query->term_id) : get_permalink(wc_get_page_id('shop'));
// orderby=menu_order&paged=1
// orderby=popularity&paged=1
// orderby=rating&paged=1
// orderby=date&paged=1
// orderby=date-asc&paged=1
// orderby=price&paged=1
// orderby=price-desc&paged=1

// mergeQueryString(array(
//   'orderby' => 'price'
// ));
my_get_template_part('blocks/top', array(
    'title' => array(
      'tag' => 'h1',
      'text' => get_post_type_object(get_post_type())->labels->name,
    ),
    'select' => array(
      'label' => 'Сортировать по:',
      'items' => array(
        array(
          'link' => $link.mergeQueryString(array(
            'orderby' => false
          )),
          'text' => 'Умолчанию',
          'active' => !$_GET['orderby']
        ),
        array(
          'link' => $link.mergeQueryString(array(
            'orderby' => 'price'
          )),
          'text' => 'Цена по возрастанию',
          'active' => $_GET['orderby'] == 'price'
        ),
        array(
          'link' => $link.mergeQueryString(array(
            'orderby' => 'price-desc'
          )),
          'text' => 'Цена по убыванию',
          'active' => $_GET['orderby'] == 'price-desc'
        )
      )
    )
  ));
?>
<div class="container">
  <?php get_template_part('product/list'); ?>
</div>
<?php
get_footer();
?>