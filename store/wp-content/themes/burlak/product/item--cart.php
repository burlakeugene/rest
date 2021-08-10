<?php
  $product_data = $product['data'];
  $id = $product['product_id'];
  $name = $product_data->get_title();
  $qty = $product['quantity'];
  $price = WC()->cart->get_product_price($product_data);
  $subtotal = WC()->cart->get_product_subtotal($product_data, $product['quantity']);
  $link = $product_data->get_permalink($product);
  $attributes = $product_data->get_attributes();
  $meta = wc_get_formatted_cart_item_data($product);
  $image = wp_get_attachment_image_src(get_post_thumbnail_id($id), 'product-square');
?>
<div class="product product--cart">
  <button class="product__remove" data-key="<?= $key ?>">
    <?php get_template_part('cart/icon_garbage') ?>
  </button>
  <div class="product__inner">
    <div class="product__image">
      <a data-view href="<?= $link ?>" class="ajax" title="<?= $name ?>">
        <img src="<?php  echo $image[0]; ?>" alt="<?= $name ?>">
      </a>
    </div>
    <div class="product__data">
      <div class="product__title">
        <a href="<?= $link ?>" class="ajax">
          <?= $name ?>
        </a>
      </div>
      <div class="product__qty">
        <button class="product__qty__action product__qty__action--minus" data-key="<?= $key ?>" data-qty="<?= $qty - 1 ?>" <?= $qty <= 1 ? 'disabled' : '' ?>></button>
        <div class="product__qty__value"><?= $qty ?> шт.</div>
        <button class="product__qty__action product__qty__action--plus" data-key="<?= $key ?>" data-qty="<?= $qty + 1 ?>"></button>
      </div>
      <div class="product__price">
        <?= $price ?>
      </div>
    </div>
  </div>
</div>