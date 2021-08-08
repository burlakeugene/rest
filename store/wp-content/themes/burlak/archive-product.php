<?php
get_header();
?>
<div class="list">
    <div class="container">
        <div class="list-items">
            <?php
            if (have_posts()) :
                while (have_posts()) : the_post();
                    get_template_part(get_queried_object()->name . '/item');
                endwhile;
            else :
                get_template_part('blocks/empty');
            endif;
            ?>
        </div>
        <?php the_posts_pagination() ?>
    </div>
</div>
<?php
get_footer();
?>