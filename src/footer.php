<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package vida
 */

$theme = get_stylesheet_directory_uri();
$logoVida = $theme."/assets/images/logo-vida.png";
/* $logoVhio = $theme."/assets/images/logo-vhio.jpg"; */
$logoVhio = $theme."/assets/images/logo-vhio.png";
$logoEU = $theme."/assets/images/logo-eu.png";

$iconTwitter = wp_remote_get($theme."/assets/images/icon-twitter.svg", array('sslverify' => FALSE));
$twitter = wp_remote_retrieve_body($iconTwitter);
$iconInstagram = wp_remote_get($theme."/assets/images/icon-instagram.svg", array('sslverify' => FALSE));
$instagram = wp_remote_retrieve_body($iconInstagram);
$iconGlobe = wp_remote_get($theme."/assets/images/icon-globe.svg", array('sslverify' => FALSE));
$globe = wp_remote_retrieve_body($iconGlobe);

$optionFields = get_fields('options');
$twitterURL = $optionFields['rrss_twitter_url'];
$instagramURL = $optionFields['rrss_instagram_url'];
$globeURL = $optionFields['rrss_globe_url'];

?>

	<footer id="colophon" class="site-footer c-footer layout">
		<div class="c-footer__content">
			<div class="c-footer__branding">
				<?php //var_dump($optionFields); ?>
				<?php 
				if($optionFields['footer_main']['link_vida']): 
					$linkVida = $optionFields['footer_main']['link_vida'];
				?>
				<a href="<?php echo $linkVida['url']; ?>" target="<?php echo $linkVida['target']; ?>" class="c-footer__logo c-footer__logo--vida"><img src="<?php echo $logoVida; ?>" alt="<?php echo $linkVida['title']; ?>"></a>
				<?php endif; ?>
				<?php 
				if($optionFields['footer_main']['link_vhio']): 
					$linkVhio = $optionFields['footer_main']['link_vhio'];
				?>
				<a href="<?php echo $linkVhio['url']; ?>" target="<?php echo $linkVhio['target']; ?>" class="c-footer__logo c-footer__logo--vhio"><img src="<?php echo $logoVhio; ?>" alt="<?php echo $linkVhio['title']; ?>"></a>
				<?php endif; ?>
			</div>
			<div class="c-footer__info">
				<?php 
				if($optionFields['footer_main']['link_eu']): 
					$linkEU = $optionFields['footer_main']['link_eu'];
				?>
				<a href="<?php echo $linkEU['url']; ?>" target="<?php echo $linkVhio['target']; ?>" class="c-footer__logo c-footer__logo--eu"><img src="<?php echo $logoEU; ?>" alt="<?php echo $linkVhio['title']; ?>"></a>
				<?php endif; ?>
				<?php if(trim($optionFields['footer_main']['text'] ?? '')): ?>
				<div class="text3 text3--fs-constant"><?php echo $optionFields['footer_main']['text']; ?></div>
				<?php endif; ?>
			</div>
		</div>
		<div class="c-footer__rrss">
			<?php if($twitterURL && !ctype_space($twitterURL)): ?>
			<a href="<?php echo $twitterURL; ?>" target="_blank" class="twitter"><?php echo $twitter; ?></a>
			<?php endif; ?>
			<?php if($instagramURL && !ctype_space($instagramURL)): ?>
			<a href="<?php echo $instagramURL; ?>" target="_blank" class="instagram"><?php echo $instagram; ?></a>
			<?php endif; ?>
			<?php if($globeURL && !ctype_space($globeURL)): ?>
			<a href="<?php echo $globeURL; ?>" target="_blank" class="web"><?php echo $globe; ?></a>
			<?php endif; ?>
		</div>
		<?php if(trim($optionFields['footer_legal_text'] ?? '')): ?>
		<div class="c-footer__legal">© <?php echo date("Y").' '.$optionFields['footer_legal_text']; ?></div>
		<?php endif; ?>
	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
