<?php
  $tabs = array(
    'active' => $_GET['tab'] ? $_GET['tab'] : '0',
    'items' => array(
      array(
        'label' => 'Условия доставки',
        'path' => 'shipping-and-payment/items'
      ),
      array(
        'label' => 'Зона доставки',
        'path' => 'shipping-and-payment/zone'
      )
    )
  )
?>
<div class="container">
  <?php get_template_part('blocks/breadcrumbs') ?>
  <div class="page page--shipping-and-payment">
    <div class="page__side">
      <div class="page__title">
        <h1><?= get_the_title() ?></h1>
      </div>
      <?php
      if ( $tabs ) : ?>
        <div class="tabs">
          <div class="tabs__buttons">
            <?php foreach($tabs['items'] as $index => $tab): ?>
              <a data-tab-id="<?= $index ?>" class="tabs__button <?= $index == $tabs['active'] ? 'tabs__button--active' : '' ?>">
                <?= $tab['label'] ?>
              </a>
            <?php endforeach; ?>
          </div>
          <div class="tabs__contents">
            <?php foreach($tabs['items'] as $index => $tab): ?>
              <div data-tab-id="<?= $index ?>" class="tabs__content <?= $index == $tabs['active'] ? 'tabs__content--active' : '' ?>">
                <?php get_template_part($tab['path']) ?>
              </div>
            <?php endforeach; ?>
          </div>
        </div>
      <?php
        endif;
      ?>
      <div class="page__content content">
        <?php the_content() ?>
      </div>
    </div>
  </div>
</div>