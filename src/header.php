<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package vida
 */

$theme = get_stylesheet_directory_uri();
$favicon = $theme."/favicon.png";

/* $logoFile = wp_remote_get($theme."/assets/images/logo-vida.svg", array('sslverify' => FALSE));
$logo = wp_remote_retrieve_body($logoFile); */
$logo = $theme."/assets/images/logo-vida-full.png";

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<link rel="shortcut icon" href="<?php echo $favicon; ?>">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#primary"><?php esc_html_e( 'Skip to content', 'vida' ); ?></a>

	<header id="masthead" class="site-header">
		<div class="layout full-height">
			<div class="site-header__content">
				<div class="site-branding">
					<?php
						//the_custom_logo();
						if ( is_front_page() || is_home() ) :
							?>
							<h1 class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home">
								<img src="<?php echo $logo; ?>" alt="VIDA">
							</a></h1>
							<?php
						else :
							?>
							<div class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home">
								<img src="<?php echo $logo; ?>" alt="VIDA">
							</a></div>
							<?php
						endif;
					?>
				</div><!-- .site-branding -->

				<?php get_template_part( 'template-parts/nav'); ?>
			</div>
		</div>
	</header><!-- #masthead -->
