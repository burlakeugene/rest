<?php
  if($blocks):
?>
<div class="shipping-and-payment__blocks">
  <?php
    foreach($blocks as $block):
    ?>
      <div class="shipping-and-payment__block">
        <div class="shipping-and-payment__block__title">
          <?= $block['title'] ?>
        </div>
        <div class="shipping-and-payment__block__items">
          <?php
            foreach($block['items'] as $item):
            ?>
              <div class="shipping-and-payment__block__item">
                <?php if($item['icon']['url']): ?>
                  <div class="shipping-and-payment__block__item__image">
                    <img src="<?= $item['icon']['url'] ?>" alt="<?= $item['label'] ?>">
                  </div>
                <?php endif; ?>
                <?php if($item['label']): ?>
                  <div class="shipping-and-payment__block__item__label">
                    <?= apply_filters('the_content', $item['label']) ?>
                  </div>
                <?php endif; ?>
                <?php if($item['text']): ?>
                  <div class="shipping-and-payment__block__item__text">
                    <?=  $item['text'] ?>
                  </div>
                <?php endif; ?>
              </div>
            <?php
            endforeach;
          ?>
        </div>
      </div>
    <?php
    endforeach;
  ?>
</div>
<?php
  endif;
?>