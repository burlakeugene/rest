<div class="cart__popup">
  <div class="cart__popup__header">
    <h2>Корзина</h2>
    <button class="cart__clear">
      <?php get_template_part('cart/icon_garbage') ?>
      Очистить
    </button>
    <?php get_template_part('cart/count') ?>
  </div>
  <?php get_template_part('cart/list') ?>
  <div class="cart__popup__footer">
    <div class="cart__buttons">
      <a href="<?= get_permalink(get_page_by_path('checkout')) ?>" class="ajax">Оформить</a>
      <button class="cart__continue">Продолжить покупки</button>
    </div>
  </div>
</div>