/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : s-cart

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 12/10/2020 17:09:02
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
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED NULL DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue`) USING BTREE
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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2020_00_00_step1_create_tables_admin', 1);
INSERT INTO `migrations` VALUES (2, '2020_00_00_step2_create_tables_shop', 2);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_auth_codes_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES (1, NULL, 'SCart Personal Access Client', 'Cmfe1EGE776XggnasC5SYiBewuV0fRRl58DxdbVB', 'http://localhost', 1, 0, 0, '2020-09-17 23:38:00', '2020-09-17 23:38:00');
INSERT INTO `oauth_clients` VALUES (2, NULL, 'SCart Password Grant Client', 'r9HaD5dAgVSIkmmeTBQArd3gzH68zGjGeCYOw8BE', 'http://localhost', 0, 1, 0, '2020-09-17 23:38:00', '2020-09-17 23:38:00');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, 1, '2020-09-17 23:38:00', '2020-09-17 23:38:00');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sc_admin_config
-- ----------------------------
DROP TABLE IF EXISTS `sc_admin_config`;
CREATE TABLE `sc_admin_config`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `detail` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sc_admin_config_key_store_id_unique`(`key`, `store_id`) USING BTREE,
  INDEX `sc_admin_config_code_index`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_admin_config
-- ----------------------------
INSERT INTO `sc_admin_config` VALUES (1, 'Plugins', 'Payment', 'Cash', '1', 0, 0, 'Plugins/Payment/Cash::lang.title');
INSERT INTO `sc_admin_config` VALUES (2, 'Plugins', 'Shipping', 'ShippingStandard', '1', 0, 0, 'lang::Shipping Standard');
INSERT INTO `sc_admin_config` VALUES (3, 'global', 'env_global', 'ADMIN_LOG', 'on', 0, 0, 'lang::env.ADMIN_LOG');
INSERT INTO `sc_admin_config` VALUES (4, 'global', 'env_global', 'ADMIN_LOG_EXP', '', 0, 0, 'lang::env.ADMIN_LOG_EXP');
INSERT INTO `sc_admin_config` VALUES (5, 'global', 'config_other', 'domain_strict', '0', 0, 1, 'lang::config.domain_strict');
INSERT INTO `sc_admin_config` VALUES (6, 'global', 'cache', 'cache_status', '0', 0, 0, 'lang::cache.config_manager.cache_status');
INSERT INTO `sc_admin_config` VALUES (7, 'global', 'cache', 'cache_time', '600', 0, 0, 'lang::cache.config_manager.cache_time');
INSERT INTO `sc_admin_config` VALUES (8, 'global', 'cache', 'cache_category', '0', 0, 3, 'lang::cache.config_manager.cache_category');
INSERT INTO `sc_admin_config` VALUES (9, 'global', 'cache', 'cache_product', '0', 0, 4, 'lang::cache.config_manager.cache_product');
INSERT INTO `sc_admin_config` VALUES (10, 'global', 'cache', 'cache_news', '0', 0, 5, 'lang::cache.config_manager.cache_news');
INSERT INTO `sc_admin_config` VALUES (11, 'global', 'cache', 'cache_category_cms', '0', 0, 6, 'lang::cache.config_manager.cache_category_cms');
INSERT INTO `sc_admin_config` VALUES (12, 'global', 'cache', 'cache_content_cms', '0', 0, 7, 'lang::cache.config_manager.cache_content_cms');
INSERT INTO `sc_admin_config` VALUES (13, 'global', 'cache', 'cache_page', '0', 0, 8, 'lang::cache.config_manager.cache_page');
INSERT INTO `sc_admin_config` VALUES (14, 'global', 'cache', 'cache_country', '0', 0, 10, 'lang::cache.config_manager.cache_country');
INSERT INTO `sc_admin_config` VALUES (15, '', 'product_config_attribute', 'product_brand', '1', 0, 0, 'lang::product.config_manager.brand');
INSERT INTO `sc_admin_config` VALUES (16, '', 'product_config_attribute_required', 'product_brand_required', '1', 0, 0, '');
INSERT INTO `sc_admin_config` VALUES (17, '', 'product_config_attribute', 'product_supplier', '1', 0, 0, 'lang::product.config_manager.supplier');
INSERT INTO `sc_admin_config` VALUES (18, '', 'product_config_attribute_required', 'product_supplier_required', '1', 0, 0, '');
INSERT INTO `sc_admin_config` VALUES (19, '', 'product_config_attribute', 'product_price', '1', 0, 0, 'lang::product.config_manager.price');
INSERT INTO `sc_admin_config` VALUES (20, '', 'product_config_attribute_required', 'product_price_required', '1', 0, 0, '');
INSERT INTO `sc_admin_config` VALUES (21, '', 'product_config_attribute', 'product_cost', '1', 0, 0, 'lang::product.config_manager.cost');
INSERT INTO `sc_admin_config` VALUES (22, '', 'product_config_attribute_required', 'product_cost_required', '1', 0, 0, '');
INSERT INTO `sc_admin_config` VALUES (23, '', 'product_config_attribute', 'product_promotion', '1', 0, 0, 'lang::product.config_manager.promotion');
INSERT INTO `sc_admin_config` VALUES (24, '', 'product_config_attribute_required', 'product_promotion_required', '1', 0, 0, '');
INSERT INTO `sc_admin_config` VALUES (25, '', 'product_config_attribute', 'product_stock', '1', 0, 0, 'lang::product.config_manager.stock');
INSERT INTO `sc_admin_config` VALUES (26, '', 'product_config_attribute_required', 'product_stock_required', '1', 0, 0, '');
INSERT INTO `sc_admin_config` VALUES (27, '', 'product_config_attribute', 'product_kind', '1', 0, 0, 'lang::product.config_manager.kind');
INSERT INTO `sc_admin_config` VALUES (28, '', 'product_config_attribute', 'product_property', '1', 0, 0, 'lang::product.config_manager.property');
INSERT INTO `sc_admin_config` VALUES (29, '', 'product_config_attribute_required', 'product_property_required', '1', 0, 0, '');
INSERT INTO `sc_admin_config` VALUES (30, '', 'product_config_attribute', 'product_attribute', '1', 0, 0, 'lang::product.config_manager.attribute');
INSERT INTO `sc_admin_config` VALUES (31, '', 'product_config_attribute_required', 'product_attribute_required', '1', 0, 0, '');
INSERT INTO `sc_admin_config` VALUES (32, '', 'product_config_attribute', 'product_available', '1', 0, 0, 'lang::product.config_manager.available');
INSERT INTO `sc_admin_config` VALUES (33, '', 'product_config_attribute_required', 'product_available_required', '1', 0, 0, '');
INSERT INTO `sc_admin_config` VALUES (34, '', 'product_config_attribute', 'product_weight', '1', 0, 0, 'lang::product.config_manager.weight');
INSERT INTO `sc_admin_config` VALUES (35, '', 'product_config_attribute_required', 'product_weight_required', '1', 0, 0, '');
INSERT INTO `sc_admin_config` VALUES (36, '', 'product_config_attribute', 'product_length', '1', 0, 0, 'lang::product.config_manager.length');
INSERT INTO `sc_admin_config` VALUES (37, '', 'product_config_attribute_required', 'product_length_required', '1', 0, 0, '');
INSERT INTO `sc_admin_config` VALUES (38, '', 'product_config', 'product_display_out_of_stock', '1', 0, 19, 'lang::admin.product_display_out_of_stock');
INSERT INTO `sc_admin_config` VALUES (39, '', 'product_config', 'show_date_available', '1', 0, 21, 'lang::admin.show_date_available');
INSERT INTO `sc_admin_config` VALUES (40, '', 'product_config', 'product_tax', '1', 0, 0, 'lang::product.config_manager.tax');
INSERT INTO `sc_admin_config` VALUES (41, '', 'customer_config_attribute', 'customer_lastname', '1', 0, 0, 'lang::customer.config_manager.lastname');
INSERT INTO `sc_admin_config` VALUES (42, '', 'customer_config_attribute_required', 'customer_lastname_required', '1', 0, 0, '');
INSERT INTO `sc_admin_config` VALUES (43, '', 'customer_config_attribute', 'customer_address1', '1', 0, 0, 'lang::customer.config_manager.address1');
INSERT INTO `sc_admin_config` VALUES (44, '', 'customer_config_attribute_required', 'customer_address1_required', '1', 0, 0, '');
INSERT INTO `sc_admin_config` VALUES (45, '', 'customer_config_attribute', 'customer_address2', '1', 0, 0, 'lang::customer.config_manager.address2');
INSERT INTO `sc_admin_config` VALUES (46, '', 'customer_config_attribute_required', 'customer_address2_required', '1', 0, 0, '');
INSERT INTO `sc_admin_config` VALUES (47, '', 'customer_config_attribute', 'customer_company', '0', 0, 0, 'lang::customer.config_manager.company');
INSERT INTO `sc_admin_config` VALUES (48, '', 'customer_config_attribute_required', 'customer_company_required', '0', 0, 0, '');
INSERT INTO `sc_admin_config` VALUES (49, '', 'customer_config_attribute', 'customer_postcode', '0', 0, 0, 'lang::customer.config_manager.postcode');
INSERT INTO `sc_admin_config` VALUES (50, '', 'customer_config_attribute_required', 'customer_postcode_required', '0', 0, 0, '');
INSERT INTO `sc_admin_config` VALUES (51, '', 'customer_config_attribute', 'customer_country', '1', 0, 0, 'lang::customer.config_manager.country');
INSERT INTO `sc_admin_config` VALUES (52, '', 'customer_config_attribute_required', 'customer_country_required', '1', 0, 0, '');
INSERT INTO `sc_admin_config` VALUES (53, '', 'customer_config_attribute', 'customer_group', '0', 0, 0, 'lang::customer.config_manager.group');
INSERT INTO `sc_admin_config` VALUES (54, '', 'customer_config_attribute_required', 'customer_group_required', '0', 0, 0, '');
INSERT INTO `sc_admin_config` VALUES (55, '', 'customer_config_attribute', 'customer_birthday', '0', 0, 0, 'lang::customer.config_manager.birthday');
INSERT INTO `sc_admin_config` VALUES (56, '', 'customer_config_attribute_required', 'customer_birthday_required', '0', 0, 0, '');
INSERT INTO `sc_admin_config` VALUES (57, '', 'customer_config_attribute', 'customer_sex', '0', 0, 0, 'lang::customer.config_manager.sex');
INSERT INTO `sc_admin_config` VALUES (58, '', 'customer_config_attribute_required', 'customer_sex_required', '0', 0, 0, '');
INSERT INTO `sc_admin_config` VALUES (59, '', 'customer_config_attribute', 'customer_phone', '1', 0, 1, 'lang::customer.config_manager.phone');
INSERT INTO `sc_admin_config` VALUES (60, '', 'customer_config_attribute_required', 'customer_phone_required', '1', 0, 1, '');
INSERT INTO `sc_admin_config` VALUES (61, '', 'customer_config_attribute', 'customer_name_kana', '0', 0, 1, 'lang::customer.config_manager.name_kana');
INSERT INTO `sc_admin_config` VALUES (62, '', 'customer_config_attribute_required', 'customer_name_kana_required', '0', 0, 1, '');
INSERT INTO `sc_admin_config` VALUES (63, '', 'admin_config', 'ADMIN_NAME', 'Jhon', 0, 0, 'lang::env.ADMIN_NAME');
INSERT INTO `sc_admin_config` VALUES (64, '', 'admin_config', 'ADMIN_TITLE', 'Admin', 0, 0, 'lang::env.ADMIN_TITLE');
INSERT INTO `sc_admin_config` VALUES (65, '', 'admin_config', 'ADMIN_LOGO', 'Shop Admin', 0, 0, 'lang::env.ADMIN_LOGO');
INSERT INTO `sc_admin_config` VALUES (66, '', 'admin_config', 'LOG_SLACK_WEBHOOK_URL', '', 0, 0, 'lang::env.LOG_SLACK_WEBHOOK_URL');
INSERT INTO `sc_admin_config` VALUES (67, '', 'display_config', 'product_top', '8', 0, 0, 'lang::admin.product_top');
INSERT INTO `sc_admin_config` VALUES (68, '', 'display_config', 'product_list', '12', 0, 0, 'lang::admin.list_product');
INSERT INTO `sc_admin_config` VALUES (69, '', 'display_config', 'product_relation', '4', 0, 0, 'lang::admin.relation_product');
INSERT INTO `sc_admin_config` VALUES (70, '', 'display_config', 'product_viewed', '4', 0, 0, 'lang::admin.viewed_product');
INSERT INTO `sc_admin_config` VALUES (71, '', 'display_config', 'item_list', '12', 0, 0, 'lang::admin.item_list');
INSERT INTO `sc_admin_config` VALUES (72, '', 'display_config', 'item_top', '8', 0, 0, 'lang::admin.item_top');
INSERT INTO `sc_admin_config` VALUES (73, '', 'order_config', 'shop_allow_guest', '1', 0, 11, 'lang::admin.shop_allow_guest');
INSERT INTO `sc_admin_config` VALUES (74, '', 'order_config', 'product_preorder', '1', 0, 18, 'lang::admin.product_preorder');
INSERT INTO `sc_admin_config` VALUES (75, '', 'order_config', 'product_buy_out_of_stock', '1', 0, 20, 'lang::admin.product_buy_out_of_stock');
INSERT INTO `sc_admin_config` VALUES (76, '', 'email_action', 'email_action_mode', '1', 0, 0, 'lang::email.email_action.email_action_mode');
INSERT INTO `sc_admin_config` VALUES (77, '', 'email_action', 'email_action_queue', '0', 0, 1, 'lang::email.email_action.email_action_queue');
INSERT INTO `sc_admin_config` VALUES (78, '', 'email_action', 'order_success_to_admin', '0', 0, 1, 'lang::email.email_action.order_success_to_admin');
INSERT INTO `sc_admin_config` VALUES (79, '', 'email_action', 'order_success_to_customer', '0', 0, 2, 'lang::email.email_action.order_success_to_cutomer');
INSERT INTO `sc_admin_config` VALUES (80, '', 'email_action', 'welcome_customer', '0', 0, 4, 'lang::email.email_action.welcome_customer');
INSERT INTO `sc_admin_config` VALUES (81, '', 'email_action', 'contact_to_admin', '1', 0, 6, 'lang::email.email_action.contact_to_admin');
INSERT INTO `sc_admin_config` VALUES (82, '', 'smtp_config', 'smtp_host', '', 0, 1, 'lang::email.smtp_host');
INSERT INTO `sc_admin_config` VALUES (83, '', 'smtp_config', 'smtp_user', '', 0, 2, 'lang::email.smtp_user');
INSERT INTO `sc_admin_config` VALUES (84, '', 'smtp_config', 'smtp_password', '', 0, 3, 'lang::email.smtp_password');
INSERT INTO `sc_admin_config` VALUES (85, '', 'smtp_config', 'smtp_security', '', 0, 4, 'lang::email.smtp_security');
INSERT INTO `sc_admin_config` VALUES (86, '', 'smtp_config', 'smtp_port', '', 0, 5, 'lang::email.smtp_port');
INSERT INTO `sc_admin_config` VALUES (87, '', 'url_config', 'SUFFIX_URL', '.html', 0, 0, 'lang::url.SUFFIX_URL');
INSERT INTO `sc_admin_config` VALUES (88, '', 'url_config', 'PREFIX_SHOP', 'shop', 0, 0, 'lang::env.PREFIX_SHOP');
INSERT INTO `sc_admin_config` VALUES (89, '', 'url_config', 'PREFIX_BRAND', 'brand', 0, 0, 'lang::env.PREFIX_BRAND');
INSERT INTO `sc_admin_config` VALUES (90, '', 'url_config', 'PREFIX_SUPPLIER', 'supplier', 0, 0, 'lang::env.PREFIX_SUPPLIER');
INSERT INTO `sc_admin_config` VALUES (91, '', 'url_config', 'PREFIX_CATEGORY', 'category', 0, 0, 'lang::env.PREFIX_CATEGORY');
INSERT INTO `sc_admin_config` VALUES (92, '', 'url_config', 'PREFIX_PRODUCT', 'product', 0, 0, 'lang::env.PREFIX_PRODUCT');
INSERT INTO `sc_admin_config` VALUES (93, '', 'url_config', 'PREFIX_SEARCH', 'search', 0, 0, 'lang::env.PREFIX_SEARCH');
INSERT INTO `sc_admin_config` VALUES (94, '', 'url_config', 'PREFIX_CONTACT', 'contact', 0, 0, 'lang::env.PREFIX_CONTACT');
INSERT INTO `sc_admin_config` VALUES (95, '', 'url_config', 'PREFIX_NEWS', 'news', 0, 0, 'lang::env.PREFIX_NEWS');
INSERT INTO `sc_admin_config` VALUES (96, '', 'url_config', 'PREFIX_MEMBER', 'member', 0, 0, 'lang::env.PREFIX_MEMBER');
INSERT INTO `sc_admin_config` VALUES (97, '', 'url_config', 'PREFIX_MEMBER_ORDER_LIST', 'order-list', 0, 0, 'lang::env.PREFIX_MEMBER_ORDER_LIST');
INSERT INTO `sc_admin_config` VALUES (98, '', 'url_config', 'PREFIX_MEMBER_CHANGE_PWD', 'change-password', 0, 0, 'lang::env.PREFIX_MEMBER_CHANGE_PWD');
INSERT INTO `sc_admin_config` VALUES (99, '', 'url_config', 'PREFIX_MEMBER_CHANGE_INFO', 'change-info', 0, 0, 'lang::env.PREFIX_MEMBER_CHANGE_INFO');
INSERT INTO `sc_admin_config` VALUES (100, '', 'url_config', 'PREFIX_CMS_CATEGORY', 'cms-category', 0, 0, 'lang::env.PREFIX_CMS_CATEGORY');
INSERT INTO `sc_admin_config` VALUES (101, '', 'url_config', 'PREFIX_CMS_ENTRY', 'entry', 0, 0, 'lang::env.PREFIX_CMS_ENTRY');
INSERT INTO `sc_admin_config` VALUES (102, '', 'url_config', 'PREFIX_CART_WISHLIST', 'wishlst', 0, 0, 'lang::env.PREFIX_CART_WISHLIST');
INSERT INTO `sc_admin_config` VALUES (103, '', 'url_config', 'PREFIX_CART_COMPARE', 'compare', 0, 0, 'lang::env.PREFIX_CART_COMPARE');
INSERT INTO `sc_admin_config` VALUES (104, '', 'url_config', 'PREFIX_CART_DEFAULT', 'cart', 0, 0, 'lang::env.PREFIX_CART_DEFAULT');
INSERT INTO `sc_admin_config` VALUES (105, '', 'url_config', 'PREFIX_CART_CHECKOUT', 'checkout', 0, 0, 'lang::env.PREFIX_CART_CHECKOUT');
INSERT INTO `sc_admin_config` VALUES (106, '', 'url_config', 'PREFIX_ORDER_SUCCESS', 'order-success', 0, 0, 'lang::env.PREFIX_ORDER_SUCCESS');
INSERT INTO `sc_admin_config` VALUES (107, '', 'api_config', 'api_connection_required', '0', 0, 1, 'lang::api_connection.api_connection_required');
INSERT INTO `sc_admin_config` VALUES (108, 'Plugins', 'Payment', 'Paypal', '1', 0, 0, 'Plugins/Payment/Paypal::lang.title');
INSERT INTO `sc_admin_config` VALUES (109, '', 'paypal_config', 'paypal_load_config', 'database', 0, 0, 'Plugins/Payment/Paypal::lang.paypal_load_config');
INSERT INTO `sc_admin_config` VALUES (110, '', 'paypal_config', 'paypal_client_id', '', 0, 0, 'Plugins/Payment/Paypal::lang.paypal_client_id');
INSERT INTO `sc_admin_config` VALUES (111, '', 'paypal_config', 'paypal_secrect', '', 0, 0, 'Plugins/Payment/Paypal::lang.paypal_secrect');
INSERT INTO `sc_admin_config` VALUES (112, '', 'paypal_config', 'paypal_log', '0', 0, 0, 'Plugins/Payment/Paypal::lang.paypal_log');
INSERT INTO `sc_admin_config` VALUES (113, '', 'paypal_config', 'paypal_path_log', 'logs/paypal.log', 0, 0, 'Plugins/Payment/Paypal::lang.paypal_path_log');
INSERT INTO `sc_admin_config` VALUES (114, '', 'paypal_config', 'paypal_mode', 'sandbox', 0, 0, 'Plugins/Payment/Paypal::Paypal.paypal_mode');
INSERT INTO `sc_admin_config` VALUES (115, '', 'paypal_config', 'paypal_logLevel', 'DEBUG', 0, 0, 'Plugins/Payment/Paypal::lang.paypal_logLevel');
INSERT INTO `sc_admin_config` VALUES (116, '', 'paypal_config', 'paypal_order_status_success', '2', 0, 0, 'Plugins/Payment/Paypal::lang.paypal_order_status_success');
INSERT INTO `sc_admin_config` VALUES (117, '', 'paypal_config', 'paypal_order_status_faild', '6', 0, 0, 'Plugins/Payment/Paypal::lang.paypal_order_status_faild');
INSERT INTO `sc_admin_config` VALUES (118, '', 'paypal_config', 'paypal_payment_status', '3', 0, 0, 'Plugins/Payment/Paypal::lang.paypal_payment_status');
INSERT INTO `sc_admin_config` VALUES (119, 'Plugins', 'Payment', 'PaypalExpress', '1', 0, 0, 'Plugins/Payment/PaypalExpress::lang.title');
INSERT INTO `sc_admin_config` VALUES (120, '', 'PaypalExpress_config', 'PaypalExpress_client_id', 'AYVL7CKtzfmrhjJLTGyt1T7nx9ql_l7Ps3dTYyRJOZq82e0OBrqQ0JnB7jcA6bhcRWwLYKB5yKY-Tytl', 0, 0, 'Plugins/Payment/PaypalExpress::lang.paypal_client_id');
INSERT INTO `sc_admin_config` VALUES (121, '', 'PaypalExpress_config', 'PaypalExpress_secrect', 'EPNwrEa8lfWe7eQKjNC0WujYUVNE9ltjGUkqP7EIImXG_4MOSlR5H52uLJi8UJIcajCB6u9TdmRBwPMZ', 0, 0, 'Plugins/Payment/PaypalExpress::lang.paypal_secrect');
INSERT INTO `sc_admin_config` VALUES (122, '', 'PaypalExpress_config', 'PaypalExpress_mode', 'sandbox', 0, 0, 'Plugins/Payment/PaypalExpress::PaypalExpress.paypal_mode');
INSERT INTO `sc_admin_config` VALUES (123, '', 'PaypalExpress_config', 'PaypalExpress_order_status_success', '5', 0, 0, 'Plugins/Payment/PaypalExpress::lang.paypal_order_status_success');
INSERT INTO `sc_admin_config` VALUES (124, '', 'PaypalExpress_config', 'PaypalExpress_order_status_faild', '6', 0, 0, 'Plugins/Payment/PaypalExpress::lang.paypal_order_status_faild');
INSERT INTO `sc_admin_config` VALUES (125, '', 'PaypalExpress_config', 'PaypalExpress_payment_status', '3', 0, 0, 'Plugins/Payment/PaypalExpress::lang.paypal_payment_status');

-- ----------------------------
-- Table structure for sc_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `sc_admin_log`;
CREATE TABLE `sc_admin_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sc_admin_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1043 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_admin_log
-- ----------------------------
INSERT INTO `sc_admin_log` VALUES (1, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:38:17', '2020-09-17 23:38:17');
INSERT INTO `sc_admin_log` VALUES (2, 1, 'sc_admin/theme/dark', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:38:26', '2020-09-17 23:38:26');
INSERT INTO `sc_admin_log` VALUES (3, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:38:26', '2020-09-17 23:38:26');
INSERT INTO `sc_admin_log` VALUES (4, 1, 'sc_admin/theme/blue', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:38:30', '2020-09-17 23:38:30');
INSERT INTO `sc_admin_log` VALUES (5, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:38:31', '2020-09-17 23:38:31');
INSERT INTO `sc_admin_log` VALUES (6, 1, 'sc_admin/theme/white', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:38:35', '2020-09-17 23:38:35');
INSERT INTO `sc_admin_log` VALUES (7, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:38:35', '2020-09-17 23:38:35');
INSERT INTO `sc_admin_log` VALUES (8, 1, 'sc_admin/theme/pink', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:38:39', '2020-09-17 23:38:39');
INSERT INTO `sc_admin_log` VALUES (9, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:38:40', '2020-09-17 23:38:40');
INSERT INTO `sc_admin_log` VALUES (10, 1, 'sc_admin/theme/lightblue', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:38:44', '2020-09-17 23:38:44');
INSERT INTO `sc_admin_log` VALUES (11, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:38:44', '2020-09-17 23:38:44');
INSERT INTO `sc_admin_log` VALUES (12, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:38:55', '2020-09-17 23:38:55');
INSERT INTO `sc_admin_log` VALUES (13, 1, 'sc_admin/plugin/shipping', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:38:59', '2020-09-17 23:38:59');
INSERT INTO `sc_admin_log` VALUES (14, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:39:06', '2020-09-17 23:39:06');
INSERT INTO `sc_admin_log` VALUES (15, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:39:18', '2020-09-17 23:39:18');
INSERT INTO `sc_admin_log` VALUES (16, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:39:23', '2020-09-17 23:39:23');
INSERT INTO `sc_admin_log` VALUES (17, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:39:28', '2020-09-17 23:39:28');
INSERT INTO `sc_admin_log` VALUES (18, 1, 'sc_admin/api_connection', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:39:36', '2020-09-17 23:39:36');
INSERT INTO `sc_admin_log` VALUES (19, 1, 'sc_admin/language', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:39:42', '2020-09-17 23:39:42');
INSERT INTO `sc_admin_log` VALUES (20, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"language\"}', '2020-09-17 23:40:34', '2020-09-17 23:40:34');
INSERT INTO `sc_admin_log` VALUES (21, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"language\",\"_\":\"1600360836725\"}', '2020-09-17 23:40:40', '2020-09-17 23:40:40');
INSERT INTO `sc_admin_log` VALUES (22, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"language\",\"_\":\"1600360836726\"}', '2020-09-17 23:40:41', '2020-09-17 23:40:41');
INSERT INTO `sc_admin_log` VALUES (23, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"language\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600360836727\"}', '2020-09-17 23:40:41', '2020-09-17 23:40:41');
INSERT INTO `sc_admin_log` VALUES (24, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"language\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-17 23:41:13', '2020-09-17 23:41:13');
INSERT INTO `sc_admin_log` VALUES (25, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"language\",\"_\":\"1600360836728\"}', '2020-09-17 23:41:14', '2020-09-17 23:41:14');
INSERT INTO `sc_admin_log` VALUES (26, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"language\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600360836729\"}', '2020-09-17 23:41:14', '2020-09-17 23:41:14');
INSERT INTO `sc_admin_log` VALUES (27, 1, 'sc_admin/language/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"France\",\"code\":\"fr\",\"icon\":\"http:\\/\\/localhost:8000\\/data\\/language\\/download.png\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-17 23:41:35', '2020-09-17 23:41:35');
INSERT INTO `sc_admin_log` VALUES (28, 1, 'sc_admin/language/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:41:35', '2020-09-17 23:41:35');
INSERT INTO `sc_admin_log` VALUES (29, 1, 'sc_admin/language/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:41:41', '2020-09-17 23:41:41');
INSERT INTO `sc_admin_log` VALUES (30, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:41:47', '2020-09-17 23:41:47');
INSERT INTO `sc_admin_log` VALUES (31, 1, 'sc_admin/email', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:42:23', '2020-09-17 23:42:23');
INSERT INTO `sc_admin_log` VALUES (32, 1, 'sc_admin/email_template', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:42:28', '2020-09-17 23:42:28');
INSERT INTO `sc_admin_log` VALUES (33, 1, 'sc_admin/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:42:34', '2020-09-17 23:42:34');
INSERT INTO `sc_admin_log` VALUES (34, 1, 'sc_admin/store_maintain', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:42:41', '2020-09-17 23:42:41');
INSERT INTO `sc_admin_log` VALUES (35, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:42:53', '2020-09-17 23:42:53');
INSERT INTO `sc_admin_log` VALUES (36, 1, 'sc_admin/template/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:42:59', '2020-09-17 23:42:59');
INSERT INTO `sc_admin_log` VALUES (37, 1, 'sc_admin/template/import', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:43:06', '2020-09-17 23:43:06');
INSERT INTO `sc_admin_log` VALUES (38, 1, 'sc_admin/template/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:43:06', '2020-09-17 23:43:06');
INSERT INTO `sc_admin_log` VALUES (39, 1, 'sc_admin/link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:43:24', '2020-09-17 23:43:24');
INSERT INTO `sc_admin_log` VALUES (40, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:43:31', '2020-09-17 23:43:31');
INSERT INTO `sc_admin_log` VALUES (41, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:43:46', '2020-09-17 23:43:46');
INSERT INTO `sc_admin_log` VALUES (42, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:43:53', '2020-09-17 23:43:53');
INSERT INTO `sc_admin_log` VALUES (43, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-17 23:43:56', '2020-09-17 23:43:56');
INSERT INTO `sc_admin_log` VALUES (44, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:31:36', '2020-09-18 00:31:36');
INSERT INTO `sc_admin_log` VALUES (45, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:31:41', '2020-09-18 00:31:41');
INSERT INTO `sc_admin_log` VALUES (46, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:31:45', '2020-09-18 00:31:45');
INSERT INTO `sc_admin_log` VALUES (47, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:31:49', '2020-09-18 00:31:49');
INSERT INTO `sc_admin_log` VALUES (48, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:32:35', '2020-09-18 00:32:35');
INSERT INTO `sc_admin_log` VALUES (49, 1, 'sc_admin/config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:32:47', '2020-09-18 00:32:47');
INSERT INTO `sc_admin_log` VALUES (50, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:33:12', '2020-09-18 00:33:12');
INSERT INTO `sc_admin_log` VALUES (51, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 00:33:28', '2020-09-18 00:33:28');
INSERT INTO `sc_admin_log` VALUES (52, 1, 'sc_admin/tax', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:33:35', '2020-09-18 00:33:35');
INSERT INTO `sc_admin_log` VALUES (53, 1, 'sc_admin/length_unit', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:33:43', '2020-09-18 00:33:43');
INSERT INTO `sc_admin_log` VALUES (54, 1, 'sc_admin/report/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:33:52', '2020-09-18 00:33:52');
INSERT INTO `sc_admin_log` VALUES (55, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:34:04', '2020-09-18 00:34:04');
INSERT INTO `sc_admin_log` VALUES (56, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:34:21', '2020-09-18 00:34:21');
INSERT INTO `sc_admin_log` VALUES (57, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:34:25', '2020-09-18 00:34:25');
INSERT INTO `sc_admin_log` VALUES (58, 1, 'sc_admin/banner/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:34:28', '2020-09-18 00:34:28');
INSERT INTO `sc_admin_log` VALUES (59, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"banner\"}', '2020-09-18 00:34:33', '2020-09-18 00:34:33');
INSERT INTO `sc_admin_log` VALUES (60, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1600364074822\"}', '2020-09-18 00:34:35', '2020-09-18 00:34:35');
INSERT INTO `sc_admin_log` VALUES (61, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1600364074823\"}', '2020-09-18 00:34:35', '2020-09-18 00:34:35');
INSERT INTO `sc_admin_log` VALUES (62, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600364074824\"}', '2020-09-18 00:34:35', '2020-09-18 00:34:35');
INSERT INTO `sc_admin_log` VALUES (63, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600364074825\"}', '2020-09-18 00:34:41', '2020-09-18 00:34:41');
INSERT INTO `sc_admin_log` VALUES (64, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600364074826\"}', '2020-09-18 00:34:45', '2020-09-18 00:34:45');
INSERT INTO `sc_admin_log` VALUES (65, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:35:42', '2020-09-18 00:35:42');
INSERT INTO `sc_admin_log` VALUES (66, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1600364074827\"}', '2020-09-18 00:35:43', '2020-09-18 00:35:43');
INSERT INTO `sc_admin_log` VALUES (67, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600364074828\"}', '2020-09-18 00:35:43', '2020-09-18 00:35:43');
INSERT INTO `sc_admin_log` VALUES (68, 1, 'sc_admin/banner/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"image\":\"http:\\/\\/localhost:8000\\/data\\/banner\\/Main-banner-4-1903x600.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"store\":[\"0\"],\"type\":\"2\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:36:02', '2020-09-18 00:36:02');
INSERT INTO `sc_admin_log` VALUES (69, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:36:02', '2020-09-18 00:36:02');
INSERT INTO `sc_admin_log` VALUES (70, 1, 'sc_admin/order/detail/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:36:12', '2020-09-18 00:36:12');
INSERT INTO `sc_admin_log` VALUES (71, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:36:35', '2020-09-18 00:36:35');
INSERT INTO `sc_admin_log` VALUES (72, 1, 'sc_admin/banner/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:37:06', '2020-09-18 00:37:06');
INSERT INTO `sc_admin_log` VALUES (73, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"banner\"}', '2020-09-18 00:37:10', '2020-09-18 00:37:10');
INSERT INTO `sc_admin_log` VALUES (74, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1600364231271\"}', '2020-09-18 00:37:11', '2020-09-18 00:37:11');
INSERT INTO `sc_admin_log` VALUES (75, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1600364231272\"}', '2020-09-18 00:37:12', '2020-09-18 00:37:12');
INSERT INTO `sc_admin_log` VALUES (76, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600364231273\"}', '2020-09-18 00:37:12', '2020-09-18 00:37:12');
INSERT INTO `sc_admin_log` VALUES (77, 1, 'sc_admin/banner/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/bgbr.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"store\":[\"0\"],\"type\":\"2\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:37:30', '2020-09-18 00:37:30');
INSERT INTO `sc_admin_log` VALUES (78, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:37:31', '2020-09-18 00:37:31');
INSERT INTO `sc_admin_log` VALUES (79, 1, 'sc_admin/banner/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:37:37', '2020-09-18 00:37:37');
INSERT INTO `sc_admin_log` VALUES (80, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"banner\"}', '2020-09-18 00:37:44', '2020-09-18 00:37:44');
INSERT INTO `sc_admin_log` VALUES (81, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1600364264980\"}', '2020-09-18 00:37:45', '2020-09-18 00:37:45');
INSERT INTO `sc_admin_log` VALUES (82, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1600364264981\"}', '2020-09-18 00:37:45', '2020-09-18 00:37:45');
INSERT INTO `sc_admin_log` VALUES (83, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600364264982\"}', '2020-09-18 00:37:46', '2020-09-18 00:37:46');
INSERT INTO `sc_admin_log` VALUES (84, 1, 'sc_admin/banner/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/Main-banner-4-1903x600.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"store\":[\"0\"],\"type\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:38:07', '2020-09-18 00:38:07');
INSERT INTO `sc_admin_log` VALUES (85, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:38:08', '2020-09-18 00:38:08');
INSERT INTO `sc_admin_log` VALUES (86, 1, 'sc_admin/config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:41:19', '2020-09-18 00:41:19');
INSERT INTO `sc_admin_log` VALUES (87, 1, 'sc_admin/language', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:41:25', '2020-09-18 00:41:25');
INSERT INTO `sc_admin_log` VALUES (88, 1, 'sc_admin/language/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:41:32', '2020-09-18 00:41:32');
INSERT INTO `sc_admin_log` VALUES (89, 1, 'sc_admin/language/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:41:36', '2020-09-18 00:41:36');
INSERT INTO `sc_admin_log` VALUES (90, 1, 'sc_admin/language/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:47:12', '2020-09-18 00:47:12');
INSERT INTO `sc_admin_log` VALUES (91, 1, 'sc_admin/language/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:47:14', '2020-09-18 00:47:14');
INSERT INTO `sc_admin_log` VALUES (92, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"language\"}', '2020-09-18 00:47:17', '2020-09-18 00:47:17');
INSERT INTO `sc_admin_log` VALUES (93, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"language\",\"_\":\"1600364838202\"}', '2020-09-18 00:47:18', '2020-09-18 00:47:18');
INSERT INTO `sc_admin_log` VALUES (94, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"language\",\"_\":\"1600364838203\"}', '2020-09-18 00:47:19', '2020-09-18 00:47:19');
INSERT INTO `sc_admin_log` VALUES (95, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"language\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600364838204\"}', '2020-09-18 00:47:19', '2020-09-18 00:47:19');
INSERT INTO `sc_admin_log` VALUES (96, 1, 'sc_admin/language/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"France\",\"code\":\"fr\",\"icon\":\"http:\\/\\/localhost:8000\\/data\\/language\\/flag_uk.jpg\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:47:28', '2020-09-18 00:47:28');
INSERT INTO `sc_admin_log` VALUES (97, 1, 'sc_admin/language/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:47:28', '2020-09-18 00:47:28');
INSERT INTO `sc_admin_log` VALUES (98, 1, 'sc_admin/language/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:47:33', '2020-09-18 00:47:33');
INSERT INTO `sc_admin_log` VALUES (99, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"language\"}', '2020-09-18 00:47:39', '2020-09-18 00:47:39');
INSERT INTO `sc_admin_log` VALUES (100, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"language\",\"_\":\"1600364859881\"}', '2020-09-18 00:47:40', '2020-09-18 00:47:40');
INSERT INTO `sc_admin_log` VALUES (101, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"language\",\"_\":\"1600364859882\"}', '2020-09-18 00:47:40', '2020-09-18 00:47:40');
INSERT INTO `sc_admin_log` VALUES (102, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"language\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600364859883\"}', '2020-09-18 00:47:40', '2020-09-18 00:47:40');
INSERT INTO `sc_admin_log` VALUES (103, 1, 'sc_admin/language/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"France\",\"code\":\"fr\",\"icon\":\"http:\\/\\/localhost:8000\\/data\\/language\\/flag_fr.jpg\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:47:45', '2020-09-18 00:47:45');
INSERT INTO `sc_admin_log` VALUES (104, 1, 'sc_admin/language/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:47:45', '2020-09-18 00:47:45');
INSERT INTO `sc_admin_log` VALUES (105, 1, 'sc_admin/language/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:47:48', '2020-09-18 00:47:48');
INSERT INTO `sc_admin_log` VALUES (106, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"language\"}', '2020-09-18 00:47:56', '2020-09-18 00:47:56');
INSERT INTO `sc_admin_log` VALUES (107, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"language\",\"_\":\"1600364877056\"}', '2020-09-18 00:47:57', '2020-09-18 00:47:57');
INSERT INTO `sc_admin_log` VALUES (108, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"language\",\"_\":\"1600364877057\"}', '2020-09-18 00:47:57', '2020-09-18 00:47:57');
INSERT INTO `sc_admin_log` VALUES (109, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"language\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600364877058\"}', '2020-09-18 00:47:58', '2020-09-18 00:47:58');
INSERT INTO `sc_admin_log` VALUES (110, 1, 'sc_admin/language/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"English\",\"code\":\"en\",\"icon\":\"http:\\/\\/localhost:8000\\/data\\/language\\/flag_uk.jpg\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:48:04', '2020-09-18 00:48:04');
INSERT INTO `sc_admin_log` VALUES (111, 1, 'sc_admin/language/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:48:04', '2020-09-18 00:48:04');
INSERT INTO `sc_admin_log` VALUES (112, 1, 'sc_admin/language/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:48:53', '2020-09-18 00:48:53');
INSERT INTO `sc_admin_log` VALUES (113, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"language\"}', '2020-09-18 00:48:58', '2020-09-18 00:48:58');
INSERT INTO `sc_admin_log` VALUES (114, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"language\",\"_\":\"1600364939018\"}', '2020-09-18 00:48:59', '2020-09-18 00:48:59');
INSERT INTO `sc_admin_log` VALUES (115, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"language\",\"_\":\"1600364939019\"}', '2020-09-18 00:48:59', '2020-09-18 00:48:59');
INSERT INTO `sc_admin_log` VALUES (116, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"language\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600364939020\"}', '2020-09-18 00:49:00', '2020-09-18 00:49:00');
INSERT INTO `sc_admin_log` VALUES (117, 1, 'sc_admin/language/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"Ti\\u1ebfng Vi\\u1ec7t\",\"code\":\"vi\",\"icon\":\"http:\\/\\/localhost:8000\\/data\\/language\\/flag_vn.jpg\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:49:03', '2020-09-18 00:49:03');
INSERT INTO `sc_admin_log` VALUES (118, 1, 'sc_admin/language/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:49:04', '2020-09-18 00:49:04');
INSERT INTO `sc_admin_log` VALUES (119, 1, 'sc_admin/language/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:51:56', '2020-09-18 00:51:56');
INSERT INTO `sc_admin_log` VALUES (120, 1, 'sc_admin/language/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"France\",\"code\":\"fr\",\"icon\":\"\\/data\\/language\\/flag_fr.png\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:52:11', '2020-09-18 00:52:11');
INSERT INTO `sc_admin_log` VALUES (121, 1, 'sc_admin/language/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:52:12', '2020-09-18 00:52:12');
INSERT INTO `sc_admin_log` VALUES (122, 1, 'sc_admin/language/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:52:15', '2020-09-18 00:52:15');
INSERT INTO `sc_admin_log` VALUES (123, 1, 'sc_admin/language/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"Ti\\u1ebfng Vi\\u1ec7t\",\"code\":\"vi\",\"icon\":\"\\/data\\/language\\/flag_vn.png\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:52:23', '2020-09-18 00:52:23');
INSERT INTO `sc_admin_log` VALUES (124, 1, 'sc_admin/language/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:52:23', '2020-09-18 00:52:23');
INSERT INTO `sc_admin_log` VALUES (125, 1, 'sc_admin/language/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:52:27', '2020-09-18 00:52:27');
INSERT INTO `sc_admin_log` VALUES (126, 1, 'sc_admin/language/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"English\",\"code\":\"en\",\"icon\":\"\\/data\\/language\\/flag_uk.png\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:52:36', '2020-09-18 00:52:36');
INSERT INTO `sc_admin_log` VALUES (127, 1, 'sc_admin/language/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:52:36', '2020-09-18 00:52:36');
INSERT INTO `sc_admin_log` VALUES (128, 1, 'sc_admin/language/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:52:48', '2020-09-18 00:52:48');
INSERT INTO `sc_admin_log` VALUES (129, 1, 'sc_admin/language/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:53:36', '2020-09-18 00:53:36');
INSERT INTO `sc_admin_log` VALUES (130, 1, 'sc_admin/language/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"Fran\\u00e7aise\",\"code\":\"fr\",\"icon\":\"\\/data\\/language\\/flag_fr.png\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:54:26', '2020-09-18 00:54:26');
INSERT INTO `sc_admin_log` VALUES (131, 1, 'sc_admin/language/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:54:27', '2020-09-18 00:54:27');
INSERT INTO `sc_admin_log` VALUES (132, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:54:52', '2020-09-18 00:54:52');
INSERT INTO `sc_admin_log` VALUES (133, 1, 'sc_admin/currency/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:54:57', '2020-09-18 00:54:57');
INSERT INTO `sc_admin_log` VALUES (134, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:55:18', '2020-09-18 00:55:18');
INSERT INTO `sc_admin_log` VALUES (135, 1, 'sc_admin/currency/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:55:21', '2020-09-18 00:55:21');
INSERT INTO `sc_admin_log` VALUES (136, 1, 'sc_admin/currency/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"Euro\",\"code\":\"EUR\",\"symbol\":\"\\u20ac\",\"exchange_rate\":\"1.18\",\"precision\":\"0\",\"symbol_first\":\"1\",\"thousands\":\",\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:56:58', '2020-09-18 00:56:58');
INSERT INTO `sc_admin_log` VALUES (137, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:56:58', '2020-09-18 00:56:58');
INSERT INTO `sc_admin_log` VALUES (138, 1, 'sc_admin/currency/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:57:05', '2020-09-18 00:57:05');
INSERT INTO `sc_admin_log` VALUES (139, 1, 'sc_admin/currency/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"VietNam Dong\",\"code\":\"VND\",\"symbol\":\"\\u20ab\",\"exchange_rate\":\"20\",\"precision\":\"0\",\"symbol_first\":\"0\",\"thousands\":\",\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:57:11', '2020-09-18 00:57:11');
INSERT INTO `sc_admin_log` VALUES (140, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:57:11', '2020-09-18 00:57:11');
INSERT INTO `sc_admin_log` VALUES (141, 1, 'sc_admin/language', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:57:29', '2020-09-18 00:57:29');
INSERT INTO `sc_admin_log` VALUES (142, 1, 'sc_admin/language/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:57:36', '2020-09-18 00:57:36');
INSERT INTO `sc_admin_log` VALUES (143, 1, 'sc_admin/language/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"Fran\\u00e7aise\",\"code\":\"fr\",\"icon\":\"\\/data\\/language\\/flag_fr.png\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:57:41', '2020-09-18 00:57:41');
INSERT INTO `sc_admin_log` VALUES (144, 1, 'sc_admin/language/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:57:41', '2020-09-18 00:57:41');
INSERT INTO `sc_admin_log` VALUES (145, 1, 'sc_admin/language/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:57:43', '2020-09-18 00:57:43');
INSERT INTO `sc_admin_log` VALUES (146, 1, 'sc_admin/language/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"Ti\\u1ebfng Vi\\u1ec7t\",\"code\":\"vi\",\"icon\":\"\\/data\\/language\\/flag_vn.png\",\"sort\":\"3\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:57:47', '2020-09-18 00:57:47');
INSERT INTO `sc_admin_log` VALUES (147, 1, 'sc_admin/language/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:57:48', '2020-09-18 00:57:48');
INSERT INTO `sc_admin_log` VALUES (148, 1, 'sc_admin/language/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:57:50', '2020-09-18 00:57:50');
INSERT INTO `sc_admin_log` VALUES (149, 1, 'sc_admin/language/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"English\",\"code\":\"en\",\"icon\":\"\\/data\\/language\\/flag_uk.png\",\"sort\":\"2\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:57:53', '2020-09-18 00:57:53');
INSERT INTO `sc_admin_log` VALUES (150, 1, 'sc_admin/language/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:57:53', '2020-09-18 00:57:53');
INSERT INTO `sc_admin_log` VALUES (151, 1, 'sc_admin/api_connection', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:57:58', '2020-09-18 00:57:58');
INSERT INTO `sc_admin_log` VALUES (152, 1, 'sc_admin/language', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:58:01', '2020-09-18 00:58:01');
INSERT INTO `sc_admin_log` VALUES (153, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:58:05', '2020-09-18 00:58:05');
INSERT INTO `sc_admin_log` VALUES (154, 1, 'sc_admin/currency/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:58:08', '2020-09-18 00:58:08');
INSERT INTO `sc_admin_log` VALUES (155, 1, 'sc_admin/currency/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"Euro\",\"code\":\"EUR\",\"symbol\":\"\\u20ac\",\"exchange_rate\":\"1.18\",\"precision\":\"0\",\"symbol_first\":\"1\",\"thousands\":\",\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:58:13', '2020-09-18 00:58:13');
INSERT INTO `sc_admin_log` VALUES (156, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:58:13', '2020-09-18 00:58:13');
INSERT INTO `sc_admin_log` VALUES (157, 1, 'sc_admin/currency/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:58:16', '2020-09-18 00:58:16');
INSERT INTO `sc_admin_log` VALUES (158, 1, 'sc_admin/currency/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"VietNam Dong\",\"code\":\"VND\",\"symbol\":\"\\u20ab\",\"exchange_rate\":\"20\",\"precision\":\"0\",\"symbol_first\":\"0\",\"thousands\":\",\",\"sort\":\"3\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:58:19', '2020-09-18 00:58:19');
INSERT INTO `sc_admin_log` VALUES (159, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:58:19', '2020-09-18 00:58:19');
INSERT INTO `sc_admin_log` VALUES (160, 1, 'sc_admin/currency/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:58:22', '2020-09-18 00:58:22');
INSERT INTO `sc_admin_log` VALUES (161, 1, 'sc_admin/currency/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"USD Dola\",\"code\":\"USD\",\"symbol\":\"$\",\"exchange_rate\":\"1\",\"precision\":\"0\",\"symbol_first\":\"1\",\"thousands\":\",\",\"sort\":\"2\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:58:25', '2020-09-18 00:58:25');
INSERT INTO `sc_admin_log` VALUES (162, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:58:25', '2020-09-18 00:58:25');
INSERT INTO `sc_admin_log` VALUES (163, 1, 'sc_admin/locale/fr', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:58:34', '2020-09-18 00:58:34');
INSERT INTO `sc_admin_log` VALUES (164, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:58:34', '2020-09-18 00:58:34');
INSERT INTO `sc_admin_log` VALUES (165, 1, 'sc_admin/locale/en', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:58:38', '2020-09-18 00:58:38');
INSERT INTO `sc_admin_log` VALUES (166, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:58:38', '2020-09-18 00:58:38');
INSERT INTO `sc_admin_log` VALUES (167, 1, 'sc_admin/currency/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:59:01', '2020-09-18 00:59:01');
INSERT INTO `sc_admin_log` VALUES (168, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:59:05', '2020-09-18 00:59:05');
INSERT INTO `sc_admin_log` VALUES (169, 1, 'sc_admin/currency/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:59:09', '2020-09-18 00:59:09');
INSERT INTO `sc_admin_log` VALUES (170, 1, 'sc_admin/currency/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"Euro (\\u20ac)\",\"code\":\"EUR\",\"symbol\":\"\\u20ac\",\"exchange_rate\":\"1.18\",\"precision\":\"0\",\"symbol_first\":\"1\",\"thousands\":\",\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:59:17', '2020-09-18 00:59:17');
INSERT INTO `sc_admin_log` VALUES (171, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:59:18', '2020-09-18 00:59:18');
INSERT INTO `sc_admin_log` VALUES (172, 1, 'sc_admin/currency/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:59:20', '2020-09-18 00:59:20');
INSERT INTO `sc_admin_log` VALUES (173, 1, 'sc_admin/currency/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"Dong (\\u20ab)\",\"code\":\"VND\",\"symbol\":\"\\u20ab\",\"exchange_rate\":\"20\",\"precision\":\"0\",\"symbol_first\":\"0\",\"thousands\":\",\",\"sort\":\"3\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:59:33', '2020-09-18 00:59:33');
INSERT INTO `sc_admin_log` VALUES (174, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:59:34', '2020-09-18 00:59:34');
INSERT INTO `sc_admin_log` VALUES (175, 1, 'sc_admin/currency/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:59:37', '2020-09-18 00:59:37');
INSERT INTO `sc_admin_log` VALUES (176, 1, 'sc_admin/currency/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"Dollar ($)\",\"code\":\"USD\",\"symbol\":\"$\",\"exchange_rate\":\"1\",\"precision\":\"0\",\"symbol_first\":\"0\",\"thousands\":\",\",\"sort\":\"2\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 00:59:54', '2020-09-18 00:59:54');
INSERT INTO `sc_admin_log` VALUES (177, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:59:54', '2020-09-18 00:59:54');
INSERT INTO `sc_admin_log` VALUES (178, 1, 'sc_admin/currency/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 00:59:57', '2020-09-18 00:59:57');
INSERT INTO `sc_admin_log` VALUES (179, 1, 'sc_admin/currency/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"Euro (\\u20ac)\",\"code\":\"EUR\",\"symbol\":\"\\u20ac\",\"exchange_rate\":\"1.18\",\"precision\":\"0\",\"symbol_first\":\"1\",\"thousands\":\",\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 01:00:01', '2020-09-18 01:00:01');
INSERT INTO `sc_admin_log` VALUES (180, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:00:01', '2020-09-18 01:00:01');
INSERT INTO `sc_admin_log` VALUES (181, 1, 'sc_admin/language', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:00:11', '2020-09-18 01:00:11');
INSERT INTO `sc_admin_log` VALUES (182, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:19:17', '2020-09-18 01:19:17');
INSERT INTO `sc_admin_log` VALUES (183, 1, 'sc_admin/language', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:21:23', '2020-09-18 01:21:23');
INSERT INTO `sc_admin_log` VALUES (184, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:21:28', '2020-09-18 01:21:28');
INSERT INTO `sc_admin_log` VALUES (185, 1, 'sc_admin/order_status', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:21:51', '2020-09-18 01:21:51');
INSERT INTO `sc_admin_log` VALUES (186, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:21:56', '2020-09-18 01:21:56');
INSERT INTO `sc_admin_log` VALUES (187, 1, 'sc_admin/order/detail/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:21:59', '2020-09-18 01:21:59');
INSERT INTO `sc_admin_log` VALUES (188, 1, 'sc_admin/order/export_detail', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"order_id\":\"2\",\"type\":\"invoice\"}', '2020-09-18 01:22:30', '2020-09-18 01:22:30');
INSERT INTO `sc_admin_log` VALUES (189, 1, 'sc_admin/order/update', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"status\",\"value\":\"5\",\"pk\":\"2\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 01:23:17', '2020-09-18 01:23:17');
INSERT INTO `sc_admin_log` VALUES (190, 1, 'sc_admin/cache_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:26:13', '2020-09-18 01:26:13');
INSERT INTO `sc_admin_log` VALUES (191, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:26:21', '2020-09-18 01:26:21');
INSERT INTO `sc_admin_log` VALUES (192, 1, 'sc_admin/plugin/import', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:26:27', '2020-09-18 01:26:27');
INSERT INTO `sc_admin_log` VALUES (193, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:26:34', '2020-09-18 01:26:34');
INSERT INTO `sc_admin_log` VALUES (194, 1, 'sc_admin/plugin/import', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:29:24', '2020-09-18 01:29:24');
INSERT INTO `sc_admin_log` VALUES (195, 1, 'sc_admin/plugin/import', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 01:29:35', '2020-09-18 01:29:35');
INSERT INTO `sc_admin_log` VALUES (196, 1, 'sc_admin/plugin/import', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:29:35', '2020-09-18 01:29:35');
INSERT INTO `sc_admin_log` VALUES (197, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:29:42', '2020-09-18 01:29:42');
INSERT INTO `sc_admin_log` VALUES (198, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:29:47', '2020-09-18 01:29:47');
INSERT INTO `sc_admin_log` VALUES (199, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:29:49', '2020-09-18 01:29:49');
INSERT INTO `sc_admin_log` VALUES (200, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:29:49', '2020-09-18 01:29:49');
INSERT INTO `sc_admin_log` VALUES (201, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:29:56', '2020-09-18 01:29:56');
INSERT INTO `sc_admin_log` VALUES (202, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:31:06', '2020-09-18 01:31:06');
INSERT INTO `sc_admin_log` VALUES (203, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:31:13', '2020-09-18 01:31:13');
INSERT INTO `sc_admin_log` VALUES (204, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:31:30', '2020-09-18 01:31:30');
INSERT INTO `sc_admin_log` VALUES (205, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:31:37', '2020-09-18 01:31:37');
INSERT INTO `sc_admin_log` VALUES (206, 1, 'sc_admin/payment_status', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:33:31', '2020-09-18 01:33:31');
INSERT INTO `sc_admin_log` VALUES (207, 1, 'sc_admin/plugin/shipping', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:33:39', '2020-09-18 01:33:39');
INSERT INTO `sc_admin_log` VALUES (208, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:33:44', '2020-09-18 01:33:44');
INSERT INTO `sc_admin_log` VALUES (209, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:37:29', '2020-09-18 01:37:29');
INSERT INTO `sc_admin_log` VALUES (210, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:37:37', '2020-09-18 01:37:37');
INSERT INTO `sc_admin_log` VALUES (211, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:42:00', '2020-09-18 01:42:00');
INSERT INTO `sc_admin_log` VALUES (212, 1, 'sc_admin/plugin/payment/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:42:25', '2020-09-18 01:42:25');
INSERT INTO `sc_admin_log` VALUES (213, 1, 'sc_admin/plugin/install/online', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\",\"key\":\"PaypalExpress\",\"path\":\"https:\\/\\/api.s-cart.org\\/process\\/file?key=15990885835f5027c75f89d\",\"code\":\"Payment\"}', '2020-09-18 01:42:35', '2020-09-18 01:42:35');
INSERT INTO `sc_admin_log` VALUES (214, 1, 'sc_admin/plugin/payment/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:42:37', '2020-09-18 01:42:37');
INSERT INTO `sc_admin_log` VALUES (215, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 01:42:48', '2020-09-18 01:42:48');
INSERT INTO `sc_admin_log` VALUES (216, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"action\":\"config\",\"pluginKey\":\"PaypalExpress\"}', '2020-09-18 01:42:52', '2020-09-18 01:42:52');
INSERT INTO `sc_admin_log` VALUES (217, 1, 'sc_admin/config/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"PaypalExpress_order_status_success\",\"value\":\"5\",\"pk\":\"PaypalExpress_order_status_success\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 01:48:52', '2020-09-18 01:48:52');
INSERT INTO `sc_admin_log` VALUES (218, 1, 'sc_admin/config/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"PaypalExpress_client_id\",\"value\":\"AYVL7CKtzfmrhjJLTGyt1T7nx9ql_l7Ps3dTYyRJOZq82e0OBrqQ0JnB7jcA6bhcRWwLYKB5yKY-Tytl\",\"pk\":\"PaypalExpress_client_id\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 02:05:45', '2020-09-18 02:05:45');
INSERT INTO `sc_admin_log` VALUES (219, 1, 'sc_admin/config/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"PaypalExpress_secrect\",\"value\":\"EPNwrEa8lfWe7eQKjNC0WujYUVNE9ltjGUkqP7EIImXG_4MOSlR5H52uLJi8UJIcajCB6u9TdmRBwPMZ\",\"pk\":\"PaypalExpress_secrect\",\"_token\":\"mQRoiNpi7vICwolYP2fuefoxEuFmqcuidroHJ1Oa\"}', '2020-09-18 02:05:53', '2020-09-18 02:05:53');
INSERT INTO `sc_admin_log` VALUES (220, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"action\":\"config\",\"pluginKey\":\"PaypalExpress\"}', '2020-09-18 13:40:05', '2020-09-18 13:40:05');
INSERT INTO `sc_admin_log` VALUES (221, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 15:16:24', '2020-09-18 15:16:24');
INSERT INTO `sc_admin_log` VALUES (222, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 15:16:28', '2020-09-18 15:16:28');
INSERT INTO `sc_admin_log` VALUES (223, 1, 'sc_admin/banner/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"ids\":\"2\",\"_token\":\"UDvRF0aq9wqFHFsXEQFyGkVa6ZbpxknXm6e2OCYL\"}', '2020-09-18 15:16:36', '2020-09-18 15:16:36');
INSERT INTO `sc_admin_log` VALUES (224, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 15:16:37', '2020-09-18 15:16:37');
INSERT INTO `sc_admin_log` VALUES (225, 1, 'sc_admin/banner/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"UDvRF0aq9wqFHFsXEQFyGkVa6ZbpxknXm6e2OCYL\"}', '2020-09-18 15:16:40', '2020-09-18 15:16:40');
INSERT INTO `sc_admin_log` VALUES (226, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 15:16:40', '2020-09-18 15:16:40');
INSERT INTO `sc_admin_log` VALUES (227, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:41:59', '2020-09-18 16:41:59');
INSERT INTO `sc_admin_log` VALUES (228, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:48:47', '2020-09-18 16:48:47');
INSERT INTO `sc_admin_log` VALUES (229, 1, 'sc_admin/auth/logout', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:49:17', '2020-09-18 16:49:17');
INSERT INTO `sc_admin_log` VALUES (230, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:49:24', '2020-09-18 16:49:24');
INSERT INTO `sc_admin_log` VALUES (231, 1, 'sc_admin/auth/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:49:33', '2020-09-18 16:49:33');
INSERT INTO `sc_admin_log` VALUES (232, 1, 'sc_admin/auth/setting', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"Administrator\",\"avatar\":\"\\/admin\\/avatar\\/user.jpg\",\"password\":\"ksjp@ssw0rd\",\"password_confirmation\":\"ksjp@ssw0rd\",\"_token\":\"SbCR66P3fHwClKHKpAkxoLPMeaX61wJvF1VrHTxR\"}', '2020-09-18 16:49:46', '2020-09-18 16:49:46');
INSERT INTO `sc_admin_log` VALUES (233, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:49:46', '2020-09-18 16:49:46');
INSERT INTO `sc_admin_log` VALUES (234, 1, 'sc_admin/auth/logout', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:49:53', '2020-09-18 16:49:53');
INSERT INTO `sc_admin_log` VALUES (235, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:50:02', '2020-09-18 16:50:02');
INSERT INTO `sc_admin_log` VALUES (236, 1, 'sc_admin/order/detail/9', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:50:46', '2020-09-18 16:50:46');
INSERT INTO `sc_admin_log` VALUES (237, 1, 'sc_admin/order/delete_item', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"pId\":\"9\",\"_token\":\"E2zNKBKBnpa0w4eOBHitwP9I6FJjjU03R5h9IuZ0\"}', '2020-09-18 16:50:53', '2020-09-18 16:50:53');
INSERT INTO `sc_admin_log` VALUES (238, 1, 'sc_admin/order/detail/9', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:50:53', '2020-09-18 16:50:53');
INSERT INTO `sc_admin_log` VALUES (239, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:51:02', '2020-09-18 16:51:02');
INSERT INTO `sc_admin_log` VALUES (240, 1, 'sc_admin/order/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"ids\":\"10\",\"_token\":\"E2zNKBKBnpa0w4eOBHitwP9I6FJjjU03R5h9IuZ0\"}', '2020-09-18 16:51:07', '2020-09-18 16:51:07');
INSERT INTO `sc_admin_log` VALUES (241, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 16:51:07', '2020-09-18 16:51:07');
INSERT INTO `sc_admin_log` VALUES (242, 1, 'sc_admin/order/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"ids\":\"9\",\"_token\":\"E2zNKBKBnpa0w4eOBHitwP9I6FJjjU03R5h9IuZ0\"}', '2020-09-18 16:51:11', '2020-09-18 16:51:11');
INSERT INTO `sc_admin_log` VALUES (243, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 16:51:11', '2020-09-18 16:51:11');
INSERT INTO `sc_admin_log` VALUES (244, 1, 'sc_admin/order/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"ids\":\"8\",\"_token\":\"E2zNKBKBnpa0w4eOBHitwP9I6FJjjU03R5h9IuZ0\"}', '2020-09-18 16:51:14', '2020-09-18 16:51:14');
INSERT INTO `sc_admin_log` VALUES (245, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 16:51:14', '2020-09-18 16:51:14');
INSERT INTO `sc_admin_log` VALUES (246, 1, 'sc_admin/order/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"ids\":\"7\",\"_token\":\"E2zNKBKBnpa0w4eOBHitwP9I6FJjjU03R5h9IuZ0\"}', '2020-09-18 16:51:17', '2020-09-18 16:51:17');
INSERT INTO `sc_admin_log` VALUES (247, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 16:51:18', '2020-09-18 16:51:18');
INSERT INTO `sc_admin_log` VALUES (248, 1, 'sc_admin/order/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"ids\":\"6\",\"_token\":\"E2zNKBKBnpa0w4eOBHitwP9I6FJjjU03R5h9IuZ0\"}', '2020-09-18 16:51:20', '2020-09-18 16:51:20');
INSERT INTO `sc_admin_log` VALUES (249, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 16:51:21', '2020-09-18 16:51:21');
INSERT INTO `sc_admin_log` VALUES (250, 1, 'sc_admin/order/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"ids\":\"5\",\"_token\":\"E2zNKBKBnpa0w4eOBHitwP9I6FJjjU03R5h9IuZ0\"}', '2020-09-18 16:51:25', '2020-09-18 16:51:25');
INSERT INTO `sc_admin_log` VALUES (251, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 16:51:25', '2020-09-18 16:51:25');
INSERT INTO `sc_admin_log` VALUES (252, 1, 'sc_admin/order/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"E2zNKBKBnpa0w4eOBHitwP9I6FJjjU03R5h9IuZ0\"}', '2020-09-18 16:51:28', '2020-09-18 16:51:28');
INSERT INTO `sc_admin_log` VALUES (253, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 16:51:29', '2020-09-18 16:51:29');
INSERT INTO `sc_admin_log` VALUES (254, 1, 'sc_admin/order/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"ids\":\"3\",\"_token\":\"E2zNKBKBnpa0w4eOBHitwP9I6FJjjU03R5h9IuZ0\"}', '2020-09-18 16:51:31', '2020-09-18 16:51:31');
INSERT INTO `sc_admin_log` VALUES (255, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 16:51:32', '2020-09-18 16:51:32');
INSERT INTO `sc_admin_log` VALUES (256, 1, 'sc_admin/shipping_status', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:53:21', '2020-09-18 16:53:21');
INSERT INTO `sc_admin_log` VALUES (257, 1, 'sc_admin/api_connection', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:53:37', '2020-09-18 16:53:37');
INSERT INTO `sc_admin_log` VALUES (258, 1, 'sc_admin/config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:53:51', '2020-09-18 16:53:51');
INSERT INTO `sc_admin_log` VALUES (259, 1, 'sc_admin/url_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:53:58', '2020-09-18 16:53:58');
INSERT INTO `sc_admin_log` VALUES (260, 1, 'sc_admin/permission', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:54:19', '2020-09-18 16:54:19');
INSERT INTO `sc_admin_log` VALUES (261, 1, 'sc_admin/permission/edit/22', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:54:43', '2020-09-18 16:54:43');
INSERT INTO `sc_admin_log` VALUES (262, 1, 'sc_admin/permission/edit/22', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"Template manager\",\"slug\":\"template.full\",\"http_uri\":[\"ANY::sc_admin\\/link\\/*\",\"ANY::sc_admin\\/template\\/*\"],\"_token\":\"iD9citDTKcod1dbu4ta3cl8GB2Mv1l6YEWy3Jmi9\"}', '2020-09-18 16:54:59', '2020-09-18 16:54:59');
INSERT INTO `sc_admin_log` VALUES (263, 1, 'sc_admin/permission', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:54:59', '2020-09-18 16:54:59');
INSERT INTO `sc_admin_log` VALUES (264, 1, 'sc_admin/permission/edit/22', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:55:16', '2020-09-18 16:55:16');
INSERT INTO `sc_admin_log` VALUES (265, 1, 'sc_admin/permission/edit/22', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"Template manager\",\"slug\":\"template.full\",\"http_uri\":[\"ANY::sc_admin\\/block_content\\/*\",\"ANY::sc_admin\\/link\\/*\",\"ANY::sc_admin\\/template\\/*\"],\"_token\":\"iD9citDTKcod1dbu4ta3cl8GB2Mv1l6YEWy3Jmi9\"}', '2020-09-18 16:55:58', '2020-09-18 16:55:58');
INSERT INTO `sc_admin_log` VALUES (266, 1, 'sc_admin/permission', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:55:58', '2020-09-18 16:55:58');
INSERT INTO `sc_admin_log` VALUES (267, 1, 'sc_admin/user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:56:07', '2020-09-18 16:56:07');
INSERT INTO `sc_admin_log` VALUES (268, 1, 'sc_admin/user/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:56:11', '2020-09-18 16:56:11');
INSERT INTO `sc_admin_log` VALUES (269, 1, 'sc_admin/role', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:56:17', '2020-09-18 16:56:17');
INSERT INTO `sc_admin_log` VALUES (270, 1, 'sc_admin/user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:56:38', '2020-09-18 16:56:38');
INSERT INTO `sc_admin_log` VALUES (271, 1, 'sc_admin/user/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:56:41', '2020-09-18 16:56:41');
INSERT INTO `sc_admin_log` VALUES (272, 1, 'sc_admin/user/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:59:35', '2020-09-18 16:59:35');
INSERT INTO `sc_admin_log` VALUES (273, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:59:43', '2020-09-18 16:59:43');
INSERT INTO `sc_admin_log` VALUES (274, 1, 'sc_admin/block_content/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:59:52', '2020-09-18 16:59:52');
INSERT INTO `sc_admin_log` VALUES (275, 1, 'sc_admin/block_content/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"Facebook code\",\"position\":\"top\",\"page\":[\"*\"],\"type\":\"html\",\"text\":\"<div id=\\\"fb-root\\\"><\\/div>\\r\\n    <script>(function(d, s, id) {\\r\\n    var js, fjs = d.getElementsByTagName(s)[0];\\r\\n    if (d.getElementById(id)) return;\\r\\n    js = d.createElement(s); js.id = id;\\r\\n    js.src = \'\\/\\/connect.facebook.net\\/vi_VN\\/sdk.js#xfbml=1&version=v2.8&appId=934208239994473\';\\r\\n    fjs.parentNode.insertBefore(js, fjs);\\r\\n    }(document, \'script\', \'facebook-jssdk\'));\\r\\n    <\\/script>\",\"sort\":\"0\",\"_token\":\"iD9citDTKcod1dbu4ta3cl8GB2Mv1l6YEWy3Jmi9\"}', '2020-09-18 16:59:57', '2020-09-18 16:59:57');
INSERT INTO `sc_admin_log` VALUES (276, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 16:59:57', '2020-09-18 16:59:57');
INSERT INTO `sc_admin_log` VALUES (277, 1, 'sc_admin/link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 17:00:15', '2020-09-18 17:00:15');
INSERT INTO `sc_admin_log` VALUES (278, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 17:00:36', '2020-09-18 17:00:36');
INSERT INTO `sc_admin_log` VALUES (279, 1, 'sc_admin/template/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 17:00:45', '2020-09-18 17:00:45');
INSERT INTO `sc_admin_log` VALUES (280, 1, 'sc_admin/template/import', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 17:01:07', '2020-09-18 17:01:07');
INSERT INTO `sc_admin_log` VALUES (281, 1, 'sc_admin/template/import', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 17:01:49', '2020-09-18 17:01:49');
INSERT INTO `sc_admin_log` VALUES (282, 1, 'sc_admin/template/import', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 17:03:35', '2020-09-18 17:03:35');
INSERT INTO `sc_admin_log` VALUES (283, 1, 'sc_admin/template/import', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"_token\":\"iD9citDTKcod1dbu4ta3cl8GB2Mv1l6YEWy3Jmi9\"}', '2020-09-18 17:03:45', '2020-09-18 17:03:45');
INSERT INTO `sc_admin_log` VALUES (284, 1, 'sc_admin/template/import', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 17:03:47', '2020-09-18 17:03:47');
INSERT INTO `sc_admin_log` VALUES (285, 1, 'sc_admin/template/online/install', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"_token\":\"iD9citDTKcod1dbu4ta3cl8GB2Mv1l6YEWy3Jmi9\",\"key\":\"s-cart-2x\",\"path\":\"https:\\/\\/api.s-cart.org\\/process\\/file?key=15975517045f38b4587aba9\"}', '2020-09-18 17:04:04', '2020-09-18 17:04:04');
INSERT INTO `sc_admin_log` VALUES (286, 1, 'sc_admin/template/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 17:04:08', '2020-09-18 17:04:08');
INSERT INTO `sc_admin_log` VALUES (287, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 17:04:15', '2020-09-18 17:04:15');
INSERT INTO `sc_admin_log` VALUES (288, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"order_status\":\"1\"}', '2020-09-18 17:05:03', '2020-09-18 17:05:03');
INSERT INTO `sc_admin_log` VALUES (289, 1, 'sc_admin/product_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 17:05:26', '2020-09-18 17:05:26');
INSERT INTO `sc_admin_log` VALUES (290, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 17:05:34', '2020-09-18 17:05:34');
INSERT INTO `sc_admin_log` VALUES (291, 1, 'sc_admin/config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 17:06:03', '2020-09-18 17:06:03');
INSERT INTO `sc_admin_log` VALUES (292, 1, 'sc_admin/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 17:06:18', '2020-09-18 17:06:18');
INSERT INTO `sc_admin_log` VALUES (293, 1, 'sc_admin/store/config/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 17:06:23', '2020-09-18 17:06:23');
INSERT INTO `sc_admin_log` VALUES (294, 1, 'sc_admin/store/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"template\",\"value\":\"s-cart-2x\",\"pk\":null,\"_token\":\"iD9citDTKcod1dbu4ta3cl8GB2Mv1l6YEWy3Jmi9\",\"storeId\":\"1\"}', '2020-09-18 17:06:33', '2020-09-18 17:06:33');
INSERT INTO `sc_admin_log` VALUES (295, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 17:07:40', '2020-09-18 17:07:40');
INSERT INTO `sc_admin_log` VALUES (296, 1, 'sc_admin/config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 17:07:50', '2020-09-18 17:07:50');
INSERT INTO `sc_admin_log` VALUES (297, 1, 'sc_admin/email_template', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 17:07:57', '2020-09-18 17:07:57');
INSERT INTO `sc_admin_log` VALUES (298, 1, 'sc_admin/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 17:08:03', '2020-09-18 17:08:03');
INSERT INTO `sc_admin_log` VALUES (299, 1, 'sc_admin/store/config/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 17:08:08', '2020-09-18 17:08:08');
INSERT INTO `sc_admin_log` VALUES (300, 1, 'sc_admin/store/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"template\",\"value\":\"ScartDefault\",\"pk\":null,\"_token\":\"iD9citDTKcod1dbu4ta3cl8GB2Mv1l6YEWy3Jmi9\",\"storeId\":\"1\"}', '2020-09-18 17:08:13', '2020-09-18 17:08:13');
INSERT INTO `sc_admin_log` VALUES (301, 1, 'sc_admin/store/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"template\",\"value\":\"s-cart-2x\",\"pk\":null,\"_token\":\"iD9citDTKcod1dbu4ta3cl8GB2Mv1l6YEWy3Jmi9\",\"storeId\":\"1\"}', '2020-09-18 17:08:57', '2020-09-18 17:08:57');
INSERT INTO `sc_admin_log` VALUES (302, 1, 'sc_admin/store/config/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 17:13:13', '2020-09-18 17:13:13');
INSERT INTO `sc_admin_log` VALUES (303, 1, 'sc_admin/store/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"template\",\"value\":\"s-cart-3x\",\"pk\":null,\"_token\":\"iD9citDTKcod1dbu4ta3cl8GB2Mv1l6YEWy3Jmi9\",\"storeId\":\"1\"}', '2020-09-18 17:13:21', '2020-09-18 17:13:21');
INSERT INTO `sc_admin_log` VALUES (304, 1, 'sc_admin/store/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"template\",\"value\":\"s-cart-2x\",\"pk\":null,\"_token\":\"iD9citDTKcod1dbu4ta3cl8GB2Mv1l6YEWy3Jmi9\",\"storeId\":\"1\"}', '2020-09-18 17:13:38', '2020-09-18 17:13:38');
INSERT INTO `sc_admin_log` VALUES (305, 1, 'sc_admin/store/config/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:09:30', '2020-09-18 20:09:30');
INSERT INTO `sc_admin_log` VALUES (306, 1, 'sc_admin/store/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"template\",\"value\":\"s-cart-3x\",\"pk\":null,\"_token\":\"KXLnv7tygS62hlJIfBR1Vn6TDnWqiX8YgCdYHk4N\",\"storeId\":\"1\"}', '2020-09-18 20:09:38', '2020-09-18 20:09:38');
INSERT INTO `sc_admin_log` VALUES (307, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:34:57', '2020-09-18 20:34:57');
INSERT INTO `sc_admin_log` VALUES (308, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:35:03', '2020-09-18 20:35:03');
INSERT INTO `sc_admin_log` VALUES (309, 1, 'sc_admin/category/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:35:14', '2020-09-18 20:35:14');
INSERT INTO `sc_admin_log` VALUES (310, 1, 'sc_admin/category/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Electronics\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Thi\\u1ebft b\\u1ecb \\u0111i\\u1ec7n t\\u1eed\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":null,\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"electronics\",\"image\":\"\\/data\\/category\\/img-40.jpg\",\"sort\":\"0\",\"top\":\"on\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:35:49', '2020-09-18 20:35:49');
INSERT INTO `sc_admin_log` VALUES (311, 1, 'sc_admin/category/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:35:49', '2020-09-18 20:35:49');
INSERT INTO `sc_admin_log` VALUES (312, 1, 'sc_admin/category/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Electronics\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Thi\\u1ebft b\\u1ecb \\u0111i\\u1ec7n t\\u1eed\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Thi\\u1ebft b\\u1ecb \\u0111i\\u1ec7n t\\u1eed\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"electronics\",\"image\":\"\\/data\\/category\\/img-40.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:36:00', '2020-09-18 20:36:00');
INSERT INTO `sc_admin_log` VALUES (313, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:36:01', '2020-09-18 20:36:01');
INSERT INTO `sc_admin_log` VALUES (314, 1, 'sc_admin/category/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:36:04', '2020-09-18 20:36:04');
INSERT INTO `sc_admin_log` VALUES (315, 1, 'sc_admin/category/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Accessaries & Extras\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":null,\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"accessaries-extras\",\"image\":\"\\/data\\/category\\/img-18.jpg\",\"sort\":\"0\",\"top\":\"on\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:36:10', '2020-09-18 20:36:10');
INSERT INTO `sc_admin_log` VALUES (316, 1, 'sc_admin/category/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:36:10', '2020-09-18 20:36:10');
INSERT INTO `sc_admin_log` VALUES (317, 1, 'sc_admin/category/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Accessaries & Extras\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"accessaries-extras\",\"image\":\"\\/data\\/category\\/img-18.jpg\",\"sort\":\"0\",\"top\":\"on\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:36:27', '2020-09-18 20:36:27');
INSERT INTO `sc_admin_log` VALUES (318, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:36:27', '2020-09-18 20:36:27');
INSERT INTO `sc_admin_log` VALUES (319, 1, 'sc_admin/category/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:36:32', '2020-09-18 20:36:32');
INSERT INTO `sc_admin_log` VALUES (320, 1, 'sc_admin/category/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Electronics\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Thi\\u1ebft b\\u1ecb \\u0111i\\u1ec7n t\\u1eed\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Thi\\u1ebft b\\u1ecb \\u0111i\\u1ec7n t\\u1eed\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"electronics\",\"image\":\"\\/data\\/category\\/img-40.jpg\",\"sort\":\"0\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:36:40', '2020-09-18 20:36:40');
INSERT INTO `sc_admin_log` VALUES (321, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:36:40', '2020-09-18 20:36:40');
INSERT INTO `sc_admin_log` VALUES (322, 1, 'sc_admin/category/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:36:44', '2020-09-18 20:36:44');
INSERT INTO `sc_admin_log` VALUES (323, 1, 'sc_admin/category/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Clothing & Wears\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Qu\\u1ea7n \\u00e1o\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Qu\\u1ea7n \\u00e1o\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"clothing-wears\",\"image\":\"\\/data\\/category\\/img-44.jpg\",\"sort\":\"0\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:36:53', '2020-09-18 20:36:53');
INSERT INTO `sc_admin_log` VALUES (324, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:36:54', '2020-09-18 20:36:54');
INSERT INTO `sc_admin_log` VALUES (325, 1, 'sc_admin/category/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:36:57', '2020-09-18 20:36:57');
INSERT INTO `sc_admin_log` VALUES (326, 1, 'sc_admin/category/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Mobile\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"1\",\"alias\":\"mobile\",\"image\":\"\\/data\\/category\\/img-42.jpg\",\"sort\":\"0\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:37:09', '2020-09-18 20:37:09');
INSERT INTO `sc_admin_log` VALUES (327, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:37:09', '2020-09-18 20:37:09');
INSERT INTO `sc_admin_log` VALUES (328, 1, 'sc_admin/category/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:37:16', '2020-09-18 20:37:16');
INSERT INTO `sc_admin_log` VALUES (329, 1, 'sc_admin/category/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Accessaries & Extras\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"accessaries-extras\",\"image\":\"\\/data\\/category\\/img-18.jpg\",\"sort\":\"0\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:37:21', '2020-09-18 20:37:21');
INSERT INTO `sc_admin_log` VALUES (330, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:37:21', '2020-09-18 20:37:21');
INSERT INTO `sc_admin_log` VALUES (331, 1, 'sc_admin/category/edit/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:37:29', '2020-09-18 20:37:29');
INSERT INTO `sc_admin_log` VALUES (332, 1, 'sc_admin/category/edit/5', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Computers\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"M\\u00e1y t\\u00ednh\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"M\\u00e1y t\\u00ednh\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"1\",\"alias\":\"computers\",\"image\":\"\\/data\\/category\\/img-14.jpg\",\"sort\":\"0\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:37:36', '2020-09-18 20:37:36');
INSERT INTO `sc_admin_log` VALUES (333, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:37:37', '2020-09-18 20:37:37');
INSERT INTO `sc_admin_log` VALUES (334, 1, 'sc_admin/category/edit/9', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:37:41', '2020-09-18 20:37:41');
INSERT INTO `sc_admin_log` VALUES (335, 1, 'sc_admin/category/edit/9', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Women\'s Clothing\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Qu\\u1ea7n \\u00e1o n\\u1eef\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Qu\\u1ea7n \\u00e1o n\\u1eef\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"women-clothing\",\"image\":\"\\/data\\/category\\/img-18.jpg\",\"sort\":\"0\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:37:52', '2020-09-18 20:37:52');
INSERT INTO `sc_admin_log` VALUES (336, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:37:53', '2020-09-18 20:37:53');
INSERT INTO `sc_admin_log` VALUES (337, 1, 'sc_admin/category/edit/13', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:38:31', '2020-09-18 20:38:31');
INSERT INTO `sc_admin_log` VALUES (338, 1, 'sc_admin/category/edit/13', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Men\'s Accessaries\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n nam\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n nam\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"4\",\"alias\":\"men-accessaries\",\"image\":\"\\/data\\/category\\/img-40.jpg\",\"sort\":\"3\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:38:40', '2020-09-18 20:38:40');
INSERT INTO `sc_admin_log` VALUES (339, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:38:41', '2020-09-18 20:38:41');
INSERT INTO `sc_admin_log` VALUES (340, 1, 'sc_admin/category/edit/12', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:38:43', '2020-09-18 20:38:43');
INSERT INTO `sc_admin_log` VALUES (341, 1, 'sc_admin/category/edit/12', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Women\'s Accessaries\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n n\\u1eef\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n n\\u1eef\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"4\",\"alias\":\"women-accessaries\",\"image\":\"\\/data\\/category\\/img-42.jpg\",\"sort\":\"3\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:38:51', '2020-09-18 20:38:51');
INSERT INTO `sc_admin_log` VALUES (342, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:38:52', '2020-09-18 20:38:52');
INSERT INTO `sc_admin_log` VALUES (343, 1, 'sc_admin/category/edit/11', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:38:54', '2020-09-18 20:38:54');
INSERT INTO `sc_admin_log` VALUES (344, 1, 'sc_admin/category/edit/11', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Mobile Accessaries\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n \\u0111i\\u1ec7n tho\\u1ea1i\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n \\u0111i\\u1ec7n tho\\u1ea1i\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"4\",\"alias\":\"mobile-accessaries\",\"image\":\"\\/data\\/category\\/img-40.jpg\",\"sort\":\"0\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:39:03', '2020-09-18 20:39:03');
INSERT INTO `sc_admin_log` VALUES (345, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:39:03', '2020-09-18 20:39:03');
INSERT INTO `sc_admin_log` VALUES (346, 1, 'sc_admin/category/edit/10', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:39:15', '2020-09-18 20:39:15');
INSERT INTO `sc_admin_log` VALUES (347, 1, 'sc_admin/category/edit/10', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Kid\'s Wear\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"\\u0110\\u1ed3 tr\\u1ebb em\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"\\u0110\\u1ed3 tr\\u1ebb em\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"kid-wear\",\"image\":\"\\/data\\/category\\/img-14.jpg\",\"sort\":\"0\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:39:22', '2020-09-18 20:39:22');
INSERT INTO `sc_admin_log` VALUES (348, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:39:22', '2020-09-18 20:39:22');
INSERT INTO `sc_admin_log` VALUES (349, 1, 'sc_admin/category/edit/6', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:39:37', '2020-09-18 20:39:37');
INSERT INTO `sc_admin_log` VALUES (350, 1, 'sc_admin/category/edit/6', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Tablets\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"M\\u00e1y t\\u00ednh b\\u1ea3ng\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"M\\u00e1y t\\u00ednh b\\u1ea3ng\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"1\",\"alias\":\"tablets\",\"image\":\"\\/data\\/category\\/img-14.jpg\",\"sort\":\"0\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:39:45', '2020-09-18 20:39:45');
INSERT INTO `sc_admin_log` VALUES (351, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:39:45', '2020-09-18 20:39:45');
INSERT INTO `sc_admin_log` VALUES (352, 1, 'sc_admin/category/edit/8', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:39:48', '2020-09-18 20:39:48');
INSERT INTO `sc_admin_log` VALUES (353, 1, 'sc_admin/category/edit/8', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Men\'s Clothing\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Qu\\u1ea7n \\u00e1o nam\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Qu\\u1ea7n \\u00e1o nam\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"men-clothing\",\"image\":\"\\/data\\/category\\/img-14.jpg\",\"sort\":\"0\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:39:55', '2020-09-18 20:39:55');
INSERT INTO `sc_admin_log` VALUES (354, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:39:56', '2020-09-18 20:39:56');
INSERT INTO `sc_admin_log` VALUES (355, 1, 'sc_admin/category/edit/7', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:39:59', '2020-09-18 20:39:59');
INSERT INTO `sc_admin_log` VALUES (356, 1, 'sc_admin/category/edit/7', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Appliances\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Thi\\u1ebft b\\u1ecb\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Thi\\u1ebft b\\u1ecb\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"1\",\"alias\":\"appliances\",\"image\":\"\\/data\\/category\\/img-40.jpg\",\"sort\":\"0\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:40:11', '2020-09-18 20:40:11');
INSERT INTO `sc_admin_log` VALUES (357, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:40:12', '2020-09-18 20:40:12');
INSERT INTO `sc_admin_log` VALUES (358, 1, 'sc_admin/category/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:40:36', '2020-09-18 20:40:36');
INSERT INTO `sc_admin_log` VALUES (359, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-18 20:41:35', '2020-09-18 20:41:35');
INSERT INTO `sc_admin_log` VALUES (360, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600436496563\"}', '2020-09-18 20:41:37', '2020-09-18 20:41:37');
INSERT INTO `sc_admin_log` VALUES (361, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600436496564\"}', '2020-09-18 20:41:37', '2020-09-18 20:41:37');
INSERT INTO `sc_admin_log` VALUES (362, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600436496565\"}', '2020-09-18 20:41:37', '2020-09-18 20:41:37');
INSERT INTO `sc_admin_log` VALUES (363, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:42:03', '2020-09-18 20:42:03');
INSERT INTO `sc_admin_log` VALUES (364, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600436496566\"}', '2020-09-18 20:42:04', '2020-09-18 20:42:04');
INSERT INTO `sc_admin_log` VALUES (365, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600436496567\"}', '2020-09-18 20:42:04', '2020-09-18 20:42:04');
INSERT INTO `sc_admin_log` VALUES (366, 1, 'sc_admin/category/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"ART JEWELLERY\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Thi\\u1ebft b\\u1ecb \\u0111i\\u1ec7n t\\u1eed\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Thi\\u1ebft b\\u1ecb \\u0111i\\u1ec7n t\\u1eed\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"electronics\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-01.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:42:31', '2020-09-18 20:42:31');
INSERT INTO `sc_admin_log` VALUES (367, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:42:32', '2020-09-18 20:42:32');
INSERT INTO `sc_admin_log` VALUES (368, 1, 'sc_admin/category/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:42:37', '2020-09-18 20:42:37');
INSERT INTO `sc_admin_log` VALUES (369, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-18 20:43:19', '2020-09-18 20:43:19');
INSERT INTO `sc_admin_log` VALUES (370, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600436600171\"}', '2020-09-18 20:43:20', '2020-09-18 20:43:20');
INSERT INTO `sc_admin_log` VALUES (371, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600436600172\"}', '2020-09-18 20:43:20', '2020-09-18 20:43:20');
INSERT INTO `sc_admin_log` VALUES (372, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600436600173\"}', '2020-09-18 20:43:21', '2020-09-18 20:43:21');
INSERT INTO `sc_admin_log` VALUES (373, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600436600174\"}', '2020-09-18 20:43:29', '2020-09-18 20:43:29');
INSERT INTO `sc_admin_log` VALUES (374, 1, 'sc_admin/uploads/crop', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"img\":\"cat-01.jpg\",\"_\":\"1600436600175\"}', '2020-09-18 20:43:37', '2020-09-18 20:43:37');
INSERT INTO `sc_admin_log` VALUES (375, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600436600176\"}', '2020-09-18 20:43:40', '2020-09-18 20:43:40');
INSERT INTO `sc_admin_log` VALUES (376, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"items\":[\"cat-01.jpg\"],\"_\":\"1600436600177\"}', '2020-09-18 20:43:47', '2020-09-18 20:43:47');
INSERT INTO `sc_admin_log` VALUES (377, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600436600178\"}', '2020-09-18 20:43:47', '2020-09-18 20:43:47');
INSERT INTO `sc_admin_log` VALUES (378, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600436600179\"}', '2020-09-18 20:43:48', '2020-09-18 20:43:48');
INSERT INTO `sc_admin_log` VALUES (379, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:44:09', '2020-09-18 20:44:09');
INSERT INTO `sc_admin_log` VALUES (380, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600436600180\"}', '2020-09-18 20:44:09', '2020-09-18 20:44:09');
INSERT INTO `sc_admin_log` VALUES (381, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600436600181\"}', '2020-09-18 20:44:09', '2020-09-18 20:44:09');
INSERT INTO `sc_admin_log` VALUES (382, 1, 'sc_admin/category/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"ART JEWELLERY\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Thi\\u1ebft b\\u1ecb \\u0111i\\u1ec7n t\\u1eed\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Thi\\u1ebft b\\u1ecb \\u0111i\\u1ec7n t\\u1eed\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"electronics\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-01.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:44:17', '2020-09-18 20:44:17');
INSERT INTO `sc_admin_log` VALUES (383, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:44:18', '2020-09-18 20:44:18');
INSERT INTO `sc_admin_log` VALUES (384, 1, 'sc_admin/category/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:44:26', '2020-09-18 20:44:26');
INSERT INTO `sc_admin_log` VALUES (385, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-18 20:44:48', '2020-09-18 20:44:48');
INSERT INTO `sc_admin_log` VALUES (386, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600436688967\"}', '2020-09-18 20:44:49', '2020-09-18 20:44:49');
INSERT INTO `sc_admin_log` VALUES (387, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600436688968\"}', '2020-09-18 20:44:49', '2020-09-18 20:44:49');
INSERT INTO `sc_admin_log` VALUES (388, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600436688969\"}', '2020-09-18 20:44:50', '2020-09-18 20:44:50');
INSERT INTO `sc_admin_log` VALUES (389, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-18 20:45:33', '2020-09-18 20:45:33');
INSERT INTO `sc_admin_log` VALUES (390, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600436733937\"}', '2020-09-18 20:45:34', '2020-09-18 20:45:34');
INSERT INTO `sc_admin_log` VALUES (391, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600436733938\"}', '2020-09-18 20:45:34', '2020-09-18 20:45:34');
INSERT INTO `sc_admin_log` VALUES (392, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600436733939\"}', '2020-09-18 20:45:34', '2020-09-18 20:45:34');
INSERT INTO `sc_admin_log` VALUES (393, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-18 20:45:44', '2020-09-18 20:45:44');
INSERT INTO `sc_admin_log` VALUES (394, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600436745196\"}', '2020-09-18 20:45:45', '2020-09-18 20:45:45');
INSERT INTO `sc_admin_log` VALUES (395, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600436745197\"}', '2020-09-18 20:45:45', '2020-09-18 20:45:45');
INSERT INTO `sc_admin_log` VALUES (396, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600436745198\"}', '2020-09-18 20:45:46', '2020-09-18 20:45:46');
INSERT INTO `sc_admin_log` VALUES (397, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:45:48', '2020-09-18 20:45:48');
INSERT INTO `sc_admin_log` VALUES (398, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600436745199\"}', '2020-09-18 20:45:48', '2020-09-18 20:45:48');
INSERT INTO `sc_admin_log` VALUES (399, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600436745200\"}', '2020-09-18 20:45:48', '2020-09-18 20:45:48');
INSERT INTO `sc_admin_log` VALUES (400, 1, 'sc_admin/category/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"HIGH JEWELLERY\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Qu\\u1ea7n \\u00e1o\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Qu\\u1ea7n \\u00e1o\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"clothing-wears\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-02.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"088YvJP2lHsx1LpYVJTa1LeLdFPdYBu1VUx1o6XH\"}', '2020-09-18 20:45:58', '2020-09-18 20:45:58');
INSERT INTO `sc_admin_log` VALUES (401, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-18 20:45:59', '2020-09-18 20:45:59');
INSERT INTO `sc_admin_log` VALUES (402, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:08:44', '2020-09-19 01:08:44');
INSERT INTO `sc_admin_log` VALUES (403, 1, 'sc_admin/url_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:09:00', '2020-09-19 01:09:00');
INSERT INTO `sc_admin_log` VALUES (404, 1, 'sc_admin/config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:09:04', '2020-09-19 01:09:04');
INSERT INTO `sc_admin_log` VALUES (405, 1, 'sc_admin/config/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"ADMIN_NAME\",\"value\":\"Jhon\",\"pk\":null,\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:10:31', '2020-09-19 01:10:31');
INSERT INTO `sc_admin_log` VALUES (406, 1, 'sc_admin/config/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"ADMIN_TITLE\",\"value\":\"Admin\",\"pk\":null,\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:11:05', '2020-09-19 01:11:05');
INSERT INTO `sc_admin_log` VALUES (407, 1, 'sc_admin/config/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"ADMIN_LOGO\",\"value\":\"Shop Admin\",\"pk\":null,\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:11:17', '2020-09-19 01:11:17');
INSERT INTO `sc_admin_log` VALUES (408, 1, 'sc_admin/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:11:26', '2020-09-19 01:11:26');
INSERT INTO `sc_admin_log` VALUES (409, 1, 'sc_admin/store/config/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:11:34', '2020-09-19 01:11:34');
INSERT INTO `sc_admin_log` VALUES (410, 1, 'sc_admin/store/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"title__en\",\"value\":\"Jewellery\",\"pk\":null,\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\",\"storeId\":\"1\"}', '2020-09-19 01:11:52', '2020-09-19 01:11:52');
INSERT INTO `sc_admin_log` VALUES (411, 1, 'sc_admin/store/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"title__vi\",\"value\":\"Jewellery\",\"pk\":null,\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\",\"storeId\":\"1\"}', '2020-09-19 01:12:02', '2020-09-19 01:12:02');
INSERT INTO `sc_admin_log` VALUES (412, 1, 'sc_admin/store/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"description__en\",\"value\":\"Jewellery Online Shopping\",\"pk\":null,\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\",\"storeId\":\"1\"}', '2020-09-19 01:13:15', '2020-09-19 01:13:15');
INSERT INTO `sc_admin_log` VALUES (413, 1, 'sc_admin/store/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"name\":\"description__vi\",\"value\":\"Jewellery Online Shopping\",\"pk\":null,\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\",\"storeId\":\"1\"}', '2020-09-19 01:13:27', '2020-09-19 01:13:27');
INSERT INTO `sc_admin_log` VALUES (414, 1, 'sc_admin/store_maintain', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:13:54', '2020-09-19 01:13:54');
INSERT INTO `sc_admin_log` VALUES (415, 1, 'sc_admin/store_maintain/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:13:57', '2020-09-19 01:13:57');
INSERT INTO `sc_admin_log` VALUES (416, 1, 'sc_admin/store_maintain/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"maintain_content\":\"<center><img src=\\\"\\/images\\/maintenance.png\\\" \\/>\\r\\n<h3><span style=\\\"color:#e74c3c;\\\"><strong>Sorry! We are currently doing site maintenance!<\\/strong><\\/span><\\/h3>\\r\\n<\\/center>\"},\"vi\":{\"maintain_content\":\"<center><img src=\\\"\\/images\\/maintenance.png\\\" \\/>\\r\\n<h3><span style=\\\"color:#e74c3c;\\\"><strong>Xin l\\u1ed7i! Hi\\u1ec7n t\\u1ea1i website \\u0111ang b\\u1ea3o tr&igrave;!<\\/strong><\\/span><\\/h3>\\r\\n<\\/center>\"},\"fr\":{\"maintain_content\":\"<div style=\\\"text-align: center;\\\"><img src=\\\"\\/images\\/maintenance.png\\\" \\/><\\/div>\\r\\n\\r\\n<h3 style=\\\"text-align: center;\\\"><span style=\\\"color:#e74c3c;\\\"><strong>Xin l\\u1ed7i! Hi\\u1ec7n t\\u1ea1i website \\u0111ang b\\u1ea3o tr&igrave;!<\\/strong><\\/span><\\/h3>\"}},\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:14:26', '2020-09-19 01:14:26');
INSERT INTO `sc_admin_log` VALUES (417, 1, 'sc_admin/store_maintain', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:14:26', '2020-09-19 01:14:26');
INSERT INTO `sc_admin_log` VALUES (418, 1, 'sc_admin/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:14:31', '2020-09-19 01:14:31');
INSERT INTO `sc_admin_log` VALUES (419, 1, 'sc_admin/store/config/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:14:34', '2020-09-19 01:14:34');
INSERT INTO `sc_admin_log` VALUES (420, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:14:44', '2020-09-19 01:14:44');
INSERT INTO `sc_admin_log` VALUES (421, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:15:03', '2020-09-19 01:15:03');
INSERT INTO `sc_admin_log` VALUES (422, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:15:09', '2020-09-19 01:15:09');
INSERT INTO `sc_admin_log` VALUES (423, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:15:15', '2020-09-19 01:15:15');
INSERT INTO `sc_admin_log` VALUES (424, 1, 'sc_admin/link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:15:34', '2020-09-19 01:15:34');
INSERT INTO `sc_admin_log` VALUES (425, 1, 'sc_admin/customer', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:15:55', '2020-09-19 01:15:55');
INSERT INTO `sc_admin_log` VALUES (426, 1, 'sc_admin/subscribe', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:15:58', '2020-09-19 01:15:58');
INSERT INTO `sc_admin_log` VALUES (427, 1, 'sc_admin/customer_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:16:01', '2020-09-19 01:16:01');
INSERT INTO `sc_admin_log` VALUES (428, 1, 'sc_admin/report/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:16:10', '2020-09-19 01:16:10');
INSERT INTO `sc_admin_log` VALUES (429, 1, 'sc_admin/brand', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:16:21', '2020-09-19 01:16:21');
INSERT INTO `sc_admin_log` VALUES (430, 1, 'sc_admin/attribute_group', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:16:27', '2020-09-19 01:16:27');
INSERT INTO `sc_admin_log` VALUES (431, 1, 'sc_admin/tax', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:16:31', '2020-09-19 01:16:31');
INSERT INTO `sc_admin_log` VALUES (432, 1, 'sc_admin/weight_unit', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:16:35', '2020-09-19 01:16:35');
INSERT INTO `sc_admin_log` VALUES (433, 1, 'sc_admin/product_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:16:39', '2020-09-19 01:16:39');
INSERT INTO `sc_admin_log` VALUES (434, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:16:44', '2020-09-19 01:16:44');
INSERT INTO `sc_admin_log` VALUES (435, 1, 'sc_admin/category/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:17:17', '2020-09-19 01:17:17');
INSERT INTO `sc_admin_log` VALUES (436, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 01:18:55', '2020-09-19 01:18:55');
INSERT INTO `sc_admin_log` VALUES (437, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600453135622\"}', '2020-09-19 01:18:56', '2020-09-19 01:18:56');
INSERT INTO `sc_admin_log` VALUES (438, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600453135623\"}', '2020-09-19 01:18:56', '2020-09-19 01:18:56');
INSERT INTO `sc_admin_log` VALUES (439, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600453135624\"}', '2020-09-19 01:18:56', '2020-09-19 01:18:56');
INSERT INTO `sc_admin_log` VALUES (440, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:18:59', '2020-09-19 01:18:59');
INSERT INTO `sc_admin_log` VALUES (441, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1600453135625\"}', '2020-09-19 01:18:59', '2020-09-19 01:18:59');
INSERT INTO `sc_admin_log` VALUES (442, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600453135626\"}', '2020-09-19 01:19:00', '2020-09-19 01:19:00');
INSERT INTO `sc_admin_log` VALUES (443, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600453135627\"}', '2020-09-19 01:19:10', '2020-09-19 01:19:10');
INSERT INTO `sc_admin_log` VALUES (444, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:19:13', '2020-09-19 01:19:13');
INSERT INTO `sc_admin_log` VALUES (445, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600453135628\"}', '2020-09-19 01:19:14', '2020-09-19 01:19:14');
INSERT INTO `sc_admin_log` VALUES (446, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600453135629\"}', '2020-09-19 01:19:14', '2020-09-19 01:19:14');
INSERT INTO `sc_admin_log` VALUES (447, 1, 'sc_admin/category/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Common Jewellery\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"accessaries-extras\",\"image\":\"\\/data\\/category\\/2\\/cat-03.jpg\",\"sort\":\"0\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:19:24', '2020-09-19 01:19:24');
INSERT INTO `sc_admin_log` VALUES (448, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:19:25', '2020-09-19 01:19:25');
INSERT INTO `sc_admin_log` VALUES (449, 1, 'sc_admin/category/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:19:29', '2020-09-19 01:19:29');
INSERT INTO `sc_admin_log` VALUES (450, 1, 'sc_admin/category/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Common Jewellery\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"accessaries-extras\",\"image\":\"\\/data\\/category\\/2\\/cat-03.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:19:34', '2020-09-19 01:19:34');
INSERT INTO `sc_admin_log` VALUES (451, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:19:34', '2020-09-19 01:19:34');
INSERT INTO `sc_admin_log` VALUES (452, 1, 'sc_admin/category/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:19:48', '2020-09-19 01:19:48');
INSERT INTO `sc_admin_log` VALUES (453, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 01:20:06', '2020-09-19 01:20:06');
INSERT INTO `sc_admin_log` VALUES (454, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600453207358\"}', '2020-09-19 01:20:07', '2020-09-19 01:20:07');
INSERT INTO `sc_admin_log` VALUES (455, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600453207359\"}', '2020-09-19 01:20:08', '2020-09-19 01:20:08');
INSERT INTO `sc_admin_log` VALUES (456, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600453207360\"}', '2020-09-19 01:20:08', '2020-09-19 01:20:08');
INSERT INTO `sc_admin_log` VALUES (457, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600453207361\"}', '2020-09-19 01:20:10', '2020-09-19 01:20:10');
INSERT INTO `sc_admin_log` VALUES (458, 1, 'sc_admin/category/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"JEWELLERY\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"1\",\"alias\":\"mobile\",\"image\":\"\\/data\\/category\\/2\\/cat-03.jpg\",\"sort\":\"0\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:20:16', '2020-09-19 01:20:16');
INSERT INTO `sc_admin_log` VALUES (459, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:20:17', '2020-09-19 01:20:17');
INSERT INTO `sc_admin_log` VALUES (460, 1, 'sc_admin/category/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:20:24', '2020-09-19 01:20:24');
INSERT INTO `sc_admin_log` VALUES (461, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:20:31', '2020-09-19 01:20:31');
INSERT INTO `sc_admin_log` VALUES (462, 1, 'sc_admin/category/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:20:34', '2020-09-19 01:20:34');
INSERT INTO `sc_admin_log` VALUES (463, 1, 'sc_admin/category/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"JEWELLERY\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"mobile\",\"image\":\"\\/data\\/category\\/2\\/cat-03.jpg\",\"sort\":\"0\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:20:40', '2020-09-19 01:20:40');
INSERT INTO `sc_admin_log` VALUES (464, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:20:41', '2020-09-19 01:20:41');
INSERT INTO `sc_admin_log` VALUES (465, 1, 'sc_admin/category/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:20:45', '2020-09-19 01:20:45');
INSERT INTO `sc_admin_log` VALUES (466, 1, 'sc_admin/category/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"JEWELLERY\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"mobile\",\"image\":\"\\/data\\/category\\/2\\/cat-03.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:20:49', '2020-09-19 01:20:49');
INSERT INTO `sc_admin_log` VALUES (467, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:20:49', '2020-09-19 01:20:49');
INSERT INTO `sc_admin_log` VALUES (468, 1, 'sc_admin/category/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:20:53', '2020-09-19 01:20:53');
INSERT INTO `sc_admin_log` VALUES (469, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 01:21:47', '2020-09-19 01:21:47');
INSERT INTO `sc_admin_log` VALUES (470, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600453307911\"}', '2020-09-19 01:21:48', '2020-09-19 01:21:48');
INSERT INTO `sc_admin_log` VALUES (471, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600453307912\"}', '2020-09-19 01:21:48', '2020-09-19 01:21:48');
INSERT INTO `sc_admin_log` VALUES (472, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600453307913\"}', '2020-09-19 01:21:48', '2020-09-19 01:21:48');
INSERT INTO `sc_admin_log` VALUES (473, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600453307914\"}', '2020-09-19 01:21:53', '2020-09-19 01:21:53');
INSERT INTO `sc_admin_log` VALUES (474, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 01:22:02', '2020-09-19 01:22:02');
INSERT INTO `sc_admin_log` VALUES (475, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600453323355\"}', '2020-09-19 01:22:03', '2020-09-19 01:22:03');
INSERT INTO `sc_admin_log` VALUES (476, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600453323356\"}', '2020-09-19 01:22:04', '2020-09-19 01:22:04');
INSERT INTO `sc_admin_log` VALUES (477, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600453323357\"}', '2020-09-19 01:22:04', '2020-09-19 01:22:04');
INSERT INTO `sc_admin_log` VALUES (478, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600453323358\"}', '2020-09-19 01:22:05', '2020-09-19 01:22:05');
INSERT INTO `sc_admin_log` VALUES (479, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:22:08', '2020-09-19 01:22:08');
INSERT INTO `sc_admin_log` VALUES (480, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600453323359\"}', '2020-09-19 01:22:09', '2020-09-19 01:22:09');
INSERT INTO `sc_admin_log` VALUES (481, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600453323360\"}', '2020-09-19 01:22:09', '2020-09-19 01:22:09');
INSERT INTO `sc_admin_log` VALUES (482, 1, 'sc_admin/category/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"ENGAGEMENT\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"accessaries-extras\",\"image\":\"\\/data\\/category\\/2\\/cat-04.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:22:17', '2020-09-19 01:22:17');
INSERT INTO `sc_admin_log` VALUES (483, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:22:17', '2020-09-19 01:22:17');
INSERT INTO `sc_admin_log` VALUES (484, 1, 'sc_admin/category/edit/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:22:37', '2020-09-19 01:22:37');
INSERT INTO `sc_admin_log` VALUES (485, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 01:22:48', '2020-09-19 01:22:48');
INSERT INTO `sc_admin_log` VALUES (486, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600453369380\"}', '2020-09-19 01:22:49', '2020-09-19 01:22:49');
INSERT INTO `sc_admin_log` VALUES (487, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600453369381\"}', '2020-09-19 01:22:50', '2020-09-19 01:22:50');
INSERT INTO `sc_admin_log` VALUES (488, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600453369382\"}', '2020-09-19 01:22:50', '2020-09-19 01:22:50');
INSERT INTO `sc_admin_log` VALUES (489, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600453369383\"}', '2020-09-19 01:22:52', '2020-09-19 01:22:52');
INSERT INTO `sc_admin_log` VALUES (490, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 01:23:17', '2020-09-19 01:23:17');
INSERT INTO `sc_admin_log` VALUES (491, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600453398311\"}', '2020-09-19 01:23:18', '2020-09-19 01:23:18');
INSERT INTO `sc_admin_log` VALUES (492, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600453398312\"}', '2020-09-19 01:23:19', '2020-09-19 01:23:19');
INSERT INTO `sc_admin_log` VALUES (493, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600453398313\"}', '2020-09-19 01:23:19', '2020-09-19 01:23:19');
INSERT INTO `sc_admin_log` VALUES (494, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600453398314\"}', '2020-09-19 01:23:21', '2020-09-19 01:23:21');
INSERT INTO `sc_admin_log` VALUES (495, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:23:24', '2020-09-19 01:23:24');
INSERT INTO `sc_admin_log` VALUES (496, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600453398315\"}', '2020-09-19 01:23:25', '2020-09-19 01:23:25');
INSERT INTO `sc_admin_log` VALUES (497, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600453398316\"}', '2020-09-19 01:23:25', '2020-09-19 01:23:25');
INSERT INTO `sc_admin_log` VALUES (498, 1, 'sc_admin/category/edit/5', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"DIAMONDS\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"M\\u00e1y t\\u00ednh\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"M\\u00e1y t\\u00ednh\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"computers\",\"image\":\"\\/data\\/category\\/2\\/cat-05.jpg\",\"sort\":\"0\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:23:33', '2020-09-19 01:23:33');
INSERT INTO `sc_admin_log` VALUES (499, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:23:33', '2020-09-19 01:23:33');
INSERT INTO `sc_admin_log` VALUES (500, 1, 'sc_admin/category/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:23:38', '2020-09-19 01:23:38');
INSERT INTO `sc_admin_log` VALUES (501, 1, 'sc_admin/category/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"ART JEWELLERY\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Thi\\u1ebft b\\u1ecb \\u0111i\\u1ec7n t\\u1eed\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Thi\\u1ebft b\\u1ecb \\u0111i\\u1ec7n t\\u1eed\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"art_jewellery\",\"image\":\"\\/data\\/category\\/2\\/cat-01.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:23:59', '2020-09-19 01:23:59');
INSERT INTO `sc_admin_log` VALUES (502, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:24:00', '2020-09-19 01:24:00');
INSERT INTO `sc_admin_log` VALUES (503, 1, 'sc_admin/category/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:24:04', '2020-09-19 01:24:04');
INSERT INTO `sc_admin_log` VALUES (504, 1, 'sc_admin/category/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"HIGH JEWELLERY\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Qu\\u1ea7n \\u00e1o\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Qu\\u1ea7n \\u00e1o\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"high_jewellery\",\"image\":\"\\/data\\/category\\/2\\/cat-02.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:24:19', '2020-09-19 01:24:19');
INSERT INTO `sc_admin_log` VALUES (505, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:24:20', '2020-09-19 01:24:20');
INSERT INTO `sc_admin_log` VALUES (506, 1, 'sc_admin/category/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:24:25', '2020-09-19 01:24:25');
INSERT INTO `sc_admin_log` VALUES (507, 1, 'sc_admin/category/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"JEWELLERY\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"jewellery\",\"image\":\"\\/data\\/category\\/2\\/cat-03.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:24:34', '2020-09-19 01:24:34');
INSERT INTO `sc_admin_log` VALUES (508, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:24:34', '2020-09-19 01:24:34');
INSERT INTO `sc_admin_log` VALUES (509, 1, 'sc_admin/category/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:24:41', '2020-09-19 01:24:41');
INSERT INTO `sc_admin_log` VALUES (510, 1, 'sc_admin/category/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"ENGAGEMENT\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"engagement\",\"image\":\"\\/data\\/category\\/2\\/cat-04.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:24:52', '2020-09-19 01:24:52');
INSERT INTO `sc_admin_log` VALUES (511, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:24:52', '2020-09-19 01:24:52');
INSERT INTO `sc_admin_log` VALUES (512, 1, 'sc_admin/category/edit/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:24:58', '2020-09-19 01:24:58');
INSERT INTO `sc_admin_log` VALUES (513, 1, 'sc_admin/category/edit/5', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"DIAMONDS\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"M\\u00e1y t\\u00ednh\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"M\\u00e1y t\\u00ednh\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"diamonds\",\"image\":\"\\/data\\/category\\/2\\/cat-05.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:25:07', '2020-09-19 01:25:07');
INSERT INTO `sc_admin_log` VALUES (514, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:25:07', '2020-09-19 01:25:07');
INSERT INTO `sc_admin_log` VALUES (515, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:26:09', '2020-09-19 01:26:09');
INSERT INTO `sc_admin_log` VALUES (516, 1, 'sc_admin/config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:26:17', '2020-09-19 01:26:17');
INSERT INTO `sc_admin_log` VALUES (517, 1, 'sc_admin/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Mobile Safari/537.36', '[]', '2020-09-19 01:26:43', '2020-09-19 01:26:43');
INSERT INTO `sc_admin_log` VALUES (518, 1, 'sc_admin/store/config/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Mobile Safari/537.36', '[]', '2020-09-19 01:26:46', '2020-09-19 01:26:46');
INSERT INTO `sc_admin_log` VALUES (519, 1, 'sc_admin/store/config/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Mobile Safari/537.36', '[]', '2020-09-19 01:27:36', '2020-09-19 01:27:36');
INSERT INTO `sc_admin_log` VALUES (520, 1, 'sc_admin/store/config/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Mobile Safari/537.36', '[]', '2020-09-19 01:27:51', '2020-09-19 01:27:51');
INSERT INTO `sc_admin_log` VALUES (521, 1, 'sc_admin/store/config/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Mobile Safari/537.36', '[]', '2020-09-19 01:28:21', '2020-09-19 01:28:21');
INSERT INTO `sc_admin_log` VALUES (522, 1, 'sc_admin/store/config/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Mobile Safari/537.36', '[]', '2020-09-19 01:30:02', '2020-09-19 01:30:02');
INSERT INTO `sc_admin_log` VALUES (523, 1, 'sc_admin/email', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Mobile Safari/537.36', '[]', '2020-09-19 01:30:13', '2020-09-19 01:30:13');
INSERT INTO `sc_admin_log` VALUES (524, 1, 'sc_admin/theme/dark', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Mobile Safari/537.36', '[]', '2020-09-19 01:30:21', '2020-09-19 01:30:21');
INSERT INTO `sc_admin_log` VALUES (525, 1, 'sc_admin/email', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Mobile Safari/537.36', '[]', '2020-09-19 01:30:22', '2020-09-19 01:30:22');
INSERT INTO `sc_admin_log` VALUES (526, 1, 'sc_admin/theme/lightblue', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Mobile Safari/537.36', '[]', '2020-09-19 01:30:26', '2020-09-19 01:30:26');
INSERT INTO `sc_admin_log` VALUES (527, 1, 'sc_admin/email', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Mobile Safari/537.36', '[]', '2020-09-19 01:30:26', '2020-09-19 01:30:26');
INSERT INTO `sc_admin_log` VALUES (528, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Mobile Safari/537.36', '[]', '2020-09-19 01:32:36', '2020-09-19 01:32:36');
INSERT INTO `sc_admin_log` VALUES (529, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Mobile Safari/537.36', '[]', '2020-09-19 01:32:41', '2020-09-19 01:32:41');
INSERT INTO `sc_admin_log` VALUES (530, 1, 'sc_admin/banner/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Mobile Safari/537.36', '[]', '2020-09-19 01:34:39', '2020-09-19 01:34:39');
INSERT INTO `sc_admin_log` VALUES (531, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"banner\"}', '2020-09-19 01:34:44', '2020-09-19 01:34:44');
INSERT INTO `sc_admin_log` VALUES (532, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1600454085399\"}', '2020-09-19 01:34:45', '2020-09-19 01:34:45');
INSERT INTO `sc_admin_log` VALUES (533, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1600454085400\"}', '2020-09-19 01:34:46', '2020-09-19 01:34:46');
INSERT INTO `sc_admin_log` VALUES (534, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600454085401\"}', '2020-09-19 01:34:46', '2020-09-19 01:34:46');
INSERT INTO `sc_admin_log` VALUES (535, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:35:07', '2020-09-19 01:35:07');
INSERT INTO `sc_admin_log` VALUES (536, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1600454085402\"}', '2020-09-19 01:35:07', '2020-09-19 01:35:07');
INSERT INTO `sc_admin_log` VALUES (537, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600454085403\"}', '2020-09-19 01:35:08', '2020-09-19 01:35:08');
INSERT INTO `sc_admin_log` VALUES (538, 1, 'sc_admin/banner/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"image\":\"http:\\/\\/localhost:8000\\/data\\/banner\\/fashionbr.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"store\":[\"0\"],\"type\":\"2\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:35:12', '2020-09-19 01:35:12');
INSERT INTO `sc_admin_log` VALUES (539, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:35:12', '2020-09-19 01:35:12');
INSERT INTO `sc_admin_log` VALUES (540, 1, 'sc_admin/banner/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:41:20', '2020-09-19 01:41:20');
INSERT INTO `sc_admin_log` VALUES (541, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"banner\"}', '2020-09-19 01:41:22', '2020-09-19 01:41:22');
INSERT INTO `sc_admin_log` VALUES (542, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1600454483085\"}', '2020-09-19 01:41:23', '2020-09-19 01:41:23');
INSERT INTO `sc_admin_log` VALUES (543, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1600454483086\"}', '2020-09-19 01:41:23', '2020-09-19 01:41:23');
INSERT INTO `sc_admin_log` VALUES (544, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600454483087\"}', '2020-09-19 01:41:24', '2020-09-19 01:41:24');
INSERT INTO `sc_admin_log` VALUES (545, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"items\":[\"fashionbr.jpg\"],\"_\":\"1600454483088\"}', '2020-09-19 01:41:36', '2020-09-19 01:41:36');
INSERT INTO `sc_admin_log` VALUES (546, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1600454483089\"}', '2020-09-19 01:41:36', '2020-09-19 01:41:36');
INSERT INTO `sc_admin_log` VALUES (547, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600454483090\"}', '2020-09-19 01:41:36', '2020-09-19 01:41:36');
INSERT INTO `sc_admin_log` VALUES (548, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:41:46', '2020-09-19 01:41:46');
INSERT INTO `sc_admin_log` VALUES (549, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1600454483091\"}', '2020-09-19 01:41:47', '2020-09-19 01:41:47');
INSERT INTO `sc_admin_log` VALUES (550, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600454483092\"}', '2020-09-19 01:41:47', '2020-09-19 01:41:47');
INSERT INTO `sc_admin_log` VALUES (551, 1, 'sc_admin/uploads/crop', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"img\":\"11423-rt.jpg\",\"_\":\"1600454483093\"}', '2020-09-19 01:41:51', '2020-09-19 01:41:51');
INSERT INTO `sc_admin_log` VALUES (552, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600454483094\"}', '2020-09-19 01:42:10', '2020-09-19 01:42:10');
INSERT INTO `sc_admin_log` VALUES (553, 1, 'sc_admin/uploads/resize', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"img\":\"11423-rt.jpg\",\"_\":\"1600454483095\"}', '2020-09-19 01:42:16', '2020-09-19 01:42:16');
INSERT INTO `sc_admin_log` VALUES (554, 1, 'sc_admin/uploads/doresize', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"img\":\"11423-rt.jpg\",\"dataHeight\":\"750\",\"dataWidth\":\"1500\",\"_\":\"1600454483096\"}', '2020-09-19 01:42:52', '2020-09-19 01:42:52');
INSERT INTO `sc_admin_log` VALUES (555, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"OK\",\"_\":\"1600454483097\"}', '2020-09-19 01:42:54', '2020-09-19 01:42:54');
INSERT INTO `sc_admin_log` VALUES (556, 1, 'sc_admin/banner/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"image\":\"http:\\/\\/localhost:8000\\/data\\/banner\\/11423-rt.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"store\":[\"0\"],\"type\":\"2\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:43:00', '2020-09-19 01:43:00');
INSERT INTO `sc_admin_log` VALUES (557, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:43:00', '2020-09-19 01:43:00');
INSERT INTO `sc_admin_log` VALUES (558, 1, 'sc_admin/banner/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:43:13', '2020-09-19 01:43:13');
INSERT INTO `sc_admin_log` VALUES (559, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"banner\"}', '2020-09-19 01:43:16', '2020-09-19 01:43:16');
INSERT INTO `sc_admin_log` VALUES (560, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1600454597317\"}', '2020-09-19 01:43:17', '2020-09-19 01:43:17');
INSERT INTO `sc_admin_log` VALUES (561, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1600454597318\"}', '2020-09-19 01:43:18', '2020-09-19 01:43:18');
INSERT INTO `sc_admin_log` VALUES (562, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600454597319\"}', '2020-09-19 01:43:18', '2020-09-19 01:43:18');
INSERT INTO `sc_admin_log` VALUES (563, 1, 'sc_admin/uploads/resize', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"img\":\"11423-rt.jpg\",\"_\":\"1600454597320\"}', '2020-09-19 01:43:23', '2020-09-19 01:43:23');
INSERT INTO `sc_admin_log` VALUES (564, 1, 'sc_admin/uploads/doresize', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"img\":\"11423-rt.jpg\",\"dataHeight\":\"500\",\"dataWidth\":\"1200\",\"_\":\"1600454597321\"}', '2020-09-19 01:43:40', '2020-09-19 01:43:40');
INSERT INTO `sc_admin_log` VALUES (565, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"OK\",\"_\":\"1600454597322\"}', '2020-09-19 01:43:40', '2020-09-19 01:43:40');
INSERT INTO `sc_admin_log` VALUES (566, 1, 'sc_admin/uploads/rename', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"file\":\"11423-rt.jpg\",\"new_name\":\"breadcrumb.jpg\",\"_\":\"1600454597323\"}', '2020-09-19 01:43:55', '2020-09-19 01:43:55');
INSERT INTO `sc_admin_log` VALUES (567, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1600454597324\"}', '2020-09-19 01:43:55', '2020-09-19 01:43:55');
INSERT INTO `sc_admin_log` VALUES (568, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600454597325\"}', '2020-09-19 01:43:55', '2020-09-19 01:43:55');
INSERT INTO `sc_admin_log` VALUES (569, 1, 'sc_admin/banner/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"image\":\"http:\\/\\/localhost:8000\\/data\\/banner\\/breadcrumb.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"store\":[\"0\"],\"type\":\"2\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:43:59', '2020-09-19 01:43:59');
INSERT INTO `sc_admin_log` VALUES (570, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:43:59', '2020-09-19 01:43:59');
INSERT INTO `sc_admin_log` VALUES (571, 1, 'sc_admin/banner/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:44:41', '2020-09-19 01:44:41');
INSERT INTO `sc_admin_log` VALUES (572, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"banner\"}', '2020-09-19 01:44:43', '2020-09-19 01:44:43');
INSERT INTO `sc_admin_log` VALUES (573, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1600454683995\"}', '2020-09-19 01:44:44', '2020-09-19 01:44:44');
INSERT INTO `sc_admin_log` VALUES (574, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1600454683996\"}', '2020-09-19 01:44:44', '2020-09-19 01:44:44');
INSERT INTO `sc_admin_log` VALUES (575, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600454683997\"}', '2020-09-19 01:44:44', '2020-09-19 01:44:44');
INSERT INTO `sc_admin_log` VALUES (576, 1, 'sc_admin/uploads/resize', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"img\":\"breadcrumb.jpg\",\"_\":\"1600454683998\"}', '2020-09-19 01:44:51', '2020-09-19 01:44:51');
INSERT INTO `sc_admin_log` VALUES (577, 1, 'sc_admin/uploads/doresize', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"img\":\"breadcrumb.jpg\",\"dataHeight\":\"400\",\"dataWidth\":\"1200\",\"_\":\"1600454683999\"}', '2020-09-19 01:45:00', '2020-09-19 01:45:00');
INSERT INTO `sc_admin_log` VALUES (578, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"OK\",\"_\":\"1600454684000\"}', '2020-09-19 01:45:01', '2020-09-19 01:45:01');
INSERT INTO `sc_admin_log` VALUES (579, 1, 'sc_admin/banner/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/breadcrumb.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"store\":[\"0\"],\"type\":\"2\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:45:11', '2020-09-19 01:45:11');
INSERT INTO `sc_admin_log` VALUES (580, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:45:11', '2020-09-19 01:45:11');
INSERT INTO `sc_admin_log` VALUES (581, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:45:43', '2020-09-19 01:45:43');
INSERT INTO `sc_admin_log` VALUES (582, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:45:47', '2020-09-19 01:45:47');
INSERT INTO `sc_admin_log` VALUES (583, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"ckCsrfToken\":\"NE7X9KTmVZs63X8GPErwZuBEKupZZPYAdVOngJVC\",\"type\":\"page\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\",\"CKEditor\":\"fr__content\",\"CKEditorFuncNum\":\"359\",\"langCode\":\"en\"}', '2020-09-19 01:46:43', '2020-09-19 01:46:43');
INSERT INTO `sc_admin_log` VALUES (584, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"page\",\"CKEditor\":\"fr__content\",\"CKEditorFuncNum\":\"359\",\"langCode\":\"en\"}', '2020-09-19 01:46:56', '2020-09-19 01:46:56');
INSERT INTO `sc_admin_log` VALUES (585, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"page\",\"_\":\"1600454816704\"}', '2020-09-19 01:46:57', '2020-09-19 01:46:57');
INSERT INTO `sc_admin_log` VALUES (586, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"page\",\"_\":\"1600454816705\"}', '2020-09-19 01:46:57', '2020-09-19 01:46:57');
INSERT INTO `sc_admin_log` VALUES (587, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"page\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600454816706\"}', '2020-09-19 01:46:57', '2020-09-19 01:46:57');
INSERT INTO `sc_admin_log` VALUES (588, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"page\",\"CKEditor\":\"fr__content\",\"CKEditorFuncNum\":\"359\",\"langCode\":\"en\"}', '2020-09-19 01:47:05', '2020-09-19 01:47:05');
INSERT INTO `sc_admin_log` VALUES (589, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"page\",\"_\":\"1600454825788\"}', '2020-09-19 01:47:06', '2020-09-19 01:47:06');
INSERT INTO `sc_admin_log` VALUES (590, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"page\",\"_\":\"1600454825789\"}', '2020-09-19 01:47:06', '2020-09-19 01:47:06');
INSERT INTO `sc_admin_log` VALUES (591, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"page\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600454825790\"}', '2020-09-19 01:47:06', '2020-09-19 01:47:06');
INSERT INTO `sc_admin_log` VALUES (592, 1, 'sc_admin/page/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"About\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-2.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"title\":\"Gi\\u1edbi thi\\u1ec7u\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-2.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/> et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"fr\":{\"title\":\"About\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore&nbsp;et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<a href=\\\"http:\\/\\/localhost:8000\\/data\\/page\\/cat-01.jpg\\\"><img alt=\\\"\\\" src=\\\"http:\\/\\/localhost:8000\\/data\\/page\\/cat-01.jpg\\\" style=\\\"width: 277px; height: 182px; float: right;\\\" \\/><\\/a><\\/p>\"}},\"store\":[\"0\"],\"image\":null,\"alias\":\"about\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:47:24', '2020-09-19 01:47:24');
INSERT INTO `sc_admin_log` VALUES (593, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:47:25', '2020-09-19 01:47:25');
INSERT INTO `sc_admin_log` VALUES (594, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:47:51', '2020-09-19 01:47:51');
INSERT INTO `sc_admin_log` VALUES (595, 1, 'sc_admin/locale/en', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:47:58', '2020-09-19 01:47:58');
INSERT INTO `sc_admin_log` VALUES (596, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:47:59', '2020-09-19 01:47:59');
INSERT INTO `sc_admin_log` VALUES (597, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:48:05', '2020-09-19 01:48:05');
INSERT INTO `sc_admin_log` VALUES (598, 1, 'sc_admin/customer', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:48:15', '2020-09-19 01:48:15');
INSERT INTO `sc_admin_log` VALUES (599, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:48:19', '2020-09-19 01:48:19');
INSERT INTO `sc_admin_log` VALUES (600, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:48:32', '2020-09-19 01:48:32');
INSERT INTO `sc_admin_log` VALUES (601, 1, 'sc_admin/product/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:48:36', '2020-09-19 01:48:36');
INSERT INTO `sc_admin_log` VALUES (602, 1, 'sc_admin/product/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Python\\/Bracelets\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br \\/>\\r\\n<img alt=\\\"\\\" height=\\\"95\\\" src=\\\"http:\\/\\/18.191.166.128\\/images\\/python.jpg\\\" style=\\\"float: right;\\\" width=\\\"95\\\" \\/><\\/p>\"},\"vi\":{\"name\":\"Easy Polo Black Edition 1\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"fr\":{\"name\":null,\"keyword\":null,\"description\":null,\"content\":null}},\"category\":[\"1\"],\"store\":[\"0\"],\"image\":\"\\/data\\/product\\/product-1.png\",\"sub_image\":[\"\\/data\\/product\\/product-2.png\",\"\\/data\\/product\\/product-11.png\"],\"sku\":\"ABCZZ\",\"alias\":\"demo-alias-name-product-1\",\"brand_id\":\"1\",\"supplier_id\":[\"1\"],\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"5000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"99\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"date_available\":\"2020-10-17\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:50:08', '2020-09-19 01:50:08');
INSERT INTO `sc_admin_log` VALUES (603, 1, 'sc_admin/product/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:50:08', '2020-09-19 01:50:08');
INSERT INTO `sc_admin_log` VALUES (604, 1, 'sc_admin/product/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Python\\/Bracelets\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br \\/>\\r\\n<img alt=\\\"\\\" height=\\\"95\\\" src=\\\"http:\\/\\/18.191.166.128\\/images\\/python.jpg\\\" style=\\\"float: right;\\\" width=\\\"95\\\" \\/><\\/p>\"},\"vi\":{\"name\":\"Easy Polo Black Edition 1\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"fr\":{\"name\":\"Easy Polo Black Edition 1\",\"keyword\":null,\"description\":null,\"content\":\"Easy Polo Black Edition 1\"}},\"category\":[\"1\"],\"store\":[\"0\"],\"image\":\"\\/data\\/product\\/product-1.png\",\"sub_image\":[\"\\/data\\/product\\/product-2.png\",\"\\/data\\/product\\/product-11.png\"],\"sku\":\"ABCZZ\",\"alias\":\"demo-alias-name-product-1\",\"brand_id\":\"1\",\"supplier_id\":[\"1\"],\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"5000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"99\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"date_available\":\"2020-10-17\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:50:26', '2020-09-19 01:50:26');
INSERT INTO `sc_admin_log` VALUES (605, 1, 'sc_admin/product/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:50:26', '2020-09-19 01:50:26');
INSERT INTO `sc_admin_log` VALUES (606, 1, 'sc_admin/product/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Python\\/Bracelets\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br \\/>\\r\\n<img alt=\\\"\\\" height=\\\"95\\\" src=\\\"http:\\/\\/18.191.166.128\\/images\\/python.jpg\\\" style=\\\"float: right;\\\" width=\\\"95\\\" \\/><\\/p>\"},\"vi\":{\"name\":\"Easy Polo Black Edition 1\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"fr\":{\"name\":\"Easy Polo Black Edition 1\",\"keyword\":null,\"description\":null,\"content\":\"Easy Polo Black Edition 1\"}},\"category\":[\"1\"],\"store\":[\"0\"],\"image\":\"\\/data\\/product\\/product-1.png\",\"sub_image\":[\"\\/data\\/product\\/product-2.png\",\"\\/data\\/product\\/product-11.png\"],\"sku\":\"ABCZZ\",\"alias\":\"demo-alias-name-product-1\",\"brand_id\":\"1\",\"supplier_id\":[\"1\"],\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"5000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"99\",\"weight_class\":\"g\",\"weight\":\"0\",\"length_class\":\"mm\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"date_available\":\"2020-10-17\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:50:46', '2020-09-19 01:50:46');
INSERT INTO `sc_admin_log` VALUES (607, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:50:47', '2020-09-19 01:50:47');
INSERT INTO `sc_admin_log` VALUES (608, 1, 'sc_admin/product/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:50:53', '2020-09-19 01:50:53');
INSERT INTO `sc_admin_log` VALUES (609, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"product\"}', '2020-09-19 01:51:00', '2020-09-19 01:51:00');
INSERT INTO `sc_admin_log` VALUES (610, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1600455060889\"}', '2020-09-19 01:51:01', '2020-09-19 01:51:01');
INSERT INTO `sc_admin_log` VALUES (611, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1600455060890\"}', '2020-09-19 01:51:01', '2020-09-19 01:51:01');
INSERT INTO `sc_admin_log` VALUES (612, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600455060891\"}', '2020-09-19 01:51:01', '2020-09-19 01:51:01');
INSERT INTO `sc_admin_log` VALUES (613, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:51:14', '2020-09-19 01:51:14');
INSERT INTO `sc_admin_log` VALUES (614, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1600455060892\"}', '2020-09-19 01:51:14', '2020-09-19 01:51:14');
INSERT INTO `sc_admin_log` VALUES (615, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600455060893\"}', '2020-09-19 01:51:14', '2020-09-19 01:51:14');
INSERT INTO `sc_admin_log` VALUES (616, 1, 'sc_admin/product/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Python\\/Bracelets\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br \\/>\\r\\n<img alt=\\\"\\\" height=\\\"95\\\" src=\\\"http:\\/\\/18.191.166.128\\/images\\/python.jpg\\\" style=\\\"float: right;\\\" width=\\\"95\\\" \\/><\\/p>\"},\"vi\":{\"name\":\"Easy Polo Black Edition 1\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"fr\":{\"name\":\"Easy Polo Black Edition 1\",\"keyword\":null,\"description\":null,\"content\":\"Easy Polo Black Edition 1\"}},\"category\":[\"1\"],\"store\":[\"0\"],\"image\":\"http:\\/\\/localhost:8000\\/data\\/product\\/python.jpg\",\"sub_image\":[\"\\/data\\/product\\/product-2.png\",\"\\/data\\/product\\/product-11.png\"],\"sku\":\"ABCZZ\",\"alias\":\"demo-alias-name-product-1\",\"brand_id\":\"1\",\"supplier_id\":[\"1\"],\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"5000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"99\",\"weight_class\":\"g\",\"weight\":\"0\",\"length_class\":\"mm\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"date_available\":\"2020-10-17\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:51:20', '2020-09-19 01:51:20');
INSERT INTO `sc_admin_log` VALUES (617, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:51:21', '2020-09-19 01:51:21');
INSERT INTO `sc_admin_log` VALUES (618, 1, 'sc_admin/product/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:54:21', '2020-09-19 01:54:21');
INSERT INTO `sc_admin_log` VALUES (619, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"product\"}', '2020-09-19 01:54:27', '2020-09-19 01:54:27');
INSERT INTO `sc_admin_log` VALUES (620, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1600455268134\"}', '2020-09-19 01:54:28', '2020-09-19 01:54:28');
INSERT INTO `sc_admin_log` VALUES (621, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1600455268135\"}', '2020-09-19 01:54:28', '2020-09-19 01:54:28');
INSERT INTO `sc_admin_log` VALUES (622, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600455268136\"}', '2020-09-19 01:54:29', '2020-09-19 01:54:29');
INSERT INTO `sc_admin_log` VALUES (623, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"python.jpg\"],\"_\":\"1600455268137\"}', '2020-09-19 01:54:35', '2020-09-19 01:54:35');
INSERT INTO `sc_admin_log` VALUES (624, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1600455268138\"}', '2020-09-19 01:54:36', '2020-09-19 01:54:36');
INSERT INTO `sc_admin_log` VALUES (625, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600455268139\"}', '2020-09-19 01:54:36', '2020-09-19 01:54:36');
INSERT INTO `sc_admin_log` VALUES (626, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"product\"}', '2020-09-19 01:54:55', '2020-09-19 01:54:55');
INSERT INTO `sc_admin_log` VALUES (627, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1600455296026\"}', '2020-09-19 01:54:56', '2020-09-19 01:54:56');
INSERT INTO `sc_admin_log` VALUES (628, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1600455296027\"}', '2020-09-19 01:54:56', '2020-09-19 01:54:56');
INSERT INTO `sc_admin_log` VALUES (629, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600455296028\"}', '2020-09-19 01:54:56', '2020-09-19 01:54:56');
INSERT INTO `sc_admin_log` VALUES (630, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:54:59', '2020-09-19 01:54:59');
INSERT INTO `sc_admin_log` VALUES (631, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1600455296029\"}', '2020-09-19 01:55:00', '2020-09-19 01:55:00');
INSERT INTO `sc_admin_log` VALUES (632, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600455296030\"}', '2020-09-19 01:55:00', '2020-09-19 01:55:00');
INSERT INTO `sc_admin_log` VALUES (633, 1, 'sc_admin/product/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Python\\/Bracelets\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br \\/>\\r\\n<img alt=\\\"\\\" height=\\\"95\\\" src=\\\"http:\\/\\/18.191.166.128\\/images\\/python.jpg\\\" style=\\\"float: right;\\\" width=\\\"95\\\" \\/><\\/p>\"},\"vi\":{\"name\":\"Easy Polo Black Edition 1\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"fr\":{\"name\":\"Easy Polo Black Edition 1\",\"keyword\":null,\"description\":null,\"content\":\"Easy Polo Black Edition 1\"}},\"category\":[\"1\"],\"store\":[\"0\"],\"image\":\"\\/data\\/product\\/python.png\",\"sub_image\":[\"\\/data\\/product\\/product-2.png\",\"\\/data\\/product\\/product-11.png\"],\"sku\":\"ABCZZ\",\"alias\":\"demo-alias-name-product-1\",\"brand_id\":\"1\",\"supplier_id\":[\"1\"],\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"5000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"99\",\"weight_class\":\"g\",\"weight\":\"0\",\"length_class\":\"mm\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"date_available\":\"2020-10-17\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 01:55:18', '2020-09-19 01:55:18');
INSERT INTO `sc_admin_log` VALUES (634, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:55:18', '2020-09-19 01:55:18');
INSERT INTO `sc_admin_log` VALUES (635, 1, 'sc_admin/product/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 01:59:12', '2020-09-19 01:59:12');
INSERT INTO `sc_admin_log` VALUES (636, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"ckCsrfToken\":\"NE7X9KTmVZs63X8GPErwZuBEKupZZPYAdVOngJVC\",\"type\":\"product\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\",\"responseType\":\"json\"}', '2020-09-19 01:59:26', '2020-09-19 01:59:26');
INSERT INTO `sc_admin_log` VALUES (637, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"ckCsrfToken\":\"NE7X9KTmVZs63X8GPErwZuBEKupZZPYAdVOngJVC\",\"type\":\"product\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\",\"responseType\":\"json\"}', '2020-09-19 01:59:41', '2020-09-19 01:59:41');
INSERT INTO `sc_admin_log` VALUES (638, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"product\",\"CKEditor\":\"en__content\",\"CKEditorFuncNum\":\"1\",\"langCode\":\"en\"}', '2020-09-19 01:59:52', '2020-09-19 01:59:52');
INSERT INTO `sc_admin_log` VALUES (639, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1600455593387\"}', '2020-09-19 01:59:53', '2020-09-19 01:59:53');
INSERT INTO `sc_admin_log` VALUES (640, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1600455593388\"}', '2020-09-19 01:59:54', '2020-09-19 01:59:54');
INSERT INTO `sc_admin_log` VALUES (641, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600455593389\"}', '2020-09-19 01:59:54', '2020-09-19 01:59:54');
INSERT INTO `sc_admin_log` VALUES (642, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"mens-diamond-ak-47-bullet-pendant-10k-yellow-gold-0-95-ct.jpg\"],\"_\":\"1600455593390\"}', '2020-09-19 02:00:00', '2020-09-19 02:00:00');
INSERT INTO `sc_admin_log` VALUES (643, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1600455593391\"}', '2020-09-19 02:00:00', '2020-09-19 02:00:00');
INSERT INTO `sc_admin_log` VALUES (644, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600455593392\"}', '2020-09-19 02:00:01', '2020-09-19 02:00:01');
INSERT INTO `sc_admin_log` VALUES (645, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"product\"}', '2020-09-19 02:00:45', '2020-09-19 02:00:45');
INSERT INTO `sc_admin_log` VALUES (646, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1600455645462\"}', '2020-09-19 02:00:45', '2020-09-19 02:00:45');
INSERT INTO `sc_admin_log` VALUES (647, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1600455645463\"}', '2020-09-19 02:00:46', '2020-09-19 02:00:46');
INSERT INTO `sc_admin_log` VALUES (648, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600455645464\"}', '2020-09-19 02:00:46', '2020-09-19 02:00:46');
INSERT INTO `sc_admin_log` VALUES (649, 1, 'sc_admin/product/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"AK\\/Pendants\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Easy Polo Black Edition 2\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"fr\":{\"name\":\"AK\\/Pendants\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"13\"],\"store\":[\"0\"],\"image\":\"http:\\/\\/localhost:8000\\/data\\/product\\/AKPendants.jpg\",\"sub_image\":[\"\\/data\\/product\\/product-6.png\",\"\\/data\\/product\\/product-1.png\",\"\\/data\\/product\\/product-15.png\"],\"sku\":\"LEDFAN1\",\"alias\":\"demo-alias-name-product-2\",\"brand_id\":\"1\",\"supplier_id\":[\"1\"],\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"3000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:01:06', '2020-09-19 02:01:06');
INSERT INTO `sc_admin_log` VALUES (650, 1, 'sc_admin/product/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:01:06', '2020-09-19 02:01:06');
INSERT INTO `sc_admin_log` VALUES (651, 1, 'sc_admin/product/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"AK\\/Pendants\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Easy Polo Black Edition 2\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"fr\":{\"name\":\"AK\\/Pendants\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"13\"],\"store\":[\"0\"],\"image\":\"http:\\/\\/localhost:8000\\/data\\/product\\/AKPendants.jpg\",\"sub_image\":[\"\\/data\\/product\\/product-6.png\",\"\\/data\\/product\\/product-1.png\",\"\\/data\\/product\\/product-15.png\"],\"sku\":\"LEDFAN1\",\"alias\":\"demo-alias-name-product-2\",\"brand_id\":\"1\",\"supplier_id\":[\"1\"],\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"3000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":\"g\",\"weight\":\"0\",\"length_class\":\"mm\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:01:22', '2020-09-19 02:01:22');
INSERT INTO `sc_admin_log` VALUES (652, 1, 'sc_admin/product/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:01:23', '2020-09-19 02:01:23');
INSERT INTO `sc_admin_log` VALUES (653, 1, 'sc_admin/product/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"AK\\/Pendants\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Easy Polo Black Edition 2\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"fr\":{\"name\":\"AK\\/Pendants\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"1\"],\"store\":[\"0\"],\"image\":\"http:\\/\\/localhost:8000\\/data\\/product\\/AKPendants.jpg\",\"sub_image\":[\"\\/data\\/product\\/product-6.png\",\"\\/data\\/product\\/product-1.png\",\"\\/data\\/product\\/product-15.png\"],\"sku\":\"LEDFAN1\",\"alias\":\"demo-alias-name-product-2\",\"brand_id\":\"1\",\"supplier_id\":[\"1\"],\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"3000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":\"g\",\"weight\":\"0\",\"length_class\":\"mm\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"date_available\":\"2020-09-18\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:01:48', '2020-09-19 02:01:48');
INSERT INTO `sc_admin_log` VALUES (654, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:01:48', '2020-09-19 02:01:48');
INSERT INTO `sc_admin_log` VALUES (655, 1, 'sc_admin/product/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:02:07', '2020-09-19 02:02:07');
INSERT INTO `sc_admin_log` VALUES (656, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"product\"}', '2020-09-19 02:02:16', '2020-09-19 02:02:16');
INSERT INTO `sc_admin_log` VALUES (657, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1600455737272\"}', '2020-09-19 02:02:17', '2020-09-19 02:02:17');
INSERT INTO `sc_admin_log` VALUES (658, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1600455737273\"}', '2020-09-19 02:02:18', '2020-09-19 02:02:18');
INSERT INTO `sc_admin_log` VALUES (659, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600455737274\"}', '2020-09-19 02:02:18', '2020-09-19 02:02:18');
INSERT INTO `sc_admin_log` VALUES (660, 1, 'sc_admin/uploads/resize', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"img\":\"python.png\",\"_\":\"1600455737275\"}', '2020-09-19 02:02:23', '2020-09-19 02:02:23');
INSERT INTO `sc_admin_log` VALUES (661, 1, 'sc_admin/uploads/doresize', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"img\":\"python.png\",\"dataHeight\":\"500\",\"dataWidth\":\"500\",\"_\":\"1600455737276\"}', '2020-09-19 02:02:44', '2020-09-19 02:02:44');
INSERT INTO `sc_admin_log` VALUES (662, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"OK\",\"_\":\"1600455737277\"}', '2020-09-19 02:02:45', '2020-09-19 02:02:45');
INSERT INTO `sc_admin_log` VALUES (663, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:03:20', '2020-09-19 02:03:20');
INSERT INTO `sc_admin_log` VALUES (664, 1, 'sc_admin/product/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:03:26', '2020-09-19 02:03:26');
INSERT INTO `sc_admin_log` VALUES (665, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"product\"}', '2020-09-19 02:03:47', '2020-09-19 02:03:47');
INSERT INTO `sc_admin_log` VALUES (666, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1600455828235\"}', '2020-09-19 02:03:48', '2020-09-19 02:03:48');
INSERT INTO `sc_admin_log` VALUES (667, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1600455828236\"}', '2020-09-19 02:03:48', '2020-09-19 02:03:48');
INSERT INTO `sc_admin_log` VALUES (668, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600455828237\"}', '2020-09-19 02:03:49', '2020-09-19 02:03:49');
INSERT INTO `sc_admin_log` VALUES (669, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:05:21', '2020-09-19 02:05:21');
INSERT INTO `sc_admin_log` VALUES (670, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1600455828238\"}', '2020-09-19 02:05:21', '2020-09-19 02:05:21');
INSERT INTO `sc_admin_log` VALUES (671, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600455828239\"}', '2020-09-19 02:05:22', '2020-09-19 02:05:22');
INSERT INTO `sc_admin_log` VALUES (672, 1, 'sc_admin/uploads/resize', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"img\":\"Mini Bang BangRings.jpg\",\"_\":\"1600455828240\"}', '2020-09-19 02:05:29', '2020-09-19 02:05:29');
INSERT INTO `sc_admin_log` VALUES (673, 1, 'sc_admin/uploads/doresize', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"img\":\"Mini Bang BangRings.jpg\",\"dataHeight\":\"500\",\"dataWidth\":\"500\",\"_\":\"1600455828241\"}', '2020-09-19 02:05:45', '2020-09-19 02:05:45');
INSERT INTO `sc_admin_log` VALUES (674, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"OK\",\"_\":\"1600455828242\"}', '2020-09-19 02:05:45', '2020-09-19 02:05:45');
INSERT INTO `sc_admin_log` VALUES (675, 1, 'sc_admin/product/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Mini Bang Bang\\/Rings\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Easy Polo Black Edition 3\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"fr\":{\"name\":\"Mini Bang Bang\\/Rings\",\"keyword\":null,\"description\":null,\"content\":\"<a href=\\\"http:\\/\\/18.191.166.128\\/items.php?type=Joaillerie&amp;category=Bagues&amp;lang=EN\\\">Mini Bang Bang\\/Rings<\\/a>\"}},\"category\":[\"11\"],\"store\":[\"0\"],\"image\":\"http:\\/\\/localhost:8000\\/data\\/product\\/Mini Bang BangRings.jpg\",\"sku\":\"CLOCKFAN1\",\"alias\":\"demo-alias-name-product-3\",\"brand_id\":\"2\",\"supplier_id\":[\"1\"],\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":\"g\",\"weight\":\"0\",\"length_class\":\"mm\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"date_available\":\"2020-09-18\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:05:59', '2020-09-19 02:05:59');
INSERT INTO `sc_admin_log` VALUES (676, 1, 'sc_admin/product/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:06:00', '2020-09-19 02:06:00');
INSERT INTO `sc_admin_log` VALUES (677, 1, 'sc_admin/product/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Mini Bang Bang\\/Rings\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Easy Polo Black Edition 3\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"fr\":{\"name\":\"Mini Bang Bang\\/Rings\",\"keyword\":null,\"description\":null,\"content\":\"<a href=\\\"http:\\/\\/18.191.166.128\\/items.php?type=Joaillerie&amp;category=Bagues&amp;lang=EN\\\">Mini Bang Bang\\/Rings<\\/a>\"}},\"category\":[\"11\"],\"store\":[\"0\"],\"image\":\"http:\\/\\/localhost:8000\\/data\\/product\\/Mini Bang BangRings.jpg\",\"sku\":\"CLOCKFAN1\",\"alias\":\"demo-alias-name-product-3\",\"brand_id\":\"2\",\"supplier_id\":[\"1\"],\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"15500\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":\"g\",\"weight\":\"0\",\"length_class\":\"mm\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"date_available\":\"2020-09-18\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:06:30', '2020-09-19 02:06:30');
INSERT INTO `sc_admin_log` VALUES (678, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:06:30', '2020-09-19 02:06:30');
INSERT INTO `sc_admin_log` VALUES (679, 1, 'sc_admin/product/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:06:39', '2020-09-19 02:06:39');
INSERT INTO `sc_admin_log` VALUES (680, 1, 'sc_admin/product/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Mini Bang Bang\\/Rings\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Easy Polo Black Edition 3\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"fr\":{\"name\":\"Mini Bang Bang\\/Rings\",\"keyword\":null,\"description\":null,\"content\":\"<a href=\\\"http:\\/\\/18.191.166.128\\/items.php?type=Joaillerie&amp;category=Bagues&amp;lang=EN\\\">Mini Bang Bang\\/Rings<\\/a>\"}},\"category\":[\"1\"],\"store\":[\"0\"],\"image\":\"http:\\/\\/localhost:8000\\/data\\/product\\/Mini Bang BangRings.jpg\",\"sku\":\"CLOCKFAN1\",\"alias\":\"demo-alias-name-product-3\",\"brand_id\":\"2\",\"supplier_id\":[\"1\"],\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"15500\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":\"g\",\"weight\":\"0\",\"length_class\":\"mm\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"date_available\":\"2020-09-18\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:06:59', '2020-09-19 02:06:59');
INSERT INTO `sc_admin_log` VALUES (681, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:06:59', '2020-09-19 02:06:59');
INSERT INTO `sc_admin_log` VALUES (682, 1, 'sc_admin/product/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:07:25', '2020-09-19 02:07:25');
INSERT INTO `sc_admin_log` VALUES (683, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"product\"}', '2020-09-19 02:07:52', '2020-09-19 02:07:52');
INSERT INTO `sc_admin_log` VALUES (684, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1600456072897\"}', '2020-09-19 02:07:53', '2020-09-19 02:07:53');
INSERT INTO `sc_admin_log` VALUES (685, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1600456072898\"}', '2020-09-19 02:07:53', '2020-09-19 02:07:53');
INSERT INTO `sc_admin_log` VALUES (686, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600456072899\"}', '2020-09-19 02:07:53', '2020-09-19 02:07:53');
INSERT INTO `sc_admin_log` VALUES (687, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:09:00', '2020-09-19 02:09:00');
INSERT INTO `sc_admin_log` VALUES (688, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1600456072900\"}', '2020-09-19 02:09:01', '2020-09-19 02:09:01');
INSERT INTO `sc_admin_log` VALUES (689, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600456072901\"}', '2020-09-19 02:09:01', '2020-09-19 02:09:01');
INSERT INTO `sc_admin_log` VALUES (690, 1, 'sc_admin/uploads/resize', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"img\":\"PuzzleEarrings.jpg\",\"_\":\"1600456072902\"}', '2020-09-19 02:09:05', '2020-09-19 02:09:05');
INSERT INTO `sc_admin_log` VALUES (691, 1, 'sc_admin/uploads/doresize', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"img\":\"PuzzleEarrings.jpg\",\"dataHeight\":\"500\",\"dataWidth\":\"500\",\"_\":\"1600456072903\"}', '2020-09-19 02:09:13', '2020-09-19 02:09:13');
INSERT INTO `sc_admin_log` VALUES (692, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"OK\",\"_\":\"1600456072904\"}', '2020-09-19 02:09:13', '2020-09-19 02:09:13');
INSERT INTO `sc_admin_log` VALUES (693, 1, 'sc_admin/product/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Puzzle\\/Earrings\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Puzzle\\/Earrings\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"fr\":{\"name\":\"Puzzle\\/Earrings\",\"keyword\":null,\"description\":null,\"content\":\"<a href=\\\"http:\\/\\/18.191.166.128\\/items.php?type=Joaillerie&amp;category=Boucles%20d%27Oreilles&amp;lang=EN\\\">Puzzle\\/Earrings<\\/a>\"}},\"category\":[\"1\"],\"store\":[\"0\"],\"image\":\"http:\\/\\/localhost:8000\\/data\\/product\\/PuzzleEarrings.jpg\",\"sub_image\":[\"\\/data\\/product\\/product-13.png\"],\"sku\":\"CLOCKFAN2\",\"alias\":\"demo-alias-name-product-4\",\"brand_id\":\"3\",\"supplier_id\":[\"1\"],\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"date_available\":\"2020-09-18\",\"minimum\":\"10\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:09:29', '2020-09-19 02:09:29');
INSERT INTO `sc_admin_log` VALUES (694, 1, 'sc_admin/product/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:09:29', '2020-09-19 02:09:29');
INSERT INTO `sc_admin_log` VALUES (695, 1, 'sc_admin/product/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Puzzle\\/Earrings\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Puzzle\\/Earrings\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"fr\":{\"name\":\"Puzzle\\/Earrings\",\"keyword\":null,\"description\":null,\"content\":\"<a href=\\\"http:\\/\\/18.191.166.128\\/items.php?type=Joaillerie&amp;category=Boucles%20d%27Oreilles&amp;lang=EN\\\">Puzzle\\/Earrings<\\/a>\"}},\"category\":[\"1\"],\"store\":[\"0\"],\"image\":\"http:\\/\\/localhost:8000\\/data\\/product\\/PuzzleEarrings.jpg\",\"sub_image\":[\"\\/data\\/product\\/product-13.png\"],\"sku\":\"CLOCKFAN2\",\"alias\":\"demo-alias-name-product-4\",\"brand_id\":\"3\",\"supplier_id\":[\"1\"],\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"15000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":\"g\",\"weight\":\"0\",\"length_class\":\"mm\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"date_available\":\"2020-09-18\",\"minimum\":\"10\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:09:47', '2020-09-19 02:09:47');
INSERT INTO `sc_admin_log` VALUES (696, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:09:47', '2020-09-19 02:09:47');
INSERT INTO `sc_admin_log` VALUES (697, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:10:35', '2020-09-19 02:10:35');
INSERT INTO `sc_admin_log` VALUES (698, 1, 'sc_admin/category/edit/6', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:10:43', '2020-09-19 02:10:43');
INSERT INTO `sc_admin_log` VALUES (699, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:12:13', '2020-09-19 02:12:13');
INSERT INTO `sc_admin_log` VALUES (700, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600456333920\"}', '2020-09-19 02:12:14', '2020-09-19 02:12:14');
INSERT INTO `sc_admin_log` VALUES (701, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600456333921\"}', '2020-09-19 02:12:14', '2020-09-19 02:12:14');
INSERT INTO `sc_admin_log` VALUES (702, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600456333922\"}', '2020-09-19 02:12:14', '2020-09-19 02:12:14');
INSERT INTO `sc_admin_log` VALUES (703, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600456333923\"}', '2020-09-19 02:12:34', '2020-09-19 02:12:34');
INSERT INTO `sc_admin_log` VALUES (704, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:15:59', '2020-09-19 02:15:59');
INSERT INTO `sc_admin_log` VALUES (705, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600456560359\"}', '2020-09-19 02:16:00', '2020-09-19 02:16:00');
INSERT INTO `sc_admin_log` VALUES (706, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600456560360\"}', '2020-09-19 02:16:01', '2020-09-19 02:16:01');
INSERT INTO `sc_admin_log` VALUES (707, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600456560361\"}', '2020-09-19 02:16:01', '2020-09-19 02:16:01');
INSERT INTO `sc_admin_log` VALUES (708, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600456560362\"}', '2020-09-19 02:16:03', '2020-09-19 02:16:03');
INSERT INTO `sc_admin_log` VALUES (709, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:16:14', '2020-09-19 02:16:14');
INSERT INTO `sc_admin_log` VALUES (710, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600456560363\"}', '2020-09-19 02:16:14', '2020-09-19 02:16:14');
INSERT INTO `sc_admin_log` VALUES (711, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600456560364\"}', '2020-09-19 02:16:14', '2020-09-19 02:16:14');
INSERT INTO `sc_admin_log` VALUES (712, 1, 'sc_admin/category/edit/6', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Rings\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"M\\u00e1y t\\u00ednh b\\u1ea3ng\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Rings\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"art_jewellery_rings\",\"image\":\"\\/data\\/category\\/2\\/cat-02-01.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:16:25', '2020-09-19 02:16:25');
INSERT INTO `sc_admin_log` VALUES (713, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:16:26', '2020-09-19 02:16:26');
INSERT INTO `sc_admin_log` VALUES (714, 1, 'sc_admin/category/edit/6', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:26:38', '2020-09-19 02:26:38');
INSERT INTO `sc_admin_log` VALUES (715, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:26:42', '2020-09-19 02:26:42');
INSERT INTO `sc_admin_log` VALUES (716, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600457202555\"}', '2020-09-19 02:26:43', '2020-09-19 02:26:43');
INSERT INTO `sc_admin_log` VALUES (717, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600457202556\"}', '2020-09-19 02:26:43', '2020-09-19 02:26:43');
INSERT INTO `sc_admin_log` VALUES (718, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457202557\"}', '2020-09-19 02:26:43', '2020-09-19 02:26:43');
INSERT INTO `sc_admin_log` VALUES (719, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457202558\"}', '2020-09-19 02:26:46', '2020-09-19 02:26:46');
INSERT INTO `sc_admin_log` VALUES (720, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"items\":[\"cat-02-01.jpg\"],\"_\":\"1600457202559\"}', '2020-09-19 02:26:58', '2020-09-19 02:26:58');
INSERT INTO `sc_admin_log` VALUES (721, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600457202560\"}', '2020-09-19 02:26:58', '2020-09-19 02:26:58');
INSERT INTO `sc_admin_log` VALUES (722, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457202561\"}', '2020-09-19 02:26:58', '2020-09-19 02:26:58');
INSERT INTO `sc_admin_log` VALUES (723, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:27:02', '2020-09-19 02:27:02');
INSERT INTO `sc_admin_log` VALUES (724, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600457202562\"}', '2020-09-19 02:27:02', '2020-09-19 02:27:02');
INSERT INTO `sc_admin_log` VALUES (725, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457202563\"}', '2020-09-19 02:27:02', '2020-09-19 02:27:02');
INSERT INTO `sc_admin_log` VALUES (726, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:27:29', '2020-09-19 02:27:29');
INSERT INTO `sc_admin_log` VALUES (727, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600457250297\"}', '2020-09-19 02:27:30', '2020-09-19 02:27:30');
INSERT INTO `sc_admin_log` VALUES (728, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600457250298\"}', '2020-09-19 02:27:31', '2020-09-19 02:27:31');
INSERT INTO `sc_admin_log` VALUES (729, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457250299\"}', '2020-09-19 02:27:31', '2020-09-19 02:27:31');
INSERT INTO `sc_admin_log` VALUES (730, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457250300\"}', '2020-09-19 02:27:33', '2020-09-19 02:27:33');
INSERT INTO `sc_admin_log` VALUES (731, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"items\":[\"cat-02-01.jpg\"],\"_\":\"1600457250301\"}', '2020-09-19 02:27:40', '2020-09-19 02:27:40');
INSERT INTO `sc_admin_log` VALUES (732, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600457250302\"}', '2020-09-19 02:27:40', '2020-09-19 02:27:40');
INSERT INTO `sc_admin_log` VALUES (733, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457250303\"}', '2020-09-19 02:27:41', '2020-09-19 02:27:41');
INSERT INTO `sc_admin_log` VALUES (734, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:27:44', '2020-09-19 02:27:44');
INSERT INTO `sc_admin_log` VALUES (735, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600457250304\"}', '2020-09-19 02:27:44', '2020-09-19 02:27:44');
INSERT INTO `sc_admin_log` VALUES (736, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457250305\"}', '2020-09-19 02:27:45', '2020-09-19 02:27:45');
INSERT INTO `sc_admin_log` VALUES (737, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:28:37', '2020-09-19 02:28:37');
INSERT INTO `sc_admin_log` VALUES (738, 1, 'sc_admin/category/edit/7', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:28:42', '2020-09-19 02:28:42');
INSERT INTO `sc_admin_log` VALUES (739, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:29:37', '2020-09-19 02:29:37');
INSERT INTO `sc_admin_log` VALUES (740, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600457378307\"}', '2020-09-19 02:29:38', '2020-09-19 02:29:38');
INSERT INTO `sc_admin_log` VALUES (741, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600457378308\"}', '2020-09-19 02:29:39', '2020-09-19 02:29:39');
INSERT INTO `sc_admin_log` VALUES (742, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457378309\"}', '2020-09-19 02:29:39', '2020-09-19 02:29:39');
INSERT INTO `sc_admin_log` VALUES (743, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457378310\"}', '2020-09-19 02:29:46', '2020-09-19 02:29:46');
INSERT INTO `sc_admin_log` VALUES (744, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:29:49', '2020-09-19 02:29:49');
INSERT INTO `sc_admin_log` VALUES (745, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600457378311\"}', '2020-09-19 02:29:49', '2020-09-19 02:29:49');
INSERT INTO `sc_admin_log` VALUES (746, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457378312\"}', '2020-09-19 02:29:50', '2020-09-19 02:29:50');
INSERT INTO `sc_admin_log` VALUES (747, 1, 'sc_admin/category/edit/7', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Bracelets\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Thi\\u1ebft b\\u1ecb\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Thi\\u1ebft b\\u1ecb\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"high_jewellery_bracelets\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-02-02.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:30:02', '2020-09-19 02:30:02');
INSERT INTO `sc_admin_log` VALUES (748, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:30:02', '2020-09-19 02:30:02');
INSERT INTO `sc_admin_log` VALUES (749, 1, 'sc_admin/category/edit/6', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:30:08', '2020-09-19 02:30:08');
INSERT INTO `sc_admin_log` VALUES (750, 1, 'sc_admin/category/edit/6', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Rings\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"M\\u00e1y t\\u00ednh b\\u1ea3ng\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Rings\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"high_jewellery_rings\",\"image\":\"\\/data\\/category\\/2\\/cat-02-01.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:30:19', '2020-09-19 02:30:19');
INSERT INTO `sc_admin_log` VALUES (751, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:30:19', '2020-09-19 02:30:19');
INSERT INTO `sc_admin_log` VALUES (752, 1, 'sc_admin/category/edit/8', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:31:01', '2020-09-19 02:31:01');
INSERT INTO `sc_admin_log` VALUES (753, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:32:36', '2020-09-19 02:32:36');
INSERT INTO `sc_admin_log` VALUES (754, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600457557139\"}', '2020-09-19 02:32:37', '2020-09-19 02:32:37');
INSERT INTO `sc_admin_log` VALUES (755, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600457557140\"}', '2020-09-19 02:32:37', '2020-09-19 02:32:37');
INSERT INTO `sc_admin_log` VALUES (756, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457557141\"}', '2020-09-19 02:32:38', '2020-09-19 02:32:38');
INSERT INTO `sc_admin_log` VALUES (757, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457557142\"}', '2020-09-19 02:32:46', '2020-09-19 02:32:46');
INSERT INTO `sc_admin_log` VALUES (758, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:32:49', '2020-09-19 02:32:49');
INSERT INTO `sc_admin_log` VALUES (759, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600457557143\"}', '2020-09-19 02:32:49', '2020-09-19 02:32:49');
INSERT INTO `sc_admin_log` VALUES (760, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457557144\"}', '2020-09-19 02:32:50', '2020-09-19 02:32:50');
INSERT INTO `sc_admin_log` VALUES (761, 1, 'sc_admin/category/edit/8', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Necklaces and Pendants\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Qu\\u1ea7n \\u00e1o nam\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Necklaces and Pendants\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"necklaces_pendants\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-02-03.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:32:59', '2020-09-19 02:32:59');
INSERT INTO `sc_admin_log` VALUES (762, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:32:59', '2020-09-19 02:32:59');
INSERT INTO `sc_admin_log` VALUES (763, 1, 'sc_admin/category/edit/9', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:35:09', '2020-09-19 02:35:09');
INSERT INTO `sc_admin_log` VALUES (764, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:35:19', '2020-09-19 02:35:19');
INSERT INTO `sc_admin_log` VALUES (765, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600457719781\"}', '2020-09-19 02:35:20', '2020-09-19 02:35:20');
INSERT INTO `sc_admin_log` VALUES (766, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600457719782\"}', '2020-09-19 02:35:20', '2020-09-19 02:35:20');
INSERT INTO `sc_admin_log` VALUES (767, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457719783\"}', '2020-09-19 02:35:20', '2020-09-19 02:35:20');
INSERT INTO `sc_admin_log` VALUES (768, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:36:50', '2020-09-19 02:36:50');
INSERT INTO `sc_admin_log` VALUES (769, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600457811375\"}', '2020-09-19 02:36:51', '2020-09-19 02:36:51');
INSERT INTO `sc_admin_log` VALUES (770, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600457811376\"}', '2020-09-19 02:36:52', '2020-09-19 02:36:52');
INSERT INTO `sc_admin_log` VALUES (771, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457811377\"}', '2020-09-19 02:36:52', '2020-09-19 02:36:52');
INSERT INTO `sc_admin_log` VALUES (772, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457811378\"}', '2020-09-19 02:37:25', '2020-09-19 02:37:25');
INSERT INTO `sc_admin_log` VALUES (773, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:37:30', '2020-09-19 02:37:30');
INSERT INTO `sc_admin_log` VALUES (774, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600457811379\"}', '2020-09-19 02:37:30', '2020-09-19 02:37:30');
INSERT INTO `sc_admin_log` VALUES (775, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457811380\"}', '2020-09-19 02:37:30', '2020-09-19 02:37:30');
INSERT INTO `sc_admin_log` VALUES (776, 1, 'sc_admin/category/edit/9', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Earrings\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Qu\\u1ea7n \\u00e1o n\\u1eef\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Earrings\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"earrings\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-s-04.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:37:46', '2020-09-19 02:37:46');
INSERT INTO `sc_admin_log` VALUES (777, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:37:46', '2020-09-19 02:37:46');
INSERT INTO `sc_admin_log` VALUES (778, 1, 'sc_admin/category/edit/10', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:38:57', '2020-09-19 02:38:57');
INSERT INTO `sc_admin_log` VALUES (779, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:39:08', '2020-09-19 02:39:08');
INSERT INTO `sc_admin_log` VALUES (780, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600457948935\"}', '2020-09-19 02:39:09', '2020-09-19 02:39:09');
INSERT INTO `sc_admin_log` VALUES (781, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600457948936\"}', '2020-09-19 02:39:09', '2020-09-19 02:39:09');
INSERT INTO `sc_admin_log` VALUES (782, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457948937\"}', '2020-09-19 02:39:09', '2020-09-19 02:39:09');
INSERT INTO `sc_admin_log` VALUES (783, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457948938\"}', '2020-09-19 02:39:11', '2020-09-19 02:39:11');
INSERT INTO `sc_admin_log` VALUES (784, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:39:17', '2020-09-19 02:39:17');
INSERT INTO `sc_admin_log` VALUES (785, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600457958002\"}', '2020-09-19 02:39:18', '2020-09-19 02:39:18');
INSERT INTO `sc_admin_log` VALUES (786, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600457958003\"}', '2020-09-19 02:39:18', '2020-09-19 02:39:18');
INSERT INTO `sc_admin_log` VALUES (787, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457958004\"}', '2020-09-19 02:39:18', '2020-09-19 02:39:18');
INSERT INTO `sc_admin_log` VALUES (788, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457958005\"}', '2020-09-19 02:39:23', '2020-09-19 02:39:23');
INSERT INTO `sc_admin_log` VALUES (789, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:39:25', '2020-09-19 02:39:25');
INSERT INTO `sc_admin_log` VALUES (790, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600457958006\"}', '2020-09-19 02:39:26', '2020-09-19 02:39:26');
INSERT INTO `sc_admin_log` VALUES (791, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600457958007\"}', '2020-09-19 02:39:26', '2020-09-19 02:39:26');
INSERT INTO `sc_admin_log` VALUES (792, 1, 'sc_admin/category/edit/10', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Brooches\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"\\u0110\\u1ed3 tr\\u1ebb em\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Brooches\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"brooches\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-s05.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:39:31', '2020-09-19 02:39:31');
INSERT INTO `sc_admin_log` VALUES (793, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:39:31', '2020-09-19 02:39:31');
INSERT INTO `sc_admin_log` VALUES (794, 1, 'sc_admin/category/edit/9', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:39:36', '2020-09-19 02:39:36');
INSERT INTO `sc_admin_log` VALUES (795, 1, 'sc_admin/category/edit/10', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:41:50', '2020-09-19 02:41:50');
INSERT INTO `sc_admin_log` VALUES (796, 1, 'sc_admin/category/edit/10', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Brooches\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"\\u0110\\u1ed3 tr\\u1ebb em\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Brooches\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"brooches\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-s05.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:41:55', '2020-09-19 02:41:55');
INSERT INTO `sc_admin_log` VALUES (797, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:41:55', '2020-09-19 02:41:55');
INSERT INTO `sc_admin_log` VALUES (798, 1, 'sc_admin/category/edit/9', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:42:11', '2020-09-19 02:42:11');
INSERT INTO `sc_admin_log` VALUES (799, 1, 'sc_admin/category/edit/9', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Earrings\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Qu\\u1ea7n \\u00e1o n\\u1eef\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Earrings\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"earrings\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-s-04.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:42:15', '2020-09-19 02:42:15');
INSERT INTO `sc_admin_log` VALUES (800, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:42:16', '2020-09-19 02:42:16');
INSERT INTO `sc_admin_log` VALUES (801, 1, 'sc_admin/category/edit/8', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:42:19', '2020-09-19 02:42:19');
INSERT INTO `sc_admin_log` VALUES (802, 1, 'sc_admin/category/edit/8', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Necklaces and Pendants\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Qu\\u1ea7n \\u00e1o nam\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Necklaces and Pendants\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"necklaces_pendants\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-02-03.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:42:24', '2020-09-19 02:42:24');
INSERT INTO `sc_admin_log` VALUES (803, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:42:24', '2020-09-19 02:42:24');
INSERT INTO `sc_admin_log` VALUES (804, 1, 'sc_admin/category/edit/7', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:42:29', '2020-09-19 02:42:29');
INSERT INTO `sc_admin_log` VALUES (805, 1, 'sc_admin/category/edit/7', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Bracelets\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Thi\\u1ebft b\\u1ecb\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Thi\\u1ebft b\\u1ecb\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"high_jewellery_bracelets\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-02-02.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:42:33', '2020-09-19 02:42:33');
INSERT INTO `sc_admin_log` VALUES (806, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:42:34', '2020-09-19 02:42:34');
INSERT INTO `sc_admin_log` VALUES (807, 1, 'sc_admin/category/edit/6', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:42:38', '2020-09-19 02:42:38');
INSERT INTO `sc_admin_log` VALUES (808, 1, 'sc_admin/category/edit/6', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Rings\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"M\\u00e1y t\\u00ednh b\\u1ea3ng\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Rings\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"high_jewellery_rings\",\"image\":\"\\/data\\/category\\/2\\/cat-02-01.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:42:42', '2020-09-19 02:42:42');
INSERT INTO `sc_admin_log` VALUES (809, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:42:42', '2020-09-19 02:42:42');
INSERT INTO `sc_admin_log` VALUES (810, 1, 'sc_admin/category/edit/10', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:43:15', '2020-09-19 02:43:15');
INSERT INTO `sc_admin_log` VALUES (811, 1, 'sc_admin/category/edit/10', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Brooches\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"\\u0110\\u1ed3 tr\\u1ebb em\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Brooches\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"brooches\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-s05.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:43:32', '2020-09-19 02:43:32');
INSERT INTO `sc_admin_log` VALUES (812, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:43:32', '2020-09-19 02:43:32');
INSERT INTO `sc_admin_log` VALUES (813, 1, 'sc_admin/category/edit/6', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:43:50', '2020-09-19 02:43:50');
INSERT INTO `sc_admin_log` VALUES (814, 1, 'sc_admin/category/edit/6', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Rings\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"M\\u00e1y t\\u00ednh b\\u1ea3ng\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Rings\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"high_rings\",\"image\":\"\\/data\\/category\\/2\\/cat-02-01.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:43:57', '2020-09-19 02:43:57');
INSERT INTO `sc_admin_log` VALUES (815, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:43:58', '2020-09-19 02:43:58');
INSERT INTO `sc_admin_log` VALUES (816, 1, 'sc_admin/category/edit/7', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:44:02', '2020-09-19 02:44:02');
INSERT INTO `sc_admin_log` VALUES (817, 1, 'sc_admin/category/edit/7', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Bracelets\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Thi\\u1ebft b\\u1ecb\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Thi\\u1ebft b\\u1ecb\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"high_bracelets\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-02-02.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:44:09', '2020-09-19 02:44:09');
INSERT INTO `sc_admin_log` VALUES (818, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:44:09', '2020-09-19 02:44:09');
INSERT INTO `sc_admin_log` VALUES (819, 1, 'sc_admin/category/edit/8', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:44:15', '2020-09-19 02:44:15');
INSERT INTO `sc_admin_log` VALUES (820, 1, 'sc_admin/category/edit/8', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Necklaces and Pendants\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Qu\\u1ea7n \\u00e1o nam\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Necklaces and Pendants\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"high_necklaces_pendants\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-02-03.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:44:27', '2020-09-19 02:44:27');
INSERT INTO `sc_admin_log` VALUES (821, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:44:27', '2020-09-19 02:44:27');
INSERT INTO `sc_admin_log` VALUES (822, 1, 'sc_admin/category/edit/9', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:44:32', '2020-09-19 02:44:32');
INSERT INTO `sc_admin_log` VALUES (823, 1, 'sc_admin/category/edit/9', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Earrings\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Qu\\u1ea7n \\u00e1o n\\u1eef\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Earrings\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"high_earrings\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-s-04.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:44:40', '2020-09-19 02:44:40');
INSERT INTO `sc_admin_log` VALUES (824, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:44:40', '2020-09-19 02:44:40');
INSERT INTO `sc_admin_log` VALUES (825, 1, 'sc_admin/category/edit/10', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:44:45', '2020-09-19 02:44:45');
INSERT INTO `sc_admin_log` VALUES (826, 1, 'sc_admin/category/edit/10', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Brooches\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"\\u0110\\u1ed3 tr\\u1ebb em\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Brooches\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"high_brooches\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-s05.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:44:56', '2020-09-19 02:44:56');
INSERT INTO `sc_admin_log` VALUES (827, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:44:56', '2020-09-19 02:44:56');
INSERT INTO `sc_admin_log` VALUES (828, 1, 'sc_admin/category/edit/11', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:45:14', '2020-09-19 02:45:14');
INSERT INTO `sc_admin_log` VALUES (829, 1, 'sc_admin/category/edit/6', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:45:26', '2020-09-19 02:45:26');
INSERT INTO `sc_admin_log` VALUES (830, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:45:29', '2020-09-19 02:45:29');
INSERT INTO `sc_admin_log` VALUES (831, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458329879\"}', '2020-09-19 02:45:30', '2020-09-19 02:45:30');
INSERT INTO `sc_admin_log` VALUES (832, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458329880\"}', '2020-09-19 02:45:30', '2020-09-19 02:45:30');
INSERT INTO `sc_admin_log` VALUES (833, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458329881\"}', '2020-09-19 02:45:30', '2020-09-19 02:45:30');
INSERT INTO `sc_admin_log` VALUES (834, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458329882\"}', '2020-09-19 02:45:35', '2020-09-19 02:45:35');
INSERT INTO `sc_admin_log` VALUES (835, 1, 'sc_admin/uploads/rename', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"file\":\"cat-s-04.jpg\",\"new_name\":\"cat-02-04.jpg\",\"_\":\"1600458329883\"}', '2020-09-19 02:45:53', '2020-09-19 02:45:53');
INSERT INTO `sc_admin_log` VALUES (836, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600458329884\"}', '2020-09-19 02:45:53', '2020-09-19 02:45:53');
INSERT INTO `sc_admin_log` VALUES (837, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458329885\"}', '2020-09-19 02:45:54', '2020-09-19 02:45:54');
INSERT INTO `sc_admin_log` VALUES (838, 1, 'sc_admin/uploads/rename', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"file\":\"cat-s05.jpg\",\"new_name\":\"cat-02-05.jpg\",\"_\":\"1600458329886\"}', '2020-09-19 02:46:04', '2020-09-19 02:46:04');
INSERT INTO `sc_admin_log` VALUES (839, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600458329887\"}', '2020-09-19 02:46:04', '2020-09-19 02:46:04');
INSERT INTO `sc_admin_log` VALUES (840, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458329888\"}', '2020-09-19 02:46:05', '2020-09-19 02:46:05');
INSERT INTO `sc_admin_log` VALUES (841, 1, 'sc_admin/category/edit/9', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:46:21', '2020-09-19 02:46:21');
INSERT INTO `sc_admin_log` VALUES (842, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:46:25', '2020-09-19 02:46:25');
INSERT INTO `sc_admin_log` VALUES (843, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458385596\"}', '2020-09-19 02:46:26', '2020-09-19 02:46:26');
INSERT INTO `sc_admin_log` VALUES (844, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458385597\"}', '2020-09-19 02:46:26', '2020-09-19 02:46:26');
INSERT INTO `sc_admin_log` VALUES (845, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458385598\"}', '2020-09-19 02:46:26', '2020-09-19 02:46:26');
INSERT INTO `sc_admin_log` VALUES (846, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458385599\"}', '2020-09-19 02:46:28', '2020-09-19 02:46:28');
INSERT INTO `sc_admin_log` VALUES (847, 1, 'sc_admin/category/edit/9', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Earrings\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Qu\\u1ea7n \\u00e1o n\\u1eef\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Earrings\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"high_earrings\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-02-04.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:46:31', '2020-09-19 02:46:31');
INSERT INTO `sc_admin_log` VALUES (848, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:46:32', '2020-09-19 02:46:32');
INSERT INTO `sc_admin_log` VALUES (849, 1, 'sc_admin/category/edit/10', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:46:35', '2020-09-19 02:46:35');
INSERT INTO `sc_admin_log` VALUES (850, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:46:38', '2020-09-19 02:46:38');
INSERT INTO `sc_admin_log` VALUES (851, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458398475\"}', '2020-09-19 02:46:38', '2020-09-19 02:46:38');
INSERT INTO `sc_admin_log` VALUES (852, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458398476\"}', '2020-09-19 02:46:39', '2020-09-19 02:46:39');
INSERT INTO `sc_admin_log` VALUES (853, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458398477\"}', '2020-09-19 02:46:39', '2020-09-19 02:46:39');
INSERT INTO `sc_admin_log` VALUES (854, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458398478\"}', '2020-09-19 02:46:41', '2020-09-19 02:46:41');
INSERT INTO `sc_admin_log` VALUES (855, 1, 'sc_admin/category/edit/10', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Brooches\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"\\u0110\\u1ed3 tr\\u1ebb em\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Brooches\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"high_brooches\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-02-05.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:46:45', '2020-09-19 02:46:45');
INSERT INTO `sc_admin_log` VALUES (856, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:46:45', '2020-09-19 02:46:45');
INSERT INTO `sc_admin_log` VALUES (857, 1, 'sc_admin/category/edit/11', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:47:47', '2020-09-19 02:47:47');
INSERT INTO `sc_admin_log` VALUES (858, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:49:42', '2020-09-19 02:49:42');
INSERT INTO `sc_admin_log` VALUES (859, 1, 'sc_admin/category/edit/11', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:49:49', '2020-09-19 02:49:49');
INSERT INTO `sc_admin_log` VALUES (860, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:50:05', '2020-09-19 02:50:05');
INSERT INTO `sc_admin_log` VALUES (861, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458605410\"}', '2020-09-19 02:50:05', '2020-09-19 02:50:05');
INSERT INTO `sc_admin_log` VALUES (862, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458605411\"}', '2020-09-19 02:50:06', '2020-09-19 02:50:06');
INSERT INTO `sc_admin_log` VALUES (863, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458605412\"}', '2020-09-19 02:50:06', '2020-09-19 02:50:06');
INSERT INTO `sc_admin_log` VALUES (864, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458605413\"}', '2020-09-19 02:50:07', '2020-09-19 02:50:07');
INSERT INTO `sc_admin_log` VALUES (865, 1, 'sc_admin/category/edit/11', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Rings\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n \\u0111i\\u1ec7n tho\\u1ea1i\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Rings\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"3\",\"alias\":\"rings\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-02-01.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:50:15', '2020-09-19 02:50:15');
INSERT INTO `sc_admin_log` VALUES (866, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:50:16', '2020-09-19 02:50:16');
INSERT INTO `sc_admin_log` VALUES (867, 1, 'sc_admin/category/edit/12', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:50:19', '2020-09-19 02:50:19');
INSERT INTO `sc_admin_log` VALUES (868, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:50:37', '2020-09-19 02:50:37');
INSERT INTO `sc_admin_log` VALUES (869, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458638388\"}', '2020-09-19 02:50:38', '2020-09-19 02:50:38');
INSERT INTO `sc_admin_log` VALUES (870, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458638389\"}', '2020-09-19 02:50:39', '2020-09-19 02:50:39');
INSERT INTO `sc_admin_log` VALUES (871, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458638390\"}', '2020-09-19 02:50:39', '2020-09-19 02:50:39');
INSERT INTO `sc_admin_log` VALUES (872, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458638391\"}', '2020-09-19 02:50:40', '2020-09-19 02:50:40');
INSERT INTO `sc_admin_log` VALUES (873, 1, 'sc_admin/category/edit/12', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Bracelets\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n n\\u1eef\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Bracelets\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"3\",\"alias\":\"bracelets\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-02-02.jpg\",\"sort\":\"3\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:50:44', '2020-09-19 02:50:44');
INSERT INTO `sc_admin_log` VALUES (874, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:50:44', '2020-09-19 02:50:44');
INSERT INTO `sc_admin_log` VALUES (875, 1, 'sc_admin/category/edit/13', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:50:48', '2020-09-19 02:50:48');
INSERT INTO `sc_admin_log` VALUES (876, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:51:08', '2020-09-19 02:51:08');
INSERT INTO `sc_admin_log` VALUES (877, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458668567\"}', '2020-09-19 02:51:09', '2020-09-19 02:51:09');
INSERT INTO `sc_admin_log` VALUES (878, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458668568\"}', '2020-09-19 02:51:09', '2020-09-19 02:51:09');
INSERT INTO `sc_admin_log` VALUES (879, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458668569\"}', '2020-09-19 02:51:09', '2020-09-19 02:51:09');
INSERT INTO `sc_admin_log` VALUES (880, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458668570\"}', '2020-09-19 02:51:10', '2020-09-19 02:51:10');
INSERT INTO `sc_admin_log` VALUES (881, 1, 'sc_admin/category/edit/13', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Necklaces and Pendants\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n nam\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Necklaces and Pendants\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"3\",\"alias\":\"men-accessaries\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-02-03.jpg\",\"sort\":\"3\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:51:14', '2020-09-19 02:51:14');
INSERT INTO `sc_admin_log` VALUES (882, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:51:14', '2020-09-19 02:51:14');
INSERT INTO `sc_admin_log` VALUES (883, 1, 'sc_admin/category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:51:19', '2020-09-19 02:51:19');
INSERT INTO `sc_admin_log` VALUES (884, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:51:43', '2020-09-19 02:51:43');
INSERT INTO `sc_admin_log` VALUES (885, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458704370\"}', '2020-09-19 02:51:44', '2020-09-19 02:51:44');
INSERT INTO `sc_admin_log` VALUES (886, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458704371\"}', '2020-09-19 02:51:45', '2020-09-19 02:51:45');
INSERT INTO `sc_admin_log` VALUES (887, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458704372\"}', '2020-09-19 02:51:45', '2020-09-19 02:51:45');
INSERT INTO `sc_admin_log` VALUES (888, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458704373\"}', '2020-09-19 02:51:46', '2020-09-19 02:51:46');
INSERT INTO `sc_admin_log` VALUES (889, 1, 'sc_admin/category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Earrings\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Earrings\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Earrings\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"3\",\"alias\":\"earrings\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-02-04.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:51:50', '2020-09-19 02:51:50');
INSERT INTO `sc_admin_log` VALUES (890, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:51:50', '2020-09-19 02:51:50');
INSERT INTO `sc_admin_log` VALUES (891, 1, 'sc_admin/category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:51:54', '2020-09-19 02:51:54');
INSERT INTO `sc_admin_log` VALUES (892, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:52:11', '2020-09-19 02:52:11');
INSERT INTO `sc_admin_log` VALUES (893, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458732293\"}', '2020-09-19 02:52:12', '2020-09-19 02:52:12');
INSERT INTO `sc_admin_log` VALUES (894, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458732294\"}', '2020-09-19 02:52:13', '2020-09-19 02:52:13');
INSERT INTO `sc_admin_log` VALUES (895, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458732295\"}', '2020-09-19 02:52:13', '2020-09-19 02:52:13');
INSERT INTO `sc_admin_log` VALUES (896, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458732296\"}', '2020-09-19 02:52:14', '2020-09-19 02:52:14');
INSERT INTO `sc_admin_log` VALUES (897, 1, 'sc_admin/category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Brooches\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Brooches\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Brooches\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"3\",\"alias\":\"brooches\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-02-05.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:52:18', '2020-09-19 02:52:18');
INSERT INTO `sc_admin_log` VALUES (898, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:52:18', '2020-09-19 02:52:18');
INSERT INTO `sc_admin_log` VALUES (899, 1, 'sc_admin/category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:52:25', '2020-09-19 02:52:25');
INSERT INTO `sc_admin_log` VALUES (900, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:52:52', '2020-09-19 02:52:52');
INSERT INTO `sc_admin_log` VALUES (901, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458772482\"}', '2020-09-19 02:52:53', '2020-09-19 02:52:53');
INSERT INTO `sc_admin_log` VALUES (902, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458772483\"}', '2020-09-19 02:52:53', '2020-09-19 02:52:53');
INSERT INTO `sc_admin_log` VALUES (903, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458772484\"}', '2020-09-19 02:52:53', '2020-09-19 02:52:53');
INSERT INTO `sc_admin_log` VALUES (904, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:53:31', '2020-09-19 02:53:31');
INSERT INTO `sc_admin_log` VALUES (905, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458811554\"}', '2020-09-19 02:53:32', '2020-09-19 02:53:32');
INSERT INTO `sc_admin_log` VALUES (906, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458811555\"}', '2020-09-19 02:53:32', '2020-09-19 02:53:32');
INSERT INTO `sc_admin_log` VALUES (907, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458811556\"}', '2020-09-19 02:53:32', '2020-09-19 02:53:32');
INSERT INTO `sc_admin_log` VALUES (908, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458811557\"}', '2020-09-19 02:53:33', '2020-09-19 02:53:33');
INSERT INTO `sc_admin_log` VALUES (909, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:53:38', '2020-09-19 02:53:38');
INSERT INTO `sc_admin_log` VALUES (910, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600458811558\"}', '2020-09-19 02:53:38', '2020-09-19 02:53:38');
INSERT INTO `sc_admin_log` VALUES (911, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458811559\"}', '2020-09-19 02:53:38', '2020-09-19 02:53:38');
INSERT INTO `sc_admin_log` VALUES (912, 1, 'sc_admin/category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Engagement Rings\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Engagement Rings\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Engagement Rings\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"4\",\"alias\":\"engagement_rings\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-04-01.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:53:46', '2020-09-19 02:53:46');
INSERT INTO `sc_admin_log` VALUES (913, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:53:46', '2020-09-19 02:53:46');
INSERT INTO `sc_admin_log` VALUES (914, 1, 'sc_admin/category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:53:49', '2020-09-19 02:53:49');
INSERT INTO `sc_admin_log` VALUES (915, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:54:48', '2020-09-19 02:54:48');
INSERT INTO `sc_admin_log` VALUES (916, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458888758\"}', '2020-09-19 02:54:49', '2020-09-19 02:54:49');
INSERT INTO `sc_admin_log` VALUES (917, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458888759\"}', '2020-09-19 02:54:49', '2020-09-19 02:54:49');
INSERT INTO `sc_admin_log` VALUES (918, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458888760\"}', '2020-09-19 02:54:49', '2020-09-19 02:54:49');
INSERT INTO `sc_admin_log` VALUES (919, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458888761\"}', '2020-09-19 02:54:51', '2020-09-19 02:54:51');
INSERT INTO `sc_admin_log` VALUES (920, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:54:54', '2020-09-19 02:54:54');
INSERT INTO `sc_admin_log` VALUES (921, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600458888762\"}', '2020-09-19 02:54:54', '2020-09-19 02:54:54');
INSERT INTO `sc_admin_log` VALUES (922, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458888763\"}', '2020-09-19 02:54:54', '2020-09-19 02:54:54');
INSERT INTO `sc_admin_log` VALUES (923, 1, 'sc_admin/category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Wedding Bands\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Wedding Bands\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Wedding Bands\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"4\",\"alias\":\"wedding_bands\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-04-02.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:54:58', '2020-09-19 02:54:58');
INSERT INTO `sc_admin_log` VALUES (924, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:54:58', '2020-09-19 02:54:58');
INSERT INTO `sc_admin_log` VALUES (925, 1, 'sc_admin/category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:55:15', '2020-09-19 02:55:15');
INSERT INTO `sc_admin_log` VALUES (926, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:55:43', '2020-09-19 02:55:43');
INSERT INTO `sc_admin_log` VALUES (927, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458943427\"}', '2020-09-19 02:55:43', '2020-09-19 02:55:43');
INSERT INTO `sc_admin_log` VALUES (928, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600458943428\"}', '2020-09-19 02:55:44', '2020-09-19 02:55:44');
INSERT INTO `sc_admin_log` VALUES (929, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600458943429\"}', '2020-09-19 02:55:44', '2020-09-19 02:55:44');
INSERT INTO `sc_admin_log` VALUES (930, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 02:57:01', '2020-09-19 02:57:01');
INSERT INTO `sc_admin_log` VALUES (931, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600459021839\"}', '2020-09-19 02:57:02', '2020-09-19 02:57:02');
INSERT INTO `sc_admin_log` VALUES (932, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600459021840\"}', '2020-09-19 02:57:02', '2020-09-19 02:57:02');
INSERT INTO `sc_admin_log` VALUES (933, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600459021841\"}', '2020-09-19 02:57:02', '2020-09-19 02:57:02');
INSERT INTO `sc_admin_log` VALUES (934, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600459021842\"}', '2020-09-19 02:57:03', '2020-09-19 02:57:03');
INSERT INTO `sc_admin_log` VALUES (935, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:57:07', '2020-09-19 02:57:07');
INSERT INTO `sc_admin_log` VALUES (936, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600459021843\"}', '2020-09-19 02:57:07', '2020-09-19 02:57:07');
INSERT INTO `sc_admin_log` VALUES (937, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600459021844\"}', '2020-09-19 02:57:07', '2020-09-19 02:57:07');
INSERT INTO `sc_admin_log` VALUES (938, 1, 'sc_admin/category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Certified Diamonds\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Certified Diamonds\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Certified Diamonds\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"5\",\"alias\":\"certified_diamonds\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-05-01.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 02:57:11', '2020-09-19 02:57:11');
INSERT INTO `sc_admin_log` VALUES (939, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:57:11', '2020-09-19 02:57:11');
INSERT INTO `sc_admin_log` VALUES (940, 1, 'sc_admin/category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 02:59:56', '2020-09-19 02:59:56');
INSERT INTO `sc_admin_log` VALUES (941, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 03:00:08', '2020-09-19 03:00:08');
INSERT INTO `sc_admin_log` VALUES (942, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600459208425\"}', '2020-09-19 03:00:08', '2020-09-19 03:00:08');
INSERT INTO `sc_admin_log` VALUES (943, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600459208426\"}', '2020-09-19 03:00:09', '2020-09-19 03:00:09');
INSERT INTO `sc_admin_log` VALUES (944, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600459208427\"}', '2020-09-19 03:00:09', '2020-09-19 03:00:09');
INSERT INTO `sc_admin_log` VALUES (945, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600459208428\"}', '2020-09-19 03:00:13', '2020-09-19 03:00:13');
INSERT INTO `sc_admin_log` VALUES (946, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 03:00:22', '2020-09-19 03:00:22');
INSERT INTO `sc_admin_log` VALUES (947, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600459222713\"}', '2020-09-19 03:00:23', '2020-09-19 03:00:23');
INSERT INTO `sc_admin_log` VALUES (948, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600459222714\"}', '2020-09-19 03:00:23', '2020-09-19 03:00:23');
INSERT INTO `sc_admin_log` VALUES (949, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600459222715\"}', '2020-09-19 03:00:23', '2020-09-19 03:00:23');
INSERT INTO `sc_admin_log` VALUES (950, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600459222716\"}', '2020-09-19 03:00:25', '2020-09-19 03:00:25');
INSERT INTO `sc_admin_log` VALUES (951, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 03:00:28', '2020-09-19 03:00:28');
INSERT INTO `sc_admin_log` VALUES (952, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600459222717\"}', '2020-09-19 03:00:28', '2020-09-19 03:00:28');
INSERT INTO `sc_admin_log` VALUES (953, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600459222718\"}', '2020-09-19 03:00:29', '2020-09-19 03:00:29');
INSERT INTO `sc_admin_log` VALUES (954, 1, 'sc_admin/category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Investement Diamonds\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Investement Diamonds\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Investement Diamonds\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"5\",\"alias\":\"investement_diamonds\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-05-02.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 03:00:44', '2020-09-19 03:00:44');
INSERT INTO `sc_admin_log` VALUES (955, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:00:44', '2020-09-19 03:00:44');
INSERT INTO `sc_admin_log` VALUES (956, 1, 'sc_admin/category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:02:12', '2020-09-19 03:02:12');
INSERT INTO `sc_admin_log` VALUES (957, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 03:02:32', '2020-09-19 03:02:32');
INSERT INTO `sc_admin_log` VALUES (958, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600459352926\"}', '2020-09-19 03:02:33', '2020-09-19 03:02:33');
INSERT INTO `sc_admin_log` VALUES (959, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600459352927\"}', '2020-09-19 03:02:33', '2020-09-19 03:02:33');
INSERT INTO `sc_admin_log` VALUES (960, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600459352928\"}', '2020-09-19 03:02:33', '2020-09-19 03:02:33');
INSERT INTO `sc_admin_log` VALUES (961, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600459352929\"}', '2020-09-19 03:02:34', '2020-09-19 03:02:34');
INSERT INTO `sc_admin_log` VALUES (962, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 03:02:38', '2020-09-19 03:02:38');
INSERT INTO `sc_admin_log` VALUES (963, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"_\":\"1600459352930\"}', '2020-09-19 03:02:38', '2020-09-19 03:02:38');
INSERT INTO `sc_admin_log` VALUES (964, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600459352931\"}', '2020-09-19 03:02:38', '2020-09-19 03:02:38');
INSERT INTO `sc_admin_log` VALUES (965, 1, 'sc_admin/category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Personalised Diamonds\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Personalised Diamonds\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Personalised Diamonds\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"5\",\"alias\":\"personalised_diamonds\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-05-03.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 03:02:43', '2020-09-19 03:02:43');
INSERT INTO `sc_admin_log` VALUES (966, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:02:43', '2020-09-19 03:02:43');
INSERT INTO `sc_admin_log` VALUES (967, 1, 'sc_admin/category/edit/19', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:03:19', '2020-09-19 03:03:19');
INSERT INTO `sc_admin_log` VALUES (968, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"category\"}', '2020-09-19 03:03:24', '2020-09-19 03:03:24');
INSERT INTO `sc_admin_log` VALUES (969, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600459404796\"}', '2020-09-19 03:03:25', '2020-09-19 03:03:25');
INSERT INTO `sc_admin_log` VALUES (970, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1600459404797\"}', '2020-09-19 03:03:25', '2020-09-19 03:03:25');
INSERT INTO `sc_admin_log` VALUES (971, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600459404798\"}', '2020-09-19 03:03:25', '2020-09-19 03:03:25');
INSERT INTO `sc_admin_log` VALUES (972, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600459404799\"}', '2020-09-19 03:03:27', '2020-09-19 03:03:27');
INSERT INTO `sc_admin_log` VALUES (973, 1, 'sc_admin/uploads/resize', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"img\":\"cat-05-02.jpg\",\"_\":\"1600459404800\"}', '2020-09-19 03:03:32', '2020-09-19 03:03:32');
INSERT INTO `sc_admin_log` VALUES (974, 1, 'sc_admin/uploads/doresize', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"img\":\"cat-05-02.jpg\",\"dataHeight\":\"500\",\"dataWidth\":\"500\",\"_\":\"1600459404801\"}', '2020-09-19 03:03:40', '2020-09-19 03:03:40');
INSERT INTO `sc_admin_log` VALUES (975, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/2\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"OK\",\"_\":\"1600459404802\"}', '2020-09-19 03:03:40', '2020-09-19 03:03:40');
INSERT INTO `sc_admin_log` VALUES (976, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:04:15', '2020-09-19 03:04:15');
INSERT INTO `sc_admin_log` VALUES (977, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:05:02', '2020-09-19 03:05:02');
INSERT INTO `sc_admin_log` VALUES (978, 1, 'sc_admin/category/edit/6', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:05:07', '2020-09-19 03:05:07');
INSERT INTO `sc_admin_log` VALUES (979, 1, 'sc_admin/category/edit/6', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"High Rings\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"M\\u00e1y t\\u00ednh b\\u1ea3ng\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Rings\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"high_rings\",\"image\":\"\\/data\\/category\\/2\\/cat-02-01.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 03:05:14', '2020-09-19 03:05:14');
INSERT INTO `sc_admin_log` VALUES (980, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:05:14', '2020-09-19 03:05:14');
INSERT INTO `sc_admin_log` VALUES (981, 1, 'sc_admin/category/edit/7', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:05:19', '2020-09-19 03:05:19');
INSERT INTO `sc_admin_log` VALUES (982, 1, 'sc_admin/category/edit/7', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"High Bracelets\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Thi\\u1ebft b\\u1ecb\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Thi\\u1ebft b\\u1ecb\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"high_bracelets\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-02-02.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 03:05:26', '2020-09-19 03:05:26');
INSERT INTO `sc_admin_log` VALUES (983, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:05:26', '2020-09-19 03:05:26');
INSERT INTO `sc_admin_log` VALUES (984, 1, 'sc_admin/category/edit/8', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:05:31', '2020-09-19 03:05:31');
INSERT INTO `sc_admin_log` VALUES (985, 1, 'sc_admin/category/edit/8', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"High Necklaces and Pendants\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Qu\\u1ea7n \\u00e1o nam\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Necklaces and Pendants\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"high_necklaces_pendants\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-02-03.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 03:05:40', '2020-09-19 03:05:40');
INSERT INTO `sc_admin_log` VALUES (986, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:05:41', '2020-09-19 03:05:41');
INSERT INTO `sc_admin_log` VALUES (987, 1, 'sc_admin/category/edit/9', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:05:48', '2020-09-19 03:05:48');
INSERT INTO `sc_admin_log` VALUES (988, 1, 'sc_admin/category/edit/9', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"High Earrings\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Qu\\u1ea7n \\u00e1o n\\u1eef\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Earrings\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"high_earrings\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-02-04.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 03:05:53', '2020-09-19 03:05:53');
INSERT INTO `sc_admin_log` VALUES (989, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:05:54', '2020-09-19 03:05:54');
INSERT INTO `sc_admin_log` VALUES (990, 1, 'sc_admin/category/edit/10', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:05:59', '2020-09-19 03:05:59');
INSERT INTO `sc_admin_log` VALUES (991, 1, 'sc_admin/category/edit/10', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"High Brooches\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"\\u0110\\u1ed3 tr\\u1ebb em\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Brooches\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"2\",\"alias\":\"high_brooches\",\"image\":\"http:\\/\\/localhost:8000\\/data\\/category\\/2\\/cat-02-05.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 03:06:05', '2020-09-19 03:06:05');
INSERT INTO `sc_admin_log` VALUES (992, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:06:05', '2020-09-19 03:06:05');
INSERT INTO `sc_admin_log` VALUES (993, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:06:22', '2020-09-19 03:06:22');
INSERT INTO `sc_admin_log` VALUES (994, 1, 'sc_admin/product/edit/16', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:06:36', '2020-09-19 03:06:36');
INSERT INTO `sc_admin_log` VALUES (995, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"type\":\"product\"}', '2020-09-19 03:06:41', '2020-09-19 03:06:41');
INSERT INTO `sc_admin_log` VALUES (996, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1600459601552\"}', '2020-09-19 03:06:42', '2020-09-19 03:06:42');
INSERT INTO `sc_admin_log` VALUES (997, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1600459601553\"}', '2020-09-19 03:06:42', '2020-09-19 03:06:42');
INSERT INTO `sc_admin_log` VALUES (998, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600459601554\"}', '2020-09-19 03:06:42', '2020-09-19 03:06:42');
INSERT INTO `sc_admin_log` VALUES (999, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600459601555\"}', '2020-09-19 03:06:46', '2020-09-19 03:06:46');
INSERT INTO `sc_admin_log` VALUES (1000, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"list\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600459601556\"}', '2020-09-19 03:06:52', '2020-09-19 03:06:52');
INSERT INTO `sc_admin_log` VALUES (1001, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1600459601557\"}', '2020-09-19 03:06:55', '2020-09-19 03:06:55');
INSERT INTO `sc_admin_log` VALUES (1002, 1, 'sc_admin/product/edit/16', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:17:38', '2020-09-19 03:17:38');
INSERT INTO `sc_admin_log` VALUES (1003, 1, 'sc_admin/product/edit/16', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:18:38', '2020-09-19 03:18:38');
INSERT INTO `sc_admin_log` VALUES (1004, 1, 'sc_admin/product/edit/16', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:20:24', '2020-09-19 03:20:24');
INSERT INTO `sc_admin_log` VALUES (1005, 1, 'sc_admin/product/edit/16', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:20:28', '2020-09-19 03:20:28');
INSERT INTO `sc_admin_log` VALUES (1006, 1, 'sc_admin/product/edit/16', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:21:08', '2020-09-19 03:21:08');
INSERT INTO `sc_admin_log` VALUES (1007, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:21:30', '2020-09-19 03:21:30');
INSERT INTO `sc_admin_log` VALUES (1008, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:21:58', '2020-09-19 03:21:58');
INSERT INTO `sc_admin_log` VALUES (1009, 1, 'sc_admin/category/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:22:03', '2020-09-19 03:22:03');
INSERT INTO `sc_admin_log` VALUES (1010, 1, 'sc_admin/category/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"ART JEWELLERY\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"Thi\\u1ebft b\\u1ecb \\u0111i\\u1ec7n t\\u1eed\",\"keyword\":null,\"description\":null},\"fr\":{\"title\":\"Thi\\u1ebft b\\u1ecb \\u0111i\\u1ec7n t\\u1eed\",\"keyword\":null,\"description\":null}},\"store\":[\"0\"],\"parent\":\"0\",\"alias\":\"art_jewellery\",\"image\":\"\\/data\\/category\\/cat-01.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 03:22:10', '2020-09-19 03:22:10');
INSERT INTO `sc_admin_log` VALUES (1011, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:22:10', '2020-09-19 03:22:10');
INSERT INTO `sc_admin_log` VALUES (1012, 1, 'sc_admin/category/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:22:14', '2020-09-19 03:22:14');
INSERT INTO `sc_admin_log` VALUES (1013, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:25:16', '2020-09-19 03:25:16');
INSERT INTO `sc_admin_log` VALUES (1014, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:26:05', '2020-09-19 03:26:05');
INSERT INTO `sc_admin_log` VALUES (1015, 1, 'sc_admin/product/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:26:22', '2020-09-19 03:26:22');
INSERT INTO `sc_admin_log` VALUES (1016, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:30:55', '2020-09-19 03:30:55');
INSERT INTO `sc_admin_log` VALUES (1017, 1, 'sc_admin/product/edit/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:31:05', '2020-09-19 03:31:05');
INSERT INTO `sc_admin_log` VALUES (1018, 1, 'sc_admin/product/edit/5', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Tiffany & Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 Carat\",\"keyword\":null,\"description\":null,\"content\":\"<p>Tiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CT SKU: 106943<br \\/>\\r\\nTiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CTW<br \\/>\\r\\nCondition Description: Retails for 647,000 USD. In excellent condition and recently polished.<br \\/>\\r\\nRing size is 6. Comes with the original Tiffany box and papers.<br \\/>\\r\\n<br \\/>\\r\\nBrand: Tiffany &amp; Co.<br \\/>\\r\\nCollection\\/Series:<br \\/>\\r\\nMetal Type: Platinum<br \\/>\\r\\nMetal Purity: 950<br \\/>\\r\\nRing Size: 6<\\/p>\"},\"vi\":{\"name\":\"Tiffany & Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 Carat\",\"keyword\":null,\"description\":null,\"content\":\"<p>Tiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CT SKU: 106943<br \\/>\\r\\nTiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CTW<br \\/>\\r\\nCondition Description: Retails for 647,000 USD. In excellent condition and recently polished.<br \\/>\\r\\nRing size is 6. Comes with the original Tiffany box and papers.<br \\/>\\r\\n<br \\/>\\r\\nBrand: Tiffany &amp; Co.<br \\/>\\r\\nCollection\\/Series:<br \\/>\\r\\nMetal Type: Platinum<br \\/>\\r\\nMetal Purity: 950<br \\/>\\r\\nRing Size: 6<\\/p>\"},\"fr\":{\"name\":\"Tiffany & Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 Carat\",\"keyword\":null,\"description\":null,\"content\":\"Tiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CT SKU: 106943<br \\/>\\r\\nTiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CTW<br \\/>\\r\\nCondition Description: Retails for 647,000 USD. In excellent condition and recently polished.<br \\/>\\r\\nRing size is 6. Comes with the original Tiffany box and papers.<br \\/>\\r\\n<br \\/>\\r\\nBrand: Tiffany &amp; Co.<br \\/>\\r\\nCollection\\/Series:<br \\/>\\r\\nMetal Type: Platinum<br \\/>\\r\\nMetal Purity: 950<br \\/>\\r\\nRing Size: 6\"}},\"category\":[\"6\",\"11\",\"16\"],\"store\":[\"0\"],\"image\":\"\\/data\\/product\\/ring-01-01.webp\",\"sub_image\":[\"\\/data\\/product\\/ring-01-01.webp\",\"\\/data\\/product\\/ring-01-01.webp\",\"\\/data\\/product\\/ring-01-01.webp\"],\"sku\":\"CLOCKFAN3\",\"alias\":\"engagement_rings_product1\",\"brand_id\":\"1\",\"supplier_id\":[\"1\"],\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":\"g\",\"weight\":\"0\",\"length_class\":\"mm\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"date_available\":\"2020-09-18\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 03:35:29', '2020-09-19 03:35:29');
INSERT INTO `sc_admin_log` VALUES (1019, 1, 'sc_admin/product/edit/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:35:29', '2020-09-19 03:35:29');
INSERT INTO `sc_admin_log` VALUES (1020, 1, 'sc_admin/product/edit/5', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Tiffany & Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 Carat\",\"keyword\":null,\"description\":null,\"content\":\"<p>Tiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CT SKU: 106943<br \\/>\\r\\nTiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CTW<br \\/>\\r\\nCondition Description: Retails for 647,000 USD. In excellent condition and recently polished.<br \\/>\\r\\nRing size is 6. Comes with the original Tiffany box and papers.<br \\/>\\r\\n<br \\/>\\r\\nBrand: Tiffany &amp; Co.<br \\/>\\r\\nCollection\\/Series:<br \\/>\\r\\nMetal Type: Platinum<br \\/>\\r\\nMetal Purity: 950<br \\/>\\r\\nRing Size: 6<\\/p>\"},\"vi\":{\"name\":\"Tiffany & Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 Carat\",\"keyword\":null,\"description\":null,\"content\":\"<p>Tiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CT SKU: 106943<br \\/>\\r\\nTiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CTW<br \\/>\\r\\nCondition Description: Retails for 647,000 USD. In excellent condition and recently polished.<br \\/>\\r\\nRing size is 6. Comes with the original Tiffany box and papers.<br \\/>\\r\\n<br \\/>\\r\\nBrand: Tiffany &amp; Co.<br \\/>\\r\\nCollection\\/Series:<br \\/>\\r\\nMetal Type: Platinum<br \\/>\\r\\nMetal Purity: 950<br \\/>\\r\\nRing Size: 6<\\/p>\"},\"fr\":{\"name\":\"Tiffany & Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 Carat\",\"keyword\":null,\"description\":null,\"content\":\"Tiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CT SKU: 106943<br \\/>\\r\\nTiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CTW<br \\/>\\r\\nCondition Description: Retails for 647,000 USD. In excellent condition and recently polished.<br \\/>\\r\\nRing size is 6. Comes with the original Tiffany box and papers.<br \\/>\\r\\n<br \\/>\\r\\nBrand: Tiffany &amp; Co.<br \\/>\\r\\nCollection\\/Series:<br \\/>\\r\\nMetal Type: Platinum<br \\/>\\r\\nMetal Purity: 950<br \\/>\\r\\nRing Size: 6\"}},\"category\":[\"6\",\"11\",\"16\"],\"store\":[\"0\"],\"image\":\"\\/data\\/product\\/ring-01-01.webp\",\"sub_image\":[\"\\/data\\/product\\/ring-01-01.webp\",\"\\/data\\/product\\/ring-01-01.webp\",\"\\/data\\/product\\/ring-01-01.webp\"],\"sku\":\"CLOCKFAN3\",\"alias\":\"engagement_rings_product1\",\"brand_id\":\"1\",\"supplier_id\":[\"1\"],\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"15000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":\"g\",\"weight\":\"0\",\"length_class\":\"mm\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"date_available\":\"2020-09-18\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 03:35:44', '2020-09-19 03:35:44');
INSERT INTO `sc_admin_log` VALUES (1021, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:35:45', '2020-09-19 03:35:45');
INSERT INTO `sc_admin_log` VALUES (1022, 1, 'sc_admin/product/edit/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:36:24', '2020-09-19 03:36:24');
INSERT INTO `sc_admin_log` VALUES (1023, 1, 'sc_admin/product/edit/5', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Tiffany & Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 Carat\",\"keyword\":null,\"description\":null,\"content\":\"<p>Tiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CT SKU: 106943<br \\/>\\r\\nTiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CTW<br \\/>\\r\\nCondition Description: Retails for 647,000 USD. In excellent condition and recently polished.<br \\/>\\r\\nRing size is 6. Comes with the original Tiffany box and papers.<br \\/>\\r\\n<br \\/>\\r\\nBrand: Tiffany &amp; Co.<br \\/>\\r\\nCollection\\/Series:<br \\/>\\r\\nMetal Type: Platinum<br \\/>\\r\\nMetal Purity: 950<br \\/>\\r\\nRing Size: 6<\\/p>\"},\"vi\":{\"name\":\"Tiffany & Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 Carat\",\"keyword\":null,\"description\":null,\"content\":\"<p>Tiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CT SKU: 106943<br \\/>\\r\\nTiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CTW<br \\/>\\r\\nCondition Description: Retails for 647,000 USD. In excellent condition and recently polished.<br \\/>\\r\\nRing size is 6. Comes with the original Tiffany box and papers.<br \\/>\\r\\n<br \\/>\\r\\nBrand: Tiffany &amp; Co.<br \\/>\\r\\nCollection\\/Series:<br \\/>\\r\\nMetal Type: Platinum<br \\/>\\r\\nMetal Purity: 950<br \\/>\\r\\nRing Size: 6<\\/p>\"},\"fr\":{\"name\":\"Tiffany & Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 Carat\",\"keyword\":null,\"description\":null,\"content\":\"Tiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CT SKU: 106943<br \\/>\\r\\nTiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CTW<br \\/>\\r\\nCondition Description: Retails for 647,000 USD. In excellent condition and recently polished.<br \\/>\\r\\nRing size is 6. Comes with the original Tiffany box and papers.<br \\/>\\r\\n<br \\/>\\r\\nBrand: Tiffany &amp; Co.<br \\/>\\r\\nCollection\\/Series:<br \\/>\\r\\nMetal Type: Platinum<br \\/>\\r\\nMetal Purity: 950<br \\/>\\r\\nRing Size: 6\"}},\"category\":[\"6\",\"11\",\"16\"],\"store\":[\"0\"],\"image\":\"\\/data\\/product\\/ring-01-01.webp\",\"sub_image\":[\"\\/data\\/product\\/ring-01-02.webp\",\"\\/data\\/product\\/ring-01-03.webp\",\"\\/data\\/product\\/ring-01-04.webp\"],\"sku\":\"CLOCKFAN3\",\"alias\":\"engagement_rings_product1\",\"brand_id\":\"1\",\"supplier_id\":[\"1\"],\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"15000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":\"g\",\"weight\":\"0\",\"length_class\":\"mm\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"0\",\"date_available\":\"2020-09-18\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 03:36:41', '2020-09-19 03:36:41');
INSERT INTO `sc_admin_log` VALUES (1024, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:36:41', '2020-09-19 03:36:41');
INSERT INTO `sc_admin_log` VALUES (1025, 1, 'sc_admin/product/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"ids\":\"17\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 03:37:25', '2020-09-19 03:37:25');
INSERT INTO `sc_admin_log` VALUES (1026, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 03:37:25', '2020-09-19 03:37:25');
INSERT INTO `sc_admin_log` VALUES (1027, 1, 'sc_admin/product/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"ids\":\"16\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 03:37:28', '2020-09-19 03:37:28');
INSERT INTO `sc_admin_log` VALUES (1028, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 03:37:28', '2020-09-19 03:37:28');
INSERT INTO `sc_admin_log` VALUES (1029, 1, 'sc_admin/product/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"ids\":\"15\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 03:37:33', '2020-09-19 03:37:33');
INSERT INTO `sc_admin_log` VALUES (1030, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 03:37:33', '2020-09-19 03:37:33');
INSERT INTO `sc_admin_log` VALUES (1031, 1, 'sc_admin/product/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"ids\":\"14\",\"_token\":\"ctcaDxuiAxCcJt4jrIMHtHPqkEHSzVpKK8gQjbPy\"}', '2020-09-19 03:37:35', '2020-09-19 03:37:35');
INSERT INTO `sc_admin_log` VALUES (1032, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-09-19 03:37:36', '2020-09-19 03:37:36');
INSERT INTO `sc_admin_log` VALUES (1033, 1, 'sc_admin/product/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:37:39', '2020-09-19 03:37:39');
INSERT INTO `sc_admin_log` VALUES (1034, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:38:27', '2020-09-19 03:38:27');
INSERT INTO `sc_admin_log` VALUES (1035, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:47:11', '2020-09-19 03:47:11');
INSERT INTO `sc_admin_log` VALUES (1036, 1, 'sc_admin/product/edit/13', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:47:15', '2020-09-19 03:47:15');
INSERT INTO `sc_admin_log` VALUES (1037, 1, 'sc_admin/product/edit/13', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:49:08', '2020-09-19 03:49:08');
INSERT INTO `sc_admin_log` VALUES (1038, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:49:12', '2020-09-19 03:49:12');
INSERT INTO `sc_admin_log` VALUES (1039, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:55:06', '2020-09-19 03:55:06');
INSERT INTO `sc_admin_log` VALUES (1040, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 03:59:18', '2020-09-19 03:59:18');
INSERT INTO `sc_admin_log` VALUES (1041, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 04:00:10', '2020-09-19 04:00:10');
INSERT INTO `sc_admin_log` VALUES (1042, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '2020-09-19 04:01:53', '2020-09-19 04:01:53');

-- ----------------------------
-- Table structure for sc_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `sc_admin_menu`;
CREATE TABLE `sc_admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `hidden` int(11) NOT NULL DEFAULT 0,
  `key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sc_admin_menu_key_unique`(`key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_admin_menu
-- ----------------------------
INSERT INTO `sc_admin_menu` VALUES (1, 6, 1, 'lang::admin.menu_titles.order_manager', 'fas fa-cart-arrow-down', '', 0, 0, 'ORDER_MANAGER', NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (2, 6, 2, 'lang::admin.menu_titles.catalog_mamager', 'fas fa-folder-open', '', 0, 0, 'CATALOG_MANAGER', NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (3, 6, 3, 'lang::admin.menu_titles.customer_manager', 'fas fa-users', '', 0, 0, 'CUSTOMER_MANAGER', NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (4, 8, 201, 'lang::admin.menu_titles.template_layout', 'fas fa-object-ungroup', '', 0, 0, 'TEMPLATE', NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (5, 9, 2, 'lang::admin.menu_titles.config_system', 'fas fa-cogs', '', 0, 0, 'CONFIG_SYSTEM', NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (6, 0, 10, 'lang::admin.ADMIN_SHOP', 'fas fa-cog', '', 0, 0, 'ADMIN_SHOP', NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (7, 0, 100, 'lang::admin.ADMIN_CONTENT', 'fas fa-cog', '', 0, 0, 'ADMIN_CONTENT', NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (8, 0, 200, 'lang::admin.ADMIN_EXTENSION', 'fas fa-cog', '', 0, 0, 'ADMIN_EXTENSION', NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (9, 0, 300, 'lang::admin.ADMIN_SYSTEM', 'fas fa-cog', '', 0, 0, 'ADMIN_SYSTEM', NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (10, 7, 102, 'lang::page.admin.title', 'fas fa-clone', 'admin::page', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (11, 1, 6, 'lang::shipping_status.admin.title', 'fas fa-truck', 'admin::shipping_status', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (12, 1, 3, 'lang::order.admin.title', 'fas fa-shopping-cart', 'admin::order', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (13, 1, 4, 'lang::order_status.admin.title', 'fas fa-asterisk', 'admin::order_status', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (14, 1, 5, 'lang::payment_status.admin.title', 'fas fa-recycle', 'admin::payment_status', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (15, 2, 0, 'lang::product.admin.title', 'far fa-file-image', 'admin::product', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (16, 2, 0, 'lang::category.admin.title', 'far fa-folder-open', 'admin::category', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (17, 2, 0, 'lang::supplier.admin.title', 'fas fa-user-secret', 'admin::supplier', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (18, 2, 0, 'lang::brand.admin.title', 'fas fa-university', 'admin::brand', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (19, 2, 0, 'lang::attribute_group.admin.title', 'fas fa-bars', 'admin::attribute_group', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (20, 3, 0, 'lang::customer.admin.title', 'fas fa-user', 'admin::customer', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (21, 3, 0, 'lang::subscribe.admin.title', 'fas fa-user-circle', 'admin::subscribe', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (22, 4, 0, 'lang::block_content.admin.title', 'far fa-newspaper', 'admin::block_content', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (23, 4, 0, 'lang::admin.menu_titles.block_link', 'fab fa-chrome', 'admin::link', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (24, 4, 0, 'lang::admin.menu_titles.template_manager', 'fas fa-columns', 'admin::template', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (26, 65, 1, 'lang::store.admin.title', 'fas fa-h-square', 'admin::store', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (27, 9, 4, 'lang::admin.menu_titles.email_setting', 'fas fa-envelope', '', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (28, 27, 0, 'lang::email.admin.title', 'fas fa-cog', 'admin::email', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (29, 27, 0, 'lang::email_template.admin.title', 'fas fa-bars', 'admin::email_template', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (30, 9, 5, 'lang::admin.menu_titles.localisation', 'fab fa-shirtsinbulk', '', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (31, 30, 0, 'lang::language.admin.title', 'fas fa-language', 'admin::language', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (32, 30, 0, 'lang::currency.admin.title', 'far fa-money-bill-alt', 'admin::currency', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (33, 7, 101, 'lang::banner.admin.title', 'fas fa-image', 'admin::banner', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (34, 5, 5, 'lang::backup.admin.title', 'fas fa-save', 'admin::backup', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (35, 8, 202, 'lang::admin.menu_titles.plugins', 'fas fa-puzzle-piece', '', 0, 0, 'PLUGIN', NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (37, 6, 4, 'lang::admin.menu_titles.report_manager', 'fas fa-chart-pie', '', 0, 0, 'REPORT_MANAGER', NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (38, 9, 1, 'lang::admin.menu_titles.admin', 'fas fa-users-cog', '', 0, 0, 'ADMIN', NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (39, 35, 0, 'plugin.Payment', 'far fa-money-bill-alt', 'admin::plugin/payment', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (40, 35, 0, 'plugin.Shipping', 'fas fa-ambulance', 'admin::plugin/shipping', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (41, 35, 0, 'plugin.Total', 'fas fa-cog', 'admin::plugin/total', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (42, 35, 100, 'plugin.Other', 'far fa-circle', 'admin::plugin/other', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (43, 35, 0, 'plugin.Cms', 'fab fa-modx', 'admin::plugin/cms', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (46, 38, 0, 'lang::admin.menu_titles.users', 'fas fa-users', 'admin::user', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (47, 38, 0, 'lang::admin.menu_titles.roles', 'fas fa-user', 'admin::role', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (48, 38, 0, 'lang::admin.menu_titles.permission', 'fas fa-ban', 'admin::permission', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (49, 38, 0, 'lang::admin.menu_titles.menu', 'fas fa-bars', 'admin::menu', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (50, 38, 0, 'lang::admin.menu_titles.operation_log', 'fas fa-history', 'admin::log', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (52, 7, 103, 'lang::news.admin.title', 'far fa-file-powerpoint', 'admin::news', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (53, 5, 3, 'lang::config.title', 'fas fa-tools', 'admin::config', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (54, 37, 0, 'lang::admin.menu_titles.report_product', 'fas fa-bars', 'admin::report/product', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (55, 2, 100, 'lang::product.config_manager.title', 'fas fa fa-cog', 'admin::product_config', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (56, 3, 100, 'lang::customer.config_manager.title', 'fas fa fa-cog', 'admin::customer_config', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (57, 5, 2, 'lang::link.config_manager.title', 'fab fa-gg', 'admin::url_config', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (58, 5, 5, 'lang::admin.menu_titles.cache_manager', 'fab fa-tripadvisor', 'admin::cache_config', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (59, 9, 7, 'lang::admin.menu_titles.api_manager', 'fas fa-plug', '', 0, 0, 'API_MANAGER', NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (60, 65, 3, 'lang::store_maintain.config_manager.title', 'fas fa-wrench', 'admin::store_maintain', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (61, 2, 4, 'lang::tax.admin.admin_title', 'far fa-calendar-minus', 'admin::tax', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (62, 2, 5, 'lang::weight.admin.title', 'fas fa-balance-scale', 'admin::weight_unit', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (63, 2, 6, 'lang::length.admin.title', 'fas fa-minus', 'admin::length_unit', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (64, 1, 100, 'lang::order.admin.config_title', 'fas fa fa-cog', 'admin::order_config', 0, 0, NULL, NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (65, 9, 3, 'lang::admin.menu_titles.store_manager', 'fas fa-store-alt', '', 0, 0, 'STORE_MANAGER', NULL, NULL);
INSERT INTO `sc_admin_menu` VALUES (66, 59, 1, 'lang::admin.menu_titles.api_config', 'fas fa fa-cog', 'admin::api_connection', 0, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sc_admin_permission
-- ----------------------------
DROP TABLE IF EXISTS `sc_admin_permission`;
CREATE TABLE `sc_admin_permission`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_uri` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sc_admin_permission_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `sc_admin_permission_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_admin_permission
-- ----------------------------
INSERT INTO `sc_admin_permission` VALUES (1, 'Admin manager', 'admin.manager', 'GET::sc_admin/user,GET::sc_admin/role,GET::sc_admin/permission,ANY::sc_admin/log/*,ANY::sc_admin/menu/*', '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_permission` VALUES (2, 'Dashboard', 'dashboard', 'GET::sc_admin', '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_permission` VALUES (3, 'Auth manager', 'auth.full', 'ANY::sc_admin/auth/*', '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_permission` VALUES (4, 'Setting manager', 'config.full', 'ANY::sc_admin/store/*,ANY::sc_admin/config/*,ANY::sc_admin/url_config/*,ANY::sc_admin/product_config/*,ANY::sc_admin/order_config/*,ANY::sc_admin/customer_config/*,ANY::sc_admin/cache_config/*,ANY::sc_admin/email/*,ANY::sc_admin/email_template/*,ANY::sc_admin/language/*,ANY::sc_admin/currency/*,ANY::sc_admin/backup/*,ANY::sc_admin/api_connection/*,ANY::sc_admin/maintain/*,ANY::sc_admin/tax/*', '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_permission` VALUES (5, 'Upload management', 'upload.full', 'ANY::sc_admin/uploads/*', '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_permission` VALUES (6, 'Plugin manager', 'plugin.full', 'ANY::sc_admin/plugin/*', '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_permission` VALUES (8, 'CMS manager', 'cms.full', 'ANY::sc_admin/page/*,ANY::sc_admin/banner/*,ANY::sc_admin/cms_category/*,ANY::sc_admin/cms_content/*,ANY::sc_admin/news/*', '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_permission` VALUES (11, 'Discount manager', 'discount.full', 'ANY::sc_admin/shop_discount/*', '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_permission` VALUES (14, 'Shipping status', 'shipping_status.full', 'ANY::sc_admin/shipping_status/*', '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_permission` VALUES (15, 'Payment  status', 'payment_status.full', 'ANY::sc_admin/payment_status/*', '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_permission` VALUES (17, 'Customer manager', 'customer.full', 'ANY::sc_admin/customer/*,ANY::sc_admin/subscribe/*', '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_permission` VALUES (18, 'Order status', 'order_status.full', 'ANY::sc_admin/order_status/*', '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_permission` VALUES (19, 'Product manager', 'product.full', 'ANY::sc_admin/category/*,ANY::sc_admin/supplier/*,ANY::sc_admin/brand/*,ANY::sc_admin/attribute_group/*,ANY::sc_admin/product/,ANY::sc_admin/weight_unit/*,ANY::sc_admin/length_unit/*', '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_permission` VALUES (20, 'Order Manager', 'order.full', 'ANY::sc_admin/order/*', '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_permission` VALUES (21, 'Report manager', 'report.full', 'ANY::sc_admin/report/*', '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_permission` VALUES (22, 'Template manager', 'template.full', 'ANY::sc_admin/block_content/*,ANY::sc_admin/link/*,ANY::sc_admin/template/*', '2020-09-17 23:37:58', '2020-09-18 16:55:58');

-- ----------------------------
-- Table structure for sc_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `sc_admin_role`;
CREATE TABLE `sc_admin_role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sc_admin_role_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `sc_admin_role_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_admin_role
-- ----------------------------
INSERT INTO `sc_admin_role` VALUES (1, 'Administrator', 'administrator', '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role` VALUES (2, 'Group only View', 'view.all', '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role` VALUES (3, 'Manager', 'manager', '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role` VALUES (4, 'Cms manager', 'cms', '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role` VALUES (5, 'Accountant', 'accountant', '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role` VALUES (6, 'Marketing', 'maketing', '2020-09-17 23:37:58', NULL);

-- ----------------------------
-- Table structure for sc_admin_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sc_admin_role_permission`;
CREATE TABLE `sc_admin_role_permission`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`, `permission_id`) USING BTREE,
  INDEX `sc_admin_role_permission_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_admin_role_permission
-- ----------------------------
INSERT INTO `sc_admin_role_permission` VALUES (3, 1, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (3, 2, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (3, 3, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (3, 4, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (3, 5, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (3, 8, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (3, 11, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (3, 14, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (3, 15, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (3, 17, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (3, 18, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (3, 19, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (3, 20, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (3, 21, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (3, 22, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (4, 3, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (4, 5, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (4, 8, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (5, 2, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (5, 3, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (5, 20, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (5, 21, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (6, 2, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (6, 3, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (6, 5, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (6, 8, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (6, 11, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (6, 14, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (6, 15, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (6, 17, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (6, 18, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (6, 19, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (6, 20, '2020-09-17 23:37:58', NULL);
INSERT INTO `sc_admin_role_permission` VALUES (6, 21, '2020-09-17 23:37:58', NULL);

-- ----------------------------
-- Table structure for sc_admin_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sc_admin_role_user`;
CREATE TABLE `sc_admin_role_user`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `sc_admin_role_user_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_admin_role_user
-- ----------------------------
INSERT INTO `sc_admin_role_user` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for sc_admin_store
-- ----------------------------
DROP TABLE IF EXISTS `sc_admin_store`;
CREATE TABLE `sc_admin_store`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `long_phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `time_active` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `office` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `warehouse` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `template` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `domain` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0:Lock, 1: unlock',
  `active` int(11) NOT NULL DEFAULT 1 COMMENT '0:Maintain, 1: Active',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sc_admin_store_domain_unique`(`domain`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_admin_store
-- ----------------------------
INSERT INTO `sc_admin_store` VALUES (1, 'data/logo/scart-mid.png', '0123456789', 'Support: 0987654321', 'white.horse3513@gmail.com', '', '123st - abc - xyz', NULL, NULL, 's-cart-3x', 'localhost:8000/', 'en', 'UTC', 'USD', 1, 1);

-- ----------------------------
-- Table structure for sc_admin_store_description
-- ----------------------------
DROP TABLE IF EXISTS `sc_admin_store_description`;
CREATE TABLE `sc_admin_store_description`  (
  `store_id` int(11) NOT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `keyword` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `maintain_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`store_id`, `lang`) USING BTREE,
  INDEX `sc_admin_store_description_lang_index`(`lang`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_admin_store_description
-- ----------------------------
INSERT INTO `sc_admin_store_description` VALUES (1, 'en', 'Jewellery', 'Jewellery Online Shopping', '', '<center><img src=\"/images/maintenance.png\" />\r\n<h3><span style=\"color:#e74c3c;\"><strong>Sorry! We are currently doing site maintenance!</strong></span></h3>\r\n</center>');
INSERT INTO `sc_admin_store_description` VALUES (1, 'vi', 'Jewellery', 'Jewellery Online Shopping', '', '<center><img src=\"/images/maintenance.png\" />\r\n<h3><span style=\"color:#e74c3c;\"><strong>Xin lỗi! Hiện tại website đang bảo tr&igrave;!</strong></span></h3>\r\n</center>');

-- ----------------------------
-- Table structure for sc_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `sc_admin_user`;
CREATE TABLE `sc_admin_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `theme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sc_admin_user_username_unique`(`username`) USING BTREE,
  UNIQUE INDEX `sc_admin_user_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_admin_user
-- ----------------------------
INSERT INTO `sc_admin_user` VALUES (1, 'admin', '$2y$10$FQ176zfK2c3gCnQKy6xeO.Bk5W6U39AXA6piFjz4Jp810FMMbvkxK', 'Administrator', 'white.horse3513@gmail.com', '/admin/avatar/user.jpg', NULL, 'lightblue', '2020-09-17 23:37:58', '2020-09-19 01:30:26');

-- ----------------------------
-- Table structure for sc_admin_user_permission
-- ----------------------------
DROP TABLE IF EXISTS `sc_admin_user_permission`;
CREATE TABLE `sc_admin_user_permission`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`, `permission_id`) USING BTREE,
  INDEX `sc_admin_user_permission_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sc_api_connection
-- ----------------------------
DROP TABLE IF EXISTS `sc_api_connection`;
CREATE TABLE `sc_api_connection`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apiconnection` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apikey` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire` date NULL DEFAULT NULL,
  `last_active` datetime(0) NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sc_api_connection_apiconnection_unique`(`apiconnection`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_api_connection
-- ----------------------------
INSERT INTO `sc_api_connection` VALUES (1, 'Demo api connection', 'appmobile', '5f6390e784b49', NULL, NULL, 1);

-- ----------------------------
-- Table structure for sc_shop_attribute_group
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_attribute_group`;
CREATE TABLE `sc_shop_attribute_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'radio,select,checkbox',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_attribute_group
-- ----------------------------
INSERT INTO `sc_shop_attribute_group` VALUES (1, 'Color', 1, 1, 'radio');
INSERT INTO `sc_shop_attribute_group` VALUES (2, 'Size', 1, 2, 'select');

-- ----------------------------
-- Table structure for sc_shop_banner
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_banner`;
CREATE TABLE `sc_shop_banner`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `target` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `click` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_banner
-- ----------------------------
INSERT INTO `sc_shop_banner` VALUES (3, '/data/banner/breadcrumb.jpg', NULL, '_self', NULL, 1, 0, 0, 2, NULL, '2020-09-19 01:45:11');
INSERT INTO `sc_shop_banner` VALUES (4, '/data/banner/Main-banner-4-1903x600.jpg', NULL, '_self', NULL, 1, 0, 3, 0, '2020-09-18 00:38:07', '2020-09-19 04:01:45');

-- ----------------------------
-- Table structure for sc_shop_banner_store
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_banner_store`;
CREATE TABLE `sc_shop_banner_store`  (
  `banner_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`banner_id`, `store_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_banner_store
-- ----------------------------
INSERT INTO `sc_shop_banner_store` VALUES (3, 0);
INSERT INTO `sc_shop_banner_store` VALUES (4, 0);

-- ----------------------------
-- Table structure for sc_shop_block_content
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_block_content`;
CREATE TABLE `sc_shop_block_content`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_block_content
-- ----------------------------
INSERT INTO `sc_shop_block_content` VALUES (1, 'Facebook code', 'top', '*', 'html', '<div id=\"fb-root\"></div>\r\n    <script>(function(d, s, id) {\r\n    var js, fjs = d.getElementsByTagName(s)[0];\r\n    if (d.getElementById(id)) return;\r\n    js = d.createElement(s); js.id = id;\r\n    js.src = \'//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=934208239994473\';\r\n    fjs.parentNode.insertBefore(js, fjs);\r\n    }(document, \'script\', \'facebook-jssdk\'));\r\n    </script>', 0, 0);
INSERT INTO `sc_shop_block_content` VALUES (2, 'Google Analytics', 'header', '*', 'html', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n    <script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-128658138-1\"></script>\r\n    <script>\r\n    window.dataLayer = window.dataLayer || [];\r\n    function gtag(){dataLayer.push(arguments);}\r\n    gtag(\'js\', new Date());\r\n    gtag(\'config\', \'UA-128658138-1\');\r\n    </script>', 1, 0);
INSERT INTO `sc_shop_block_content` VALUES (3, 'Product special', 'left', '*', 'view', 'product_special', 1, 1);
INSERT INTO `sc_shop_block_content` VALUES (4, 'Brands', 'left', '*', 'view', 'brands_left', 1, 3);
INSERT INTO `sc_shop_block_content` VALUES (5, 'Banner home', 'banner_top', 'shop_home', 'view', 'banner_image', 1, 0);
INSERT INTO `sc_shop_block_content` VALUES (6, 'Categories', 'left', '*', 'view', 'categories', 1, 4);
INSERT INTO `sc_shop_block_content` VALUES (7, 'Product last view', 'left', '*', 'view', 'product_lastview', 1, 0);

-- ----------------------------
-- Table structure for sc_shop_brand
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_brand`;
CREATE TABLE `sc_shop_brand`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sc_shop_brand_alias_unique`(`alias`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_brand
-- ----------------------------
INSERT INTO `sc_shop_brand` VALUES (1, 'Husq', 'husq', '/data/brand/01-181x52.png', '', 1, 0);
INSERT INTO `sc_shop_brand` VALUES (2, 'Ideal', 'ideal', '/data/brand/02-181x52.png', '', 1, 0);
INSERT INTO `sc_shop_brand` VALUES (3, 'Apex', 'apex', '/data/brand/03-181x52.png', '', 1, 0);
INSERT INTO `sc_shop_brand` VALUES (4, 'CST', 'cst', '/data/brand/04-181x52.png', '', 1, 0);
INSERT INTO `sc_shop_brand` VALUES (5, 'Klein', 'klein', '/data/brand/05-181x52.png', '', 1, 0);
INSERT INTO `sc_shop_brand` VALUES (6, 'Metabo', 'metabo', '/data/brand/06-181x52.png', '', 1, 0);
INSERT INTO `sc_shop_brand` VALUES (7, 'Avatar', 'avatar', '/data/brand/07-181x52.png', '', 1, 0);
INSERT INTO `sc_shop_brand` VALUES (8, 'Brand KA', 'brand-ka', '/data/brand/08-181x52.png', '', 1, 0);

-- ----------------------------
-- Table structure for sc_shop_category
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_category`;
CREATE TABLE `sc_shop_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alias` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `top` int(11) NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sc_shop_category_alias_unique`(`alias`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_category
-- ----------------------------
INSERT INTO `sc_shop_category` VALUES (1, '/data/category/cat-01.jpg', 'art_jewellery', 0, 1, 1, 0);
INSERT INTO `sc_shop_category` VALUES (2, '/data/category/cat-02.jpg', 'high_jewellery', 0, 1, 1, 0);
INSERT INTO `sc_shop_category` VALUES (3, '/data/category/cat-03.jpg', 'jewellery', 0, 1, 1, 0);
INSERT INTO `sc_shop_category` VALUES (4, '/data/category/cat-04.jpg', 'engagement', 0, 1, 1, 0);
INSERT INTO `sc_shop_category` VALUES (5, '/data/category/cat-05.jpg', 'diamonds', 0, 1, 1, 0);
INSERT INTO `sc_shop_category` VALUES (6, '/data/category/cat-02-01.jpg', 'high_rings', 2, 0, 1, 0);
INSERT INTO `sc_shop_category` VALUES (7, '/data/category/cat-02-02.jpg', 'high_bracelets', 2, 0, 1, 0);
INSERT INTO `sc_shop_category` VALUES (8, '/data/category/cat-02-03.jpg', 'high_necklaces_pendants', 2, 0, 1, 0);
INSERT INTO `sc_shop_category` VALUES (9, '/data/category/cat-02-04.jpg', 'high_earrings', 2, 0, 1, 0);
INSERT INTO `sc_shop_category` VALUES (10, '/data/category/cat-02-05.jpg', 'high_brooches', 2, 0, 1, 0);
INSERT INTO `sc_shop_category` VALUES (11, '/data/category/cat-02-01.jpg', 'rings', 3, 0, 1, 0);
INSERT INTO `sc_shop_category` VALUES (12, '/data/category/cat-02-02.jpg', 'bracelets', 3, 0, 1, 3);
INSERT INTO `sc_shop_category` VALUES (13, '/data/category/cat-02-03.jpg', 'men-accessaries', 3, 0, 1, 3);
INSERT INTO `sc_shop_category` VALUES (14, '/data/category/cat-02-04.jpg', 'earrings', 3, 0, 1, 0);
INSERT INTO `sc_shop_category` VALUES (15, '/data/category/cat-02-05.jpg', 'brooches', 3, 0, 1, 0);
INSERT INTO `sc_shop_category` VALUES (16, '/data/category/cat-04-01.jpg', 'engagement_rings', 4, 0, 1, 0);
INSERT INTO `sc_shop_category` VALUES (17, '/data/category/cat-04-02.jpg', 'wedding_bands', 4, 0, 1, 0);
INSERT INTO `sc_shop_category` VALUES (18, '/data/category/cat-05-01.jpg', 'certified_diamonds', 5, 0, 1, 0);
INSERT INTO `sc_shop_category` VALUES (19, '/data/category/cat-05-02.jpg', 'investement_diamonds', 5, 0, 1, 0);
INSERT INTO `sc_shop_category` VALUES (20, '/data/category/cat-05-03.jpg', 'personalised_diamonds', 5, 0, 1, 0);

-- ----------------------------
-- Table structure for sc_shop_category_description
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_category_description`;
CREATE TABLE `sc_shop_category_description`  (
  `category_id` int(11) NOT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `keyword` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`, `lang`) USING BTREE,
  INDEX `sc_shop_category_description_lang_index`(`lang`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_category_description
-- ----------------------------
INSERT INTO `sc_shop_category_description` VALUES (1, 'en', 'ART JEWELLERY', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (1, 'fr', 'Thiết bị điện tử', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (1, 'vi', 'Thiết bị điện tử', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (2, 'en', 'HIGH JEWELLERY', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (2, 'fr', 'Quần áo', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (2, 'vi', 'Quần áo', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (3, 'en', 'JEWELLERY', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (3, 'fr', 'Điện thoại', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (3, 'vi', 'Điện thoại', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (4, 'en', 'ENGAGEMENT', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (4, 'fr', 'Phụ kiện', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (4, 'vi', 'Phụ kiện', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (5, 'en', 'DIAMONDS', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (5, 'fr', 'Máy tính', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (5, 'vi', 'Máy tính', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (6, 'en', 'High Rings', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (6, 'fr', 'Rings', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (6, 'vi', 'Máy tính bảng', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (7, 'en', 'High Bracelets', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (7, 'fr', 'Thiết bị', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (7, 'vi', 'Thiết bị', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (8, 'en', 'High Necklaces and Pendants', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (8, 'fr', 'Necklaces and Pendants', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (8, 'vi', 'Quần áo nam', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (9, 'en', 'High Earrings', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (9, 'fr', 'Earrings', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (9, 'vi', 'Quần áo nữ', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (10, 'en', 'High Brooches', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (10, 'fr', 'Brooches', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (10, 'vi', 'Đồ trẻ em', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (11, 'en', 'Rings', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (11, 'fr', 'Rings', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (11, 'vi', 'Phụ kiện điện thoại', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (12, 'en', 'Bracelets', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (12, 'fr', 'Bracelets', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (12, 'vi', 'Phụ kiện nữ', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (13, 'en', 'Necklaces and Pendants', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (13, 'fr', 'Necklaces and Pendants', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (13, 'vi', 'Phụ kiện nam', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (14, 'en', 'Earrings', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (14, 'fr', 'Earrings', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (14, 'vi', 'Earrings', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (15, 'en', 'Brooches', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (15, 'fr', 'Brooches', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (15, 'vi', 'Brooches', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (16, 'en', 'Engagement Rings', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (16, 'fr', 'Engagement Rings', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (16, 'vi', 'Engagement Rings', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (17, 'en', 'Wedding Bands', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (17, 'fr', 'Wedding Bands', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (17, 'vi', 'Wedding Bands', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (18, 'en', 'Certified Diamonds', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (18, 'fr', 'Certified Diamonds', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (18, 'vi', 'Certified Diamonds', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (19, 'en', 'Investement Diamonds', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (19, 'fr', 'Investement Diamonds', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (19, 'vi', 'Investement Diamonds', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (20, 'en', 'Personalised Diamonds', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (20, 'fr', 'Personalised Diamonds', NULL, NULL);
INSERT INTO `sc_shop_category_description` VALUES (20, 'vi', 'Personalised Diamonds', NULL, NULL);

-- ----------------------------
-- Table structure for sc_shop_category_store
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_category_store`;
CREATE TABLE `sc_shop_category_store`  (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`, `store_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_category_store
-- ----------------------------
INSERT INTO `sc_shop_category_store` VALUES (1, 0);
INSERT INTO `sc_shop_category_store` VALUES (2, 0);
INSERT INTO `sc_shop_category_store` VALUES (3, 0);
INSERT INTO `sc_shop_category_store` VALUES (4, 0);
INSERT INTO `sc_shop_category_store` VALUES (5, 0);
INSERT INTO `sc_shop_category_store` VALUES (6, 0);
INSERT INTO `sc_shop_category_store` VALUES (7, 0);
INSERT INTO `sc_shop_category_store` VALUES (8, 0);
INSERT INTO `sc_shop_category_store` VALUES (9, 0);
INSERT INTO `sc_shop_category_store` VALUES (10, 0);
INSERT INTO `sc_shop_category_store` VALUES (11, 0);
INSERT INTO `sc_shop_category_store` VALUES (12, 0);
INSERT INTO `sc_shop_category_store` VALUES (13, 0);
INSERT INTO `sc_shop_category_store` VALUES (14, 0);
INSERT INTO `sc_shop_category_store` VALUES (15, 0);
INSERT INTO `sc_shop_category_store` VALUES (16, 0);
INSERT INTO `sc_shop_category_store` VALUES (17, 0);
INSERT INTO `sc_shop_category_store` VALUES (18, 0);
INSERT INTO `sc_shop_category_store` VALUES (19, 0);
INSERT INTO `sc_shop_category_store` VALUES (20, 0);

-- ----------------------------
-- Table structure for sc_shop_country
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_country`;
CREATE TABLE `sc_shop_country`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sc_shop_country_code_unique`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 246 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_country
-- ----------------------------
INSERT INTO `sc_shop_country` VALUES (1, 'AL', 'Albania');
INSERT INTO `sc_shop_country` VALUES (2, 'DZ', 'Algeria');
INSERT INTO `sc_shop_country` VALUES (3, 'DS', 'American Samoa');
INSERT INTO `sc_shop_country` VALUES (4, 'AD', 'Andorra');
INSERT INTO `sc_shop_country` VALUES (5, 'AO', 'Angola');
INSERT INTO `sc_shop_country` VALUES (6, 'AI', 'Anguilla');
INSERT INTO `sc_shop_country` VALUES (7, 'AQ', 'Antarctica');
INSERT INTO `sc_shop_country` VALUES (8, 'AG', 'Antigua and Barbuda');
INSERT INTO `sc_shop_country` VALUES (9, 'AR', 'Argentina');
INSERT INTO `sc_shop_country` VALUES (10, 'AM', 'Armenia');
INSERT INTO `sc_shop_country` VALUES (11, 'AW', 'Aruba');
INSERT INTO `sc_shop_country` VALUES (12, 'AU', 'Australia');
INSERT INTO `sc_shop_country` VALUES (13, 'AT', 'Austria');
INSERT INTO `sc_shop_country` VALUES (14, 'AZ', 'Azerbaijan');
INSERT INTO `sc_shop_country` VALUES (15, 'BS', 'Bahamas');
INSERT INTO `sc_shop_country` VALUES (16, 'BH', 'Bahrain');
INSERT INTO `sc_shop_country` VALUES (17, 'BD', 'Bangladesh');
INSERT INTO `sc_shop_country` VALUES (18, 'BB', 'Barbados');
INSERT INTO `sc_shop_country` VALUES (19, 'BY', 'Belarus');
INSERT INTO `sc_shop_country` VALUES (20, 'BE', 'Belgium');
INSERT INTO `sc_shop_country` VALUES (21, 'BZ', 'Belize');
INSERT INTO `sc_shop_country` VALUES (22, 'BJ', 'Benin');
INSERT INTO `sc_shop_country` VALUES (23, 'BM', 'Bermuda');
INSERT INTO `sc_shop_country` VALUES (24, 'BT', 'Bhutan');
INSERT INTO `sc_shop_country` VALUES (25, 'BO', 'Bolivia');
INSERT INTO `sc_shop_country` VALUES (26, 'BA', 'Bosnia and Herzegovina');
INSERT INTO `sc_shop_country` VALUES (27, 'BW', 'Botswana');
INSERT INTO `sc_shop_country` VALUES (28, 'BV', 'Bouvet Island');
INSERT INTO `sc_shop_country` VALUES (29, 'BR', 'Brazil');
INSERT INTO `sc_shop_country` VALUES (30, 'IO', 'British Indian Ocean Territory');
INSERT INTO `sc_shop_country` VALUES (31, 'BN', 'Brunei Darussalam');
INSERT INTO `sc_shop_country` VALUES (32, 'BG', 'Bulgaria');
INSERT INTO `sc_shop_country` VALUES (33, 'BF', 'Burkina Faso');
INSERT INTO `sc_shop_country` VALUES (34, 'BI', 'Burundi');
INSERT INTO `sc_shop_country` VALUES (35, 'KH', 'Cambodia');
INSERT INTO `sc_shop_country` VALUES (36, 'CM', 'Cameroon');
INSERT INTO `sc_shop_country` VALUES (37, 'CA', 'Canada');
INSERT INTO `sc_shop_country` VALUES (38, 'CV', 'Cape Verde');
INSERT INTO `sc_shop_country` VALUES (39, 'KY', 'Cayman Islands');
INSERT INTO `sc_shop_country` VALUES (40, 'CF', 'Central African Republic');
INSERT INTO `sc_shop_country` VALUES (41, 'TD', 'Chad');
INSERT INTO `sc_shop_country` VALUES (42, 'CL', 'Chile');
INSERT INTO `sc_shop_country` VALUES (43, 'CN', 'China');
INSERT INTO `sc_shop_country` VALUES (44, 'CX', 'Christmas Island');
INSERT INTO `sc_shop_country` VALUES (45, 'CC', 'Cocos (Keeling) Islands');
INSERT INTO `sc_shop_country` VALUES (46, 'CO', 'Colombia');
INSERT INTO `sc_shop_country` VALUES (47, 'KM', 'Comoros');
INSERT INTO `sc_shop_country` VALUES (48, 'CG', 'Congo');
INSERT INTO `sc_shop_country` VALUES (49, 'CK', 'Cook Islands');
INSERT INTO `sc_shop_country` VALUES (50, 'CR', 'Costa Rica');
INSERT INTO `sc_shop_country` VALUES (51, 'HR', 'Croatia (Hrvatska)');
INSERT INTO `sc_shop_country` VALUES (52, 'CU', 'Cuba');
INSERT INTO `sc_shop_country` VALUES (53, 'CY', 'Cyprus');
INSERT INTO `sc_shop_country` VALUES (54, 'CZ', 'Czech Republic');
INSERT INTO `sc_shop_country` VALUES (55, 'DK', 'Denmark');
INSERT INTO `sc_shop_country` VALUES (56, 'DJ', 'Djibouti');
INSERT INTO `sc_shop_country` VALUES (57, 'DM', 'Dominica');
INSERT INTO `sc_shop_country` VALUES (58, 'DO', 'Dominican Republic');
INSERT INTO `sc_shop_country` VALUES (59, 'TP', 'East Timor');
INSERT INTO `sc_shop_country` VALUES (60, 'EC', 'Ecuador');
INSERT INTO `sc_shop_country` VALUES (61, 'EG', 'Egypt');
INSERT INTO `sc_shop_country` VALUES (62, 'SV', 'El Salvador');
INSERT INTO `sc_shop_country` VALUES (63, 'GQ', 'Equatorial Guinea');
INSERT INTO `sc_shop_country` VALUES (64, 'ER', 'Eritrea');
INSERT INTO `sc_shop_country` VALUES (65, 'EE', 'Estonia');
INSERT INTO `sc_shop_country` VALUES (66, 'ET', 'Ethiopia');
INSERT INTO `sc_shop_country` VALUES (67, 'FK', 'Falkland Islands (Malvinas)');
INSERT INTO `sc_shop_country` VALUES (68, 'FO', 'Faroe Islands');
INSERT INTO `sc_shop_country` VALUES (69, 'FJ', 'Fiji');
INSERT INTO `sc_shop_country` VALUES (70, 'FI', 'Finland');
INSERT INTO `sc_shop_country` VALUES (71, 'FR', 'France');
INSERT INTO `sc_shop_country` VALUES (72, 'FX', 'France, Metropolitan');
INSERT INTO `sc_shop_country` VALUES (73, 'GF', 'French Guiana');
INSERT INTO `sc_shop_country` VALUES (74, 'PF', 'French Polynesia');
INSERT INTO `sc_shop_country` VALUES (75, 'TF', 'French Southern Territories');
INSERT INTO `sc_shop_country` VALUES (76, 'GA', 'Gabon');
INSERT INTO `sc_shop_country` VALUES (77, 'GM', 'Gambia');
INSERT INTO `sc_shop_country` VALUES (78, 'GE', 'Georgia');
INSERT INTO `sc_shop_country` VALUES (79, 'DE', 'Germany');
INSERT INTO `sc_shop_country` VALUES (80, 'GH', 'Ghana');
INSERT INTO `sc_shop_country` VALUES (81, 'GI', 'Gibraltar');
INSERT INTO `sc_shop_country` VALUES (82, 'GK', 'Guernsey');
INSERT INTO `sc_shop_country` VALUES (83, 'GR', 'Greece');
INSERT INTO `sc_shop_country` VALUES (84, 'GL', 'Greenland');
INSERT INTO `sc_shop_country` VALUES (85, 'GD', 'Grenada');
INSERT INTO `sc_shop_country` VALUES (86, 'GP', 'Guadeloupe');
INSERT INTO `sc_shop_country` VALUES (87, 'GU', 'Guam');
INSERT INTO `sc_shop_country` VALUES (88, 'GT', 'Guatemala');
INSERT INTO `sc_shop_country` VALUES (89, 'GN', 'Guinea');
INSERT INTO `sc_shop_country` VALUES (90, 'GW', 'Guinea-Bissau');
INSERT INTO `sc_shop_country` VALUES (91, 'GY', 'Guyana');
INSERT INTO `sc_shop_country` VALUES (92, 'HT', 'Haiti');
INSERT INTO `sc_shop_country` VALUES (93, 'HM', 'Heard and Mc Donald Islands');
INSERT INTO `sc_shop_country` VALUES (94, 'HN', 'Honduras');
INSERT INTO `sc_shop_country` VALUES (95, 'HK', 'Hong Kong');
INSERT INTO `sc_shop_country` VALUES (96, 'HU', 'Hungary');
INSERT INTO `sc_shop_country` VALUES (97, 'IS', 'Iceland');
INSERT INTO `sc_shop_country` VALUES (98, 'IN', 'India');
INSERT INTO `sc_shop_country` VALUES (99, 'IM', 'Isle of Man');
INSERT INTO `sc_shop_country` VALUES (100, 'ID', 'Indonesia');
INSERT INTO `sc_shop_country` VALUES (101, 'IR', 'Iran (Islamic Republic of)');
INSERT INTO `sc_shop_country` VALUES (102, 'IQ', 'Iraq');
INSERT INTO `sc_shop_country` VALUES (103, 'IE', 'Ireland');
INSERT INTO `sc_shop_country` VALUES (104, 'IL', 'Israel');
INSERT INTO `sc_shop_country` VALUES (105, 'IT', 'Italy');
INSERT INTO `sc_shop_country` VALUES (106, 'CI', 'Ivory Coast');
INSERT INTO `sc_shop_country` VALUES (107, 'JE', 'Jersey');
INSERT INTO `sc_shop_country` VALUES (108, 'JM', 'Jamaica');
INSERT INTO `sc_shop_country` VALUES (109, 'JP', 'Japan');
INSERT INTO `sc_shop_country` VALUES (110, 'JO', 'Jordan');
INSERT INTO `sc_shop_country` VALUES (111, 'KZ', 'Kazakhstan');
INSERT INTO `sc_shop_country` VALUES (112, 'KE', 'Kenya');
INSERT INTO `sc_shop_country` VALUES (113, 'KI', 'Kiribati');
INSERT INTO `sc_shop_country` VALUES (114, 'KP', 'Korea,Democratic People\'s Republic of');
INSERT INTO `sc_shop_country` VALUES (115, 'KR', 'Korea, Republic of');
INSERT INTO `sc_shop_country` VALUES (116, 'XK', 'Kosovo');
INSERT INTO `sc_shop_country` VALUES (117, 'KW', 'Kuwait');
INSERT INTO `sc_shop_country` VALUES (118, 'KG', 'Kyrgyzstan');
INSERT INTO `sc_shop_country` VALUES (119, 'LA', 'Lao People\'s Democratic Republic');
INSERT INTO `sc_shop_country` VALUES (120, 'LV', 'Latvia');
INSERT INTO `sc_shop_country` VALUES (121, 'LB', 'Lebanon');
INSERT INTO `sc_shop_country` VALUES (122, 'LS', 'Lesotho');
INSERT INTO `sc_shop_country` VALUES (123, 'LR', 'Liberia');
INSERT INTO `sc_shop_country` VALUES (124, 'LY', 'Libyan Arab Jamahiriya');
INSERT INTO `sc_shop_country` VALUES (125, 'LI', 'Liechtenstein');
INSERT INTO `sc_shop_country` VALUES (126, 'LT', 'Lithuania');
INSERT INTO `sc_shop_country` VALUES (127, 'LU', 'Luxembourg');
INSERT INTO `sc_shop_country` VALUES (128, 'MO', 'Macau');
INSERT INTO `sc_shop_country` VALUES (129, 'MK', 'Macedonia');
INSERT INTO `sc_shop_country` VALUES (130, 'MG', 'Madagascar');
INSERT INTO `sc_shop_country` VALUES (131, 'MW', 'Malawi');
INSERT INTO `sc_shop_country` VALUES (132, 'MY', 'Malaysia');
INSERT INTO `sc_shop_country` VALUES (133, 'MV', 'Maldives');
INSERT INTO `sc_shop_country` VALUES (134, 'ML', 'Mali');
INSERT INTO `sc_shop_country` VALUES (135, 'MT', 'Malta');
INSERT INTO `sc_shop_country` VALUES (136, 'MH', 'Marshall Islands');
INSERT INTO `sc_shop_country` VALUES (137, 'MQ', 'Martinique');
INSERT INTO `sc_shop_country` VALUES (138, 'MR', 'Mauritania');
INSERT INTO `sc_shop_country` VALUES (139, 'MU', 'Mauritius');
INSERT INTO `sc_shop_country` VALUES (140, 'TY', 'Mayotte');
INSERT INTO `sc_shop_country` VALUES (141, 'MX', 'Mexico');
INSERT INTO `sc_shop_country` VALUES (142, 'FM', 'Micronesia, Federated States of');
INSERT INTO `sc_shop_country` VALUES (143, 'MD', 'Moldova, Republic of');
INSERT INTO `sc_shop_country` VALUES (144, 'MC', 'Monaco');
INSERT INTO `sc_shop_country` VALUES (145, 'MN', 'Mongolia');
INSERT INTO `sc_shop_country` VALUES (146, 'ME', 'Montenegro');
INSERT INTO `sc_shop_country` VALUES (147, 'MS', 'Montserrat');
INSERT INTO `sc_shop_country` VALUES (148, 'MA', 'Morocco');
INSERT INTO `sc_shop_country` VALUES (149, 'MZ', 'Mozambique');
INSERT INTO `sc_shop_country` VALUES (150, 'MM', 'Myanmar');
INSERT INTO `sc_shop_country` VALUES (151, 'NA', 'Namibia');
INSERT INTO `sc_shop_country` VALUES (152, 'NR', 'Nauru');
INSERT INTO `sc_shop_country` VALUES (153, 'NP', 'Nepal');
INSERT INTO `sc_shop_country` VALUES (154, 'NL', 'Netherlands');
INSERT INTO `sc_shop_country` VALUES (155, 'AN', 'Netherlands Antilles');
INSERT INTO `sc_shop_country` VALUES (156, 'NC', 'New Caledonia');
INSERT INTO `sc_shop_country` VALUES (157, 'NZ', 'New Zealand');
INSERT INTO `sc_shop_country` VALUES (158, 'NI', 'Nicaragua');
INSERT INTO `sc_shop_country` VALUES (159, 'NE', 'Niger');
INSERT INTO `sc_shop_country` VALUES (160, 'NG', 'Nigeria');
INSERT INTO `sc_shop_country` VALUES (161, 'NU', 'Niue');
INSERT INTO `sc_shop_country` VALUES (162, 'NF', 'Norfolk Island');
INSERT INTO `sc_shop_country` VALUES (163, 'MP', 'Northern Mariana Islands');
INSERT INTO `sc_shop_country` VALUES (164, 'NO', 'Norway');
INSERT INTO `sc_shop_country` VALUES (165, 'OM', 'Oman');
INSERT INTO `sc_shop_country` VALUES (166, 'PK', 'Pakistan');
INSERT INTO `sc_shop_country` VALUES (167, 'PW', 'Palau');
INSERT INTO `sc_shop_country` VALUES (168, 'PS', 'Palestine');
INSERT INTO `sc_shop_country` VALUES (169, 'PA', 'Panama');
INSERT INTO `sc_shop_country` VALUES (170, 'PG', 'Papua New Guinea');
INSERT INTO `sc_shop_country` VALUES (171, 'PY', 'Paraguay');
INSERT INTO `sc_shop_country` VALUES (172, 'PE', 'Peru');
INSERT INTO `sc_shop_country` VALUES (173, 'PH', 'Philippines');
INSERT INTO `sc_shop_country` VALUES (174, 'PN', 'Pitcairn');
INSERT INTO `sc_shop_country` VALUES (175, 'PL', 'Poland');
INSERT INTO `sc_shop_country` VALUES (176, 'PT', 'Portugal');
INSERT INTO `sc_shop_country` VALUES (177, 'PR', 'Puerto Rico');
INSERT INTO `sc_shop_country` VALUES (178, 'QA', 'Qatar');
INSERT INTO `sc_shop_country` VALUES (179, 'RE', 'Reunion');
INSERT INTO `sc_shop_country` VALUES (180, 'RO', 'Romania');
INSERT INTO `sc_shop_country` VALUES (181, 'RU', 'Russian Federation');
INSERT INTO `sc_shop_country` VALUES (182, 'RW', 'Rwanda');
INSERT INTO `sc_shop_country` VALUES (183, 'KN', 'Saint Kitts and Nevis');
INSERT INTO `sc_shop_country` VALUES (184, 'LC', 'Saint Lucia');
INSERT INTO `sc_shop_country` VALUES (185, 'VC', 'Saint Vincent and the Grenadines');
INSERT INTO `sc_shop_country` VALUES (186, 'WS', 'Samoa');
INSERT INTO `sc_shop_country` VALUES (187, 'SM', 'San Marino');
INSERT INTO `sc_shop_country` VALUES (188, 'ST', 'Sao Tome and Principe');
INSERT INTO `sc_shop_country` VALUES (189, 'SA', 'Saudi Arabia');
INSERT INTO `sc_shop_country` VALUES (190, 'SN', 'Senegal');
INSERT INTO `sc_shop_country` VALUES (191, 'RS', 'Serbia');
INSERT INTO `sc_shop_country` VALUES (192, 'SC', 'Seychelles');
INSERT INTO `sc_shop_country` VALUES (193, 'SL', 'Sierra Leone');
INSERT INTO `sc_shop_country` VALUES (194, 'SG', 'Singapore');
INSERT INTO `sc_shop_country` VALUES (195, 'SK', 'Slovakia');
INSERT INTO `sc_shop_country` VALUES (196, 'SI', 'Slovenia');
INSERT INTO `sc_shop_country` VALUES (197, 'SB', 'Solomon Islands');
INSERT INTO `sc_shop_country` VALUES (198, 'SO', 'Somalia');
INSERT INTO `sc_shop_country` VALUES (199, 'ZA', 'South Africa');
INSERT INTO `sc_shop_country` VALUES (200, 'GS', 'South Georgia South Sandwich Islands');
INSERT INTO `sc_shop_country` VALUES (201, 'SS', 'South Sudan');
INSERT INTO `sc_shop_country` VALUES (202, 'ES', 'Spain');
INSERT INTO `sc_shop_country` VALUES (203, 'LK', 'Sri Lanka');
INSERT INTO `sc_shop_country` VALUES (204, 'SH', 'St. Helena');
INSERT INTO `sc_shop_country` VALUES (205, 'PM', 'St. Pierre and Miquelon');
INSERT INTO `sc_shop_country` VALUES (206, 'SD', 'Sudan');
INSERT INTO `sc_shop_country` VALUES (207, 'SR', 'Suriname');
INSERT INTO `sc_shop_country` VALUES (208, 'SJ', 'Svalbard and Jan Mayen Islands');
INSERT INTO `sc_shop_country` VALUES (209, 'SZ', 'Swaziland');
INSERT INTO `sc_shop_country` VALUES (210, 'SE', 'Sweden');
INSERT INTO `sc_shop_country` VALUES (211, 'CH', 'Switzerland');
INSERT INTO `sc_shop_country` VALUES (212, 'SY', 'Syrian Arab Republic');
INSERT INTO `sc_shop_country` VALUES (213, 'TW', 'Taiwan');
INSERT INTO `sc_shop_country` VALUES (214, 'TJ', 'Tajikistan');
INSERT INTO `sc_shop_country` VALUES (215, 'TZ', 'Tanzania, United Republic of');
INSERT INTO `sc_shop_country` VALUES (216, 'TH', 'Thailand');
INSERT INTO `sc_shop_country` VALUES (217, 'TG', 'Togo');
INSERT INTO `sc_shop_country` VALUES (218, 'TK', 'Tokelau');
INSERT INTO `sc_shop_country` VALUES (219, 'TO', 'Tonga');
INSERT INTO `sc_shop_country` VALUES (220, 'TT', 'Trinidad and Tobago');
INSERT INTO `sc_shop_country` VALUES (221, 'TN', 'Tunisia');
INSERT INTO `sc_shop_country` VALUES (222, 'TR', 'Turkey');
INSERT INTO `sc_shop_country` VALUES (223, 'TM', 'Turkmenistan');
INSERT INTO `sc_shop_country` VALUES (224, 'TC', 'Turks and Caicos Islands');
INSERT INTO `sc_shop_country` VALUES (225, 'TV', 'Tuvalu');
INSERT INTO `sc_shop_country` VALUES (226, 'UG', 'Uganda');
INSERT INTO `sc_shop_country` VALUES (227, 'UA', 'Ukraine');
INSERT INTO `sc_shop_country` VALUES (228, 'AE', 'United Arab Emirates');
INSERT INTO `sc_shop_country` VALUES (229, 'GB', 'United Kingdom');
INSERT INTO `sc_shop_country` VALUES (230, 'US', 'United States');
INSERT INTO `sc_shop_country` VALUES (231, 'UM', 'United States minor outlying islands');
INSERT INTO `sc_shop_country` VALUES (232, 'UY', 'Uruguay');
INSERT INTO `sc_shop_country` VALUES (233, 'UZ', 'Uzbekistan');
INSERT INTO `sc_shop_country` VALUES (234, 'VU', 'Vanuatu');
INSERT INTO `sc_shop_country` VALUES (235, 'VA', 'Vatican City State');
INSERT INTO `sc_shop_country` VALUES (236, 'VE', 'Venezuela');
INSERT INTO `sc_shop_country` VALUES (237, 'VN', 'Vietnam');
INSERT INTO `sc_shop_country` VALUES (238, 'VG', 'Virgin Islands (British)');
INSERT INTO `sc_shop_country` VALUES (239, 'VI', 'Virgin Islands (U.S.)');
INSERT INTO `sc_shop_country` VALUES (240, 'WF', 'Wallis and Futuna Islands');
INSERT INTO `sc_shop_country` VALUES (241, 'EH', 'Western Sahara');
INSERT INTO `sc_shop_country` VALUES (242, 'YE', 'Yemen');
INSERT INTO `sc_shop_country` VALUES (243, 'ZR', 'Zaire');
INSERT INTO `sc_shop_country` VALUES (244, 'ZM', 'Zambia');
INSERT INTO `sc_shop_country` VALUES (245, 'ZW', 'Zimbabwe');

-- ----------------------------
-- Table structure for sc_shop_currency
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_currency`;
CREATE TABLE `sc_shop_currency`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8, 2) NOT NULL,
  `precision` tinyint(4) NOT NULL DEFAULT 2,
  `symbol_first` tinyint(4) NOT NULL DEFAULT 0,
  `thousands` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sc_shop_currency_code_unique`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_currency
-- ----------------------------
INSERT INTO `sc_shop_currency` VALUES (1, 'Dollar ($)', 'USD', '$', 1.00, 0, 0, ',', 1, 2);
INSERT INTO `sc_shop_currency` VALUES (2, 'Dong (₫)', 'VND', '₫', 20.00, 0, 0, ',', 1, 3);
INSERT INTO `sc_shop_currency` VALUES (3, 'Euro (€)', 'EUR', '€', 1.18, 0, 1, ',', 1, 1);

-- ----------------------------
-- Table structure for sc_shop_email_template
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_email_template`;
CREATE TABLE `sc_shop_email_template`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_email_template
-- ----------------------------
INSERT INTO `sc_shop_email_template` VALUES (1, 'Reset password', 'forgot_password', '<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\r\n    <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\r\n                        <table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\r\n                        <tbody><tr>\r\n                            <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n                            <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n                                <tbody><tr>\r\n                                <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n                                    <tbody><tr>\r\n                                        <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n                                        <a href=\"{{$reset_link}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$reset_button}}</a>\r\n                                        </td>\r\n                                    </tr>\r\n                                    </tbody>\r\n                                </table>\r\n                                </td>\r\n                                </tr>\r\n                            </tbody>\r\n                            </table>\r\n                            </td>\r\n                        </tr>\r\n                        </tbody>\r\n                    </table>\r\n                        <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\r\n                        {{$note_sendmail}}\r\n                        </p>\r\n                        <table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\r\n                        <tbody><tr>\r\n                        <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n                            <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}: <a href=\"{{$reset_link}}\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#3869d4\" target=\"_blank\">{{$reset_link}}</a></p>\r\n                            </td>\r\n                            </tr>\r\n                        </tbody>\r\n                        </table>', 1);
INSERT INTO `sc_shop_email_template` VALUES (2, 'Welcome new customer', 'welcome_customer', '<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:center\">{{$title}}</h1>\r\n    <p style=\"text-align:center;\">Welcome to my site!</p>', 1);
INSERT INTO `sc_shop_email_template` VALUES (3, 'Send form contact to admin', 'contact_to_admin', '<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\r\n        <tr>\r\n            <td>\r\n                <b>Name</b>: {{$name}}<br>\r\n                <b>Email</b>: {{$email}}<br>\r\n                <b>Phone</b>: {{$phone}}<br>\r\n            </td>\r\n        </tr>\r\n    </table>\r\n    <hr>\r\n    <p style=\"text-align: center;\">Content:<br>\r\n    <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n        <tr>\r\n            <td>{{$content}}</td>\r\n        </tr>\r\n    </table>', 1);
INSERT INTO `sc_shop_email_template` VALUES (4, 'New order to admin', 'order_success_to_admin', '<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tr>\r\n                                <td>\r\n                                    <b>Order ID</b>: {{$orderID}}<br>\r\n                                    <b>Customer name</b>: {{$toname}}<br>\r\n                                    <b>Email</b>: {{$email}}<br>\r\n                                    <b>Address</b>: {{$address}}<br>\r\n                                    <b>Phone</b>: {{$phone}}<br>\r\n                                    <b>Order note</b>: {{$comment}}\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                        <hr>\r\n                        <p style=\"text-align: center;\">Order detail:<br>\r\n                        ===================================<br></p>\r\n                        <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\r\n                            {{$orderDetail}}\r\n                            <tr>\r\n                                <td colspan=\"2\"></td>\r\n                                <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\r\n                                <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td colspan=\"2\"></td>\r\n                                <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\r\n                                <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td colspan=\"2\"></td>\r\n                                <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\r\n                                <td colspan=\"2\" align=\"right\">{{$discount}}</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td colspan=\"2\"></td>\r\n                                <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\r\n                                <td colspan=\"2\" align=\"right\">{{$total}}</td>\r\n                            </tr>\r\n                        </table>', 1);
INSERT INTO `sc_shop_email_template` VALUES (5, 'New order to customr', 'order_success_to_customer', '<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tr>\r\n                                <td>\r\n                                    <b>Order ID</b>: {{$orderID}}<br>\r\n                                    <b>Customer name</b>: {{$toname}}<br>\r\n                                    <b>Address</b>: {{$address}}<br>\r\n                                    <b>Phone</b>: {{$phone}}<br>\r\n                                    <b>Order note</b>: {{$comment}}\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                        <hr>\r\n                        <p style=\"text-align: center;\">Order detail:<br>\r\n                        ===================================<br></p>\r\n                        <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\r\n                            {{$orderDetail}}\r\n                            <tr>\r\n                                <td colspan=\"2\"></td>\r\n                                <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\r\n                                <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td colspan=\"2\"></td>\r\n                                <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\r\n                                <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td colspan=\"2\"></td>\r\n                                <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\r\n                                <td colspan=\"2\" align=\"right\">{{$discount}}</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td colspan=\"2\"></td>\r\n                                <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\r\n                                <td colspan=\"2\" align=\"right\">{{$total}}</td>\r\n                            </tr>\r\n                        </table>', 1);

-- ----------------------------
-- Table structure for sc_shop_language
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_language`;
CREATE TABLE `sc_shop_language`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NULL DEFAULT 0 COMMENT 'Layout RTL',
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sc_shop_language_code_unique`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_language
-- ----------------------------
INSERT INTO `sc_shop_language` VALUES (1, 'English', 'en', '/data/language/flag_uk.png', 1, 0, 2);
INSERT INTO `sc_shop_language` VALUES (2, 'Tiếng Việt', 'vi', '/data/language/flag_vn.png', 1, 0, 3);
INSERT INTO `sc_shop_language` VALUES (3, 'Française', 'fr', '/data/language/flag_fr.png', 1, 0, 1);

-- ----------------------------
-- Table structure for sc_shop_layout_page
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_layout_page`;
CREATE TABLE `sc_shop_layout_page`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sc_shop_layout_page_key_unique`(`key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_layout_page
-- ----------------------------
INSERT INTO `sc_shop_layout_page` VALUES (1, 'home', 'lang::layout.page_position.home');
INSERT INTO `sc_shop_layout_page` VALUES (2, 'shop_home', 'lang::layout.page_position.shop_home');
INSERT INTO `sc_shop_layout_page` VALUES (3, 'product_list', 'lang::layout.page_position.product_list');
INSERT INTO `sc_shop_layout_page` VALUES (4, 'product_detail', 'lang::layout.page_position.product_detail');
INSERT INTO `sc_shop_layout_page` VALUES (5, 'shop_cart', 'lang::layout.page_position.shop_cart');
INSERT INTO `sc_shop_layout_page` VALUES (6, 'item_list', 'lang::layout.page_position.item_list');
INSERT INTO `sc_shop_layout_page` VALUES (7, 'item_detail', 'lang::layout.page_position.item_detail');
INSERT INTO `sc_shop_layout_page` VALUES (8, 'news_list', 'lang::layout.page_position.news_list');
INSERT INTO `sc_shop_layout_page` VALUES (9, 'news_detail', 'lang::layout.page_position.news_detail');
INSERT INTO `sc_shop_layout_page` VALUES (10, 'shop_auth', 'lang::layout.page_position.shop_auth');
INSERT INTO `sc_shop_layout_page` VALUES (11, 'shop_profile', 'lang::layout.page_position.shop_profile');
INSERT INTO `sc_shop_layout_page` VALUES (12, 'shop_page', 'lang::layout.page_position.shop_page');
INSERT INTO `sc_shop_layout_page` VALUES (13, 'shop_contact', 'lang::layout.page_position.shop_contact');
INSERT INTO `sc_shop_layout_page` VALUES (14, 'content_list', 'lang::layout.page_position.content_list');
INSERT INTO `sc_shop_layout_page` VALUES (15, 'content_detail', 'lang::layout.page_position.content_detail');

-- ----------------------------
-- Table structure for sc_shop_layout_position
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_layout_position`;
CREATE TABLE `sc_shop_layout_position`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sc_shop_layout_position_key_unique`(`key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_layout_position
-- ----------------------------
INSERT INTO `sc_shop_layout_position` VALUES (1, 'meta', 'lang::layout.page_block.meta');
INSERT INTO `sc_shop_layout_position` VALUES (2, 'header', 'lang::layout.page_block.header');
INSERT INTO `sc_shop_layout_position` VALUES (3, 'top', 'lang::layout.page_block.top');
INSERT INTO `sc_shop_layout_position` VALUES (4, 'bottom', 'lang::layout.page_block.bottom');
INSERT INTO `sc_shop_layout_position` VALUES (5, 'left', 'lang::layout.page_block.left');
INSERT INTO `sc_shop_layout_position` VALUES (6, 'right', 'lang::layout.page_block.right');
INSERT INTO `sc_shop_layout_position` VALUES (7, 'banner_top', 'lang::layout.page_block.banner_top');

-- ----------------------------
-- Table structure for sc_shop_length
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_length`;
CREATE TABLE `sc_shop_length`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sc_shop_length_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_length
-- ----------------------------
INSERT INTO `sc_shop_length` VALUES (1, 'mm', 'Millimeter');
INSERT INTO `sc_shop_length` VALUES (2, 'cm', 'Centimeter');
INSERT INTO `sc_shop_length` VALUES (3, 'm', 'Meter');
INSERT INTO `sc_shop_length` VALUES (4, 'in', 'Inch');

-- ----------------------------
-- Table structure for sc_shop_link
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_link`;
CREATE TABLE `sc_shop_link`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_link
-- ----------------------------
INSERT INTO `sc_shop_link` VALUES (1, 'lang::front.contact', 'route::page.detail::contact', '_self', 'menu', '', 1, 3);
INSERT INTO `sc_shop_link` VALUES (2, 'lang::front.about', 'route::page.detail::about', '_self', 'menu', '', 1, 4);
INSERT INTO `sc_shop_link` VALUES (3, 'lang::front.my_profile', '/member/login.html', '_self', 'footer', '', 1, 5);
INSERT INTO `sc_shop_link` VALUES (4, 'lang::front.compare_page', '/compare.html', '_self', 'footer', '', 1, 4);
INSERT INTO `sc_shop_link` VALUES (5, 'lang::front.wishlist_page', 'route::wishlist', '_self', 'footer', '', 1, 3);

-- ----------------------------
-- Table structure for sc_shop_news
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_news`;
CREATE TABLE `sc_shop_news`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alias` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sc_shop_news_alias_index`(`alias`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_news
-- ----------------------------
INSERT INTO `sc_shop_news` VALUES (1, '/data/content/blog-1.jpg', 'demo-alias-blog-1', 0, 1, '2020-09-17 00:00:00', NULL);
INSERT INTO `sc_shop_news` VALUES (2, '/data/content/blog-2.jpg', 'demo-alias-blog-2', 0, 1, '2020-09-17 00:00:00', NULL);
INSERT INTO `sc_shop_news` VALUES (3, '/data/content/blog-3.jpg', 'demo-alias-blog-3', 0, 1, '2020-09-17 00:00:00', NULL);
INSERT INTO `sc_shop_news` VALUES (4, '/data/content/blog-4.jpg', 'demo-alias-blog-4', 0, 1, '2020-09-17 00:00:00', NULL);
INSERT INTO `sc_shop_news` VALUES (5, '/data/content/blog-5.jpg', 'demo-alias-blog-5', 0, 1, '2020-09-17 00:00:00', NULL);
INSERT INTO `sc_shop_news` VALUES (6, '/data/content/blog-6.jpg', 'demo-alias-blog-6', 0, 1, '2020-09-17 00:00:00', NULL);

-- ----------------------------
-- Table structure for sc_shop_news_description
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_news_description`;
CREATE TABLE `sc_shop_news_description`  (
  `news_id` int(11) NOT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `keyword` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`news_id`, `lang`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_news_description
-- ----------------------------
INSERT INTO `sc_shop_news_description` VALUES (1, 'en', 'Easy Polo Black Edition 1', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_news_description` VALUES (1, 'vi', 'Easy Polo Black Edition 1', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_news_description` VALUES (2, 'en', 'Easy Polo Black Edition 2', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_news_description` VALUES (2, 'vi', 'Easy Polo Black Edition 2', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_news_description` VALUES (3, 'en', 'Easy Polo Black Edition 3', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_news_description` VALUES (3, 'vi', 'Easy Polo Black Edition 3', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_news_description` VALUES (4, 'en', 'Easy Polo Black Edition 4', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_news_description` VALUES (4, 'vi', 'Easy Polo Black Edition 4', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_news_description` VALUES (5, 'en', 'Easy Polo Black Edition 5', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_news_description` VALUES (5, 'vi', 'Easy Polo Black Edition 5', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_news_description` VALUES (6, 'en', 'Easy Polo Black Edition 6', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_news_description` VALUES (6, 'vi', 'Easy Polo Black Edition 6', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');

-- ----------------------------
-- Table structure for sc_shop_news_store
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_news_store`;
CREATE TABLE `sc_shop_news_store`  (
  `news_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`news_id`, `store_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_news_store
-- ----------------------------
INSERT INTO `sc_shop_news_store` VALUES (1, 0);
INSERT INTO `sc_shop_news_store` VALUES (2, 0);
INSERT INTO `sc_shop_news_store` VALUES (3, 0);
INSERT INTO `sc_shop_news_store` VALUES (4, 0);
INSERT INTO `sc_shop_news_store` VALUES (5, 0);
INSERT INTO `sc_shop_news_store` VALUES (6, 0);

-- ----------------------------
-- Table structure for sc_shop_order
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_order`;
CREATE TABLE `sc_shop_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `subtotal` int(11) NULL DEFAULT 0,
  `shipping` int(11) NULL DEFAULT 0,
  `discount` int(11) NULL DEFAULT 0,
  `payment_status` int(11) NOT NULL DEFAULT 1,
  `shipping_status` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 0,
  `tax` int(11) NULL DEFAULT 0,
  `total` int(11) NULL DEFAULT 0,
  `currency` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8, 2) NULL DEFAULT NULL,
  `received` int(11) NULL DEFAULT 0,
  `balance` int(11) NULL DEFAULT 0,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `first_name_kana` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `last_name_kana` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `country` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'VN',
  `company` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `postcode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `shipping_method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `transaction` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_order
-- ----------------------------
INSERT INTO `sc_shop_order` VALUES (1, 1, 1, NULL, 5000, 2000, 0, 1, 1, 1, 0, 7000, 'USD', 1.00, 0, 7000, 'Naruto', 'Kun', NULL, NULL, 'ADDRESS 1', 'ADDRESS 2', 'VN', NULL, NULL, '667151172', 'test@test.com', 'ok', 'Cash', 'ShippingStandard', NULL, NULL, NULL, '2020-09-17 23:37:59', NULL);
INSERT INTO `sc_shop_order` VALUES (2, 2, 1, 'http://localhost:8000', 1416, 24, 0, 1, 1, 5, 142, 1581, 'EUR', 1.18, 0, 1581, 'Jin', 'Wang', NULL, NULL, 'aaa', 'aaa', 'FR', NULL, NULL, '0122222222963', 'white.horse3513@gmail.com', NULL, 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '127.0.0.1', NULL, '2020-09-18 01:20:46', '2020-09-18 01:23:17');

-- ----------------------------
-- Table structure for sc_shop_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_order_detail`;
CREATE TABLE `sc_shop_order_detail`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL DEFAULT 0,
  `total_price` int(11) NOT NULL DEFAULT 0,
  `tax` int(11) NOT NULL DEFAULT 0,
  `sku` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8, 2) NULL DEFAULT NULL,
  `attribute` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_order_detail
-- ----------------------------
INSERT INTO `sc_shop_order_detail` VALUES (1, 1, 1, 'Easy Polo Black Edition 1', 5000, 1, 5000, 0, 'ABCZZ', 'USD', 1.00, '[]', NULL, NULL);
INSERT INTO `sc_shop_order_detail` VALUES (2, 2, 11, 'Easy Polo Black Edition 11', 708, 2, 1416, 140, 'SS495A', 'EUR', 1.18, '[]', '2020-09-18 01:20:46', '2020-09-18 01:20:46');

-- ----------------------------
-- Table structure for sc_shop_order_history
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_order_history`;
CREATE TABLE `sc_shop_order_history`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `content` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `add_date` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_order_history
-- ----------------------------
INSERT INTO `sc_shop_order_history` VALUES (1, 1, 'New order', 0, 1, 1, '2020-09-17 23:37:59');
INSERT INTO `sc_shop_order_history` VALUES (2, 2, 'New order', 1, 2, 1, '2020-09-18 01:20:46');
INSERT INTO `sc_shop_order_history` VALUES (3, 2, 'Change <b>status</b> from <span style=\"color:blue\">\'1\'</span> to <span style=\"color:red\">\'5\'</span>', 1, 0, 5, '2020-09-18 01:23:17');

-- ----------------------------
-- Table structure for sc_shop_order_status
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_order_status`;
CREATE TABLE `sc_shop_order_status`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_order_status
-- ----------------------------
INSERT INTO `sc_shop_order_status` VALUES (1, 'New');
INSERT INTO `sc_shop_order_status` VALUES (2, 'Processing');
INSERT INTO `sc_shop_order_status` VALUES (3, 'Hold');
INSERT INTO `sc_shop_order_status` VALUES (4, 'Canceled');
INSERT INTO `sc_shop_order_status` VALUES (5, 'Done');
INSERT INTO `sc_shop_order_status` VALUES (6, 'Failed');

-- ----------------------------
-- Table structure for sc_shop_order_total
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_order_total`;
CREATE TABLE `sc_shop_order_total`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0,
  `text` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_order_total
-- ----------------------------
INSERT INTO `sc_shop_order_total` VALUES (1, 1, 'Subtotal', 'subtotal', 5000, NULL, 1, NULL, NULL);
INSERT INTO `sc_shop_order_total` VALUES (2, 1, 'Shipping', 'shipping', 2000, NULL, 10, NULL, NULL);
INSERT INTO `sc_shop_order_total` VALUES (3, 1, 'Discount', 'discount', 0, NULL, 20, NULL, NULL);
INSERT INTO `sc_shop_order_total` VALUES (4, 1, 'Total', 'total', 7000, NULL, 100, NULL, NULL);
INSERT INTO `sc_shop_order_total` VALUES (5, 1, 'Received', 'received', 0, NULL, 200, NULL, NULL);
INSERT INTO `sc_shop_order_total` VALUES (6, 2, 'Sub Total', 'subtotal', 1416, '€1,416', 1, '2020-09-18 01:20:46', NULL);
INSERT INTO `sc_shop_order_total` VALUES (7, 2, 'Tax', 'tax', 142, '€142', 2, '2020-09-18 01:20:46', NULL);
INSERT INTO `sc_shop_order_total` VALUES (8, 2, 'Shipping Standard', 'shipping', 24, '€24', 10, '2020-09-18 01:20:46', NULL);
INSERT INTO `sc_shop_order_total` VALUES (9, 2, 'Discount', 'discount', 0, '0', 20, '2020-09-18 01:20:46', NULL);
INSERT INTO `sc_shop_order_total` VALUES (10, 2, 'Total', 'total', 1581, '€1,581', 100, '2020-09-18 01:20:46', NULL);
INSERT INTO `sc_shop_order_total` VALUES (11, 2, 'Received', 'received', 0, '0', 200, '2020-09-18 01:20:46', NULL);

-- ----------------------------
-- Table structure for sc_shop_page
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_page`;
CREATE TABLE `sc_shop_page`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alias` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sc_shop_page_alias_index`(`alias`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_page
-- ----------------------------
INSERT INTO `sc_shop_page` VALUES (1, NULL, 'about', 1);

-- ----------------------------
-- Table structure for sc_shop_page_description
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_page_description`;
CREATE TABLE `sc_shop_page_description`  (
  `page_id` int(11) NOT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `keyword` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`page_id`, `lang`) USING BTREE,
  INDEX `sc_shop_page_description_lang_index`(`lang`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_page_description
-- ----------------------------
INSERT INTO `sc_shop_page_description` VALUES (1, 'en', 'About', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-2.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_page_description` VALUES (1, 'fr', 'About', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore&nbsp;et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<a href=\"http://localhost:8000/data/page/cat-01.jpg\"><img alt=\"\" src=\"http://localhost:8000/data/page/cat-01.jpg\" style=\"width: 277px; height: 182px; float: right;\" /></a></p>');
INSERT INTO `sc_shop_page_description` VALUES (1, 'vi', 'Giới thiệu', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore<img alt=\"\" src=\"/data/product/product-2.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /> et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');

-- ----------------------------
-- Table structure for sc_shop_page_store
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_page_store`;
CREATE TABLE `sc_shop_page_store`  (
  `page_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`page_id`, `store_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_page_store
-- ----------------------------
INSERT INTO `sc_shop_page_store` VALUES (1, 0);

-- ----------------------------
-- Table structure for sc_shop_password_resets
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_password_resets`;
CREATE TABLE `sc_shop_password_resets`  (
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(0) NOT NULL,
  INDEX `sc_shop_password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sc_shop_payment_status
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_payment_status`;
CREATE TABLE `sc_shop_payment_status`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_payment_status
-- ----------------------------
INSERT INTO `sc_shop_payment_status` VALUES (1, 'Unpaid');
INSERT INTO `sc_shop_payment_status` VALUES (2, 'Partial payment');
INSERT INTO `sc_shop_payment_status` VALUES (3, 'Paid');
INSERT INTO `sc_shop_payment_status` VALUES (4, 'Refurn');

-- ----------------------------
-- Table structure for sc_shop_product
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_product`;
CREATE TABLE `sc_shop_product`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sku` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `upc` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'upc code',
  `ean` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'ean code',
  `jan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'jan code',
  `isbn` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'isbn code',
  `mpn` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'mpn code',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `brand_id` int(11) NULL DEFAULT 0,
  `supplier_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT 0,
  `cost` int(11) NULL DEFAULT 0,
  `stock` int(11) NULL DEFAULT 0,
  `sold` int(11) NULL DEFAULT 0,
  `minimum` int(11) NULL DEFAULT 0,
  `weight_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `weight` int(11) NULL DEFAULT 0,
  `length_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `length` int(11) NULL DEFAULT 0,
  `width` int(11) NULL DEFAULT 0,
  `height` int(11) NULL DEFAULT 0,
  `kind` tinyint(4) NULL DEFAULT 0 COMMENT '0:single, 1:bundle, 2:group',
  `property` tinyint(4) NULL DEFAULT 0 COMMENT '0:physical, 1:download, 2:only view, 3: Service',
  `tax_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '0:No-tax, auto: Use tax default',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `alias` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_lastview` datetime(0) NULL DEFAULT NULL,
  `date_available` date NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sc_shop_product_sku_unique`(`sku`) USING BTREE,
  UNIQUE INDEX `sc_shop_product_alias_unique`(`alias`) USING BTREE,
  INDEX `sc_shop_product_brand_id_index`(`brand_id`) USING BTREE,
  INDEX `sc_shop_product_supplier_id_index`(`supplier_id`) USING BTREE,
  INDEX `sc_shop_product_kind_index`(`kind`) USING BTREE,
  INDEX `sc_shop_product_property_index`(`property`) USING BTREE,
  INDEX `sc_shop_product_tax_id_index`(`tax_id`) USING BTREE,
  INDEX `sc_shop_product_status_index`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_product
-- ----------------------------
INSERT INTO `sc_shop_product` VALUES (1, 'ABCZZ', NULL, NULL, NULL, NULL, NULL, '/data/product/python.png', 1, '1', 15000, 10000, 99, 1, 0, 'g', 0, 'mm', 0, 0, 0, 0, 0, 'auto', 1, 0, 1, 'demo-alias-name-product-1', '2020-09-19 01:52:07', '2020-10-17', NULL, '2020-09-19 01:55:18');
INSERT INTO `sc_shop_product` VALUES (2, 'LEDFAN1', NULL, NULL, NULL, NULL, NULL, '/data/product/AKPendants.jpg', 1, '1', 15000, 10000, 100, 0, 0, 'g', 0, 'mm', 0, 0, 0, 0, 0, 'auto', 1, 0, 1, 'demo-alias-name-product-2', '2020-09-18 01:24:43', '2020-09-18', NULL, '2020-09-19 02:01:48');
INSERT INTO `sc_shop_product` VALUES (3, 'CLOCKFAN1', NULL, NULL, NULL, NULL, NULL, '/data/product/Mini Bang BangRings.jpg', 2, '1', 15000, 10000, 100, 0, 0, 'g', 0, 'mm', 0, 0, 0, 0, 0, 'auto', 1, 0, 0, 'demo-alias-name-product-3', NULL, '2020-09-18', NULL, '2020-09-19 02:06:30');
INSERT INTO `sc_shop_product` VALUES (4, 'CLOCKFAN2', NULL, NULL, NULL, NULL, NULL, '/data/product/PuzzleEarrings.jpg', 3, '1', 15000, 10000, 100, 0, 10, 'g', 0, 'mm', 0, 0, 0, 0, 0, 'auto', 1, 0, 0, 'demo-alias-name-product-4', NULL, '2020-09-18', NULL, '2020-09-19 02:09:47');
INSERT INTO `sc_shop_product` VALUES (5, 'CLOCKFAN3', NULL, NULL, NULL, NULL, NULL, '/data/product/ring-01-01.webp', 1, '1', 15000, 10000, 100, 0, 0, 'g', 0, 'mm', 0, 0, 0, 0, 0, 'auto', 1, 0, 3, 'engagement_rings_product1', '2020-09-19 03:56:49', '2020-09-18', NULL, '2020-09-19 03:56:49');
INSERT INTO `sc_shop_product` VALUES (6, 'TMC2208', NULL, NULL, NULL, NULL, NULL, '/data/product/product-6.jpg', 1, '1', 15000, 10000, 100, 0, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 'auto', 1, 0, 0, 'demo-alias-name-product-6', NULL, NULL, NULL, '2020-09-18 16:51:28');
INSERT INTO `sc_shop_product` VALUES (7, 'FILAMENT', NULL, NULL, NULL, NULL, NULL, '/data/product/product-7.jpg', 2, '1', 15000, 10000, 100, 0, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 'auto', 1, 0, 0, 'demo-alias-name-product-7', NULL, NULL, NULL, '2020-09-18 16:51:28');
INSERT INTO `sc_shop_product` VALUES (8, 'A4988', NULL, NULL, NULL, NULL, NULL, '/data/product/product-8.jpg', 2, '1', 15000, 10000, 100, 0, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 'auto', 1, 0, 0, 'demo-alias-name-product-8', NULL, NULL, NULL, NULL);
INSERT INTO `sc_shop_product` VALUES (9, 'ANYCUBIC-P', NULL, NULL, NULL, NULL, NULL, '/data/product/product-9.jpg', 2, '1', 15000, 10000, 100, 0, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 'auto', 1, 0, 1, 'demo-alias-name-product-9', '2020-09-17 23:44:39', NULL, NULL, '2020-09-17 23:44:39');
INSERT INTO `sc_shop_product` VALUES (10, '3DHLFD-P', NULL, NULL, NULL, NULL, NULL, '/data/product/product-10.jpg', 4, '1', 15000, 10000, 100, 0, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 'auto', 1, 0, 1, 'demo-alias-name-product-10', '2020-09-18 19:50:32', NULL, NULL, '2020-09-18 19:50:32');
INSERT INTO `sc_shop_product` VALUES (11, 'SS495A', NULL, NULL, NULL, NULL, NULL, '/data/product/product-11.jpg', 2, '1', 15000, 10000, 98, 2, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 'auto', 1, 0, 2, 'demo-alias-name-product-11', '2020-09-18 13:40:24', NULL, NULL, '2020-09-18 16:51:07');
INSERT INTO `sc_shop_product` VALUES (12, '3D-CARBON175', NULL, NULL, NULL, NULL, NULL, '/data/product/product-12.jpg', 2, '1', 15000, 10000, 100, 0, 5, NULL, 0, NULL, 0, 0, 0, 0, 0, 'auto', 1, 0, 0, 'demo-alias-name-product-12', NULL, NULL, NULL, NULL);
INSERT INTO `sc_shop_product` VALUES (13, '3D-GOLD175', NULL, NULL, NULL, NULL, NULL, '/data/product/product-13.png', 3, '1', 10000, 5000, 0, 0, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 'auto', 1, 0, 0, 'demo-alias-name-product-13', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sc_shop_product_attribute
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_product_attribute`;
CREATE TABLE `sc_shop_product_attribute`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `add_price` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sc_shop_product_attribute_product_id_attribute_group_id_index`(`product_id`, `attribute_group_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_product_attribute
-- ----------------------------
INSERT INTO `sc_shop_product_attribute` VALUES (5, 'Blue', 1, 10, 150, 0, 1);
INSERT INTO `sc_shop_product_attribute` VALUES (6, 'Red', 1, 10, 0, 0, 1);
INSERT INTO `sc_shop_product_attribute` VALUES (7, 'S', 2, 10, 0, 0, 1);
INSERT INTO `sc_shop_product_attribute` VALUES (8, 'M', 2, 10, 0, 0, 1);

-- ----------------------------
-- Table structure for sc_shop_product_build
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_product_build`;
CREATE TABLE `sc_shop_product_build`  (
  `build_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`build_id`, `product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sc_shop_product_category
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_product_category`;
CREATE TABLE `sc_shop_product_category`  (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`, `category_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_product_category
-- ----------------------------
INSERT INTO `sc_shop_product_category` VALUES (1, 1);
INSERT INTO `sc_shop_product_category` VALUES (2, 1);
INSERT INTO `sc_shop_product_category` VALUES (3, 1);
INSERT INTO `sc_shop_product_category` VALUES (4, 1);
INSERT INTO `sc_shop_product_category` VALUES (5, 6);
INSERT INTO `sc_shop_product_category` VALUES (5, 11);
INSERT INTO `sc_shop_product_category` VALUES (5, 16);
INSERT INTO `sc_shop_product_category` VALUES (6, 11);
INSERT INTO `sc_shop_product_category` VALUES (7, 12);
INSERT INTO `sc_shop_product_category` VALUES (8, 10);
INSERT INTO `sc_shop_product_category` VALUES (9, 6);
INSERT INTO `sc_shop_product_category` VALUES (10, 11);
INSERT INTO `sc_shop_product_category` VALUES (11, 10);
INSERT INTO `sc_shop_product_category` VALUES (12, 9);
INSERT INTO `sc_shop_product_category` VALUES (13, 5);

-- ----------------------------
-- Table structure for sc_shop_product_description
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_product_description`;
CREATE TABLE `sc_shop_product_description`  (
  `product_id` int(11) NOT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `keyword` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`product_id`, `lang`) USING BTREE,
  INDEX `sc_shop_product_description_lang_index`(`lang`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_product_description
-- ----------------------------
INSERT INTO `sc_shop_product_description` VALUES (1, 'en', 'Python/Bracelets', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br />\r\n<img alt=\"\" height=\"95\" src=\"http://18.191.166.128/images/python.jpg\" style=\"float: right;\" width=\"95\" /></p>');
INSERT INTO `sc_shop_product_description` VALUES (1, 'fr', 'Easy Polo Black Edition 1', NULL, NULL, 'Easy Polo Black Edition 1');
INSERT INTO `sc_shop_product_description` VALUES (1, 'vi', 'Easy Polo Black Edition 1', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (2, 'en', 'AK/Pendants', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (2, 'fr', 'AK/Pendants', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (2, 'vi', 'Easy Polo Black Edition 2', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (3, 'en', 'Mini Bang Bang/Rings', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (3, 'fr', 'Mini Bang Bang/Rings', NULL, NULL, '<a href=\"http://18.191.166.128/items.php?type=Joaillerie&amp;category=Bagues&amp;lang=EN\">Mini Bang Bang/Rings</a>');
INSERT INTO `sc_shop_product_description` VALUES (3, 'vi', 'Easy Polo Black Edition 3', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (4, 'en', 'Puzzle/Earrings', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (4, 'fr', 'Puzzle/Earrings', NULL, NULL, '<a href=\"http://18.191.166.128/items.php?type=Joaillerie&amp;category=Boucles%20d%27Oreilles&amp;lang=EN\">Puzzle/Earrings</a>');
INSERT INTO `sc_shop_product_description` VALUES (4, 'vi', 'Puzzle/Earrings', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (5, 'en', 'Tiffany & Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 Carat', NULL, NULL, '<p>Tiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CT SKU: 106943<br />\r\nTiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CTW<br />\r\nCondition Description: Retails for 647,000 USD. In excellent condition and recently polished.<br />\r\nRing size is 6. Comes with the original Tiffany box and papers.<br />\r\n<br />\r\nBrand: Tiffany &amp; Co.<br />\r\nCollection/Series:<br />\r\nMetal Type: Platinum<br />\r\nMetal Purity: 950<br />\r\nRing Size: 6</p>');
INSERT INTO `sc_shop_product_description` VALUES (5, 'fr', 'Tiffany & Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 Carat', NULL, NULL, 'Tiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CT SKU: 106943<br />\r\nTiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CTW<br />\r\nCondition Description: Retails for 647,000 USD. In excellent condition and recently polished.<br />\r\nRing size is 6. Comes with the original Tiffany box and papers.<br />\r\n<br />\r\nBrand: Tiffany &amp; Co.<br />\r\nCollection/Series:<br />\r\nMetal Type: Platinum<br />\r\nMetal Purity: 950<br />\r\nRing Size: 6');
INSERT INTO `sc_shop_product_description` VALUES (5, 'vi', 'Tiffany & Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 Carat', NULL, NULL, '<p>Tiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CT SKU: 106943<br />\r\nTiffany &amp; Co. Solitaire Diamond Engagement Ring in Platinum D VS1 5.02 CTW<br />\r\nCondition Description: Retails for 647,000 USD. In excellent condition and recently polished.<br />\r\nRing size is 6. Comes with the original Tiffany box and papers.<br />\r\n<br />\r\nBrand: Tiffany &amp; Co.<br />\r\nCollection/Series:<br />\r\nMetal Type: Platinum<br />\r\nMetal Purity: 950<br />\r\nRing Size: 6</p>');
INSERT INTO `sc_shop_product_description` VALUES (6, 'en', 'Easy Polo Black Edition 6', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (6, 'vi', 'Easy Polo Black Edition 6', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (7, 'en', 'Easy Polo Black Edition 7', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (7, 'vi', 'Easy Polo Black Edition 7', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (8, 'en', 'Easy Polo Black Edition 8', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (8, 'vi', 'Easy Polo Black Edition 8', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (9, 'en', 'Easy Polo Black Edition 9', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (9, 'vi', 'Easy Polo Black Edition 9', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (10, 'en', 'Easy Polo Black Edition 10', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (10, 'vi', 'Easy Polo Black Edition 10', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (11, 'en', 'Easy Polo Black Edition 11', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (11, 'vi', 'Easy Polo Black Edition 11', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (12, 'en', 'Easy Polo Black Edition 12', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (12, 'vi', 'Easy Polo Black Edition 12', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (13, 'en', 'Easy Polo Black Edition 13', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` VALUES (13, 'vi', 'Easy Polo Black Edition 13', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');

-- ----------------------------
-- Table structure for sc_shop_product_group
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_product_group`;
CREATE TABLE `sc_shop_product_group`  (
  `group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`group_id`, `product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sc_shop_product_image
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_product_image`;
CREATE TABLE `sc_shop_product_image`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sc_shop_product_image_product_id_index`(`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_product_image
-- ----------------------------
INSERT INTO `sc_shop_product_image` VALUES (3, '/data/product/product-8.png', 11);
INSERT INTO `sc_shop_product_image` VALUES (5, '/data/product/product-13.png', 11);
INSERT INTO `sc_shop_product_image` VALUES (10, '/data/product/product-5.png', 9);
INSERT INTO `sc_shop_product_image` VALUES (11, '/data/product/product-8.png', 8);
INSERT INTO `sc_shop_product_image` VALUES (12, '/data/product/product-2.png', 7);
INSERT INTO `sc_shop_product_image` VALUES (13, '/data/product/product-6.png', 7);
INSERT INTO `sc_shop_product_image` VALUES (25, '/data/product/product-2.png', 1);
INSERT INTO `sc_shop_product_image` VALUES (26, '/data/product/product-11.png', 1);
INSERT INTO `sc_shop_product_image` VALUES (27, '/data/product/product-6.png', 2);
INSERT INTO `sc_shop_product_image` VALUES (28, '/data/product/product-1.png', 2);
INSERT INTO `sc_shop_product_image` VALUES (29, '/data/product/product-15.png', 2);
INSERT INTO `sc_shop_product_image` VALUES (30, '/data/product/product-13.png', 4);
INSERT INTO `sc_shop_product_image` VALUES (34, '/data/product/ring-01-02.webp', 5);
INSERT INTO `sc_shop_product_image` VALUES (35, '/data/product/ring-01-03.webp', 5);
INSERT INTO `sc_shop_product_image` VALUES (36, '/data/product/ring-01-04.webp', 5);

-- ----------------------------
-- Table structure for sc_shop_product_promotion
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_product_promotion`;
CREATE TABLE `sc_shop_product_promotion`  (
  `product_id` int(11) NOT NULL,
  `price_promotion` int(11) NOT NULL,
  `date_start` datetime(0) NULL DEFAULT NULL,
  `date_end` datetime(0) NULL DEFAULT NULL,
  `status_promotion` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_product_promotion
-- ----------------------------
INSERT INTO `sc_shop_product_promotion` VALUES (1, 5000, NULL, NULL, 1, '2020-09-19 01:55:18', '2020-09-19 01:55:18');
INSERT INTO `sc_shop_product_promotion` VALUES (2, 3000, NULL, NULL, 1, '2020-09-19 02:01:48', '2020-09-19 02:01:48');
INSERT INTO `sc_shop_product_promotion` VALUES (3, 15500, NULL, NULL, 1, '2020-09-19 02:06:59', '2020-09-19 02:06:59');
INSERT INTO `sc_shop_product_promotion` VALUES (4, 15000, NULL, NULL, 1, '2020-09-19 02:09:47', '2020-09-19 02:09:47');
INSERT INTO `sc_shop_product_promotion` VALUES (5, 15000, NULL, NULL, 1, '2020-09-19 03:36:41', '2020-09-19 03:36:41');
INSERT INTO `sc_shop_product_promotion` VALUES (11, 600, NULL, NULL, 1, NULL, NULL);
INSERT INTO `sc_shop_product_promotion` VALUES (13, 4000, NULL, NULL, 1, NULL, NULL);

-- ----------------------------
-- Table structure for sc_shop_product_store
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_product_store`;
CREATE TABLE `sc_shop_product_store`  (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`, `store_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_product_store
-- ----------------------------
INSERT INTO `sc_shop_product_store` VALUES (1, 0);
INSERT INTO `sc_shop_product_store` VALUES (2, 0);
INSERT INTO `sc_shop_product_store` VALUES (3, 0);
INSERT INTO `sc_shop_product_store` VALUES (4, 0);
INSERT INTO `sc_shop_product_store` VALUES (5, 0);
INSERT INTO `sc_shop_product_store` VALUES (6, 0);
INSERT INTO `sc_shop_product_store` VALUES (7, 0);
INSERT INTO `sc_shop_product_store` VALUES (8, 0);
INSERT INTO `sc_shop_product_store` VALUES (9, 0);
INSERT INTO `sc_shop_product_store` VALUES (10, 0);
INSERT INTO `sc_shop_product_store` VALUES (11, 0);
INSERT INTO `sc_shop_product_store` VALUES (12, 0);
INSERT INTO `sc_shop_product_store` VALUES (13, 0);

-- ----------------------------
-- Table structure for sc_shop_sessions
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_sessions`;
CREATE TABLE `sc_shop_sessions`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE INDEX `sc_shop_sessions_id_unique`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sc_shop_shipping_standard
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_shipping_standard`;
CREATE TABLE `sc_shop_shipping_standard`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fee` int(11) NOT NULL,
  `shipping_free` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_shipping_standard
-- ----------------------------
INSERT INTO `sc_shop_shipping_standard` VALUES (1, 20, 10000);

-- ----------------------------
-- Table structure for sc_shop_shipping_status
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_shipping_status`;
CREATE TABLE `sc_shop_shipping_status`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_shipping_status
-- ----------------------------
INSERT INTO `sc_shop_shipping_status` VALUES (1, 'Not sent');
INSERT INTO `sc_shop_shipping_status` VALUES (2, 'Sending');
INSERT INTO `sc_shop_shipping_status` VALUES (3, 'Shipping done');

-- ----------------------------
-- Table structure for sc_shop_shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_shoppingcart`;
CREATE TABLE `sc_shop_shoppingcart`  (
  `identifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `sc_shop_shoppingcart_identifier_instance_index`(`identifier`, `instance`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sc_shop_subscribe
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_subscribe`;
CREATE TABLE `sc_shop_subscribe`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sc_shop_subscribe_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sc_shop_supplier
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_supplier`;
CREATE TABLE `sc_shop_supplier`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sc_shop_supplier_alias_unique`(`alias`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_supplier
-- ----------------------------
INSERT INTO `sc_shop_supplier` VALUES (1, 'ABC distributor', 'abc-distributor', 'abc@abc.com', '012496657567', '/data/supplier/supplier.png', '', '', 1, 0);
INSERT INTO `sc_shop_supplier` VALUES (2, 'XYZ distributor', 'xyz-distributor', 'xyz@xyz.com', '012496657567', '/data/supplier/supplier.png', '', '', 1, 0);

-- ----------------------------
-- Table structure for sc_shop_tax
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_tax`;
CREATE TABLE `sc_shop_tax`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_tax
-- ----------------------------
INSERT INTO `sc_shop_tax` VALUES (1, 'Tax default (10%)', 10);

-- ----------------------------
-- Table structure for sc_shop_user
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_user`;
CREATE TABLE `sc_shop_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `first_name_kana` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `last_name_kana` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sex` tinyint(4) NULL DEFAULT NULL COMMENT '0:women, 1:men',
  `birthday` date NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `postcode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `country` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'VN',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `group` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `provider` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `provider_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sc_shop_user_email_provider_provider_id_unique`(`email`, `provider`, `provider_id`) USING BTREE,
  INDEX `sc_shop_user_address_id_index`(`address_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_user
-- ----------------------------
INSERT INTO `sc_shop_user` VALUES (1, 'Naruto', 'Kun', NULL, NULL, 'test@test.com', NULL, NULL, '$2y$10$4D2mGtlqCgXoSUyBevSMAeGAZdNGcCHf6LqRxpJPIcgzGUX/DF9GG', 0, '70000', 'HCM', 'HCM city', 'KTC', 'VN', '0667151172', NULL, 1, 1, '2020-09-17 23:37:59', NULL, NULL, NULL);
INSERT INTO `sc_shop_user` VALUES (2, 'Jin', 'Wang', NULL, NULL, 'white.horse3513@gmail.com', NULL, NULL, '$2y$10$oPa9IGvFYXm0f7kuVYJgD.659608ueDrTYeSwQAojv30B0sJD1bjK', 1, NULL, 'aaa', 'aaa', NULL, 'FR', '0122222222963', NULL, 1, 1, '2020-09-18 01:18:41', '2020-09-18 01:18:41', NULL, NULL);

-- ----------------------------
-- Table structure for sc_shop_user_address
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_user_address`;
CREATE TABLE `sc_shop_user_address`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `first_name_kana` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `last_name_kana` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `postcode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `country` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'VN',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_user_address
-- ----------------------------
INSERT INTO `sc_shop_user_address` VALUES (1, 2, 'Jin', 'Wang', '', '', '', 'aaa', 'aaa', 'FR', '0122222222963');

-- ----------------------------
-- Table structure for sc_shop_weight
-- ----------------------------
DROP TABLE IF EXISTS `sc_shop_weight`;
CREATE TABLE `sc_shop_weight`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sc_shop_weight_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_shop_weight
-- ----------------------------
INSERT INTO `sc_shop_weight` VALUES (1, 'g', 'Gram');
INSERT INTO `sc_shop_weight` VALUES (2, 'kg', 'Kilogram');
INSERT INTO `sc_shop_weight` VALUES (3, 'lb', 'Pound ');
INSERT INTO `sc_shop_weight` VALUES (4, 'oz', 'Ounce ');

SET FOREIGN_KEY_CHECKS = 1;
