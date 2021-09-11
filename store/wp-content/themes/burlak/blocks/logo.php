<?php
  if (has_custom_logo()):
    $custom_logo_id = get_theme_mod('custom_logo');
    $custom_logo_data = wp_get_attachment_image_src($custom_logo_id, 'full');
    $custom_logo_url = $custom_logo_data[0];
?>
    <a href="<?= esc_url(home_url('/')); ?>" title="<?= get_bloginfo('name') ?>" class="ajax logo">
      <img src="<?= $custom_logo_url ?>" alt="">
    </a>
<?php endif; ?>

<?php
  if (has_custom_header()):
    $url = get_header_image();
?>
    <a href="<?= esc_url(home_url('/')); ?>" title="<?= get_bloginfo('name') ?>" class="ajax logo logo--mobile">
      <img src="<?= $url ?>" alt="">
    </a>
<?php endif; ?>