<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package vida
 */

$theme = get_stylesheet_directory_uri();
//$heroBg = $theme."/assets/images/placeholders/home-hero-background.jpg";
//$associatedPartnersLogo = $theme."/assets/images/placeholders/associated-partners-logo.png";
//$bannerBg = $theme."/assets/images/placeholders/home-banner-background.jpg";
//$bannerBgMobile = $theme."/assets/images/placeholders/home-banner-background-mobile.jpg";
//$variableSectionImage = $theme."/assets/images/placeholders/home-variable-section.jpg";

$fields = get_fields();

get_header();
?>

	<main id="primary" class="site-main layout">
		<section class="c-hero full-width layout">
			<?php if($fields['hero']['background']): ?>
			<picture class="c-hero__bg full-width">
				<?php if($fields['hero']['background_mobile']): ?>
				<source srcset="<?php echo $fields['hero']['background_mobile'] ?>" media="(max-width: 767px)" />
				<?php endif; ?>
				<img src="<?php echo $fields['hero']['background']; ?>" alt="">
			</picture>
			<?php endif; ?>

			<div class="c-hero__inner">
				<div class="c-hero__content">
					<?php if(trim($fields['hero']['title'] ?? '')): ?>
					<h2 class="c-hero__title heading1"><?php echo $fields['hero']['title']; ?></h2>
					<?php endif; ?>
					<?php if(trim($fields['hero']['description'] ?? '')): ?>
					<div class="c-hero__desc text1"><?php echo $fields['hero']['description']; ?></div>
					<?php endif; ?>
					<?php if($fields['hero']['buttons']): ?>
					<div class="c-hero__buttons">
						<?php 
						foreach ($fields['hero']['buttons'] as $el) : 
							$btn = $el['button'];
						?>
						<a href="<?php echo $btn['url']; ?>" target="<?php echo $btn['target']; ?>" class="button button--fs-constant"><?php echo $btn['title']; ?></a>
						<?php endforeach; ?>
					</div>
					<?php endif; ?>
				</div>
			</div>
		</section>
		<section class="c-section">
			<div class="c-info c-cols" data-template="1-2">
				<div class="col1">
					<?php if(trim($fields['about']['title'] ?? '')): ?>
					<h2 class="c-info__title heading2 heading2--fs-constant"><?php echo $fields['about']['title']; ?></h2>
					<?php endif; ?>
				</div>
				<div class="col2">
					<?php if(trim($fields['about']['subtitle'] ?? '')): ?>
					<p class="heading3 uppercase icon-half-moon"><?php echo $fields['about']['subtitle']; ?></p>
					<?php endif; ?>
					<?php if(trim($fields['about']['description'] ?? '')): ?>
					<div class="c-info__desc text2"><?php echo $fields['about']['description']; ?></div>
					<?php endif; ?>
					<?php 
					if($fields['about']['button']): 
						$aboutButton = $fields['about']['button'];
					?>
					<a href="<?php echo $aboutButton['url'] ?>" target="<?php echo $aboutButton['target'] ?>" class="button button--fs-constant"><?php echo $aboutButton['title'] ?></a>
					<?php endif; ?>
				</div>
			</div>
		</section>

		<?php
			$args = array(
				'post_type'=>'associated-partner',
				'post_status'=>'publish',
				'posts_per_page'=>3,
				'orderby'=>'rand',
			);

			// the query
			$temp_query = $wp_query;
			$wp_query = null;
			$wp_query = new WP_Query($args);
									
			if ( $wp_query->have_posts() ) :
		?>
		<section class="c-section c-section--no-padding-top">
			<div class="c-section__header">
				<?php if(trim($fields['partners']['title'] ?? '')): ?>
				<h2 class="c-section__title heading1"><?php echo $fields['partners']['title'] ?></h2>
				<?php endif; ?>
				<?php if(trim($fields['partners']['description'] ?? '')): ?>
				<div class="c-section__desc text1 text1--fs-constant"><?php echo $fields['partners']['description'] ?></div>
				<?php endif; ?>
			</div>
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
		</section>
		<?php endif; ?>

		<section class="c-hero c-hero--banner full-width layout">
			<?php if($fields['banner']['background']): ?>
			<picture class="c-hero__bg full-width">
				<?php if($fields['banner']['background_mobile']): ?>
				<source srcset="<?php echo $fields['banner']['background_mobile']; ?>" media="(max-width: 767px)" />
				<?php endif; ?>
				<img src="<?php echo $fields['banner']['background']; ?>" alt="">
			</picture>
			<?php endif; ?>
			<div class="c-hero__inner">
				<div class="c-hero__content">
					<?php if(trim($fields['banner']['title'] ?? '')): ?>
					<h2 class="c-hero__title heading1"><?php echo $fields['banner']['title']; ?></h2>
					<?php endif; ?>
					<?php if(trim($fields['banner']['description'] ?? '')): ?>
					<div class="c-hero__desc text1"><?php echo $fields['banner']['description']; ?></div>
					<?php endif; ?>
					<?php 
					if($fields['banner']['button']): 
						$bannerButton = $fields['banner']['button'];
					?>
					<div class="c-hero__buttons">
						<a href="<?php echo $bannerButton['url']; ?>" target="<?php echo $bannerButton['target']; ?>" class="button button--transparent button--fs-constant"><?php echo $bannerButton['title']; ?></a>
					</div>
					<?php endif; ?>
				</div>
			</div>
		</section>
		<section class="c-section">
			<div class="c-info c-cols" data-template="2-1">
				<div class="col1">
					<?php if(trim($fields['variable_section']['title'] ?? '')): ?>
					<h2 class="c-info__title heading2 heading2--fs-constant uppercase"><?php echo $fields['variable_section']['title']; ?></h2>
					<?php endif; ?>
					<?php if(trim($fields['variable_section']['description'] ?? '')): ?>
					<div class="c-info__desc text2"><?php echo $fields['variable_section']['description']; ?></div>
					<?php endif; ?>
					<?php
					if($fields['variable_section']['button']): 
						$vsButton = $fields['variable_section']['button'];
					?>
					<a href="<?php echo $vsButton['url']; ?>" target="<?php echo $vsButton['target']; ?>" class="button button--fs-constant"><?php echo $vsButton['title']; ?></a>
					<?php endif; ?>
				</div>
				<div class="col2">
					<?php if($fields['variable_section']['image']): ?>
					<div class="c-info__image">
						<img src="<?php echo $fields['variable_section']['image']; ?>" alt="">
					</div>
					<?php endif; ?>
				</div>
			</div>
		</section>
		<section class="c-section c-section--big-padding-block full-width layout bg-yellow">
			<div class="c-info c-cols" data-template="1-2">
				<div class="col1">
					<?php if(trim($fields['contact']['title'] ?? '')): ?>
					<h2 class="c-info__title heading2 heading2--fs-constant"><?php echo $fields['contact']['title']; ?></h2>
					<?php endif; ?>
					<?php
					if($fields['contact']['button']): 
						$contactButton = $fields['contact']['button'];
					?>
					<a href="<?php echo $contactButton['url']; ?>" target="<?php echo $contactButton['target']; ?>" class="button button--transparent button--fs-constant"><?php echo $contactButton['title']; ?></a>
					<?php endif; ?>
				</div>
				<div class="col2">
					<?php if(trim($fields['contact']['description'] ?? '')): ?>
					<div class="c-info__desc text2"><?php echo $fields['contact']['description'];?></div>
					<?php endif; ?>
				</div>
			</div>
		</section>
	</main><!-- #main -->

<?php
get_footer();