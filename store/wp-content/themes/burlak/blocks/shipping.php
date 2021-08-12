<?php
  if (!WC()->session->get('shipping')) {
      WC()->session->set('shipping', array(
      'type' => 'courier'
    ));
  }
  $shipping = WC()->session->get('shipping');
?>
<section>
  <div class="container">
    <div class="shipping shipping--<?= $shipping['type'] ?>">
      <div class="shipping__top">
        <div class="shipping__switcher">
          <div class="shipping__switcher__inner">
            <button data-set-shipping="courier">Доставка</button>
            <button data-set-shipping="self">Заберу с собой</button>
          </div>
        </div>
        <div class="shipping__address">
          <label class="shipping__address__panel">
            <input class="shipping__address__panel__input" placeholder="Введите адрес доставки" type="text" value="<?= $shipping['address'] ? $shipping['address'] : '' ?>">
            <div class="shipping__address__panel__icon">
              <?php get_template_part('icons/pin') ?>
            </div>
          </label>
          <button class="shipping__address__button">
            <span>Подтвердить</span>
            <?php get_template_part('blocks/loading') ?>
          </button>
        </div>
      </div>
      <div class="shipping__bottom">
        <div class="shipping__time">
          <div class="shipping__time__title">
            Когда доставить?
          </div>
          <div class="shipping__time__checkboxies">
            <label class="control control--radio">
              <input type="radio" value="0" name="shipping_time">
              <div class="control__fake">
                Чем раньше, тем лучше
              </div>
            </label>
            <label class="control control--radio">
              <input type="radio" value="1" name="shipping_time">
              <div class="control__fake">
                Выбрать дату и время
              </div>
            </label>
          </div>
          <div class="shipping__time__control shipping__time__control--calendar">
            <label>
              <input type="text">
              <?php get_template_part('icons/calendar') ?>
            </label>
          </div>
          <div class="shipping__time__control shipping__time__control--time">
            <label>
              <input type="text">
              <?php get_template_part('icons/time') ?>
            </label>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- WC()->session->set('chosen_shipping_methods', array( 'flat_rate:1' ) ); -->