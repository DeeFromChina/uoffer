/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : hibernatemvc

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2017-11-15 20:19:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user
-- ----------------------------

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL,
  `pid` int(11) default NULL,
  `create_user_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_user_id` int(11) default NULL,
  `update_time` datetime default NULL,
  `remark` varchar(255) default NULL,
  `status` int(2) default NULL COMMENT '0:正常状态，1:隐藏，2:待删除',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '中国', null, '0', '2017-09-06 10:47:34', null, null, null, null);
INSERT INTO `city` VALUES ('2', '广东省', '1', '0', '2017-11-13 15:45:55', null, null, null, null);
INSERT INTO `city` VALUES ('3', '深圳市', '2', '0', '2017-11-13 15:46:12', null, null, null, null);
INSERT INTO `city` VALUES ('4', '南山区', '3', '0', '0000-00-00 00:00:00', null, null, null, null);

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(11) NOT NULL auto_increment,
  `company_name` varchar(255) default NULL COMMENT '公司名称',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------

-- ----------------------------
-- Table structure for file_table
-- ----------------------------
DROP TABLE IF EXISTS `file_table`;
CREATE TABLE `file_table` (
  `id` int(11) NOT NULL auto_increment,
  `table_name` varchar(255) default NULL,
  `table_id` int(11) default NULL,
  `file_real_name` varchar(255) default NULL,
  `file_new_name` varchar(255) default NULL,
  `file_path` varchar(500) default NULL,
  `create_time` datetime default NULL,
  `create_user_id` int(11) default NULL,
  `file_suffix` varchar(50) default NULL,
  `file_size` double default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file_table
-- ----------------------------
INSERT INTO `file_table` VALUES ('1', 'test', '12', null, null, null, null, null, null, null);
INSERT INTO `file_table` VALUES ('2', 'test', '12', null, null, null, null, null, null, null);
INSERT INTO `file_table` VALUES ('3', 't', '12', null, null, null, null, null, null, null);
INSERT INTO `file_table` VALUES ('4', 'test', '12', null, null, null, null, null, null, null);
INSERT INTO `file_table` VALUES ('5', 't1', '12', null, null, null, null, null, null, null);
INSERT INTO `file_table` VALUES ('6', 't1', '12', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for function
-- ----------------------------
DROP TABLE IF EXISTS `function`;
CREATE TABLE `function` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  `function_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of function
-- ----------------------------

-- ----------------------------
-- Table structure for function_point
-- ----------------------------
DROP TABLE IF EXISTS `function_point`;
CREATE TABLE `function_point` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of function_point
-- ----------------------------

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  `pid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('1', '计算机', null);
INSERT INTO `job` VALUES ('2', '互联网', '1');
INSERT INTO `job` VALUES ('3', '网站开发', '2');
INSERT INTO `job` VALUES ('4', 'test2', null);
INSERT INTO `job` VALUES ('5', '硬件', '1');

-- ----------------------------
-- Table structure for skill
-- ----------------------------
DROP TABLE IF EXISTS `skill`;
CREATE TABLE `skill` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of skill
-- ----------------------------
INSERT INTO `skill` VALUES ('1', 'java');
INSERT INTO `skill` VALUES ('2', 'javascript');
INSERT INTO `skill` VALUES ('3', '其他');

-- ----------------------------
-- Table structure for upload_file
-- ----------------------------
DROP TABLE IF EXISTS `upload_file`;
CREATE TABLE `upload_file` (
  `id` int(11) NOT NULL auto_increment,
  `file_name` varchar(255) default NULL,
  `real_file_name` varchar(255) default NULL,
  `path` varchar(255) default NULL,
  `table_name` varchar(255) default NULL,
  `data_id` int(11) default NULL,
  `remark` varchar(500) default NULL,
  `status` char(2) default NULL,
  `create_time` datetime default NULL,
  `create_user` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of upload_file
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `email` varchar(200) default NULL,
  `phone` int(11) default NULL,
  `password` varchar(200) default NULL,
  `user_name` varchar(200) default NULL,
  `job_id` int(11) default NULL,
  `city_id` int(11) default NULL,
  `go_job_id` int(11) default NULL COMMENT '求职职位id',
  `user_type` int(2) default NULL COMMENT '1:求职者，2:招聘者，3:审批人员',
  `user_status` int(2) default NULL COMMENT '0:停用，1:启用',
  `company_id` int(11) default NULL,
  `create_time` datetime default NULL,
  `update_time` datetime default NULL,
  `last_time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123123@cc.com', null, '123', null, null, '3', '1', '1', null, null, null, null, null);
INSERT INTO `user` VALUES ('2', '123', null, '3123', null, null, null, '1', '1', null, null, null, null, null);

-- ----------------------------
-- Table structure for user_experience
-- ----------------------------
DROP TABLE IF EXISTS `user_experience`;
CREATE TABLE `user_experience` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(2) default NULL,
  `name` varchar(255) default NULL,
  `start_time` datetime default NULL,
  `endTime` datetime default NULL,
  `job` varchar(50) default NULL,
  `job_description` varchar(500) default NULL,
  `job_belong` varchar(255) default NULL,
  `level` varchar(2) default NULL,
  `descript1` varchar(500) default NULL,
  `descript2` varchar(500) default NULL,
  `user_resume_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_experience
-- ----------------------------

-- ----------------------------
-- Table structure for user_resume
-- ----------------------------
DROP TABLE IF EXISTS `user_resume`;
CREATE TABLE `user_resume` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `name` varchar(50) default NULL,
  `sex` char(2) default NULL,
  `work_time` char(2) default NULL,
  `go_job_id1` int(11) default NULL,
  `go_job_id2` int(11) default NULL,
  `work_time1` char(2) default NULL,
  `work_time2` char(2) default NULL,
  `other_skill` varchar(255) default NULL COMMENT '其他',
  `now_residence` varchar(255) default NULL,
  `go_job_city` varchar(255) default NULL,
  `company_nature` varchar(255) default NULL,
  `company_scale` varchar(255) default NULL,
  `now_job_status` varchar(2) default NULL,
  `in_time` varchar(2) default NULL,
  `currency1` varchar(2) default NULL,
  `month_money1` double(11,2) default NULL,
  `month1` int(2) default NULL,
  `currency2` varchar(2) default NULL,
  `month_money2` double(11,2) default NULL,
  `month2` int(2) default NULL,
  `remark` varchar(500) default NULL,
  `finish1` int(1) default NULL,
  `finish2` int(1) default NULL,
  `finish3` int(1) default NULL,
  `finish4` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_resume
-- ----------------------------

-- ----------------------------
-- Table structure for user_skill
-- ----------------------------
DROP TABLE IF EXISTS `user_skill`;
CREATE TABLE `user_skill` (
  `id` int(11) NOT NULL auto_increment,
  `skill_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_skill
-- ----------------------------
