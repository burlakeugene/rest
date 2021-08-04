<?php
  $product = new WC_Product(get_the_id());
?>

<div class="product" data-id="<?= get_the_id() ?>" data-cart-url="<?= $product->add_to_cart_url() ?>">
  <?= $product->get_id() ?>
  <?= $product->get_title() ?>
</div>