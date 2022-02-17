<?php
  $stores = get_stores();
  $data = array();
  foreach ($stores as $store) {
      $store_fields = get_fields($store->ID);
      $data[] = array(
      'id' => $store->ID,
      'name' => $store->post_title,
      'fields' => $store_fields,
      'active' => $store->ID == $stores[0]->ID
    );
  }
?>

<div class="stores__zone">
  <div class="stores__zone__side">
    <div id="map" data-data='<?= json_encode($data) ?>'></div>
  </div>
  <div class="stores__zone__side">
    <?php foreach ($data as $store): ?>
      <div data-id="<?= $store['id'] ?>" class="store <?= $store['active'] ? 'store--active' : '' ?>">
        <div class="store__title">
          Адрес и контакты  кафе:
        </div>
        <?php if ($store['fields']['phone']): ?>
          <div class="store__item store__item--phone">
            <div class="store__item__label">
              Контактный телефон:
            </div>
            <div class="store__item__value">
              <a href="tel:<?= phone_replace($store['fields']['phone']) ?>">
                <?= $store['fields']['phone'] ?>
              </a>
            </div>
          </div>
        <?php endif; ?>
        <?php if ($store['fields']['address']): ?>
          <div class="store__item">
            <div class="store__item__label">
              Адрес:
            </div>
            <div class="store__item__value">
              <?= $store['fields']['address'] ?>
            </div>
          </div>
        <?php endif; ?>
        <?php if ($store['fields']['work_time']): ?>
          <div class="store__item">
            <div class="store__item__label">
              Время работы:
            </div>
            <div class="store__item__value">
              <?= apply_filters('the_content', $store['fields']['work_time']) ?>
            </div>
          </div>
        <?php endif; ?>
        <div class="store__item">
          <button class="button button--gray" data-callback="Магазин, <?= $store['fields']['address'] ?>">
						Обратная связь
					</button>
        </div>
      </div>
    <?php endforeach; ?>
  </div>
</div>