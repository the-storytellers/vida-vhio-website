<?php
/**
 * Template part for displaying navigation
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package aufrande
 */

?>

<nav id="site-navigation" class="main-navigation">
	<div class="desktop-navigation">
		<?php
			wp_nav_menu( array(
				'theme_location' => 'menu-1',
				'menu_id'        => 'primary-menu',
				'menu_class'	 => 'site-links',
				'container'		 => false,
			) );
		?>
	</div>

	<a href="#" class="menu-toggle">
		<span class="menu-toggle__line"></span>
	</a>

	<aside id="mobile-nav" class="mobile-navigation layout modal">
		<!-- <div class="inner"> -->
			<?php
				wp_nav_menu( array(
					'theme_location' => 'menu-1',
					'menu_id'        => 'primary-menu',
					'menu_class'	 => 'site-links',
					'container'		 => false,
				) );
			?>

			<!-- <div class="lang-selector">
				<?php do_action('wpml_add_language_selector'); ?>
			</div> -->
		<!-- </div> -->
	</aside>
</nav><!-- #site-navigation -->