<?php
  $blocks = get_field('block');
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
                <div class="shipping-and-payment__block__item__image">
                  <img src="<?= $item['icon']['url'] ?>" alt="<?= $item['text'] ?>">
                </div>
                <div class="shipping-and-payment__block__item__text">
                  <?= apply_filters('the_content', $item['text']) ?>
                </div>
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