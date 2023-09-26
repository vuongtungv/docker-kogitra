/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : devlaptop

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 12/08/2023 15:33:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (2, '2020_06_26_085522_create_users_table', 1);
INSERT INTO `migrations` VALUES (3, '2020_12_09_161528_create_table_tv_categories_news', 1);
INSERT INTO `migrations` VALUES (4, '2020_12_09_161552_create_table_tv_news', 1);
INSERT INTO `migrations` VALUES (5, '2020_12_09_163735_create_table_tv_contact_table', 1);
INSERT INTO `migrations` VALUES (6, '2021_09_06_113821_create_table_tv_menus_group_table', 2);
INSERT INTO `migrations` VALUES (7, '2021_09_06_113904_create_table_tv_menus_table', 2);
INSERT INTO `migrations` VALUES (8, '2021_09_12_095230_create_table_tv_categories_banners', 3);
INSERT INTO `migrations` VALUES (9, '2021_09_12_095405_create_table_tv_banners', 3);
INSERT INTO `migrations` VALUES (10, '2021_09_12_101215_table_update_tv_menus', 4);
INSERT INTO `migrations` VALUES (11, '2021_09_12_135337_update_columns_tv_banners', 5);
INSERT INTO `migrations` VALUES (12, '2021_09_19_153229_create_table_tv_config', 6);
INSERT INTO `migrations` VALUES (13, '2021_09_22_161549_create_table_tv_brands_table', 7);
INSERT INTO `migrations` VALUES (14, '2021_10_07_164554_create_table_tv_product_color_table', 8);
INSERT INTO `migrations` VALUES (15, '2021_10_07_164745_create_table_tv_product_size_table', 8);
INSERT INTO `migrations` VALUES (16, '2021_10_07_164804_create_table_tv_product_style_table', 8);
INSERT INTO `migrations` VALUES (17, '2021_10_10_081855_create_table_tv_product_category', 9);
INSERT INTO `migrations` VALUES (18, '2021_10_10_082751_create_table_tv_product', 9);
INSERT INTO `migrations` VALUES (19, '2021_10_10_084026_create_table_tv_product_option', 9);
INSERT INTO `migrations` VALUES (20, '2021_10_10_084044_create_table_tv_product_image', 9);
INSERT INTO `migrations` VALUES (21, '2021_10_10_084128_create_table_tv_product_style_size_color', 9);
INSERT INTO `migrations` VALUES (22, '2021_12_15_090627_update_tv_product_table', 10);
INSERT INTO `migrations` VALUES (23, '2021_12_15_092934_create_table_tv_product_table', 11);
INSERT INTO `migrations` VALUES (24, '2021_12_15_094409_create_table_tv_product_table', 12);
INSERT INTO `migrations` VALUES (25, '2021_12_15_094738_create_table_tv_product_table', 13);
INSERT INTO `migrations` VALUES (26, '2021_12_15_125122_create_table_tv_product_option_table', 14);
INSERT INTO `migrations` VALUES (27, '2021_12_16_032709_create_table_tv_product_image_table', 15);
INSERT INTO `migrations` VALUES (29, '2021_12_26_060223_create_table_tv_product_image_table', 16);
INSERT INTO `migrations` VALUES (30, '2021_12_26_060427_create_table_tv_product_image_table', 17);
INSERT INTO `migrations` VALUES (31, '2021_12_16_042703_create_table_tv_product_table', 18);

-- ----------------------------
-- Table structure for tv_banners
-- ----------------------------
DROP TABLE IF EXISTS `tv_banners`;
CREATE TABLE `tv_banners`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `ordering` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `category_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tv_banners
-- ----------------------------
INSERT INTO `tv_banners` VALUES (1, 'The Lookbook', 'the-lookbook', '<p>New Collection</p>\r\n\r\n<p>Girl&#39;s T-shirt</p>', NULL, '/images/banners/banners2021/9/12/1631459495_slide41.jpg', 1, 1, '2021-09-12 15:11:35', '2021-09-12 15:11:35', NULL, '1', 'Banner Home', '_self');
INSERT INTO `tv_banners` VALUES (2, 'New arrivals', 'new-arrivals', '<h1>Deal Of Day<br />\r\nStore Items</h1>', NULL, '/images/banners/banners2021/9/16/original/1631797350_slide42.jpg', 1, 3, '2021-09-12 15:47:26', '2021-09-16 13:14:39', NULL, '1', 'Banner Home', '_self');
INSERT INTO `tv_banners` VALUES (3, 'Handpick Items', 'handpick-items', '<h1>Best Seller<br />\r\nGrow a Clothes!</h1>', NULL, '/images/banners/banners2021/9/16/original/1631797359_slide43.jpg', 1, 2, '2021-09-12 15:48:45', '2021-09-16 13:15:09', NULL, '1', 'Banner Home', '_self');
INSERT INTO `tv_banners` VALUES (4, 'New arrivals', 'new-arrivals', '<p>Check Out The Lastest</p>', NULL, '/images/banners/banners2021/9/16/original/1631798438_banner4-41.jpg', 1, 0, '2021-09-16 13:20:38', '2021-09-25 04:30:02', NULL, '2', 'New arrivals', '_self');
INSERT INTO `tv_banners` VALUES (5, 'Designer T-shirt', 'designer-t-shirt', '<p>Adipiscing elitet</p>', NULL, '/images/banners/banners2021/9/25/original/1632544116_banner4-6.jpg', 1, 1, '2021-09-25 04:28:37', '2021-09-25 04:29:51', NULL, '3', 'Banner Best selling', '_self');
INSERT INTO `tv_banners` VALUES (6, 'Fashion Clothes', 'fashion-clothes', '<p>Cras pulvinar</p>', NULL, '/images/banners/banners2021/9/25/original/1632544153_banner4-7.jpg', 1, 2, '2021-09-25 04:29:14', '2021-09-25 04:29:14', NULL, '3', 'Banner Best selling', '_self');
INSERT INTO `tv_banners` VALUES (7, 'New Collection', 'new-collection', NULL, NULL, '/images/banners/banners2021/10/2/original/1633171296_banner41.jpg', 1, 1, '2021-10-02 10:41:37', '2021-10-02 10:41:37', NULL, '4', 'New Collection', '_self');
INSERT INTO `tv_banners` VALUES (8, 'With style', 'with-style', NULL, NULL, '/images/banners/banners2021/10/2/original/1633171350_banner42.jpg', 1, NULL, '2021-10-02 10:42:31', '2021-10-02 10:42:31', NULL, '5', 'With style', '_self');
INSERT INTO `tv_banners` VALUES (9, 'Kid set', 'kid-set', NULL, NULL, '/images/banners/banners2021/10/2/original/1633171377_banner43.jpg', 1, 1, '2021-10-02 10:42:57', '2021-10-02 10:42:57', NULL, '6', 'Set Style', '_self');
INSERT INTO `tv_banners` VALUES (10, 'Shirt', 'shirt', NULL, NULL, '/images/banners/banners2021/10/2/original/1633171406_banner44.jpg', 1, 2, '2021-10-02 10:43:26', '2021-10-02 10:43:26', NULL, '6', 'Set Style', '_self');

-- ----------------------------
-- Table structure for tv_brands
-- ----------------------------
DROP TABLE IF EXISTS `tv_brands`;
CREATE TABLE `tv_brands`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(4) NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `ordering` int(11) NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tv_brands
-- ----------------------------
INSERT INTO `tv_brands` VALUES (1, 'Chanel', 'chanel', 'https://www.chanel.com/us/', '<p>Chanel</p>', 1, NULL, NULL, '/images/brands/2021/9/22/original/1632329582_png-clipart-chanel-chanel-logo.png', '_self', '2021-09-22 16:53:02', '2021-09-22 16:53:02');
INSERT INTO `tv_brands` VALUES (2, 'Valentino', 'valentino', 'https://www.valentino.com/en-vn', '<p>https://www.valentino.com/en-vn</p>', 1, NULL, NULL, '/images/brands/2021/9/23/original/1632414653_768px-valentino_logo.svg.png', '_self', '2021-09-23 16:30:53', '2021-09-23 16:30:53');
INSERT INTO `tv_brands` VALUES (3, 'Louis Vuitton', 'louis-vuitton', 'https://eu.louisvuitton.com/eng-e1/homepage', '<p>https://eu.louisvuitton.com/eng-e1/homepage</p>', 1, NULL, NULL, '/images/brands/2021/9/23/original/1632414699_png-clipart-louis-vuitton-maison-vendome-handbag-brand-louis-vuitton-atlanta-lenox-square-louıs-vuitton-text-trademark.png', '_self', '2021-09-23 16:31:39', '2021-09-23 16:31:39');
INSERT INTO `tv_brands` VALUES (4, 'Gucci', 'gucci', 'https://www.gucci.com/us/en/', '<p>https://www.gucci.com/us/en/</p>', 1, NULL, NULL, '/images/brands/2021/9/23/original/1632414729_gucci_png19.png', '_self', '2021-09-23 16:32:10', '2021-09-23 16:32:10');
INSERT INTO `tv_brands` VALUES (5, 'Hermes', 'hermes', 'https://www.hermes.com/us/en/', '<p>https://www.hermes.com/us/en/</p>', 1, NULL, NULL, '/images/brands/2021/9/23/original/1632414786_hermes_logo_transparent.png', '_self', '2021-09-23 16:33:07', '2021-09-23 16:33:07');

-- ----------------------------
-- Table structure for tv_categories_banners
-- ----------------------------
DROP TABLE IF EXISTS `tv_categories_banners`;
CREATE TABLE `tv_categories_banners`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NULL DEFAULT NULL,
  `ordering` int(11) NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tv_categories_banners
-- ----------------------------
INSERT INTO `tv_categories_banners` VALUES (1, 'Banner Home', 'banner-home', 1, 1, '/images/banners/categories2021/9/12/1631443950_banner-for-all2.jpg', '2021-09-12 10:52:31', '2021-09-12 10:52:31');
INSERT INTO `tv_categories_banners` VALUES (2, 'New arrivals', 'new-arrivals', 1, NULL, NULL, '2021-09-16 13:02:05', '2021-09-16 13:02:05');
INSERT INTO `tv_categories_banners` VALUES (3, 'Banner Best selling', 'banner-best-selling', 1, NULL, NULL, '2021-09-25 04:19:12', '2021-09-25 04:19:12');
INSERT INTO `tv_categories_banners` VALUES (4, 'New Collection', 'new-collection', 1, NULL, NULL, '2021-10-02 10:39:55', '2021-10-02 10:39:55');
INSERT INTO `tv_categories_banners` VALUES (5, 'With style', 'with-style', 1, NULL, NULL, '2021-10-02 10:40:07', '2021-10-02 10:40:07');
INSERT INTO `tv_categories_banners` VALUES (6, 'Set Style', 'set-style', 1, NULL, NULL, '2021-10-02 10:40:44', '2021-10-02 10:40:44');

-- ----------------------------
-- Table structure for tv_categories_news
-- ----------------------------
DROP TABLE IF EXISTS `tv_categories_news`;
CREATE TABLE `tv_categories_news`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT NULL,
  `ordering` int(11) NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tv_categories_news
-- ----------------------------
INSERT INTO `tv_categories_news` VALUES (1, 'Toys', 'toys', NULL, NULL, 0, 1, 1, '/images/news/categories/2021/9/5/1630859073_banner-for-all2.jpg', '2021-08-04 09:52:02', '2021-09-08 16:42:10');
INSERT INTO `tv_categories_news` VALUES (5, 'Fashion', 'fashion', NULL, NULL, 0, 1, 1, '/images/news/categories/2021/9/5/1630859122_banner-for-all2.jpg', '2021-08-04 10:02:58', '2021-09-05 16:25:22');
INSERT INTO `tv_categories_news` VALUES (6, 'Clothing', 'clothing', NULL, NULL, 0, 1, 3, '/images/news/categories/2021/9/5/1630859172_banner-for-all2.jpg', '2021-09-05 16:26:12', '2021-09-05 16:26:12');
INSERT INTO `tv_categories_news` VALUES (7, 'Collection', 'collection', NULL, NULL, 0, 1, 4, '/images/news/categories/2021/9/5/1630859187_banner-for-all2.jpg', '2021-09-05 16:26:27', '2021-09-05 16:26:27');
INSERT INTO `tv_categories_news` VALUES (8, 'Life Style', 'life-style', NULL, NULL, 0, 1, 5, '/images/news/categories/2021/9/5/1630859201_banner-for-all2.jpg', '2021-09-05 16:26:41', '2021-09-05 16:26:41');

-- ----------------------------
-- Table structure for tv_config
-- ----------------------------
DROP TABLE IF EXISTS `tv_config`;
CREATE TABLE `tv_config`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `data_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `ordering` int(11) NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tv_config
-- ----------------------------
INSERT INTO `tv_config` VALUES (1, 'site_name', 'Site Name', NULL, 'text', 1, 1, NULL, NULL);
INSERT INTO `tv_config` VALUES (2, 'title', 'Title', NULL, 'text', 2, 1, NULL, NULL);
INSERT INTO `tv_config` VALUES (3, 'meta_des', 'Meta description', NULL, 'text', 3, 1, NULL, NULL);
INSERT INTO `tv_config` VALUES (4, 'email', 'Email', NULL, 'text', 4, 1, NULL, NULL);
INSERT INTO `tv_config` VALUES (5, 'copyright ', 'Copyright ', NULL, 'text', 5, 1, NULL, NULL);
INSERT INTO `tv_config` VALUES (6, 'phone_support', 'Phone support', NULL, 'text', 6, 1, NULL, NULL);
INSERT INTO `tv_config` VALUES (7, 'facebook', 'Facebook', NULL, 'text', 7, 1, NULL, NULL);
INSERT INTO `tv_config` VALUES (8, 'twitter', 'Twitter', NULL, 'text', 8, 1, NULL, NULL);
INSERT INTO `tv_config` VALUES (9, 'instagram', 'Instagram', NULL, 'text', 9, 1, NULL, NULL);

-- ----------------------------
-- Table structure for tv_contact
-- ----------------------------
DROP TABLE IF EXISTS `tv_contact`;
CREATE TABLE `tv_contact`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tv_menus
-- ----------------------------
DROP TABLE IF EXISTS `tv_menus`;
CREATE TABLE `tv_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `brief` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `published` tinyint(4) NULL DEFAULT NULL,
  `parent_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `list_parent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `ordering` int(11) NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `group_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tv_menus
-- ----------------------------
INSERT INTO `tv_menus` VALUES (1, 'Home', 'home', '/home.html', '<p>Trang chủ</p>', 1, NULL, ',', 0, 1, '/images/menu/2021/9/8/1631120434_banner-for-all2.jpg', '/images/menu/2021/9/8/1631120434_home.png', '_self', 1, '2021-09-08 17:00:34', '2021-09-26 17:12:14');
INSERT INTO `tv_menus` VALUES (2, 'Shop', 'shop', '/shop', '<p>Shop</p>', 1, NULL, ',', 0, 2, '/images/menu/2021/9/9/1631196339_banner-for-all2.jpg', NULL, '_self', 1, '2021-09-08 17:17:07', '2021-09-09 16:10:44');
INSERT INTO `tv_menus` VALUES (3, 'Blogs', 'blog', '/blogs/home.html', '<p>Blog</p>', 1, NULL, ',', 0, 3, '/images/menu/2021/9/8/1631121482_banner-for-all2.jpg', NULL, '_self', 1, '2021-09-08 17:18:02', '2021-09-26 17:18:04');
INSERT INTO `tv_menus` VALUES (4, 'Toys', 'toys', '/blogs/category-{$id}/toys.html', '<p>Blogs/toys</p>', 1, '3', ',3,', 1, NULL, '/images/menu/2021/9/8/1631121535_banner-for-all2.jpg', NULL, '_self', 1, '2021-09-08 17:18:55', '2021-09-26 17:27:25');
INSERT INTO `tv_menus` VALUES (5, 'Fashion', 'fashion', '/blogs/category-{$id}/fashion.html', '<p>Blogs/Fashion</p>', 1, '3', ',3,', 1, NULL, '/images/menu/2021/9/9/1631203815_banner-for-all2.jpg', NULL, '_self', 1, '2021-09-09 13:56:13', '2021-09-26 17:27:31');
INSERT INTO `tv_menus` VALUES (6, 'Clothing', 'clothing', '/blogs/category-{$id}/clothing.html', '<p>Blogs/Clothing</p>', 1, '3', ',3,', 1, NULL, '/images/menu/2021/9/9/1631204101_banner-for-all2.jpg', NULL, '_self', 1, '2021-09-09 16:15:01', '2021-09-26 17:27:37');
INSERT INTO `tv_menus` VALUES (7, 'Collection', 'collection', 'blogs/category-{$id}/collection.html', '<p>Blogs/Collection</p>', 1, '3', ',3,', 1, NULL, '/images/menu/2021/9/9/1631204124_banner-for-all2.jpg', NULL, '_self', 1, '2021-09-09 16:15:24', '2021-09-26 17:27:43');
INSERT INTO `tv_menus` VALUES (8, 'Life Style', 'life-style', '/blogs/category-{$id}/life-style.html', '<p>Blogs/Life Style</p>', 1, '3', ',3,', 1, NULL, '/images/menu/2021/9/9/1631204152_banner-for-all2.jpg', NULL, '_self', 1, '2021-09-09 16:15:52', '2021-09-26 17:27:48');
INSERT INTO `tv_menus` VALUES (9, 'About', 'about', NULL, NULL, 1, NULL, ',', 0, NULL, '/images/menu/2021/9/25/original/1632545032_banner-blogs.jpg', NULL, '_self', 1, '2021-09-25 04:43:52', '2021-09-25 04:44:11');

-- ----------------------------
-- Table structure for tv_menus_group
-- ----------------------------
DROP TABLE IF EXISTS `tv_menus_group`;
CREATE TABLE `tv_menus_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(4) NULL DEFAULT NULL,
  `ordering` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tv_menus_group
-- ----------------------------
INSERT INTO `tv_menus_group` VALUES (1, 'Menu Top', 1, 1, '2021-09-07 18:10:47', '2021-09-07 18:10:52');

-- ----------------------------
-- Table structure for tv_news
-- ----------------------------
DROP TABLE IF EXISTS `tv_news`;
CREATE TABLE `tv_news`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `show_home` tinyint(4) NOT NULL,
  `count_read` int(11) NULL DEFAULT NULL,
  `ordering` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tv_news_category_id_foreign`(`category_id`) USING BTREE,
  CONSTRAINT `tv_news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `tv_categories_news` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tv_news
-- ----------------------------
INSERT INTO `tv_news` VALUES (1, 'Not your ordinary multi service.', 'not-your-ordinary-multi-service', 'Lore ipsum dolor sit amet, consectetur adipiscing elit. Malesuada sodales quisque litora dapibus primis lacinia', '<blockquote>\r\n<p>Arcu dictum odio elementum torquent tincidunt aptent nec convallis massa ultrices, urna nisl eu sollicitudin proin imperdiet curabitur vestibulum dis diam, pretium porttitor lectus senectus parturient sodales purus dapibus porta.</p>\r\n</blockquote>\r\n\r\n<p>Ultricies pretium etiam sapien dictum libero eleifend justo laoreet a, at in scelerisque augue posuere lectus ornare magna penatibus vitae, eu leo molestie lacinia faucibus mi quis viverra. Eleifend suspendisse fermentum pretium nulla taciti laoreet dictumst dignissim vitae, fusce enim nibh cras natoque nam placerat tristique sagittis, lacus pharetra magna non hendrerit imperdiet sollicitudin per.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://ledthanhdat.vn/html/kodory/single-post-leftsidebar.html#\"><img alt=\"img\" src=\"http://ledthanhdat.vn/html/kodory/assets/images/blog-gallery-1.jpg\" /></a></p>\r\n\r\n<p><a href=\"http://ledthanhdat.vn/html/kodory/single-post-leftsidebar.html#\"><img alt=\"img\" src=\"http://ledthanhdat.vn/html/kodory/assets/images/blog-gallery-2.jpg\" /></a></p>', 8, 'Life Style', '/images/news/news/2021/9/16/original/1631800648_blogpost1.jpg', 1, 1, 0, NULL, '2021-09-05 16:30:37', '2021-09-16 13:57:28');
INSERT INTO `tv_news` VALUES (2, 'We bring you the best by working', 'we-bring-you-the-best-by-working', 'Lore ipsum dolor sit amet, consectetur adipiscing elit. Malesuada sodales quisque litora dapibus primis lacinia.', '<blockquote>\r\n<p>Arcu dictum odio elementum torquent tincidunt aptent nec convallis massa ultrices, urna nisl eu sollicitudin proin imperdiet curabitur vestibulum dis diam, pretium porttitor lectus senectus parturient sodales purus dapibus porta.</p>\r\n</blockquote>\r\n\r\n<p>Ultricies pretium etiam sapien dictum libero eleifend justo laoreet a, at in scelerisque augue posuere lectus ornare magna penatibus vitae, eu leo molestie lacinia faucibus mi quis viverra. Eleifend suspendisse fermentum pretium nulla taciti laoreet dictumst dignissim vitae, fusce enim nibh cras natoque nam placerat tristique sagittis, lacus pharetra magna non hendrerit imperdiet sollicitudin per.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://ledthanhdat.vn/html/kodory/single-post.html#\"><img alt=\"img\" src=\"http://ledthanhdat.vn/html/kodory/assets/images/blog-gallery-1.jpg\" /></a></p>\r\n\r\n<p><a href=\"http://ledthanhdat.vn/html/kodory/single-post.html#\"><img alt=\"img\" src=\"http://ledthanhdat.vn/html/kodory/assets/images/blog-gallery-2.jpg\" /></a></p>', 1, 'Toys', '/images/news/news/2021/9/16/original/1631799950_blogpost5.jpg', 1, 1, 0, NULL, '2021-09-15 14:53:54', '2021-09-16 13:48:16');
INSERT INTO `tv_news` VALUES (3, 'We design functional best multi', 'we-design-functional-best-multi', 'Lore ipsum dolor sit amet, consectetur adipiscing elit. Malesuada sodales quisque litora dapibus primis lacinia', '<blockquote>\r\n<p>Arcu dictum odio elementum torquent tincidunt aptent nec convallis massa ultrices, urna nisl eu sollicitudin proin imperdiet curabitur vestibulum dis diam, pretium porttitor lectus senectus parturient sodales purus dapibus porta.</p>\r\n</blockquote>\r\n\r\n<p>Ultricies pretium etiam sapien dictum libero eleifend justo laoreet a, at in scelerisque augue posuere lectus ornare magna penatibus vitae, eu leo molestie lacinia faucibus mi quis viverra. Eleifend suspendisse fermentum pretium nulla taciti laoreet dictumst dignissim vitae, fusce enim nibh cras natoque nam placerat tristique sagittis, lacus pharetra magna non hendrerit imperdiet sollicitudin per.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://ledthanhdat.vn/html/kodory/single-post.html#\"><img alt=\"img\" src=\"http://ledthanhdat.vn/html/kodory/assets/images/blog-gallery-1.jpg\" /></a></p>\r\n\r\n<p><a href=\"http://ledthanhdat.vn/html/kodory/single-post.html#\"><img alt=\"img\" src=\"http://ledthanhdat.vn/html/kodory/assets/images/blog-gallery-2.jpg\" /></a></p>', 6, 'Clothing', '/images/news/news/2021/9/16/original/1631800091_blogpost9-370x330.jpg', 1, 1, 0, NULL, '2021-09-16 13:48:11', '2021-09-16 13:48:11');
INSERT INTO `tv_news` VALUES (4, 'The child is swimming with a buoy', 'the-child-is-swimming-with-a-buoy', 'Lore ipsum dolor sit amet, consectetur adipiscing elit. Malesuada sodales quisque litora dapibus primis lacinia', '<blockquote>\r\n<p>Arcu dictum odio elementum torquent tincidunt aptent nec convallis massa ultrices, urna nisl eu sollicitudin proin imperdiet curabitur vestibulum dis diam, pretium porttitor lectus senectus parturient sodales purus dapibus porta.</p>\r\n</blockquote>\r\n\r\n<p>Ultricies pretium etiam sapien dictum libero eleifend justo laoreet a, at in scelerisque augue posuere lectus ornare magna penatibus vitae, eu leo molestie lacinia faucibus mi quis viverra. Eleifend suspendisse fermentum pretium nulla taciti laoreet dictumst dignissim vitae, fusce enim nibh cras natoque nam placerat tristique sagittis, lacus pharetra magna non hendrerit imperdiet sollicitudin per.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://ledthanhdat.vn/html/kodory/single-post.html#\"><img alt=\"img\" src=\"http://ledthanhdat.vn/html/kodory/assets/images/blog-gallery-1.jpg\" /></a></p>\r\n\r\n<p><a href=\"http://ledthanhdat.vn/html/kodory/single-post.html#\"><img alt=\"img\" src=\"http://ledthanhdat.vn/html/kodory/assets/images/blog-gallery-2.jpg\" /></a></p>', 7, 'Collection', '/images/news/news/2021/9/16/original/1631800165_blogpost4.jpg', 1, 1, 0, NULL, '2021-09-16 13:49:26', '2021-09-16 13:50:37');
INSERT INTO `tv_news` VALUES (5, 'Collection hiding beside beige wall', 'collection-hiding-beside-beige-wall', 'Lore ipsum dolor sit amet, consectetur adipiscing elit. Malesuada sodales quisque litora dapibus primis lacinia', '<blockquote>\r\n<p>Arcu dictum odio elementum torquent tincidunt aptent nec convallis massa ultrices, urna nisl eu sollicitudin proin imperdiet curabitur vestibulum dis diam, pretium porttitor lectus senectus parturient sodales purus dapibus porta.</p>\r\n</blockquote>\r\n\r\n<p>Ultricies pretium etiam sapien dictum libero eleifend justo laoreet a, at in scelerisque augue posuere lectus ornare magna penatibus vitae, eu leo molestie lacinia faucibus mi quis viverra. Eleifend suspendisse fermentum pretium nulla taciti laoreet dictumst dignissim vitae, fusce enim nibh cras natoque nam placerat tristique sagittis, lacus pharetra magna non hendrerit imperdiet sollicitudin per.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://ledthanhdat.vn/html/kodory/single-post.html#\"><img alt=\"img\" src=\"http://ledthanhdat.vn/html/kodory/assets/images/blog-gallery-1.jpg\" /></a></p>\r\n\r\n<p><a href=\"http://ledthanhdat.vn/html/kodory/single-post.html#\"><img alt=\"img\" src=\"http://ledthanhdat.vn/html/kodory/assets/images/blog-gallery-2.jpg\" /></a></p>', 8, 'Life Style', '/images/news/news/2021/9/16/original/1631800225_blogpost2.jpg', 1, 1, 0, NULL, '2021-09-16 13:50:26', '2021-09-16 13:50:33');

-- ----------------------------
-- Table structure for tv_product
-- ----------------------------
DROP TABLE IF EXISTS `tv_product`;
CREATE TABLE `tv_product`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `published` tinyint(4) NULL DEFAULT NULL,
  `ordering` int(11) NULL DEFAULT NULL,
  `price_range_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `price_range_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `discount_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `discount_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `brief` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `show_home` tinyint(4) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tv_product
-- ----------------------------
INSERT INTO `tv_product` VALUES (1, 'HUXBABY HUXBEAR TEDDY TOP BLACK', 'huxbaby-huxbear-teddy-top-black', '/images/products/products/2022/3/8/original/1646729573_ezgif.com-gif-maker.jpg', 9, 'New Arrivals', 1, NULL, '450000', NULL, NULL, NULL, 'HUXBABY HUXBEAR TEDDY TOP BLACK', '<p>The Huxbaby Huxbear Teddy Top in black is a super soft organic cotton top with super cute fluffy Huxbear applique!</p>\r\n\r\n<p>Colour:&nbsp; Black</p>\r\n\r\n<p>100% organic cotton (GOTS certified)</p>\r\n\r\n<p>AZO free dye</p>', 0, '2022-03-08 08:47:12', '2022-03-08 08:52:54', NULL);
INSERT INTO `tv_product` VALUES (2, 'KISSED BY RADICOOL CANDY CAMO CREW', 'kissed-by-radicool-candy-camo-crew', '/images/products/products/2022/3/8/original/1646731606_kr1606.f_x700.jpg', 3, 'New Arrivals', 1, NULL, '470000', NULL, NULL, NULL, 'KISSED BY RADICOOL CANDY CAMO CREW', '<p>Cotton / spandex crew in pink tie-dye with contrast pink camo raglan sleeves. Kissed by Radicool dove print in white on chest &amp; reverse right shoulder. A Radicool combo of tie-dye &amp; camo &ndash; guaranteed to make your little one stand out from the crowd.&nbsp;</p>\r\n\r\n<p>Fit is true to size.</p>', 0, '2022-03-08 09:26:47', '2022-03-08 09:26:47', NULL);
INSERT INTO `tv_product` VALUES (3, 'KISSED BY RADICOOL CANDY CAMO CREW', 'kissed-by-radicool-candy-camo-crew', '/images/products/products/2022/3/8/original/1646731664_kr1606.f_x700.jpg', 3, 'New Arrivals', 1, NULL, '470000', NULL, NULL, NULL, 'KISSED BY RADICOOL CANDY CAMO CREW', '<p>Cotton / spandex crew in pink tie-dye with contrast pink camo raglan sleeves. Kissed by Radicool dove print in white on chest &amp; reverse right shoulder. A Radicool combo of tie-dye &amp; camo &ndash; guaranteed to make your little one stand out from the crowd.&nbsp;</p>\r\n\r\n<p>Fit is true to size.</p>', 0, '2022-03-08 09:27:45', '2022-03-08 09:28:26', '2022-03-08 09:28:26');
INSERT INTO `tv_product` VALUES (4, 'KISSED BY RADICOOL CANDY CAMO CREW', 'kissed-by-radicool-candy-camo-crew', '/images/products/products/2022/3/8/original/1646731693_kr1606.f_x700.jpg', 3, 'New Arrivals', 1, NULL, '470000', NULL, NULL, NULL, 'KISSED BY RADICOOL CANDY CAMO CREW', '<p>Cotton / spandex crew in pink tie-dye with contrast pink camo raglan sleeves. Kissed by Radicool dove print in white on chest &amp; reverse right shoulder. A Radicool combo of tie-dye &amp; camo &ndash; guaranteed to make your little one stand out from the crowd.&nbsp;</p>\r\n\r\n<p>Fit is true to size.</p>', 0, '2022-03-08 09:28:14', '2022-03-08 09:28:24', '2022-03-08 09:28:24');
INSERT INTO `tv_product` VALUES (5, 'NATURE BABY DRAWSTRING PANTS - NAVY', 'nature-baby-drawstring-pants-navy', '/images/products/products/2022/3/8/original/1646732098_the-kids-store-nature-baby-drawstring-pants-navy_x700.jpg', 3, 'New Arrivals', 1, NULL, '370000', NULL, NULL, NULL, 'NATURE BABY DRAWSTRING PANTS - NAVY', '<p>As babies spend most of their first weeks and months drifting in and out of sleep, they need comfortable clothes. These pants have soft elastic around the waist and a drawstring to ensure the perfect fit. Featuring a cuffed tapered leg that can be folded up or down. One of our most popular styles for every day wear, baby will be cosy and snug. To minimise shrinkage, this fabric has been pre-washed at a GOTS certified factory. This style is also available in merino wool.<br />\r\n<br />\r\n*GOTS certified<br />\r\n*100% certified organic cotton<br />\r\n*elastic and drawstring waist<br />\r\n*roll down cuff leg</p>', 1, '2022-03-08 09:34:58', '2022-03-08 09:34:58', NULL);
INSERT INTO `tv_product` VALUES (6, 'Bộ quần áo bé gái cộc tay KidsPlaza M21H', 'bo-quan-ao-be-gai-coc-tay-kidsplaza-m21h', '/images/products/products/2022/3/12/original/1647059892_bo-quan-ao-be-gai-coc-tay-kidsplaza-m21h-1_1_6.jpg', 1, 'Toys', 1, NULL, '179000', '279000', NULL, NULL, 'Bộ quần áo bé gái cộc tay KidsPlaza M21H  Bộ quần áo cho bé gái cộc tay KidsPlaza M21H được thiết kế dành riêng cho bé gái với màu sắc hồng đáng yêu kết hợp với màu trắng tinh khôi tạo nên một bộ quần áo mới mẻ, đầy thu hút cho bé khi mặc lên', '<h2>Bộ quần &aacute;o cộc tay cho b&eacute; g&aacute;i KidsPlaza M21H&nbsp;</h2>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2022/thoi-trang-be-gai/bo-quan-ao-be-gai-coc-tay-kidsplaza-m21h-1.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p><em>Bộ quần &aacute;o b&eacute; g&aacute;i cộc tay KidsPlaza M21H</em></p>\r\n\r\n<p>Bộ&nbsp;<strong><a href=\"https://www.kidsplaza.vn/thoi-trang-be-gai.html\">quần &aacute;o cho b&eacute; g&aacute;i</a>&nbsp;cộc tay KidsPlaza M21H&nbsp;</strong>được thiết kế d&agrave;nh ri&ecirc;ng cho b&eacute; g&aacute;i với m&agrave;u sắc hồng đ&aacute;ng y&ecirc;u kết hợp với m&agrave;u trắng tinh kh&ocirc;i tạo n&ecirc;n một bộ quần &aacute;o mới mẻ, đầy thu h&uacute;t cho b&eacute; khi mặc l&ecirc;n</p>\r\n\r\n<p>L&agrave; mẫu sản phẩm quần &aacute;o b&eacute; g&aacute;i được nhiều mẹ lựa chọn tại&nbsp;<strong><a href=\"https://www.kidsplaza.vn/\">Kids Plaza</a></strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2022/thoi-trang-be-gai/bo-quan-ao-be-gai-coc-tay-kidsplaza-m21h-2.jpg\" style=\"width:500px\" /></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Bộ quần &aacute;o cộc tay b&eacute; g&aacute;i&nbsp;được l&agrave;m từ&nbsp;<strong>100% chất liệu cotton thấm h&uacute;t mồ h&ocirc;i, mềm mại, an to&agrave;n</strong>&nbsp;cho l&agrave;n da nhạy cảm của b&eacute;</p>\r\n	</li>\r\n	<li>\r\n	<p>Form &aacute;o chuẩn size cho b&eacute; từ&nbsp;<strong>(3-6M)-(6-9M)-(9-12M)-(12-18M)-(18-24M)-(3Y)-(4Y)</strong>&nbsp;mẹ c&oacute; thể dựa v&agrave;o số đo chiều cao c&acirc;n nặng của b&eacute; để chọn size chuẩn nhất nh&eacute;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2022/thoi-trang-be-gai/bo-quan-ao-be-gai-coc-tay-kidsplaza-m21h-3.jpg\" style=\"width:500px\" /></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Bề mặt vải&nbsp;<strong>kh&aacute;ng khuẩn cực tốt, kh&ocirc;ng lưu giữ m&ugrave;i mồ h&ocirc;i</strong>&nbsp;g&acirc;y kh&oacute; chịu cho b&eacute;</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng chứa phẩm m&agrave;u, mẹ c&oacute; thể&nbsp;<strong>giặt giũ thoải m&aacute;i</strong>&nbsp;m&agrave; kh&ocirc;ng lo bai x&ugrave; hay nh&atilde;o, được chứng nhận cực k&igrave; an to&agrave;n cho l&agrave;n da non nớt của trẻ</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Thiết kế:</strong>&nbsp;kiểu d&aacute;ng &aacute;o cộc tay, quần cộc ống rộng,&nbsp;<strong>cực k&igrave; tho&aacute;ng m&aacute;t, chất liệu co gi&atilde;n tốt</strong>&nbsp;b&eacute; c&oacute; thể thoải m&aacute;i vận động cả ng&agrave;y d&agrave;i m&agrave; kh&ocirc;ng lo mệt mỏi</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2022/thoi-trang-be-gai/bo-quan-ao-be-gai-coc-tay-kidsplaza-m21h-4.jpg\" style=\"width:500px\" /></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Hoạ tiết h&igrave;nh b&ocirc;ng hoa xinh xắn đ&aacute;ng y&ecirc;u được in nổi bật tr&ecirc;n ch&iacute;nh giữa &aacute;o</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2022/thoi-trang-be-gai/bo-quan-ao-be-gai-coc-tay-kidsplaza-m21h-5.jpg\" style=\"width:500px\" /></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Quần chun mềm&nbsp;<strong>co gi&atilde;n,</strong>&nbsp;kh&ocirc;ng l&agrave;m in hằn da khi b&eacute; mặc</p>\r\n	</li>\r\n	<li>\r\n	<p>Ph&iacute;a ống quần được may thiết kế nh&uacute;n b&egrave;o tạo n&ecirc;n sự điệu đ&agrave; cho b&eacute;</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>Hướng dẫn sử dụng sản phẩm:</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Hạn chế d&ugrave;ng sản phẩm giặt tẩy</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng ng&acirc;m, giặt chung với sản phẩm ra m&agrave;u</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng giặt trong nước n&oacute;ng tr&ecirc;n 40 độ C</p>\r\n	</li>\r\n	<li>\r\n	<p>N&ecirc;n ủi mặt tr&aacute;i sản phẩm</p>\r\n	</li>\r\n</ul>', 1, '2022-03-12 04:38:13', '2023-03-12 02:51:16', NULL);
INSERT INTO `tv_product` VALUES (7, 'Bộ quần áo bé gái cộc tay in hoa M21H', 'bo-quan-ao-be-gai-coc-tay-in-hoa-m21h', '/images/products/products/2022/3/12/original/1647060623_bo-quan-ao-be-gai-coc-tay-in-hoa-kidsplaza-m21h-1_7.jpg', 3, 'New Arrivals', 1, NULL, '179000', '279000', NULL, NULL, NULL, '<h2>Bộ quần &aacute;o cộc tay in hoa KidsPlaza M21H cho b&eacute; g&aacute;i đ&aacute;ng y&ecirc;u, xinh xắn</h2>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2022/thoi-trang-be-gai/bo-quan-ao-be-gai-coc-tay-in-hoa-kidsplaza-m21h-1.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p><em>Bộ quần &aacute;o b&eacute; g&aacute;i cộc tay in hoa KidsPlaza M21H</em></p>\r\n\r\n<p><strong>Bộ&nbsp;<a href=\"https://www.kidsplaza.vn/thoi-trang-be-gai.html\">quần &aacute;o cho&nbsp;b&eacute; g&aacute;i</a>&nbsp;cộc tay in hoa KidsPlaza M21H&nbsp;</strong>mang sắc hồng nổi bật&nbsp;<strong>tươi tắn xinh xắn</strong>&nbsp;cho b&eacute; suốt m&ugrave;a h&egrave;. L&agrave; sản phẩm quần &aacute;o b&eacute; g&aacute;i được nhiều mẹ lựa chọn bởi chất liệu, hoạ tiết điệu đ&agrave;, duy&ecirc;n d&aacute;ng nhưng lại cực k&igrave;&nbsp;đ&aacute;ng y&ecirc;u</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2022/thoi-trang-be-gai/bo-quan-ao-be-gai-coc-tay-in-hoa-kidsplaza-m21h-2.jpg\" style=\"width:500px\" /></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Chất liệu vải cotton co gi&atilde;n, thấm h&uacute;t tốt</strong>, dễ chịu, thoải m&aacute;i kh&ocirc;ng cảm thấy b&iacute; b&aacute;ch kh&oacute; chịu.</p>\r\n	</li>\r\n	<li>Form &aacute;o chuẩn, c&oacute; đủ c&aacute;c size&nbsp;<strong>3-6M, 6-9M, 9-12M, 12-18M, 18-24M, 3Y, 4Y</strong>&nbsp;cho b&eacute;, mẹ c&oacute; thể dựa v&agrave;o chiều cao c&acirc;n nặng của b&eacute; để chọn size chuẩn nhất nh&eacute; !</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2022/thoi-trang-be-gai/bo-quan-ao-be-gai-coc-tay-in-hoa-kidsplaza-m21h-3.jpg\" style=\"width:500px\" /></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>M&agrave;u sắc:</strong>&nbsp;tươi s&aacute;ng đa dạng, hoạ tiết nhỏ nhắn, xinh xắn bắt mắt khiến b&eacute; c&agrave;ng nổi bật hơn khi mặc.</p>\r\n	</li>\r\n	<li><strong>Bộ quần &aacute;o b&eacute; g&aacute;i cộc tay in hoa KidsPlaza M21H&nbsp;</strong>l&agrave; bộ quần &aacute;o thời trang h&egrave; được thiết kế ống tay v&agrave; cổ rộng để b&eacute; dễ d&agrave;ng chui đầu qua mặc &aacute;o, tạo cảm gi&aacute;c thoải m&aacute;i khi vận động.</li>\r\n	<li>Bề mặt vải kh&aacute;ng khuẩn, th&ocirc;ng tho&aacute;ng&nbsp;kh&ocirc;ng lưu giữ m&ugrave;i mồ h&ocirc;i tr&ecirc;n cơ thể của b&eacute;</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2022/thoi-trang-be-gai/bo-quan-ao-be-gai-coc-tay-in-hoa-kidsplaza-m21h-4.jpg\" style=\"width:500px\" /></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Hai b&ecirc;n tay &aacute;o được ấn nh&uacute;n b&egrave;o nhẹ nh&agrave;ng với m&agrave;u hồng xinh xắn tạo l&ecirc;n n&eacute;t đ&aacute;ng y&ecirc;u khi b&eacute; mặc</p>\r\n	</li>\r\n	<li>Đường may<strong>&nbsp;tỉ m&iacute; sắc n&eacute;t</strong>, kh&ocirc;ng ch&uacute;t dư chỉ thừa</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2022/thoi-trang-be-gai/bo-quan-ao-be-gai-coc-tay-in-hoa-kidsplaza-m21h-5.jpg\" style=\"width:500px\" /></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Quần chun&nbsp;<strong>mềm co gi&atilde;n</strong>, kh&ocirc;ng l&agrave;m in hằn da của trẻ</p>\r\n	</li>\r\n	<li>Hai b&ecirc;n g&oacute;c ph&iacute;a quần được thiết kế may vạt nhẹ nh&agrave;ng, hết sức điệu đ&agrave; cho b&eacute;</li>\r\n</ul>\r\n\r\n<h3><strong>Hướng dẫn sử dụng sản phẩm:</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Hạn chế d&ugrave;ng sản phẩm giặt tẩy</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng ng&acirc;m, giặt chung với sản phẩm ra m&agrave;u</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng giặt trong nước n&oacute;ng tr&ecirc;n 40 độ C</p>\r\n	</li>\r\n	<li>\r\n	<p>N&ecirc;n ủi mặt tr&aacute;i sản phẩm</p>\r\n	</li>\r\n</ul>', 1, '2022-03-12 04:50:24', '2022-03-12 04:50:24', NULL);
INSERT INTO `tv_product` VALUES (8, 'Bộ quần áo bé trai cộc tay in sư tử M21H', 'bo-quan-ao-be-trai-coc-tay-in-su-tu-m21h', '/images/products/products/2022/3/12/original/1647060822_bo-quan-ao-be-trai-coc-tay-in-su-tu-kidsplaza-m21h-1_7.jpg', 3, 'New Arrivals', 1, NULL, NULL, NULL, NULL, NULL, NULL, '<h2>Bộ quần &aacute;o cộc tay in sư tử KidsPlaza M21H cho b&eacute; trai tinh nghịch, đ&aacute;ng y&ecirc;u</h2>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2022/thoi-trang-be-trai/bo-quan-ao-be-trai-coc-tay-in-su-tu-kidsplaza-m21h-1.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p>Bộ<strong>&nbsp;<a href=\"https://www.kidsplaza.vn/thoi-trang-be-trai.html\">quần &aacute;o cho b&eacute; trai</a>&nbsp;cộc tay in sư tử KidsPlaza M21H&nbsp;</strong>được thiết kế d&agrave;nh ri&ecirc;ng cho b&eacute; trai với 3&nbsp;m&agrave;u sắc xanh- đỏ- trắng kết hợp tạo n&ecirc;n một bộ quần &aacute;o bắt mắt, mới lạ cho m&ugrave;a h&egrave; 2022 n&agrave;y</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2022/thoi-trang-be-trai/bo-quan-ao-be-trai-coc-tay-in-su-tu-kidsplaza-m21h-2.jpg\" style=\"width:500px\" /></p>\r\n\r\n<ul>\r\n	<li>Sự nổi bật đặc sắc ở đ&acirc;y l&agrave; được kết hợp với&nbsp;<strong>3 m&agrave;u sắc&nbsp;</strong>với nhau<strong>&nbsp;trắng - xanh - đỏ</strong>&nbsp;tạo sự mới mẻ, ph&aacute; c&aacute;ch b&eacute; n&agrave;o cần n&ecirc;n c&oacute; trong tủ đồ để mặc thay đổi mỗi ng&agrave;y</li>\r\n	<li>\r\n	<p>Bộ quần &aacute;o cộc tay b&eacute; trai được l&agrave;m từ&nbsp;<strong>100% chất liệu cotton thấm h&uacute;t mồ h&ocirc;i, mềm mại, an to&agrave;n</strong>&nbsp;cho l&agrave;n da nhạy cảm của b&eacute;</p>\r\n	</li>\r\n	<li>\r\n	<p>Form &aacute;o chuẩn size cho b&eacute; từ&nbsp;<strong>(3-6M)-(6-9M)-(9-12M)-(12-18M)-(18-24M)-(3Y)-(4Y)</strong>&nbsp;mẹ c&oacute; thể dựa v&agrave;o số đo chiều cao c&acirc;n nặng của b&eacute; để chọn size chuẩn nhất nh&eacute;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2022/thoi-trang-be-trai/bo-quan-ao-be-trai-coc-tay-in-su-tu-kidsplaza-m21h-3.jpg\" style=\"width:500px\" /></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Bề mặt vải&nbsp;<strong>kh&aacute;ng khuẩn cực tốt, kh&ocirc;ng lưu giữ m&ugrave;i mồ h&ocirc;i</strong>&nbsp;g&acirc;y kh&oacute; chịu cho b&eacute;</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng chứa phẩm m&agrave;u, mẹ c&oacute; thể&nbsp;<strong>giặt giũ thoải m&aacute;i</strong>&nbsp;m&agrave; kh&ocirc;ng lo bai x&ugrave; hay nh&atilde;o, được chứng nhận cực k&igrave; an to&agrave;n cho l&agrave;n da non nớt của trẻ</p>\r\n	</li>\r\n	<li>\r\n	<p>Hoạ tiết h&igrave;nh th&uacute; xinh xắn đ&aacute;ng y&ecirc;u,&nbsp;ngộ nghĩnh</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Thiết kế:</strong>&nbsp;kiểu d&aacute;ng &aacute;o cộc tay, quần cộc ống rộng,&nbsp;<strong>cực k&igrave; tho&aacute;ng m&aacute;t, chất liệu co gi&atilde;n tốt</strong>&nbsp;b&eacute; c&oacute; thể thoải m&aacute;i vận động cả ng&agrave;y d&agrave;i m&agrave; kh&ocirc;ng lo mệt mỏi</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2022/thoi-trang-be-trai/bo-quan-ao-be-trai-coc-tay-in-su-tu-kidsplaza-m21h-4.jpg\" style=\"width:500px\" /></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Quần chun mềm&nbsp;<strong>co gi&atilde;n,</strong>&nbsp;kh&ocirc;ng l&agrave;m in hằn da khi b&eacute; mặc</p>\r\n	</li>\r\n	<li>\r\n	<p>Giữa ph&iacute;a&nbsp;quần b&eacute; trai&nbsp;đ&iacute;nh th&ecirc;m chiếc t&uacute;i đằng trước, b&eacute; c&oacute; thể để những đồ nhỏ, vật dụng xinh xắn v&agrave;o b&ecirc;n trong</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>Hướng dẫn sử dụng sản phẩm:</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Hạn chế d&ugrave;ng sản phẩm giặt tẩy</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng ng&acirc;m, giặt chung với sản phẩm ra m&agrave;u</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng giặt trong nước n&oacute;ng tr&ecirc;n 40 độ C</p>\r\n	</li>\r\n	<li>\r\n	<p>N&ecirc;n ủi mặt tr&aacute;i sản phẩm</p>\r\n	</li>\r\n</ul>', 0, '2022-03-12 04:53:43', '2022-03-12 04:53:43', NULL);
INSERT INTO `tv_product` VALUES (9, 'Body đùi kẻ túi in cá HN21H', 'body-dui-ke-tui-in-ca-hn21h', '/images/products/products/2022/3/12/original/1647060958_body-dui-ke-tui-in-ca-kidsplaza-hn21h-1.jpg', 4, 'Clothing', 1, NULL, NULL, NULL, NULL, NULL, NULL, '<h2>Body sơ sinh đ&ugrave;i kẻ t&uacute;i in c&aacute; HN21H cho b&eacute; từ 0 đến 12 th&aacute;ng tuổi:</h2>\r\n\r\n<p><strong>Body sơ sinh&nbsp;đ&ugrave;i kẻ t&uacute;i in c&aacute; HN21H</strong>&nbsp;thuộc&nbsp;loại sản phẩm&nbsp;<a href=\"https://www.kidsplaza.vn/quan-ao-so-sinh.html\">quần &aacute;o sơ sinh</a>&nbsp;phục vụ c&aacute;c b&eacute; sơ sinh đến từ thương hiệu mẹ v&agrave; b&eacute;. Sản phẩm&nbsp;được may chắc chắn, tỉ m&igrave; v&agrave; được l&agrave;m từ chất liệu tự nhi&ecirc;n, mang lại sự mềm mại v&agrave; an to&agrave;n với l&agrave;n da non nớt của trẻ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/do-so-sinh-2022/quan-ao-so-sinh/body-dui-ke-tui-in-ca-kidsplaza-hn21h-1.jpg\" style=\"height:500px; width:500px\" /></p>\r\n\r\n<p>Body sơ sinh được l&agrave;m từ chất liệu 100% cotton,&nbsp;<strong>si</strong><strong>&ecirc;u mềm mại, thấm h&uacute;t tốt, mang đến cho b&eacute; cảm gi&aacute;c thoải m&aacute;i v&agrave; an to&agrave;n</strong>&nbsp;với l&agrave;n da mỏng manh, non nớt của trẻ.</p>\r\n\r\n<p>Body sơ sinh c&oacute; thiết kế cổ &aacute;o gập v&agrave; được may kh&aacute; d&agrave;y dặn gi&uacute;p b&eacute;&nbsp;<strong>thoải m&aacute;i</strong>&nbsp;nhất khi mặc đồng thời tr&ecirc;n cổ &aacute;o c&oacute; trang tr&iacute; họa tiết ng&ocirc;i sao tạo sự dễ thương cho bộ body khi b&eacute; mặc.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/do-so-sinh-2022/quan-ao-so-sinh/body-dui-ke-tui-in-ca-kidsplaza-hn21h-2.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p>Mặt trước của bộ được thiết kế một chiếc t&uacute;i nhỏ xinh c&oacute; in h&igrave;nh 3 ch&uacute; c&aacute; xinh xắn tạo điểm nhấn v&agrave; dễ thương hơn khi b&eacute; mặc.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/do-so-sinh-2022/quan-ao-so-sinh/body-dui-ke-tui-in-ca-kidsplaza-hn21h-3.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p>Cổ &aacute;o của body sơ sinh c&oacute; thiết kế c&uacute;c bấm tiện dụng gi&uacute;p mẹ&nbsp;<strong>dễ d&agrave;ng hơn khi thay đồ</strong>&nbsp;cho b&eacute; trong mỗi lần tắm cho b&eacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/do-so-sinh-2022/quan-ao-so-sinh/body-dui-ke-tui-in-ca-kidsplaza-hn21h-5.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p>Phần đũng của body sơ sinh được l&agrave;m rất&nbsp;<strong>th&ocirc;ng minh v&agrave; tiện dụng</strong>&nbsp;khi c&oacute; thể th&aacute;o ra dễ d&agrave;ng với dạng c&uacute;c bấm gi&uacute;p mang lại sự th&ocirc;ng tho&aacute;ng v&agrave; tiện dụng cho b&eacute; v&agrave; mẹ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/do-so-sinh-2022/quan-ao-so-sinh/body-dui-ke-tui-in-ca-kidsplaza-hn21h-4.jpg\" style=\"width:500px\" /></p>', 1, '2022-03-12 04:55:59', '2022-03-12 04:55:59', NULL);
INSERT INTO `tv_product` VALUES (10, 'Váy thời trang bé gái KidsPlaza in hình Thỏ Bunny LN21T (Trắng Cam)', 'vay-thoi-trang-be-gai-kidsplaza-in-hinh-tho-bunny-ln21t-trang-cam', '/images/products/products/2022/3/12/original/1647061215_vay-thoi-trang-be-gai-kidsplaza-in-hinh-tho-bunny-ln21t-trang-cam-2.jpg', 4, 'Clothing', 1, NULL, '149000', NULL, NULL, NULL, NULL, '<h2>V&aacute;y thời trang b&eacute; g&aacute;i KidsPlaza in h&igrave;nh Thỏ Bunny LN21T (Trắng Cam) xinh xắn, dễ thương.</h2>\r\n\r\n<p><strong><a href=\"https://www.kidsplaza.vn/thoi-trang-phu-kien.html\">V&aacute;y thời trang b&eacute; g&aacute;i</a>&nbsp;KidsPlaza in h&igrave;nh Thỏ Bunny LN21T (Trắng Cam)&nbsp;</strong>dễ thương được l&agrave;m ho&agrave;n to&agrave;n bằng chất liệu&nbsp;<strong>vải 100% cotton</strong>&nbsp;si&ecirc;u m&aacute;t, mềm mại, an to&agrave;n v&agrave; th&acirc;n thiện với l&agrave;n da nhạy cảm của b&eacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2021/quan-ao-thoi-trang/vay-thoi-trang-be-gai-kidsplaza-in-hinh-tho-bunny-ln21t-trang-cam-1.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p>V&aacute;y được may từ chất liệu&nbsp;<strong>100% cotton&nbsp;</strong>co gi&atilde;n thoải m&aacute;i, khả năng&nbsp;<strong>thấm h&uacute;t mồ h&ocirc;i tốt.</strong>&nbsp;Do vậy ba mẹ ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi b&eacute; y&ecirc;u kho&aacute;c l&ecirc;n m&igrave;nh bộ v&aacute;y xinh xắn, dễ thương n&agrave;y m&agrave;&nbsp;ho&agrave;n to&agrave;n&nbsp;kh&ocirc;ng lo n&oacute;ng bức hay kh&oacute; chịu những ng&agrave;y thời tiết m&ugrave;a h&egrave; oi ả.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2021/quan-ao-thoi-trang/vay-thoi-trang-be-gai-kidsplaza-in-hinh-tho-bunny-ln21t-trang-cam-2.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p><strong>V&aacute;y thời trang b&eacute; g&aacute;i KidsPlaza in h&igrave;nh Thỏ Bunny LN21T (Trắng Cam)</strong>&nbsp;l&agrave; sản phẩm thời trang h&egrave; được thiết kế<strong>&nbsp;cổ v&aacute;y kiểu tr&ograve;n mềm mại,&nbsp;</strong>tay v&aacute;y may s&aacute;t n&aacute;ch đ&iacute;nh b&egrave;o duy&ecirc;n d&aacute;ng, ph&iacute;a sau c&oacute; khuy c&agrave;i&nbsp;gi&uacute;p ba mẹ&nbsp;<strong>thay mặc tiện lợi, dễ d&agrave;ng khi b&eacute; chui đầu qua</strong>.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2021/quan-ao-thoi-trang/vay-thoi-trang-be-gai-kidsplaza-in-hinh-tho-bunny-ln21t-trang-cam-4.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p><strong>V&aacute;y thời trang b&eacute; g&aacute;i KidsPlaza in h&igrave;nh Thỏ Bunny LN21T (Trắng Cam)&nbsp;</strong>phần&nbsp;<strong>th&acirc;n v&aacute;y</strong>&nbsp;<strong>may d&aacute;ng x&ograve;e&nbsp;chữ A</strong>&nbsp;phối m&agrave;u trắng v&agrave; cam&nbsp;nhạt họa tiết chấm bi<strong>&nbsp;</strong>được&nbsp;<strong>in h&igrave;nh ch&uacute; Thỏ Bunny xinh xắn, dễ thương&nbsp;</strong>để mẹ c&oacute; thể lựa chọn&nbsp;thay đổi ph&ugrave; hợp với phong c&aacute;ch thời trang của b&eacute; y&ecirc;u.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2021/quan-ao-thoi-trang/vay-thoi-trang-be-gai-kidsplaza-in-hinh-tho-bunny-ln21t-trang-cam-3.jpg\" style=\"width:500px\" /></p>\r\n\r\n<h3><strong>Hướng dẫn sử dụng:</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Hạn chế d&ugrave;ng sản phẩm giặt tẩy</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng ng&acirc;m, giặt chung với sản phẩm ra m&agrave;u</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng giặt trong nước n&oacute;ng tr&ecirc;n 40 độ C</p>\r\n	</li>\r\n	<li>\r\n	<p>N&ecirc;n ủi mặt tr&aacute;i sản phẩm</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2021/quan-ao-thoi-trang/vay-thoi-trang-be-gai-kidsplaza-in-hinh-tho-bunny-ln21t-trang-cam-5.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p>Sản phẩm c&oacute; đủ c&aacute;c size cho b&eacute; từ&nbsp;<strong>1 đến 4 tuổi (1Y, 2Y, 3Y, 4Y)</strong></p>\r\n\r\n<p><strong>Chất liệu:&nbsp;</strong>Vải 100% cotton.</p>\r\n\r\n<p><strong>Thương hiệu:</strong>&nbsp;KidsPlaza</p>\r\n\r\n<p><strong>Sản xuất:</strong>&nbsp;tại Việt Nam</p>\r\n\r\n<p><strong>Cảnh b&aacute;o:</strong>&nbsp;sản phẩm dễ ch&aacute;y</p>\r\n\r\n<p><em><strong>H&agrave;ng Việt Nam chất lượng cao!</strong></em></p>', 1, '2022-03-12 05:00:16', '2022-03-12 05:00:16', NULL);
INSERT INTO `tv_product` VALUES (11, 'Váy thời trang bé gái KidsPlaza in hình Thỏ Bunny LN21T (Trắng Cam)', 'vay-thoi-trang-be-gai-kidsplaza-in-hinh-tho-bunny-ln21t-trang-cam', '/images/products/products/2022/3/12/original/1647061354_bo-quan-ao-dai-tay-be-trai-ke-soc-in-hinh-khung-long-kidsplaza-m21t-trang-xanh-1 (1).jpg', 4, 'Clothing', 1, NULL, '99000', NULL, NULL, NULL, NULL, '<h2><strong>Bộ quần &aacute;o thu đ&ocirc;ng d&agrave;i tay b&eacute; trai kẻ sọc in h&igrave;nh khủng long KidsPlaza M21T (Trắng Xanh)</strong></h2>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2021/thoi-trang-be-trai/bo-quan-ao-dai-tay-be-trai-ke-soc-in-hinh-khung-long-kidsplaza-m21t-trang-xanh-1.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p><em>Bộ quần &aacute;o d&agrave;i tay b&eacute; trai kẻ sọc in h&igrave;nh khủng long KidsPlaza M21T (Trắng Xanh)</em></p>\r\n\r\n<p><strong><a href=\"https://www.kidsplaza.vn/bo-quan-ao-be-trai.html\" target=\"_blank\">Bộ quần &aacute;o d&agrave;i tay b&eacute; trai KidsPlaza</a></strong>&nbsp;l&agrave; mẫu quần &aacute;o thu đ&ocirc;ng d&agrave;i tay được l&agrave;m ho&agrave;n to&agrave;n bằng chất liệu&nbsp;<strong>95% cotton, 5% spandex</strong>&nbsp;mềm&nbsp;mại, an to&agrave;n. Vải bền đẹp, co gi&atilde;n đ&agrave;n hồi, thấm h&uacute;t mồ h&ocirc;i thoải m&aacute;i dễ chịu khi mặc</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2021/thoi-trang-be-trai/bo-quan-ao-dai-tay-be-trai-ke-soc-in-hinh-khung-long-kidsplaza-m21t-trang-xanh-2.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p>Thiết kế kiểu d&aacute;ng d&agrave;i tay&nbsp;bo ống d&agrave;y dặn, ấm &aacute;p, thoải m&aacute;i vận động.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2021/thoi-trang-be-trai/bo-quan-ao-dai-tay-be-trai-ke-soc-in-hinh-khung-long-kidsplaza-m21t-trang-xanh-3.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2021/thoi-trang-be-trai/bo-quan-ao-dai-tay-be-trai-ke-soc-in-hinh-khung-long-kidsplaza-m21t-trang-xanh-4.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p>Quần chun mềm co gi&atilde;n, kh&ocirc;ng l&agrave;m in hằn da của trẻ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2021/thoi-trang-be-trai/bo-quan-ao-dai-tay-be-trai-ke-soc-in-hinh-khung-long-kidsplaza-m21t-trang-xanh-6.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p><strong>Hướng dẫn sử dụng:&nbsp;</strong>hạn chế d&ugrave;ng sản phẩm giặt tẩy, kh&ocirc;ng ng&acirc;m, kh&ocirc;ng giặt chung với nước n&oacute;ng &gt;40 độ C. N&ecirc;n ủi mặt tr&aacute;i sản phẩm.</p>\r\n\r\n<p>Sản phẩm c&oacute; đủ c&aacute;c size cho b&eacute; y&ecirc;u&nbsp;<strong>1Y, 2Y, 3Y, 4Y.</strong></p>\r\n\r\n<p><strong>Thương hiệu:&nbsp;</strong>KidsPlaza</p>\r\n\r\n<p><strong>Chất liệu:</strong>&nbsp;95% cotton, 5% spandex</p>\r\n\r\n<p><strong>Sản xuất:</strong>&nbsp;tại Việt Nam</p>\r\n\r\n<p><strong>Cảnh b&aacute;o:</strong>&nbsp;sản phẩm dễ ch&aacute;y</p>\r\n\r\n<p><strong>Năm sản xuất:</strong>&nbsp;2021</p>\r\n\r\n<p><strong>Xuất xứ:&nbsp;</strong>Việt Nam</p>\r\n\r\n<p><strong><em>Kids Plaza- Sự lựa chọn ho&agrave;n hảo cho mẹ v&agrave; b&eacute;!</em></strong></p>', 1, '2022-03-12 05:02:34', '2022-03-12 05:02:34', NULL);
INSERT INTO `tv_product` VALUES (12, 'Váy thời trang bé gái KidsPlaza in hình Thỏ Bunny LN21T (Trắng Cam)', 'vay-thoi-trang-be-gai-kidsplaza-in-hinh-tho-bunny-ln21t-trang-cam', '/images/products/products/2022/3/12/original/1647061375_bo-quan-ao-dai-tay-be-trai-ke-soc-in-hinh-khung-long-kidsplaza-m21t-trang-xanh-1 (1).jpg', 4, 'Clothing', 1, NULL, '99000', NULL, NULL, NULL, NULL, '<h2><strong>Bộ quần &aacute;o thu đ&ocirc;ng d&agrave;i tay b&eacute; trai kẻ sọc in h&igrave;nh khủng long KidsPlaza M21T (Trắng Xanh)</strong></h2>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2021/thoi-trang-be-trai/bo-quan-ao-dai-tay-be-trai-ke-soc-in-hinh-khung-long-kidsplaza-m21t-trang-xanh-1.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p><em>Bộ quần &aacute;o d&agrave;i tay b&eacute; trai kẻ sọc in h&igrave;nh khủng long KidsPlaza M21T (Trắng Xanh)</em></p>\r\n\r\n<p><strong><a href=\"https://www.kidsplaza.vn/bo-quan-ao-be-trai.html\" target=\"_blank\">Bộ quần &aacute;o d&agrave;i tay b&eacute; trai KidsPlaza</a></strong>&nbsp;l&agrave; mẫu quần &aacute;o thu đ&ocirc;ng d&agrave;i tay được l&agrave;m ho&agrave;n to&agrave;n bằng chất liệu&nbsp;<strong>95% cotton, 5% spandex</strong>&nbsp;mềm&nbsp;mại, an to&agrave;n. Vải bền đẹp, co gi&atilde;n đ&agrave;n hồi, thấm h&uacute;t mồ h&ocirc;i thoải m&aacute;i dễ chịu khi mặc</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2021/thoi-trang-be-trai/bo-quan-ao-dai-tay-be-trai-ke-soc-in-hinh-khung-long-kidsplaza-m21t-trang-xanh-2.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p>Thiết kế kiểu d&aacute;ng d&agrave;i tay&nbsp;bo ống d&agrave;y dặn, ấm &aacute;p, thoải m&aacute;i vận động.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2021/thoi-trang-be-trai/bo-quan-ao-dai-tay-be-trai-ke-soc-in-hinh-khung-long-kidsplaza-m21t-trang-xanh-3.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2021/thoi-trang-be-trai/bo-quan-ao-dai-tay-be-trai-ke-soc-in-hinh-khung-long-kidsplaza-m21t-trang-xanh-4.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p>Quần chun mềm co gi&atilde;n, kh&ocirc;ng l&agrave;m in hằn da của trẻ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/thoi-trang-2021/thoi-trang-be-trai/bo-quan-ao-dai-tay-be-trai-ke-soc-in-hinh-khung-long-kidsplaza-m21t-trang-xanh-6.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p><strong>Hướng dẫn sử dụng:&nbsp;</strong>hạn chế d&ugrave;ng sản phẩm giặt tẩy, kh&ocirc;ng ng&acirc;m, kh&ocirc;ng giặt chung với nước n&oacute;ng &gt;40 độ C. N&ecirc;n ủi mặt tr&aacute;i sản phẩm.</p>\r\n\r\n<p>Sản phẩm c&oacute; đủ c&aacute;c size cho b&eacute; y&ecirc;u&nbsp;<strong>1Y, 2Y, 3Y, 4Y.</strong></p>\r\n\r\n<p><strong>Thương hiệu:&nbsp;</strong>KidsPlaza</p>\r\n\r\n<p><strong>Chất liệu:</strong>&nbsp;95% cotton, 5% spandex</p>\r\n\r\n<p><strong>Sản xuất:</strong>&nbsp;tại Việt Nam</p>\r\n\r\n<p><strong>Cảnh b&aacute;o:</strong>&nbsp;sản phẩm dễ ch&aacute;y</p>\r\n\r\n<p><strong>Năm sản xuất:</strong>&nbsp;2021</p>\r\n\r\n<p><strong>Xuất xứ:&nbsp;</strong>Việt Nam</p>\r\n\r\n<p><strong><em>Kids Plaza- Sự lựa chọn ho&agrave;n hảo cho mẹ v&agrave; b&eacute;!</em></strong></p>', 0, '2022-03-12 05:02:56', '2022-03-12 05:02:56', NULL);
INSERT INTO `tv_product` VALUES (13, 'Váy bé gái kèm băng đô KidsPlaza HN21H (Vàng)', 'vay-be-gai-kem-bang-do-kidsplaza-hn21h-vang', NULL, 4, 'Clothing', 1, NULL, NULL, NULL, NULL, NULL, NULL, '<h2>V&aacute;y sơ sinh b&eacute; g&aacute;i k&egrave;m băng đ&ocirc; KidsPlaza HN21H cho b&eacute; từ 3 đến 24 th&aacute;ng tuổi:</h2>\r\n\r\n<p><a href=\"https://www.kidsplaza.vn/quan-ao-so-sinh.html\">V&aacute;y sơ sinh</a>&nbsp;b&eacute; g&aacute;i k&egrave;m băng đ&ocirc; KidsPlaza HN21H (V&agrave;ng) l&agrave; sản phẩm thời trang sơ sinh cho b&eacute; g&aacute;i được l&agrave;m từ chất liệu cotton cao cấp mang lại trải nghiệm&nbsp;<strong>an to&agrave;n v&agrave; thoải m&aacute;i d&agrave;nh</strong>&nbsp;cho b&eacute; y&ecirc;u.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/do-so-sinh-2022/quan-ao-so-sinh/vay-be-gai-kem-bang-do-kidsplaza-hn21h-vang-1_1.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p>V&aacute;y được thiết kế với phong c&aacute;ch&nbsp;<strong>tươi tắn, trong s&aacute;ng</strong>&nbsp;khi d&ugrave;ng m&agrave;u v&agrave;ng nhạt kết hợp với m&agrave;u trắng gi&uacute;p chiếc v&aacute;y tr&ocirc;ng dễ thương v&agrave; tươi s&aacute;ng hơn.</p>\r\n\r\n<p>Cổ &aacute;o được may kh&aacute; d&agrave;y dặn v&agrave;&nbsp;theo h&igrave;nh cổ hoa tạo n&eacute;t nữ t&iacute;nh v&agrave; tạo&nbsp;sự&nbsp;<strong>dễ chịu</strong>&nbsp;cho b&eacute; khi mặc l&ecirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/do-so-sinh-2022/quan-ao-so-sinh/vay-be-gai-kem-bang-do-kidsplaza-hn21h-vang-2_1.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p>Tay v&aacute;y được may bồng n&ecirc;n kh&aacute; rộng r&atilde;i gi&uacute;p&nbsp;<strong>thoải m&aacute;i</strong>&nbsp;hơn khi b&eacute; mặc l&ecirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/do-so-sinh-2022/quan-ao-so-sinh/vay-be-gai-kem-bang-do-kidsplaza-hn21h-vang-4_1.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p>Mặt trước của v&aacute;y được trang tr&iacute; bằng h&igrave;nh ch&uacute; c&aacute; hồng đang bơi c&ugrave;ng d&ograve;ng chữ KidsPlaza nổi bật gi&uacute;p chiếc v&aacute;y c&oacute; điểm nhấn hơn.</p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/do-so-sinh-2022/quan-ao-so-sinh/vay-be-gai-kem-bang-do-kidsplaza-hn21h-vang-3_1.jpg\" style=\"width:500px\" /></strong></p>\r\n\r\n<p>Phần c&uacute;c được l&agrave;m theo dạng c&uacute;c bấm gi&uacute;p mẹ c&oacute; thể&nbsp;<strong>dễ d&agrave;ng hơn trong việc th&aacute;o mặc cho c&aacute;c b&eacute;.</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/do-so-sinh-2022/quan-ao-so-sinh/vay-be-gai-kem-bang-do-kidsplaza-hn21h-vang-5_1.jpg\" style=\"width:500px\" /></strong></p>\r\n\r\n<p>V&aacute;y c&ograve;n đi k&egrave;m với một chiếc băng đ&ocirc; xinh xắn c&oacute; h&igrave;nh b&ocirc;ng hoa mang lại sự&nbsp;<strong>dễ thương</strong>&nbsp;khi mặc k&egrave;m c&ugrave;ng chiếc v&aacute;y.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.kidsplaza.vn/media/wysiwyg/product/do-so-sinh-2022/quan-ao-so-sinh/vay-be-gai-kem-bang-do-kidsplaza-hn21h-vang-6_1.jpg\" style=\"width:500px\" /></p>\r\n\r\n<h3>Hướng dẫn sử dụng v&agrave; bảo quản sản phẩm:</h3>\r\n\r\n<p>Hạn chế d&ugrave;ng sản phẩm giặt tẩy</p>\r\n\r\n<p>Kh&ocirc;ng ng&acirc;m, giặt chung với sản phẩm ra m&agrave;u</p>\r\n\r\n<p>Kh&ocirc;ng n&ecirc;n giặt bằng m&aacute;y giặt, n&ecirc;n giặt tay để giữ độ bền cho sản phẩm</p>\r\n\r\n<p>Kh&ocirc;ng giặt trong nước n&oacute;ng tr&ecirc;n 30&deg;C</p>\r\n\r\n<p>N&ecirc;n ủi/l&agrave; mặt tr&aacute;i sản phẩm</p>\r\n\r\n<h3>Th&ocirc;ng tin chi tiết của sản phẩm:</h3>\r\n\r\n<p>Xuất xứ: Việt Nam</p>\r\n\r\n<p>Thương hiệu: KidsPlaza</p>\r\n\r\n<p>Độ tuổi: từ 3 đến 24 th&aacute;ng tuổi</p>\r\n\r\n<p>Chất liệu: 100%cotton</p>', 1, '2022-03-12 06:25:47', '2022-03-12 06:25:47', NULL);

-- ----------------------------
-- Table structure for tv_product_category
-- ----------------------------
DROP TABLE IF EXISTS `tv_product_category`;
CREATE TABLE `tv_product_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `list_parent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `published` tinyint(1) NULL DEFAULT NULL,
  `ordering` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tv_product_category
-- ----------------------------
INSERT INTO `tv_product_category` VALUES (1, 'Toys', 'toys', 0, NULL, NULL, NULL, ',', 1, 1, '2021-10-12 17:24:40', '2021-10-12 17:24:40');
INSERT INTO `tv_product_category` VALUES (2, 'Teddy Bear', 'teddy-bear', 0, NULL, NULL, NULL, ',', 1, 2, '2021-10-12 17:32:20', '2021-10-12 17:32:20');
INSERT INTO `tv_product_category` VALUES (3, 'New Arrivals', 'new-arrivals', 0, NULL, NULL, NULL, ',', 1, 3, '2021-10-12 17:33:04', '2021-10-12 17:33:04');
INSERT INTO `tv_product_category` VALUES (4, 'Clothing', 'clothing', 0, NULL, NULL, NULL, ',', 1, 4, '2021-10-12 17:33:22', '2021-10-12 17:33:22');
INSERT INTO `tv_product_category` VALUES (5, 'Backpack', 'backpack', 0, NULL, NULL, NULL, ',', 1, 4, '2021-10-12 17:33:41', '2021-10-12 17:33:41');
INSERT INTO `tv_product_category` VALUES (6, 'Accessories', 'accessories', 0, NULL, NULL, NULL, ',', 1, 6, '2021-10-12 17:34:03', '2021-10-12 17:34:03');
INSERT INTO `tv_product_category` VALUES (7, 'Essentials', 'essentials', 0, NULL, NULL, NULL, ',', 1, 7, '2021-10-12 17:34:22', '2021-10-12 17:34:22');
INSERT INTO `tv_product_category` VALUES (8, 'Featured', 'featured', 0, NULL, NULL, NULL, ',', 1, 8, '2021-10-12 17:34:37', '2021-10-12 17:34:37');
INSERT INTO `tv_product_category` VALUES (9, 'New Arrivals', 'new-arrivals', 0, NULL, NULL, NULL, ',', 1, NULL, '2022-03-08 08:45:10', '2022-03-08 08:45:10');

-- ----------------------------
-- Table structure for tv_product_color
-- ----------------------------
DROP TABLE IF EXISTS `tv_product_color`;
CREATE TABLE `tv_product_color`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `published` tinyint(4) NULL DEFAULT NULL,
  `ordering` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tv_product_color
-- ----------------------------
INSERT INTO `tv_product_color` VALUES (1, 'Đỏ', 'do', 1, 1, '2021-10-08 16:18:27', '2021-10-08 16:18:27');
INSERT INTO `tv_product_color` VALUES (2, 'Trắng', 'trang', 1, 2, '2021-10-08 16:18:36', '2021-10-08 16:18:36');
INSERT INTO `tv_product_color` VALUES (3, 'Xanh', 'xanh', 1, 3, '2021-10-08 16:18:43', '2021-10-08 16:18:43');

-- ----------------------------
-- Table structure for tv_product_image
-- ----------------------------
DROP TABLE IF EXISTS `tv_product_image`;
CREATE TABLE `tv_product_image`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `product_option_id` int(11) NULL DEFAULT NULL,
  `published` tinyint(4) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tv_product_image
-- ----------------------------
INSERT INTO `tv_product_image` VALUES (1, '/images/products/products/2022/3/12/original/1647060623_img_9142-1972972300-d637237353490931840.jpg', 'jpeg', '49194', 7, 1, NULL, NULL, NULL);
INSERT INTO `tv_product_image` VALUES (2, '/images/products/products/2022/3/12/original/1647060623_img_9148-167336844-d637237353490150548.jpg', 'jpeg', '60065', 7, 1, NULL, NULL, NULL);
INSERT INTO `tv_product_image` VALUES (3, '/images/products/products/2022/3/12/original/1647060822_bo-quan-ao-be-trai-coc-tay-in-su-tu-kidsplaza-m21h-1_7.jpg', 'jpeg', '424277', 8, 2, NULL, NULL, NULL);
INSERT INTO `tv_product_image` VALUES (4, '/images/products/products/2022/3/12/original/1647060822_bo-quan-ao-be-trai-coc-tay-in-su-tu-kidsplaza-m21h-2.jpg', 'jpeg', '1112335', 8, 2, NULL, NULL, NULL);
INSERT INTO `tv_product_image` VALUES (5, '/images/products/products/2022/3/12/original/1647060822_bo-quan-ao-be-trai-coc-tay-in-su-tu-kidsplaza-m21h-3.jpg', 'jpeg', '1081983', 8, 2, NULL, NULL, NULL);
INSERT INTO `tv_product_image` VALUES (6, '/images/products/products/2022/3/12/original/1647060822_bo-quan-ao-be-trai-coc-tay-in-su-tu-kidsplaza-m21h-4.jpg', 'jpeg', '1242280', 8, 2, NULL, NULL, NULL);
INSERT INTO `tv_product_image` VALUES (7, '/images/products/products/2022/3/12/original/1647061375_bo-quan-ao-dai-tay-be-trai-ke-soc-in-hinh-khung-long-kidsplaza-m21t-trang-xanh-1 (1).jpg', 'jpeg', '231171', 12, 4, NULL, NULL, NULL);
INSERT INTO `tv_product_image` VALUES (8, '/images/products/products/2022/3/12/original/1647061375_bo-quan-ao-dai-tay-be-trai-ke-soc-in-hinh-khung-long-kidsplaza-m21t-trang-xanh-1.jpg', 'jpeg', '231171', 12, 4, NULL, NULL, NULL);
INSERT INTO `tv_product_image` VALUES (9, '/images/products/products/2022/3/12/original/1647061375_bo-quan-ao-dai-tay-be-trai-ke-soc-in-hinh-khung-long-kidsplaza-m21t-trang-xanh-3.jpg', 'jpeg', '331937', 12, 4, NULL, NULL, NULL);
INSERT INTO `tv_product_image` VALUES (10, '/images/products/products/2022/3/12/original/1647061375_bo-quan-ao-dai-tay-be-trai-ke-soc-in-hinh-khung-long-kidsplaza-m21t-trang-xanh-4.jpg', 'jpeg', '453950', 12, 4, NULL, NULL, NULL);
INSERT INTO `tv_product_image` VALUES (11, '/images/products/products/2022/3/12/original/1647061375_bo-quan-ao-dai-tay-be-trai-ke-soc-in-hinh-khung-long-kidsplaza-m21t-trang-xanh-5.jpg', 'jpeg', '336726', 12, 4, NULL, NULL, NULL);
INSERT INTO `tv_product_image` VALUES (12, '/images/products/products/2022/3/12/original/1647061375_bo-quan-ao-dai-tay-be-trai-ke-soc-in-hinh-khung-long-kidsplaza-m21t-trang-xanh-6.jpg', 'jpeg', '264597', 12, 4, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tv_product_option
-- ----------------------------
DROP TABLE IF EXISTS `tv_product_option`;
CREATE TABLE `tv_product_option`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `style_id` int(11) NULL DEFAULT NULL,
  `color_id` int(11) NULL DEFAULT NULL,
  `size_id` int(11) NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `discount_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `discount_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `brief` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `published` tinyint(1) NULL DEFAULT NULL,
  `ordering` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tv_product_option
-- ----------------------------
INSERT INTO `tv_product_option` VALUES (1, 'Chân váy yếm cho học sinh 2 túi bên nơ sau GDP008', 'chan-vay-yem-cho-hoc-sinh-2-tui-ben-no-sau-gdp008', NULL, 7, 100, 1, 3, 1, '120000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tv_product_option` VALUES (2, 'Bộ quần áo bé trai cộc tay in sư tử M21H', 'bo-quan-ao-be-trai-coc-tay-in-su-tu-m21h', NULL, 8, 100, 1, 3, 1, '179000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tv_product_option` VALUES (3, 'Váy thời trang bé gái KidsPlaza in hình Thỏ Bunny LN21T (Trắng Cam)', 'vay-thoi-trang-be-gai-kidsplaza-in-hinh-tho-bunny-ln21t-trang-cam', NULL, 11, 1000, 1, 3, 1, '99000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tv_product_option` VALUES (4, 'Váy thời trang bé gái KidsPlaza in hình Thỏ Bunny LN21T (Trắng Cam)', 'vay-thoi-trang-be-gai-kidsplaza-in-hinh-tho-bunny-ln21t-trang-cam', NULL, 12, 1000, 1, 3, 1, '99000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tv_product_size
-- ----------------------------
DROP TABLE IF EXISTS `tv_product_size`;
CREATE TABLE `tv_product_size`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `published` tinyint(4) NULL DEFAULT NULL,
  `ordering` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tv_product_size
-- ----------------------------
INSERT INTO `tv_product_size` VALUES (1, 'X', 'x', 1, 1, '2021-10-08 16:20:30', '2021-10-08 16:20:30');
INSERT INTO `tv_product_size` VALUES (2, 'XL', 'xl', 1, 2, '2021-10-08 16:21:41', '2021-10-08 16:21:41');
INSERT INTO `tv_product_size` VALUES (3, 'XXL', 'xxl', 1, NULL, '2021-10-08 16:21:46', '2021-10-08 16:21:46');
INSERT INTO `tv_product_size` VALUES (4, 'XXXL', 'xxxl', 1, NULL, '2021-10-08 16:21:52', '2021-10-08 16:21:52');

-- ----------------------------
-- Table structure for tv_product_style
-- ----------------------------
DROP TABLE IF EXISTS `tv_product_style`;
CREATE TABLE `tv_product_style`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `published` tinyint(4) NULL DEFAULT NULL,
  `ordering` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tv_product_style
-- ----------------------------
INSERT INTO `tv_product_style` VALUES (1, 'Regular', 'regular', 1, 1, '2021-10-08 16:00:08', '2021-10-08 16:00:08');
INSERT INTO `tv_product_style` VALUES (2, 'Slim Fit', 'slim-fit', 1, 2, '2021-10-08 16:02:24', '2021-10-08 16:02:24');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '$2b$10$Q7Q6tRpGVWLO4kwSeHGtGOsd3qL12Gu8cC2nyZ9o6gAHicyfZo4Am', 'Vương Sỹ Tùng', 'vuongtungv@gmail.com', 1, 1, NULL, NULL, '2021-08-04 16:34:32', '2021-08-04 16:34:34');

SET FOREIGN_KEY_CHECKS = 1;
