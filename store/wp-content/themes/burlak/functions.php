<?php
if (!function_exists('burlak_setup')) :
  function burlak_setup()
  {
      load_theme_textdomain('burlak', get_template_directory() . '/languages');
      add_theme_support('automatic-feed-links');
      add_theme_support('title-tag');
      add_theme_support('post-thumbnails');
      add_theme_support('woocommerce');
      register_nav_menus(array(
        'header' => esc_html__('Header', 'burlak'),
        'footer' => esc_html__('Footer', 'burlak')
      ));
  }
endif;
add_action('after_setup_theme', 'burlak_setup');
function burlak_scripts()
{
    wp_enqueue_style('burlak-style', get_stylesheet_uri());
    wp_enqueue_script('burlak-bundle', get_template_directory_uri() . '/dist/js/bundle.js');
    wp_enqueue_style('burlak-theme', get_template_directory_uri() . '/dist/css/main.css');
}
add_action('wp_enqueue_scripts', 'burlak_scripts');
show_admin_bar(false);

function add_fancybox($content)
{
    global $post;
    $pattern = "/<a(.*?)href=('|\")(.*?).(bmp|gif|jpeg|jpg|png)('|\")(.*?)>/i";
    $replacement = '<a$1href=$2$3.$4$5 data-fancybox="%POSTID%"$6>';
    $content = preg_replace($pattern, $replacement, $content);
    $content = str_replace("%POSTID%", $post->ID, $content);
    return $content;
}

add_filter('the_content', 'add_fancybox');

function phone_replace($string)
{
    $string = str_replace(" ", "", $string);
    $string = str_replace("-", "", $string);
    $string = str_replace("(", "", $string);
    $string = str_replace(")", "", $string);
    return $string;
}
function generate_youtube($atts)
{
    $atts = shortcode_atts(array(
    'src'   => 'A3nEH-cqwE4',
    'height' => '450px',
    'width'  => '100%',
  ), $atts);
    return '<iframe src="' . $atts['src'] . '" width="100%" height="' . $atts['height'] . '" frameborder="0" allowfullscreen> <p>Your Browser does not support Iframes.</p></iframe>';
}

add_image_size('lazy', 50, 50, false);
add_image_size('lazy-square', 50, 50, true);
add_image_size('product-square', 120, 120, true);
add_image_size('product-rect-lazy', 30, 20, true);
add_image_size('product-rect', 300, 200, true);
add_image_size('news-rect-lazy', 30, 20, true);
add_image_size('news-rect', 360, 220, true);

function getMonth($month)
{
    $months = ['Января', 'Февраля', 'Марта', 'Апреля', 'Мая', 'Июня', 'Июля', 'Августа', 'Сентября', 'Октября', 'Ноября', 'Декабря'];
    return $months[$month - 1];
}

function devise_number_displayed_posts($query)
{
    if (!is_admin() && (is_post_type_archive('product') || is_tax( get_object_taxonomies( 'product' )))) {
        $query->set('posts_per_page', 16);
        return;
    }
    if (!is_admin() && is_post_type_archive('news')) {
        $query->set('posts_per_page', 9);
        return;
    }
}
add_action('pre_get_posts', 'devise_number_displayed_posts', 1);

add_action('admin_menu', function () {
    add_options_page('Theme settings page', 'Theme settings', 'manage_options', 'theme-page', 'theme_settings_page');
});

add_action('admin_init', function () {
    register_setting('theme-page-settings', 'common_scripts');
    register_setting('theme-page-settings', 'head_additions');
    register_setting('theme-page-settings', 'copyrights');
    register_setting('theme-page-settings', 'work_time');
    register_setting('theme-page-settings', 'address');
    register_setting('theme-page-settings', 'phone');
    register_setting('theme-page-settings', 'email');
    register_setting('theme-page-settings', 'theme-color');
    register_setting('theme-page-settings', 'vkontakte');
    register_setting('theme-page-settings', 'telegram');
    register_setting('theme-page-settings', 'instagram');
    register_setting('theme-page-settings', 'odnoklassniki');
});

function theme_settings_page()
{
    ?>
  <div class="wrap theme-settings">
    <h1>Theme settings</h1>
    <form action="options.php" method="post">
      <?php
        settings_fields('theme-page-settings');
    do_settings_sections('theme-page-settings'); ?>
      <label>
        <div>Common scripts</div>
        <textarea name="common_scripts"><?= esc_attr(get_option('common_scripts')); ?></textarea>
      </label>
      <label>
        <div>Head additions</div>
        <textarea name="head_additions"><?= esc_attr(get_option('head_additions')); ?></textarea>
      </label>
      <label>
        <div>Work time</div>
        <textarea name="work_time"><?= esc_attr(get_option('work_time')); ?></textarea>
      </label>
      <label>
        <div>Address</div>
        <input type="text" name="address" value="<?= esc_attr(get_option('address')) ?>" />
      </label>
      <label>
        <div>Phone</div>
        <input type="tel" name="phone" value="<?= esc_attr(get_option('phone')) ?>" />
      </label>
      <label>
        <div>Mail</div>
        <input type="email" name="mail" value="<?= esc_attr(get_option('email')) ?>" />
      </label>
      <label>
        <div>Copyrights</div>
        <input type="text" name="copyrights" value="<?= esc_attr(get_option('copyrights')) ?>" />
      </label>
      <label>
        <div>Theme color</div>
        <input name="theme-color" type="text" value="<?= esc_attr(get_option('theme-color')); ?>">
      </label>
      <label>
        <div>Vkontakte</div>
        <input name="vkontakte" type="text" value="<?= esc_attr(get_option('vkontakte')); ?>">
      </label>
      <label>
        <div>Telegram</div>
        <input name="telegram" type="text" value="<?= esc_attr(get_option('telegram')); ?>">
      </label>
      <label>
        <div>Instagram</div>
        <input name="instagram" type="text" value="<?= esc_attr(get_option('instagram')); ?>">
      </label>
      <label>
        <div>Odnoklassniki</div>
        <input name="odnoklassniki" type="text" value="<?= esc_attr(get_option('odnoklassniki')); ?>">
      </label>
      <?php submit_button(); ?>
    </form>
  </div>
  <style>
    .theme-settings {
      max-width: 600px;
    }

    .theme-settings input {
      width: 100%;
    }

    .theme-settings input[type="checkbox"] {
      width: auto;
    }

    .theme-settings textarea {
      width: 100%;
      resize: none;
      height: 150px;
    }

    .theme-settings label {
      margin-bottom: 10px;
      display: block;
    }

    .theme-settings .submit {
      margin-top: 0;
    }

    .theme-settings input[type='submit'] {
      width: auto;
    }

    .theme-settings h1 {
      margin-bottom: 20px;
    }
  </style>
<?php
}

function my_get_template_part($template, $data = array())
{
    extract($data);
    require locate_template($template . '.php');
}

function declension($value = 1, $wordForms = ['товар', 'товара', 'товаров'])
{
    $array = [2,0,1,1,1,2];
    return $wordForms[($value%100>4&&$value%100<20)?2:$array[($value%10<5)?$value%10:5]];
}

add_shortcode('tabs', function ($attrs) {
    $ids = $attrs && $attrs['ids'] ? $attrs['ids'] : false;
    $linksText = $attrs && $attrs['linkstext'] ? $attrs['linkstext'] : false;
    if ($linksText) {
        $linksText = explode(',', $linksText);
    }
    $linksHref = $attrs && $attrs['linkshref'] ? $attrs['linkshref'] : false;
    if ($linksHref) {
        $linksHref = explode(',', $linksHref);
    }
    $linksNewTab = $attrs && $attrs['linksnewtab'] ? $attrs['linksnewtab'] : false;
    if ($linksNewTab) {
        $linksNewTab = explode(',', $linksNewTab);
    }

    $links = array();

    foreach ($linksText as $key => $link) {
        array_push($links, array(
      "text" => $linksText[$key],
      "link" => $linksHref[$key] ? $linksHref[$key] : '#',
      "blank" => $linksNewTab[$key] ? true : false
    ));
    }

    if ($ids || $links) {
        ob_start();
        $ids = explode(',', $ids);
        my_get_template_part('tabs/shortcode', array(
      'ids' => $ids,
      'links' => $links
    ));
        return ob_get_clean();
    }
});

function burlak_theme_setup()
{
    add_theme_support('custom-logo');
}
add_action('after_setup_theme', 'burlak_theme_setup');

function register_post_types_init()
{
    register_post_type(
      'news',
      array(
        'label' => 'Новости и акции',
        'labels' => array(
          'menu_name' => 'Новости и акции'
        ),
        'taxonomies' => array('post_tag'),
        'public' => true,
        'has_archive' => true,
        'supports' => array('thumbnail', 'title', 'editor', 'excerpt', 'custom-fields')
      )
    );
    register_post_type(
      'stores',
      array(
        'label' => 'Рестораны',
        'labels' => array(
          'menu_name' => 'Рестораны'
        ),
        'public' => true,
        'has_archive' => true,
        'supports' => array('thumbnail', 'title', 'editor', 'excerpt', 'custom-fields')
      )
    );
    register_post_type(
      'banners',
      array(
        'label' => 'Баннер',
        'labels' => array(
          'menu_name' => 'Баннеры'
        ),
        'public' => true,
        'has_archive' => false,
        'supports' => array('thumbnail', 'title', 'custom-fields')
      )
    );
    $get_post_type = get_post_type_object('product');
    $labels = $get_post_type->labels;
    $labels->name = 'Каталог';
}
add_action('init', 'register_post_types_init');

function settings(){
  if (!is_admin() && WC() && WC()->session) {
    if (!WC()->session->get('product')) {
      WC()->session->set('product', array(
        'popular' => array(
          'active' => 'all'
        )
      ));
    }
    if (!WC()->session->get('shipping')) {
      WC()->session->set('shipping', array(
        'type' => 'courier',
        'at_time' => '0'
      ));
    }
  }
}
add_action('init', 'settings');

function custom_pre_get_posts_query( $q ) {
  if (is_shop() && $_GET['categories']) {
      $tax_query = (array) $q->get('tax_query');
      $categories = explode(',',$_GET['categories']);
      $tax_query[] = array(
         'taxonomy' => 'product_cat',
         'field' => 'slug',
         'terms' => $categories,
         'operator' => 'IN'
  );
      $q->set('tax_query', $tax_query);
  }
}
add_action( 'woocommerce_product_query', 'custom_pre_get_posts_query' );

/** Disable Ajax Call from WooCommerce */
add_action('wp_enqueue_scripts', 'dequeue_woocommerce_cart_fragments', 11);
function dequeue_woocommerce_cart_fragments()
{
    wp_dequeue_script('wc-cart-fragments');
}

//REST
function getFragments()
{
    $result = array(
    'fragments' => array()
  );
    ob_start();
    my_get_template_part('cart/count');
    $result['fragments']['.cart__count'] = ob_get_clean();
    ob_start();
    my_get_template_part('cart/list');
    $result['fragments']['.cart__list'] = ob_get_clean();
    return $result;
}

add_filter('woocommerce_add_to_cart_fragments', 'woocommerce_header_add_to_cart_fragment');
function woocommerce_header_add_to_cart_fragment($fragments)
{
    return getFragments()['fragments'];
}

add_action('wc_ajax_cart_clear', 'cart_clear');
function cart_clear($args)
{
    WC()->cart->empty_cart();
    exit(json_encode(getFragments()));
}

add_action('wc_ajax_cart_remove', 'cart_remove');
function cart_remove()
{
    WC()->cart->remove_cart_item($_POST['key']);
    exit(json_encode(getFragments()));
}

add_action('wc_ajax_cart_qty', 'cart_qty');
function cart_qty()
{
    WC()->cart->set_quantity($_POST['key'], $_POST['qty']);
    exit(json_encode(getFragments()));
}

add_action('wc_ajax_shipping_set', 'shipping_set');
function shipping_set()
{
    $shipping = WC()->session->get('shipping');
    if(!$shipping) $shipping = array();
    $shipping[$_POST['key']] = $_POST['value'];
    WC()->session->set('shipping', $shipping);
    exit(json_encode($shipping));
}

function get_socials() {
  $socials = array();
  if(get_option('vkontakte')) $socials['vkontakte'] = get_option('vkontakte');
  if(get_option('telegram')) $socials['telegram'] = get_option('telegram');
  if(get_option('instagram')) $socials['instagram'] = get_option('instagram');
  if(get_option('odnoklassniki')) $socials['odnoklassniki'] = get_option('odnoklassniki');
  return $socials;
}

function get_stores(){
  $stores = get_post_type_object('stores');
  $args = array(
    'posts_per_page' => -1,
    'post_type' => $stores->name,
  );
  $stores = query_posts($args);
  wp_reset_query();
  return $stores;
}
add_filter( 'woocommerce_enqueue_styles', '__return_empty_array' );

function get_current_tags(){
  $post_type = get_post_type();
  $tags = get_tags();
  $link = get_post_type_archive_link($post_type);
  $result = $tags ? array(
    array(
      'text' => 'Все',
      'link' => $link,
      'active' => !get_queried_object()->term_id
    )
  ) : array();
  foreach ($tags as $tag) {
    $result[] = array(
      'text' => $tag->name,
      'link' => $tags_link.'?tag='.$tag->slug,
      'active' => get_queried_object()->term_id === $tag->term_id
    );
  }
  return $result;
}

function load_template_part($path) {
  ob_start();
  get_template_part($path);
  $result = ob_get_contents();
  ob_end_clean();
  return $result;
}