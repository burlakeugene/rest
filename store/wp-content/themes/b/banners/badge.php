<?php
  $badge = get_field('badge');
  if($badge['available']):
?>
<div class="badge badge--<?= $badge['color'] ?>">
  <?= $badge['text'] ?>
</div>
<?php endif; ?>