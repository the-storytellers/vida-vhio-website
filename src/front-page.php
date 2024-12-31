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
$heroBg = $theme."/assets/images/placeholders/home-hero-background.jpg";
$associatedPartnersLogo = $theme."/assets/images/placeholders/associated-partners-logo.png";
$bannerBg = $theme."/assets/images/placeholders/home-banner-background.jpg";
$bannerBgMobile = $theme."/assets/images/placeholders/home-banner-background-mobile.jpg";

get_header();
?>

	<main id="primary" class="site-main layout">
		<section class="c-hero full-width layout">
			<?php //if($fields['hero']['image']): ?>
			<!-- <picture class="c-hero__bg full-width">
				<?php //if($fields['hero']['image_mobile']): ?>
				<source srcset="<?php //echo $fields['hero']['image_mobile'] ?>" media="(max-width: 767px)" />
				<?php //endif; ?>
				<img src="<?php //echo $fields['hero']['image']; ?>" alt="">
			</picture> -->
			<?php //endif; ?>
			<picture class="c-hero__bg full-width">
				<!-- <source srcset="" media="(max-width: 767px)" /> -->
				<img src="<?php echo $heroBg; ?>" alt="">
			</picture>

			<!-- <div class="c-hero__inner">
				<div class="c-hero__content">
					<?php //if(trim($fields['hero']['caption'] ?? '')): ?>
					<p class="c-hero__caption"><?php //echo $fields['hero']['caption']; ?></p>
					<?php //endif; ?>
					<?php //if(trim($fields['hero']['description'] ?? '')): ?>
					<p class="c-hero__desc"><?php //echo $fields['hero']['description']; ?></p>
					<?php //endif; ?>
					<?php
						/* if($fields['hero']['button']):
							$heroButton = $fields['hero']['button']; */
					?>
					<a href="<?php //echo $heroButton['url']; ?>" target="<?php //echo $heroButton['target']; ?>" class="button c-hero__button"><?php //echo $heroButton['title']; ?></a>
					<?php //endif; ?>
				</div>
			</div> -->
			<div class="c-hero__inner">
				<div class="c-hero__content">
					<h2 class="c-hero__title heading1">Titular</h2>
					<p class="c-hero__desc text1">Lorem ipsum dolor sit amet consectetur. Scelerisque tempor nibh nibh sit eleifend ut tortor id urna.</p>
					<div class="c-hero__buttons">
						<a href="#" target="_blank" class="button button--fs-constant">Application Pack</a>
						<a href="#" target="_blank" class="button button--fs-constant">Application Pack</a>
					</div>
				</div>
			</div>
		</section>
		<section class="c-section">
			<div class="c-info c-cols" data-template="1-2">
				<div class="col1">
					<h2 class="c-info__title heading2">About us</h2>
				</div>
				<div class="col2">
					<p class="heading3 uppercase icon-half-moon">The project</p>
					<div class="c-info__desc text2">
						<p>One of VHIO's main missions is to train and inspire the next generation of leading cancer researchers and medical doctors in Oncology to drive research and innovation and tackle the societal challenges of tomorrow.</p>
						<p>Through the VHIO Academy established in 2021, the institute aims to attract young talent globally and provide state-of-the-art training and career development opportunities.</p>
					</div>
					<a href="#" target="_blank" class="button button--fs-constant">The project</a>
				</div>
			</div>
		</section>
		<section class="c-section c-section--no-padding-top">
			<div class="c-section__header">
				<h2 class="c-section__title heading1">Associated Partners</h2>
				<div class="c-section__desc text1 text1--fs-constant">
					<p>Lorem ipsum dolor sit amet consectetur. Platea mollis ipsum dolor justo. Urna volutpat nam molestie mattis justo diam amet tortor. Malesuada ullamcorper feugiat arcu ultrices non odio.</p>
				</div>
			</div>
			<div class="c-grid">
				<div class="c-card">
					<!-- <div class="c-card__image">
						<?php 
							//$imageId = get_post_thumbnail_id();
							//$imageAlt = get_post_meta($imageId, '_wp_attachment_image_alt', TRUE);
						?>
						<img src="<?php //the_post_thumbnail_url(); ?>" alt="<?php //echo $imageAlt; ?>">
					</div>
					<div class="c-card__content">
						<div class="c-card__primary">
							<h3 class="c-card__title"><?php //echo $iFields['info']['name']; ?></h3>
							<div class="c-card__city-country"><?php //echo $iFields['info']['city']; ?></div>
							<div class="c-card__desc"><?php //echo $iFields['info']['desc']; ?></div>
						</div>
						<div class="c-card__secondary">
							<a href="<?php //the_permalink(); ?>" class="button"><?php //echo get_field('read_more', 'options'); ?></a>
						</div>
					</div> -->

					<div class="c-card__image">
						<img src="<?php echo $associatedPartnersLogo; ?>" alt="">
					</div>
					<div class="c-card__content">
						<div class="c-card__primary">
							<h3 class="c-card__title heading3 uppercase">Lorem Ipsum</h3>
							<div class="c-card__desc text2">
								<p>Lorem ipsum dolor sit amet consectetur. Tellus pharetra molestie in nulla tincidunt cursus tellus. Tellus fringilla duis lobortis sit feugiat risus.</p>
							</div>
							<div class="c-card__secondary">
								<a href="#" class="button button--fs-constant">Ver más</a>
							</div>
						</div>
					</div>
				</div>
				<div class="c-card">
					<div class="c-card__image">
						<img src="<?php echo $associatedPartnersLogo; ?>" alt="">
					</div>
					<div class="c-card__content">
						<div class="c-card__primary">
							<h3 class="c-card__title heading3 uppercase">Lorem Ipsum</h3>
							<div class="c-card__desc text2">
								<p>Lorem ipsum dolor sit amet consectetur. Tellus pharetra molestie in nulla tincidunt cursus tellus. Tellus fringilla duis lobortis sit feugiat risus.</p>
							</div>
							<div class="c-card__secondary">
								<a href="#" class="button button--fs-constant">Ver más</a>
							</div>
						</div>
					</div>
				</div>
				<div class="c-card">
					<div class="c-card__image">
						<img src="<?php echo $associatedPartnersLogo; ?>" alt="">
					</div>
					<div class="c-card__content">
						<div class="c-card__primary">
							<h3 class="c-card__title heading3 uppercase">Lorem Ipsum</h3>
							<div class="c-card__desc text2">
								<p>Lorem ipsum dolor sit amet consectetur. Tellus pharetra molestie in nulla tincidunt cursus tellus. Tellus fringilla duis lobortis sit feugiat risus.</p>
							</div>
							<div class="c-card__secondary">
								<a href="#" class="button button--fs-constant">Ver más</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="c-hero c-hero--banner full-width layout">
			<picture class="c-hero__bg full-width">
				<source srcset="<?php echo $bannerBgMobile; ?>" media="(max-width: 767px)" />
				<img src="<?php echo $bannerBg; ?>" alt="">
			</picture>
			<div class="c-hero__inner">
				<div class="c-hero__content">
					<h2 class="c-hero__title heading1">How to apply</h2>
					<p class="c-hero__desc text1">Lorem ipsum dolor sit amet consectetur. Scelerisque tempor nibh nibh sit eleifend ut tortor id urna.</p>
					<div class="c-hero__buttons">
						<a href="#" target="_blank" class="button button--transparent button--fs-constant">Apply</a>
					</div>
				</div>
			</div>
		</section>
	</main><!-- #main -->

<?php
get_footer();