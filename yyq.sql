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

 Date: 09/06/2018 16:46:29 PM
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
--  Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` varchar(10) NOT NULL,
  `author_id` varchar(50) NOT NULL,
  `author_name` varchar(50) NOT NULL,
  `article_title` varchar(50) NOT NULL,
  `article_content` varchar(2000) DEFAULT NULL,
  `create_time` date NOT NULL,
  `embed_url` varchar(100) DEFAULT NULL,
  `remark1` varchar(10) DEFAULT NULL,
  `remark2` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `article`
-- ----------------------------
BEGIN;
INSERT INTO `article` VALUES ('0150908609', '1', '张三', '你不是傻屌', '<p> 						你不是傻屌\r\n你是傻屌\r\n你不是傻屌\r\n你是傻屌</p>', '2018-08-27', null, null, null), ('1', '1', '张三', '我不是小偷', '<p>　　“正面”，一个警官严肃的说着，同时问道“姓名”。</p>\n				<p>　　“胡大发”，镜头前，一个十八九岁的男孩子答道，同时抬起头，看着镜头。</p>\n				<p>　　“左转，年龄”，警官问。</p>\n				<p>　　“十八岁，嗯，快到十九了!”男孩子配合着转向左边。</p>\n				<p>　　“向后转，第几次了。”</p>\n				<p>　　“少管所一次，拘留两次，第一次到这里”</p>\n				<p>　　“知道自己的刑期吗？”</p>\n				<p>　　“一年！”</p>\n				<p>　　“拿着你的衣服，过去吧！”警官其实并不关心你到底是谁，你犯了什么罪！只要有人在他面前，就会重复上面的所谓的谈话！</p>', '2018-08-26', 'music/大唐境外.mp3', null, null), ('2044856615', '1', '张三', '我不是药神', '<p> 我不是药神\r\n我是药神\r\n我不是药神\r\n我是药神</p>', '2018-08-27', null, null, null), ('2708049686', '1', '张三', '你不是傻屌', '<p> 						你不是傻屌\r\n你是傻屌\r\n你不是傻屌\r\n你是傻屌</p>', '2018-08-27', null, null, null), ('3891213114', '1', '张三', '我不是药神', '<p> 我不是药神\r\n我是药神\r\n我不是药神\r\n我是药神</p>', '2018-08-27', null, null, null);
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
--  Table structure for `t_channel_client_trans_d`
-- ----------------------------
DROP TABLE IF EXISTS `t_channel_client_trans_d`;
CREATE TABLE `t_channel_client_trans_d` (
  `day` varchar(10) NOT NULL COMMENT '日期',
  `source` varchar(20) NOT NULL COMMENT '来源',
  `register_user` int(10) DEFAULT NULL COMMENT '注册用户',
  `order_user` int(10) DEFAULT NULL COMMENT '下单用户',
  `order_count` int(10) DEFAULT NULL COMMENT '下单量',
  `pay_user` int(10) DEFAULT NULL COMMENT '支付用户',
  `pay_order_count` int(10) DEFAULT NULL COMMENT '支付单量',
  `pay_amount` float(10,2) DEFAULT NULL COMMENT '支付金额',
  `ou_devide_ru` varchar(10) DEFAULT NULL COMMENT '订单人数/注册人数',
  `pu_devide_ou` varchar(10) DEFAULT NULL COMMENT '支付人数/订单人数',
  `unit_price` float(10,2) DEFAULT NULL COMMENT '客单价',
  `ARUP` float(10,2) DEFAULT NULL COMMENT 'ARUP',
  `total_expend_cost` float(10,2) DEFAULT NULL COMMENT '总支出成本',
  `ROI_only_server` float(10,2) DEFAULT NULL COMMENT 'ROI（仅服务）',
  PRIMARY KEY (`day`,`source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='【渠道转化数据】和【客户端转化数据】整合表';

-- ----------------------------
--  Records of `t_channel_client_trans_d`
-- ----------------------------
BEGIN;
INSERT INTO `t_channel_client_trans_d` VALUES ('20180601', 'qianliCredit', '29', '34', '40', '4', '6', '105.40', '117.24%', '11.76%', '26.35', '3.63', null, null), ('20180601', 'youjieEmbed', '1118', '1074', '1098', '207', '211', '4198.90', '96.06%', '19.27%', '20.28', '3.76', '3359.12', '1.25'), ('20180601', 'zxcx', '10216', '9869', '12965', '2508', '3127', '55229.30', '96.60%', '25.41%', '22.02', '5.41', '50353.11', '1.10'), ('20180724', 'qianliCredit', '24', '23', '24', '8', '9', '172.10', '95.83%', '34.78%', '21.51', '7.17', null, null), ('20180724', 'youjieEmbed', '1243', '1215', '1227', '223', '224', '4457.60', '97.75%', '18.35%', '19.99', '3.59', '3566.08', '1.25'), ('20180724', 'zxcx', '14192', '14451', '20062', '3482', '4894', '85474.31', '101.82%', '24.10%', '24.55', '6.02', null, null);
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
--  Table structure for `t_revenue_trans_d`
-- ----------------------------
DROP TABLE IF EXISTS `t_revenue_trans_d`;
CREATE TABLE `t_revenue_trans_d` (
  `day` varchar(10) NOT NULL COMMENT '日期',
  `black_rev` float(10,2) DEFAULT NULL COMMENT '黑名单收入',
  `comm_rev` float(10,2) DEFAULT NULL COMMENT '通讯录收入',
  `operat_rev` float(10,2) DEFAULT NULL COMMENT '运营商收入',
  `urgent_rev` float(10,2) DEFAULT NULL COMMENT '紧急联系人收入',
  `qianli_credit_rev` float(10,2) DEFAULT NULL COMMENT '钱粒信用收入',
  `youjie_embed_rev` float(10,2) DEFAULT NULL COMMENT '优借嵌入版',
  `xy_query_rev` float(10,2) DEFAULT NULL COMMENT '信用查询app收入',
  `zx_query_rev` float(10,2) DEFAULT NULL COMMENT '征信查询APP收入',
  `loan_market_rev` float(10,2) DEFAULT NULL COMMENT '贷超收入',
  `active_user` int(10) DEFAULT NULL COMMENT '活跃用户',
  `register_user` int(10) DEFAULT NULL COMMENT '注册用户(整体转化)',
  `order_user` int(10) DEFAULT NULL COMMENT '下单用户(整体转化)',
  `order_count` int(10) DEFAULT NULL COMMENT '下单量(整体转化)',
  `pay_user` int(10) DEFAULT NULL COMMENT '支付用户(整体转化)',
  `pay_order_count` int(10) DEFAULT NULL COMMENT '支付单量',
  `spread_cost` float(10,2) DEFAULT NULL COMMENT '推广成本',
  `spread_rev` float(10,2) DEFAULT NULL COMMENT '推广收入',
  `channel_cost` float(10,2) DEFAULT NULL COMMENT '渠道成本',
  `channel_rev` float(10,2) DEFAULT NULL COMMENT '渠道收入',
  `order_count_new` int(10) DEFAULT NULL COMMENT '下单量(新用户转化)',
  `order_user_new` int(10) DEFAULT NULL COMMENT '下单用户(新用户转化)',
  `pay_user_new` int(10) DEFAULT NULL COMMENT '支付用户(新用户转化)',
  `pay_amount` float(10,2) DEFAULT NULL COMMENT '支付金额',
  `data_cost` float(10,2) DEFAULT NULL COMMENT '数据成本',
  `total_rev` float(10,2) DEFAULT NULL COMMENT '总收入',
  `server_total_rev` float(10,2) DEFAULT NULL COMMENT '服务总收入',
  `gross_profit_on_share` float(10,2) DEFAULT NULL COMMENT '毛利润(未去分润)',
  `gross_profit` float(10,2) DEFAULT NULL COMMENT '毛利润',
  `ou_divide_au` varchar(10) DEFAULT NULL COMMENT '订单人数/活跃用户',
  `pu_divide_ou` varchar(10) DEFAULT NULL COMMENT '支付人数/订单人数',
  `unit_price` float(10,2) DEFAULT NULL COMMENT '客单价',
  `server_ARPU` float(10,2) DEFAULT NULL COMMENT '服务ARPU',
  `ARPU` float(10,2) DEFAULT NULL COMMENT 'ARPU(含贷超)',
  `spread_ROI` float(10,2) DEFAULT NULL COMMENT '推广ROI',
  `channel_ROI` float(10,2) DEFAULT NULL COMMENT '渠道ROI',
  `inner_cost` float(10,2) DEFAULT NULL COMMENT '内部成本',
  `total_cost` float(10,2) DEFAULT NULL COMMENT '总成本',
  `server_ROI` float(10,2) DEFAULT NULL COMMENT '服务ROI',
  `whole_ROI` float(10,2) DEFAULT NULL COMMENT '整体ROI',
  `ou_devide_ru` varchar(10) DEFAULT NULL COMMENT '注册人数到订单转化',
  `pu_devide_ou_new` varchar(10) DEFAULT NULL COMMENT '支付人数/订单人数',
  PRIMARY KEY (`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='【营收数据】和【转化数据】整合表';

-- ----------------------------
--  Records of `t_revenue_trans_d`
-- ----------------------------
BEGIN;
INSERT INTO `t_revenue_trans_d` VALUES ('20180601', '49419.30', '49419.30', '1523.80', '3659.20', '105.40', '4198.90', '4198.90', '54994.90', '26732.00', '19592', '9631', '10959', '14103', '2716', '3337', '45695.00', null, '4658.11', null, '11028', '8770', '2122', null, '0.00', '130753.60', '104021.60', '80400.49', null, '0.00%', '0.00%', '38.30', '5.31', '6.67', null, null, '3359.12', '53712.23', '1.94', '2.43', '100.00%', '0.00%'), ('20180724', '66973.70', '66973.70', '4163.10', '6961.71', '172.10', '4457.60', '31313.50', '53548.91', null, '28767', '14516', '15673', '21313', '3711', '5126', null, null, null, null, '17017', '12750', '2878', null, '6139.59', null, '145072.20', null, null, '0.00%', '0.00%', '39.09', '5.04', null, null, null, '3566.08', null, null, null, '100.00%', '0.00%');
COMMIT;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(10) NOT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `user_pwd` varchar(35) DEFAULT NULL,
  `gender` int(2) NOT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `marriage` int(2) NOT NULL,
  `height` int(5) NOT NULL,
  `education` int(2) NOT NULL,
  `salary` varchar(20) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nick_name` varchar(30) DEFAULT NULL,
  `introduce` varchar(30) DEFAULT NULL,
  `remark1` varchar(30) DEFAULT NULL,
  `remark2` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `user`
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('1', 'zhangsan', '123456', '1', '1991-08-18', '浙江省杭州市西湖区文一西路蒋村花园如意苑', '1', '180', '2', '10000', '13838385438', null, '张三', 'I am little shy', null, null), ('1662950583', 'wanglin', '15558105126', '1', '2018-08-17', '安徽省/宣城市/宣州区', '1', '181', '7', '12001-20000元', '17098078237', null, '汪林', null, '569862', null), ('2', 'lisi', '123456', '1', '1990-12-31', '浙江杭州', '1', '180', '3', '5000', '02759761037', null, '李四', '我叫李四						\r\n						', '569862', null), ('4', 'aobortin', 'WL3679642', '1', '1990-12-31', '浙江杭州', '1', '180', '3', '5000', '17098078237', '2533351047@qq.com', '奥伯丁', '我是奥伯丁', '569862', null), ('5', 'zhaoliu', '123456', '1', '1990-12-31', '浙江杭州', '1', '180', '3', '5000', '', null, '赵六', '						\r\n						', '', null), ('6302638634', null, '', '1', '2018-08-29', '浙江杭州', '1', '130', '7', '12001-20000元', '17098078237', null, '奥伯丁', null, '569862', null), ('8311383421', null, '123456', '1', '2018-08-08', '浙江杭州', '1', '180', '7', '12001-20000元', '17098078237', null, 'ceshi', null, '569862', null);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
