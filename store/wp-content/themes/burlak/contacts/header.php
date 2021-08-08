<?php
  $items = array();
  $phone = get_option('phone');
  $address = get_option('address');
  if ($phone) {
      $items[] = array(
    'value' => $phone,
    'link' => 'tel:'.phone_replace($phone)
  );
  }
  if ($address) {
      $items[] = array(
    'value' => $address
  );
  }
  if (count($items)):
?>
  <div class="contacts contacts--header">
    <?php foreach ($items as $item): ?>
      <div class="contacts__item">
        <?php if ($item['link']): ?>
          <a href="<?= $item['link'] ?>" title="<?= $item['value'] ?>">
            <?php endif; ?>
            <?= $item['value'] ?>
            <?php if ($item['link']): ?>
          </a>
        <?php endif; ?>
      </div>
    <?php endforeach; ?>
  </div>
<?php endif; ?>