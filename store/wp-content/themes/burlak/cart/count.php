<?php
  $count = WC()->cart->cart_contents_count;
?>

<span class="cart__count"><?= $count ?> <?= declension($count) ?></span>