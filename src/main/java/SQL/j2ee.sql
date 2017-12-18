/*
Navicat MySQL Data Transfer

Source Server         : first_mysql
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : j2ee

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2017-12-18 23:11:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `car_order`
-- ----------------------------
DROP TABLE IF EXISTS `car_order`;
CREATE TABLE `car_order` (
  `car_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `has_name` varchar(50) DEFAULT NULL,
  `get_name` varchar(50) DEFAULT NULL,
  `state` int(2) DEFAULT '0',
  `date` datetime(6) NOT NULL,
  `money` int(11) NOT NULL,
  `car_type` varchar(50) NOT NULL,
  `description` text,
  PRIMARY KEY (`car_order_id`),
  KEY `has_name_index` (`has_name`) USING BTREE,
  KEY `get_name_index` (`get_name`) USING BTREE,
  KEY `state_index` (`state`) USING BTREE,
  KEY `type_index` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_order
-- ----------------------------

-- ----------------------------
-- Table structure for `massage`
-- ----------------------------
DROP TABLE IF EXISTS `massage`;
CREATE TABLE `massage` (
  `massage_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_order_id` int(11) NOT NULL,
  `sender_name` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `date` datetime(6) NOT NULL,
  PRIMARY KEY (`massage_id`),
  KEY `car_order_id_index` (`car_order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of massage
-- ----------------------------

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `date` datetime(6) NOT NULL,
  `link` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for `schema_version`
-- ----------------------------
DROP TABLE IF EXISTS `schema_version`;
CREATE TABLE `schema_version` (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int(11) DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `schema_version_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schema_version
-- ----------------------------
INSERT INTO `schema_version` VALUES ('1', '1', '20171211 ddl.', 'SQL', 'V1__20171211_ddl.sql', '-1630107487', 'root', '2017-12-11 17:14:55', '1571', '1');

-- ----------------------------
-- Table structure for `stop_order`
-- ----------------------------
DROP TABLE IF EXISTS `stop_order`;
CREATE TABLE `stop_order` (
  `stop_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `get_name` varchar(50) NOT NULL,
  `money` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`stop_order_id`),
  KEY `get_order_index` (`get_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stop_order
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `isadmin` int(11) NOT NULL DEFAULT '0' COMMENT '1:管理员，0：非管理员',
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `gender` int(11) DEFAULT '1',
  PRIMARY KEY (`user_id`),
  KEY `user_name_index` (`user_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
