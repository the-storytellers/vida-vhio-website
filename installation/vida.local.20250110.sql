# Migración de la base de datos MySQL de WordPress
#
# Generado: Friday 10. January 2025 07:21 UTC
# Hostname: localhost
# Base de datos: `dbgagyek0zzbse`
# URL: //vida.wearethetellers.com
# Path: D:/work/vida/code/wordpress
# Tables: vhvd_2412_commentmeta, vhvd_2412_comments, vhvd_2412_links, vhvd_2412_options, vhvd_2412_postmeta, vhvd_2412_posts, vhvd_2412_pp_activity_logs, vhvd_2412_term_relationships, vhvd_2412_term_taxonomy, vhvd_2412_termmeta, vhvd_2412_terms, vhvd_2412_usermeta, vhvd_2412_users
# Table Prefix: vhvd_2412_
# Post Types: revision, acf-field, acf-field-group, acf-post-type, acf-ui-options-page, associated-partner, attachment, nav_menu_item, page, post, wp_navigation
# Protocol: https
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Eliminar cualquier tabla existente `vhvd_2412_commentmeta`
#

DROP TABLE IF EXISTS `vhvd_2412_commentmeta`;


#
# Estructura de la tabla de la tabla `vhvd_2412_commentmeta`
#

CREATE TABLE `vhvd_2412_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Contenido de la tabla `vhvd_2412_commentmeta`
#

#
# Fin de los contenidos de datos de la tabla `vhvd_2412_commentmeta`
# --------------------------------------------------------



#
# Eliminar cualquier tabla existente `vhvd_2412_comments`
#

DROP TABLE IF EXISTS `vhvd_2412_comments`;


#
# Estructura de la tabla de la tabla `vhvd_2412_comments`
#

CREATE TABLE `vhvd_2412_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Contenido de la tabla `vhvd_2412_comments`
#

#
# Fin de los contenidos de datos de la tabla `vhvd_2412_comments`
# --------------------------------------------------------



#
# Eliminar cualquier tabla existente `vhvd_2412_links`
#

DROP TABLE IF EXISTS `vhvd_2412_links`;


#
# Estructura de la tabla de la tabla `vhvd_2412_links`
#

CREATE TABLE `vhvd_2412_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Contenido de la tabla `vhvd_2412_links`
#

#
# Fin de los contenidos de datos de la tabla `vhvd_2412_links`
# --------------------------------------------------------



#
# Eliminar cualquier tabla existente `vhvd_2412_options`
#

DROP TABLE IF EXISTS `vhvd_2412_options`;


#
# Estructura de la tabla de la tabla `vhvd_2412_options`
#

CREATE TABLE `vhvd_2412_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1099 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Contenido de la tabla `vhvd_2412_options`
#
INSERT INTO `vhvd_2412_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:13:{i:1736429839;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1736440639;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1736440672;a:3:{s:21:"wp_update_user_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1736440677;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1736442544;a:1:{s:37:"siteground_optimizer_check_assets_dir";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1736442559;a:1:{s:30:"siteground_data_collector_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1736444238;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1736446038;a:1:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1736447838;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1736613502;a:1:{s:30:"wp_delete_temp_updater_backups";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1736644284;a:1:{s:27:"acf_update_site_health_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1736699839;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'on'),
(2, 'siteurl', 'https://vida.local', 'on'),
(3, 'home', 'https://vida.local', 'on'),
(4, 'blogname', 'VIDA', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'dev@the-storytellers.es', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', '', 'on'),
(21, 'default_ping_status', '', 'on'),
(22, 'default_pingback_flag', '', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'j \\d\\e F \\d\\e Y', 'on'),
(25, 'time_format', 'H:i', 'on'),
(26, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y H:i', 'on'),
(27, 'comment_moderation', '1', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:112:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:46:"associated-partner/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:56:"associated-partner/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:76:"associated-partner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"associated-partner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"associated-partner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:52:"associated-partner/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:35:"associated-partner/([^/]+)/embed/?$";s:51:"index.php?associated-partner=$matches[1]&embed=true";s:39:"associated-partner/([^/]+)/trackback/?$";s:45:"index.php?associated-partner=$matches[1]&tb=1";s:47:"associated-partner/([^/]+)/page/?([0-9]{1,})/?$";s:58:"index.php?associated-partner=$matches[1]&paged=$matches[2]";s:54:"associated-partner/([^/]+)/comment-page-([0-9]{1,})/?$";s:58:"index.php?associated-partner=$matches[1]&cpage=$matches[2]";s:43:"associated-partner/([^/]+)(?:/([0-9]+))?/?$";s:57:"index.php?associated-partner=$matches[1]&page=$matches[2]";s:35:"associated-partner/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"associated-partner/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"associated-partner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"associated-partner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"associated-partner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"associated-partner/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:13:"favicon\\.ico$";s:19:"index.php?favicon=1";s:12:"sitemap\\.xml";s:24:"index.php??sitemap=index";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=9&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:4:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:31:"sg-cachepress/sg-cachepress.php";i:2;s:53:"simple-custom-post-order/simple-custom-post-order.php";i:3;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'vida', 'on'),
(42, 'stylesheet', 'vida', 'on'),
(43, 'comment_registration', '1', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '58975', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '0', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '1', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:0:{}', 'on'),
(78, 'widget_text', 'a:0:{}', 'on'),
(79, 'widget_rss', 'a:0:{}', 'on'),
(80, 'uninstall_plugins', 'a:2:{s:53:"simple-custom-post-order/simple-custom-post-order.php";s:18:"scporder_uninstall";s:41:"password-protected/password-protected.php";a:2:{i:0;s:8:"Freemius";i:1;s:22:"_uninstall_plugin_hook";}}', 'off'),
(81, 'timezone_string', 'Europe/Madrid', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '9', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1750955838', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on') ;
INSERT INTO `vhvd_2412_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'initial_db_version', '58975', 'on'),
(102, 'vhvd_2412_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'WPLANG', 'es_ES', 'auto'),
(105, 'user_count', '3', 'off'),
(106, 'widget_block', 'a:6:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:160:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Entradas recientes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:233:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Comentarios recientes</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:146:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Archivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:151:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Categorías</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}s:12:"_multiwidget";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:5:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";i:4;s:7:"block-6";}s:13:"array_version";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(126, 'recovery_keys', 'a:0:{}', 'off'),
(127, 'theme_mods_twentytwentyfive', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1735430132;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}}}}', 'off'),
(143, 'can_compress_scripts', '1', 'on'),
(156, 'finished_updating_comment_type', '1', 'auto'),
(157, 'new_admin_email', 'dev@the-storytellers.es', 'auto'),
(190, 'current_theme', 'vida', 'auto'),
(191, 'theme_mods_vida', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:6:"menu-1";i:2;}s:18:"custom_css_post_id";i:-1;}', 'on'),
(192, 'theme_switched', '', 'auto'),
(195, 'category_children', 'a:0:{}', 'auto'),
(207, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'off'),
(351, 'recently_activated', 'a:1:{s:41:"password-protected/password-protected.php";i:1736272536;}', 'off'),
(374, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1736493671;}', 'off'),
(526, 'fs_active_plugins', 'O:8:"stdClass":0:{}', 'auto'),
(527, 'fs_debug_mode', '', 'auto'),
(528, 'fs_accounts', 'a:8:{s:21:"id_slug_type_path_map";a:1:{i:12503;a:2:{s:4:"slug";s:23:"password-protected-free";s:4:"type";s:6:"plugin";}}s:11:"plugin_data";a:1:{s:23:"password-protected-free";a:17:{s:19:"last_load_timestamp";i:1736265269;s:16:"plugin_main_file";O:8:"stdClass":1:{s:9:"prev_path";s:41:"password-protected/password-protected.php";}s:20:"is_network_activated";b:0;s:17:"install_timestamp";i:1736038910;s:17:"was_plugin_loaded";b:1;s:21:"is_plugin_new_install";b:1;s:16:"sdk_last_version";N;s:11:"sdk_version";s:5:"2.9.0";s:16:"sdk_upgrade_mode";b:1;s:18:"sdk_downgrade_mode";b:0;s:19:"plugin_last_version";N;s:14:"plugin_version";s:5:"2.7.5";s:19:"plugin_upgrade_mode";b:1;s:21:"plugin_downgrade_mode";b:0;s:17:"connectivity_test";a:6:{s:12:"is_connected";N;s:4:"host";s:10:"vida.local";s:9:"server_ip";s:9:"127.0.0.1";s:9:"is_active";b:1;s:9:"timestamp";i:1736038910;s:7:"version";s:5:"2.7.5";}s:15:"prev_is_premium";b:0;s:12:"is_anonymous";a:3:{s:2:"is";b:1;s:9:"timestamp";i:1736038965;s:7:"version";s:5:"2.7.5";}}}s:13:"file_slug_map";a:1:{s:41:"password-protected/password-protected.php";s:23:"password-protected-free";}s:7:"plugins";a:1:{s:23:"password-protected-free";O:9:"FS_Plugin":25:{s:2:"id";s:5:"12503";s:7:"updated";N;s:7:"created";N;s:22:"\0FS_Entity\0_is_updated";b:0;s:10:"public_key";s:32:"pk_e9210517721d27b5112fa7773a600";s:10:"secret_key";N;s:16:"parent_plugin_id";N;s:5:"title";s:18:"Password Protected";s:4:"slug";s:23:"password-protected-free";s:12:"premium_slug";s:34:"password-protected-premium-premium";s:4:"type";s:6:"plugin";s:20:"affiliate_moderation";b:0;s:19:"is_wp_org_compliant";b:1;s:22:"premium_releases_count";N;s:4:"file";s:41:"password-protected/password-protected.php";s:7:"version";s:5:"2.7.5";s:11:"auto_update";N;s:4:"info";N;s:10:"is_premium";b:0;s:14:"premium_suffix";s:9:"(Premium)";s:7:"is_live";b:1;s:9:"bundle_id";N;s:17:"bundle_public_key";N;s:17:"opt_in_moderation";N;s:11:"_is_updated";b:0;}}s:12:"gc_timestamp";a:0:{}s:10:"theme_data";a:0:{}s:9:"unique_id";s:32:"7b59a98c824de384fd76d60135b43566";s:13:"admin_notices";a:1:{s:23:"password-protected-free";a:0:{}}}', 'auto'),
(529, 'fs_api_cache', 'a:0:{}', 'off'),
(532, 'password_protected_version', '2.7.5', 'auto'),
(535, 'password_protected_1.5_update_database', '1', 'auto'),
(536, 'password_protected_status', '1', 'auto'),
(537, 'password_protected_feeds', '0', 'auto'),
(538, 'password_protected_rest', '0', 'auto'),
(539, 'password_protected_administrators', '0', 'auto'),
(540, 'password_protected_users', '0', 'auto'),
(541, 'password_protected_password', '297a01181be32db26b9820440ca3bf1b', 'auto'),
(542, 'password_protected_allowed_ip_addresses', '127.0.0.1', 'auto'),
(543, 'password_protected_remember_me_lifetime', '14', 'auto'),
(548, 'acf_first_activated_version', '6.3.11', 'on'),
(549, 'acf_site_health', '{"version":"6.3.11","plugin_type":"PRO","update_source":"ACF Direct","activated":false,"activated_url":"","license_type":"","license_status":"","subscription_expires":"","wp_version":"6.7.1","mysql_version":"8.0.36","is_multisite":false,"active_theme":{"name":"vida","version":"1.0.0","theme_uri":"http:\\/\\/underscores.me\\/","stylesheet":false},"active_plugins":{"advanced-custom-fields-pro\\/acf.php":{"name":"Advanced Custom Fields PRO","version":"6.3.11","plugin_uri":"https:\\/\\/www.advancedcustomfields.com"},"password-protected\\/password-protected.php":{"name":"Password Protected","version":"2.7.5","plugin_uri":"https:\\/\\/wordpress.org\\/plugins\\/password-protected\\/"},"wp-migrate-db\\/wp-migrate-db.php":{"name":"WP Migrate Lite","version":"2.6.11","plugin_uri":"https:\\/\\/wordpress.org\\/plugins\\/wp-migrate-db\\/"}},"ui_field_groups":"0","php_field_groups":"0","json_field_groups":"0","rest_field_groups":"0","number_of_fields_by_type":[],"number_of_third_party_fields_by_type":[],"post_types_enabled":true,"ui_post_types":"3","json_post_types":"0","ui_taxonomies":"3","json_taxonomies":"0","ui_options_pages_enabled":true,"ui_options_pages":"0","json_options_pages":"0","php_options_pages":"0","rest_api_format":"light","registered_acf_blocks":"0","blocks_per_api_version":[],"blocks_per_acf_block_version":[],"blocks_using_post_meta":"0","preload_blocks":true,"admin_ui_enabled":true,"field_type-modal_enabled":true,"field_settings_tabs_enabled":false,"shortcode_enabled":false,"registered_acf_forms":"0","json_save_paths":1,"json_load_paths":1,"event_first_activated_pro":1736039486,"last_updated":1736190764,"event_first_created_ui_options_page":1736040101,"event_first_created_field_group":1736092454,"event_first_created_post_type":1736190764}', 'off'),
(551, 'acf_version', '6.3.11', 'auto'),
(554, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3NjoiYjNKa1pYSmZhV1E5TVRBeE16VTJmSFI1Y0dVOVpHVjJaV3h2Y0dWeWZHUmhkR1U5TWpBeE55MHdNeTB3TnlBeE1qbzBOVG8xT0E9PSI7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vdmlkYS53ZWFyZXRoZXRlbGxlcnMuY29tIjt9', 'off'),
(747, 'options_footer_main_link_vida', 'a:3:{s:5:"title";s:4:"VIDA";s:3:"url";s:1:"#";s:6:"target";s:6:"_blank";}', 'off'),
(748, '_options_footer_main_link_vida', 'field_677c0d8505d0e', 'off'),
(749, 'options_footer_main_link_vhio', 'a:3:{s:5:"title";s:37:"Vall d\'Hebron Institute of Technology";s:3:"url";s:1:"#";s:6:"target";s:6:"_blank";}', 'off'),
(750, '_options_footer_main_link_vhio', 'field_677c0d9405d0f', 'off'),
(751, 'options_footer_main_link_eu', 'a:3:{s:5:"title";s:31:"Co-funded by the European Union";s:3:"url";s:1:"#";s:6:"target";s:6:"_blank";}', 'off'),
(752, '_options_footer_main_link_eu', 'field_677c0da005d10', 'off'),
(753, 'options_footer_main_text', 'This project has received funding from the European Union\'s Horizon Europe research andinnovation programme under the Marie Skłodowska-Curie grant agreement No 101179122', 'off'),
(754, '_options_footer_main_text', 'field_677c0dac05d11', 'off'),
(755, 'options_footer_main', '', 'off'),
(756, '_options_footer_main', 'field_677c0d6f05d0d', 'off'),
(757, 'options_footer_legal_text', 'VHIO | <a href="/cookies-policy">Legal Text</a>', 'off'),
(758, '_options_footer_legal_text', 'field_677c0dcc05d12', 'off'),
(759, 'options_rrss_twitter_url', 'https://x.com/', 'off'),
(760, '_options_rrss_twitter_url', 'field_677c0f3505d14', 'off'),
(761, 'options_rrss_instagram_url', 'https://www.instagram.com/', 'off'),
(762, '_options_rrss_instagram_url', 'field_677c0f5505d15', 'off'),
(763, 'options_rrss_globe_url', 'https://vhio.net/', 'off'),
(764, '_options_rrss_globe_url', 'field_677c0f6905d16', 'off'),
(765, 'options_404_title', 'Error 404', 'off'),
(766, '_options_404_title', 'field_677c0ff205d18', 'off'),
(767, 'options_404_text', 'The page you requested doesn\'t exist. Please try again with another URL.', 'off'),
(768, '_options_404_text', 'field_677c105d05d19', 'off'),
(769, 'options_404_link', 'a:3:{s:5:"title";s:10:"Go to home";s:3:"url";s:1:"/";s:6:"target";s:0:"";}', 'off'),
(770, '_options_404_link', 'field_677c108d05d1a', 'off'),
(771, 'options_read_more', 'More info', 'off'),
(772, '_options_read_more', 'field_677c10be05d1c', 'off'),
(796, 'scporder_install', '1', 'auto'),
(797, 'scporder_notice', '1', 'auto'),
(798, 'scporder_options', 'a:3:{s:7:"objects";a:1:{i:0;s:18:"associated-partner";}s:4:"tags";s:0:"";s:18:"show_advanced_view";s:0:"";}', 'auto'),
(839, 'acf_pro_license_status', 'a:11:{s:6:"status";s:6:"active";s:7:"created";i:0;s:6:"expiry";i:0;s:4:"name";s:9:"Developer";s:8:"lifetime";b:1;s:8:"refunded";b:0;s:17:"view_licenses_url";s:62:"https://www.advancedcustomfields.com/my-account/view-licenses/";s:23:"manage_subscription_url";s:0:"";s:9:"error_msg";s:0:"";s:10:"next_check";i:1736504631;s:16:"legacy_multisite";b:1;}', 'on'),
(1029, 'siteground_optimizer_default_enable_cache', '0', 'off'),
(1030, 'siteground_optimizer_default_autoflush_cache', '0', 'off'),
(1031, 'siteground_optimizer_supercacher_permissions', '1', 'off'),
(1032, 'sg_cachepress', 'a:8:{s:12:"enable_cache";i:0;s:15:"autoflush_cache";i:0;s:16:"enable_memcached";i:0;s:11:"show_notice";i:0;s:8:"is_nginx";i:0;s:13:"checked_nginx";i:0;s:9:"first_run";i:0;s:9:"last_fail";i:0;}', 'auto'),
(1033, 'siteground_optimizer_enable_cache', '0', 'auto'),
(1034, 'siteground_optimizer_autoflush_cache', '0', 'auto'),
(1035, 'siteground_optimizer_enable_memcached', '0', 'auto'),
(1036, 'siteground_optimizer_show_notice', '0', 'auto'),
(1037, 'siteground_optimizer_is_nginx', '0', 'auto'),
(1038, 'siteground_optimizer_checked_nginx', '0', 'auto'),
(1039, 'siteground_optimizer_first_run', '0', 'auto'),
(1040, 'siteground_optimizer_last_fail', '0', 'auto'),
(1041, 'siteground_optimizer_ssl_enabled', '0', 'auto'),
(1042, 'siteground_optimizer_optimize_html', '0', 'auto'),
(1043, 'siteground_optimizer_optimize_javascript', '0', 'auto'),
(1044, 'siteground_optimizer_optimize_javascript_async', '0', 'auto'),
(1045, 'siteground_optimizer_optimize_css', '0', 'auto'),
(1046, 'siteground_optimizer_combine_css', '0', 'auto'),
(1047, 'siteground_optimizer_remove_query_strings', '0', 'auto') ;
INSERT INTO `vhvd_2412_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1048, 'siteground_optimizer_disable_emojis', '0', 'auto'),
(1050, 'siteground_optimizer_version', '7.7.2', 'auto'),
(1051, 'siteground_optimizer_update_timestamp', '1736442543', 'auto'),
(1052, 'siteground_optimizer_phpcompat_status', '1', 'auto'),
(1053, 'siteground_optimizer_phpcompat_progress', '0', 'auto'),
(1054, 'siteground_optimizer_phpcompat_is_compatible', '0', 'auto'),
(1055, 'siteground_optimizer_phpcompat_result', 'a:0:{}', 'auto'),
(1056, 'siteground_optimizer_image_optimization_completed', '1', 'off'),
(1057, 'siteground_optimizer_enable_gzip_compression', '0', 'auto'),
(1058, 'siteground_optimizer_enable_browser_caching', '0', 'auto'),
(1060, 'siteground_optimizer_async_javascript_exclude', 'a:3:{i:0;s:11:"jquery-core";i:1;s:14:"jquery-migrate";i:2;s:6:"jquery";}', 'auto'),
(1061, 'siteground_optimizer_excluded_lazy_load_classes', 'a:1:{i:0;s:9:"skip-lazy";}', 'auto'),
(1064, 'siteground_optimizer_whats_new', 'a:1:{i:0;a:7:{s:4:"type";s:7:"default";s:5:"title";s:22:"Web Fonts Optimization";s:4:"text";s:271:"With this optimization we are changing the default way to load Google fonts in order to save HTTP requests. In addition to that, all other fonts that your website uses will be properly preloaded so browsers take the least possible amount of time to cache and render them.";s:4:"icon";s:33:"presentational-fonts-optimization";s:10:"icon_color";s:6:"salmon";s:12:"optimization";s:18:"optimize_web_fonts";s:6:"button";a:3:{s:4:"text";s:10:"Enable Now";s:5:"color";s:7:"primary";s:4:"link";s:8:"frontend";}}}', 'auto'),
(1065, 'siteground_optimizer_quality_webp', '85', 'auto'),
(1066, 'siteground_optimizer_quality_type', 'lossy', 'auto'),
(1067, 'siteground_optimizer_heartbeat_post_interval', '120', 'auto'),
(1068, 'siteground_optimizer_heartbeat_dashboard_interval', '0', 'auto'),
(1069, 'siteground_optimizer_heartbeat_frontend_interval', '0', 'auto'),
(1070, 'siteground_optimizer_excluded_lazy_load_media_types', 'a:6:{i:0;s:18:"lazyload_gravatars";i:1;s:19:"lazyload_thumbnails";i:2;s:19:"lazyload_responsive";i:3;s:20:"lazyload_textwidgets";i:4;s:19:"lazyload_shortcodes";i:5;s:20:"lazyload_woocommerce";}', 'auto'),
(1071, 'siteground_optimizer_database_optimization', 'a:0:{}', 'auto'),
(1072, 'sgo_install_7_4_0', '1', 'auto'),
(1073, 'siteground_optimizer_current_version', '7.7.2', 'auto'),
(1074, 'siteground_settings_optimizer', '1', 'auto'),
(1075, 'siteground_settings_optimizer_timestamp', '1736442559', 'auto'),
(1076, 'siteground_data_consent', '0', 'auto'),
(1077, 'siteground_data_consent_timestamp', '1736442559', 'auto') ;

#
# Fin de los contenidos de datos de la tabla `vhvd_2412_options`
# --------------------------------------------------------



#
# Eliminar cualquier tabla existente `vhvd_2412_postmeta`
#

DROP TABLE IF EXISTS `vhvd_2412_postmeta`;


#
# Estructura de la tabla de la tabla `vhvd_2412_postmeta`
#

CREATE TABLE `vhvd_2412_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6631 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Contenido de la tabla `vhvd_2412_postmeta`
#
INSERT INTO `vhvd_2412_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(13, 9, '_edit_lock', '1736437797:3'),
(14, 11, '_edit_lock', '1736436204:3'),
(15, 13, '_edit_lock', '1736424558:3'),
(16, 15, '_edit_lock', '1736437796:3'),
(17, 17, '_menu_item_type', 'post_type'),
(18, 17, '_menu_item_menu_item_parent', '0'),
(19, 17, '_menu_item_object_id', '9'),
(20, 17, '_menu_item_object', 'page'),
(21, 17, '_menu_item_target', ''),
(22, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(23, 17, '_menu_item_xfn', ''),
(24, 17, '_menu_item_url', ''),
(25, 17, '_menu_item_orphaned', '1735433393'),
(26, 18, '_menu_item_type', 'post_type'),
(27, 18, '_menu_item_menu_item_parent', '0'),
(28, 18, '_menu_item_object_id', '13'),
(29, 18, '_menu_item_object', 'page'),
(30, 18, '_menu_item_target', ''),
(31, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(32, 18, '_menu_item_xfn', ''),
(33, 18, '_menu_item_url', ''),
(34, 18, '_menu_item_orphaned', '1735433393'),
(35, 19, '_menu_item_type', 'post_type'),
(36, 19, '_menu_item_menu_item_parent', '0'),
(37, 19, '_menu_item_object_id', '15'),
(38, 19, '_menu_item_object', 'page'),
(39, 19, '_menu_item_target', ''),
(40, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(41, 19, '_menu_item_xfn', ''),
(42, 19, '_menu_item_url', ''),
(43, 19, '_menu_item_orphaned', '1735433393'),
(44, 20, '_menu_item_type', 'post_type'),
(45, 20, '_menu_item_menu_item_parent', '0'),
(46, 20, '_menu_item_object_id', '11'),
(47, 20, '_menu_item_object', 'page'),
(48, 20, '_menu_item_target', ''),
(49, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(50, 20, '_menu_item_xfn', ''),
(51, 20, '_menu_item_url', ''),
(52, 20, '_menu_item_orphaned', '1735433394'),
(53, 21, '_menu_item_type', 'custom'),
(54, 21, '_menu_item_menu_item_parent', '0'),
(55, 21, '_menu_item_object_id', '21'),
(56, 21, '_menu_item_object', 'custom'),
(57, 21, '_menu_item_target', ''),
(58, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(59, 21, '_menu_item_xfn', ''),
(60, 21, '_menu_item_url', '#'),
(61, 21, '_menu_item_orphaned', '1735433425'),
(62, 22, '_edit_lock', '1736421600:3'),
(63, 24, '_menu_item_type', 'post_type'),
(64, 24, '_menu_item_menu_item_parent', '0'),
(65, 24, '_menu_item_object_id', '9'),
(66, 24, '_menu_item_object', 'page'),
(67, 24, '_menu_item_target', ''),
(68, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 24, '_menu_item_xfn', ''),
(70, 24, '_menu_item_url', ''),
(71, 24, '_menu_item_orphaned', '1735433460'),
(72, 25, '_menu_item_type', 'post_type'),
(73, 25, '_menu_item_menu_item_parent', '0'),
(74, 25, '_menu_item_object_id', '22'),
(75, 25, '_menu_item_object', 'page'),
(76, 25, '_menu_item_target', ''),
(77, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(78, 25, '_menu_item_xfn', ''),
(79, 25, '_menu_item_url', ''),
(81, 26, '_menu_item_type', 'post_type'),
(82, 26, '_menu_item_menu_item_parent', '29'),
(83, 26, '_menu_item_object_id', '13'),
(84, 26, '_menu_item_object', 'page'),
(85, 26, '_menu_item_target', ''),
(86, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(87, 26, '_menu_item_xfn', ''),
(88, 26, '_menu_item_url', ''),
(90, 27, '_menu_item_type', 'post_type'),
(91, 27, '_menu_item_menu_item_parent', '29'),
(92, 27, '_menu_item_object_id', '15'),
(93, 27, '_menu_item_object', 'page'),
(94, 27, '_menu_item_target', ''),
(95, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(96, 27, '_menu_item_xfn', ''),
(97, 27, '_menu_item_url', ''),
(99, 28, '_menu_item_type', 'post_type'),
(100, 28, '_menu_item_menu_item_parent', '29'),
(101, 28, '_menu_item_object_id', '11'),
(102, 28, '_menu_item_object', 'page'),
(103, 28, '_menu_item_target', ''),
(104, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(105, 28, '_menu_item_xfn', ''),
(106, 28, '_menu_item_url', ''),
(108, 29, '_menu_item_type', 'custom'),
(109, 29, '_menu_item_menu_item_parent', '0'),
(110, 29, '_menu_item_object_id', '29'),
(111, 29, '_menu_item_object', 'custom'),
(112, 29, '_menu_item_target', ''),
(113, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(114, 29, '_menu_item_xfn', ''),
(115, 29, '_menu_item_url', '#'),
(117, 13, '_wp_page_template', 'associated-partners.php') ;
INSERT INTO `vhvd_2412_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(118, 15, '_wp_page_template', 'recruitment.php'),
(119, 22, '_wp_page_template', 'helpdesk.php'),
(120, 11, '_wp_page_template', 'the-project.php'),
(121, 30, '_edit_lock', '1736455269:2'),
(123, 36, '_edit_last', '1'),
(124, 36, '_edit_lock', '1736039970:1'),
(125, 37, '_edit_last', '1'),
(126, 37, '_edit_lock', '1736108640:1'),
(127, 45, '_wp_attached_file', '2025/01/home-hero-background.jpg'),
(128, 45, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1440;s:6:"height";i:456;s:4:"file";s:32:"2025/01/home-hero-background.jpg";s:8:"filesize";i:300195;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:31:"home-hero-background-300x95.jpg";s:5:"width";i:300;s:6:"height";i:95;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5258;}s:5:"large";a:5:{s:4:"file";s:33:"home-hero-background-1024x324.jpg";s:5:"width";i:1024;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:31219;}s:9:"thumbnail";a:5:{s:4:"file";s:32:"home-hero-background-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4254;}s:12:"medium_large";a:5:{s:4:"file";s:32:"home-hero-background-768x243.jpg";s:5:"width";i:768;s:6:"height";i:243;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:20709;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(132, 9, 'footnotes', ''),
(136, 9, '_edit_last', '3'),
(137, 9, 'hero_background', '45'),
(138, 9, '_hero_background', 'field_677aa597a4302'),
(139, 9, 'hero_background_mobile', ''),
(140, 9, '_hero_background_mobile', 'field_677aa846a4303'),
(141, 9, 'hero_title', 'Open Call for Postdoctoral Programme'),
(142, 9, '_hero_title', 'field_677aa912a4304'),
(143, 9, 'hero_description', 'Deadline of the 1<sup>st</sup> call 13/03/2025\r\n\r\nThe VHIO VIDA programme offers 6 postdoctoral fellowships. Apply now!'),
(144, 9, '_hero_description', 'field_677aa929a4305'),
(145, 9, 'hero_buttons', '1'),
(146, 9, '_hero_buttons', 'field_677aaa90a4306'),
(147, 9, 'hero', ''),
(148, 9, '_hero', 'field_677aa3b9a4301'),
(329, 9, 'hero_buttons_0_button', 'a:3:{s:5:"title";s:10:"Apply here";s:3:"url";s:52:"https://vhio.slideroom.com/#/permalink/program/82099";s:6:"target";s:0:"";}'),
(330, 9, '_hero_buttons_0_button', 'field_677aaadca4307'),
(413, 9, 'about_title', 'VHIO VIDA'),
(414, 9, '_about_title', 'field_677ac323ab1d3'),
(415, 9, 'about_subtitle', 'Translate cancer research into life'),
(416, 9, '_about_subtitle', 'field_677ac38fab1d4'),
(417, 9, 'about_description', '<strong>VIDA</strong> postdoctoral programme represents the perfect environment for the professional development of postdoctoral fellows in the cancer research &amp; Oncology fields, expanding their future opportunities and amplifying VHIO’s workforce of future leaders in the field.\r\n\r\nThe programme involves a wide variety of research topics and host research groups working in <strong>pre-clinica</strong><strong>l,  translational and  clinical research</strong>. The wide variety of research options that cover the whole spectrum of Oncology &amp; cancer research highlights the unique interdisciplinary approach of the VIDA programme.'),
(418, 9, '_about_description', 'field_677ac399ab1d5'),
(419, 9, 'about_button', 'a:3:{s:5:"title";s:9:"Know more";s:3:"url";s:12:"/the-project";s:6:"target";s:0:"";}'),
(420, 9, '_about_button', 'field_677ac3adab1d6'),
(421, 9, 'about', ''),
(422, 9, '_about', 'field_677ac2feab1d2'),
(605, 9, 'partners_title', 'Associated Partners'),
(606, 9, '_partners_title', 'field_677acc20d19c5'),
(607, 9, 'partners_description', 'Lorem ipsum dolor sit amet consectetur. Platea mollis ipsum dolor justo. Urna volutpat nam molestie mattis justo diam amet tortor. Malesuada ullamcorper feugiat arcu ultrices non odio.'),
(608, 9, '_partners_description', 'field_677acc26d19c6'),
(609, 9, 'partners', ''),
(610, 9, '_partners', 'field_677acc02d19c4'),
(643, 86, '_wp_attached_file', '2025/01/home-banner-background-mobile.jpg'),
(644, 86, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:390;s:6:"height";i:724;s:4:"file";s:41:"2025/01/home-banner-background-mobile.jpg";s:8:"filesize";i:169628;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:41:"home-banner-background-mobile-162x300.jpg";s:5:"width";i:162;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6832;}s:9:"thumbnail";a:5:{s:4:"file";s:41:"home-banner-background-mobile-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:3943;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(645, 87, '_wp_attached_file', '2025/01/home-banner-background.jpg'),
(646, 87, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1440;s:6:"height";i:600;s:4:"file";s:34:"2025/01/home-banner-background.jpg";s:8:"filesize";i:490174;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:34:"home-banner-background-300x125.jpg";s:5:"width";i:300;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7347;}s:5:"large";a:5:{s:4:"file";s:35:"home-banner-background-1024x427.jpg";s:5:"width";i:1024;s:6:"height";i:427;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:41218;}s:9:"thumbnail";a:5:{s:4:"file";s:34:"home-banner-background-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4498;}s:12:"medium_large";a:5:{s:4:"file";s:34:"home-banner-background-768x320.jpg";s:5:"width";i:768;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:27167;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(651, 9, 'banner_background', '87'),
(652, 9, '_banner_background', 'field_677ad05ac436b'),
(653, 9, 'banner_background_mobile', '86'),
(654, 9, '_banner_background_mobile', 'field_677ad0e3c436c'),
(655, 9, 'banner_title', 'How to apply'),
(656, 9, '_banner_title', 'field_677ad10bc436d'),
(657, 9, 'banner_description', 'We offer 6 fellowships in the current call. If you would like to apply, please read the recruitment section and the application guidelines. We are looking for you!'),
(658, 9, '_banner_description', 'field_677ad115c436e'),
(659, 9, 'banner_buttons', ''),
(660, 9, '_banner_buttons', 'field_677ad135c436f'),
(661, 9, 'banner', ''),
(662, 9, '_banner', 'field_677ad04cc436a'),
(711, 9, 'banner_button', 'a:3:{s:5:"title";s:5:"Apply";s:3:"url";s:12:"/recruitment";s:6:"target";s:0:"";}'),
(712, 9, '_banner_button', 'field_677ad8db05117'),
(865, 9, 'variable_section_title', 'Variable Section'),
(866, 9, '_variable_section_title', 'field_677ade7c3dba0'),
(867, 9, 'variable_section_description', 'Lorem ipsum dolor sit amet consectetur. Tellus pharetra molestie in nulla tincidunt cursus tellus. Tellus fringilla duis lobortis sit feugiat risus pellentesque consectetur.\r\n\r\nOrci et urna tincidunt curabitur ullamcorper viverra interdum cursus. Congue blandit ultricies consequat nunc suspendisse id imperdiet.\r\n\r\nSuscipit blandit arcu at quam nam. Praesent a ac gravida eget sed egestas eget. Ultrices dolor vel leo malesuada donec amet turpis erat.'),
(868, 9, '_variable_section_description', 'field_677ade833dba1'),
(869, 9, 'variable_section_button', 'a:3:{s:5:"title";s:9:"Button 01";s:3:"url";s:1:"#";s:6:"target";s:0:"";}'),
(870, 9, '_variable_section_button', 'field_677ade973dba2'),
(871, 9, 'variable_section_image', '102'),
(872, 9, '_variable_section_image', 'field_677adeab3dba3'),
(873, 9, 'variable_section', ''),
(874, 9, '_variable_section', 'field_677ade693db9f'),
(1051, 102, '_wp_attached_file', '2025/01/home-variable-section.jpg'),
(1052, 102, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:413;s:6:"height";i:366;s:4:"file";s:33:"2025/01/home-variable-section.jpg";s:8:"filesize";i:105047;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:33:"home-variable-section-300x266.jpg";s:5:"width";i:300;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12893;}s:9:"thumbnail";a:5:{s:4:"file";s:33:"home-variable-section-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5609;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1117, 9, 'contact_title', 'Contact Us'),
(1118, 9, '_contact_title', 'field_677ae4cb512fb'),
(1119, 9, 'contact_button', 'a:3:{s:5:"title";s:7:"Contact";s:3:"url";s:9:"/helpdesk";s:6:"target";s:0:"";}'),
(1120, 9, '_contact_button', 'field_677ae4d7512fc'),
(1121, 9, 'contact_description', 'VHIO VIDA Management Team has created a devoted Helpdesk&amp; Technical Support Service that will be active throughout the duration of the programme and will be accessible to interested applicants.\r\n\r\nThe Helpdesk Service will be useful during the Application and Selections Processes. Candidates are encouraged to contact the Helpdesk service via email to resolve any questions or issues regarding the selection processes.'),
(1122, 9, '_contact_description', 'field_677ae4e3512fd'),
(1123, 9, 'contact', ''),
(1124, 9, '_contact', 'field_677ae4bf512fa'),
(1463, 114, '_edit_last', '1'),
(1464, 114, '_edit_lock', '1736162889:1'),
(1466, 11, 'footnotes', ''),
(1470, 11, '_edit_last', '3'),
(1475, 11, 'sections', '2'),
(1476, 11, '_sections', 'field_677b09bcd1ef5'),
(1555, 11, 'sections_0_title', 'We want to train and inspire the next generation of leading cancer researchers and medical doctors in Oncology'),
(1556, 11, '_sections_0_title', 'field_677b09edd1ef6'),
(1557, 11, 'sections_0_blocks', '2'),
(1558, 11, '_sections_0_blocks', 'field_677b0a0cd1ef7'),
(1559, 11, 'sections_1_title', 'VHIO (Vall d\'Hebron Institute of Oncology)'),
(1560, 11, '_sections_1_title', 'field_677b09edd1ef6'),
(1561, 11, 'sections_1_blocks', '2'),
(1562, 11, '_sections_1_blocks', 'field_677b0a0cd1ef7'),
(1731, 11, 'sections_0_blocks_0_block', 'a:4:{i:0;s:11:"block_title";i:1;s:13:"block_content";i:2;s:13:"block_content";i:3;s:12:"block_button";}'),
(1732, 11, '_sections_0_blocks_0_block', 'field_677bb327063ab'),
(1785, 11, 'sections_0_blocks_0_block_0_title', 'The project'),
(1786, 11, '_sections_0_blocks_0_block_0_title', 'field_677bb349063ac'),
(1805, 11, 'sections_0_blocks_0_block_1_content', 'One of VHIO’s main missions is to <strong>train and inspire the next generation of leading cancer researchers and medical doctors in Oncology</strong> to drive impactful health research and innovation practices that will tackle tomorrow’s societal challenges. Through the <strong>VHIO Academy </strong>established in 2021, the institute aims to attract talented international scientists and support them through state-of-the-art training and career development opportunities. \r\n\r\nTo boost VHIO leadership in cancer research we are launching <strong>VIDA (“VHIO International postDoctoral programme for translAtional Research”)</strong>, a <strong>new postdoctoral programme</strong> led by VHIO and designed to foster excellence research through the implementation of inclusive recruitment practices and an impactful training portfolio. \r\n\r\n<strong>VIDA </strong>will recruit <strong>12 postdoctoral researchers</strong> to conduct interdisciplinary and intersectoral research activities in the broad topic of <strong>Cancer Research</strong>, which will comply with all the principles of Open Science and maintain the highest research quality standards. The <strong>VIDA</strong> COFUND programme includes the <strong>participation of 16 different academic &amp; non-academic partner organisations</strong>.'),
(1806, 11, '_sections_0_blocks_0_block_1_content', 'field_677bb363063af') ;
INSERT INTO `vhvd_2412_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1853, 11, 'sections_0_blocks_1_block_0_title', 'Postdoctoral programme'),
(1854, 11, '_sections_0_blocks_1_block_0_title', 'field_677bb349063ac'),
(1855, 11, 'sections_0_blocks_1_block_1_content', '<strong>VIDA</strong> postdoctoral programme represents the perfect environment for the professional development of postdoctoral fellows in the cancer research &amp; Oncology fields, expanding their future opportunities and amplifying VHIO’s workforce of future leaders in the field. \r\n\r\nThe programme involves a wide variety of research topics and host research groups working in <strong>pre-clinical</strong><strong>,  translational and  clinical research</strong>. The <strong>wide variety of research options </strong>that cover the <strong>whole spectrum of Oncology &amp; cancer research</strong> highlights<strong> the unique interdisciplinary approach</strong> of the <strong>VIDA</strong> programme. \r\n\r\nVIDA will complement the frontier research projects with advanced training opportunities through an excellent programme that incorporates innovative training. Fellows will be encouraged to participate and contribute to communication &amp; outreach activities.'),
(1856, 11, '_sections_0_blocks_1_block_1_content', 'field_677bb363063af'),
(1857, 11, 'sections_0_blocks_1_block', 'a:2:{i:0;s:11:"block_title";i:1;s:13:"block_content";}'),
(1858, 11, '_sections_0_blocks_1_block', 'field_677bb327063ab'),
(1885, 156, '_wp_attached_file', '2025/01/the-project-research.jpg'),
(1886, 156, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:728;s:6:"height";i:366;s:4:"file";s:32:"2025/01/the-project-research.jpg";s:8:"filesize";i:159469;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:32:"the-project-research-300x151.jpg";s:5:"width";i:300;s:6:"height";i:151;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8476;}s:9:"thumbnail";a:5:{s:4:"file";s:32:"the-project-research-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5357;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1957, 161, '_wp_attached_file', '2025/01/the-project-cellex.jpg'),
(1958, 161, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:728;s:6:"height";i:366;s:4:"file";s:30:"2025/01/the-project-cellex.jpg";s:8:"filesize";i:290119;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:30:"the-project-cellex-300x151.jpg";s:5:"width";i:300;s:6:"height";i:151;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12382;}s:9:"thumbnail";a:5:{s:4:"file";s:30:"the-project-cellex-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6761;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1963, 11, 'sections_1_blocks_0_block_0_content', 'Established in 2007 and located in Barcelona\'s Vall d\'Hebron Hospital Campus, the <strong>Vall d\'Hebron Institute of Oncology (VHIO)</strong> is a reference cancer center for personalized medicine in Oncology with a comprehensive view and international reputation, which embraces a translational, multidisciplinary and collaborative research model. \r\n\r\nBeing awarded in 2022 as a <strong>Severo Ochoa Center of Excellence</strong> (2022-2026), the highest national recognition award from the Spanish Ministry of Science &amp; Innovation for research centres, is a clear indication of the cutting-edge research at world standards performed at the institute through international scientific excellence and leadership. \r\n\r\nWith over 800 professionals, including preclinical &amp; clinical researchers, oncologists, nursing staff and research support staff, 9 transversal clinical trials core services &amp; units, VHIO brings together <strong>28 research groups</strong> distributed in the <strong>3 major areas </strong><strong>of preclinical, translational &amp; clinical research</strong> to develop and advance new diagnostic tools and more effective therapeutics against cancer.'),
(1964, 11, '_sections_1_blocks_0_block_0_content', 'field_677bb363063af'),
(1965, 11, 'sections_1_blocks_0_block', 'a:1:{i:0;s:13:"block_content";}'),
(1966, 11, '_sections_1_blocks_0_block', 'field_677bb327063ab'),
(1967, 11, 'sections_1_blocks_1_block_0_content', '<img class="alignnone size-full wp-image-161" src="https://vida.local/wp-content/uploads/2025/01/the-project-cellex.jpg" alt="" width="728" height="366" />'),
(1968, 11, '_sections_1_blocks_1_block_0_content', 'field_677bb363063af'),
(1969, 11, 'sections_1_blocks_1_block', 'a:1:{i:0;s:13:"block_content";}'),
(1970, 11, '_sections_1_blocks_1_block', 'field_677bb327063ab'),
(2007, 163, '_edit_last', '1'),
(2008, 163, '_edit_lock', '1736163387:1'),
(2010, 13, 'footnotes', ''),
(2014, 13, '_edit_last', '1'),
(2015, 13, 'title', 'Associated Partners'),
(2016, 13, '_title', 'field_677bbedc5a375'),
(2017, 13, 'description', 'Lorem ipsum dolor sit amet consectetur. Platea mollis ipsum dolor justo. Urna volutpat nam molestie mattis justo diam amet tortor. Malesuada ullamcorper feugiat arcu ultrices non odio.'),
(2018, 13, '_description', 'field_677bbefc5a376'),
(2027, 13, 'main_title', 'Associated Partners'),
(2028, 13, '_main_title', 'field_677bbedc5a375'),
(2029, 13, 'main_description', 'Lorem ipsum dolor sit amet consectetur. Platea mollis ipsum dolor justo. Urna volutpat nam molestie mattis justo diam amet tortor. Malesuada ullamcorper feugiat arcu ultrices non odio.'),
(2030, 13, '_main_description', 'field_677bbefc5a376'),
(2031, 13, 'main', ''),
(2032, 13, '_main', 'field_677bbf92dd428'),
(2057, 170, '_edit_last', '1'),
(2058, 170, '_edit_lock', '1736180302:1'),
(2059, 195, '_wp_attached_file', '2025/01/recruitment-hero-background.png'),
(2060, 195, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1440;s:6:"height";i:342;s:4:"file";s:39:"2025/01/recruitment-hero-background.png";s:8:"filesize";i:82022;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:38:"recruitment-hero-background-300x71.png";s:5:"width";i:300;s:6:"height";i:71;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:3051;}s:5:"large";a:5:{s:4:"file";s:40:"recruitment-hero-background-1024x243.png";s:5:"width";i:1024;s:6:"height";i:243;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:68275;}s:9:"thumbnail";a:5:{s:4:"file";s:39:"recruitment-hero-background-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:10260;}s:12:"medium_large";a:5:{s:4:"file";s:39:"recruitment-hero-background-768x182.png";s:5:"width";i:768;s:6:"height";i:182;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:45736;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2062, 15, 'footnotes', ''),
(2066, 15, '_edit_last', '3'),
(2067, 15, 'hero_background', '45'),
(2068, 15, '_hero_background', 'field_677bc20cc7c6d'),
(2069, 15, 'hero_background_mobile', ''),
(2070, 15, '_hero_background_mobile', 'field_677bc21ec7c6e'),
(2071, 15, 'hero_title', 'How to apply'),
(2072, 15, '_hero_title', 'field_677bc234c7c70'),
(2073, 15, 'hero_description', '<span style="color: #ffffff;">Want to be part of the VIDA Postdoctoral Programme at VHIO? Apply now!</span>'),
(2074, 15, '_hero_description', 'field_677bc23dc7c71'),
(2075, 15, 'hero', ''),
(2076, 15, '_hero', 'field_677bc1a9c7c6c'),
(2077, 15, 'criteria_image', '199'),
(2078, 15, '_criteria_image', 'field_677bc274c7c73'),
(2079, 15, 'criteria_title', 'Elegibility criteria'),
(2080, 15, '_criteria_title', 'field_677bc293c7c74'),
(2081, 15, 'criteria_description', 'Candidates shall fulfil the following requirements at the time of the call deadline:\r\n\r\n<strong>Mobility rule</strong>: “Researchers may not have resided or carried out their main activity (work, studies, etc.) in Spain for more than 12 months in the three years immediately before the date of recruitment”.\r\n\r\n<strong>Postdoctoral Researcher definition:</strong> “Researchers must be in possession of a doctoral degree at the deadline of the co-funded programme\'s call. Researchers who have successfully defended their doctoral thesis but who have not yet formally been awarded the doctoral degree will also be considered as postdoctoral researchers and will be considered eligible to apply”.\r\n\r\n&nbsp;\r\n\r\nApplications submitted online must include all the personal information and details requested in the application website to be eligible.\r\n\r\n<strong>VHIO is committed to equitable, open and transparent recruitment practices that ensure equal opportunity for all candidates, fostering a diverse and inclusive workplace environment. VIDA will ensure balanced participation of all genders and abilities during all stages of the postdoctoral programme.</strong>'),
(2082, 15, '_criteria_description', 'field_677bc298c7c75'),
(2083, 15, 'criteria', ''),
(2084, 15, '_criteria', 'field_677bc262c7c72'),
(2085, 15, 'laboratories_title', 'Laboratories'),
(2086, 15, '_laboratories_title', 'field_677bc3ddc7c7a'),
(2087, 15, 'laboratories_data', '11'),
(2088, 15, '_laboratories_data', 'field_677bc2bdc7c77'),
(2089, 15, 'laboratories', ''),
(2090, 15, '_laboratories', 'field_677bc2b0c7c76'),
(2091, 15, 'application_image', '220'),
(2092, 15, '_application_image', 'field_677bc448c0878'),
(2093, 15, 'application_title', 'Application'),
(2094, 15, '_application_title', 'field_677bc459c0879'),
(2095, 15, 'application_description', '<strong>All the applications need to be sent by the VIDA online recruitment portal: </strong><a href="https://vhio.slideroom.com/#/permalink/program/82099">https://vhio.slideroom.com/#/permalink/program/82099</a>\r\n\r\n<strong>Download and read thoroughly our Guide for Applicants</strong> to get all the relevant information for applying, including the documentation that you will need to provide in your application. As an overview:\r\n<ul>\r\n 	<li>Provide information about your <strong>background </strong>and <strong>research experience</strong> and <strong>the specific research lab(s) that you selected</strong>.</li>\r\n 	<li>Start your application by requesting<strong> recommendation letters from two referees</strong> in the online application portal.</li>\r\n 	<li>Applicants have to complete the online application form in English. <strong>Incomplete applications will not be eligible.</strong></li>\r\n</ul>'),
(2096, 15, '_application_description', 'field_677bc462c087a'),
(2097, 15, 'application_button', 'a:3:{s:5:"title";s:20:"Guide for applicants";s:3:"url";s:74:"https://vida.local/wp-content/uploads/2025/01/vhioVida_guideApplicants.pdf";s:6:"target";s:6:"_blank";}'),
(2098, 15, '_application_button', 'field_677bc470c087b'),
(2099, 15, 'application', ''),
(2100, 15, '_application', 'field_677bc424c0877'),
(2101, 15, 'faqs_title', 'Any questions?'),
(2102, 15, '_faqs_title', 'field_677bc4d5c087d'),
(2103, 15, 'faqs_description', 'We know that the application process and all the requirements can rise some doubts, for that we’ve collected the most Frequently Asked Questions (FAQs) and we will be constantly updating it during this current call.\r\n\r\nIf after reading the Guide for Applicants and our FAQs, you have doubts about the application process and your eligibility, please write us at academy@vhio.net.'),
(2104, 15, '_faqs_description', 'field_677bc4ecc087e'),
(2105, 15, 'faqs_button', 'a:3:{s:5:"title";s:27:"Frequently Asked Questions ";s:3:"url";s:1:"#";s:6:"target";s:0:"";}'),
(2106, 15, '_faqs_button', 'field_677bc517c087f'),
(2107, 15, 'faqs_image', '231'),
(2108, 15, '_faqs_image', 'field_677bc537c0880'),
(2109, 15, 'faqs', ''),
(2110, 15, '_faqs', 'field_677bc496c087c'),
(2251, 199, '_wp_attached_file', '2025/01/recruitment-elegibility-criteria.jpg'),
(2252, 199, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:413;s:6:"height";i:366;s:4:"file";s:44:"2025/01/recruitment-elegibility-criteria.jpg";s:8:"filesize";i:130556;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:44:"recruitment-elegibility-criteria-300x266.jpg";s:5:"width";i:300;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12680;}s:9:"thumbnail";a:5:{s:4:"file";s:44:"recruitment-elegibility-criteria-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5779;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2607, 15, 'laboratories_data_0_term', 'Upper GI cancer Translational Research Group'),
(2608, 15, '_laboratories_data_0_term', 'field_677bc35fc7c78'),
(2609, 15, 'laboratories_data_0_description', 'Group lead by Teresa Macarulla & Tian Tian.\r\n\r\n<a href="https://vhio.net/pf/upper-gastrointestinal-cancer-translational-research-group/" target="_blank" class="button">More info</a>'),
(2610, 15, '_laboratories_data_0_description', 'field_677bc366c7c79'),
(2823, 15, 'laboratories_data_1_term', 'Computational Immunogenomics Group'),
(2824, 15, '_laboratories_data_1_term', 'field_677bc35fc7c78'),
(2825, 15, 'laboratories_data_1_description', 'Group lead Fran Martínez.\r\n\r\n<a href="https://vhio.net/pf/computational-immunogenomics-group/" target="_blank" class="button">More info</a>'),
(2826, 15, '_laboratories_data_1_description', 'field_677bc366c7c79'),
(2941, 15, 'laboratories_data_2_term', 'Gene Expression and Cancer Group'),
(2942, 15, '_laboratories_data_2_term', 'field_677bc35fc7c78'),
(2943, 15, 'laboratories_data_2_description', 'Group lead Joan Seoane.\r\n\r\n<a href="https://vhio.net/pf/gene-expression-and-cancer-group/" target="_blank" class="button">More info</a>'),
(2944, 15, '_laboratories_data_2_description', 'field_677bc366c7c79'),
(2945, 15, 'laboratories_data_3_term', 'Tumor Immunology and Immunotherapy Group'),
(2946, 15, '_laboratories_data_3_term', 'field_677bc35fc7c78'),
(2947, 15, 'laboratories_data_3_description', 'Group lead Alena Gros.\r\n\r\n<a href="https://vhio.net/pf/tumor-immunology-immunotherapy-group/" target="_blank" class="button">More info</a>'),
(2948, 15, '_laboratories_data_3_description', 'field_677bc366c7c79') ;
INSERT INTO `vhvd_2412_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2949, 15, 'laboratories_data_4_term', 'Cancer Genomics Group'),
(2950, 15, '_laboratories_data_4_term', 'field_677bc35fc7c78'),
(2951, 15, 'laboratories_data_4_description', 'Group lead Ana Vivancos.\r\n\r\n<a href="https://vhio.net/pf/cancer-genomics-group/" target="_blank" class="button">More info</a>'),
(2952, 15, '_laboratories_data_4_description', 'field_677bc366c7c79'),
(2953, 15, 'laboratories_data_5_term', 'Cancer Genome Engineering Group'),
(2954, 15, '_laboratories_data_5_term', 'field_677bc35fc7c78'),
(2955, 15, 'laboratories_data_5_description', 'Group lead Francisco Barriga.\r\n\r\n<a href="https://vhio.net/pf/cancer-genome-engineering-group/" target="_blank" class="button">More info</a>'),
(2956, 15, '_laboratories_data_5_description', 'field_677bc366c7c79'),
(2957, 15, 'laboratories_data_6_term', 'Prostate Cancer Research Group'),
(2958, 15, '_laboratories_data_6_term', 'field_677bc35fc7c78'),
(2959, 15, 'laboratories_data_6_description', 'Group lead Joaquin Mateo.\r\n\r\n<a href="https://vhio.net/pf/prostate-cancer-research-group/" target="_blank" class="button">More info</a>'),
(2960, 15, '_laboratories_data_6_description', 'field_677bc366c7c79'),
(2961, 15, 'laboratories_data_7_term', 'Cancer Cell Cycle group'),
(2962, 15, '_laboratories_data_7_term', 'field_677bc35fc7c78'),
(2963, 15, 'laboratories_data_7_description', 'Group lead Marcos Malumbres.\r\n\r\n<a href="https://vhio.net/pf/cancer-cell-cycle-group/" target="_blank" class="button">More info</a>'),
(2964, 15, '_laboratories_data_7_description', 'field_677bc366c7c79'),
(2965, 15, 'laboratories_data_8_term', 'Radiomics Group'),
(2966, 15, '_laboratories_data_8_term', 'field_677bc35fc7c78'),
(2967, 15, 'laboratories_data_8_description', 'Group lead Raquel Pérez López.\r\n\r\n<a href="https://vhio.net/pf/radiomics-group/" target="_blank" class="button">More info</a>'),
(2968, 15, '_laboratories_data_8_description', 'field_677bc366c7c79'),
(3135, 220, '_wp_attached_file', '2025/01/recruitment-application.jpg'),
(3136, 220, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:413;s:6:"height";i:366;s:4:"file";s:35:"2025/01/recruitment-application.jpg";s:8:"filesize";i:142580;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:35:"recruitment-application-300x266.jpg";s:5:"width";i:300;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:14166;}s:9:"thumbnail";a:5:{s:4:"file";s:35:"recruitment-application-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5901;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(3731, 231, '_wp_attached_file', '2025/01/recruitment-faqs.jpg'),
(3732, 231, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:413;s:6:"height";i:366;s:4:"file";s:28:"2025/01/recruitment-faqs.jpg";s:8:"filesize";i:112701;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:28:"recruitment-faqs-300x266.jpg";s:5:"width";i:300;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12853;}s:9:"thumbnail";a:5:{s:4:"file";s:28:"recruitment-faqs-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5403;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(3817, 233, '_edit_last', '1'),
(3818, 233, '_edit_lock', '1736181998:1'),
(3819, 22, '_edit_last', '3'),
(3820, 22, 'hero_background', '244'),
(3821, 22, '_hero_background', 'field_677c030f52153'),
(3822, 22, 'hero_background_image', ''),
(3823, 22, '_hero_background_image', 'field_677c032052154'),
(3824, 22, 'hero_title', 'Helpdesk Service'),
(3825, 22, '_hero_title', 'field_677c03a152155'),
(3826, 22, 'hero', ''),
(3827, 22, '_hero', 'field_677c02f952152'),
(3828, 22, 'contact_title', 'Contact Us'),
(3829, 22, '_contact_title', 'field_677c03b952157'),
(3830, 22, 'contact_info', '<strong>Phone:</strong> 34 932 543 450 (Ext: 8816)\r\n\r\n<strong>Imma Falero</strong>\r\nDirector at VHIO Academy\r\n\r\n<strong>Maria Yubero</strong>\r\nTraining Coordinator at VHIO Academy\r\n\r\n<strong>Alba Echarte</strong>\r\nAcademic Officer at VHIO Academy\r\n\r\nVall Hebron Institute of Oncology (VHIO)\r\nPlaça Adolf Marsillach,\r\n608035 Barcelona (Spain)'),
(3831, 22, '_contact_info', 'field_677c03c052158'),
(3832, 22, 'contact_button', 'a:3:{s:5:"title";s:10:"Contact us";s:3:"url";s:23:"mailto:academy@vhio.net";s:6:"target";s:0:"";}'),
(3833, 22, '_contact_button', 'field_677c03d452159'),
(3834, 22, 'contact_description', 'VHIO VIDA Management Team has created a devoted Helpdesk&amp; Technical Support Service that will be active throughout the duration of the programme and will be accessible to interested applicants. The Helpdesk Service will be useful during the Application and Selections Processes. Candidates are encouraged to contact the Helpdesk service via email to resolve any questions or issues regarding the selection processes.'),
(3835, 22, '_contact_description', 'field_677c03e65215a'),
(3836, 22, 'contact', ''),
(3837, 22, '_contact', 'field_677c03ae52156'),
(3856, 244, '_wp_attached_file', '2025/01/helpdesk-hero-background.jpg'),
(3857, 244, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1440;s:6:"height";i:457;s:4:"file";s:36:"2025/01/helpdesk-hero-background.jpg";s:8:"filesize";i:474278;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:35:"helpdesk-hero-background-300x95.jpg";s:5:"width";i:300;s:6:"height";i:95;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6668;}s:5:"large";a:5:{s:4:"file";s:37:"helpdesk-hero-background-1024x325.jpg";s:5:"width";i:1024;s:6:"height";i:325;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:36767;}s:9:"thumbnail";a:5:{s:4:"file";s:36:"helpdesk-hero-background-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4113;}s:12:"medium_large";a:5:{s:4:"file";s:36:"helpdesk-hero-background-768x244.jpg";s:5:"width";i:768;s:6:"height";i:244;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:24414;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(3859, 22, 'footnotes', ''),
(3885, 22, 'hero_background_mobile', ''),
(3886, 22, '_hero_background_mobile', 'field_677c032052154'),
(4003, 251, '_edit_last', '1'),
(4004, 251, '_edit_lock', '1736189943:1'),
(4005, 269, '_edit_last', '1'),
(4006, 269, '_edit_lock', '1736193038:1'),
(4007, 271, '_edit_last', '1'),
(4008, 271, '_edit_lock', '1736190996:1'),
(4009, 275, '_edit_last', '2'),
(4010, 275, '_edit_lock', '1736424473:2'),
(4011, 276, '_wp_attached_file', '2025/01/associated-partners-logo.png'),
(4012, 276, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:201;s:6:"height";i:142;s:4:"file";s:36:"2025/01/associated-partners-logo.png";s:8:"filesize";i:11560;s:5:"sizes";a:1:{s:9:"thumbnail";a:5:{s:4:"file";s:36:"associated-partners-logo-150x142.png";s:5:"width";i:150;s:6:"height";i:142;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:12285;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(4013, 275, '_thumbnail_id', '284'),
(4014, 275, 'main_description', 'Fundacio d\'Estudis de Recerca Oncologica.\r\nSpain.'),
(4015, 275, '_main_description', 'field_677c2c0666a32'),
(4016, 275, 'main_button_url', 'https://fero.org/en/'),
(4017, 275, '_main_button_url', 'field_677c2c2c66a33'),
(4018, 275, 'main', ''),
(4019, 275, '_main', 'field_677c2bed66a31'),
(4020, 277, '_edit_last', '2'),
(4021, 277, '_edit_lock', '1736388374:2'),
(4022, 277, '_thumbnail_id', '288'),
(4023, 277, 'main_description', 'Fundació Institut de Bioenginyeria de Catalunya.\r\nSpain.'),
(4024, 277, '_main_description', 'field_677c2c0666a32'),
(4025, 277, 'main_button_url', 'https://ibecbarcelona.eu/'),
(4026, 277, '_main_button_url', 'field_677c2c2c66a33'),
(4027, 277, 'main', ''),
(4028, 277, '_main', 'field_677c2bed66a31'),
(4029, 278, '_edit_last', '2'),
(4030, 278, '_edit_lock', '1736388190:2'),
(4031, 278, '_thumbnail_id', '286'),
(4032, 278, 'main_description', 'Fundacio Centre de Regulacio Genomica.\r\nSpain.'),
(4033, 278, '_main_description', 'field_677c2c0666a32'),
(4034, 278, 'main_button_url', 'https://www.crg.eu/es'),
(4035, 278, '_main_button_url', 'field_677c2c2c66a33'),
(4036, 278, 'main', ''),
(4037, 278, '_main', 'field_677c2bed66a31'),
(4038, 279, '_edit_last', '2'),
(4039, 279, '_edit_lock', '1736424469:3'),
(4040, 279, '_thumbnail_id', '290'),
(4041, 279, 'main_description', 'Fundació Institut de Recerca Biomèdica (IRB Barcelona).\r\nSpain.'),
(4042, 279, '_main_description', 'field_677c2c0666a32'),
(4043, 279, 'main_button_url', 'https://www.irbbarcelona.org/en'),
(4044, 279, '_main_button_url', 'field_677c2c2c66a33'),
(4045, 279, 'main', ''),
(4046, 279, '_main', 'field_677c2bed66a31'),
(4089, 284, '_wp_attached_file', '2025/01/Captura-de-pantalla-2025-01-09-a-las-3.01.46.png'),
(4090, 284, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1850;s:6:"height";i:774;s:4:"file";s:56:"2025/01/Captura-de-pantalla-2025-01-09-a-las-3.01.46.png";s:8:"filesize";i:653091;s:5:"sizes";a:5:{s:6:"medium";a:5:{s:4:"file";s:56:"Captura-de-pantalla-2025-01-09-a-las-3.01.46-300x126.png";s:5:"width";i:300;s:6:"height";i:126;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:25128;}s:5:"large";a:5:{s:4:"file";s:57:"Captura-de-pantalla-2025-01-09-a-las-3.01.46-1024x428.png";s:5:"width";i:1024;s:6:"height";i:428;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:172865;}s:9:"thumbnail";a:5:{s:4:"file";s:56:"Captura-de-pantalla-2025-01-09-a-las-3.01.46-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:12614;}s:12:"medium_large";a:5:{s:4:"file";s:56:"Captura-de-pantalla-2025-01-09-a-las-3.01.46-768x321.png";s:5:"width";i:768;s:6:"height";i:321;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:111728;}s:9:"1536x1536";a:5:{s:4:"file";s:57:"Captura-de-pantalla-2025-01-09-a-las-3.01.46-1536x643.png";s:5:"width";i:1536;s:6:"height";i:643;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:316010;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(4091, 286, '_wp_attached_file', '2025/01/logo-crg.png'),
(4092, 286, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1785;s:6:"height";i:904;s:4:"file";s:20:"2025/01/logo-crg.png";s:8:"filesize";i:90197;s:5:"sizes";a:5:{s:6:"medium";a:5:{s:4:"file";s:20:"logo-crg-300x152.png";s:5:"width";i:300;s:6:"height";i:152;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:14546;}s:5:"large";a:5:{s:4:"file";s:21:"logo-crg-1024x519.png";s:5:"width";i:1024;s:6:"height";i:519;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:57272;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"logo-crg-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:8363;}s:12:"medium_large";a:5:{s:4:"file";s:20:"logo-crg-768x389.png";s:5:"width";i:768;s:6:"height";i:389;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:40732;}s:9:"1536x1536";a:5:{s:4:"file";s:21:"logo-crg-1536x778.png";s:5:"width";i:1536;s:6:"height";i:778;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:94211;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(4093, 288, '_wp_attached_file', '2025/01/login.png'),
(4094, 288, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:886;s:6:"height";i:354;s:4:"file";s:17:"2025/01/login.png";s:8:"filesize";i:61192;s:5:"sizes";a:3:{s:6:"medium";a:5:{s:4:"file";s:17:"login-300x120.png";s:5:"width";i:300;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:14313;}s:9:"thumbnail";a:5:{s:4:"file";s:17:"login-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:11810;}s:12:"medium_large";a:5:{s:4:"file";s:17:"login-768x307.png";s:5:"width";i:768;s:6:"height";i:307;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:59034;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}') ;
INSERT INTO `vhvd_2412_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(4095, 290, '_wp_attached_file', '2025/01/Captura-de-pantalla-2025-01-09-a-las-3.12.20.png'),
(4096, 290, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2380;s:6:"height";i:880;s:4:"file";s:56:"2025/01/Captura-de-pantalla-2025-01-09-a-las-3.12.20.png";s:8:"filesize";i:118152;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:56:"Captura-de-pantalla-2025-01-09-a-las-3.12.20-300x111.png";s:5:"width";i:300;s:6:"height";i:111;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:10193;}s:5:"large";a:5:{s:4:"file";s:57:"Captura-de-pantalla-2025-01-09-a-las-3.12.20-1024x379.png";s:5:"width";i:1024;s:6:"height";i:379;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:37877;}s:9:"thumbnail";a:5:{s:4:"file";s:56:"Captura-de-pantalla-2025-01-09-a-las-3.12.20-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:5164;}s:12:"medium_large";a:5:{s:4:"file";s:56:"Captura-de-pantalla-2025-01-09-a-las-3.12.20-768x284.png";s:5:"width";i:768;s:6:"height";i:284;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:27152;}s:9:"1536x1536";a:5:{s:4:"file";s:57:"Captura-de-pantalla-2025-01-09-a-las-3.12.20-1536x568.png";s:5:"width";i:1536;s:6:"height";i:568;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:61971;}s:9:"2048x2048";a:5:{s:4:"file";s:57:"Captura-de-pantalla-2025-01-09-a-las-3.12.20-2048x757.png";s:5:"width";i:2048;s:6:"height";i:757;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:88253;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(4529, 15, 'laboratories_data_9_term', 'Hereditary Cancer Genetics Group'),
(4530, 15, '_laboratories_data_9_term', 'field_677bc35fc7c78'),
(4531, 15, 'laboratories_data_9_description', 'Group lead Judith Balmaña & Sara Gutierrez.\r\n\r\n<a href="https://vhio.net/pf/hereditary-cancer-genetics-group/" target="_blank" class="button">More info</a>'),
(4532, 15, '_laboratories_data_9_description', 'field_677bc366c7c79'),
(4533, 15, 'laboratories_data_10_term', 'Radiation Oncology Group'),
(4534, 15, '_laboratories_data_10_term', 'field_677bc35fc7c78'),
(4535, 15, 'laboratories_data_10_description', 'Group lead Xavier Maldonado.\r\n\r\n<a href="https://vhio.net/pf/radiation-oncology-group/" target="_blank" class="button">More info</a>'),
(4536, 15, '_laboratories_data_10_description', 'field_677bc366c7c79'),
(5801, 11, 'sections_0_blocks_0_block_2_content', '<img class="alignnone size-full wp-image-156" src="https://vida.local/wp-content/uploads/2025/01/the-project-research.jpg" alt="" width="728" height="366" />\r\n\r\nThe programme will consolidate the research career opportunities of the beneficiaries while strengthening the training portfolio of VHIO Academy and expanding VHIO’s network of partner organisations to foster interdisciplinary and intersectoral cancer &amp; Oncology research.'),
(5802, 11, '_sections_0_blocks_0_block_2_content', 'field_677bb363063af'),
(5803, 11, 'sections_0_blocks_0_block_3_button', 'a:3:{s:5:"title";s:9:"Subscribe";s:3:"url";s:52:"https://vhio.slideroom.com/#/permalink/program/82099";s:6:"target";s:6:"_blank";}'),
(5804, 11, '_sections_0_blocks_0_block_3_button', 'field_677bb37c063b2'),
(5905, 332, '_wp_attached_file', '2025/01/vhioVida_guideApplicants.pdf'),
(5906, 332, '_wp_attachment_metadata', 'a:1:{s:8:"filesize";i:254525;}') ;

#
# Fin de los contenidos de datos de la tabla `vhvd_2412_postmeta`
# --------------------------------------------------------



#
# Eliminar cualquier tabla existente `vhvd_2412_posts`
#

DROP TABLE IF EXISTS `vhvd_2412_posts`;


#
# Estructura de la tabla de la tabla `vhvd_2412_posts`
#

CREATE TABLE `vhvd_2412_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=345 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Contenido de la tabla `vhvd_2412_posts`
#
INSERT INTO `vhvd_2412_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 0, '2024-12-28 17:37:24', '2024-12-28 16:37:24', '<!-- wp:page-list /-->', 'Navegación', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-12-28 17:37:24', '2024-12-28 16:37:24', '', 0, 'http://vida.local/2024/12/28/navigation/', 0, 'wp_navigation', '', 0),
(9, 1, '2024-12-29 01:46:06', '2024-12-29 00:46:06', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2025-01-09 16:37:49', '2025-01-09 15:37:49', '', 0, 'https://vida.local/?page_id=9', 0, 'page', '', 0),
(11, 1, '2024-12-29 01:47:06', '2024-12-29 00:47:06', '', 'The Project', '', 'publish', 'closed', 'closed', '', 'the-project', '', '', '2025-01-09 16:23:24', '2025-01-09 15:23:24', '', 0, 'https://vida.local/?page_id=11', 0, 'page', '', 0),
(13, 1, '2024-12-29 01:47:21', '2024-12-29 00:47:21', '', 'Partners', '', 'publish', 'closed', 'closed', '', 'partners', '', '', '2025-01-06 12:37:19', '2025-01-06 11:37:19', '', 0, 'https://vida.local/?page_id=13', 0, 'page', '', 0),
(15, 1, '2024-12-29 01:47:34', '2024-12-29 00:47:34', '', 'Recruitment', '', 'publish', 'closed', 'closed', '', 'recruitment', '', '', '2025-01-09 16:47:29', '2025-01-09 15:47:29', '', 0, 'https://vida.local/?page_id=15', 0, 'page', '', 0),
(17, 1, '2024-12-29 01:49:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-12-29 01:49:53', '0000-00-00 00:00:00', '', 0, 'https://vida.local/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2024-12-29 01:49:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-12-29 01:49:53', '0000-00-00 00:00:00', '', 0, 'https://vida.local/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2024-12-29 01:49:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-12-29 01:49:53', '0000-00-00 00:00:00', '', 0, 'https://vida.local/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2024-12-29 01:49:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-12-29 01:49:53', '0000-00-00 00:00:00', '', 0, 'https://vida.local/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2024-12-29 01:50:25', '0000-00-00 00:00:00', '', 'About', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-12-29 01:50:25', '0000-00-00 00:00:00', '', 0, 'https://vida.local/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2024-12-29 01:50:49', '2024-12-29 00:50:49', '', 'Helpdesk', '', 'publish', 'closed', 'closed', '', 'helpdesk', '', '', '2025-01-09 12:19:48', '2025-01-09 11:19:48', '', 0, 'https://vida.local/?page_id=22', 0, 'page', '', 0),
(24, 1, '2024-12-29 01:50:59', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-12-29 01:50:59', '0000-00-00 00:00:00', '', 0, 'https://vida.local/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2024-12-29 01:52:26', '2024-12-29 00:52:22', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2024-12-29 01:52:26', '2024-12-29 00:52:26', '', 0, 'https://vida.local/?p=25', 5, 'nav_menu_item', '', 0),
(26, 1, '2024-12-29 01:52:26', '2024-12-29 00:52:22', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2024-12-29 01:52:26', '2024-12-29 00:52:26', '', 0, 'https://vida.local/?p=26', 3, 'nav_menu_item', '', 0),
(27, 1, '2024-12-29 01:52:26', '2024-12-29 00:52:22', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2024-12-29 01:52:26', '2024-12-29 00:52:26', '', 0, 'https://vida.local/?p=27', 4, 'nav_menu_item', '', 0),
(28, 1, '2024-12-29 01:52:26', '2024-12-29 00:52:21', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2024-12-29 01:52:26', '2024-12-29 00:52:26', '', 0, 'https://vida.local/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2024-12-29 01:52:26', '2024-12-29 00:52:21', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2024-12-29 01:52:26', '2024-12-29 00:52:26', '', 0, 'https://vida.local/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2025-01-03 11:35:50', '2025-01-03 10:35:50', '<!-- wp:paragraph -->\n<p>In accordance with the provisions of article 22.2 of Law 34/2002, of July 11, on Services of the Information Society and Electronic Commerce in force, VHIO must comply with the obligation to inform about cookies that it uses and its purposes.&nbsp;<br>This website uses cookies and/or similar technologies that store and retrieve information when you browse. Cookies allow a web page, among other things, to store and retrieve information about the browsing habits of a User or their equipment and, depending on the information it contains and the way they use their equipment, they can be used to recognize the User.&nbsp;<br>Cookies are essential for the functioning of the Internet, providing innumerable advantages in the provision of interactive services, facilitating the User’s navigation and usability of our website.&nbsp;<br>The User can modify the customised configuration through the CookieBot plugin integrated in the project.&nbsp;<br>The information we provide below will help you understand the different types of cookies:&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Types of cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>ACCORDING TO THE ENTITY THAT MANAGES THEM </strong><br><br>OWN COOKIES <br>Those that are sent to the user’s terminal equipment from a computer or domain managed by the editor itself and from which the service requested by the user is provided. <br><br>THIRD PARTY COOKIES <br>Those that are sent to the user’s terminal equipment from a computer or domain that is not managed by the editor, but by another entity that processes the data obtained through the cookies. <br><strong><br>ACCORDING TO THE PERIOD OF TIME THEY REMAIN ACTIVATED </strong><br><br>SESSION COOKIES <br>Those designed to collect and store data while the user accesses a web page. They are normally used to store information that is useful only for the provision of the service requested by the user on a single occasion (for example, a list of products purchased) and disappear at the end of the session. <br><br>PERSISTENT COOKIES <br>Those in which the data remains stored in the terminal and can be accessed and processed during a period defined by the person responsible for the cookie, which can range from a few minutes to several years. <br><br><strong>ACCORDING TO ITS PURPOSE </strong><br><br>TECHNICAL COOKIES <br>Those that allow the user to navigate through a web page, platform or application, and to use the different options or services that exist in it.<br><br>PERSONALIZATION COOKIES <br>Those that allow to apply specific conditions for the user’s navigation through the website (eg language). <br><br>ANALYSIS COOKIES <br>They are those pertaining to the users of the websites to which the cookie in question is linked, including the quantification of the impacts of the advertisements. The information collected through this type of cookie is used to measure the activity of the websites, application or platform, in order to introduce improvements based on the analysis of data related to the activity of the users of the service. <br><br>ADVERTISEMENT COOKIES <br>They allow the editor to include advertisements on the website, depending on the content of the website itself. <br><br>BEHAVIORAL ADVERTISING COOKIES <br>Those that store information on the behavior of users obtained through the continuous observation of their browsing habits, which allows the development of a specific profile to display advertising based on it. <br>Additionally, VHIO informs in more detail about the cookies it uses, the specific use or purpose, the retention periods, as well as the possible International Transfers of data of each cookie used:<br><br><br>OWN COOKIES Type Technical Personalization Analysis Advertising / Behavioral Advertising Owner Cookie <br>Purpose Retention <br><br>THIRD PARTY COOKIES Type Technical Personalization Analysis Advertising / Behavioral Advertising Owner Cookie Purpose Retention <br>You can find out about international transfers to third countries that, where appropriate, are made by THIRD PARTIES, identified in this cookie policy, in their corresponding policies (click on the cookie owner).<br><br>VHIO provides more comprehensive information on international transfers derived from the use of its own cookies: </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">International transfers</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Owner Cookie Country of transfer Regime applied&nbsp;<br><br>Keep in mind that, if you accept third-party cookies, you must delete them from the browser options or from the system offered by the third party itself.&nbsp;<br><br>Below, we provide you with the links of various browsers, through which you can modify your browser settings regarding the use of cookies:&nbsp;<br><br>Firefox: http://support.mozilla.org/es/kb/habilitar-y-deshabilitar-cookies-que-los-sitios-we&nbsp;<br><br>Chrome: http://support.google.com/chrome/bin/answer.py?hl=es&amp;answer=95647&nbsp;<br><br>Internet Explorer: http://windows.microsoft.com/es-es/internet-explorer/delete-manage-cookies#ie=ie-10&nbsp;<br><br>Microsoft Edge: https://support.microsoft.com/es-es/microsoft-edge/eliminar-las-cookies-en-microsoft-edge-63947406-40ac-c3b8-57b9-2a946a29ae09&nbsp;<br><br>Safari: https://support.apple.com/kb/ph17191?locale=es_ES&nbsp;<br>Opera: https://help.opera.com/en/latest/web-preferences/#cookies&nbsp;<br><br>To learn more about the processing of personal data, we recommend that you visit our “Privacy Policy” section.&nbsp;<br>Last update: July 27, 2021&nbsp;</p>\n<!-- /wp:paragraph -->', 'Cookies Policy', '', 'publish', 'closed', 'closed', '', 'cookies-policy', '', '', '2025-01-09 18:09:50', '2025-01-09 17:09:50', '', 0, 'https://vida.local/?page_id=30', 0, 'page', '', 0),
(35, 1, '2025-01-05 02:01:04', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', '', '', '', '', '', '', '2025-01-05 02:01:04', '0000-00-00 00:00:00', '', 0, 'https://vida.local/?p=35', 0, 'post', '', 0),
(36, 1, '2025-01-05 02:21:41', '2025-01-05 01:21:41', 'a:16:{s:10:"page_title";s:14:"Theme Settings";s:9:"menu_slug";s:14:"theme-settings";s:11:"parent_slug";s:4:"none";s:22:"advanced_configuration";i:0;s:8:"icon_url";s:0:"";s:10:"menu_title";s:0:"";s:8:"position";s:0:"";s:8:"redirect";i:0;s:11:"description";s:0:"";s:9:"menu_icon";a:2:{s:4:"type";s:9:"dashicons";s:5:"value";s:23:"dashicons-admin-generic";}s:13:"update_button";s:10:"Actualizar";s:15:"updated_message";s:21:"Opciones Actualizadas";s:10:"capability";s:10:"edit_posts";s:12:"data_storage";s:7:"options";s:7:"post_id";s:0:"";s:8:"autoload";i:0;}', 'Theme Settings', 'theme-settings', 'publish', 'closed', 'closed', '', 'ui_options_page_6779de7085b66', '', '', '2025-01-05 02:21:41', '2025-01-05 01:21:41', '', 0, 'https://vida.local/?post_type=acf-ui-options-page&#038;p=36', 0, 'acf-ui-options-page', '', 0),
(37, 1, '2025-01-05 16:54:14', '2025-01-05 15:54:14', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"page_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"front_page";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_677aa3b84493b', '', '', '2025-01-05 21:01:53', '2025-01-05 20:01:53', '', 0, 'https://vida.local/?post_type=acf-field-group&#038;p=37', 0, 'acf-field-group', '', 0),
(38, 1, '2025-01-05 16:54:14', '2025-01-05 15:54:14', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:3:"row";s:10:"sub_fields";a:0:{}}', 'Hero', 'hero', 'publish', 'closed', 'closed', '', 'field_677aa3b9a4301', '', '', '2025-01-05 17:01:08', '2025-01-05 16:01:08', '', 37, 'https://vida.local/?post_type=acf-field&#038;p=38', 0, 'acf-field', '', 0),
(39, 1, '2025-01-05 16:54:14', '2025-01-05 15:54:14', 'a:17:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"allow_in_bindings";i:0;s:12:"preview_size";s:6:"medium";}', 'Background', 'background', 'publish', 'closed', 'closed', '', 'field_677aa597a4302', '', '', '2025-01-05 17:01:08', '2025-01-05 16:01:08', '', 38, 'https://vida.local/?post_type=acf-field&#038;p=39', 0, 'acf-field', '', 0),
(40, 1, '2025-01-05 16:54:14', '2025-01-05 15:54:14', 'a:17:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"allow_in_bindings";i:0;s:12:"preview_size";s:6:"medium";}', 'Background Mobile', 'background_mobile', 'publish', 'closed', 'closed', '', 'field_677aa846a4303', '', '', '2025-01-05 17:01:08', '2025-01-05 16:01:08', '', 38, 'https://vida.local/?post_type=acf-field&#038;p=40', 1, 'acf-field', '', 0),
(41, 1, '2025-01-05 16:54:14', '2025-01-05 15:54:14', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_677aa912a4304', '', '', '2025-01-05 17:01:08', '2025-01-05 16:01:08', '', 38, 'https://vida.local/?post_type=acf-field&#038;p=41', 2, 'acf-field', '', 0),
(42, 1, '2025-01-05 16:54:14', '2025-01-05 15:54:14', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:17:"allow_in_bindings";i:0;s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:1;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_677aa929a4305', '', '', '2025-01-05 18:44:15', '2025-01-05 17:44:15', '', 38, 'https://vida.local/?post_type=acf-field&#038;p=42', 3, 'acf-field', '', 0),
(43, 1, '2025-01-05 16:54:14', '2025-01-05 15:54:14', 'a:13:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"table";s:10:"pagination";i:0;s:3:"min";s:0:"";s:3:"max";s:0:"";s:9:"collapsed";s:0:"";s:12:"button_label";s:14:"Agregar Botón";s:13:"rows_per_page";i:20;}', 'Buttons', 'buttons', 'publish', 'closed', 'closed', '', 'field_677aaa90a4306', '', '', '2025-01-05 17:01:08', '2025-01-05 16:01:08', '', 38, 'https://vida.local/?post_type=acf-field&#038;p=43', 4, 'acf-field', '', 0),
(44, 1, '2025-01-05 16:54:14', '2025-01-05 15:54:14', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:17:"allow_in_bindings";i:0;}', 'Button', 'button', 'publish', 'closed', 'closed', '', 'field_677aaadca4307', '', '', '2025-01-05 16:54:14', '2025-01-05 15:54:14', '', 43, 'https://vida.local/?post_type=acf-field&p=44', 0, 'acf-field', '', 0),
(45, 1, '2025-01-05 17:02:20', '2025-01-05 16:02:20', '', 'home-hero-background', '', 'inherit', '', 'closed', '', 'home-hero-background', '', '', '2025-01-05 17:02:20', '2025-01-05 16:02:20', '', 9, 'https://vida.local/wp-content/uploads/2025/01/home-hero-background.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2025-01-05 18:40:00', '2025-01-05 17:40:00', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:3:"row";s:10:"sub_fields";a:0:{}}', 'About', 'about', 'publish', 'closed', 'closed', '', 'field_677ac2feab1d2', '', '', '2025-01-05 18:40:00', '2025-01-05 17:40:00', '', 37, 'https://vida.local/?post_type=acf-field&p=63', 1, 'acf-field', '', 0),
(64, 1, '2025-01-05 18:40:00', '2025-01-05 17:40:00', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_677ac323ab1d3', '', '', '2025-01-05 18:40:00', '2025-01-05 17:40:00', '', 63, 'https://vida.local/?post_type=acf-field&p=64', 0, 'acf-field', '', 0),
(65, 1, '2025-01-05 18:40:00', '2025-01-05 17:40:00', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Subtitle', 'subtitle', 'publish', 'closed', 'closed', '', 'field_677ac38fab1d4', '', '', '2025-01-05 18:40:00', '2025-01-05 17:40:00', '', 63, 'https://vida.local/?post_type=acf-field&p=65', 1, 'acf-field', '', 0),
(66, 1, '2025-01-05 18:40:00', '2025-01-05 17:40:00', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:17:"allow_in_bindings";i:0;s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:1;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_677ac399ab1d5', '', '', '2025-01-05 18:42:59', '2025-01-05 17:42:59', '', 63, 'https://vida.local/?post_type=acf-field&#038;p=66', 2, 'acf-field', '', 0),
(67, 1, '2025-01-05 18:40:00', '2025-01-05 17:40:00', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:17:"allow_in_bindings";i:0;}', 'Button', 'button', 'publish', 'closed', 'closed', '', 'field_677ac3adab1d6', '', '', '2025-01-05 18:40:00', '2025-01-05 17:40:00', '', 63, 'https://vida.local/?post_type=acf-field&p=67', 3, 'acf-field', '', 0),
(75, 1, '2025-01-05 19:18:37', '2025-01-05 18:18:37', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:3:"row";s:10:"sub_fields";a:0:{}}', 'Associated Partners', 'partners', 'publish', 'closed', 'closed', '', 'field_677acc02d19c4', '', '', '2025-01-05 19:18:37', '2025-01-05 18:18:37', '', 37, 'https://vida.local/?post_type=acf-field&p=75', 2, 'acf-field', '', 0),
(76, 1, '2025-01-05 19:18:37', '2025-01-05 18:18:37', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_677acc20d19c5', '', '', '2025-01-05 19:18:37', '2025-01-05 18:18:37', '', 75, 'https://vida.local/?post_type=acf-field&p=76', 0, 'acf-field', '', 0),
(77, 1, '2025-01-05 19:18:37', '2025-01-05 18:18:37', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:17:"allow_in_bindings";i:0;s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:1;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_677acc26d19c6', '', '', '2025-01-05 19:18:37', '2025-01-05 18:18:37', '', 75, 'https://vida.local/?post_type=acf-field&p=77', 1, 'acf-field', '', 0),
(79, 1, '2025-01-05 19:40:32', '2025-01-05 18:40:32', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:3:"row";s:10:"sub_fields";a:0:{}}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_677ad04cc436a', '', '', '2025-01-05 19:40:32', '2025-01-05 18:40:32', '', 37, 'https://vida.local/?post_type=acf-field&p=79', 3, 'acf-field', '', 0),
(80, 1, '2025-01-05 19:40:32', '2025-01-05 18:40:32', 'a:17:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"allow_in_bindings";i:0;s:12:"preview_size";s:6:"medium";}', 'Background', 'background', 'publish', 'closed', 'closed', '', 'field_677ad05ac436b', '', '', '2025-01-05 19:40:32', '2025-01-05 18:40:32', '', 79, 'https://vida.local/?post_type=acf-field&p=80', 0, 'acf-field', '', 0),
(81, 1, '2025-01-05 19:40:32', '2025-01-05 18:40:32', 'a:17:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"allow_in_bindings";i:0;s:12:"preview_size";s:6:"medium";}', 'Background Mobile', 'background_mobile', 'publish', 'closed', 'closed', '', 'field_677ad0e3c436c', '', '', '2025-01-05 19:40:32', '2025-01-05 18:40:32', '', 79, 'https://vida.local/?post_type=acf-field&p=81', 1, 'acf-field', '', 0),
(82, 1, '2025-01-05 19:40:32', '2025-01-05 18:40:32', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_677ad10bc436d', '', '', '2025-01-05 19:40:32', '2025-01-05 18:40:32', '', 79, 'https://vida.local/?post_type=acf-field&p=82', 2, 'acf-field', '', 0),
(83, 1, '2025-01-05 19:40:32', '2025-01-05 18:40:32', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:17:"allow_in_bindings";i:0;s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:1;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_677ad115c436e', '', '', '2025-01-05 19:40:32', '2025-01-05 18:40:32', '', 79, 'https://vida.local/?post_type=acf-field&p=83', 3, 'acf-field', '', 0),
(86, 1, '2025-01-05 19:43:48', '2025-01-05 18:43:48', '', 'home-banner-background-mobile', '', 'inherit', '', 'closed', '', 'home-banner-background-mobile', '', '', '2025-01-05 19:43:48', '2025-01-05 18:43:48', '', 9, 'https://vida.local/wp-content/uploads/2025/01/home-banner-background-mobile.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2025-01-05 19:44:03', '2025-01-05 18:44:03', '', 'home-banner-background', '', 'inherit', '', 'closed', '', 'home-banner-background', '', '', '2025-01-05 19:44:03', '2025-01-05 18:44:03', '', 9, 'https://vida.local/wp-content/uploads/2025/01/home-banner-background.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2025-01-05 20:09:30', '2025-01-05 19:09:30', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:17:"allow_in_bindings";i:0;}', 'Button', 'button', 'publish', 'closed', 'closed', '', 'field_677ad8db05117', '', '', '2025-01-05 20:09:30', '2025-01-05 19:09:30', '', 79, 'https://vida.local/?post_type=acf-field&p=89', 4, 'acf-field', '', 0),
(94, 1, '2025-01-05 20:34:58', '2025-01-05 19:34:58', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:3:"row";s:10:"sub_fields";a:0:{}}', 'Variable Section', 'variable_section', 'publish', 'closed', 'closed', '', 'field_677ade693db9f', '', '', '2025-01-05 20:34:58', '2025-01-05 19:34:58', '', 37, 'https://vida.local/?post_type=acf-field&p=94', 4, 'acf-field', '', 0),
(95, 1, '2025-01-05 20:34:58', '2025-01-05 19:34:58', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_677ade7c3dba0', '', '', '2025-01-05 20:34:58', '2025-01-05 19:34:58', '', 94, 'https://vida.local/?post_type=acf-field&p=95', 0, 'acf-field', '', 0),
(96, 1, '2025-01-05 20:34:58', '2025-01-05 19:34:58', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:17:"allow_in_bindings";i:0;s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:1;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_677ade833dba1', '', '', '2025-01-05 20:34:58', '2025-01-05 19:34:58', '', 94, 'https://vida.local/?post_type=acf-field&p=96', 1, 'acf-field', '', 0),
(97, 1, '2025-01-05 20:34:58', '2025-01-05 19:34:58', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:17:"allow_in_bindings";i:0;}', 'Button', 'button', 'publish', 'closed', 'closed', '', 'field_677ade973dba2', '', '', '2025-01-05 20:34:58', '2025-01-05 19:34:58', '', 94, 'https://vida.local/?post_type=acf-field&p=97', 2, 'acf-field', '', 0),
(98, 1, '2025-01-05 20:34:58', '2025-01-05 19:34:58', 'a:17:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"allow_in_bindings";i:0;s:12:"preview_size";s:6:"medium";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_677adeab3dba3', '', '', '2025-01-05 20:34:58', '2025-01-05 19:34:58', '', 94, 'https://vida.local/?post_type=acf-field&p=98', 3, 'acf-field', '', 0),
(102, 1, '2025-01-05 20:57:10', '2025-01-05 19:57:10', '', 'home-variable-section', '', 'inherit', '', 'closed', '', 'home-variable-section', '', '', '2025-01-05 20:57:10', '2025-01-05 19:57:10', '', 9, 'https://vida.local/wp-content/uploads/2025/01/home-variable-section.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2025-01-05 21:01:53', '2025-01-05 20:01:53', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:3:"row";s:10:"sub_fields";a:0:{}}', 'Contact', 'contact', 'publish', 'closed', 'closed', '', 'field_677ae4bf512fa', '', '', '2025-01-05 21:01:53', '2025-01-05 20:01:53', '', 37, 'https://vida.local/?post_type=acf-field&p=104', 5, 'acf-field', '', 0),
(105, 1, '2025-01-05 21:01:53', '2025-01-05 20:01:53', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_677ae4cb512fb', '', '', '2025-01-05 21:01:53', '2025-01-05 20:01:53', '', 104, 'https://vida.local/?post_type=acf-field&p=105', 0, 'acf-field', '', 0),
(106, 1, '2025-01-05 21:01:53', '2025-01-05 20:01:53', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:17:"allow_in_bindings";i:0;}', 'Button', 'button', 'publish', 'closed', 'closed', '', 'field_677ae4d7512fc', '', '', '2025-01-05 21:01:53', '2025-01-05 20:01:53', '', 104, 'https://vida.local/?post_type=acf-field&p=106', 1, 'acf-field', '', 0),
(107, 1, '2025-01-05 21:01:53', '2025-01-05 20:01:53', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:17:"allow_in_bindings";i:0;s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:1;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_677ae4e3512fd', '', '', '2025-01-05 21:01:53', '2025-01-05 20:01:53', '', 104, 'https://vida.local/?post_type=acf-field&p=107', 2, 'acf-field', '', 0),
(114, 1, '2025-01-05 23:40:40', '2025-01-05 22:40:40', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:15:"the-project.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'The Project', 'the-project', 'publish', 'closed', 'closed', '', 'group_677b09bb9759a', '', '', '2025-01-06 11:46:05', '2025-01-06 10:46:05', '', 0, 'https://vida.local/?post_type=acf-field-group&#038;p=114', 0, 'acf-field-group', '', 0),
(115, 1, '2025-01-05 23:40:40', '2025-01-05 22:40:40', 'a:13:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:3:"row";s:10:"pagination";i:0;s:3:"min";s:0:"";s:3:"max";s:0:"";s:9:"collapsed";s:19:"field_677b09edd1ef6";s:12:"button_label";s:16:"Agregar Sección";s:13:"rows_per_page";i:20;}', 'Sections', 'sections', 'publish', 'closed', 'closed', '', 'field_677b09bcd1ef5', '', '', '2025-01-06 09:55:16', '2025-01-06 08:55:16', '', 114, 'https://vida.local/?post_type=acf-field&#038;p=115', 0, 'acf-field', '', 0),
(116, 1, '2025-01-05 23:40:40', '2025-01-05 22:40:40', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_677b09edd1ef6', '', '', '2025-01-05 23:40:40', '2025-01-05 22:40:40', '', 115, 'https://vida.local/?post_type=acf-field&p=116', 0, 'acf-field', '', 0),
(117, 1, '2025-01-05 23:40:40', '2025-01-05 22:40:40', 'a:13:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:3:"row";s:10:"pagination";i:0;s:3:"min";s:0:"";s:3:"max";s:0:"";s:9:"collapsed";s:0:"";s:12:"button_label";s:14:"Agregar Bloque";s:13:"rows_per_page";i:20;}', 'Blocks', 'blocks', 'publish', 'closed', 'closed', '', 'field_677b0a0cd1ef7', '', '', '2025-01-06 11:43:37', '2025-01-06 10:43:37', '', 115, 'https://vida.local/?post_type=acf-field&#038;p=117', 1, 'acf-field', '', 0),
(142, 1, '2025-01-06 11:43:37', '2025-01-06 10:43:37', 'a:10:{s:10:"aria-label";s:0:"";s:4:"type";s:16:"flexible_content";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"layouts";a:3:{s:20:"layout_677bb3364dec9";a:6:{s:3:"key";s:20:"layout_677bb3364dec9";s:5:"label";s:11:"Block Title";s:4:"name";s:11:"block_title";s:7:"display";s:5:"block";s:3:"min";s:0:"";s:3:"max";s:0:"";}s:20:"layout_677bb355063ad";a:6:{s:3:"key";s:20:"layout_677bb355063ad";s:5:"label";s:13:"Block Content";s:4:"name";s:13:"block_content";s:7:"display";s:5:"block";s:3:"min";s:0:"";s:3:"max";s:0:"";}s:20:"layout_677bb375063b0";a:6:{s:3:"key";s:20:"layout_677bb375063b0";s:5:"label";s:12:"Block Button";s:4:"name";s:12:"block_button";s:7:"display";s:5:"block";s:3:"min";s:0:"";s:3:"max";s:0:"";}}s:3:"min";s:0:"";s:3:"max";s:0:"";s:12:"button_label";s:12:"Agregar Fila";}', 'Block', 'block', 'publish', 'closed', 'closed', '', 'field_677bb327063ab', '', '', '2025-01-06 11:46:05', '2025-01-06 10:46:05', '', 117, 'https://vida.local/?post_type=acf-field&#038;p=142', 0, 'acf-field', '', 0),
(143, 1, '2025-01-06 11:43:37', '2025-01-06 10:43:37', 'a:13:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:20:"layout_677bb3364dec9";s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_677bb349063ac', '', '', '2025-01-06 11:43:37', '2025-01-06 10:43:37', '', 142, 'https://vida.local/?post_type=acf-field&p=143', 0, 'acf-field', '', 0),
(144, 1, '2025-01-06 11:43:37', '2025-01-06 10:43:37', 'a:13:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:20:"layout_677bb355063ad";s:13:"default_value";s:0:"";s:17:"allow_in_bindings";i:0;s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:1;}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_677bb363063af', '', '', '2025-01-06 11:43:37', '2025-01-06 10:43:37', '', 142, 'https://vida.local/?post_type=acf-field&p=144', 0, 'acf-field', '', 0),
(145, 1, '2025-01-06 11:43:37', '2025-01-06 10:43:37', 'a:9:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:20:"layout_677bb375063b0";s:13:"return_format";s:5:"array";s:17:"allow_in_bindings";i:0;}', 'Button', 'button', 'publish', 'closed', 'closed', '', 'field_677bb37c063b2', '', '', '2025-01-06 11:43:37', '2025-01-06 10:43:37', '', 142, 'https://vida.local/?post_type=acf-field&p=145', 0, 'acf-field', '', 0),
(156, 1, '2025-01-06 12:04:38', '2025-01-06 11:04:38', '', 'the-project-research', '', 'inherit', '', 'closed', '', 'the-project-research', '', '', '2025-01-06 12:04:38', '2025-01-06 11:04:38', '', 11, 'https://vida.local/wp-content/uploads/2025/01/the-project-research.jpg', 0, 'attachment', 'image/jpeg', 0),
(161, 1, '2025-01-06 12:08:23', '2025-01-06 11:08:23', '', 'the-project-cellex', '', 'inherit', '', 'closed', '', 'the-project-cellex', '', '', '2025-01-06 12:08:23', '2025-01-06 11:08:23', '', 11, 'https://vida.local/wp-content/uploads/2025/01/the-project-cellex.jpg', 0, 'attachment', 'image/jpeg', 0),
(163, 1, '2025-01-06 12:31:25', '2025-01-06 11:31:25', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:23:"associated-partners.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Associated Partners', 'associated-partners', 'publish', 'closed', 'closed', '', 'group_677bbedc42bc6', '', '', '2025-01-06 12:34:37', '2025-01-06 11:34:37', '', 0, 'https://vida.local/?post_type=acf-field-group&#038;p=163', 0, 'acf-field-group', '', 0),
(164, 1, '2025-01-06 12:31:25', '2025-01-06 11:31:25', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_677bbedc5a375', '', '', '2025-01-06 12:34:37', '2025-01-06 11:34:37', '', 167, 'https://vida.local/?post_type=acf-field&#038;p=164', 0, 'acf-field', '', 0),
(165, 1, '2025-01-06 12:31:25', '2025-01-06 11:31:25', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:17:"allow_in_bindings";i:0;s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:1;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_677bbefc5a376', '', '', '2025-01-06 12:34:37', '2025-01-06 11:34:37', '', 167, 'https://vida.local/?post_type=acf-field&#038;p=165', 1, 'acf-field', '', 0),
(167, 1, '2025-01-06 12:34:37', '2025-01-06 11:34:37', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:3:"row";s:10:"sub_fields";a:0:{}}', 'Main', 'main', 'publish', 'closed', 'closed', '', 'field_677bbf92dd428', '', '', '2025-01-06 12:34:37', '2025-01-06 11:34:37', '', 163, 'https://vida.local/?post_type=acf-field&p=167', 0, 'acf-field', '', 0),
(170, 1, '2025-01-06 12:52:20', '2025-01-06 11:52:20', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:15:"recruitment.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Recruitment', 'recruitment', 'publish', 'closed', 'closed', '', 'group_677bc1a91b725', '', '', '2025-01-06 12:57:57', '2025-01-06 11:57:57', '', 0, 'https://vida.local/?post_type=acf-field-group&#038;p=170', 0, 'acf-field-group', '', 0),
(171, 1, '2025-01-06 12:52:20', '2025-01-06 11:52:20', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:3:"row";s:10:"sub_fields";a:0:{}}', 'Hero', 'hero', 'publish', 'closed', 'closed', '', 'field_677bc1a9c7c6c', '', '', '2025-01-06 12:52:20', '2025-01-06 11:52:20', '', 170, 'https://vida.local/?post_type=acf-field&p=171', 0, 'acf-field', '', 0),
(172, 1, '2025-01-06 12:52:20', '2025-01-06 11:52:20', 'a:17:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"allow_in_bindings";i:0;s:12:"preview_size";s:6:"medium";}', 'Background', 'background', 'publish', 'closed', 'closed', '', 'field_677bc20cc7c6d', '', '', '2025-01-06 12:52:20', '2025-01-06 11:52:20', '', 171, 'https://vida.local/?post_type=acf-field&p=172', 0, 'acf-field', '', 0),
(173, 1, '2025-01-06 12:52:20', '2025-01-06 11:52:20', 'a:17:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"allow_in_bindings";i:0;s:12:"preview_size";s:6:"medium";}', 'Background Mobile', 'background_mobile', 'publish', 'closed', 'closed', '', 'field_677bc21ec7c6e', '', '', '2025-01-06 12:52:20', '2025-01-06 11:52:20', '', 171, 'https://vida.local/?post_type=acf-field&p=173', 1, 'acf-field', '', 0),
(174, 1, '2025-01-06 12:52:20', '2025-01-06 11:52:20', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_677bc234c7c70', '', '', '2025-01-06 12:52:20', '2025-01-06 11:52:20', '', 171, 'https://vida.local/?post_type=acf-field&p=174', 2, 'acf-field', '', 0),
(175, 1, '2025-01-06 12:52:20', '2025-01-06 11:52:20', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:17:"allow_in_bindings";i:0;s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:1;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_677bc23dc7c71', '', '', '2025-01-06 12:52:20', '2025-01-06 11:52:20', '', 171, 'https://vida.local/?post_type=acf-field&p=175', 3, 'acf-field', '', 0),
(176, 1, '2025-01-06 12:52:20', '2025-01-06 11:52:20', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:3:"row";s:10:"sub_fields";a:0:{}}', 'Criteria', 'criteria', 'publish', 'closed', 'closed', '', 'field_677bc262c7c72', '', '', '2025-01-06 12:52:20', '2025-01-06 11:52:20', '', 170, 'https://vida.local/?post_type=acf-field&p=176', 1, 'acf-field', '', 0),
(177, 1, '2025-01-06 12:52:20', '2025-01-06 11:52:20', 'a:17:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"allow_in_bindings";i:0;s:12:"preview_size";s:6:"medium";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_677bc274c7c73', '', '', '2025-01-06 12:52:20', '2025-01-06 11:52:20', '', 176, 'https://vida.local/?post_type=acf-field&p=177', 0, 'acf-field', '', 0),
(178, 1, '2025-01-06 12:52:20', '2025-01-06 11:52:20', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_677bc293c7c74', '', '', '2025-01-06 12:52:20', '2025-01-06 11:52:20', '', 176, 'https://vida.local/?post_type=acf-field&p=178', 1, 'acf-field', '', 0),
(179, 1, '2025-01-06 12:52:20', '2025-01-06 11:52:20', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:17:"allow_in_bindings";i:0;s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:1;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_677bc298c7c75', '', '', '2025-01-06 12:52:20', '2025-01-06 11:52:20', '', 176, 'https://vida.local/?post_type=acf-field&p=179', 2, 'acf-field', '', 0),
(180, 1, '2025-01-06 12:52:20', '2025-01-06 11:52:20', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:3:"row";s:10:"sub_fields";a:0:{}}', 'Laboratories', 'laboratories', 'publish', 'closed', 'closed', '', 'field_677bc2b0c7c76', '', '', '2025-01-06 12:52:20', '2025-01-06 11:52:20', '', 170, 'https://vida.local/?post_type=acf-field&p=180', 2, 'acf-field', '', 0),
(181, 1, '2025-01-06 12:52:20', '2025-01-06 11:52:20', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_677bc3ddc7c7a', '', '', '2025-01-06 12:52:20', '2025-01-06 11:52:20', '', 180, 'https://vida.local/?post_type=acf-field&p=181', 0, 'acf-field', '', 0),
(182, 1, '2025-01-06 12:52:20', '2025-01-06 11:52:20', 'a:13:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:3:"row";s:10:"pagination";i:0;s:3:"min";s:0:"";s:3:"max";s:0:"";s:9:"collapsed";s:0:"";s:12:"button_label";s:0:"";s:13:"rows_per_page";i:20;}', 'Data', 'data', 'publish', 'closed', 'closed', '', 'field_677bc2bdc7c77', '', '', '2025-01-06 12:52:20', '2025-01-06 11:52:20', '', 180, 'https://vida.local/?post_type=acf-field&p=182', 1, 'acf-field', '', 0),
(183, 1, '2025-01-06 12:52:20', '2025-01-06 11:52:20', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Term', 'term', 'publish', 'closed', 'closed', '', 'field_677bc35fc7c78', '', '', '2025-01-06 12:52:20', '2025-01-06 11:52:20', '', 182, 'https://vida.local/?post_type=acf-field&p=183', 0, 'acf-field', '', 0),
(184, 1, '2025-01-06 12:52:20', '2025-01-06 11:52:20', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:17:"allow_in_bindings";i:0;s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:1;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_677bc366c7c79', '', '', '2025-01-06 12:52:20', '2025-01-06 11:52:20', '', 182, 'https://vida.local/?post_type=acf-field&p=184', 1, 'acf-field', '', 0) ;
INSERT INTO `vhvd_2412_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(185, 1, '2025-01-06 12:57:57', '2025-01-06 11:57:57', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:3:"row";s:10:"sub_fields";a:0:{}}', 'Application', 'application', 'publish', 'closed', 'closed', '', 'field_677bc424c0877', '', '', '2025-01-06 12:57:57', '2025-01-06 11:57:57', '', 170, 'https://vida.local/?post_type=acf-field&p=185', 3, 'acf-field', '', 0),
(186, 1, '2025-01-06 12:57:57', '2025-01-06 11:57:57', 'a:17:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"allow_in_bindings";i:0;s:12:"preview_size";s:6:"medium";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_677bc448c0878', '', '', '2025-01-06 12:57:57', '2025-01-06 11:57:57', '', 185, 'https://vida.local/?post_type=acf-field&p=186', 0, 'acf-field', '', 0),
(187, 1, '2025-01-06 12:57:57', '2025-01-06 11:57:57', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_677bc459c0879', '', '', '2025-01-06 12:57:57', '2025-01-06 11:57:57', '', 185, 'https://vida.local/?post_type=acf-field&p=187', 1, 'acf-field', '', 0),
(188, 1, '2025-01-06 12:57:57', '2025-01-06 11:57:57', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:17:"allow_in_bindings";i:0;s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:1;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_677bc462c087a', '', '', '2025-01-06 12:57:57', '2025-01-06 11:57:57', '', 185, 'https://vida.local/?post_type=acf-field&p=188', 2, 'acf-field', '', 0),
(189, 1, '2025-01-06 12:57:57', '2025-01-06 11:57:57', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:17:"allow_in_bindings";i:0;}', 'Button', 'button', 'publish', 'closed', 'closed', '', 'field_677bc470c087b', '', '', '2025-01-06 12:57:57', '2025-01-06 11:57:57', '', 185, 'https://vida.local/?post_type=acf-field&p=189', 3, 'acf-field', '', 0),
(190, 1, '2025-01-06 12:57:57', '2025-01-06 11:57:57', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:3:"row";s:10:"sub_fields";a:0:{}}', 'FAQS', 'faqs', 'publish', 'closed', 'closed', '', 'field_677bc496c087c', '', '', '2025-01-06 12:57:57', '2025-01-06 11:57:57', '', 170, 'https://vida.local/?post_type=acf-field&p=190', 4, 'acf-field', '', 0),
(191, 1, '2025-01-06 12:57:57', '2025-01-06 11:57:57', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_677bc4d5c087d', '', '', '2025-01-06 12:57:57', '2025-01-06 11:57:57', '', 190, 'https://vida.local/?post_type=acf-field&p=191', 0, 'acf-field', '', 0),
(192, 1, '2025-01-06 12:57:57', '2025-01-06 11:57:57', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:17:"allow_in_bindings";i:0;s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:1;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_677bc4ecc087e', '', '', '2025-01-06 12:57:57', '2025-01-06 11:57:57', '', 190, 'https://vida.local/?post_type=acf-field&p=192', 1, 'acf-field', '', 0),
(193, 1, '2025-01-06 12:57:57', '2025-01-06 11:57:57', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:17:"allow_in_bindings";i:0;}', 'Button', 'button', 'publish', 'closed', 'closed', '', 'field_677bc517c087f', '', '', '2025-01-06 12:57:57', '2025-01-06 11:57:57', '', 190, 'https://vida.local/?post_type=acf-field&p=193', 2, 'acf-field', '', 0),
(194, 1, '2025-01-06 12:57:57', '2025-01-06 11:57:57', 'a:17:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"allow_in_bindings";i:0;s:12:"preview_size";s:6:"medium";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_677bc537c0880', '', '', '2025-01-06 12:57:57', '2025-01-06 11:57:57', '', 190, 'https://vida.local/?post_type=acf-field&p=194', 3, 'acf-field', '', 0),
(195, 1, '2025-01-06 13:02:41', '2025-01-06 12:02:41', '', 'recruitment-hero-background', '', 'inherit', '', 'closed', '', 'recruitment-hero-background', '', '', '2025-01-06 13:02:41', '2025-01-06 12:02:41', '', 15, 'https://vida.local/wp-content/uploads/2025/01/recruitment-hero-background.png', 0, 'attachment', 'image/png', 0),
(199, 1, '2025-01-06 13:09:41', '2025-01-06 12:09:41', '', 'recruitment-elegibility-criteria', '', 'inherit', '', 'closed', '', 'recruitment-elegibility-criteria', '', '', '2025-01-06 13:09:41', '2025-01-06 12:09:41', '', 15, 'https://vida.local/wp-content/uploads/2025/01/recruitment-elegibility-criteria.jpg', 0, 'attachment', 'image/jpeg', 0),
(220, 1, '2025-01-06 13:33:59', '2025-01-06 12:33:59', '', 'recruitment-application', '', 'inherit', '', 'closed', '', 'recruitment-application', '', '', '2025-01-06 13:33:59', '2025-01-06 12:33:59', '', 15, 'https://vida.local/wp-content/uploads/2025/01/recruitment-application.jpg', 0, 'attachment', 'image/jpeg', 0),
(231, 1, '2025-01-06 13:55:50', '2025-01-06 12:55:50', '', 'recruitment-faqs', '', 'inherit', '', 'closed', '', 'recruitment-faqs', '', '', '2025-01-06 13:55:50', '2025-01-06 12:55:50', '', 15, 'https://vida.local/wp-content/uploads/2025/01/recruitment-faqs.jpg', 0, 'attachment', 'image/jpeg', 0),
(233, 1, '2025-01-06 17:21:07', '2025-01-06 16:21:07', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:12:"helpdesk.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Helpdesk', 'helpdesk', 'publish', 'closed', 'closed', '', 'group_677c02e057994', '', '', '2025-01-06 17:32:37', '2025-01-06 16:32:37', '', 0, 'https://vida.local/?post_type=acf-field-group&#038;p=233', 0, 'acf-field-group', '', 0),
(235, 1, '2025-01-06 17:25:52', '2025-01-06 16:25:52', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:3:"row";s:10:"sub_fields";a:0:{}}', 'Hero', 'hero', 'publish', 'closed', 'closed', '', 'field_677c02f952152', '', '', '2025-01-06 17:25:52', '2025-01-06 16:25:52', '', 233, 'https://vida.local/?post_type=acf-field&p=235', 0, 'acf-field', '', 0) ;
INSERT INTO `vhvd_2412_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(236, 1, '2025-01-06 17:25:52', '2025-01-06 16:25:52', 'a:17:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"allow_in_bindings";i:0;s:12:"preview_size";s:6:"medium";}', 'Background', 'background', 'publish', 'closed', 'closed', '', 'field_677c030f52153', '', '', '2025-01-06 17:25:52', '2025-01-06 16:25:52', '', 235, 'https://vida.local/?post_type=acf-field&p=236', 0, 'acf-field', '', 0),
(237, 1, '2025-01-06 17:25:52', '2025-01-06 16:25:52', 'a:17:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"allow_in_bindings";i:0;s:12:"preview_size";s:6:"medium";}', 'Background Mobile', 'background_mobile', 'publish', 'closed', 'closed', '', 'field_677c032052154', '', '', '2025-01-06 17:32:37', '2025-01-06 16:32:37', '', 235, 'https://vida.local/?post_type=acf-field&#038;p=237', 1, 'acf-field', '', 0),
(238, 1, '2025-01-06 17:25:52', '2025-01-06 16:25:52', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_677c03a152155', '', '', '2025-01-06 17:25:52', '2025-01-06 16:25:52', '', 235, 'https://vida.local/?post_type=acf-field&p=238', 2, 'acf-field', '', 0),
(239, 1, '2025-01-06 17:25:52', '2025-01-06 16:25:52', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:3:"row";s:10:"sub_fields";a:0:{}}', 'Contact', 'contact', 'publish', 'closed', 'closed', '', 'field_677c03ae52156', '', '', '2025-01-06 17:25:52', '2025-01-06 16:25:52', '', 233, 'https://vida.local/?post_type=acf-field&p=239', 1, 'acf-field', '', 0),
(240, 1, '2025-01-06 17:25:52', '2025-01-06 16:25:52', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_677c03b952157', '', '', '2025-01-06 17:25:52', '2025-01-06 16:25:52', '', 239, 'https://vida.local/?post_type=acf-field&p=240', 0, 'acf-field', '', 0),
(241, 1, '2025-01-06 17:25:52', '2025-01-06 16:25:52', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:17:"allow_in_bindings";i:0;s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:1;}', 'Info', 'info', 'publish', 'closed', 'closed', '', 'field_677c03c052158', '', '', '2025-01-06 17:25:52', '2025-01-06 16:25:52', '', 239, 'https://vida.local/?post_type=acf-field&p=241', 1, 'acf-field', '', 0),
(242, 1, '2025-01-06 17:25:52', '2025-01-06 16:25:52', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:17:"allow_in_bindings";i:0;}', 'Button', 'button', 'publish', 'closed', 'closed', '', 'field_677c03d452159', '', '', '2025-01-06 17:25:52', '2025-01-06 16:25:52', '', 239, 'https://vida.local/?post_type=acf-field&p=242', 2, 'acf-field', '', 0),
(243, 1, '2025-01-06 17:25:52', '2025-01-06 16:25:52', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:17:"allow_in_bindings";i:0;s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:1;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_677c03e65215a', '', '', '2025-01-06 17:25:52', '2025-01-06 16:25:52', '', 239, 'https://vida.local/?post_type=acf-field&p=243', 3, 'acf-field', '', 0),
(244, 1, '2025-01-06 17:30:49', '2025-01-06 16:30:49', '', 'helpdesk-hero-background', '', 'inherit', '', 'closed', '', 'helpdesk-hero-background', '', '', '2025-01-06 17:30:49', '2025-01-06 16:30:49', '', 22, 'https://vida.local/wp-content/uploads/2025/01/helpdesk-hero-background.jpg', 0, 'attachment', 'image/jpeg', 0),
(251, 1, '2025-01-06 18:20:46', '2025-01-06 17:20:46', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:14:"theme-settings";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Theme settings', 'theme-settings', 'publish', 'closed', 'closed', '', 'group_677c0ce6ae1f3', '', '', '2025-01-06 18:22:21', '2025-01-06 17:22:21', '', 0, 'https://vida.local/?post_type=acf-field-group&#038;p=251', 0, 'acf-field-group', '', 0),
(252, 1, '2025-01-06 18:20:46', '2025-01-06 17:20:46', 'a:9:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";b:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;s:8:"selected";i:0;}', 'Footer', 'footer', 'publish', 'closed', 'closed', '', 'field_677c0ce705d0b', '', '', '2025-01-06 18:20:46', '2025-01-06 17:20:46', '', 251, 'https://vida.local/?post_type=acf-field&p=252', 0, 'acf-field', '', 0),
(253, 1, '2025-01-06 18:20:46', '2025-01-06 17:20:46', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:3:"row";s:10:"sub_fields";a:0:{}}', 'Main', 'footer_main', 'publish', 'closed', 'closed', '', 'field_677c0d6f05d0d', '', '', '2025-01-06 18:20:46', '2025-01-06 17:20:46', '', 251, 'https://vida.local/?post_type=acf-field&p=253', 1, 'acf-field', '', 0),
(254, 1, '2025-01-06 18:20:46', '2025-01-06 17:20:46', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:17:"allow_in_bindings";i:0;}', 'Link VIDA', 'link_vida', 'publish', 'closed', 'closed', '', 'field_677c0d8505d0e', '', '', '2025-01-06 18:20:46', '2025-01-06 17:20:46', '', 253, 'https://vida.local/?post_type=acf-field&p=254', 0, 'acf-field', '', 0),
(255, 1, '2025-01-06 18:20:46', '2025-01-06 17:20:46', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:17:"allow_in_bindings";i:0;}', 'Link VHIO', 'link_vhio', 'publish', 'closed', 'closed', '', 'field_677c0d9405d0f', '', '', '2025-01-06 18:20:46', '2025-01-06 17:20:46', '', 253, 'https://vida.local/?post_type=acf-field&p=255', 1, 'acf-field', '', 0),
(256, 1, '2025-01-06 18:20:46', '2025-01-06 17:20:46', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:17:"allow_in_bindings";i:0;}', 'Link EU', 'link_eu', 'publish', 'closed', 'closed', '', 'field_677c0da005d10', '', '', '2025-01-06 18:20:46', '2025-01-06 17:20:46', '', 253, 'https://vida.local/?post_type=acf-field&p=256', 2, 'acf-field', '', 0),
(257, 1, '2025-01-06 18:20:46', '2025-01-06 17:20:46', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:1;s:4:"rows";i:4;s:11:"placeholder";s:0:"";s:9:"new_lines";s:7:"wpautop";}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_677c0dac05d11', '', '', '2025-01-06 18:22:21', '2025-01-06 17:22:21', '', 253, 'https://vida.local/?post_type=acf-field&#038;p=257', 3, 'acf-field', '', 0),
(258, 1, '2025-01-06 18:20:46', '2025-01-06 17:20:46', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Legal Text', 'footer_legal_text', 'publish', 'closed', 'closed', '', 'field_677c0dcc05d12', '', '', '2025-01-06 18:20:46', '2025-01-06 17:20:46', '', 251, 'https://vida.local/?post_type=acf-field&p=258', 2, 'acf-field', '', 0),
(259, 1, '2025-01-06 18:20:46', '2025-01-06 17:20:46', 'a:9:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";b:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;s:8:"selected";i:0;}', 'Social Media', 'social_media', 'publish', 'closed', 'closed', '', 'field_677c0e2205d13', '', '', '2025-01-06 18:20:46', '2025-01-06 17:20:46', '', 251, 'https://vida.local/?post_type=acf-field&p=259', 3, 'acf-field', '', 0),
(260, 1, '2025-01-06 18:20:46', '2025-01-06 17:20:46', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Twitter URL', 'rrss_twitter_url', 'publish', 'closed', 'closed', '', 'field_677c0f3505d14', '', '', '2025-01-06 18:20:46', '2025-01-06 17:20:46', '', 251, 'https://vida.local/?post_type=acf-field&p=260', 4, 'acf-field', '', 0),
(261, 1, '2025-01-06 18:20:46', '2025-01-06 17:20:46', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Instagram URL', 'rrss_instagram_url', 'publish', 'closed', 'closed', '', 'field_677c0f5505d15', '', '', '2025-01-06 18:20:46', '2025-01-06 17:20:46', '', 251, 'https://vida.local/?post_type=acf-field&p=261', 5, 'acf-field', '', 0),
(262, 1, '2025-01-06 18:20:46', '2025-01-06 17:20:46', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Globe URL', 'rrss_globe_url', 'publish', 'closed', 'closed', '', 'field_677c0f6905d16', '', '', '2025-01-06 18:20:46', '2025-01-06 17:20:46', '', 251, 'https://vida.local/?post_type=acf-field&p=262', 6, 'acf-field', '', 0),
(263, 1, '2025-01-06 18:20:46', '2025-01-06 17:20:46', 'a:9:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";b:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;s:8:"selected";i:0;}', '404', '404', 'publish', 'closed', 'closed', '', 'field_677c0fe105d17', '', '', '2025-01-06 18:20:46', '2025-01-06 17:20:46', '', 251, 'https://vida.local/?post_type=acf-field&p=263', 7, 'acf-field', '', 0),
(264, 1, '2025-01-06 18:20:46', '2025-01-06 17:20:46', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Title', '404_title', 'publish', 'closed', 'closed', '', 'field_677c0ff205d18', '', '', '2025-01-06 18:20:46', '2025-01-06 17:20:46', '', 251, 'https://vida.local/?post_type=acf-field&p=264', 8, 'acf-field', '', 0),
(265, 1, '2025-01-06 18:20:46', '2025-01-06 17:20:46', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:4:"rows";i:2;s:11:"placeholder";s:0:"";s:9:"new_lines";s:7:"wpautop";}', 'Text', '404_text', 'publish', 'closed', 'closed', '', 'field_677c105d05d19', '', '', '2025-01-06 18:20:46', '2025-01-06 17:20:46', '', 251, 'https://vida.local/?post_type=acf-field&p=265', 9, 'acf-field', '', 0),
(266, 1, '2025-01-06 18:20:46', '2025-01-06 17:20:46', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:17:"allow_in_bindings";i:0;}', 'Link', '404_link', 'publish', 'closed', 'closed', '', 'field_677c108d05d1a', '', '', '2025-01-06 18:20:46', '2025-01-06 17:20:46', '', 251, 'https://vida.local/?post_type=acf-field&p=266', 10, 'acf-field', '', 0),
(267, 1, '2025-01-06 18:20:46', '2025-01-06 17:20:46', 'a:9:{s:10:"aria-label";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";b:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;s:8:"selected";i:0;}', 'Literals', 'literals', 'publish', 'closed', 'closed', '', 'field_677c10b305d1b', '', '', '2025-01-06 18:20:46', '2025-01-06 17:20:46', '', 251, 'https://vida.local/?post_type=acf-field&p=267', 11, 'acf-field', '', 0),
(268, 1, '2025-01-06 18:20:46', '2025-01-06 17:20:46', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Read More', 'read_more', 'publish', 'closed', 'closed', '', 'field_677c10be05d1c', '', '', '2025-01-06 18:20:46', '2025-01-06 17:20:46', '', 251, 'https://vida.local/?post_type=acf-field&p=268', 12, 'acf-field', '', 0),
(269, 1, '2025-01-06 20:12:44', '2025-01-06 19:12:44', 'a:35:{s:9:"post_type";s:18:"associated-partner";s:22:"advanced_configuration";b:1;s:13:"import_source";s:0:"";s:11:"import_date";s:0:"";s:6:"labels";a:33:{s:4:"name";s:19:"Associated Partners";s:13:"singular_name";s:18:"Associated Partner";s:9:"menu_name";s:19:"Associated Partners";s:9:"all_items";s:25:"Todos Associated Partners";s:9:"edit_item";s:25:"Editar Associated Partner";s:9:"view_item";s:22:"Ver Associated Partner";s:10:"view_items";s:23:"Ver Associated Partners";s:12:"add_new_item";s:32:"Añadir nuevo Associated Partner";s:7:"add_new";s:32:"Añadir nuevo Associated Partner";s:8:"new_item";s:24:"Nuevo Associated Partner";s:17:"parent_item_colon";s:28:"Associated Partner superior:";s:12:"search_items";s:26:"Buscar Associated Partners";s:9:"not_found";s:40:"No se han encontrado associated partners";s:18:"not_found_in_trash";s:41:"No hay associated partners en la papelera";s:8:"archives";s:29:"Archivo de Associated Partner";s:10:"attributes";s:31:"Atributos de Associated Partner";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:16:"insert_into_item";s:30:"Insertar en associated partner";s:21:"uploaded_to_this_item";s:32:"Subido a este associated partner";s:17:"filter_items_list";s:36:"Filtrar lista de associated partners";s:14:"filter_by_date";s:37:"Filtrar associated partners por fecha";s:21:"items_list_navigation";s:47:"Navegación por la lista de Associated Partners";s:10:"items_list";s:28:"Lista de Associated Partners";s:14:"item_published";s:29:"Associated Partner publicado.";s:24:"item_published_privately";s:46:"Associated Partner publicado de forma privada.";s:22:"item_reverted_to_draft";s:39:"Associated Partner devuelto a borrador.";s:14:"item_scheduled";s:31:"Associated Partner programados.";s:12:"item_updated";s:31:"Associated Partner actualizado.";s:9:"item_link";s:27:"Enlace a Associated Partner";s:21:"item_link_description";s:34:"Un enlace a un associated partner.";}s:11:"description";s:0:"";s:6:"public";b:1;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:0;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"admin_menu_parent";s:0:"";s:17:"show_in_admin_bar";b:1;s:17:"show_in_nav_menus";b:1;s:12:"show_in_rest";b:1;s:9:"rest_base";s:0:"";s:14:"rest_namespace";s:5:"wp/v2";s:21:"rest_controller_class";s:24:"WP_REST_Posts_Controller";s:13:"menu_position";s:0:"";s:9:"menu_icon";a:2:{s:4:"type";s:9:"dashicons";s:5:"value";s:20:"dashicons-networking";}s:19:"rename_capabilities";b:0;s:24:"singular_capability_name";s:4:"post";s:22:"plural_capability_name";s:5:"posts";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:9:"thumbnail";i:2;s:13:"custom-fields";}s:10:"taxonomies";s:0:"";s:11:"has_archive";b:0;s:16:"has_archive_slug";s:0:"";s:7:"rewrite";a:4:{s:17:"permalink_rewrite";s:13:"post_type_key";s:10:"with_front";s:1:"1";s:5:"feeds";s:1:"0";s:5:"pages";s:1:"1";}s:9:"query_var";s:13:"post_type_key";s:14:"query_var_name";s:0:"";s:10:"can_export";b:1;s:16:"delete_with_user";b:0;s:20:"register_meta_box_cb";s:0:"";s:16:"enter_title_here";s:0:"";}', 'Associated Partners', 'associated-partners', 'publish', 'closed', 'closed', '', 'post_type_677c28e7c3c92', '', '', '2025-01-06 20:19:33', '2025-01-06 19:19:33', '', 0, 'https://vida.local/?post_type=acf-post-type&#038;p=269', 0, 'acf-post-type', '', 0),
(270, 1, '2025-01-06 20:15:38', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-01-06 20:15:38', '0000-00-00 00:00:00', '', 0, 'https://vida.local/?post_type=associated-partner&p=270', 0, 'associated-partner', '', 0),
(271, 1, '2025-01-06 20:17:43', '2025-01-06 19:17:43', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:18:"associated-partner";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Single Associated Partner', 'single-associated-partner', 'publish', 'closed', 'closed', '', 'group_677c2bed12c73', '', '', '2025-01-06 20:17:43', '2025-01-06 19:17:43', '', 0, 'https://vida.local/?post_type=acf-field-group&#038;p=271', 0, 'acf-field-group', '', 0),
(272, 1, '2025-01-06 20:17:43', '2025-01-06 19:17:43', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:3:"row";s:10:"sub_fields";a:0:{}}', 'Main', 'main', 'publish', 'closed', 'closed', '', 'field_677c2bed66a31', '', '', '2025-01-06 20:17:43', '2025-01-06 19:17:43', '', 271, 'https://vida.local/?post_type=acf-field&p=272', 0, 'acf-field', '', 0),
(273, 1, '2025-01-06 20:17:43', '2025-01-06 19:17:43', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:17:"allow_in_bindings";i:0;s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:1;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_677c2c0666a32', '', '', '2025-01-06 20:17:43', '2025-01-06 19:17:43', '', 272, 'https://vida.local/?post_type=acf-field&p=273', 0, 'acf-field', '', 0),
(274, 1, '2025-01-06 20:17:43', '2025-01-06 19:17:43', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Button URL', 'button_url', 'publish', 'closed', 'closed', '', 'field_677c2c2c66a33', '', '', '2025-01-06 20:17:43', '2025-01-06 19:17:43', '', 272, 'https://vida.local/?post_type=acf-field&p=274', 1, 'acf-field', '', 0),
(275, 1, '2025-01-06 20:18:45', '2025-01-06 19:18:45', '', 'FERO', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum', '', '', '2025-01-09 03:02:46', '2025-01-09 02:02:46', '', 0, 'https://vida.local/?post_type=associated-partner&#038;p=275', 1, 'associated-partner', '', 0),
(276, 1, '2025-01-06 20:18:28', '2025-01-06 19:18:28', '', 'associated-partners-logo', '', 'inherit', '', 'closed', '', 'associated-partners-logo', '', '', '2025-01-06 20:18:28', '2025-01-06 19:18:28', '', 275, 'https://vida.local/wp-content/uploads/2025/01/associated-partners-logo.png', 0, 'attachment', 'image/png', 0),
(277, 1, '2025-01-06 20:39:35', '2025-01-06 19:39:35', '', 'IBEC', '', 'publish', 'closed', 'closed', '', 'partner-2', '', '', '2025-01-09 03:07:13', '2025-01-09 02:07:13', '', 0, 'https://vida.local/?post_type=associated-partner&#038;p=277', 3, 'associated-partner', '', 0),
(278, 1, '2025-01-06 20:41:15', '2025-01-06 19:41:15', '', 'CRG-CERCA', '', 'publish', 'closed', 'closed', '', 'partner-nro-3', '', '', '2025-01-09 03:05:33', '2025-01-09 02:05:33', '', 0, 'https://vida.local/?post_type=associated-partner&#038;p=278', 2, 'associated-partner', '', 0),
(279, 1, '2025-01-06 20:41:52', '2025-01-06 19:41:52', '', 'IRB Barcelona', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-dolor-sit-amet', '', '', '2025-01-09 03:12:48', '2025-01-09 02:12:48', '', 0, 'https://vida.local/?post_type=associated-partner&#038;p=279', 4, 'associated-partner', '', 0),
(280, 2, '2025-01-07 00:03:23', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', '', '', '', '', '', '', '2025-01-07 00:03:23', '0000-00-00 00:00:00', '', 0, 'https://vida.local/?p=280', 0, 'post', '', 0),
(284, 2, '2025-01-09 03:01:58', '2025-01-09 02:01:58', '', 'Captura de pantalla 2025-01-09 a las 3.01.46', '', 'inherit', '', 'closed', '', 'captura-de-pantalla-2025-01-09-a-las-3-01-46', '', '', '2025-01-09 03:01:58', '2025-01-09 02:01:58', '', 275, 'https://vida.local/wp-content/uploads/2025/01/Captura-de-pantalla-2025-01-09-a-las-3.01.46.png', 0, 'attachment', 'image/png', 0),
(286, 2, '2025-01-09 03:04:58', '2025-01-09 02:04:58', '', 'logo-crg', '', 'inherit', '', 'closed', '', 'logo-crg', '', '', '2025-01-09 03:04:58', '2025-01-09 02:04:58', '', 278, 'https://vida.local/wp-content/uploads/2025/01/logo-crg.png', 0, 'attachment', 'image/png', 0),
(288, 2, '2025-01-09 03:07:09', '2025-01-09 02:07:09', '', 'login', '', 'inherit', '', 'closed', '', 'login', '', '', '2025-01-09 03:07:09', '2025-01-09 02:07:09', '', 277, 'https://vida.local/wp-content/uploads/2025/01/login.png', 0, 'attachment', 'image/png', 0),
(290, 2, '2025-01-09 03:12:44', '2025-01-09 02:12:44', '', 'Captura de pantalla 2025-01-09 a las 3.12.20', '', 'inherit', '', 'closed', '', 'captura-de-pantalla-2025-01-09-a-las-3-12-20', '', '', '2025-01-09 03:12:44', '2025-01-09 02:12:44', '', 279, 'https://vida.local/wp-content/uploads/2025/01/Captura-de-pantalla-2025-01-09-a-las-3.12.20.png', 0, 'attachment', 'image/png', 0),
(304, 3, '2025-01-09 03:48:15', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', '', '', '', '', '', '', '2025-01-09 03:48:15', '0000-00-00 00:00:00', '', 0, 'https://vida.local/?p=304', 0, 'post', '', 0),
(332, 3, '2025-01-09 16:26:31', '2025-01-09 15:26:31', '', 'vhioVida_guideApplicants', '', 'inherit', '', 'closed', '', 'vhiovida_guideapplicants', '', '', '2025-01-09 16:26:31', '2025-01-09 15:26:31', '', 0, 'https://vida.local/wp-content/uploads/2025/01/vhioVida_guideApplicants.pdf', 0, 'attachment', 'application/pdf', 0) ;

#
# Fin de los contenidos de datos de la tabla `vhvd_2412_posts`
# --------------------------------------------------------



#
# Eliminar cualquier tabla existente `vhvd_2412_pp_activity_logs`
#

DROP TABLE IF EXISTS `vhvd_2412_pp_activity_logs`;


#
# Estructura de la tabla de la tabla `vhvd_2412_pp_activity_logs`
#

CREATE TABLE `vhvd_2412_pp_activity_logs` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `ip` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `browser` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Contenido de la tabla `vhvd_2412_pp_activity_logs`
#

#
# Fin de los contenidos de datos de la tabla `vhvd_2412_pp_activity_logs`
# --------------------------------------------------------



#
# Eliminar cualquier tabla existente `vhvd_2412_term_relationships`
#

DROP TABLE IF EXISTS `vhvd_2412_term_relationships`;


#
# Estructura de la tabla de la tabla `vhvd_2412_term_relationships`
#

CREATE TABLE `vhvd_2412_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Contenido de la tabla `vhvd_2412_term_relationships`
#
INSERT INTO `vhvd_2412_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(25, 2, 0),
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0) ;

#
# Fin de los contenidos de datos de la tabla `vhvd_2412_term_relationships`
# --------------------------------------------------------



#
# Eliminar cualquier tabla existente `vhvd_2412_term_taxonomy`
#

DROP TABLE IF EXISTS `vhvd_2412_term_taxonomy`;


#
# Estructura de la tabla de la tabla `vhvd_2412_term_taxonomy`
#

CREATE TABLE `vhvd_2412_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Contenido de la tabla `vhvd_2412_term_taxonomy`
#
INSERT INTO `vhvd_2412_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5) ;

#
# Fin de los contenidos de datos de la tabla `vhvd_2412_term_taxonomy`
# --------------------------------------------------------



#
# Eliminar cualquier tabla existente `vhvd_2412_termmeta`
#

DROP TABLE IF EXISTS `vhvd_2412_termmeta`;


#
# Estructura de la tabla de la tabla `vhvd_2412_termmeta`
#

CREATE TABLE `vhvd_2412_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Contenido de la tabla `vhvd_2412_termmeta`
#

#
# Fin de los contenidos de datos de la tabla `vhvd_2412_termmeta`
# --------------------------------------------------------



#
# Eliminar cualquier tabla existente `vhvd_2412_terms`
#

DROP TABLE IF EXISTS `vhvd_2412_terms`;


#
# Estructura de la tabla de la tabla `vhvd_2412_terms`
#

CREATE TABLE `vhvd_2412_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  `term_order` int DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Contenido de la tabla `vhvd_2412_terms`
#
INSERT INTO `vhvd_2412_terms` ( `term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0, 0),
(2, 'Primary Menu', 'primary-menu', 0, 0) ;

#
# Fin de los contenidos de datos de la tabla `vhvd_2412_terms`
# --------------------------------------------------------



#
# Eliminar cualquier tabla existente `vhvd_2412_usermeta`
#

DROP TABLE IF EXISTS `vhvd_2412_usermeta`;


#
# Estructura de la tabla de la tabla `vhvd_2412_usermeta`
#

CREATE TABLE `vhvd_2412_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Contenido de la tabla `vhvd_2412_usermeta`
#
INSERT INTO `vhvd_2412_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'vhvd.dev'),
(2, 1, 'first_name', 'VIDA'),
(3, 1, 'last_name', 'Development'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'vhvd_2412_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'vhvd_2412_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'vhvd_2412_dashboard_quick_press_last_post_id', '35'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:12:"37.222.154.0";}'),
(19, 1, 'vhvd_2412_persisted_preferences', 'a:3:{s:4:"core";a:1:{s:26:"isComplementaryAreaVisible";b:1;}s:14:"core/edit-post";a:1:{s:12:"welcomeGuide";b:0;}s:9:"_modified";s:24:"2024-12-29T00:45:31.061Z";}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(22, 1, 'session_tokens', 'a:1:{s:64:"e2ce7e7e46101b737a33cd370ede703acbf14e6c31bcda961fa8b614ac8fce87";a:4:{s:10:"expiration";i:1736665640;s:2:"ip";s:14:"37.222.154.187";s:2:"ua";s:80:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:134.0) Gecko/20100101 Firefox/134.0";s:5:"login";i:1736492840;}}'),
(23, 1, 'manageedit-acf-ui-options-pagecolumnshidden', 'a:1:{i:0;s:7:"acf-key";}'),
(24, 1, 'acf_user_settings', 'a:2:{s:23:"options-pages-first-run";b:1;s:19:"post-type-first-run";b:1;}'),
(25, 1, 'closedpostboxes_acf-ui-options-page', 'a:0:{}'),
(26, 1, 'metaboxhidden_acf-ui-options-page', 'a:2:{i:0;s:21:"acf-advanced-settings";i:1;s:7:"slugdiv";}'),
(27, 1, 'vhvd_2412_user-settings', 'libraryContent=browse&editor=tinymce&imgsize=full'),
(28, 1, 'vhvd_2412_user-settings-time', '1736192508'),
(29, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:"acf-key";}'),
(30, 1, 'closedpostboxes_acf-post-type', 'a:0:{}'),
(31, 1, 'metaboxhidden_acf-post-type', 'a:1:{i:0;s:7:"slugdiv";}'),
(32, 2, 'nickname', 'vhvd.main'),
(33, 2, 'first_name', 'VIDA'),
(34, 2, 'last_name', 'User'),
(35, 2, 'description', ''),
(36, 2, 'rich_editing', 'true'),
(37, 2, 'syntax_highlighting', 'true'),
(38, 2, 'comment_shortcuts', 'false'),
(39, 2, 'admin_color', 'fresh'),
(40, 2, 'use_ssl', '0'),
(41, 2, 'show_admin_bar_front', 'true'),
(42, 2, 'locale', ''),
(43, 2, 'vhvd_2412_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(44, 2, 'vhvd_2412_user_level', '10'),
(45, 2, 'dismissed_wp_pointers', ''),
(47, 2, 'vhvd_2412_dashboard_quick_press_last_post_id', '280'),
(48, 2, 'community-events-location', 'a:1:{s:2:"ip";s:10:"2.152.72.0";}'),
(49, 2, 'session_tokens', 'a:1:{s:64:"b8d3a2ae6b6a1649ec8bb9a37eac94e0d2a4fbf74a1dcacc5635b530ec6a063f";a:4:{s:10:"expiration";i:1736615306;s:2:"ip";s:12:"2.152.72.235";s:2:"ua";s:117:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36";s:5:"login";i:1736442506;}}'),
(50, 2, 'vhvd_2412_persisted_preferences', 'a:3:{s:4:"core";a:1:{s:26:"isComplementaryAreaVisible";b:1;}s:14:"core/edit-post";a:2:{s:12:"welcomeGuide";b:0;s:23:"metaBoxesMainOpenHeight";i:568;}s:9:"_modified";s:24:"2025-01-09T01:51:02.690Z";}'),
(51, 2, 'vhvd_2412_user-settings', 'editor=tinymce&libraryContent=browse'),
(52, 2, 'vhvd_2412_user-settings-time', '1736388861'),
(53, 3, 'nickname', 'vhio.content'),
(54, 3, 'first_name', 'Content'),
(55, 3, 'last_name', 'VHIO'),
(56, 3, 'description', ''),
(57, 3, 'rich_editing', 'true'),
(58, 3, 'syntax_highlighting', 'true'),
(59, 3, 'comment_shortcuts', 'false'),
(60, 3, 'admin_color', 'fresh'),
(61, 3, 'use_ssl', '0'),
(62, 3, 'show_admin_bar_front', 'true'),
(63, 3, 'locale', ''),
(64, 3, 'vhvd_2412_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(65, 3, 'vhvd_2412_user_level', '7'),
(66, 3, 'dismissed_wp_pointers', ''),
(68, 3, 'vhvd_2412_dashboard_quick_press_last_post_id', '304'),
(69, 3, 'community-events-location', 'a:1:{s:2:"ip";s:11:"195.77.67.0";}'),
(70, 3, 'session_tokens', 'a:2:{s:64:"9f0e5a3424166cd9cd15dd1c43ddb7a36f87b89b2af39241d2490a2c43e4cc31";a:4:{s:10:"expiration";i:1737627830;s:2:"ip";s:11:"84.77.83.99";s:2:"ua";s:80:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:134.0) Gecko/20100101 Firefox/134.0";s:5:"login";i:1736418230;}s:64:"e03c2f4d7a0add14c94ab86638db6b9cd0276eacda0e231cf64deb7ece3a9ccd";a:4:{s:10:"expiration";i:1736606415;s:2:"ip";s:13:"195.77.67.210";s:2:"ua";s:80:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko/20100101 Firefox/133.0";s:5:"login";i:1736433615;}}'),
(71, 3, 'vhvd_2412_persisted_preferences', 'a:3:{s:4:"core";a:1:{s:26:"isComplementaryAreaVisible";b:1;}s:14:"core/edit-post";a:2:{s:12:"welcomeGuide";b:0;s:23:"metaBoxesMainOpenHeight";i:572;}s:9:"_modified";s:24:"2025-01-09T15:14:13.405Z";}'),
(72, 3, 'vhvd_2412_user-settings', 'editor=tinymce&libraryContent=browse'),
(73, 3, 'vhvd_2412_user-settings-time', '1736437578') ;

#
# Fin de los contenidos de datos de la tabla `vhvd_2412_usermeta`
# --------------------------------------------------------



#
# Eliminar cualquier tabla existente `vhvd_2412_users`
#

DROP TABLE IF EXISTS `vhvd_2412_users`;


#
# Estructura de la tabla de la tabla `vhvd_2412_users`
#

CREATE TABLE `vhvd_2412_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Contenido de la tabla `vhvd_2412_users`
#
INSERT INTO `vhvd_2412_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'vhvd.dev', '$P$Bj5nKQhMjV/tIky/u.27lyK8l4HCm0/', 'vhvd-dev', 'dev@the-storytellers.es', 'https://vida.local', '2024-12-28 16:37:18', '', 0, 'vhvd.dev'),
(2, 'vhvd.main', '$P$BdvgpnvM2mBGyEyWF8PhS7eywawpKr.', 'vhvd-main', 'cecil@the-storytellers.es', '', '2025-01-06 20:28:07', '', 0, 'VIDA User'),
(3, 'vhio.content', '$P$BvTt5gjyyU/8julqclJD2Pur/O9znn0', 'vhio-content', 'paularodriguez@vhio.net', '', '2025-01-09 02:47:25', '', 0, 'Content VHIO') ;

#
# Fin de los contenidos de datos de la tabla `vhvd_2412_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

