<?php
  $title_tag = $title['tag'] ? $title['tag'] : 'h1';
  $title_text = $title['text'] ? $title['text'] : '';
  $tags_list = get_tags();
?>
<div class="top">
  <div class="top__left">
    <div class="title">
      <<?= $title_tag ?>>
        <?= $title_text ?>
      </<?= $title_tag ?>>
    </div>
  </div>
  <div class="top__right">
    <?php if ($tags && $tags_list):
      $tags_link = $tags['link'] ? $tags['link'] : '';
      $tags = array(
        array(
          'text' => 'Все',
          'link' => $tags_link,
          'active' => !$_GET['tag']
        )
      );
      foreach ($tags_list as $tag) {
          $tags[] = array(
          'text' => $tag->name,
          'link' => $tags_link.'?tag='.$tag->slug,
          'active' => $_GET['tag'] === $tag->slug
        );
      }
      $tag_active_index = array_search('1', array_column($tags, 'active'));
      $tag_active = $tags[$tag_active_index];
      ?>
      <div class="top__tags">
        Показать:
        <div class="select">
          <div class="select__current">
            <?= $tag_active['text'] ?>
            <?php get_template_part('icons/arrow-bottom') ?>
          </div>
          <div class="select__list">
            <?php foreach ($tags as $key => $tag):
              if ($key === $tag_active_index) {
                  continue;
              }
              ?>
              <a class="select__list__item ajax" href="<?= $tag['link'] ?>">
                <?= $tag['text'] ?>
              </a>
            <?php endforeach; ?>
          </div>
        </div>
      </div>
    <?php endif; ?>
  </div>
</div>