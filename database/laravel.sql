/*
Navicat MySQL Data Transfer

Source Server         : 本地-Ubuntu16
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : laravel

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-09-05 16:23:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '首页', 'fa-bar-chart', '/', null, '2018-06-08 09:34:25');
INSERT INTO `admin_menu` VALUES ('2', '0', '3', '系统设置', 'fa-gear', null, null, '2018-06-08 09:40:52');
INSERT INTO `admin_menu` VALUES ('3', '2', '4', '用户', 'fa-users', 'auth/users', null, '2018-06-08 09:40:52');
INSERT INTO `admin_menu` VALUES ('4', '2', '5', '角色', 'fa-user', 'auth/roles', null, '2018-06-08 09:40:52');
INSERT INTO `admin_menu` VALUES ('5', '2', '6', '权限', 'fa-ban', 'auth/permissions', null, '2018-06-08 09:40:52');
INSERT INTO `admin_menu` VALUES ('6', '2', '7', '菜单', 'fa-bars', 'auth/menu', null, '2018-06-08 09:40:52');
INSERT INTO `admin_menu` VALUES ('7', '2', '8', '操作日志', 'fa-history', 'auth/logs', null, '2018-06-08 09:40:52');
INSERT INTO `admin_menu` VALUES ('8', '0', '2', '事件管理', 'fa-tasks', null, '2018-06-08 09:40:38', '2018-06-08 10:47:30');
INSERT INTO `admin_menu` VALUES ('9', '8', '0', '新建事件', 'fa-arrow-circle-right', '/events/create', '2018-06-08 09:41:35', '2018-06-08 10:49:40');
INSERT INTO `admin_menu` VALUES ('10', '8', '0', '事件列表', 'fa-align-left', null, '2018-06-08 09:42:58', '2018-06-08 09:42:58');
INSERT INTO `admin_menu` VALUES ('11', '10', '0', '发起事件', 'fa-bell-o', null, '2018-06-08 09:44:12', '2018-06-08 09:44:36');
INSERT INTO `admin_menu` VALUES ('12', '10', '0', '未处理事件', 'fa-bullhorn', null, '2018-06-08 09:45:32', '2018-06-08 09:46:26');
INSERT INTO `admin_menu` VALUES ('13', '10', '0', '已处理事件', 'fa-check', null, '2018-06-08 09:46:15', '2018-06-08 09:46:15');
INSERT INTO `admin_menu` VALUES ('14', '8', '0', '事件分类', 'fa-navicon', null, '2018-06-08 09:49:13', '2018-06-08 09:49:13');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '192.168.66.89', '[]', '2018-04-16 15:09:27', '2018-04-16 15:09:27');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin', 'GET', '192.168.66.89', '[]', '2018-04-25 12:46:39', '2018-04-25 12:46:39');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin', 'GET', '192.168.66.89', '[]', '2018-05-04 21:33:25', '2018-05-04 21:33:25');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin/auth/permissions', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-05-04 21:33:30', '2018-05-04 21:33:30');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/permissions/create', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-05-04 21:33:40', '2018-05-04 21:33:40');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/permissions', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-05-04 21:33:45', '2018-05-04 21:33:45');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/auth/roles', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-05-04 21:34:04', '2018-05-04 21:34:04');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/auth/roles/create', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-05-04 21:34:08', '2018-05-04 21:34:08');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-05-04 21:52:44', '2018-05-04 21:52:44');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-05-04 21:52:56', '2018-05-04 21:52:56');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin', 'GET', '192.168.66.89', '[]', '2018-05-04 22:12:37', '2018-05-04 22:12:37');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/roles', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-05-04 22:41:45', '2018-05-04 22:41:45');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/roles', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"page:1\"}', '2018-05-04 22:41:53', '2018-05-04 22:41:53');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin', 'GET', '192.168.66.89', '[]', '2018-06-01 16:29:39', '2018-06-01 16:29:39');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-01 16:29:50', '2018-06-01 16:29:50');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-01 16:30:19', '2018-06-01 16:30:19');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/roles', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-01 16:32:30', '2018-06-01 16:32:30');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/roles/1/edit', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-01 16:32:35', '2018-06-01 16:32:35');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/users', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-01 20:49:25', '2018-06-01 20:49:25');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/users/1/edit', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-01 20:49:55', '2018-06-01 20:49:55');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/users', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-01 20:50:00', '2018-06-01 20:50:00');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/users', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"page:1\"}', '2018-06-01 20:51:34', '2018-06-01 20:51:34');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/users', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-01 22:24:03', '2018-06-01 22:24:03');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/users/1/edit', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-01 22:24:07', '2018-06-01 22:24:07');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin', 'GET', '192.168.66.89', '[]', '2018-06-08 08:57:30', '2018-06-08 08:57:30');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:00:36', '2018-06-08 09:00:36');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/auth/permissions', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:00:42', '2018-06-08 09:00:42');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/auth/roles', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:00:45', '2018-06-08 09:00:45');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/auth/roles/create', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:00:48', '2018-06-08 09:00:48');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/auth/permissions', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:01:31', '2018-06-08 09:01:31');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/auth/roles', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:01:42', '2018-06-08 09:01:42');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/auth/roles/create', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:01:48', '2018-06-08 09:01:48');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:30:07', '2018-06-08 09:30:07');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:34:13', '2018-06-08 09:34:13');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/menu/1/edit', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:34:17', '2018-06-08 09:34:17');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/menu/1', 'PUT', '192.168.66.89', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/abc.test\\/admin\\/auth\\/menu\"}', '2018-06-08 09:34:25', '2018-06-08 09:34:25');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:34:26', '2018-06-08 09:34:26');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:34:29', '2018-06-08 09:34:29');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/menu/3/edit', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:34:37', '2018-06-08 09:34:37');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/auth/menu/3', 'PUT', '192.168.66.89', '{\"parent_id\":\"2\",\"title\":\"\\u7528\\u6237\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/abc.test\\/admin\\/auth\\/menu\"}', '2018-06-08 09:34:44', '2018-06-08 09:34:44');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:34:44', '2018-06-08 09:34:44');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/auth/menu/4/edit', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:35:26', '2018-06-08 09:35:26');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/auth/menu/4', 'PUT', '192.168.66.89', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/abc.test\\/admin\\/auth\\/menu\"}', '2018-06-08 09:35:32', '2018-06-08 09:35:32');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:35:33', '2018-06-08 09:35:33');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/auth/menu/5/edit', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:35:36', '2018-06-08 09:35:36');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/auth/menu/5', 'PUT', '192.168.66.89', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/abc.test\\/admin\\/auth\\/menu\"}', '2018-06-08 09:35:42', '2018-06-08 09:35:42');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:35:42', '2018-06-08 09:35:42');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/auth/menu/6/edit', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:35:45', '2018-06-08 09:35:45');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/auth/menu/6', 'PUT', '192.168.66.89', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/abc.test\\/admin\\/auth\\/menu\"}', '2018-06-08 09:35:50', '2018-06-08 09:35:50');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:35:51', '2018-06-08 09:35:51');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:35:54', '2018-06-08 09:35:54');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/auth/menu/7', 'PUT', '192.168.66.89', '{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/abc.test\\/admin\\/auth\\/menu\"}', '2018-06-08 09:36:01', '2018-06-08 09:36:01');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:36:02', '2018-06-08 09:36:02');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:36:06', '2018-06-08 09:36:06');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/menu/2/edit', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:36:11', '2018-06-08 09:36:11');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/auth/menu/2', 'PUT', '192.168.66.89', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u8bbe\\u7f6e\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/abc.test\\/admin\\/auth\\/menu\"}', '2018-06-08 09:36:28', '2018-06-08 09:36:28');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:36:29', '2018-06-08 09:36:29');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:36:34', '2018-06-08 09:36:34');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/auth/menu/2/edit', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:39:13', '2018-06-08 09:39:13');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/auth/menu/2', 'PUT', '192.168.66.89', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u8bbe\\u7f6e\",\"icon\":\"fa-gear\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/abc.test\\/admin\\/auth\\/menu\"}', '2018-06-08 09:40:15', '2018-06-08 09:40:15');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:40:15', '2018-06-08 09:40:15');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:40:19', '2018-06-08 09:40:19');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/auth/menu', 'POST', '192.168.66.89', '{\"parent_id\":\"0\",\"title\":\"\\u4e8b\\u4ef6\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\"}', '2018-06-08 09:40:38', '2018-06-08 09:40:38');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:40:38', '2018-06-08 09:40:38');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:40:44', '2018-06-08 09:40:44');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/auth/menu', 'POST', '192.168.66.89', '{\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2018-06-08 09:40:52', '2018-06-08 09:40:52');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:40:52', '2018-06-08 09:40:52');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:40:54', '2018-06-08 09:40:54');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/auth/menu', 'POST', '192.168.66.89', '{\"parent_id\":\"0\",\"title\":\"\\u65b0\\u5efa\\u4e8b\\u4ef6\",\"icon\":\"fa-arrow-circle-right\",\"uri\":null,\"roles\":[null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\"}', '2018-06-08 09:41:34', '2018-06-08 09:41:34');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:41:35', '2018-06-08 09:41:35');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/auth/menu/9/edit', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:41:47', '2018-06-08 09:41:47');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/auth/menu/9', 'PUT', '192.168.66.89', '{\"parent_id\":\"8\",\"title\":\"\\u65b0\\u5efa\\u4e8b\\u4ef6\",\"icon\":\"fa-arrow-circle-right\",\"uri\":null,\"roles\":[null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/abc.test\\/admin\\/auth\\/menu\"}', '2018-06-08 09:41:55', '2018-06-08 09:41:55');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:41:56', '2018-06-08 09:41:56');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:42:01', '2018-06-08 09:42:01');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/auth/menu', 'POST', '192.168.66.89', '{\"parent_id\":\"8\",\"title\":\"\\u4e8b\\u4ef6\\u5217\\u8868\",\"icon\":\"fa-align-left\",\"uri\":null,\"roles\":[null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\"}', '2018-06-08 09:42:58', '2018-06-08 09:42:58');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:42:59', '2018-06-08 09:42:59');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/auth/menu', 'POST', '192.168.66.89', '{\"parent_id\":\"0\",\"title\":\"\\u53d1\\u8d77\\u4e8b\\u4ef6\",\"icon\":\"fa-bell-o\",\"uri\":null,\"roles\":[null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\"}', '2018-06-08 09:44:11', '2018-06-08 09:44:11');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:44:12', '2018-06-08 09:44:12');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/auth/menu/11/edit', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:44:24', '2018-06-08 09:44:24');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/auth/menu/11', 'PUT', '192.168.66.89', '{\"parent_id\":\"10\",\"title\":\"\\u53d1\\u8d77\\u4e8b\\u4ef6\",\"icon\":\"fa-bell-o\",\"uri\":null,\"roles\":[null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/abc.test\\/admin\\/auth\\/menu\"}', '2018-06-08 09:44:36', '2018-06-08 09:44:36');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:44:36', '2018-06-08 09:44:36');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:44:41', '2018-06-08 09:44:41');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/auth/menu', 'POST', '192.168.66.89', '{\"parent_id\":\"10\",\"title\":\"\\u672a\\u5904\\u7406\",\"icon\":\"fa-bullhorn\",\"uri\":null,\"roles\":[null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\"}', '2018-06-08 09:45:32', '2018-06-08 09:45:32');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:45:33', '2018-06-08 09:45:33');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/auth/menu', 'POST', '192.168.66.89', '{\"parent_id\":\"10\",\"title\":\"\\u5df2\\u5904\\u7406\\u4e8b\\u4ef6\",\"icon\":\"fa-check\",\"uri\":null,\"roles\":[null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\"}', '2018-06-08 09:46:15', '2018-06-08 09:46:15');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:46:15', '2018-06-08 09:46:15');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/auth/menu/12/edit', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:46:19', '2018-06-08 09:46:19');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/auth/menu/12', 'PUT', '192.168.66.89', '{\"parent_id\":\"10\",\"title\":\"\\u672a\\u5904\\u7406\\u4e8b\\u4ef6\",\"icon\":\"fa-bullhorn\",\"uri\":null,\"roles\":[null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/abc.test\\/admin\\/auth\\/menu\"}', '2018-06-08 09:46:25', '2018-06-08 09:46:25');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:46:26', '2018-06-08 09:46:26');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:46:28', '2018-06-08 09:46:28');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/auth/menu', 'POST', '192.168.66.89', '{\"parent_id\":\"8\",\"title\":\"\\u4e8b\\u4ef6\\u5206\\u7c7b\",\"icon\":\"fa-navicon\",\"uri\":null,\"roles\":[null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\"}', '2018-06-08 09:49:12', '2018-06-08 09:49:12');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:49:13', '2018-06-08 09:49:13');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 09:49:16', '2018-06-08 09:49:16');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 09:49:30', '2018-06-08 09:49:30');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 10:15:45', '2018-06-08 10:15:45');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/auth/menu/9/edit', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 10:15:48', '2018-06-08 10:15:48');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/auth/menu/9', 'PUT', '192.168.66.89', '{\"parent_id\":\"8\",\"title\":\"\\u65b0\\u5efa\\u4e8b\\u4ef6\",\"icon\":\"fa-arrow-circle-right\",\"uri\":\"\\/event\\/create\",\"roles\":[null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/abc.test\\/admin\\/auth\\/menu\"}', '2018-06-08 10:16:46', '2018-06-08 10:16:46');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 10:16:47', '2018-06-08 10:16:47');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 10:16:50', '2018-06-08 10:16:50');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 10:21:42', '2018-06-08 10:21:42');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/auth/menu/9/edit', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 10:21:54', '2018-06-08 10:21:54');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/auth/menu/9/edit', 'GET', '192.168.66.89', '[]', '2018-06-08 10:30:47', '2018-06-08 10:30:47');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 10:31:00', '2018-06-08 10:31:00');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/auth/menu/9/edit', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 10:31:18', '2018-06-08 10:31:18');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/auth/users', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 10:31:49', '2018-06-08 10:31:49');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 10:31:56', '2018-06-08 10:31:56');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin', 'GET', '192.168.66.89', '[]', '2018-06-08 10:32:24', '2018-06-08 10:32:24');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin', 'GET', '192.168.66.89', '[]', '2018-06-08 10:32:55', '2018-06-08 10:32:55');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin', 'GET', '192.168.66.89', '[]', '2018-06-08 10:33:11', '2018-06-08 10:33:11');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin', 'GET', '192.168.66.89', '[]', '2018-06-08 10:35:00', '2018-06-08 10:35:00');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 10:46:13', '2018-06-08 10:46:13');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/auth/menu/8/edit', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 10:46:19', '2018-06-08 10:46:19');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/auth/menu/8', 'PUT', '192.168.66.89', '{\"parent_id\":\"0\",\"title\":\"\\u4e8b\\u4ef6\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":\"events\",\"roles\":[null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/abc.test\\/admin\\/auth\\/menu\"}', '2018-06-08 10:46:34', '2018-06-08 10:46:34');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 10:46:35', '2018-06-08 10:46:35');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 10:46:38', '2018-06-08 10:46:38');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/auth/menu/8/edit', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 10:47:05', '2018-06-08 10:47:05');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/auth/menu/8', 'PUT', '192.168.66.89', '{\"parent_id\":\"0\",\"title\":\"\\u4e8b\\u4ef6\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":\"\\/events\",\"roles\":[null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/abc.test\\/admin\\/auth\\/menu\"}', '2018-06-08 10:47:12', '2018-06-08 10:47:12');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 10:47:12', '2018-06-08 10:47:12');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 10:47:17', '2018-06-08 10:47:17');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/auth/menu/8/edit', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 10:47:24', '2018-06-08 10:47:24');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/auth/menu/8', 'PUT', '192.168.66.89', '{\"parent_id\":\"0\",\"title\":\"\\u4e8b\\u4ef6\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/abc.test\\/admin\\/auth\\/menu\"}', '2018-06-08 10:47:30', '2018-06-08 10:47:30');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 10:47:30', '2018-06-08 10:47:30');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 10:47:52', '2018-06-08 10:47:52');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin', 'GET', '192.168.66.89', '[]', '2018-06-08 10:49:16', '2018-06-08 10:49:16');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 10:49:21', '2018-06-08 10:49:21');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/auth/menu/9/edit', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 10:49:31', '2018-06-08 10:49:31');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/auth/menu/9', 'PUT', '192.168.66.89', '{\"parent_id\":\"8\",\"title\":\"\\u65b0\\u5efa\\u4e8b\\u4ef6\",\"icon\":\"fa-arrow-circle-right\",\"uri\":\"\\/events\\/create\",\"roles\":[null],\"_token\":\"oIWjjUqYBzsXsx4BPYLarx4qAVkpDjINreZvKqBe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/abc.test\\/admin\\/auth\\/menu\"}', '2018-06-08 10:49:40', '2018-06-08 10:49:40');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 10:49:41', '2018-06-08 10:49:41');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 10:50:27', '2018-06-08 10:50:27');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/events/create', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 10:50:31', '2018-06-08 10:50:31');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 10:50:32', '2018-06-08 10:50:32');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 10:51:24', '2018-06-08 10:51:24');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/events/create', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 10:51:29', '2018-06-08 10:51:29');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 10:51:30', '2018-06-08 10:51:30');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '[]', '2018-06-08 10:52:02', '2018-06-08 10:52:02');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 12:17:42', '2018-06-08 12:17:42');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 12:18:16', '2018-06-08 12:18:16');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 12:19:20', '2018-06-08 12:19:20');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 12:19:54', '2018-06-08 12:19:54');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 12:20:55', '2018-06-08 12:20:55');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 12:23:08', '2018-06-08 12:23:08');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 12:23:29', '2018-06-08 12:23:29');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 12:24:16', '2018-06-08 12:24:16');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 14:23:07', '2018-06-08 14:23:07');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 14:24:36', '2018-06-08 14:24:36');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 14:25:01', '2018-06-08 14:25:01');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 14:25:13', '2018-06-08 14:25:13');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 14:26:36', '2018-06-08 14:26:36');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 14:27:21', '2018-06-08 14:27:21');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 14:28:47', '2018-06-08 14:28:47');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 14:29:24', '2018-06-08 14:29:24');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 14:29:39', '2018-06-08 14:29:39');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/auth/login', 'GET', '192.168.66.89', '[]', '2018-06-08 14:32:31', '2018-06-08 14:32:31');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin', 'GET', '192.168.66.89', '[]', '2018-06-08 14:32:46', '2018-06-08 14:32:46');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 14:32:52', '2018-06-08 14:32:52');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/auth/menu', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 14:33:02', '2018-06-08 14:33:02');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/events/create', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 14:33:06', '2018-06-08 14:33:06');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 14:37:12', '2018-06-08 14:37:12');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 14:37:37', '2018-06-08 14:37:37');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 14:40:13', '2018-06-08 14:40:13');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 14:41:11', '2018-06-08 14:41:11');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 15:16:15', '2018-06-08 15:16:15');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 15:28:59', '2018-06-08 15:28:59');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 15:38:42', '2018-06-08 15:38:42');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 15:40:04', '2018-06-08 15:40:04');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 15:40:41', '2018-06-08 15:40:41');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/events/store', 'GET', '192.168.66.89', '[]', '2018-06-08 16:54:46', '2018-06-08 16:54:46');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/events/store', 'GET', '192.168.66.89', '[]', '2018-06-08 16:55:14', '2018-06-08 16:55:14');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 16:55:33', '2018-06-08 16:55:33');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/events/store', 'GET', '192.168.66.89', '[]', '2018-06-08 17:06:45', '2018-06-08 17:06:45');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/events', 'GET', '192.168.66.89', '[]', '2018-06-08 17:06:50', '2018-06-08 17:06:50');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/events', 'GET', '192.168.66.89', '[]', '2018-06-08 17:07:19', '2018-06-08 17:07:19');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin', 'GET', '192.168.66.89', '[]', '2018-06-08 17:08:31', '2018-06-08 17:08:31');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 17:08:34', '2018-06-08 17:08:34');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/events/create', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 17:08:38', '2018-06-08 17:08:38');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin', 'GET', '192.168.66.89', '[]', '2018-06-08 17:08:39', '2018-06-08 17:08:39');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 17:08:53', '2018-06-08 17:08:53');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/events/index', 'GET', '192.168.66.89', '[]', '2018-06-08 17:08:54', '2018-06-08 17:08:54');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/events/index', 'GET', '192.168.66.89', '[]', '2018-06-08 17:09:56', '2018-06-08 17:09:56');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 17:13:13', '2018-06-08 17:13:13');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 17:13:38', '2018-06-08 17:13:38');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/events/store', 'POST', '192.168.66.89', '{\"event_title\":\"ssss\",\"category_id\":\"0\",\"event_content\":\"ssss\",\"client_id\":\"\\u6cb3\\u5317\\u7701\\u59d4\",\"alarm_time\":null,\"ip\":null,\"degree\":null,\"_token\":\"o7qyaLvjhKVNMxvLmaEqcTmel3xDhFpW1MttzJni\"}', '2018-06-08 17:13:43', '2018-06-08 17:13:43');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 17:13:44', '2018-06-08 17:13:44');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/events/store', 'POST', '192.168.66.89', '{\"event_title\":\"ssss\",\"category_id\":\"0\",\"event_content\":\"ssss\",\"client_id\":\"1\",\"alarm_time\":null,\"ip\":null,\"degree\":null,\"_token\":\"o7qyaLvjhKVNMxvLmaEqcTmel3xDhFpW1MttzJni\"}', '2018-06-08 17:14:00', '2018-06-08 17:14:00');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 17:14:01', '2018-06-08 17:14:01');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/events/store', 'POST', '192.168.66.89', '{\"event_title\":\"ssss\",\"category_id\":\"0\",\"event_content\":\"ssss\",\"client_id\":\"1\",\"alarm_time\":\"2018-06-08\",\"ip\":\"192.168.1.1\",\"degree\":null,\"_token\":\"o7qyaLvjhKVNMxvLmaEqcTmel3xDhFpW1MttzJni\"}', '2018-06-08 17:14:13', '2018-06-08 17:14:13');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 17:14:14', '2018-06-08 17:14:14');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 17:15:00', '2018-06-08 17:15:00');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/events/store', 'POST', '192.168.66.89', '{\"event_title\":\"ssss\",\"category_id\":\"0\",\"event_content\":\"ssss\",\"client_id\":\"1\",\"alarm_time\":\"2018-06-08\",\"ip\":\"192.168.1.1\",\"degree\":\"1\",\"_token\":\"o7qyaLvjhKVNMxvLmaEqcTmel3xDhFpW1MttzJni\"}', '2018-06-08 17:15:13', '2018-06-08 17:15:13');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 17:15:14', '2018-06-08 17:15:14');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 17:17:02', '2018-06-08 17:17:02');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/events/store', 'POST', '192.168.66.89', '{\"event_title\":\"ssss\",\"category_id\":\"0\",\"event_content\":\"aaaa\",\"client_id\":\"1\",\"user_id\":\"1\",\"alarm_time\":\"2018-06-08\",\"ip\":\"192.168.1.1\",\"degree\":\"1\",\"_token\":\"o7qyaLvjhKVNMxvLmaEqcTmel3xDhFpW1MttzJni\"}', '2018-06-08 17:17:12', '2018-06-08 17:17:12');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/events/store', 'POST', '192.168.66.89', '{\"event_title\":\"ssss\",\"category_id\":\"0\",\"event_content\":\"aaaa\",\"client_id\":\"1\",\"user_id\":\"1\",\"alarm_time\":\"2018-06-08\",\"ip\":\"192.168.1.1\",\"degree\":\"1\",\"_token\":\"o7qyaLvjhKVNMxvLmaEqcTmel3xDhFpW1MttzJni\"}', '2018-06-08 17:20:09', '2018-06-08 17:20:09');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 17:21:58', '2018-06-08 17:21:58');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/events/store', 'POST', '192.168.66.89', '{\"event_title\":\"ssss\",\"category_id\":\"0\",\"event_content\":null,\"client_id\":\"1\",\"user_id\":\"1\",\"alarm_time\":\"2018-06-08\",\"ip\":\"192.168.1.1\",\"degree\":\"1\",\"_token\":\"o7qyaLvjhKVNMxvLmaEqcTmel3xDhFpW1MttzJni\"}', '2018-06-08 17:22:21', '2018-06-08 17:22:21');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 17:22:36', '2018-06-08 17:22:36');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 17:22:50', '2018-06-08 17:22:50');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 17:23:36', '2018-06-08 17:23:36');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 17:23:44', '2018-06-08 17:23:44');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin/events/store', 'POST', '192.168.66.89', '{\"event_title\":null,\"category_id\":\"0\",\"event_content\":null,\"client_id\":\"1\",\"user_id\":\"1\",\"alarm_time\":\"2018-06-07 08:25:00\",\"ip\":null,\"degree\":null,\"_token\":\"o7qyaLvjhKVNMxvLmaEqcTmel3xDhFpW1MttzJni\"}', '2018-06-08 17:24:17', '2018-06-08 17:24:17');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 17:36:12', '2018-06-08 17:36:12');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin/events/create', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-08 17:37:25', '2018-06-08 17:37:25');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 17:38:45', '2018-06-08 17:38:45');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 17:39:35', '2018-06-08 17:39:35');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 17:39:53', '2018-06-08 17:39:53');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 17:40:12', '2018-06-08 17:40:12');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/events/create', 'GET', '192.168.66.89', '[]', '2018-06-08 17:40:54', '2018-06-08 17:40:54');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin', 'GET', '192.168.66.89', '[]', '2018-06-11 08:33:32', '2018-06-11 08:33:32');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/events/create', 'GET', '192.168.66.89', '{\"_pjax\":\"#pjax-container\"}', '2018-06-11 08:33:38', '2018-06-11 08:33:38');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2018-04-16 14:59:22', '2018-04-16 14:59:22');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$1YcSGIJgi/073Mh1uKHZDOSmNU293p9kdF3MVU7XE.vbDImJcBZlm', 'Administrator', null, null, '2018-04-16 14:59:22', '2018-04-16 14:59:22');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `post_count` int(11) NOT NULL DEFAULT '0' COMMENT '帖子数',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '分享', '分享创造，分享发现', '0', null, null);
INSERT INTO `categories` VALUES ('2', '教程', '开发技巧、推荐扩展包等', '0', null, null);
INSERT INTO `categories` VALUES ('3', '问答', '请保持友善，互帮互助', '0', null, null);
INSERT INTO `categories` VALUES ('4', '公告', '站点公告', '0', null, null);

-- ----------------------------
-- Table structure for event_categories
-- ----------------------------
DROP TABLE IF EXISTS `event_categories`;
CREATE TABLE `event_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_categories_category_name_index` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of event_categories
-- ----------------------------
INSERT INTO `event_categories` VALUES ('1', '业务故障请求', '分享创造，分享发现', null, null);
INSERT INTO `event_categories` VALUES ('2', '机房环境故障请求', '开发技巧、推荐扩展包等', null, null);

-- ----------------------------
-- Table structure for events
-- ----------------------------
DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `alarm_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `degree` enum('I级(特别严重)','II级(严重)','III(较重)','IV级(一般)') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `events_user_id_index` (`user_id`),
  KEY `events_category_id_index` (`category_id`),
  KEY `events_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of events
-- ----------------------------
INSERT INTO `events` VALUES ('1', 'ssss', 'aaaa', '192.168.1.1', '1', '0', '1', '2018-06-08 00:00:00', 'I级(特别严重)', '2018-06-08 17:17:12', '2018-06-08 17:17:12');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` enum('avatar','topic') COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `images_user_id_index` (`user_id`),
  KEY `images_type_index` (`type`),
  KEY `images_path_index` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('1', '1', 'avatar', 'http://larabbs.test/uploads/images/avatars/201805/11/1_1526023486_WCC7TDhtfv.jpg', '2018-05-11 21:24:46', '2018-05-11 21:24:46');
INSERT INTO `images` VALUES ('2', '1', 'avatar', 'http://larabbs.test/uploads/images/avatars/201805/11/1_1526024975_mXgEXioNdW.jpg', '2018-05-11 21:49:35', '2018-05-11 21:49:35');
INSERT INTO `images` VALUES ('3', '74', 'avatar', 'http://larabbs.test/uploads/images/avatars/201805/22/74_1526979197_aJIPMNYqWw.jpg', '2018-05-22 22:53:18', '2018-05-22 22:53:18');

-- ----------------------------
-- Table structure for links
-- ----------------------------
DROP TABLE IF EXISTS `links`;
CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '资源的描述',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '资源的链接',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `links_title_index` (`title`),
  KEY `links_link_index` (`link`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of links
-- ----------------------------
INSERT INTO `links` VALUES ('1', '发个帖子', 'http://larabbs.test/topics/103/post-a-post', '2018-05-09 22:33:42', '2018-05-09 22:33:42');
INSERT INTO `links` VALUES ('2', 'Et impedit non explicabo vero ducimus officiis.', 'http://larabbs.test/topics/88', '2018-05-09 22:47:03', '2018-05-09 22:47:03');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO `migrations` VALUES ('37', '2014_10_12_000000_create_users_table', '2');
INSERT INTO `migrations` VALUES ('38', '2014_10_12_100000_create_password_resets_table', '2');
INSERT INTO `migrations` VALUES ('39', '2018_05_03_144844_add_avatar_and_introduction_to_users_table', '2');
INSERT INTO `migrations` VALUES ('40', '2018_05_04_095128_create_categories_table', '2');
INSERT INTO `migrations` VALUES ('41', '2018_05_04_100214_seed_categories_data', '2');
INSERT INTO `migrations` VALUES ('42', '2018_05_04_103715_create_topics_table', '2');
INSERT INTO `migrations` VALUES ('43', '2018_05_05_160938_create_failed_jobs_table', '2');
INSERT INTO `migrations` VALUES ('44', '2018_05_07_083817_create_replies_table', '2');
INSERT INTO `migrations` VALUES ('45', '2018_05_07_100902_create_notifications_table', '3');
INSERT INTO `migrations` VALUES ('46', '2018_05_07_101402_add_notification_count_to_users_table', '4');
INSERT INTO `migrations` VALUES ('47', '2018_05_08_140658_create_permission_tables', '5');
INSERT INTO `migrations` VALUES ('48', '2018_05_08_143940_seed_roles_and_permissions_data', '6');
INSERT INTO `migrations` VALUES ('49', '2018_05_09_162337_create_links_table', '7');
INSERT INTO `migrations` VALUES ('50', '2018_05_09_165308_add_references', '8');
INSERT INTO `migrations` VALUES ('51', '2018_05_10_094048_add_last_actived_at_to_users_table', '9');
INSERT INTO `migrations` VALUES ('52', '2018_05_10_162017_add_phone_to_users_table', '10');
INSERT INTO `migrations` VALUES ('53', '2018_05_11_092207_add_weixin_openid_to_users_table', '11');
INSERT INTO `migrations` VALUES ('54', '2018_05_11_150408_create_images_table', '12');
INSERT INTO `migrations` VALUES ('55', '2018_05_14_145049_add_registration_id_to_users_table', '13');
INSERT INTO `migrations` VALUES ('56', '2016_06_01_000001_create_oauth_auth_codes_table', '14');
INSERT INTO `migrations` VALUES ('57', '2016_06_01_000002_create_oauth_access_tokens_table', '14');
INSERT INTO `migrations` VALUES ('58', '2016_06_01_000003_create_oauth_refresh_tokens_table', '14');
INSERT INTO `migrations` VALUES ('59', '2016_06_01_000004_create_oauth_clients_table', '14');
INSERT INTO `migrations` VALUES ('60', '2016_06_01_000005_create_oauth_personal_access_clients_table', '14');
INSERT INTO `migrations` VALUES ('61', '2018_05_22_091842_add_weixin_session_key_to_users_table', '14');
INSERT INTO `migrations` VALUES ('62', '2018_06_08_111632_create_event_table', '15');
INSERT INTO `migrations` VALUES ('64', '2018_06_08_122726_create_event_categories_table', '16');
INSERT INTO `migrations` VALUES ('65', '2018_06_08_140623_seed_event_categories_data', '17');

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES ('1', '1', 'App\\Models\\User');
INSERT INTO `model_has_roles` VALUES ('2', '2', 'App\\Models\\User');

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) unsigned NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of notifications
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO `password_resets` VALUES ('550407948@qq.com', '$2y$10$/27yxi.54DZYY8l6O3VfxOmZCoecpjB8nD2TYwU9E8iWyoRSsRruS', '2018-05-07 20:39:56');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'manage_contents', 'web', '2018-05-08 21:40:09', '2018-05-08 21:40:09');
INSERT INTO `permissions` VALUES ('2', 'manage_users', 'web', '2018-05-08 21:40:09', '2018-05-08 21:40:09');
INSERT INTO `permissions` VALUES ('3', 'edit_settings', 'web', '2018-05-08 21:40:09', '2018-05-08 21:40:09');

-- ----------------------------
-- Table structure for replies
-- ----------------------------
DROP TABLE IF EXISTS `replies`;
CREATE TABLE `replies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `replies_topic_id_index` (`topic_id`),
  KEY `replies_user_id_index` (`user_id`),
  CONSTRAINT `replies_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE,
  CONSTRAINT `replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1087 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of replies
-- ----------------------------
INSERT INTO `replies` VALUES ('1', '66', '7', 'Error doloremque enim error animi.', '2018-04-11 04:49:45', '2018-04-11 04:49:45');
INSERT INTO `replies` VALUES ('2', '46', '2', 'Ut maiores est expedita tempora adipisci laborum.', '2018-04-16 07:38:21', '2018-04-16 07:38:21');
INSERT INTO `replies` VALUES ('3', '81', '2', 'Provident et libero eius odio.', '2018-04-30 18:21:40', '2018-04-30 18:21:40');
INSERT INTO `replies` VALUES ('4', '22', '8', 'Quo ullam et fugiat minima porro consequatur et quos.', '2018-04-20 21:41:17', '2018-04-20 21:41:17');
INSERT INTO `replies` VALUES ('5', '95', '9', 'Esse veniam facilis dignissimos molestiae placeat perferendis harum.', '2018-04-13 16:44:32', '2018-04-13 16:44:32');
INSERT INTO `replies` VALUES ('6', '84', '8', 'Velit et sit ex illum ut molestiae.', '2018-04-22 11:11:58', '2018-04-22 11:11:58');
INSERT INTO `replies` VALUES ('7', '18', '3', 'Laborum eos asperiores facere eligendi voluptatibus officiis.', '2018-04-14 08:43:28', '2018-04-14 08:43:28');
INSERT INTO `replies` VALUES ('8', '42', '8', 'Quisquam rerum ut et nulla incidunt voluptatum neque.', '2018-04-22 08:14:58', '2018-04-22 08:14:58');
INSERT INTO `replies` VALUES ('9', '48', '10', 'Rerum quae tempore doloribus iusto est.', '2018-05-06 21:06:53', '2018-05-06 21:06:53');
INSERT INTO `replies` VALUES ('10', '41', '1', 'Fugit et laborum sit possimus officiis.', '2018-05-03 06:17:42', '2018-05-03 06:17:42');
INSERT INTO `replies` VALUES ('11', '72', '6', 'Occaecati dignissimos et harum aliquam non est voluptas beatae.', '2018-04-21 20:05:23', '2018-04-21 20:05:23');
INSERT INTO `replies` VALUES ('12', '13', '6', 'Nobis consequuntur temporibus quasi quos optio et aut.', '2018-04-20 14:56:39', '2018-04-20 14:56:39');
INSERT INTO `replies` VALUES ('13', '25', '3', 'Vel aut veritatis nemo eum non.', '2018-04-07 20:31:41', '2018-04-07 20:31:41');
INSERT INTO `replies` VALUES ('14', '81', '8', 'Praesentium officia quae enim officiis.', '2018-04-30 23:19:32', '2018-04-30 23:19:32');
INSERT INTO `replies` VALUES ('15', '26', '3', 'Delectus tenetur dolores velit quia quis incidunt maxime ratione.', '2018-05-05 11:26:14', '2018-05-05 11:26:14');
INSERT INTO `replies` VALUES ('16', '57', '7', 'Vero rem reiciendis dicta porro dolor.', '2018-04-19 12:56:34', '2018-04-19 12:56:34');
INSERT INTO `replies` VALUES ('17', '62', '9', 'Reiciendis et occaecati asperiores voluptate odit.', '2018-05-05 01:23:10', '2018-05-05 01:23:10');
INSERT INTO `replies` VALUES ('18', '29', '5', 'Culpa quia fugiat quo ex voluptatibus sed.', '2018-04-21 04:00:57', '2018-04-21 04:00:57');
INSERT INTO `replies` VALUES ('19', '67', '5', 'Ipsum voluptate cum aut et illo iste dolorem.', '2018-04-09 11:42:33', '2018-04-09 11:42:33');
INSERT INTO `replies` VALUES ('20', '68', '4', 'Quia iusto asperiores in voluptatem fugit molestiae rerum distinctio.', '2018-04-14 20:11:44', '2018-04-14 20:11:44');
INSERT INTO `replies` VALUES ('21', '67', '5', 'Beatae aspernatur tempora aperiam ut iusto officiis voluptas.', '2018-04-09 22:04:30', '2018-04-09 22:04:30');
INSERT INTO `replies` VALUES ('22', '84', '10', 'Iure dolorum consequatur aut.', '2018-04-09 19:11:17', '2018-04-09 19:11:17');
INSERT INTO `replies` VALUES ('23', '58', '1', 'Quis provident eos earum optio dolores.', '2018-04-10 14:48:28', '2018-04-10 14:48:28');
INSERT INTO `replies` VALUES ('24', '97', '1', 'Quam quaerat fugit doloremque laboriosam iste totam ipsa aliquam.', '2018-05-06 06:30:41', '2018-05-06 06:30:41');
INSERT INTO `replies` VALUES ('25', '73', '2', 'Provident culpa ea deserunt natus numquam incidunt aut.', '2018-04-16 03:31:22', '2018-04-16 03:31:22');
INSERT INTO `replies` VALUES ('26', '29', '10', 'Inventore unde amet unde sit sed.', '2018-04-17 21:20:49', '2018-04-17 21:20:49');
INSERT INTO `replies` VALUES ('27', '60', '6', 'Et eum quia voluptatem sequi consectetur.', '2018-04-30 09:09:14', '2018-04-30 09:09:14');
INSERT INTO `replies` VALUES ('28', '74', '9', 'Repellat in optio voluptatibus ratione.', '2018-04-08 21:15:34', '2018-04-08 21:15:34');
INSERT INTO `replies` VALUES ('29', '8', '4', 'Et et perferendis dolore molestiae consectetur.', '2018-04-08 21:54:28', '2018-04-08 21:54:28');
INSERT INTO `replies` VALUES ('30', '98', '5', 'Cum nam fuga vel architecto.', '2018-04-09 16:27:35', '2018-04-09 16:27:35');
INSERT INTO `replies` VALUES ('31', '37', '5', 'Iusto odit quis ea dolores sit fugiat aspernatur.', '2018-04-24 10:59:06', '2018-04-24 10:59:06');
INSERT INTO `replies` VALUES ('32', '89', '6', 'Omnis repellat fuga quasi sint molestiae.', '2018-04-28 10:27:43', '2018-04-28 10:27:43');
INSERT INTO `replies` VALUES ('33', '58', '9', 'Atque atque impedit nemo fugit nihil asperiores expedita veniam.', '2018-05-04 16:19:15', '2018-05-04 16:19:15');
INSERT INTO `replies` VALUES ('34', '65', '4', 'Dolores rem sed porro optio aperiam.', '2018-04-24 19:24:45', '2018-04-24 19:24:45');
INSERT INTO `replies` VALUES ('35', '24', '2', 'Veniam aliquam et et qui.', '2018-04-18 19:03:13', '2018-04-18 19:03:13');
INSERT INTO `replies` VALUES ('36', '65', '8', 'Asperiores voluptatibus cum doloremque molestiae.', '2018-05-02 15:38:06', '2018-05-02 15:38:06');
INSERT INTO `replies` VALUES ('37', '23', '1', 'Vero delectus voluptatem eveniet suscipit.', '2018-05-06 10:52:59', '2018-05-06 10:52:59');
INSERT INTO `replies` VALUES ('38', '72', '2', 'Consequatur vel enim perferendis qui ut dolore.', '2018-04-29 23:45:16', '2018-04-29 23:45:16');
INSERT INTO `replies` VALUES ('39', '70', '7', 'Sed rerum nostrum molestias voluptatum voluptatem in.', '2018-04-30 08:45:18', '2018-04-30 08:45:18');
INSERT INTO `replies` VALUES ('40', '16', '5', 'Veniam culpa porro ea atque.', '2018-04-11 22:57:56', '2018-04-11 22:57:56');
INSERT INTO `replies` VALUES ('41', '81', '8', 'Et dolorum asperiores ipsum voluptas saepe.', '2018-04-20 07:58:42', '2018-04-20 07:58:42');
INSERT INTO `replies` VALUES ('42', '24', '8', 'Optio eligendi iusto sit ea.', '2018-04-25 06:58:24', '2018-04-25 06:58:24');
INSERT INTO `replies` VALUES ('43', '11', '10', 'Dolor tempora cumque hic deserunt deleniti.', '2018-05-05 03:10:08', '2018-05-05 03:10:08');
INSERT INTO `replies` VALUES ('44', '30', '7', 'Saepe et recusandae itaque cum.', '2018-05-02 14:43:23', '2018-05-02 14:43:23');
INSERT INTO `replies` VALUES ('45', '59', '7', 'Voluptas ut inventore fuga sed.', '2018-05-04 22:01:57', '2018-05-04 22:01:57');
INSERT INTO `replies` VALUES ('46', '10', '6', 'Quis totam voluptates voluptatibus aut molestiae rem.', '2018-05-03 11:55:44', '2018-05-03 11:55:44');
INSERT INTO `replies` VALUES ('47', '21', '10', 'Atque assumenda deleniti eius eius.', '2018-04-16 11:55:50', '2018-04-16 11:55:50');
INSERT INTO `replies` VALUES ('48', '71', '9', 'Amet fugit mollitia eaque non.', '2018-04-14 11:29:25', '2018-04-14 11:29:25');
INSERT INTO `replies` VALUES ('49', '88', '2', 'Reprehenderit autem dolores aut incidunt illum.', '2018-04-13 05:36:44', '2018-04-13 05:36:44');
INSERT INTO `replies` VALUES ('50', '7', '6', 'Sit nihil facilis mollitia veniam illum.', '2018-04-25 10:55:15', '2018-04-25 10:55:15');
INSERT INTO `replies` VALUES ('51', '27', '7', 'Ducimus voluptas qui doloribus molestiae autem.', '2018-04-10 04:20:54', '2018-04-10 04:20:54');
INSERT INTO `replies` VALUES ('52', '3', '4', 'Ut animi ut similique pariatur aperiam sapiente perferendis.', '2018-04-26 09:38:18', '2018-04-26 09:38:18');
INSERT INTO `replies` VALUES ('53', '16', '9', 'Dolores ut aut dignissimos id.', '2018-04-23 10:12:10', '2018-04-23 10:12:10');
INSERT INTO `replies` VALUES ('54', '89', '2', 'Eos eum rerum fuga quidem consequatur commodi.', '2018-04-25 17:49:27', '2018-04-25 17:49:27');
INSERT INTO `replies` VALUES ('55', '83', '2', 'Ratione et veniam sint non consequatur.', '2018-04-13 03:10:06', '2018-04-13 03:10:06');
INSERT INTO `replies` VALUES ('56', '73', '1', 'Sequi quaerat fugiat sit.', '2018-04-14 07:12:55', '2018-04-14 07:12:55');
INSERT INTO `replies` VALUES ('57', '95', '8', 'Dolorem provident qui et quia rerum ut qui minus.', '2018-05-06 07:37:20', '2018-05-06 07:37:20');
INSERT INTO `replies` VALUES ('58', '42', '3', 'Velit qui earum totam.', '2018-04-22 06:56:43', '2018-04-22 06:56:43');
INSERT INTO `replies` VALUES ('59', '40', '4', 'Non esse sed dolorem omnis libero quisquam officia.', '2018-04-23 03:08:24', '2018-04-23 03:08:24');
INSERT INTO `replies` VALUES ('60', '3', '7', 'Sunt beatae dolor est dignissimos qui.', '2018-04-28 19:35:31', '2018-04-28 19:35:31');
INSERT INTO `replies` VALUES ('61', '30', '7', 'Inventore dignissimos voluptatem quaerat ea.', '2018-04-12 06:36:32', '2018-04-12 06:36:32');
INSERT INTO `replies` VALUES ('62', '13', '5', 'Odio ut consectetur ullam repellendus dolor in libero.', '2018-04-08 13:25:51', '2018-04-08 13:25:51');
INSERT INTO `replies` VALUES ('63', '31', '2', 'Repudiandae laboriosam quod modi cupiditate doloremque.', '2018-05-04 02:06:42', '2018-05-04 02:06:42');
INSERT INTO `replies` VALUES ('64', '29', '2', 'Aut sit dolorem animi debitis inventore.', '2018-05-05 20:57:35', '2018-05-05 20:57:35');
INSERT INTO `replies` VALUES ('65', '2', '3', 'Ut officiis architecto rem voluptates quo id voluptatem eligendi.', '2018-04-21 18:34:05', '2018-04-21 18:34:05');
INSERT INTO `replies` VALUES ('66', '84', '8', 'Asperiores ea facere qui enim blanditiis at.', '2018-04-30 06:51:09', '2018-04-30 06:51:09');
INSERT INTO `replies` VALUES ('67', '95', '7', 'Nemo rem quo voluptas dignissimos libero fuga similique dignissimos.', '2018-04-14 16:54:15', '2018-04-14 16:54:15');
INSERT INTO `replies` VALUES ('68', '18', '5', 'Tenetur quod quae dicta.', '2018-04-08 02:36:34', '2018-04-08 02:36:34');
INSERT INTO `replies` VALUES ('69', '24', '9', 'Aut ut dolor iusto corrupti consequatur rerum.', '2018-04-17 12:18:58', '2018-04-17 12:18:58');
INSERT INTO `replies` VALUES ('70', '71', '9', 'Molestias fugit tempora corporis quis fugiat.', '2018-05-02 10:00:12', '2018-05-02 10:00:12');
INSERT INTO `replies` VALUES ('71', '44', '3', 'Itaque sapiente dolorem excepturi quia eaque nihil.', '2018-04-11 02:16:18', '2018-04-11 02:16:18');
INSERT INTO `replies` VALUES ('72', '12', '1', 'Non beatae voluptas dolor quibusdam molestiae.', '2018-04-22 02:42:15', '2018-04-22 02:42:15');
INSERT INTO `replies` VALUES ('73', '43', '8', 'Optio illum voluptatibus et ea possimus ut facilis.', '2018-05-04 01:28:09', '2018-05-04 01:28:09');
INSERT INTO `replies` VALUES ('74', '58', '2', 'Magnam ullam et aut voluptas facilis fuga.', '2018-05-01 21:29:26', '2018-05-01 21:29:26');
INSERT INTO `replies` VALUES ('75', '27', '8', 'Eum repellat et omnis.', '2018-04-08 01:06:57', '2018-04-08 01:06:57');
INSERT INTO `replies` VALUES ('76', '43', '3', 'Corporis officiis amet perspiciatis dignissimos et quisquam.', '2018-04-27 12:21:24', '2018-04-27 12:21:24');
INSERT INTO `replies` VALUES ('77', '6', '7', 'Id animi quam autem delectus sit eos.', '2018-04-22 22:54:42', '2018-04-22 22:54:42');
INSERT INTO `replies` VALUES ('78', '81', '3', 'Cupiditate rerum ut dolorem eos non.', '2018-04-27 02:38:40', '2018-04-27 02:38:40');
INSERT INTO `replies` VALUES ('79', '76', '1', 'Repellat esse illum similique.', '2018-04-09 23:16:12', '2018-04-09 23:16:12');
INSERT INTO `replies` VALUES ('80', '61', '10', 'Ipsam pariatur eius quisquam et placeat quam.', '2018-05-03 15:18:02', '2018-05-03 15:18:02');
INSERT INTO `replies` VALUES ('81', '37', '4', 'Non ut nisi inventore suscipit numquam.', '2018-04-15 12:34:14', '2018-04-15 12:34:14');
INSERT INTO `replies` VALUES ('82', '23', '3', 'Placeat dolores ullam minus enim occaecati molestiae.', '2018-04-29 03:16:37', '2018-04-29 03:16:37');
INSERT INTO `replies` VALUES ('83', '79', '5', 'Tenetur molestias nesciunt odio animi alias.', '2018-05-07 11:22:55', '2018-05-07 11:22:55');
INSERT INTO `replies` VALUES ('84', '20', '7', 'Ipsum voluptatum aperiam enim dolore corporis laborum voluptas.', '2018-05-02 19:58:39', '2018-05-02 19:58:39');
INSERT INTO `replies` VALUES ('85', '45', '7', 'Sed tempore inventore dolor voluptatem commodi.', '2018-04-22 03:28:46', '2018-04-22 03:28:46');
INSERT INTO `replies` VALUES ('86', '44', '10', 'Quidem adipisci voluptas natus dolor et.', '2018-04-14 15:07:21', '2018-04-14 15:07:21');
INSERT INTO `replies` VALUES ('87', '54', '9', 'Vitae repellendus esse quod est qui voluptatum vel.', '2018-04-28 23:54:01', '2018-04-28 23:54:01');
INSERT INTO `replies` VALUES ('89', '59', '5', 'Sed inventore consectetur quaerat.', '2018-04-11 06:06:32', '2018-04-11 06:06:32');
INSERT INTO `replies` VALUES ('90', '92', '1', 'Explicabo quia facere ab possimus excepturi totam adipisci.', '2018-04-15 22:44:38', '2018-04-15 22:44:38');
INSERT INTO `replies` VALUES ('91', '20', '6', 'Dolore animi incidunt sit velit et.', '2018-04-29 01:46:29', '2018-04-29 01:46:29');
INSERT INTO `replies` VALUES ('92', '58', '10', 'Qui animi in quia nemo nam.', '2018-04-07 19:17:12', '2018-04-07 19:17:12');
INSERT INTO `replies` VALUES ('93', '20', '9', 'Cum quisquam at enim vitae recusandae sit.', '2018-04-11 12:42:25', '2018-04-11 12:42:25');
INSERT INTO `replies` VALUES ('94', '16', '8', 'Est aut eaque odio magnam fugit minus.', '2018-04-17 12:10:55', '2018-04-17 12:10:55');
INSERT INTO `replies` VALUES ('95', '51', '5', 'Neque consectetur amet vel et voluptate quo praesentium.', '2018-04-28 20:47:42', '2018-04-28 20:47:42');
INSERT INTO `replies` VALUES ('96', '42', '2', 'Dolorem et libero perferendis ad.', '2018-04-10 13:22:36', '2018-04-10 13:22:36');
INSERT INTO `replies` VALUES ('97', '84', '4', 'Laborum quaerat voluptatem quos et sit repellendus enim.', '2018-04-29 06:27:52', '2018-04-29 06:27:52');
INSERT INTO `replies` VALUES ('98', '93', '9', 'Aut voluptates minus expedita quam.', '2018-04-18 06:18:09', '2018-04-18 06:18:09');
INSERT INTO `replies` VALUES ('99', '71', '6', 'Facilis reiciendis autem ut.', '2018-04-26 08:02:03', '2018-04-26 08:02:03');
INSERT INTO `replies` VALUES ('101', '10', '2', 'Omnis quo voluptas nihil voluptatem voluptatem dicta.', '2018-04-24 09:24:29', '2018-04-24 09:24:29');
INSERT INTO `replies` VALUES ('102', '24', '7', 'Odio suscipit vel est nam doloremque eum similique.', '2018-04-11 02:24:04', '2018-04-11 02:24:04');
INSERT INTO `replies` VALUES ('103', '78', '8', 'Non omnis et recusandae est.', '2018-04-30 07:18:00', '2018-04-30 07:18:00');
INSERT INTO `replies` VALUES ('104', '10', '7', 'Cum consequatur voluptatem perspiciatis voluptate ut maiores sequi.', '2018-04-11 13:45:06', '2018-04-11 13:45:06');
INSERT INTO `replies` VALUES ('105', '92', '10', 'Modi animi dolorem suscipit voluptas ut iusto possimus asperiores.', '2018-04-11 14:51:04', '2018-04-11 14:51:04');
INSERT INTO `replies` VALUES ('106', '52', '1', 'Corrupti earum amet id et.', '2018-04-13 00:22:23', '2018-04-13 00:22:23');
INSERT INTO `replies` VALUES ('107', '10', '8', 'Provident asperiores consequatur dolor neque.', '2018-04-26 00:28:17', '2018-04-26 00:28:17');
INSERT INTO `replies` VALUES ('108', '71', '3', 'Nostrum perspiciatis neque eius fugiat cupiditate.', '2018-05-02 02:40:04', '2018-05-02 02:40:04');
INSERT INTO `replies` VALUES ('109', '17', '8', 'Vel rem aut et sit.', '2018-04-27 23:53:07', '2018-04-27 23:53:07');
INSERT INTO `replies` VALUES ('110', '13', '5', 'Quae et incidunt voluptatem aut quibusdam harum.', '2018-04-29 20:21:57', '2018-04-29 20:21:57');
INSERT INTO `replies` VALUES ('111', '77', '3', 'At distinctio quas quia qui soluta voluptatem.', '2018-04-21 15:05:54', '2018-04-21 15:05:54');
INSERT INTO `replies` VALUES ('112', '63', '3', 'Minus dignissimos ut qui fugit fugit dignissimos.', '2018-04-21 08:11:15', '2018-04-21 08:11:15');
INSERT INTO `replies` VALUES ('113', '5', '4', 'Possimus in mollitia nihil distinctio qui.', '2018-04-19 14:55:19', '2018-04-19 14:55:19');
INSERT INTO `replies` VALUES ('114', '7', '6', 'Saepe nemo pariatur impedit id ab.', '2018-04-16 14:03:39', '2018-04-16 14:03:39');
INSERT INTO `replies` VALUES ('115', '41', '3', 'Omnis odio labore est facere voluptates aut.', '2018-04-23 07:09:25', '2018-04-23 07:09:25');
INSERT INTO `replies` VALUES ('116', '82', '4', 'Minima molestiae quos deserunt quae.', '2018-04-21 17:26:10', '2018-04-21 17:26:10');
INSERT INTO `replies` VALUES ('117', '87', '2', 'Odit sed consequuntur in.', '2018-04-12 16:03:32', '2018-04-12 16:03:32');
INSERT INTO `replies` VALUES ('118', '74', '2', 'Error sed fugiat ea et.', '2018-05-02 06:09:10', '2018-05-02 06:09:10');
INSERT INTO `replies` VALUES ('119', '45', '9', 'Adipisci accusamus ducimus ipsam non.', '2018-05-01 14:00:36', '2018-05-01 14:00:36');
INSERT INTO `replies` VALUES ('120', '34', '2', 'Nostrum id dolorem et nihil ea neque sit.', '2018-04-14 11:12:09', '2018-04-14 11:12:09');
INSERT INTO `replies` VALUES ('121', '12', '2', 'Quas autem illum officia recusandae.', '2018-04-07 22:56:52', '2018-04-07 22:56:52');
INSERT INTO `replies` VALUES ('122', '54', '6', 'Molestias dolores consequatur amet.', '2018-04-27 07:33:15', '2018-04-27 07:33:15');
INSERT INTO `replies` VALUES ('123', '23', '10', 'Ipsum nihil quisquam sed eum qui velit voluptatem.', '2018-04-21 01:28:42', '2018-04-21 01:28:42');
INSERT INTO `replies` VALUES ('124', '64', '6', 'Occaecati quam suscipit omnis iure quam.', '2018-05-01 12:13:20', '2018-05-01 12:13:20');
INSERT INTO `replies` VALUES ('125', '64', '6', 'Qui quo placeat exercitationem nihil vel molestiae.', '2018-04-11 07:30:26', '2018-04-11 07:30:26');
INSERT INTO `replies` VALUES ('126', '37', '10', 'Consequatur ipsa ipsum ducimus explicabo.', '2018-04-22 02:32:12', '2018-04-22 02:32:12');
INSERT INTO `replies` VALUES ('127', '6', '6', 'Nulla aut nesciunt et consequuntur.', '2018-04-14 01:53:09', '2018-04-14 01:53:09');
INSERT INTO `replies` VALUES ('128', '90', '7', 'Vitae voluptas et rerum cupiditate inventore earum culpa incidunt.', '2018-04-28 23:28:01', '2018-04-28 23:28:01');
INSERT INTO `replies` VALUES ('129', '55', '7', 'Et eligendi est molestiae ut ut consectetur.', '2018-04-16 18:24:00', '2018-04-16 18:24:00');
INSERT INTO `replies` VALUES ('130', '27', '8', 'Tempore qui eos illum facere.', '2018-04-28 16:29:16', '2018-04-28 16:29:16');
INSERT INTO `replies` VALUES ('131', '42', '5', 'Ut consequuntur iure eius iusto quidem.', '2018-04-24 14:38:18', '2018-04-24 14:38:18');
INSERT INTO `replies` VALUES ('132', '55', '5', 'Ipsam possimus deleniti adipisci.', '2018-04-25 22:25:37', '2018-04-25 22:25:37');
INSERT INTO `replies` VALUES ('133', '13', '7', 'Voluptatem et nemo reprehenderit ut in.', '2018-05-04 08:33:52', '2018-05-04 08:33:52');
INSERT INTO `replies` VALUES ('134', '64', '1', 'Minus repudiandae voluptatem neque blanditiis nisi.', '2018-04-13 18:59:39', '2018-04-13 18:59:39');
INSERT INTO `replies` VALUES ('135', '15', '10', 'Quia necessitatibus aut maiores quia blanditiis.', '2018-04-12 07:48:06', '2018-04-12 07:48:06');
INSERT INTO `replies` VALUES ('136', '51', '1', 'Tempore blanditiis at aut adipisci aut.', '2018-04-15 01:45:20', '2018-04-15 01:45:20');
INSERT INTO `replies` VALUES ('137', '74', '7', 'Ipsum explicabo reprehenderit ea.', '2018-04-10 10:11:52', '2018-04-10 10:11:52');
INSERT INTO `replies` VALUES ('138', '21', '2', 'Similique sit itaque est unde sit numquam suscipit.', '2018-04-20 18:52:33', '2018-04-20 18:52:33');
INSERT INTO `replies` VALUES ('139', '94', '3', 'Nam totam quo accusamus qui consequatur dicta corporis.', '2018-05-05 22:53:49', '2018-05-05 22:53:49');
INSERT INTO `replies` VALUES ('140', '47', '9', 'Voluptatem ipsa facere qui iusto sunt id.', '2018-05-06 15:04:27', '2018-05-06 15:04:27');
INSERT INTO `replies` VALUES ('141', '89', '9', 'Aut vel quis eum qui.', '2018-04-09 08:18:34', '2018-04-09 08:18:34');
INSERT INTO `replies` VALUES ('142', '25', '5', 'Molestiae suscipit voluptatibus minus cumque sapiente dignissimos.', '2018-04-20 12:01:48', '2018-04-20 12:01:48');
INSERT INTO `replies` VALUES ('143', '95', '2', 'Quae et molestiae earum placeat minus qui voluptas.', '2018-04-16 21:20:07', '2018-04-16 21:20:07');
INSERT INTO `replies` VALUES ('144', '66', '8', 'Officia animi eos laboriosam libero ut ullam odio ex.', '2018-05-07 10:50:08', '2018-05-07 10:50:08');
INSERT INTO `replies` VALUES ('145', '13', '2', 'Blanditiis quasi necessitatibus unde harum rerum.', '2018-04-22 23:22:54', '2018-04-22 23:22:54');
INSERT INTO `replies` VALUES ('146', '8', '4', 'Quia ad aspernatur soluta ducimus aspernatur voluptas ipsam praesentium.', '2018-04-08 20:41:01', '2018-04-08 20:41:01');
INSERT INTO `replies` VALUES ('147', '10', '3', 'Magnam qui quia ut id.', '2018-04-24 07:29:59', '2018-04-24 07:29:59');
INSERT INTO `replies` VALUES ('148', '98', '10', 'Rerum unde enim ab culpa.', '2018-04-29 20:43:04', '2018-04-29 20:43:04');
INSERT INTO `replies` VALUES ('149', '62', '4', 'Molestiae praesentium laudantium illum voluptate illo earum nostrum expedita.', '2018-04-25 12:26:28', '2018-04-25 12:26:28');
INSERT INTO `replies` VALUES ('150', '50', '5', 'Quos voluptatem esse molestias quod eum.', '2018-04-23 10:04:03', '2018-04-23 10:04:03');
INSERT INTO `replies` VALUES ('151', '27', '2', 'Sit ab est magnam.', '2018-04-09 23:25:23', '2018-04-09 23:25:23');
INSERT INTO `replies` VALUES ('152', '86', '1', 'Est nam laudantium deleniti aut necessitatibus.', '2018-04-28 20:27:50', '2018-04-28 20:27:50');
INSERT INTO `replies` VALUES ('153', '92', '1', 'Unde earum id voluptatem aliquam voluptatem aut architecto ipsa.', '2018-04-20 13:54:02', '2018-04-20 13:54:02');
INSERT INTO `replies` VALUES ('154', '50', '7', 'Et porro dignissimos voluptatem et.', '2018-04-30 16:09:36', '2018-04-30 16:09:36');
INSERT INTO `replies` VALUES ('155', '82', '5', 'Omnis dolorem sed vero nesciunt possimus.', '2018-05-02 13:40:48', '2018-05-02 13:40:48');
INSERT INTO `replies` VALUES ('156', '27', '4', 'Aspernatur esse magni vel reiciendis.', '2018-04-28 06:35:21', '2018-04-28 06:35:21');
INSERT INTO `replies` VALUES ('157', '98', '10', 'Quo quo totam ea reprehenderit repellendus.', '2018-04-16 18:26:36', '2018-04-16 18:26:36');
INSERT INTO `replies` VALUES ('158', '23', '5', 'Rerum aut id ex perferendis aut beatae.', '2018-04-15 01:44:48', '2018-04-15 01:44:48');
INSERT INTO `replies` VALUES ('159', '17', '4', 'Quaerat voluptas et eum nobis.', '2018-04-14 02:08:15', '2018-04-14 02:08:15');
INSERT INTO `replies` VALUES ('160', '15', '5', 'In maiores et incidunt ratione perspiciatis enim rerum.', '2018-04-11 03:32:07', '2018-04-11 03:32:07');
INSERT INTO `replies` VALUES ('161', '82', '10', 'Praesentium molestiae ut eum aut ducimus.', '2018-05-06 02:13:09', '2018-05-06 02:13:09');
INSERT INTO `replies` VALUES ('162', '26', '5', 'Repudiandae molestiae quae mollitia fugiat modi.', '2018-05-04 05:46:08', '2018-05-04 05:46:08');
INSERT INTO `replies` VALUES ('163', '51', '10', 'Molestias neque culpa est non omnis.', '2018-04-11 22:09:08', '2018-04-11 22:09:08');
INSERT INTO `replies` VALUES ('164', '36', '1', 'Dolorem iusto molestiae deserunt necessitatibus et velit.', '2018-05-01 15:14:41', '2018-05-01 15:14:41');
INSERT INTO `replies` VALUES ('165', '74', '2', 'Et quo ipsam eum itaque eum aut.', '2018-05-04 12:29:38', '2018-05-04 12:29:38');
INSERT INTO `replies` VALUES ('166', '14', '4', 'Numquam aut et animi quis.', '2018-04-16 19:48:34', '2018-04-16 19:48:34');
INSERT INTO `replies` VALUES ('167', '80', '7', 'Sunt consequatur iste laboriosam.', '2018-04-17 18:40:01', '2018-04-17 18:40:01');
INSERT INTO `replies` VALUES ('168', '69', '1', 'Laborum natus tempora cumque qui ipsum nulla.', '2018-04-12 10:08:01', '2018-04-12 10:08:01');
INSERT INTO `replies` VALUES ('169', '93', '6', 'Non odit nisi est rerum ad.', '2018-04-22 03:15:09', '2018-04-22 03:15:09');
INSERT INTO `replies` VALUES ('170', '9', '5', 'Necessitatibus molestiae commodi provident ut.', '2018-04-12 21:44:59', '2018-04-12 21:44:59');
INSERT INTO `replies` VALUES ('171', '3', '3', 'Veritatis neque repudiandae aut maiores et est tempora.', '2018-04-10 15:27:01', '2018-04-10 15:27:01');
INSERT INTO `replies` VALUES ('172', '9', '10', 'Accusantium ut odio consequatur sunt qui voluptas.', '2018-04-08 11:53:16', '2018-04-08 11:53:16');
INSERT INTO `replies` VALUES ('173', '59', '3', 'Et quisquam dicta at modi incidunt nihil.', '2018-04-14 02:35:53', '2018-04-14 02:35:53');
INSERT INTO `replies` VALUES ('174', '92', '4', 'Laborum nam corrupti provident expedita incidunt error et.', '2018-05-04 00:00:58', '2018-05-04 00:00:58');
INSERT INTO `replies` VALUES ('175', '23', '1', 'Pariatur iste consectetur dolorem alias quia et recusandae.', '2018-04-19 01:35:20', '2018-04-19 01:35:20');
INSERT INTO `replies` VALUES ('176', '9', '10', 'Voluptate ut laudantium sapiente.', '2018-04-29 12:39:25', '2018-04-29 12:39:25');
INSERT INTO `replies` VALUES ('177', '37', '3', 'Animi et exercitationem laudantium quibusdam consequuntur est explicabo enim.', '2018-04-26 20:32:54', '2018-04-26 20:32:54');
INSERT INTO `replies` VALUES ('178', '28', '4', 'Distinctio est ut quisquam quam ducimus id laboriosam.', '2018-04-20 19:37:42', '2018-04-20 19:37:42');
INSERT INTO `replies` VALUES ('179', '40', '2', 'Voluptatem non quia quis debitis minima sed facere.', '2018-04-29 03:52:29', '2018-04-29 03:52:29');
INSERT INTO `replies` VALUES ('180', '8', '5', 'Et rem quas quasi excepturi sunt saepe aut.', '2018-04-18 20:47:25', '2018-04-18 20:47:25');
INSERT INTO `replies` VALUES ('181', '13', '4', 'Harum ut iusto et nostrum facere.', '2018-04-22 17:05:47', '2018-04-22 17:05:47');
INSERT INTO `replies` VALUES ('182', '19', '3', 'Et est consequatur ullam repellat voluptatem aliquam sed.', '2018-04-24 14:15:17', '2018-04-24 14:15:17');
INSERT INTO `replies` VALUES ('183', '6', '4', 'Id quo ex quo in corporis.', '2018-04-14 02:47:05', '2018-04-14 02:47:05');
INSERT INTO `replies` VALUES ('184', '91', '1', 'Rem fuga qui quae et nostrum sit sint.', '2018-04-24 13:44:54', '2018-04-24 13:44:54');
INSERT INTO `replies` VALUES ('185', '64', '2', 'Est ut expedita quia voluptatem.', '2018-04-17 17:02:44', '2018-04-17 17:02:44');
INSERT INTO `replies` VALUES ('186', '82', '7', 'Consequatur consectetur et necessitatibus rerum velit quo ipsum.', '2018-04-23 03:55:58', '2018-04-23 03:55:58');
INSERT INTO `replies` VALUES ('187', '25', '8', 'Accusantium perferendis rerum alias est repellendus dolorum.', '2018-04-07 18:56:58', '2018-04-07 18:56:58');
INSERT INTO `replies` VALUES ('188', '6', '1', 'Laboriosam provident optio et vel quo ut voluptatem aliquam.', '2018-04-23 16:32:50', '2018-04-23 16:32:50');
INSERT INTO `replies` VALUES ('189', '64', '3', 'Quam eaque optio aut ut in soluta doloribus.', '2018-04-10 15:07:27', '2018-04-10 15:07:27');
INSERT INTO `replies` VALUES ('190', '81', '1', 'Eos aut quasi velit provident et similique.', '2018-04-09 23:11:04', '2018-04-09 23:11:04');
INSERT INTO `replies` VALUES ('191', '94', '4', 'Eum in vel nihil et quia ex.', '2018-05-05 23:28:32', '2018-05-05 23:28:32');
INSERT INTO `replies` VALUES ('192', '37', '7', 'Quibusdam ad facere sint aliquam et.', '2018-04-23 19:57:06', '2018-04-23 19:57:06');
INSERT INTO `replies` VALUES ('193', '6', '3', 'Soluta deserunt omnis quod.', '2018-05-01 21:27:24', '2018-05-01 21:27:24');
INSERT INTO `replies` VALUES ('194', '50', '9', 'Eos est doloremque est quidem quaerat.', '2018-04-21 19:38:35', '2018-04-21 19:38:35');
INSERT INTO `replies` VALUES ('195', '8', '6', 'Quam exercitationem beatae et ut maxime.', '2018-05-04 07:14:36', '2018-05-04 07:14:36');
INSERT INTO `replies` VALUES ('196', '75', '2', 'Nihil non illum quia est fugit ipsam quasi.', '2018-04-24 04:23:59', '2018-04-24 04:23:59');
INSERT INTO `replies` VALUES ('197', '62', '2', 'Mollitia nostrum vel atque eius fuga quia veritatis.', '2018-05-04 11:34:52', '2018-05-04 11:34:52');
INSERT INTO `replies` VALUES ('198', '38', '4', 'Error excepturi cumque vel sint.', '2018-04-09 02:08:01', '2018-04-09 02:08:01');
INSERT INTO `replies` VALUES ('199', '71', '10', 'Non dolorem quo laborum sed maiores.', '2018-04-16 18:23:52', '2018-04-16 18:23:52');
INSERT INTO `replies` VALUES ('200', '41', '8', 'Voluptate quam enim impedit iste iure totam repellat error.', '2018-04-09 21:40:41', '2018-04-09 21:40:41');
INSERT INTO `replies` VALUES ('201', '11', '6', 'Placeat voluptates ea optio ratione.', '2018-04-25 04:44:23', '2018-04-25 04:44:23');
INSERT INTO `replies` VALUES ('202', '19', '9', 'Alias quia aut doloribus voluptas mollitia accusantium.', '2018-04-14 04:01:46', '2018-04-14 04:01:46');
INSERT INTO `replies` VALUES ('203', '20', '7', 'Aliquam nihil sed vitae quibusdam iure eligendi.', '2018-04-13 17:03:38', '2018-04-13 17:03:38');
INSERT INTO `replies` VALUES ('204', '17', '7', 'Omnis sequi vel soluta possimus.', '2018-04-10 19:47:40', '2018-04-10 19:47:40');
INSERT INTO `replies` VALUES ('205', '11', '6', 'A laudantium eveniet hic itaque accusantium.', '2018-04-14 05:55:12', '2018-04-14 05:55:12');
INSERT INTO `replies` VALUES ('206', '53', '9', 'Sit commodi ullam nam enim nobis sint quis.', '2018-04-30 03:44:00', '2018-04-30 03:44:00');
INSERT INTO `replies` VALUES ('207', '92', '6', 'Quam harum voluptas fugit quas in dolorem.', '2018-04-28 04:35:36', '2018-04-28 04:35:36');
INSERT INTO `replies` VALUES ('208', '41', '4', 'Eos officia in provident.', '2018-05-06 17:16:38', '2018-05-06 17:16:38');
INSERT INTO `replies` VALUES ('209', '46', '5', 'Sit expedita doloribus minima ipsa.', '2018-04-27 21:06:54', '2018-04-27 21:06:54');
INSERT INTO `replies` VALUES ('210', '12', '10', 'Exercitationem quasi occaecati cum voluptatum rem.', '2018-04-29 13:04:24', '2018-04-29 13:04:24');
INSERT INTO `replies` VALUES ('211', '56', '4', 'Ut odio nemo provident sunt ea maxime.', '2018-04-08 19:52:50', '2018-04-08 19:52:50');
INSERT INTO `replies` VALUES ('212', '80', '5', 'Eius nihil natus ea architecto et dolores quam repellendus.', '2018-04-08 09:39:26', '2018-04-08 09:39:26');
INSERT INTO `replies` VALUES ('213', '78', '2', 'Sint tenetur illo itaque ipsum nihil distinctio eaque tenetur.', '2018-05-02 09:11:33', '2018-05-02 09:11:33');
INSERT INTO `replies` VALUES ('214', '49', '3', 'Minima aut soluta rerum voluptatem enim.', '2018-04-27 00:32:02', '2018-04-27 00:32:02');
INSERT INTO `replies` VALUES ('215', '30', '6', 'Minima et qui a nam blanditiis.', '2018-05-01 22:00:23', '2018-05-01 22:00:23');
INSERT INTO `replies` VALUES ('216', '69', '2', 'Deserunt quo neque quasi omnis.', '2018-04-19 09:02:58', '2018-04-19 09:02:58');
INSERT INTO `replies` VALUES ('217', '14', '4', 'Molestias tempora facere et natus veniam quibusdam veniam.', '2018-04-12 11:41:57', '2018-04-12 11:41:57');
INSERT INTO `replies` VALUES ('218', '1', '2', 'Velit quidem consequatur ipsa aspernatur.', '2018-05-06 19:25:07', '2018-05-06 19:25:07');
INSERT INTO `replies` VALUES ('219', '73', '2', 'Pariatur enim aliquid in quo itaque.', '2018-04-25 01:49:13', '2018-04-25 01:49:13');
INSERT INTO `replies` VALUES ('221', '2', '2', 'Dolores et in dicta ratione.', '2018-04-19 02:48:32', '2018-04-19 02:48:32');
INSERT INTO `replies` VALUES ('222', '6', '9', 'Voluptatem voluptas magnam magni assumenda.', '2018-04-29 09:59:06', '2018-04-29 09:59:06');
INSERT INTO `replies` VALUES ('223', '24', '2', 'In dolores molestias nesciunt a cumque quia voluptatem.', '2018-04-27 18:48:48', '2018-04-27 18:48:48');
INSERT INTO `replies` VALUES ('224', '96', '1', 'Et molestiae eos animi ullam ipsa natus.', '2018-04-11 13:28:19', '2018-04-11 13:28:19');
INSERT INTO `replies` VALUES ('225', '86', '1', 'Quia consectetur inventore similique et.', '2018-04-29 17:42:45', '2018-04-29 17:42:45');
INSERT INTO `replies` VALUES ('226', '96', '2', 'Sed suscipit sed provident sequi ex adipisci.', '2018-04-24 16:14:08', '2018-04-24 16:14:08');
INSERT INTO `replies` VALUES ('227', '44', '10', 'Itaque molestias molestiae autem aliquam.', '2018-04-23 11:16:12', '2018-04-23 11:16:12');
INSERT INTO `replies` VALUES ('228', '83', '1', 'Deserunt ratione dolorem asperiores eum.', '2018-05-07 15:05:15', '2018-05-07 15:05:15');
INSERT INTO `replies` VALUES ('229', '83', '10', 'Unde quod doloremque excepturi ipsum.', '2018-04-10 03:10:45', '2018-04-10 03:10:45');
INSERT INTO `replies` VALUES ('230', '5', '1', 'Vel dolor iusto ut enim.', '2018-04-19 00:49:51', '2018-04-19 00:49:51');
INSERT INTO `replies` VALUES ('231', '12', '3', 'Quis amet vitae molestiae aut enim consectetur.', '2018-05-01 19:06:28', '2018-05-01 19:06:28');
INSERT INTO `replies` VALUES ('232', '22', '10', 'Quia commodi corporis quo.', '2018-04-08 07:30:53', '2018-04-08 07:30:53');
INSERT INTO `replies` VALUES ('233', '27', '2', 'Sed consequatur molestias quos quo molestiae doloribus.', '2018-04-28 02:49:13', '2018-04-28 02:49:13');
INSERT INTO `replies` VALUES ('234', '95', '4', 'Maiores aspernatur ut et nobis minus.', '2018-05-06 20:51:34', '2018-05-06 20:51:34');
INSERT INTO `replies` VALUES ('235', '79', '8', 'Tempore cupiditate et in molestiae provident.', '2018-04-22 21:05:40', '2018-04-22 21:05:40');
INSERT INTO `replies` VALUES ('236', '22', '1', 'Harum laborum ex et maxime harum ut.', '2018-04-25 08:58:48', '2018-04-25 08:58:48');
INSERT INTO `replies` VALUES ('237', '6', '10', 'Quae est fuga incidunt inventore maiores voluptate.', '2018-04-12 03:15:12', '2018-04-12 03:15:12');
INSERT INTO `replies` VALUES ('238', '70', '5', 'Minus dignissimos libero voluptas.', '2018-04-29 07:43:17', '2018-04-29 07:43:17');
INSERT INTO `replies` VALUES ('239', '45', '5', 'Sunt iste qui voluptatibus deserunt quia.', '2018-04-07 16:41:27', '2018-04-07 16:41:27');
INSERT INTO `replies` VALUES ('240', '93', '1', 'Sed aut et soluta a quae perspiciatis sunt.', '2018-04-14 20:24:40', '2018-04-14 20:24:40');
INSERT INTO `replies` VALUES ('241', '24', '10', 'Culpa odio magnam mollitia maxime quos possimus.', '2018-04-16 02:58:35', '2018-04-16 02:58:35');
INSERT INTO `replies` VALUES ('242', '57', '8', 'Necessitatibus praesentium sit dolores.', '2018-04-10 13:33:04', '2018-04-10 13:33:04');
INSERT INTO `replies` VALUES ('243', '70', '7', 'Aut aliquam est debitis ea voluptas nihil sed.', '2018-04-28 16:28:50', '2018-04-28 16:28:50');
INSERT INTO `replies` VALUES ('244', '38', '4', 'Velit ut est sed voluptatum facilis mollitia.', '2018-04-21 02:41:01', '2018-04-21 02:41:01');
INSERT INTO `replies` VALUES ('245', '62', '3', 'Neque beatae architecto totam qui totam omnis incidunt.', '2018-04-13 14:13:08', '2018-04-13 14:13:08');
INSERT INTO `replies` VALUES ('246', '58', '3', 'Cum voluptas necessitatibus vero ipsum non veniam velit est.', '2018-04-13 14:22:41', '2018-04-13 14:22:41');
INSERT INTO `replies` VALUES ('247', '80', '10', 'Tempora ea optio repellendus est alias voluptatem quo officiis.', '2018-04-16 18:19:51', '2018-04-16 18:19:51');
INSERT INTO `replies` VALUES ('248', '87', '9', 'Officiis voluptatem adipisci ex perferendis cupiditate.', '2018-04-22 16:59:18', '2018-04-22 16:59:18');
INSERT INTO `replies` VALUES ('249', '63', '4', 'Natus nisi unde quia eum deserunt.', '2018-05-06 19:25:36', '2018-05-06 19:25:36');
INSERT INTO `replies` VALUES ('250', '15', '4', 'Quae non et quam vel.', '2018-04-20 17:39:21', '2018-04-20 17:39:21');
INSERT INTO `replies` VALUES ('251', '44', '10', 'Tempore qui quaerat error quia eum quod id.', '2018-05-03 11:14:21', '2018-05-03 11:14:21');
INSERT INTO `replies` VALUES ('252', '53', '10', 'Laboriosam neque non neque aliquid non dolores.', '2018-05-07 03:23:56', '2018-05-07 03:23:56');
INSERT INTO `replies` VALUES ('253', '40', '3', 'Fuga exercitationem incidunt sunt assumenda consequuntur sint.', '2018-04-13 21:43:19', '2018-04-13 21:43:19');
INSERT INTO `replies` VALUES ('254', '1', '7', 'Debitis possimus et et dignissimos cum.', '2018-05-02 16:09:38', '2018-05-02 16:09:38');
INSERT INTO `replies` VALUES ('255', '51', '7', 'Est iure sapiente ducimus ducimus illo.', '2018-04-25 15:51:59', '2018-04-25 15:51:59');
INSERT INTO `replies` VALUES ('256', '32', '7', 'Laboriosam omnis omnis omnis est.', '2018-04-28 15:03:41', '2018-04-28 15:03:41');
INSERT INTO `replies` VALUES ('257', '63', '1', 'Et adipisci enim adipisci est nostrum.', '2018-04-21 12:45:56', '2018-04-21 12:45:56');
INSERT INTO `replies` VALUES ('258', '61', '2', 'Sed soluta et assumenda quasi et sed.', '2018-04-13 09:24:49', '2018-04-13 09:24:49');
INSERT INTO `replies` VALUES ('259', '51', '10', 'Sapiente veritatis est et repudiandae.', '2018-04-10 12:14:07', '2018-04-10 12:14:07');
INSERT INTO `replies` VALUES ('260', '40', '6', 'Impedit vel labore et et minus voluptate.', '2018-04-28 09:22:14', '2018-04-28 09:22:14');
INSERT INTO `replies` VALUES ('261', '10', '10', 'Vel inventore totam quis iusto rerum.', '2018-04-27 16:49:54', '2018-04-27 16:49:54');
INSERT INTO `replies` VALUES ('262', '82', '4', 'Maiores illum ipsam possimus pariatur ut et esse.', '2018-04-17 04:07:23', '2018-04-17 04:07:23');
INSERT INTO `replies` VALUES ('263', '3', '10', 'Est qui dolores temporibus quis animi sunt aut.', '2018-04-21 07:28:16', '2018-04-21 07:28:16');
INSERT INTO `replies` VALUES ('264', '66', '6', 'Ut fuga sed consequatur officia quia soluta ut.', '2018-04-12 10:47:13', '2018-04-12 10:47:13');
INSERT INTO `replies` VALUES ('265', '30', '1', 'Autem similique mollitia maxime illo ad.', '2018-04-14 03:51:34', '2018-04-14 03:51:34');
INSERT INTO `replies` VALUES ('266', '66', '8', 'Et ratione non quasi ipsam reiciendis aut.', '2018-04-27 05:41:55', '2018-04-27 05:41:55');
INSERT INTO `replies` VALUES ('267', '81', '7', 'Ea ad voluptatem voluptates nihil aliquam temporibus.', '2018-04-23 16:47:43', '2018-04-23 16:47:43');
INSERT INTO `replies` VALUES ('268', '34', '3', 'Perspiciatis perferendis omnis dolorem quam aliquid.', '2018-04-24 18:35:01', '2018-04-24 18:35:01');
INSERT INTO `replies` VALUES ('269', '5', '6', 'Facilis incidunt ducimus illo vitae omnis voluptatem.', '2018-04-21 04:31:40', '2018-04-21 04:31:40');
INSERT INTO `replies` VALUES ('270', '24', '3', 'Et dolorum ipsa aut autem nihil quia exercitationem.', '2018-04-13 03:11:03', '2018-04-13 03:11:03');
INSERT INTO `replies` VALUES ('271', '91', '4', 'Id et est quia eius quas quae dolores.', '2018-04-10 14:09:17', '2018-04-10 14:09:17');
INSERT INTO `replies` VALUES ('272', '33', '3', 'Maiores modi veniam temporibus atque porro commodi ipsam.', '2018-04-17 03:18:59', '2018-04-17 03:18:59');
INSERT INTO `replies` VALUES ('273', '85', '1', 'Aut quaerat aut deleniti vero et necessitatibus maxime.', '2018-04-30 05:04:32', '2018-04-30 05:04:32');
INSERT INTO `replies` VALUES ('274', '58', '9', 'Commodi cum suscipit aliquam ipsam et.', '2018-05-07 13:27:03', '2018-05-07 13:27:03');
INSERT INTO `replies` VALUES ('275', '89', '2', 'Expedita adipisci eos quae minima rerum laboriosam architecto.', '2018-04-21 12:15:23', '2018-04-21 12:15:23');
INSERT INTO `replies` VALUES ('276', '52', '4', 'Architecto qui sunt vel autem eveniet nostrum.', '2018-04-12 15:32:58', '2018-04-12 15:32:58');
INSERT INTO `replies` VALUES ('277', '85', '5', 'Et magnam exercitationem aliquam praesentium dignissimos.', '2018-04-29 08:05:14', '2018-04-29 08:05:14');
INSERT INTO `replies` VALUES ('278', '74', '5', 'Eum esse ex a itaque.', '2018-04-28 22:50:08', '2018-04-28 22:50:08');
INSERT INTO `replies` VALUES ('279', '59', '1', 'Veniam in amet molestias sit.', '2018-04-28 00:36:15', '2018-04-28 00:36:15');
INSERT INTO `replies` VALUES ('280', '7', '8', 'Cumque sunt et non quo impedit.', '2018-04-30 17:00:55', '2018-04-30 17:00:55');
INSERT INTO `replies` VALUES ('281', '71', '7', 'Fuga temporibus dolore provident modi non nisi eos.', '2018-04-23 14:50:53', '2018-04-23 14:50:53');
INSERT INTO `replies` VALUES ('282', '76', '10', 'Officia voluptatem debitis qui id qui.', '2018-04-17 08:44:45', '2018-04-17 08:44:45');
INSERT INTO `replies` VALUES ('283', '32', '8', 'At nulla sed nemo.', '2018-04-30 15:57:01', '2018-04-30 15:57:01');
INSERT INTO `replies` VALUES ('284', '36', '2', 'Recusandae sed et accusamus minima et error in.', '2018-04-23 08:09:14', '2018-04-23 08:09:14');
INSERT INTO `replies` VALUES ('285', '51', '2', 'Aspernatur laudantium autem sint et et et numquam.', '2018-04-27 15:01:15', '2018-04-27 15:01:15');
INSERT INTO `replies` VALUES ('286', '17', '2', 'Labore enim et et a nostrum fugiat aperiam.', '2018-04-23 01:03:46', '2018-04-23 01:03:46');
INSERT INTO `replies` VALUES ('287', '68', '10', 'Adipisci suscipit ducimus incidunt qui nesciunt similique.', '2018-04-13 09:42:08', '2018-04-13 09:42:08');
INSERT INTO `replies` VALUES ('288', '81', '7', 'Inventore quisquam qui quam in officia ea dolorum.', '2018-04-16 04:06:02', '2018-04-16 04:06:02');
INSERT INTO `replies` VALUES ('289', '18', '5', 'Cum veniam assumenda ea debitis.', '2018-04-28 10:14:34', '2018-04-28 10:14:34');
INSERT INTO `replies` VALUES ('290', '71', '6', 'Laboriosam voluptatem similique voluptatum blanditiis dolorum ut.', '2018-04-20 16:02:25', '2018-04-20 16:02:25');
INSERT INTO `replies` VALUES ('291', '86', '2', 'Deleniti officia rerum tempore placeat quae repudiandae eius molestiae.', '2018-05-04 05:44:06', '2018-05-04 05:44:06');
INSERT INTO `replies` VALUES ('292', '63', '7', 'Praesentium eum ea inventore laborum cum iste rem.', '2018-04-29 16:19:43', '2018-04-29 16:19:43');
INSERT INTO `replies` VALUES ('293', '1', '9', 'Ea voluptas laudantium in soluta nihil perspiciatis est.', '2018-04-23 04:13:59', '2018-04-23 04:13:59');
INSERT INTO `replies` VALUES ('294', '46', '6', 'Non velit possimus distinctio repellat.', '2018-04-12 08:37:43', '2018-04-12 08:37:43');
INSERT INTO `replies` VALUES ('295', '13', '8', 'Et minima fugiat quisquam iste.', '2018-05-04 06:48:04', '2018-05-04 06:48:04');
INSERT INTO `replies` VALUES ('296', '23', '5', 'Fugiat excepturi minima odio.', '2018-04-18 02:45:17', '2018-04-18 02:45:17');
INSERT INTO `replies` VALUES ('297', '23', '9', 'Est et dolores fugiat et.', '2018-05-04 08:22:46', '2018-05-04 08:22:46');
INSERT INTO `replies` VALUES ('298', '61', '9', 'Fuga praesentium quod repellat maxime.', '2018-04-16 21:49:26', '2018-04-16 21:49:26');
INSERT INTO `replies` VALUES ('299', '63', '3', 'At tenetur iure rerum officiis libero officiis.', '2018-04-12 04:53:37', '2018-04-12 04:53:37');
INSERT INTO `replies` VALUES ('300', '82', '3', 'Quod et dignissimos vel error quasi ab.', '2018-04-13 02:48:23', '2018-04-13 02:48:23');
INSERT INTO `replies` VALUES ('301', '38', '4', 'Accusamus omnis cupiditate quisquam.', '2018-04-11 21:41:30', '2018-04-11 21:41:30');
INSERT INTO `replies` VALUES ('302', '62', '9', 'Ratione distinctio aut totam et aut.', '2018-04-27 03:05:42', '2018-04-27 03:05:42');
INSERT INTO `replies` VALUES ('303', '1', '1', 'Autem ducimus id culpa nesciunt ullam.', '2018-04-14 09:36:18', '2018-04-14 09:36:18');
INSERT INTO `replies` VALUES ('304', '53', '4', 'Asperiores in praesentium assumenda ullam nostrum consectetur.', '2018-05-01 02:33:25', '2018-05-01 02:33:25');
INSERT INTO `replies` VALUES ('305', '6', '9', 'Laudantium earum ducimus aut nihil.', '2018-04-27 06:42:14', '2018-04-27 06:42:14');
INSERT INTO `replies` VALUES ('306', '22', '4', 'Commodi suscipit in neque et minima sed consequatur.', '2018-05-05 04:08:54', '2018-05-05 04:08:54');
INSERT INTO `replies` VALUES ('307', '27', '7', 'Ut ut sint quis veniam.', '2018-04-12 03:09:53', '2018-04-12 03:09:53');
INSERT INTO `replies` VALUES ('308', '62', '4', 'Veritatis consequatur dolorem nobis inventore sit.', '2018-05-05 22:02:11', '2018-05-05 22:02:11');
INSERT INTO `replies` VALUES ('309', '35', '8', 'Consequatur dignissimos impedit et aliquam numquam natus eligendi.', '2018-04-20 21:06:57', '2018-04-20 21:06:57');
INSERT INTO `replies` VALUES ('310', '84', '10', 'Vitae est vel odit nesciunt eius.', '2018-04-30 23:10:56', '2018-04-30 23:10:56');
INSERT INTO `replies` VALUES ('311', '18', '5', 'Ducimus enim accusantium officiis qui vero.', '2018-04-26 22:00:05', '2018-04-26 22:00:05');
INSERT INTO `replies` VALUES ('312', '37', '1', 'Amet omnis sint aut praesentium deleniti fugiat maxime est.', '2018-04-16 22:07:13', '2018-04-16 22:07:13');
INSERT INTO `replies` VALUES ('313', '85', '9', 'Fugit aperiam cupiditate et nihil necessitatibus sed.', '2018-04-22 23:49:06', '2018-04-22 23:49:06');
INSERT INTO `replies` VALUES ('314', '83', '3', 'Non et voluptatem possimus mollitia accusamus.', '2018-05-07 01:32:57', '2018-05-07 01:32:57');
INSERT INTO `replies` VALUES ('315', '21', '4', 'Non quasi deserunt sunt officiis.', '2018-05-05 10:33:45', '2018-05-05 10:33:45');
INSERT INTO `replies` VALUES ('316', '97', '6', 'Quisquam ipsa et illo quas et.', '2018-04-23 08:56:36', '2018-04-23 08:56:36');
INSERT INTO `replies` VALUES ('317', '64', '6', 'Minus in qui maiores pariatur necessitatibus et quis harum.', '2018-04-20 14:53:54', '2018-04-20 14:53:54');
INSERT INTO `replies` VALUES ('318', '96', '8', 'Animi dolores incidunt corporis sunt sunt.', '2018-04-12 17:32:53', '2018-04-12 17:32:53');
INSERT INTO `replies` VALUES ('319', '9', '7', 'Voluptatibus sequi quo dolor est et est.', '2018-04-18 16:00:08', '2018-04-18 16:00:08');
INSERT INTO `replies` VALUES ('320', '20', '9', 'Provident numquam enim aut et.', '2018-04-27 13:45:20', '2018-04-27 13:45:20');
INSERT INTO `replies` VALUES ('321', '10', '2', 'Magnam quo culpa eius magnam.', '2018-04-17 18:07:59', '2018-04-17 18:07:59');
INSERT INTO `replies` VALUES ('322', '63', '9', 'Quia voluptas laudantium adipisci molestiae eos est.', '2018-04-12 20:52:16', '2018-04-12 20:52:16');
INSERT INTO `replies` VALUES ('323', '58', '10', 'Provident est libero non vero.', '2018-04-18 04:12:06', '2018-04-18 04:12:06');
INSERT INTO `replies` VALUES ('324', '69', '9', 'Et quis officia mollitia aliquid.', '2018-04-29 09:20:06', '2018-04-29 09:20:06');
INSERT INTO `replies` VALUES ('325', '89', '4', 'Et molestiae aliquam aut nostrum itaque non.', '2018-04-17 03:46:02', '2018-04-17 03:46:02');
INSERT INTO `replies` VALUES ('326', '70', '7', 'Dolore at quaerat quo.', '2018-04-10 07:34:24', '2018-04-10 07:34:24');
INSERT INTO `replies` VALUES ('327', '42', '4', 'Dolor voluptatem amet reprehenderit ut voluptatem ipsam.', '2018-05-06 02:55:25', '2018-05-06 02:55:25');
INSERT INTO `replies` VALUES ('328', '81', '3', 'Rerum et animi provident excepturi nobis totam amet.', '2018-04-30 07:33:13', '2018-04-30 07:33:13');
INSERT INTO `replies` VALUES ('329', '76', '6', 'Ex mollitia nostrum minus tenetur et consectetur nobis.', '2018-04-17 07:21:38', '2018-04-17 07:21:38');
INSERT INTO `replies` VALUES ('331', '78', '4', 'Sint debitis dolorem quam iste.', '2018-04-18 20:18:58', '2018-04-18 20:18:58');
INSERT INTO `replies` VALUES ('332', '6', '1', 'Inventore aut sit eaque quo id est.', '2018-04-21 05:55:22', '2018-04-21 05:55:22');
INSERT INTO `replies` VALUES ('333', '87', '4', 'Illo quaerat nihil sunt iste assumenda porro autem.', '2018-04-13 14:05:19', '2018-04-13 14:05:19');
INSERT INTO `replies` VALUES ('334', '61', '3', 'Tempore sit officiis nesciunt non et mollitia debitis.', '2018-05-07 09:54:14', '2018-05-07 09:54:14');
INSERT INTO `replies` VALUES ('335', '81', '5', 'Et est quia iste omnis.', '2018-04-21 22:26:27', '2018-04-21 22:26:27');
INSERT INTO `replies` VALUES ('336', '91', '6', 'Facilis odit alias et voluptatem rerum.', '2018-04-21 00:13:18', '2018-04-21 00:13:18');
INSERT INTO `replies` VALUES ('337', '68', '4', 'Occaecati qui qui voluptas labore qui molestiae in.', '2018-04-16 04:59:42', '2018-04-16 04:59:42');
INSERT INTO `replies` VALUES ('338', '89', '9', 'Aliquam excepturi totam mollitia impedit quos.', '2018-05-06 07:08:51', '2018-05-06 07:08:51');
INSERT INTO `replies` VALUES ('339', '22', '5', 'Officia odit voluptas reiciendis eveniet ea.', '2018-05-02 06:05:18', '2018-05-02 06:05:18');
INSERT INTO `replies` VALUES ('340', '13', '6', 'Repellat consequatur ducimus adipisci tenetur ipsum.', '2018-05-07 00:08:48', '2018-05-07 00:08:48');
INSERT INTO `replies` VALUES ('341', '76', '2', 'Illum et et reiciendis ut aliquid nobis.', '2018-05-03 12:04:08', '2018-05-03 12:04:08');
INSERT INTO `replies` VALUES ('342', '36', '7', 'Et omnis sit quasi eveniet ut temporibus consequatur reprehenderit.', '2018-05-01 00:40:51', '2018-05-01 00:40:51');
INSERT INTO `replies` VALUES ('343', '51', '7', 'Corporis ut nisi soluta rem sit est.', '2018-04-12 03:51:53', '2018-04-12 03:51:53');
INSERT INTO `replies` VALUES ('344', '29', '4', 'Deleniti sit aut quo qui unde voluptatibus et.', '2018-05-03 02:50:21', '2018-05-03 02:50:21');
INSERT INTO `replies` VALUES ('345', '84', '1', 'Earum facere impedit ut rem non.', '2018-05-01 08:28:23', '2018-05-01 08:28:23');
INSERT INTO `replies` VALUES ('346', '99', '8', 'Aliquam laboriosam nihil qui dolor aliquam et.', '2018-04-27 19:36:26', '2018-04-27 19:36:26');
INSERT INTO `replies` VALUES ('347', '70', '6', 'Quasi at doloremque quo id amet alias quo.', '2018-04-30 21:37:01', '2018-04-30 21:37:01');
INSERT INTO `replies` VALUES ('348', '41', '9', 'Magni voluptatum sit saepe quo velit.', '2018-04-29 20:02:04', '2018-04-29 20:02:04');
INSERT INTO `replies` VALUES ('349', '16', '2', 'Nesciunt ut ea nisi nihil.', '2018-04-26 06:53:39', '2018-04-26 06:53:39');
INSERT INTO `replies` VALUES ('350', '49', '4', 'Occaecati amet accusamus voluptas dolorem nam quis.', '2018-05-04 03:32:29', '2018-05-04 03:32:29');
INSERT INTO `replies` VALUES ('351', '72', '2', 'In vero adipisci sapiente iusto ipsam.', '2018-04-28 09:35:23', '2018-04-28 09:35:23');
INSERT INTO `replies` VALUES ('352', '45', '9', 'Debitis mollitia voluptate inventore impedit aut fuga.', '2018-04-08 12:47:12', '2018-04-08 12:47:12');
INSERT INTO `replies` VALUES ('353', '6', '2', 'Voluptatibus sint et iure excepturi aspernatur.', '2018-04-12 05:15:14', '2018-04-12 05:15:14');
INSERT INTO `replies` VALUES ('354', '97', '10', 'Laudantium corporis incidunt porro velit at rerum.', '2018-04-08 19:10:26', '2018-04-08 19:10:26');
INSERT INTO `replies` VALUES ('355', '61', '6', 'Dolores inventore deleniti provident omnis.', '2018-04-20 08:56:07', '2018-04-20 08:56:07');
INSERT INTO `replies` VALUES ('356', '71', '3', 'Dolorum rem consequatur alias expedita.', '2018-05-04 20:08:02', '2018-05-04 20:08:02');
INSERT INTO `replies` VALUES ('357', '81', '4', 'Corporis vel ut itaque ullam distinctio vel.', '2018-04-26 12:13:22', '2018-04-26 12:13:22');
INSERT INTO `replies` VALUES ('358', '91', '9', 'Dolor eaque temporibus quas iusto.', '2018-04-16 17:09:20', '2018-04-16 17:09:20');
INSERT INTO `replies` VALUES ('359', '26', '7', 'Porro voluptas deserunt quam.', '2018-04-14 04:54:26', '2018-04-14 04:54:26');
INSERT INTO `replies` VALUES ('360', '7', '6', 'Quibusdam sequi odio atque in ut.', '2018-04-13 13:05:51', '2018-04-13 13:05:51');
INSERT INTO `replies` VALUES ('361', '81', '3', 'Ipsum recusandae voluptatibus nihil nemo adipisci.', '2018-04-27 16:02:21', '2018-04-27 16:02:21');
INSERT INTO `replies` VALUES ('362', '3', '3', 'Blanditiis animi totam sint non non aut rem quia.', '2018-05-04 07:26:51', '2018-05-04 07:26:51');
INSERT INTO `replies` VALUES ('363', '32', '2', 'Molestiae et quis facilis iusto rerum ipsam sed.', '2018-04-21 06:03:55', '2018-04-21 06:03:55');
INSERT INTO `replies` VALUES ('364', '45', '7', 'Pariatur accusantium et et quisquam impedit dolores.', '2018-04-19 07:05:46', '2018-04-19 07:05:46');
INSERT INTO `replies` VALUES ('365', '75', '4', 'Et nulla distinctio ut aut et dolor.', '2018-04-17 23:24:47', '2018-04-17 23:24:47');
INSERT INTO `replies` VALUES ('366', '38', '1', 'Et quas dolor odio in tempore molestiae.', '2018-04-25 04:17:02', '2018-04-25 04:17:02');
INSERT INTO `replies` VALUES ('367', '91', '4', 'Dolor dolorum voluptatibus sit ipsa laborum quas consectetur voluptatibus.', '2018-04-24 13:16:43', '2018-04-24 13:16:43');
INSERT INTO `replies` VALUES ('368', '15', '2', 'Delectus eum provident rerum.', '2018-04-14 22:24:37', '2018-04-14 22:24:37');
INSERT INTO `replies` VALUES ('369', '86', '5', 'Et quam suscipit facere quidem aut voluptatem eveniet.', '2018-04-28 00:48:23', '2018-04-28 00:48:23');
INSERT INTO `replies` VALUES ('370', '77', '9', 'In sed non consectetur quis eius ab.', '2018-04-22 19:05:50', '2018-04-22 19:05:50');
INSERT INTO `replies` VALUES ('371', '76', '8', 'Eos molestiae voluptatum et nihil non deleniti deserunt.', '2018-04-28 12:20:44', '2018-04-28 12:20:44');
INSERT INTO `replies` VALUES ('372', '15', '2', 'Sunt quo nemo natus dolorum atque.', '2018-05-04 18:15:06', '2018-05-04 18:15:06');
INSERT INTO `replies` VALUES ('373', '45', '4', 'Est ipsum id provident vitae aperiam.', '2018-04-07 19:09:30', '2018-04-07 19:09:30');
INSERT INTO `replies` VALUES ('374', '80', '6', 'Repudiandae sed qui aut quas consequatur ab aut.', '2018-04-18 23:22:49', '2018-04-18 23:22:49');
INSERT INTO `replies` VALUES ('375', '94', '7', 'Provident ex id non consequatur.', '2018-04-28 00:15:26', '2018-04-28 00:15:26');
INSERT INTO `replies` VALUES ('376', '43', '10', 'Dolores culpa iure in quasi iure voluptatibus ex.', '2018-04-15 20:17:00', '2018-04-15 20:17:00');
INSERT INTO `replies` VALUES ('377', '90', '4', 'Excepturi illo et animi ea temporibus eum libero.', '2018-05-02 16:14:10', '2018-05-02 16:14:10');
INSERT INTO `replies` VALUES ('378', '71', '7', 'Tenetur qui ad voluptas ratione quo.', '2018-04-22 09:15:07', '2018-04-22 09:15:07');
INSERT INTO `replies` VALUES ('379', '60', '7', 'Eos nulla deleniti qui sed enim sint.', '2018-04-25 05:26:00', '2018-04-25 05:26:00');
INSERT INTO `replies` VALUES ('380', '30', '3', 'Aut aut cum rerum quia ad.', '2018-04-10 15:10:06', '2018-04-10 15:10:06');
INSERT INTO `replies` VALUES ('381', '48', '4', 'Culpa quaerat cum rerum et asperiores odit placeat vero.', '2018-04-09 18:04:42', '2018-04-09 18:04:42');
INSERT INTO `replies` VALUES ('382', '59', '5', 'Sunt veritatis consequatur fugit.', '2018-04-13 15:38:47', '2018-04-13 15:38:47');
INSERT INTO `replies` VALUES ('383', '93', '6', 'Alias aut id tenetur.', '2018-04-30 21:10:38', '2018-04-30 21:10:38');
INSERT INTO `replies` VALUES ('384', '95', '8', 'Quisquam unde temporibus officiis ut sint ullam est.', '2018-04-19 13:52:54', '2018-04-19 13:52:54');
INSERT INTO `replies` VALUES ('385', '68', '9', 'Minima quia ut enim qui velit autem facere.', '2018-04-09 07:32:04', '2018-04-09 07:32:04');
INSERT INTO `replies` VALUES ('386', '55', '8', 'Tempora est dignissimos autem necessitatibus mollitia inventore autem.', '2018-04-19 10:08:50', '2018-04-19 10:08:50');
INSERT INTO `replies` VALUES ('387', '96', '9', 'Soluta sit pariatur qui adipisci amet.', '2018-05-03 15:47:33', '2018-05-03 15:47:33');
INSERT INTO `replies` VALUES ('388', '46', '2', 'Aperiam nihil facere voluptatem nesciunt omnis architecto non.', '2018-04-16 13:27:25', '2018-04-16 13:27:25');
INSERT INTO `replies` VALUES ('389', '48', '5', 'Eum nobis vel a corporis esse qui.', '2018-04-16 20:15:01', '2018-04-16 20:15:01');
INSERT INTO `replies` VALUES ('390', '53', '2', 'Explicabo provident mollitia deserunt rem.', '2018-04-22 04:50:20', '2018-04-22 04:50:20');
INSERT INTO `replies` VALUES ('391', '67', '7', 'Molestiae eaque labore blanditiis.', '2018-04-20 06:34:14', '2018-04-20 06:34:14');
INSERT INTO `replies` VALUES ('393', '84', '2', 'Quasi doloribus quas ullam nihil.', '2018-05-03 03:13:46', '2018-05-03 03:13:46');
INSERT INTO `replies` VALUES ('394', '14', '9', 'Quibusdam tempora consectetur vel ut.', '2018-05-02 14:31:33', '2018-05-02 14:31:33');
INSERT INTO `replies` VALUES ('395', '5', '2', 'Omnis ab et ipsam temporibus fuga et.', '2018-04-16 05:49:51', '2018-04-16 05:49:51');
INSERT INTO `replies` VALUES ('396', '48', '1', 'Minus tempore soluta aut doloremque nisi vitae occaecati sunt.', '2018-04-22 16:31:25', '2018-04-22 16:31:25');
INSERT INTO `replies` VALUES ('397', '90', '4', 'Commodi et earum fugiat illo.', '2018-04-20 03:55:13', '2018-04-20 03:55:13');
INSERT INTO `replies` VALUES ('398', '23', '6', 'Et neque nobis aut perferendis explicabo.', '2018-04-14 03:09:36', '2018-04-14 03:09:36');
INSERT INTO `replies` VALUES ('399', '82', '1', 'Odit odit minus et aliquid aut eligendi quos.', '2018-04-22 17:35:00', '2018-04-22 17:35:00');
INSERT INTO `replies` VALUES ('400', '70', '8', 'Voluptatem hic sit dolor voluptas aut officia explicabo.', '2018-04-16 02:37:55', '2018-04-16 02:37:55');
INSERT INTO `replies` VALUES ('401', '8', '10', 'Libero consequuntur omnis commodi rerum eos laborum.', '2018-05-02 23:36:22', '2018-05-02 23:36:22');
INSERT INTO `replies` VALUES ('402', '91', '3', 'Vitae esse non aut quis adipisci.', '2018-04-22 10:02:18', '2018-04-22 10:02:18');
INSERT INTO `replies` VALUES ('403', '43', '6', 'Corporis impedit illo quasi accusantium ea deserunt amet pariatur.', '2018-04-24 19:44:23', '2018-04-24 19:44:23');
INSERT INTO `replies` VALUES ('404', '50', '10', 'Vel sint sint autem nihil.', '2018-04-18 05:39:21', '2018-04-18 05:39:21');
INSERT INTO `replies` VALUES ('405', '41', '7', 'At porro nemo eligendi voluptas alias quo odit.', '2018-04-29 01:54:19', '2018-04-29 01:54:19');
INSERT INTO `replies` VALUES ('406', '20', '2', 'Eos nostrum adipisci enim qui quam.', '2018-04-08 17:44:56', '2018-04-08 17:44:56');
INSERT INTO `replies` VALUES ('407', '45', '4', 'Ab ex dicta dolores porro magnam voluptatem.', '2018-04-23 01:08:00', '2018-04-23 01:08:00');
INSERT INTO `replies` VALUES ('408', '67', '6', 'Iure nisi ut porro qui neque possimus minus.', '2018-04-29 05:09:34', '2018-04-29 05:09:34');
INSERT INTO `replies` VALUES ('409', '4', '9', 'Occaecati et perferendis provident ullam voluptate nesciunt est.', '2018-05-06 14:04:08', '2018-05-06 14:04:08');
INSERT INTO `replies` VALUES ('410', '5', '8', 'Est deserunt possimus sunt tenetur est magnam.', '2018-05-03 00:16:54', '2018-05-03 00:16:54');
INSERT INTO `replies` VALUES ('411', '53', '4', 'Provident necessitatibus aut consequatur molestiae ex velit.', '2018-04-29 15:16:02', '2018-04-29 15:16:02');
INSERT INTO `replies` VALUES ('412', '88', '5', 'Est eos quo dicta illo dignissimos ad voluptas.', '2018-04-25 12:29:02', '2018-04-25 12:29:02');
INSERT INTO `replies` VALUES ('413', '71', '4', 'Necessitatibus sunt in itaque dolore officia reiciendis.', '2018-04-22 00:34:10', '2018-04-22 00:34:10');
INSERT INTO `replies` VALUES ('414', '29', '8', 'Magnam officiis sit soluta ut iure odit.', '2018-04-25 04:42:13', '2018-04-25 04:42:13');
INSERT INTO `replies` VALUES ('415', '42', '5', 'Blanditiis mollitia possimus maiores harum facilis.', '2018-05-06 06:28:30', '2018-05-06 06:28:30');
INSERT INTO `replies` VALUES ('416', '10', '2', 'Ab velit voluptas dolorem qui.', '2018-05-01 15:45:04', '2018-05-01 15:45:04');
INSERT INTO `replies` VALUES ('417', '97', '9', 'Deserunt provident et aliquam at doloribus odit asperiores.', '2018-04-08 13:53:38', '2018-04-08 13:53:38');
INSERT INTO `replies` VALUES ('418', '70', '8', 'Totam illum velit libero corporis velit.', '2018-04-14 14:33:09', '2018-04-14 14:33:09');
INSERT INTO `replies` VALUES ('419', '59', '2', 'Soluta voluptatibus quia sit ut veritatis.', '2018-04-18 02:47:02', '2018-04-18 02:47:02');
INSERT INTO `replies` VALUES ('420', '51', '9', 'Illum ut velit cumque quos.', '2018-05-07 06:01:01', '2018-05-07 06:01:01');
INSERT INTO `replies` VALUES ('421', '38', '9', 'Pariatur voluptate dolor porro laborum.', '2018-05-04 22:00:01', '2018-05-04 22:00:01');
INSERT INTO `replies` VALUES ('422', '74', '4', 'Eum pariatur et consequuntur voluptas autem eius.', '2018-04-26 22:12:30', '2018-04-26 22:12:30');
INSERT INTO `replies` VALUES ('423', '88', '1', 'Repudiandae odit molestiae et aperiam et recusandae eos reiciendis.', '2018-04-27 15:47:08', '2018-04-27 15:47:08');
INSERT INTO `replies` VALUES ('424', '10', '8', 'Autem ut sed quia officiis ut.', '2018-04-29 15:03:50', '2018-04-29 15:03:50');
INSERT INTO `replies` VALUES ('425', '73', '4', 'Modi asperiores ut error voluptas rerum.', '2018-05-03 13:34:38', '2018-05-03 13:34:38');
INSERT INTO `replies` VALUES ('426', '37', '10', 'Perferendis officia qui dolorem consectetur occaecati.', '2018-04-07 17:25:49', '2018-04-07 17:25:49');
INSERT INTO `replies` VALUES ('427', '6', '9', 'In aliquid maxime debitis quos possimus iure.', '2018-04-14 15:42:52', '2018-04-14 15:42:52');
INSERT INTO `replies` VALUES ('428', '88', '9', 'Quaerat aut quis quasi quia.', '2018-04-28 06:34:06', '2018-04-28 06:34:06');
INSERT INTO `replies` VALUES ('429', '25', '5', 'Fugit nihil vero hic alias doloribus.', '2018-05-03 14:37:17', '2018-05-03 14:37:17');
INSERT INTO `replies` VALUES ('430', '77', '3', 'Nesciunt facere magnam placeat soluta et.', '2018-04-09 13:21:10', '2018-04-09 13:21:10');
INSERT INTO `replies` VALUES ('431', '21', '8', 'Ut esse alias dolores error quia temporibus expedita.', '2018-04-15 00:53:18', '2018-04-15 00:53:18');
INSERT INTO `replies` VALUES ('432', '36', '4', 'Rerum cumque deleniti ducimus.', '2018-04-18 09:25:49', '2018-04-18 09:25:49');
INSERT INTO `replies` VALUES ('433', '3', '5', 'Eligendi saepe quasi voluptatem qui.', '2018-04-14 08:54:04', '2018-04-14 08:54:04');
INSERT INTO `replies` VALUES ('434', '76', '6', 'Numquam aliquam dolor et quia.', '2018-04-18 03:44:11', '2018-04-18 03:44:11');
INSERT INTO `replies` VALUES ('435', '48', '4', 'Velit explicabo aut voluptatem.', '2018-04-29 05:13:40', '2018-04-29 05:13:40');
INSERT INTO `replies` VALUES ('436', '1', '5', 'Ut aut voluptas in sint hic.', '2018-05-05 20:51:06', '2018-05-05 20:51:06');
INSERT INTO `replies` VALUES ('437', '89', '9', 'Aliquid quia quo voluptatum ipsa.', '2018-04-29 15:24:11', '2018-04-29 15:24:11');
INSERT INTO `replies` VALUES ('438', '4', '8', 'Ad alias iusto nemo vero asperiores.', '2018-04-17 19:02:40', '2018-04-17 19:02:40');
INSERT INTO `replies` VALUES ('439', '71', '6', 'Sequi fugit nostrum doloremque et esse.', '2018-04-11 01:44:16', '2018-04-11 01:44:16');
INSERT INTO `replies` VALUES ('440', '55', '6', 'Consequuntur cupiditate facere ut et laudantium ut.', '2018-04-08 22:22:47', '2018-04-08 22:22:47');
INSERT INTO `replies` VALUES ('441', '9', '3', 'Sint ipsam vel consequatur optio suscipit dolores.', '2018-04-24 18:59:19', '2018-04-24 18:59:19');
INSERT INTO `replies` VALUES ('442', '74', '5', 'Et et natus libero qui aspernatur esse.', '2018-04-13 22:57:03', '2018-04-13 22:57:03');
INSERT INTO `replies` VALUES ('443', '43', '2', 'Inventore aliquid ut et aperiam molestiae.', '2018-04-17 11:28:49', '2018-04-17 11:28:49');
INSERT INTO `replies` VALUES ('444', '23', '5', 'Et magnam quas ut fuga.', '2018-04-09 03:57:27', '2018-04-09 03:57:27');
INSERT INTO `replies` VALUES ('445', '44', '9', 'Velit harum asperiores voluptas eum nesciunt nihil est et.', '2018-04-14 21:31:00', '2018-04-14 21:31:00');
INSERT INTO `replies` VALUES ('446', '55', '3', 'Praesentium ut qui autem fuga.', '2018-04-08 12:01:03', '2018-04-08 12:01:03');
INSERT INTO `replies` VALUES ('447', '97', '10', 'Dolor quidem quia repellendus labore tenetur quaerat cupiditate.', '2018-04-25 04:41:45', '2018-04-25 04:41:45');
INSERT INTO `replies` VALUES ('448', '64', '8', 'Debitis corrupti id sint est provident necessitatibus.', '2018-04-15 12:38:05', '2018-04-15 12:38:05');
INSERT INTO `replies` VALUES ('449', '22', '6', 'Et quas voluptatem qui velit voluptate fugiat et quam.', '2018-04-07 20:48:49', '2018-04-07 20:48:49');
INSERT INTO `replies` VALUES ('450', '39', '8', 'Rem aliquid sed omnis libero.', '2018-04-08 05:34:49', '2018-04-08 05:34:49');
INSERT INTO `replies` VALUES ('451', '95', '9', 'Dolores rerum dignissimos aut velit.', '2018-05-03 17:51:11', '2018-05-03 17:51:11');
INSERT INTO `replies` VALUES ('452', '78', '10', 'Cumque et eius voluptate expedita natus amet corrupti.', '2018-04-26 21:16:25', '2018-04-26 21:16:25');
INSERT INTO `replies` VALUES ('453', '92', '10', 'Maiores architecto eos sapiente optio qui nobis.', '2018-05-03 08:26:13', '2018-05-03 08:26:13');
INSERT INTO `replies` VALUES ('454', '8', '2', 'Dignissimos quod at nemo dolores vero ut est quibusdam.', '2018-04-23 00:27:31', '2018-04-23 00:27:31');
INSERT INTO `replies` VALUES ('455', '89', '6', 'Quod quis voluptas dolore iusto impedit cum est quos.', '2018-04-16 17:13:18', '2018-04-16 17:13:18');
INSERT INTO `replies` VALUES ('456', '23', '1', 'Voluptatem quo voluptas vero.', '2018-04-10 20:12:15', '2018-04-10 20:12:15');
INSERT INTO `replies` VALUES ('457', '96', '4', 'Quas quod beatae blanditiis occaecati placeat vitae dicta.', '2018-04-15 03:57:02', '2018-04-15 03:57:02');
INSERT INTO `replies` VALUES ('458', '35', '8', 'Qui sint eos deleniti laudantium adipisci deserunt.', '2018-05-04 02:53:36', '2018-05-04 02:53:36');
INSERT INTO `replies` VALUES ('459', '67', '2', 'Ad necessitatibus est nihil sint.', '2018-04-26 09:11:03', '2018-04-26 09:11:03');
INSERT INTO `replies` VALUES ('460', '16', '9', 'Deleniti ut quis id explicabo.', '2018-04-26 02:16:12', '2018-04-26 02:16:12');
INSERT INTO `replies` VALUES ('461', '99', '1', 'Voluptate assumenda esse quaerat.', '2018-04-25 22:39:28', '2018-04-25 22:39:28');
INSERT INTO `replies` VALUES ('462', '18', '5', 'Architecto ad voluptas ullam accusantium eaque explicabo et.', '2018-04-12 04:08:12', '2018-04-12 04:08:12');
INSERT INTO `replies` VALUES ('463', '7', '3', 'Aut consequatur sed aut.', '2018-04-17 01:37:24', '2018-04-17 01:37:24');
INSERT INTO `replies` VALUES ('464', '25', '4', 'Ut rerum fuga non optio.', '2018-04-21 09:09:06', '2018-04-21 09:09:06');
INSERT INTO `replies` VALUES ('465', '10', '3', 'Et exercitationem qui fugiat et.', '2018-04-20 18:21:04', '2018-04-20 18:21:04');
INSERT INTO `replies` VALUES ('466', '36', '3', 'Aperiam consequatur omnis suscipit expedita consequatur.', '2018-04-19 21:15:40', '2018-04-19 21:15:40');
INSERT INTO `replies` VALUES ('467', '71', '5', 'Sed et accusantium ea et facilis fugit id.', '2018-04-13 06:26:50', '2018-04-13 06:26:50');
INSERT INTO `replies` VALUES ('468', '2', '2', 'Incidunt nihil iusto saepe eum numquam dolor id enim.', '2018-05-05 23:53:39', '2018-05-05 23:53:39');
INSERT INTO `replies` VALUES ('469', '68', '6', 'Id voluptatum et laudantium et dignissimos.', '2018-04-12 09:10:06', '2018-04-12 09:10:06');
INSERT INTO `replies` VALUES ('470', '95', '10', 'Accusamus sunt iste molestiae placeat blanditiis libero.', '2018-04-30 10:44:00', '2018-04-30 10:44:00');
INSERT INTO `replies` VALUES ('471', '94', '8', 'Ullam veniam sint sunt temporibus minima nam assumenda.', '2018-04-21 01:09:11', '2018-04-21 01:09:11');
INSERT INTO `replies` VALUES ('472', '75', '8', 'Quae est ducimus quasi praesentium occaecati enim praesentium.', '2018-04-30 10:40:53', '2018-04-30 10:40:53');
INSERT INTO `replies` VALUES ('473', '58', '5', 'Soluta placeat ut harum provident.', '2018-04-25 13:54:26', '2018-04-25 13:54:26');
INSERT INTO `replies` VALUES ('474', '6', '10', 'Corporis maxime et quasi esse quia.', '2018-04-16 16:00:31', '2018-04-16 16:00:31');
INSERT INTO `replies` VALUES ('475', '67', '1', 'Dolorem blanditiis voluptates dolor vitae deleniti nulla quia.', '2018-05-07 00:29:12', '2018-05-07 00:29:12');
INSERT INTO `replies` VALUES ('476', '18', '7', 'Quos perferendis nam quos.', '2018-04-14 07:50:56', '2018-04-14 07:50:56');
INSERT INTO `replies` VALUES ('477', '88', '3', 'Numquam iusto voluptates velit amet sint cum.', '2018-04-22 16:40:52', '2018-04-22 16:40:52');
INSERT INTO `replies` VALUES ('478', '17', '6', 'Fuga est ducimus dolor consequatur aut ut sit.', '2018-04-19 09:44:47', '2018-04-19 09:44:47');
INSERT INTO `replies` VALUES ('479', '71', '9', 'Dolores corrupti sed qui aut.', '2018-04-19 15:02:57', '2018-04-19 15:02:57');
INSERT INTO `replies` VALUES ('480', '52', '2', 'Placeat rerum facilis omnis qui minus recusandae est quas.', '2018-04-26 18:09:54', '2018-04-26 18:09:54');
INSERT INTO `replies` VALUES ('481', '40', '9', 'Eum aut ea soluta est.', '2018-04-13 18:25:06', '2018-04-13 18:25:06');
INSERT INTO `replies` VALUES ('482', '58', '7', 'Accusantium et aut id necessitatibus ut et perspiciatis repudiandae.', '2018-04-20 21:11:36', '2018-04-20 21:11:36');
INSERT INTO `replies` VALUES ('483', '54', '1', 'Aperiam ut est nobis dolores.', '2018-04-19 02:27:45', '2018-04-19 02:27:45');
INSERT INTO `replies` VALUES ('484', '25', '1', 'Esse et nostrum eligendi aut.', '2018-04-23 08:23:54', '2018-04-23 08:23:54');
INSERT INTO `replies` VALUES ('485', '76', '6', 'Adipisci veniam laborum qui non molestiae exercitationem.', '2018-04-17 20:43:56', '2018-04-17 20:43:56');
INSERT INTO `replies` VALUES ('486', '17', '2', 'Doloribus odit quae cum aut accusantium.', '2018-04-27 19:03:45', '2018-04-27 19:03:45');
INSERT INTO `replies` VALUES ('487', '14', '6', 'Laborum et est dolor.', '2018-04-20 21:58:51', '2018-04-20 21:58:51');
INSERT INTO `replies` VALUES ('488', '7', '3', 'Facere veniam sed eius et.', '2018-05-06 18:38:47', '2018-05-06 18:38:47');
INSERT INTO `replies` VALUES ('489', '2', '9', 'Autem voluptatibus voluptatem consectetur quod numquam sit quasi.', '2018-04-21 08:04:14', '2018-04-21 08:04:14');
INSERT INTO `replies` VALUES ('490', '42', '2', 'Repellendus aut veritatis voluptas atque culpa et minima.', '2018-04-23 01:48:39', '2018-04-23 01:48:39');
INSERT INTO `replies` VALUES ('491', '7', '8', 'Veritatis dicta quisquam ipsa culpa qui architecto.', '2018-04-18 05:02:04', '2018-04-18 05:02:04');
INSERT INTO `replies` VALUES ('492', '57', '4', 'Repudiandae sed aut suscipit est.', '2018-05-05 16:50:30', '2018-05-05 16:50:30');
INSERT INTO `replies` VALUES ('493', '17', '7', 'Corrupti autem quo consectetur cupiditate.', '2018-04-23 22:54:18', '2018-04-23 22:54:18');
INSERT INTO `replies` VALUES ('494', '76', '4', 'Ea qui ut voluptatem et ut veritatis.', '2018-05-05 20:03:33', '2018-05-05 20:03:33');
INSERT INTO `replies` VALUES ('495', '64', '4', 'Est et molestias nihil similique.', '2018-04-28 18:27:00', '2018-04-28 18:27:00');
INSERT INTO `replies` VALUES ('496', '43', '3', 'Sit vitae voluptas praesentium et dolores.', '2018-04-20 13:22:44', '2018-04-20 13:22:44');
INSERT INTO `replies` VALUES ('497', '85', '1', 'Voluptate maxime reprehenderit numquam soluta hic.', '2018-04-18 17:58:50', '2018-04-18 17:58:50');
INSERT INTO `replies` VALUES ('498', '55', '3', 'Qui magnam enim modi eum qui.', '2018-04-19 13:26:03', '2018-04-19 13:26:03');
INSERT INTO `replies` VALUES ('499', '7', '4', 'Pariatur molestiae deserunt inventore odit dolorem.', '2018-04-12 21:10:01', '2018-04-12 21:10:01');
INSERT INTO `replies` VALUES ('500', '41', '9', 'Eligendi omnis aut vel nihil.', '2018-04-08 10:14:32', '2018-04-08 10:14:32');
INSERT INTO `replies` VALUES ('501', '41', '5', 'Voluptatum ex laboriosam est porro.', '2018-04-10 20:58:53', '2018-04-10 20:58:53');
INSERT INTO `replies` VALUES ('502', '50', '3', 'Natus aut reprehenderit unde doloribus harum dolorum fugiat.', '2018-05-06 14:21:33', '2018-05-06 14:21:33');
INSERT INTO `replies` VALUES ('503', '70', '1', 'Dolore aliquid eum consequatur consequatur et iure ea.', '2018-04-16 16:05:06', '2018-04-16 16:05:06');
INSERT INTO `replies` VALUES ('504', '28', '7', 'Pariatur consequatur sint voluptas omnis culpa ipsam.', '2018-04-16 17:33:59', '2018-04-16 17:33:59');
INSERT INTO `replies` VALUES ('505', '48', '10', 'Cupiditate ut repudiandae inventore suscipit quaerat fugiat inventore.', '2018-04-09 23:39:30', '2018-04-09 23:39:30');
INSERT INTO `replies` VALUES ('506', '94', '3', 'Debitis officiis non officiis ab ipsa.', '2018-04-18 22:59:11', '2018-04-18 22:59:11');
INSERT INTO `replies` VALUES ('507', '3', '2', 'Numquam aliquam doloribus commodi error quod.', '2018-04-21 15:31:08', '2018-04-21 15:31:08');
INSERT INTO `replies` VALUES ('508', '55', '8', 'Minima adipisci velit sit iusto et sunt.', '2018-05-07 04:46:55', '2018-05-07 04:46:55');
INSERT INTO `replies` VALUES ('509', '44', '8', 'Ut omnis et fugit.', '2018-04-30 20:50:35', '2018-04-30 20:50:35');
INSERT INTO `replies` VALUES ('510', '70', '5', 'Temporibus consequatur possimus sapiente alias incidunt sit.', '2018-04-08 05:20:31', '2018-04-08 05:20:31');
INSERT INTO `replies` VALUES ('511', '92', '10', 'Sit officiis quidem assumenda iusto molestias.', '2018-05-01 10:33:24', '2018-05-01 10:33:24');
INSERT INTO `replies` VALUES ('512', '28', '8', 'Delectus pariatur cupiditate natus suscipit et.', '2018-04-25 16:32:04', '2018-04-25 16:32:04');
INSERT INTO `replies` VALUES ('513', '13', '5', 'Eligendi est voluptas dolores adipisci.', '2018-04-21 07:34:47', '2018-04-21 07:34:47');
INSERT INTO `replies` VALUES ('514', '98', '1', 'Rerum incidunt vel cupiditate corrupti.', '2018-04-12 22:12:10', '2018-04-12 22:12:10');
INSERT INTO `replies` VALUES ('515', '19', '4', 'Quasi sint ut voluptatibus qui eveniet.', '2018-05-06 15:49:30', '2018-05-06 15:49:30');
INSERT INTO `replies` VALUES ('516', '79', '6', 'Eligendi corrupti odio ut.', '2018-04-21 15:10:14', '2018-04-21 15:10:14');
INSERT INTO `replies` VALUES ('517', '9', '6', 'Laborum velit placeat sit sed quia.', '2018-04-12 16:55:39', '2018-04-12 16:55:39');
INSERT INTO `replies` VALUES ('518', '8', '4', 'Et eos cum occaecati iusto consequatur voluptates inventore.', '2018-04-16 11:06:34', '2018-04-16 11:06:34');
INSERT INTO `replies` VALUES ('519', '36', '5', 'Expedita voluptatum et quod earum quo est.', '2018-04-26 13:09:18', '2018-04-26 13:09:18');
INSERT INTO `replies` VALUES ('520', '69', '2', 'Amet quis adipisci omnis officia nobis.', '2018-04-30 05:59:32', '2018-04-30 05:59:32');
INSERT INTO `replies` VALUES ('521', '37', '1', 'Iste dolorem repellendus libero explicabo et.', '2018-04-25 18:42:26', '2018-04-25 18:42:26');
INSERT INTO `replies` VALUES ('522', '59', '2', 'Asperiores mollitia dolor cumque explicabo.', '2018-04-14 20:17:02', '2018-04-14 20:17:02');
INSERT INTO `replies` VALUES ('523', '61', '4', 'Et cumque repellendus ut aut qui quo.', '2018-04-28 16:34:32', '2018-04-28 16:34:32');
INSERT INTO `replies` VALUES ('524', '3', '6', 'Ut qui et voluptatem et dolor alias adipisci eveniet.', '2018-04-27 13:27:26', '2018-04-27 13:27:26');
INSERT INTO `replies` VALUES ('525', '55', '7', 'Quam sunt perspiciatis quasi.', '2018-04-21 12:38:10', '2018-04-21 12:38:10');
INSERT INTO `replies` VALUES ('526', '68', '1', 'Sed et sunt omnis et blanditiis suscipit ea omnis.', '2018-04-28 14:53:33', '2018-04-28 14:53:33');
INSERT INTO `replies` VALUES ('527', '53', '9', 'Voluptate aut qui nisi pariatur.', '2018-04-27 13:08:47', '2018-04-27 13:08:47');
INSERT INTO `replies` VALUES ('528', '32', '10', 'Ut iure sit est itaque tempora.', '2018-04-29 06:22:50', '2018-04-29 06:22:50');
INSERT INTO `replies` VALUES ('529', '90', '8', 'Tempore reiciendis qui et non consequuntur enim voluptate.', '2018-04-08 11:37:53', '2018-04-08 11:37:53');
INSERT INTO `replies` VALUES ('530', '50', '10', 'Odio eligendi corporis temporibus veritatis harum perspiciatis.', '2018-04-24 13:20:23', '2018-04-24 13:20:23');
INSERT INTO `replies` VALUES ('531', '9', '9', 'Autem quo molestiae fugiat.', '2018-05-04 00:02:23', '2018-05-04 00:02:23');
INSERT INTO `replies` VALUES ('532', '18', '8', 'Unde tempore ea et fugiat.', '2018-04-29 10:59:43', '2018-04-29 10:59:43');
INSERT INTO `replies` VALUES ('533', '77', '2', 'Eligendi tempore voluptas a.', '2018-04-20 21:48:57', '2018-04-20 21:48:57');
INSERT INTO `replies` VALUES ('534', '82', '9', 'Et facere laborum atque et ab vel soluta.', '2018-04-10 14:13:05', '2018-04-10 14:13:05');
INSERT INTO `replies` VALUES ('535', '21', '5', 'Soluta harum aliquid cumque sapiente occaecati dignissimos magnam.', '2018-04-10 05:16:55', '2018-04-10 05:16:55');
INSERT INTO `replies` VALUES ('536', '31', '4', 'Quo iste odit nisi laudantium quia eaque blanditiis magni.', '2018-04-18 23:19:57', '2018-04-18 23:19:57');
INSERT INTO `replies` VALUES ('537', '78', '9', 'Et quae rem dignissimos omnis.', '2018-04-08 21:31:04', '2018-04-08 21:31:04');
INSERT INTO `replies` VALUES ('538', '23', '10', 'Modi rerum sint omnis voluptas nobis placeat autem cum.', '2018-04-27 14:50:50', '2018-04-27 14:50:50');
INSERT INTO `replies` VALUES ('539', '26', '4', 'Quia architecto eius occaecati quis.', '2018-05-01 10:37:49', '2018-05-01 10:37:49');
INSERT INTO `replies` VALUES ('540', '2', '1', 'Quis qui minus aliquid consequatur nulla.', '2018-04-16 06:04:02', '2018-04-16 06:04:02');
INSERT INTO `replies` VALUES ('541', '95', '2', 'Cum qui nisi officiis omnis non nisi omnis.', '2018-05-04 01:55:28', '2018-05-04 01:55:28');
INSERT INTO `replies` VALUES ('542', '73', '9', 'Perferendis sed tempore dolor ea quam eaque quibusdam consequatur.', '2018-05-06 12:34:15', '2018-05-06 12:34:15');
INSERT INTO `replies` VALUES ('543', '21', '2', 'Eveniet facilis repellat animi ut quos.', '2018-04-14 11:26:02', '2018-04-14 11:26:02');
INSERT INTO `replies` VALUES ('544', '83', '1', 'Itaque id molestiae ab.', '2018-05-01 22:45:03', '2018-05-01 22:45:03');
INSERT INTO `replies` VALUES ('545', '28', '1', 'Esse quaerat necessitatibus et consequatur ut sed.', '2018-04-12 07:51:06', '2018-04-12 07:51:06');
INSERT INTO `replies` VALUES ('546', '3', '5', 'Est quam nam laborum quisquam.', '2018-04-12 04:10:07', '2018-04-12 04:10:07');
INSERT INTO `replies` VALUES ('547', '16', '10', 'Iusto fuga molestias quidem voluptatem harum nostrum sint.', '2018-04-22 17:16:48', '2018-04-22 17:16:48');
INSERT INTO `replies` VALUES ('548', '13', '4', 'Quia totam ipsa velit et.', '2018-05-02 01:04:22', '2018-05-02 01:04:22');
INSERT INTO `replies` VALUES ('549', '93', '10', 'Facilis asperiores similique repellat nobis.', '2018-04-12 06:32:33', '2018-04-12 06:32:33');
INSERT INTO `replies` VALUES ('550', '49', '1', 'Et in odit perspiciatis assumenda exercitationem omnis.', '2018-05-07 14:45:24', '2018-05-07 14:45:24');
INSERT INTO `replies` VALUES ('551', '45', '4', 'Quod debitis et et officia.', '2018-04-14 23:43:55', '2018-04-14 23:43:55');
INSERT INTO `replies` VALUES ('552', '97', '3', 'Odio rem in dolorem dolorum libero ut iste.', '2018-04-15 07:32:38', '2018-04-15 07:32:38');
INSERT INTO `replies` VALUES ('553', '58', '4', 'Deserunt consequatur alias in earum minima id aut.', '2018-04-16 21:00:47', '2018-04-16 21:00:47');
INSERT INTO `replies` VALUES ('554', '41', '3', 'Modi dolorem ab natus quia eum.', '2018-05-02 07:03:27', '2018-05-02 07:03:27');
INSERT INTO `replies` VALUES ('555', '82', '8', 'Tenetur fugiat corporis ducimus non neque suscipit.', '2018-04-16 03:36:24', '2018-04-16 03:36:24');
INSERT INTO `replies` VALUES ('556', '97', '1', 'Voluptates enim sint quam odio non numquam aut.', '2018-04-20 20:48:04', '2018-04-20 20:48:04');
INSERT INTO `replies` VALUES ('557', '35', '9', 'Provident laudantium omnis minima quibusdam doloremque.', '2018-05-05 05:16:09', '2018-05-05 05:16:09');
INSERT INTO `replies` VALUES ('558', '27', '8', 'Inventore qui optio esse porro ut reiciendis illo.', '2018-04-15 07:03:45', '2018-04-15 07:03:45');
INSERT INTO `replies` VALUES ('559', '35', '4', 'Inventore dolorem rerum magni nobis numquam.', '2018-04-22 23:03:21', '2018-04-22 23:03:21');
INSERT INTO `replies` VALUES ('560', '4', '7', 'Corrupti fugiat repellendus excepturi et est.', '2018-04-14 11:48:07', '2018-04-14 11:48:07');
INSERT INTO `replies` VALUES ('561', '32', '2', 'Nihil tempora et optio voluptatem provident.', '2018-04-11 00:08:19', '2018-04-11 00:08:19');
INSERT INTO `replies` VALUES ('562', '59', '1', 'Et numquam officiis similique rerum ullam id est.', '2018-04-27 03:45:31', '2018-04-27 03:45:31');
INSERT INTO `replies` VALUES ('563', '23', '6', 'Iure quis alias rerum eius perspiciatis nam corporis.', '2018-04-18 09:55:17', '2018-04-18 09:55:17');
INSERT INTO `replies` VALUES ('564', '63', '5', 'Accusantium aut minus sit recusandae.', '2018-04-27 19:04:17', '2018-04-27 19:04:17');
INSERT INTO `replies` VALUES ('565', '33', '9', 'Praesentium provident et blanditiis eaque quasi nihil.', '2018-04-14 17:23:04', '2018-04-14 17:23:04');
INSERT INTO `replies` VALUES ('566', '32', '10', 'Rerum ad quam totam dolorem.', '2018-04-24 03:44:58', '2018-04-24 03:44:58');
INSERT INTO `replies` VALUES ('567', '28', '2', 'Quisquam aut quis aperiam quia.', '2018-04-22 14:11:16', '2018-04-22 14:11:16');
INSERT INTO `replies` VALUES ('568', '41', '6', 'Aut quia dolorum omnis quas et.', '2018-04-13 11:58:47', '2018-04-13 11:58:47');
INSERT INTO `replies` VALUES ('569', '15', '2', 'Voluptas aut porro repudiandae et qui.', '2018-04-15 01:19:28', '2018-04-15 01:19:28');
INSERT INTO `replies` VALUES ('570', '57', '3', 'Aut quis deserunt qui.', '2018-04-13 15:41:44', '2018-04-13 15:41:44');
INSERT INTO `replies` VALUES ('571', '70', '7', 'Non tempora autem nesciunt illo.', '2018-05-04 01:37:27', '2018-05-04 01:37:27');
INSERT INTO `replies` VALUES ('572', '34', '1', 'Et qui magnam veniam.', '2018-04-30 06:51:44', '2018-04-30 06:51:44');
INSERT INTO `replies` VALUES ('573', '81', '9', 'Est tenetur et sapiente assumenda ut in ab.', '2018-04-30 12:07:11', '2018-04-30 12:07:11');
INSERT INTO `replies` VALUES ('574', '44', '1', 'Iusto et qui nesciunt dolorem recusandae alias ipsa.', '2018-04-14 08:02:09', '2018-04-14 08:02:09');
INSERT INTO `replies` VALUES ('575', '25', '2', 'Quod pariatur cum aliquid.', '2018-04-27 01:09:40', '2018-04-27 01:09:40');
INSERT INTO `replies` VALUES ('576', '94', '10', 'Veritatis nobis ad aut officia qui sequi quaerat.', '2018-04-18 12:19:13', '2018-04-18 12:19:13');
INSERT INTO `replies` VALUES ('577', '11', '7', 'Tenetur id odio ut occaecati veritatis explicabo et.', '2018-04-14 01:26:39', '2018-04-14 01:26:39');
INSERT INTO `replies` VALUES ('578', '18', '1', 'Sit perspiciatis dolores odit porro.', '2018-04-13 13:44:42', '2018-04-13 13:44:42');
INSERT INTO `replies` VALUES ('579', '95', '6', 'Quasi fuga eius est sint soluta hic maiores.', '2018-05-03 01:04:10', '2018-05-03 01:04:10');
INSERT INTO `replies` VALUES ('580', '68', '2', 'Porro id quae temporibus impedit ratione quia labore veritatis.', '2018-05-01 05:06:14', '2018-05-01 05:06:14');
INSERT INTO `replies` VALUES ('581', '15', '8', 'Totam itaque aperiam nihil voluptas odio dolor hic et.', '2018-04-28 13:34:59', '2018-04-28 13:34:59');
INSERT INTO `replies` VALUES ('582', '64', '6', 'Repellat dolores voluptatum velit dignissimos.', '2018-04-16 08:30:51', '2018-04-16 08:30:51');
INSERT INTO `replies` VALUES ('583', '82', '2', 'Nisi dolorem voluptatem cum quibusdam.', '2018-05-01 21:45:30', '2018-05-01 21:45:30');
INSERT INTO `replies` VALUES ('584', '66', '8', 'Dolores dignissimos dolorem animi quam nobis dolores.', '2018-04-14 04:38:20', '2018-04-14 04:38:20');
INSERT INTO `replies` VALUES ('585', '9', '8', 'Vero delectus magnam eos.', '2018-04-23 16:06:24', '2018-04-23 16:06:24');
INSERT INTO `replies` VALUES ('586', '39', '7', 'Laborum aut mollitia ut sit debitis.', '2018-04-16 01:32:33', '2018-04-16 01:32:33');
INSERT INTO `replies` VALUES ('588', '13', '4', 'Et autem in eius velit cumque ut rem in.', '2018-04-22 01:15:22', '2018-04-22 01:15:22');
INSERT INTO `replies` VALUES ('589', '76', '8', 'Recusandae architecto tempore dolor quae aut.', '2018-04-10 15:16:28', '2018-04-10 15:16:28');
INSERT INTO `replies` VALUES ('590', '41', '5', 'Harum et voluptas quisquam rerum officia.', '2018-04-13 22:41:51', '2018-04-13 22:41:51');
INSERT INTO `replies` VALUES ('591', '36', '8', 'Quos libero ex itaque reiciendis natus nobis.', '2018-04-14 11:53:26', '2018-04-14 11:53:26');
INSERT INTO `replies` VALUES ('592', '74', '9', 'Omnis tenetur cupiditate aut rerum magni.', '2018-04-17 17:44:05', '2018-04-17 17:44:05');
INSERT INTO `replies` VALUES ('593', '85', '1', 'Minus tempore libero architecto repudiandae natus rerum placeat quia.', '2018-05-03 05:48:37', '2018-05-03 05:48:37');
INSERT INTO `replies` VALUES ('594', '74', '6', 'Vero cupiditate nostrum est ea dolorem.', '2018-04-14 00:57:19', '2018-04-14 00:57:19');
INSERT INTO `replies` VALUES ('595', '66', '1', 'Quis in harum dicta ullam sed qui.', '2018-04-24 04:05:32', '2018-04-24 04:05:32');
INSERT INTO `replies` VALUES ('596', '65', '5', 'Voluptatum ducimus magnam tenetur adipisci.', '2018-04-25 22:43:47', '2018-04-25 22:43:47');
INSERT INTO `replies` VALUES ('597', '34', '10', 'Sit quam facilis at voluptatum voluptatem iusto voluptatem ut.', '2018-05-06 08:53:19', '2018-05-06 08:53:19');
INSERT INTO `replies` VALUES ('598', '98', '7', 'Explicabo sunt id ea saepe dignissimos.', '2018-04-30 07:55:44', '2018-04-30 07:55:44');
INSERT INTO `replies` VALUES ('599', '31', '8', 'Omnis ut aut facilis vitae.', '2018-04-24 15:29:53', '2018-04-24 15:29:53');
INSERT INTO `replies` VALUES ('600', '29', '2', 'Sapiente pariatur explicabo porro quasi.', '2018-04-23 13:15:07', '2018-04-23 13:15:07');
INSERT INTO `replies` VALUES ('601', '70', '5', 'Aut quisquam qui autem illo nesciunt voluptatem alias.', '2018-04-26 17:57:03', '2018-04-26 17:57:03');
INSERT INTO `replies` VALUES ('602', '64', '8', 'Non minus impedit explicabo cumque quos modi.', '2018-04-18 16:57:12', '2018-04-18 16:57:12');
INSERT INTO `replies` VALUES ('603', '79', '1', 'Dolorem quia quo id et qui.', '2018-04-15 12:19:30', '2018-04-15 12:19:30');
INSERT INTO `replies` VALUES ('604', '39', '1', 'Eum est eos et.', '2018-05-04 22:48:19', '2018-05-04 22:48:19');
INSERT INTO `replies` VALUES ('605', '2', '8', 'Voluptatem deleniti necessitatibus molestias distinctio tempora molestias quibusdam eveniet.', '2018-05-05 06:38:40', '2018-05-05 06:38:40');
INSERT INTO `replies` VALUES ('606', '37', '1', 'Officiis omnis et aut veniam accusantium.', '2018-05-03 16:28:00', '2018-05-03 16:28:00');
INSERT INTO `replies` VALUES ('607', '84', '8', 'Minus quas exercitationem architecto eos aut ducimus id.', '2018-04-24 09:47:29', '2018-04-24 09:47:29');
INSERT INTO `replies` VALUES ('608', '68', '5', 'Voluptates in consequatur ea illo temporibus.', '2018-04-22 04:27:54', '2018-04-22 04:27:54');
INSERT INTO `replies` VALUES ('609', '45', '2', 'Aperiam dignissimos nostrum dolorem adipisci.', '2018-05-07 14:35:45', '2018-05-07 14:35:45');
INSERT INTO `replies` VALUES ('610', '85', '1', 'Ut in a mollitia quia non.', '2018-04-24 07:20:13', '2018-04-24 07:20:13');
INSERT INTO `replies` VALUES ('611', '85', '9', 'Eius cumque aliquam quidem molestias.', '2018-05-03 20:06:49', '2018-05-03 20:06:49');
INSERT INTO `replies` VALUES ('612', '53', '1', 'Quibusdam itaque quod laboriosam expedita.', '2018-04-22 04:33:21', '2018-04-22 04:33:21');
INSERT INTO `replies` VALUES ('613', '7', '3', 'Perferendis distinctio doloremque deserunt expedita.', '2018-04-21 07:07:33', '2018-04-21 07:07:33');
INSERT INTO `replies` VALUES ('614', '35', '2', 'Repellendus nesciunt illo debitis quia maiores harum.', '2018-04-12 01:04:37', '2018-04-12 01:04:37');
INSERT INTO `replies` VALUES ('615', '50', '8', 'Incidunt omnis eveniet quia.', '2018-04-15 08:16:05', '2018-04-15 08:16:05');
INSERT INTO `replies` VALUES ('616', '40', '9', 'At cupiditate possimus sunt consectetur.', '2018-04-15 09:38:44', '2018-04-15 09:38:44');
INSERT INTO `replies` VALUES ('617', '8', '9', 'Ex molestiae aliquam laborum est neque.', '2018-04-30 16:17:01', '2018-04-30 16:17:01');
INSERT INTO `replies` VALUES ('618', '74', '7', 'Cupiditate iste harum asperiores provident.', '2018-04-19 11:54:55', '2018-04-19 11:54:55');
INSERT INTO `replies` VALUES ('619', '33', '8', 'Earum est laudantium et aut sint dolores veritatis repellat.', '2018-04-08 02:23:48', '2018-04-08 02:23:48');
INSERT INTO `replies` VALUES ('620', '51', '8', 'Ut non fugiat nulla possimus.', '2018-04-15 12:31:29', '2018-04-15 12:31:29');
INSERT INTO `replies` VALUES ('621', '20', '7', 'Quas eos laboriosam corrupti neque eum quo error repellat.', '2018-04-10 12:25:26', '2018-04-10 12:25:26');
INSERT INTO `replies` VALUES ('622', '14', '2', 'Sapiente quis qui earum.', '2018-04-29 00:49:55', '2018-04-29 00:49:55');
INSERT INTO `replies` VALUES ('623', '97', '8', 'Itaque nisi et et consequatur odit.', '2018-04-08 06:53:55', '2018-04-08 06:53:55');
INSERT INTO `replies` VALUES ('624', '63', '7', 'Aut in sunt blanditiis unde et.', '2018-04-09 17:26:34', '2018-04-09 17:26:34');
INSERT INTO `replies` VALUES ('625', '76', '5', 'Voluptatem occaecati ratione error nam error dolorum.', '2018-04-28 01:24:50', '2018-04-28 01:24:50');
INSERT INTO `replies` VALUES ('626', '18', '1', 'Aliquam quo debitis fugiat dolorem voluptas et optio.', '2018-05-05 03:27:51', '2018-05-05 03:27:51');
INSERT INTO `replies` VALUES ('627', '41', '9', 'Aut molestiae delectus quos facilis neque enim.', '2018-04-27 07:05:10', '2018-04-27 07:05:10');
INSERT INTO `replies` VALUES ('628', '48', '7', 'Qui qui impedit at voluptas consectetur ab.', '2018-04-09 11:00:27', '2018-04-09 11:00:27');
INSERT INTO `replies` VALUES ('629', '55', '6', 'Eos natus vero aliquam non et assumenda quaerat.', '2018-04-09 18:45:07', '2018-04-09 18:45:07');
INSERT INTO `replies` VALUES ('630', '53', '2', 'Earum velit cum est.', '2018-04-17 08:01:41', '2018-04-17 08:01:41');
INSERT INTO `replies` VALUES ('631', '31', '9', 'Pariatur sapiente est et in libero non.', '2018-04-22 18:53:34', '2018-04-22 18:53:34');
INSERT INTO `replies` VALUES ('632', '85', '4', 'Dolore ut praesentium molestiae sit alias itaque amet.', '2018-04-13 00:35:37', '2018-04-13 00:35:37');
INSERT INTO `replies` VALUES ('633', '49', '9', 'At sunt debitis veritatis possimus molestiae aperiam dolorem dolor.', '2018-05-06 22:24:42', '2018-05-06 22:24:42');
INSERT INTO `replies` VALUES ('634', '16', '5', 'Quae et enim quae neque ratione minima repellendus.', '2018-04-11 22:45:51', '2018-04-11 22:45:51');
INSERT INTO `replies` VALUES ('635', '39', '2', 'Est voluptatem maxime molestiae.', '2018-04-10 00:21:00', '2018-04-10 00:21:00');
INSERT INTO `replies` VALUES ('636', '50', '9', 'Distinctio eum saepe rem unde.', '2018-04-17 11:49:27', '2018-04-17 11:49:27');
INSERT INTO `replies` VALUES ('637', '41', '3', 'Maiores qui dicta in et.', '2018-05-07 09:24:08', '2018-05-07 09:24:08');
INSERT INTO `replies` VALUES ('638', '91', '6', 'Qui quaerat aperiam necessitatibus rerum non qui.', '2018-04-13 22:50:24', '2018-04-13 22:50:24');
INSERT INTO `replies` VALUES ('639', '66', '5', 'Nisi consectetur ut et laborum.', '2018-05-03 17:23:39', '2018-05-03 17:23:39');
INSERT INTO `replies` VALUES ('640', '17', '7', 'Voluptates sed temporibus magnam.', '2018-05-01 06:40:12', '2018-05-01 06:40:12');
INSERT INTO `replies` VALUES ('641', '35', '7', 'Accusamus iure totam dicta reprehenderit aut incidunt aut eum.', '2018-04-25 15:11:12', '2018-04-25 15:11:12');
INSERT INTO `replies` VALUES ('642', '26', '2', 'Impedit officiis harum quae numquam consequatur.', '2018-04-18 17:15:33', '2018-04-18 17:15:33');
INSERT INTO `replies` VALUES ('643', '37', '10', 'Cum necessitatibus est enim hic molestias sed.', '2018-04-21 03:15:46', '2018-04-21 03:15:46');
INSERT INTO `replies` VALUES ('644', '56', '8', 'Eum aut veritatis necessitatibus ducimus nisi.', '2018-04-14 06:14:14', '2018-04-14 06:14:14');
INSERT INTO `replies` VALUES ('645', '27', '7', 'Facilis ut neque accusamus dolore fuga et velit dolores.', '2018-04-27 16:08:58', '2018-04-27 16:08:58');
INSERT INTO `replies` VALUES ('646', '67', '5', 'Nesciunt aut est et eum mollitia autem debitis odit.', '2018-04-23 02:29:33', '2018-04-23 02:29:33');
INSERT INTO `replies` VALUES ('647', '36', '8', 'Ut itaque minus dolorum.', '2018-05-05 12:30:02', '2018-05-05 12:30:02');
INSERT INTO `replies` VALUES ('648', '79', '5', 'Quas consequatur ipsa dignissimos consequatur voluptas laborum aut.', '2018-04-10 22:19:33', '2018-04-10 22:19:33');
INSERT INTO `replies` VALUES ('649', '81', '9', 'Et et blanditiis dolor dicta quo cupiditate.', '2018-05-06 15:38:54', '2018-05-06 15:38:54');
INSERT INTO `replies` VALUES ('650', '26', '1', 'Voluptate neque rem aperiam ipsam dolor eaque officiis.', '2018-05-04 07:03:46', '2018-05-04 07:03:46');
INSERT INTO `replies` VALUES ('651', '46', '4', 'Quo et sed animi numquam ut recusandae quos ab.', '2018-04-11 10:43:37', '2018-04-11 10:43:37');
INSERT INTO `replies` VALUES ('652', '24', '9', 'Sapiente iste nostrum optio perspiciatis et rerum.', '2018-04-27 07:44:56', '2018-04-27 07:44:56');
INSERT INTO `replies` VALUES ('653', '1', '3', 'Veritatis amet repellat facilis ducimus.', '2018-04-19 03:28:29', '2018-04-19 03:28:29');
INSERT INTO `replies` VALUES ('654', '27', '10', 'Est perspiciatis et quis atque officia.', '2018-05-06 16:13:51', '2018-05-06 16:13:51');
INSERT INTO `replies` VALUES ('655', '20', '9', 'Et nostrum eos dicta iure quia facilis.', '2018-04-26 06:05:02', '2018-04-26 06:05:02');
INSERT INTO `replies` VALUES ('656', '91', '4', 'Possimus blanditiis earum in aut quibusdam modi praesentium.', '2018-05-07 03:53:30', '2018-05-07 03:53:30');
INSERT INTO `replies` VALUES ('657', '67', '4', 'Corrupti at dignissimos voluptas eos optio.', '2018-04-08 12:02:55', '2018-04-08 12:02:55');
INSERT INTO `replies` VALUES ('658', '91', '3', 'Placeat qui cumque molestiae cum vero eveniet qui sed.', '2018-04-14 23:41:04', '2018-04-14 23:41:04');
INSERT INTO `replies` VALUES ('659', '58', '2', 'Pariatur laborum unde beatae blanditiis.', '2018-04-14 01:19:59', '2018-04-14 01:19:59');
INSERT INTO `replies` VALUES ('660', '79', '3', 'Architecto aliquam error illo quibusdam quibusdam ratione nisi.', '2018-04-11 01:56:46', '2018-04-11 01:56:46');
INSERT INTO `replies` VALUES ('661', '58', '5', 'Dolor cumque voluptate sed ut est ipsa.', '2018-04-23 22:05:29', '2018-04-23 22:05:29');
INSERT INTO `replies` VALUES ('662', '14', '4', 'Aperiam magnam ut esse quo odio ducimus.', '2018-05-01 04:29:04', '2018-05-01 04:29:04');
INSERT INTO `replies` VALUES ('663', '14', '10', 'Minima repudiandae deleniti reiciendis omnis ea vel.', '2018-04-18 15:14:31', '2018-04-18 15:14:31');
INSERT INTO `replies` VALUES ('664', '23', '10', 'Nihil quaerat sit facere ea.', '2018-05-03 01:29:53', '2018-05-03 01:29:53');
INSERT INTO `replies` VALUES ('665', '72', '6', 'Rem quasi cupiditate mollitia eaque.', '2018-04-08 02:28:29', '2018-04-08 02:28:29');
INSERT INTO `replies` VALUES ('666', '74', '5', 'Illum molestiae corrupti nulla quis quidem ea assumenda.', '2018-04-26 10:08:09', '2018-04-26 10:08:09');
INSERT INTO `replies` VALUES ('667', '28', '8', 'Asperiores qui quibusdam atque voluptatibus velit delectus eum.', '2018-04-19 14:16:14', '2018-04-19 14:16:14');
INSERT INTO `replies` VALUES ('668', '36', '1', 'Deleniti dolores earum veniam sit.', '2018-05-03 00:18:20', '2018-05-03 00:18:20');
INSERT INTO `replies` VALUES ('669', '90', '2', 'Nulla ea est quae et voluptatem.', '2018-04-29 12:57:35', '2018-04-29 12:57:35');
INSERT INTO `replies` VALUES ('670', '72', '2', 'Doloribus nulla expedita aperiam est iusto voluptas harum.', '2018-04-24 01:33:15', '2018-04-24 01:33:15');
INSERT INTO `replies` VALUES ('671', '68', '1', 'Incidunt sunt minima illo quo et eum voluptatum.', '2018-04-23 15:06:15', '2018-04-23 15:06:15');
INSERT INTO `replies` VALUES ('672', '85', '7', 'Voluptatem eos nulla inventore porro eos et.', '2018-04-14 06:01:00', '2018-04-14 06:01:00');
INSERT INTO `replies` VALUES ('673', '41', '2', 'Dolore quia aut velit.', '2018-04-19 07:49:28', '2018-04-19 07:49:28');
INSERT INTO `replies` VALUES ('674', '79', '6', 'Unde voluptatem tempore odio quos eaque magni.', '2018-04-20 04:33:25', '2018-04-20 04:33:25');
INSERT INTO `replies` VALUES ('675', '84', '2', 'Iure odio cumque repudiandae incidunt impedit.', '2018-04-20 04:12:22', '2018-04-20 04:12:22');
INSERT INTO `replies` VALUES ('676', '41', '7', 'Assumenda veniam perferendis ut.', '2018-04-23 21:59:58', '2018-04-23 21:59:58');
INSERT INTO `replies` VALUES ('677', '80', '7', 'Saepe delectus rem enim aspernatur sed maiores occaecati.', '2018-04-28 23:51:31', '2018-04-28 23:51:31');
INSERT INTO `replies` VALUES ('678', '72', '5', 'Dolorem voluptatem atque et.', '2018-04-29 02:27:48', '2018-04-29 02:27:48');
INSERT INTO `replies` VALUES ('679', '3', '8', 'Tempore ipsam tenetur cupiditate dolore.', '2018-04-28 00:54:29', '2018-04-28 00:54:29');
INSERT INTO `replies` VALUES ('680', '63', '2', 'Eos beatae amet ut tenetur voluptatem commodi saepe nostrum.', '2018-04-18 12:20:11', '2018-04-18 12:20:11');
INSERT INTO `replies` VALUES ('681', '6', '1', 'Iste fugit ad dignissimos recusandae sint quo.', '2018-04-12 03:38:43', '2018-04-12 03:38:43');
INSERT INTO `replies` VALUES ('683', '91', '10', 'Consequatur nesciunt neque voluptatem quaerat officiis.', '2018-04-20 15:36:36', '2018-04-20 15:36:36');
INSERT INTO `replies` VALUES ('684', '36', '7', 'Et cumque ea et.', '2018-04-17 11:38:31', '2018-04-17 11:38:31');
INSERT INTO `replies` VALUES ('685', '90', '1', 'Quia voluptatem nihil officia nam et ex.', '2018-04-16 03:59:24', '2018-04-16 03:59:24');
INSERT INTO `replies` VALUES ('686', '97', '6', 'Voluptates nihil ut ea quidem aut.', '2018-04-27 20:38:41', '2018-04-27 20:38:41');
INSERT INTO `replies` VALUES ('687', '85', '7', 'Animi rerum sapiente deleniti animi eum explicabo atque.', '2018-04-11 15:53:02', '2018-04-11 15:53:02');
INSERT INTO `replies` VALUES ('688', '32', '5', 'Nam repellendus voluptas recusandae incidunt.', '2018-05-03 01:10:44', '2018-05-03 01:10:44');
INSERT INTO `replies` VALUES ('689', '49', '7', 'Et amet sit eius occaecati hic omnis iste.', '2018-04-27 17:35:44', '2018-04-27 17:35:44');
INSERT INTO `replies` VALUES ('690', '30', '1', 'Quis ea voluptate consequatur non.', '2018-04-12 00:05:33', '2018-04-12 00:05:33');
INSERT INTO `replies` VALUES ('691', '22', '8', 'Quam id sit et sed officiis et id eveniet.', '2018-04-08 00:54:06', '2018-04-08 00:54:06');
INSERT INTO `replies` VALUES ('692', '10', '7', 'Nihil ullam sint quae inventore rerum.', '2018-04-13 22:17:12', '2018-04-13 22:17:12');
INSERT INTO `replies` VALUES ('693', '77', '3', 'Omnis quo quis error mollitia aliquam vel.', '2018-04-16 13:57:08', '2018-04-16 13:57:08');
INSERT INTO `replies` VALUES ('694', '6', '2', 'Aut dolorum incidunt aliquid dignissimos velit numquam ut unde.', '2018-04-13 02:17:25', '2018-04-13 02:17:25');
INSERT INTO `replies` VALUES ('695', '78', '10', 'Facere amet et quo quae voluptatibus quod eum ut.', '2018-04-29 13:44:11', '2018-04-29 13:44:11');
INSERT INTO `replies` VALUES ('696', '28', '7', 'Ea consequatur voluptas aut vero magnam aut.', '2018-04-12 01:16:55', '2018-04-12 01:16:55');
INSERT INTO `replies` VALUES ('697', '81', '3', 'Corrupti explicabo tenetur voluptatem eaque delectus.', '2018-05-04 16:25:33', '2018-05-04 16:25:33');
INSERT INTO `replies` VALUES ('698', '77', '6', 'Soluta natus ut accusantium suscipit.', '2018-05-07 09:38:48', '2018-05-07 09:38:48');
INSERT INTO `replies` VALUES ('699', '12', '6', 'Doloribus hic neque et placeat id.', '2018-04-08 23:21:04', '2018-04-08 23:21:04');
INSERT INTO `replies` VALUES ('700', '95', '7', 'Nulla voluptas laborum sit et voluptas ut porro.', '2018-04-10 14:23:47', '2018-04-10 14:23:47');
INSERT INTO `replies` VALUES ('701', '42', '1', 'Quaerat aliquam possimus deserunt sit quae qui.', '2018-04-25 06:02:33', '2018-04-25 06:02:33');
INSERT INTO `replies` VALUES ('702', '74', '3', 'Aut eum delectus qui velit.', '2018-04-14 04:35:20', '2018-04-14 04:35:20');
INSERT INTO `replies` VALUES ('703', '45', '3', 'Quibusdam tenetur ut officiis velit.', '2018-04-30 15:41:31', '2018-04-30 15:41:31');
INSERT INTO `replies` VALUES ('704', '47', '3', 'Maiores modi consequatur explicabo at et totam qui.', '2018-04-19 12:05:33', '2018-04-19 12:05:33');
INSERT INTO `replies` VALUES ('705', '62', '2', 'Autem nemo quibusdam maiores et corrupti.', '2018-04-21 13:46:48', '2018-04-21 13:46:48');
INSERT INTO `replies` VALUES ('706', '97', '3', 'Temporibus rerum iure nemo minima voluptatem et.', '2018-04-23 09:08:20', '2018-04-23 09:08:20');
INSERT INTO `replies` VALUES ('707', '90', '7', 'Quas aperiam illo rerum incidunt qui animi et ea.', '2018-04-11 20:48:50', '2018-04-11 20:48:50');
INSERT INTO `replies` VALUES ('708', '49', '10', 'Quas vero aut soluta qui placeat.', '2018-04-24 09:18:07', '2018-04-24 09:18:07');
INSERT INTO `replies` VALUES ('709', '27', '10', 'Dolorum voluptates debitis delectus esse fugiat placeat tenetur.', '2018-05-03 11:40:53', '2018-05-03 11:40:53');
INSERT INTO `replies` VALUES ('710', '78', '2', 'Maiores omnis commodi ut.', '2018-04-26 08:23:51', '2018-04-26 08:23:51');
INSERT INTO `replies` VALUES ('711', '6', '1', 'Possimus quis quia dolor vero pariatur.', '2018-04-21 16:09:45', '2018-04-21 16:09:45');
INSERT INTO `replies` VALUES ('712', '88', '4', 'Quis explicabo vitae et amet.', '2018-04-10 08:03:19', '2018-04-10 08:03:19');
INSERT INTO `replies` VALUES ('713', '97', '10', 'A recusandae amet nemo.', '2018-04-20 16:24:51', '2018-04-20 16:24:51');
INSERT INTO `replies` VALUES ('714', '34', '6', 'Sequi voluptatum et ad odio dignissimos.', '2018-05-03 18:21:56', '2018-05-03 18:21:56');
INSERT INTO `replies` VALUES ('715', '42', '1', 'Voluptatem eos neque et sit reiciendis autem perspiciatis.', '2018-05-02 00:52:40', '2018-05-02 00:52:40');
INSERT INTO `replies` VALUES ('716', '56', '6', 'Perspiciatis ad nam velit ut cum voluptatem molestiae numquam.', '2018-04-16 02:06:12', '2018-04-16 02:06:12');
INSERT INTO `replies` VALUES ('717', '32', '6', 'Qui reiciendis praesentium animi reprehenderit repellat et nesciunt.', '2018-05-07 05:12:46', '2018-05-07 05:12:46');
INSERT INTO `replies` VALUES ('718', '18', '7', 'Impedit illo sit laboriosam non et non enim.', '2018-04-26 06:58:27', '2018-04-26 06:58:27');
INSERT INTO `replies` VALUES ('719', '74', '10', 'Magni amet provident maiores provident qui omnis qui aut.', '2018-05-01 18:58:56', '2018-05-01 18:58:56');
INSERT INTO `replies` VALUES ('720', '87', '6', 'Odit explicabo voluptas possimus ut perferendis doloremque.', '2018-04-25 21:36:08', '2018-04-25 21:36:08');
INSERT INTO `replies` VALUES ('721', '70', '7', 'Voluptas id eaque non fuga.', '2018-04-26 21:33:41', '2018-04-26 21:33:41');
INSERT INTO `replies` VALUES ('722', '63', '7', 'Possimus velit vero dolorem non.', '2018-04-08 06:33:25', '2018-04-08 06:33:25');
INSERT INTO `replies` VALUES ('723', '13', '1', 'Reprehenderit facilis sed aspernatur ea quisquam perferendis dolor.', '2018-04-25 02:38:24', '2018-04-25 02:38:24');
INSERT INTO `replies` VALUES ('724', '93', '3', 'Omnis voluptates sint ut sed molestias.', '2018-04-13 04:57:21', '2018-04-13 04:57:21');
INSERT INTO `replies` VALUES ('725', '42', '1', 'Vitae voluptas doloribus delectus nulla.', '2018-04-09 04:38:31', '2018-04-09 04:38:31');
INSERT INTO `replies` VALUES ('726', '27', '6', 'Ratione voluptatem excepturi quaerat eius possimus est laudantium.', '2018-04-28 23:06:57', '2018-04-28 23:06:57');
INSERT INTO `replies` VALUES ('727', '7', '2', 'Laudantium ratione quo voluptatum nostrum totam harum.', '2018-04-15 09:37:21', '2018-04-15 09:37:21');
INSERT INTO `replies` VALUES ('728', '52', '8', 'Illum aliquam quis asperiores autem.', '2018-04-08 15:06:25', '2018-04-08 15:06:25');
INSERT INTO `replies` VALUES ('729', '60', '1', 'Laudantium repellendus in sequi nam nihil.', '2018-04-30 08:06:21', '2018-04-30 08:06:21');
INSERT INTO `replies` VALUES ('730', '79', '7', 'Officia qui quo voluptates voluptatem magnam.', '2018-04-14 13:05:47', '2018-04-14 13:05:47');
INSERT INTO `replies` VALUES ('731', '38', '3', 'Et pariatur ut qui.', '2018-05-04 20:12:24', '2018-05-04 20:12:24');
INSERT INTO `replies` VALUES ('732', '86', '6', 'Dolores deserunt optio quo magnam sequi.', '2018-05-04 01:45:43', '2018-05-04 01:45:43');
INSERT INTO `replies` VALUES ('733', '53', '5', 'Et magni eos natus.', '2018-04-29 07:06:24', '2018-04-29 07:06:24');
INSERT INTO `replies` VALUES ('734', '49', '6', 'Mollitia dolore sint doloribus est totam ut esse.', '2018-04-12 17:09:22', '2018-04-12 17:09:22');
INSERT INTO `replies` VALUES ('735', '67', '1', 'Blanditiis consequatur fuga voluptas.', '2018-05-05 17:44:20', '2018-05-05 17:44:20');
INSERT INTO `replies` VALUES ('736', '93', '2', 'Suscipit harum omnis ut officiis.', '2018-05-05 14:27:04', '2018-05-05 14:27:04');
INSERT INTO `replies` VALUES ('737', '14', '7', 'Ut rerum dolor sit sapiente.', '2018-04-26 00:07:03', '2018-04-26 00:07:03');
INSERT INTO `replies` VALUES ('738', '56', '6', 'In qui voluptas unde.', '2018-04-29 02:01:31', '2018-04-29 02:01:31');
INSERT INTO `replies` VALUES ('739', '72', '6', 'Quisquam quo voluptatem explicabo voluptate hic inventore.', '2018-05-05 21:47:11', '2018-05-05 21:47:11');
INSERT INTO `replies` VALUES ('740', '55', '4', 'Ab molestiae adipisci voluptas non.', '2018-04-10 23:35:44', '2018-04-10 23:35:44');
INSERT INTO `replies` VALUES ('741', '38', '4', 'Voluptatibus tempora reiciendis asperiores distinctio.', '2018-04-27 01:28:53', '2018-04-27 01:28:53');
INSERT INTO `replies` VALUES ('742', '39', '1', 'Nesciunt tenetur a minima adipisci voluptas.', '2018-04-30 12:00:39', '2018-04-30 12:00:39');
INSERT INTO `replies` VALUES ('743', '24', '5', 'Adipisci officia rerum ratione et iure aut.', '2018-04-18 00:54:18', '2018-04-18 00:54:18');
INSERT INTO `replies` VALUES ('744', '18', '1', 'Ut voluptatem voluptas cum ea magnam aperiam dolor.', '2018-04-26 10:50:12', '2018-04-26 10:50:12');
INSERT INTO `replies` VALUES ('745', '34', '6', 'Hic corporis vitae soluta explicabo.', '2018-04-15 04:28:30', '2018-04-15 04:28:30');
INSERT INTO `replies` VALUES ('746', '2', '6', 'Voluptatum voluptates consequuntur voluptatem non sit accusantium fugiat tenetur.', '2018-04-27 00:52:12', '2018-04-27 00:52:12');
INSERT INTO `replies` VALUES ('747', '76', '3', 'Facilis dicta molestiae aut quisquam reprehenderit molestias.', '2018-05-03 23:22:59', '2018-05-03 23:22:59');
INSERT INTO `replies` VALUES ('748', '62', '7', 'Officia non sapiente id.', '2018-04-19 18:12:06', '2018-04-19 18:12:06');
INSERT INTO `replies` VALUES ('749', '6', '6', 'Labore id magnam qui reiciendis.', '2018-04-09 14:44:23', '2018-04-09 14:44:23');
INSERT INTO `replies` VALUES ('750', '75', '6', 'Minus quia dignissimos ab veritatis.', '2018-04-19 13:44:28', '2018-04-19 13:44:28');
INSERT INTO `replies` VALUES ('751', '48', '8', 'Deserunt velit numquam voluptatum sapiente inventore consequatur.', '2018-04-21 04:44:44', '2018-04-21 04:44:44');
INSERT INTO `replies` VALUES ('752', '79', '1', 'Et itaque ea qui rerum.', '2018-04-25 15:12:53', '2018-04-25 15:12:53');
INSERT INTO `replies` VALUES ('753', '32', '8', 'Aut eum ad voluptates ut sed sunt expedita.', '2018-04-17 02:28:10', '2018-04-17 02:28:10');
INSERT INTO `replies` VALUES ('754', '45', '10', 'Et asperiores ut laboriosam magni expedita.', '2018-05-06 01:41:35', '2018-05-06 01:41:35');
INSERT INTO `replies` VALUES ('755', '7', '4', 'Magni doloribus accusamus pariatur quasi et.', '2018-04-16 18:58:39', '2018-04-16 18:58:39');
INSERT INTO `replies` VALUES ('756', '52', '10', 'Libero eum hic velit consequatur consequuntur ut sint occaecati.', '2018-04-17 02:00:27', '2018-04-17 02:00:27');
INSERT INTO `replies` VALUES ('757', '61', '5', 'Debitis amet et deserunt magnam omnis non.', '2018-05-05 08:29:34', '2018-05-05 08:29:34');
INSERT INTO `replies` VALUES ('758', '51', '4', 'Est tempore tempora dolorum delectus nihil.', '2018-04-26 20:17:10', '2018-04-26 20:17:10');
INSERT INTO `replies` VALUES ('759', '48', '4', 'Est voluptatem qui voluptatum.', '2018-04-21 22:27:17', '2018-04-21 22:27:17');
INSERT INTO `replies` VALUES ('760', '10', '7', 'Debitis occaecati quidem omnis maiores sint et.', '2018-04-17 05:40:19', '2018-04-17 05:40:19');
INSERT INTO `replies` VALUES ('761', '86', '1', 'Adipisci saepe fugiat illo quibusdam numquam.', '2018-05-02 04:24:34', '2018-05-02 04:24:34');
INSERT INTO `replies` VALUES ('762', '97', '4', 'Fugit rerum eaque et.', '2018-04-30 17:24:48', '2018-04-30 17:24:48');
INSERT INTO `replies` VALUES ('763', '57', '5', 'In optio deserunt cupiditate odio ea.', '2018-04-15 14:14:33', '2018-04-15 14:14:33');
INSERT INTO `replies` VALUES ('764', '9', '10', 'Rerum et ut consequatur debitis.', '2018-04-13 07:32:13', '2018-04-13 07:32:13');
INSERT INTO `replies` VALUES ('765', '11', '8', 'Beatae quia minima maxime ea ut voluptate.', '2018-04-11 20:22:43', '2018-04-11 20:22:43');
INSERT INTO `replies` VALUES ('766', '7', '2', 'Rerum iure veritatis molestiae delectus facere.', '2018-04-09 11:21:48', '2018-04-09 11:21:48');
INSERT INTO `replies` VALUES ('767', '26', '9', 'Commodi occaecati a consequuntur ratione.', '2018-05-04 00:09:28', '2018-05-04 00:09:28');
INSERT INTO `replies` VALUES ('768', '86', '3', 'Soluta tempore rerum dolorem doloribus provident nostrum soluta.', '2018-04-24 17:51:41', '2018-04-24 17:51:41');
INSERT INTO `replies` VALUES ('769', '16', '7', 'Nobis sunt quidem ea dolorem.', '2018-04-14 10:52:18', '2018-04-14 10:52:18');
INSERT INTO `replies` VALUES ('770', '16', '2', 'Ex sunt dolor dolores.', '2018-04-12 21:19:51', '2018-04-12 21:19:51');
INSERT INTO `replies` VALUES ('771', '55', '5', 'Nam illo iusto molestiae.', '2018-04-08 12:55:20', '2018-04-08 12:55:20');
INSERT INTO `replies` VALUES ('772', '69', '7', 'Rem recusandae quam adipisci minus natus.', '2018-04-26 09:22:15', '2018-04-26 09:22:15');
INSERT INTO `replies` VALUES ('773', '52', '6', 'Quisquam occaecati explicabo est.', '2018-04-20 05:12:45', '2018-04-20 05:12:45');
INSERT INTO `replies` VALUES ('774', '47', '5', 'Voluptatem sed atque voluptates.', '2018-04-08 22:16:55', '2018-04-08 22:16:55');
INSERT INTO `replies` VALUES ('775', '82', '9', 'Aut odit temporibus unde corporis.', '2018-04-10 21:06:16', '2018-04-10 21:06:16');
INSERT INTO `replies` VALUES ('776', '17', '7', 'Consectetur labore atque et maiores.', '2018-04-25 17:15:57', '2018-04-25 17:15:57');
INSERT INTO `replies` VALUES ('777', '23', '6', 'Nostrum et deleniti laudantium impedit cumque recusandae quis.', '2018-05-01 08:35:45', '2018-05-01 08:35:45');
INSERT INTO `replies` VALUES ('778', '83', '6', 'Debitis nobis placeat deleniti ut molestiae exercitationem.', '2018-04-15 16:15:48', '2018-04-15 16:15:48');
INSERT INTO `replies` VALUES ('779', '71', '4', 'Officiis qui soluta fuga quam a voluptatum.', '2018-04-28 17:37:45', '2018-04-28 17:37:45');
INSERT INTO `replies` VALUES ('780', '10', '7', 'Reprehenderit cumque neque magnam asperiores hic.', '2018-04-13 13:46:02', '2018-04-13 13:46:02');
INSERT INTO `replies` VALUES ('781', '97', '4', 'Quo natus et aut ad.', '2018-04-29 11:52:15', '2018-04-29 11:52:15');
INSERT INTO `replies` VALUES ('782', '50', '5', 'Nam rem rerum quod ipsa excepturi magni.', '2018-04-27 10:43:35', '2018-04-27 10:43:35');
INSERT INTO `replies` VALUES ('783', '50', '2', 'Quo earum magnam et doloremque rerum beatae quis.', '2018-04-30 14:01:32', '2018-04-30 14:01:32');
INSERT INTO `replies` VALUES ('784', '13', '4', 'Sit tempore aperiam sapiente aut velit atque consequatur.', '2018-04-14 17:30:06', '2018-04-14 17:30:06');
INSERT INTO `replies` VALUES ('785', '95', '4', 'Earum velit qui non qui facere est molestiae consequatur.', '2018-04-20 06:48:33', '2018-04-20 06:48:33');
INSERT INTO `replies` VALUES ('786', '89', '1', 'Modi vel itaque accusantium nostrum quo culpa eum reiciendis.', '2018-04-24 13:16:12', '2018-04-24 13:16:12');
INSERT INTO `replies` VALUES ('787', '56', '1', 'Quam veniam quo in et officia laboriosam.', '2018-04-29 12:30:43', '2018-04-29 12:30:43');
INSERT INTO `replies` VALUES ('788', '13', '1', 'Molestiae eveniet officiis porro vero atque saepe.', '2018-05-04 01:06:53', '2018-05-04 01:06:53');
INSERT INTO `replies` VALUES ('789', '6', '10', 'Molestiae blanditiis vitae eligendi aut reprehenderit reiciendis illo eaque.', '2018-04-08 10:22:27', '2018-04-08 10:22:27');
INSERT INTO `replies` VALUES ('790', '88', '3', 'Ratione architecto totam unde qui nemo et deleniti magnam.', '2018-05-06 23:11:29', '2018-05-06 23:11:29');
INSERT INTO `replies` VALUES ('791', '3', '6', 'Eos quis non est praesentium et expedita.', '2018-04-09 19:30:14', '2018-04-09 19:30:14');
INSERT INTO `replies` VALUES ('792', '3', '9', 'Voluptas quasi nostrum minus qui porro.', '2018-04-17 20:42:27', '2018-04-17 20:42:27');
INSERT INTO `replies` VALUES ('793', '34', '7', 'Quis amet distinctio quia veritatis sit delectus quisquam.', '2018-04-27 20:45:24', '2018-04-27 20:45:24');
INSERT INTO `replies` VALUES ('794', '10', '5', 'Adipisci accusantium et vel.', '2018-04-25 09:30:56', '2018-04-25 09:30:56');
INSERT INTO `replies` VALUES ('795', '9', '7', 'Nemo ratione exercitationem et in debitis dicta.', '2018-05-07 11:37:00', '2018-05-07 11:37:00');
INSERT INTO `replies` VALUES ('796', '41', '4', 'Est laboriosam mollitia quae et sapiente.', '2018-04-29 14:38:47', '2018-04-29 14:38:47');
INSERT INTO `replies` VALUES ('797', '25', '6', 'Sint aliquam quia atque dolore voluptatem sed molestiae.', '2018-04-23 10:43:28', '2018-04-23 10:43:28');
INSERT INTO `replies` VALUES ('798', '28', '5', 'Vitae nesciunt culpa magni quasi perferendis et.', '2018-04-27 12:02:04', '2018-04-27 12:02:04');
INSERT INTO `replies` VALUES ('799', '30', '8', 'Dolores quia necessitatibus natus veritatis eos et sequi.', '2018-04-28 07:45:10', '2018-04-28 07:45:10');
INSERT INTO `replies` VALUES ('800', '2', '2', 'Dolores sed consequuntur excepturi sit aut qui autem impedit.', '2018-04-08 20:10:00', '2018-04-08 20:10:00');
INSERT INTO `replies` VALUES ('801', '91', '9', 'Quo qui consequatur et autem similique tempora.', '2018-04-29 05:28:20', '2018-04-29 05:28:20');
INSERT INTO `replies` VALUES ('802', '84', '7', 'Assumenda debitis atque commodi sint voluptatem amet qui.', '2018-04-20 04:33:54', '2018-04-20 04:33:54');
INSERT INTO `replies` VALUES ('803', '48', '3', 'Facilis pariatur incidunt libero occaecati repudiandae.', '2018-04-10 04:25:46', '2018-04-10 04:25:46');
INSERT INTO `replies` VALUES ('804', '72', '10', 'Et accusamus commodi voluptas aut molestiae ut non.', '2018-04-24 03:44:37', '2018-04-24 03:44:37');
INSERT INTO `replies` VALUES ('805', '12', '6', 'Optio sunt eum et commodi.', '2018-05-05 05:24:30', '2018-05-05 05:24:30');
INSERT INTO `replies` VALUES ('806', '73', '8', 'Explicabo consectetur voluptatibus libero accusamus laudantium cum.', '2018-04-24 21:24:39', '2018-04-24 21:24:39');
INSERT INTO `replies` VALUES ('807', '29', '7', 'Odio vel laboriosam exercitationem aspernatur sed at.', '2018-04-13 12:33:25', '2018-04-13 12:33:25');
INSERT INTO `replies` VALUES ('808', '96', '5', 'Consequuntur inventore repellendus qui omnis consequuntur.', '2018-04-22 13:32:47', '2018-04-22 13:32:47');
INSERT INTO `replies` VALUES ('809', '91', '1', 'Qui quidem illo explicabo quia qui.', '2018-04-22 22:15:44', '2018-04-22 22:15:44');
INSERT INTO `replies` VALUES ('810', '98', '9', 'Sit amet aut explicabo aliquid.', '2018-05-02 19:18:30', '2018-05-02 19:18:30');
INSERT INTO `replies` VALUES ('811', '1', '7', 'Nobis voluptas reiciendis id voluptas.', '2018-04-21 10:43:07', '2018-04-21 10:43:07');
INSERT INTO `replies` VALUES ('812', '51', '7', 'Est eos tempora at.', '2018-04-17 09:23:16', '2018-04-17 09:23:16');
INSERT INTO `replies` VALUES ('813', '49', '6', 'Et explicabo eum qui id eum.', '2018-04-18 12:26:59', '2018-04-18 12:26:59');
INSERT INTO `replies` VALUES ('814', '82', '7', 'Nostrum illo magni magni et consequatur eos et.', '2018-04-16 05:42:35', '2018-04-16 05:42:35');
INSERT INTO `replies` VALUES ('815', '51', '7', 'Omnis unde quo facilis eos iusto.', '2018-04-14 20:47:45', '2018-04-14 20:47:45');
INSERT INTO `replies` VALUES ('816', '38', '4', 'Tempora cupiditate a aut ipsa sit.', '2018-04-13 00:30:02', '2018-04-13 00:30:02');
INSERT INTO `replies` VALUES ('817', '84', '6', 'Voluptas consequatur sit molestiae ab.', '2018-04-30 01:30:40', '2018-04-30 01:30:40');
INSERT INTO `replies` VALUES ('818', '85', '10', 'Magnam voluptatem qui minus blanditiis tenetur excepturi blanditiis.', '2018-04-30 00:45:06', '2018-04-30 00:45:06');
INSERT INTO `replies` VALUES ('819', '72', '2', 'Qui non ducimus ut tenetur sed reprehenderit nesciunt.', '2018-04-26 09:49:52', '2018-04-26 09:49:52');
INSERT INTO `replies` VALUES ('820', '29', '5', 'Ad assumenda eius et temporibus.', '2018-04-28 07:38:20', '2018-04-28 07:38:20');
INSERT INTO `replies` VALUES ('821', '94', '9', 'Maiores consequuntur ratione earum optio.', '2018-04-29 12:02:08', '2018-04-29 12:02:08');
INSERT INTO `replies` VALUES ('822', '63', '4', 'Porro quasi dignissimos quia aliquid laborum praesentium.', '2018-04-12 09:14:11', '2018-04-12 09:14:11');
INSERT INTO `replies` VALUES ('823', '16', '4', 'Qui quasi at adipisci omnis.', '2018-04-28 21:07:22', '2018-04-28 21:07:22');
INSERT INTO `replies` VALUES ('824', '53', '7', 'Necessitatibus nihil labore cum dolorum vel.', '2018-04-17 23:32:39', '2018-04-17 23:32:39');
INSERT INTO `replies` VALUES ('825', '38', '4', 'Est impedit ex quibusdam ducimus voluptates qui quaerat.', '2018-05-02 07:39:41', '2018-05-02 07:39:41');
INSERT INTO `replies` VALUES ('826', '27', '1', 'Dolorum quibusdam quae sit molestiae autem inventore.', '2018-04-13 17:08:25', '2018-04-13 17:08:25');
INSERT INTO `replies` VALUES ('827', '80', '5', 'Amet impedit ullam velit ut.', '2018-04-20 09:14:38', '2018-04-20 09:14:38');
INSERT INTO `replies` VALUES ('828', '49', '8', 'At maiores enim sed suscipit commodi dolores.', '2018-04-16 17:29:54', '2018-04-16 17:29:54');
INSERT INTO `replies` VALUES ('829', '55', '5', 'Qui omnis voluptates at aliquid maxime error.', '2018-04-08 07:01:07', '2018-04-08 07:01:07');
INSERT INTO `replies` VALUES ('830', '36', '6', 'Qui qui dolor rerum.', '2018-04-22 16:43:47', '2018-04-22 16:43:47');
INSERT INTO `replies` VALUES ('831', '6', '6', 'Totam a omnis laudantium ea id fugiat et.', '2018-04-18 01:21:17', '2018-04-18 01:21:17');
INSERT INTO `replies` VALUES ('832', '80', '3', 'Facere suscipit reiciendis perferendis vel omnis.', '2018-04-08 06:37:34', '2018-04-08 06:37:34');
INSERT INTO `replies` VALUES ('833', '27', '2', 'Ea eius dignissimos cum qui quia numquam dicta iure.', '2018-04-16 23:13:05', '2018-04-16 23:13:05');
INSERT INTO `replies` VALUES ('834', '69', '5', 'Aut hic cupiditate sit quo labore omnis laboriosam.', '2018-04-26 21:00:53', '2018-04-26 21:00:53');
INSERT INTO `replies` VALUES ('835', '25', '9', 'Consequatur totam laudantium molestiae officiis soluta aut omnis autem.', '2018-04-10 04:50:45', '2018-04-10 04:50:45');
INSERT INTO `replies` VALUES ('836', '98', '1', 'Qui cupiditate in nam ratione.', '2018-04-09 07:59:11', '2018-04-09 07:59:11');
INSERT INTO `replies` VALUES ('837', '15', '8', 'Eum ea et ex quaerat consectetur.', '2018-05-05 02:44:44', '2018-05-05 02:44:44');
INSERT INTO `replies` VALUES ('838', '44', '7', 'Similique qui nihil molestiae cupiditate sapiente dolores voluptatem.', '2018-04-17 10:28:10', '2018-04-17 10:28:10');
INSERT INTO `replies` VALUES ('839', '89', '1', 'Laborum ea voluptatem debitis id aut quidem.', '2018-04-11 05:07:13', '2018-04-11 05:07:13');
INSERT INTO `replies` VALUES ('840', '63', '10', 'Cumque perspiciatis sed et sint porro.', '2018-04-11 13:47:31', '2018-04-11 13:47:31');
INSERT INTO `replies` VALUES ('841', '35', '1', 'Et et minima nihil.', '2018-04-27 11:07:37', '2018-04-27 11:07:37');
INSERT INTO `replies` VALUES ('842', '91', '4', 'Aut repudiandae enim dolores nihil.', '2018-04-13 10:24:43', '2018-04-13 10:24:43');
INSERT INTO `replies` VALUES ('843', '31', '7', 'A libero voluptates nam ab dolor ipsum.', '2018-04-24 04:36:59', '2018-04-24 04:36:59');
INSERT INTO `replies` VALUES ('844', '39', '6', 'Quo blanditiis nobis et quo expedita sunt voluptatem.', '2018-04-25 23:49:37', '2018-04-25 23:49:37');
INSERT INTO `replies` VALUES ('845', '46', '6', 'Consectetur est possimus quaerat occaecati est.', '2018-05-05 17:11:26', '2018-05-05 17:11:26');
INSERT INTO `replies` VALUES ('846', '31', '2', 'Et tempora rerum voluptatem sint sed ea.', '2018-04-12 02:45:04', '2018-04-12 02:45:04');
INSERT INTO `replies` VALUES ('847', '34', '7', 'Aut nihil odio facilis non hic.', '2018-04-29 21:06:55', '2018-04-29 21:06:55');
INSERT INTO `replies` VALUES ('848', '6', '8', 'Officia magnam nemo provident illo.', '2018-04-16 03:43:14', '2018-04-16 03:43:14');
INSERT INTO `replies` VALUES ('849', '89', '2', 'Quis nemo fugit sunt et quia odit debitis.', '2018-04-23 14:13:58', '2018-04-23 14:13:58');
INSERT INTO `replies` VALUES ('850', '41', '4', 'Molestias animi aliquid delectus et non.', '2018-04-17 01:11:04', '2018-04-17 01:11:04');
INSERT INTO `replies` VALUES ('851', '55', '10', 'Id vero fugit laudantium laborum voluptas excepturi.', '2018-04-19 07:03:42', '2018-04-19 07:03:42');
INSERT INTO `replies` VALUES ('852', '15', '8', 'Beatae voluptatem totam quas molestias minima.', '2018-04-30 17:15:23', '2018-04-30 17:15:23');
INSERT INTO `replies` VALUES ('853', '17', '8', 'Ipsum ut repellendus laboriosam facilis.', '2018-04-18 05:55:51', '2018-04-18 05:55:51');
INSERT INTO `replies` VALUES ('854', '90', '5', 'Ipsum labore atque harum laboriosam et et ducimus vel.', '2018-04-11 02:09:18', '2018-04-11 02:09:18');
INSERT INTO `replies` VALUES ('855', '52', '2', 'Ea nihil sint aspernatur at.', '2018-04-20 18:35:25', '2018-04-20 18:35:25');
INSERT INTO `replies` VALUES ('856', '43', '9', 'Et autem sed qui possimus voluptates porro.', '2018-04-09 00:54:00', '2018-04-09 00:54:00');
INSERT INTO `replies` VALUES ('857', '47', '7', 'Odit error temporibus voluptate omnis deleniti quos.', '2018-05-01 19:11:00', '2018-05-01 19:11:00');
INSERT INTO `replies` VALUES ('858', '50', '6', 'Pariatur fugiat molestiae blanditiis aliquid mollitia id qui.', '2018-04-10 03:18:42', '2018-04-10 03:18:42');
INSERT INTO `replies` VALUES ('859', '99', '5', 'Necessitatibus est praesentium aut facere dolores ipsa.', '2018-04-24 06:42:22', '2018-04-24 06:42:22');
INSERT INTO `replies` VALUES ('860', '18', '5', 'Quos ut nulla placeat odit rem reprehenderit iure.', '2018-04-13 18:39:05', '2018-04-13 18:39:05');
INSERT INTO `replies` VALUES ('861', '44', '7', 'Amet sed nesciunt voluptatem sapiente placeat.', '2018-04-24 07:22:09', '2018-04-24 07:22:09');
INSERT INTO `replies` VALUES ('862', '92', '10', 'Accusamus ducimus veritatis nihil numquam eligendi.', '2018-04-30 16:55:34', '2018-04-30 16:55:34');
INSERT INTO `replies` VALUES ('863', '24', '3', 'Libero quasi commodi culpa beatae eum sunt qui ut.', '2018-05-04 02:02:34', '2018-05-04 02:02:34');
INSERT INTO `replies` VALUES ('864', '33', '2', 'In ex ut dicta.', '2018-04-29 01:42:12', '2018-04-29 01:42:12');
INSERT INTO `replies` VALUES ('865', '62', '3', 'Et enim ut reiciendis recusandae inventore blanditiis ea.', '2018-04-28 16:30:25', '2018-04-28 16:30:25');
INSERT INTO `replies` VALUES ('866', '73', '9', 'Repellendus similique voluptate alias.', '2018-04-19 11:45:13', '2018-04-19 11:45:13');
INSERT INTO `replies` VALUES ('867', '49', '8', 'Provident error voluptates voluptatem facere cum impedit accusamus.', '2018-04-29 10:28:54', '2018-04-29 10:28:54');
INSERT INTO `replies` VALUES ('868', '81', '5', 'Et corporis rerum ut aut et suscipit temporibus.', '2018-04-16 05:19:47', '2018-04-16 05:19:47');
INSERT INTO `replies` VALUES ('869', '83', '5', 'Et cum eligendi dicta fugiat accusantium aspernatur et.', '2018-04-25 09:29:57', '2018-04-25 09:29:57');
INSERT INTO `replies` VALUES ('870', '62', '5', 'Et voluptatibus dolorum harum cumque alias dicta autem.', '2018-04-08 07:25:25', '2018-04-08 07:25:25');
INSERT INTO `replies` VALUES ('871', '7', '4', 'Consequatur deserunt vitae omnis quasi.', '2018-04-27 18:32:44', '2018-04-27 18:32:44');
INSERT INTO `replies` VALUES ('872', '43', '10', 'Ea alias tempore qui ut quo officia.', '2018-04-23 17:32:52', '2018-04-23 17:32:52');
INSERT INTO `replies` VALUES ('873', '2', '8', 'Labore quae quam consequatur atque delectus repellat.', '2018-04-22 09:52:49', '2018-04-22 09:52:49');
INSERT INTO `replies` VALUES ('874', '18', '3', 'Doloribus quia rerum velit dolorem reprehenderit aut.', '2018-04-18 19:50:21', '2018-04-18 19:50:21');
INSERT INTO `replies` VALUES ('875', '69', '9', 'Nam ea voluptas nobis eos explicabo consequatur sed impedit.', '2018-04-14 09:40:47', '2018-04-14 09:40:47');
INSERT INTO `replies` VALUES ('876', '22', '6', 'Aut ea sequi possimus ipsa necessitatibus inventore.', '2018-04-24 21:49:06', '2018-04-24 21:49:06');
INSERT INTO `replies` VALUES ('877', '77', '3', 'Officia rerum eum earum voluptatem.', '2018-05-01 08:45:27', '2018-05-01 08:45:27');
INSERT INTO `replies` VALUES ('878', '46', '9', 'Autem doloremque est sit facere provident.', '2018-04-22 11:25:30', '2018-04-22 11:25:30');
INSERT INTO `replies` VALUES ('879', '43', '4', 'Molestiae nostrum voluptatibus iure molestias ea rerum sed.', '2018-04-19 12:18:56', '2018-04-19 12:18:56');
INSERT INTO `replies` VALUES ('880', '72', '4', 'Doloremque quis nesciunt qui eum eos.', '2018-04-20 23:48:16', '2018-04-20 23:48:16');
INSERT INTO `replies` VALUES ('881', '66', '8', 'Qui aut inventore quam qui inventore rerum voluptates maxime.', '2018-05-02 14:18:38', '2018-05-02 14:18:38');
INSERT INTO `replies` VALUES ('882', '66', '1', 'Qui rerum unde quia recusandae rerum voluptate vitae eos.', '2018-05-02 09:00:22', '2018-05-02 09:00:22');
INSERT INTO `replies` VALUES ('883', '1', '10', 'Et dignissimos facere odio deleniti veritatis.', '2018-04-26 11:34:06', '2018-04-26 11:34:06');
INSERT INTO `replies` VALUES ('884', '45', '5', 'Enim quidem accusantium incidunt consequatur ut id non.', '2018-04-19 18:35:13', '2018-04-19 18:35:13');
INSERT INTO `replies` VALUES ('885', '51', '10', 'Deleniti sed ea minus quo libero cupiditate inventore.', '2018-04-26 04:23:10', '2018-04-26 04:23:10');
INSERT INTO `replies` VALUES ('886', '58', '5', 'Voluptas voluptates velit earum.', '2018-04-12 15:37:04', '2018-04-12 15:37:04');
INSERT INTO `replies` VALUES ('887', '45', '3', 'Recusandae eos eum rerum consequatur ea quia molestias.', '2018-04-18 10:22:16', '2018-04-18 10:22:16');
INSERT INTO `replies` VALUES ('888', '64', '4', 'Hic vitae enim quidem nihil aut rerum excepturi.', '2018-04-28 20:06:04', '2018-04-28 20:06:04');
INSERT INTO `replies` VALUES ('889', '26', '6', 'Ipsa autem itaque et rerum ad.', '2018-05-01 07:37:12', '2018-05-01 07:37:12');
INSERT INTO `replies` VALUES ('890', '76', '8', 'Molestias voluptas dolorem possimus.', '2018-04-17 11:12:47', '2018-04-17 11:12:47');
INSERT INTO `replies` VALUES ('891', '75', '3', 'Dicta accusamus recusandae natus itaque est minima.', '2018-05-04 00:51:36', '2018-05-04 00:51:36');
INSERT INTO `replies` VALUES ('892', '81', '9', 'Eveniet ea est voluptas autem consequatur aut.', '2018-05-07 14:00:52', '2018-05-07 14:00:52');
INSERT INTO `replies` VALUES ('893', '99', '6', 'Vero suscipit eius ipsa illo.', '2018-04-28 14:02:55', '2018-04-28 14:02:55');
INSERT INTO `replies` VALUES ('894', '80', '8', 'Tempore doloremque ipsam suscipit aut inventore qui hic rerum.', '2018-04-11 20:36:14', '2018-04-11 20:36:14');
INSERT INTO `replies` VALUES ('895', '49', '3', 'Aut occaecati qui nobis.', '2018-04-15 17:22:26', '2018-04-15 17:22:26');
INSERT INTO `replies` VALUES ('896', '23', '6', 'Autem commodi impedit quis odit.', '2018-04-27 01:53:24', '2018-04-27 01:53:24');
INSERT INTO `replies` VALUES ('897', '87', '6', 'Iusto officiis dolor qui laborum.', '2018-04-28 18:38:06', '2018-04-28 18:38:06');
INSERT INTO `replies` VALUES ('898', '36', '5', 'Illum non iusto dolor reprehenderit porro expedita.', '2018-04-08 02:55:02', '2018-04-08 02:55:02');
INSERT INTO `replies` VALUES ('899', '25', '3', 'Dolorem magni consequuntur voluptatum fuga non.', '2018-04-15 02:41:27', '2018-04-15 02:41:27');
INSERT INTO `replies` VALUES ('900', '26', '8', 'Nostrum ullam autem est culpa consequatur debitis recusandae.', '2018-04-26 18:08:48', '2018-04-26 18:08:48');
INSERT INTO `replies` VALUES ('901', '57', '5', 'Perferendis assumenda sed quis voluptatem laudantium quia.', '2018-04-14 02:13:37', '2018-04-14 02:13:37');
INSERT INTO `replies` VALUES ('902', '62', '4', 'Reiciendis qui iste laboriosam numquam.', '2018-04-24 10:58:31', '2018-04-24 10:58:31');
INSERT INTO `replies` VALUES ('903', '59', '4', 'Id id nam et est non ullam.', '2018-04-24 22:23:55', '2018-04-24 22:23:55');
INSERT INTO `replies` VALUES ('904', '51', '8', 'Ipsam quo cupiditate magni illo asperiores explicabo.', '2018-05-07 09:53:47', '2018-05-07 09:53:47');
INSERT INTO `replies` VALUES ('905', '17', '5', 'Numquam omnis tempora consequatur quae voluptatem saepe.', '2018-04-09 18:19:49', '2018-04-09 18:19:49');
INSERT INTO `replies` VALUES ('906', '89', '7', 'Vel ad sunt officia officia aut qui.', '2018-05-05 17:08:48', '2018-05-05 17:08:48');
INSERT INTO `replies` VALUES ('907', '9', '3', 'Modi cumque voluptatum porro voluptate assumenda rem.', '2018-04-25 21:36:02', '2018-04-25 21:36:02');
INSERT INTO `replies` VALUES ('908', '14', '10', 'Inventore doloribus rerum aut velit quidem quis quod nostrum.', '2018-04-16 21:54:15', '2018-04-16 21:54:15');
INSERT INTO `replies` VALUES ('909', '63', '5', 'Qui ut repellat distinctio quam.', '2018-04-17 22:28:29', '2018-04-17 22:28:29');
INSERT INTO `replies` VALUES ('910', '98', '9', 'Deleniti quis qui quasi.', '2018-05-03 23:14:58', '2018-05-03 23:14:58');
INSERT INTO `replies` VALUES ('911', '31', '8', 'Explicabo unde voluptas aliquam quia sunt dolore.', '2018-04-29 10:44:05', '2018-04-29 10:44:05');
INSERT INTO `replies` VALUES ('912', '99', '6', 'Laudantium saepe ex eum deserunt maxime dolores quia.', '2018-04-11 17:12:39', '2018-04-11 17:12:39');
INSERT INTO `replies` VALUES ('913', '66', '8', 'Sint iusto enim dolorum quidem.', '2018-04-26 12:55:39', '2018-04-26 12:55:39');
INSERT INTO `replies` VALUES ('914', '15', '8', 'Id corrupti nulla et veritatis quae quas eius.', '2018-04-13 21:17:45', '2018-04-13 21:17:45');
INSERT INTO `replies` VALUES ('915', '14', '3', 'Nisi dolor sapiente illo qui id nihil error.', '2018-04-08 07:11:23', '2018-04-08 07:11:23');
INSERT INTO `replies` VALUES ('916', '62', '3', 'Earum et dolores nostrum magnam reprehenderit laboriosam.', '2018-04-28 16:48:33', '2018-04-28 16:48:33');
INSERT INTO `replies` VALUES ('917', '53', '4', 'In quos est qui maxime optio accusantium omnis.', '2018-04-27 12:54:49', '2018-04-27 12:54:49');
INSERT INTO `replies` VALUES ('918', '75', '9', 'Qui dicta nemo possimus aperiam totam.', '2018-04-30 02:29:07', '2018-04-30 02:29:07');
INSERT INTO `replies` VALUES ('919', '4', '3', 'A exercitationem est sunt qui.', '2018-04-18 17:17:50', '2018-04-18 17:17:50');
INSERT INTO `replies` VALUES ('920', '75', '1', 'Omnis asperiores velit aut.', '2018-04-18 00:48:24', '2018-04-18 00:48:24');
INSERT INTO `replies` VALUES ('921', '80', '8', 'Qui quaerat laboriosam reprehenderit ducimus.', '2018-05-04 22:48:10', '2018-05-04 22:48:10');
INSERT INTO `replies` VALUES ('922', '83', '8', 'Consequatur et dolorum fuga fugit atque ut.', '2018-04-25 12:46:39', '2018-04-25 12:46:39');
INSERT INTO `replies` VALUES ('923', '34', '2', 'Cupiditate dolorem vel sequi unde.', '2018-04-22 23:18:33', '2018-04-22 23:18:33');
INSERT INTO `replies` VALUES ('924', '9', '10', 'Ducimus nesciunt doloribus id.', '2018-05-06 17:25:25', '2018-05-06 17:25:25');
INSERT INTO `replies` VALUES ('925', '27', '10', 'Recusandae libero illum sed iusto ipsam.', '2018-04-22 02:15:43', '2018-04-22 02:15:43');
INSERT INTO `replies` VALUES ('926', '52', '5', 'Aut fugiat atque dolorem facilis et.', '2018-04-14 08:07:31', '2018-04-14 08:07:31');
INSERT INTO `replies` VALUES ('927', '49', '8', 'Consequatur voluptas quod qui ipsam vel.', '2018-04-29 12:30:02', '2018-04-29 12:30:02');
INSERT INTO `replies` VALUES ('928', '77', '7', 'Et dignissimos rerum laboriosam ex et.', '2018-05-01 01:39:07', '2018-05-01 01:39:07');
INSERT INTO `replies` VALUES ('929', '14', '10', 'Autem cupiditate libero perspiciatis.', '2018-04-13 03:55:13', '2018-04-13 03:55:13');
INSERT INTO `replies` VALUES ('930', '62', '5', 'Aut libero dolor adipisci amet.', '2018-05-07 04:20:48', '2018-05-07 04:20:48');
INSERT INTO `replies` VALUES ('931', '93', '7', 'Non occaecati voluptas voluptas delectus explicabo.', '2018-04-25 00:57:04', '2018-04-25 00:57:04');
INSERT INTO `replies` VALUES ('932', '65', '7', 'Quae quaerat sit sit velit.', '2018-04-09 17:10:25', '2018-04-09 17:10:25');
INSERT INTO `replies` VALUES ('933', '99', '4', 'Voluptas in laudantium illum magni nisi veritatis aperiam.', '2018-04-30 12:39:15', '2018-04-30 12:39:15');
INSERT INTO `replies` VALUES ('934', '18', '1', 'Voluptatem sit laudantium dolore aperiam est eum.', '2018-04-19 10:07:40', '2018-04-19 10:07:40');
INSERT INTO `replies` VALUES ('935', '72', '3', 'Dolor quas doloremque explicabo ipsam.', '2018-04-25 04:19:22', '2018-04-25 04:19:22');
INSERT INTO `replies` VALUES ('936', '34', '4', 'Nam doloribus aut iure nihil illo.', '2018-05-04 12:59:44', '2018-05-04 12:59:44');
INSERT INTO `replies` VALUES ('937', '8', '9', 'Nam hic facilis porro.', '2018-04-26 12:48:28', '2018-04-26 12:48:28');
INSERT INTO `replies` VALUES ('938', '96', '7', 'Sed esse aut non est harum molestias omnis labore.', '2018-04-10 23:47:22', '2018-04-10 23:47:22');
INSERT INTO `replies` VALUES ('939', '46', '1', 'Repellendus nostrum eum alias amet minus.', '2018-04-17 07:57:50', '2018-04-17 07:57:50');
INSERT INTO `replies` VALUES ('940', '22', '4', 'Dolor ea velit error deserunt rerum cumque sit.', '2018-04-29 20:36:51', '2018-04-29 20:36:51');
INSERT INTO `replies` VALUES ('941', '11', '3', 'Dolorem quia molestiae at ut.', '2018-04-11 22:38:40', '2018-04-11 22:38:40');
INSERT INTO `replies` VALUES ('942', '34', '1', 'Consequuntur laboriosam earum et accusantium doloremque officiis non.', '2018-04-30 00:56:02', '2018-04-30 00:56:02');
INSERT INTO `replies` VALUES ('943', '82', '1', 'In officia voluptas occaecati recusandae ea.', '2018-05-03 14:24:25', '2018-05-03 14:24:25');
INSERT INTO `replies` VALUES ('944', '56', '10', 'Nemo vel eos repellendus nemo similique optio hic explicabo.', '2018-05-03 08:05:01', '2018-05-03 08:05:01');
INSERT INTO `replies` VALUES ('945', '93', '9', 'Officiis explicabo architecto in consequatur.', '2018-04-24 15:45:17', '2018-04-24 15:45:17');
INSERT INTO `replies` VALUES ('946', '59', '6', 'Consequatur aut voluptas sed minima et.', '2018-05-04 07:29:25', '2018-05-04 07:29:25');
INSERT INTO `replies` VALUES ('947', '5', '4', 'Ipsa iure voluptate aut quidem alias cupiditate.', '2018-05-02 07:36:25', '2018-05-02 07:36:25');
INSERT INTO `replies` VALUES ('948', '57', '1', 'Dolores eligendi suscipit eum.', '2018-04-20 12:01:12', '2018-04-20 12:01:12');
INSERT INTO `replies` VALUES ('949', '97', '3', 'Voluptatem ea voluptatem vel dolore totam quibusdam et est.', '2018-04-20 20:57:46', '2018-04-20 20:57:46');
INSERT INTO `replies` VALUES ('950', '72', '8', 'Provident excepturi aut necessitatibus facilis voluptatem inventore repellendus.', '2018-04-25 17:07:57', '2018-04-25 17:07:57');
INSERT INTO `replies` VALUES ('951', '97', '8', 'Odio laboriosam mollitia rerum.', '2018-05-06 21:47:01', '2018-05-06 21:47:01');
INSERT INTO `replies` VALUES ('952', '25', '5', 'Molestias sed cupiditate vitae dolores voluptates officiis quos harum.', '2018-04-17 05:07:36', '2018-04-17 05:07:36');
INSERT INTO `replies` VALUES ('953', '27', '5', 'Tempora enim dignissimos tempore nostrum eveniet ipsum.', '2018-04-10 10:34:24', '2018-04-10 10:34:24');
INSERT INTO `replies` VALUES ('954', '73', '10', 'Consequatur voluptas minima ad possimus nulla accusantium culpa nam.', '2018-04-29 07:54:55', '2018-04-29 07:54:55');
INSERT INTO `replies` VALUES ('955', '31', '3', 'Est ut dolore dolorum ipsum rerum est.', '2018-04-11 03:45:06', '2018-04-11 03:45:06');
INSERT INTO `replies` VALUES ('956', '43', '4', 'Est non saepe sint rerum saepe nam.', '2018-04-08 18:42:40', '2018-04-08 18:42:40');
INSERT INTO `replies` VALUES ('957', '2', '8', 'Reprehenderit sint delectus nam ullam.', '2018-04-07 21:43:08', '2018-04-07 21:43:08');
INSERT INTO `replies` VALUES ('958', '4', '1', 'Voluptatem saepe rerum quo sapiente.', '2018-04-08 05:33:00', '2018-04-08 05:33:00');
INSERT INTO `replies` VALUES ('959', '24', '2', 'Sint error ut voluptatem omnis earum harum modi.', '2018-05-06 15:03:08', '2018-05-06 15:03:08');
INSERT INTO `replies` VALUES ('960', '4', '5', 'Eligendi tempore fugiat saepe.', '2018-04-20 04:26:41', '2018-04-20 04:26:41');
INSERT INTO `replies` VALUES ('961', '25', '8', 'Dolorem at est eaque voluptate sapiente provident.', '2018-04-08 05:47:06', '2018-04-08 05:47:06');
INSERT INTO `replies` VALUES ('962', '51', '6', 'Sunt dicta et aspernatur voluptas qui.', '2018-05-03 08:32:48', '2018-05-03 08:32:48');
INSERT INTO `replies` VALUES ('963', '83', '10', 'Ipsum est blanditiis consequatur voluptatibus aut perspiciatis et.', '2018-05-06 09:25:38', '2018-05-06 09:25:38');
INSERT INTO `replies` VALUES ('964', '96', '1', 'Animi repellat possimus ea cum.', '2018-04-30 23:58:10', '2018-04-30 23:58:10');
INSERT INTO `replies` VALUES ('965', '45', '5', 'In id mollitia voluptatem.', '2018-04-12 16:42:39', '2018-04-12 16:42:39');
INSERT INTO `replies` VALUES ('966', '65', '9', 'Ut nihil aspernatur voluptatem non nesciunt officiis molestias non.', '2018-05-06 17:23:03', '2018-05-06 17:23:03');
INSERT INTO `replies` VALUES ('967', '62', '2', 'Ut itaque voluptatem cumque.', '2018-04-29 04:19:01', '2018-04-29 04:19:01');
INSERT INTO `replies` VALUES ('968', '81', '9', 'Et voluptate qui rem id consequuntur.', '2018-04-21 12:30:22', '2018-04-21 12:30:22');
INSERT INTO `replies` VALUES ('969', '64', '5', 'Sit voluptatum iure delectus modi totam.', '2018-04-14 10:07:59', '2018-04-14 10:07:59');
INSERT INTO `replies` VALUES ('970', '26', '1', 'Ea velit unde alias dolorem expedita est aut.', '2018-04-30 22:59:41', '2018-04-30 22:59:41');
INSERT INTO `replies` VALUES ('971', '25', '5', 'Quibusdam necessitatibus quaerat autem accusamus.', '2018-04-20 19:27:09', '2018-04-20 19:27:09');
INSERT INTO `replies` VALUES ('972', '47', '5', 'Sit sunt aut assumenda laudantium nemo dicta reprehenderit laborum.', '2018-05-06 16:52:23', '2018-05-06 16:52:23');
INSERT INTO `replies` VALUES ('973', '8', '2', 'Molestiae quia consequatur consequuntur doloremque quia maiores atque.', '2018-04-27 22:22:59', '2018-04-27 22:22:59');
INSERT INTO `replies` VALUES ('974', '74', '9', 'Officia tenetur eius doloremque in.', '2018-04-18 02:11:33', '2018-04-18 02:11:33');
INSERT INTO `replies` VALUES ('975', '57', '3', 'Recusandae eos vel rem.', '2018-05-04 02:28:00', '2018-05-04 02:28:00');
INSERT INTO `replies` VALUES ('976', '98', '2', 'Et officia deleniti perspiciatis dolore tempore eum.', '2018-04-18 12:35:36', '2018-04-18 12:35:36');
INSERT INTO `replies` VALUES ('977', '60', '1', 'Repudiandae fugit cumque dolorem iste ea.', '2018-04-21 21:55:34', '2018-04-21 21:55:34');
INSERT INTO `replies` VALUES ('978', '86', '5', 'Voluptatum veniam commodi repellendus fuga.', '2018-04-10 21:32:23', '2018-04-10 21:32:23');
INSERT INTO `replies` VALUES ('979', '45', '9', 'Tempora molestias qui impedit aliquam facilis dolores exercitationem voluptatibus.', '2018-05-06 11:41:47', '2018-05-06 11:41:47');
INSERT INTO `replies` VALUES ('980', '35', '9', 'Qui dolorem aut esse itaque porro quia.', '2018-04-19 18:44:49', '2018-04-19 18:44:49');
INSERT INTO `replies` VALUES ('981', '70', '6', 'Eum sit harum impedit id sequi recusandae.', '2018-04-18 12:07:29', '2018-04-18 12:07:29');
INSERT INTO `replies` VALUES ('982', '87', '6', 'Sit debitis rerum officiis.', '2018-04-23 03:49:43', '2018-04-23 03:49:43');
INSERT INTO `replies` VALUES ('983', '72', '5', 'Quia quo similique enim aut assumenda quisquam sunt.', '2018-04-12 08:31:42', '2018-04-12 08:31:42');
INSERT INTO `replies` VALUES ('984', '2', '6', 'Sit consequatur voluptatem sit eius quibusdam.', '2018-04-24 17:07:21', '2018-04-24 17:07:21');
INSERT INTO `replies` VALUES ('985', '60', '6', 'Magni ut et et.', '2018-04-13 02:55:27', '2018-04-13 02:55:27');
INSERT INTO `replies` VALUES ('986', '54', '3', 'Magni similique aut occaecati tenetur magnam itaque enim aperiam.', '2018-04-29 22:26:53', '2018-04-29 22:26:53');
INSERT INTO `replies` VALUES ('987', '96', '4', 'Explicabo quam autem illum ut fugit aut nulla.', '2018-04-20 07:27:24', '2018-04-20 07:27:24');
INSERT INTO `replies` VALUES ('988', '68', '5', 'Repellat a beatae omnis qui provident natus debitis.', '2018-04-24 16:48:27', '2018-04-24 16:48:27');
INSERT INTO `replies` VALUES ('989', '45', '5', 'Veritatis fugiat officiis provident sapiente maxime qui.', '2018-04-09 00:18:59', '2018-04-09 00:18:59');
INSERT INTO `replies` VALUES ('990', '12', '6', 'Et voluptatem et non ipsa voluptate consequatur iusto.', '2018-04-30 08:58:09', '2018-04-30 08:58:09');
INSERT INTO `replies` VALUES ('991', '10', '9', 'Explicabo eum nisi possimus.', '2018-05-02 09:12:29', '2018-05-02 09:12:29');
INSERT INTO `replies` VALUES ('992', '72', '7', 'Voluptas expedita quia rerum pariatur sunt cumque.', '2018-05-03 02:43:29', '2018-05-03 02:43:29');
INSERT INTO `replies` VALUES ('993', '84', '5', 'Quae officiis harum exercitationem facere.', '2018-04-21 12:09:26', '2018-04-21 12:09:26');
INSERT INTO `replies` VALUES ('994', '11', '7', 'Maiores sit libero quisquam ex.', '2018-05-03 23:55:49', '2018-05-03 23:55:49');
INSERT INTO `replies` VALUES ('995', '64', '8', 'Occaecati incidunt distinctio eveniet.', '2018-05-06 00:31:36', '2018-05-06 00:31:36');
INSERT INTO `replies` VALUES ('996', '69', '5', 'Harum ut magnam et quo et.', '2018-04-24 02:16:05', '2018-04-24 02:16:05');
INSERT INTO `replies` VALUES ('997', '31', '3', 'Neque nostrum molestias et voluptatem ut tenetur blanditiis.', '2018-05-03 12:56:27', '2018-05-03 12:56:27');
INSERT INTO `replies` VALUES ('998', '47', '7', 'Rem animi consequatur atque inventore.', '2018-05-02 14:32:31', '2018-05-02 14:32:31');
INSERT INTO `replies` VALUES ('1000', '41', '4', 'Tempore non nihil dicta dignissimos eius omnis eligendi.', '2018-04-26 00:44:43', '2018-04-26 00:44:43');
INSERT INTO `replies` VALUES ('1001', '60', '1', '测试下', '2018-05-07 15:45:40', '2018-05-07 15:45:40');
INSERT INTO `replies` VALUES ('1002', '60', '1', '<script>alert(\'存在 XSS 安全威胁！\')</script>', '2018-05-07 16:03:06', '2018-05-07 16:03:06');
INSERT INTO `replies` VALUES ('1003', '11', '11', '<p>我回复你了啊</p>', '2018-05-07 16:37:57', '2018-05-07 16:37:57');
INSERT INTO `replies` VALUES ('1004', '11', '11', '<p>我回复你了啊</p>', '2018-05-07 16:39:56', '2018-05-07 16:39:56');
INSERT INTO `replies` VALUES ('1005', '11', '11', '<p>我回复你了啊</p>', '2018-05-07 16:41:17', '2018-05-07 16:41:17');
INSERT INTO `replies` VALUES ('1006', '104', '1', '<p>给你回个</p>', '2018-05-07 17:23:03', '2018-05-07 17:23:03');
INSERT INTO `replies` VALUES ('1007', '104', '1', '<p>给你回个</p>', '2018-05-07 17:34:07', '2018-05-07 17:34:07');
INSERT INTO `replies` VALUES ('1008', '104', '1', '<p>给你回个</p>', '2018-05-07 17:35:57', '2018-05-07 17:35:57');
INSERT INTO `replies` VALUES ('1009', '104', '1', '<p>给你回个</p>', '2018-05-07 17:38:28', '2018-05-07 17:38:28');
INSERT INTO `replies` VALUES ('1011', '101', '1', '<p>回你下</p>', '2018-05-07 17:45:40', '2018-05-07 17:45:40');
INSERT INTO `replies` VALUES ('1012', '101', '1', '<p>事实上</p>', '2018-05-07 17:53:09', '2018-05-07 17:53:09');
INSERT INTO `replies` VALUES ('1013', '101', '1', '<p>事实上</p>', '2018-05-07 17:54:43', '2018-05-07 17:54:43');
INSERT INTO `replies` VALUES ('1014', '101', '1', '<p>测试</p>', '2018-05-07 18:00:29', '2018-05-07 18:00:29');
INSERT INTO `replies` VALUES ('1015', '101', '1', '<p>事实上</p>', '2018-05-07 18:05:54', '2018-05-07 18:05:54');
INSERT INTO `replies` VALUES ('1016', '101', '1', '<p>123</p>', '2018-05-07 18:08:07', '2018-05-07 18:08:07');
INSERT INTO `replies` VALUES ('1017', '101', '1', '<p>1234</p>', '2018-05-07 18:18:36', '2018-05-07 18:18:36');
INSERT INTO `replies` VALUES ('1018', '101', '1', '<p>444</p>', '2018-05-07 18:23:11', '2018-05-07 18:23:11');
INSERT INTO `replies` VALUES ('1019', '103', '11', '<p>31322</p>', '2018-05-07 18:24:19', '2018-05-07 18:24:19');
INSERT INTO `replies` VALUES ('1020', '103', '11', '<p>我就试试</p>', '2018-05-07 18:24:29', '2018-05-07 18:24:29');
INSERT INTO `replies` VALUES ('1021', '103', '11', '<p>我就试试</p>', '2018-05-07 18:24:30', '2018-05-07 18:24:30');
INSERT INTO `replies` VALUES ('1022', '103', '11', '<p>我就试试</p>', '2018-05-07 18:24:32', '2018-05-07 18:24:32');
INSERT INTO `replies` VALUES ('1023', '103', '1', '<p>2121</p>', '2018-05-07 18:25:40', '2018-05-07 18:25:40');
INSERT INTO `replies` VALUES ('1024', '103', '1', '<p>1111</p>', '2018-05-07 19:40:18', '2018-05-07 19:40:18');
INSERT INTO `replies` VALUES ('1025', '103', '1', '<p>23131</p>', '2018-05-07 20:01:35', '2018-05-07 20:01:35');
INSERT INTO `replies` VALUES ('1026', '103', '1', '<p>1111</p>', '2018-05-07 20:13:38', '2018-05-07 20:13:38');
INSERT INTO `replies` VALUES ('1027', '104', '1', '<p>342423423</p>', '2018-05-07 20:41:53', '2018-05-07 20:41:53');
INSERT INTO `replies` VALUES ('1028', '104', '1', '<p>342423423</p>', '2018-05-07 20:42:40', '2018-05-07 20:42:40');
INSERT INTO `replies` VALUES ('1029', '104', '1', '<p>342423423</p>', '2018-05-07 20:44:38', '2018-05-07 20:44:38');
INSERT INTO `replies` VALUES ('1030', '104', '1', '<p>342423423</p>', '2018-05-07 20:45:25', '2018-05-07 20:45:25');
INSERT INTO `replies` VALUES ('1031', '104', '1', '<p>2222</p>', '2018-05-08 17:48:03', '2018-05-08 17:48:03');
INSERT INTO `replies` VALUES ('1032', '104', '1', '<p>1111</p>', '2018-05-08 17:50:12', '2018-05-08 17:50:12');
INSERT INTO `replies` VALUES ('1033', '104', '1', '<p>1111</p>', '2018-05-08 18:04:52', '2018-05-08 18:04:52');
INSERT INTO `replies` VALUES ('1034', '104', '1', '<p>@lvtu</p>', '2018-05-09 16:53:03', '2018-05-09 16:53:03');
INSERT INTO `replies` VALUES ('1035', '104', '1', '<p>4444</p>', '2018-05-10 21:16:06', '2018-05-10 21:16:06');
INSERT INTO `replies` VALUES ('1036', '1', '1', '<p>sssss</p>', '2018-05-14 15:58:55', '2018-05-14 15:58:55');
INSERT INTO `replies` VALUES ('1038', '105', '72', '<p>21312431</p>', '2018-05-14 17:47:59', '2018-05-14 17:47:59');
INSERT INTO `replies` VALUES ('1039', '107', '72', '<p>2222</p>', '2018-05-14 21:27:28', '2018-05-14 21:27:28');
INSERT INTO `replies` VALUES ('1040', '107', '72', '<p>222</p>', '2018-05-14 21:34:34', '2018-05-14 21:34:34');
INSERT INTO `replies` VALUES ('1041', '107', '72', '<p>dddd</p>', '2018-05-14 21:36:24', '2018-05-14 21:36:24');
INSERT INTO `replies` VALUES ('1042', '107', '72', '<p>777</p>', '2018-05-14 21:44:18', '2018-05-14 21:44:18');
INSERT INTO `replies` VALUES ('1043', '107', '72', '<p>飒飒</p>', '2018-05-14 21:46:09', '2018-05-14 21:46:09');
INSERT INTO `replies` VALUES ('1044', '107', '72', '<p>飒飒</p>', '2018-05-14 21:46:20', '2018-05-14 21:46:20');
INSERT INTO `replies` VALUES ('1045', '107', '72', '<p>2222</p>', '2018-05-14 21:46:45', '2018-05-14 21:46:45');
INSERT INTO `replies` VALUES ('1046', '107', '72', '<p>2222</p>', '2018-05-14 21:47:33', '2018-05-14 21:47:33');
INSERT INTO `replies` VALUES ('1047', '107', '72', '<p>2222</p>', '2018-05-14 21:48:17', '2018-05-14 21:48:17');
INSERT INTO `replies` VALUES ('1048', '20', '72', '<p>aaa</p>', '2018-05-14 21:58:15', '2018-05-14 21:58:15');
INSERT INTO `replies` VALUES ('1049', '104', '72', '<p>aaa</p>', '2018-05-14 22:12:18', '2018-05-14 22:12:18');
INSERT INTO `replies` VALUES ('1050', '107', '72', '<p>2222</p>', '2018-05-14 22:19:34', '2018-05-14 22:19:34');
INSERT INTO `replies` VALUES ('1051', '107', '72', '<p>2222</p>', '2018-05-14 22:20:03', '2018-05-14 22:20:03');
INSERT INTO `replies` VALUES ('1052', '107', '72', '<p>2222</p>', '2018-05-14 22:21:01', '2018-05-14 22:21:01');
INSERT INTO `replies` VALUES ('1053', '107', '72', '<p>2222</p>', '2018-05-14 22:25:00', '2018-05-14 22:25:00');
INSERT INTO `replies` VALUES ('1054', '1', '1', '', '2018-05-14 22:50:07', '2018-05-14 22:50:07');
INSERT INTO `replies` VALUES ('1055', '111', '11', '<p>@Dave Ryan</p>', '2018-06-07 15:02:09', '2018-06-07 15:02:09');
INSERT INTO `replies` VALUES ('1056', '111', '11', '<p>@Dave Ryan</p>', '2018-06-07 15:03:53', '2018-06-07 15:03:53');
INSERT INTO `replies` VALUES ('1057', '111', '11', '<p><a href=\"https://laravel-china.org/users/18206\">@JaguarJack</a></p>', '2018-06-07 15:07:25', '2018-06-07 15:07:25');
INSERT INTO `replies` VALUES ('1058', '111', '11', '<p>:Lilly Heller: :Lilly Heller:</p>', '2018-06-07 15:46:46', '2018-06-07 15:46:46');
INSERT INTO `replies` VALUES ('1059', '111', '11', '<p><a href=\"/usrs/\">@summerblue</a> @Mr. Torrey Schmitt I @Mr. Torrey Schmitt I</p>', '2018-06-07 16:58:22', '2018-06-07 16:58:22');
INSERT INTO `replies` VALUES ('1060', '111', '11', '<p><a href=\"/usrs/1\">@summerblue</a> ssssss</p>', '2018-06-07 17:00:00', '2018-06-07 17:00:00');
INSERT INTO `replies` VALUES ('1061', '111', '11', '<p><a href=\"%7B%7B%20route(\" title=\"summerblue\">summerblue</a> afasfasfaf</p>', '2018-06-07 17:41:57', '2018-06-07 17:41:57');
INSERT INTO `replies` VALUES ('1062', '111', '11', '<p>summerblue</p>', '2018-06-07 17:46:02', '2018-06-07 17:46:02');
INSERT INTO `replies` VALUES ('1063', '111', '11', '<p>summerblue</p>', '2018-06-07 17:47:26', '2018-06-07 17:47:26');
INSERT INTO `replies` VALUES ('1064', '111', '11', '<p><a href=\"/users/1\" title=\"summerblue\">summerblue</a>  aaaa</p>', '2018-06-07 17:48:25', '2018-06-07 17:48:25');
INSERT INTO `replies` VALUES ('1065', '112', '11', '<p><a href=\"/users/1\" title=\"\">@</a>summerblue</p>', '2018-09-04 20:31:57', '2018-09-04 20:31:57');
INSERT INTO `replies` VALUES ('1066', '111', '11', '<p><a href=\"/users/1\" title=\"\">@</a>summerblue</p>', '2018-09-05 08:38:20', '2018-09-05 08:38:20');
INSERT INTO `replies` VALUES ('1067', '111', '11', '<p><a href=\"/users/1\" title=\"\">@</a>summerblue</p>', '2018-09-05 08:53:59', '2018-09-05 08:53:59');
INSERT INTO `replies` VALUES ('1068', '111', '11', '<p><a href=\"/users/1\" title=\"\">@</a>summerblue</p>', '2018-09-05 08:54:54', '2018-09-05 08:54:54');
INSERT INTO `replies` VALUES ('1070', '111', '11', '<p><a href=\"/users/1\" title=\"\">@</a>summerblue</p>', '2018-09-05 09:02:11', '2018-09-05 09:02:11');
INSERT INTO `replies` VALUES ('1071', '111', '11', '<p><a href=\"/users/1\" title=\"\">@</a>summerblue</p>', '2018-09-05 09:02:26', '2018-09-05 09:02:26');
INSERT INTO `replies` VALUES ('1072', '111', '11', '<p><a href=\"/users/1\" title=\"\">@</a>summerblue</p>', '2018-09-05 09:14:05', '2018-09-05 09:14:05');
INSERT INTO `replies` VALUES ('1073', '111', '11', '<p><a href=\"/users/1\" title=\"\">@</a>summerblue</p>', '2018-09-05 09:15:11', '2018-09-05 09:15:11');
INSERT INTO `replies` VALUES ('1075', '111', '11', '<p>qqqq</p>', '2018-09-05 09:32:15', '2018-09-05 09:32:15');
INSERT INTO `replies` VALUES ('1076', '111', '11', '<p><a href=\"/users/\" title=\"$username\">@.$username</a>summerblue</p>', '2018-09-05 09:38:14', '2018-09-05 09:38:14');
INSERT INTO `replies` VALUES ('1077', '111', '11', '<p>[@summerblue](http://larabbs.test/users/1) @Mr. Torrey Schmitt I</p>', '2018-09-05 11:06:10', '2018-09-05 11:06:10');
INSERT INTO `replies` VALUES ('1078', '111', '11', '<p>[[@summerblue](http://larabbs.test/users/1)](http://larabbs.test/users/1) [[@summerblue](http://larabbs.test/users/1)](http://larabbs.test/users/1)</p>', '2018-09-05 11:11:28', '2018-09-05 11:11:28');
INSERT INTO `replies` VALUES ('1079', '111', '11', '<p><a href=\"/users/\">@summerblue</a></p>', '2018-09-05 11:24:39', '2018-09-05 11:24:39');
INSERT INTO `replies` VALUES ('1080', '111', '11', '<p><a href=\"/users/1\" title=\"summerblue\">@summerblue</a></p>', '2018-09-05 11:25:42', '2018-09-05 11:25:42');
INSERT INTO `replies` VALUES ('1081', '111', '11', '<p><a href=\"/users/1\" title=\"summerblue\">@summerblue</a> <a href=\"/users/1\" title=\"summerblue\">@summerblue</a></p>', '2018-09-05 11:26:09', '2018-09-05 11:26:09');
INSERT INTO `replies` VALUES ('1082', '111', '11', '<p><a href=\"/users/1\" title=\"summerblue\">@summerblue</a> <a href=\"/users/11\" title=\"lvtu\">@lvtu</a></p>', '2018-09-05 11:26:29', '2018-09-05 11:26:29');
INSERT INTO `replies` VALUES ('1083', '112', '11', '<p><a href=\"/users/11\" title=\"lvtu\">@lvtu</a></p>', '2018-09-05 11:36:29', '2018-09-05 11:36:29');
INSERT INTO `replies` VALUES ('1084', '110', '11', '<p><a href=\"/users/1\" title=\"summerblue\">@summerblue</a></p>', '2018-09-05 11:37:11', '2018-09-05 11:37:11');
INSERT INTO `replies` VALUES ('1085', '110', '11', '<p>ssssss</p>', '2018-09-05 12:20:47', '2018-09-05 12:20:47');
INSERT INTO `replies` VALUES ('1086', '111', '11', '<p>@Mr. Torrey Schmitt I <a href=\"/users/1\" title=\"summerblue\">@summerblue</a></p>', '2018-09-05 13:42:53', '2018-09-05 13:42:53');

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES ('1', '1');
INSERT INTO `role_has_permissions` VALUES ('2', '1');
INSERT INTO `role_has_permissions` VALUES ('3', '1');
INSERT INTO `role_has_permissions` VALUES ('1', '2');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Founder', 'web', '2018-05-08 21:40:09', '2018-05-08 21:40:09');
INSERT INTO `roles` VALUES ('2', 'Maintainer', 'web', '2018-05-08 21:40:09', '2018-05-08 21:40:09');

-- ----------------------------
-- Table structure for topics
-- ----------------------------
DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `reply_count` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0',
  `last_reply_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `topics_title_index` (`title`),
  KEY `topics_user_id_index` (`user_id`),
  KEY `topics_category_id_index` (`category_id`),
  CONSTRAINT `topics_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of topics
-- ----------------------------
INSERT INTO `topics` VALUES ('1', 'Unde ipsa qui est ut iusto pariatur.', 'Et porro qui illo esse voluptatem quaerat laborum. Quis ea in error est maiores nostrum officiis. Debitis omnis quas repudiandae quibusdam perspiciatis sunt. Itaque molestias et aut qui illum quia.', '4', '3', '2', '0', '0', '0', 'Unde ipsa qui est ut iusto pariatur.', null, '2018-04-13 09:25:12', '2018-05-14 22:50:07');
INSERT INTO `topics` VALUES ('2', 'ssssss', '<p>Perferendis expedita nobis dolor quas ut quidem quas. Velit distinctio architecto et illo. Nesciunt et assumenda voluptatum voluptatem odio sit at. Sequi qui et dolorum quia.</p>', '8', '2', '0', '0', '0', '0', 'Perferendis expedita nobis dolor quas ut quidem quas. Velit distinctio architecto et illo. Nesciunt et assumenda voluptatum voluptatem odio sit at. Sequi qui et dolorum quia.', null, '2018-04-17 03:00:01', '2018-05-11 23:06:04');
INSERT INTO `topics` VALUES ('3', 'Eum eius est et.', 'Ut molestiae reprehenderit in dolores atque. Quo quam libero suscipit ut veniam quisquam maiores beatae. Earum sequi qui officiis. Quia deleniti voluptatibus est qui.', '7', '3', '0', '0', '0', '0', 'Eum eius est et.', null, '2018-04-15 17:45:31', '2018-04-26 10:56:05');
INSERT INTO `topics` VALUES ('4', 'Doloremque delectus voluptatem ullam vitae sit nobis.', 'Eum omnis et ut iure. Harum odit dolorem est incidunt aut. Beatae libero aut quia temporibus tempore impedit quo.', '4', '4', '0', '0', '0', '0', 'Doloremque delectus voluptatem ullam vitae sit nobis.', null, '2018-04-11 18:12:48', '2018-04-13 08:20:57');
INSERT INTO `topics` VALUES ('5', 'ssssss', '<p>Ipsum est cupiditate officia temporibus quia est. Est voluptate cum consequatur incidunt. Repudiandae laudantium magnam ad suscipit enim placeat occaecati.</p>', '3', '2', '0', '0', '0', '0', 'Ipsum est cupiditate officia temporibus quia est. Est voluptate cum consequatur incidunt. Repudiandae laudantium magnam ad suscipit enim placeat occaecati.', null, '2018-04-08 20:22:36', '2018-05-11 23:05:30');
INSERT INTO `topics` VALUES ('6', 'Sunt accusamus omnis aut.', 'Veniam qui vero aut ut odio ex. Ut et amet magnam voluptatum molestiae nulla. Enim fugiat quis rerum molestias fugiat corporis. Et adipisci numquam recusandae delectus rerum aliquid impedit.', '10', '3', '0', '0', '0', '0', 'Sunt accusamus omnis aut.', null, '2018-05-01 12:03:34', '2018-05-02 13:58:02');
INSERT INTO `topics` VALUES ('7', 'Non omnis suscipit totam culpa iure perspiciatis delectus.', 'Aspernatur veritatis eveniet debitis est quo officiis. Et ratione unde molestiae cupiditate explicabo. Ut blanditiis et est. Doloribus praesentium rerum et quia est.', '7', '1', '0', '0', '0', '0', 'Non omnis suscipit totam culpa iure perspiciatis delectus.', null, '2018-04-17 22:22:27', '2018-04-26 12:28:46');
INSERT INTO `topics` VALUES ('8', 'Nihil rerum qui possimus quas nihil tempore ex laboriosam.', 'Quia tempora modi occaecati autem aut velit. Velit dolore sit dolorem saepe voluptate at.', '4', '4', '0', '0', '0', '0', 'Nihil rerum qui possimus quas nihil tempore ex laboriosam.', null, '2018-04-17 05:14:40', '2018-04-22 03:45:43');
INSERT INTO `topics` VALUES ('9', 'Ipsa culpa aut doloremque iusto dignissimos qui assumenda.', 'Qui nam non dolores porro autem earum error. Nihil dolore vitae repellat vitae. Corporis iure voluptas reprehenderit beatae cupiditate autem neque. Nulla illo accusamus ut aspernatur atque quidem.', '8', '3', '0', '0', '0', '0', 'Ipsa culpa aut doloremque iusto dignissimos qui assumenda.', null, '2018-04-12 14:45:21', '2018-04-24 19:11:41');
INSERT INTO `topics` VALUES ('10', 'Porro cum sed iure rerum distinctio error et.', 'Voluptas facere occaecati accusantium vero. Impedit quasi ut eligendi est inventore. Sint non velit delectus eos. Ut necessitatibus libero dolor amet qui quod.', '8', '4', '0', '0', '0', '0', 'Porro cum sed iure rerum distinctio error et.', null, '2018-04-15 11:49:01', '2018-05-01 18:09:14');
INSERT INTO `topics` VALUES ('11', 'ssssss', '<p>Cumque et maxime animi est. Sint odio qui laudantium. Quas est voluptatem hic sint labore ratione. Earum dolores et consequuntur corporis.</p>', '1', '1', '2', '0', '0', '0', 'Cumque et maxime animi est. Sint odio qui laudantium. Quas est voluptatem hic sint labore ratione. Earum dolores et consequuntur corporis.', null, '2018-04-15 18:45:13', '2018-05-11 22:59:45');
INSERT INTO `topics` VALUES ('12', 'Earum perferendis eaque eos temporibus recusandae.', 'Non quisquam aut quibusdam dolores. Quas est est est neque quibusdam. Neque et omnis rerum excepturi rerum aspernatur iusto.', '1', '4', '0', '0', '0', '0', 'Earum perferendis eaque eos temporibus recusandae.', null, '2018-04-08 07:37:31', '2018-04-14 05:58:54');
INSERT INTO `topics` VALUES ('13', 'Et nemo alias qui reiciendis sint possimus debitis.', 'Voluptates maiores consequatur nulla. Deserunt ut facilis quam aut molestiae libero consequatur. Esse consequatur distinctio natus qui repellat.', '9', '3', '0', '0', '0', '0', 'Et nemo alias qui reiciendis sint possimus debitis.', null, '2018-04-10 07:19:21', '2018-04-10 14:41:03');
INSERT INTO `topics` VALUES ('14', 'Ipsam ratione earum rerum perferendis perspiciatis sed reiciendis.', 'Modi fugiat est aspernatur. Nostrum et omnis et consectetur ab. Similique qui numquam quam ab repellat asperiores omnis.', '2', '4', '0', '0', '0', '0', 'Ipsam ratione earum rerum perferendis perspiciatis sed reiciendis.', null, '2018-04-15 06:05:19', '2018-05-05 22:21:46');
INSERT INTO `topics` VALUES ('15', 'Ut sit vel voluptatibus dolores tenetur ut non.', 'Consequuntur mollitia sapiente earum nulla error ipsam eius. Perspiciatis ipsam eius soluta fugiat. Non aut iure eum. Est rem aut nihil sint.', '7', '4', '0', '0', '0', '0', 'Ut sit vel voluptatibus dolores tenetur ut non.', null, '2018-04-10 19:34:25', '2018-04-20 17:33:03');
INSERT INTO `topics` VALUES ('16', 'Error aut sed ea molestiae et.', 'Dolorum laboriosam illo autem error est voluptas sed ullam. Et nulla possimus blanditiis. Non nihil doloribus ipsam sunt et et. Fugiat fugiat error voluptate.', '6', '2', '0', '0', '0', '0', 'Error aut sed ea molestiae et.', null, '2018-04-23 14:43:23', '2018-04-23 22:23:37');
INSERT INTO `topics` VALUES ('17', 'Sed doloribus vel temporibus et voluptates.', 'Aut fugit reiciendis impedit autem placeat praesentium autem a. Et quia qui eos culpa. Sed alias nulla hic iusto distinctio molestiae.', '3', '3', '0', '0', '0', '0', 'Sed doloribus vel temporibus et voluptates.', null, '2018-04-07 17:55:39', '2018-04-09 07:36:30');
INSERT INTO `topics` VALUES ('18', 'Adipisci commodi quis quibusdam minima provident et et.', 'Iste pariatur voluptatem qui impedit nihil non. Expedita suscipit voluptas rerum et velit. Cupiditate rerum voluptate dolores sapiente quo cupiditate.', '4', '2', '0', '0', '0', '0', 'Adipisci commodi quis quibusdam minima provident et et.', null, '2018-04-24 19:52:20', '2018-05-03 05:07:42');
INSERT INTO `topics` VALUES ('19', 'At mollitia mollitia ex et.', 'Et dolor quia ullam sunt dolor et minima. Accusantium earum omnis quidem ut non omnis officia. Odio alias voluptatem tempore mollitia voluptas quisquam. Enim cumque quo omnis corporis cum dolores.', '2', '4', '0', '0', '0', '0', 'At mollitia mollitia ex et.', null, '2018-04-08 05:32:52', '2018-04-27 09:45:17');
INSERT INTO `topics` VALUES ('20', 'ssssss', '<p>Eum qui veritatis dignissimos recusandae aut deleniti. Pariatur minus quia iste quo sit quia perferendis. Enim unde ut commodi tempora vel.</p>', '10', '2', '1', '0', '0', '0', 'Eum qui veritatis dignissimos recusandae aut deleniti. Pariatur minus quia iste quo sit quia perferendis. Enim unde ut commodi tempora vel.', null, '2018-04-07 21:42:03', '2018-05-14 21:58:15');
INSERT INTO `topics` VALUES ('21', 'Ex saepe quaerat voluptatem eos quaerat.', 'Dolor provident quia ducimus vel sed sit exercitationem nihil. Nostrum deleniti velit voluptatum in. Odit totam quos corporis.', '10', '4', '0', '0', '0', '0', 'Ex saepe quaerat voluptatem eos quaerat.', null, '2018-04-10 06:18:30', '2018-04-11 04:12:40');
INSERT INTO `topics` VALUES ('22', 'ssssss', '<p>Repellat recusandae aut nihil quia consequatur officiis cum. Qui asperiores et dolores. Earum voluptas explicabo labore velit qui.</p>', '1', '3', '0', '0', '0', '0', 'Repellat recusandae aut nihil quia consequatur officiis cum. Qui asperiores et dolores. Earum voluptas explicabo labore velit qui.', null, '2018-04-08 05:13:23', '2018-05-11 23:17:59');
INSERT INTO `topics` VALUES ('23', 'Consectetur aut sit nulla ea.', 'Officia occaecati cumque qui laborum. Iure est voluptatem inventore in voluptas dolore necessitatibus. Aut aut repudiandae omnis qui. Et deleniti sunt eveniet eveniet.', '5', '3', '0', '0', '0', '0', 'Consectetur aut sit nulla ea.', null, '2018-04-08 11:35:16', '2018-05-06 20:13:00');
INSERT INTO `topics` VALUES ('24', 'Explicabo ut reiciendis optio ab.', 'Ducimus voluptas laborum sit at. Odit et eum minima. Mollitia tenetur dolorem minus.', '6', '3', '0', '0', '0', '0', 'Explicabo ut reiciendis optio ab.', null, '2018-04-07 15:05:54', '2018-04-07 15:19:44');
INSERT INTO `topics` VALUES ('25', 'Qui officiis quas ex recusandae dolor et.', 'Non veritatis delectus sit blanditiis dicta est. Sed at quis sit cumque error necessitatibus. In voluptas id culpa qui vero nihil eaque.', '6', '1', '0', '0', '0', '0', 'Qui officiis quas ex recusandae dolor et.', null, '2018-04-10 14:04:10', '2018-04-17 03:18:36');
INSERT INTO `topics` VALUES ('26', 'Ut ab amet dolore accusamus nemo deserunt.', 'Quia impedit ducimus accusamus est. Architecto voluptas possimus tempore.', '6', '1', '0', '0', '0', '0', 'Ut ab amet dolore accusamus nemo deserunt.', null, '2018-04-08 19:23:20', '2018-04-11 13:42:46');
INSERT INTO `topics` VALUES ('27', 'Et ipsam eos vel dolor.', 'Dolores id corporis quo molestiae modi. Dolor optio ratione quidem corporis laborum. Ad velit et soluta et temporibus voluptatem. Sunt aut et ipsam aut doloremque id in.', '3', '4', '0', '0', '0', '0', 'Et ipsam eos vel dolor.', null, '2018-04-11 12:00:19', '2018-04-13 07:33:15');
INSERT INTO `topics` VALUES ('28', 'Dolorum laudantium harum quia voluptas.', 'Autem sunt iusto consequatur dolorem. Dolorem molestias expedita voluptas voluptas. Odit dolore eos unde eum hic hic. Sed voluptatem voluptate omnis quasi adipisci omnis ullam ad.', '5', '4', '0', '0', '0', '0', 'Dolorum laudantium harum quia voluptas.', null, '2018-04-22 02:22:50', '2018-04-27 00:43:02');
INSERT INTO `topics` VALUES ('29', 'Aut consectetur tempore quia cumque.', 'Non magnam accusamus qui. Quia eaque dolores officiis odio libero. Magnam repellat suscipit et enim eveniet nulla voluptatem.', '7', '3', '0', '0', '0', '0', 'Aut consectetur tempore quia cumque.', null, '2018-04-13 11:48:47', '2018-04-20 00:29:25');
INSERT INTO `topics` VALUES ('30', 'Minima possimus aut tempore consequatur sed.', 'Recusandae similique rerum et at earum. Voluptate similique voluptas aut et culpa voluptatem debitis. Totam ut exercitationem et quia assumenda iusto.', '6', '3', '0', '0', '0', '0', 'Minima possimus aut tempore consequatur sed.', null, '2018-04-13 05:29:41', '2018-04-21 23:16:32');
INSERT INTO `topics` VALUES ('31', 'Aut voluptates inventore officiis necessitatibus eligendi quae.', 'Dignissimos error cum ducimus veritatis et harum. Assumenda vero adipisci sequi et. Sunt dolor quod expedita accusantium. Vero nihil nihil enim iure.', '9', '2', '0', '0', '0', '0', 'Aut voluptates inventore officiis necessitatibus eligendi quae.', null, '2018-04-18 20:59:01', '2018-04-20 20:40:58');
INSERT INTO `topics` VALUES ('32', 'Unde architecto natus incidunt fugit sit occaecati atque.', 'Perspiciatis sed non iure nihil ratione hic debitis possimus. Inventore sint laboriosam aut quis. Possimus corrupti perspiciatis omnis aut quos consequatur pariatur quisquam.', '9', '2', '0', '0', '0', '0', 'Unde architecto natus incidunt fugit sit occaecati atque.', null, '2018-04-07 22:40:55', '2018-04-12 09:42:28');
INSERT INTO `topics` VALUES ('33', 'Ea ipsum et et est tempore officia.', 'Velit voluptates dolores accusantium aliquid quam dignissimos cumque. Impedit consequatur reprehenderit fuga.', '10', '4', '0', '0', '0', '0', 'Ea ipsum et et est tempore officia.', null, '2018-04-18 10:37:46', '2018-04-23 15:00:57');
INSERT INTO `topics` VALUES ('34', 'Voluptates laudantium doloribus incidunt.', 'Ratione quo repellat vero at sunt. Et temporibus ut neque ea et doloremque. Et at itaque sapiente officia velit pariatur sunt dolores. Quod aspernatur eum cum labore.', '4', '4', '0', '0', '0', '0', 'Voluptates laudantium doloribus incidunt.', null, '2018-04-13 17:08:47', '2018-05-07 08:46:05');
INSERT INTO `topics` VALUES ('35', 'Temporibus adipisci rem laudantium veniam.', 'Debitis aliquid nihil et. Aperiam architecto perspiciatis quae porro. Molestiae eius rerum distinctio qui nihil.', '9', '3', '0', '0', '0', '0', 'Temporibus adipisci rem laudantium veniam.', null, '2018-04-22 16:48:34', '2018-04-30 04:47:23');
INSERT INTO `topics` VALUES ('36', 'Expedita vitae ducimus occaecati voluptas laudantium aliquid.', 'Mollitia est alias autem labore quisquam. Tempore velit architecto atque dicta qui.', '3', '2', '0', '0', '0', '0', 'Expedita vitae ducimus occaecati voluptas laudantium aliquid.', null, '2018-04-11 12:32:39', '2018-04-13 11:27:55');
INSERT INTO `topics` VALUES ('37', 'Sequi et iste eligendi et.', 'Et aut fuga sed ab quae. Aut corporis adipisci assumenda architecto. Quo quis voluptatem nemo veniam nihil. Dolor nisi hic ipsa laborum nemo in in.', '4', '2', '0', '0', '0', '0', 'Sequi et iste eligendi et.', null, '2018-04-12 16:02:45', '2018-04-30 20:57:43');
INSERT INTO `topics` VALUES ('38', 'Ad dolorum omnis consectetur ut velit dolor.', 'Possimus commodi maxime ipsam iusto iusto eos. Et ad quia dolorem blanditiis deserunt. Non quia placeat est odit repudiandae. Incidunt et voluptatem ad qui. Eos harum labore numquam.', '8', '4', '0', '0', '0', '0', 'Ad dolorum omnis consectetur ut velit dolor.', null, '2018-04-08 12:02:11', '2018-04-08 15:36:54');
INSERT INTO `topics` VALUES ('39', 'Expedita velit consequatur laboriosam eum harum consequuntur maiores est.', 'Aperiam quis similique adipisci temporibus inventore sit dolores excepturi. Iure ut doloremque consequatur debitis. Ipsam autem dolorum totam corrupti. Est non vero aspernatur et sit.', '8', '3', '0', '0', '0', '0', 'Expedita velit consequatur laboriosam eum harum consequuntur maiores est.', null, '2018-04-11 21:46:01', '2018-04-12 10:53:50');
INSERT INTO `topics` VALUES ('40', 'Ea quas consequatur maiores quibusdam consequatur molestiae consequatur explicabo.', 'Velit ex voluptatem tenetur recusandae quia provident rerum. Quia a enim ut ipsum soluta doloremque. Eum debitis quia aspernatur sunt. Quas commodi ullam natus facilis ullam illo consequuntur.', '5', '1', '0', '0', '0', '0', 'Ea quas consequatur maiores quibusdam consequatur molestiae consequatur explicabo.', null, '2018-04-07 19:20:24', '2018-04-08 03:07:58');
INSERT INTO `topics` VALUES ('41', 'Sequi consequatur labore et odit natus.', 'Et dolores porro velit nobis. Voluptatum sed nisi sit incidunt ut est. Dicta totam saepe dolores vitae. Minus eos corrupti distinctio assumenda voluptatem sit eos et.', '2', '2', '0', '0', '0', '0', 'Sequi consequatur labore et odit natus.', null, '2018-04-09 20:48:18', '2018-04-29 18:37:37');
INSERT INTO `topics` VALUES ('42', 'Omnis ut mollitia ab animi et rerum est maiores.', 'Dolor qui dolorem in et placeat natus. Recusandae aliquid autem tenetur quia aliquam. Voluptate occaecati qui ut.', '5', '4', '0', '0', '0', '0', 'Omnis ut mollitia ab animi et rerum est maiores.', null, '2018-04-16 03:02:18', '2018-04-25 10:01:03');
INSERT INTO `topics` VALUES ('43', 'Dolores enim aut voluptatum repellat adipisci eaque quos ut.', 'Quibusdam praesentium dicta ea perspiciatis ut. Ipsa amet minus ut qui similique tempora et.', '2', '2', '0', '0', '0', '0', 'Dolores enim aut voluptatum repellat adipisci eaque quos ut.', null, '2018-04-09 17:23:15', '2018-04-17 20:51:41');
INSERT INTO `topics` VALUES ('44', 'Odio hic enim vero explicabo.', 'Minima quo impedit omnis distinctio. Nihil sapiente maxime occaecati rerum. Impedit rerum recusandae saepe voluptatum id laudantium quia quisquam.', '10', '2', '0', '0', '0', '0', 'Odio hic enim vero explicabo.', null, '2018-04-14 14:34:57', '2018-04-25 07:49:03');
INSERT INTO `topics` VALUES ('45', 'Quia ab perferendis natus eveniet voluptatem nisi repellat enim.', 'Laboriosam vero et et dicta. Non laboriosam consequatur beatae nam est quaerat. Sequi distinctio odit omnis ab. Magni in hic delectus minima consequatur. Corporis quia quidem doloribus.', '6', '2', '0', '0', '0', '0', 'Quia ab perferendis natus eveniet voluptatem nisi repellat enim.', null, '2018-04-09 15:33:30', '2018-04-12 23:32:28');
INSERT INTO `topics` VALUES ('46', 'Inventore velit et natus et eligendi aut.', 'Omnis aliquam laboriosam sed perspiciatis et delectus. Mollitia vel harum est aliquid facere vel. Rerum qui nostrum aliquam optio unde ad.', '10', '4', '0', '0', '0', '0', 'Inventore velit et natus et eligendi aut.', null, '2018-04-10 10:17:44', '2018-04-10 17:25:26');
INSERT INTO `topics` VALUES ('47', 'Et eos ullam facilis veniam alias.', 'Eos hic est est consequatur consectetur. Ab dicta voluptatem earum. Soluta non natus quis accusantium et expedita. Sunt iusto libero officiis iste.', '6', '4', '0', '0', '0', '0', 'Et eos ullam facilis veniam alias.', null, '2018-04-14 15:47:26', '2018-04-14 18:23:43');
INSERT INTO `topics` VALUES ('48', 'Illo nihil et non nulla qui quidem et.', 'Et alias voluptas et minima. Delectus qui ut commodi veniam voluptas numquam voluptas neque. Quae distinctio omnis enim numquam ut libero. Dolore nihil sapiente alias nihil.', '4', '4', '0', '0', '0', '0', 'Illo nihil et non nulla qui quidem et.', null, '2018-04-09 17:19:19', '2018-04-18 09:11:12');
INSERT INTO `topics` VALUES ('49', 'Labore porro natus dolor nesciunt occaecati ducimus ut.', 'Vitae nisi autem et modi possimus quo. Vel debitis amet assumenda qui fuga. Explicabo qui sint molestiae aspernatur assumenda est.', '3', '3', '0', '0', '0', '0', 'Labore porro natus dolor nesciunt occaecati ducimus ut.', null, '2018-04-12 09:03:29', '2018-04-24 11:37:32');
INSERT INTO `topics` VALUES ('50', 'Est voluptatibus quas ipsum voluptatem.', 'Asperiores non officia culpa explicabo tempora iusto atque cupiditate. Beatae laudantium delectus et. Dignissimos odio quidem temporibus qui rerum.', '3', '1', '0', '0', '0', '0', 'Est voluptatibus quas ipsum voluptatem.', null, '2018-04-11 17:01:04', '2018-04-14 19:33:21');
INSERT INTO `topics` VALUES ('51', 'Facere expedita numquam animi reprehenderit deserunt.', 'Labore quia voluptatem et placeat perspiciatis. Aut occaecati voluptates ipsa facilis.', '9', '4', '0', '0', '0', '0', 'Facere expedita numquam animi reprehenderit deserunt.', null, '2018-04-15 08:31:14', '2018-04-21 01:39:51');
INSERT INTO `topics` VALUES ('52', 'Optio ad quo qui eum doloremque libero consequatur.', 'Quis sequi dolor odio voluptatem quos fugit quos saepe. Velit qui et occaecati eum aut dolorum nesciunt. Cum eos corrupti eius harum. Asperiores eligendi ducimus corrupti tempore ullam.', '5', '4', '0', '0', '0', '0', 'Optio ad quo qui eum doloremque libero consequatur.', null, '2018-04-25 20:31:19', '2018-04-27 19:53:10');
INSERT INTO `topics` VALUES ('53', 'Inventore sint fugit quod et.', 'Non ipsam minus incidunt voluptas. Quod et tempore nihil et accusamus delectus occaecati. Et voluptas deserunt provident eligendi consequatur. Vero animi dolores numquam quasi odio.', '6', '2', '0', '0', '0', '0', 'Inventore sint fugit quod et.', null, '2018-04-18 09:06:03', '2018-04-19 07:28:50');
INSERT INTO `topics` VALUES ('54', 'Magnam quasi necessitatibus nemo aliquid.', 'Ad voluptatem doloribus animi. Maxime aut earum aut in ipsa repellendus voluptatem. Ut modi et magnam.', '8', '4', '0', '0', '0', '0', 'Magnam quasi necessitatibus nemo aliquid.', null, '2018-04-16 10:38:59', '2018-04-27 12:23:34');
INSERT INTO `topics` VALUES ('55', 'Quidem sed rerum dignissimos nihil omnis et voluptatibus et.', 'Vero corrupti ad voluptatum praesentium nihil. Doloremque in mollitia molestiae voluptas. Qui tempora et id beatae.', '3', '1', '0', '0', '0', '0', 'Quidem sed rerum dignissimos nihil omnis et voluptatibus et.', null, '2018-04-09 17:25:30', '2018-04-22 13:07:09');
INSERT INTO `topics` VALUES ('56', 'Animi natus beatae repellat rerum eum dignissimos.', 'Qui rem et aut et fugit minima. Temporibus ut officiis consequatur et nihil deserunt. Qui ut et quia iste aliquam libero. Quibusdam ut aliquid sed.', '3', '3', '0', '0', '0', '0', 'Animi natus beatae repellat rerum eum dignissimos.', null, '2018-04-30 19:03:26', '2018-05-04 21:18:15');
INSERT INTO `topics` VALUES ('57', 'Ut soluta quidem aut aut facilis.', 'Eos et sunt nihil veniam perspiciatis porro. Sed voluptatem non eligendi alias quia nobis est. Qui vitae est repudiandae aut. Expedita quia harum illo est.', '3', '1', '0', '0', '0', '0', 'Ut soluta quidem aut aut facilis.', null, '2018-04-26 13:13:00', '2018-04-27 13:33:20');
INSERT INTO `topics` VALUES ('58', 'Quos totam recusandae nemo quibusdam.', 'Nemo deserunt dolores ad aut. Possimus quod sit autem aut voluptas expedita et. Voluptates fuga et consectetur.', '5', '4', '0', '0', '0', '0', 'Quos totam recusandae nemo quibusdam.', null, '2018-04-10 15:39:10', '2018-04-25 19:47:45');
INSERT INTO `topics` VALUES ('59', 'Sit saepe non recusandae provident autem.', 'Sit id praesentium similique molestiae dolorem excepturi. Id laboriosam tempora accusamus repellat repellendus sunt. Fugit labore officia placeat quisquam id.', '7', '4', '0', '0', '0', '0', 'Sit saepe non recusandae provident autem.', null, '2018-04-11 18:57:07', '2018-04-13 20:59:04');
INSERT INTO `topics` VALUES ('60', 'Id voluptas amet ut omnis.', 'Iure minima non omnis nesciunt. Illum quia esse ipsum explicabo voluptatibus nemo. Aut itaque nostrum minima.', '8', '3', '1', '0', '0', '0', 'Id voluptas amet ut omnis.', null, '2018-04-09 19:50:50', '2018-05-07 16:03:06');
INSERT INTO `topics` VALUES ('61', 'Sit esse esse sint iste totam.', 'Illo sapiente vel non voluptatem quia minima. Ut est ad dolorem modi quo dolorem. Eos temporibus repellat cum ut voluptate eius. Atque et aperiam numquam ipsa quibusdam sit.', '4', '1', '0', '0', '0', '0', 'Sit esse esse sint iste totam.', null, '2018-04-08 00:39:50', '2018-04-08 12:03:46');
INSERT INTO `topics` VALUES ('62', 'Ab facere fuga id voluptatem.', 'Ex ullam sequi qui laboriosam quibusdam voluptatem velit. Vel quia modi aut. Dignissimos voluptatem eum odio in tempora ut molestiae.', '9', '3', '0', '0', '0', '0', 'Ab facere fuga id voluptatem.', null, '2018-04-09 13:46:35', '2018-04-16 12:20:38');
INSERT INTO `topics` VALUES ('63', 'Ea mollitia illo beatae facere voluptatem ea harum.', 'Amet voluptas blanditiis assumenda soluta. Minima eum voluptatibus sint sit. Itaque impedit delectus assumenda accusamus vero esse exercitationem.', '7', '4', '0', '0', '0', '0', 'Ea mollitia illo beatae facere voluptatem ea harum.', null, '2018-04-15 11:47:36', '2018-04-24 12:45:07');
INSERT INTO `topics` VALUES ('64', 'Adipisci praesentium ut qui quos.', 'Fugiat aspernatur et repellat dolores recusandae. Est aliquam quisquam commodi at aut odio. Praesentium sit ad consequatur repudiandae.', '10', '4', '0', '0', '0', '0', 'Adipisci praesentium ut qui quos.', null, '2018-04-13 19:32:21', '2018-05-01 11:39:59');
INSERT INTO `topics` VALUES ('65', 'Voluptas saepe magni dolores id non veritatis ut.', 'In saepe accusantium iste. Et eligendi amet amet non. Voluptas id occaecati aut eius sed illo possimus.', '2', '4', '0', '0', '0', '0', 'Voluptas saepe magni dolores id non veritatis ut.', null, '2018-04-09 20:23:59', '2018-04-15 10:54:17');
INSERT INTO `topics` VALUES ('66', 'Eos cupiditate accusamus nam praesentium rerum aliquam temporibus assumenda.', 'Suscipit voluptas enim qui sed ex debitis. Corrupti qui et culpa commodi excepturi. Delectus ut est quia voluptatem.', '9', '1', '0', '0', '0', '0', 'Eos cupiditate accusamus nam praesentium rerum aliquam temporibus assumenda.', null, '2018-04-12 16:47:22', '2018-04-18 20:37:34');
INSERT INTO `topics` VALUES ('67', 'Quis iure consequuntur id occaecati.', 'Iure ut qui doloremque non dolor nemo. Fugit suscipit tenetur sapiente atque. Maiores ab porro optio id. Molestiae iure quidem amet dignissimos.', '3', '3', '0', '0', '0', '0', 'Quis iure consequuntur id occaecati.', null, '2018-04-18 21:46:12', '2018-04-18 22:44:23');
INSERT INTO `topics` VALUES ('68', 'Aliquam qui voluptatem eos.', 'Ut a sit placeat quaerat provident rerum rerum labore. Ut dolorum natus fugiat repellat est quam neque. Omnis qui dolor saepe numquam esse sit necessitatibus ab. Quos quo accusamus quo libero.', '3', '2', '0', '0', '0', '0', 'Aliquam qui voluptatem eos.', null, '2018-04-08 18:39:28', '2018-04-22 11:21:26');
INSERT INTO `topics` VALUES ('69', 'Odit vitae quaerat necessitatibus facere assumenda repudiandae.', 'Laboriosam ut eaque consequuntur aut accusamus. Dolore ratione quos voluptas iure laborum sit. Culpa quia est rerum iste possimus cupiditate quo.', '4', '2', '0', '0', '0', '0', 'Odit vitae quaerat necessitatibus facere assumenda repudiandae.', null, '2018-04-22 02:26:32', '2018-05-04 11:03:08');
INSERT INTO `topics` VALUES ('70', 'Facere inventore et quos sed est natus asperiores nam.', 'Suscipit incidunt sit rerum. Odit aut doloribus ut omnis tempore iusto. Facilis non quia facere repudiandae. Tempora sed cupiditate magnam.', '6', '3', '0', '0', '0', '0', 'Facere inventore et quos sed est natus asperiores nam.', null, '2018-04-09 18:12:22', '2018-04-25 06:17:59');
INSERT INTO `topics` VALUES ('71', 'Accusamus sunt vel itaque id placeat aspernatur vitae.', 'Quos voluptas aut fugit nobis occaecati est et. Vel porro maxime incidunt quia sit qui. Id nisi expedita sed et qui recusandae. Ipsam recusandae et ut voluptas at et.', '5', '1', '0', '0', '0', '0', 'Accusamus sunt vel itaque id placeat aspernatur vitae.', null, '2018-04-08 01:27:02', '2018-04-15 20:32:28');
INSERT INTO `topics` VALUES ('72', 'Qui enim laudantium eveniet nemo atque modi.', 'Quaerat quod ipsum illum quod facere ad quo. Consectetur culpa dicta eveniet natus quam. Enim atque dolores consectetur.', '2', '2', '0', '0', '0', '0', 'Qui enim laudantium eveniet nemo atque modi.', null, '2018-04-14 19:05:22', '2018-04-20 13:06:06');
INSERT INTO `topics` VALUES ('73', 'Quo velit ipsa iste aperiam dicta ipsa amet.', 'Ab ipsum voluptatem atque debitis expedita. Facilis deleniti eveniet ex esse totam repudiandae. Ducimus laborum sed voluptatum.', '2', '2', '0', '0', '0', '0', 'Quo velit ipsa iste aperiam dicta ipsa amet.', null, '2018-04-18 04:51:37', '2018-05-02 21:06:17');
INSERT INTO `topics` VALUES ('74', 'Et voluptate et quaerat consequuntur in commodi veniam recusandae.', 'Enim consequatur eum molestiae voluptates. Ipsam in tempore labore fuga enim explicabo. Perspiciatis sunt cupiditate sit explicabo laboriosam ut.', '4', '2', '0', '0', '0', '0', 'Et voluptate et quaerat consequuntur in commodi veniam recusandae.', null, '2018-04-13 09:14:54', '2018-04-14 19:05:22');
INSERT INTO `topics` VALUES ('75', 'Qui unde qui omnis.', 'Dolor quo quis corporis blanditiis adipisci sapiente. Soluta dolor voluptatem est omnis reprehenderit accusamus sint. Non exercitationem ipsum iure quibusdam est aut. Eum et vero praesentium dolore.', '5', '2', '0', '0', '0', '0', 'Qui unde qui omnis.', null, '2018-04-22 02:08:40', '2018-04-27 10:33:06');
INSERT INTO `topics` VALUES ('76', 'Nulla vel quae amet labore.', 'Qui sunt modi consequatur voluptates. Maiores magnam iste sit atque. Mollitia laborum tempora debitis totam consequatur quidem. Odit excepturi qui ea odio.', '5', '3', '0', '0', '0', '0', 'Nulla vel quae amet labore.', null, '2018-04-09 07:10:21', '2018-04-22 23:36:26');
INSERT INTO `topics` VALUES ('77', 'Blanditiis vel qui fugiat sunt sint tempora.', 'At qui impedit quod et. Inventore soluta eligendi quis id dolor consequatur dolorum. Iste soluta libero nulla voluptatibus velit distinctio.', '5', '4', '0', '0', '0', '0', 'Blanditiis vel qui fugiat sunt sint tempora.', null, '2018-04-25 16:14:04', '2018-05-05 07:16:29');
INSERT INTO `topics` VALUES ('78', 'Voluptas consequuntur quaerat id optio molestiae labore animi hic.', 'Quis necessitatibus harum asperiores eligendi. Eum rerum ut voluptatem id voluptas accusantium tempora. Nesciunt quos velit corporis impedit aut sed magnam. Architecto nostrum dolores debitis a et.', '6', '4', '0', '0', '0', '0', 'Voluptas consequuntur quaerat id optio molestiae labore animi hic.', null, '2018-04-25 07:58:26', '2018-04-26 15:10:57');
INSERT INTO `topics` VALUES ('79', 'Aut laudantium sunt est nisi libero odit provident.', 'Dignissimos saepe delectus placeat corporis facere tenetur. Non libero deleniti fugiat eum dolorem animi inventore. Laudantium perspiciatis ut qui perferendis. Iusto natus consectetur et est et.', '2', '2', '0', '0', '0', '0', 'Aut laudantium sunt est nisi libero odit provident.', null, '2018-04-17 16:24:37', '2018-05-03 22:23:39');
INSERT INTO `topics` VALUES ('80', 'Quos eius temporibus aut temporibus.', 'Et sit sequi accusantium placeat. Aspernatur cumque alias nulla quasi aliquid ducimus. Nihil et aut totam ullam impedit maxime. Quae ea ipsum ut.', '10', '2', '0', '0', '0', '0', 'Quos eius temporibus aut temporibus.', null, '2018-04-07 19:54:17', '2018-05-03 19:12:50');
INSERT INTO `topics` VALUES ('81', 'Pariatur inventore sunt illo sequi sequi aut unde quas.', 'Animi facere vel nobis dolorem. Tenetur voluptatem beatae sequi et quas autem. Occaecati nisi quas sunt dolor minus. Dicta dolor deleniti aut libero ut et quia.', '1', '1', '0', '0', '0', '0', 'Pariatur inventore sunt illo sequi sequi aut unde quas.', null, '2018-04-15 18:01:42', '2018-05-02 01:49:49');
INSERT INTO `topics` VALUES ('82', 'Exercitationem deleniti ad voluptas reprehenderit saepe at.', 'Porro ut sit dicta. Voluptatibus facilis voluptatem ab assumenda minus sed cumque.', '9', '2', '0', '0', '0', '0', 'Exercitationem deleniti ad voluptas reprehenderit saepe at.', null, '2018-04-27 10:40:37', '2018-05-03 13:12:36');
INSERT INTO `topics` VALUES ('83', 'Accusamus fugiat voluptatem ut.', 'Necessitatibus quae consequuntur nulla suscipit et odit voluptates odio. Et sequi consequatur dolores quia illo modi.', '4', '2', '0', '0', '0', '0', 'Accusamus fugiat voluptatem ut.', null, '2018-04-12 12:35:31', '2018-05-04 21:19:49');
INSERT INTO `topics` VALUES ('84', 'Dicta architecto inventore quia quam.', 'Rem corrupti odit placeat aut modi ut impedit. Suscipit vitae modi a mollitia labore. Fugit quisquam ipsum veritatis eligendi sint tenetur consequatur.', '4', '4', '0', '0', '0', '0', 'Dicta architecto inventore quia quam.', null, '2018-04-18 00:14:10', '2018-05-03 19:34:39');
INSERT INTO `topics` VALUES ('85', 'Optio aut nostrum consequatur.', 'Nostrum iste quos et consequatur. Corrupti ut sequi voluptatem. Illum id nemo blanditiis aliquam.', '7', '2', '0', '0', '0', '0', 'Optio aut nostrum consequatur.', null, '2018-04-12 18:31:46', '2018-04-30 19:00:38');
INSERT INTO `topics` VALUES ('86', 'Neque alias quam et totam.', 'Repudiandae suscipit cupiditate quos pariatur saepe. Nesciunt dolores quia dolor eligendi hic ducimus laborum. Exercitationem unde et delectus nam.', '3', '2', '0', '0', '0', '0', 'Neque alias quam et totam.', null, '2018-04-13 17:08:28', '2018-04-16 05:14:59');
INSERT INTO `topics` VALUES ('87', 'Veritatis explicabo quae fuga quos similique nemo.', 'Totam minima optio esse. Ipsa ut eos nostrum occaecati quod nihil. Iste nesciunt corrupti culpa quas. Ad nobis dolores repellendus assumenda eligendi.', '10', '1', '0', '0', '0', '0', 'Veritatis explicabo quae fuga quos similique nemo.', null, '2018-04-15 01:22:11', '2018-04-17 06:36:39');
INSERT INTO `topics` VALUES ('88', 'Et impedit non explicabo vero ducimus officiis.', 'Eum eaque eius modi unde qui sit consectetur. Et molestias et vero molestiae. Possimus corrupti ullam reiciendis. Eum officiis vel non nostrum non. Dolore et in autem ad sit ea.', '10', '4', '0', '0', '0', '0', 'Et impedit non explicabo vero ducimus officiis.', null, '2018-04-13 16:21:13', '2018-05-06 12:55:12');
INSERT INTO `topics` VALUES ('89', 'Sit sint reprehenderit tempora nulla fugit ab tenetur.', 'Enim aut aliquid omnis sed. Repellat sint voluptatem eveniet aut est placeat vitae.', '9', '1', '0', '0', '0', '0', 'Sit sint reprehenderit tempora nulla fugit ab tenetur.', null, '2018-04-08 17:26:35', '2018-04-10 18:03:32');
INSERT INTO `topics` VALUES ('90', 'Odio voluptatibus rerum sint quam.', 'Porro rem doloremque autem aut debitis. Repellat iure aut sit adipisci. Non excepturi et adipisci fuga.', '3', '4', '0', '0', '0', '0', 'Odio voluptatibus rerum sint quam.', null, '2018-04-07 22:24:36', '2018-04-16 05:10:03');
INSERT INTO `topics` VALUES ('91', 'Molestiae dignissimos quod ut atque rerum aut sapiente.', 'Consequatur dicta voluptas harum doloribus. Quam ea tempore aliquid laudantium. Hic tempora beatae rerum vel sed unde inventore. Eum ut nostrum nisi qui laudantium et sunt.', '2', '4', '0', '0', '0', '0', 'Molestiae dignissimos quod ut atque rerum aut sapiente.', null, '2018-04-22 02:10:13', '2018-05-02 09:52:48');
INSERT INTO `topics` VALUES ('92', 'Aut veniam et architecto aut.', 'Aut architecto nesciunt rem. Ea minima temporibus totam sint. Ratione ipsa sunt error aliquid quia asperiores nemo nobis.', '3', '2', '0', '0', '0', '0', 'Aut veniam et architecto aut.', null, '2018-04-16 10:56:06', '2018-04-16 14:36:07');
INSERT INTO `topics` VALUES ('93', 'Voluptates ad qui iure officiis ab et.', 'Est numquam est dolores accusamus. Sed vitae praesentium sunt molestiae. Repellendus fuga et id non. Consequatur et praesentium qui sit quia. Itaque quibusdam laudantium rerum omnis explicabo.', '9', '3', '0', '0', '0', '0', 'Voluptates ad qui iure officiis ab et.', null, '2018-04-28 13:46:25', '2018-05-02 19:06:23');
INSERT INTO `topics` VALUES ('94', 'Et itaque voluptas quia magnam quisquam est.', 'Voluptate quidem veniam impedit. Quidem quasi provident vel quia quis. Enim officia quae rerum est vel placeat.', '5', '3', '0', '0', '0', '0', 'Et itaque voluptas quia magnam quisquam est.', null, '2018-04-11 14:55:26', '2018-04-26 19:11:32');
INSERT INTO `topics` VALUES ('95', 'Et ad est velit voluptas.', 'Autem nostrum rem consectetur qui qui. Occaecati nam blanditiis ratione error et itaque repudiandae officia.', '5', '1', '0', '0', '0', '0', 'Et ad est velit voluptas.', null, '2018-04-07 19:07:44', '2018-04-10 11:00:05');
INSERT INTO `topics` VALUES ('96', 'Facilis fuga quibusdam quo nihil.', 'Voluptatem non quaerat laudantium. Sit alias expedita nisi sint odit. Autem consequatur saepe sed et.', '10', '2', '0', '0', '0', '0', 'Facilis fuga quibusdam quo nihil.', null, '2018-04-09 19:32:19', '2018-04-13 11:38:53');
INSERT INTO `topics` VALUES ('97', 'Voluptas non repudiandae quasi voluptas reprehenderit qui.', 'Quos non autem qui doloribus perspiciatis qui. Ut sint libero voluptatem. Rem qui ratione voluptatem. Dignissimos quia ducimus modi. Optio accusamus voluptatibus iusto sed doloribus.', '2', '4', '0', '0', '0', '0', 'Voluptas non repudiandae quasi voluptas reprehenderit qui.', null, '2018-04-10 21:08:45', '2018-04-12 11:46:25');
INSERT INTO `topics` VALUES ('98', 'In ullam aut ut.', 'Non omnis sit similique eos beatae. Officia reiciendis omnis sit ipsa velit. Quibusdam error ea aliquam itaque ratione fugit vitae. Consequuntur velit et voluptatem. Ut voluptate sed voluptate ipsam.', '1', '3', '0', '0', '0', '0', 'In ullam aut ut.', null, '2018-04-13 15:51:15', '2018-04-13 21:30:45');
INSERT INTO `topics` VALUES ('99', 'Dolor voluptatem provident sint quisquam et est nihil nemo.', 'Ipsa ut voluptas ut voluptate minima repudiandae minima. Iste dolor iure repudiandae tenetur eos ut qui.', '4', '1', '0', '0', '0', '0', 'Dolor voluptatem provident sint quisquam et est nihil nemo.', null, '2018-04-10 10:32:09', '2018-04-26 10:01:29');
INSERT INTO `topics` VALUES ('101', '我要发帖', '<p>发个帖子<br /></p>', '11', '1', '8', '0', '0', '0', '发个帖子', null, '2018-05-07 17:16:36', '2018-05-07 18:23:11');
INSERT INTO `topics` VALUES ('102', '发个帖子', '<p>发个帖子</p>', '1', '2', '0', '0', '0', '0', '发个帖子', null, '2018-05-07 17:17:12', '2018-05-07 17:17:12');
INSERT INTO `topics` VALUES ('103', '发个帖子', '<p>发个帖子</p>', '1', '2', '8', '0', '0', '0', '发个帖子', 'post-a-post', '2018-05-07 17:19:40', '2018-05-07 20:13:38');
INSERT INTO `topics` VALUES ('104', '我要发帖', '<p>发个帖子<br /></p>', '11', '2', '16', '0', '0', '0', '发个帖子', 'im-going-to-post-a-post', '2018-05-07 17:19:47', '2018-05-14 22:12:18');
INSERT INTO `topics` VALUES ('105', '测试', '<p>测试</p>', '1', '1', '1', '0', '0', '0', '测试', null, '2018-05-11 22:12:01', '2018-05-14 17:47:59');
INSERT INTO `topics` VALUES ('106', '测试', '<p>测试</p>', '1', '1', '0', '0', '0', '0', '测试', null, '2018-05-14 20:32:26', '2018-05-14 20:32:26');
INSERT INTO `topics` VALUES ('107', 'sss', '<p>a</p>', '1', '1', '13', '0', '0', '0', 'a', null, '2018-05-14 20:37:41', '2018-05-14 22:25:00');
INSERT INTO `topics` VALUES ('108', '测试', '<p>测试</p>', '1', '1', '0', '0', '0', '0', '测试', null, '2018-05-14 22:50:03', '2018-05-14 22:50:03');
INSERT INTO `topics` VALUES ('109', '测试', '<p>测试</p>', '1', '1', '0', '0', '0', '0', '测试', null, '2018-05-14 22:50:04', '2018-05-14 22:50:04');
INSERT INTO `topics` VALUES ('110', '执行安装composer create-project --prefer-dist laravel/laravel blog 报错', '<p><span style=\"font-size:1px;\">执行安装composer create-project --prefer-dist laravel/laravel blog 报错，这是为甚？</span><br /></p>', '11', '3', '2', '0', '0', '0', '执行安装composer create-project --prefer-dist laravel/laravel blog 报错，这是为甚？', null, '2018-06-05 21:44:57', '2018-09-05 12:20:47');
INSERT INTO `topics` VALUES ('111', '百度翻译测试', '<p>爱都啊啊啊啊百度</p>', '1', '1', '26', '0', '0', '0', '爱都啊啊啊啊百度', null, '2018-06-06 23:54:39', '2018-09-05 13:42:53');
INSERT INTO `topics` VALUES ('112', '准考证', '<p>Laravel 5.6 中文文档</p>', '11', '1', '2', '0', '0', '0', 'Laravel 5.6 中文文档', null, '2018-07-20 11:44:26', '2018-09-05 11:36:29');
INSERT INTO `topics` VALUES ('113', '事件管理', '<p><a href=\"https://www.swoole.co.uk/\">Swoole</a> 是为 PHP 开发的生产级异步编程框架。 他是一个纯 C 开发的扩展， 他允许 PHP 开发者在 PHP 中写 高性能，可扩展的并发 TCP， UDP， Unix socket， HTTP， WebSocket 服务， 而不需要拥有太多的非阻塞 I/O 编程和低级别的 Linux 内核知识。 你可以把 Swoole 想象成 NodeJS， 但对于 PHP 来说将有更高性能。</p>\n\n<p><img src=\"https://lccdn.phphub.org/uploads/avatars/14564_1493099687.jpg?imageView2/1/w/100/h/100\" alt=\"100\" />BradStevens 翻译于 3个月前</p>\n\n<p><a> 4</a> <a href=\"https://laravel-china.org/sections/3054/patches/create\"> 改进</a> <a href=\"https://laravel-china.org/translations/sections/3054\"> 重译</a></p>\n\n<p><br /> 由 <a href=\"https://laravel-china.org/users/1\">Summer</a> 审阅</p>\n\n<h2>为什么要在 Swoole 上运行 Laravel?</h2>\n\n<p>下图展示了 PHP 的生命周期。正如你所看到的那样，当你每次运行 PHP 脚本的时候，PHP都需要初始化模块并为你的运行环境启动Zend引擎。并且将 PHP 脚本编译为 OpCodes 以便 Zend引擎执行。</p>\n\n<p>但是， 这样的生命周期需要在每次请求的时候都执行一遍。因为单个请求创建的环境在请求执行结束后会立即销毁。</p>\n\n<p>换句话说， 在传统的 PHP 生命周期中， 为了脚本执行而浪费了大量的时间去创建和销毁资源。想象一下像 Laravel 这样的框架， 在每次请求中需要加载多少文件? 同时也浪费了大量的 I/O 操作<br /><img src=\"https://lccdn.phphub.org/uploads/images/201805/10/1/DxgNNDjmQW.png?imageView2/2/w/1240/h/0\" alt=\"file\" /></p>\n\n<p>因此如果我们利用 Swoole 内置一个应用级别的 Server， 并且所有脚本文件在加载一次之后便可以保存在内存中呢？ 这就是为什么我们需要尝试在 Swoole 上运行 Laravel。 Swoole 可以提供强大性能而 Laravel 则可以提供优雅代码结构使用。这俩儿真是完美组合 !</p>\n\n<p><img src=\"https://lccdn.phphub.org/uploads/avatars/18206_1524645293.gif?imageView2/1/w/100/h/100\" alt=\"100\" />JaguarJack 翻译于 3个月前</p>\n\n<p><a> 1</a> <a href=\"https://laravel-china.org/sections/3048/patches/create\"> 改进</a> <a href=\"https://laravel-china.org/translations/sections/3048\"> 重译</a></p>\n\n<p><br /> 由 <a href=\"https://laravel-china.org/users/1\">Summer</a> 审阅</p>\n\n<h2>安装</h2>\n\n<p>以下是 <code>swooletw/laravel-swoole</code> 的主要特点：</p>\n\n<ul><li>在 Swoole 运行 Laravel/Lumen 应用</li><li>出色的性能提升至 30x</li><li>沙盒模式隔离应用程序容器</li><li>支持在 Laravel 应用中运行 WebSocket 服务器</li><li>支持 <code>Socket.io</code> 协议</li><li>支持 Swoole 表跨进程共享</li></ul>\n\n<p>使用 Composer 安装：</p>\n\n<pre><code>$ composer <span class=\"token keyword\" style=\"color:rgb(102,217,239);\">require</span> swooletw<span class=\"token operator\">/</span>laravel<span class=\"token operator\">-</span>swoole\n</code></pre>\n\n<p>这个包依赖于 Swoole 。在使用这个包之前，请确保你的机器安装了正确的 Swoole 。使用下面的命令快速安装（linux）：</p>\n\n<pre><code>pecl install swoole\n</code></pre>\n\n<p>在安装这个扩展之后，你需要编辑 php.ini 添加  <code>extension=swoole.so</code>。</p>\n\n<pre><code>php <span class=\"token operator\">-</span>i <span class=\"token operator\">|</span> grep php<span class=\"token punctuation\">.</span>ini                      <span class=\"token shell-comment comment\"># check the php.ini file location</span>\nsudo <span class=\"token keyword\" style=\"color:rgb(102,217,239);\">echo</span> <span class=\"token string\" style=\"color:rgb(166,226,46);\">\"extension=swoole.so\"</span> <span class=\"token operator\">&gt;</span> php<span class=\"token punctuation\">.</span>ini  <span class=\"token shell-comment comment\"># add the extension=swoole.so to the end of php.ini</span>\nphp <span class=\"token operator\">-</span>m <span class=\"token operator\">|</span> grep swoole                       <span class=\"token shell-comment comment\"># check if the swoole extension has been enabled</span>\n</code></pre>\n\n<blockquote><p>访问 <a href=\"https://www.swoole.co.uk/docs/get-started/installation\">官网</a> 获取更多的信息。</p><p>注意：Swoole 现在只支持 Linux 和 OSX 。Windows 服务器现在还不支持。</p></blockquote>\n\n<p>然后，添加服务提供者：</p>\n\n<p>如果你使用 Laravel ，在 <code>config/app.php</code> 服务提供者数组添加该服务提供者：</p>\n\n<pre><code><span class=\"token punctuation\">[</span>\n    <span class=\"token string\" style=\"color:rgb(166,226,46);\">\'providers\'</span> <span class=\"token operator\">=</span><span class=\"token operator\">&gt;</span> <span class=\"token punctuation\">[</span>\n        <span class=\"token scope\">SwooleTW<span class=\"token punctuation\">\\</span>Http<span class=\"token punctuation\">\\</span>LaravelServiceProvider<span class=\"token punctuation\">::</span></span><span class=\"token keyword\" style=\"color:rgb(102,217,239);\">class</span><span class=\"token punctuation\">,</span>\n    <span class=\"token punctuation\">]</span><span class=\"token punctuation\">,</span>\n<span class=\"token punctuation\">]</span>\n</code></pre>\n\n<p>如果你使用 Lumen ，请将下面的代码添加到 <code>bootstrap/app.php</code>：</p>\n\n<pre><code><span class=\"token variable\">$app</span><span class=\"token operator\">-</span><span class=\"token operator\">&gt;</span><span class=\"token function\" style=\"color:rgb(230,219,116);\">register</span><span class=\"token punctuation\">(</span><span class=\"token scope\">SwooleTW<span class=\"token punctuation\">\\</span>Http<span class=\"token punctuation\">\\</span>LumenServiceProvider<span class=\"token punctuation\">::</span></span><span class=\"token keyword\" style=\"color:rgb(102,217,239);\">class</span><span class=\"token punctuation\">)</span><span class=\"token punctuation\">;</span>\n</code></pre>\n\n<blockquote><p>这个包支持包自动发现机制。如果你运行 Laravel 5.5 以上版本，你可以跳过这一步。</p></blockquote>\n\n<p><img src=\"https://lccdn.phphub.org/uploads/avatars/8507_1482421017.png?imageView2/1/w/100/h/100\" alt=\"100\" />菜鸟展翅 翻译于 3个月前</p>\n\n<p><a> 1</a> <a href=\"https://laravel-china.org/sections/3058/patches/create\"> 改进</a> <a href=\"https://laravel-china.org/translations/sections/3058\"> 重译</a></p>\n\n<p><br /> 由 <a href=\"https://laravel-china.org/users/1\">Summer</a> 审阅</p>\n\n<h2>建立并运行起来</h2>\n\n<p>现在，你可以执行以下的命令来启动 Swoole HTTP 服务。</p>\n\n<pre><code>$ php artisan swoole<span class=\"token punctuation\">:</span>http start\n</code></pre>\n\n<p>然后你可以看到以下信息：</p>\n\n<pre><code>Starting swoole http server<span class=\"token punctuation\">.</span><span class=\"token punctuation\">.</span><span class=\"token punctuation\">.</span>\nSwoole http server started<span class=\"token punctuation\">:</span> <span class=\"token markup\">&lt;http://127.0.0.1:1215&gt;</span>\n</code></pre>\n\n<p>现在可以通过访问 <code><a href=\"http://127.0.0.1:1215\">http://127.0.0.1:1215</a></code> 来进入 Laravel 应用。</p>\n\n<p><img src=\"https://lccdn.phphub.org/uploads/avatars/14564_1493099687.jpg?imageView2/1/w/100/h/100\" alt=\"100\" />BradStevens 翻译于 3个月前</p>\n\n<p><a> 1</a> <a href=\"https://laravel-china.org/sections/3052/patches/create\"> 改进</a> <a href=\"https://laravel-china.org/translations/sections/3052\"> 重译</a></p>\n\n<p><br /> 由 <a href=\"https://laravel-china.org/users/1\">Summer</a> 审阅</p>\n\n<h2>基准测试</h2>\n\n<p>使用 MacBook Air 13寸（2015年产）及干净的 Lumen 5.5 项目测试：<br />基准测试工具： <a href=\"https://github.com/wg/wrk\">wrk</a></p>\n\n<pre><code>wrk <span class=\"token operator\">-</span>t4 <span class=\"token operator\">-</span>c100 http<span class=\"token punctuation\">:</span><span class=\"token comment\">//your.app</span>\n</code></pre>\n\n<h3>基于 FPM 的 Nginx</h3>\n\n<pre><code>Running 10s test @ http<span class=\"token punctuation\">:</span><span class=\"token comment\">//lumen.app:9999</span>\n  <span class=\"token number\" style=\"color:rgb(174,129,255);\">4</span> threads <span class=\"token keyword\" style=\"color:rgb(102,217,239);\">and</span> <span class=\"token number\" style=\"color:rgb(174,129,255);\">100</span> connections\n  Thread Stats   Avg      Stdev     Max   <span class=\"token operator\">+</span><span class=\"token operator\">/</span><span class=\"token operator\">-</span> Stdev\n    Latency     <span class=\"token number\" style=\"color:rgb(174,129,255);\">1</span><span class=\"token punctuation\">.</span>14s   <span class=\"token number\" style=\"color:rgb(174,129,255);\">191</span><span class=\"token punctuation\">.</span>03ms   <span class=\"token number\" style=\"color:rgb(174,129,255);\">1</span><span class=\"token punctuation\">.</span>40s    <span class=\"token number\" style=\"color:rgb(174,129,255);\">90.31</span><span class=\"token operator\">%</span>\n    Req<span class=\"token operator\">/</span>Sec    <span class=\"token number\" style=\"color:rgb(174,129,255);\">22.65</span>     <span class=\"token number\" style=\"color:rgb(174,129,255);\">10.65</span>    <span class=\"token number\" style=\"color:rgb(174,129,255);\">50.00</span>     <span class=\"token number\" style=\"color:rgb(174,129,255);\">65.31</span><span class=\"token operator\">%</span>\n  <span class=\"token number\" style=\"color:rgb(174,129,255);\">815</span> requests in <span class=\"token number\" style=\"color:rgb(174,129,255);\">10</span><span class=\"token punctuation\">.</span>07s<span class=\"token punctuation\">,</span> <span class=\"token number\" style=\"color:rgb(174,129,255);\">223</span><span class=\"token punctuation\">.</span><span class=\"token constant\" style=\"color:rgb(102,217,239);\">65KB</span> read\nRequests<span class=\"token operator\">/</span>sec<span class=\"token punctuation\">:</span>     <span class=\"token number\" style=\"color:rgb(174,129,255);\">80.93</span>\nTransfer<span class=\"token operator\">/</span>sec<span class=\"token punctuation\">:</span>     <span class=\"token number\" style=\"color:rgb(174,129,255);\">22</span><span class=\"token punctuation\">.</span><span class=\"token constant\" style=\"color:rgb(102,217,239);\">21KB</span>\n</code></pre>\n\n<p><img src=\"https://lccdn.phphub.org/uploads/avatars/14564_1493099687.jpg?imageView2/1/w/100/h/100\" alt=\"100\" />BradStevens 翻译于 3个月前</p>\n\n<p><a> 1</a> <a href=\"https://laravel-china.org/sections/3051/patches/create\"> 改进</a> <a href=\"https://laravel-china.org/translations/sections/3051\"> 重译</a></p>\n\n<p><br /> 由 <a href=\"https://laravel-china.org/users/1\">Summer</a> 审阅</p>\n\n<h3>Swoole HTTP 服务</h3>\n\n<pre><code>Running 10s test @ http<span class=\"token punctuation\">:</span><span class=\"token comment\">//127.0.0.1:1215</span>\n  <span class=\"token number\" style=\"color:rgb(174,129,255);\">4</span> threads <span class=\"token keyword\" style=\"color:rgb(102,217,239);\">and</span> <span class=\"token number\" style=\"color:rgb(174,129,255);\">100</span> connections\n  Thread Stats   Avg      Stdev     Max   <span class=\"token operator\">+</span><span class=\"token operator\">/</span><span class=\"token operator\">-</span> Stdev\n    Latency    <span class=\"token number\" style=\"color:rgb(174,129,255);\">11</span><span class=\"token punctuation\">.</span>58ms    <span class=\"token number\" style=\"color:rgb(174,129,255);\">4</span><span class=\"token punctuation\">.</span>74ms  <span class=\"token number\" style=\"color:rgb(174,129,255);\">68</span><span class=\"token punctuation\">.</span>73ms   <span class=\"token number\" style=\"color:rgb(174,129,255);\">81.63</span><span class=\"token operator\">%</span>\n    Req<span class=\"token operator\">/</span>Sec     <span class=\"token number\" style=\"color:rgb(174,129,255);\">2</span><span class=\"token punctuation\">.</span>19k   <span class=\"token number\" style=\"color:rgb(174,129,255);\">357.43</span>     <span class=\"token number\" style=\"color:rgb(174,129,255);\">2</span><span class=\"token punctuation\">.</span>90k    <span class=\"token number\" style=\"color:rgb(174,129,255);\">69.50</span><span class=\"token operator\">%</span>\n  <span class=\"token number\" style=\"color:rgb(174,129,255);\">87879</span> requests in <span class=\"token number\" style=\"color:rgb(174,129,255);\">10</span><span class=\"token punctuation\">.</span>08s<span class=\"token punctuation\">,</span> <span class=\"token number\" style=\"color:rgb(174,129,255);\">15</span><span class=\"token punctuation\">.</span><span class=\"token constant\" style=\"color:rgb(102,217,239);\">67MB</span> read\nRequests<span class=\"token operator\">/</span>sec<span class=\"token punctuation\">:</span>   <span class=\"token number\" style=\"color:rgb(174,129,255);\">8717.00</span>\nTransfer<span class=\"token operator\">/</span>sec<span class=\"token punctuation\">:</span>      <span class=\"token number\" style=\"color:rgb(174,129,255);\">1</span><span class=\"token punctuation\">.</span><span class=\"token constant\" style=\"color:rgb(102,217,239);\">55MB</span>\n</code></pre>\n\n<h2>更多信息</h2>\n\n<p>在 <a href=\"https://github.com/swooletw/laravel-swoole\">Github Repo</a> 查看官方包， 也可以参考 <a href=\"https://github.com/swooletw/laravel-swoole/wiki\">官方文档</a> 获取更多信息。</p>\n\n<p>此文最初发表于 <a href=\"https://laravel-news.com/\">Laravel News</a>。</p>', '11', '1', '0', '0', '0', '0', 'Swoole 是为 PHP 开发的生产级异步编程框架。 他是一个纯 C 开发的扩展， 他允许 PHP 开发者在 PHP 中写 高性能，可扩展的并发 TCP， UDP， Unix socket， HTTP， WebSocket 服务， 而不需要拥有太多的非阻塞 I/O 编...', null, '2018-07-31 09:13:50', '2018-09-04 18:03:59');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weixin_openid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weapp_openid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weixin_session_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weixin_unionid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_count` int(10) unsigned NOT NULL DEFAULT '0',
  `last_actived_at` timestamp NULL DEFAULT NULL,
  `registration_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  UNIQUE KEY `users_weixin_openid_unique` (`weixin_openid`),
  UNIQUE KEY `users_weixin_unionid_unique` (`weixin_unionid`),
  UNIQUE KEY `users_weapp_openid_unique` (`weapp_openid`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'summerblue', null, '111@qq.com', '$2y$10$mJiTQ1Fbt1Y11JH3YJuEAedZR6jzOmzbzmQU.cLsAJYN67r9re5h6', null, null, null, null, 'wWT5GCPKvcsESzmA2QX56sEhAZdc5WvRmkjt5d8wWspWqSI4gs1NosNroeFv', '2018-05-07 14:58:15', '2018-09-05 13:42:53', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/ZqM7iaP4CR.png?imageView2/1/w/200/h/200', 'summerblue', '28', '2018-05-10 15:33:08', 'summerblue');
INSERT INTO `users` VALUES ('2', 'Mr. Torrey Schmitt I', null, 'davin.yost@example.org', '$2y$10$mJiTQ1Fbt1Y11JH3YJuEAedZR6jzOmzbzmQU.cLsAJYN67r9re5h6', null, null, null, null, 'DICi6PxS0lVj511Ypvw16PbbbFDHQ1tLD05unbqRddRGSzCnjVJdcQe05hez', '2018-05-07 14:58:15', '2018-05-07 14:58:15', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/xAuDMxteQy.png?imageView2/1/w/200/h/200', 'Ut molestiae aliquid quia odio explicabo et eos.', '0', null, null);
INSERT INTO `users` VALUES ('3', 'Lilly Heller', null, 'fritsch.vada@example.org', '$2y$10$ORehqDMHZPS4ZlevBq/6h.tPHvmhmYS80BMiYrJ56uPBXP6YV7cLO', null, null, null, null, '4yfWbkH0Gr', '2018-05-07 14:58:15', '2018-05-07 14:58:15', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/Lhd1SHqu86.png?imageView2/1/w/200/h/200', 'Minus rerum voluptatem et eaque et qui.', '0', null, null);
INSERT INTO `users` VALUES ('4', 'Dave Ryan', null, 'jovany.blick@example.com', '$2y$10$llAQibiCTuF2z/wDLDwEn.AaMRAhwaFy83kNHSKicmfwRUvUHrRQy', null, null, null, null, 'rrf4XN7EVV', '2018-05-07 14:58:15', '2018-05-14 22:50:07', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/Lhd1SHqu86.png?imageView2/1/w/200/h/200', 'Impedit perferendis voluptas maiores ullam dolorem autem.', '3', null, null);
INSERT INTO `users` VALUES ('5', 'Nayeli Waelchi', null, 'nmertz@example.com', '$2y$10$mJiTQ1Fbt1Y11JH3YJuEAedZR6jzOmzbzmQU.cLsAJYN67r9re5h6', null, null, null, null, 'PriKeXaWXrlBEkayWOu6bDMOfDlyXfPYPPLxIZXOmOVhGF7kEdOFes1t5nyv', '2018-05-07 14:58:15', '2018-05-07 14:58:15', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/LOnMrqbHJn.png?imageView2/1/w/200/h/200', 'Quos soluta consequatur illum eius dolor et non.', '0', null, null);
INSERT INTO `users` VALUES ('6', 'Ned Nikolaus Sr.', null, 'qdare@example.com', '$2y$10$EBegZXbeE49Wq9Mf.1I3iOeBQ4oZPvBTV4kP6oTXjFWqMyJNB7liy', null, null, null, null, 'Q6A2gBFIXV', '2018-05-07 14:58:15', '2018-05-07 14:58:15', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/NDnzMutoxX.png?imageView2/1/w/200/h/200', 'Sunt nisi porro voluptatum.', '0', null, null);
INSERT INTO `users` VALUES ('7', 'Jaunita Morissette DVM', null, 'vgerlach@example.com', '$2y$10$uGUOg7jop86uEl7PTarscehmOH7RneyqKea8WfMWsdqSslXrsdks.', null, null, null, null, 'NssL44hvZ4', '2018-05-07 14:58:15', '2018-05-07 14:58:15', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/s5ehp11z6s.png?imageView2/1/w/200/h/200', 'Blanditiis nisi unde commodi rerum animi labore eius.', '0', null, null);
INSERT INTO `users` VALUES ('8', 'Durward Johnston', null, 'max.vandervort@example.net', '$2y$10$8PlcULXOOmadtH.b5u5kcuTtwcqwkKZ2eQvpQd9x.Bdl0rUDemSvq', null, null, null, null, 'yzl3UazAT2', '2018-05-07 14:58:16', '2018-05-07 14:58:16', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/NDnzMutoxX.png?imageView2/1/w/200/h/200', 'Vero fugiat nesciunt fugiat ut porro veniam accusamus.', '0', null, null);
INSERT INTO `users` VALUES ('9', 'Joana Mitchell', null, 'chauncey12@example.com', '$2y$10$6ibTZzlMXMJuJm1m1o.6NuYvMkk7/KHF3jQNXLwCG494QfP97cc4m', null, null, null, null, 'cbGPRtsisW', '2018-05-07 14:58:16', '2018-05-07 14:58:16', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/LOnMrqbHJn.png?imageView2/1/w/200/h/200', 'Voluptas dignissimos in voluptas.', '0', null, null);
INSERT INTO `users` VALUES ('10', 'Foster Gutmann', null, 'emmalee.collins@example.com', '$2y$10$Dr1/nRfXjfMb4CeOiCPZDuWMMMV2yG6LQC5SF80.B6QMi3MTH.M6u', null, null, null, null, 'xJARdl1E7G', '2018-05-07 14:58:16', '2018-05-14 21:58:15', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/NDnzMutoxX.png?imageView2/1/w/200/h/200', 'Sequi culpa quia eum sapiente alias.', '1', null, null);
INSERT INTO `users` VALUES ('11', 'lvtu', null, '550407948@qq.com', '$2y$10$mJiTQ1Fbt1Y11JH3YJuEAedZR6jzOmzbzmQU.cLsAJYN67r9re5h6', null, null, null, null, 'GKFoCvTZgCjUtMU6f3KrLDgBBrVNRIcNMdzG99Jdr95esoU1szal8M4MDQzd', '2018-05-07 16:37:36', '2018-09-05 13:43:41', 'http://larabbs.test/uploads/images/avatars/201805/07/11_1525663362_nWFYz0Md3D.jpg', null, '0', null, null);
INSERT INTO `users` VALUES ('12', 'Marianne VonRueden DVM', null, 'aliyah30@example.com', '$2y$10$/cdPIm0Ugj1VG56YkYXlF.sdifJhFGdxhluQG2/YDJuhUsGB8/J1W', null, null, null, null, 'rHoIBQuRxe', '2018-05-08 21:13:37', '2018-05-08 21:13:37', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/Lhd1SHqu86.png?imageView2/1/w/200/h/200', 'Ullam ut et in dolorem.', '0', null, null);
INSERT INTO `users` VALUES ('13', 'Enrico Mann', null, 'mariah.schiller@example.com', '$2y$10$HYstxz6MtEHnCqOuCXj8ieNJc6To3ZN6FdXzpQyqvUyKFpBF0MFsa', null, null, null, null, 'KINrGEuXGI', '2018-05-08 21:13:37', '2018-05-08 21:13:37', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/Lhd1SHqu86.png?imageView2/1/w/200/h/200', 'Impedit qui est dolorem dolorem commodi tempora.', '0', null, null);
INSERT INTO `users` VALUES ('14', 'Aracely McKenzie', null, 'charlene.wiegand@example.org', '$2y$10$UQRCPLRJv0F7QFu9vsQT0.gB4a2MNG9F/5w/L6nK0UOasAYci8eYu', null, null, null, null, 'YakIMWG9Vd', '2018-05-08 21:13:37', '2018-05-08 21:13:37', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/Lhd1SHqu86.png?imageView2/1/w/200/h/200', 'Consequatur magni et libero quisquam officiis tempora accusantium delectus.', '0', null, null);
INSERT INTO `users` VALUES ('15', 'Myrtle Christiansen', null, 'ilynch@example.net', '$2y$10$JzoXaICRXvsmF0HoG1iwhOluZR9SE.DbkDJSfQwxeVm2TdBpH8rFC', null, null, null, null, 'tn4EwqJueM', '2018-05-08 21:13:37', '2018-05-08 21:13:37', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/NDnzMutoxX.png?imageView2/1/w/200/h/200', 'Praesentium dolorum aut nihil sapiente.', '0', null, null);
INSERT INTO `users` VALUES ('16', 'Jeffery Glover', null, 'humberto35@example.com', '$2y$10$fnVu6Z51X99g1lG3TTZNd.0wgrmbTQznkFKNhXRxzrypVVyzc/226', null, null, null, null, 'eOWJD5tMWu', '2018-05-08 21:13:37', '2018-05-08 21:13:37', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/s5ehp11z6s.png?imageView2/1/w/200/h/200', 'Ut et harum est non ut maxime.', '0', null, null);
INSERT INTO `users` VALUES ('17', 'Alberto Williamson', null, 'maximilian80@example.com', '$2y$10$Bs3KF6wnycPf9/KZUfPniueTEBNN3sDp/sQ5Q90N3HkjG1eglcuSy', null, null, null, null, 'LlQboLeKvP', '2018-05-08 21:13:37', '2018-05-08 21:13:37', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/ZqM7iaP4CR.png?imageView2/1/w/200/h/200', 'Officia enim sit corporis porro.', '0', null, null);
INSERT INTO `users` VALUES ('18', 'Rosalinda Nitzsche', null, 'mertie.effertz@example.com', '$2y$10$9LfKOTqJ/wFcQYe3ZzJqkuDfTHXZuYwEH6gmFUo17mQVJrDuAFnta', null, null, null, null, '4fUea6qpN1', '2018-05-08 21:13:37', '2018-05-08 21:13:37', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/LOnMrqbHJn.png?imageView2/1/w/200/h/200', 'Modi pariatur delectus ut.', '0', null, null);
INSERT INTO `users` VALUES ('19', 'Katrine Abernathy MD', null, 'kutch.morgan@example.net', '$2y$10$k9WqDrRtVDvlY2.tklk6Q.O6gCDLeNjUSNEdHVvyH3/4o/qV/auvO', null, null, null, null, 'wd3nRccBZ5', '2018-05-08 21:13:37', '2018-05-08 21:13:37', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/LOnMrqbHJn.png?imageView2/1/w/200/h/200', 'A et sapiente dolorem impedit ab.', '0', null, null);
INSERT INTO `users` VALUES ('20', 'Sebastian Rohan', null, 'garry.satterfield@example.org', '$2y$10$qct2CCcANSqQnS/SgI55ouRR45KA95vi1o9FtnzDFplp1S9dCfF3C', null, null, null, null, 'LPv2iw0Sa2', '2018-05-08 21:13:37', '2018-05-08 21:13:37', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/NDnzMutoxX.png?imageView2/1/w/200/h/200', 'Cumque veniam et occaecati consequatur officiis dolor voluptatem.', '0', null, null);
INSERT INTO `users` VALUES ('21', 'Chyna Hessel', null, 'xcruickshank@example.net', '$2y$10$8OqPxH5CLSv3h4xxAT1J6ekekKGwF2gts4Wg.h09N8tyazA59JWpa', null, null, null, null, 'msavV3YNsv', '2018-05-08 21:13:37', '2018-05-08 21:13:37', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/xAuDMxteQy.png?imageView2/1/w/200/h/200', 'Repellat quasi veniam voluptatem nostrum iste consectetur.', '0', null, null);
INSERT INTO `users` VALUES ('22', 'Keira Ortiz', null, 'conn.marshall@example.com', '$2y$10$PD4duGpfCPqvLhLpN9HOdOaXbM6GKcFJlhrmAQ2rciVTMz3i1sooW', null, null, null, null, 'VKMPgrDkS4', '2018-05-08 21:17:12', '2018-05-08 21:17:12', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/s5ehp11z6s.png?imageView2/1/w/200/h/200', 'Eum minus aliquam enim quas.', '0', null, null);
INSERT INTO `users` VALUES ('23', 'Ubaldo Zboncak', null, 'chyna.smith@example.com', '$2y$10$AEgf76SO6W2pNfzHG7qRTeptBBTC9ihgr2WCQXFk9GAL5pG1wET1m', null, null, null, null, 'zdc4cdBSYj', '2018-05-08 21:17:12', '2018-05-08 21:17:12', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/LOnMrqbHJn.png?imageView2/1/w/200/h/200', 'Provident ut vel cupiditate animi possimus eaque et.', '0', null, null);
INSERT INTO `users` VALUES ('24', 'Ms. Shirley Monahan', null, 'schuppe.elvie@example.org', '$2y$10$/4GwIWW5yccpVWwfhCwnDuRx9FnFPrazdfyUysY.FZnV8e4zNkARq', null, null, null, null, '6DZY7ogQ1W', '2018-05-08 21:17:12', '2018-05-08 21:17:12', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/s5ehp11z6s.png?imageView2/1/w/200/h/200', 'Expedita consequuntur eaque excepturi velit nobis dolores.', '0', null, null);
INSERT INTO `users` VALUES ('25', 'Dr. Aiden Hickle', null, 'mabel44@example.com', '$2y$10$UwrM1Ehz42uKNPjLoLGv/esSR3u4cDgntQjT7bbBQtx2tf4OMdhDq', null, null, null, null, 'oRYLJCmZW3', '2018-05-08 21:17:12', '2018-05-08 21:17:12', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/NDnzMutoxX.png?imageView2/1/w/200/h/200', 'Quas fuga et error sit perspiciatis id beatae.', '0', null, null);
INSERT INTO `users` VALUES ('26', 'Gail Mitchell DDS', null, 'jocelyn.gislason@example.com', '$2y$10$lbBSBjOoWxciJV.CFikkEOEKQsWhSjqA6Tr603GyZ3psL3EvTJ0sy', null, null, null, null, 'ou5fI7adhL', '2018-05-08 21:17:12', '2018-05-08 21:17:12', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/Lhd1SHqu86.png?imageView2/1/w/200/h/200', 'Eaque veritatis dignissimos non et deserunt.', '0', null, null);
INSERT INTO `users` VALUES ('27', 'Maia Boyle', null, 'hallie.dietrich@example.com', '$2y$10$FF72BM.uC8DG4B3mWriw/eX537vihmkVzgWGUZWRQnrwi7Qwfwsa6', null, null, null, null, 'lUtNLg8wvf', '2018-05-08 21:17:12', '2018-05-08 21:17:12', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/s5ehp11z6s.png?imageView2/1/w/200/h/200', 'Tenetur ut dolor maiores tenetur a qui.', '0', null, null);
INSERT INTO `users` VALUES ('28', 'Ardella Denesik Sr.', null, 'cnitzsche@example.org', '$2y$10$7l1urahvV5t0f8j9D9incen1MqTfAx6T37AjQ31o6PqJoNjCU52J6', null, null, null, null, 'ewKtDupKkH', '2018-05-08 21:17:12', '2018-05-08 21:17:12', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/ZqM7iaP4CR.png?imageView2/1/w/200/h/200', 'Quia in itaque et ea quasi modi.', '0', null, null);
INSERT INTO `users` VALUES ('29', 'Keagan Quitzon', null, 'granville60@example.net', '$2y$10$/V9XyZ358HcJJSBGRhZv4./JP6ThVIIB3c2RBLPEevWgJnuR80Adq', null, null, null, null, 'nQCmBBq3aN', '2018-05-08 21:17:13', '2018-05-08 21:17:13', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/xAuDMxteQy.png?imageView2/1/w/200/h/200', 'Dolores non ullam autem autem ut aut.', '0', null, null);
INSERT INTO `users` VALUES ('30', 'Anjali Hettinger', null, 'swolff@example.org', '$2y$10$OUX3jEd0NgDvMAqOOhoZQe1mWs1TK4k1Pizj6JhT0pnT5yVRDu5o6', null, null, null, null, 'y8swzk20h8', '2018-05-08 21:17:13', '2018-05-08 21:17:13', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/xAuDMxteQy.png?imageView2/1/w/200/h/200', 'Odio porro quis culpa voluptas.', '0', null, null);
INSERT INTO `users` VALUES ('31', 'Mr. Dorcas Williamson I', null, 'christiana76@example.org', '$2y$10$XWNGt51mhGvsCYHYDcTX8uLoymHPrR81htUKPxQISqNkpK7rT2c46', null, null, null, null, 'byb2s1AdeY', '2018-05-08 21:17:13', '2018-05-08 21:17:13', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/s5ehp11z6s.png?imageView2/1/w/200/h/200', 'Quos esse maiores debitis voluptatibus eum eos.', '0', null, null);
INSERT INTO `users` VALUES ('32', 'Melba Jacobson', null, 'rico.toy@example.net', '$2y$10$OHrtwLzhvGCfabnQFnFU6u6D7TA.FMHmW9GWZnfqcl1Xo2Gttp0vq', null, null, null, null, 'vSxOeDyDdH', '2018-05-08 21:18:47', '2018-05-08 21:18:47', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/s5ehp11z6s.png?imageView2/1/w/200/h/200', 'Tempore sint ut reiciendis sunt sint et illum.', '0', null, null);
INSERT INTO `users` VALUES ('33', 'Miss Shemar Harber DVM', null, 'brakus.darrin@example.com', '$2y$10$8fhWgtBv8Remm8lGwNzH9e/aIk1L5xLC3DRFzqgYsk521bbkP60jW', null, null, null, null, 'Y5M7Pcqb3s', '2018-05-08 21:18:47', '2018-05-08 21:18:47', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/s5ehp11z6s.png?imageView2/1/w/200/h/200', 'Molestiae minus et quae labore accusamus consequuntur.', '0', null, null);
INSERT INTO `users` VALUES ('34', 'Prof. Jack Wolff', null, 'camylle46@example.com', '$2y$10$EBMlCMegt33Awjoc.yYOmesuZnuii9m9RXgW2F.A5WkYhKuFgX6XW', null, null, null, null, 'ujfGcEXK6v', '2018-05-08 21:18:47', '2018-05-08 21:18:47', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/NDnzMutoxX.png?imageView2/1/w/200/h/200', 'Impedit officia hic et vel hic qui voluptatem.', '0', null, null);
INSERT INTO `users` VALUES ('35', 'Celine Mertz', null, 'gkuhlman@example.com', '$2y$10$piuCD4elXKsQ64fSH1emR.mE7xixqpYAhgWESvYIr0SadKK3YYHwi', null, null, null, null, 'ofCJWaEVaZ', '2018-05-08 21:18:47', '2018-05-08 21:18:47', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/s5ehp11z6s.png?imageView2/1/w/200/h/200', 'Qui sit consequatur eius ut atque.', '0', null, null);
INSERT INTO `users` VALUES ('36', 'Jimmy Schumm', null, 'vergie.bahringer@example.org', '$2y$10$YaPRDBbQbCBMJSQJ7ca95.VrCjLYA8u0TmeAEch6oinHDx3s1U7sK', null, null, null, null, '2rzCrLg6Wm', '2018-05-08 21:18:47', '2018-05-08 21:18:47', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/s5ehp11z6s.png?imageView2/1/w/200/h/200', 'Illo recusandae omnis sunt vitae ipsam harum expedita.', '0', null, null);
INSERT INTO `users` VALUES ('37', 'Antonina Klein', null, 'bechtelar.myrtie@example.net', '$2y$10$h9eE.iGaQnxNscqq3PU.uemKLgYqhKxQs1jAlsjJ0ayjssv4Fmx12', null, null, null, null, 'sSgtrOZhzl', '2018-05-08 21:18:47', '2018-05-08 21:18:47', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/NDnzMutoxX.png?imageView2/1/w/200/h/200', 'Maiores ex debitis corporis voluptatem illum.', '0', null, null);
INSERT INTO `users` VALUES ('38', 'Dr. Audrey Dach', null, 'dave.jerde@example.org', '$2y$10$4UMQ9fbRcG5O6PJ.tLLbs.1vypnu60uSGHIhQNjWUhcYQVnoMVbvi', null, null, null, null, 'Ps2oSyo4eh', '2018-05-08 21:18:48', '2018-05-08 21:18:48', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/xAuDMxteQy.png?imageView2/1/w/200/h/200', 'Fuga temporibus quidem eligendi consequatur.', '0', null, null);
INSERT INTO `users` VALUES ('39', 'Dr. Daisy Mitchell', null, 'kozey.providenci@example.com', '$2y$10$CIwqGcX6eeDWOjSILj27zOcPZdRCy3/xZ1MfQtKCquReGGnPjDf6K', null, null, null, null, '1JIddzhLgu', '2018-05-08 21:18:48', '2018-05-08 21:18:48', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/LOnMrqbHJn.png?imageView2/1/w/200/h/200', 'Corrupti ut est reprehenderit.', '0', null, null);
INSERT INTO `users` VALUES ('40', 'Verna Hills I', null, 'evan67@example.org', '$2y$10$tVclrpS8K3SqDQ.26y1dzO6LBk.k1XgaDOwPUGczxBj34uHeQbJHm', null, null, null, null, 'ONTCBqP1nm', '2018-05-08 21:18:48', '2018-05-08 21:18:48', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/s5ehp11z6s.png?imageView2/1/w/200/h/200', 'Facilis molestias sed sed est laboriosam et.', '0', null, null);
INSERT INTO `users` VALUES ('41', 'Dr. Gilbert Windler III', null, 'leffler.gus@example.com', '$2y$10$oc6s27D/dMmU0jeLkXaIuuZquZhj23s9kiRNFwrCVAoMFUwTRVKke', null, null, null, null, '64TgLQSFjD', '2018-05-08 21:18:48', '2018-05-08 21:18:48', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/Lhd1SHqu86.png?imageView2/1/w/200/h/200', 'Laborum aperiam sequi totam veniam voluptatem eaque.', '0', null, null);
INSERT INTO `users` VALUES ('42', 'Prof. Elfrieda Powlowski PhD', null, 'amira.thompson@example.org', '$2y$10$sjj7N4xFiaNMey8f1a29e.Xjet5P1cXgnpTSx7mtP7pFi7foiy1tS', null, null, null, null, 'qz5bXExQq7', '2018-05-08 21:26:56', '2018-05-08 21:26:56', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/ZqM7iaP4CR.png?imageView2/1/w/200/h/200', 'Ab dolorem sit autem repudiandae.', '0', null, null);
INSERT INTO `users` VALUES ('43', 'Antone Bauch', null, 'kavon.erdman@example.org', '$2y$10$bSwVQsr3NPr/bbjdM43oN.XfBSkY7ceN5BweZ8QHtRAaWWNAz6D5a', null, null, null, null, '5PGK3hoIr7', '2018-05-08 21:26:56', '2018-05-08 21:26:56', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/NDnzMutoxX.png?imageView2/1/w/200/h/200', 'Consequatur qui et id nobis debitis magnam doloribus.', '0', null, null);
INSERT INTO `users` VALUES ('44', 'Darryl Grady', null, 'ljerde@example.org', '$2y$10$EpXKk1FFPuEHsNJxj9UFNeqQe2jAQdsdsccti9X.Qno23UnQ1ojXW', null, null, null, null, 'T70D6ZGyxQ', '2018-05-08 21:26:56', '2018-05-08 21:26:56', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/ZqM7iaP4CR.png?imageView2/1/w/200/h/200', 'Iure sit architecto omnis at in.', '0', null, null);
INSERT INTO `users` VALUES ('45', 'Zetta Hayes PhD', null, 'hilll.myrtle@example.com', '$2y$10$.5HnQmzDEBiCTZ6HuPyKteFWsdhLrybxDoHfsQGzEOTnOqXH/ipWe', null, null, null, null, 'hDVJH816zK', '2018-05-08 21:26:56', '2018-05-08 21:26:56', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/s5ehp11z6s.png?imageView2/1/w/200/h/200', 'Expedita nulla omnis dolore aut.', '0', null, null);
INSERT INTO `users` VALUES ('46', 'Robb Nolan', null, 'berge.annabell@example.net', '$2y$10$qiO9W2pCRnJNSw9Ia6Oy2.geFfwZTuTGqJog3IiEAWHcU43.C5YTu', null, null, null, null, 'hrQn8oqF7K', '2018-05-08 21:26:56', '2018-05-08 21:26:56', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/ZqM7iaP4CR.png?imageView2/1/w/200/h/200', 'Harum explicabo tenetur et.', '0', null, null);
INSERT INTO `users` VALUES ('47', 'Ashly Hodkiewicz', null, 'npfannerstill@example.net', '$2y$10$uCUDUaQmHnUdD2CEXBuhR.AMpg8LVLxEXBmUhG/vRuOVA1o7bthrK', null, null, null, null, 'rL20dg6X2h', '2018-05-08 21:26:56', '2018-05-08 21:26:56', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/ZqM7iaP4CR.png?imageView2/1/w/200/h/200', 'Architecto aliquid non debitis itaque maxime corporis eum.', '0', null, null);
INSERT INTO `users` VALUES ('48', 'Precious Kerluke', null, 'bcollins@example.net', '$2y$10$6oozriz7CXwsgjoFAdMzXeRyzmJ9QR/76f3RL27f1irYm/BmzS8VO', null, null, null, null, 'I0QbktoB2V', '2018-05-08 21:26:56', '2018-05-08 21:26:56', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/LOnMrqbHJn.png?imageView2/1/w/200/h/200', 'Reiciendis suscipit laborum similique facere est fuga.', '0', null, null);
INSERT INTO `users` VALUES ('49', 'Raven Morar', null, 'murray.jennie@example.org', '$2y$10$.ceGhawQ.tnNMd42KFv8kOrBiHRbBGbx8PBlbd2lWMDnjOXYSU9IG', null, null, null, null, 'LxeANftuAb', '2018-05-08 21:26:56', '2018-05-08 21:26:56', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/LOnMrqbHJn.png?imageView2/1/w/200/h/200', 'Voluptatum sequi ipsum unde nihil.', '0', null, null);
INSERT INTO `users` VALUES ('50', 'Keyon Rempel', null, 'otha89@example.net', '$2y$10$YAWAXoDg3l2YjMgynroEpOnlZOCKHaqvHWHZMvluyOTHoV75lwOl2', null, null, null, null, '8PQjTdIrBG', '2018-05-08 21:26:56', '2018-05-08 21:26:56', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/LOnMrqbHJn.png?imageView2/1/w/200/h/200', 'Explicabo quasi qui voluptates voluptatem.', '0', null, null);
INSERT INTO `users` VALUES ('51', 'Nikolas Mohr', null, 'jgislason@example.com', '$2y$10$63WMYEN75SXv5ai1vco2kug4kgsZEFG0tQVeuCktwguVHJAfU.k46', null, null, null, null, 'LDu4QGISbo', '2018-05-08 21:26:57', '2018-05-08 21:26:57', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/ZqM7iaP4CR.png?imageView2/1/w/200/h/200', 'Eos consequatur voluptatibus quis nulla dolor velit officiis.', '0', null, null);
INSERT INTO `users` VALUES ('52', 'Petra Eichmann', null, 'jailyn82@example.org', '$2y$10$OGA55mxmBr4Xefha1o2/bOP9kYWDqv5J85iVyvvJRLwXRAI.7zdJO', null, null, null, null, 'Oegic4bGz2', '2018-05-08 21:29:28', '2018-05-08 21:29:28', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/LOnMrqbHJn.png?imageView2/1/w/200/h/200', 'Unde earum et non quo eveniet deserunt.', '0', null, null);
INSERT INTO `users` VALUES ('53', 'Aracely Wunsch', null, 'shane93@example.org', '$2y$10$g6jaKVwuKnP7hEsMRwqSHuqpVn8bqDjSrJuT3vhVpyQ2cMtBRsvFm', null, null, null, null, 'ZLDHvIfGPR', '2018-05-08 21:29:29', '2018-05-08 21:29:29', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/Lhd1SHqu86.png?imageView2/1/w/200/h/200', 'Sed explicabo qui et fugit.', '0', null, null);
INSERT INTO `users` VALUES ('54', 'Cortney Kertzmann', null, 'maeve96@example.net', '$2y$10$OuO8.Cdzf9zBMGsMmUIw4esb4IOAtGcoXsU6vbpyA34LVb7tgD0gy', null, null, null, null, 'ue6qzQnVfZ', '2018-05-08 21:29:29', '2018-05-08 21:29:29', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/NDnzMutoxX.png?imageView2/1/w/200/h/200', 'Officia qui voluptate nihil magnam ad incidunt pariatur.', '0', null, null);
INSERT INTO `users` VALUES ('55', 'Selena Stoltenberg', null, 'lue.homenick@example.net', '$2y$10$1gg9JVdEsbWiO.06O/HVWutkNXH7ZaCrgqISSCQaX3fBKv62gWYdm', null, null, null, null, 'XWPgEMz1J7', '2018-05-08 21:29:29', '2018-05-08 21:29:29', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/Lhd1SHqu86.png?imageView2/1/w/200/h/200', 'Quisquam deleniti excepturi aut labore illum.', '0', null, null);
INSERT INTO `users` VALUES ('56', 'Mrs. Reta Waters', null, 'xstamm@example.org', '$2y$10$RmgSVAlM4z8SRIq2pb75ju5ZWmVVy.Wmq1RjLHB5vlS3a5fkG9tBK', null, null, null, null, 'M2YgmX5Edy', '2018-05-08 21:29:29', '2018-05-08 21:29:29', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/s5ehp11z6s.png?imageView2/1/w/200/h/200', 'Tenetur molestias nam totam sint.', '0', null, null);
INSERT INTO `users` VALUES ('57', 'Prof. Bertram Purdy DDS', null, 'chodkiewicz@example.org', '$2y$10$MAepyPIrb4i2zS0Bw1y9jOL0XfbJdCv0Q49y09F8Fz7pQ5Eb4d97y', null, null, null, null, 'fFJnwVFsH4', '2018-05-08 21:29:29', '2018-05-08 21:29:29', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/NDnzMutoxX.png?imageView2/1/w/200/h/200', 'Facere id consequatur nisi eaque voluptates.', '0', null, null);
INSERT INTO `users` VALUES ('58', 'Prof. Lloyd Little', null, 'noah21@example.org', '$2y$10$wSffP6Cw9jsNzIt6rYHl0O7cPrVaicnyhcti0q1eFsDTGNO5FV/rG', null, null, null, null, 'Ri9d3fn9AK', '2018-05-08 21:29:29', '2018-05-08 21:29:29', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/Lhd1SHqu86.png?imageView2/1/w/200/h/200', 'Animi velit iure iure quod sit vitae.', '0', null, null);
INSERT INTO `users` VALUES ('59', 'Jeffry Heathcote', null, 'lee.okeefe@example.com', '$2y$10$QDWnKeE8lcAvi7X/x9Bq8u6XfEeCt16pp8rM6cI.y62xQ7kwC3wIq', null, null, null, null, 'YQU71zkdcZ', '2018-05-08 21:29:29', '2018-05-08 21:29:29', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/NDnzMutoxX.png?imageView2/1/w/200/h/200', 'Qui iure qui officiis ex ipsum accusantium consequatur.', '0', null, null);
INSERT INTO `users` VALUES ('60', 'Rosalee Monahan', null, 'bgreen@example.net', '$2y$10$61YPThVZN9WlE6/KElDmdezV4NLg/3wSjXEuZxlgbddaYT4Y0OOce', null, null, null, null, 'sRMQRjo2x9', '2018-05-08 21:29:29', '2018-05-08 21:29:29', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/LOnMrqbHJn.png?imageView2/1/w/200/h/200', 'Molestiae assumenda rerum rerum.', '0', null, null);
INSERT INTO `users` VALUES ('61', 'Mr. Americo Satterfield DVM', null, 'vallie31@example.org', '$2y$10$4jUqQVGmUO76ArifyxFjV.qyihYpBY7oMc0e.McJGtxOCHP.XZWDq', null, null, null, null, '9B3SD80NRt', '2018-05-08 21:29:29', '2018-05-08 21:29:29', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/ZqM7iaP4CR.png?imageView2/1/w/200/h/200', 'Nobis dolor et incidunt vel odio veritatis.', '0', null, null);
INSERT INTO `users` VALUES ('62', 'Alfonso Willms', null, 'bins.schuyler@example.org', '$2y$10$YPzbiy1B6xZn2eXPvLydfuFQQTXqwLIEVQOc9.KoHumCKRBWbINwy', null, null, null, null, '1YkMCEpdMN', '2018-05-08 21:40:23', '2018-05-08 21:40:23', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/s5ehp11z6s.png?imageView2/1/w/200/h/200', 'Sequi beatae atque est voluptatem.', '0', null, null);
INSERT INTO `users` VALUES ('63', 'Ms. Noemi Bradtke', null, 'nkautzer@example.com', '$2y$10$aJp8XkdDWkQP1vzfK7/6YOU7MUcjaXrdpXfHWCqehI5X0BGLd61kS', null, null, null, null, 'I4D6wc9Ep1', '2018-05-08 21:40:23', '2018-05-08 21:40:23', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/LOnMrqbHJn.png?imageView2/1/w/200/h/200', 'Tempora est esse autem veritatis eveniet distinctio.', '0', null, null);
INSERT INTO `users` VALUES ('64', 'Johnathon Johnson', null, 'breichert@example.org', '$2y$10$JpYB9uw4CshoOBwmwhaoW.luc69vvStL796TLfX5/y9xsuyMuTSi2', null, null, null, null, 'k1FyevlYMi', '2018-05-08 21:40:23', '2018-05-08 21:40:23', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/LOnMrqbHJn.png?imageView2/1/w/200/h/200', 'Dolores natus corporis autem ducimus.', '0', null, null);
INSERT INTO `users` VALUES ('66', 'Ms. Ava Tillman III', null, 'everardo.murray@example.net', '$2y$10$D.Gf2m38KA.Iziu/YCB1DOMxFun/XMNjGJWD2xGRvCXBFBVzF/eRS', null, null, null, null, '3FHBSwqPva', '2018-05-08 21:40:23', '2018-05-08 21:40:23', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/s5ehp11z6s.png?imageView2/1/w/200/h/200', 'Voluptate quaerat reprehenderit ipsam aut saepe dolorem alias et.', '0', null, null);
INSERT INTO `users` VALUES ('67', 'Nathen Durgan', null, 'pmohr@example.com', '$2y$10$7lieSN/KI1wG50aUZwt//uHezxbC1IoOaEdg3Hy6Lh.WGfqi7Ffx.', null, null, null, null, 'Pe9ZV5ZtNV', '2018-05-08 21:40:23', '2018-05-08 21:40:23', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/ZqM7iaP4CR.png?imageView2/1/w/200/h/200', 'Laboriosam dolores inventore magnam est.', '0', null, null);
INSERT INTO `users` VALUES ('68', 'Isabelle Kuhic', null, 'jhamill@example.org', '$2y$10$AQycCd8Y9JPOhbpjaVyvTefO1.pTN5Rh5haYNmhdVeIvhCFXWUV0G', null, null, null, null, 'kLjveQPm0D', '2018-05-08 21:40:23', '2018-05-08 21:40:23', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/LOnMrqbHJn.png?imageView2/1/w/200/h/200', 'Est cum quis sint in sit accusamus inventore.', '0', null, null);
INSERT INTO `users` VALUES ('69', 'Ms. Elouise Macejkovic II', null, 'jovany02@example.com', '$2y$10$IqSZLrkrxCamqqVWaCedMuqGnnuaxvftYtES5ERfOpngqcxQ51642', null, null, null, null, 'BEP3hEdL0H', '2018-05-08 21:40:23', '2018-05-09 17:47:45', 'http://larabbs.test/uploads/images/avatars/ADZDzZZbkcRFO1YxkPDYrqiZAwv9C8oF.jpg', 'Voluptates neque cum doloribus neque quia consectetur.', '0', null, null);
INSERT INTO `users` VALUES ('70', 'Garnett Ryan', null, 'blanda.anissa@example.net', '$2y$10$F/IN8cui.S0ZeQlbSpMt6.LKKYFE.LVbSTzbH6VN9SCcZ0MxyS82a', null, null, null, null, 'robIVF8Ll9', '2018-05-08 21:40:23', '2018-05-08 21:40:23', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/NDnzMutoxX.png?imageView2/1/w/200/h/200', 'Molestiae nulla voluptatibus inventore.', '0', null, null);
INSERT INTO `users` VALUES ('71', 'Abbigail Zboncak', null, 'schmeler.sharon@example.com', '$2y$10$BfrM2CTOKAjVVpNAwS2.P.dOFrBN4z7RXs9RWkd4up5ocyMauQR4y', null, null, null, null, 'ITGG4SawiW', '2018-05-08 21:40:24', '2018-05-08 21:40:24', 'https://fsdhubcdn.phphub.org/uploads/images/201710/14/1/ZqM7iaP4CR.png?imageView2/1/w/200/h/200', 'In repellendus consequatur quibusdam et.', '0', null, null);
INSERT INTO `users` VALUES ('72', '123', null, '2912078823@qq.com', '$2y$10$A1OJc.i9m3rL/W7PsOKwUeTXl5vSbVbT2chwBIr9YPiQD4VDBlgXK', null, '', '', null, null, '2018-05-10 21:19:47', '2018-05-22 17:50:03', 'https://fsdhubcdn.phphub.org/uploads/images/201710/30/1/TrJS40Ey5k.png', null, '0', null, null);
INSERT INTO `users` VALUES ('73', '赖皮小鳄鱼?', null, null, null, 'okK5hwK8SK7LTmaHOw450FC3eTi8', null, null, null, null, '2018-05-11 16:18:34', '2018-05-11 16:18:34', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83ep20npJuzTPicuza3VqD5h2H1AkDzmT3FZfbibQS8PZ9bP1fYRlUg1XJD7CS9fhmYGia84JV1Inr8UXg/132', null, '0', null, null);
INSERT INTO `users` VALUES ('74', 'crocodile', '18232189707', '12345@qq.com', '$2y$10$3/V1lLFvEMsEaFCGpitTaOoIXtlI2t1zHZOAQD3e5FZ9LV0lKIAsm', null, 'oJG0R0Ut88Tg4fb43VJnka5C_i2k', '6u5xdJ8B/cBX3yLYDdkUFg==', null, null, '2018-05-22 21:22:14', '2018-05-22 22:53:22', 'http://larabbs.test/uploads/images/avatars/201805/22/74_1526979197_aJIPMNYqWw.jpg', '赖皮小鳄鱼', '0', null, null);
