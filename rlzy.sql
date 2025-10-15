/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : rlzy

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-05-08 17:23:43
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(55) DEFAULT NULL,
  `userPw` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'a', 'aa');

-- ----------------------------
-- Table structure for `t_chuqin`
-- ----------------------------
DROP TABLE IF EXISTS `t_chuqin`;
CREATE TABLE `t_chuqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yuefen` varchar(55) DEFAULT NULL,
  `tianshu` int(11) DEFAULT NULL,
  `yuangong_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_chuqin
-- ----------------------------
INSERT INTO `t_chuqin` VALUES ('7', '2017-04', '16', '20');
INSERT INTO `t_chuqin` VALUES ('8', '2017-04', '15', '19');
INSERT INTO `t_chuqin` VALUES ('11', '2017-05', '22', '22');
INSERT INTO `t_chuqin` VALUES ('12', '2017-05', '21', '23');
INSERT INTO `t_chuqin` VALUES ('13', '2017-05', '22', '23');
INSERT INTO `t_chuqin` VALUES ('14', '2017-06', '22', '23');

-- ----------------------------
-- Table structure for `t_gongzi`
-- ----------------------------
DROP TABLE IF EXISTS `t_gongzi`;
CREATE TABLE `t_gongzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yuefen` varchar(55) DEFAULT NULL,
  `jine` int(11) DEFAULT NULL,
  `yuangong_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_gongzi
-- ----------------------------
INSERT INTO `t_gongzi` VALUES ('6', '2017-04', '2000', '20');
INSERT INTO `t_gongzi` VALUES ('7', '2017-04', '1900', '19');
INSERT INTO `t_gongzi` VALUES ('9', '2017-05', '2200', '22');
INSERT INTO `t_gongzi` VALUES ('10', '2017-05', '2100', '23');
INSERT INTO `t_gongzi` VALUES ('11', '2017-05', '2000', '20');

-- ----------------------------
-- Table structure for `t_organization`
-- ----------------------------
DROP TABLE IF EXISTS `t_organization`;
CREATE TABLE `t_organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_organization
-- ----------------------------
INSERT INTO `t_organization` VALUES ('1', '后勤部', '后勤部', '0', 'no');
INSERT INTO `t_organization` VALUES ('2', '生产部', '生产部', '0', 'no');
INSERT INTO `t_organization` VALUES ('3', '生产一部', '生产一部', '2', 'no');
INSERT INTO `t_organization` VALUES ('4', '生产二部', '生产二部', '2', 'no');
INSERT INTO `t_organization` VALUES ('5', '人事部', '人事部', '0', 'yes');
INSERT INTO `t_organization` VALUES ('6', '组织部', '组织部', '0', 'yes');
INSERT INTO `t_organization` VALUES ('7', '后勤一部', '后勤一部', '1', 'no');
INSERT INTO `t_organization` VALUES ('8', '后勤二部', '后勤二部', '1', 'no');
INSERT INTO `t_organization` VALUES ('10', '人事一部', '人事一部', '5', 'yes');
INSERT INTO `t_organization` VALUES ('11', '11', '11', '4', 'no');
INSERT INTO `t_organization` VALUES ('12', '生产三部', '生产三部', '2', 'yes');
INSERT INTO `t_organization` VALUES ('13', '22', '22', '4', 'no');
INSERT INTO `t_organization` VALUES ('14', '生产三部', '', '0', 'yes');
INSERT INTO `t_organization` VALUES ('15', '33', '', '4', 'yes');
INSERT INTO `t_organization` VALUES ('16', '生产三部', '', '0', 'yes');
INSERT INTO `t_organization` VALUES ('17', '33', '', '4', 'yes');
INSERT INTO `t_organization` VALUES ('18', '人事部', '', '0', 'no');
INSERT INTO `t_organization` VALUES ('19', '人事部', '', '0', 'yes');
INSERT INTO `t_organization` VALUES ('20', '人事部', '', '0', 'yes');
INSERT INTO `t_organization` VALUES ('21', '财务部', '', '0', 'yes');
INSERT INTO `t_organization` VALUES ('22', '财务一部', '', '21', 'no');
INSERT INTO `t_organization` VALUES ('23', '人事一部', '', '18', 'yes');
INSERT INTO `t_organization` VALUES ('24', '财务部', '', '0', 'yes');
INSERT INTO `t_organization` VALUES ('25', '财务一部', '', '24', 'yes');
INSERT INTO `t_organization` VALUES ('26', '财务部', '', '0', 'yes');
INSERT INTO `t_organization` VALUES ('27', '财务一部', '', '26', 'yes');
INSERT INTO `t_organization` VALUES ('28', 'a', '', '0', 'yes');
INSERT INTO `t_organization` VALUES ('29', 'a', '', '26', 'yes');
INSERT INTO `t_organization` VALUES ('30', '23', '', '0', 'yes');
INSERT INTO `t_organization` VALUES ('31', '23', '', '26', 'no');
INSERT INTO `t_organization` VALUES ('32', '财务部', '', '0', 'no');
INSERT INTO `t_organization` VALUES ('33', '13', '', '32', 'yes');

-- ----------------------------
-- Table structure for `t_qingjiashenqing`
-- ----------------------------
DROP TABLE IF EXISTS `t_qingjiashenqing`;
CREATE TABLE `t_qingjiashenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kaishishijian` varchar(50) DEFAULT NULL,
  `jieshushijian` varchar(50) DEFAULT NULL,
  `beizhu` varchar(5000) DEFAULT NULL,
  `yuangong_id` int(11) DEFAULT NULL,
  `shenhezhuangtai` varchar(50) DEFAULT NULL,
  `huifuxinxi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_qingjiashenqing
-- ----------------------------
INSERT INTO `t_qingjiashenqing` VALUES ('18', '2017-05-10', '2017-05-11', '看病', '22', 'c', '<p>不同意</p>');
INSERT INTO `t_qingjiashenqing` VALUES ('19', '2017-05-10', '2017-05-11', '生病', '23', 'b', '早去早回');
INSERT INTO `t_qingjiashenqing` VALUES ('22', '2017-06-14', '2017-06-15', '123', '28', 'a', '');
INSERT INTO `t_qingjiashenqing` VALUES ('23', null, null, null, null, null, ' vvcc ');

-- ----------------------------
-- Table structure for `t_yuangong`
-- ----------------------------
DROP TABLE IF EXISTS `t_yuangong`;
CREATE TABLE `t_yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) DEFAULT NULL,
  `bianhao` varchar(55) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `zhiwei` varchar(50) DEFAULT NULL,
  `shifoubumenlingdao` varchar(50) DEFAULT NULL,
  `loginname` varchar(50) DEFAULT NULL,
  `loginpw` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_yuangong
-- ----------------------------
INSERT INTO `t_yuangong` VALUES ('19', '5', '201701', '张三', '男', '33', '员工', 'fou', '201701', '000000', 'no');
INSERT INTO `t_yuangong` VALUES ('20', '3', '201702', '李四', '男', '25', '员工', 'fou', '201702', '000000', 'no');
INSERT INTO `t_yuangong` VALUES ('22', '24', '201704', '赵六', '男', '35', '经理', 'shi', '201704', '111111', 'no');
INSERT INTO `t_yuangong` VALUES ('23', '18', '201703', '王五', '男', '23', '员工', 'fou', '201703', '000000', 'no');
INSERT INTO `t_yuangong` VALUES ('25', '7', '234', '23', '男', '324', '23', 'shi', '32', '000000', 'yes');
INSERT INTO `t_yuangong` VALUES ('26', '8', '201706', '朱', '男', '34', '员工', 'fou', '201706', '000000', 'yes');
INSERT INTO `t_yuangong` VALUES ('27', '18', 'er', 'yt', '男', '32', 'rt', 'fou', '34', '000000', 'yes');
INSERT INTO `t_yuangong` VALUES ('28', '18', '201708', '王一', '男', '34', '员工', 'fou', '201708', '000000', 'no');
