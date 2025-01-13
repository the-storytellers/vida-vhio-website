<?php
/**
 * Template Name: Practical Information
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package vida
 */

$theme = get_stylesheet_directory_uri();

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
					<h1 class="c-hero__title heading1 uppercase"><?php echo $fields['hero']['title']; ?></h1>
					<?php endif; ?>
				</div>
			</div>
		</section>
		<section class="c-section">
			<div class="c-info c-cols" data-template="1-2">
				<div class="col1">
					<?php if($fields['city']['image']): ?>
					<div class="c-info__image">
						<img src="<?php echo $fields['city']['image']; ?>" alt="">
					</div>
					<?php endif; ?>
				</div>
				<div class="col2">
					<?php if(trim($fields['city']['title'] ?? '')): ?>
					<h2 class="c-info__title heading2"><?php echo $fields['city']['title']; ?></h2>
					<?php endif; ?>
					<?php if(trim($fields['city']['description'] ?? '')): ?>
					<div class="c-info__desc text2"><?php echo $fields['city']['description']; ?></div>
					<?php endif; ?>
				</div>
			</div>
			<div class="c-info c-cols" data-template="2-1">
				<div class="col1">
					<?php if(trim($fields['campus']['title'] ?? '')): ?>
					<h2 class="c-info__title heading2"><?php echo $fields['campus']['title']; ?></h2>
					<?php endif; ?>
					<?php if(trim($fields['campus']['description'] ?? '')): ?>
					<div class="c-info__desc text2"><?php echo $fields['campus']['description']; ?></div>
					<?php endif; ?>
				</div>
				<div class="col2">
					<?php if($fields['campus']['image']): ?>
					<div class="c-info__image">
						<img src="<?php echo $fields['campus']['image']; ?>" alt="">
					</div>
					<?php endif; ?>
				</div>
			</div>
		</section>
		<section class="c-hero full-width layout">
			<?php if($fields['hero_support']['background']): ?>
			<picture class="c-hero__bg full-width">
				<?php if($fields['hero_support']['background_mobile']): ?>
				<source srcset="<?php echo $fields['hero_support']['background_mobile'] ?>" media="(max-width: 767px)" />
				<?php endif; ?>
				<img src="<?php echo $fields['hero_support']['background']; ?>" alt="">
			</picture>
			<?php endif; ?>
			<div class="c-hero__inner">
				<div class="c-hero__content">
					<?php if(trim($fields['hero_support']['title'] ?? '')): ?>
					<h1 class="c-hero__title heading1 uppercase"><?php echo $fields['hero_support']['title']; ?></h1>
					<?php endif; ?>
				</div>
			</div>
		</section>
		<section class="c-section">
			<div class="c-info c-cols" data-template="1-2">
				<div class="col1">
					<?php if($fields['arriving']['image']): ?>
					<div class="c-info__image">
						<img src="<?php echo $fields['arriving']['image']; ?>" alt="">
					</div>
					<?php endif; ?>
				</div>
				<div class="col2">
					<?php if(trim($fields['arriving']['title'] ?? '')): ?>
					<h2 class="c-info__title heading2"><?php echo $fields['arriving']['title'] ?></h2>
					<?php endif; ?>
					<?php if(trim($fields['arriving']['description'] ?? '')): ?>
					<div class="c-info__desc text2"><?php echo $fields['arriving']['description'] ?></div>
					<?php endif; ?>
				</div>
			</div>
			<div class="c-info c-cols" data-template="2-1">
				<div class="col1">
					<?php if(trim($fields['commitment']['title'] ?? '')): ?>
					<h2 class="c-info__title heading2"><?php echo $fields['commitment']['title'] ?></h2>
					<?php endif; ?>
					<?php if(trim($fields['commitment']['description'] ?? '')): ?>
					<div class="c-info__desc text2"><?php echo $fields['commitment']['description'] ?></div>
					<?php endif; ?>
				</div>
				<div class="col2">
					<?php if($fields['commitment']['image']): ?>
					<div class="c-info__image">
						<img src="<?php echo $fields['commitment']['image']; ?>" alt="">
					</div>
					<?php endif; ?>
				</div>
			</div>
		</section>
		<section class="c-hero full-width layout">
			<?php if($fields['hero_guides']['background']): ?>
			<picture class="c-hero__bg full-width">
				<?php if($fields['hero_guides']['background_mobile']): ?>
				<source srcset="<?php echo $fields['hero_guides']['background_mobile'] ?>" media="(max-width: 767px)" />
				<?php endif; ?>
				<img src="<?php echo $fields['hero_guides']['background']; ?>" alt="">
			</picture>
			<?php endif; ?>
			<div class="c-hero__inner">
				<div class="c-hero__content">
					<?php if(trim($fields['hero_guides']['title'] ?? '')): ?>
					<h1 class="c-hero__title heading1 uppercase"><?php echo $fields['hero_guides']['title']; ?></h1>
					<?php endif; ?>
				</div>
			</div>
		</section>
		<section class="c-section">
			<?php if(!empty($fields['guides'])): ?>
			<div class="c-grid c-grid--guides">
				<?php foreach ($fields['guides'] as $guide): ?>
				<div class="c-guide">
					<?php if($guide['image']): ?>
					<div class="c-guide__image"><img src="<?php echo $guide['image']; ?>" alt=""></div>
					<?php endif; ?>
					<?php if(trim($guide['description'] ?? '')): ?>
					<div class="c-guide__desc text2"><?php echo $guide['description'] ?></div>
					<?php endif; ?>
					<?php if(trim($guide['button_url'] ?? '')): ?>
					<a href="<?php echo $guide['button_url']; ?>" target="_blank" class="button button--fs-constant c-guide__button"><?php echo get_field('download', 'options'); ?></a>
					<?php endif; ?>
				</div>
				<?php endforeach; ?>
			</div>
			<?php endif; ?>
		</section>
	</main><!-- #main -->

<?php
get_footer();
