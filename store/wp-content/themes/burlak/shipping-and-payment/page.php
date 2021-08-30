<div class="container">
  <?php get_template_part('blocks/breadcrumbs') ?>
  <div class="page page--shipping-and-payment">
    <div class="page__side">
      <div class="page__title">
        <h1><?= get_the_title() ?></h1>
      </div>
      <?php
        my_get_template_part('blocks/tabs', array(
          'active' => $_GET['tab'] ? $_GET['tab'] : '0',
          'items' => array(
            array(
              'label' => 'Условия доставки',
              'content' => load_template_part('shipping-and-payment/items')
            ),
            array(
              'label' => 'Зона доставки',
              'content' => load_template_part('stores/zone')
            )
          )
        ));
      ?>
      <div class="page__content content">
        <?php the_content() ?>
      </div>
    </div>
  </div>
</div>