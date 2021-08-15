<?php
get_header();
$taxonomy = get_taxonomy( get_queried_object()->taxonomy );
get_template_part($taxonomy->object_type[0].'/list');
get_footer();
?>