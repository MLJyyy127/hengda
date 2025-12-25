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

 Date: 20/12/2025 17:18:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
  `can_manage_content` tinyint(1) NOT NULL,
  `can_manage_products` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE,
  UNIQUE INDEX `employee_id`(`employee_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES (1, 'pbkdf2_sha256$1000000$ECgjnij4I6aqYOpzoha67Z$DTDdE4TwDE/kHsbYspj6cVn8hJen7jjHBaDkGhogDpE=', '2025-12-20 09:13:13.865075', 1, 'miaolinjiao', '琳姣', '缪', '1718352874@qq.com', 1, 1, '2025-12-20 08:17:27.879154', '202308241211', 'tech', '18200445398', '打工人', '2025-12-20', 1, 1, 1);
INSERT INTO `employees` VALUES (2, 'pbkdf2_sha256$1000000$Oc4lH2aCQvcQpaBKFDrvsm$FDeVZNB9tcABEDluxuObu0XNPTvXtt5IbXBPy30nBqY=', '2025-12-20 09:12:29.413120', 1, 'nikki', '', '', '', 0, 1, '2025-12-20 09:08:32.276136', '202312345678', 'news', '', '', NULL, 1, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
