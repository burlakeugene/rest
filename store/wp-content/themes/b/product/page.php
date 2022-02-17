<?php
  $id = get_the_id();
  $product = new WC_Product($id);
  $image = get_the_post_thumbnail_url($id, 'product-rect');
  $image_lazy = get_the_post_thumbnail_url($id, 'product-rect-lazy');
  $image_full = get_the_post_thumbnail_url($id, 'full');
  $size = $product->get_weight();
  $quantity = 1;
?>
<div class="container">
  <div class="product product--page">
    <?php if($image): ?>
      <div class="product__side">
        <div class="product__image">
          <a data-fancybox href="<?= $image_full ?>">
            <div class="lazy">
              <img src="<?= $image_lazy ?>" data-lazy="<?= $image ?>" alt="<?= get_the_title() ?>">
            </div>
          </a>
        </div>
      </div>
    <?php endif; ?>
    <div class="product__side">
      <div class="product__data">
        <div class="product__title">
          <h1><?php the_title() ?></h1>
        </div>
        <?php
          $items = array();
          $description = get_field('data')['description'];
          $composition = get_field('data')['composition'];
          if($description) $items[] = array(
            'label' => 'Описание',
            'content' => '<div class="content">'.$description.'</div>'
          );
          if($composition) $items[] = array(
            'label' => 'Состав',
            'content' => '<div class="content">'.$composition.'</div>'
          );
          my_get_template_part('blocks/tabs', array(
            'items' => $items
          ));
        ?>
        <?php
          if($size):
          ?>
            <div class="product__size">
              <span>Вес:</span> <?= $size * 1000 ?> грамм
            </div>
          <?php
          endif;
        ?>
        <div class="deliver"></div>
        <div class="product__prices">
          <div class="product__price product__price--current">
            <?= wc_price($product->price) ?>
          </div>
          <?php if($product->price != $product->regular_price): ?>
            <div class="product__price product__price--old">
              <?= wc_price($product->regular_price) ?>
            </div>
          <?php endif; ?>
        </div>
        <div class="product__cart">
          <?php my_get_template_part('blocks/field', array(
            'value' => $quantity,
            'min' => 1,
            'step' => 1,
            'postfix' => ' шт.'
          )) ?>
          <button class="product__add" data-quantity="<?= $quantity ?>" data-product_id="<?= $product->get_id() ?>" data-product_title="<?= $product->get_title() ?>">
            <?php get_template_part('icons/cart') ?> Добавить в корзину
            <?php get_template_part('icons/loading') ?>
          </button>
        </div>
        <div class="deliver"></div>
        <?php get_template_part('blocks/share') ?>
      </div>
    </div>
  </div>
</div>