<section class="section">
  <div class="container">
    <?php if($header):
      $title = $header['title'];
      $link = $header['link'];
      ?>
      <div class="section__header">
        <?php if($title): ?>
          <h2><?= $title ?></h2>
        <?php endif; ?>
        <?php if($link): ?>
          <a class="button <?= $link['ajax'] ? 'ajax' : '' ?>" href="<?= $link['href'] ?>">
            <?= $link['text'] ?>
          </a>
        <?php endif; ?>
      </div>
    <?php endif; ?>
    <?php if($content): ?>
      <?php if($content['path']) get_template_part($content['path']) ?>
    <?php endif; ?>
  </div>
</section>