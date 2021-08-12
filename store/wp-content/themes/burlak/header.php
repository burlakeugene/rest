<!doctype html>
<html <?php language_attributes(); ?>>

<head>
  <meta charset="<?php bloginfo('charset'); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="<?php echo bloginfo('template_directory'); ?>/favicon.png" type="image/x-icon" />
  <meta name="theme-color" content="<?= get_option('theme-color') ?>">
  <script src="https://api-maps.yandex.ru/2.1/?apikey=1a8ec6fa-754c-461f-aead-f0b6c40f9cf0&lang=ru_RU"></script>
  <?php get_template_part('open-graph') ?>
  <?php wp_head(); ?>
  <?= get_option('head_additions'); ?>
</head>

<body data-home="<?= esc_url(home_url('/')); ?>" <?php body_class(); ?>>
  <div id="app">
    <header class="header">
      <div class="header__main">
        <div class="header__left">
          <?php get_template_part('blocks/logo') ?>
          <?php get_template_part('stores/header') ?>
          <?php get_template_part('contacts/header') ?>
        </div>
        <div class="header__right">
          <?php get_template_part('search/button') ?>
          <?php get_template_part('cart/button') ?>
        </div>
        <?php get_template_part('cart/popup') ?>
      </div>
      <?php get_template_part('search/panel') ?>
      <div class="header__navigation">
        <?php get_template_part('product/categories') ?>
      </div>
    </header>