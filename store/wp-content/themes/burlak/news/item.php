<?php
  if(!$news) $news = get_post(get_the_id());
  $tags = get_the_tags($news->ID);
  $image_lazy = get_the_post_thumbnail_url($news->ID, 'news-rect-lazy');
  $image = get_the_post_thumbnail_url($news->ID, 'news-rect');
?>
<div class="news__item">
  <div class="news__item__top">
    <?php if(is_archive()):?>
      <div class="news__item__image">
        <a class="ajax" href="<?php the_permalink($news->ID) ?>" data-view>
          <div class="lazy">
            <img src="<?= $image_lazy ?>" data-lazy="<?= $image ?>"/>
          </div>
        </a>
      </div>
    <?php endif;?>
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