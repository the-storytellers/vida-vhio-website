<?php
/**
 * Template Name: Associated Partners
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package vida
 */

$theme = get_stylesheet_directory_uri();
//$associatedPartnersLogo = $theme."/assets/images/placeholders/associated-partners-logo.png";

$fields = get_fields();

get_header();
?>

	<main id="primary" class="site-main layout">
		<section class="c-section">
			<div class="c-section__header">
				<?php if(trim($fields['main']['title'] ?? '')): ?>
				<h1 class="c-section__title heading1"><?php echo $fields['main']['title']; ?></h1>
				<?php endif; ?>
				<?php if(trim($fields['main']['description'] ?? '')): ?>
				<div class="c-section__desc text1 text1--fs-constant"><?php echo $fields['main']['description']; ?></div>
				<?php endif; ?>
			</div>

			<?php
				$args = array(
					'post_type'=>'associated-partner',
					'post_status'=>'publish',
					'posts_per_page'=>-1,
					'orderby'=>'menu_order',
				);

				// the query
				$temp_query = $wp_query;
				$wp_query = null;
				$wp_query = new WP_Query($args);
										
				if ( $wp_query->have_posts() ) :
			?>
			<div class="c-grid">
				<?php
				while ( $wp_query->have_posts() ) : $wp_query->the_post(); 
					$apFields = get_fields();
				?>
				<div class="c-card">
					<?php if(trim(get_the_post_thumbnail_url() ?? '')): ?>
					<div class="c-card__image">
						<img src="<?php the_post_thumbnail_url(); ?>" alt="<?php echo the_title(); ?>">
					</div>
					<?php endif; ?>
					<div class="c-card__content">
						<div class="c-card__primary">
							<h3 class="c-card__title heading3 uppercase"><?php echo the_title(); ?></h3>
							<?php if(trim($apFields['main']['description'] ?? '')): ?>
							<div class="c-card__desc text2"><?php echo $apFields['main']['description']; ?></div>
							<?php endif; ?>
						</div>
						<?php if(trim($apFields['main']['button_url'] ?? '')): ?>
						<div class="c-card__secondary">
							<a href="<?php echo $apFields['main']['button_url']; ?>" class="button button--fs-constant"><?php echo get_field('read_more', 'options'); ?></a>
						</div>
						<?php endif; ?>
					</div>
				</div>
				<?php endwhile; ?>
			</div>
			<?php endif; ?>
		</section>
	</main><!-- #main -->

<?php
get_footer();
