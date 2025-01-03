<?php
/**
 * Template Name: Recruitment
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package vida
 */

$theme = get_stylesheet_directory_uri();
$heroBg = $theme."/assets/images/placeholders/recruitment-hero-background.png";
$infoSection1 = $theme."/assets/images/placeholders/recruitment-elegibility-criteria.jpg";
$infoSection2 = $theme."/assets/images/placeholders/recruitment-application.jpg";
$infoSection3 = $theme."/assets/images/placeholders/recruitment-doubts.jpg";

get_header();
?>

	<main id="primary" class="site-main layout">
		<section class="c-hero c-hero--small full-width layout">
			<picture class="c-hero__bg full-width">
				<!-- <source srcset="" media="(max-width: 767px)" /> -->
				<img src="<?php echo $heroBg; ?>" alt="">
			</picture>
			<div class="c-hero__inner">
				<div class="c-hero__content">
					<h2 class="c-hero__title heading1">How to apply</h2>
					<p class="c-hero__desc text1">Lorem ipsum dolor sit amet consectetur. Scelerisque tempor nibh nibh sit eleifend ut tortor id urna.</p>
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
					<h2 class="c-info__title heading2 uppercase">Elegibility criteria</h2>
					<div class="c-info__desc text2">
						<p>Candidates shall fulfil the following requirements at the time of the call deadline:</p>
						<p><strong>MOBILITY RULE:</strong> "Researchers may not have resided or carried out theirmain activity (work, studies, etc.) in Spain for more than 12 months in thethree years immediately before the date of recruitment".</p>
						<p><strong>POSTDOCTORAL RESEARCHER DEFINITION:</strong> "Researchers must be in possession of a doctoral degree at the deadline of the co-funded programme's call. Researchers who have successfully defended their doctoral thesis but who have not yet formally been awarded the doctoral degree will also be considered as postdoctoral researchers and will beconsidered eligible to apply".</p>
						<p>Applications submitted online must include all the personal informationand details requested in the application website to be eligible. <strong>No restrictions on nationality, age and/or gender</strong> will affect the selection process</p>
					</div>
				</div>
			</div>
			<div class="c-info c-cols" data-template="1-2">
				<div class="col1">
					<h2 class="c-info__title heading2">Laboratories</h2>
				</div>
				<div class="col2">
					<div class="c-data">
						<h3 class="c-data__term heading3">Teresa Macarulla & Tian Tian</h3>
						<div class="c-data__description">
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod fugiat, molestias totam temporibus cupiditate sed saepe dolor perferendis harum repudiandae.</p>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod fugiat, molestias totam temporibus cupiditate sed saepe dolor perferendis harum repudiandae.</p>
						</div>
					</div>
					<div class="c-data">
						<h3 class="c-data__term heading3">Fran Martínez</h3>
						<div class="c-data__description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod fugiat, molestias totam temporibus cupiditate sed saepe dolor perferendis harum repudiandae.</div>
					</div>
					<div class="c-data">
						<h3 class="c-data__term heading3">Joan Seoane</h3>
						<div class="c-data__description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod fugiat, molestias totam temporibus cupiditate sed saepe dolor perferendis harum repudiandae.</div>
					</div>
					<div class="c-data">
						<h3 class="c-data__term heading3">Alena Gros</h3>
						<div class="c-data__description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod fugiat, molestias totam temporibus cupiditate sed saepe dolor perferendis harum repudiandae.</div>
					</div>
					<div class="c-data">
						<h3 class="c-data__term heading3">Ana Vivancos</h3>
						<div class="c-data__description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod fugiat, molestias totam temporibus cupiditate sed saepe dolor perferendis harum repudiandae.</div>
					</div>
					<div class="c-data">
						<h3 class="c-data__term heading3">Francisco Barriga</h3>
						<div class="c-data__description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod fugiat, molestias totam temporibus cupiditate sed saepe dolor perferendis harum repudiandae.</div>
					</div>
					<div class="c-data">
						<h3 class="c-data__term heading3">Joaquin Mateo</h3>
						<div class="c-data__description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod fugiat, molestias totam temporibus cupiditate sed saepe dolor perferendis harum repudiandae.</div>
					</div>
					<div class="c-data">
						<h3 class="c-data__term heading3">Marcos Malumbres</h3>
						<div class="c-data__description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod fugiat, molestias totam temporibus cupiditate sed saepe dolor perferendis harum repudiandae.</div>
					</div>
					<div class="c-data">
						<h3 class="c-data__term heading3">Raquel Pérez López</h3>
						<div class="c-data__description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod fugiat, molestias totam temporibus cupiditate sed saepe dolor perferendis harum repudiandae.</div>
					</div>
				</div>
			</div>
			<div class="c-info c-cols" data-template="1-2">
				<div class="col1">
					<div class="c-info__image">
						<img src="<?php echo $infoSection2; ?>" alt="">
					</div>
				</div>
				<div class="col2">
					<h2 class="c-info__title heading2 uppercase">Application</h2>
					<div class="c-info__desc text2">
						<p>Applications will be submitted online through LINK., the official platform for VHIO VIDA programme.</p>
						<ul>
							<li>Orci et urna tincidunt curabitur ullamcorper viverra interdum cursus. Congue blandit ultricies consequat nunc suspendisse id imperdiet.</li>
							<li>Suscipit blandit arcu at quam nam. Praesent a ac gravida eget sed egestas eget. Ultrices dolor vel leo malesuada donec amet turpis erat.</li>
						</ul>
					</div>
					<a href="#" download class="button">Descargar la guía</a>
				</div>
			</div>
			<div class="c-info c-cols" data-template="2-1">
				<div class="col1">
					<h2 class="c-info__title heading2 uppercase">Any more doubts?</h2>
					<div class="c-info__desc text2">
						<p>Lorem ipsum dolor sit amet consectetur. Tellus pharetra molestie in nulla tincidunt cursus tellus. Tellus fringilla duis lobortis sit feugiat risus pellentesque consectetur.</p>
						<p>Orci et urna tincidunt curabitur ullamcorper viverra interdum cursus. Congue blandit ultricies consequat nunc suspendisse id imperdiet.</p>
						<p>Suscipit blandit arcu at quam nam. Praesent a ac gravida eget sed egestas eget. Ultrices dolor vel leo malesuada donec amet turpis erat.</p>
					</div>
					<a href="#" download class="button">Descarga las preguntas frecuentes</a>
				</div>
				<div class="col2">
					<div class="c-info__image">
						<img src="<?php echo $infoSection3; ?>" alt="">
					</div>
				</div>
			</div>
		</section>
	</main><!-- #main -->

<?php
get_footer();
