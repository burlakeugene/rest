<?php
  $title_tag = $title['tag'] ? $title['tag'] : 'h1';
  $title_text = $title['text'] ? $title['text'] : '';
?>
<div class="container">
  <div class="top">
    <div class="top__left">
      <div class="title">
        <<?= $title_tag ?>>
          <?= $title_text ?>
        </<?= $title_tag ?>>
      </div>
    </div>
    <div class="top__right">
      <?php if ($select):
        ?>
        <div class="top__select">
          <?= $select['label'] ?>
          <?php my_get_template_part('blocks/select', array(
            'items' => $select['items']
          )) ?>
        </div>
      <?php endif; ?>
    </div>
  </div>
</div>