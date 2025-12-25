/*
 Navicat Premium Dump SQL

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 90300 (9.3.0)
 Source Host           : localhost:3306
 Source Schema         : hengdaproject

 Target Server Type    : MySQL
 Target Server Version : 90300 (9.3.0)
 File Encoding         : 65001

 Date: 23/12/2025 17:33:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aboutapp_award
-- ----------------------------
DROP TABLE IF EXISTS `aboutapp_award`;
CREATE TABLE `aboutapp_award`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aboutapp_award
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES (2, '产品管理部');
INSERT INTO `auth_group` VALUES (4, '人事行政部');
INSERT INTO `auth_group` VALUES (1, '内容管理部');
INSERT INTO `auth_group` VALUES (5, '技术维护部');
INSERT INTO `auth_group` VALUES (3, '新闻编辑部');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES (1, 1, 13);
INSERT INTO `auth_group_permissions` VALUES (2, 1, 14);
INSERT INTO `auth_group_permissions` VALUES (3, 1, 15);
INSERT INTO `auth_group_permissions` VALUES (4, 1, 16);
INSERT INTO `auth_group_permissions` VALUES (13, 1, 17);
INSERT INTO `auth_group_permissions` VALUES (14, 1, 18);
INSERT INTO `auth_group_permissions` VALUES (15, 1, 19);
INSERT INTO `auth_group_permissions` VALUES (16, 1, 20);
INSERT INTO `auth_group_permissions` VALUES (9, 1, 21);
INSERT INTO `auth_group_permissions` VALUES (10, 1, 22);
INSERT INTO `auth_group_permissions` VALUES (11, 1, 23);
INSERT INTO `auth_group_permissions` VALUES (12, 1, 24);
INSERT INTO `auth_group_permissions` VALUES (5, 1, 45);
INSERT INTO `auth_group_permissions` VALUES (6, 1, 46);
INSERT INTO `auth_group_permissions` VALUES (7, 1, 47);
INSERT INTO `auth_group_permissions` VALUES (8, 1, 48);
INSERT INTO `auth_group_permissions` VALUES (17, 2, 37);
INSERT INTO `auth_group_permissions` VALUES (18, 2, 38);
INSERT INTO `auth_group_permissions` VALUES (19, 2, 39);
INSERT INTO `auth_group_permissions` VALUES (20, 2, 40);
INSERT INTO `auth_group_permissions` VALUES (21, 2, 41);
INSERT INTO `auth_group_permissions` VALUES (22, 2, 42);
INSERT INTO `auth_group_permissions` VALUES (23, 2, 43);
INSERT INTO `auth_group_permissions` VALUES (24, 2, 44);
INSERT INTO `auth_group_permissions` VALUES (25, 3, 33);
INSERT INTO `auth_group_permissions` VALUES (26, 3, 34);
INSERT INTO `auth_group_permissions` VALUES (27, 3, 35);
INSERT INTO `auth_group_permissions` VALUES (28, 3, 36);
INSERT INTO `auth_group_permissions` VALUES (29, 4, 5);
INSERT INTO `auth_group_permissions` VALUES (30, 4, 6);
INSERT INTO `auth_group_permissions` VALUES (31, 4, 7);
INSERT INTO `auth_group_permissions` VALUES (32, 4, 8);
INSERT INTO `auth_group_permissions` VALUES (33, 4, 17);
INSERT INTO `auth_group_permissions` VALUES (34, 4, 18);
INSERT INTO `auth_group_permissions` VALUES (35, 4, 19);
INSERT INTO `auth_group_permissions` VALUES (36, 4, 20);
INSERT INTO `auth_group_permissions` VALUES (37, 4, 25);
INSERT INTO `auth_group_permissions` VALUES (38, 4, 26);
INSERT INTO `auth_group_permissions` VALUES (39, 4, 27);
INSERT INTO `auth_group_permissions` VALUES (40, 4, 28);
INSERT INTO `auth_group_permissions` VALUES (41, 4, 29);
INSERT INTO `auth_group_permissions` VALUES (42, 4, 30);
INSERT INTO `auth_group_permissions` VALUES (43, 4, 31);
INSERT INTO `auth_group_permissions` VALUES (44, 4, 32);
INSERT INTO `auth_group_permissions` VALUES (45, 4, 45);
INSERT INTO `auth_group_permissions` VALUES (46, 4, 46);
INSERT INTO `auth_group_permissions` VALUES (47, 4, 47);
INSERT INTO `auth_group_permissions` VALUES (48, 4, 48);
INSERT INTO `auth_group_permissions` VALUES (49, 4, 49);
INSERT INTO `auth_group_permissions` VALUES (50, 4, 50);
INSERT INTO `auth_group_permissions` VALUES (51, 4, 51);
INSERT INTO `auth_group_permissions` VALUES (52, 4, 52);
INSERT INTO `auth_group_permissions` VALUES (53, 5, 1);
INSERT INTO `auth_group_permissions` VALUES (54, 5, 2);
INSERT INTO `auth_group_permissions` VALUES (55, 5, 3);
INSERT INTO `auth_group_permissions` VALUES (56, 5, 4);
INSERT INTO `auth_group_permissions` VALUES (57, 5, 5);
INSERT INTO `auth_group_permissions` VALUES (58, 5, 6);
INSERT INTO `auth_group_permissions` VALUES (59, 5, 7);
INSERT INTO `auth_group_permissions` VALUES (60, 5, 8);
INSERT INTO `auth_group_permissions` VALUES (61, 5, 9);
INSERT INTO `auth_group_permissions` VALUES (62, 5, 10);
INSERT INTO `auth_group_permissions` VALUES (63, 5, 11);
INSERT INTO `auth_group_permissions` VALUES (64, 5, 12);
INSERT INTO `auth_group_permissions` VALUES (65, 5, 13);
INSERT INTO `auth_group_permissions` VALUES (66, 5, 14);
INSERT INTO `auth_group_permissions` VALUES (67, 5, 15);
INSERT INTO `auth_group_permissions` VALUES (68, 5, 16);
INSERT INTO `auth_group_permissions` VALUES (69, 5, 17);
INSERT INTO `auth_group_permissions` VALUES (70, 5, 18);
INSERT INTO `auth_group_permissions` VALUES (71, 5, 19);
INSERT INTO `auth_group_permissions` VALUES (72, 5, 20);
INSERT INTO `auth_group_permissions` VALUES (73, 5, 21);
INSERT INTO `auth_group_permissions` VALUES (74, 5, 22);
INSERT INTO `auth_group_permissions` VALUES (75, 5, 23);
INSERT INTO `auth_group_permissions` VALUES (76, 5, 24);
INSERT INTO `auth_group_permissions` VALUES (77, 5, 25);
INSERT INTO `auth_group_permissions` VALUES (78, 5, 26);
INSERT INTO `auth_group_permissions` VALUES (79, 5, 27);
INSERT INTO `auth_group_permissions` VALUES (80, 5, 28);
INSERT INTO `auth_group_permissions` VALUES (81, 5, 29);
INSERT INTO `auth_group_permissions` VALUES (82, 5, 30);
INSERT INTO `auth_group_permissions` VALUES (83, 5, 31);
INSERT INTO `auth_group_permissions` VALUES (84, 5, 32);
INSERT INTO `auth_group_permissions` VALUES (85, 5, 33);
INSERT INTO `auth_group_permissions` VALUES (86, 5, 34);
INSERT INTO `auth_group_permissions` VALUES (87, 5, 35);
INSERT INTO `auth_group_permissions` VALUES (88, 5, 36);
INSERT INTO `auth_group_permissions` VALUES (89, 5, 37);
INSERT INTO `auth_group_permissions` VALUES (90, 5, 38);
INSERT INTO `auth_group_permissions` VALUES (91, 5, 39);
INSERT INTO `auth_group_permissions` VALUES (92, 5, 40);
INSERT INTO `auth_group_permissions` VALUES (93, 5, 41);
INSERT INTO `auth_group_permissions` VALUES (94, 5, 42);
INSERT INTO `auth_group_permissions` VALUES (95, 5, 43);
INSERT INTO `auth_group_permissions` VALUES (96, 5, 44);
INSERT INTO `auth_group_permissions` VALUES (97, 5, 45);
INSERT INTO `auth_group_permissions` VALUES (98, 5, 46);
INSERT INTO `auth_group_permissions` VALUES (99, 5, 47);
INSERT INTO `auth_group_permissions` VALUES (100, 5, 48);
INSERT INTO `auth_group_permissions` VALUES (101, 5, 49);
INSERT INTO `auth_group_permissions` VALUES (102, 5, 50);
INSERT INTO `auth_group_permissions` VALUES (103, 5, 51);
INSERT INTO `auth_group_permissions` VALUES (104, 5, 52);

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id` ASC, `codename` ASC) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, '可以增加登陆日志', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, '可以修改登陆日志', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, '可以删除登陆日志', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, '可以查看登陆日志', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, '可以添加权限', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, '可以修改权限', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, '可以删除权限', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, '可以查看权限', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, '可以添加分组', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, '可以修改分组', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, '可以删除分组', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, '可以查看分组', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, '可以添加内容类型', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, '可以修改内容类型', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, '可以删除内容类型', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, '可以查看内容类型', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, '可以添加会话', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, '可以修改会话', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, '可以删除会话', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, '可以查看会话', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, '可以添加获奖和荣誉', 6, 'add_award');
INSERT INTO `auth_permission` VALUES (22, '可以修改获奖和荣誉', 6, 'change_award');
INSERT INTO `auth_permission` VALUES (23, '可以删除获奖和荣誉', 6, 'delete_award');
INSERT INTO `auth_permission` VALUES (24, '可以查看获奖和荣誉', 6, 'view_award');
INSERT INTO `auth_permission` VALUES (25, '可以添加招聘广告', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, '可以修改招聘广告', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, '可以删除招聘广告', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, '可以查看招聘广告', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, '可以添加简历', 8, 'add_resume');
INSERT INTO `auth_permission` VALUES (30, '可以修改简历', 8, 'change_resume');
INSERT INTO `auth_permission` VALUES (31, '可以删除简历', 8, 'delete_resume');
INSERT INTO `auth_permission` VALUES (32, '可以查看简历', 8, 'view_resume');
INSERT INTO `auth_permission` VALUES (33, '可以添加新闻', 9, 'add_mynew');
INSERT INTO `auth_permission` VALUES (34, '可以修改新闻', 9, 'change_mynew');
INSERT INTO `auth_permission` VALUES (35, '可以删除新闻', 9, 'delete_mynew');
INSERT INTO `auth_permission` VALUES (36, '可以查看新闻', 9, 'view_mynew');
INSERT INTO `auth_permission` VALUES (37, '可以添加产品', 10, 'add_product');
INSERT INTO `auth_permission` VALUES (38, '可以修改产品', 10, 'change_product');
INSERT INTO `auth_permission` VALUES (39, '可以删除产品', 10, 'delete_product');
INSERT INTO `auth_permission` VALUES (40, '可以查看产品', 10, 'view_product');
INSERT INTO `auth_permission` VALUES (41, '可以添加产品图片', 11, 'add_productimg');
INSERT INTO `auth_permission` VALUES (42, '可以修改产品图片', 11, 'change_productimg');
INSERT INTO `auth_permission` VALUES (43, '可以删除产品图片', 11, 'delete_productimg');
INSERT INTO `auth_permission` VALUES (44, '可以查看产品图片', 11, 'view_productimg');
INSERT INTO `auth_permission` VALUES (45, '可以添加资料', 12, 'add_doc');
INSERT INTO `auth_permission` VALUES (46, '可以修改资料', 12, 'change_doc');
INSERT INTO `auth_permission` VALUES (47, '可以删除资料', 12, 'delete_doc');
INSERT INTO `auth_permission` VALUES (48, '可以查看资料', 12, 'view_doc');
INSERT INTO `auth_permission` VALUES (49, '可以添加员工', 13, 'add_employee');
INSERT INTO `auth_permission` VALUES (50, '可以修改员工', 13, 'change_employee');
INSERT INTO `auth_permission` VALUES (51, '可以删除员工', 13, 'delete_employee');
INSERT INTO `auth_permission` VALUES (52, '可以查看员工', 13, 'view_employee');

-- ----------------------------
-- Table structure for contactapp_ad
-- ----------------------------
DROP TABLE IF EXISTS `contactapp_ad`;
CREATE TABLE `contactapp_ad`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publishDate` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contactapp_ad
-- ----------------------------

-- ----------------------------
-- Table structure for contactapp_resume
-- ----------------------------
DROP TABLE IF EXISTS `contactapp_resume`;
CREATE TABLE `contactapp_resume`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth` date NOT NULL,
  `edu` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `school` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `major` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `publishDate` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contactapp_resume
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id` ASC) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_employees_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_employees_id` FOREIGN KEY (`user_id`) REFERENCES `employees` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_chk_1` CHECK (`action_flag` >= 0)
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2025-12-20 08:19:43.256728', '1', '缪琳姣 (202308241211)', 2, '[{\"changed\": {\"fields\": [\"\\u5458\\u5de5\\u5de5\\u53f7\", \"First name\", \"Last name\", \"\\u8054\\u7cfb\\u7535\\u8bdd\", \"\\u804c\\u4f4d\", \"\\u5165\\u804c\\u65e5\\u671f\", \"\\u53ef\\u7ba1\\u7406\\u7f51\\u7ad9\\u5185\\u5bb9\", \"\\u53ef\\u7ba1\\u7406\\u4ea7\\u54c1\\u4fe1\\u606f\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (2, '2025-12-20 08:20:46.424139', '1', '内容管理部', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (3, '2025-12-20 08:21:22.626854', '2', '产品管理部', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (4, '2025-12-20 08:21:51.271184', '3', '新闻编辑部', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (5, '2025-12-20 08:22:35.663855', '4', '人事行政部', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (6, '2025-12-20 08:22:56.368503', '5', '技术维护部', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (7, '2025-12-20 08:23:17.025667', '1', '缪琳姣 (202308241211)', 2, '[{\"changed\": {\"fields\": [\"\\u6240\\u5c5e\\u90e8\\u95e8\", \"Groups\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (8, '2025-12-20 08:23:44.065965', '1', '缪琳姣 (202308241211)', 2, '[{\"changed\": {\"fields\": [\"\\u6240\\u5c5e\\u90e8\\u95e8\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (9, '2025-12-20 08:23:51.953710', '1', 'Award object (1)', 1, '[{\"added\": {}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (10, '2025-12-20 08:24:04.644306', '1', 'Award object (1)', 3, '', 6, 1);
INSERT INTO `django_admin_log` VALUES (11, '2025-12-20 08:24:36.077837', '1', '缪琳姣 (202308241211)', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (12, '2025-12-20 08:24:53.754640', '1', '缪琳姣 (202308241211)', 2, '[{\"changed\": {\"fields\": [\"\\u6240\\u5c5e\\u90e8\\u95e8\", \"Groups\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (13, '2025-12-20 09:08:32.957771', '2', ' (202312345678)', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (14, '2025-12-20 09:09:05.937857', '2', ' (202312345678)', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (15, '2025-12-20 09:09:24.202193', '1', '1', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (16, '2025-12-20 09:09:38.334900', '1', '1', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (17, '2025-12-20 09:10:41.542017', '2', ' (202312345678)', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (18, '2025-12-20 09:11:06.394831', '2', ' (202312345678)', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (19, '2025-12-20 09:12:21.283821', '2', ' (202312345678)', 2, '[{\"changed\": {\"fields\": [\"Groups\", \"\\u53ef\\u7ba1\\u7406\\u4ea7\\u54c1\\u4fe1\\u606f\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (20, '2025-12-20 09:12:59.299853', '2', ' (202312345678)', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\", \"\\u53ef\\u7ba1\\u7406\\u4ea7\\u54c1\\u4fe1\\u606f\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (21, '2025-12-20 09:22:39.311376', '2', ' (202312345678)', 2, '[{\"changed\": {\"fields\": [\"\\u5728\\u804c\\u72b6\\u6001\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (22, '2025-12-20 11:32:04.137525', '1', '缪琳姣 (202308241211)', 2, '[{\"changed\": {\"fields\": [\"\\u6240\\u5c5e\\u90e8\\u95e8\", \"Groups\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (23, '2025-12-20 11:32:34.979673', '1', '缪琳姣 (202308241211)', 2, '[{\"changed\": {\"fields\": [\"Superuser status\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (24, '2025-12-20 11:33:07.310941', '1', '缪琳姣 (202308241211)', 2, '[{\"changed\": {\"fields\": [\"\\u6240\\u5c5e\\u90e8\\u95e8\", \"Superuser status\", \"Groups\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (25, '2025-12-20 11:55:52.198555', '2', ' (202312345678)', 2, '[{\"changed\": {\"fields\": [\"\\u5728\\u804c\\u72b6\\u6001\", \"Staff status\", \"Superuser status\", \"Groups\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (26, '2025-12-22 08:23:53.058243', '1', '苏暖暖', 2, '[{\"changed\": {\"fields\": [\"\\u9762\\u8bd5\\u6210\\u7ee9\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (27, '2025-12-22 14:04:58.962977', '8', '苏暖暖', 3, '', 8, 1);
INSERT INTO `django_admin_log` VALUES (28, '2025-12-22 14:05:04.784961', '7', '苏暖暖', 3, '', 8, 1);
INSERT INTO `django_admin_log` VALUES (29, '2025-12-22 14:05:09.336451', '6', '苏暖暖', 3, '', 8, 1);
INSERT INTO `django_admin_log` VALUES (30, '2025-12-22 14:05:13.520732', '5', '苏暖暖', 3, '', 8, 1);
INSERT INTO `django_admin_log` VALUES (31, '2025-12-22 14:05:17.463030', '4', '苏暖暖', 3, '', 8, 1);
INSERT INTO `django_admin_log` VALUES (32, '2025-12-22 14:05:21.169661', '3', '苏暖暖', 3, '', 8, 1);
INSERT INTO `django_admin_log` VALUES (33, '2025-12-22 14:05:30.342215', '1', '苏暖暖', 3, '', 8, 1);
INSERT INTO `django_admin_log` VALUES (34, '2025-12-22 14:05:35.725101', '2', '张三', 3, '', 8, 1);
INSERT INTO `django_admin_log` VALUES (35, '2025-12-22 14:37:02.545135', '2', '智能清洁助手 Alpha', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"\\u4ea7\\u54c1\\u56fe\\u7247\", \"object\": \"ProductImg object (1)\"}}, {\"added\": {\"name\": \"\\u4ea7\\u54c1\\u56fe\\u7247\", \"object\": \"ProductImg object (2)\"}}, {\"added\": {\"name\": \"\\u4ea7\\u54c1\\u56fe\\u7247\", \"object\": \"ProductImg object (3)\"}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (36, '2025-12-22 14:40:18.205449', '3', '陪伴型机器人 Buddy', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"\\u4ea7\\u54c1\\u56fe\\u7247\", \"object\": \"ProductImg object (4)\"}}, {\"added\": {\"name\": \"\\u4ea7\\u54c1\\u56fe\\u7247\", \"object\": \"ProductImg object (5)\"}}, {\"added\": {\"name\": \"\\u4ea7\\u54c1\\u56fe\\u7247\", \"object\": \"ProductImg object (6)\"}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (37, '2025-12-22 14:45:29.849198', '4', '厨房料理机器人 ChefBot', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"\\u4ea7\\u54c1\\u56fe\\u7247\", \"object\": \"ProductImg object (7)\"}}, {\"added\": {\"name\": \"\\u4ea7\\u54c1\\u56fe\\u7247\", \"object\": \"ProductImg object (8)\"}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (38, '2025-12-22 14:48:17.507469', '5', '全景云台摄像头 360View', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"\\u4ea7\\u54c1\\u56fe\\u7247\", \"object\": \"ProductImg object (9)\"}}, {\"added\": {\"name\": \"\\u4ea7\\u54c1\\u56fe\\u7247\", \"object\": \"ProductImg object (10)\"}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (39, '2025-12-22 14:50:54.624834', '6', '零售客流分析方案 ShopInsight', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"\\u4ea7\\u54c1\\u56fe\\u7247\", \"object\": \"ProductImg object (11)\"}}, {\"added\": {\"name\": \"\\u4ea7\\u54c1\\u56fe\\u7247\", \"object\": \"ProductImg object (12)\"}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (40, '2025-12-22 14:54:28.914724', '1', '智能清洁助手Alpha正式量产上市，首月销量突破10万台', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (41, '2025-12-22 14:57:40.799542', '2', '公司与XX大学AI实验室达成战略合作，共建“家庭服务机器人联合研究中心”', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (42, '2025-12-22 14:58:06.728944', '3', '公司荣获“2025年度科技创新企业”称号', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (43, '2025-12-22 14:58:44.717209', '4', '新一代人脸识别门禁系统FaceAccess Pro发布，识别速度提升至0.2秒', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (44, '2025-12-22 14:59:13.105085', '5', '公司启动“科技向善”公益计划，向乡村学校捐赠智能安防设备', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (45, '2025-12-22 15:06:16.766184', '6', '2025全球家用机器人市场规模预计突破800亿美元，服务型机器人成新增长点', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (46, '2025-12-22 15:06:38.826599', '7', 'AI视觉技术再突破：轻量化人脸识别模型可部署于边缘设备', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (47, '2025-12-22 15:07:03.501005', '8', '智慧城市建设加速，智能监控系统成为“城市大脑”重要组成部分', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (48, '2025-12-22 15:07:39.855441', '9', '关于公司2025年五一劳动节放假安排的通知', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (49, '2025-12-22 15:08:09.057781', '10', '关于开展2025年度“安全生产月”活动的通知', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (50, '2025-12-22 15:08:34.532513', '11', '关于启用新版企业邮箱系统的通知', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (51, '2025-12-22 15:13:30.399802', '1', '家用机器人产品全系手册（2025版）', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (52, '2025-12-22 15:13:48.221943', '2', '智能监控系统解决方案图册', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (53, '2025-12-22 15:14:05.866977', '3', '人脸识别解决方案白皮书', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (54, '2025-12-22 15:14:27.694488', '4', '产品技术规格书（技术版）', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (55, '2025-12-22 15:14:44.600900', '5', '智能清洁助手Alpha用户操作手册', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (56, '2025-12-22 15:15:01.861443', '6', '人脸识别门禁系统安装与配置指南', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (57, '2025-12-22 15:15:22.971541', '7', '智能监控摄像头手机APP使用教程', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (58, '2025-12-22 15:15:38.471769', '8', '2025年家用服务机器人行业趋势报告', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (59, '2025-12-22 15:15:53.547141', '9', '智能安防技术在智慧城市中的应用案例集', 1, '[{\"added\": {}}]', 12, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label` ASC, `model` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (6, 'aboutApp', 'award');
INSERT INTO `django_content_type` VALUES (13, 'accounts', 'employee');
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (7, 'contactApp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'contactApp', 'resume');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (9, 'newsApp', 'mynew');
INSERT INTO `django_content_type` VALUES (10, 'productsApp', 'product');
INSERT INTO `django_content_type` VALUES (11, 'productsApp', 'productimg');
INSERT INTO `django_content_type` VALUES (12, 'serviceApp', 'doc');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'aboutApp', '0001_initial', '2025-12-20 08:16:46.694958');
INSERT INTO `django_migrations` VALUES (2, 'aboutApp', '0002_alter_award_options_alter_award_description_and_more', '2025-12-20 08:16:46.713960');
INSERT INTO `django_migrations` VALUES (3, 'contenttypes', '0001_initial', '2025-12-20 08:16:46.746962');
INSERT INTO `django_migrations` VALUES (4, 'contenttypes', '0002_remove_content_type_name', '2025-12-20 08:16:46.845319');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0001_initial', '2025-12-20 08:16:47.102736');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2025-12-20 08:16:47.168740');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0003_alter_user_email_max_length', '2025-12-20 08:16:47.175732');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0004_alter_user_username_opts', '2025-12-20 08:16:47.182731');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0005_alter_user_last_login_null', '2025-12-20 08:16:47.189470');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0006_require_contenttypes_0002', '2025-12-20 08:16:47.192478');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2025-12-20 08:16:47.198468');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0008_alter_user_username_max_length', '2025-12-20 08:16:47.205476');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0009_alter_user_last_name_max_length', '2025-12-20 08:16:47.211467');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0010_alter_group_name_max_length', '2025-12-20 08:16:47.228468');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0011_update_proxy_permissions', '2025-12-20 08:16:47.234465');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0012_alter_user_first_name_max_length', '2025-12-20 08:16:47.240534');
INSERT INTO `django_migrations` VALUES (17, 'accounts', '0001_initial', '2025-12-20 08:16:47.563337');
INSERT INTO `django_migrations` VALUES (18, 'accounts', '0002_employee_delete_customuser', '2025-12-20 08:16:48.005596');
INSERT INTO `django_migrations` VALUES (19, 'admin', '0001_initial', '2025-12-20 08:16:48.151039');
INSERT INTO `django_migrations` VALUES (20, 'admin', '0002_logentry_remove_auto_add', '2025-12-20 08:16:48.159017');
INSERT INTO `django_migrations` VALUES (21, 'admin', '0003_logentry_add_action_flag_choices', '2025-12-20 08:16:48.169024');
INSERT INTO `django_migrations` VALUES (22, 'contactApp', '0001_initial', '2025-12-20 08:16:48.184097');
INSERT INTO `django_migrations` VALUES (23, 'contactApp', '0002_resume', '2025-12-20 08:16:48.201355');
INSERT INTO `django_migrations` VALUES (24, 'contactApp', '0003_alter_ad_options_alter_resume_birth', '2025-12-20 08:16:48.207329');
INSERT INTO `django_migrations` VALUES (25, 'contactApp', '0004_alter_resume_birth', '2025-12-20 08:16:48.211329');
INSERT INTO `django_migrations` VALUES (26, 'contactApp', '0005_alter_resume_birth', '2025-12-20 08:16:48.216338');
INSERT INTO `django_migrations` VALUES (27, 'contactApp', '0006_alter_resume_birth', '2025-12-20 08:16:48.221328');
INSERT INTO `django_migrations` VALUES (28, 'newsApp', '0001_initial', '2025-12-20 08:16:48.238348');
INSERT INTO `django_migrations` VALUES (29, 'newsApp', '0002_mynew_photo', '2025-12-20 08:16:48.270331');
INSERT INTO `django_migrations` VALUES (30, 'productsApp', '0001_initial', '2025-12-20 08:16:48.352985');
INSERT INTO `django_migrations` VALUES (31, 'productsApp', '0002_alter_product_price', '2025-12-20 08:16:48.357974');
INSERT INTO `django_migrations` VALUES (32, 'serviceApp', '0001_initial', '2025-12-20 08:16:48.375973');
INSERT INTO `django_migrations` VALUES (33, 'sessions', '0001_initial', '2025-12-20 08:16:48.406131');
INSERT INTO `django_migrations` VALUES (34, 'accounts', '0003_remove_employee_can_manage_content_and_more', '2025-12-20 09:19:35.083965');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('0y9h8cd92593rkjocxu4t4a44sbg8q01', '.eJxVjEEOgjAQRe_StWkqTGnHpXvOQKbTGYsaSCisjHdXEha6_e-9_zIDbWsZtirLMGZzMWdz-t0S8UOmHeQ7TbfZ8jyty5jsrtiDVtvPWZ7Xw_07KFTLt45tVGw9SueAQhRVEMbGq0rmhOCc7zg0TCggToLjBB5QsvOg2qB5fwDvyzhV:1vXbzj:ez5rMWuoWEVrBP2XBc6t7ofumZEblu_7VAThmeCFB6A', '2026-01-05 09:14:23.856293');

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `employee_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hire_date` date NULL DEFAULT NULL,
  `is_active_employee` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE,
  UNIQUE INDEX `employee_id`(`employee_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES (1, 'pbkdf2_sha256$1000000$ECgjnij4I6aqYOpzoha67Z$DTDdE4TwDE/kHsbYspj6cVn8hJen7jjHBaDkGhogDpE=', '2025-12-22 09:14:23.853298', 1, 'miaolinjiao', '琳姣', '缪', '1718352874@qq.com', 1, 1, '2025-12-20 08:17:27.879154', '202308241211', 'tech', '18200445398', '打工人', '2025-12-20', 1);
INSERT INTO `employees` VALUES (2, 'pbkdf2_sha256$1000000$Oc4lH2aCQvcQpaBKFDrvsm$FDeVZNB9tcABEDluxuObu0XNPTvXtt5IbXBPy30nBqY=', '2025-12-20 09:12:29.413120', 0, 'nikki', '', '', '', 1, 1, '2025-12-20 09:08:32.276136', '202312345678', 'news', '', '', NULL, 1);

-- ----------------------------
-- Table structure for employees_groups
-- ----------------------------
DROP TABLE IF EXISTS `employees_groups`;
CREATE TABLE `employees_groups`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `employee_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `employees_groups_employee_id_group_id_5336bfa0_uniq`(`employee_id` ASC, `group_id` ASC) USING BTREE,
  INDEX `employees_groups_group_id_d3ba4566_fk_auth_group_id`(`group_id` ASC) USING BTREE,
  CONSTRAINT `employees_groups_employee_id_74c7e90a_fk_employees_id` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `employees_groups_group_id_d3ba4566_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employees_groups
-- ----------------------------
INSERT INTO `employees_groups` VALUES (6, 1, 5);
INSERT INTO `employees_groups` VALUES (7, 2, 3);

-- ----------------------------
-- Table structure for employees_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `employees_user_permissions`;
CREATE TABLE `employees_user_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `employee_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `employees_user_permissio_employee_id_permission_i_57969665_uniq`(`employee_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `employees_user_permi_permission_id_2f1d6c3a_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `employees_user_permi_permission_id_2f1d6c3a_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `employees_user_permissions_employee_id_7f6cfe34_fk_employees_id` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employees_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for newsapp_mynew
-- ----------------------------
DROP TABLE IF EXISTS `newsapp_mynew`;
CREATE TABLE `newsapp_mynew`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `newType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publishDate` datetime(6) NOT NULL,
  `views` int UNSIGNED NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  CONSTRAINT `newsapp_mynew_chk_1` CHECK (`views` >= 0)
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of newsapp_mynew
-- ----------------------------
INSERT INTO `newsapp_mynew` VALUES (1, '智能清洁助手Alpha正式量产上市，首月销量突破10万台', '<p>我们非常高兴地宣布，公司旗下首款全屋智能清洁机器人——Alpha，已于本月正式投入量产并全面上市。凭借其领先的路径规划算法、高效的清洁模式和智能语音交互功能，Alpha在预售阶段即获得热烈市场反响。据统计，上市首月销量已突破10万台，用户好评率达98.5%。Alpha的成功标志着公司在智能家居领域迈出了坚实一步，未来我们将继续推出更多人性化、高性价比的家用机器人产品。</p>', '企业要闻', '2025-04-20 14:52:00.000000', 0, 'news/展报1.jpg');
INSERT INTO `newsapp_mynew` VALUES (2, '公司与XX大学AI实验室达成战略合作，共建“家庭服务机器人联合研究中心”', '<p>为加速家用服务机器人的技术突破与场景落地，我司与XX大学人工智能国家重点实验室正式签署战略合作协议，共同成立“家庭服务机器人联合研究中心”。该中心将聚焦于机器人自主导航、多模态交互、情感计算等前沿方向，推动产学研深度融合，助力我司在智能机器人领域保持技术领先。</p>', '企业要闻', '2025-04-03 14:54:00.000000', 0, '');
INSERT INTO `newsapp_mynew` VALUES (3, '公司荣获“2025年度科技创新企业”称号', '<p>在近日举办的“2025中国科技产业峰会”上，我司凭借在智能硬件与AI解决方案方面的突出贡献，荣获“年度科技创新企业”称号。评委会特别认可了我司在人脸识别安防系统和智能监控产品中的技术突破与场景应用能力，这是对公司持续投入研发、推动行业进步的充分肯定。</p>', '企业要闻', '2025-12-22 14:57:00.000000', 0, '');
INSERT INTO `newsapp_mynew` VALUES (4, '新一代人脸识别门禁系统FaceAccess Pro发布，识别速度提升至0.2秒', '<p>公司正式发布升级版人脸识别门禁系统——FaceAccess Pro。该系统采用自研的第三代识别算法，识别速度提升至0.2秒，准确率高达99.98%，并新增口罩识别、体温检测等实用功能。目前已在国内多个智慧园区、高端写字楼项目中投入使用，获得客户一致好评。</p>', '企业要闻', '2025-07-09 14:58:00.000000', 0, 'news/全景云台摄像头2.png');
INSERT INTO `newsapp_mynew` VALUES (5, '公司启动“科技向善”公益计划，向乡村学校捐赠智能安防设备', '<p>为践行企业社会责任，公司正式启动“科技向善”公益计划，首批向贵州、甘肃等地的10所乡村学校捐赠自主研发的智能监控与人脸识别安防系统，助力校园安全管理升级。未来，公司将持续推进科技公益，让智能技术惠及更多人群。</p>', '企业要闻', '2025-05-08 14:58:00.000000', 0, '');
INSERT INTO `newsapp_mynew` VALUES (6, '2025全球家用机器人市场规模预计突破800亿美元，服务型机器人成新增长点', '<p>据国际机器人联合会（IFR）最新报告显示，随着人口老龄化与家庭智能化需求持续上升，全球家用机器人市场正迎来爆发式增长。预计到2025年底，市场规模将突破800亿美元，其中清洁、陪伴、烹饪等服务型机器人占比显著提升。中国作为全球最大的消费市场，正成为家用机器人创新与应用的前沿阵地。</p>', '行业新闻', '2025-03-15 15:03:00.000000', 0, 'news/展报3.png');
INSERT INTO `newsapp_mynew` VALUES (7, 'AI视觉技术再突破：轻量化人脸识别模型可部署于边缘设备', '<p>近日，国内某AI研究院发布一款轻量化人脸识别模型，体积仅为传统模型的1/5，却能在低算力边缘设备上实现高精度实时识别。该技术的突破，将为智能门禁、移动支付、物联网安防等领域带来更灵活、低成本的解决方案。</p>', '行业新闻', '2025-06-21 15:06:00.000000', 0, '');
INSERT INTO `newsapp_mynew` VALUES (8, '智慧城市建设加速，智能监控系统成为“城市大脑”重要组成部分', '<p>随着我国智慧城市试点范围不断扩大，智能监控系统正逐步从交通管理、公共安防向社区治理、环境监测等多维度延伸。行业专家指出，具备AI分析能力的智能摄像头已成为“城市大脑”的核心感知节点，未来将进一步提升城市运行效率与安全水平。</p>', '行业新闻', '2025-07-10 15:06:00.000000', 0, '');
INSERT INTO `newsapp_mynew` VALUES (9, '关于公司2025年五一劳动节放假安排的通知', '<p><span style=\"text-wrap-mode: nowrap;\">根据国家节假日安排，结合公司实际情况，现将2025年五一劳动节放假安排通知如下：</span></p><p><span style=\"text-wrap-mode: nowrap;\">放假时间：5月1日（星期四）至5月5日（星期一），共5天。</span></p><p><span style=\"text-wrap-mode: nowrap;\">4月27日（星期日）、5月10日（星期六）正常上班。</span></p><p><span style=\"text-wrap-mode: nowrap;\">请各部门提前安排好工作，做好节前安全检查。祝全体员工节日愉快！</span></p><p><br/></p>', '通知公告', '2025-04-25 15:07:00.000000', 1, '');
INSERT INTO `newsapp_mynew` VALUES (10, '关于开展2025年度“安全生产月”活动的通知', '<p>为强化全员安全意识，提升应急处置能力，公司决定将于5月在全公司范围内开展“安全生产月”活动。活动内容包括安全培训、消防演练、隐患排查等。请各部门积极响应，落实责任，共同营造安全、稳定的工作环境。</p>', '通知公告', '2025-04-20 15:07:00.000000', 0, '');
INSERT INTO `newsapp_mynew` VALUES (11, '关于启用新版企业邮箱系统的通知', '<p>为提高沟通效率与信息安全，公司将于2025年5月1日起正式启用新版企业邮箱系统。新旧系统切换期间，邮件收发可能短暂受影响，请提前做好工作安排。具体操作指南将于近期发布，敬请关注。</p>', '通知公告', '2025-04-15 15:08:00.000000', 0, '');

-- ----------------------------
-- Table structure for productsapp_product
-- ----------------------------
DROP TABLE IF EXISTS `productsapp_product`;
CREATE TABLE `productsapp_product`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `productType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(7, 1) NULL DEFAULT NULL,
  `publishDate` datetime(6) NOT NULL,
  `views` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  CONSTRAINT `productsapp_product_chk_1` CHECK (`views` >= 0)
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productsapp_product
-- ----------------------------
INSERT INTO `productsapp_product` VALUES (2, '智能清洁助手 Alpha', '全屋自动扫地、拖地、消毒，支持语音控制与智能路径规划，可自动倒垃圾。', '家用机器人', 298.0, '2024-08-02 14:33:00.000000', 2);
INSERT INTO `productsapp_product` VALUES (3, '陪伴型机器人 Buddy', '具备情感交互、语音聊天、儿童教育、老人陪伴、紧急呼叫等功能。', '家用机器人', 458.0, '2025-12-22 14:39:00.000000', 0);
INSERT INTO `productsapp_product` VALUES (4, '厨房料理机器人 ChefBot', '自动识别食材、推荐菜谱、辅助烹饪，支持联网更新食谱，语音交互操作。', '家用机器人', 1082.0, '2025-12-22 14:44:00.000000', 0);
INSERT INTO `productsapp_product` VALUES (5, '全景云台摄像头 360View', '360°旋转、4K高清、人形追踪、夜视增强、支持双向语音与哭声检测。', '智能监控', 255.0, '2025-12-22 14:47:00.000000', 0);
INSERT INTO `productsapp_product` VALUES (6, '零售客流分析方案 ShopInsight', '识别顾客属性（性别、年龄）、客流统计、热区分析、VIP识别，提升零售效率。', '人脸识别解决方案', 4500.0, '2025-12-22 14:50:00.000000', 0);

-- ----------------------------
-- Table structure for productsapp_productimg
-- ----------------------------
DROP TABLE IF EXISTS `productsapp_productimg`;
CREATE TABLE `productsapp_productimg`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `productsApp_producti_product_id_3a7a0e90_fk_productsA`(`product_id` ASC) USING BTREE,
  CONSTRAINT `productsApp_producti_product_id_3a7a0e90_fk_productsA` FOREIGN KEY (`product_id`) REFERENCES `productsapp_product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productsapp_productimg
-- ----------------------------
INSERT INTO `productsapp_productimg` VALUES (1, 'Product/智能清洁助手.png', 2);
INSERT INTO `productsapp_productimg` VALUES (2, 'Product/智能清洁助手2.png', 2);
INSERT INTO `productsapp_productimg` VALUES (3, 'Product/智能清洁助手3.png', 2);
INSERT INTO `productsapp_productimg` VALUES (4, 'Product/陪伴性机器人1.png', 3);
INSERT INTO `productsapp_productimg` VALUES (5, 'Product/陪伴性机器人2.png', 3);
INSERT INTO `productsapp_productimg` VALUES (6, 'Product/陪伴性机器人3.png', 3);
INSERT INTO `productsapp_productimg` VALUES (7, 'Product/厨房料理机器人1.png', 4);
INSERT INTO `productsapp_productimg` VALUES (8, 'Product/厨房料理机器人2.png', 4);
INSERT INTO `productsapp_productimg` VALUES (9, 'Product/全景云台摄像头1.png', 5);
INSERT INTO `productsapp_productimg` VALUES (10, 'Product/全景云台摄像头2.png', 5);
INSERT INTO `productsapp_productimg` VALUES (11, 'Product/零售客流分析方案1.png', 6);
INSERT INTO `productsapp_productimg` VALUES (12, 'Product/零售客流分析方案2.png', 6);

-- ----------------------------
-- Table structure for serviceapp_doc
-- ----------------------------
DROP TABLE IF EXISTS `serviceapp_doc`;
CREATE TABLE `serviceapp_doc`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publishDate` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of serviceapp_doc
-- ----------------------------
INSERT INTO `serviceapp_doc` VALUES (1, '家用机器人产品全系手册（2025版）', 'Service/附件6西华师范大学大学生创新创业训练计划项目结题报告书.docx', '2025-06-13 15:12:00.000000');
INSERT INTO `serviceapp_doc` VALUES (2, '智能监控系统解决方案图册', 'Service/附件2西华师范大学大学生创新训练计划2025年到期项目.xlsx', '2025-08-14 15:13:00.000000');
INSERT INTO `serviceapp_doc` VALUES (3, '人脸识别解决方案白皮书', 'Service/西华师范大学学生学业中期鉴定表2023级_2.docx', '2025-06-05 15:13:00.000000');
INSERT INTO `serviceapp_doc` VALUES (4, '产品技术规格书（技术版）', 'Service/头歌平台使用教程1.0.pdf', '2025-05-14 15:14:00.000000');
INSERT INTO `serviceapp_doc` VALUES (5, '智能清洁助手Alpha用户操作手册', 'Service/头歌平台使用教程2.0.pdf', '2025-04-09 15:14:00.000000');
INSERT INTO `serviceapp_doc` VALUES (6, '人脸识别门禁系统安装与配置指南', 'Service/服务器端.zip', '2025-07-18 15:14:00.000000');
INSERT INTO `serviceapp_doc` VALUES (7, '智能监控摄像头手机APP使用教程', 'Service/app.js', '2025-07-20 15:15:00.000000');
INSERT INTO `serviceapp_doc` VALUES (8, '2025年家用服务机器人行业趋势报告', 'Service/project.config.json', '2025-10-09 15:15:00.000000');
INSERT INTO `serviceapp_doc` VALUES (9, '智能安防技术在智慧城市中的应用案例集', 'Service/project.private.config.json', '2025-09-10 15:15:00.000000');

SET FOREIGN_KEY_CHECKS = 1;
