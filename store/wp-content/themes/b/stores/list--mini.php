<?php
  $stores = get_stores();
?>

<div class="stores">
  <?php
    foreach ($stores as $store):
      $store_fields = get_fields($store->ID);
    ?>
      <div class="store">
        <?= $store_fields['address'] ?>
      </div>
    <?php
    endforeach;
  ?>
</div>