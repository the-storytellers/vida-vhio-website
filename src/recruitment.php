<?php
/**
 * Template Name: Recruitment
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
		<section class="c-hero c-hero--small full-width layout">
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
					<h1 class="c-hero__title heading1"><?php echo $fields['hero']['title']; ?></h1>
					<?php endif; ?>
					<?php if(trim($fields['hero']['description'] ?? '')): ?>
					<div class="c-hero__desc text1"><?php echo $fields['hero']['description']; ?></div>
					<?php endif; ?>
				</div>
			</div>
		</section>
		<section class="c-section">
			<div class="c-info c-cols" data-template="1-2">
				<div class="col1">
					<?php if($fields['criteria']['image']): ?>
					<div class="c-info__image">
						<img src="<?php echo $fields['criteria']['image']; ?>" alt="">
					</div>
					<?php endif; ?>
				</div>
				<div class="col2">
					<?php if(trim($fields['criteria']['title'] ?? '')): ?>
					<h2 class="c-info__title heading2 uppercase"><?php echo $fields['criteria']['title']; ?></h2>
					<?php endif; ?>
					<?php if(trim($fields['criteria']['description'] ?? '')): ?>
					<div class="c-info__desc text2"><?php echo $fields['criteria']['description']; ?></div>
					<?php endif; ?>
				</div>
			</div>
			<div class="c-info c-cols" data-template="1-2">
				<div class="col1">
					<?php if(trim($fields['laboratories']['title'] ?? '')): ?>
					<h2 class="c-info__title heading2"><?php echo $fields['laboratories']['title']; ?></h2>
					<?php endif; ?>
				</div>
				<div class="col2">
					<?php 
					if(!empty($fields['laboratories']['data'])):
						foreach ($fields['laboratories']['data'] as $data):
					?>
					<div class="c-data">
						<?php if(trim($data['term'] ?? '')): ?>
						<h3 class="c-data__term heading3"><?php echo $data['term']; ?></h3>
						<?php endif; ?>
						<?php if(trim($data['description'] ?? '')): ?>
						<div class="c-data__description">
							<?php 
							echo $data['description'];
							
							if(trim($data['button_url'] ?? '')): 
							?>
							<a href="<?php echo $data['button_url']; ?>" target="_blank" class="button"><?php echo get_field('read_more', 'options'); ?></a>
							<?php endif; ?>
						</div>
						<?php endif; ?>
					</div>
					<?php
						endforeach;
					endif;
					?>
				</div>
			</div>
			<div class="c-info c-cols" data-template="1-2">
				<div class="col1">
					<?php if($fields['application']['image']): ?>
					<div class="c-info__image">
						<img src="<?php echo $fields['application']['image']; ?>" alt="">
					</div>
					<?php endif; ?>
				</div>
				<div class="col2">
					<?php if(trim($fields['application']['title'] ?? '')): ?>
					<h2 class="c-info__title heading2 uppercase"><?php echo $fields['application']['title'] ?></h2>
					<?php endif; ?>
					<?php if(trim($fields['application']['description'] ?? '')): ?>
					<div class="c-info__desc text2">
						<?php echo $fields['application']['description'] ?>
					</div>
					<?php endif; ?>
					<?php 
					if($fields['application']['button']): 
						$applicationButton = $fields['application']['button'];
					?>
					<a href="<?php echo $applicationButton['url'] ?>" target="<?php echo $applicationButton['target'] ?>" class="button"><?php echo $applicationButton['title'] ?></a>
					<?php endif; ?>
				</div>
			</div>
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
	</main><!-- #main -->

<?php
get_footer();
