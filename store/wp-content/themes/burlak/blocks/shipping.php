<?php
  $shipping = WC()->session->get('shipping');
  $stores = get_stores();
?>
<section>
  <div class="container">
    <div class="shipping" data-type="<?= $shipping['type'] ?>"  data-at-time="<?= $shipping['at_time'] ?>">
      <div class="shipping__top">
        <div class="shipping__switcher">
          <div class="shipping__switcher__inner">
            <button data-shipping-type="courier">Доставка</button>
            <button data-shipping-type="self">Заберу с собой</button>
          </div>
        </div>
        <div class="shipping__address">
          <label class="shipping__address__panel">
            <input class="shipping__address__panel__input" placeholder="Введите адрес доставки" type="text" value="<?= $shipping['address'] ? $shipping['address'] : '' ?>">
            <select class="shipping__address__panel__select" value="<?= $shipping['store'] ? $shipping['store'] : '' ?>">
              <option value="" disabled <?= !$shipping['store'] ? 'selected' : '' ?>>
                Выбрать место самовывоза
              </option>
              <?php
                foreach ($stores as $store):
              ?>
                <option value="<?= $store->ID ?>" <?= $shipping['store'] == $store->ID ? 'selected' : '' ?>>
                  <?= get_field('address', $store->ID) ?>
                </option>
              <?php
                endforeach;
              ?>
            </select>
            <div class="shipping__address__panel__icon">
              <?php get_template_part('icons/pin') ?>
            </div>
          </label>
          <button class="shipping__address__button">
            <span>Подтвердить</span>
            <?php get_template_part('icons/loading') ?>
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
              <input type="radio" <?= $shipping['at_time'] === '0' ? 'checked' : '' ?> value="0" name="shipping_at_time">
              <div class="control__fake">
                Чем раньше, тем лучше
              </div>
            </label>
            <label class="control control--radio">
              <input type="radio" <?= $shipping['at_time'] === '1' ? 'checked' : '' ?> value="1" name="shipping_at_time">
              <div class="control__fake">
                Выбрать дату и время
              </div>
            </label>
          </div>
          <div class="shipping__time__control shipping__time__control--calendar">
            <input type="date" data-set-shipping="date" value="<?= $shipping['date'] ?>" min="<?= $shipping['date_min'] ?>" />
          </div>
          <div class="shipping__time__control shipping__time__control--time">
            <input type="time" data-set-shipping="time" value="<?= $shipping['time'] ?>" />
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- WC()->session->set('chosen_shipping_methods', array( 'flat_rate:1' ) ); -->