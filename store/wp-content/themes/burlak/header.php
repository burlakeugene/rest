<!doctype html>
<html <?php language_attributes(); ?>>

<head>
  <meta charset="<?php bloginfo('charset'); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="theme-color" content="<?= get_theme_color(get_option('theme')) ?>">
  <script src="https://api-maps.yandex.ru/2.1/?apikey=1a8ec6fa-754c-461f-aead-f0b6c40f9cf0&lang=ru_RU"></script>
  <script src="https://yastatic.net/share2/share.js"></script>
  <?php get_template_part('open-graph') ?>
  <?php wp_head(); ?>
  <?= get_option('head_additions'); ?>
</head>

<body data-home="<?= esc_url(home_url('/')); ?>" <?php body_class(get_option('theme')); ?>>
  <div id="app">
    <div id="top"></div>
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
          <?php get_template_part('blocks/toggle') ?>
        </div>
        <?php get_template_part('cart/popup') ?>
      </div>
      <div class="header__navigation">
        <?php get_template_part('product/categories') ?>
      </div>
    </header>