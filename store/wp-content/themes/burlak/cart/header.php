<button class="cart cart--header cart--button">
  <div class="cart__count">
    <?php get_template_part('cart/icon') ?> <span><?= WC()->cart->cart_contents_count; ?> товаров</span>
  </div>
  <!-- <div>Count: <?= wc_price(WC()->cart->total); ?></div> -->
</button>

<!--  https://woocommerce.github.io/code-reference/files/woocommerce-templates-cart-cart.html#source-view.159 -->