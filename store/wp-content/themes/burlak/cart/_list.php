<?php
$cart = WC()->cart->get_cart();
?>
<div class="cart__list <?= !count($cart) ? 'cart__list--empty' : '' ?>">
<?php
  if (count($cart)):
  ?>
  <div class="cart__items">
<?php
  foreach (WC()->cart->get_cart() as $cart_item_key => $cart_item):
      $product = $cart_item['data'];
      $product_id = $cart_item['product_id'];
      $name = $product->get_title();
      $qty = $cart_item['quantity'];
      $price = WC()->cart->get_product_price($product);
      $subtotal = WC()->cart->get_product_subtotal($product, $cart_item['quantity']);
      $link = $product->get_permalink($cart_item);
      $attributes = $product->get_attributes();
      $meta = wc_get_formatted_cart_item_data($cart_item);
      $image = wp_get_attachment_image_src(get_post_thumbnail_id($product_id), 'product-square')
  ?>
    <div class="cart__item">
      <button class="cart__item__remove cart__remove" data-key="<?= $cart_item_key ?>">
        <?php get_template_part('cart/icon_garbage') ?>
      </button>
      <div class="cart__item__inner">
        <div class="cart__item__image">
          <a data-view href="<?= $link ?>" class="ajax" title="<?= $name ?>">
            <img src="<?php  echo $image[0]; ?>" alt="<?= $name ?>">
          </a>
        </div>
        <div class="cart__item__data">
          <div class="cart__item__title">
            <a href="<?= $link ?>" class="ajax">
              <?= $name ?>
            </a>
          </div>
          <div class="cart__item__qty">
            <button class="cart__item__qty__action cart__item__qty__action--minus" data-key="<?= $cart_item_key ?>" data-qty="<?= $qty - 1 ?>" <?= $qty <= 1 ? 'disabled' : '' ?>></button>
            <div class="cart__item__qty__value"><?= $qty ?> шт.</div>
            <button class="cart__item__qty__action cart__item__qty__action--plus" data-key="<?= $cart_item_key ?>" data-qty="<?= $qty + 1 ?>"></button>
          </div>
          <div class="cart__item__price">
            <?= $price ?>
          </div>
        </div>
      </div>
    </div>
  <?php endforeach; ?>
  </div>
<?php else: ?>
  <div class="cart__list__empty">
    Корзина пуста
  </div>
<?php endif; ?>
</div>