<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'rest' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '0`L7k8{L{~:*l7iR9AE*L9oHjG_4N>F4I*e?)}hQzgDht%H!f|r)zli cZGAlvCe' );
define( 'SECURE_AUTH_KEY',  ']q<FkYxIaL](0Y*s6wqMKD.Gssx}$o1V)DG/oMQgp80lOb]Ug%jmyzQ{QICe,xzN' );
define( 'LOGGED_IN_KEY',    '/};g1!*pNU#L:6Zm`4im;G GJ)8cZ[Drw~t(Y]!=t4g~/pVbu]g5Oxl(~zzHxGss' );
define( 'NONCE_KEY',        '|Q.2fd3q-[i:?ncAsnY>tRhP6u~wMN4M5;nP$_S#>qOx#]A1{Mr=Ct&U3:R>SK;&' );
define( 'AUTH_SALT',        ':%;}F5YfQ]y:W>&?nQb=cn&q@I((3W]<-1[GM&ujZg-qu>L]ce-zm&oc(jv3LkXl' );
define( 'SECURE_AUTH_SALT', 'znEO04)kAx(b ,=`c@`6h^C1?ZM5COC~IffoRvmmLt4W[*.-iSHdq*$|0c9Lf}D8' );
define( 'LOGGED_IN_SALT',   'qK0Yk,E3vkXnG<Zmj>^x r<=w6^x K)pP3p+A,O-M1db+9t*_s`>vo!Y7_6 (d1H' );
define( 'NONCE_SALT',       '4_5C,~f`I)VJ%~N&Von@I-e5aGa1cT=#(ZxzXbdC$|l@WC~%=oW%YFU*gzmU||+}' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'rest_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
