# Migración de la base de datos MySQL de WordPress
#
# Generado: Friday 3. January 2025 11:35 UTC
# Hostname: localhost
# Base de datos: `vida`
# URL: //vida.local
# Path: D:\\work\\vida\\code\\wordpress
# Tables: vhvd_2412_commentmeta, vhvd_2412_comments, vhvd_2412_links, vhvd_2412_options, vhvd_2412_postmeta, vhvd_2412_posts, vhvd_2412_term_relationships, vhvd_2412_term_taxonomy, vhvd_2412_termmeta, vhvd_2412_terms, vhvd_2412_usermeta, vhvd_2412_users
# Table Prefix: vhvd_2412_
# Post Types: revision, nav_menu_item, page, post, wp_navigation
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
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
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
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
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
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
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
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=488 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Contenido de la tabla `vhvd_2412_options`
#
INSERT INTO `vhvd_2412_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:10:{i:1735904239;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1735922239;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1735922272;a:3:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:21:"wp_update_user_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1735922277;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1735925838;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1735927638;a:1:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1735929438;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1736008702;a:1:{s:30:"wp_delete_temp_updater_backups";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1736095039;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'on'),
(2, 'siteurl', 'https://vida.wearethetellers.com', 'on'),
(3, 'home', 'https://vida.wearethetellers.com', 'on'),
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
(30, 'rewrite_rules', 'a:95:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:13:"favicon\\.ico$";s:19:"index.php?favicon=1";s:12:"sitemap\\.xml";s:24:"index.php??sitemap=index";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=9&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:1:{i:0;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'on'),
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
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
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
(105, 'user_count', '1', 'off'),
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
(351, 'recently_activated', 'a:0:{}', 'off'),
(374, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1735904132;}', 'off') ;

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
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Contenido de la tabla `vhvd_2412_postmeta`
#
INSERT INTO `vhvd_2412_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(13, 9, '_edit_lock', '1735433208:1'),
(14, 11, '_edit_lock', '1735873773:1'),
(15, 13, '_edit_lock', '1735622805:1'),
(16, 15, '_edit_lock', '1735861168:1'),
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
(62, 22, '_edit_lock', '1735871598:1'),
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
(121, 30, '_edit_lock', '1735903912:1') ;

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
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Contenido de la tabla `vhvd_2412_posts`
#
INSERT INTO `vhvd_2412_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 0, '2024-12-28 17:37:24', '2024-12-28 16:37:24', '<!-- wp:page-list /-->', 'Navegación', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-12-28 17:37:24', '2024-12-28 16:37:24', '', 0, 'http://vida.wearethetellers.com/2024/12/28/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2024-12-28 17:37:57', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-12-28 17:37:57', '0000-00-00 00:00:00', '', 0, 'https://vida.wearethetellers.com/?p=5', 0, 'post', '', 0),
(9, 1, '2024-12-29 01:46:06', '2024-12-29 00:46:06', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2024-12-29 01:46:06', '2024-12-29 00:46:06', '', 0, 'https://vida.wearethetellers.com/?page_id=9', 0, 'page', '', 0),
(11, 1, '2024-12-29 01:47:06', '2024-12-29 00:47:06', '', 'The Project', '', 'publish', 'closed', 'closed', '', 'the-project', '', '', '2025-01-03 04:09:29', '2025-01-03 03:09:29', '', 0, 'https://vida.wearethetellers.com/?page_id=11', 0, 'page', '', 0),
(13, 1, '2024-12-29 01:47:21', '2024-12-29 00:47:21', '', 'Partners', '', 'publish', 'closed', 'closed', '', 'partners', '', '', '2024-12-31 06:26:42', '2024-12-31 05:26:42', '', 0, 'https://vida.wearethetellers.com/?page_id=13', 0, 'page', '', 0),
(15, 1, '2024-12-29 01:47:34', '2024-12-29 00:47:34', '', 'Recruitment', '', 'publish', 'closed', 'closed', '', 'recruitment', '', '', '2025-01-03 00:39:25', '2025-01-02 23:39:25', '', 0, 'https://vida.wearethetellers.com/?page_id=15', 0, 'page', '', 0),
(17, 1, '2024-12-29 01:49:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-12-29 01:49:53', '0000-00-00 00:00:00', '', 0, 'https://vida.wearethetellers.com/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2024-12-29 01:49:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-12-29 01:49:53', '0000-00-00 00:00:00', '', 0, 'https://vida.wearethetellers.com/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2024-12-29 01:49:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-12-29 01:49:53', '0000-00-00 00:00:00', '', 0, 'https://vida.wearethetellers.com/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2024-12-29 01:49:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-12-29 01:49:53', '0000-00-00 00:00:00', '', 0, 'https://vida.wearethetellers.com/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2024-12-29 01:50:25', '0000-00-00 00:00:00', '', 'About', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-12-29 01:50:25', '0000-00-00 00:00:00', '', 0, 'https://vida.wearethetellers.com/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2024-12-29 01:50:49', '2024-12-29 00:50:49', '', 'Helpdesk', '', 'publish', 'closed', 'closed', '', 'helpdesk', '', '', '2025-01-03 03:35:40', '2025-01-03 02:35:40', '', 0, 'https://vida.wearethetellers.com/?page_id=22', 0, 'page', '', 0),
(24, 1, '2024-12-29 01:50:59', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-12-29 01:50:59', '0000-00-00 00:00:00', '', 0, 'https://vida.wearethetellers.com/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2024-12-29 01:52:26', '2024-12-29 00:52:22', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2024-12-29 01:52:26', '2024-12-29 00:52:26', '', 0, 'https://vida.wearethetellers.com/?p=25', 5, 'nav_menu_item', '', 0),
(26, 1, '2024-12-29 01:52:26', '2024-12-29 00:52:22', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2024-12-29 01:52:26', '2024-12-29 00:52:26', '', 0, 'https://vida.wearethetellers.com/?p=26', 3, 'nav_menu_item', '', 0),
(27, 1, '2024-12-29 01:52:26', '2024-12-29 00:52:22', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2024-12-29 01:52:26', '2024-12-29 00:52:26', '', 0, 'https://vida.wearethetellers.com/?p=27', 4, 'nav_menu_item', '', 0),
(28, 1, '2024-12-29 01:52:26', '2024-12-29 00:52:21', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2024-12-29 01:52:26', '2024-12-29 00:52:26', '', 0, 'https://vida.wearethetellers.com/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2024-12-29 01:52:26', '2024-12-29 00:52:21', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2024-12-29 01:52:26', '2024-12-29 00:52:26', '', 0, 'https://vida.wearethetellers.com/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2025-01-03 11:35:50', '2025-01-03 10:35:50', '<!-- wp:paragraph -->\n<p>In accordance with the provisions of article 22.2 of Law 34/2002, of July 11, on Services of the Information Society and Electronic Commerce in force, VHIO must comply with the obligation to inform about cookies that it uses and its purposes.&nbsp;<br>This website uses cookies and/or similar technologies that store and retrieve information when you browse. Cookies allow a web page, among other things, to store and retrieve information about the browsing habits of a User or their equipment and, depending on the information it contains and the way they use their equipment, they can be used to recognize the User.&nbsp;<br>Cookies are essential for the functioning of the Internet, providing innumerable advantages in the provision of interactive services, facilitating the User’s navigation and usability of our website.&nbsp;<br>The User can modify the customised configuration through the CookieBot plugin integrated in the project.&nbsp;<br>The information we provide below will help you understand the different types of cookies:&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Types of cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>ACCORDING TO THE ENTITY THAT MANAGES THEM </strong><br><br>OWN COOKIES <br>Those that are sent to the user’s terminal equipment from a computer or domain managed by the editor itself and from which the service requested by the user is provided. <br><br>THIRD PARTY COOKIES <br>Those that are sent to the user’s terminal equipment from a computer or domain that is not managed by the editor, but by another entity that processes the data obtained through the cookies. <br><strong><br>ACCORDING TO THE PERIOD OF TIME THEY REMAIN ACTIVATED </strong><br><br>SESSION COOKIES <br>Those designed to collect and store data while the user accesses a web page. They are normally used to store information that is useful only for the provision of the service requested by the user on a single occasion (for example, a list of products purchased) and disappear at the end of the session. <br><br>PERSISTENT COOKIES <br>Those in which the data remains stored in the terminal and can be accessed and processed during a period defined by the person responsible for the cookie, which can range from a few minutes to several years. <br><br><strong>ACCORDING TO ITS PURPOSE </strong><br><br>TECHNICAL COOKIES <br>Those that allow the user to navigate through a web page, platform or application, and to use the different options or services that exist in it.<br><br>PERSONALIZATION COOKIES <br>Those that allow to apply specific conditions for the user’s navigation through the website (eg language). <br><br>ANALYSIS COOKIES <br>They are those pertaining to the users of the websites to which the cookie in question is linked, including the quantification of the impacts of the advertisements. The information collected through this type of cookie is used to measure the activity of the websites, application or platform, in order to introduce improvements based on the analysis of data related to the activity of the users of the service. <br><br>ADVERTISEMENT COOKIES <br>They allow the editor to include advertisements on the website, depending on the content of the website itself. <br><br>BEHAVIORAL ADVERTISING COOKIES <br>Those that store information on the behavior of users obtained through the continuous observation of their browsing habits, which allows the development of a specific profile to display advertising based on it. <br>Additionally, VHIO informs in more detail about the cookies it uses, the specific use or purpose, the retention periods, as well as the possible International Transfers of data of each cookie used:<br><br><br>OWN COOKIES Type Technical Personalization Analysis Advertising / Behavioral Advertising Owner Cookie <br>Purpose Retention <br><br>THIRD PARTY COOKIES Type Technical Personalization Analysis Advertising / Behavioral Advertising Owner Cookie Purpose Retention <br>You can find out about international transfers to third countries that, where appropriate, are made by THIRD PARTIES, identified in this cookie policy, in their corresponding policies (click on the cookie owner).<br><br>VHIO provides more comprehensive information on international transfers derived from the use of its own cookies: </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">International transfers</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Owner Cookie Country of transfer Regime applied&nbsp;<br><br>Keep in mind that, if you accept third-party cookies, you must delete them from the browser options or from the system offered by the third party itself.&nbsp;<br><br>Below, we provide you with the links of various browsers, through which you can modify your browser settings regarding the use of cookies:&nbsp;<br><br>Firefox: http://support.mozilla.org/es/kb/habilitar-y-deshabilitar-cookies-que-los-sitios-we&nbsp;<br><br>Chrome: http://support.google.com/chrome/bin/answer.py?hl=es&amp;answer=95647&nbsp;<br><br>Internet Explorer: http://windows.microsoft.com/es-es/internet-explorer/delete-manage-cookies#ie=ie-10&nbsp;<br><br>Microsoft Edge: https://support.microsoft.com/es-es/microsoft-edge/eliminar-las-cookies-en-microsoft-edge-63947406-40ac-c3b8-57b9-2a946a29ae09&nbsp;<br><br>Safari: https://support.apple.com/kb/ph17191?locale=es_ES&nbsp;<br>Opera: https://help.opera.com/en/latest/web-preferences/#cookies&nbsp;<br><br>To learn more about the processing of personal data, we recommend that you visit our “Privacy Policy” section.&nbsp;<br>Last update: July 27, 2021&nbsp;</p>\n<!-- /wp:paragraph -->', 'Cookies Policy', '', 'publish', 'closed', 'closed', '', 'cookies-policy', '', '', '2025-01-03 12:19:11', '2025-01-03 11:19:11', '', 0, 'https://vida.wearethetellers.com/?page_id=30', 0, 'page', '', 0) ;

#
# Fin de los contenidos de datos de la tabla `vhvd_2412_posts`
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
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
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
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
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
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Contenido de la tabla `vhvd_2412_terms`
#
INSERT INTO `vhvd_2412_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Primary Menu', 'primary-menu', 0) ;

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
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


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
(17, 1, 'vhvd_2412_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'vhvd_2412_persisted_preferences', 'a:3:{s:4:"core";a:1:{s:26:"isComplementaryAreaVisible";b:1;}s:14:"core/edit-post";a:1:{s:12:"welcomeGuide";b:0;}s:9:"_modified";s:24:"2024-12-29T00:45:31.061Z";}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(22, 1, 'session_tokens', 'a:1:{s:64:"aa8c6fee447f56158e1daf0d7c3af3e8628719c9c068b5dd92d27b6f1ea662d9";a:4:{s:10:"expiration";i:1736033941;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:80:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko/20100101 Firefox/133.0";s:5:"login";i:1735861141;}}') ;

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
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Contenido de la tabla `vhvd_2412_users`
#
INSERT INTO `vhvd_2412_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'vhvd.dev', '$P$Bj5nKQhMjV/tIky/u.27lyK8l4HCm0/', 'vhvd-dev', 'dev@the-storytellers.es', 'https://vida.wearethetellers.com', '2024-12-28 16:37:18', '', 0, 'vhvd.dev') ;

#
# Fin de los contenidos de datos de la tabla `vhvd_2412_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

