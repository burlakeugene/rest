<?php
$fields = WC()->checkout()->checkout_fields;
?>

<div class="container">
  <div class="page page--checkout">
    <div class="checkout">
      <div class="page__title">
        <h1><?php the_title() ?></h1>
      </div>
      <div class="page__sides">
        <div class="page__side">
          <pre>
            <?php print_r($fields); ?>
          </pre>
        </div>
        <div class="page__side">
          <div class="page__side__title">
            Ваш заказ
          </div>
          <?php get_template_part('cart/list') ?>
          <?php get_template_part('cart/totals') ?>
        </div>
      </div>
    </div>
  </div>
</div>