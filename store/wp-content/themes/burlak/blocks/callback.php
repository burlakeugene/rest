<?php
  $id = 86;
  $fields = get_fields($id);
?>
<div class="modal" id="callback">
  <?php if($fields['title']): ?>
  <div class="modal__title">
    <?= $fields['title'] ?>
  </div>
  <?php endif; ?>
  <?php if($fields['text']): ?>
  <div class="modal__text">
    <?= $fields['text'] ?>
  </div>
  <?php endif; ?>
  <?php if($fields['shortcode']): ?>
  <div class="modal__text">
  <?= do_shortcode($fields['shortcode']) ?>
  </div>
  <?php endif; ?>
</div>