<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package vida
 */

get_header();
?>

	<main id="primary" class="site-main layout">
		<section class="c-section c-page">
			<div class="c-cols" data-template="1-2">
				<div class="col1"><h1 class="c-page__title heading2"><?php echo the_title(); ?></h1></div>
				<div class="col2 c-page__content text2"><?php echo the_content(); ?></div>
			</div>
		</section>
	</main><!-- #main -->

<?php
get_footer();
