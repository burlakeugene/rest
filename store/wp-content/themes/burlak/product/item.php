<?php
  if($product && get_class($product) == 'WP_Post') $product = new WC_Product($product->ID);
  if(!$product) $product = new WC_Product(get_the_id());
  $image_lazy = wp_get_attachment_image_src(get_post_thumbnail_id($product->get_id()), 'product-rect-lazy');
  $image = wp_get_attachment_image_src(get_post_thumbnail_id($product->get_id()), 'product-rect');
  $size = $product->get_weight();
?>

<div class="product">
  <div class="product__inner">
    <div class="product__image">
      <a data-view title="<?= $product->get_title() ?>" class="ajax" href="<?= $product->get_permalink() ?>">
        <div class="lazy">
          <img src="<?= $image_lazy[0] ?>" data-lazy="<?= $image[0] ?>"/>
        </div>
      </a>
    </div>
    <div class="product__data">
      <div class="product__data__header">
        <div class="product__title">
          <a class="ajax" href="<?= $product->get_permalink() ?>">
            <?= $product->get_title() ?>
          </a>
        </div>
        <?php
          if($size):
          ?>
            <div class="product__size">
              <?= $size * 1000 ?> грамм
            </div>
          <?php
          endif;
        ?>
      </div>
      <div class="product__data__footer">
        <div class="product__prices">
          <div class="product__price product__price--current">
            <?= wc_price($product->price) ?>
          </div>
          <?php if($product->price != $product->regular_price): ?>
            <div class="product__sale">
              <?php
                $percent = ($product->regular_price - $product->price) / $product->regular_price * 100;
                $percent = explode('.', $percent);
                if($percent[1] && strlen($percent[1]) && $percent[1] > 2){
                  $percent[1] = substr($percent[1], 0, 2);
                }
                echo '-'.implode('.', $percent).'%';
              ?>
            </div>
            <div class="product__price product__price--old">
              <?= wc_price($product->regular_price) ?>
            </div>
          <?php endif; ?>
        </div>
        <button class="product__add" data-product_id="<?= $product->get_id() ?>" data-product_title="<?= $product->get_title() ?>">
          <?php get_template_part('icons/cart') ?>
          <?php get_template_part('icons/loading') ?>
        </button>
      </div>
    </div>
  </div>
</div>