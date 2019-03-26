/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : car_retenal_sys

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2019-03-26 19:03:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car_rental_brand
-- ----------------------------
DROP TABLE IF EXISTS `car_rental_brand`;
CREATE TABLE `car_rental_brand` (
  `brand_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `brand_comment` varchar(255) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `brand_years` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user` varchar(255) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`brand_id`),
  KEY `FKj2l45temd01fqft9buxohffbq` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_rental_brand
-- ----------------------------
INSERT INTO `car_rental_brand` VALUES ('1', '好的很', '奥迪', '40', null, null, null, null, null);

-- ----------------------------
-- Table structure for car_rental_comment
-- ----------------------------
DROP TABLE IF EXISTS `car_rental_comment`;
CREATE TABLE `car_rental_comment` (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user` varchar(255) DEFAULT NULL,
  `satisfaction` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user` varchar(255) DEFAULT NULL,
  `order_vehicle_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FKmug6rbjn8j6takc49emfupuem` (`order_vehicle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_rental_comment
-- ----------------------------

-- ----------------------------
-- Table structure for car_rental_menu
-- ----------------------------
DROP TABLE IF EXISTS `car_rental_menu`;
CREATE TABLE `car_rental_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_grade` int(11) DEFAULT NULL,
  `menu_icon` varchar(255) DEFAULT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_url` varchar(255) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `is_show` bit(1) DEFAULT NULL,
  `sort_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_rental_menu
-- ----------------------------
INSERT INTO `car_rental_menu` VALUES ('1', null, 'glyphicon-cog', '品牌管理', '#', '0', '', '1');
INSERT INTO `car_rental_menu` VALUES ('2', null, 'glyphicon-user', '类型管理', '#', '0', '', '2');
INSERT INTO `car_rental_menu` VALUES ('3', null, 'glyphicon-calendar', '车辆管理', '#', '0', '', '3');
INSERT INTO `car_rental_menu` VALUES ('4', null, 'glyphicon-plane', '评价管理', '#', '0', '', '4');
INSERT INTO `car_rental_menu` VALUES ('5', null, 'glyphicon-comment', '', '#', '0', '\0', '5');
INSERT INTO `car_rental_menu` VALUES ('6', null, 'glyphicon-comment', '', '#', '0', '\0', '6');
INSERT INTO `car_rental_menu` VALUES ('7', null, 'glyphicon-comment', '', '#', '0', '\0', '7');
INSERT INTO `car_rental_menu` VALUES ('8', null, 'glyphicon-comment', '用户管理', '#', '0', '', '8');
INSERT INTO `car_rental_menu` VALUES ('9', null, 'glyphicon-cog', '系统管理', '#', '0', '', '9');
INSERT INTO `car_rental_menu` VALUES ('10', null, 'glyphicon-flag', '品牌列表', '/brandManage', '1', '', '2');
INSERT INTO `car_rental_menu` VALUES ('11', null, 'glyphicon-comment', '类型列表', '/typeManage', '2', '', '1');
INSERT INTO `car_rental_menu` VALUES ('12', null, 'glyphicon-cog', '车辆列表', '/vehicleManage', '3', '', '2');
INSERT INTO `car_rental_menu` VALUES ('13', null, 'glyphicon-comment', '添加品牌', '/brandEdit', '1', '', '1');
INSERT INTO `car_rental_menu` VALUES ('14', null, 'glyphicon-comment', '类型添加', '/typeEdit', '2', '', '3');
INSERT INTO `car_rental_menu` VALUES ('15', null, 'glyphicon-comment', '增加车辆', '/vehicleEdit', '3', '', '1');
INSERT INTO `car_rental_menu` VALUES ('16', null, 'glyphicon-comment', '评论列表', '/commentManage', '4', '', '1');
INSERT INTO `car_rental_menu` VALUES ('17', null, 'glyphicon-comment', '增加评论', '/commentEdit', '4', '', '2');
INSERT INTO `car_rental_menu` VALUES ('18', null, 'glyphicon-comment', '', '##', '5', '\0', '1');
INSERT INTO `car_rental_menu` VALUES ('19', null, 'glyphicon-comment', '', '##', '5', '\0', '2');
INSERT INTO `car_rental_menu` VALUES ('20', null, 'glyphicon-comment', '', '##', '6', '\0', '1');
INSERT INTO `car_rental_menu` VALUES ('21', null, 'glyphicon-comment', '', '##', '6', '\0', '2');
INSERT INTO `car_rental_menu` VALUES ('22', null, 'glyphicon-comment', '增加用户', '/useredit', '8', '', '1');
INSERT INTO `car_rental_menu` VALUES ('23', null, 'glyphicon-comment', '用户列表', '/usermanage', '8', '', '2');
INSERT INTO `car_rental_menu` VALUES ('24', null, 'glyphicon-comment', '菜单管理', '/testsysmenu', '9', '', '1');
INSERT INTO `car_rental_menu` VALUES ('25', null, 'glyphicon-comment', '角色管理', '/rolemanage', '9', '', '2');
INSERT INTO `car_rental_menu` VALUES ('26', null, 'glyphicon-comment', '权限管理', '##', '9', '\0', '3');
INSERT INTO `car_rental_menu` VALUES ('27', null, 'glyphicon-comment', '', '##', '7', '\0', '1');
INSERT INTO `car_rental_menu` VALUES ('28', null, 'glyphicon-comment', '', '##', '7', '\0', '2');
INSERT INTO `car_rental_menu` VALUES ('29', null, 'glyphicon-comment', '', '##', '7', '\0', '3');

-- ----------------------------
-- Table structure for car_rental_order
-- ----------------------------
DROP TABLE IF EXISTS `car_rental_order`;
CREATE TABLE `car_rental_order` (
  `vehicle_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `begin_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user` varchar(255) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `is_comment` int(11) DEFAULT NULL,
  `order_money` double DEFAULT NULL,
  `order_state` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user` varchar(255) DEFAULT NULL,
  `brand_brand_id` bigint(20) DEFAULT NULL,
  `type_type_id` bigint(20) DEFAULT NULL,
  `user_user_id` bigint(20) DEFAULT NULL,
  `vehicle_vehicle_id` bigint(20) DEFAULT NULL,
  `order_remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`),
  KEY `FKvfkkfo0021adg3ox01uvt25n` (`brand_brand_id`),
  KEY `FK7akyheos95e9vidn4w1ygnaby` (`type_type_id`),
  KEY `FKj5b6aqm30ct5w1ve4woqmuomr` (`user_user_id`),
  KEY `FKl92opfbprofvrbqi44jwwmpy4` (`vehicle_vehicle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_rental_order
-- ----------------------------

-- ----------------------------
-- Table structure for car_rental_role
-- ----------------------------
DROP TABLE IF EXISTS `car_rental_role`;
CREATE TABLE `car_rental_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  `role_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_rental_role
-- ----------------------------
INSERT INTO `car_rental_role` VALUES ('1', '超级管理员', '1');
INSERT INTO `car_rental_role` VALUES ('4', 'SuperAdmin', null);
INSERT INTO `car_rental_role` VALUES ('2', 'Clerk', null);
INSERT INTO `car_rental_role` VALUES ('3', 'Shopowner', null);

-- ----------------------------
-- Table structure for car_rental_role_power_list
-- ----------------------------
DROP TABLE IF EXISTS `car_rental_role_power_list`;
CREATE TABLE `car_rental_role_power_list` (
  `pk_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_show` bit(1) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `FK7y6bwdog5jktlque3b22qbefo` (`menu_id`),
  KEY `FKfanlsm2y3u3slfbs2s3vlk4by` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_rental_role_power_list
-- ----------------------------
INSERT INTO `car_rental_role_power_list` VALUES ('1', '', '1', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('2', '', '2', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('3', '', '3', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('4', '', '4', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('5', '', '5', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('6', '', '6', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('7', '', '7', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('8', '', '8', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('9', '', '9', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('10', '', '10', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('11', '', '11', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('12', '', '12', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('13', '', '13', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('14', '', '14', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('15', '', '15', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('16', '', '16', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('17', '', '17', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('18', '', '18', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('19', '', '19', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('20', '', '20', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('21', '', '21', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('22', '', '22', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('23', '', '23', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('24', '', '24', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('25', '', '25', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('26', '', '26', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('27', '', '27', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('28', '', '28', '1');
INSERT INTO `car_rental_role_power_list` VALUES ('29', '', '29', '1');

-- ----------------------------
-- Table structure for car_rental_type
-- ----------------------------
DROP TABLE IF EXISTS `car_rental_type`;
CREATE TABLE `car_rental_type` (
  `type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `create_user` varchar(255) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `type_remark` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_rental_type
-- ----------------------------
INSERT INTO `car_rental_type` VALUES ('1', null, null, null, null, null, null);
INSERT INTO `car_rental_type` VALUES ('2', null, null, null, null, null, null);
INSERT INTO `car_rental_type` VALUES ('3', null, null, '商务车', '实用但是丑', null, null);

-- ----------------------------
-- Table structure for car_rental_user
-- ----------------------------
DROP TABLE IF EXISTS `car_rental_user`;
CREATE TABLE `car_rental_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `birth` datetime DEFAULT NULL,
  `eamil` varchar(255) DEFAULT NULL,
  `father_id` bigint(20) DEFAULT NULL,
  `hire_time` datetime DEFAULT NULL,
  `user_idcard` varchar(255) DEFAULT NULL,
  `img_path` varchar(255) DEFAULT NULL,
  `is_lock` int(11) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `modify_user_id` bigint(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `superman` bit(1) DEFAULT NULL,
  `theme_skin` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_tel` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `FKjuly231olwim444vu8buprf14` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_rental_user
-- ----------------------------
INSERT INTO `car_rental_user` VALUES ('1', null, null, null, null, null, null, null, null, '0', '2019-03-26 17:09:37', null, '123456', null, null, null, null, null, 'admin', null, '1');

-- ----------------------------
-- Table structure for car_rental_vehicle
-- ----------------------------
DROP TABLE IF EXISTS `car_rental_vehicle`;
CREATE TABLE `car_rental_vehicle` (
  `vehicle_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `create_user` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user` varchar(255) DEFAULT NULL,
  `vehicle_name` varchar(255) DEFAULT NULL,
  `vehicle_price` double DEFAULT NULL,
  `vehicle_seat` varchar(255) DEFAULT NULL,
  `vehicle_state` int(11) DEFAULT NULL,
  `brand_brand_id` bigint(20) DEFAULT NULL,
  `type_type_id` bigint(20) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`),
  KEY `FK4yl4d1xkk4tl40o2wo33b1m8s` (`brand_brand_id`),
  KEY `FKvmkdp43034br0odcia3eal99` (`type_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_rental_vehicle
-- ----------------------------

-- ----------------------------
-- Table structure for car_retenal_status_list
-- ----------------------------
DROP TABLE IF EXISTS `car_retenal_status_list`;
CREATE TABLE `car_retenal_status_list` (
  `status_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status_color` varchar(255) DEFAULT NULL,
  `status_model` varchar(255) DEFAULT NULL,
  `status_name` varchar(255) DEFAULT NULL,
  `sort_value` int(11) DEFAULT NULL,
  `sort_precent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of car_retenal_status_list
-- ----------------------------
INSERT INTO `car_retenal_status_list` VALUES ('1', 'label-success', 'aoa_mailnumber', '有效', '0', null);
INSERT INTO `car_retenal_status_list` VALUES ('2', 'label-default', 'aoa_mailnumber', '无效', '1', null);
INSERT INTO `car_retenal_status_list` VALUES ('3', 'label-warning', 'aoa_task_list', '新任务', '0', '20%');
INSERT INTO `car_retenal_status_list` VALUES ('4', 'label-info', 'aoa_task_list', '已接收', '1', '40%');
INSERT INTO `car_retenal_status_list` VALUES ('5', 'label-primary', 'aoa_task_list', '进行中', '2', '60%');
INSERT INTO `car_retenal_status_list` VALUES ('6', 'label-danger', 'aoa_task_list', '已提交', '3', '80%');
INSERT INTO `car_retenal_status_list` VALUES ('7', 'label-success', 'aoa_task_list', '已完成', '4', '100%');
INSERT INTO `car_retenal_status_list` VALUES ('8', 'label-info', 'aoa_note_list', '一般', '0', null);
INSERT INTO `car_retenal_status_list` VALUES ('9', 'label-danger', 'aoa_note_list', '重要', '1', null);
INSERT INTO `car_retenal_status_list` VALUES ('10', 'label-info', 'aoa_attends_list', '正常', '0', null);
INSERT INTO `car_retenal_status_list` VALUES ('11', 'label-warning', 'aoa_attends_list', '迟到', '1', null);
INSERT INTO `car_retenal_status_list` VALUES ('12', 'label-danger', 'aoa_attends_list', '早退', '2', null);
INSERT INTO `car_retenal_status_list` VALUES ('13', 'label-danger', 'a', '旷工', '3', null);
INSERT INTO `car_retenal_status_list` VALUES ('14', 'label-primary', 'inform', '一般', '0', null);
INSERT INTO `car_retenal_status_list` VALUES ('15', 'label-warning', 'inform', '重要', '1', '');
INSERT INTO `car_retenal_status_list` VALUES ('16', 'label-danger', 'inform', '紧急', '2', null);
INSERT INTO `car_retenal_status_list` VALUES ('17', 'label-warning', 'aoa_plan_list', '未完成', '0', null);
INSERT INTO `car_retenal_status_list` VALUES ('18', 'label-success', 'aoa_plan_list', '已完成', '1', null);
INSERT INTO `car_retenal_status_list` VALUES ('19', 'label-info', 'aoa_plan_list', '已取消', '2', null);
INSERT INTO `car_retenal_status_list` VALUES ('20', 'label-primary', 'aoa_in_mail_list', '一般', '0', null);
INSERT INTO `car_retenal_status_list` VALUES ('21', 'label-warning', 'aoa_in_mail_list', '重要', '1', null);
INSERT INTO `car_retenal_status_list` VALUES ('22', 'label-danger', 'aoa_in_mail_list', '紧急', '2', null);
INSERT INTO `car_retenal_status_list` VALUES ('23', 'label-info', 'aoa_process_list', '未处理', '0', null);
INSERT INTO `car_retenal_status_list` VALUES ('24', 'label-primary', 'aoa_process_list', '处理中', '1', null);
INSERT INTO `car_retenal_status_list` VALUES ('25', 'label-success', 'aoa_process_list', '已批准', '2', null);
INSERT INTO `car_retenal_status_list` VALUES ('26', 'label-danger', 'aoa_process_list', '未通过', '3', null);
INSERT INTO `car_retenal_status_list` VALUES ('27', 'label-primary', 'aoa_schedule_list', '一般', '0', null);
INSERT INTO `car_retenal_status_list` VALUES ('28', 'label-warning', 'aoa_schedule_list', '重要', '1', null);
INSERT INTO `car_retenal_status_list` VALUES ('29', 'label-danger', 'aoa_schedule_list', '紧急', '2', null);
