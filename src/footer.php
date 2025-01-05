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
$logoVhio = $theme."/assets/images/logo-vhio.jpg";
$logoEU = $theme."/assets/images/logo-eu.png";

$iconTwitter = wp_remote_get($theme."/assets/images/icon-twitter.svg", array('sslverify' => FALSE));
$twitter = wp_remote_retrieve_body($iconTwitter);
$iconInstagram = wp_remote_get($theme."/assets/images/icon-instagram.svg", array('sslverify' => FALSE));
$instagram = wp_remote_retrieve_body($iconInstagram);
$iconGlobe = wp_remote_get($theme."/assets/images/icon-globe.svg", array('sslverify' => FALSE));
$globe = wp_remote_retrieve_body($iconGlobe);

?>

	<footer id="colophon" class="site-footer c-footer layout">
		<div class="c-footer__content">
			<div class="c-footer__branding">
				<a href="#" class="c-footer__logo c-footer__logo--vida"><img src="<?php echo $logoVida; ?>" alt=""></a>
				<a href="#" class="c-footer__logo c-footer__logo--vhio"><img src="<?php echo $logoVhio; ?>" alt=""></a>
			</div>
			<div class="c-footer__info">	
				<a href="#" class="c-footer__logo c-footer__logo--eu"><img src="<?php echo $logoEU; ?>" alt=""></a>
				<p class="text3 text3--fs-constant">This project has received funding from the European Union's Horizon Europe research andinnovation programme under the Marie Skłodowska-Curie grant agreement No 101179122</p>
			</div>
		</div>
		<div class="c-footer__rrss">
			<a href="#" target="_blank" class="twitter"><?php echo $twitter; ?></a>
			<a href="#" target="_blank" class="instagram"><?php echo $instagram; ?></a>
			<a href="#" target="_blank" class="web"><?php echo $globe; ?></a>
		</div>
		<div class="c-footer__legal">© <?php echo date("Y"); ?> VHIO | <a href="/cookies-policy">Legal Text</a></div>
	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
