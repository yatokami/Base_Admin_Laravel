/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : base_admin

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 23/08/2019 17:18:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (4, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (6, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO `migrations` VALUES (8, '2019_08_14_064806_create_admin_table', 1);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('8bde394d477be37e34b81ab32db1b0b897a3ded36d7e68d8a35c373385b3c190c38c86d25847e757', 1, 5, 'MyApp', '[]', 0, '2019-08-21 02:42:56', '2019-08-21 02:42:56', '2020-08-21 02:42:56');
INSERT INTO `oauth_access_tokens` VALUES ('5021324d167e85a58231f0208833a275f12e9a79630d980deae383e290976547dca0598a3955e1f3', 1, 5, 'MyApp', '[]', 0, '2019-08-21 02:46:26', '2019-08-21 02:46:26', '2020-08-21 02:46:26');
INSERT INTO `oauth_access_tokens` VALUES ('100f3a46e7c2e5f1bcdfce81eda4ee1e55e91ad83bcdd5db6272d774dafd3934b3a83320c7685e77', 1, 5, 'MyApp', '[]', 0, '2019-08-21 02:50:19', '2019-08-21 02:50:19', '2020-08-21 02:50:19');
INSERT INTO `oauth_access_tokens` VALUES ('362a6413c1a6f1177e2d784253cb61a5174623dc30b79327136a2b82a2b928afaf77344a862006c0', 1, 5, 'MyApp', '[]', 0, '2019-08-21 02:52:37', '2019-08-21 02:52:37', '2020-08-21 02:52:37');
INSERT INTO `oauth_access_tokens` VALUES ('e94b7752223e5dbc37a68a2e82de375b91595ef6837eee1c6054556cf0e11d95215c6f197a6bd193', 1, 5, 'MyApp', '[]', 0, '2019-08-21 02:52:37', '2019-08-21 02:52:37', '2020-08-21 02:52:37');
INSERT INTO `oauth_access_tokens` VALUES ('763e3a7d0b17e9420ee5c68ed013f7abbf9765b1df4afed8b08d88a3b985d34ca4009adc481984b6', 1, 5, 'MyApp', '[]', 0, '2019-08-21 03:10:49', '2019-08-21 03:10:49', '2020-08-21 03:10:49');
INSERT INTO `oauth_access_tokens` VALUES ('293e3ae43129148aa44e18326792541420a573d2c07d020d51bb41e5ae0f010c6abb0965aa30f908', 1, 5, 'MyApp', '[]', 0, '2019-08-21 03:10:49', '2019-08-21 03:10:49', '2020-08-21 03:10:49');
INSERT INTO `oauth_access_tokens` VALUES ('81b47fee48f3567dc18995b2ad663276570e85d652c9c11792e0d0838d5de598abed61a8975786ee', 1, 5, 'MyApp', '[]', 0, '2019-08-21 03:11:47', '2019-08-21 03:11:47', '2020-08-21 03:11:47');
INSERT INTO `oauth_access_tokens` VALUES ('6e19e50d4324ec65bd757f4b3643db6d56b5f2efc3ad15566e836e3e71d6587fc495661927000e9f', 1, 5, 'MyApp', '[]', 0, '2019-08-21 03:11:47', '2019-08-21 03:11:47', '2020-08-21 03:11:47');
INSERT INTO `oauth_access_tokens` VALUES ('d9e6b1f10689df81e3ea8563c146f53098b65c486d72f9cd1eacba1b7dafd4354ee259b6c709eb3e', 1, 6, NULL, '[]', 0, '2019-08-21 06:02:43', '2019-08-21 06:02:43', '2019-09-05 06:02:43');
INSERT INTO `oauth_access_tokens` VALUES ('de9a43b05fef47ad34592cd88466801c37b769169e7db308822c9d3af2877d4688e4863a4800d9bf', 1, 6, NULL, '[]', 0, '2019-08-21 06:05:30', '2019-08-21 06:05:30', '2019-09-05 06:05:30');
INSERT INTO `oauth_access_tokens` VALUES ('3ceb7b51f4e8692ef62e10d65e363493a49abc3d2bc1674f071d09ca6d76c044984c66d7e01d562d', 1, 6, NULL, '[]', 0, '2019-08-21 06:05:45', '2019-08-21 06:05:45', '2019-09-05 06:05:45');
INSERT INTO `oauth_access_tokens` VALUES ('c86063a229999ed48437585f2c209d12926a4fee1607caae305dfaf30c8ae573d70b08be3abe9187', 1, 6, NULL, '[\"*\"]', 0, '2019-08-21 06:11:53', '2019-08-21 06:11:53', '2019-09-05 06:11:53');
INSERT INTO `oauth_access_tokens` VALUES ('818a12085039a648cf4fa7314df41105086d58880531eeac4db4fd55a55a257d32b78b2ffe0d3d19', 1, 6, NULL, '[\"*\"]', 0, '2019-08-21 06:28:30', '2019-08-21 06:28:30', '2019-09-05 06:28:29');
INSERT INTO `oauth_access_tokens` VALUES ('5589ad663dc4eaa73da62640000d9860efc1d4f482fe5a116c443c55addcc415f2a4dde1527cbeb0', 1, 6, NULL, '[\"*\"]', 0, '2019-08-21 06:41:49', '2019-08-21 06:41:49', '2019-09-05 06:41:49');
INSERT INTO `oauth_access_tokens` VALUES ('9c7515344f9d07f38279187a9832a3861729fe014bfe6cc78068c59eaf0724c17c5f60cc68f679e7', 1, 6, NULL, '[\"*\"]', 0, '2019-08-21 08:02:04', '2019-08-21 08:02:04', '2019-09-05 08:02:04');
INSERT INTO `oauth_access_tokens` VALUES ('0df113034085b667cbbd2c83343f76731ca3a25d9e3a39b3f334658ed93f2b6405cc4756efb3b3a8', 1, 6, NULL, '[\"*\"]', 0, '2019-08-21 08:02:53', '2019-08-21 08:02:53', '2019-09-05 08:02:53');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES (6, NULL, 'Laravel Password Grant Client', '57auKVHlhCMD2k6ilyL3cJzFIrwuBBQIYmecw88s', 'http://localhost', 0, 1, 0, '2019-08-21 02:15:45', '2019-08-21 02:15:45');
INSERT INTO `oauth_clients` VALUES (5, NULL, 'Laravel Personal Access Client', '0he7RddbAM3SDm98QgUIa1o9gYpANjie0EYEWyRD', 'http://localhost', 1, 0, 0, '2019-08-21 02:15:45', '2019-08-21 02:15:45');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_personal_access_clients_client_id_index`(`client_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, 1, '2019-08-14 07:24:21', '2019-08-14 07:24:21');
INSERT INTO `oauth_personal_access_clients` VALUES (2, 3, '2019-08-19 08:22:07', '2019-08-19 08:22:07');
INSERT INTO `oauth_personal_access_clients` VALUES (3, 5, '2019-08-21 02:15:45', '2019-08-21 02:15:45');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------
INSERT INTO `oauth_refresh_tokens` VALUES ('c52f98cd0626e7704de2fe5f1a05752692067268a1cccb913a5df6f597fc16acaf1b905f9575876c', 'd9e6b1f10689df81e3ea8563c146f53098b65c486d72f9cd1eacba1b7dafd4354ee259b6c709eb3e', 0, '2019-09-20 06:02:43');
INSERT INTO `oauth_refresh_tokens` VALUES ('465af12f9feaca41de20159e0f5d3707683f66957838f2add6d1b2684c89d2b30b0ae537fc8029a1', 'de9a43b05fef47ad34592cd88466801c37b769169e7db308822c9d3af2877d4688e4863a4800d9bf', 0, '2019-09-20 06:05:30');
INSERT INTO `oauth_refresh_tokens` VALUES ('06b8e0ac05a2a378c2e5192a967bf896f46bd991287419c28140369029d533bcc87c05aef2ea64e8', '3ceb7b51f4e8692ef62e10d65e363493a49abc3d2bc1674f071d09ca6d76c044984c66d7e01d562d', 0, '2019-09-20 06:05:45');
INSERT INTO `oauth_refresh_tokens` VALUES ('510fb5eb0b6055de23bb37878136ad82b5d920f73aad1eb24253e7dc08765b12662da8e1a7bb3dd0', 'c86063a229999ed48437585f2c209d12926a4fee1607caae305dfaf30c8ae573d70b08be3abe9187', 0, '2019-09-20 06:11:53');
INSERT INTO `oauth_refresh_tokens` VALUES ('7d93707dfe741280a5b9a86643587ff68b7d460ad1c0873bbbb6c758de11ed5cc266b8166a4057fd', '818a12085039a648cf4fa7314df41105086d58880531eeac4db4fd55a55a257d32b78b2ffe0d3d19', 0, '2019-09-20 06:28:29');
INSERT INTO `oauth_refresh_tokens` VALUES ('dd06dbf44ba6df7283dad13a127e0d6966eba4ef87ed8bb70ddd2055d6ddb3580fe0feff97da5b34', '5589ad663dc4eaa73da62640000d9860efc1d4f482fe5a116c443c55addcc415f2a4dde1527cbeb0', 0, '2019-09-20 06:41:49');
INSERT INTO `oauth_refresh_tokens` VALUES ('0ffa9bfb793b26c9b7d095916b9bb091e9f5fda0de4aedf9499d66f26096806ab86f87282aa5ef24', '9c7515344f9d07f38279187a9832a3861729fe014bfe6cc78068c59eaf0724c17c5f60cc68f679e7', 0, '2019-09-20 08:02:04');
INSERT INTO `oauth_refresh_tokens` VALUES ('4dfb0c27ada1b515c8b7f82bf34878e71122601d3695d95ba0428eadcfe44818aecbecd43cf3b97c', '0df113034085b667cbbd2c83343f76731ca3a25d9e3a39b3f334658ed93f2b6405cc4756efb3b3a8', 0, '2019-09-20 08:02:53');
INSERT INTO `oauth_refresh_tokens` VALUES ('010cba02b0f9a8fbb94119951ce1c7ad3dee91a4ef144b54fe7c6d978adbab491a4a343e6d99b637', 'a45510c37ef7c1344b29c3b3c37ad4efd36c2b90b9365d7795e371f11c80a92c120e53a7e0c16cb4', 0, '2019-09-20 08:21:30');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `flag` int(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `t_admin_email_unique`(`email`) USING BTREE,
  UNIQUE INDEX `t_admin_api_token_unique`(`api_token`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES (1, 'yato', '123456@qq.com', NULL, '$2y$10$3X60AUd2dTldY.M.LtC.MO4UEJjxwPaOsCsrUQ8Ztf.MWDD1QBape', NULL, NULL, '2019-08-21 00:00:00', '2019-08-21 00:00:00', 1);

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单url',
  `pid` int(10) NULL DEFAULT 0 COMMENT '父级菜单id',
  `seq` int(10) NULL DEFAULT 0 COMMENT '排序值',
  `flag` int(1) NULL DEFAULT 1 COMMENT '是否可用(0,1)',
  `created_at` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES (3, '主页', '/api/index', 0, 0, 1, '1566465198', '1566465198');
INSERT INTO `t_menu` VALUES (7, '权限管理', '/api/role', 0, 0, 1, '1566465330', '1566465330');
INSERT INTO `t_menu` VALUES (6, '菜单管理', '/api/menu', 0, 0, 1, '1566465323', '1566465323');
INSERT INTO `t_menu` VALUES (8, '超级管理', '/api/admin', 0, 0, 1, '1566465931', '1566465931');
INSERT INTO `t_menu` VALUES (9, '会员管理', '/api/user', 0, 0, 1, '1566465953', '1566465953');
INSERT INTO `t_menu` VALUES (10, '菜单列表', '/api/menu', 6, 0, 1, '1566466206', '1566466206');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `rid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `created_at` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  `flag` int(1) NULL DEFAULT 1 COMMENT '是否可用',
  PRIMARY KEY (`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_role_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_role_admin`;
CREATE TABLE `t_role_admin`  (
  `raid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rid` int(10) NULL DEFAULT NULL COMMENT '角色表关联主键',
  `aid` int(10) NULL DEFAULT NULL COMMENT '管理员表关联主键',
  PRIMARY KEY (`raid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu`  (
  `rmid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rid` int(10) NULL DEFAULT NULL COMMENT '角色表关联主键',
  `mid` int(10) NULL DEFAULT NULL COMMENT '菜单关联主键',
  PRIMARY KEY (`rmid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
