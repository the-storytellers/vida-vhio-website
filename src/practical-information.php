<?php
/**
 * Template Name: Practical Information
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package vida
 */

$theme = get_stylesheet_directory_uri();
//$heroBg = $theme."/assets/images/placeholders/recruitment-hero-background.png";
//$infoSection1 = $theme."/assets/images/placeholders/recruitment-elegibility-criteria.jpg";
//$infoSection2 = $theme."/assets/images/placeholders/recruitment-application.jpg";
//$infoSection3 = $theme."/assets/images/placeholders/recruitment-faqs.jpg";
$infoSection1 = $theme."/assets/images/placeholders/practical-information-city.jpg";
$infoSection2 = $theme."/assets/images/placeholders/practical-information-campus.jpg";
$heroSupport = $theme."/assets/images/placeholders/practical-information-support-hero-background.jpg";
$infoSection3 = $theme."/assets/images/placeholders/practical-information-arriving-spain.jpg";
$infoSection4 = $theme."/assets/images/placeholders/practical-information-commitment.jpg";
$heroGuides = $theme."/assets/images/placeholders/practical-information-guides-hero-background.jpg";
$guide1 = $theme."/assets/images/placeholders/guide-mobility.jpg";
$guide2 = $theme."/assets/images/placeholders/guide-schools-barcelona.jpg";
$guide3 = $theme."/assets/images/placeholders/guide-vall-hebron.png";
$guide4 = $theme."/assets/images/placeholders/guide-international-mobility.jpg";
$guide5 = $theme."/assets/images/placeholders/guide-euraxess.jpg";
$guide6 = $theme."/assets/images/placeholders/guide-career-path.jpg";

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
					<div class="c-info__image">
						<img src="<?php echo $infoSection1; ?>" alt="">
					</div>
				</div>
				<div class="col2">
					<h2 class="c-info__title heading2">The City</h2>
					<div class="c-info__desc text2">
						<p>Barcelona is a dynamic, multicultural city that offers an unparalleled quality of life. The capital of the autonomous community of Catalonia and the second most populated city in Spain after the capital, Madrid is valued internationally for aspects such as its economy, artistic heritage, culture, sports and social life. Positioned as the 8th world's best city to live in by the <a href="https://www.worldsbestcities.com/rankings/worlds-best-cities/" target="_blank">Best Cities</a> ranking, Barcelona is a modern, cosmopolitan and prosperous city with international projection, which is committed to culture, innovation, solidarity and sustainability.</p>
						<p>Located on the shore of the Mediterranean Sea, about 120 km south of the Pyrenees, Barcelona lies on a small coastal plain bordered by the sea to the east, the Collserola mountain to the west, the Llobregat River to the south and the Besós River to the north. Its mediterranean climate brings mostly sunny days throughout the year, with warm summers and mild winters.</p>
						<p>For more information on Barcelona's events and activities, mobility and transportation, and the <a href="https://www.barcelona.cat/en" target="_blank">city hall's</a> commitment to sustainability, equity, diversity, inclusion, and accessibility, please visit the city hall's webpage. To learn more about initiatives to attract and promote international talent in Barcelona, please read the Barcelona Welcomes Talent guide.</p>
					</div>
				</div>
			</div>
			<div class="c-info c-cols" data-template="2-1">
				<div class="col1">
					<h2 class="c-info__title heading2">The Vall d'Hebron Campus</h2>
					<div class="c-info__desc text2">
						<p>VHIO is one of the three scientific research institutes that belong to the <a href="https://www.vallhebron.com/en" target="_blank">Vall d'Hebron Barcelona Hospital Campus</a> together with the Vall d'Hebron Hospital and the Autonomous University of Barcelona (UAB). The interplay between these institutions aims at providing the best patient care through excellence research and innovation practices applied to clinical healthcare. You can check the campus map <a href="https://www.vallhebron.com/en/map" target="_blank">here</a>.</p>
					</div>
				</div>
				<div class="col2">
					<div class="c-info__image">
						<img src="<?php echo $infoSection2; ?>" alt="">
					</div>
				</div>
			</div>
		</section>
		<section class="c-hero full-width layout">
			<?php //if($fields['hero']['background']): ?>
			<picture class="c-hero__bg full-width">
				<?php //if($fields['hero']['background_mobile']): ?>
				<!-- <source srcset="<?php //echo $fields['hero']['background_mobile'] ?>" media="(max-width: 767px)" /> -->
				<?php //endif; ?>
				<!-- <img src="<?php //echo $fields['hero']['background']; ?>" alt=""> -->
				<img src="<?php echo $heroSupport; ?>" alt="">
			</picture>
			<?php //endif; ?>
			<div class="c-hero__inner">
				<div class="c-hero__content">
					<?php //if(trim($fields['hero']['title'] ?? '')): ?>
					<!-- <h1 class="c-hero__title heading1 uppercase"><?php //echo $fields['hero']['title']; ?></h1> -->
					<h1 class="c-hero__title heading1 uppercase">Support to International Researchers</h1>
					<?php //endif; ?>
				</div>
			</div>
		</section>
		<section class="c-section">
			<div class="c-info c-cols" data-template="1-2">
				<div class="col1">
					<div class="c-info__image">
						<img src="<?php echo $infoSection3; ?>" alt="">
					</div>
				</div>
				<div class="col2">
					<h2 class="c-info__title heading2">Arriving to Spain</h2>
					<div class="c-info__desc text2">
						<p>The Human Resources department at VHIO supports international researchers in their relocation to Barcelona. In the International Mobility Guidelines for Researchers at VHIO you will find practical information about necessary administrative procedures, housing and living costs, as well as tips to navigate the local culture and resources.</p>
						<p>The <a href="https://www.euraxess.es/spain/information-assistance/preparing-your-stay" target="_blank">Euraxess</a> website is another source for valuable practical information for international researchers moving to Spain.</p>
						<p>You can access detailed information about the mobility of international researchers in Spain in the Spanish Foundation for Science and Technology (FECYT) guidelines.</p>
					</div>
				</div>
			</div>
			<div class="c-info c-cols" data-template="2-1">
				<div class="col1">
					<h2 class="c-info__title heading2">VHIO's Commitment to Supporting Research Careers</h2>
					<div class="c-info__desc text2">
						<p>At VHIO we are committed to supporting researchers <a href="https://vhio.net/career-development/" target="_blank">professional development</a> by providing continuous state-of-the-art technical, scientific and transferable skill <a href="https://vhio.net/advanced-training/" target="_blank">training opportunities</a> and educational events that leverage their careers and expand their professional networks, widening their career perspectives.</p>
						<p>In addition to the support from VHIO, you can look for Euraxess initiatives on <a href="https://www.euraxess.es/spain/services" target="_blank">Researcher Career Development</a> and read their practical guide for Researcher Career Paths in Spain.</p>
					</div>
				</div>
				<div class="col2">
					<div class="c-info__image">
						<img src="<?php echo $infoSection4; ?>" alt="">
					</div>
				</div>
			</div>
		</section>
		<section class="c-hero full-width layout">
			<?php //if($fields['hero']['background']): ?>
			<picture class="c-hero__bg full-width">
				<?php //if($fields['hero']['background_mobile']): ?>
				<!-- <source srcset="<?php //echo $fields['hero']['background_mobile'] ?>" media="(max-width: 767px)" /> -->
				<?php //endif; ?>
				<!-- <img src="<?php //echo $fields['hero']['background']; ?>" alt=""> -->
				<img src="<?php echo $heroGuides; ?>" alt="">
			</picture>
			<?php //endif; ?>
			<div class="c-hero__inner">
				<div class="c-hero__content">
					<?php //if(trim($fields['hero']['title'] ?? '')): ?>
					<!-- <h1 class="c-hero__title heading1 uppercase"><?php //echo $fields['hero']['title']; ?></h1> -->
					<h1 class="c-hero__title heading1 uppercase">Useful Guides</h1>
					<?php //endif; ?>
				</div>
			</div>
		</section>
		<section class="c-section">
			<div class="c-grid c-grid--guides">
				<div class="c-guide">
					<div class="c-guide__image"><img src="<?php echo $guide1; ?>" alt=""></div>
					<div class="c-guide__desc">
						<p>Guidelines for the management of the mobility of the foreign researcher in Spain by FECYT</p>
					</div>
					<a href="#" class="button button--fs-constant c-guide__button">Download</a>
				</div>
				<div class="c-guide">
					<div class="c-guide__image"><img src="<?php echo $guide2; ?>" alt=""></div>
					<div class="c-guide__desc">
						<p>Barcelona welcomes talent by the Barcelona International Welcome</p>
					</div>
					<a href="#" class="button button--fs-constant c-guide__button">Download</a>
				</div>
				<div class="c-guide">
					<div class="c-guide__image"><img src="<?php echo $guide3; ?>" alt=""></div>
					<div class="c-guide__desc">
						<p>Campus Vall Hebrón - map</p>
					</div>
					<a href="#" class="button button--fs-constant c-guide__button">Download</a>
				</div>
				<div class="c-guide">
					<div class="c-guide__image"><img src="<?php echo $guide4; ?>" alt=""></div>
					<div class="c-guide__desc">
						<p>International Mobility Guidelines for Researchers at VHIO</p>
					</div>
					<a href="#" class="button button--fs-constant c-guide__button">Download</a>
				</div>
				<div class="c-guide">
					<div class="c-guide__image"><img src="<?php echo $guide5; ?>" alt=""></div>
					<div class="c-guide__desc">
						<p>Researcher Career Development by Euraxess</p>
					</div>
					<a href="#" class="button button--fs-constant c-guide__button">Download</a>
				</div>
				<div class="c-guide">
					<div class="c-guide__image"><img src="<?php echo $guide6; ?>" alt=""></div>
					<div class="c-guide__desc">
						<p>Researcher Career path in Spain at a glance! by FECYT (Spanish Foundation of Science and Technology)</p>
					</div>
					<a href="#" class="button button--fs-constant c-guide__button">Download</a>
				</div>
			</div>
		</section>
		<!-- <section class="c-section">
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
					<?php if(trim($fields['faqs']['title'] ?? '')): ?>
					<h2 class="c-info__title heading2 uppercase"><?php echo $fields['faqs']['title']; ?></h2>
					<?php endif; ?>
					<?php if(trim($fields['faqs']['description'] ?? '')): ?>
					<div class="c-info__desc text2"><?php echo $fields['faqs']['description']; ?></div>
					<?php endif; ?>
					<?php 
					if($fields['faqs']['button']): 
						$faqsButton = $fields['faqs']['button'];
					?>
					<a href="<?php echo $faqsButton['url'] ?>" target="<?php echo $faqsButton['target'] ?>" class="button"><?php echo $faqsButton['title'] ?></a>
					<?php endif; ?>
				</div>
				<div class="col2">
					<?php if($fields['faqs']['image']): ?>
					<div class="c-info__image">
						<img src="<?php echo $fields['faqs']['image']; ?>" alt="">
					</div>
					<?php endif; ?>
				</div>
			</div>
		</section> -->
	</main><!-- #main -->

<?php
get_footer();
