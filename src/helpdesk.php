<?php
/**
 * Template Name: Helpdesk
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package vida
 */

$theme = get_stylesheet_directory_uri();
$heroBg = $theme."/assets/images/placeholders/helpdesk-hero-background.jpg";

get_header();
?>

	<main id="primary" class="site-main layout">
		<section class="c-hero full-width layout">
			<picture class="c-hero__bg full-width">
				<!-- <source srcset="" media="(max-width: 767px)" /> -->
				<img src="<?php echo $heroBg; ?>" alt="">
			</picture>
			<div class="c-hero__inner">
				<div class="c-hero__content">
					<h2 class="c-hero__title heading1 uppercase">Helpdesk Service</h2>
				</div>
			</div>
		</section>
		<section class="c-section">
			<div class="c-info c-cols" data-template="1-2">
				<div class="col1">
					<h2 class="c-info__title heading2">Contact Us</h2>
					<div class="c-info__desc text3">
						<p><strong>Phone:</strong> 34 932 543 450 (Ext: 8816)</p>
						<p><strong>Imma Falero</strong><br />Director at VHIO Academy</p>
						<p><strong>Maria Yubero</strong><br />Training Coordinator at VHIO Academy</p>
						<p>Vall Hebron Institute of Oncology (VHIO)<br />Plaça Adolf Marsillach,<br />608035 Barcelona (Spain)</p>
					</div>
					<a href="#" target="_blank" class="button">Contact us</a>
				</div>
				<div class="col2">
					<div class="text3">
						<p>VHIO VIDA Management Team has created a devoted Helpdesk& Technical Support Service that will be active throughout the duration of the programme and will be accessible to interested applicants. The Helpdesk Service will be useful during the Application and Selections Processes. Candidates are encouraged to contact the Helpdesk service via email to resolve any questions or issues regarding the selection processes.</p>
					</div>
				</div>
			</div>
		</section>
	</main><!-- #main -->

<?php
get_footer();
