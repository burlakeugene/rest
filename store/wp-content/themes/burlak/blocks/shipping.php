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
          <div class="shipping__address__panel">
            <button onClick="alert('1')">
              <?php get_template_part('stores/icon') ?>
            </button>
            <input type="text" value="<?= $shipping['address'] ? $shipping['address'] : '' ?>">
          </div>
          <button>Подтвердить</button>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- WC()->session->set('chosen_shipping_methods', array( 'flat_rate:1' ) ); -->