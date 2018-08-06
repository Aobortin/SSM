/*
 Navicat Premium Data Transfer

 Source Server         : 本地测试库
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost
 Source Database       : yyq

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : utf-8

 Date: 07/04/2018 11:13:53 AM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `money` double(16,2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  `remark` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `account`
-- ----------------------------
BEGIN;
INSERT INTO `account` VALUES ('1', 'zs', '1', '1000.00', '1', '2018-07-02', '2018-07-02', null);
COMMIT;

-- ----------------------------
--  Table structure for `card`
-- ----------------------------
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(30) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `card`
-- ----------------------------
BEGIN;
INSERT INTO `card` VALUES ('1', '01', '1');
COMMIT;

-- ----------------------------
--  Table structure for `person`
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `person`
-- ----------------------------
BEGIN;
INSERT INTO `person` VALUES ('1', '乔峰', '36', '男');
COMMIT;

-- ----------------------------
--  Table structure for `t_pay_in`
-- ----------------------------
DROP TABLE IF EXISTS `t_pay_in`;
CREATE TABLE `t_pay_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `money` double(16,2) DEFAULT NULL,
  `type` varchar(30) NOT NULL,
  `create_time` date DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  `aid` int(11) NOT NULL,
  `payer` varchar(30) DEFAULT NULL,
  `remark` varchar(30) DEFAULT NULL,
  `url` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_pay_in`
-- ----------------------------
BEGIN;
INSERT INTO `t_pay_in` VALUES ('1', 'zhangsan', '100.00', '1', '2018-06-29', '2018-06-29', '1', 'lisi', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) DEFAULT NULL,
  `user_pwd` varchar(35) DEFAULT NULL,
  `sex` int(2) NOT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `marriage` int(2) NOT NULL,
  `height` int(5) NOT NULL,
  `education` int(2) NOT NULL,
  `salary` int(11) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `nick_name` varchar(30) DEFAULT NULL,
  `introduce` varchar(30) DEFAULT NULL,
  `remark1` varchar(30) DEFAULT NULL,
  `remark2` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8

-- ----------------------------
--  Records of `user`
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('1', 'zhangsan', '123456');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
