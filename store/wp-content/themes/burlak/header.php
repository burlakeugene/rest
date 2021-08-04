<!doctype html>
<html <?php language_attributes(); ?>>

<head>
  <meta charset="<?php bloginfo('charset'); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="<?php echo bloginfo('template_directory'); ?>/favicon.png" type="image/x-icon" />
  <meta name="theme-color" content="<?= get_option('theme-color') ?>">
  <?php get_template_part('open-graph') ?>
  <?php wp_head(); ?>
</head>

<body data-home="<?= esc_url(home_url('/')); ?>" <?php body_class(); ?>>
  <div id="app">
    <header>
      <?php get_template_part('cart/header') ?>
      <?php get_template_part('navigation/header') ?>
    </header>