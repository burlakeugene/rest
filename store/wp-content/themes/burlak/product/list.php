<?php
if (
    !empty($_SERVER['HTTP_X_REQUESTED_WITH'])
    && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'
) { }
get_header();
?>
<div class="list">
    <?php
    get_template_part('blocks/top');
    get_template_part('products/filter');
    ?>
    <div class="container">
        <div class="products">
            <?php
            if (have_posts()) :
                while (have_posts()) : the_post();
                    get_template_part(get_post_type() . '/item');
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