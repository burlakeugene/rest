<?php
$cart = WC()->cart->get_cart();
?>
<div class="cart__list <?= !count($cart) ? 'cart__list--empty' : '' ?>">
<?php
  if (count($cart)):
  ?>
  <div class="cart__items">
<?php
  foreach (WC()->cart->get_cart() as $key => $product):
    my_get_template_part('product/item--cart', array(
      'product' => $product,
      'key' => $key
    ));
  ?>
  <?php endforeach; ?>
  </div>
<?php else: ?>
  <div class="cart__list__empty">
    Корзина пуста
  </div>
<?php endif; ?>
</div>