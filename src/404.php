<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 *
 * @package vida
 */

$optionFields = get_fields('options');

get_header();
?>

	<main id="primary" class="site-main layout">
		<section class="c-section">
			<div class="c-section__header">
				<?php if(trim($optionFields['404_title'] ?? '')): ?>
				<h1 class="c-section__title heading1 uppercase"><?php echo $optionFields['404_title']; ?></h1>
				<?php endif; ?>
				<?php if(trim($optionFields['404_text'] ?? '')): ?>
				<div class="c-section__desc text1 text1--fs-constant"><?php echo $optionFields['404_text']; ?></div>
				<?php endif; ?>
				<?php 
				if($optionFields['404_link']): 
					$button = $optionFields['404_link'];
				?>
				<a href="<?php echo $button['url'] ?>" target="<?php echo $button['target'] ?>" class="button button--fs-constant button--404"><?php echo $button['title'] ?></a>
				<?php endif; ?>
			</div>
		</section>
	</main><!-- #main -->

<?php
get_footer();
