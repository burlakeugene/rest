<?php
  $tabs = get_field('tabs');
  $tabsProp = array();
  foreach($tabs as $tab){
    $tabsProp[] = array(
      'label' => $tab['title'],
      'content' => load_template_part('shipping-and-payment/blocks', array(
          'blocks' => $tab['blocks']
        )
      )
    );
  }
?>
<div class="container">
  <?php get_template_part('blocks/breadcrumbs') ?>
  <div class="page page--shipping-and-payment">
    <div class="page__title">
      <h1><?= get_the_title() ?></h1>
    </div>
    <?php
      // my_get_template_part('blocks/tabs', array(
      //   'active' => $_GET['tab'] ? $_GET['tab'] : '0',
      //   'items' => array(
      //     array(
      //       'label' => 'Условия доставки',
      //       'content' => load_template_part('shipping-and-payment/blocks')
      //     ),
      //     array(
      //       'label' => 'Зона доставки',
      //       'content' => load_template_part('stores/zone')
      //     )
      //   )
      // ));
      my_get_template_part('blocks/tabs', array(
        'active' => $_GET['tab'] ? $_GET['tab'] : '0',
        'items' => $tabsProp
      ));
    ?>
    <div class="page__content content">
      <?php the_content() ?>
    </div>
  </div>
</div>