<?php
/**
 * Template Name: Training Actions
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
		<section class="c-section">
			<div class="c-info c-cols" data-template="1-1">
				<div class="col1">
					<?php if(trim($fields['main']['title'] ?? '')): ?>
					<h2 class="c-info__title heading2"><?php echo $fields['main']['title']; ?></h2>
					<?php endif; ?>
					<?php if(trim($fields['main']['description'] ?? '')): ?>
					<div class="c-info__desc text2"><?php echo $fields['main']['description']; ?></div>
					<?php endif; ?>
				</div>
				<div class="col2">
					<?php if($fields['main']['image']): ?>
					<div class="c-info__image">
						<img src="<?php echo $fields['main']['image']; ?>" alt="">
					</div>
					<?php endif; ?>
				</div>
			</div>
			<div class="c-info">
				<?php 
				if(!empty($fields['areas']['data'])):
					foreach ($fields['areas']['data'] as $data):
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
		</section>
	</main><!-- #main -->

<?php
get_footer();
