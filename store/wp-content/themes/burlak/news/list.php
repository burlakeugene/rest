<div class="news__list">
    <?php
      if($news):
        foreach ($news as $post):
          my_get_template_part('news/item', array(
            'news' => $post
          ));
        endforeach;
      elseif (have_posts()) :
        while (have_posts()) : the_post();
          get_template_part('news/item');
        endwhile;
      else:
        get_template_part('blocks/empty');
      endif;
      the_posts_pagination();
    ?>
</div>