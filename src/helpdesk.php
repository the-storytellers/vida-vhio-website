<?php
/**
 * Template Name: Helpdesk
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package vida
 */

$theme = get_stylesheet_directory_uri();
//$heroBg = $theme."/assets/images/placeholders/helpdesk-hero-background.jpg";

$fields = get_fields();

get_header();
?>

	<main id="primary" class="site-main layout">
		<section class="c-hero full-width layout">
			<?php if($fields['hero']['background']): ?>
			<picture class="c-hero__bg full-width">
				<?php if($fields['hero']['background_mobile']): ?>
				<source srcset="<?php echo $fields['hero']['background_mobile']; ?>" media="(max-width: 767px)" />
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
					<?php if(trim($fields['contact']['title'] ?? '')): ?>
					<h2 class="c-info__title heading2"><?php echo $fields['contact']['title']; ?></h2>
					<?php endif; ?>
					<?php if(trim($fields['contact']['info'] ?? '')): ?>
					<div class="c-info__desc text3"><?php echo $fields['contact']['info']; ?></div>
					<?php endif; ?>
					<?php 
					if($fields['contact']['button']): 
						$button = $fields['contact']['button'];
					?>
					<a href="<?php echo $button['url']; ?>" target="<?php echo $button['target']; ?>" class="button"><?php echo $button['title']; ?></a>
					<?php endif; ?>
				</div>
				<div class="col2">
					<?php if(trim($fields['contact']['description'] ?? '')): ?>
					<div class="text3"><?php echo $fields['contact']['description']; ?></div>
					<?php endif; ?>
				</div>
			</div>
		</section>
	</main><!-- #main -->

<?php
get_footer();
