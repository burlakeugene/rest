<?php
  $product = new WC_Product(get_the_id());
?>

<div class="product">
  <?= $product->get_id() ?>
  <?= $product->get_title() ?>
  <button class="product__add" data-product_id="<?= $product->get_id() ?>" data-product_title="<?= $product->get_title() ?>">
      <?php get_template_part('cart/icon') ?>
  </button>
</div>