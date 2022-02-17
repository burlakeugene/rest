
<?php if($value): ?>
<div class="tags">
  <?php foreach($value as $tag):
    ?>
    <a
      data-tag="<?= $tag->slug ?>"
      href="<?= get_post_type_archive_link('news').'?tag='.$tag->slug ?>"
      class="ajax"
    >
      <?= $tag->name ?>
    </a>
  <?php endforeach; ?>
</div>
<?php endif; ?>