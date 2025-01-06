<?php
/**
 * Template Name: The Project
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package vida
 */

$theme = get_stylesheet_directory_uri();
//$projectSection1 = $theme."/assets/images/placeholders/the-project-research.jpg";
//$projectSection2 = $theme."/assets/images/placeholders/the-project-cellex.jpg";

$fields = get_fields();

get_header();
?>

	<main id="primary" class="site-main layout">
		<section class="c-section">
			<?php 
			if(!empty($fields['sections'])):
				foreach ($fields['sections'] as $key=>$section):
			?>
				<div class="c-about c-cols" data-template="1-2">
					<div class="col1">
						<?php if($key === 0): ?>
						<h1 class="c-about__title heading2"><?php echo $section['title']; ?></h1>
						<?php else: ?>
						<h2 class="c-about__title heading2"><?php echo $section['title']; ?></h2>
						<?php endif; ?>
					</div>
					<div class="col2">
						<?php 
						if(!empty($section['blocks'])): 
							foreach ($section['blocks'] as $block):
						?>
							<div class="c-about__block">
								<?php 
								if(!empty($block['block'])): 
									foreach ($block['block'] as $row):
										switch ($row['acf_fc_layout']):
											case 'block_title': 
												if(trim($row['title'] ?? '')): ?>
												<h3 class="c-about__subtitle heading3 uppercase icon-half-moon"><?php echo $row['title']; ?></h3>
												<?php endif;
											break;
											case 'block_content':
												if(trim($row['content'] ?? '')): ?>
												<div class="c-about__content text2"><?php echo $row['content']; ?></div>
												<?php endif;
											break;
											case 'block_button':
												if($row['button']): 
													$rowButton = $row['button'];
												?>
												<a href="<?php echo $rowButton['url']; ?>" target="<?php echo $rowButton['target']; ?>" class="c-about__button button"><?php echo $rowButton['title']; ?></a>
												<?php endif;
											break;
										endswitch;
									endforeach;									
								endif;
								?>
							</div>
						<?php 
							endforeach;
						endif;
						?>
					</div>
				</div>
			<?php 
				endforeach;
			endif;
			?>
			<!-- <div class="c-about c-cols" data-template="1-2">
				<div class="col1">
					<h1 class="c-about__title heading2">We want to train and inspire the next generation of leading cancerresearchers and medical doctors in Oncology</h1>
				</div>
				<div class="col2">
					<div class="c-about__block">
						<h3 class="c-about__subtitle heading3 uppercase icon-half-moon">The project</h3>
						<div class="c-about__content text2">
							<p>One of VHIO's main missions is to train and inspire the next generation of leading cancer researchers and medical doctors in Oncologyto drive research and innovation and tacklethe societal challenges of tomorrow. Through theVHIO Academy established in 2021, the institute aims to attract young talent globally and provide state-of-the-art training and career development opportunities.To further boost VHIO leadership in cancer research by improving the training aspects and recruiting activities in order to attract the best talent at postdoctoral level, VIDA (“VHIO International post Doctoral programme for translational Research”) is a new excellent postdoctoral programme led by VHIO for therecruitment of 12 postdoctoral researchers to provide a new dimension through highly interdisciplinary and intersectoral research in the broad topic of Cancer Research while fully complying with all the principles of Open Science and maintaining the highest research quality standards. It provides the ideal setting to attract the best talent of postdoctoral researchers worldwide in the programme's research priorities. The VIDA COFUND programme also includes the participation of 16 different academic & non-academic partner organisations.</p>
						</div>
						<a href="#" target="_blank" class="c-about__button button">Subscribe</a>
						<div class="c-about__content text2">
							<img src="<?php //echo $projectSection1; ?>" alt="">
							<p>The programme will strength the portfolio of VHIO Academy while consolidating the excellence and outstanding track-record of the beneficiary and its network of partner organisations.</p>
						</div>
						<a href="#" target="_blank" class="c-about__button button">Rectuitment</a>
					</div>
					<div class="c-about__block">
						<h3 class="c-about__subtitle heading3 uppercase icon-half-moon">Postdoctoral programme</h3>
						<div class="c-about__content text2">
							<p>VIDA postdoctoral programme represents the perfect environment for the training ofpostdoctoral researchers in the cancer research & Oncology field, thus creating a myriad offuture opportunities for the fellows and a workflow of excellentresearchers as futureleaders on the field. The programme involves a wide variety of research topics and hostingsupervisors within the 2research areas, 4 sub-areas and 29 themes available for thecandidates coveringfrom pre-clinical & translational to clinical research, thusdemonstrating thewide variety of research options and the unique interdisciplinary approach of VIDAprogramme by covering thewhole spectrum of Oncology & cancerresearch.The programme will complement the frontier research projectswith advancedtraining aspects through an excellent training programme that incorporates severalinnovative features, including practical hands-on-schools, training a spin-off day, trainingon research diversity as a retreat for personal development in addition to other trainingactivities on scientific & communication skills, knowledge transfer & entrepreneurship.Fellows will be encouraged asked to participate and contribute to communication &outreach activities.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="c-about c-cols" data-template="1-2">
				<div class="col1">
					<h2 class="c-about__title heading2">VHIO (Vall d'Hebron Institute of Oncology)</h2>
				</div>
				<div class="col2">
					<div class="c-about__block">
						<div class="c-about__content text2">
							<p>One of VHIO's main missions is to train and inspire the next generation of leading cancer researchers and medical doctors in Oncologyto drive research and innovation and tacklethe societal challenges of tomorrow. Through theVHIO Academy established in 2021, the institute aims to attract young talent globally and provide state-of-the-art training and career development opportunities.To further boost VHIO leadership in cancer research by improving the training aspects and recruiting activities in order to attract the best talent at postdoctoral level, VIDA (“VHIO International post Doctoral programme for translational Research”) is a new excellent postdoctoral programme led by VHIO for therecruitment of 12 postdoctoral researchers to provide a new dimension through highly interdisciplinary and intersectoral research in the broad topic of Cancer Research while fully complying with all the principles of Open Science and maintaining the highest research quality standards. It provides the ideal setting to attract the best talent of postdoctoral researchers worldwide in the programme's research priorities. The VIDA COFUND programme also includes the participation of 16 different academic & non-academic partner organisations.</p>
							<img src="<?php //echo $projectSection2; ?>" alt="">
						</div>
					</div>
				</div>
			</div> -->
		</section>
	</main><!-- #main -->

<?php
get_footer();
