<div class="search search--panel">
  <form role="search" method="get" class="search__form" action="<?php echo esc_url(home_url('/')); ?>">
    <input type="text" value="<?= get_search_query(); ?>" name="s" id="s" />
    <input type="hidden" name="post_type" value="product" />
    <button>Поиск</button>
  </form>
</div>