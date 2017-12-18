/*
Navicat MySQL Data Transfer

Source Server         : server666
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : j2ee

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-12-18 16:20:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car_order
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
  PRIMARY KEY (`car_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_order
-- ----------------------------
INSERT INTO `car_order` VALUES ('1', '1', '8', '', '0', '2017-12-18 16:08:18.000000', '500', '宝马', '租到就是赚到啦～，宝马汽车跳楼接价出租咯～');
INSERT INTO `car_order` VALUES ('2', '2', '7', null, '0', '2017-12-18 16:17:01.000000', '2000', '宾利', null);

-- ----------------------------
-- Table structure for massage
-- ----------------------------
DROP TABLE IF EXISTS `massage`;
CREATE TABLE `massage` (
  `massage_id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_name` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `date` datetime(6) NOT NULL,
  PRIMARY KEY (`massage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of massage
-- ----------------------------

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `date` datetime(6) NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '厉害了，这份成绩单真亮眼', '过去五年，中国经济再上新台阶，年均经济增速超过7%，对世界经济增长平均贡献率超过30%；中国经济已由高速增长阶段转向高质量发展阶段。戳图↓↓看中国经济新时代，取得了哪些发展成就', '2017-12-18 00:00:00.000000', 'http://news.ifeng.com/a/20171218/54264684_0.shtml?_zbs_uc_news');
INSERT INTO `news` VALUES ('2', '中国仅用两年时间破解此国外封锁技术 震惊欧美同行', '社会社会', '2017-12-18 16:06:14.000000', 'http://tech.ifeng.com/a/20171218/44809071_0.shtml?_zbs_uc_news');

-- ----------------------------
-- Table structure for stop_order
-- ----------------------------
DROP TABLE IF EXISTS `stop_order`;
CREATE TABLE `stop_order` (
  `stop_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `get_name` varchar(50) NOT NULL,
  `money` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`stop_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stop_order
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `gender` int(11) DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('6', '张三', '123', null, '1');
INSERT INTO `user` VALUES ('7', '李四', '456', '18918073777', '1');
INSERT INTO `user` VALUES ('8', '韩梅梅', '1234', '18918073778', '0');
