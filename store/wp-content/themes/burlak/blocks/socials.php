<?php
  $socials = get_socials();
?>

<div class="socials">
  <?php
    foreach($socials as $key => $social):
    ?>
      <div class="social <?= 'social--'.$key ?>">
        <a target="_blank" href="<?= $social ?>">
          <?php get_template_part('icons/'.$key) ?>
        </a>
      </div>
    <?php
    endforeach;
  ?>
</div>