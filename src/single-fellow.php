<?php
/**
 * The template for single fellow
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package vida
 */

$theme = get_stylesheet_directory_uri();

$fields = get_fields();
/* $idParent = 517; */

/* $iconArrow = wp_remote_get($theme."/assets/images/icon-nav-arrow.svg", array('sslverify' => FALSE));
$arrow = wp_remote_retrieve_body($iconArrow); */

get_header();
?>

	<main id="primary" class="site-main layout">
		<div class="c-section">
			<div class="c-cols" data-template="1-2">
				<div class="col1">
					<div class="c-card c-card--fellow c-card--single-fellow">
						<?php if(trim(get_the_post_thumbnail_url() ?? '')): ?>
						<div class="c-card__image">
							<img src="<?php the_post_thumbnail_url(); ?>" alt="<?php echo the_title(); ?>">
						</div>
						<?php endif; ?>
						<div class="c-card__content">
							<div class="c-card__primary">
								<?php if(trim($fields['main']['name'] ?? '')): ?>
								<h1 class="c-card__title text1 bold"><?php echo $fields['main']['name']; ?></h1>
								<?php endif; ?>
								<?php if(trim($fields['main']['job'] ?? '')): ?>
								<p class="c-card__job text2"><?php echo $fields['main']['job']; ?></p>
								<?php endif; ?>
							</div>
							<?php 
							if(trim($fields['main']['location'] ?? '') ||
								trim($fields['main']['city'] ?? '') ||
								trim($fields['main']['country'] ?? '')): 
							?>
							<div class="c-card__secondary">
								<?php if(trim($fields['main']['location'] ?? '')): ?>
								<p class="c-card__location text2 bold"><?php echo $fields['main']['location']; ?></p>
								<?php endif; ?>
								<?php if(trim($fields['main']['city'] ?? '')): ?>
								<p class="c-card__city text2"><?php echo $fields['main']['city']; ?></p>
								<?php endif; ?>
								<?php if(trim($fields['main']['country'] ?? '')): ?>
								<p class="c-card__country text2"><?php echo $fields['main']['country']; ?></p>
								<?php endif; ?>

								<?php
									$fellowId = get_the_ID();
									
									$allFellows = get_posts(array(
										'fields' => 'ids',
										'numberposts' => -1,
										'post_type'=>'fellow',
										'post_status'=>'publish',
										'order'=>'ASC'
									));
									
									$fellowIndex = array_search($fellowId, $allFellows);
									$fellowNumber = $fellowIndex + 1;
									$totalFellows = count($allFellows);

									$prevFellowIndex = $fellowIndex - 1;
									$prevFellowNumber = $prevFellowIndex + 1;
									if($prevFellowIndex >= 0):
										$prevFellowId = $allFellows[$prevFellowIndex];
									endif;
									
									$nextFellowIndex = $fellowIndex + 1;
									$nextFellowNumber = $nextFellowIndex + 1;
									if($nextFellowIndex < $totalFellows):
										$nextFellowId = $allFellows[$nextFellowIndex];
									endif;
								?>
								<div class="c-card__nav clearfix">
									<?php if($prevFellowIndex >= 0): ?>
									<a href="<?php echo get_permalink($prevFellowId); ?>" rel="prev"><i class="arrow arrow--left"></i></a>
									<?php endif; ?>

									<span class="c-card__nav__index"><?php echo $fellowNumber.'/'.$totalFellows; ?></span>

									<?php if($nextFellowIndex < $totalFellows): ?>
									<a href="<?php echo get_permalink($nextFellowId); ?>" rel="next"><i class="arrow arrow--right"></i></a>
									<?php endif; ?>
								</div>
							</div>
							<?php endif; ?>
						</div>
					</div>
				</div>
				<div class="col2">
					<?php 
					if(!empty($fields['about'])): 
						foreach ($fields['about'] as $block):
					?>
					<div class="c-block">
						<?php if(trim($block['title'] ?? '')): ?>
						<h3 class="c-block__title heading2"><?php echo $block['title']; ?></h3>
						<?php endif; ?>
						<?php if(trim($block['description'] ?? '')): ?>
						<div class="c-block__description text2"><?php echo $block['description']; ?></div>
						<?php endif; ?>
					</div>
					<?php 
						endforeach;
					endif;
					?>
				</div>
			</div>
		</div>
	</main><!-- #main -->

<?php
get_footer();