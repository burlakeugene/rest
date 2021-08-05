<?php
  $product = new WC_Product(get_the_id());
?>

<div class="product" data-product_id="<?= $product->get_id() ?>" data-product_title="<?= $product->get_title() ?>">
  <?= $product->get_id() ?>
  <?= $product->get_title() ?>
</div>