<?php
  if(!$news) $news = get_post(get_the_id());
  $tags = get_the_tags($news->ID);
?>
<div class="news__item">
  <div class="news__item__top">
    <div class="news__item__info">
      <div class="news__item__date">
          <?php get_template_part('icons/calendar') ?>
          <span>
            <?php
              $date = date_parse($news->post_date);
              echo $date['day'].' '.getMonth($date['month'])
            ?>
          </span>
        </div>
        <div class="news__item__tags">
          <?php foreach($tags as $tag):
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
    </div>
    <div class="news__item__title">
      <a class="ajax" href="<?php the_permalink($news->ID) ?>">
        <?= $news->post_title ?>
      </a>
    </div>
  </div>
  <div class="news__item__bottom">
    <div class="news__item__text">
      <?= $news->post_excerpt ?>
    </div>
    <div class="news__item__more">
      <a class="ajax" href="<?php the_permalink($news->ID) ?>">
        <span>Узнать подробнее</span>
        <?php get_template_part('icons/arrow-right') ?>
      </a>
    </div>
  </div>
</div>