<div class="cart">
  <div>Total price: <?= wc_price(WC()->cart->total); ?></div>
  <div>Count: <?= WC()->cart->cart_contents_count; ?></div>
</div>

<!--  https://woocommerce.github.io/code-reference/files/woocommerce-templates-cart-cart.html#source-view.159 -->