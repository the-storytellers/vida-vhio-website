<?php
/**
 * Template Name: Associated Partners
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package vida
 */

$theme = get_stylesheet_directory_uri();
$associatedPartnersLogo = $theme."/assets/images/placeholders/associated-partners-logo.png";

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
			<div class="c-grid">
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
								<a href="#" class="button">Ver más</a>
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
								<a href="#" class="button">Ver más</a>
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
								<a href="#" class="button">Ver más</a>
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
								<a href="#" class="button">Ver más</a>
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
								<a href="#" class="button">Ver más</a>
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
								<a href="#" class="button">Ver más</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main><!-- #main -->

<?php
get_footer();
