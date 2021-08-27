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
          'active' => !get_queried_object()->term_id
        )
      );
      foreach ($tags_list as $tag) {
          $tags[] = array(
          'text' => $tag->name,
          'link' => $tags_link.'?tag='.$tag->slug,
          'active' => get_queried_object()->term_id === $tag->term_id
        );
      }
      ?>
      <div class="top__tags">
        Показать:
        <?php my_get_template_part('blocks/select', array(
          'items' => $tags
        )) ?>
      </div>
    <?php endif; ?>
  </div>
</div>