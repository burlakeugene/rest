
<div class="container">
  <div class="page page--checkout">
    <div class="checkout__wrapper">
      <div class="checkout__wrapper__loading">
        <?php get_template_part('icons/loading') ?>
      </div>
      <div class="page__title">
        <h1><?php the_title() ?></h1>
      </div>
      <?php get_template_part('checkout/content') ?>
    </div>
  </div>
</div>