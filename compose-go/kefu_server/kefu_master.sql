/*
Navicat MySQL Data Transfer

Source Server         : 华为云（swoole测试环境）
Source Server Version : 50727
Source Host           : 139.159.247.10:3306
Source Database       : kefu_master

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2021-11-05 16:16:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for god_admin
-- ----------------------------
DROP TABLE IF EXISTS `god_admin`;
CREATE TABLE `god_admin` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `mobile` varchar(20) NOT NULL COMMENT '手机号',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `realname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户真实姓名',
  `user_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户类型 1:管理员',
  `department_id` int(10) NOT NULL DEFAULT '0' COMMENT '所在部门',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '呢称',
  `intro` varchar(255) NOT NULL DEFAULT '' COMMENT '用户简介',
  `group_id` int(11) unsigned DEFAULT '0' COMMENT '所属系统用户组',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1：激活 0：冻结',
  `position` tinyint(1) NOT NULL DEFAULT '0' COMMENT '职位',
  `create_by` int(10) unsigned NOT NULL COMMENT '创建者',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_by` int(10) unsigned NOT NULL COMMENT '修改者',
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `UQ_USERNAME` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of god_admin
-- ----------------------------
INSERT INTO `god_admin` VALUES ('1', 'admin', 'fc10127c4f3adc427c2c7d88cd7ce678', '15866669999', 'admin@ddd.com', '大师', '0', '6', 'admin', '', '4', '1', '0', '1', '2016-10-24 22:58:44', '1', '2020-04-14 14:32:49');
INSERT INTO `god_admin` VALUES ('2', 'huyao', 'fc10127c4f3adc427c2c7d88cd7ce678', '13269550058', '252288762@qq.com', '胡瑶', '0', '6', 'huyao', '', '4', '1', '1', '1', '2017-02-28 15:45:34', '1', '2020-04-14 14:32:51');
INSERT INTO `god_admin` VALUES ('15', 'tinyzhe', '$2y$08$dUJJYjQxNWV1U2djZUQrU.l5AUbuT1.hltjXq3bUxvVTHFZnPtIMG', '18556746221', '18556746221@md.com', '向哲', '0', '6', 'tinyzhe', '', '4', '1', '0', '2', '2017-10-06 15:21:24', '2', '2020-02-04 11:56:35');
INSERT INTO `god_admin` VALUES ('18', 'qinrenwei', '$2y$10$CetT5qh5eTdEWQiP8Bqz..tJiB9uJLv3CExNUZlR4pkJH3tkiVMBq', '18570647397', '18570647397@163.com', '秦仁位', '0', '6', 'qinrenwei', '', '12', '1', '0', '2', '2017-11-16 08:54:43', '2', '2019-08-18 18:00:13');
INSERT INTO `god_admin` VALUES ('19', 'kf_test', '$2y$10$efd57E9c35PgksU/jGZ5OOd3BBnWbX06UYpYx3CeOX9OFk5TRnAYe', '18697802871', '1161538461@qq.com', 'test', '0', '6', 'fnzb_test', 'tinytiny', '0', '1', '0', '15', '2019-08-18 15:04:10', '0', '2020-02-05 15:41:37');
INSERT INTO `god_admin` VALUES ('20', 'zhongyifu', '$2y$08$bnhtUlA2b1FJcnpHa3cwU.ysr4ZxAOod4pwgHVusoLXHVvdA2ytwu', '13755075071', '', '', '0', '6', '', '', '4', '1', '0', '15', '2019-10-23 16:03:36', '2', '2020-02-04 11:56:35');
INSERT INTO `god_admin` VALUES ('21', 'pengpeng', '$2y$10$Mw1gxGXpoZ/yiU/5G1I8/Oan36S63WOj8P55mdw1XC9m/E5ZxJ4eW', '17621502221', '', '彭鹏', '0', '0', 'pengpeng', '', '4', '1', '0', '1', '2020-02-24 10:57:11', '1', '2020-02-24 11:36:46');

-- ----------------------------
-- Table structure for god_admin_group
-- ----------------------------
DROP TABLE IF EXISTS `god_admin_group`;
CREATE TABLE `god_admin_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) DEFAULT '' COMMENT '用户组名称',
  `create_time` timestamp NULL DEFAULT NULL,
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of god_admin_group
-- ----------------------------
INSERT INTO `god_admin_group` VALUES ('4', '权限管理者', '2018-12-14 09:17:51', '2018-12-14 15:52:20');
INSERT INTO `god_admin_group` VALUES ('8', '数据组', '2018-12-14 10:30:04', '2018-12-14 10:30:04');
INSERT INTO `god_admin_group` VALUES ('9', '产品组', '2018-12-14 10:51:47', '2018-12-14 10:51:47');
INSERT INTO `god_admin_group` VALUES ('10', '运营组', '2018-12-14 10:56:16', '2018-12-14 10:56:16');
INSERT INTO `god_admin_group` VALUES ('11', '技术组-钟毅夫', '2018-12-17 11:10:03', '2018-12-17 11:10:03');
INSERT INTO `god_admin_group` VALUES ('12', '技术组-秦仁位', '2019-01-19 08:54:11', '2019-01-19 08:54:11');

-- ----------------------------
-- Table structure for god_admin_group_module_rel
-- ----------------------------
DROP TABLE IF EXISTS `god_admin_group_module_rel`;
CREATE TABLE `god_admin_group_module_rel` (
  `group_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`group_id`,`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of god_admin_group_module_rel
-- ----------------------------
INSERT INTO `god_admin_group_module_rel` VALUES ('3', '33');
INSERT INTO `god_admin_group_module_rel` VALUES ('3', '34');
INSERT INTO `god_admin_group_module_rel` VALUES ('3', '35');
INSERT INTO `god_admin_group_module_rel` VALUES ('3', '36');
INSERT INTO `god_admin_group_module_rel` VALUES ('3', '38');
INSERT INTO `god_admin_group_module_rel` VALUES ('3', '39');
INSERT INTO `god_admin_group_module_rel` VALUES ('3', '40');
INSERT INTO `god_admin_group_module_rel` VALUES ('3', '41');
INSERT INTO `god_admin_group_module_rel` VALUES ('3', '42');
INSERT INTO `god_admin_group_module_rel` VALUES ('3', '43');
INSERT INTO `god_admin_group_module_rel` VALUES ('3', '44');
INSERT INTO `god_admin_group_module_rel` VALUES ('3', '45');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '33');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '34');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '35');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '36');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '38');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '39');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '40');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '41');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '42');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '43');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '44');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '45');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '47');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '48');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '49');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '50');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '51');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '52');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '53');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '54');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '55');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '56');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '57');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '58');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '59');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '61');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '62');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '63');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '64');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '65');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '66');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '67');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '68');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '69');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '70');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '72');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '73');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '74');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '75');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '76');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '77');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '78');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '79');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '80');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '81');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '82');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '83');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '85');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '86');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '88');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '89');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '90');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '91');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '92');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '93');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '94');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '96');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '98');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '99');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '100');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '101');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '102');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '103');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '106');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '107');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '108');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '109');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '110');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '111');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '112');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '113');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '114');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '115');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '116');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '117');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '118');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '119');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '120');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '121');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '122');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '124');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '126');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '127');
INSERT INTO `god_admin_group_module_rel` VALUES ('4', '128');
INSERT INTO `god_admin_group_module_rel` VALUES ('8', '38');
INSERT INTO `god_admin_group_module_rel` VALUES ('8', '39');
INSERT INTO `god_admin_group_module_rel` VALUES ('8', '40');
INSERT INTO `god_admin_group_module_rel` VALUES ('8', '41');
INSERT INTO `god_admin_group_module_rel` VALUES ('8', '42');
INSERT INTO `god_admin_group_module_rel` VALUES ('8', '43');
INSERT INTO `god_admin_group_module_rel` VALUES ('8', '44');
INSERT INTO `god_admin_group_module_rel` VALUES ('8', '45');
INSERT INTO `god_admin_group_module_rel` VALUES ('8', '63');
INSERT INTO `god_admin_group_module_rel` VALUES ('8', '64');
INSERT INTO `god_admin_group_module_rel` VALUES ('8', '67');
INSERT INTO `god_admin_group_module_rel` VALUES ('8', '101');
INSERT INTO `god_admin_group_module_rel` VALUES ('8', '103');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '33');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '34');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '35');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '38');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '39');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '40');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '41');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '42');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '43');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '44');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '45');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '47');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '48');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '49');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '50');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '51');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '52');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '53');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '54');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '55');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '56');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '57');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '58');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '59');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '61');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '62');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '63');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '64');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '65');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '66');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '67');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '68');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '69');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '70');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '72');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '73');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '74');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '75');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '76');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '77');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '78');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '79');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '80');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '81');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '82');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '83');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '88');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '89');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '90');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '91');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '92');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '93');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '94');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '96');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '99');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '100');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '101');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '102');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '103');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '106');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '108');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '109');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '110');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '111');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '112');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '113');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '115');
INSERT INTO `god_admin_group_module_rel` VALUES ('9', '116');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '33');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '38');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '39');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '40');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '41');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '42');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '43');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '44');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '45');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '47');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '48');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '49');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '50');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '51');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '52');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '53');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '54');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '55');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '56');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '57');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '58');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '59');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '61');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '62');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '63');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '64');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '65');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '66');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '67');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '68');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '69');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '70');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '72');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '73');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '74');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '75');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '76');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '77');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '78');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '79');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '80');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '81');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '82');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '83');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '85');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '86');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '88');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '89');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '90');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '91');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '92');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '93');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '94');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '101');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '102');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '103');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '106');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '108');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '115');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '116');
INSERT INTO `god_admin_group_module_rel` VALUES ('10', '117');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '33');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '34');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '35');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '36');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '38');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '39');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '40');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '41');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '42');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '43');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '44');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '45');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '72');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '73');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '74');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '75');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '76');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '77');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '78');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '79');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '80');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '81');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '82');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '83');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '88');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '89');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '90');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '91');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '92');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '93');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '94');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '101');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '108');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '109');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '110');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '111');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '112');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '113');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '115');
INSERT INTO `god_admin_group_module_rel` VALUES ('11', '116');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '33');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '39');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '43');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '44');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '45');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '62');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '63');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '64');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '65');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '66');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '67');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '68');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '69');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '72');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '73');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '74');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '75');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '82');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '83');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '88');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '89');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '90');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '91');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '92');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '93');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '94');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '99');
INSERT INTO `god_admin_group_module_rel` VALUES ('12', '102');

-- ----------------------------
-- Table structure for god_admin_module
-- ----------------------------
DROP TABLE IF EXISTS `god_admin_module`;
CREATE TABLE `god_admin_module` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) DEFAULT '' COMMENT '模块名称',
  `route_addr` text COMMENT '路由地址',
  `parent_id` int(11) unsigned DEFAULT '0' COMMENT '父id',
  `create_time` timestamp NULL DEFAULT NULL,
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of god_admin_module
-- ----------------------------
INSERT INTO `god_admin_module` VALUES ('32', '用户中心', null, '0', '2018-12-13 14:54:57', '2019-11-21 09:17:28');
INSERT INTO `god_admin_module` VALUES ('33', '用户列表', 'admin.user.index\nadmin.user.status\nadmin.user.edit\nadmin.user.update\nadmin.user.delete\nadmin.user.editphone', '32', '2018-12-13 15:06:33', '2018-12-13 15:06:33');
INSERT INTO `god_admin_module` VALUES ('34', '用户定制', 'admin.user.remind', '32', '2018-12-13 15:09:44', '2019-07-28 13:47:13');
INSERT INTO `god_admin_module` VALUES ('35', '系统消息发送', 'admin.sysmsg.index\nadmin.sysmsg.create\nadmin.sysmsg.edit\nadmin.sysmsg.delete\nadmin.sysmsg.update\nadmin.sysmsg.store\nadmin.sysmsg.upload', '32', '2018-12-13 15:11:28', '2018-12-13 15:11:28');
INSERT INTO `god_admin_module` VALUES ('36', '注册渠道代码', 'admin.regproxy.index\nadmin.regproxy.create\nadmin.regproxy.edit\nadmin.regproxy.update\nadmin.regproxy.save\nadmin.regproxy.delete\nadmin.regproxy.detail', '32', '2018-12-13 15:13:21', '2019-04-20 23:04:45');
INSERT INTO `god_admin_module` VALUES ('37', '数据中心', null, '0', '2018-12-13 15:13:53', '2018-12-13 15:13:53');
INSERT INTO `god_admin_module` VALUES ('38', '资讯管理', null, '37', '2018-12-13 15:14:18', '2018-12-13 15:14:18');
INSERT INTO `god_admin_module` VALUES ('39', '报考问答', null, '37', '2018-12-13 15:14:29', '2018-12-13 15:14:29');
INSERT INTO `god_admin_module` VALUES ('40', '资讯列表', 'admin.information.article.index\nadmin.information.article.report\nadmin.information.article.write\nadmin.information.article.updatestore\nadmin.information.article.ajaxarea\nadmin.information.article.delete', '38', '2018-12-13 15:16:18', '2019-11-18 14:52:14');
INSERT INTO `god_admin_module` VALUES ('41', '公告推荐（标签操作）', 'admin.information.exam.index\nadmin.information.exam.recommend\nadmin.information.exam.createrecommend\nadmin.information.exam.recommendstore\nadmin.information.exam.updaterecommend\nadmin.information.exam.searcharticle\nadmin.information.exam.delete\nadmin.information.exam.joblist\nadmin.information.exam.up\nadmin.information.exam.tagedit\nadmin.information.exam.tagstore', '38', '2018-12-13 15:16:44', '2019-01-05 09:40:15');
INSERT INTO `god_admin_module` VALUES ('42', '职位推荐', 'admin.information.job.index\nadmin.information.job.recommend\nadmin.information.job.createrecommend\nadmin.information.job.recommendstore\nadmin.information.job.updaterecommend\nadmin.information.job.searchjob\nadmin.information.job.delete', '38', '2018-12-13 15:17:17', '2018-12-14 11:31:08');
INSERT INTO `god_admin_module` VALUES ('43', '提问管理', 'admin.ask.topic.index\nadmin.ask.topic.detail\nadmin.ask.topic.status\nadmin.ask.topic.save\nadmin.ask.topic.edit\nadmin.ask.topic.create.post\nadmin.ask.topic.handle', '39', '2018-12-13 15:18:39', '2019-03-19 16:48:39');
INSERT INTO `god_admin_module` VALUES ('44', '回答管理', 'admin.ask.post.index\nadmin.ask.post.detail\nadmin.ask.post.status\nadmin.ask.post.save\nadmin.ask.post.edit', '39', '2018-12-13 15:20:01', '2018-12-13 15:20:01');
INSERT INTO `god_admin_module` VALUES ('45', '回复管理', 'admin.ask.reply.index\nadmin.ask.reply.detail\nadmin.ask.reply.status\nadmin.ask.reply.save\nadmin.ask.reply.edit', '39', '2018-12-13 15:20:57', '2018-12-13 15:20:57');
INSERT INTO `god_admin_module` VALUES ('46', '微信', null, '0', '2018-12-13 15:21:39', '2018-12-13 15:21:39');
INSERT INTO `god_admin_module` VALUES ('47', '推送报表', null, '46', '2018-12-13 15:21:51', '2018-12-13 15:21:51');
INSERT INTO `god_admin_module` VALUES ('48', '运营管理', null, '46', '2018-12-13 15:22:04', '2018-12-13 15:22:04');
INSERT INTO `god_admin_module` VALUES ('49', '订阅推送', 'admin.report.push.remind', '47', '2018-12-13 15:24:03', '2018-12-13 15:24:03');
INSERT INTO `god_admin_module` VALUES ('50', '模板运营', 'admin.report.push.mp', '47', '2018-12-13 15:28:23', '2018-12-13 15:28:23');
INSERT INTO `god_admin_module` VALUES ('51', '公众号矩阵模板', 'admin.wxmp.index\nadmin.wxmp.create\nadmin.wxmp.edit\nadmin.wxmp.update\nadmin.wxmp.save\nadmin.wxmp.delete\nadmin.wxmp.detail\nadmin.wxmp.push\nadmin.wxmp.pushstore\nadmin.wxmp.delsends', '48', '2018-12-13 15:32:32', '2018-12-13 15:32:32');
INSERT INTO `god_admin_module` VALUES ('52', '活动类模板', 'admin.activitypush.index\nadmin.activitypush.create\nadmin.activitypush.edit\nadmin.activitypush.update\nadmin.activitypush.save\nadmin.activitypush.delete\nadmin.activitypush.detail\nadmin.activitypush.push\nadmin.activitypush.pushstore\nadmin.activitypush.delsends\nadmin.activitypush.article.index\nadmin.activitypush.article.create\nadmin.activitypush.article.edit\nadmin.activitypush.article.update\nadmin.activitypush.article.save\nadmin.activitypush.article.delete', '48', '2018-12-13 15:33:56', '2018-12-19 10:53:31');
INSERT INTO `god_admin_module` VALUES ('53', '关键字回复', 'admin.wechat.reply\nadmin.wechat.reply.create\nadmin.wechat.reply.text\nadmin.wechat.reply.save\nadmin.wechat.reply.update\nadmin.wechat.reply.status\nadmin.wechat.reply.set.default\nadmin.wechat.reply.set.welcome\nadmin.wechat.reply.delete\nadmin.wechat.reply.edit\nadmin.wechat.reply.category.save\nadmin.wechat.reply.news\nadmin.wechat.reply.news.upload', '48', '2018-12-13 15:35:25', '2018-12-13 15:35:25');
INSERT INTO `god_admin_module` VALUES ('54', '二维码管理', 'admin.wechat.qrcode\nadmin.wechat.qrcode.create\nadmin.wechat.qrcode.save\nadmin.wechat.qrcode.edit\nadmin.wechat.qrcode.update', '48', '2018-12-13 15:36:29', '2018-12-13 15:36:29');
INSERT INTO `god_admin_module` VALUES ('55', '自定义菜单', 'admin.wechat.menu\nadmin.wechat.menu.publish\nadmin.wechat.menu.load\nadmin.wechat.menu.update\nadmin.wechat.menu.store\nadmin.wechat.menu.delete', '48', '2018-12-13 15:37:26', '2018-12-13 15:37:26');
INSERT INTO `god_admin_module` VALUES ('56', '消息管理', 'admin.wechat.msg\nadmin.wechat.msg.reply\nadmin.wechat.msg.reply.send\nadmin.wechat.msg.reply.list', '48', '2018-12-13 15:38:20', '2018-12-13 15:38:20');
INSERT INTO `god_admin_module` VALUES ('57', '图文管理', 'admin.wechat.news\nadmin.wechat.news.create\nadmin.wechat.news.upload\nadmin.wechat.news.save\nadmin.wechat.news.edit\nadmin.wechat.news.delete', '48', '2018-12-13 15:39:23', '2018-12-13 15:39:23');
INSERT INTO `god_admin_module` VALUES ('58', '微信素材库', 'admin.wechat.resource\nadmin.wechat.resource.sync\nadmin.wechat.resource.detail', '48', '2018-12-13 15:40:06', '2018-12-13 15:40:06');
INSERT INTO `god_admin_module` VALUES ('59', '图片库', 'admin.wechat.images\nadmin.wechat.images.upload\nadmin.wechat.images.delete', '48', '2018-12-13 15:40:50', '2018-12-13 15:40:50');
INSERT INTO `god_admin_module` VALUES ('60', 'APP', null, '0', '2018-12-13 15:42:05', '2018-12-13 15:42:05');
INSERT INTO `god_admin_module` VALUES ('61', '首页轮播图管理', 'admin.sys.adroll.index\nadmin.sys.adroll.create\nadmin.sys.adroll.store\nadmin.sys.adroll.edit\nadmin.sys.adroll.update\nadmin.sys.adroll.delete\nadmin.sys.adroll.upload', '105', '2018-12-13 15:42:25', '2019-01-24 17:17:06');
INSERT INTO `god_admin_module` VALUES ('62', '自媒体运营', null, '60', '2018-12-13 15:43:31', '2018-12-13 15:43:31');
INSERT INTO `god_admin_module` VALUES ('63', '文章管理', 'admin.media.article.index\nadmin.media.article.edit\nadmin.media.article.delete\nadmin.media.article.create\nadmin.media.article.save\nadmin.media.article.update\nadmin.media.article.upload\nadmin.media.article.searchMid\nadmin.media.article.uploadaudio\nadmin.media.article.uploadvideo\nadmin.media.article.updateCache', '62', '2018-12-13 15:44:21', '2019-02-18 19:23:29');
INSERT INTO `god_admin_module` VALUES ('64', '采集管理', 'admin.media.spider.index\nadmin.media.spider.edit\nadmin.media.spider.delete\nadmin.media.spider.create\nadmin.media.spider.save\nadmin.media.spider.update\nadmin.media.spider.upload\nadmin.media.spider.searchMid', '62', '2018-12-13 15:45:29', '2018-12-13 15:45:29');
INSERT INTO `god_admin_module` VALUES ('65', '同步雷达公号素材', 'admin.media.task.index\nadmin.media.task.gkldSpider', '62', '2018-12-13 15:47:08', '2018-12-13 15:47:08');
INSERT INTO `god_admin_module` VALUES ('66', '媒体帐号管理', 'admin.media.user.index\nadmin.media.user.edit\nadmin.media.user.delete\nadmin.media.user.create\nadmin.media.user.save\nadmin.media.user.update', '62', '2018-12-13 15:48:21', '2018-12-13 15:48:21');
INSERT INTO `god_admin_module` VALUES ('67', '评论管理', 'admin.comment.index\nadmin.comment.delete\nadmin.comment.audit\nadmin.comment.reply\nadmin.comment.replydel\nadmin.comment.auditRep\nadmin.comment.createRel\nadmin.comment.edit\nadmin.comment.auditStore\nadmin.comment.commentReply', '62', '2018-12-13 15:49:02', '2019-03-02 16:02:17');
INSERT INTO `god_admin_module` VALUES ('68', '圈子动态', 'admin.discover.index', '62', '2018-12-13 15:50:05', '2018-12-13 15:50:05');
INSERT INTO `god_admin_module` VALUES ('69', '话题管理', 'admin.talk.index\nadmin.talk.create\nadmin.talk.store\nadmin.talk.edit\nadmin.talk.update\nadmin.talk.delete\nadmin.talk.upload', '62', '2018-12-13 15:51:05', '2018-12-13 15:51:05');
INSERT INTO `god_admin_module` VALUES ('70', '推送管理', 'admin.app.index\nadmin.app.create\nadmin.app.push\nadmin.app.detail', '60', '2018-12-13 15:52:11', '2018-12-13 15:52:11');
INSERT INTO `god_admin_module` VALUES ('71', '商城', null, '0', '2018-12-13 15:52:32', '2018-12-13 15:52:32');
INSERT INTO `god_admin_module` VALUES ('72', '大咖课', null, '71', '2018-12-13 15:52:47', '2018-12-13 15:52:47');
INSERT INTO `god_admin_module` VALUES ('73', '商品管理', 'admin.shop.goods.index\nadmin.shop.goods.edit\nadmin.shop.goods.delete\nadmin.shop.goods.create\nadmin.shop.goods.save\nadmin.shop.goods.update\nadmin.shop.goods.upload\nadmin.shop.goods.fileupload', '72', '2018-12-13 15:53:49', '2018-12-13 15:53:49');
INSERT INTO `god_admin_module` VALUES ('74', '订单管理', 'admin.shop.order.index', '72', '2018-12-13 15:54:31', '2018-12-13 15:54:31');
INSERT INTO `god_admin_module` VALUES ('75', '支付记录', 'admin.shop.pay.index', '72', '2018-12-13 15:55:30', '2018-12-13 15:55:30');
INSERT INTO `god_admin_module` VALUES ('76', '资料库', null, '71', '2018-12-13 15:55:55', '2018-12-13 15:55:55');
INSERT INTO `god_admin_module` VALUES ('77', '轮播广告', 'admin.mall.banner.index\nadmin.mall.banner.create\nadmin.mall.banner.edit\nadmin.mall.banner.save\nadmin.mall.banner.upload', '105', '2018-12-13 15:57:42', '2019-01-24 17:17:33');
INSERT INTO `god_admin_module` VALUES ('78', '商品管理', 'admin.mall.goods.index\nadmin.mall.goods.create\nadmin.mall.goods.upload\nadmin.mall.goods.save\nadmin.mall.goods.edit\nadmin.mall.goods.related\nadmin.mall.goods.related.save\nadmin.mall.goods.related.cancel\nadmin.mall.goods.directory.index\nadmin.mall.goods.directory.create\nadmin.mall.goods.directory.save\nadmin.mall.goods.directory.upload\nadmin.mall.goods.directory.edit\nadmin.mall.goods.directory.sort\nadmin.mall.goods.directory.sort.save\nadmin.mall.goods.directory.delete', '76', '2018-12-13 15:58:37', '2018-12-20 17:39:56');
INSERT INTO `god_admin_module` VALUES ('79', '商品分类', 'admin.mall.category.index\nadmin.mall.category.create\nadmin.mall.category.save\nadmin.mall.category.sort\nadmin.mall.category.save.sort\nadmin.mall.category.edit\nadmin.mall.category.delete\nadmin.mall.category.update\nadmin.mall.category.upload', '76', '2018-12-13 16:00:22', '2018-12-13 16:00:22');
INSERT INTO `god_admin_module` VALUES ('80', '作者管理', 'admin.mall.author.index\nadmin.mall.author.create\nadmin.mall.author.update\nadmin.mall.author.save\nadmin.mall.author.upload\nadmin.mall.author.edit\nadmin.mall.author.delete', '76', '2018-12-13 16:01:32', '2018-12-13 16:01:32');
INSERT INTO `god_admin_module` VALUES ('81', '热门关键词', 'admin.mall.search.index\nadmin.mall.search.create\nadmin.mall.search.edit\nadmin.mall.search.delete\nadmin.mall.search.save\nadmin.mall.search.goods', '76', '2018-12-13 16:02:24', '2018-12-13 16:02:24');
INSERT INTO `god_admin_module` VALUES ('82', '订单管理', 'admin.mall.order.index\nadmin.mall.order.sync\nadmin.mall.order.log\nadmin.mall.order.detail', '76', '2018-12-13 16:09:56', '2018-12-13 16:09:56');
INSERT INTO `god_admin_module` VALUES ('83', '订单分析', 'admin.mall.order.statistics', '76', '2018-12-13 16:10:14', '2018-12-13 16:10:14');
INSERT INTO `god_admin_module` VALUES ('84', '活动&运营', null, '0', '2018-12-13 16:10:35', '2018-12-13 16:10:35');
INSERT INTO `god_admin_module` VALUES ('85', '优惠券领取记录', 'admin.activity.coupon', '84', '2018-12-13 16:11:04', '2018-12-13 16:11:04');
INSERT INTO `god_admin_module` VALUES ('86', '助力活动管理', 'admin.activity.zhuli', '84', '2018-12-13 16:11:31', '2018-12-13 16:11:31');
INSERT INTO `god_admin_module` VALUES ('87', '大数据', null, '0', '2018-12-13 16:11:55', '2018-12-13 16:11:55');
INSERT INTO `god_admin_module` VALUES ('88', '用户分析', null, '87', '2018-12-13 16:12:15', '2018-12-13 16:12:15');
INSERT INTO `god_admin_module` VALUES ('89', '月度用户数汇总', 'admin.useranalysis.analysis', '88', '2018-12-13 16:13:42', '2018-12-13 16:13:42');
INSERT INTO `god_admin_module` VALUES ('90', '注册渠道分布', 'admin.useranalysis.statistics', '88', '2018-12-13 16:14:10', '2018-12-13 16:14:10');
INSERT INTO `god_admin_module` VALUES ('91', '订阅与关注', 'admin.useranalysis.behavior.analysis', '88', '2018-12-13 16:14:46', '2018-12-13 16:14:46');
INSERT INTO `god_admin_module` VALUES ('92', '用户留存', 'admin.useranalysis.getretain', '88', '2018-12-13 16:15:22', '2018-12-13 16:15:22');
INSERT INTO `god_admin_module` VALUES ('93', '公告数统计', null, '87', '2018-12-13 16:19:19', '2019-03-29 19:40:50');
INSERT INTO `god_admin_module` VALUES ('94', '关注数统计', 'admin.report.subscribe.index', '87', '2018-12-13 16:19:40', '2018-12-13 16:19:40');
INSERT INTO `god_admin_module` VALUES ('95', '合作', null, '0', '2018-12-13 16:19:52', '2018-12-13 16:19:52');
INSERT INTO `god_admin_module` VALUES ('96', '招录单位审核', 'admin.company.index\nadmin.company.detail\nadmin.company.changeStatus', '95', '2018-12-13 16:20:51', '2018-12-13 16:20:51');
INSERT INTO `god_admin_module` VALUES ('97', '系统', null, '0', '2018-12-13 16:21:00', '2018-12-13 16:21:00');
INSERT INTO `god_admin_module` VALUES ('98', '用户组管理权限', 'admin.module.index\nadmin.module.edit\nadmin.module.save\nadmin.module.manager\nadmin.module.delete\nadmin.module.save.rel\nadmin.module.get.rel\nadmin.admingroup.index\nadmin.admingroup.edit\nadmin.admingroup.delete\nadmin.admingroup.save\nadmin.admingroup.clear', '97', '2018-12-13 16:21:52', '2018-12-14 11:32:30');
INSERT INTO `god_admin_module` VALUES ('99', '建议反馈', 'admin.information.feedback.index\nadmin.information.feedback.store\nadmin.information.feedback.edit\nadmin.information.feedback.delete', '97', '2018-12-13 16:22:38', '2018-12-13 16:22:38');
INSERT INTO `god_admin_module` VALUES ('100', '友情链接', 'admin.information.friendlink.index\nadmin.information.friendlink.create\nadmin.information.friendlink.store\nadmin.information.friendlink.edit\nadmin.information.friendlink.delete', '97', '2018-12-13 16:22:54', '2018-12-13 16:23:37');
INSERT INTO `god_admin_module` VALUES ('101', '清除缓存', 'admin.sys.cache.index\nadmin.sys.cache.clear', '97', '2018-12-13 16:24:06', '2018-12-13 16:24:06');
INSERT INTO `god_admin_module` VALUES ('102', 'APP下载统计', 'admin.setting\nadmin.setting.delete', '60', '2019-01-02 15:30:47', '2019-02-19 14:59:02');
INSERT INTO `god_admin_module` VALUES ('103', '公告标签', 'admin.information.articletag.delete\nadmin.information.articletag.index', '38', '2019-01-05 09:35:54', '2019-01-05 09:35:54');
INSERT INTO `god_admin_module` VALUES ('105', '广告管理', null, '0', '2019-01-24 17:16:14', '2019-01-24 17:16:14');
INSERT INTO `god_admin_module` VALUES ('106', '各种广告', 'admin.ad.index\nadmin.ad.edit\nadmin.ad.delete\nadmin.ad.create\nadmin.ad.upload\nadmin.ad.update\nadmin.ad.store', '105', '2019-01-24 17:18:56', '2019-01-24 17:18:56');
INSERT INTO `god_admin_module` VALUES ('107', '用户组管理', 'admin.user.group.index\nadmin.user.group.create\nadmin.user.group.update', '32', '2019-02-19 10:19:43', '2019-02-19 10:19:43');
INSERT INTO `god_admin_module` VALUES ('108', '运营数据', 'admin.report.operation.index', '87', '2019-03-01 18:52:03', '2019-03-01 18:52:03');
INSERT INTO `god_admin_module` VALUES ('109', '职位匹配满意度报表', null, '87', '2019-03-05 09:42:44', '2019-03-05 09:42:44');
INSERT INTO `god_admin_module` VALUES ('110', '满意度反馈汇总', 'admin.report.satisfy.index', '109', '2019-03-05 09:43:19', '2019-03-05 09:43:19');
INSERT INTO `god_admin_module` VALUES ('111', '满意度列表', 'admin.report.satisfy.list', '109', '2019-03-05 09:43:47', '2019-03-05 09:43:47');
INSERT INTO `god_admin_module` VALUES ('112', '满意度排查', 'admin.report.satisfy.detail', '109', '2019-03-05 09:44:21', '2019-03-05 09:44:21');
INSERT INTO `god_admin_module` VALUES ('113', '保存满意度排查原因', 'admin.report.satisfy.saveReason', '109', '2019-03-05 09:44:56', '2019-03-05 09:44:56');
INSERT INTO `god_admin_module` VALUES ('114', 'APP分享统计', 'admin.app.share.stats.index', '87', '2019-03-29 14:19:02', '2019-03-29 14:19:02');
INSERT INTO `god_admin_module` VALUES ('115', '公告数统计', 'admin.report.exam.index', '93', '2019-03-29 19:41:18', '2019-03-29 19:41:18');
INSERT INTO `god_admin_module` VALUES ('116', '公告统计报表导出', 'admin.report.exam.export', '93', '2019-03-29 19:42:39', '2019-03-29 19:43:36');
INSERT INTO `god_admin_module` VALUES ('117', '报名数据管理', 'admin.signup.index\nadmin.signup.edit\nadmin.signup.delete\nadmin.signup.create\nadmin.signup.update\nadmin.signup.store\nadmin.signup.ajaxarea', '87', '2019-04-02 11:43:53', '2019-04-02 11:43:53');
INSERT INTO `god_admin_module` VALUES ('118', '用户简历分析', 'admin.user.analysis.resume\nadmin.user.analysis.resume.area\nadmin.user.analysis.resume.add.task\nadmin.user.analysis.resume.result\nadmin.user.analysis.resume.restart', '88', '2019-04-13 14:32:35', '2019-04-13 14:32:35');
INSERT INTO `god_admin_module` VALUES ('119', '企业模块', 'admin.user.company', '32', '2019-07-30 20:33:59', '2019-11-21 09:16:56');
INSERT INTO `god_admin_module` VALUES ('120', '账户管理', 'admin.account.index\nadmin.account.status\nadmin.account.update\nadmin.account.add\nadmin.account.detail\nadmin.account.createUser', '32', '2019-08-18 14:46:21', '2019-08-18 14:46:21');
INSERT INTO `god_admin_module` VALUES ('121', '部门管理', 'admin.department.index\nadmin.department.save\nadmin.department.edit\nadmin.department.delete', '97', '2019-08-18 14:47:17', '2019-08-18 14:47:17');
INSERT INTO `god_admin_module` VALUES ('122', '会员权限列表', 'admin.uservip.index\nadmin.uservip.edit\nadmin.uservip.update\nadmin.uservip.delete', '32', '2019-11-21 09:18:19', '2019-11-21 16:35:50');
INSERT INTO `god_admin_module` VALUES ('123', '支付管理', null, '0', '2019-11-21 13:53:55', '2019-11-21 13:54:04');
INSERT INTO `god_admin_module` VALUES ('124', '订单列表', 'admin.viporder.index', '123', '2019-11-21 13:54:31', '2019-11-21 13:54:31');
INSERT INTO `god_admin_module` VALUES ('125', '直播管理', null, '0', '2020-02-04 11:53:10', '2020-02-04 11:53:25');
INSERT INTO `god_admin_module` VALUES ('126', '频道管理', 'admin.live.channel_index\nadmin.live.channel_create\nadmin.live.channel_edit\nadmin.live.channel_delete\nadmin.live.channel_update\nadmin.live.channel_store\nadmin.live.upload', '125', '2020-02-04 11:54:31', '2020-02-04 11:54:41');
INSERT INTO `god_admin_module` VALUES ('127', '直播计划', 'admin.live.plan_index\nadmin.live.plan_edit\nadmin.live.plan_delete\nadmin.live.plan_update\nadmin.live.plan_store\nadmin.live.plan_create', '125', '2020-02-04 11:55:19', '2020-02-04 11:55:19');
INSERT INTO `god_admin_module` VALUES ('128', '回看管理', 'admin.live.playback_edit\nadmin.live.playback_create\nadmin.live.playback_update\nadmin.live.playback_delete\nadmin.live.playback_store', '125', '2020-02-04 11:56:10', '2020-02-04 11:56:10');

-- ----------------------------
-- Table structure for god_area
-- ----------------------------
DROP TABLE IF EXISTS `god_area`;
CREATE TABLE `god_area` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT ' 分类ID',
  `category_name` varchar(50) NOT NULL COMMENT '分类名称',
  `slug` varchar(50) NOT NULL DEFAULT '' COMMENT '分类缩略名',
  `sort` mediumint(9) NOT NULL DEFAULT '999' COMMENT '分类排序',
  `len` smallint(6) NOT NULL DEFAULT '0' COMMENT '文字长度',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述',
  `parent_cid` int(10) unsigned NOT NULL COMMENT '父分类ID',
  `path` varchar(255) NOT NULL COMMENT '分类路径',
  `level` tinyint(1) NOT NULL DEFAULT '0' COMMENT '行政级别 1省2市3区县',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '地区code',
  `initials` varchar(20) DEFAULT NULL COMMENT '地区首字母',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 0：删除',
  `create_by` int(10) unsigned NOT NULL COMMENT '创建者',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_by` int(10) unsigned NOT NULL COMMENT '修改者',
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`cid`),
  KEY `INDEX_SLUG` (`slug`) USING BTREE,
  KEY `parent_id_index` (`parent_cid`) USING BTREE,
  KEY `level_index` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=3597 DEFAULT CHARSET=utf8mb4 COMMENT='地区表';

-- ----------------------------
-- Records of god_area
-- ----------------------------
INSERT INTO `god_area` VALUES ('1', '北京', '北京', '999', '6', '', '0', '/0/', '1', '110000', 'BJ', '1', '1', '2017-03-09 11:52:54', '1', '2017-05-02 15:04:02');
INSERT INTO `god_area` VALUES ('2', '北京市', '北京', '999', '6', '', '1', '/0/1/', '2', '110100', 'BJS', '1', '1', '2017-03-09 11:52:54', '1', '2017-03-09 11:52:54');
INSERT INTO `god_area` VALUES ('3', '东城区', '东城区', '999', '9', '', '2', '/0/1/2/', '3', '110101', 'DCQ', '1', '1', '2017-03-09 11:52:54', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('4', '西城区', '西城区', '999', '9', '', '2', '/0/1/2/', '3', '110102', 'XCQ', '1', '1', '2017-03-09 11:52:54', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('5', '朝阳区', '朝阳', '999', '6', '', '2', '/0/1/2/', '3', '110105', 'CYQ', '1', '1', '2017-03-09 11:52:54', '1', '2017-03-09 11:52:54');
INSERT INTO `god_area` VALUES ('6', '丰台区', '丰台', '999', '6', '', '2', '/0/1/2/', '3', '110106', 'FTQ', '1', '1', '2017-03-09 11:52:54', '1', '2017-03-09 11:52:54');
INSERT INTO `god_area` VALUES ('7', '石景山区', '石景山', '999', '9', '', '2', '/0/1/2/', '3', '110107', 'SJSQ', '1', '1', '2017-03-09 11:52:54', '1', '2017-03-09 11:52:54');
INSERT INTO `god_area` VALUES ('8', '海淀区', '海淀', '999', '6', '', '2', '/0/1/2/', '3', '110108', 'IDQ', '1', '1', '2017-03-09 11:52:54', '1', '2017-03-09 11:52:54');
INSERT INTO `god_area` VALUES ('9', '门头沟区', '门头沟', '999', '9', '', '2', '/0/1/2/', '3', '110109', 'MTGQ', '1', '1', '2017-03-09 11:52:54', '1', '2017-03-09 11:52:54');
INSERT INTO `god_area` VALUES ('10', '房山区', '房山', '999', '6', '', '2', '/0/1/2/', '3', '110111', 'FSQ', '1', '1', '2017-03-09 11:52:54', '1', '2017-03-09 11:52:54');
INSERT INTO `god_area` VALUES ('11', '通州区', '通州', '999', '6', '', '2', '/0/1/2/', '3', '110112', 'TZQ', '1', '1', '2017-03-09 11:52:54', '1', '2017-03-09 11:52:54');
INSERT INTO `god_area` VALUES ('12', '顺义区', '顺义', '999', '6', '', '2', '/0/1/2/', '3', '110113', 'SYQ', '1', '1', '2017-03-09 11:52:54', '1', '2017-03-09 11:52:54');
INSERT INTO `god_area` VALUES ('13', '昌平区', '昌平', '999', '6', '', '2', '/0/1/2/', '3', '110114', 'CPQ', '1', '1', '2017-03-09 11:52:54', '1', '2017-03-09 11:52:54');
INSERT INTO `god_area` VALUES ('14', '大兴区', '大兴', '999', '6', '', '2', '/0/1/2/', '3', '110115', 'DXQ', '1', '1', '2017-03-09 11:52:54', '1', '2017-03-09 11:52:54');
INSERT INTO `god_area` VALUES ('15', '怀柔区', '怀柔', '999', '6', '', '2', '/0/1/2/', '3', '110116', 'IRQ', '1', '1', '2017-03-09 11:52:54', '1', '2017-03-09 11:52:54');
INSERT INTO `god_area` VALUES ('16', '平谷区', '平谷', '999', '6', '', '2', '/0/1/2/', '3', '110117', 'PGQ', '1', '1', '2017-03-09 11:52:54', '1', '2017-03-09 11:52:54');
INSERT INTO `god_area` VALUES ('17', '密云区', '密云', '999', '6', '', '2', '/0/1/2/', '3', '110228', 'MYX', '1', '1', '2017-03-09 11:52:54', '16', '2018-05-17 17:27:05');
INSERT INTO `god_area` VALUES ('18', '延庆区', '延庆', '999', '6', '', '2', '/0/1/2/', '3', '110229', 'YQQ', '1', '1', '2017-03-09 11:52:55', '16', '2018-04-16 14:20:58');
INSERT INTO `god_area` VALUES ('19', '天津', '天津', '999', '6', '', '0', '/0/', '1', '120000', 'TJS', '1', '1', '2017-03-09 11:52:55', '16', '2018-09-04 14:42:27');
INSERT INTO `god_area` VALUES ('20', '天津市', '天津市', '999', '9', '', '19', '/0/19/', '2', '120100', 'TJ', '1', '1', '2017-03-09 11:52:55', '16', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('21', '和平区', '和平区', '999', '9', '', '20', '/0/19/20/', '3', '120101', 'IPQ', '1', '88', '2017-03-09 11:52:55', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('22', '河东区', '河东区', '999', '6', '', '20', '/0/19/20/', '3', '120102', 'IDQ', '1', '1', '2017-03-09 11:52:55', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('23', '河西区', '河西区', '999', '6', '', '20', '/0/19/20/', '3', '120103', 'IXQ', '1', '1', '2017-03-09 11:52:55', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('24', '南开区', '南开', '999', '6', '', '20', '/0/19/20/', '3', '120104', 'NKQ', '1', '1', '2017-03-09 11:52:55', '1', '2017-03-09 11:52:55');
INSERT INTO `god_area` VALUES ('25', '河北区', '河北区', '999', '9', '', '20', '/0/19/20/', '3', '120105', 'IBQ', '1', '1', '2017-03-09 11:52:55', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('26', '红桥区', '红桥', '999', '6', '', '20', '/0/19/20/', '3', '120106', 'IQQ', '1', '1', '2017-03-09 11:52:55', '1', '2017-03-09 11:52:55');
INSERT INTO `god_area` VALUES ('27', '东丽区', '东丽', '999', '6', '', '20', '/0/19/20/', '3', '120110', 'DLQ', '1', '1', '2017-03-09 11:52:55', '1', '2017-03-09 11:52:55');
INSERT INTO `god_area` VALUES ('28', '西青区', '西青', '999', '6', '', '20', '/0/19/20/', '3', '120111', 'XQQ', '1', '1', '2017-03-09 11:52:55', '1', '2017-03-09 11:52:55');
INSERT INTO `god_area` VALUES ('29', '津南区', '津南区', '999', '6', '', '20', '/0/19/20/', '3', '120112', 'JNQ', '1', '1', '2017-03-09 11:52:55', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('30', '北辰区', '北辰', '999', '6', '', '20', '/0/19/20/', '3', '120113', 'BCQ', '1', '1', '2017-03-09 11:52:55', '1', '2017-03-09 11:52:55');
INSERT INTO `god_area` VALUES ('31', '武清区', '武清', '999', '6', '', '20', '/0/19/20/', '3', '120114', 'WQQ', '1', '1', '2017-03-09 11:52:55', '1', '2017-03-09 11:52:55');
INSERT INTO `god_area` VALUES ('32', '宝坻区', '宝坻', '999', '6', '', '20', '/0/19/20/', '3', '120115', 'BQ', '1', '1', '2017-03-09 11:52:55', '1', '2017-03-09 11:52:55');
INSERT INTO `god_area` VALUES ('33', '滨海新区', '滨海新', '999', '9', '', '20', '/0/19/20/', '3', '120116', 'BIXQ', '1', '1', '2017-03-09 11:52:55', '1', '2017-03-09 11:52:55');
INSERT INTO `god_area` VALUES ('34', '宁河区', '宁河', '999', '6', '', '20', '/0/19/20/', '3', '120221', 'NIQ', '1', '1', '2017-03-09 11:52:55', '1', '2017-08-08 14:15:49');
INSERT INTO `god_area` VALUES ('35', '静海区', '静海', '999', '6', '', '20', '/0/19/20/', '3', '120223', 'JIQ', '1', '1', '2017-03-09 11:52:55', '1', '2017-08-08 14:16:03');
INSERT INTO `god_area` VALUES ('36', '蓟州区', '蓟州', '999', '6', '', '20', '/0/19/20/', '3', '120225', 'JZQ', '1', '1', '2017-03-09 11:52:55', '6', '2017-08-10 10:08:30');
INSERT INTO `god_area` VALUES ('37', '河北省', '河北', '999', '6', '', '0', '/0/', '1', '130000', 'IBS', '1', '1', '2017-03-09 11:52:55', '1', '2017-06-28 09:51:52');
INSERT INTO `god_area` VALUES ('38', '石家庄市', '石家庄', '999', '9', '', '37', '/0/37/', '2', '130100', 'SJZS', '1', '1', '2017-03-09 11:52:55', '1', '2017-03-09 11:52:55');
INSERT INTO `god_area` VALUES ('40', '长安区', '长安', '999', '6', '', '38', '/0/37/38/', '3', '130102', 'CAQ', '1', '1', '2017-03-09 11:52:56', '1', '2017-03-09 11:52:56');
INSERT INTO `god_area` VALUES ('41', '桥西区', '桥西区', '999', '9', '', '38', '/0/37/38/', '3', '130104', 'QXQ', '1', '1', '2017-03-09 11:52:56', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('42', '新华区', '新华区', '999', '9', '', '38', '/0/37/38/', '3', '130105', 'XIQ', '1', '1', '2017-03-09 11:52:56', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('43', '井陉矿区', '井陉矿', '999', '9', '', '38', '/0/37/38/', '3', '130107', 'JKQ', '1', '1', '2017-03-09 11:52:56', '1', '2017-03-09 11:52:56');
INSERT INTO `god_area` VALUES ('44', '裕华区', '裕华', '999', '6', '', '38', '/0/37/38/', '3', '130108', 'YIQ', '1', '1', '2017-03-09 11:52:56', '1', '2017-03-09 11:52:56');
INSERT INTO `god_area` VALUES ('45', '藁城区', '藁城区', '999', '9', '', '38', '/0/37/38/', '3', '130109', 'CQ', '1', '1', '2017-03-09 11:52:56', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('46', '鹿泉区', '鹿泉', '999', '6', '', '38', '/0/37/38/', '3', '130110', 'LQQ', '1', '1', '2017-03-09 11:52:56', '1', '2017-03-09 11:52:56');
INSERT INTO `god_area` VALUES ('47', '栾城区', '栾城区', '999', '9', '', '38', '/0/37/38/', '3', '130111', 'CQ', '1', '1', '2017-03-09 11:52:56', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('48', '井陉县', '井陉', '999', '6', '', '38', '/0/37/38/', '3', '130121', 'JX', '1', '1', '2017-03-09 11:52:56', '1', '2017-03-09 11:52:56');
INSERT INTO `god_area` VALUES ('49', '正定县', '正定', '999', '6', '', '38', '/0/37/38/', '3', '130123', 'ZDX', '1', '1', '2017-03-09 11:52:56', '1', '2017-03-09 11:52:56');
INSERT INTO `god_area` VALUES ('50', '行唐县', '行唐', '999', '6', '', '38', '/0/37/38/', '3', '130125', 'XTX', '1', '1', '2017-03-09 11:52:56', '1', '2017-03-09 11:52:56');
INSERT INTO `god_area` VALUES ('51', '灵寿县', '灵寿', '999', '6', '', '38', '/0/37/38/', '3', '130126', 'LSX', '1', '1', '2017-03-09 11:52:56', '1', '2017-03-09 11:52:56');
INSERT INTO `god_area` VALUES ('52', '高邑县', '高邑', '999', '6', '', '38', '/0/37/38/', '3', '130127', 'GYX', '1', '1', '2017-03-09 11:52:56', '1', '2017-03-09 11:52:56');
INSERT INTO `god_area` VALUES ('53', '深泽县', '深泽', '999', '6', '', '38', '/0/37/38/', '3', '130128', 'SZX', '1', '1', '2017-03-09 11:52:56', '1', '2017-03-09 11:52:56');
INSERT INTO `god_area` VALUES ('54', '赞皇县', '赞皇', '999', '6', '', '38', '/0/37/38/', '3', '130129', 'ZIX', '1', '1', '2017-03-09 11:52:56', '1', '2017-03-09 11:52:56');
INSERT INTO `god_area` VALUES ('55', '无极县', '无极', '999', '6', '', '38', '/0/37/38/', '3', '130130', 'WJX', '1', '1', '2017-03-09 11:52:56', '1', '2017-03-09 11:52:56');
INSERT INTO `god_area` VALUES ('56', '平山县', '平山', '999', '6', '', '38', '/0/37/38/', '3', '130131', 'PSX', '1', '1', '2017-03-09 11:52:56', '1', '2017-03-09 11:52:56');
INSERT INTO `god_area` VALUES ('57', '元氏县', '元氏', '999', '6', '', '38', '/0/37/38/', '3', '130132', 'YSX', '1', '1', '2017-03-09 11:52:56', '1', '2017-03-09 11:52:56');
INSERT INTO `god_area` VALUES ('58', '赵县', '赵县', '999', '6', '', '38', '/0/37/38/', '3', '130133', 'ZX', '1', '1', '2017-03-09 11:52:56', '1', '2017-03-09 11:52:56');
INSERT INTO `god_area` VALUES ('59', '晋州市', '晋州', '999', '6', '', '38', '/0/37/38/', '3', '130183', 'JZS', '1', '1', '2017-03-09 11:52:57', '1', '2017-03-09 11:52:57');
INSERT INTO `god_area` VALUES ('60', '新乐市', '新乐', '999', '6', '', '38', '/0/37/38/', '3', '130184', 'XLS', '1', '1', '2017-03-09 11:52:57', '1', '2017-03-09 11:52:57');
INSERT INTO `god_area` VALUES ('61', '唐山市', '唐山', '999', '6', '', '37', '/0/37/', '2', '130200', 'TSS', '1', '1', '2017-03-09 11:52:57', '1', '2017-03-09 11:52:57');
INSERT INTO `god_area` VALUES ('63', '路南区', '路南区', '999', '6', '', '61', '/0/37/61/', '3', '130202', 'NQ', '1', '1', '2017-03-09 11:52:57', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('64', '路北区', '路北区', '999', '6', '', '61', '/0/37/61/', '3', '130203', 'BQ', '1', '1', '2017-03-09 11:52:57', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('65', '古冶区', '古冶', '999', '6', '', '61', '/0/37/61/', '3', '130204', 'GYQ', '1', '1', '2017-03-09 11:52:57', '1', '2017-03-09 11:52:57');
INSERT INTO `god_area` VALUES ('66', '开平区', '开平', '999', '6', '', '61', '/0/37/61/', '3', '130205', 'KPQ', '1', '1', '2017-03-09 11:52:57', '1', '2017-03-09 11:52:57');
INSERT INTO `god_area` VALUES ('67', '丰南区', '丰南区', '999', '6', '', '61', '/0/37/61/', '3', '130207', 'FNQ', '1', '1', '2017-03-09 11:52:57', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('68', '丰润区', '丰润', '999', '6', '', '61', '/0/37/61/', '3', '130208', 'FRQ', '1', '1', '2017-03-09 11:52:57', '1', '2017-03-09 11:52:57');
INSERT INTO `god_area` VALUES ('69', '曹妃甸区', '曹妃甸', '999', '9', '', '61', '/0/37/61/', '3', '130209', 'CDQ', '1', '1', '2017-03-09 11:52:57', '1', '2017-03-09 11:52:57');
INSERT INTO `god_area` VALUES ('70', '滦州市', '滦州', '999', '6', '', '61', '/0/37/61/', '3', '130223', 'LX', '1', '1', '2017-03-09 11:52:57', '16', '2018-11-06 15:40:27');
INSERT INTO `god_area` VALUES ('71', '滦南县', '滦南', '999', '6', '', '61', '/0/37/61/', '3', '130224', 'LNX', '1', '1', '2017-03-09 11:52:57', '1', '2017-03-09 11:52:57');
INSERT INTO `god_area` VALUES ('72', '乐亭县', '乐亭', '999', '6', '', '61', '/0/37/61/', '3', '130225', 'LTX', '1', '1', '2017-03-09 11:52:57', '1', '2017-03-09 11:52:57');
INSERT INTO `god_area` VALUES ('73', '迁西县', '迁西', '999', '6', '', '61', '/0/37/61/', '3', '130227', 'QXX', '1', '1', '2017-03-09 11:52:57', '1', '2017-03-09 11:52:57');
INSERT INTO `god_area` VALUES ('74', '玉田县', '玉田', '999', '6', '', '61', '/0/37/61/', '3', '130229', 'YTX', '1', '1', '2017-03-09 11:52:57', '1', '2017-03-09 11:52:57');
INSERT INTO `god_area` VALUES ('75', '遵化市', '遵化', '999', '6', '', '61', '/0/37/61/', '3', '130281', 'ZIS', '1', '1', '2017-03-09 11:52:57', '1', '2017-03-09 11:52:57');
INSERT INTO `god_area` VALUES ('76', '迁安市', '迁安', '999', '6', '', '61', '/0/37/61/', '3', '130283', 'QAS', '1', '1', '2017-03-09 11:52:57', '1', '2017-03-09 11:52:57');
INSERT INTO `god_area` VALUES ('77', '秦皇岛市', '秦皇岛', '999', '9', '', '37', '/0/37/', '2', '130300', 'QIDS', '1', '1', '2017-03-09 11:52:57', '1', '2017-03-09 11:52:57');
INSERT INTO `god_area` VALUES ('79', '海港区', '海港', '999', '6', '', '77', '/0/37/77/', '3', '130302', 'IGQ', '1', '1', '2017-03-09 11:52:57', '1', '2017-03-09 11:52:57');
INSERT INTO `god_area` VALUES ('80', '山海关区', '山海关', '999', '9', '', '77', '/0/37/77/', '3', '130303', 'SIGQ', '1', '1', '2017-03-09 11:52:57', '1', '2017-03-09 11:52:57');
INSERT INTO `god_area` VALUES ('81', '北戴河区', '北戴河', '999', '9', '', '77', '/0/37/77/', '3', '130304', 'BDIQ', '1', '1', '2017-03-09 11:52:57', '1', '2017-03-09 11:52:57');
INSERT INTO `god_area` VALUES ('82', '青龙满族自治县', '青龙', '999', '6', '', '77', '/0/37/77/', '3', '130321', 'QLMZZZX', '1', '1', '2017-03-09 11:52:57', '1', '2017-03-09 11:52:57');
INSERT INTO `god_area` VALUES ('83', '昌黎县', '昌黎', '999', '6', '', '77', '/0/37/77/', '3', '130322', 'CLX', '1', '1', '2017-03-09 11:52:57', '1', '2017-03-09 11:52:57');
INSERT INTO `god_area` VALUES ('84', '抚宁区', '抚宁', '999', '6', '', '77', '/0/37/77/', '3', '130323', 'FNQ', '1', '1', '2017-03-09 11:52:57', '6', '2017-08-21 14:46:41');
INSERT INTO `god_area` VALUES ('85', '卢龙县', '卢龙', '999', '6', '', '77', '/0/37/77/', '3', '130324', 'LLX', '1', '1', '2017-03-09 11:52:58', '1', '2017-03-09 11:52:58');
INSERT INTO `god_area` VALUES ('86', '邯郸市', '邯郸', '999', '6', '', '37', '/0/37/', '2', '130400', 'IDS', '1', '1', '2017-03-09 11:52:58', '1', '2017-03-09 11:52:58');
INSERT INTO `god_area` VALUES ('88', '邯山区', '邯山', '999', '6', '', '86', '/0/37/86/', '3', '130402', 'ISQ', '1', '1', '2017-03-09 11:52:58', '1', '2017-03-09 11:52:58');
INSERT INTO `god_area` VALUES ('89', '丛台区', '丛台', '999', '6', '', '86', '/0/37/86/', '3', '130403', 'CTQ', '1', '1', '2017-03-09 11:52:58', '1', '2017-03-09 11:52:58');
INSERT INTO `god_area` VALUES ('90', '复兴区', '复兴', '999', '6', '', '86', '/0/37/86/', '3', '130404', 'FXQ', '1', '1', '2017-03-09 11:52:58', '1', '2017-03-09 11:52:58');
INSERT INTO `god_area` VALUES ('91', '峰峰矿区', '峰峰矿', '999', '9', '', '86', '/0/37/86/', '3', '130406', 'FFKQ', '1', '1', '2017-03-09 11:52:58', '1', '2017-03-09 11:52:58');
INSERT INTO `god_area` VALUES ('92', '邯郸县', '邯郸县', '999', '9', '', '86', '/0/37/86/', '3', '130421', 'IDX', '1', '1', '2017-03-09 11:52:58', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('93', '临漳县', '临漳', '999', '6', '', '86', '/0/37/86/', '3', '130423', 'LZX', '1', '1', '2017-03-09 11:52:58', '1', '2017-03-09 11:52:58');
INSERT INTO `god_area` VALUES ('94', '成安县', '成安', '999', '6', '', '86', '/0/37/86/', '3', '130424', 'CAX', '1', '1', '2017-03-09 11:52:58', '1', '2017-03-09 11:52:58');
INSERT INTO `god_area` VALUES ('95', '大名县', '大名', '999', '6', '', '86', '/0/37/86/', '3', '130425', 'DMX', '1', '1', '2017-03-09 11:52:58', '1', '2017-03-09 11:52:58');
INSERT INTO `god_area` VALUES ('96', '涉县', '涉县', '999', '6', '', '86', '/0/37/86/', '3', '130426', 'SX', '1', '1', '2017-03-09 11:52:58', '1', '2017-03-09 11:52:58');
INSERT INTO `god_area` VALUES ('97', '磁县', '磁县', '999', '6', '', '86', '/0/37/86/', '3', '130427', 'CX', '1', '1', '2017-03-09 11:52:58', '1', '2017-03-09 11:52:58');
INSERT INTO `god_area` VALUES ('98', '肥乡区', '肥乡', '999', '6', '', '86', '/0/37/86/', '3', '130428', 'FXX', '1', '1', '2017-03-09 11:52:58', '16', '2018-07-03 20:46:47');
INSERT INTO `god_area` VALUES ('99', '永年区', '永年', '999', '6', '', '86', '/0/37/86/', '3', '130429', 'YNQ', '1', '1', '2017-03-09 11:52:58', '12', '2017-10-11 11:35:12');
INSERT INTO `god_area` VALUES ('100', '邱县', '邱县', '999', '6', '', '86', '/0/37/86/', '3', '130430', 'QX', '1', '1', '2017-03-09 11:52:58', '1', '2017-03-09 11:52:58');
INSERT INTO `god_area` VALUES ('101', '鸡泽县', '鸡泽', '999', '6', '', '86', '/0/37/86/', '3', '130431', 'JZX', '1', '1', '2017-03-09 11:52:58', '1', '2017-03-09 11:52:58');
INSERT INTO `god_area` VALUES ('102', '广平县', '广平', '999', '6', '', '86', '/0/37/86/', '3', '130432', 'GPX', '1', '1', '2017-03-09 11:52:58', '1', '2017-03-09 11:52:58');
INSERT INTO `god_area` VALUES ('103', '馆陶县', '馆陶', '999', '6', '', '86', '/0/37/86/', '3', '130433', 'GTX', '1', '1', '2017-03-09 11:52:59', '1', '2017-03-09 11:52:59');
INSERT INTO `god_area` VALUES ('104', '魏县', '魏县', '999', '6', '', '86', '/0/37/86/', '3', '130434', 'X', '1', '1', '2017-03-09 11:52:59', '1', '2017-03-09 11:52:59');
INSERT INTO `god_area` VALUES ('105', '曲周县', '曲周', '999', '6', '', '86', '/0/37/86/', '3', '130435', 'QZX', '1', '1', '2017-03-09 11:52:59', '1', '2017-03-09 11:52:59');
INSERT INTO `god_area` VALUES ('106', '武安市', '武安', '999', '6', '', '86', '/0/37/86/', '3', '130481', 'WAS', '1', '1', '2017-03-09 11:52:59', '1', '2017-03-09 11:52:59');
INSERT INTO `god_area` VALUES ('107', '邢台市', '邢台', '999', '6', '', '37', '/0/37/', '2', '130500', 'XTS', '1', '1', '2017-03-09 11:52:59', '1', '2017-03-09 11:52:59');
INSERT INTO `god_area` VALUES ('109', '桥东区', '桥东区', '999', '6', '', '107', '/0/37/107/', '3', '130502', 'QDQ', '1', '1', '2017-03-09 11:52:59', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('110', '桥西区', '桥西区', '999', '9', '', '107', '/0/37/107/', '3', '130503', 'QXQ', '1', '1', '2017-03-09 11:52:59', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('111', '邢台县', '邢台县', '999', '9', '', '107', '/0/37/107/', '3', '130521', 'XTX', '1', '88', '2017-03-09 11:52:59', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('112', '临城县', '临城', '999', '6', '', '107', '/0/37/107/', '3', '130522', 'LCX', '1', '1', '2017-03-09 11:52:59', '1', '2017-03-09 11:52:59');
INSERT INTO `god_area` VALUES ('113', '内丘县', '内丘', '999', '6', '', '107', '/0/37/107/', '3', '130523', 'NQX', '1', '1', '2017-03-09 11:52:59', '1', '2017-03-09 11:52:59');
INSERT INTO `god_area` VALUES ('114', '柏乡县', '柏乡', '999', '6', '', '107', '/0/37/107/', '3', '130524', 'BXX', '1', '1', '2017-03-09 11:52:59', '1', '2017-03-09 11:52:59');
INSERT INTO `god_area` VALUES ('115', '隆尧县', '隆尧', '999', '6', '', '107', '/0/37/107/', '3', '130525', 'LYX', '1', '1', '2017-03-09 11:52:59', '1', '2017-03-09 11:52:59');
INSERT INTO `god_area` VALUES ('116', '任县', '任县', '999', '6', '', '107', '/0/37/107/', '3', '130526', 'RX', '1', '1', '2017-03-09 11:52:59', '1', '2017-03-09 11:52:59');
INSERT INTO `god_area` VALUES ('117', '南和县', '南和', '999', '6', '', '107', '/0/37/107/', '3', '130527', 'NIX', '1', '1', '2017-03-09 11:52:59', '1', '2017-03-09 11:52:59');
INSERT INTO `god_area` VALUES ('118', '宁晋县', '宁晋', '999', '6', '', '107', '/0/37/107/', '3', '130528', 'NJX', '1', '1', '2017-03-09 11:52:59', '1', '2017-03-09 11:52:59');
INSERT INTO `god_area` VALUES ('119', '巨鹿县', '巨鹿', '999', '6', '', '107', '/0/37/107/', '3', '130529', 'JLX', '1', '1', '2017-03-09 11:52:59', '1', '2017-03-09 11:52:59');
INSERT INTO `god_area` VALUES ('120', '新河县', '新河', '999', '6', '', '107', '/0/37/107/', '3', '130530', 'XIX', '1', '1', '2017-03-09 11:52:59', '1', '2017-03-09 11:52:59');
INSERT INTO `god_area` VALUES ('121', '广宗县', '广宗', '999', '6', '', '107', '/0/37/107/', '3', '130531', 'GZX', '1', '1', '2017-03-09 11:52:59', '1', '2017-03-09 11:52:59');
INSERT INTO `god_area` VALUES ('122', '平乡县', '平乡', '999', '6', '', '107', '/0/37/107/', '3', '130532', 'PXX', '1', '1', '2017-03-09 11:52:59', '1', '2017-03-09 11:52:59');
INSERT INTO `god_area` VALUES ('123', '威县', '威县', '999', '6', '', '107', '/0/37/107/', '3', '130533', 'WX', '1', '1', '2017-03-09 11:52:59', '1', '2017-03-09 11:52:59');
INSERT INTO `god_area` VALUES ('124', '清河县', '清河县', '999', '9', '', '107', '/0/37/107/', '3', '130534', 'QIX', '1', '1', '2017-03-09 11:52:59', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('125', '临西县', '临西', '999', '6', '', '107', '/0/37/107/', '3', '130535', 'LXX', '1', '1', '2017-03-09 11:52:59', '1', '2017-03-09 11:52:59');
INSERT INTO `god_area` VALUES ('126', '南宫市', '南宫', '999', '6', '', '107', '/0/37/107/', '3', '130581', 'NGS', '1', '1', '2017-03-09 11:52:59', '1', '2017-03-09 11:52:59');
INSERT INTO `god_area` VALUES ('127', '沙河市', '沙河', '999', '6', '', '107', '/0/37/107/', '3', '130582', 'SIS', '1', '1', '2017-03-09 11:52:59', '1', '2017-03-09 11:52:59');
INSERT INTO `god_area` VALUES ('128', '保定市', '保定', '999', '6', '', '37', '/0/37/', '2', '130600', 'BDS', '1', '1', '2017-03-09 11:52:59', '1', '2017-03-09 11:52:59');
INSERT INTO `god_area` VALUES ('130', '新市区', '新市', '999', '6', '', '128', '/0/37/128/', '3', '130602', null, '0', '1', '2017-03-09 11:52:59', '6', '2017-09-22 15:58:25');
INSERT INTO `god_area` VALUES ('131', '北市区', '北市', '999', '6', '', '128', '/0/37/128/', '3', '130603', null, '0', '1', '2017-03-09 11:53:00', '6', '2017-09-22 15:58:29');
INSERT INTO `god_area` VALUES ('132', '南市区', '南市', '999', '6', '', '128', '/0/37/128/', '3', '130604', null, '0', '1', '2017-03-09 11:53:00', '6', '2017-09-22 15:58:34');
INSERT INTO `god_area` VALUES ('133', '满城区', '满城区', '999', '9', '', '128', '/0/37/128/', '3', '130621', 'MCQ', '1', '1', '2017-03-09 11:53:00', '6', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('134', '清苑区', '清苑', '999', '6', '', '128', '/0/37/128/', '3', '130622', 'QYQ', '1', '1', '2017-03-09 11:53:00', '6', '2017-09-22 15:58:46');
INSERT INTO `god_area` VALUES ('135', '涞水县', '涞水', '999', '6', '', '128', '/0/37/128/', '3', '130623', 'SX', '1', '1', '2017-03-09 11:53:00', '1', '2017-03-09 11:53:00');
INSERT INTO `god_area` VALUES ('136', '阜平县', '阜平', '999', '6', '', '128', '/0/37/128/', '3', '130624', 'FPX', '1', '1', '2017-03-09 11:53:00', '1', '2017-03-09 11:53:00');
INSERT INTO `god_area` VALUES ('137', '徐水区', '徐水', '999', '6', '', '128', '/0/37/128/', '3', '130625', 'XSQ', '1', '1', '2017-03-09 11:53:00', '6', '2017-08-21 10:15:49');
INSERT INTO `god_area` VALUES ('138', '定兴县', '定兴', '999', '6', '', '128', '/0/37/128/', '3', '130626', 'DXX', '1', '1', '2017-03-09 11:53:00', '1', '2017-03-09 11:53:00');
INSERT INTO `god_area` VALUES ('139', '唐县', '唐县', '999', '6', '', '128', '/0/37/128/', '3', '130627', 'TX', '1', '1', '2017-03-09 11:53:00', '1', '2017-03-09 11:53:00');
INSERT INTO `god_area` VALUES ('140', '高阳县', '高阳', '999', '6', '', '128', '/0/37/128/', '3', '130628', 'GYX', '1', '1', '2017-03-09 11:53:00', '1', '2017-03-09 11:53:00');
INSERT INTO `god_area` VALUES ('141', '容城县', '容城', '999', '6', '', '128', '/0/37/128/', '3', '130629', 'RCX', '1', '1', '2017-03-09 11:53:00', '1', '2017-03-09 11:53:00');
INSERT INTO `god_area` VALUES ('142', '涞源县', '涞源', '999', '6', '', '128', '/0/37/128/', '3', '130630', 'YX', '1', '1', '2017-03-09 11:53:00', '1', '2017-03-09 11:53:00');
INSERT INTO `god_area` VALUES ('143', '望都县', '望都', '999', '6', '', '128', '/0/37/128/', '3', '130631', 'WDX', '1', '1', '2017-03-09 11:53:00', '1', '2017-03-09 11:53:00');
INSERT INTO `god_area` VALUES ('144', '安新县', '安新县', '999', '9', '', '128', '/0/37/128/', '3', '130632', 'AXX', '1', '1', '2017-03-09 11:53:00', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('145', '易县', '易县', '999', '6', '', '128', '/0/37/128/', '3', '130633', 'YX', '1', '1', '2017-03-09 11:53:00', '1', '2017-03-09 11:53:00');
INSERT INTO `god_area` VALUES ('146', '曲阳县', '曲阳', '999', '6', '', '128', '/0/37/128/', '3', '130634', 'QYX', '1', '1', '2017-03-09 11:53:00', '1', '2017-03-09 11:53:00');
INSERT INTO `god_area` VALUES ('147', '蠡县', '蠡县', '999', '6', '', '128', '/0/37/128/', '3', '130635', 'X', '1', '1', '2017-03-09 11:53:00', '1', '2017-03-09 11:53:00');
INSERT INTO `god_area` VALUES ('148', '顺平县', '顺平', '999', '6', '', '128', '/0/37/128/', '3', '130636', 'SPX', '1', '1', '2017-03-09 11:53:00', '1', '2017-03-09 11:53:00');
INSERT INTO `god_area` VALUES ('149', '博野县', '博野', '999', '6', '', '128', '/0/37/128/', '3', '130637', 'BYX', '1', '1', '2017-03-09 11:53:00', '1', '2017-03-09 11:53:00');
INSERT INTO `god_area` VALUES ('150', '雄县', '雄县', '999', '6', '', '128', '/0/37/128/', '3', '130638', 'XX', '1', '1', '2017-03-09 11:53:00', '1', '2017-03-09 11:53:00');
INSERT INTO `god_area` VALUES ('151', '涿州市', '涿州', '999', '6', '', '128', '/0/37/128/', '3', '130681', 'ZS', '1', '1', '2017-03-09 11:53:00', '1', '2017-03-09 11:53:00');
INSERT INTO `god_area` VALUES ('152', '安国市', '安国', '999', '6', '', '128', '/0/37/128/', '3', '130683', 'AGS', '1', '1', '2017-03-09 11:53:00', '1', '2017-03-09 11:53:00');
INSERT INTO `god_area` VALUES ('153', '高碑店市', '高碑店', '999', '9', '', '128', '/0/37/128/', '3', '130684', 'GBDS', '1', '1', '2017-03-09 11:53:00', '1', '2017-03-09 11:53:00');
INSERT INTO `god_area` VALUES ('154', '张家口市', '张家口', '999', '9', '', '37', '/0/37/', '2', '130700', 'ZJKS', '1', '1', '2017-03-09 11:53:00', '1', '2017-03-09 11:53:00');
INSERT INTO `god_area` VALUES ('156', '桥东区', '桥东区', '999', '6', '', '154', '/0/37/154/', '3', '130702', 'QDQ', '1', '1', '2017-03-09 11:53:00', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('157', '桥西区', '桥西区', '999', '9', '', '154', '/0/37/154/', '3', '130703', 'QXQ', '1', '1', '2017-03-09 11:53:00', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('158', '宣化区', '宣化', '999', '6', '', '154', '/0/37/154/', '3', '130705', 'XIQ', '1', '1', '2017-03-09 11:53:00', '1', '2017-03-09 11:53:00');
INSERT INTO `god_area` VALUES ('159', '下花园区', '下花园', '999', '9', '', '154', '/0/37/154/', '3', '130706', 'XIYQ', '1', '1', '2017-03-09 11:53:00', '1', '2017-03-09 11:53:00');
INSERT INTO `god_area` VALUES ('160', '宣化县', '宣化', '999', '6', '', '154', '/0/37/154/', '3', '130721', 'XIX', '0', '88', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('161', '张北县', '张北', '999', '6', '', '154', '/0/37/154/', '3', '130722', 'ZBX', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('162', '康保县', '康保', '999', '6', '', '154', '/0/37/154/', '3', '130723', 'KBX', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('163', '沽源县', '沽源', '999', '6', '', '154', '/0/37/154/', '3', '130724', 'GYX', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('164', '尚义县', '尚义', '999', '6', '', '154', '/0/37/154/', '3', '130725', 'SYX', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('165', '蔚县', '蔚县', '999', '6', '', '154', '/0/37/154/', '3', '130726', 'X', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('166', '阳原县', '阳原', '999', '6', '', '154', '/0/37/154/', '3', '130727', 'YYX', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('167', '怀安县', '怀安', '999', '6', '', '154', '/0/37/154/', '3', '130728', 'IAX', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('168', '万全区', '万全', '999', '6', '', '154', '/0/37/154/', '3', '130729', 'WQX', '1', '1', '2017-03-09 11:53:01', '16', '2018-07-03 20:50:10');
INSERT INTO `god_area` VALUES ('169', '怀来县', '怀来', '999', '6', '', '154', '/0/37/154/', '3', '130730', 'ILX', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('170', '涿鹿县', '涿鹿', '999', '6', '', '154', '/0/37/154/', '3', '130731', 'LX', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('171', '赤城县', '赤城', '999', '6', '', '154', '/0/37/154/', '3', '130732', 'CCX', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('172', '崇礼区', '崇礼', '999', '6', '', '154', '/0/37/154/', '3', '130733', 'CLQ', '1', '1', '2017-03-09 11:53:01', '6', '2017-08-21 17:36:57');
INSERT INTO `god_area` VALUES ('173', '承德市', '承德', '999', '6', '', '37', '/0/37/', '2', '130800', 'CDS', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('175', '双桥区', '双桥', '999', '6', '', '173', '/0/37/173/', '3', '130802', 'SQQ', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('176', '双滦区', '双滦', '999', '6', '', '173', '/0/37/173/', '3', '130803', 'SLQ', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('177', '鹰手营子矿区', '鹰手营子矿', '999', '15', '', '173', '/0/37/173/', '3', '130804', 'YSYZKQ', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('178', '承德县', '承德县', '999', '9', '', '173', '/0/37/173/', '3', '130821', 'CDX', '1', '88', '2017-03-09 11:53:01', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('179', '兴隆县', '兴隆', '999', '6', '', '173', '/0/37/173/', '3', '130822', 'XLX', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('180', '平泉市', '平泉', '999', '6', '', '173', '/0/37/173/', '3', '130823', 'PQX', '1', '1', '2017-03-09 11:53:01', '16', '2018-07-03 20:51:47');
INSERT INTO `god_area` VALUES ('181', '滦平县', '滦平', '999', '6', '', '173', '/0/37/173/', '3', '130824', 'LPX', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('182', '隆化县', '隆化', '999', '6', '', '173', '/0/37/173/', '3', '130825', 'LIX', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('183', '丰宁满族自治县', '丰宁', '999', '6', '', '173', '/0/37/173/', '3', '130826', 'FNMZZZX', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('184', '宽城满族自治县', '宽城', '999', '6', '', '173', '/0/37/173/', '3', '130827', 'KCMZZZX', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('185', '围场满族蒙古族自治县', '围场', '999', '6', '', '173', '/0/37/173/', '3', '130828', 'CMZMGZZZX', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('186', '沧州市', '沧州', '999', '6', '', '37', '/0/37/', '2', '130900', 'CZS', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('188', '新华区', '新华区', '999', '9', '', '186', '/0/37/186/', '3', '130902', 'XIQ', '1', '88', '2017-03-09 11:53:01', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('189', '运河区', '运河', '999', '6', '', '186', '/0/37/186/', '3', '130903', 'YIQ', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('190', '沧县', '沧县', '999', '6', '', '186', '/0/37/186/', '3', '130921', 'CX', '1', '1', '2017-03-09 11:53:01', '1', '2017-03-09 11:53:01');
INSERT INTO `god_area` VALUES ('191', '青县', '青县', '999', '6', '', '186', '/0/37/186/', '3', '130922', 'QX', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('192', '东光县', '东光', '999', '6', '', '186', '/0/37/186/', '3', '130923', 'DGX', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('193', '海兴县', '海兴', '999', '6', '', '186', '/0/37/186/', '3', '130924', 'IXX', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('194', '盐山县', '盐山', '999', '6', '', '186', '/0/37/186/', '3', '130925', 'YSX', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('195', '肃宁县', '肃宁', '999', '6', '', '186', '/0/37/186/', '3', '130926', 'SNX', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('196', '南皮县', '南皮', '999', '6', '', '186', '/0/37/186/', '3', '130927', 'NPX', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('197', '吴桥县', '吴桥', '999', '6', '', '186', '/0/37/186/', '3', '130928', 'WQX', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('198', '献县', '献县', '999', '6', '', '186', '/0/37/186/', '3', '130929', 'XX', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('199', '孟村回族自治县', '孟村', '999', '6', '', '186', '/0/37/186/', '3', '130930', 'MCIZZZX', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('200', '泊头市', '泊头', '999', '6', '', '186', '/0/37/186/', '3', '130981', 'BTS', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('201', '任丘市', '任丘', '999', '6', '', '186', '/0/37/186/', '3', '130982', 'RQS', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('202', '黄骅市', '黄骅', '999', '6', '', '186', '/0/37/186/', '3', '130983', 'IS', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('203', '河间市', '河间', '999', '6', '', '186', '/0/37/186/', '3', '130984', 'IJS', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('204', '廊坊市', '廊坊', '999', '6', '', '37', '/0/37/', '2', '131000', 'LFS', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('206', '安次区', '安次', '999', '6', '', '204', '/0/37/204/', '3', '131002', 'ACQ', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('207', '广阳区', '广阳', '999', '6', '', '204', '/0/37/204/', '3', '131003', 'GYQ', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('208', '固安县', '固安', '999', '6', '', '204', '/0/37/204/', '3', '131022', 'GAX', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('209', '永清县', '永清', '999', '6', '', '204', '/0/37/204/', '3', '131023', 'YQX', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('210', '香河县', '香河', '999', '6', '', '204', '/0/37/204/', '3', '131024', 'XIX', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('211', '大城县', '大城', '999', '6', '', '204', '/0/37/204/', '3', '131025', 'DCX', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('212', '文安县', '文安', '999', '6', '', '204', '/0/37/204/', '3', '131026', 'WAX', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('213', '大厂回族自治县', '大厂', '999', '6', '', '204', '/0/37/204/', '3', '131028', 'DCIZZZX', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('214', '霸州市', '霸州', '999', '6', '', '204', '/0/37/204/', '3', '131081', 'BZS', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('215', '三河市', '三河', '999', '6', '', '204', '/0/37/204/', '3', '131082', 'SIS', '1', '1', '2017-03-09 11:53:02', '1', '2017-03-09 11:53:02');
INSERT INTO `god_area` VALUES ('216', '衡水市', '衡水', '999', '6', '', '37', '/0/37/', '2', '131100', 'ISS', '1', '1', '2017-03-09 11:53:03', '1', '2017-03-09 11:53:03');
INSERT INTO `god_area` VALUES ('218', '桃城区', '桃城区', '999', '9', '', '216', '/0/37/216/', '3', '131102', 'TCQ', '1', '1', '2017-03-09 11:53:03', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('219', '枣强县', '枣强', '999', '6', '', '216', '/0/37/216/', '3', '131121', 'ZQX', '1', '1', '2017-03-09 11:53:03', '1', '2017-03-09 11:53:03');
INSERT INTO `god_area` VALUES ('220', '武邑县', '武邑', '999', '6', '', '216', '/0/37/216/', '3', '131122', 'WYX', '1', '1', '2017-03-09 11:53:03', '1', '2017-03-09 11:53:03');
INSERT INTO `god_area` VALUES ('221', '武强县', '武强', '999', '6', '', '216', '/0/37/216/', '3', '131123', 'WQX', '1', '1', '2017-03-09 11:53:03', '1', '2017-03-09 11:53:03');
INSERT INTO `god_area` VALUES ('222', '饶阳县', '饶阳', '999', '6', '', '216', '/0/37/216/', '3', '131124', 'RYX', '1', '1', '2017-03-09 11:53:03', '1', '2017-03-09 11:53:03');
INSERT INTO `god_area` VALUES ('223', '安平县', '安平', '999', '6', '', '216', '/0/37/216/', '3', '131125', 'APX', '1', '1', '2017-03-09 11:53:03', '1', '2017-03-09 11:53:03');
INSERT INTO `god_area` VALUES ('224', '故城县', '故城', '999', '6', '', '216', '/0/37/216/', '3', '131126', 'GCX', '1', '1', '2017-03-09 11:53:03', '1', '2017-03-09 11:53:03');
INSERT INTO `god_area` VALUES ('225', '景县', '景县', '999', '6', '', '216', '/0/37/216/', '3', '131127', 'JX', '1', '1', '2017-03-09 11:53:03', '1', '2017-03-09 11:53:03');
INSERT INTO `god_area` VALUES ('226', '阜城县', '阜城', '999', '6', '', '216', '/0/37/216/', '3', '131128', 'FCX', '1', '1', '2017-03-09 11:53:03', '1', '2017-03-09 11:53:03');
INSERT INTO `god_area` VALUES ('227', '冀州区', '冀州', '999', '6', '', '216', '/0/37/216/', '3', '131181', 'JZQ', '1', '1', '2017-03-09 11:53:03', '6', '2017-08-21 11:49:20');
INSERT INTO `god_area` VALUES ('228', '深州市', '深州', '999', '6', '', '216', '/0/37/216/', '3', '131182', 'SZS', '1', '1', '2017-03-09 11:53:03', '1', '2017-03-09 11:53:03');
INSERT INTO `god_area` VALUES ('230', '定州市', '定州', '999', '6', '', '128', '/0/37/128/', '3', '139001', 'DZS', '1', '1', '2017-03-09 11:53:03', '16', '2018-07-03 20:49:03');
INSERT INTO `god_area` VALUES ('231', '辛集市', '辛集', '999', '6', '', '38', '/0/37/38/', '3', '139002', 'XJS', '1', '1', '2017-03-09 11:53:03', '16', '2018-07-03 20:44:11');
INSERT INTO `god_area` VALUES ('232', '山西省', '山西', '999', '6', '', '0', '/0/', '1', '140000', 'SXS', '1', '1', '2017-03-09 11:53:03', '1', '2017-03-09 11:53:03');
INSERT INTO `god_area` VALUES ('233', '太原市', '太原', '999', '6', '', '232', '/0/232/', '2', '140100', 'TYS', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('235', '小店区', '小店', '999', '6', '', '233', '/0/232/233/', '3', '140105', 'DQ', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('236', '迎泽区', '迎泽', '999', '6', '', '233', '/0/232/233/', '3', '140106', 'YZQ', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('237', '杏花岭区', '杏花岭', '999', '9', '', '233', '/0/232/233/', '3', '140107', 'XILQ', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('238', '尖草坪区', '尖草坪', '999', '9', '', '233', '/0/232/233/', '3', '140108', 'JCPQ', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('239', '万柏林区', '万柏林', '999', '9', '', '233', '/0/232/233/', '3', '140109', 'WBLQ', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('240', '晋源区', '晋源', '999', '6', '', '233', '/0/232/233/', '3', '140110', 'JYQ', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('241', '清徐县', '清徐', '999', '6', '', '233', '/0/232/233/', '3', '140121', 'QXX', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('242', '阳曲县', '阳曲', '999', '6', '', '233', '/0/232/233/', '3', '140122', 'YQX', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('243', '娄烦县', '娄烦', '999', '6', '', '233', '/0/232/233/', '3', '140123', 'LFX', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('244', '古交市', '古交', '999', '6', '', '233', '/0/232/233/', '3', '140181', 'GJS', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('245', '大同市', '大同', '999', '6', '', '232', '/0/232/', '2', '140200', 'DTS', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('247', '城区', '城区', '999', '6', '', '245', '/0/232/245/', '3', '140202', 'CQ', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('248', '矿区', '矿区', '999', '6', '', '245', '/0/232/245/', '3', '140203', 'KQ', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('249', '南郊区', '南郊', '999', '6', '', '245', '/0/232/245/', '3', '140211', 'NJQ', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('250', '新荣区', '新荣', '999', '6', '', '245', '/0/232/245/', '3', '140212', 'XRQ', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('251', '阳高县', '阳高', '999', '6', '', '245', '/0/232/245/', '3', '140221', 'YGX', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('252', '天镇县', '天镇', '999', '6', '', '245', '/0/232/245/', '3', '140222', 'TZX', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('253', '广灵县', '广灵', '999', '6', '', '245', '/0/232/245/', '3', '140223', 'GLX', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('254', '灵丘县', '灵丘', '999', '6', '', '245', '/0/232/245/', '3', '140224', 'LQX', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('255', '浑源县', '浑源', '999', '6', '', '245', '/0/232/245/', '3', '140225', 'IYX', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('256', '左云县', '左云', '999', '6', '', '245', '/0/232/245/', '3', '140226', 'ZYX', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('257', '大同县', '大同县', '999', '9', '', '245', '/0/232/245/', '3', '140227', 'DTX', '1', '88', '2017-03-09 11:53:04', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('258', '阳泉市', '阳泉', '999', '6', '', '232', '/0/232/', '2', '140300', 'YQS', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('260', '城区', '城区', '999', '6', '', '258', '/0/232/258/', '3', '140302', 'CQ', '1', '1', '2017-03-09 11:53:04', '1', '2017-03-09 11:53:04');
INSERT INTO `god_area` VALUES ('261', '矿区', '矿区', '999', '6', '', '258', '/0/232/258/', '3', '140303', 'KQ', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('262', '郊区', '郊区', '999', '6', '', '258', '/0/232/258/', '3', '140311', 'JQ', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('263', '平定县', '平定', '999', '6', '', '258', '/0/232/258/', '3', '140321', 'PDX', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('264', '盂县', '盂县', '999', '6', '', '258', '/0/232/258/', '3', '140322', 'YX', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('265', '长治市', '长治', '999', '6', '', '232', '/0/232/', '2', '140400', 'CZS', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('267', '城区', '城区', '999', '6', '', '265', '/0/232/265/', '3', '140402', 'CQ', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('268', '郊区', '郊区', '999', '6', '', '265', '/0/232/265/', '3', '140411', 'JQ', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('269', '长治县', '长治县', '999', '9', '', '265', '/0/232/265/', '3', '140421', 'CZX', '1', '1', '2017-03-09 11:53:05', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('270', '襄垣县', '襄垣', '999', '6', '', '265', '/0/232/265/', '3', '140423', 'XYX', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('271', '屯留县', '屯留', '999', '6', '', '265', '/0/232/265/', '3', '140424', 'TLX', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('272', '平顺县', '平顺', '999', '6', '', '265', '/0/232/265/', '3', '140425', 'PSX', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('273', '黎城县', '黎城', '999', '6', '', '265', '/0/232/265/', '3', '140426', 'LCX', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('274', '壶关县', '壶关', '999', '6', '', '265', '/0/232/265/', '3', '140427', 'IGX', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('275', '长子县', '长子', '999', '6', '', '265', '/0/232/265/', '3', '140428', 'CZX', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('276', '武乡县', '武乡', '999', '6', '', '265', '/0/232/265/', '3', '140429', 'WXX', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('277', '沁县', '沁县', '999', '6', '', '265', '/0/232/265/', '3', '140430', 'QX', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('278', '沁源县', '沁源', '999', '6', '', '265', '/0/232/265/', '3', '140431', 'QYX', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('279', '潞城市', '潞城', '999', '6', '', '265', '/0/232/265/', '3', '140481', 'LCS', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('280', '晋城市', '晋城', '999', '6', '', '232', '/0/232/', '2', '140500', 'JCS', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('282', '城区', '城区', '999', '6', '', '280', '/0/232/280/', '3', '140502', 'CQ', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('283', '沁水县', '沁水', '999', '6', '', '280', '/0/232/280/', '3', '140521', 'QSX', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('284', '阳城县', '阳城', '999', '6', '', '280', '/0/232/280/', '3', '140522', 'YCX', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('285', '陵川县', '陵川', '999', '6', '', '280', '/0/232/280/', '3', '140524', 'LCX', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('286', '泽州县', '泽州', '999', '6', '', '280', '/0/232/280/', '3', '140525', 'ZZX', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('287', '高平市', '高平', '999', '6', '', '280', '/0/232/280/', '3', '140581', 'GPS', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('288', '朔州市', '朔州', '999', '6', '', '232', '/0/232/', '2', '140600', 'SZS', '1', '1', '2017-03-09 11:53:05', '1', '2017-03-09 11:53:05');
INSERT INTO `god_area` VALUES ('290', '朔城区', '朔城区', '999', '9', '', '288', '/0/232/288/', '3', '140602', 'SCQ', '1', '1', '2017-03-09 11:53:06', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('291', '平鲁区', '平鲁', '999', '6', '', '288', '/0/232/288/', '3', '140603', 'PLQ', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('292', '山阴县', '山阴', '999', '6', '', '288', '/0/232/288/', '3', '140621', 'SYX', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('293', '应县', '应县', '999', '6', '', '288', '/0/232/288/', '3', '140622', 'YX', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('294', '右玉县', '右玉', '999', '6', '', '288', '/0/232/288/', '3', '140623', 'YYX', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('295', '怀仁市', '怀仁', '999', '6', '', '288', '/0/232/288/', '3', '140624', 'IRX', '1', '1', '2017-03-09 11:53:06', '16', '2018-08-23 10:29:05');
INSERT INTO `god_area` VALUES ('296', '晋中市', '晋中', '999', '6', '', '232', '/0/232/', '2', '140700', 'JZS', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('298', '榆次区', '榆次', '999', '6', '', '296', '/0/232/296/', '3', '140702', 'YCQ', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('299', '榆社县', '榆社', '999', '6', '', '296', '/0/232/296/', '3', '140721', 'YSX', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('300', '左权县', '左权', '999', '6', '', '296', '/0/232/296/', '3', '140722', 'ZQX', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('301', '和顺县', '和顺', '999', '6', '', '296', '/0/232/296/', '3', '140723', 'ISX', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('302', '昔阳县', '昔阳', '999', '6', '', '296', '/0/232/296/', '3', '140724', 'XYX', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('303', '寿阳县', '寿阳', '999', '6', '', '296', '/0/232/296/', '3', '140725', 'SYX', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('304', '太谷县', '太谷', '999', '6', '', '296', '/0/232/296/', '3', '140726', 'TGX', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('305', '祁县', '祁县', '999', '6', '', '296', '/0/232/296/', '3', '140727', 'QX', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('306', '平遥县', '平遥', '999', '6', '', '296', '/0/232/296/', '3', '140728', 'PYX', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('307', '灵石县', '灵石', '999', '6', '', '296', '/0/232/296/', '3', '140729', 'LSX', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('308', '介休市', '介休', '999', '6', '', '296', '/0/232/296/', '3', '140781', 'JXS', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('309', '运城市', '运城', '999', '6', '', '232', '/0/232/', '2', '140800', 'YCS', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('311', '盐湖区', '盐湖', '999', '6', '', '309', '/0/232/309/', '3', '140802', 'YIQ', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('312', '临猗县', '临猗', '999', '6', '', '309', '/0/232/309/', '3', '140821', 'LX', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('313', '万荣县', '万荣', '999', '6', '', '309', '/0/232/309/', '3', '140822', 'WRX', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('314', '闻喜县', '闻喜', '999', '6', '', '309', '/0/232/309/', '3', '140823', 'WXX', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('315', '稷山县', '稷山', '999', '6', '', '309', '/0/232/309/', '3', '140824', 'SX', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('316', '新绛县', '新绛', '999', '6', '', '309', '/0/232/309/', '3', '140825', 'XX', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('317', '绛县', '绛县', '999', '6', '', '309', '/0/232/309/', '3', '140826', 'X', '1', '1', '2017-03-09 11:53:06', '1', '2017-03-09 11:53:06');
INSERT INTO `god_area` VALUES ('318', '垣曲县', '垣曲', '999', '6', '', '309', '/0/232/309/', '3', '140827', 'YQX', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('319', '夏县', '夏县', '999', '6', '', '309', '/0/232/309/', '3', '140828', 'XX', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('320', '平陆县', '平陆', '999', '6', '', '309', '/0/232/309/', '3', '140829', 'PLX', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('321', '芮城县', '芮城', '999', '6', '', '309', '/0/232/309/', '3', '140830', 'CX', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('322', '永济市', '永济', '999', '6', '', '309', '/0/232/309/', '3', '140881', 'YJS', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('323', '河津市', '河津', '999', '6', '', '309', '/0/232/309/', '3', '140882', 'IJS', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('324', '忻州市', '忻州', '999', '6', '', '232', '/0/232/', '2', '140900', 'XZS', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('326', '忻府区', '忻府', '999', '6', '', '324', '/0/232/324/', '3', '140902', 'XFQ', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('327', '定襄县', '定襄', '999', '6', '', '324', '/0/232/324/', '3', '140921', 'DXX', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('328', '五台县', '五台', '999', '6', '', '324', '/0/232/324/', '3', '140922', 'WTX', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('329', '代县', '代县', '999', '6', '', '324', '/0/232/324/', '3', '140923', 'DX', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('330', '繁峙县', '繁峙', '999', '6', '', '324', '/0/232/324/', '3', '140924', 'FZX', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('331', '宁武县', '宁武', '999', '6', '', '324', '/0/232/324/', '3', '140925', 'NWX', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('332', '静乐县', '静乐', '999', '6', '', '324', '/0/232/324/', '3', '140926', 'JLX', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('333', '神池县', '神池', '999', '6', '', '324', '/0/232/324/', '3', '140927', 'SCX', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('334', '五寨县', '五寨', '999', '6', '', '324', '/0/232/324/', '3', '140928', 'WZX', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('335', '岢岚县', '岢岚', '999', '6', '', '324', '/0/232/324/', '3', '140929', 'X', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('336', '河曲县', '河曲', '999', '6', '', '324', '/0/232/324/', '3', '140930', 'IQX', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('337', '保德县', '保德', '999', '6', '', '324', '/0/232/324/', '3', '140931', 'BDX', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('338', '偏关县', '偏关', '999', '6', '', '324', '/0/232/324/', '3', '140932', 'PGX', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('339', '原平市', '原平', '999', '6', '', '324', '/0/232/324/', '3', '140981', 'YPS', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('340', '临汾市', '临汾', '999', '6', '', '232', '/0/232/', '2', '141000', 'LFS', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('342', '尧都区', '尧都', '999', '6', '', '340', '/0/232/340/', '3', '141002', 'YDQ', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('343', '曲沃县', '曲沃', '999', '6', '', '340', '/0/232/340/', '3', '141021', 'QWX', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('344', '翼城县', '翼城', '999', '6', '', '340', '/0/232/340/', '3', '141022', 'YCX', '1', '1', '2017-03-09 11:53:07', '1', '2017-03-09 11:53:07');
INSERT INTO `god_area` VALUES ('345', '襄汾县', '襄汾', '999', '6', '', '340', '/0/232/340/', '3', '141023', 'XFX', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('346', '洪洞县', '洪洞', '999', '6', '', '340', '/0/232/340/', '3', '141024', 'IDX', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('347', '古县', '古县', '999', '6', '', '340', '/0/232/340/', '3', '141025', 'GX', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('348', '安泽县', '安泽', '999', '6', '', '340', '/0/232/340/', '3', '141026', 'AZX', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('349', '浮山县', '浮山', '999', '6', '', '340', '/0/232/340/', '3', '141027', 'FSX', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('350', '吉县', '吉县', '999', '6', '', '340', '/0/232/340/', '3', '141028', 'JX', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('351', '乡宁县', '乡宁', '999', '6', '', '340', '/0/232/340/', '3', '141029', 'XNX', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('352', '大宁县', '大宁', '999', '6', '', '340', '/0/232/340/', '3', '141030', 'DNX', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('353', '隰县', '隰县', '999', '6', '', '340', '/0/232/340/', '3', '141031', 'X', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('354', '永和县', '永和', '999', '6', '', '340', '/0/232/340/', '3', '141032', 'YIX', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('355', '蒲县', '蒲县', '999', '6', '', '340', '/0/232/340/', '3', '141033', 'PX', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('356', '汾西县', '汾西', '999', '6', '', '340', '/0/232/340/', '3', '141034', 'FXX', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('357', '侯马市', '侯马', '999', '6', '', '340', '/0/232/340/', '3', '141081', 'IMS', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('358', '霍州市', '霍州', '999', '6', '', '340', '/0/232/340/', '3', '141082', 'IZS', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('359', '吕梁市', '吕梁', '999', '6', '', '232', '/0/232/', '2', '141100', 'LLS', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('361', '离石区', '离石', '999', '6', '', '359', '/0/232/359/', '3', '141102', 'LSQ', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('362', '文水县', '文水县', '999', '9', '', '359', '/0/232/359/', '3', '141121', 'WSX', '1', '1', '2017-03-09 11:53:08', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('363', '交城县', '交城', '999', '6', '', '359', '/0/232/359/', '3', '141122', 'JCX', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('364', '兴县', '兴县', '999', '6', '', '359', '/0/232/359/', '3', '141123', 'XX', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('365', '临县', '临县', '999', '6', '', '359', '/0/232/359/', '3', '141124', 'LX', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('366', '柳林县', '柳林', '999', '6', '', '359', '/0/232/359/', '3', '141125', 'LLX', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('367', '石楼县', '石楼', '999', '6', '', '359', '/0/232/359/', '3', '141126', 'SLX', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('368', '岚县', '岚县', '999', '6', '', '359', '/0/232/359/', '3', '141127', 'X', '1', '1', '2017-03-09 11:53:08', '1', '2017-03-09 11:53:08');
INSERT INTO `god_area` VALUES ('369', '方山县', '方山', '999', '6', '', '359', '/0/232/359/', '3', '141128', 'FSX', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('370', '中阳县', '中阳', '999', '6', '', '359', '/0/232/359/', '3', '141129', 'ZYX', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('371', '交口县', '交口', '999', '6', '', '359', '/0/232/359/', '3', '141130', 'JKX', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('372', '孝义市', '孝义', '999', '6', '', '359', '/0/232/359/', '3', '141181', 'YS', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('373', '汾阳市', '汾阳', '999', '6', '', '359', '/0/232/359/', '3', '141182', 'FYS', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('374', '内蒙古自治区', '内蒙古', '999', '9', '', '0', '/0/', '1', '150000', 'NMGZZQ', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('375', '呼和浩特市', '呼和浩特', '999', '12', '', '374', '/0/374/', '2', '150100', 'IIITS', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('377', '新城区', '新城区', '999', '9', '', '375', '/0/374/375/', '3', '150102', 'XCQ', '1', '1', '2017-03-09 11:53:09', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('378', '回民区', '回民', '999', '6', '', '375', '/0/374/375/', '3', '150103', 'IMQ', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('379', '玉泉区', '玉泉', '999', '6', '', '375', '/0/374/375/', '3', '150104', 'YQQ', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('380', '赛罕区', '赛罕', '999', '6', '', '375', '/0/374/375/', '3', '150105', 'SIQ', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('381', '土默特左旗', '土默特左旗', '999', '15', '', '375', '/0/374/375/', '3', '150121', 'TMTZQ', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('382', '托克托县', '托克托', '999', '9', '', '375', '/0/374/375/', '3', '150122', 'TKTX', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('383', '和林格尔县', '和林格尔', '999', '12', '', '375', '/0/374/375/', '3', '150123', 'ILGEX', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('384', '清水河县', '清水河', '999', '9', '', '375', '/0/374/375/', '3', '150124', 'QSIX', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('385', '武川县', '武川', '999', '6', '', '375', '/0/374/375/', '3', '150125', 'WCX', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('386', '包头市', '包头', '999', '6', '', '374', '/0/374/', '2', '150200', 'BTS', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('388', '东河区', '东河', '999', '6', '', '386', '/0/374/386/', '3', '150202', 'DIQ', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('389', '昆都仑区', '昆都仑', '999', '9', '', '386', '/0/374/386/', '3', '150203', 'KDLQ', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('390', '青山区', '青山', '999', '6', '', '386', '/0/374/386/', '3', '150204', 'QSQ', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('391', '石拐区', '石拐', '999', '6', '', '386', '/0/374/386/', '3', '150205', 'SGQ', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('392', '白云鄂博矿区', '白云鄂博矿', '999', '15', '', '386', '/0/374/386/', '3', '150206', 'BYEBKQ', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('393', '九原区', '九原', '999', '6', '', '386', '/0/374/386/', '3', '150207', 'JYQ', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('394', '土默特右旗', '土默特右旗', '999', '15', '', '386', '/0/374/386/', '3', '150221', 'TMTYQ', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('395', '固阳县', '固阳', '999', '6', '', '386', '/0/374/386/', '3', '150222', 'GYX', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('396', '达尔罕茂明安联合旗', '达茂旗', '999', '9', '', '386', '/0/374/386/', '3', '150223', 'DEIMMALIQ', '1', '1', '2017-03-09 11:53:09', '16', '2018-07-17 10:44:23');
INSERT INTO `god_area` VALUES ('397', '乌海市', '乌海', '999', '6', '', '374', '/0/374/', '2', '150300', 'WIS', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('399', '海勃湾区', '海勃湾', '999', '9', '', '397', '/0/374/397/', '3', '150302', 'IBWQ', '1', '1', '2017-03-09 11:53:09', '1', '2017-03-09 11:53:09');
INSERT INTO `god_area` VALUES ('400', '海南区', '海南区', '999', '9', '', '397', '/0/374/397/', '3', '150303', 'INQ', '1', '1', '2017-03-09 11:53:10', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('401', '乌达区', '乌达', '999', '6', '', '397', '/0/374/397/', '3', '150304', 'WDQ', '1', '1', '2017-03-09 11:53:10', '1', '2017-03-09 11:53:10');
INSERT INTO `god_area` VALUES ('402', '赤峰市', '赤峰', '999', '6', '', '374', '/0/374/', '2', '150400', 'CFS', '1', '1', '2017-03-09 11:53:10', '1', '2017-03-09 11:53:10');
INSERT INTO `god_area` VALUES ('404', '红山区', '红山', '999', '6', '', '402', '/0/374/402/', '3', '150402', 'ISQ', '1', '1', '2017-03-09 11:53:10', '1', '2017-03-09 11:53:10');
INSERT INTO `god_area` VALUES ('405', '元宝山区', '元宝山', '999', '9', '', '402', '/0/374/402/', '3', '150403', 'YBSQ', '1', '1', '2017-03-09 11:53:10', '1', '2017-03-09 11:53:10');
INSERT INTO `god_area` VALUES ('406', '松山区', '松山', '999', '6', '', '402', '/0/374/402/', '3', '150404', 'SSQ', '1', '1', '2017-03-09 11:53:10', '1', '2017-03-09 11:53:10');
INSERT INTO `god_area` VALUES ('407', '阿鲁科尔沁旗', '阿鲁科尔沁旗', '999', '18', '', '402', '/0/374/402/', '3', '150421', 'ALKEQQ', '1', '1', '2017-03-09 11:53:10', '1', '2017-03-09 11:53:10');
INSERT INTO `god_area` VALUES ('408', '巴林左旗', '巴林左旗', '999', '12', '', '402', '/0/374/402/', '3', '150422', 'BLZQ', '1', '1', '2017-03-09 11:53:10', '1', '2017-03-09 11:53:10');
INSERT INTO `god_area` VALUES ('409', '巴林右旗', '巴林右旗', '999', '12', '', '402', '/0/374/402/', '3', '150423', 'BLYQ', '1', '1', '2017-03-09 11:53:10', '1', '2017-03-09 11:53:10');
INSERT INTO `god_area` VALUES ('410', '林西县', '林西', '999', '6', '', '402', '/0/374/402/', '3', '150424', 'LXX', '1', '1', '2017-03-09 11:53:10', '1', '2017-03-09 11:53:10');
INSERT INTO `god_area` VALUES ('411', '克什克腾旗', '克什克腾旗', '999', '15', '', '402', '/0/374/402/', '3', '150425', 'KSKTQ', '1', '1', '2017-03-09 11:53:10', '1', '2017-03-09 11:53:10');
INSERT INTO `god_area` VALUES ('412', '翁牛特旗', '翁牛特旗', '999', '12', '', '402', '/0/374/402/', '3', '150426', 'WNTQ', '1', '1', '2017-03-09 11:53:10', '1', '2017-03-09 11:53:10');
INSERT INTO `god_area` VALUES ('413', '喀喇沁旗', '喀喇沁旗', '999', '12', '', '402', '/0/374/402/', '3', '150428', 'KLQQ', '1', '1', '2017-03-09 11:53:10', '1', '2017-03-09 11:53:10');
INSERT INTO `god_area` VALUES ('414', '宁城县', '宁城', '999', '6', '', '402', '/0/374/402/', '3', '150429', 'NCX', '1', '1', '2017-03-09 11:53:10', '1', '2017-03-09 11:53:10');
INSERT INTO `god_area` VALUES ('415', '敖汉旗', '敖汉旗', '999', '9', '', '402', '/0/374/402/', '3', '150430', 'AIQ', '1', '1', '2017-03-09 11:53:10', '1', '2017-03-09 11:53:10');
INSERT INTO `god_area` VALUES ('416', '通辽市', '通辽', '999', '6', '', '374', '/0/374/', '2', '150500', 'TLS', '1', '1', '2017-03-09 11:53:10', '1', '2017-03-09 11:53:10');
INSERT INTO `god_area` VALUES ('418', '科尔沁区', '科尔沁区', '999', '12', '', '416', '/0/374/416/', '3', '150502', 'KEQQ', '1', '1', '2017-03-09 11:53:10', '1', '2017-03-09 11:53:10');
INSERT INTO `god_area` VALUES ('419', '科尔沁左翼中旗', '科尔沁左翼中旗', '999', '21', '', '416', '/0/374/416/', '3', '150521', 'KEQZYZQ', '1', '1', '2017-03-09 11:53:10', '1', '2017-03-09 11:53:10');
INSERT INTO `god_area` VALUES ('420', '科尔沁左翼后旗', '科尔沁左翼后旗', '999', '21', '', '416', '/0/374/416/', '3', '150522', 'KEQZYIQ', '1', '1', '2017-03-09 11:53:10', '1', '2017-03-09 11:53:10');
INSERT INTO `god_area` VALUES ('421', '开鲁县', '开鲁', '999', '6', '', '416', '/0/374/416/', '3', '150523', 'KLX', '1', '1', '2017-03-09 11:53:10', '1', '2017-03-09 11:53:10');
INSERT INTO `god_area` VALUES ('422', '库伦旗', '库伦旗', '999', '9', '', '416', '/0/374/416/', '3', '150524', 'KLQ', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('423', '奈曼旗', '奈曼旗', '999', '9', '', '416', '/0/374/416/', '3', '150525', 'NMQ', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('424', '扎鲁特旗', '扎鲁特旗', '999', '12', '', '416', '/0/374/416/', '3', '150526', 'ZLTQ', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('425', '霍林郭勒市', '霍林郭勒', '999', '12', '', '416', '/0/374/416/', '3', '150581', 'ILGLS', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('426', '鄂尔多斯市', '鄂尔多斯', '999', '12', '', '374', '/0/374/', '2', '150600', 'EEDSS', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('428', '东胜区', '东胜', '999', '6', '', '426', '/0/374/426/', '3', '150602', 'DSQ', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('429', '达拉特旗', '达拉特旗', '999', '12', '', '426', '/0/374/426/', '3', '150621', 'DLTQ', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('430', '准格尔旗', '准格尔旗', '999', '12', '', '426', '/0/374/426/', '3', '150622', 'ZGEQ', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('431', '鄂托克前旗', '鄂托克前旗', '999', '15', '', '426', '/0/374/426/', '3', '150623', 'ETKQQ', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('432', '鄂托克旗', '鄂托克旗', '999', '12', '', '426', '/0/374/426/', '3', '150624', 'ETKQ', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('433', '杭锦旗', '杭锦旗', '999', '9', '', '426', '/0/374/426/', '3', '150625', 'IJQ', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('434', '乌审旗', '乌审旗', '999', '9', '', '426', '/0/374/426/', '3', '150626', 'WSQ', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('435', '伊金霍洛旗', '伊金霍洛旗', '999', '15', '', '426', '/0/374/426/', '3', '150627', 'YJILQ', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('436', '呼伦贝尔市', '呼伦贝尔', '999', '12', '', '374', '/0/374/', '2', '150700', 'ILBES', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('438', '海拉尔区', '海拉尔', '999', '9', '', '436', '/0/374/436/', '3', '150702', 'ILEQ', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('439', '扎赉诺尔区', '扎赉诺尔', '999', '12', '', '436', '/0/374/436/', '3', '150703', 'ZNEQ', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('440', '阿荣旗', '阿荣旗', '999', '9', '', '436', '/0/374/436/', '3', '150721', 'ARQ', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('441', '莫力达瓦达斡尔族自治旗', '莫旗', '999', '6', '', '436', '/0/374/436/', '3', '150722', 'MLDWDWEZZZQ', '1', '1', '2017-03-09 11:53:11', '16', '2018-07-17 10:22:36');
INSERT INTO `god_area` VALUES ('442', '鄂伦春自治旗', '鄂伦春自治旗', '999', '18', '', '436', '/0/374/436/', '3', '150723', 'ELCZZQ', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('443', '鄂温克族自治旗', '鄂温克族自治旗', '999', '21', '', '436', '/0/374/436/', '3', '150724', 'EWKZZZQ', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('444', '陈巴尔虎旗', '陈巴尔虎旗', '999', '15', '', '436', '/0/374/436/', '3', '150725', 'CBEIQ', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('445', '新巴尔虎左旗', '新巴尔虎左旗', '999', '18', '', '436', '/0/374/436/', '3', '150726', 'XBEIZQ', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('446', '新巴尔虎右旗', '新巴尔虎右旗', '999', '18', '', '436', '/0/374/436/', '3', '150727', 'XBEIYQ', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('447', '满洲里市', '满洲里', '999', '9', '', '436', '/0/374/436/', '3', '150781', 'MZLS', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('448', '牙克石市', '牙克石', '999', '9', '', '436', '/0/374/436/', '3', '150782', 'YKSS', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('449', '扎兰屯市', '扎兰屯', '999', '9', '', '436', '/0/374/436/', '3', '150783', 'ZLTS', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('450', '额尔古纳市', '额尔古纳', '999', '12', '', '436', '/0/374/436/', '3', '150784', 'EEGNS', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('451', '根河市', '根河', '999', '6', '', '436', '/0/374/436/', '3', '150785', 'GIS', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('452', '巴彦淖尔市', '巴彦淖尔', '999', '12', '', '374', '/0/374/', '2', '150800', 'BYNES', '1', '1', '2017-03-09 11:53:11', '1', '2017-03-09 11:53:11');
INSERT INTO `god_area` VALUES ('454', '临河区', '临河', '999', '6', '', '452', '/0/374/452/', '3', '150802', 'LIQ', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('455', '五原县', '五原', '999', '6', '', '452', '/0/374/452/', '3', '150821', 'WYX', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('456', '磴口县', '磴口', '999', '6', '', '452', '/0/374/452/', '3', '150822', 'KX', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('457', '乌拉特前旗', '乌拉特前旗', '999', '15', '', '452', '/0/374/452/', '3', '150823', 'WLTQQ', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('458', '乌拉特中旗', '乌拉特中旗', '999', '15', '', '452', '/0/374/452/', '3', '150824', 'WLTZQ', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('459', '乌拉特后旗', '乌拉特后旗', '999', '15', '', '452', '/0/374/452/', '3', '150825', 'WLTIQ', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('460', '杭锦后旗', '杭锦后旗', '999', '12', '', '452', '/0/374/452/', '3', '150826', 'IJIQ', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('461', '乌兰察布市', '乌兰察布', '999', '12', '', '374', '/0/374/', '2', '150900', 'WLCBS', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('463', '集宁区', '集宁', '999', '6', '', '461', '/0/374/461/', '3', '150902', 'JNQ', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('464', '卓资县', '卓资', '999', '6', '', '461', '/0/374/461/', '3', '150921', 'ZZX', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('465', '化德县', '化德', '999', '6', '', '461', '/0/374/461/', '3', '150922', 'IDX', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('466', '商都县', '商都', '999', '6', '', '461', '/0/374/461/', '3', '150923', 'SDX', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('467', '兴和县', '兴和', '999', '6', '', '461', '/0/374/461/', '3', '150924', 'XIX', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('468', '凉城县', '凉城', '999', '6', '', '461', '/0/374/461/', '3', '150925', 'LCX', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('469', '察哈尔右翼前旗', '察哈尔右翼前旗', '999', '21', '', '461', '/0/374/461/', '3', '150926', 'CIEYYQQ', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('470', '察哈尔右翼中旗', '察哈尔右翼中旗', '999', '21', '', '461', '/0/374/461/', '3', '150927', 'CIEYYZQ', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('471', '察哈尔右翼后旗', '察哈尔右翼后旗', '999', '21', '', '461', '/0/374/461/', '3', '150928', 'CIEYYIQ', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('472', '四子王旗', '四子王旗', '999', '12', '', '461', '/0/374/461/', '3', '150929', 'SZWQ', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('473', '丰镇市', '丰镇', '999', '6', '', '461', '/0/374/461/', '3', '150981', 'FZS', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('474', '兴安盟', '兴安盟', '999', '9', '', '374', '/0/374/', '2', '152200', 'XAM', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('475', '乌兰浩特市', '乌兰浩特', '999', '12', '', '474', '/0/374/474/', '3', '152201', 'WLITS', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('476', '阿尔山市', '阿尔山', '999', '9', '', '474', '/0/374/474/', '3', '152202', 'AESS', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('477', '科尔沁右翼前旗', '科尔沁右翼前旗', '999', '21', '', '474', '/0/374/474/', '3', '152221', 'KEQYYQQ', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('478', '科尔沁右翼中旗', '科尔沁右翼中旗', '999', '21', '', '474', '/0/374/474/', '3', '152222', 'KEQYYZQ', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('479', '扎赉特旗', '扎赉特旗', '999', '12', '', '474', '/0/374/474/', '3', '152223', 'ZTQ', '1', '1', '2017-03-09 11:53:12', '1', '2017-03-09 11:53:12');
INSERT INTO `god_area` VALUES ('480', '突泉县', '突泉', '999', '6', '', '474', '/0/374/474/', '3', '152224', 'TQX', '1', '1', '2017-03-09 11:53:13', '1', '2017-03-09 11:53:13');
INSERT INTO `god_area` VALUES ('481', '锡林郭勒盟', '锡林郭勒盟', '999', '15', '', '374', '/0/374/', '2', '152500', 'XLGLM', '1', '1', '2017-03-09 11:53:13', '1', '2017-03-09 11:53:13');
INSERT INTO `god_area` VALUES ('482', '二连浩特市', '二连浩特', '999', '12', '', '481', '/0/374/481/', '3', '152501', 'ELITS', '1', '1', '2017-03-09 11:53:13', '1', '2017-03-09 11:53:13');
INSERT INTO `god_area` VALUES ('483', '锡林浩特市', '锡林浩特', '999', '12', '', '481', '/0/374/481/', '3', '152502', 'XLITS', '1', '1', '2017-03-09 11:53:13', '1', '2017-03-09 11:53:13');
INSERT INTO `god_area` VALUES ('484', '阿巴嘎旗', '阿巴嘎旗', '999', '12', '', '481', '/0/374/481/', '3', '152522', 'ABGQ', '1', '1', '2017-03-09 11:53:13', '1', '2017-03-09 11:53:13');
INSERT INTO `god_area` VALUES ('485', '苏尼特左旗', '苏尼特左旗', '999', '15', '', '481', '/0/374/481/', '3', '152523', 'SNTZQ', '1', '1', '2017-03-09 11:53:13', '1', '2017-03-09 11:53:13');
INSERT INTO `god_area` VALUES ('486', '苏尼特右旗', '苏尼特右旗', '999', '15', '', '481', '/0/374/481/', '3', '152524', 'SNTYQ', '1', '1', '2017-03-09 11:53:13', '1', '2017-03-09 11:53:13');
INSERT INTO `god_area` VALUES ('487', '东乌珠穆沁旗', '东乌珠穆沁旗', '999', '18', '', '481', '/0/374/481/', '3', '152525', 'DWZMQQ', '1', '1', '2017-03-09 11:53:13', '1', '2017-03-09 11:53:13');
INSERT INTO `god_area` VALUES ('488', '西乌珠穆沁旗', '西乌珠穆沁旗', '999', '18', '', '481', '/0/374/481/', '3', '152526', 'XWZMQQ', '1', '1', '2017-03-09 11:53:13', '1', '2017-03-09 11:53:13');
INSERT INTO `god_area` VALUES ('489', '太仆寺旗', '太仆寺旗', '999', '12', '', '481', '/0/374/481/', '3', '152527', 'TPSQ', '1', '1', '2017-03-09 11:53:13', '1', '2017-03-09 11:53:13');
INSERT INTO `god_area` VALUES ('490', '镶黄旗', '镶黄旗', '999', '9', '', '481', '/0/374/481/', '3', '152528', 'XIQ', '1', '1', '2017-03-09 11:53:13', '1', '2017-03-09 11:53:13');
INSERT INTO `god_area` VALUES ('491', '正镶白旗', '正镶白旗', '999', '12', '', '481', '/0/374/481/', '3', '152529', 'ZXBQ', '1', '1', '2017-03-09 11:53:13', '1', '2017-03-09 11:53:13');
INSERT INTO `god_area` VALUES ('492', '正蓝旗', '正蓝旗', '999', '9', '', '481', '/0/374/481/', '3', '152530', 'ZLQ', '1', '1', '2017-03-09 11:53:13', '1', '2017-03-09 11:53:13');
INSERT INTO `god_area` VALUES ('493', '多伦县', '多伦', '999', '6', '', '481', '/0/374/481/', '3', '152531', 'DLX', '1', '1', '2017-03-09 11:53:13', '1', '2017-03-09 11:53:13');
INSERT INTO `god_area` VALUES ('494', '阿拉善盟', '阿拉善盟', '999', '12', '', '374', '/0/374/', '2', '152900', 'ALSM', '1', '1', '2017-03-09 11:53:13', '1', '2017-03-09 11:53:13');
INSERT INTO `god_area` VALUES ('495', '阿拉善左旗', '阿拉善左旗', '999', '15', '', '494', '/0/374/494/', '3', '152921', 'ALSZQ', '1', '1', '2017-03-09 11:53:13', '1', '2017-03-09 11:53:13');
INSERT INTO `god_area` VALUES ('496', '阿拉善右旗', '阿拉善右旗', '999', '15', '', '494', '/0/374/494/', '3', '152922', 'ALSYQ', '1', '1', '2017-03-09 11:53:13', '1', '2017-03-09 11:53:13');
INSERT INTO `god_area` VALUES ('497', '额济纳旗', '额济纳旗', '999', '12', '', '494', '/0/374/494/', '3', '152923', 'EJNQ', '1', '1', '2017-03-09 11:53:13', '1', '2017-03-09 11:53:13');
INSERT INTO `god_area` VALUES ('498', '辽宁省', '辽宁', '999', '6', '', '0', '/0/', '1', '210000', 'LNS', '1', '1', '2017-03-09 11:53:13', '1', '2017-03-09 11:53:13');
INSERT INTO `god_area` VALUES ('499', '沈阳市', '沈阳', '999', '6', '', '498', '/0/498/', '2', '210100', 'SYS', '1', '1', '2017-03-09 11:53:13', '1', '2017-03-09 11:53:13');
INSERT INTO `god_area` VALUES ('501', '和平区', '和平区', '999', '9', '', '499', '/0/498/499/', '3', '210102', 'IPQ', '1', '1', '2017-03-09 11:53:14', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('502', '沈河区', '沈河', '999', '6', '', '499', '/0/498/499/', '3', '210103', 'SIQ', '1', '1', '2017-03-09 11:53:14', '1', '2017-03-09 11:53:14');
INSERT INTO `god_area` VALUES ('503', '大东区', '大东区', '999', '6', '', '499', '/0/498/499/', '3', '210104', 'DDQ', '1', '1', '2017-03-09 11:53:14', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('504', '皇姑区', '皇姑区', '999', '9', '', '499', '/0/498/499/', '3', '210105', 'IGQ', '1', '1', '2017-03-09 11:53:14', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('505', '铁西区', '铁西区', '999', '6', '', '499', '/0/498/499/', '3', '210106', 'TXQ', '1', '1', '2017-03-09 11:53:14', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('506', '苏家屯区', '苏家屯', '999', '9', '', '499', '/0/498/499/', '3', '210111', 'SJTQ', '1', '1', '2017-03-09 11:53:14', '1', '2017-03-09 11:53:14');
INSERT INTO `god_area` VALUES ('507', '浑南区', '浑南区', '999', '6', '', '499', '/0/498/499/', '3', '210112', 'INQ', '1', '1', '2017-03-09 11:53:14', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('508', '沈北新区', '沈北新区', '999', '12', '', '499', '/0/498/499/', '3', '210113', 'SBXQ', '1', '1', '2017-03-09 11:53:14', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('509', '于洪区', '于洪', '999', '6', '', '499', '/0/498/499/', '3', '210114', 'YIQ', '1', '1', '2017-03-09 11:53:14', '1', '2017-03-09 11:53:14');
INSERT INTO `god_area` VALUES ('510', '辽中区', '辽中', '999', '6', '', '499', '/0/498/499/', '3', '210122', 'LZX', '1', '1', '2017-03-09 11:53:14', '12', '2018-06-29 09:20:46');
INSERT INTO `god_area` VALUES ('511', '康平县', '康平', '999', '6', '', '499', '/0/498/499/', '3', '210123', 'KPX', '1', '1', '2017-03-09 11:53:14', '1', '2017-03-09 11:53:14');
INSERT INTO `god_area` VALUES ('512', '法库县', '法库', '999', '6', '', '499', '/0/498/499/', '3', '210124', 'FKX', '1', '1', '2017-03-09 11:53:14', '1', '2017-03-09 11:53:14');
INSERT INTO `god_area` VALUES ('513', '新民市', '新民市', '999', '9', '', '499', '/0/498/499/', '3', '210181', 'XMS', '1', '1', '2017-03-09 11:53:14', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('514', '大连市', '大连', '999', '6', '', '498', '/0/498/', '2', '210200', 'DLS', '1', '1', '2017-03-09 11:53:14', '1', '2017-03-09 11:53:14');
INSERT INTO `god_area` VALUES ('516', '中山区', '中山区', '999', '9', '', '514', '/0/498/514/', '3', '210202', 'ZSQ', '1', '1', '2017-03-09 11:53:14', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('517', '西岗区', '西岗', '999', '6', '', '514', '/0/498/514/', '3', '210203', 'XGQ', '1', '1', '2017-03-09 11:53:14', '1', '2017-03-09 11:53:14');
INSERT INTO `god_area` VALUES ('518', '沙河口区', '沙河口', '999', '9', '', '514', '/0/498/514/', '3', '210204', 'SIKQ', '1', '1', '2017-03-09 11:53:14', '1', '2017-03-09 11:53:14');
INSERT INTO `god_area` VALUES ('519', '甘井子区', '甘井子', '999', '9', '', '514', '/0/498/514/', '3', '210211', 'GJZQ', '1', '1', '2017-03-09 11:53:14', '1', '2017-03-09 11:53:14');
INSERT INTO `god_area` VALUES ('520', '旅顺口区', '旅顺口', '999', '9', '', '514', '/0/498/514/', '3', '210212', 'LSKQ', '1', '1', '2017-03-09 11:53:14', '1', '2017-03-09 11:53:14');
INSERT INTO `god_area` VALUES ('521', '金州区', '金州', '999', '6', '', '514', '/0/498/514/', '3', '210213', 'JZQ', '1', '1', '2017-03-09 11:53:14', '1', '2017-03-09 11:53:14');
INSERT INTO `god_area` VALUES ('522', '长海县', '长海', '999', '6', '', '514', '/0/498/514/', '3', '210224', 'CIX', '1', '1', '2017-03-09 11:53:14', '1', '2017-03-09 11:53:14');
INSERT INTO `god_area` VALUES ('523', '瓦房店市', '瓦房店', '999', '9', '', '514', '/0/498/514/', '3', '210281', 'WFDS', '1', '1', '2017-03-09 11:53:14', '1', '2017-03-09 11:53:14');
INSERT INTO `god_area` VALUES ('524', '普兰店区', '普兰店', '999', '9', '', '514', '/0/498/514/', '3', '210282', 'PLDS', '1', '1', '2017-03-09 11:53:14', '16', '2018-07-03 20:55:46');
INSERT INTO `god_area` VALUES ('525', '庄河市', '庄河', '999', '6', '', '514', '/0/498/514/', '3', '210283', 'ZIS', '1', '1', '2017-03-09 11:53:14', '1', '2017-03-09 11:53:14');
INSERT INTO `god_area` VALUES ('526', '鞍山市', '鞍山', '999', '6', '', '498', '/0/498/', '2', '210300', 'ASS', '1', '1', '2017-03-09 11:53:14', '1', '2017-03-09 11:53:14');
INSERT INTO `god_area` VALUES ('528', '铁东区', '铁东区', '999', '6', '', '526', '/0/498/526/', '3', '210302', 'TDQ', '1', '1', '2017-03-09 11:53:15', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('529', '铁西区', '铁西区', '999', '6', '', '526', '/0/498/526/', '3', '210303', 'TXQ', '1', '1', '2017-03-09 11:53:15', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('530', '立山区', '立山', '999', '6', '', '526', '/0/498/526/', '3', '210304', 'LSQ', '1', '1', '2017-03-09 11:53:15', '1', '2017-03-09 11:53:15');
INSERT INTO `god_area` VALUES ('531', '千山区', '千山区', '999', '9', '', '526', '/0/498/526/', '3', '210311', 'QSQ', '1', '1', '2017-03-09 11:53:15', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('532', '台安县', '台安', '999', '6', '', '526', '/0/498/526/', '3', '210321', 'TAX', '1', '1', '2017-03-09 11:53:15', '1', '2017-03-09 11:53:15');
INSERT INTO `god_area` VALUES ('533', '岫岩满族自治县', '岫岩', '999', '6', '', '526', '/0/498/526/', '3', '210323', 'YMZZZX', '1', '1', '2017-03-09 11:53:15', '1', '2017-03-09 11:53:15');
INSERT INTO `god_area` VALUES ('534', '海城市', '海城', '999', '6', '', '526', '/0/498/526/', '3', '210381', 'ICS', '1', '1', '2017-03-09 11:53:15', '1', '2017-03-09 11:53:15');
INSERT INTO `god_area` VALUES ('535', '抚顺市', '抚顺', '999', '6', '', '498', '/0/498/', '2', '210400', 'FSS', '1', '1', '2017-03-09 11:53:15', '1', '2017-03-09 11:53:15');
INSERT INTO `god_area` VALUES ('537', '新抚区', '新抚', '999', '6', '', '535', '/0/498/535/', '3', '210402', 'XFQ', '1', '1', '2017-03-09 11:53:15', '1', '2017-03-09 11:53:15');
INSERT INTO `god_area` VALUES ('538', '东洲区', '东洲', '999', '6', '', '535', '/0/498/535/', '3', '210403', 'DZQ', '1', '1', '2017-03-09 11:53:15', '1', '2017-03-09 11:53:15');
INSERT INTO `god_area` VALUES ('539', '望花区', '望花', '999', '6', '', '535', '/0/498/535/', '3', '210404', 'WIQ', '1', '1', '2017-03-09 11:53:15', '1', '2017-03-09 11:53:15');
INSERT INTO `god_area` VALUES ('540', '顺城区', '顺城区', '999', '9', '', '535', '/0/498/535/', '3', '210411', 'SCQ', '1', '1', '2017-03-09 11:53:15', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('541', '抚顺县', '抚顺县', '999', '9', '', '535', '/0/498/535/', '3', '210421', 'FSX', '1', '1', '2017-03-09 11:53:15', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('542', '新宾满族自治县', '新宾', '999', '6', '', '535', '/0/498/535/', '3', '210422', 'XBMZZZX', '1', '1', '2017-03-09 11:53:15', '1', '2017-03-09 11:53:15');
INSERT INTO `god_area` VALUES ('543', '清原满族自治县', '清原', '999', '6', '', '535', '/0/498/535/', '3', '210423', 'QYMZZZX', '1', '1', '2017-03-09 11:53:15', '1', '2017-03-09 11:53:15');
INSERT INTO `god_area` VALUES ('544', '本溪市', '本溪', '999', '6', '', '498', '/0/498/', '2', '210500', 'BXS', '1', '1', '2017-03-09 11:53:15', '1', '2017-03-09 11:53:15');
INSERT INTO `god_area` VALUES ('546', '平山区', '平山', '999', '6', '', '544', '/0/498/544/', '3', '210502', 'PSQ', '1', '1', '2017-03-09 11:53:15', '1', '2017-03-09 11:53:15');
INSERT INTO `god_area` VALUES ('547', '溪湖区', '溪湖', '999', '6', '', '544', '/0/498/544/', '3', '210503', 'XIQ', '1', '1', '2017-03-09 11:53:16', '1', '2017-03-09 11:53:16');
INSERT INTO `god_area` VALUES ('548', '明山区', '明山', '999', '6', '', '544', '/0/498/544/', '3', '210504', 'MSQ', '1', '1', '2017-03-09 11:53:16', '1', '2017-03-09 11:53:16');
INSERT INTO `god_area` VALUES ('549', '南芬区', '南芬', '999', '6', '', '544', '/0/498/544/', '3', '210505', 'NFQ', '1', '1', '2017-03-09 11:53:16', '1', '2017-03-09 11:53:16');
INSERT INTO `god_area` VALUES ('550', '本溪满族自治县', '本溪满族自治县', '999', '21', '', '544', '/0/498/544/', '3', '210521', 'BXMZZZX', '1', '88', '2017-03-09 11:53:16', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('551', '桓仁满族自治县', '桓仁', '999', '6', '', '544', '/0/498/544/', '3', '210522', 'IRMZZZX', '1', '1', '2017-03-09 11:53:16', '1', '2017-03-09 11:53:16');
INSERT INTO `god_area` VALUES ('552', '丹东市', '丹东', '999', '6', '', '498', '/0/498/', '2', '210600', 'DDS', '1', '1', '2017-03-09 11:53:16', '1', '2017-03-09 11:53:16');
INSERT INTO `god_area` VALUES ('554', '元宝区', '元宝', '999', '6', '', '552', '/0/498/552/', '3', '210602', 'YBQ', '1', '1', '2017-03-09 11:53:16', '1', '2017-03-09 11:53:16');
INSERT INTO `god_area` VALUES ('555', '振兴区', '振兴', '999', '6', '', '552', '/0/498/552/', '3', '210603', 'ZXQ', '1', '1', '2017-03-09 11:53:16', '1', '2017-03-09 11:53:16');
INSERT INTO `god_area` VALUES ('556', '振安区', '振安', '999', '6', '', '552', '/0/498/552/', '3', '210604', 'ZAQ', '1', '1', '2017-03-09 11:53:16', '1', '2017-03-09 11:53:16');
INSERT INTO `god_area` VALUES ('557', '宽甸满族自治县', '宽甸', '999', '6', '', '552', '/0/498/552/', '3', '210624', 'KDMZZZX', '1', '1', '2017-03-09 11:53:16', '1', '2017-03-09 11:53:16');
INSERT INTO `god_area` VALUES ('558', '东港市', '东港', '999', '6', '', '552', '/0/498/552/', '3', '210681', 'DGS', '1', '1', '2017-03-09 11:53:16', '1', '2017-03-09 11:53:16');
INSERT INTO `god_area` VALUES ('559', '凤城市', '凤城', '999', '6', '', '552', '/0/498/552/', '3', '210682', 'FCS', '1', '1', '2017-03-09 11:53:16', '1', '2017-03-09 11:53:16');
INSERT INTO `god_area` VALUES ('560', '锦州市', '锦州', '999', '6', '', '498', '/0/498/', '2', '210700', 'JZS', '1', '1', '2017-03-09 11:53:16', '1', '2017-03-09 11:53:16');
INSERT INTO `god_area` VALUES ('562', '古塔区', '古塔', '999', '6', '', '560', '/0/498/560/', '3', '210702', 'GTQ', '1', '1', '2017-03-09 11:53:16', '1', '2017-03-09 11:53:16');
INSERT INTO `god_area` VALUES ('563', '凌河区', '凌河', '999', '6', '', '560', '/0/498/560/', '3', '210703', 'LIQ', '1', '1', '2017-03-09 11:53:16', '1', '2017-03-09 11:53:16');
INSERT INTO `god_area` VALUES ('564', '太和区', '太和', '999', '6', '', '560', '/0/498/560/', '3', '210711', 'TIQ', '1', '1', '2017-03-09 11:53:16', '1', '2017-03-09 11:53:16');
INSERT INTO `god_area` VALUES ('565', '黑山县', '黑山', '999', '6', '', '560', '/0/498/560/', '3', '210726', 'ISX', '1', '1', '2017-03-09 11:53:16', '1', '2017-03-09 11:53:16');
INSERT INTO `god_area` VALUES ('566', '义县', '义县', '999', '6', '', '560', '/0/498/560/', '3', '210727', 'YX', '1', '1', '2017-03-09 11:53:16', '1', '2017-03-09 11:53:16');
INSERT INTO `god_area` VALUES ('567', '凌海市', '凌海', '999', '6', '', '560', '/0/498/560/', '3', '210781', 'LIS', '1', '1', '2017-03-09 11:53:16', '1', '2017-03-09 11:53:16');
INSERT INTO `god_area` VALUES ('568', '北镇市', '北镇', '999', '6', '', '560', '/0/498/560/', '3', '210782', 'BZS', '1', '1', '2017-03-09 11:53:17', '1', '2017-03-09 11:53:17');
INSERT INTO `god_area` VALUES ('569', '营口市', '营口', '999', '6', '', '498', '/0/498/', '2', '210800', 'YKS', '1', '1', '2017-03-09 11:53:17', '1', '2017-03-09 11:53:17');
INSERT INTO `god_area` VALUES ('571', '站前区', '站前', '999', '6', '', '569', '/0/498/569/', '3', '210802', 'ZQQ', '1', '1', '2017-03-09 11:53:17', '1', '2017-03-09 11:53:17');
INSERT INTO `god_area` VALUES ('572', '西市区', '西市区', '999', '9', '', '569', '/0/498/569/', '3', '210803', 'XSQ', '1', '1', '2017-03-09 11:53:17', '1', '2017-03-09 11:53:17');
INSERT INTO `god_area` VALUES ('573', '鲅鱼圈区', '鲅鱼圈', '999', '9', '', '569', '/0/498/569/', '3', '210804', 'YQQ', '1', '1', '2017-03-09 11:53:17', '1', '2017-03-09 11:53:17');
INSERT INTO `god_area` VALUES ('574', '老边区', '老边', '999', '6', '', '569', '/0/498/569/', '3', '210811', 'LBQ', '1', '1', '2017-03-09 11:53:17', '1', '2017-03-09 11:53:17');
INSERT INTO `god_area` VALUES ('575', '盖州市', '盖州', '999', '6', '', '569', '/0/498/569/', '3', '210881', 'GZS', '1', '1', '2017-03-09 11:53:17', '1', '2017-03-09 11:53:17');
INSERT INTO `god_area` VALUES ('576', '大石桥市', '大石桥', '999', '9', '', '569', '/0/498/569/', '3', '210882', 'DSQS', '1', '1', '2017-03-09 11:53:17', '1', '2017-03-09 11:53:17');
INSERT INTO `god_area` VALUES ('577', '阜新市', '阜新', '999', '6', '', '498', '/0/498/', '2', '210900', 'FXS', '1', '1', '2017-03-09 11:53:17', '1', '2017-03-09 11:53:17');
INSERT INTO `god_area` VALUES ('579', '海州区', '海州', '999', '6', '', '577', '/0/498/577/', '3', '210902', 'IZQ', '1', '1', '2017-03-09 11:53:17', '1', '2017-03-09 11:53:17');
INSERT INTO `god_area` VALUES ('580', '新邱区', '新邱', '999', '6', '', '577', '/0/498/577/', '3', '210903', 'XQQ', '1', '1', '2017-03-09 11:53:17', '1', '2017-03-09 11:53:17');
INSERT INTO `god_area` VALUES ('581', '太平区', '太平', '999', '6', '', '577', '/0/498/577/', '3', '210904', 'TPQ', '1', '1', '2017-03-09 11:53:17', '1', '2017-03-09 11:53:17');
INSERT INTO `god_area` VALUES ('582', '清河门区', '清河门', '999', '9', '', '577', '/0/498/577/', '3', '210905', 'QIMQ', '1', '1', '2017-03-09 11:53:17', '1', '2017-03-09 11:53:17');
INSERT INTO `god_area` VALUES ('583', '细河区', '细河', '999', '6', '', '577', '/0/498/577/', '3', '210911', 'XIQ', '1', '1', '2017-03-09 11:53:17', '1', '2017-03-09 11:53:17');
INSERT INTO `god_area` VALUES ('584', '阜新蒙古族自治县', '阜新县', '999', '9', '', '577', '/0/498/577/', '3', '210921', 'FXMGZZZX', '1', '1', '2017-03-09 11:53:17', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('585', '彰武县', '彰武', '999', '6', '', '577', '/0/498/577/', '3', '210922', 'ZWX', '1', '1', '2017-03-09 11:53:17', '1', '2017-03-09 11:53:17');
INSERT INTO `god_area` VALUES ('586', '辽阳市', '辽阳', '999', '6', '', '498', '/0/498/', '2', '211000', 'LYS', '1', '1', '2017-03-09 11:53:18', '1', '2017-03-09 11:53:18');
INSERT INTO `god_area` VALUES ('588', '白塔区', '白塔', '999', '6', '', '586', '/0/498/586/', '3', '211002', 'BTQ', '1', '1', '2017-03-09 11:53:18', '1', '2017-03-09 11:53:18');
INSERT INTO `god_area` VALUES ('589', '文圣区', '文圣', '999', '6', '', '586', '/0/498/586/', '3', '211003', 'WSQ', '1', '1', '2017-03-09 11:53:18', '1', '2017-03-09 11:53:18');
INSERT INTO `god_area` VALUES ('590', '宏伟区', '宏伟', '999', '6', '', '586', '/0/498/586/', '3', '211004', 'IWQ', '1', '1', '2017-03-09 11:53:18', '1', '2017-03-09 11:53:18');
INSERT INTO `god_area` VALUES ('591', '弓长岭区', '弓长岭', '999', '9', '', '586', '/0/498/586/', '3', '211005', 'GCLQ', '1', '1', '2017-03-09 11:53:18', '1', '2017-03-09 11:53:18');
INSERT INTO `god_area` VALUES ('592', '太子河区', '太子河', '999', '9', '', '586', '/0/498/586/', '3', '211011', 'TZIQ', '1', '1', '2017-03-09 11:53:18', '1', '2017-03-09 11:53:18');
INSERT INTO `god_area` VALUES ('593', '辽阳县', '辽阳县', '999', '9', '', '586', '/0/498/586/', '3', '211021', 'LYX', '1', '1', '2017-03-09 11:53:18', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('594', '灯塔市', '灯塔', '999', '6', '', '586', '/0/498/586/', '3', '211081', 'DTS', '1', '1', '2017-03-09 11:53:18', '1', '2017-03-09 11:53:18');
INSERT INTO `god_area` VALUES ('595', '盘锦市', '盘锦', '999', '6', '', '586', '/0/498/586/', '3', '211100', 'PJS', '0', '88', '2017-03-09 11:53:18', '1', '2017-03-09 11:53:18');
INSERT INTO `god_area` VALUES ('597', '双台子区', '双台子', '999', '9', '', '586', '/0/498/586/', '3', '211102', 'STZQ', '0', '88', '2017-03-09 11:53:18', '1', '2017-03-09 11:53:18');
INSERT INTO `god_area` VALUES ('598', '兴隆台区', '兴隆台', '999', '9', '', '586', '/0/498/586/', '3', '211103', 'XLTQ', '0', '88', '2017-03-09 11:53:18', '1', '2017-03-09 11:53:18');
INSERT INTO `god_area` VALUES ('599', '大洼县', '大洼', '999', '6', '', '586', '/0/498/586/', '3', '211121', 'DWX', '0', '88', '2017-03-09 11:53:18', '1', '2017-03-09 11:53:18');
INSERT INTO `god_area` VALUES ('600', '盘山县', '盘山', '999', '6', '', '586', '/0/498/586/', '3', '211122', 'PSX', '0', '88', '2017-03-09 11:53:18', '1', '2017-03-09 11:53:18');
INSERT INTO `god_area` VALUES ('601', '铁岭市', '铁岭', '999', '6', '', '498', '/0/498/', '2', '211200', 'TLS', '1', '1', '2017-03-09 11:53:18', '1', '2017-03-09 11:53:18');
INSERT INTO `god_area` VALUES ('603', '银州区', '银州', '999', '6', '', '601', '/0/498/601/', '3', '211202', 'YZQ', '1', '1', '2017-03-09 11:53:18', '1', '2017-03-09 11:53:18');
INSERT INTO `god_area` VALUES ('604', '清河区', '清河区', '999', '9', '', '601', '/0/498/601/', '3', '211204', 'QIQ', '1', '1', '2017-03-09 11:53:18', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('605', '铁岭县', '铁岭县', '999', '9', '', '601', '/0/498/601/', '3', '211221', 'TLX', '1', '88', '2017-03-09 11:53:19', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('606', '西丰县', '西丰', '999', '6', '', '601', '/0/498/601/', '3', '211223', 'XFX', '1', '1', '2017-03-09 11:53:19', '1', '2017-03-09 11:53:19');
INSERT INTO `god_area` VALUES ('607', '昌图县', '昌图', '999', '6', '', '601', '/0/498/601/', '3', '211224', 'CTX', '1', '1', '2017-03-09 11:53:19', '1', '2017-03-09 11:53:19');
INSERT INTO `god_area` VALUES ('608', '调兵山市', '调兵山', '999', '9', '', '601', '/0/498/601/', '3', '211281', 'DBSS', '1', '1', '2017-03-09 11:53:19', '1', '2017-03-09 11:53:19');
INSERT INTO `god_area` VALUES ('609', '开原市', '开原', '999', '6', '', '601', '/0/498/601/', '3', '211282', 'KYS', '1', '1', '2017-03-09 11:53:19', '1', '2017-03-09 11:53:19');
INSERT INTO `god_area` VALUES ('610', '朝阳市', '朝阳市', '999', '9', '', '498', '/0/498/', '2', '211300', 'CYS', '1', '1', '2017-03-09 11:53:19', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('612', '双塔区', '双塔', '999', '6', '', '610', '/0/498/610/', '3', '211302', 'STQ', '1', '1', '2017-03-09 11:53:19', '1', '2017-03-09 11:53:19');
INSERT INTO `god_area` VALUES ('613', '龙城区', '龙城区', '999', '9', '', '610', '/0/498/610/', '3', '211303', 'LCQ', '1', '1', '2017-03-09 11:53:19', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('614', '朝阳县', '朝阳县', '999', '9', '', '610', '/0/498/610/', '3', '211321', 'CYX', '1', '1', '2017-03-09 11:53:19', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('615', '建平县', '建平', '999', '6', '', '610', '/0/498/610/', '3', '211322', 'JPX', '1', '1', '2017-03-09 11:53:19', '1', '2017-03-09 11:53:19');
INSERT INTO `god_area` VALUES ('616', '喀喇沁左翼蒙古族自治县', '喀喇沁左翼', '999', '15', '', '610', '/0/498/610/', '3', '211324', 'KLQZYMGZZZX', '1', '1', '2017-03-09 11:53:19', '1', '2017-03-09 11:53:19');
INSERT INTO `god_area` VALUES ('617', '北票市', '北票', '999', '6', '', '610', '/0/498/610/', '3', '211381', 'BPS', '1', '1', '2017-03-09 11:53:19', '1', '2017-03-09 11:53:19');
INSERT INTO `god_area` VALUES ('618', '凌源市', '凌源', '999', '6', '', '610', '/0/498/610/', '3', '211382', 'LYS', '1', '1', '2017-03-09 11:53:19', '1', '2017-03-09 11:53:19');
INSERT INTO `god_area` VALUES ('619', '葫芦岛市', '葫芦岛', '999', '9', '', '498', '/0/498/', '2', '211400', 'ILDS', '1', '1', '2017-03-09 11:53:19', '1', '2017-03-09 11:53:19');
INSERT INTO `god_area` VALUES ('621', '连山区', '连山', '999', '6', '', '619', '/0/498/619/', '3', '211402', 'LSQ', '1', '1', '2017-03-09 11:53:19', '1', '2017-03-09 11:53:19');
INSERT INTO `god_area` VALUES ('622', '龙港区', '龙港', '999', '6', '', '619', '/0/498/619/', '3', '211403', 'LGQ', '1', '1', '2017-03-09 11:53:19', '1', '2017-03-09 11:53:19');
INSERT INTO `god_area` VALUES ('623', '南票区', '南票', '999', '6', '', '619', '/0/498/619/', '3', '211404', 'NPQ', '1', '1', '2017-03-09 11:53:19', '1', '2017-03-09 11:53:19');
INSERT INTO `god_area` VALUES ('624', '绥中县', '绥中', '999', '6', '', '619', '/0/498/619/', '3', '211421', 'SZX', '1', '1', '2017-03-09 11:53:19', '1', '2017-03-09 11:53:19');
INSERT INTO `god_area` VALUES ('625', '建昌县', '建昌', '999', '6', '', '619', '/0/498/619/', '3', '211422', 'JCX', '1', '1', '2017-03-09 11:53:19', '1', '2017-03-09 11:53:19');
INSERT INTO `god_area` VALUES ('626', '兴城市', '兴城', '999', '6', '', '619', '/0/498/619/', '3', '211481', 'XCS', '1', '1', '2017-03-09 11:53:19', '1', '2017-03-09 11:53:19');
INSERT INTO `god_area` VALUES ('627', '吉林省', '吉林', '999', '6', '', '0', '/0/', '1', '220000', 'JLS', '1', '1', '2017-03-09 11:53:19', '1', '2019-03-04 11:26:38');
INSERT INTO `god_area` VALUES ('628', '长春市', '长春', '999', '6', '', '627', '/0/627/', '2', '220100', 'CCS', '1', '1', '2017-03-09 11:53:19', '1', '2017-03-09 11:53:19');
INSERT INTO `god_area` VALUES ('630', '南关区', '南关', '999', '6', '', '628', '/0/627/628/', '3', '220102', 'NGQ', '1', '1', '2017-03-09 11:53:20', '1', '2017-03-09 11:53:20');
INSERT INTO `god_area` VALUES ('631', '宽城区', '宽城区', '999', '9', '', '628', '/0/627/628/', '3', '220103', 'KCQ', '1', '1', '2017-03-09 11:53:20', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('632', '朝阳区', '朝阳区', '999', '9', '', '628', '/0/627/628/', '3', '220104', 'CYQ', '1', '1', '2017-03-09 11:53:20', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('633', '二道区', '二道区', '999', '6', '', '628', '/0/627/628/', '3', '220105', 'EDQ', '1', '1', '2017-03-09 11:53:20', '1', '2019-03-04 10:20:59');
INSERT INTO `god_area` VALUES ('634', '绿园区', '绿园', '999', '6', '', '628', '/0/627/628/', '3', '220106', 'LYQ', '1', '1', '2017-03-09 11:53:20', '1', '2017-03-09 11:53:20');
INSERT INTO `god_area` VALUES ('635', '双阳区', '双阳', '999', '6', '', '628', '/0/627/628/', '3', '220112', 'SYQ', '1', '1', '2017-03-09 11:53:20', '1', '2017-03-09 11:53:20');
INSERT INTO `god_area` VALUES ('636', '九台区', '九台', '999', '6', '', '628', '/0/627/628/', '3', '220113', 'JTQ', '1', '1', '2017-03-09 11:53:20', '1', '2017-03-09 11:53:20');
INSERT INTO `god_area` VALUES ('637', '农安县', '农安', '999', '6', '', '628', '/0/627/628/', '3', '220122', 'NAX', '1', '1', '2017-03-09 11:53:20', '1', '2017-03-09 11:53:20');
INSERT INTO `god_area` VALUES ('638', '榆树市', '榆树', '999', '6', '', '628', '/0/627/628/', '3', '220182', 'YSS', '1', '1', '2017-03-09 11:53:20', '1', '2017-03-09 11:53:20');
INSERT INTO `god_area` VALUES ('639', '德惠市', '德惠', '999', '6', '', '628', '/0/627/628/', '3', '220183', 'DIS', '1', '1', '2017-03-09 11:53:20', '1', '2017-03-09 11:53:20');
INSERT INTO `god_area` VALUES ('640', '吉林市', '吉林市', '999', '9', '', '627', '/0/627/', '2', '220200', 'JLS', '1', '1', '2017-03-09 11:53:20', '1', '2019-03-04 11:43:49');
INSERT INTO `god_area` VALUES ('642', '昌邑区', '昌邑', '999', '6', '', '640', '/0/627/640/', '3', '220202', 'CYQ', '1', '1', '2017-03-09 11:53:20', '1', '2017-03-09 11:53:20');
INSERT INTO `god_area` VALUES ('643', '龙潭区', '龙潭', '999', '6', '', '640', '/0/627/640/', '3', '220203', 'LTQ', '1', '1', '2017-03-09 11:53:20', '1', '2017-03-09 11:53:20');
INSERT INTO `god_area` VALUES ('644', '船营区', '船营', '999', '6', '', '640', '/0/627/640/', '3', '220204', 'CYQ', '1', '1', '2017-03-09 11:53:20', '1', '2017-03-09 11:53:20');
INSERT INTO `god_area` VALUES ('645', '丰满区', '丰满', '999', '6', '', '640', '/0/627/640/', '3', '220211', 'FMQ', '1', '1', '2017-03-09 11:53:20', '1', '2017-03-09 11:53:20');
INSERT INTO `god_area` VALUES ('646', '永吉县', '永吉', '999', '6', '', '640', '/0/627/640/', '3', '220221', 'YJX', '1', '1', '2017-03-09 11:53:20', '1', '2017-03-09 11:53:20');
INSERT INTO `god_area` VALUES ('647', '蛟河市', '蛟河', '999', '6', '', '640', '/0/627/640/', '3', '220281', 'IS', '1', '1', '2017-03-09 11:53:20', '1', '2017-03-09 11:53:20');
INSERT INTO `god_area` VALUES ('648', '桦甸市', '桦甸', '999', '6', '', '640', '/0/627/640/', '3', '220282', 'DS', '1', '1', '2017-03-09 11:53:20', '1', '2017-03-09 11:53:20');
INSERT INTO `god_area` VALUES ('649', '舒兰市', '舒兰', '999', '6', '', '640', '/0/627/640/', '3', '220283', 'SLS', '1', '1', '2017-03-09 11:53:21', '1', '2017-03-09 11:53:21');
INSERT INTO `god_area` VALUES ('650', '磐石市', '磐石', '999', '6', '', '640', '/0/627/640/', '3', '220284', 'PSS', '1', '1', '2017-03-09 11:53:21', '1', '2017-03-09 11:53:21');
INSERT INTO `god_area` VALUES ('651', '四平市', '四平', '999', '6', '', '627', '/0/627/', '2', '220300', 'SPS', '1', '1', '2017-03-09 11:53:21', '1', '2017-03-09 11:53:21');
INSERT INTO `god_area` VALUES ('653', '铁西区', '铁西区', '999', '9', '', '651', '/0/627/651/', '3', '220302', 'TXQ', '1', '1', '2017-03-09 11:53:21', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('654', '铁东区', '铁东区', '999', '6', '', '651', '/0/627/651/', '3', '220303', 'TDQ', '1', '1', '2017-03-09 11:53:21', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('655', '梨树县', '梨树', '999', '6', '', '651', '/0/627/651/', '3', '220322', 'LSX', '1', '1', '2017-03-09 11:53:21', '1', '2017-03-09 11:53:21');
INSERT INTO `god_area` VALUES ('656', '伊通满族自治县', '伊通', '999', '6', '', '651', '/0/627/651/', '3', '220323', 'YTMZZZX', '1', '1', '2017-03-09 11:53:21', '1', '2017-03-09 11:53:21');
INSERT INTO `god_area` VALUES ('657', '公主岭市', '公主岭', '999', '9', '', '651', '/0/627/651/', '3', '220381', 'GZLS', '1', '1', '2017-03-09 11:53:21', '1', '2017-03-09 11:53:21');
INSERT INTO `god_area` VALUES ('658', '双辽市', '双辽', '999', '6', '', '651', '/0/627/651/', '3', '220382', 'SLS', '1', '1', '2017-03-09 11:53:21', '1', '2017-03-09 11:53:21');
INSERT INTO `god_area` VALUES ('659', '辽源市', '辽源', '999', '6', '', '627', '/0/627/', '2', '220400', 'LYS', '1', '1', '2017-03-09 11:53:21', '1', '2017-03-09 11:53:21');
INSERT INTO `god_area` VALUES ('661', '龙山区', '龙山', '999', '6', '', '659', '/0/627/659/', '3', '220402', 'LSQ', '1', '1', '2017-03-09 11:53:21', '1', '2017-03-09 11:53:21');
INSERT INTO `god_area` VALUES ('662', '西安区', '西安区', '999', '9', '', '659', '/0/627/659/', '3', '220403', 'XAQ', '1', '1', '2017-03-09 11:53:21', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('663', '东丰县', '东丰', '999', '6', '', '659', '/0/627/659/', '3', '220421', 'DFX', '1', '1', '2017-03-09 11:53:21', '1', '2017-03-09 11:53:21');
INSERT INTO `god_area` VALUES ('664', '东辽县', '东辽', '999', '6', '', '659', '/0/627/659/', '3', '220422', 'DLX', '1', '1', '2017-03-09 11:53:21', '1', '2017-03-09 11:53:21');
INSERT INTO `god_area` VALUES ('665', '通化市', '通化', '999', '6', '', '627', '/0/627/', '2', '220500', 'TIS', '1', '1', '2017-03-09 11:53:21', '1', '2017-03-09 11:53:21');
INSERT INTO `god_area` VALUES ('667', '东昌区', '东昌', '999', '6', '', '665', '/0/627/665/', '3', '220502', 'DCQ', '1', '1', '2017-03-09 11:53:21', '1', '2017-03-09 11:53:21');
INSERT INTO `god_area` VALUES ('668', '二道江区', '二道江区', '999', '9', '', '665', '/0/627/665/', '3', '220503', 'EDJQ', '1', '1', '2017-03-09 11:53:21', '1', '2019-03-04 10:21:04');
INSERT INTO `god_area` VALUES ('669', '通化县', '通化县', '999', '9', '', '665', '/0/627/665/', '3', '220521', 'TIX', '1', '1', '2017-03-09 11:53:21', '1', '2017-03-09 11:53:21');
INSERT INTO `god_area` VALUES ('670', '辉南县', '辉南', '999', '6', '', '665', '/0/627/665/', '3', '220523', 'INX', '1', '1', '2017-03-09 11:53:21', '1', '2017-03-09 11:53:21');
INSERT INTO `god_area` VALUES ('671', '柳河县', '柳河', '999', '6', '', '665', '/0/627/665/', '3', '220524', 'LIX', '1', '1', '2017-03-09 11:53:21', '1', '2017-03-09 11:53:21');
INSERT INTO `god_area` VALUES ('672', '梅河口市', '梅河', '999', '9', '', '665', '/0/627/665/', '3', '220581', 'IKS', '1', '1', '2017-03-09 11:53:21', '1', '2019-03-04 11:18:53');
INSERT INTO `god_area` VALUES ('673', '集安市', '集安', '999', '6', '', '665', '/0/627/665/', '3', '220582', 'JAS', '1', '1', '2017-03-09 11:53:21', '1', '2017-03-09 11:53:21');
INSERT INTO `god_area` VALUES ('674', '白山市', '白山', '999', '6', '', '627', '/0/627/', '2', '220600', 'BSS', '1', '1', '2017-03-09 11:53:21', '1', '2017-03-09 11:53:21');
INSERT INTO `god_area` VALUES ('676', '浑江区', '浑江', '999', '6', '', '674', '/0/627/674/', '3', '220602', 'IJQ', '1', '1', '2017-03-09 11:53:21', '1', '2017-03-09 11:53:21');
INSERT INTO `god_area` VALUES ('677', '江源区', '江源', '999', '6', '', '674', '/0/627/674/', '3', '220605', 'JYQ', '1', '1', '2017-03-09 11:53:21', '1', '2017-03-09 11:53:21');
INSERT INTO `god_area` VALUES ('678', '抚松县', '抚松', '999', '6', '', '674', '/0/627/674/', '3', '220621', 'FSX', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('679', '靖宇县', '靖宇', '999', '6', '', '674', '/0/627/674/', '3', '220622', 'JYX', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('680', '长白朝鲜族自治县', '长白县', '999', '21', '', '674', '/0/627/674/', '3', '220623', 'CBCXZZZX', '1', '1', '2017-03-09 11:53:22', '1', '2019-03-04 11:17:50');
INSERT INTO `god_area` VALUES ('681', '临江市', '临江', '999', '6', '', '674', '/0/627/674/', '3', '220681', 'LJS', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('682', '松原市', '松原', '999', '6', '', '627', '/0/627/', '2', '220700', 'SYS', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('684', '宁江区', '宁江', '999', '6', '', '682', '/0/627/682/', '3', '220702', 'NJQ', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('685', '前郭尔罗斯蒙古族自治县', '前郭县', '999', '15', '', '682', '/0/627/682/', '3', '220721', 'QGELSMGZZZX', '1', '1', '2017-03-09 11:53:22', '1', '2019-03-04 10:23:34');
INSERT INTO `god_area` VALUES ('686', '长岭县', '长岭', '999', '6', '', '682', '/0/627/682/', '3', '220722', 'CLX', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('687', '乾安县', '乾安', '999', '6', '', '682', '/0/627/682/', '3', '220723', 'QAX', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('688', '扶余市', '扶余', '999', '6', '', '682', '/0/627/682/', '3', '220781', 'FYS', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('689', '白城市', '白城', '999', '6', '', '627', '/0/627/', '2', '220800', 'BCS', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('691', '洮北区', '洮北区', '999', '6', '', '689', '/0/627/689/', '3', '220802', 'BQ', '1', '1', '2017-03-09 11:53:22', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('692', '镇赉县', '镇赉', '999', '6', '', '689', '/0/627/689/', '3', '220821', 'ZX', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('693', '通榆县', '通榆', '999', '6', '', '689', '/0/627/689/', '3', '220822', 'TYX', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('694', '洮南市', '洮南', '999', '6', '', '689', '/0/627/689/', '3', '220881', 'NS', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('695', '大安市', '大安', '999', '6', '', '689', '/0/627/689/', '3', '220882', 'DAS', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('696', '延边朝鲜族自治州', '延边', '999', '6', '', '627', '/0/627/', '2', '222400', 'YBCXZZZZ', '1', '1', '2017-03-09 11:53:22', '1', '2017-08-17 09:14:25');
INSERT INTO `god_area` VALUES ('697', '延吉市', '延吉', '999', '6', '', '696', '/0/627/696/', '3', '222401', 'YJS', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('698', '图们市', '图们', '999', '6', '', '696', '/0/627/696/', '3', '222402', 'TMS', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('699', '敦化市', '敦化', '999', '6', '', '696', '/0/627/696/', '3', '222403', 'DIS', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('700', '珲春市', '珲春', '999', '6', '', '696', '/0/627/696/', '3', '222404', 'CS', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('701', '龙井市', '龙井', '999', '6', '', '696', '/0/627/696/', '3', '222405', 'LJS', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('702', '和龙市', '和龙', '999', '6', '', '696', '/0/627/696/', '3', '222406', 'ILS', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('703', '汪清县', '汪清', '999', '6', '', '696', '/0/627/696/', '3', '222424', 'WQX', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('704', '安图县', '安图', '999', '6', '', '696', '/0/627/696/', '3', '222426', 'ATX', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('705', '黑龙江省', '黑龙江', '999', '9', '', '0', '/0/', '1', '230000', 'ILJS', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('706', '哈尔滨市', '哈尔滨', '999', '9', '', '705', '/0/705/', '2', '230100', 'IEBS', '1', '1', '2017-03-09 11:53:22', '1', '2017-03-09 11:53:22');
INSERT INTO `god_area` VALUES ('708', '道里区', '道里', '999', '6', '', '706', '/0/705/706/', '3', '230102', 'DLQ', '1', '1', '2017-03-09 11:53:23', '1', '2017-03-09 11:53:23');
INSERT INTO `god_area` VALUES ('709', '南岗区', '南岗', '999', '6', '', '706', '/0/705/706/', '3', '230103', 'NGQ', '1', '1', '2017-03-09 11:53:23', '1', '2017-03-09 11:53:23');
INSERT INTO `god_area` VALUES ('710', '道外区', '道外', '999', '6', '', '706', '/0/705/706/', '3', '230104', 'DWQ', '1', '1', '2017-03-09 11:53:23', '1', '2017-03-09 11:53:23');
INSERT INTO `god_area` VALUES ('711', '平房区', '平房', '999', '6', '', '706', '/0/705/706/', '3', '230108', 'PFQ', '1', '1', '2017-03-09 11:53:23', '1', '2017-03-09 11:53:23');
INSERT INTO `god_area` VALUES ('712', '松北区', '松北区', '999', '6', '', '706', '/0/705/706/', '3', '230109', 'SBQ', '1', '1', '2017-03-09 11:53:23', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('713', '香坊区', '香坊', '999', '6', '', '706', '/0/705/706/', '3', '230110', 'XFQ', '1', '1', '2017-03-09 11:53:23', '1', '2017-03-09 11:53:23');
INSERT INTO `god_area` VALUES ('714', '呼兰区', '呼兰', '999', '6', '', '706', '/0/705/706/', '3', '230111', 'ILQ', '1', '1', '2017-03-09 11:53:23', '1', '2017-03-09 11:53:23');
INSERT INTO `god_area` VALUES ('715', '阿城区', '阿城区', '999', '9', '', '706', '/0/705/706/', '3', '230112', 'ACQ', '1', '1', '2017-03-09 11:53:23', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('716', '依兰县', '依兰', '999', '6', '', '706', '/0/705/706/', '3', '230123', 'YLX', '1', '1', '2017-03-09 11:53:23', '1', '2017-03-09 11:53:23');
INSERT INTO `god_area` VALUES ('717', '方正县', '方正', '999', '6', '', '706', '/0/705/706/', '3', '230124', 'FZX', '1', '1', '2017-03-09 11:53:23', '1', '2017-03-09 11:53:23');
INSERT INTO `god_area` VALUES ('718', '宾县', '宾县', '999', '6', '', '706', '/0/705/706/', '3', '230125', 'BX', '1', '1', '2017-03-09 11:53:23', '1', '2017-03-09 11:53:23');
INSERT INTO `god_area` VALUES ('719', '巴彦县', '巴彦', '999', '6', '', '706', '/0/705/706/', '3', '230126', 'BYX', '1', '1', '2017-03-09 11:53:23', '1', '2017-03-09 11:53:23');
INSERT INTO `god_area` VALUES ('720', '木兰县', '木兰', '999', '6', '', '706', '/0/705/706/', '3', '230127', 'MLX', '1', '1', '2017-03-09 11:53:23', '1', '2017-03-09 11:53:23');
INSERT INTO `god_area` VALUES ('721', '通河县', '通河', '999', '6', '', '706', '/0/705/706/', '3', '230128', 'TIX', '1', '1', '2017-03-09 11:53:23', '1', '2017-03-09 11:53:23');
INSERT INTO `god_area` VALUES ('722', '延寿县', '延寿', '999', '6', '', '706', '/0/705/706/', '3', '230129', 'YSX', '1', '1', '2017-03-09 11:53:23', '1', '2017-03-09 11:53:23');
INSERT INTO `god_area` VALUES ('723', '双城区', '双城区', '999', '9', '', '706', '/0/705/706/', '3', '230182', 'SCQ', '1', '1', '2017-03-09 11:53:23', '6', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('724', '尚志市', '尚志', '999', '6', '', '706', '/0/705/706/', '3', '230183', 'SZS', '1', '1', '2017-03-09 11:53:23', '1', '2017-03-09 11:53:23');
INSERT INTO `god_area` VALUES ('725', '五常市', '五常', '999', '6', '', '706', '/0/705/706/', '3', '230184', 'WCS', '1', '1', '2017-03-09 11:53:23', '1', '2017-03-09 11:53:23');
INSERT INTO `god_area` VALUES ('726', '齐齐哈尔市', '齐齐哈尔', '999', '12', '', '705', '/0/705/', '2', '230200', 'QQIES', '1', '1', '2017-03-09 11:53:23', '1', '2017-03-09 11:53:23');
INSERT INTO `god_area` VALUES ('728', '龙沙区', '龙沙', '999', '6', '', '726', '/0/705/726/', '3', '230202', 'LSQ', '1', '1', '2017-03-09 11:53:23', '1', '2017-03-09 11:53:23');
INSERT INTO `god_area` VALUES ('729', '建华区', '建华', '999', '6', '', '726', '/0/705/726/', '3', '230203', 'JIQ', '1', '1', '2017-03-09 11:53:24', '1', '2017-03-09 11:53:24');
INSERT INTO `god_area` VALUES ('730', '铁锋区', '铁锋', '999', '6', '', '726', '/0/705/726/', '3', '230204', 'TFQ', '1', '1', '2017-03-09 11:53:24', '1', '2017-03-09 11:53:24');
INSERT INTO `god_area` VALUES ('731', '昂昂溪区', '昂昂溪', '999', '9', '', '726', '/0/705/726/', '3', '230205', 'AAXQ', '1', '1', '2017-03-09 11:53:24', '1', '2017-03-09 11:53:24');
INSERT INTO `god_area` VALUES ('732', '富拉尔基区', '富拉尔基', '999', '12', '', '726', '/0/705/726/', '3', '230206', 'FLEJQ', '1', '1', '2017-03-09 11:53:24', '1', '2017-03-09 11:53:24');
INSERT INTO `god_area` VALUES ('733', '碾子山区', '碾子山', '999', '9', '', '726', '/0/705/726/', '3', '230207', 'NZSQ', '1', '1', '2017-03-09 11:53:24', '1', '2017-03-09 11:53:24');
INSERT INTO `god_area` VALUES ('734', '梅里斯达斡尔族区', '梅里斯达斡尔族', '999', '21', '', '726', '/0/705/726/', '3', '230208', 'LSDWEZQ', '1', '1', '2017-03-09 11:53:24', '1', '2017-03-09 11:53:24');
INSERT INTO `god_area` VALUES ('735', '龙江县', '龙江县', '999', '9', '', '726', '/0/705/726/', '3', '230221', 'LJX', '1', '1', '2017-03-09 11:53:24', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('736', '依安县', '依安', '999', '6', '', '726', '/0/705/726/', '3', '230223', 'YAX', '1', '1', '2017-03-09 11:53:24', '1', '2017-03-09 11:53:24');
INSERT INTO `god_area` VALUES ('737', '泰来县', '泰来', '999', '6', '', '726', '/0/705/726/', '3', '230224', 'TLX', '1', '1', '2017-03-09 11:53:24', '1', '2017-03-09 11:53:24');
INSERT INTO `god_area` VALUES ('738', '甘南县', '甘南', '999', '6', '', '726', '/0/705/726/', '3', '230225', 'GNX', '1', '1', '2017-03-09 11:53:24', '1', '2017-03-09 11:53:24');
INSERT INTO `god_area` VALUES ('739', '富裕县', '富裕', '999', '6', '', '726', '/0/705/726/', '3', '230227', 'FYX', '1', '1', '2017-03-09 11:53:24', '1', '2017-03-09 11:53:24');
INSERT INTO `god_area` VALUES ('740', '克山县', '克山', '999', '6', '', '726', '/0/705/726/', '3', '230229', 'KSX', '1', '1', '2017-03-09 11:53:24', '1', '2017-03-09 11:53:24');
INSERT INTO `god_area` VALUES ('741', '克东县', '克东', '999', '6', '', '726', '/0/705/726/', '3', '230230', 'KDX', '1', '1', '2017-03-09 11:53:24', '1', '2017-03-09 11:53:24');
INSERT INTO `god_area` VALUES ('742', '拜泉县', '拜泉', '999', '6', '', '726', '/0/705/726/', '3', '230231', 'BQX', '1', '1', '2017-03-09 11:53:24', '1', '2017-03-09 11:53:24');
INSERT INTO `god_area` VALUES ('743', '讷河市', '讷河', '999', '6', '', '726', '/0/705/726/', '3', '230281', 'IS', '1', '1', '2017-03-09 11:53:24', '1', '2017-03-09 11:53:24');
INSERT INTO `god_area` VALUES ('744', '鸡西市', '鸡西', '999', '6', '', '705', '/0/705/', '2', '230300', 'JXS', '1', '1', '2017-03-09 11:53:24', '1', '2017-03-09 11:53:24');
INSERT INTO `god_area` VALUES ('746', '鸡冠区', '鸡冠', '999', '6', '', '744', '/0/705/744/', '3', '230302', 'JGQ', '1', '1', '2017-03-09 11:53:24', '1', '2017-03-09 11:53:24');
INSERT INTO `god_area` VALUES ('747', '恒山区', '恒山', '999', '6', '', '744', '/0/705/744/', '3', '230303', 'ISQ', '1', '1', '2017-03-09 11:53:24', '1', '2017-03-09 11:53:24');
INSERT INTO `god_area` VALUES ('748', '滴道区', '滴道', '999', '6', '', '744', '/0/705/744/', '3', '230304', 'DDQ', '1', '1', '2017-03-09 11:53:24', '1', '2017-03-09 11:53:24');
INSERT INTO `god_area` VALUES ('749', '梨树区', '梨树', '999', '6', '', '744', '/0/705/744/', '3', '230305', 'LSQ', '1', '1', '2017-03-09 11:53:24', '1', '2017-03-09 11:53:24');
INSERT INTO `god_area` VALUES ('750', '城子河区', '城子河', '999', '9', '', '744', '/0/705/744/', '3', '230306', 'CZIQ', '1', '1', '2017-03-09 11:53:24', '1', '2017-03-09 11:53:24');
INSERT INTO `god_area` VALUES ('751', '麻山区', '麻山', '999', '6', '', '744', '/0/705/744/', '3', '230307', 'MSQ', '1', '1', '2017-03-09 11:53:24', '1', '2017-03-09 11:53:24');
INSERT INTO `god_area` VALUES ('752', '鸡东县', '鸡东', '999', '6', '', '744', '/0/705/744/', '3', '230321', 'JDX', '1', '1', '2017-03-09 11:53:25', '1', '2017-03-09 11:53:25');
INSERT INTO `god_area` VALUES ('753', '虎林市', '虎林', '999', '6', '', '744', '/0/705/744/', '3', '230381', 'ILS', '1', '1', '2017-03-09 11:53:25', '1', '2017-03-09 11:53:25');
INSERT INTO `god_area` VALUES ('754', '密山市', '密山', '999', '6', '', '744', '/0/705/744/', '3', '230382', 'MSS', '1', '1', '2017-03-09 11:53:25', '1', '2017-03-09 11:53:25');
INSERT INTO `god_area` VALUES ('755', '鹤岗市', '鹤岗', '999', '6', '', '705', '/0/705/', '2', '230400', 'IGS', '1', '1', '2017-03-09 11:53:25', '1', '2017-03-09 11:53:25');
INSERT INTO `god_area` VALUES ('757', '向阳区', '向阳', '999', '6', '', '755', '/0/705/755/', '3', '230402', 'XYQ', '1', '1', '2017-03-09 11:53:25', '1', '2017-03-09 11:53:25');
INSERT INTO `god_area` VALUES ('758', '工农区', '工农', '999', '6', '', '755', '/0/705/755/', '3', '230403', 'GNQ', '1', '1', '2017-03-09 11:53:25', '1', '2017-03-09 11:53:25');
INSERT INTO `god_area` VALUES ('759', '南山区', '南山区', '999', '9', '', '755', '/0/705/755/', '3', '230404', 'NSQ', '1', '88', '2017-03-09 11:53:25', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('760', '兴安区', '兴安区', '999', '9', '', '755', '/0/705/755/', '3', '230405', 'XAQ', '1', '1', '2017-03-09 11:53:25', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('761', '东山区', '东山区', '999', '9', '', '755', '/0/705/755/', '3', '230406', 'DSQ', '1', '1', '2017-03-09 11:53:25', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('762', '兴山区', '兴山', '999', '6', '', '755', '/0/705/755/', '3', '230407', 'XSQ', '1', '1', '2017-03-09 11:53:25', '1', '2017-03-09 11:53:25');
INSERT INTO `god_area` VALUES ('763', '萝北县', '萝北', '999', '6', '', '755', '/0/705/755/', '3', '230421', 'LBX', '1', '1', '2017-03-09 11:53:25', '1', '2017-03-09 11:53:25');
INSERT INTO `god_area` VALUES ('764', '绥滨县', '绥滨', '999', '6', '', '755', '/0/705/755/', '3', '230422', 'SBX', '1', '1', '2017-03-09 11:53:25', '1', '2017-03-09 11:53:25');
INSERT INTO `god_area` VALUES ('765', '双鸭山市', '双鸭山', '999', '9', '', '705', '/0/705/', '2', '230500', 'SYSS', '1', '1', '2017-03-09 11:53:25', '1', '2017-03-09 11:53:25');
INSERT INTO `god_area` VALUES ('767', '尖山区', '尖山', '999', '6', '', '765', '/0/705/765/', '3', '230502', 'JSQ', '1', '1', '2017-03-09 11:53:25', '1', '2017-03-09 11:53:25');
INSERT INTO `god_area` VALUES ('768', '岭东区', '岭东区', '999', '6', '', '765', '/0/705/765/', '3', '230503', 'LDQ', '1', '1', '2017-03-09 11:53:25', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('769', '四方台区', '四方台', '999', '9', '', '765', '/0/705/765/', '3', '230505', 'SFTQ', '1', '1', '2017-03-09 11:53:25', '1', '2017-03-09 11:53:25');
INSERT INTO `god_area` VALUES ('770', '宝山区', '宝山', '999', '6', '', '765', '/0/705/765/', '3', '230506', 'BSQ', '1', '1', '2017-03-09 11:53:25', '1', '2017-03-09 11:53:25');
INSERT INTO `god_area` VALUES ('771', '集贤县', '集贤', '999', '6', '', '765', '/0/705/765/', '3', '230521', 'JXX', '1', '1', '2017-03-09 11:53:25', '1', '2017-03-09 11:53:25');
INSERT INTO `god_area` VALUES ('772', '友谊县', '友谊', '999', '6', '', '765', '/0/705/765/', '3', '230522', 'YYX', '1', '1', '2017-03-09 11:53:25', '1', '2017-03-09 11:53:25');
INSERT INTO `god_area` VALUES ('773', '宝清县', '宝清', '999', '6', '', '765', '/0/705/765/', '3', '230523', 'BQX', '1', '1', '2017-03-09 11:53:25', '1', '2017-03-09 11:53:25');
INSERT INTO `god_area` VALUES ('774', '饶河县', '饶河', '999', '6', '', '765', '/0/705/765/', '3', '230524', 'RIX', '1', '1', '2017-03-09 11:53:25', '1', '2017-03-09 11:53:25');
INSERT INTO `god_area` VALUES ('775', '大庆市', '大庆', '999', '6', '', '705', '/0/705/', '2', '230600', 'DQS', '1', '1', '2017-03-09 11:53:25', '1', '2017-03-09 11:53:25');
INSERT INTO `god_area` VALUES ('777', '萨尔图区', '萨尔图', '999', '9', '', '775', '/0/705/775/', '3', '230602', 'SETQ', '1', '1', '2017-03-09 11:53:25', '1', '2017-03-09 11:53:25');
INSERT INTO `god_area` VALUES ('778', '龙凤区', '龙凤', '999', '6', '', '775', '/0/705/775/', '3', '230603', 'LFQ', '1', '1', '2017-03-09 11:53:25', '1', '2017-03-09 11:53:25');
INSERT INTO `god_area` VALUES ('779', '让胡路区', '让胡路', '999', '9', '', '775', '/0/705/775/', '3', '230604', 'RIQ', '1', '1', '2017-03-09 11:53:25', '1', '2017-03-09 11:53:25');
INSERT INTO `god_area` VALUES ('780', '红岗区', '红岗', '999', '6', '', '775', '/0/705/775/', '3', '230605', 'IGQ', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('781', '大同区', '大同区', '999', '9', '', '775', '/0/705/775/', '3', '230606', 'DTQ', '1', '1', '2017-03-09 11:53:26', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('782', '肇州县', '肇州', '999', '6', '', '775', '/0/705/775/', '3', '230621', 'ZZX', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('783', '肇源县', '肇源', '999', '6', '', '775', '/0/705/775/', '3', '230622', 'ZYX', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('784', '林甸县', '林甸', '999', '6', '', '775', '/0/705/775/', '3', '230623', 'LDX', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('785', '杜尔伯特蒙古族自治县', '杜尔伯特', '999', '12', '', '775', '/0/705/775/', '3', '230624', 'DEBTMGZZZX', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('786', '伊春市', '伊春', '999', '6', '', '705', '/0/705/', '2', '230700', 'YCS', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('788', '伊春区', '伊春区', '999', '9', '', '786', '/0/705/786/', '3', '230702', 'YCQ', '1', '88', '2017-03-09 11:53:26', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('789', '南岔区', '南岔', '999', '6', '', '786', '/0/705/786/', '3', '230703', 'NCQ', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('790', '友好区', '友好区', '999', '6', '', '786', '/0/705/786/', '3', '230704', 'YIQ', '1', '1', '2017-03-09 11:53:26', '1', '2018-12-05 17:01:23');
INSERT INTO `god_area` VALUES ('791', '西林区', '西林', '999', '6', '', '786', '/0/705/786/', '3', '230705', 'XLQ', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('792', '翠峦区', '翠峦', '999', '6', '', '786', '/0/705/786/', '3', '230706', 'CLQ', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('793', '新青区', '新青', '999', '6', '', '786', '/0/705/786/', '3', '230707', 'XQQ', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('794', '美溪区', '美溪', '999', '6', '', '786', '/0/705/786/', '3', '230708', 'MXQ', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('795', '金山屯区', '金山屯', '999', '9', '', '786', '/0/705/786/', '3', '230709', 'JSTQ', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('796', '五营区', '五营', '999', '6', '', '786', '/0/705/786/', '3', '230710', 'WYQ', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('797', '乌马河区', '乌马河', '999', '9', '', '786', '/0/705/786/', '3', '230711', 'WMIQ', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('798', '汤旺河区', '汤旺河', '999', '9', '', '786', '/0/705/786/', '3', '230712', 'TWIQ', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('799', '带岭区', '带岭', '999', '6', '', '786', '/0/705/786/', '3', '230713', 'DLQ', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('800', '乌伊岭区', '乌伊岭', '999', '9', '', '786', '/0/705/786/', '3', '230714', 'WYLQ', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('801', '红星区', '红星', '999', '6', '', '786', '/0/705/786/', '3', '230715', 'IXQ', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('802', '上甘岭区', '上甘岭', '999', '9', '', '786', '/0/705/786/', '3', '230716', 'SGLQ', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('803', '嘉荫县', '嘉荫', '999', '6', '', '786', '/0/705/786/', '3', '230722', 'JYX', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('804', '铁力市', '铁力', '999', '6', '', '786', '/0/705/786/', '3', '230781', 'TLS', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('805', '佳木斯市', '佳木斯', '999', '9', '', '705', '/0/705/', '2', '230800', 'JMSS', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('807', '向阳区', '向阳', '999', '6', '', '805', '/0/705/805/', '3', '230803', 'XYQ', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('808', '前进区', '前进', '999', '6', '', '805', '/0/705/805/', '3', '230804', 'QJQ', '1', '1', '2017-03-09 11:53:26', '1', '2017-03-09 11:53:26');
INSERT INTO `god_area` VALUES ('809', '东风区', '东风', '999', '6', '', '805', '/0/705/805/', '3', '230805', 'DFQ', '1', '1', '2017-03-09 11:53:27', '1', '2017-03-09 11:53:27');
INSERT INTO `god_area` VALUES ('811', '桦南县', '桦南', '999', '6', '', '805', '/0/705/805/', '3', '230822', 'NX', '1', '1', '2017-03-09 11:53:27', '1', '2017-03-09 11:53:27');
INSERT INTO `god_area` VALUES ('812', '桦川县', '桦川', '999', '6', '', '805', '/0/705/805/', '3', '230826', 'CX', '1', '1', '2017-03-09 11:53:27', '1', '2017-03-09 11:53:27');
INSERT INTO `god_area` VALUES ('813', '汤原县', '汤原', '999', '6', '', '805', '/0/705/805/', '3', '230828', 'TYX', '1', '1', '2017-03-09 11:53:27', '1', '2017-03-09 11:53:27');
INSERT INTO `god_area` VALUES ('814', '抚远市', '抚远', '999', '6', '', '805', '/0/705/805/', '3', '230833', 'FYS', '1', '1', '2017-03-09 11:53:27', '6', '2017-08-10 10:10:41');
INSERT INTO `god_area` VALUES ('815', '同江市', '同江', '999', '6', '', '805', '/0/705/805/', '3', '230881', 'TJS', '1', '1', '2017-03-09 11:53:27', '1', '2017-03-09 11:53:27');
INSERT INTO `god_area` VALUES ('816', '富锦市', '富锦', '999', '6', '', '805', '/0/705/805/', '3', '230882', 'FJS', '1', '1', '2017-03-09 11:53:27', '1', '2017-03-09 11:53:27');
INSERT INTO `god_area` VALUES ('817', '七台河市', '七台河', '999', '9', '', '705', '/0/705/', '2', '230900', 'QTIS', '1', '1', '2017-03-09 11:53:27', '1', '2017-03-09 11:53:27');
INSERT INTO `god_area` VALUES ('819', '新兴区', '新兴', '999', '6', '', '817', '/0/705/817/', '3', '230902', 'XXQ', '1', '1', '2017-03-09 11:53:27', '1', '2017-03-09 11:53:27');
INSERT INTO `god_area` VALUES ('820', '桃山区', '桃山', '999', '6', '', '817', '/0/705/817/', '3', '230903', 'TSQ', '1', '1', '2017-03-09 11:53:27', '1', '2017-03-09 11:53:27');
INSERT INTO `god_area` VALUES ('821', '茄子河区', '茄子河', '999', '9', '', '817', '/0/705/817/', '3', '230904', 'QZIQ', '1', '1', '2017-03-09 11:53:27', '1', '2017-03-09 11:53:27');
INSERT INTO `god_area` VALUES ('822', '勃利县', '勃利', '999', '6', '', '817', '/0/705/817/', '3', '230921', 'BLX', '1', '1', '2017-03-09 11:53:27', '1', '2017-03-09 11:53:27');
INSERT INTO `god_area` VALUES ('823', '牡丹江市', '牡丹江', '999', '9', '', '705', '/0/705/', '2', '231000', 'MDJS', '1', '1', '2017-03-09 11:53:27', '1', '2017-03-09 11:53:27');
INSERT INTO `god_area` VALUES ('825', '东安区', '东安区', '999', '9', '', '823', '/0/705/823/', '3', '231002', 'DAQ', '1', '1', '2017-03-09 11:53:27', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('826', '阳明区', '阳明', '999', '6', '', '823', '/0/705/823/', '3', '231003', 'YMQ', '1', '1', '2017-03-09 11:53:27', '1', '2017-03-09 11:53:27');
INSERT INTO `god_area` VALUES ('827', '爱民区', '爱民', '999', '6', '', '823', '/0/705/823/', '3', '231004', 'AMQ', '1', '1', '2017-03-09 11:53:27', '1', '2017-03-09 11:53:27');
INSERT INTO `god_area` VALUES ('828', '西安区', '西安区', '999', '9', '', '823', '/0/705/823/', '3', '231005', 'XAQ', '1', '1', '2017-03-09 11:53:27', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('829', '东宁市', '东宁', '999', '6', '', '823', '/0/705/823/', '3', '231024', 'DNS', '1', '1', '2017-03-09 11:53:27', '6', '2017-08-10 10:11:29');
INSERT INTO `god_area` VALUES ('830', '林口县', '林口', '999', '6', '', '823', '/0/705/823/', '3', '231025', 'LKX', '1', '1', '2017-03-09 11:53:27', '1', '2017-03-09 11:53:27');
INSERT INTO `god_area` VALUES ('831', '绥芬河市', '绥芬河', '999', '9', '', '823', '/0/705/823/', '3', '231081', 'SFIS', '1', '1', '2017-03-09 11:53:27', '1', '2017-03-09 11:53:27');
INSERT INTO `god_area` VALUES ('832', '海林市', '海林', '999', '6', '', '823', '/0/705/823/', '3', '231083', 'ILS', '1', '1', '2017-03-09 11:53:27', '1', '2017-03-09 11:53:27');
INSERT INTO `god_area` VALUES ('833', '宁安市', '宁安', '999', '6', '', '823', '/0/705/823/', '3', '231084', 'NAS', '1', '1', '2017-03-09 11:53:28', '1', '2017-03-09 11:53:28');
INSERT INTO `god_area` VALUES ('834', '穆棱市', '穆棱', '999', '6', '', '823', '/0/705/823/', '3', '231085', 'MLS', '1', '1', '2017-03-09 11:53:28', '1', '2017-03-09 11:53:28');
INSERT INTO `god_area` VALUES ('835', '黑河市', '黑河', '999', '6', '', '705', '/0/705/', '2', '231100', 'IIS', '1', '1', '2017-03-09 11:53:28', '1', '2017-03-09 11:53:28');
INSERT INTO `god_area` VALUES ('837', '爱辉区', '爱辉', '999', '6', '', '835', '/0/705/835/', '3', '231102', 'AIQ', '1', '1', '2017-03-09 11:53:28', '1', '2017-03-09 11:53:28');
INSERT INTO `god_area` VALUES ('838', '嫩江县', '嫩江', '999', '6', '', '835', '/0/705/835/', '3', '231121', 'NJX', '1', '1', '2017-03-09 11:53:28', '1', '2017-03-09 11:53:28');
INSERT INTO `god_area` VALUES ('839', '逊克县', '逊克', '999', '6', '', '835', '/0/705/835/', '3', '231123', 'XKX', '1', '1', '2017-03-09 11:53:28', '1', '2017-03-09 11:53:28');
INSERT INTO `god_area` VALUES ('840', '孙吴县', '孙吴', '999', '6', '', '835', '/0/705/835/', '3', '231124', 'SWX', '1', '1', '2017-03-09 11:53:28', '1', '2017-03-09 11:53:28');
INSERT INTO `god_area` VALUES ('841', '北安市', '北安', '999', '6', '', '835', '/0/705/835/', '3', '231181', 'BAS', '1', '1', '2017-03-09 11:53:28', '1', '2017-03-09 11:53:28');
INSERT INTO `god_area` VALUES ('842', '五大连池市', '五大连池', '999', '12', '', '835', '/0/705/835/', '3', '231182', 'WDLCS', '1', '1', '2017-03-09 11:53:28', '1', '2017-03-09 11:53:28');
INSERT INTO `god_area` VALUES ('843', '绥化市', '绥化', '999', '6', '', '705', '/0/705/', '2', '231200', 'SIS', '1', '1', '2017-03-09 11:53:28', '1', '2017-03-09 11:53:28');
INSERT INTO `god_area` VALUES ('845', '北林区', '北林', '999', '6', '', '843', '/0/705/843/', '3', '231202', 'BLQ', '1', '1', '2017-03-09 11:53:28', '1', '2017-03-09 11:53:28');
INSERT INTO `god_area` VALUES ('846', '望奎县', '望奎', '999', '6', '', '843', '/0/705/843/', '3', '231221', 'WKX', '1', '1', '2017-03-09 11:53:28', '1', '2017-03-09 11:53:28');
INSERT INTO `god_area` VALUES ('847', '兰西县', '兰西', '999', '6', '', '843', '/0/705/843/', '3', '231222', 'LXX', '1', '1', '2017-03-09 11:53:28', '1', '2017-03-09 11:53:28');
INSERT INTO `god_area` VALUES ('848', '青冈县', '青冈', '999', '6', '', '843', '/0/705/843/', '3', '231223', 'QGX', '1', '1', '2017-03-09 11:53:28', '1', '2017-03-09 11:53:28');
INSERT INTO `god_area` VALUES ('849', '庆安县', '庆安', '999', '6', '', '843', '/0/705/843/', '3', '231224', 'QAX', '1', '1', '2017-03-09 11:53:28', '1', '2017-03-09 11:53:28');
INSERT INTO `god_area` VALUES ('850', '明水县', '明水', '999', '6', '', '843', '/0/705/843/', '3', '231225', 'MSX', '1', '1', '2017-03-09 11:53:28', '1', '2017-03-09 11:53:28');
INSERT INTO `god_area` VALUES ('851', '绥棱县', '绥棱', '999', '6', '', '843', '/0/705/843/', '3', '231226', 'SLX', '1', '1', '2017-03-09 11:53:28', '1', '2017-03-09 11:53:28');
INSERT INTO `god_area` VALUES ('852', '安达市', '安达', '999', '6', '', '843', '/0/705/843/', '3', '231281', 'ADS', '1', '1', '2017-03-09 11:53:28', '1', '2017-03-09 11:53:28');
INSERT INTO `god_area` VALUES ('853', '肇东市', '肇东', '999', '6', '', '843', '/0/705/843/', '3', '231282', 'ZDS', '1', '1', '2017-03-09 11:53:28', '1', '2017-03-09 11:53:28');
INSERT INTO `god_area` VALUES ('854', '海伦市', '海伦', '999', '6', '', '843', '/0/705/843/', '3', '231283', 'ILS', '1', '1', '2017-03-09 11:53:28', '1', '2017-03-09 11:53:28');
INSERT INTO `god_area` VALUES ('855', '大兴安岭地区', '大兴安岭', '999', '12', '', '705', '/0/705/', '2', '232700', 'DXALDQ', '1', '1', '2017-03-09 11:53:29', '2', '2018-01-11 10:38:50');
INSERT INTO `god_area` VALUES ('856', '呼玛县', '呼玛', '999', '6', '', '855', '/0/705/855/', '3', '232721', 'IMX', '1', '1', '2017-03-09 11:53:29', '1', '2017-03-09 11:53:29');
INSERT INTO `god_area` VALUES ('857', '塔河县', '塔河', '999', '6', '', '855', '/0/705/855/', '3', '232722', 'TIX', '1', '1', '2017-03-09 11:53:29', '1', '2017-03-09 11:53:29');
INSERT INTO `god_area` VALUES ('858', '漠河县', '漠河', '999', '6', '', '855', '/0/705/855/', '3', '232723', 'MIX', '1', '1', '2017-03-09 11:53:29', '1', '2017-03-09 11:53:29');
INSERT INTO `god_area` VALUES ('859', '上海', '上海', '999', '6', '', '0', '/0/', '1', '310000', 'SI', '1', '1', '2017-03-09 11:53:29', '1', '2017-06-28 09:52:19');
INSERT INTO `god_area` VALUES ('860', '上海市', '上海', '999', '6', '', '859', '/0/859/', '2', '310100', 'SIS', '1', '1', '2017-03-09 11:53:29', '1', '2017-03-09 11:53:29');
INSERT INTO `god_area` VALUES ('861', '黄浦区', '黄浦', '999', '6', '', '860', '/0/859/860/', '3', '310101', 'IPQ', '1', '1', '2017-03-09 11:53:29', '1', '2017-03-09 11:53:29');
INSERT INTO `god_area` VALUES ('862', '徐汇区', '徐汇', '999', '6', '', '860', '/0/859/860/', '3', '310104', 'XIQ', '1', '1', '2017-03-09 11:53:29', '1', '2017-03-09 11:53:29');
INSERT INTO `god_area` VALUES ('863', '长宁区', '长宁', '999', '6', '', '860', '/0/859/860/', '3', '310105', 'CNQ', '1', '1', '2017-03-09 11:53:29', '1', '2017-03-09 11:53:29');
INSERT INTO `god_area` VALUES ('864', '静安区', '静安', '999', '6', '', '860', '/0/859/860/', '3', '310106', 'JAQ', '1', '1', '2017-03-09 11:53:29', '1', '2017-03-09 11:53:29');
INSERT INTO `god_area` VALUES ('865', '普陀区', '普陀', '999', '6', '', '860', '/0/859/860/', '3', '310107', 'PTQ', '1', '1', '2017-03-09 11:53:29', '1', '2017-03-09 11:53:29');
INSERT INTO `god_area` VALUES ('866', '闸北区', '闸北区', '999', '6', '', '860', '/0/859/860/', '3', '310108', null, '0', '1', '2017-03-09 11:53:29', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('867', '虹口区', '虹口', '999', '6', '', '860', '/0/859/860/', '3', '310109', 'IKQ', '1', '1', '2017-03-09 11:53:29', '1', '2017-03-09 11:53:29');
INSERT INTO `god_area` VALUES ('868', '杨浦区', '杨浦', '999', '6', '', '860', '/0/859/860/', '3', '310110', 'YPQ', '1', '1', '2017-03-09 11:53:29', '1', '2017-03-09 11:53:29');
INSERT INTO `god_area` VALUES ('869', '闵行区', '闵行', '999', '6', '', '860', '/0/859/860/', '3', '310112', 'XQ', '1', '1', '2017-03-09 11:53:29', '1', '2017-03-09 11:53:29');
INSERT INTO `god_area` VALUES ('870', '宝山区', '宝山', '999', '6', '', '860', '/0/859/860/', '3', '310113', 'BSQ', '1', '1', '2017-03-09 11:53:29', '1', '2017-03-09 11:53:29');
INSERT INTO `god_area` VALUES ('871', '嘉定区', '嘉定', '999', '6', '', '860', '/0/859/860/', '3', '310114', 'JDQ', '1', '1', '2017-03-09 11:53:29', '1', '2017-03-09 11:53:29');
INSERT INTO `god_area` VALUES ('872', '浦东新区', '浦东新', '999', '9', '', '860', '/0/859/860/', '3', '310115', 'PDXQ', '1', '1', '2017-03-09 11:53:29', '1', '2017-03-09 11:53:29');
INSERT INTO `god_area` VALUES ('873', '金山区', '金山', '999', '6', '', '860', '/0/859/860/', '3', '310116', 'JSQ', '1', '1', '2017-03-09 11:53:29', '1', '2017-03-09 11:53:29');
INSERT INTO `god_area` VALUES ('874', '松江区', '松江', '999', '6', '', '860', '/0/859/860/', '3', '310117', 'SJQ', '1', '1', '2017-03-09 11:53:29', '1', '2017-03-09 11:53:29');
INSERT INTO `god_area` VALUES ('875', '青浦区', '青浦', '999', '6', '', '860', '/0/859/860/', '3', '310118', 'QPQ', '1', '1', '2017-03-09 11:53:29', '1', '2017-03-09 11:53:29');
INSERT INTO `god_area` VALUES ('876', '奉贤区', '奉贤', '999', '6', '', '860', '/0/859/860/', '3', '310120', 'FXQ', '1', '1', '2017-03-09 11:53:29', '1', '2017-03-09 11:53:29');
INSERT INTO `god_area` VALUES ('877', '崇明区', '崇明', '999', '6', '', '860', '/0/859/860/', '3', '310230', 'CMQ', '1', '1', '2017-03-09 11:53:29', '6', '2017-08-10 10:05:06');
INSERT INTO `god_area` VALUES ('878', '江苏省', '江苏', '999', '6', '', '0', '/0/', '1', '320000', 'JSS', '1', '1', '2017-03-09 11:53:29', '1', '2017-06-28 09:52:30');
INSERT INTO `god_area` VALUES ('879', '南京市', '南京', '999', '6', '', '878', '/0/878/', '2', '320100', 'NJS', '1', '1', '2017-03-09 11:53:29', '1', '2017-03-09 11:53:29');
INSERT INTO `god_area` VALUES ('881', '玄武区', '玄武', '999', '6', '', '879', '/0/878/879/', '3', '320102', 'XWQ', '1', '1', '2017-03-09 11:53:30', '1', '2017-03-09 11:53:30');
INSERT INTO `god_area` VALUES ('882', '秦淮区', '秦淮', '999', '6', '', '879', '/0/878/879/', '3', '320104', 'QIQ', '1', '1', '2017-03-09 11:53:30', '1', '2017-03-09 11:53:30');
INSERT INTO `god_area` VALUES ('883', '建邺区', '建邺', '999', '6', '', '879', '/0/878/879/', '3', '320105', 'JQ', '1', '1', '2017-03-09 11:53:30', '1', '2017-03-09 11:53:30');
INSERT INTO `god_area` VALUES ('884', '鼓楼区', '鼓楼区', '999', '9', '', '879', '/0/878/879/', '3', '320106', 'GLQ', '1', '1', '2017-03-09 11:53:30', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('885', '浦口区', '浦口', '999', '6', '', '879', '/0/878/879/', '3', '320111', 'PKQ', '1', '1', '2017-03-09 11:53:30', '1', '2017-03-09 11:53:30');
INSERT INTO `god_area` VALUES ('886', '栖霞区', '栖霞', '999', '6', '', '879', '/0/878/879/', '3', '320113', 'QXQ', '1', '1', '2017-03-09 11:53:30', '1', '2017-03-09 11:53:30');
INSERT INTO `god_area` VALUES ('887', '雨花台区', '雨花台', '999', '9', '', '879', '/0/878/879/', '3', '320114', 'YITQ', '1', '1', '2017-03-09 11:53:30', '1', '2017-03-09 11:53:30');
INSERT INTO `god_area` VALUES ('888', '江宁区', '江宁', '999', '6', '', '879', '/0/878/879/', '3', '320115', 'JNQ', '1', '1', '2017-03-09 11:53:30', '1', '2017-03-09 11:53:30');
INSERT INTO `god_area` VALUES ('889', '六合区', '六合', '999', '6', '', '879', '/0/878/879/', '3', '320116', 'LIQ', '1', '1', '2017-03-09 11:53:30', '1', '2017-03-09 11:53:30');
INSERT INTO `god_area` VALUES ('890', '溧水区', '溧水', '999', '6', '', '879', '/0/878/879/', '3', '320117', 'SQ', '1', '1', '2017-03-09 11:53:30', '1', '2017-03-09 11:53:30');
INSERT INTO `god_area` VALUES ('891', '高淳区', '高淳', '999', '6', '', '879', '/0/878/879/', '3', '320118', 'GCQ', '1', '1', '2017-03-09 11:53:30', '1', '2017-03-09 11:53:30');
INSERT INTO `god_area` VALUES ('892', '无锡市', '无锡', '999', '6', '', '878', '/0/878/', '2', '320200', 'WXS', '1', '1', '2017-03-09 11:53:30', '1', '2017-03-09 11:53:30');
INSERT INTO `god_area` VALUES ('894', '崇安区', '崇安', '999', '6', '', '892', '/0/878/892/', '3', '320202', null, '0', '1', '2017-03-09 11:53:30', '6', '2017-09-14 10:58:52');
INSERT INTO `god_area` VALUES ('895', '南长区', '南长', '999', '6', '', '892', '/0/878/892/', '3', '320203', null, '0', '1', '2017-03-09 11:53:30', '6', '2017-09-14 10:58:54');
INSERT INTO `god_area` VALUES ('896', '北塘区', '北塘', '999', '6', '', '892', '/0/878/892/', '3', '320204', null, '0', '1', '2017-03-09 11:53:30', '6', '2017-09-14 10:58:58');
INSERT INTO `god_area` VALUES ('897', '锡山区', '锡山', '999', '6', '', '892', '/0/878/892/', '3', '320205', 'XSQ', '1', '1', '2017-03-09 11:53:30', '1', '2017-03-09 11:53:30');
INSERT INTO `god_area` VALUES ('898', '惠山区', '惠山', '999', '6', '', '892', '/0/878/892/', '3', '320206', 'ISQ', '1', '1', '2017-03-09 11:53:30', '1', '2017-03-09 11:53:30');
INSERT INTO `god_area` VALUES ('899', '滨湖区', '滨湖', '999', '6', '', '892', '/0/878/892/', '3', '320211', 'BIQ', '1', '1', '2017-03-09 11:53:30', '1', '2017-03-09 11:53:30');
INSERT INTO `god_area` VALUES ('900', '江阴市', '江阴', '999', '6', '', '892', '/0/878/892/', '3', '320281', 'JYS', '1', '1', '2017-03-09 11:53:30', '1', '2017-03-09 11:53:30');
INSERT INTO `god_area` VALUES ('901', '宜兴市', '宜兴', '999', '6', '', '892', '/0/878/892/', '3', '320282', 'YXS', '1', '1', '2017-03-09 11:53:30', '1', '2017-03-09 11:53:30');
INSERT INTO `god_area` VALUES ('902', '徐州市', '徐州', '999', '6', '', '878', '/0/878/', '2', '320300', 'XZS', '1', '1', '2017-03-09 11:53:30', '1', '2017-03-09 11:53:30');
INSERT INTO `god_area` VALUES ('904', '鼓楼区', '鼓楼区', '999', '9', '', '902', '/0/878/902/', '3', '320302', 'GLQ', '1', '1', '2017-03-09 11:53:30', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('905', '云龙区', '云龙', '999', '6', '', '902', '/0/878/902/', '3', '320303', 'YLQ', '1', '1', '2017-03-09 11:53:30', '1', '2017-03-09 11:53:30');
INSERT INTO `god_area` VALUES ('906', '贾汪区', '贾汪', '999', '6', '', '902', '/0/878/902/', '3', '320305', 'JWQ', '1', '1', '2017-03-09 11:53:30', '1', '2017-03-09 11:53:30');
INSERT INTO `god_area` VALUES ('907', '泉山区', '泉山', '999', '6', '', '902', '/0/878/902/', '3', '320311', 'QSQ', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('908', '铜山区', '铜山', '999', '6', '', '902', '/0/878/902/', '3', '320312', 'TSQ', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('909', '丰县', '丰县', '999', '6', '', '902', '/0/878/902/', '3', '320321', 'FX', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('910', '沛县', '沛县', '999', '6', '', '902', '/0/878/902/', '3', '320322', 'PX', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('911', '睢宁县', '睢宁', '999', '6', '', '902', '/0/878/902/', '3', '320324', 'NX', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('912', '新沂市', '新沂', '999', '6', '', '902', '/0/878/902/', '3', '320381', 'XYS', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('913', '邳州市', '邳州', '999', '6', '', '902', '/0/878/902/', '3', '320382', 'ZS', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('914', '常州市', '常州', '999', '6', '', '878', '/0/878/', '2', '320400', 'CZS', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('916', '天宁区', '天宁', '999', '6', '', '914', '/0/878/914/', '3', '320402', 'TNQ', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('917', '钟楼区', '钟楼', '999', '6', '', '914', '/0/878/914/', '3', '320404', 'ZLQ', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('918', '戚墅堰区', '戚墅堰', '999', '9', '', '914', '/0/878/914/', '3', '320405', 'QSYQ', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('919', '新北区', '新北区', '999', '6', '', '914', '/0/878/914/', '3', '320411', 'XBQ', '1', '1', '2017-03-09 11:53:31', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('920', '武进区', '武进', '999', '6', '', '914', '/0/878/914/', '3', '320412', 'WJQ', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('921', '溧阳市', '溧阳', '999', '6', '', '914', '/0/878/914/', '3', '320481', 'YS', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('922', '金坛区', '金坛', '999', '6', '', '914', '/0/878/914/', '3', '320482', 'JTS', '1', '1', '2017-03-09 11:53:31', '16', '2018-07-03 20:56:43');
INSERT INTO `god_area` VALUES ('923', '苏州市', '苏州', '999', '6', '', '878', '/0/878/', '2', '320500', 'SZS', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('925', '虎丘区', '虎丘', '999', '6', '', '923', '/0/878/923/', '3', '320505', 'IQQ', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('926', '吴中区', '吴中', '999', '6', '', '923', '/0/878/923/', '3', '320506', 'WZQ', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('927', '相城区', '相城区', '999', '9', '', '923', '/0/878/923/', '3', '320507', 'XCQ', '1', '1', '2017-03-09 11:53:31', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('928', '姑苏区', '姑苏', '999', '6', '', '923', '/0/878/923/', '3', '320508', 'GSQ', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('929', '吴江区', '吴江', '999', '6', '', '923', '/0/878/923/', '3', '320509', 'WJQ', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('930', '常熟市', '常熟', '999', '6', '', '923', '/0/878/923/', '3', '320581', 'CSS', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('931', '张家港市', '张家港', '999', '9', '', '923', '/0/878/923/', '3', '320582', 'ZJGS', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('932', '昆山市', '昆山', '999', '6', '', '923', '/0/878/923/', '3', '320583', 'KSS', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('933', '太仓市', '太仓', '999', '6', '', '923', '/0/878/923/', '3', '320585', 'TCS', '1', '1', '2017-03-09 11:53:31', '1', '2017-03-09 11:53:31');
INSERT INTO `god_area` VALUES ('934', '南通市', '南通', '999', '6', '', '878', '/0/878/', '2', '320600', 'NTS', '1', '1', '2017-03-09 11:53:32', '1', '2017-03-09 11:53:32');
INSERT INTO `god_area` VALUES ('936', '崇川区', '崇川', '999', '6', '', '934', '/0/878/934/', '3', '320602', 'CCQ', '1', '1', '2017-03-09 11:53:32', '1', '2017-03-09 11:53:32');
INSERT INTO `god_area` VALUES ('937', '港闸区', '港闸', '999', '6', '', '934', '/0/878/934/', '3', '320611', 'GZQ', '1', '1', '2017-03-09 11:53:32', '1', '2017-03-09 11:53:32');
INSERT INTO `god_area` VALUES ('938', '通州区', '通州', '999', '6', '', '934', '/0/878/934/', '3', '320612', 'TZQ', '1', '1', '2017-03-09 11:53:32', '1', '2017-03-09 11:53:32');
INSERT INTO `god_area` VALUES ('939', '海安市', '海安', '999', '6', '', '934', '/0/878/934/', '3', '320621', 'IAX', '1', '1', '2017-03-09 11:53:32', '12', '2018-06-25 11:14:30');
INSERT INTO `god_area` VALUES ('940', '如东县', '如东', '999', '6', '', '934', '/0/878/934/', '3', '320623', 'RDX', '1', '1', '2017-03-09 11:53:32', '1', '2017-03-09 11:53:32');
INSERT INTO `god_area` VALUES ('941', '启东市', '启东', '999', '6', '', '934', '/0/878/934/', '3', '320681', 'QDS', '1', '1', '2017-03-09 11:53:32', '1', '2017-03-09 11:53:32');
INSERT INTO `god_area` VALUES ('942', '如皋市', '如皋', '999', '6', '', '934', '/0/878/934/', '3', '320682', 'RGS', '1', '1', '2017-03-09 11:53:32', '1', '2017-03-09 11:53:32');
INSERT INTO `god_area` VALUES ('943', '海门市', '海门', '999', '6', '', '934', '/0/878/934/', '3', '320684', 'IMS', '1', '1', '2017-03-09 11:53:32', '1', '2017-03-09 11:53:32');
INSERT INTO `god_area` VALUES ('944', '连云港市', '连云港', '999', '9', '', '878', '/0/878/', '2', '320700', 'LYGS', '1', '1', '2017-03-09 11:53:32', '1', '2017-03-09 11:53:32');
INSERT INTO `god_area` VALUES ('946', '连云区', '连云区', '999', '9', '', '944', '/0/878/944/', '3', '320703', 'LYQ', '1', '1', '2017-03-09 11:53:32', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('947', '海州区', '海州', '999', '6', '', '944', '/0/878/944/', '3', '320706', 'IZQ', '1', '1', '2017-03-09 11:53:32', '1', '2017-03-09 11:53:32');
INSERT INTO `god_area` VALUES ('948', '赣榆区', '赣榆', '999', '6', '', '944', '/0/878/944/', '3', '320707', 'GYQ', '1', '1', '2017-03-09 11:53:32', '1', '2017-03-09 11:53:32');
INSERT INTO `god_area` VALUES ('949', '东海县', '东海县', '999', '9', '', '944', '/0/878/944/', '3', '320722', 'DIX', '1', '1', '2017-03-09 11:53:32', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('950', '灌云县', '灌云', '999', '6', '', '944', '/0/878/944/', '3', '320723', 'GYX', '1', '1', '2017-03-09 11:53:32', '1', '2017-03-09 11:53:32');
INSERT INTO `god_area` VALUES ('951', '灌南县', '灌南', '999', '6', '', '944', '/0/878/944/', '3', '320724', 'GNX', '1', '1', '2017-03-09 11:53:32', '1', '2017-03-09 11:53:32');
INSERT INTO `god_area` VALUES ('952', '淮安市', '淮安', '999', '6', '', '878', '/0/878/', '2', '320800', 'IAS', '1', '1', '2017-03-09 11:53:32', '1', '2017-03-09 11:53:32');
INSERT INTO `god_area` VALUES ('954', '清河区', '清河区', '999', '9', '', '952', '/0/878/952/', '3', '320802', 'QIQ', '1', '1', '2017-03-09 11:53:32', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('955', '淮安区', '淮安区', '999', '9', '', '952', '/0/878/952/', '3', '320803', 'IAQ', '1', '88', '2017-03-09 11:53:32', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('956', '淮阴区', '淮阴', '999', '6', '', '952', '/0/878/952/', '3', '320804', 'IYQ', '1', '1', '2017-03-09 11:53:32', '1', '2017-03-09 11:53:32');
INSERT INTO `god_area` VALUES ('957', '清浦区', '清浦', '999', '6', '', '952', '/0/878/952/', '3', '320811', 'QPQ', '1', '1', '2017-03-09 11:53:32', '1', '2017-03-09 11:53:32');
INSERT INTO `god_area` VALUES ('958', '涟水县', '涟水', '999', '6', '', '952', '/0/878/952/', '3', '320826', 'LSX', '1', '1', '2017-03-09 11:53:32', '1', '2017-03-09 11:53:32');
INSERT INTO `god_area` VALUES ('959', '洪泽区', '洪泽', '999', '6', '', '952', '/0/878/952/', '3', '320829', 'IZQ', '1', '1', '2017-03-09 11:53:32', '16', '2018-04-19 11:31:03');
INSERT INTO `god_area` VALUES ('960', '盱眙县', '盱眙', '999', '6', '', '952', '/0/878/952/', '3', '320830', 'X', '1', '1', '2017-03-09 11:53:32', '1', '2017-03-09 11:53:32');
INSERT INTO `god_area` VALUES ('961', '金湖县', '金湖', '999', '6', '', '952', '/0/878/952/', '3', '320831', 'JIX', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('962', '盐城市', '盐城', '999', '6', '', '878', '/0/878/', '2', '320900', 'YCS', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('964', '亭湖区', '亭湖', '999', '6', '', '962', '/0/878/962/', '3', '320902', 'TIQ', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('965', '盐都区', '盐都', '999', '6', '', '962', '/0/878/962/', '3', '320903', 'YDQ', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('966', '响水县', '响水', '999', '6', '', '962', '/0/878/962/', '3', '320921', 'XSX', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('967', '滨海县', '滨海', '999', '6', '', '962', '/0/878/962/', '3', '320922', 'BIX', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('968', '阜宁县', '阜宁', '999', '6', '', '962', '/0/878/962/', '3', '320923', 'FNX', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('969', '射阳县', '射阳', '999', '6', '', '962', '/0/878/962/', '3', '320924', 'SYX', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('970', '建湖县', '建湖', '999', '6', '', '962', '/0/878/962/', '3', '320925', 'JIX', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('971', '东台市', '东台', '999', '6', '', '962', '/0/878/962/', '3', '320981', 'DTS', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('972', '大丰区', '大丰', '999', '6', '', '962', '/0/878/962/', '3', '320982', 'DFS', '1', '1', '2017-03-09 11:53:33', '16', '2018-07-03 20:58:47');
INSERT INTO `god_area` VALUES ('973', '扬州市', '扬州', '999', '6', '', '878', '/0/878/', '2', '321000', 'YZS', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('975', '广陵区', '广陵', '999', '6', '', '973', '/0/878/973/', '3', '321002', 'GLQ', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('976', '邗江区', '邗江', '999', '6', '', '973', '/0/878/973/', '3', '321003', 'JQ', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('977', '江都区', '江都', '999', '6', '', '973', '/0/878/973/', '3', '321012', 'JDQ', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('978', '宝应县', '宝应', '999', '6', '', '973', '/0/878/973/', '3', '321023', 'BYX', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('979', '仪征市', '仪征', '999', '6', '', '973', '/0/878/973/', '3', '321081', 'YZS', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('980', '高邮市', '高邮', '999', '6', '', '973', '/0/878/973/', '3', '321084', 'GYS', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('981', '镇江市', '镇江', '999', '6', '', '878', '/0/878/', '2', '321100', 'ZJS', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('983', '京口区', '京口', '999', '6', '', '981', '/0/878/981/', '3', '321102', 'JKQ', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('984', '润州区', '润州', '999', '6', '', '981', '/0/878/981/', '3', '321111', 'RZQ', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('985', '丹徒区', '丹徒', '999', '6', '', '981', '/0/878/981/', '3', '321112', 'DTQ', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('986', '丹阳市', '丹阳', '999', '6', '', '981', '/0/878/981/', '3', '321181', 'DYS', '1', '1', '2017-03-09 11:53:33', '1', '2017-03-09 11:53:33');
INSERT INTO `god_area` VALUES ('987', '扬中市', '扬中', '999', '6', '', '981', '/0/878/981/', '3', '321182', 'YZS', '1', '1', '2017-03-09 11:53:34', '1', '2017-03-09 11:53:34');
INSERT INTO `god_area` VALUES ('988', '句容市', '句容', '999', '6', '', '981', '/0/878/981/', '3', '321183', 'JRS', '1', '1', '2017-03-09 11:53:34', '1', '2017-03-09 11:53:34');
INSERT INTO `god_area` VALUES ('989', '泰州市', '泰州', '999', '6', '', '878', '/0/878/', '2', '321200', 'TZS', '1', '1', '2017-03-09 11:53:34', '1', '2017-03-09 11:53:34');
INSERT INTO `god_area` VALUES ('991', '海陵区', '海陵', '999', '6', '', '989', '/0/878/989/', '3', '321202', 'ILQ', '1', '1', '2017-03-09 11:53:34', '1', '2017-03-09 11:53:34');
INSERT INTO `god_area` VALUES ('992', '高港区', '高港', '999', '6', '', '989', '/0/878/989/', '3', '321203', 'GGQ', '1', '1', '2017-03-09 11:53:34', '1', '2017-03-09 11:53:34');
INSERT INTO `god_area` VALUES ('993', '姜堰区', '姜堰', '999', '6', '', '989', '/0/878/989/', '3', '321204', 'JYQ', '1', '1', '2017-03-09 11:53:34', '1', '2017-03-09 11:53:34');
INSERT INTO `god_area` VALUES ('994', '兴化市', '兴化', '999', '6', '', '989', '/0/878/989/', '3', '321281', 'XIS', '1', '1', '2017-03-09 11:53:34', '1', '2017-03-09 11:53:34');
INSERT INTO `god_area` VALUES ('995', '靖江市', '靖江', '999', '6', '', '989', '/0/878/989/', '3', '321282', 'JJS', '1', '1', '2017-03-09 11:53:34', '1', '2017-03-09 11:53:34');
INSERT INTO `god_area` VALUES ('996', '泰兴市', '泰兴', '999', '6', '', '989', '/0/878/989/', '3', '321283', 'TXS', '1', '1', '2017-03-09 11:53:34', '1', '2017-03-09 11:53:34');
INSERT INTO `god_area` VALUES ('997', '宿迁市', '宿迁', '999', '6', '', '878', '/0/878/', '2', '321300', 'SQS', '1', '1', '2017-03-09 11:53:34', '1', '2017-03-09 11:53:34');
INSERT INTO `god_area` VALUES ('999', '宿城区', '宿城区', '999', '9', '', '997', '/0/878/997/', '3', '321302', 'SCQ', '1', '1', '2017-03-09 11:53:34', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1000', '宿豫区', '宿豫', '999', '6', '', '997', '/0/878/997/', '3', '321311', 'SYQ', '1', '1', '2017-03-09 11:53:34', '1', '2017-03-09 11:53:34');
INSERT INTO `god_area` VALUES ('1001', '沭阳县', '沭阳', '999', '6', '', '997', '/0/878/997/', '3', '321322', 'YX', '1', '1', '2017-03-09 11:53:34', '1', '2017-03-09 11:53:34');
INSERT INTO `god_area` VALUES ('1002', '泗阳县', '泗阳', '999', '6', '', '997', '/0/878/997/', '3', '321323', 'YX', '1', '1', '2017-03-09 11:53:34', '1', '2017-03-09 11:53:34');
INSERT INTO `god_area` VALUES ('1003', '泗洪县', '泗洪', '999', '6', '', '997', '/0/878/997/', '3', '321324', 'IX', '1', '1', '2017-03-09 11:53:34', '1', '2017-03-09 11:53:34');
INSERT INTO `god_area` VALUES ('1004', '浙江省', '浙江', '999', '6', '', '0', '/0/', '1', '330000', 'ZJS', '1', '1', '2017-03-09 11:53:34', '1', '2017-03-09 11:53:34');
INSERT INTO `god_area` VALUES ('1005', '杭州市', '杭州', '999', '6', '', '1004', '/0/1004/', '2', '330100', 'IZS', '1', '1', '2017-03-09 11:53:34', '1', '2017-03-09 11:53:34');
INSERT INTO `god_area` VALUES ('1007', '上城区', '上城区', '999', '9', '', '1005', '/0/1004/1005/', '3', '330102', 'SCQ', '1', '1', '2017-03-09 11:53:34', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1008', '下城区', '下城区', '999', '9', '', '1005', '/0/1004/1005/', '3', '330103', 'XCQ', '1', '1', '2017-03-09 11:53:34', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1009', '江干区', '江干', '999', '6', '', '1005', '/0/1004/1005/', '3', '330104', 'JGQ', '1', '1', '2017-03-09 11:53:34', '1', '2017-03-09 11:53:34');
INSERT INTO `god_area` VALUES ('1010', '拱墅区', '拱墅', '999', '6', '', '1005', '/0/1004/1005/', '3', '330105', 'GSQ', '1', '1', '2017-03-09 11:53:34', '1', '2017-03-09 11:53:34');
INSERT INTO `god_area` VALUES ('1011', '西湖区', '西湖区', '999', '6', '', '1005', '/0/1004/1005/', '3', '330106', 'XIQ', '1', '1', '2017-03-09 11:53:35', '1', '2019-03-18 15:12:28');
INSERT INTO `god_area` VALUES ('1012', '滨江区', '滨江', '999', '6', '', '1005', '/0/1004/1005/', '3', '330108', 'BJQ', '1', '1', '2017-03-09 11:53:35', '1', '2017-03-09 11:53:35');
INSERT INTO `god_area` VALUES ('1013', '萧山区', '萧山', '999', '6', '', '1005', '/0/1004/1005/', '3', '330109', 'XSQ', '1', '1', '2017-03-09 11:53:35', '1', '2017-03-09 11:53:35');
INSERT INTO `god_area` VALUES ('1014', '余杭区', '余杭', '999', '6', '', '1005', '/0/1004/1005/', '3', '330110', 'YIQ', '1', '1', '2017-03-09 11:53:35', '1', '2017-03-09 11:53:35');
INSERT INTO `god_area` VALUES ('1015', '桐庐县', '桐庐', '999', '6', '', '1005', '/0/1004/1005/', '3', '330122', 'TLX', '1', '1', '2017-03-09 11:53:35', '1', '2017-03-09 11:53:35');
INSERT INTO `god_area` VALUES ('1016', '淳安县', '淳安', '999', '6', '', '1005', '/0/1004/1005/', '3', '330127', 'CAX', '1', '1', '2017-03-09 11:53:35', '1', '2017-03-09 11:53:35');
INSERT INTO `god_area` VALUES ('1017', '建德市', '建德', '999', '6', '', '1005', '/0/1004/1005/', '3', '330182', 'JDS', '1', '1', '2017-03-09 11:53:35', '1', '2017-03-09 11:53:35');
INSERT INTO `god_area` VALUES ('1018', '富阳区', '富阳', '999', '6', '', '1005', '/0/1004/1005/', '3', '330183', 'FYQ', '1', '1', '2017-03-09 11:53:35', '6', '2017-08-10 10:12:01');
INSERT INTO `god_area` VALUES ('1019', '临安区', '临安', '999', '6', '', '1005', '/0/1004/1005/', '3', '330185', 'LAS', '1', '1', '2017-03-09 11:53:35', '16', '2018-07-03 21:00:01');
INSERT INTO `god_area` VALUES ('1020', '宁波市', '宁波', '999', '6', '', '1004', '/0/1004/', '2', '330200', 'NBS', '1', '1', '2017-03-09 11:53:35', '1', '2017-03-09 11:53:35');
INSERT INTO `god_area` VALUES ('1022', '海曙区', '海曙', '999', '6', '', '1020', '/0/1004/1020/', '3', '330203', 'ISQ', '1', '1', '2017-03-09 11:53:35', '1', '2017-03-09 11:53:35');
INSERT INTO `god_area` VALUES ('1023', '江东区', '江东区', '999', '6', '', '1020', '/0/1004/1020/', '3', '330204', 'JDQ', '0', '1', '2017-03-09 11:53:35', '16', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('1024', '江北区', '江北区', '999', '6', '', '1020', '/0/1004/1020/', '3', '330205', 'JBQ', '1', '1', '2017-03-09 11:53:35', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('1025', '北仑区', '北仑', '999', '6', '', '1020', '/0/1004/1020/', '3', '330206', 'BLQ', '1', '1', '2017-03-09 11:53:35', '1', '2017-03-09 11:53:35');
INSERT INTO `god_area` VALUES ('1026', '镇海区', '镇海', '999', '6', '', '1020', '/0/1004/1020/', '3', '330211', 'ZIQ', '1', '1', '2017-03-09 11:53:35', '1', '2017-03-09 11:53:35');
INSERT INTO `god_area` VALUES ('1027', '鄞州区', '鄞州', '999', '6', '', '1020', '/0/1004/1020/', '3', '330212', 'ZQ', '1', '1', '2017-03-09 11:53:35', '1', '2017-03-09 11:53:35');
INSERT INTO `god_area` VALUES ('1028', '象山县', '象山', '999', '6', '', '1020', '/0/1004/1020/', '3', '330225', 'XSX', '1', '1', '2017-03-09 11:53:35', '1', '2017-03-09 11:53:35');
INSERT INTO `god_area` VALUES ('1029', '宁海县', '宁海', '999', '6', '', '1020', '/0/1004/1020/', '3', '330226', 'NIX', '1', '1', '2017-03-09 11:53:35', '1', '2017-03-09 11:53:35');
INSERT INTO `god_area` VALUES ('1030', '余姚市', '余姚', '999', '6', '', '1020', '/0/1004/1020/', '3', '330281', 'YYS', '1', '1', '2017-03-09 11:53:35', '1', '2017-03-09 11:53:35');
INSERT INTO `god_area` VALUES ('1031', '慈溪市', '慈溪', '999', '6', '', '1020', '/0/1004/1020/', '3', '330282', 'CXS', '1', '1', '2017-03-09 11:53:35', '1', '2018-12-05 23:17:44');
INSERT INTO `god_area` VALUES ('1032', '奉化区', '奉化', '999', '6', '', '1020', '/0/1004/1020/', '3', '330283', 'FIS', '1', '1', '2017-03-09 11:53:35', '16', '2018-07-03 21:01:52');
INSERT INTO `god_area` VALUES ('1033', '温州市', '温州', '999', '6', '', '1004', '/0/1004/', '2', '330300', 'WZS', '1', '1', '2017-03-09 11:53:35', '1', '2017-03-09 11:53:35');
INSERT INTO `god_area` VALUES ('1035', '鹿城区', '鹿城区', '999', '9', '', '1033', '/0/1004/1033/', '3', '330302', 'LCQ', '1', '1', '2017-03-09 11:53:35', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1036', '龙湾区', '龙湾', '999', '6', '', '1033', '/0/1004/1033/', '3', '330303', 'LWQ', '1', '1', '2017-03-09 11:53:35', '1', '2017-03-09 11:53:35');
INSERT INTO `god_area` VALUES ('1037', '瓯海区', '瓯海', '999', '6', '', '1033', '/0/1004/1033/', '3', '330304', 'IQ', '1', '1', '2017-03-09 11:53:35', '1', '2017-03-09 11:53:35');
INSERT INTO `god_area` VALUES ('1038', '洞头区', '洞头', '999', '6', '', '1033', '/0/1004/1033/', '3', '330322', 'DTX', '1', '1', '2017-03-09 11:53:36', '12', '2018-06-14 09:33:42');
INSERT INTO `god_area` VALUES ('1039', '永嘉县', '永嘉', '999', '6', '', '1033', '/0/1004/1033/', '3', '330324', 'YJX', '1', '1', '2017-03-09 11:53:36', '1', '2017-03-09 11:53:36');
INSERT INTO `god_area` VALUES ('1040', '平阳县', '平阳', '999', '6', '', '1033', '/0/1004/1033/', '3', '330326', 'PYX', '1', '1', '2017-03-09 11:53:36', '1', '2017-03-09 11:53:36');
INSERT INTO `god_area` VALUES ('1041', '苍南县', '苍南', '999', '6', '', '1033', '/0/1004/1033/', '3', '330327', 'CNX', '1', '1', '2017-03-09 11:53:36', '1', '2017-03-09 11:53:36');
INSERT INTO `god_area` VALUES ('1042', '文成县', '文成', '999', '6', '', '1033', '/0/1004/1033/', '3', '330328', 'WCX', '1', '1', '2017-03-09 11:53:36', '1', '2017-03-09 11:53:36');
INSERT INTO `god_area` VALUES ('1043', '泰顺县', '泰顺', '999', '6', '', '1033', '/0/1004/1033/', '3', '330329', 'TSX', '1', '1', '2017-03-09 11:53:36', '1', '2017-03-09 11:53:36');
INSERT INTO `god_area` VALUES ('1044', '瑞安市', '瑞安', '999', '6', '', '1033', '/0/1004/1033/', '3', '330381', 'RAS', '1', '1', '2017-03-09 11:53:36', '1', '2017-03-09 11:53:36');
INSERT INTO `god_area` VALUES ('1045', '乐清市', '乐清', '999', '6', '', '1033', '/0/1004/1033/', '3', '330382', 'LQS', '1', '1', '2017-03-09 11:53:36', '1', '2017-03-09 11:53:36');
INSERT INTO `god_area` VALUES ('1046', '嘉兴市', '嘉兴', '999', '6', '', '1004', '/0/1004/', '2', '330400', 'JXS', '1', '1', '2017-03-09 11:53:36', '1', '2017-03-09 11:53:36');
INSERT INTO `god_area` VALUES ('1048', '南湖区', '南湖', '999', '6', '', '1046', '/0/1004/1046/', '3', '330402', 'NIQ', '1', '1', '2017-03-09 11:53:36', '1', '2017-03-09 11:53:36');
INSERT INTO `god_area` VALUES ('1049', '秀洲区', '秀洲', '999', '6', '', '1046', '/0/1004/1046/', '3', '330411', 'XZQ', '1', '1', '2017-03-09 11:53:36', '1', '2017-03-09 11:53:36');
INSERT INTO `god_area` VALUES ('1050', '嘉善县', '嘉善', '999', '6', '', '1046', '/0/1004/1046/', '3', '330421', 'JSX', '1', '1', '2017-03-09 11:53:36', '1', '2017-03-09 11:53:36');
INSERT INTO `god_area` VALUES ('1051', '海盐县', '海盐', '999', '6', '', '1046', '/0/1004/1046/', '3', '330424', 'IYX', '1', '1', '2017-03-09 11:53:36', '1', '2017-03-09 11:53:36');
INSERT INTO `god_area` VALUES ('1052', '海宁市', '海宁', '999', '6', '', '1046', '/0/1004/1046/', '3', '330481', 'INS', '1', '1', '2017-03-09 11:53:36', '1', '2017-03-09 11:53:36');
INSERT INTO `god_area` VALUES ('1053', '平湖市', '平湖', '999', '6', '', '1046', '/0/1004/1046/', '3', '330482', 'PIS', '1', '1', '2017-03-09 11:53:36', '1', '2017-03-09 11:53:36');
INSERT INTO `god_area` VALUES ('1054', '桐乡市', '桐乡', '999', '6', '', '1046', '/0/1004/1046/', '3', '330483', 'TXS', '1', '1', '2017-03-09 11:53:36', '1', '2017-03-09 11:53:36');
INSERT INTO `god_area` VALUES ('1055', '湖州市', '湖州', '999', '6', '', '1004', '/0/1004/', '2', '330500', 'IZS', '1', '1', '2017-03-09 11:53:36', '1', '2017-03-09 11:53:36');
INSERT INTO `god_area` VALUES ('1057', '吴兴区', '吴兴', '999', '6', '', '1055', '/0/1004/1055/', '3', '330502', 'WXQ', '1', '1', '2017-03-09 11:53:36', '1', '2017-03-09 11:53:36');
INSERT INTO `god_area` VALUES ('1058', '南浔区', '南浔', '999', '6', '', '1055', '/0/1004/1055/', '3', '330503', 'NQ', '1', '1', '2017-03-09 11:53:36', '1', '2017-03-09 11:53:36');
INSERT INTO `god_area` VALUES ('1059', '德清县', '德清', '999', '6', '', '1055', '/0/1004/1055/', '3', '330521', 'DQX', '1', '1', '2017-03-09 11:53:36', '1', '2017-03-09 11:53:36');
INSERT INTO `god_area` VALUES ('1060', '长兴县', '长兴', '999', '6', '', '1055', '/0/1004/1055/', '3', '330522', 'CXX', '1', '1', '2017-03-09 11:53:36', '1', '2017-03-09 11:53:36');
INSERT INTO `god_area` VALUES ('1061', '安吉县', '安吉', '999', '6', '', '1055', '/0/1004/1055/', '3', '330523', 'AJX', '1', '1', '2017-03-09 11:53:36', '1', '2017-03-09 11:53:36');
INSERT INTO `god_area` VALUES ('1062', '绍兴市', '绍兴', '999', '6', '', '1004', '/0/1004/', '2', '330600', 'SXS', '1', '1', '2017-03-09 11:53:37', '1', '2017-03-09 11:53:37');
INSERT INTO `god_area` VALUES ('1064', '越城区', '越城区', '999', '9', '', '1062', '/0/1004/1062/', '3', '330602', 'YCQ', '1', '1', '2017-03-09 11:53:37', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1065', '柯桥区', '柯桥', '999', '6', '', '1062', '/0/1004/1062/', '3', '330603', 'KQQ', '1', '1', '2017-03-09 11:53:37', '1', '2017-03-09 11:53:37');
INSERT INTO `god_area` VALUES ('1066', '上虞区', '上虞', '999', '6', '', '1062', '/0/1004/1062/', '3', '330604', 'SYQ', '1', '1', '2017-03-09 11:53:37', '1', '2017-03-09 11:53:37');
INSERT INTO `god_area` VALUES ('1067', '新昌县', '新昌', '999', '6', '', '1062', '/0/1004/1062/', '3', '330624', 'XCX', '1', '1', '2017-03-09 11:53:37', '1', '2017-03-09 11:53:37');
INSERT INTO `god_area` VALUES ('1068', '诸暨市', '诸暨', '999', '6', '', '1062', '/0/1004/1062/', '3', '330681', 'ZS', '1', '1', '2017-03-09 11:53:37', '1', '2017-03-09 11:53:37');
INSERT INTO `god_area` VALUES ('1069', '嵊州市', '嵊州', '999', '6', '', '1062', '/0/1004/1062/', '3', '330683', 'ZS', '1', '1', '2017-03-09 11:53:37', '1', '2017-03-09 11:53:37');
INSERT INTO `god_area` VALUES ('1070', '金华市', '金华', '999', '6', '', '1004', '/0/1004/', '2', '330700', 'JIS', '1', '1', '2017-03-09 11:53:37', '1', '2017-03-09 11:53:37');
INSERT INTO `god_area` VALUES ('1072', '婺城区', '婺城区', '999', '9', '', '1070', '/0/1004/1070/', '3', '330702', 'CQ', '1', '1', '2017-03-09 11:53:37', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1073', '金东区', '金东区', '999', '6', '', '1070', '/0/1004/1070/', '3', '330703', 'JDQ', '1', '1', '2017-03-09 11:53:37', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('1074', '武义县', '武义', '999', '6', '', '1070', '/0/1004/1070/', '3', '330723', 'WYX', '1', '1', '2017-03-09 11:53:37', '1', '2017-03-09 11:53:37');
INSERT INTO `god_area` VALUES ('1075', '浦江县', '浦江', '999', '6', '', '1070', '/0/1004/1070/', '3', '330726', 'PJX', '1', '1', '2017-03-09 11:53:37', '1', '2017-03-09 11:53:37');
INSERT INTO `god_area` VALUES ('1076', '磐安县', '磐安', '999', '6', '', '1070', '/0/1004/1070/', '3', '330727', 'PAX', '1', '1', '2017-03-09 11:53:37', '1', '2017-03-09 11:53:37');
INSERT INTO `god_area` VALUES ('1077', '兰溪市', '兰溪', '999', '6', '', '1070', '/0/1004/1070/', '3', '330781', 'LXS', '1', '1', '2017-03-09 11:53:37', '1', '2017-03-09 11:53:37');
INSERT INTO `god_area` VALUES ('1078', '义乌市', '义乌', '999', '6', '', '1070', '/0/1004/1070/', '3', '330782', 'YWS', '1', '1', '2017-03-09 11:53:37', '1', '2017-03-09 11:53:37');
INSERT INTO `god_area` VALUES ('1079', '东阳市', '东阳', '999', '6', '', '1070', '/0/1004/1070/', '3', '330783', 'DYS', '1', '1', '2017-03-09 11:53:37', '1', '2017-03-09 11:53:37');
INSERT INTO `god_area` VALUES ('1080', '永康市', '永康', '999', '6', '', '1070', '/0/1004/1070/', '3', '330784', 'YKS', '1', '1', '2017-03-09 11:53:37', '1', '2017-03-09 11:53:37');
INSERT INTO `god_area` VALUES ('1081', '衢州市', '衢州', '999', '6', '', '1004', '/0/1004/', '2', '330800', 'ZS', '1', '1', '2017-03-09 11:53:37', '1', '2017-03-09 11:53:37');
INSERT INTO `god_area` VALUES ('1083', '柯城区', '柯城区', '999', '9', '', '1081', '/0/1004/1081/', '3', '330802', 'KCQ', '1', '1', '2017-03-09 11:53:37', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1084', '衢江区', '衢江', '999', '6', '', '1081', '/0/1004/1081/', '3', '330803', 'JQ', '1', '1', '2017-03-09 11:53:38', '1', '2017-03-09 11:53:38');
INSERT INTO `god_area` VALUES ('1085', '常山县', '常山', '999', '6', '', '1081', '/0/1004/1081/', '3', '330822', 'CSX', '1', '1', '2017-03-09 11:53:38', '1', '2017-03-09 11:53:38');
INSERT INTO `god_area` VALUES ('1086', '开化县', '开化', '999', '6', '', '1081', '/0/1004/1081/', '3', '330824', 'KIX', '1', '1', '2017-03-09 11:53:38', '1', '2017-03-09 11:53:38');
INSERT INTO `god_area` VALUES ('1087', '龙游县', '龙游', '999', '6', '', '1081', '/0/1004/1081/', '3', '330825', 'LYX', '1', '1', '2017-03-09 11:53:38', '1', '2017-03-09 11:53:38');
INSERT INTO `god_area` VALUES ('1088', '江山市', '江山', '999', '6', '', '1081', '/0/1004/1081/', '3', '330881', 'JSS', '1', '1', '2017-03-09 11:53:38', '1', '2017-03-09 11:53:38');
INSERT INTO `god_area` VALUES ('1089', '舟山市', '舟山', '999', '6', '', '1004', '/0/1004/', '2', '330900', 'ZSS', '1', '1', '2017-03-09 11:53:38', '1', '2017-03-09 11:53:38');
INSERT INTO `god_area` VALUES ('1091', '定海区', '定海', '999', '6', '', '1089', '/0/1004/1089/', '3', '330902', 'DIQ', '1', '1', '2017-03-09 11:53:38', '1', '2017-03-09 11:53:38');
INSERT INTO `god_area` VALUES ('1092', '普陀区', '普陀', '999', '6', '', '1089', '/0/1004/1089/', '3', '330903', 'PTQ', '1', '1', '2017-03-09 11:53:38', '1', '2017-03-09 11:53:38');
INSERT INTO `god_area` VALUES ('1093', '岱山县', '岱山', '999', '6', '', '1089', '/0/1004/1089/', '3', '330921', 'SX', '1', '1', '2017-03-09 11:53:38', '1', '2017-03-09 11:53:38');
INSERT INTO `god_area` VALUES ('1094', '嵊泗县', '嵊泗', '999', '6', '', '1089', '/0/1004/1089/', '3', '330922', 'X', '1', '1', '2017-03-09 11:53:38', '1', '2017-03-09 11:53:38');
INSERT INTO `god_area` VALUES ('1095', '台州市', '台州', '999', '6', '', '1004', '/0/1004/', '2', '331000', 'TZS', '1', '1', '2017-03-09 11:53:38', '1', '2017-03-09 11:53:38');
INSERT INTO `god_area` VALUES ('1097', '椒江区', '椒江', '999', '6', '', '1095', '/0/1004/1095/', '3', '331002', 'JJQ', '1', '1', '2017-03-09 11:53:39', '1', '2017-03-09 11:53:39');
INSERT INTO `god_area` VALUES ('1098', '黄岩区', '黄岩', '999', '6', '', '1095', '/0/1004/1095/', '3', '331003', 'IYQ', '1', '1', '2017-03-09 11:53:39', '1', '2017-03-09 11:53:39');
INSERT INTO `god_area` VALUES ('1099', '路桥区', '路桥区', '999', '9', '', '1095', '/0/1004/1095/', '3', '331004', 'QQ', '1', '1', '2017-03-09 11:53:39', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1100', '玉环市', '玉环', '999', '6', '', '1095', '/0/1004/1095/', '3', '331021', 'YIX', '1', '1', '2017-03-09 11:53:39', '16', '2018-07-10 16:50:08');
INSERT INTO `god_area` VALUES ('1101', '三门县', '三门', '999', '6', '', '1095', '/0/1004/1095/', '3', '331022', 'SMX', '1', '1', '2017-03-09 11:53:39', '1', '2017-03-09 11:53:39');
INSERT INTO `god_area` VALUES ('1102', '天台县', '天台', '999', '6', '', '1095', '/0/1004/1095/', '3', '331023', 'TTX', '1', '1', '2017-03-09 11:53:39', '1', '2017-03-09 11:53:39');
INSERT INTO `god_area` VALUES ('1103', '仙居县', '仙居', '999', '6', '', '1095', '/0/1004/1095/', '3', '331024', 'XJX', '1', '1', '2017-03-09 11:53:39', '1', '2017-03-09 11:53:39');
INSERT INTO `god_area` VALUES ('1104', '温岭市', '温岭', '999', '6', '', '1095', '/0/1004/1095/', '3', '331081', 'WLS', '1', '1', '2017-03-09 11:53:39', '1', '2017-03-09 11:53:39');
INSERT INTO `god_area` VALUES ('1105', '临海市', '临海', '999', '6', '', '1095', '/0/1004/1095/', '3', '331082', 'LIS', '1', '1', '2017-03-09 11:53:39', '1', '2017-03-09 11:53:39');
INSERT INTO `god_area` VALUES ('1106', '丽水市', '丽水', '999', '6', '', '1004', '/0/1004/', '2', '331100', 'LSS', '1', '1', '2017-03-09 11:53:39', '1', '2017-03-09 11:53:39');
INSERT INTO `god_area` VALUES ('1108', '莲都区', '莲都', '999', '6', '', '1106', '/0/1004/1106/', '3', '331102', 'LDQ', '1', '1', '2017-03-09 11:53:39', '1', '2017-03-09 11:53:39');
INSERT INTO `god_area` VALUES ('1109', '青田县', '青田', '999', '6', '', '1106', '/0/1004/1106/', '3', '331121', 'QTX', '1', '1', '2017-03-09 11:53:39', '1', '2017-03-09 11:53:39');
INSERT INTO `god_area` VALUES ('1110', '缙云县', '缙云', '999', '6', '', '1106', '/0/1004/1106/', '3', '331122', 'YX', '1', '1', '2017-03-09 11:53:39', '1', '2017-03-09 11:53:39');
INSERT INTO `god_area` VALUES ('1111', '遂昌县', '遂昌', '999', '6', '', '1106', '/0/1004/1106/', '3', '331123', 'SCX', '1', '1', '2017-03-09 11:53:39', '1', '2017-03-09 11:53:39');
INSERT INTO `god_area` VALUES ('1112', '松阳县', '松阳', '999', '6', '', '1106', '/0/1004/1106/', '3', '331124', 'SYX', '1', '1', '2017-03-09 11:53:39', '1', '2017-03-09 11:53:39');
INSERT INTO `god_area` VALUES ('1113', '云和县', '云和', '999', '6', '', '1106', '/0/1004/1106/', '3', '331125', 'YIX', '1', '1', '2017-03-09 11:53:39', '1', '2017-03-09 11:53:39');
INSERT INTO `god_area` VALUES ('1114', '庆元县', '庆元', '999', '6', '', '1106', '/0/1004/1106/', '3', '331126', 'QYX', '1', '1', '2017-03-09 11:53:39', '1', '2017-03-09 11:53:39');
INSERT INTO `god_area` VALUES ('1115', '景宁畲族自治县', '景宁畲族自治', '999', '18', '', '1106', '/0/1004/1106/', '3', '331127', 'JNZZZX', '1', '1', '2017-03-09 11:53:39', '1', '2017-03-09 11:53:39');
INSERT INTO `god_area` VALUES ('1116', '龙泉市', '龙泉', '999', '6', '', '1106', '/0/1004/1106/', '3', '331181', 'LQS', '1', '1', '2017-03-09 11:53:39', '1', '2017-03-09 11:53:39');
INSERT INTO `god_area` VALUES ('1117', '安徽省', '安徽', '999', '6', '', '0', '/0/', '1', '340000', 'AIS', '1', '1', '2017-03-09 11:53:39', '1', '2017-06-28 09:52:26');
INSERT INTO `god_area` VALUES ('1118', '合肥市', '合肥', '999', '6', '', '1117', '/0/1117/', '2', '340100', 'IFS', '1', '1', '2017-03-09 11:53:39', '1', '2017-03-09 11:53:39');
INSERT INTO `god_area` VALUES ('1120', '瑶海区', '瑶海', '999', '6', '', '1118', '/0/1117/1118/', '3', '340102', 'YIQ', '1', '1', '2017-03-09 11:53:39', '1', '2017-03-09 11:53:39');
INSERT INTO `god_area` VALUES ('1121', '庐阳区', '庐阳', '999', '6', '', '1118', '/0/1117/1118/', '3', '340103', 'LYQ', '1', '1', '2017-03-09 11:53:39', '1', '2017-03-09 11:53:39');
INSERT INTO `god_area` VALUES ('1122', '蜀山区', '蜀山', '999', '6', '', '1118', '/0/1117/1118/', '3', '340104', 'SSQ', '1', '1', '2017-03-09 11:53:39', '1', '2017-03-09 11:53:39');
INSERT INTO `god_area` VALUES ('1123', '包河区', '包河', '999', '6', '', '1118', '/0/1117/1118/', '3', '340111', 'BIQ', '1', '1', '2017-03-09 11:53:40', '1', '2017-03-09 11:53:40');
INSERT INTO `god_area` VALUES ('1124', '长丰县', '长丰', '999', '6', '', '1118', '/0/1117/1118/', '3', '340121', 'CFX', '1', '1', '2017-03-09 11:53:40', '1', '2017-03-09 11:53:40');
INSERT INTO `god_area` VALUES ('1125', '肥东县', '肥东', '999', '6', '', '1118', '/0/1117/1118/', '3', '340122', 'FDX', '1', '1', '2017-03-09 11:53:40', '1', '2017-03-09 11:53:40');
INSERT INTO `god_area` VALUES ('1126', '肥西县', '肥西', '999', '6', '', '1118', '/0/1117/1118/', '3', '340123', 'FXX', '1', '1', '2017-03-09 11:53:40', '1', '2017-03-09 11:53:40');
INSERT INTO `god_area` VALUES ('1127', '庐江县', '庐江', '999', '6', '', '1118', '/0/1117/1118/', '3', '340124', 'LJX', '1', '1', '2017-03-09 11:53:40', '1', '2017-03-09 11:53:40');
INSERT INTO `god_area` VALUES ('1128', '巢湖市', '巢湖', '999', '6', '', '1118', '/0/1117/1118/', '3', '340181', 'CIS', '1', '1', '2017-03-09 11:53:40', '1', '2017-03-09 11:53:40');
INSERT INTO `god_area` VALUES ('1129', '芜湖市', '芜湖', '999', '6', '', '1117', '/0/1117/', '2', '340200', 'WIS', '1', '1', '2017-03-09 11:53:40', '1', '2017-03-09 11:53:40');
INSERT INTO `god_area` VALUES ('1131', '镜湖区', '镜湖', '999', '6', '', '1129', '/0/1117/1129/', '3', '340202', 'JIQ', '1', '1', '2017-03-09 11:53:40', '1', '2017-03-09 11:53:40');
INSERT INTO `god_area` VALUES ('1132', '弋江区', '弋江', '999', '6', '', '1129', '/0/1117/1129/', '3', '340203', 'JQ', '1', '1', '2017-03-09 11:53:40', '1', '2017-03-09 11:53:40');
INSERT INTO `god_area` VALUES ('1133', '鸠江区', '鸠江', '999', '6', '', '1129', '/0/1117/1129/', '3', '340207', 'JQ', '1', '1', '2017-03-09 11:53:40', '1', '2017-03-09 11:53:40');
INSERT INTO `god_area` VALUES ('1134', '三山区', '三山', '999', '6', '', '1129', '/0/1117/1129/', '3', '340208', 'SSQ', '1', '1', '2017-03-09 11:53:40', '1', '2017-03-09 11:53:40');
INSERT INTO `god_area` VALUES ('1135', '芜湖县', '芜湖县', '999', '9', '', '1129', '/0/1117/1129/', '3', '340221', 'WIX', '1', '1', '2017-03-09 11:53:40', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1136', '繁昌县', '繁昌', '999', '6', '', '1129', '/0/1117/1129/', '3', '340222', 'FCX', '1', '1', '2017-03-09 11:53:40', '1', '2017-03-09 11:53:40');
INSERT INTO `god_area` VALUES ('1137', '南陵县', '南陵', '999', '6', '', '1129', '/0/1117/1129/', '3', '340223', 'NLX', '1', '1', '2017-03-09 11:53:40', '1', '2017-03-09 11:53:40');
INSERT INTO `god_area` VALUES ('1138', '无为县', '无为', '999', '6', '', '1129', '/0/1117/1129/', '3', '340225', 'WWX', '1', '1', '2017-03-09 11:53:40', '1', '2017-03-09 11:53:40');
INSERT INTO `god_area` VALUES ('1139', '蚌埠市', '蚌埠', '999', '6', '', '1117', '/0/1117/', '2', '340300', 'BBS', '1', '1', '2017-03-09 11:53:40', '1', '2017-03-09 11:53:40');
INSERT INTO `god_area` VALUES ('1141', '龙子湖区', '龙子湖', '999', '9', '', '1139', '/0/1117/1139/', '3', '340302', 'LZIQ', '1', '1', '2017-03-09 11:53:40', '1', '2017-03-09 11:53:40');
INSERT INTO `god_area` VALUES ('1142', '蚌山区', '蚌山', '999', '6', '', '1139', '/0/1117/1139/', '3', '340303', 'BSQ', '1', '1', '2017-03-09 11:53:40', '1', '2017-03-09 11:53:40');
INSERT INTO `god_area` VALUES ('1143', '禹会区', '禹会', '999', '6', '', '1139', '/0/1117/1139/', '3', '340304', 'YIQ', '1', '1', '2017-03-09 11:53:40', '1', '2017-03-09 11:53:40');
INSERT INTO `god_area` VALUES ('1144', '淮上区', '淮上', '999', '6', '', '1139', '/0/1117/1139/', '3', '340311', 'ISQ', '1', '1', '2017-03-09 11:53:40', '1', '2017-03-09 11:53:40');
INSERT INTO `god_area` VALUES ('1145', '怀远县', '怀远', '999', '6', '', '1139', '/0/1117/1139/', '3', '340321', 'IYX', '1', '1', '2017-03-09 11:53:40', '1', '2017-03-09 11:53:40');
INSERT INTO `god_area` VALUES ('1146', '五河县', '五河', '999', '6', '', '1139', '/0/1117/1139/', '3', '340322', 'WIX', '1', '1', '2017-03-09 11:53:40', '1', '2017-03-09 11:53:40');
INSERT INTO `god_area` VALUES ('1147', '固镇县', '固镇', '999', '6', '', '1139', '/0/1117/1139/', '3', '340323', 'GZX', '1', '1', '2017-03-09 11:53:41', '1', '2017-03-09 11:53:41');
INSERT INTO `god_area` VALUES ('1148', '淮南市', '淮南', '999', '6', '', '1117', '/0/1117/', '2', '340400', 'INS', '1', '1', '2017-03-09 11:53:41', '1', '2017-03-09 11:53:41');
INSERT INTO `god_area` VALUES ('1150', '大通区', '大通', '999', '6', '', '1148', '/0/1117/1148/', '3', '340402', 'DTQ', '1', '1', '2017-03-09 11:53:41', '1', '2017-03-09 11:53:41');
INSERT INTO `god_area` VALUES ('1151', '田家庵区', '田家庵', '999', '9', '', '1148', '/0/1117/1148/', '3', '340403', 'TJQ', '1', '1', '2017-03-09 11:53:41', '1', '2017-03-09 11:53:41');
INSERT INTO `god_area` VALUES ('1152', '谢家集区', '谢家集', '999', '9', '', '1148', '/0/1117/1148/', '3', '340404', 'JJQ', '1', '1', '2017-03-09 11:53:41', '1', '2017-03-09 11:53:41');
INSERT INTO `god_area` VALUES ('1153', '八公山区', '八公山', '999', '9', '', '1148', '/0/1117/1148/', '3', '340405', 'BGSQ', '1', '1', '2017-03-09 11:53:41', '1', '2017-03-09 11:53:41');
INSERT INTO `god_area` VALUES ('1154', '潘集区', '潘集', '999', '6', '', '1148', '/0/1117/1148/', '3', '340406', 'PJQ', '1', '1', '2017-03-09 11:53:41', '1', '2017-03-09 11:53:41');
INSERT INTO `god_area` VALUES ('1155', '凤台县', '凤台', '999', '6', '', '1148', '/0/1117/1148/', '3', '340421', 'FTX', '1', '1', '2017-03-09 11:53:41', '1', '2017-03-09 11:53:41');
INSERT INTO `god_area` VALUES ('1156', '马鞍山市', '马鞍山', '999', '9', '', '1117', '/0/1117/', '2', '340500', 'MASS', '1', '1', '2017-03-09 11:53:41', '1', '2017-03-09 11:53:41');
INSERT INTO `god_area` VALUES ('1158', '花山区', '花山', '999', '6', '', '1156', '/0/1117/1156/', '3', '340503', 'ISQ', '1', '1', '2017-03-09 11:53:41', '1', '2017-03-09 11:53:41');
INSERT INTO `god_area` VALUES ('1159', '雨山区', '雨山', '999', '6', '', '1156', '/0/1117/1156/', '3', '340504', 'YSQ', '1', '1', '2017-03-09 11:53:41', '1', '2017-03-09 11:53:41');
INSERT INTO `god_area` VALUES ('1160', '博望区', '博望', '999', '6', '', '1156', '/0/1117/1156/', '3', '340506', 'BWQ', '1', '1', '2017-03-09 11:53:41', '1', '2017-03-09 11:53:41');
INSERT INTO `god_area` VALUES ('1161', '当涂县', '当涂', '999', '6', '', '1156', '/0/1117/1156/', '3', '340521', 'DTX', '1', '1', '2017-03-09 11:53:41', '1', '2017-03-09 11:53:41');
INSERT INTO `god_area` VALUES ('1162', '含山县', '含山', '999', '6', '', '1156', '/0/1117/1156/', '3', '340522', 'ISX', '1', '1', '2017-03-09 11:53:41', '1', '2017-03-09 11:53:41');
INSERT INTO `god_area` VALUES ('1163', '和县', '和县', '999', '6', '', '1156', '/0/1117/1156/', '3', '340523', 'IX', '1', '1', '2017-03-09 11:53:41', '1', '2017-03-09 11:53:41');
INSERT INTO `god_area` VALUES ('1164', '淮北市', '淮北', '999', '6', '', '1117', '/0/1117/', '2', '340600', 'IBS', '1', '1', '2017-03-09 11:53:41', '1', '2017-03-09 11:53:41');
INSERT INTO `god_area` VALUES ('1166', '杜集区', '杜集', '999', '6', '', '1164', '/0/1117/1164/', '3', '340602', 'DJQ', '1', '1', '2017-03-09 11:53:41', '1', '2017-03-09 11:53:41');
INSERT INTO `god_area` VALUES ('1167', '相山区', '相山', '999', '6', '', '1164', '/0/1117/1164/', '3', '340603', 'XSQ', '1', '1', '2017-03-09 11:53:41', '1', '2017-03-09 11:53:41');
INSERT INTO `god_area` VALUES ('1168', '烈山区', '烈山', '999', '6', '', '1164', '/0/1117/1164/', '3', '340604', 'LSQ', '1', '1', '2017-03-09 11:53:41', '1', '2017-03-09 11:53:41');
INSERT INTO `god_area` VALUES ('1169', '濉溪县', '濉溪', '999', '6', '', '1164', '/0/1117/1164/', '3', '340621', 'XX', '1', '1', '2017-03-09 11:53:41', '1', '2017-03-09 11:53:41');
INSERT INTO `god_area` VALUES ('1170', '铜陵市', '铜陵', '999', '6', '', '1117', '/0/1117/', '2', '340700', 'TLS', '1', '1', '2017-03-09 11:53:41', '1', '2017-03-09 11:53:41');
INSERT INTO `god_area` VALUES ('1172', '铜官区', '铜官', '999', '6', '', '1170', '/0/1117/1170/', '3', '340702', 'TGQ', '1', '1', '2017-03-09 11:53:41', '6', '2017-08-11 10:24:09');
INSERT INTO `god_area` VALUES ('1173', '义安区', '义安', '999', '6', '', '1170', '/0/1117/1170/', '3', '340703', 'YAQ', '1', '1', '2017-03-09 11:53:42', '6', '2017-08-11 10:24:30');
INSERT INTO `god_area` VALUES ('1174', '郊区', '郊区', '999', '6', '', '1170', '/0/1117/1170/', '3', '340711', 'JQ', '1', '1', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1175', '枞阳县', '枞阳', '999', '6', '', '1170', '/0/1117/1170/', '3', '340721', 'YX', '1', '1', '2017-03-09 11:53:42', '6', '2017-08-11 10:23:51');
INSERT INTO `god_area` VALUES ('1176', '安庆市', '安庆', '999', '6', '', '1117', '/0/1117/', '2', '340800', 'AQS', '1', '1', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1178', '迎江区', '迎江', '999', '6', '', '1176', '/0/1117/1176/', '3', '340802', 'YJQ', '1', '1', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1179', '大观区', '大观', '999', '6', '', '1176', '/0/1117/1176/', '3', '340803', 'DGQ', '1', '1', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1180', '宜秀区', '宜秀', '999', '6', '', '1176', '/0/1117/1176/', '3', '340811', 'YXQ', '1', '1', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1181', '怀宁县', '怀宁', '999', '6', '', '1176', '/0/1117/1176/', '3', '340822', 'INX', '1', '1', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1182', '枞阳县', '枞阳', '999', '6', '', '1176', '/0/1117/1176/', '3', '340823', 'YX', '0', '88', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1183', '潜山市', '潜山', '999', '6', '', '1176', '/0/1117/1176/', '3', '340824', 'QSX', '1', '1', '2017-03-09 11:53:42', '16', '2018-09-03 15:00:21');
INSERT INTO `god_area` VALUES ('1184', '太湖县', '太湖', '999', '6', '', '1176', '/0/1117/1176/', '3', '340825', 'TIX', '1', '1', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1185', '宿松县', '宿松', '999', '6', '', '1176', '/0/1117/1176/', '3', '340826', 'SSX', '1', '1', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1186', '望江县', '望江', '999', '6', '', '1176', '/0/1117/1176/', '3', '340827', 'WJX', '1', '1', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1187', '岳西县', '岳西', '999', '6', '', '1176', '/0/1117/1176/', '3', '340828', 'YXX', '1', '1', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1188', '桐城市', '桐城', '999', '6', '', '1176', '/0/1117/1176/', '3', '340881', 'TCS', '1', '1', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1189', '黄山市', '黄山', '999', '6', '', '1117', '/0/1117/', '2', '341000', 'ISS', '1', '1', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1191', '屯溪区', '屯溪', '999', '6', '', '1189', '/0/1117/1189/', '3', '341002', 'TXQ', '1', '1', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1192', '黄山区', '黄山区', '999', '9', '', '1189', '/0/1117/1189/', '3', '341003', 'ISQ', '1', '88', '2017-03-09 11:53:42', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1193', '徽州区', '徽州', '999', '6', '', '1189', '/0/1117/1189/', '3', '341004', 'IZQ', '1', '1', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1194', '歙县', '歙县', '999', '6', '', '1189', '/0/1117/1189/', '3', '341021', 'X', '1', '1', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1195', '休宁县', '休宁', '999', '6', '', '1189', '/0/1117/1189/', '3', '341022', 'XNX', '1', '1', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1196', '黟县', '黟县', '999', '6', '', '1189', '/0/1117/1189/', '3', '341023', 'X', '1', '1', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1197', '祁门县', '祁门', '999', '6', '', '1189', '/0/1117/1189/', '3', '341024', 'QMX', '1', '1', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1198', '滁州市', '滁州', '999', '6', '', '1117', '/0/1117/', '2', '341100', 'CZS', '1', '1', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1200', '琅琊区', '琅琊', '999', '6', '', '1198', '/0/1117/1198/', '3', '341102', 'LQ', '1', '1', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1201', '南谯区', '南谯', '999', '6', '', '1198', '/0/1117/1198/', '3', '341103', 'NQ', '1', '1', '2017-03-09 11:53:42', '1', '2017-03-09 11:53:42');
INSERT INTO `god_area` VALUES ('1202', '来安县', '来安', '999', '6', '', '1198', '/0/1117/1198/', '3', '341122', 'LAX', '1', '1', '2017-03-09 11:53:43', '1', '2017-03-09 11:53:43');
INSERT INTO `god_area` VALUES ('1203', '全椒县', '全椒', '999', '6', '', '1198', '/0/1117/1198/', '3', '341124', 'QJX', '1', '1', '2017-03-09 11:53:43', '1', '2017-03-09 11:53:43');
INSERT INTO `god_area` VALUES ('1204', '定远县', '定远', '999', '6', '', '1198', '/0/1117/1198/', '3', '341125', 'DYX', '1', '1', '2017-03-09 11:53:43', '1', '2017-03-09 11:53:43');
INSERT INTO `god_area` VALUES ('1205', '凤阳县', '凤阳', '999', '6', '', '1198', '/0/1117/1198/', '3', '341126', 'FYX', '1', '1', '2017-03-09 11:53:43', '1', '2017-03-09 11:53:43');
INSERT INTO `god_area` VALUES ('1206', '天长市', '天长', '999', '6', '', '1198', '/0/1117/1198/', '3', '341181', 'TCS', '1', '1', '2017-03-09 11:53:43', '1', '2017-03-09 11:53:43');
INSERT INTO `god_area` VALUES ('1207', '明光市', '明光', '999', '6', '', '1198', '/0/1117/1198/', '3', '341182', 'MGS', '1', '1', '2017-03-09 11:53:43', '1', '2017-03-09 11:53:43');
INSERT INTO `god_area` VALUES ('1208', '阜阳市', '阜阳', '999', '6', '', '1117', '/0/1117/', '2', '341200', 'FYS', '1', '1', '2017-03-09 11:53:43', '1', '2017-03-09 11:53:43');
INSERT INTO `god_area` VALUES ('1210', '颍州区', '颍州', '999', '6', '', '1208', '/0/1117/1208/', '3', '341202', 'ZQ', '1', '1', '2017-03-09 11:53:43', '1', '2017-03-09 11:53:43');
INSERT INTO `god_area` VALUES ('1211', '颍东区', '颍东区', '999', '6', '', '1208', '/0/1117/1208/', '3', '341203', 'DQ', '1', '1', '2017-03-09 11:53:43', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('1212', '颍泉区', '颍泉', '999', '6', '', '1208', '/0/1117/1208/', '3', '341204', 'QQ', '1', '1', '2017-03-09 11:53:43', '1', '2017-03-09 11:53:43');
INSERT INTO `god_area` VALUES ('1213', '临泉县', '临泉', '999', '6', '', '1208', '/0/1117/1208/', '3', '341221', 'LQX', '1', '1', '2017-03-09 11:53:43', '1', '2017-03-09 11:53:43');
INSERT INTO `god_area` VALUES ('1214', '太和县', '太和县', '999', '6', '', '1208', '/0/1117/1208/', '3', '341222', 'TIX', '1', '1', '2017-03-09 11:53:43', '1', '2018-12-06 08:53:54');
INSERT INTO `god_area` VALUES ('1215', '阜南县', '阜南', '999', '6', '', '1208', '/0/1117/1208/', '3', '341225', 'FNX', '1', '1', '2017-03-09 11:53:43', '1', '2017-03-09 11:53:43');
INSERT INTO `god_area` VALUES ('1216', '颍上县', '颍上', '999', '6', '', '1208', '/0/1117/1208/', '3', '341226', 'SX', '1', '1', '2017-03-09 11:53:43', '1', '2017-03-09 11:53:43');
INSERT INTO `god_area` VALUES ('1217', '界首市', '界首', '999', '6', '', '1208', '/0/1117/1208/', '3', '341282', 'JSS', '1', '1', '2017-03-09 11:53:43', '1', '2017-03-09 11:53:43');
INSERT INTO `god_area` VALUES ('1218', '宿州市', '宿州', '999', '6', '', '1117', '/0/1117/', '2', '341300', 'SZS', '1', '1', '2017-03-09 11:53:43', '1', '2017-03-09 11:53:43');
INSERT INTO `god_area` VALUES ('1220', '埇桥区', '埇桥', '999', '6', '', '1218', '/0/1117/1218/', '3', '341302', 'YQQ', '1', '1', '2017-03-09 11:53:43', '1', '2017-03-09 11:53:43');
INSERT INTO `god_area` VALUES ('1221', '砀山县', '砀山', '999', '6', '', '1218', '/0/1117/1218/', '3', '341321', 'SX', '1', '1', '2017-03-09 11:53:43', '1', '2017-03-09 11:53:43');
INSERT INTO `god_area` VALUES ('1222', '萧县', '萧县', '999', '6', '', '1218', '/0/1117/1218/', '3', '341322', 'XX', '1', '1', '2017-03-09 11:53:43', '1', '2017-03-09 11:53:43');
INSERT INTO `god_area` VALUES ('1223', '灵璧县', '灵璧', '999', '6', '', '1218', '/0/1117/1218/', '3', '341323', 'LX', '1', '1', '2017-03-09 11:53:43', '1', '2017-03-09 11:53:43');
INSERT INTO `god_area` VALUES ('1224', '泗县', '泗县', '999', '6', '', '1218', '/0/1117/1218/', '3', '341324', 'X', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1225', '六安市', '六安', '999', '6', '', '1117', '/0/1117/', '2', '341500', 'LAS', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1227', '金安区', '金安', '999', '6', '', '1225', '/0/1117/1225/', '3', '341502', 'JAQ', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1228', '裕安区', '裕安', '999', '6', '', '1225', '/0/1117/1225/', '3', '341503', 'YAQ', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1229', '寿县', '寿县', '999', '6', '', '1225', '/0/1117/1225/', '3', '341521', null, '0', '1', '2017-03-09 11:53:44', '13', '2017-09-07 10:33:13');
INSERT INTO `god_area` VALUES ('1230', '霍邱县', '霍邱', '999', '6', '', '1225', '/0/1117/1225/', '3', '341522', 'IQX', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1231', '舒城县', '舒城', '999', '6', '', '1225', '/0/1117/1225/', '3', '341523', 'SCX', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1232', '金寨县', '金寨', '999', '6', '', '1225', '/0/1117/1225/', '3', '341524', 'JZX', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1233', '霍山县', '霍山', '999', '6', '', '1225', '/0/1117/1225/', '3', '341525', 'ISX', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1234', '亳州市', '亳州', '999', '6', '', '1117', '/0/1117/', '2', '341600', 'ZS', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1236', '谯城区', '谯城区', '999', '9', '', '1234', '/0/1117/1234/', '3', '341602', 'CQ', '1', '1', '2017-03-09 11:53:44', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1237', '涡阳县', '涡阳', '999', '6', '', '1234', '/0/1117/1234/', '3', '341621', 'WYX', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1238', '蒙城县', '蒙城', '999', '6', '', '1234', '/0/1117/1234/', '3', '341622', 'MCX', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1239', '利辛县', '利辛', '999', '6', '', '1234', '/0/1117/1234/', '3', '341623', 'LXX', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1240', '池州市', '池州', '999', '6', '', '1117', '/0/1117/', '2', '341700', 'CZS', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1242', '贵池区', '贵池', '999', '6', '', '1240', '/0/1117/1240/', '3', '341702', 'GCQ', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1243', '东至县', '东至', '999', '6', '', '1240', '/0/1117/1240/', '3', '341721', 'DZX', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1244', '石台县', '石台', '999', '6', '', '1240', '/0/1117/1240/', '3', '341722', 'STX', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1245', '青阳县', '青阳', '999', '6', '', '1240', '/0/1117/1240/', '3', '341723', 'QYX', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1246', '宣城市', '宣城', '999', '6', '', '1117', '/0/1117/', '2', '341800', 'XCS', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1248', '宣州区', '宣州', '999', '6', '', '1246', '/0/1117/1246/', '3', '341802', 'XZQ', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1249', '郎溪县', '郎溪', '999', '6', '', '1246', '/0/1117/1246/', '3', '341821', 'LXX', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1250', '广德县', '广德', '999', '6', '', '1246', '/0/1117/1246/', '3', '341822', 'GDX', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1251', '泾县', '泾县', '999', '6', '', '1246', '/0/1117/1246/', '3', '341823', 'X', '1', '1', '2017-03-09 11:53:44', '16', '2019-03-12 14:15:08');
INSERT INTO `god_area` VALUES ('1252', '绩溪县', '绩溪', '999', '6', '', '1246', '/0/1117/1246/', '3', '341824', 'JXX', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1253', '旌德县', '旌德', '999', '6', '', '1246', '/0/1117/1246/', '3', '341825', 'DX', '1', '1', '2017-03-09 11:53:44', '1', '2017-03-09 11:53:44');
INSERT INTO `god_area` VALUES ('1254', '宁国市', '宁国', '999', '6', '', '1246', '/0/1117/1246/', '3', '341881', 'NGS', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1255', '福建省', '福建', '999', '6', '', '0', '/0/', '1', '350000', 'FJS', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1256', '福州市', '福州', '999', '6', '', '1255', '/0/1255/', '2', '350100', 'FZS', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1258', '鼓楼区', '鼓楼区', '999', '9', '', '1256', '/0/1255/1256/', '3', '350102', 'GLQ', '1', '88', '2017-03-09 11:53:45', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1259', '台江区', '台江', '999', '6', '', '1256', '/0/1255/1256/', '3', '350103', 'TJQ', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1260', '仓山区', '仓山', '999', '6', '', '1256', '/0/1255/1256/', '3', '350104', 'CSQ', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1261', '马尾区', '马尾', '999', '6', '', '1256', '/0/1255/1256/', '3', '350105', 'MQ', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1262', '晋安区', '晋安', '999', '6', '', '1256', '/0/1255/1256/', '3', '350111', 'JAQ', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1263', '闽侯县', '闽侯', '999', '6', '', '1256', '/0/1255/1256/', '3', '350121', 'MIX', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1264', '连江县', '连江', '999', '6', '', '1256', '/0/1255/1256/', '3', '350122', 'LJX', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1265', '罗源县', '罗源', '999', '6', '', '1256', '/0/1255/1256/', '3', '350123', 'LYX', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1266', '闽清县', '闽清', '999', '6', '', '1256', '/0/1255/1256/', '3', '350124', 'MQX', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1267', '永泰县', '永泰', '999', '6', '', '1256', '/0/1255/1256/', '3', '350125', 'YTX', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1268', '平潭县', '平潭', '999', '6', '', '1256', '/0/1255/1256/', '3', '350128', null, '0', '1', '2017-03-09 11:53:45', '16', '2018-04-17 08:53:30');
INSERT INTO `god_area` VALUES ('1269', '福清市', '福清', '999', '6', '', '1256', '/0/1255/1256/', '3', '350181', 'FQS', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1270', '长乐区', '长乐', '999', '6', '', '1256', '/0/1255/1256/', '3', '350182', 'CLS', '1', '1', '2017-03-09 11:53:45', '16', '2018-07-16 16:32:25');
INSERT INTO `god_area` VALUES ('1271', '厦门市', '厦门', '999', '6', '', '1255', '/0/1255/', '2', '350200', 'XMS', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1273', '思明区', '思明', '999', '6', '', '1271', '/0/1255/1271/', '3', '350203', 'SMQ', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1274', '海沧区', '海沧', '999', '6', '', '1271', '/0/1255/1271/', '3', '350205', 'ICQ', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1275', '湖里区', '湖里', '999', '6', '', '1271', '/0/1255/1271/', '3', '350206', 'ILQ', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1276', '集美区', '集美', '999', '6', '', '1271', '/0/1255/1271/', '3', '350211', 'JMQ', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1277', '同安区', '同安', '999', '6', '', '1271', '/0/1255/1271/', '3', '350212', 'TAQ', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1278', '翔安区', '翔安', '999', '6', '', '1271', '/0/1255/1271/', '3', '350213', 'XAQ', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1279', '莆田市', '莆田', '999', '6', '', '1255', '/0/1255/', '2', '350300', 'PTS', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1281', '城厢区', '城厢', '999', '6', '', '1279', '/0/1255/1279/', '3', '350302', 'CXQ', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1282', '涵江区', '涵江', '999', '6', '', '1279', '/0/1255/1279/', '3', '350303', 'IJQ', '1', '1', '2017-03-09 11:53:45', '1', '2017-03-09 11:53:45');
INSERT INTO `god_area` VALUES ('1283', '荔城区', '荔城区', '999', '9', '', '1279', '/0/1255/1279/', '3', '350304', 'LCQ', '1', '1', '2017-03-09 11:53:46', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1284', '秀屿区', '秀屿', '999', '6', '', '1279', '/0/1255/1279/', '3', '350305', 'XYQ', '1', '1', '2017-03-09 11:53:46', '1', '2017-03-09 11:53:46');
INSERT INTO `god_area` VALUES ('1285', '仙游县', '仙游', '999', '6', '', '1279', '/0/1255/1279/', '3', '350322', 'XYX', '1', '1', '2017-03-09 11:53:46', '1', '2017-03-09 11:53:46');
INSERT INTO `god_area` VALUES ('1286', '三明市', '三明', '999', '6', '', '1255', '/0/1255/', '2', '350400', 'SMS', '1', '1', '2017-03-09 11:53:46', '1', '2017-03-09 11:53:46');
INSERT INTO `god_area` VALUES ('1288', '梅列区', '梅列', '999', '6', '', '1286', '/0/1255/1286/', '3', '350402', 'LQ', '1', '1', '2017-03-09 11:53:46', '1', '2017-03-09 11:53:46');
INSERT INTO `god_area` VALUES ('1289', '三元区', '三元', '999', '6', '', '1286', '/0/1255/1286/', '3', '350403', 'SYQ', '1', '1', '2017-03-09 11:53:46', '1', '2017-03-09 11:53:46');
INSERT INTO `god_area` VALUES ('1290', '明溪县', '明溪', '999', '6', '', '1286', '/0/1255/1286/', '3', '350421', 'MXX', '1', '1', '2017-03-09 11:53:46', '1', '2017-03-09 11:53:46');
INSERT INTO `god_area` VALUES ('1291', '清流县', '清流', '999', '6', '', '1286', '/0/1255/1286/', '3', '350423', 'QLX', '1', '1', '2017-03-09 11:53:46', '1', '2017-03-09 11:53:46');
INSERT INTO `god_area` VALUES ('1292', '宁化县', '宁化', '999', '6', '', '1286', '/0/1255/1286/', '3', '350424', 'NIX', '1', '1', '2017-03-09 11:53:46', '1', '2017-03-09 11:53:46');
INSERT INTO `god_area` VALUES ('1293', '大田县', '大田', '999', '6', '', '1286', '/0/1255/1286/', '3', '350425', 'DTX', '1', '1', '2017-03-09 11:53:46', '1', '2017-03-09 11:53:46');
INSERT INTO `god_area` VALUES ('1294', '尤溪县', '尤溪', '999', '6', '', '1286', '/0/1255/1286/', '3', '350426', 'YXX', '1', '1', '2017-03-09 11:53:46', '1', '2017-03-09 11:53:46');
INSERT INTO `god_area` VALUES ('1295', '沙县', '沙县', '999', '6', '', '1286', '/0/1255/1286/', '3', '350427', 'SX', '1', '1', '2017-03-09 11:53:46', '1', '2017-03-09 11:53:46');
INSERT INTO `god_area` VALUES ('1296', '将乐县', '将乐', '999', '6', '', '1286', '/0/1255/1286/', '3', '350428', 'JLX', '1', '1', '2017-03-09 11:53:46', '1', '2017-03-09 11:53:46');
INSERT INTO `god_area` VALUES ('1297', '泰宁县', '泰宁', '999', '6', '', '1286', '/0/1255/1286/', '3', '350429', 'TNX', '1', '1', '2017-03-09 11:53:46', '1', '2017-03-09 11:53:46');
INSERT INTO `god_area` VALUES ('1298', '建宁县', '建宁', '999', '6', '', '1286', '/0/1255/1286/', '3', '350430', 'JNX', '1', '1', '2017-03-09 11:53:46', '1', '2017-03-09 11:53:46');
INSERT INTO `god_area` VALUES ('1299', '永安市', '永安', '999', '6', '', '1286', '/0/1255/1286/', '3', '350481', 'YAS', '1', '1', '2017-03-09 11:53:46', '1', '2017-03-09 11:53:46');
INSERT INTO `god_area` VALUES ('1300', '泉州市', '泉州', '999', '6', '', '1255', '/0/1255/', '2', '350500', 'QZS', '1', '1', '2017-03-09 11:53:46', '1', '2017-03-09 11:53:46');
INSERT INTO `god_area` VALUES ('1302', '鲤城区', '鲤城区', '999', '9', '', '1300', '/0/1255/1300/', '3', '350502', 'LCQ', '1', '1', '2017-03-09 11:53:46', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1303', '丰泽区', '丰泽', '999', '6', '', '1300', '/0/1255/1300/', '3', '350503', 'FZQ', '1', '1', '2017-03-09 11:53:46', '1', '2017-03-09 11:53:46');
INSERT INTO `god_area` VALUES ('1304', '洛江区', '洛江', '999', '6', '', '1300', '/0/1255/1300/', '3', '350504', 'LJQ', '1', '1', '2017-03-09 11:53:46', '1', '2017-03-09 11:53:46');
INSERT INTO `god_area` VALUES ('1305', '泉港区', '泉港', '999', '6', '', '1300', '/0/1255/1300/', '3', '350505', 'QGQ', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1306', '惠安县', '惠安', '999', '6', '', '1300', '/0/1255/1300/', '3', '350521', 'IAX', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1307', '安溪县', '安溪', '999', '6', '', '1300', '/0/1255/1300/', '3', '350524', 'AXX', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1308', '永春县', '永春', '999', '6', '', '1300', '/0/1255/1300/', '3', '350525', 'YCX', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1309', '德化县', '德化', '999', '6', '', '1300', '/0/1255/1300/', '3', '350526', 'DIX', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1310', '金门县', '金门', '999', '6', '', '1300', '/0/1255/1300/', '3', '350527', 'JMX', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1311', '石狮市', '石狮', '999', '6', '', '1300', '/0/1255/1300/', '3', '350581', 'SSS', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1312', '晋江市', '晋江', '999', '6', '', '1300', '/0/1255/1300/', '3', '350582', 'JJS', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1313', '南安市', '南安', '999', '6', '', '1300', '/0/1255/1300/', '3', '350583', 'NAS', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1314', '漳州市', '漳州', '999', '6', '', '1255', '/0/1255/', '2', '350600', 'ZZS', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1316', '芗城区', '芗城区', '999', '9', '', '1314', '/0/1255/1314/', '3', '350602', 'CQ', '1', '1', '2017-03-09 11:53:47', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1317', '龙文区', '龙文', '999', '6', '', '1314', '/0/1255/1314/', '3', '350603', 'LWQ', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1318', '云霄县', '云霄', '999', '6', '', '1314', '/0/1255/1314/', '3', '350622', 'YXX', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1319', '漳浦县', '漳浦', '999', '6', '', '1314', '/0/1255/1314/', '3', '350623', 'ZPX', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1320', '诏安县', '诏安', '999', '6', '', '1314', '/0/1255/1314/', '3', '350624', 'AX', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1321', '长泰县', '长泰', '999', '6', '', '1314', '/0/1255/1314/', '3', '350625', 'CTX', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1322', '东山县', '东山县', '999', '9', '', '1314', '/0/1255/1314/', '3', '350626', 'DSX', '1', '1', '2017-03-09 11:53:47', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1323', '南靖县', '南靖', '999', '6', '', '1314', '/0/1255/1314/', '3', '350627', 'NJX', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1324', '平和县', '平和', '999', '6', '', '1314', '/0/1255/1314/', '3', '350628', 'PIX', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1325', '华安县', '华安', '999', '6', '', '1314', '/0/1255/1314/', '3', '350629', 'IAX', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1326', '龙海市', '龙海', '999', '6', '', '1314', '/0/1255/1314/', '3', '350681', 'LIS', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1327', '南平市', '南平', '999', '6', '', '1255', '/0/1255/', '2', '350700', 'NPS', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1329', '延平区', '延平', '999', '6', '', '1327', '/0/1255/1327/', '3', '350702', 'YPQ', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1330', '顺昌县', '顺昌', '999', '6', '', '1327', '/0/1255/1327/', '3', '350721', 'SCX', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1331', '浦城县', '浦城', '999', '6', '', '1327', '/0/1255/1327/', '3', '350722', 'PCX', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1332', '光泽县', '光泽', '999', '6', '', '1327', '/0/1255/1327/', '3', '350723', 'GZX', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1333', '松溪县', '松溪', '999', '6', '', '1327', '/0/1255/1327/', '3', '350724', 'SXX', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1334', '政和县', '政和', '999', '6', '', '1327', '/0/1255/1327/', '3', '350725', 'ZIX', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1335', '邵武市', '邵武', '999', '6', '', '1327', '/0/1255/1327/', '3', '350781', 'SWS', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1336', '武夷山市', '武夷山', '999', '9', '', '1327', '/0/1255/1327/', '3', '350782', 'WYSS', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1337', '建瓯市', '建瓯', '999', '6', '', '1327', '/0/1255/1327/', '3', '350783', 'JS', '1', '1', '2017-03-09 11:53:47', '1', '2017-03-09 11:53:47');
INSERT INTO `god_area` VALUES ('1338', '建阳区', '建阳', '999', '6', '', '1327', '/0/1255/1327/', '3', '350784', 'JYQ', '1', '1', '2017-03-09 11:53:48', '6', '2017-08-14 10:30:34');
INSERT INTO `god_area` VALUES ('1339', '龙岩市', '龙岩', '999', '6', '', '1255', '/0/1255/', '2', '350800', 'LYS', '1', '1', '2017-03-09 11:53:48', '1', '2017-03-09 11:53:48');
INSERT INTO `god_area` VALUES ('1341', '新罗区', '新罗', '999', '6', '', '1339', '/0/1255/1339/', '3', '350802', 'XLQ', '1', '1', '2017-03-09 11:53:48', '1', '2017-03-09 11:53:48');
INSERT INTO `god_area` VALUES ('1342', '长汀县', '长汀', '999', '6', '', '1339', '/0/1255/1339/', '3', '350821', 'CTX', '1', '1', '2017-03-09 11:53:48', '1', '2017-03-09 11:53:48');
INSERT INTO `god_area` VALUES ('1343', '永定区', '永定', '999', '6', '', '1339', '/0/1255/1339/', '3', '350822', 'YDQ', '1', '1', '2017-03-09 11:53:48', '6', '2017-08-14 09:21:54');
INSERT INTO `god_area` VALUES ('1344', '上杭县', '上杭', '999', '6', '', '1339', '/0/1255/1339/', '3', '350823', 'SIX', '1', '1', '2017-03-09 11:53:48', '1', '2017-03-09 11:53:48');
INSERT INTO `god_area` VALUES ('1345', '武平县', '武平', '999', '6', '', '1339', '/0/1255/1339/', '3', '350824', 'WPX', '1', '1', '2017-03-09 11:53:48', '1', '2017-03-09 11:53:48');
INSERT INTO `god_area` VALUES ('1346', '连城县', '连城', '999', '6', '', '1339', '/0/1255/1339/', '3', '350825', 'LCX', '1', '1', '2017-03-09 11:53:48', '1', '2017-03-09 11:53:48');
INSERT INTO `god_area` VALUES ('1347', '漳平市', '漳平', '999', '6', '', '1339', '/0/1255/1339/', '3', '350881', 'ZPS', '1', '1', '2017-03-09 11:53:48', '1', '2017-03-09 11:53:48');
INSERT INTO `god_area` VALUES ('1348', '宁德市', '宁德', '999', '6', '', '1255', '/0/1255/', '2', '350900', 'NDS', '1', '1', '2017-03-09 11:53:48', '1', '2017-03-09 11:53:48');
INSERT INTO `god_area` VALUES ('1350', '蕉城区', '蕉城区', '999', '9', '', '1348', '/0/1255/1348/', '3', '350902', 'JCQ', '1', '1', '2017-03-09 11:53:48', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1351', '霞浦县', '霞浦', '999', '6', '', '1348', '/0/1255/1348/', '3', '350921', 'XPX', '1', '1', '2017-03-09 11:53:48', '1', '2017-03-09 11:53:48');
INSERT INTO `god_area` VALUES ('1352', '古田县', '古田', '999', '6', '', '1348', '/0/1255/1348/', '3', '350922', 'GTX', '1', '1', '2017-03-09 11:53:48', '1', '2017-03-09 11:53:48');
INSERT INTO `god_area` VALUES ('1353', '屏南县', '屏南', '999', '6', '', '1348', '/0/1255/1348/', '3', '350923', 'PNX', '1', '1', '2017-03-09 11:53:48', '1', '2017-03-09 11:53:48');
INSERT INTO `god_area` VALUES ('1354', '寿宁县', '寿宁', '999', '6', '', '1348', '/0/1255/1348/', '3', '350924', 'SNX', '1', '1', '2017-03-09 11:53:48', '1', '2017-03-09 11:53:48');
INSERT INTO `god_area` VALUES ('1355', '周宁县', '周宁', '999', '6', '', '1348', '/0/1255/1348/', '3', '350925', 'ZNX', '1', '1', '2017-03-09 11:53:48', '1', '2017-03-09 11:53:48');
INSERT INTO `god_area` VALUES ('1356', '柘荣县', '柘荣', '999', '6', '', '1348', '/0/1255/1348/', '3', '350926', 'RX', '1', '1', '2017-03-09 11:53:48', '1', '2017-03-09 11:53:48');
INSERT INTO `god_area` VALUES ('1357', '福安市', '福安', '999', '6', '', '1348', '/0/1255/1348/', '3', '350981', 'FAS', '1', '1', '2017-03-09 11:53:48', '1', '2017-03-09 11:53:48');
INSERT INTO `god_area` VALUES ('1358', '福鼎市', '福鼎', '999', '6', '', '1348', '/0/1255/1348/', '3', '350982', 'FDS', '1', '1', '2017-03-09 11:53:48', '1', '2017-03-09 11:53:48');
INSERT INTO `god_area` VALUES ('1359', '江西省', '江西', '999', '6', '', '0', '/0/', '1', '360000', 'JXS', '1', '1', '2017-03-09 11:53:48', '1', '2017-06-28 09:52:03');
INSERT INTO `god_area` VALUES ('1360', '南昌市', '南昌', '999', '6', '', '1359', '/0/1359/', '2', '360100', 'NCS', '1', '1', '2017-03-09 11:53:48', '1', '2017-03-09 11:53:48');
INSERT INTO `god_area` VALUES ('1362', '东湖区', '东湖', '999', '6', '', '1360', '/0/1359/1360/', '3', '360102', 'DIQ', '1', '1', '2017-03-09 11:53:48', '1', '2017-03-09 11:53:48');
INSERT INTO `god_area` VALUES ('1363', '西湖区', '西湖区', '999', '6', '', '1360', '/0/1359/1360/', '3', '360103', 'XIQ', '1', '1', '2017-03-09 11:53:48', '1', '2019-03-18 15:12:32');
INSERT INTO `god_area` VALUES ('1364', '青云谱区', '青云谱', '999', '9', '', '1360', '/0/1359/1360/', '3', '360104', 'QYPQ', '1', '1', '2017-03-09 11:53:48', '1', '2017-03-09 11:53:48');
INSERT INTO `god_area` VALUES ('1365', '湾里区', '湾里', '999', '6', '', '1360', '/0/1359/1360/', '3', '360105', 'WLQ', '1', '1', '2017-03-09 11:53:49', '1', '2017-03-09 11:53:49');
INSERT INTO `god_area` VALUES ('1366', '青山湖区', '青山湖', '999', '9', '', '1360', '/0/1359/1360/', '3', '360111', 'QSIQ', '1', '1', '2017-03-09 11:53:49', '1', '2017-03-09 11:53:49');
INSERT INTO `god_area` VALUES ('1367', '南昌县', '南昌县', '999', '9', '', '1360', '/0/1359/1360/', '3', '360121', 'NCX', '1', '88', '2017-03-09 11:53:49', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1368', '新建区', '新建区', '999', '9', '', '1360', '/0/1359/1360/', '3', '360122', 'XJX', '1', '88', '2017-03-09 11:53:49', '16', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1369', '安义县', '安义', '999', '6', '', '1360', '/0/1359/1360/', '3', '360123', 'AYX', '1', '1', '2017-03-09 11:53:49', '1', '2017-03-09 11:53:49');
INSERT INTO `god_area` VALUES ('1370', '进贤县', '进贤', '999', '6', '', '1360', '/0/1359/1360/', '3', '360124', 'JXX', '1', '1', '2017-03-09 11:53:49', '1', '2017-03-09 11:53:49');
INSERT INTO `god_area` VALUES ('1371', '景德镇市', '景德镇', '999', '9', '', '1359', '/0/1359/', '2', '360200', 'JDZS', '1', '1', '2017-03-09 11:53:49', '1', '2017-03-09 11:53:49');
INSERT INTO `god_area` VALUES ('1373', '昌江区', '昌江区', '999', '9', '', '1371', '/0/1359/1371/', '3', '360202', 'CJQ', '1', '1', '2017-03-09 11:53:49', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1374', '珠山区', '珠山', '999', '6', '', '1371', '/0/1359/1371/', '3', '360203', 'ZSQ', '1', '1', '2017-03-09 11:53:49', '1', '2017-03-09 11:53:49');
INSERT INTO `god_area` VALUES ('1375', '浮梁县', '浮梁', '999', '6', '', '1371', '/0/1359/1371/', '3', '360222', 'FLX', '1', '1', '2017-03-09 11:53:49', '1', '2017-03-09 11:53:49');
INSERT INTO `god_area` VALUES ('1376', '乐平市', '乐平', '999', '6', '', '1371', '/0/1359/1371/', '3', '360281', 'LPS', '1', '1', '2017-03-09 11:53:49', '1', '2017-03-09 11:53:49');
INSERT INTO `god_area` VALUES ('1377', '萍乡市', '萍乡', '999', '6', '', '1359', '/0/1359/', '2', '360300', 'PXS', '1', '1', '2017-03-09 11:53:49', '1', '2017-03-09 11:53:49');
INSERT INTO `god_area` VALUES ('1379', '安源区', '安源', '999', '6', '', '1377', '/0/1359/1377/', '3', '360302', 'AYQ', '1', '1', '2017-03-09 11:53:49', '1', '2017-03-09 11:53:49');
INSERT INTO `god_area` VALUES ('1380', '湘东区', '湘东区', '999', '6', '', '1377', '/0/1359/1377/', '3', '360313', 'XDQ', '1', '1', '2017-03-09 11:53:49', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('1381', '莲花县', '莲花', '999', '6', '', '1377', '/0/1359/1377/', '3', '360321', 'LIX', '1', '1', '2017-03-09 11:53:49', '1', '2017-03-09 11:53:49');
INSERT INTO `god_area` VALUES ('1382', '上栗县', '上栗', '999', '6', '', '1377', '/0/1359/1377/', '3', '360322', 'SLX', '1', '1', '2017-03-09 11:53:49', '1', '2017-03-09 11:53:49');
INSERT INTO `god_area` VALUES ('1383', '芦溪县', '芦溪', '999', '6', '', '1377', '/0/1359/1377/', '3', '360323', 'LXX', '1', '1', '2017-03-09 11:53:49', '1', '2017-03-09 11:53:49');
INSERT INTO `god_area` VALUES ('1384', '九江市', '九江', '999', '6', '', '1359', '/0/1359/', '2', '360400', 'JJS', '1', '1', '2017-03-09 11:53:49', '1', '2017-03-09 11:53:49');
INSERT INTO `god_area` VALUES ('1386', '濂溪区', '濂溪', '999', '6', '', '1384', '/0/1359/1384/', '3', '360402', 'XQ', '1', '1', '2017-03-09 11:53:49', '6', '2017-11-24 16:57:00');
INSERT INTO `god_area` VALUES ('1387', '浔阳区', '浔阳', '999', '6', '', '1384', '/0/1359/1384/', '3', '360403', 'YQ', '1', '1', '2017-03-09 11:53:49', '1', '2017-03-09 11:53:49');
INSERT INTO `god_area` VALUES ('1388', '柴桑区', '柴桑', '999', '6', '', '1384', '/0/1359/1384/', '3', '360421', 'CSQ', '1', '1', '2017-03-09 11:53:49', '6', '2018-01-06 15:04:29');
INSERT INTO `god_area` VALUES ('1389', '武宁县', '武宁', '999', '6', '', '1384', '/0/1359/1384/', '3', '360423', 'WNX', '1', '1', '2017-03-09 11:53:49', '1', '2017-03-09 11:53:49');
INSERT INTO `god_area` VALUES ('1390', '修水县', '修水县', '999', '9', '', '1384', '/0/1359/1384/', '3', '360424', 'XSX', '1', '1', '2017-03-09 11:53:49', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1391', '永修县', '永修县', '999', '9', '', '1384', '/0/1359/1384/', '3', '360425', 'YXX', '1', '1', '2017-03-09 11:53:49', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1392', '德安县', '德安', '999', '6', '', '1384', '/0/1359/1384/', '3', '360426', 'DAX', '1', '1', '2017-03-09 11:53:49', '1', '2017-03-09 11:53:49');
INSERT INTO `god_area` VALUES ('1393', '庐山市', '庐山', '999', '6', '', '1384', '/0/1359/1384/', '3', '360427', 'XZX', '1', '1', '2017-03-09 11:53:49', '16', '2018-05-17 09:28:58');
INSERT INTO `god_area` VALUES ('1394', '都昌县', '都昌', '999', '6', '', '1384', '/0/1359/1384/', '3', '360428', 'DCX', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1395', '湖口县', '湖口', '999', '6', '', '1384', '/0/1359/1384/', '3', '360429', 'IKX', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1396', '彭泽县', '彭泽', '999', '6', '', '1384', '/0/1359/1384/', '3', '360430', 'PZX', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1397', '瑞昌市', '瑞昌', '999', '6', '', '1384', '/0/1359/1384/', '3', '360481', 'RCS', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1398', '共青城市', '共青城', '999', '9', '', '1384', '/0/1359/1384/', '3', '360482', 'GQCS', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1399', '新余市', '新余', '999', '6', '', '1359', '/0/1359/', '2', '360500', 'XYS', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1401', '渝水区', '渝水', '999', '6', '', '1399', '/0/1359/1399/', '3', '360502', 'YSQ', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1402', '分宜县', '分宜', '999', '6', '', '1399', '/0/1359/1399/', '3', '360521', 'FYX', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1403', '鹰潭市', '鹰潭', '999', '6', '', '1359', '/0/1359/', '2', '360600', 'YTS', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1405', '月湖区', '月湖', '999', '6', '', '1403', '/0/1359/1403/', '3', '360602', 'YIQ', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1406', '余江县', '余江', '999', '6', '', '1403', '/0/1359/1403/', '3', '360622', 'YJX', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1407', '贵溪市', '贵溪', '999', '6', '', '1403', '/0/1359/1403/', '3', '360681', 'GXS', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1408', '赣州市', '赣州', '999', '6', '', '1359', '/0/1359/', '2', '360700', 'GZS', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1410', '章贡区', '章贡', '999', '6', '', '1408', '/0/1359/1408/', '3', '360702', 'ZGQ', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1411', '南康区', '南康', '999', '6', '', '1408', '/0/1359/1408/', '3', '360703', 'NKQ', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1412', '赣县区', '赣县', '999', '6', '', '1408', '/0/1359/1408/', '3', '360721', 'GX', '1', '1', '2017-03-09 11:53:50', '16', '2018-07-16 16:29:04');
INSERT INTO `god_area` VALUES ('1413', '信丰县', '信丰', '999', '6', '', '1408', '/0/1359/1408/', '3', '360722', 'XFX', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1414', '大余县', '大余', '999', '6', '', '1408', '/0/1359/1408/', '3', '360723', 'DYX', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1415', '上犹县', '上犹', '999', '6', '', '1408', '/0/1359/1408/', '3', '360724', 'SYX', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1416', '崇义县', '崇义', '999', '6', '', '1408', '/0/1359/1408/', '3', '360725', 'CYX', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1417', '安远县', '安远', '999', '6', '', '1408', '/0/1359/1408/', '3', '360726', 'AYX', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1418', '龙南县', '龙南', '999', '6', '', '1408', '/0/1359/1408/', '3', '360727', 'LNX', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1419', '定南县', '定南', '999', '6', '', '1408', '/0/1359/1408/', '3', '360728', 'DNX', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1420', '全南县', '全南', '999', '6', '', '1408', '/0/1359/1408/', '3', '360729', 'QNX', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1421', '宁都县', '宁都', '999', '6', '', '1408', '/0/1359/1408/', '3', '360730', 'NDX', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1422', '于都县', '于都', '999', '6', '', '1408', '/0/1359/1408/', '3', '360731', 'YDX', '1', '1', '2017-03-09 11:53:50', '1', '2017-03-09 11:53:50');
INSERT INTO `god_area` VALUES ('1423', '兴国县', '兴国', '999', '6', '', '1408', '/0/1359/1408/', '3', '360732', 'XGX', '1', '1', '2017-03-09 11:53:51', '1', '2017-03-09 11:53:51');
INSERT INTO `god_area` VALUES ('1424', '会昌县', '会昌', '999', '6', '', '1408', '/0/1359/1408/', '3', '360733', 'ICX', '1', '1', '2017-03-09 11:53:51', '1', '2017-03-09 11:53:51');
INSERT INTO `god_area` VALUES ('1425', '寻乌县', '寻乌', '999', '6', '', '1408', '/0/1359/1408/', '3', '360734', 'XWX', '1', '1', '2017-03-09 11:53:51', '1', '2017-03-09 11:53:51');
INSERT INTO `god_area` VALUES ('1426', '石城县', '石城', '999', '6', '', '1408', '/0/1359/1408/', '3', '360735', 'SCX', '1', '1', '2017-03-09 11:53:51', '1', '2017-03-09 11:53:51');
INSERT INTO `god_area` VALUES ('1427', '瑞金市', '瑞金', '999', '6', '', '1408', '/0/1359/1408/', '3', '360781', 'RJS', '1', '1', '2017-03-09 11:53:51', '1', '2017-03-09 11:53:51');
INSERT INTO `god_area` VALUES ('1428', '吉安市', '吉安', '999', '6', '', '1359', '/0/1359/', '2', '360800', 'JAS', '1', '1', '2017-03-09 11:53:51', '1', '2017-03-09 11:53:51');
INSERT INTO `god_area` VALUES ('1430', '吉州区', '吉州', '999', '6', '', '1428', '/0/1359/1428/', '3', '360802', 'JZQ', '1', '1', '2017-03-09 11:53:51', '1', '2017-03-09 11:53:51');
INSERT INTO `god_area` VALUES ('1431', '青原区', '青原区', '999', '9', '', '1428', '/0/1359/1428/', '3', '360803', 'QYQ', '1', '1', '2017-03-09 11:53:51', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1432', '吉安县', '吉安县', '999', '9', '', '1428', '/0/1359/1428/', '3', '360821', 'JAX', '1', '88', '2017-03-09 11:53:51', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1433', '吉水县', '吉水', '999', '6', '', '1428', '/0/1359/1428/', '3', '360822', 'JSX', '1', '1', '2017-03-09 11:53:51', '1', '2017-03-09 11:53:51');
INSERT INTO `god_area` VALUES ('1434', '峡江县', '峡江', '999', '6', '', '1428', '/0/1359/1428/', '3', '360823', 'XJX', '1', '1', '2017-03-09 11:53:51', '1', '2017-03-09 11:53:51');
INSERT INTO `god_area` VALUES ('1435', '新干县', '新干', '999', '6', '', '1428', '/0/1359/1428/', '3', '360824', 'XGX', '1', '1', '2017-03-09 11:53:51', '1', '2017-03-09 11:53:51');
INSERT INTO `god_area` VALUES ('1436', '永丰县', '永丰', '999', '6', '', '1428', '/0/1359/1428/', '3', '360825', 'YFX', '1', '1', '2017-03-09 11:53:51', '1', '2017-03-09 11:53:51');
INSERT INTO `god_area` VALUES ('1437', '泰和县', '泰和', '999', '6', '', '1428', '/0/1359/1428/', '3', '360826', 'TIX', '1', '1', '2017-03-09 11:53:51', '1', '2017-03-09 11:53:51');
INSERT INTO `god_area` VALUES ('1438', '遂川县', '遂川', '999', '6', '', '1428', '/0/1359/1428/', '3', '360827', 'SCX', '1', '1', '2017-03-09 11:53:51', '1', '2017-03-09 11:53:51');
INSERT INTO `god_area` VALUES ('1439', '万安县', '万安', '999', '6', '', '1428', '/0/1359/1428/', '3', '360828', 'WAX', '1', '1', '2017-03-09 11:53:51', '1', '2017-03-09 11:53:51');
INSERT INTO `god_area` VALUES ('1440', '安福县', '安福', '999', '6', '', '1428', '/0/1359/1428/', '3', '360829', 'AFX', '1', '1', '2017-03-09 11:53:51', '1', '2017-03-09 11:53:51');
INSERT INTO `god_area` VALUES ('1441', '永新县', '永新', '999', '6', '', '1428', '/0/1359/1428/', '3', '360830', 'YXX', '1', '1', '2017-03-09 11:53:51', '1', '2017-03-09 11:53:51');
INSERT INTO `god_area` VALUES ('1442', '井冈山市', '井冈山', '999', '9', '', '1428', '/0/1359/1428/', '3', '360881', 'JGSS', '1', '1', '2017-03-09 11:53:51', '1', '2017-03-09 11:53:51');
INSERT INTO `god_area` VALUES ('1443', '宜春市', '宜春', '999', '6', '', '1359', '/0/1359/', '2', '360900', 'YCS', '1', '1', '2017-03-09 11:53:51', '1', '2017-03-09 11:53:51');
INSERT INTO `god_area` VALUES ('1445', '袁州区', '袁州', '999', '6', '', '1443', '/0/1359/1443/', '3', '360902', 'YZQ', '1', '1', '2017-03-09 11:53:51', '1', '2017-03-09 11:53:51');
INSERT INTO `god_area` VALUES ('1446', '奉新县', '奉新', '999', '6', '', '1443', '/0/1359/1443/', '3', '360921', 'FXX', '1', '1', '2017-03-09 11:53:51', '1', '2017-03-09 11:53:51');
INSERT INTO `god_area` VALUES ('1447', '万载县', '万载', '999', '6', '', '1443', '/0/1359/1443/', '3', '360922', 'WZX', '1', '1', '2017-03-09 11:53:51', '1', '2017-03-09 11:53:51');
INSERT INTO `god_area` VALUES ('1448', '上高县', '上高县', '999', '6', '', '1443', '/0/1359/1443/', '3', '360923', 'SGX', '1', '1', '2017-03-09 11:53:52', '1', '2018-12-05 16:14:39');
INSERT INTO `god_area` VALUES ('1449', '宜丰县', '宜丰', '999', '6', '', '1443', '/0/1359/1443/', '3', '360924', 'YFX', '1', '1', '2017-03-09 11:53:52', '1', '2017-03-09 11:53:52');
INSERT INTO `god_area` VALUES ('1450', '靖安县', '靖安', '999', '6', '', '1443', '/0/1359/1443/', '3', '360925', 'JAX', '1', '1', '2017-03-09 11:53:52', '1', '2017-03-09 11:53:52');
INSERT INTO `god_area` VALUES ('1451', '铜鼓县', '铜鼓', '999', '6', '', '1443', '/0/1359/1443/', '3', '360926', 'TGX', '1', '1', '2017-03-09 11:53:52', '1', '2017-03-09 11:53:52');
INSERT INTO `god_area` VALUES ('1452', '丰城市', '丰城', '999', '6', '', '1443', '/0/1359/1443/', '3', '360981', 'FCS', '1', '1', '2017-03-09 11:53:52', '1', '2017-03-09 11:53:52');
INSERT INTO `god_area` VALUES ('1453', '樟树市', '樟树', '999', '6', '', '1443', '/0/1359/1443/', '3', '360982', 'ZSS', '1', '1', '2017-03-09 11:53:52', '1', '2017-03-09 11:53:52');
INSERT INTO `god_area` VALUES ('1454', '高安市', '高安', '999', '6', '', '1443', '/0/1359/1443/', '3', '360983', 'GAS', '1', '1', '2017-03-09 11:53:52', '1', '2017-03-09 11:53:52');
INSERT INTO `god_area` VALUES ('1455', '抚州市', '抚州', '999', '6', '', '1359', '/0/1359/', '2', '361000', 'FZS', '1', '1', '2017-03-09 11:53:52', '1', '2017-03-09 11:53:52');
INSERT INTO `god_area` VALUES ('1457', '临川区', '临川', '999', '6', '', '1455', '/0/1359/1455/', '3', '361002', 'LCQ', '1', '1', '2017-03-09 11:53:52', '1', '2017-03-09 11:53:52');
INSERT INTO `god_area` VALUES ('1458', '南城县', '南城', '999', '6', '', '1455', '/0/1359/1455/', '3', '361021', 'NCX', '1', '1', '2017-03-09 11:53:52', '1', '2017-03-09 11:53:52');
INSERT INTO `god_area` VALUES ('1459', '黎川县', '黎川', '999', '6', '', '1455', '/0/1359/1455/', '3', '361022', 'LCX', '1', '1', '2017-03-09 11:53:52', '1', '2017-03-09 11:53:52');
INSERT INTO `god_area` VALUES ('1460', '南丰县', '南丰', '999', '6', '', '1455', '/0/1359/1455/', '3', '361023', 'NFX', '1', '1', '2017-03-09 11:53:52', '1', '2017-03-09 11:53:52');
INSERT INTO `god_area` VALUES ('1461', '崇仁县', '崇仁', '999', '6', '', '1455', '/0/1359/1455/', '3', '361024', 'CRX', '1', '1', '2017-03-09 11:53:52', '1', '2017-03-09 11:53:52');
INSERT INTO `god_area` VALUES ('1462', '乐安县', '乐安', '999', '6', '', '1455', '/0/1359/1455/', '3', '361025', 'LAX', '1', '1', '2017-03-09 11:53:52', '1', '2017-03-09 11:53:52');
INSERT INTO `god_area` VALUES ('1463', '宜黄县', '宜黄', '999', '6', '', '1455', '/0/1359/1455/', '3', '361026', 'YIX', '1', '1', '2017-03-09 11:53:52', '1', '2017-03-09 11:53:52');
INSERT INTO `god_area` VALUES ('1464', '金溪县', '金溪', '999', '6', '', '1455', '/0/1359/1455/', '3', '361027', 'JXX', '1', '1', '2017-03-09 11:53:52', '1', '2017-03-09 11:53:52');
INSERT INTO `god_area` VALUES ('1465', '资溪县', '资溪', '999', '6', '', '1455', '/0/1359/1455/', '3', '361028', 'ZXX', '1', '1', '2017-03-09 11:53:52', '1', '2017-03-09 11:53:52');
INSERT INTO `god_area` VALUES ('1466', '东乡区', '东乡', '999', '6', '', '1455', '/0/1359/1455/', '3', '361029', 'DXX', '1', '1', '2017-03-09 11:53:52', '16', '2018-05-14 16:01:40');
INSERT INTO `god_area` VALUES ('1467', '广昌县', '广昌', '999', '6', '', '1455', '/0/1359/1455/', '3', '361030', 'GCX', '1', '1', '2017-03-09 11:53:52', '1', '2017-03-09 11:53:52');
INSERT INTO `god_area` VALUES ('1468', '上饶市', '上饶', '999', '6', '', '1359', '/0/1359/', '2', '361100', 'SRS', '1', '1', '2017-03-09 11:53:52', '1', '2017-03-09 11:53:52');
INSERT INTO `god_area` VALUES ('1470', '信州区', '信州', '999', '6', '', '1468', '/0/1359/1468/', '3', '361102', 'XZQ', '1', '1', '2017-03-09 11:53:52', '1', '2017-03-09 11:53:52');
INSERT INTO `god_area` VALUES ('1471', '上饶县', '上饶县', '999', '9', '', '1468', '/0/1359/1468/', '3', '361121', 'SRX', '1', '1', '2017-03-09 11:53:52', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1472', '广丰区', '广丰', '999', '6', '', '1468', '/0/1359/1468/', '3', '361122', 'GFX', '1', '1', '2017-03-09 11:53:52', '16', '2018-07-16 16:07:29');
INSERT INTO `god_area` VALUES ('1473', '玉山县', '玉山', '999', '6', '', '1468', '/0/1359/1468/', '3', '361123', 'YSX', '1', '1', '2017-03-09 11:53:52', '1', '2017-03-09 11:53:52');
INSERT INTO `god_area` VALUES ('1474', '铅山县', '铅山', '999', '6', '', '1468', '/0/1359/1468/', '3', '361124', 'QSX', '1', '1', '2017-03-09 11:53:52', '1', '2017-03-09 11:53:52');
INSERT INTO `god_area` VALUES ('1475', '横峰县', '横峰', '999', '6', '', '1468', '/0/1359/1468/', '3', '361125', 'IFX', '1', '1', '2017-03-09 11:53:53', '1', '2017-03-09 11:53:53');
INSERT INTO `god_area` VALUES ('1476', '弋阳县', '弋阳', '999', '6', '', '1468', '/0/1359/1468/', '3', '361126', 'YX', '1', '1', '2017-03-09 11:53:53', '1', '2017-03-09 11:53:53');
INSERT INTO `god_area` VALUES ('1477', '余干县', '余干', '999', '6', '', '1468', '/0/1359/1468/', '3', '361127', 'YGX', '1', '1', '2017-03-09 11:53:53', '1', '2017-03-09 11:53:53');
INSERT INTO `god_area` VALUES ('1478', '鄱阳县', '鄱阳', '999', '6', '', '1468', '/0/1359/1468/', '3', '361128', 'YX', '1', '1', '2017-03-09 11:53:53', '1', '2017-03-09 11:53:53');
INSERT INTO `god_area` VALUES ('1479', '万年县', '万年县', '999', '9', '', '1468', '/0/1359/1468/', '3', '361129', 'WNX', '1', '88', '2017-03-09 11:53:53', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1480', '婺源县', '婺源', '999', '6', '', '1468', '/0/1359/1468/', '3', '361130', 'YX', '1', '1', '2017-03-09 11:53:53', '1', '2017-03-09 11:53:53');
INSERT INTO `god_area` VALUES ('1481', '德兴市', '德兴', '999', '6', '', '1468', '/0/1359/1468/', '3', '361181', 'DXS', '1', '1', '2017-03-09 11:53:53', '1', '2017-03-09 11:53:53');
INSERT INTO `god_area` VALUES ('1482', '山东省', '山东', '999', '6', '', '0', '/0/', '1', '370000', 'SDS', '1', '1', '2017-03-09 11:53:53', '1', '2017-03-09 11:53:53');
INSERT INTO `god_area` VALUES ('1483', '济南市', '济南', '999', '6', '', '1482', '/0/1482/', '2', '370100', 'JNS', '1', '1', '2017-03-09 11:53:53', '1', '2017-03-09 11:53:53');
INSERT INTO `god_area` VALUES ('1485', '历下区', '历下', '999', '6', '', '1483', '/0/1482/1483/', '3', '370102', 'LXQ', '1', '1', '2017-03-09 11:53:53', '1', '2017-03-09 11:53:53');
INSERT INTO `god_area` VALUES ('1486', '市中区', '市中区', '999', '9', '', '1483', '/0/1482/1483/', '3', '370103', 'SZQ', '1', '1', '2017-03-09 11:53:53', '1', '2017-03-09 11:53:53');
INSERT INTO `god_area` VALUES ('1487', '槐荫区', '槐荫', '999', '6', '', '1483', '/0/1482/1483/', '3', '370104', 'IYQ', '1', '1', '2017-03-09 11:53:53', '1', '2017-03-09 11:53:53');
INSERT INTO `god_area` VALUES ('1488', '天桥区', '天桥', '999', '6', '', '1483', '/0/1482/1483/', '3', '370105', 'TQQ', '1', '1', '2017-03-09 11:53:53', '1', '2017-03-09 11:53:53');
INSERT INTO `god_area` VALUES ('1489', '历城区', '历城区', '999', '9', '', '1483', '/0/1482/1483/', '3', '370112', 'LCQ', '1', '1', '2017-03-09 11:53:53', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1490', '长清区', '长清', '999', '6', '', '1483', '/0/1482/1483/', '3', '370113', 'CQQ', '1', '1', '2017-03-09 11:53:53', '1', '2017-03-09 11:53:53');
INSERT INTO `god_area` VALUES ('1491', '平阴县', '平阴', '999', '6', '', '1483', '/0/1482/1483/', '3', '370124', 'PYX', '1', '1', '2017-03-09 11:53:53', '1', '2017-03-09 11:53:53');
INSERT INTO `god_area` VALUES ('1492', '济阳县', '济阳', '999', '6', '', '1483', '/0/1482/1483/', '3', '370125', 'JYX', '1', '1', '2017-03-09 11:53:53', '1', '2017-03-09 11:53:53');
INSERT INTO `god_area` VALUES ('1493', '商河县', '商河', '999', '6', '', '1483', '/0/1482/1483/', '3', '370126', 'SIX', '1', '1', '2017-03-09 11:53:53', '1', '2017-03-09 11:53:53');
INSERT INTO `god_area` VALUES ('1494', '章丘区', '章丘', '999', '6', '', '1483', '/0/1482/1483/', '3', '370181', 'ZQS', '1', '1', '2017-03-09 11:53:53', '16', '2018-05-25 10:12:44');
INSERT INTO `god_area` VALUES ('1495', '青岛市', '青岛', '999', '6', '', '1482', '/0/1482/', '2', '370200', 'QDS', '1', '1', '2017-03-09 11:53:53', '1', '2017-03-09 11:53:53');
INSERT INTO `god_area` VALUES ('1497', '市南区', '市南区', '999', '9', '', '1495', '/0/1482/1495/', '3', '370202', 'SNQ', '1', '1', '2017-03-09 11:53:54', '1', '2017-03-09 11:53:54');
INSERT INTO `god_area` VALUES ('1498', '市北区', '市北区', '999', '9', '', '1495', '/0/1482/1495/', '3', '370203', 'SBQ', '1', '1', '2017-03-09 11:53:54', '1', '2017-03-09 11:53:54');
INSERT INTO `god_area` VALUES ('1499', '黄岛区', '黄岛', '999', '6', '', '1495', '/0/1482/1495/', '3', '370211', 'IDQ', '1', '1', '2017-03-09 11:53:54', '1', '2017-03-09 11:53:54');
INSERT INTO `god_area` VALUES ('1500', '崂山区', '崂山', '999', '6', '', '1495', '/0/1482/1495/', '3', '370212', 'SQ', '1', '1', '2017-03-09 11:53:54', '1', '2017-03-09 11:53:54');
INSERT INTO `god_area` VALUES ('1501', '李沧区', '李沧', '999', '6', '', '1495', '/0/1482/1495/', '3', '370213', 'LCQ', '1', '1', '2017-03-09 11:53:54', '1', '2017-03-09 11:53:54');
INSERT INTO `god_area` VALUES ('1502', '城阳区', '城阳', '999', '6', '', '1495', '/0/1482/1495/', '3', '370214', 'CYQ', '1', '1', '2017-03-09 11:53:54', '1', '2017-03-09 11:53:54');
INSERT INTO `god_area` VALUES ('1503', '胶州市', '胶州', '999', '6', '', '1495', '/0/1482/1495/', '3', '370281', 'JZS', '1', '1', '2017-03-09 11:53:54', '1', '2017-03-09 11:53:54');
INSERT INTO `god_area` VALUES ('1504', '即墨区', '即墨', '999', '6', '', '1495', '/0/1482/1495/', '3', '370282', 'JQ', '1', '1', '2017-03-09 11:53:54', '16', '2018-04-18 14:51:01');
INSERT INTO `god_area` VALUES ('1505', '平度市', '平度', '999', '6', '', '1495', '/0/1482/1495/', '3', '370283', 'PDS', '1', '1', '2017-03-09 11:53:54', '1', '2017-03-09 11:53:54');
INSERT INTO `god_area` VALUES ('1506', '莱西市', '莱西', '999', '6', '', '1495', '/0/1482/1495/', '3', '370285', 'LXS', '1', '1', '2017-03-09 11:53:54', '1', '2017-03-09 11:53:54');
INSERT INTO `god_area` VALUES ('1507', '淄博市', '淄博', '999', '6', '', '1482', '/0/1482/', '2', '370300', 'ZBS', '1', '1', '2017-03-09 11:53:54', '1', '2017-03-09 11:53:54');
INSERT INTO `god_area` VALUES ('1509', '淄川区', '淄川', '999', '6', '', '1507', '/0/1482/1507/', '3', '370302', 'ZCQ', '1', '1', '2017-03-09 11:53:54', '1', '2017-03-09 11:53:54');
INSERT INTO `god_area` VALUES ('1510', '张店区', '张店', '999', '6', '', '1507', '/0/1482/1507/', '3', '370303', 'ZDQ', '1', '1', '2017-03-09 11:53:54', '1', '2017-03-09 11:53:54');
INSERT INTO `god_area` VALUES ('1511', '博山区', '博山', '999', '6', '', '1507', '/0/1482/1507/', '3', '370304', 'BSQ', '1', '1', '2017-03-09 11:53:54', '1', '2017-03-09 11:53:54');
INSERT INTO `god_area` VALUES ('1512', '临淄区', '临淄', '999', '6', '', '1507', '/0/1482/1507/', '3', '370305', 'LZQ', '1', '1', '2017-03-09 11:53:54', '1', '2017-03-09 11:53:54');
INSERT INTO `god_area` VALUES ('1513', '周村区', '周村', '999', '6', '', '1507', '/0/1482/1507/', '3', '370306', 'ZCQ', '1', '1', '2017-03-09 11:53:54', '1', '2017-03-09 11:53:54');
INSERT INTO `god_area` VALUES ('1514', '桓台县', '桓台', '999', '6', '', '1507', '/0/1482/1507/', '3', '370321', 'ITX', '1', '1', '2017-03-09 11:53:54', '1', '2017-03-09 11:53:54');
INSERT INTO `god_area` VALUES ('1515', '高青县', '高青', '999', '6', '', '1507', '/0/1482/1507/', '3', '370322', 'GQX', '1', '1', '2017-03-09 11:53:54', '1', '2017-03-09 11:53:54');
INSERT INTO `god_area` VALUES ('1516', '沂源县', '沂源', '999', '6', '', '1507', '/0/1482/1507/', '3', '370323', 'YYX', '1', '1', '2017-03-09 11:53:54', '1', '2017-03-09 11:53:54');
INSERT INTO `god_area` VALUES ('1517', '枣庄市', '枣庄', '999', '6', '', '1482', '/0/1482/', '2', '370400', 'ZZS', '1', '1', '2017-03-09 11:53:54', '1', '2017-03-09 11:53:54');
INSERT INTO `god_area` VALUES ('1519', '市中区', '市中区', '999', '9', '', '1517', '/0/1482/1517/', '3', '370402', 'SZQ', '1', '1', '2017-03-09 11:53:54', '1', '2017-03-09 11:53:54');
INSERT INTO `god_area` VALUES ('1520', '薛城区', '薛城区', '999', '9', '', '1517', '/0/1482/1517/', '3', '370403', 'XCQ', '1', '1', '2017-03-09 11:53:54', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1521', '峄城区', '峄城区', '999', '9', '', '1517', '/0/1482/1517/', '3', '370404', 'CQ', '1', '1', '2017-03-09 11:53:54', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1522', '台儿庄区', '台儿庄', '999', '9', '', '1517', '/0/1482/1517/', '3', '370405', 'TEZQ', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1523', '山亭区', '山亭', '999', '6', '', '1517', '/0/1482/1517/', '3', '370406', 'STQ', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1524', '滕州市', '滕州', '999', '6', '', '1517', '/0/1482/1517/', '3', '370481', 'ZS', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1525', '东营市', '东营', '999', '6', '', '1482', '/0/1482/', '2', '370500', 'DYS', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1527', '东营区', '东营区', '999', '9', '', '1525', '/0/1482/1525/', '3', '370502', 'DYQ', '1', '1', '2017-03-09 11:53:55', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1528', '河口区', '河口', '999', '6', '', '1525', '/0/1482/1525/', '3', '370503', 'IKQ', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1529', '垦利区', '垦利', '999', '6', '', '1525', '/0/1482/1525/', '3', '370521', 'KLX', '1', '1', '2017-03-09 11:53:55', '16', '2018-07-16 16:27:53');
INSERT INTO `god_area` VALUES ('1530', '利津县', '利津', '999', '6', '', '1525', '/0/1482/1525/', '3', '370522', 'LJX', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1531', '广饶县', '广饶', '999', '6', '', '1525', '/0/1482/1525/', '3', '370523', 'GRX', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1532', '烟台市', '烟台', '999', '6', '', '1482', '/0/1482/', '2', '370600', 'YTS', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1534', '芝罘区', '芝罘', '999', '6', '', '1532', '/0/1482/1532/', '3', '370602', 'ZQ', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1535', '福山区', '福山', '999', '6', '', '1532', '/0/1482/1532/', '3', '370611', 'FSQ', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1536', '牟平区', '牟平', '999', '6', '', '1532', '/0/1482/1532/', '3', '370612', 'MPQ', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1537', '莱山区', '莱山', '999', '6', '', '1532', '/0/1482/1532/', '3', '370613', 'LSQ', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1538', '长岛县', '长岛', '999', '6', '', '1532', '/0/1482/1532/', '3', '370634', 'CDX', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1539', '龙口市', '龙口', '999', '6', '', '1532', '/0/1482/1532/', '3', '370681', 'LKS', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1540', '莱阳市', '莱阳', '999', '6', '', '1532', '/0/1482/1532/', '3', '370682', 'LYS', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1541', '莱州市', '莱州', '999', '6', '', '1532', '/0/1482/1532/', '3', '370683', 'LZS', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1542', '蓬莱市', '蓬莱', '999', '6', '', '1532', '/0/1482/1532/', '3', '370684', 'PLS', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1543', '招远市', '招远', '999', '6', '', '1532', '/0/1482/1532/', '3', '370685', 'ZYS', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1544', '栖霞市', '栖霞', '999', '6', '', '1532', '/0/1482/1532/', '3', '370686', 'QXS', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1545', '海阳市', '海阳', '999', '6', '', '1532', '/0/1482/1532/', '3', '370687', 'IYS', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1546', '潍坊市', '潍坊', '999', '6', '', '1482', '/0/1482/', '2', '370700', 'WFS', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1548', '潍城区', '潍城区', '999', '9', '', '1546', '/0/1482/1546/', '3', '370702', 'WCQ', '1', '1', '2017-03-09 11:53:55', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1549', '寒亭区', '寒亭', '999', '6', '', '1546', '/0/1482/1546/', '3', '370703', 'ITQ', '1', '1', '2017-03-09 11:53:55', '1', '2017-03-09 11:53:55');
INSERT INTO `god_area` VALUES ('1550', '坊子区', '坊子', '999', '6', '', '1546', '/0/1482/1546/', '3', '370704', 'FZQ', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1551', '奎文区', '奎文', '999', '6', '', '1546', '/0/1482/1546/', '3', '370705', 'KWQ', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1552', '临朐县', '临朐', '999', '6', '', '1546', '/0/1482/1546/', '3', '370724', 'LX', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1553', '昌乐县', '昌乐', '999', '6', '', '1546', '/0/1482/1546/', '3', '370725', 'CLX', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1554', '青州市', '青州', '999', '6', '', '1546', '/0/1482/1546/', '3', '370781', 'QZS', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1555', '诸城市', '诸城', '999', '6', '', '1546', '/0/1482/1546/', '3', '370782', 'ZCS', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1556', '寿光市', '寿光', '999', '6', '', '1546', '/0/1482/1546/', '3', '370783', 'SGS', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1557', '安丘市', '安丘', '999', '6', '', '1546', '/0/1482/1546/', '3', '370784', 'AQS', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1558', '高密市', '高密', '999', '6', '', '1546', '/0/1482/1546/', '3', '370785', 'GMS', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1559', '昌邑市', '昌邑', '999', '6', '', '1546', '/0/1482/1546/', '3', '370786', 'CYS', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1560', '济宁市', '济宁', '999', '6', '', '1482', '/0/1482/', '2', '370800', 'JNS', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1562', '任城区', '任城区', '999', '9', '', '1560', '/0/1482/1560/', '3', '370811', 'RCQ', '1', '1', '2017-03-09 11:53:56', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1563', '兖州区', '兖州', '999', '6', '', '1560', '/0/1482/1560/', '3', '370812', 'ZQ', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1564', '微山县', '微山', '999', '6', '', '1560', '/0/1482/1560/', '3', '370826', 'WSX', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1565', '鱼台县', '鱼台', '999', '6', '', '1560', '/0/1482/1560/', '3', '370827', 'YTX', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1566', '金乡县', '金乡', '999', '6', '', '1560', '/0/1482/1560/', '3', '370828', 'JXX', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1567', '嘉祥县', '嘉祥', '999', '6', '', '1560', '/0/1482/1560/', '3', '370829', 'JXX', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1568', '汶上县', '汶上', '999', '6', '', '1560', '/0/1482/1560/', '3', '370830', 'SX', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1569', '泗水县', '泗水', '999', '6', '', '1560', '/0/1482/1560/', '3', '370831', 'SX', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1570', '梁山县', '梁山', '999', '6', '', '1560', '/0/1482/1560/', '3', '370832', 'LSX', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1571', '曲阜市', '曲阜', '999', '6', '', '1560', '/0/1482/1560/', '3', '370881', 'QFS', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1572', '邹城市', '邹城', '999', '6', '', '1560', '/0/1482/1560/', '3', '370883', 'ZCS', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1573', '泰安市', '泰安', '999', '6', '', '1482', '/0/1482/', '2', '370900', 'TAS', '1', '1', '2017-03-09 11:53:56', '1', '2017-03-09 11:53:56');
INSERT INTO `god_area` VALUES ('1575', '泰山区', '泰山', '999', '6', '', '1573', '/0/1482/1573/', '3', '370902', 'TSQ', '1', '1', '2017-03-09 11:53:57', '1', '2017-03-09 11:53:57');
INSERT INTO `god_area` VALUES ('1576', '岱岳区', '岱岳', '999', '6', '', '1573', '/0/1482/1573/', '3', '370911', 'YQ', '1', '1', '2017-03-09 11:53:57', '1', '2017-03-09 11:53:57');
INSERT INTO `god_area` VALUES ('1577', '宁阳县', '宁阳', '999', '6', '', '1573', '/0/1482/1573/', '3', '370921', 'NYX', '1', '1', '2017-03-09 11:53:57', '1', '2017-03-09 11:53:57');
INSERT INTO `god_area` VALUES ('1578', '东平县', '东平', '999', '6', '', '1573', '/0/1482/1573/', '3', '370923', 'DPX', '1', '1', '2017-03-09 11:53:57', '1', '2017-03-09 11:53:57');
INSERT INTO `god_area` VALUES ('1579', '新泰市', '新泰', '999', '6', '', '1573', '/0/1482/1573/', '3', '370982', 'XTS', '1', '1', '2017-03-09 11:53:57', '1', '2017-03-09 11:53:57');
INSERT INTO `god_area` VALUES ('1580', '肥城市', '肥城', '999', '6', '', '1573', '/0/1482/1573/', '3', '370983', 'FCS', '1', '1', '2017-03-09 11:53:57', '1', '2017-03-09 11:53:57');
INSERT INTO `god_area` VALUES ('1581', '威海市', '威海', '999', '6', '', '1482', '/0/1482/', '2', '371000', 'WIS', '1', '1', '2017-03-09 11:53:57', '1', '2017-03-09 11:53:57');
INSERT INTO `god_area` VALUES ('1583', '环翠区', '环翠', '999', '6', '', '1581', '/0/1482/1581/', '3', '371002', 'ICQ', '1', '1', '2017-03-09 11:53:57', '1', '2017-03-09 11:53:57');
INSERT INTO `god_area` VALUES ('1584', '文登区', '文登', '999', '6', '', '1581', '/0/1482/1581/', '3', '371003', 'WDQ', '1', '1', '2017-03-09 11:53:57', '1', '2017-03-09 11:53:57');
INSERT INTO `god_area` VALUES ('1585', '荣成市', '荣成', '999', '6', '', '1581', '/0/1482/1581/', '3', '371082', 'RCS', '1', '1', '2017-03-09 11:53:57', '1', '2017-03-09 11:53:57');
INSERT INTO `god_area` VALUES ('1586', '乳山市', '乳山', '999', '6', '', '1581', '/0/1482/1581/', '3', '371083', 'RSS', '1', '1', '2017-03-09 11:53:57', '1', '2017-03-09 11:53:57');
INSERT INTO `god_area` VALUES ('1587', '日照市', '日照', '999', '6', '', '1482', '/0/1482/', '2', '371100', 'RZS', '1', '1', '2017-03-09 11:53:57', '1', '2017-03-09 11:53:57');
INSERT INTO `god_area` VALUES ('1589', '东港区', '东港', '999', '6', '', '1587', '/0/1482/1587/', '3', '371102', 'DGQ', '1', '1', '2017-03-09 11:53:57', '1', '2017-03-09 11:53:57');
INSERT INTO `god_area` VALUES ('1590', '岚山区', '岚山', '999', '6', '', '1587', '/0/1482/1587/', '3', '371103', 'SQ', '1', '1', '2017-03-09 11:53:57', '1', '2017-03-09 11:53:57');
INSERT INTO `god_area` VALUES ('1591', '五莲县', '五莲', '999', '6', '', '1587', '/0/1482/1587/', '3', '371121', 'WLX', '1', '1', '2017-03-09 11:53:57', '1', '2017-03-09 11:53:57');
INSERT INTO `god_area` VALUES ('1592', '莒县', '莒县', '999', '6', '', '1587', '/0/1482/1587/', '3', '371122', 'X', '1', '1', '2017-03-09 11:53:57', '1', '2017-03-09 11:53:57');
INSERT INTO `god_area` VALUES ('1593', '莱芜市', '莱芜', '999', '6', '', '1482', '/0/1482/', '2', '371200', 'LWS', '1', '1', '2017-03-09 11:53:57', '1', '2017-03-09 11:53:57');
INSERT INTO `god_area` VALUES ('1595', '莱城区', '莱城区', '999', '9', '', '1593', '/0/1482/1593/', '3', '371202', 'LCQ', '1', '1', '2017-03-09 11:53:57', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1596', '钢城区', '钢城区', '999', '9', '', '1593', '/0/1482/1593/', '3', '371203', 'GCQ', '1', '1', '2017-03-09 11:53:57', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1597', '临沂市', '临沂', '999', '6', '', '1482', '/0/1482/', '2', '371300', 'LYS', '1', '1', '2017-03-09 11:53:57', '1', '2017-03-09 11:53:57');
INSERT INTO `god_area` VALUES ('1599', '兰山区', '兰山', '999', '6', '', '1597', '/0/1482/1597/', '3', '371302', 'LSQ', '1', '1', '2017-03-09 11:53:58', '1', '2017-03-09 11:53:58');
INSERT INTO `god_area` VALUES ('1600', '罗庄区', '罗庄', '999', '6', '', '1597', '/0/1482/1597/', '3', '371311', 'LZQ', '1', '1', '2017-03-09 11:53:58', '1', '2017-03-09 11:53:58');
INSERT INTO `god_area` VALUES ('1601', '河东区', '河东区', '999', '6', '', '1597', '/0/1482/1597/', '3', '371312', 'IDQ', '1', '1', '2017-03-09 11:53:58', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('1602', '沂南县', '沂南', '999', '6', '', '1597', '/0/1482/1597/', '3', '371321', 'YNX', '1', '1', '2017-03-09 11:53:58', '1', '2017-03-09 11:53:58');
INSERT INTO `god_area` VALUES ('1603', '郯城县', '郯城', '999', '6', '', '1597', '/0/1482/1597/', '3', '371322', 'CX', '1', '1', '2017-03-09 11:53:58', '1', '2017-03-09 11:53:58');
INSERT INTO `god_area` VALUES ('1604', '沂水县', '沂水', '999', '6', '', '1597', '/0/1482/1597/', '3', '371323', 'YSX', '1', '1', '2017-03-09 11:53:58', '1', '2017-03-09 11:53:58');
INSERT INTO `god_area` VALUES ('1605', '兰陵县', '兰陵', '999', '6', '', '1597', '/0/1482/1597/', '3', '371324', 'LLX', '1', '1', '2017-03-09 11:53:58', '1', '2017-03-09 11:53:58');
INSERT INTO `god_area` VALUES ('1606', '费县', '费县', '999', '6', '', '1597', '/0/1482/1597/', '3', '371325', 'FX', '1', '1', '2017-03-09 11:53:58', '1', '2017-03-09 11:53:58');
INSERT INTO `god_area` VALUES ('1607', '平邑县', '平邑', '999', '6', '', '1597', '/0/1482/1597/', '3', '371326', 'PYX', '1', '1', '2017-03-09 11:53:58', '1', '2017-03-09 11:53:58');
INSERT INTO `god_area` VALUES ('1608', '莒南县', '莒南', '999', '6', '', '1597', '/0/1482/1597/', '3', '371327', 'NX', '1', '1', '2017-03-09 11:53:58', '1', '2017-03-09 11:53:58');
INSERT INTO `god_area` VALUES ('1609', '蒙阴县', '蒙阴', '999', '6', '', '1597', '/0/1482/1597/', '3', '371328', 'MYX', '1', '1', '2017-03-09 11:53:58', '1', '2017-03-09 11:53:58');
INSERT INTO `god_area` VALUES ('1610', '临沭县', '临沭', '999', '6', '', '1597', '/0/1482/1597/', '3', '371329', 'LX', '1', '1', '2017-03-09 11:53:59', '1', '2017-03-09 11:53:59');
INSERT INTO `god_area` VALUES ('1611', '德州市', '德州', '999', '6', '', '1482', '/0/1482/', '2', '371400', 'DZS', '1', '1', '2017-03-09 11:53:59', '1', '2017-03-09 11:53:59');
INSERT INTO `god_area` VALUES ('1613', '德城区', '德城区', '999', '9', '', '1611', '/0/1482/1611/', '3', '371402', 'DCQ', '1', '1', '2017-03-09 11:53:59', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1614', '陵城区', '陵城区', '999', '9', '', '1611', '/0/1482/1611/', '3', '371403', 'LCQ', '1', '1', '2017-03-09 11:53:59', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1615', '宁津县', '宁津', '999', '6', '', '1611', '/0/1482/1611/', '3', '371422', 'NJX', '1', '1', '2017-03-09 11:53:59', '1', '2017-03-09 11:53:59');
INSERT INTO `god_area` VALUES ('1616', '庆云县', '庆云', '999', '6', '', '1611', '/0/1482/1611/', '3', '371423', 'QYX', '1', '1', '2017-03-09 11:53:59', '1', '2017-03-09 11:53:59');
INSERT INTO `god_area` VALUES ('1617', '临邑县', '临邑', '999', '6', '', '1611', '/0/1482/1611/', '3', '371424', 'LYX', '1', '1', '2017-03-09 11:53:59', '1', '2017-03-09 11:53:59');
INSERT INTO `god_area` VALUES ('1618', '齐河县', '齐河', '999', '6', '', '1611', '/0/1482/1611/', '3', '371425', 'QIX', '1', '1', '2017-03-09 11:53:59', '1', '2017-03-09 11:53:59');
INSERT INTO `god_area` VALUES ('1619', '平原县', '平原', '999', '6', '', '1611', '/0/1482/1611/', '3', '371426', 'PYX', '1', '1', '2017-03-09 11:53:59', '1', '2017-03-09 11:53:59');
INSERT INTO `god_area` VALUES ('1620', '夏津县', '夏津', '999', '6', '', '1611', '/0/1482/1611/', '3', '371427', 'XJX', '1', '1', '2017-03-09 11:53:59', '1', '2017-03-09 11:53:59');
INSERT INTO `god_area` VALUES ('1621', '武城县', '武城', '999', '6', '', '1611', '/0/1482/1611/', '3', '371428', 'WCX', '1', '1', '2017-03-09 11:53:59', '1', '2017-03-09 11:53:59');
INSERT INTO `god_area` VALUES ('1622', '乐陵市', '乐陵', '999', '6', '', '1611', '/0/1482/1611/', '3', '371481', 'LLS', '1', '1', '2017-03-09 11:53:59', '1', '2017-03-09 11:53:59');
INSERT INTO `god_area` VALUES ('1623', '禹城市', '禹城', '999', '6', '', '1611', '/0/1482/1611/', '3', '371482', 'YCS', '1', '1', '2017-03-09 11:53:59', '1', '2017-03-09 11:53:59');
INSERT INTO `god_area` VALUES ('1624', '聊城市', '聊城', '999', '6', '', '1482', '/0/1482/', '2', '371500', 'LCS', '1', '1', '2017-03-09 11:53:59', '1', '2017-03-09 11:53:59');
INSERT INTO `god_area` VALUES ('1626', '东昌府区', '东昌府', '999', '9', '', '1624', '/0/1482/1624/', '3', '371502', 'DCFQ', '1', '1', '2017-03-09 11:53:59', '1', '2017-03-09 11:53:59');
INSERT INTO `god_area` VALUES ('1627', '阳谷县', '阳谷', '999', '6', '', '1624', '/0/1482/1624/', '3', '371521', 'YGX', '1', '1', '2017-03-09 11:53:59', '1', '2017-03-09 11:53:59');
INSERT INTO `god_area` VALUES ('1628', '莘县', '莘县', '999', '6', '', '1624', '/0/1482/1624/', '3', '371522', 'X', '1', '1', '2017-03-09 11:53:59', '1', '2017-03-09 11:53:59');
INSERT INTO `god_area` VALUES ('1629', '茌平县', '茌平', '999', '6', '', '1624', '/0/1482/1624/', '3', '371523', 'PX', '1', '1', '2017-03-09 11:53:59', '1', '2017-03-09 11:53:59');
INSERT INTO `god_area` VALUES ('1630', '东阿县', '东阿', '999', '6', '', '1624', '/0/1482/1624/', '3', '371524', 'DAX', '1', '1', '2017-03-09 11:53:59', '1', '2017-03-09 11:53:59');
INSERT INTO `god_area` VALUES ('1631', '冠县', '冠县', '999', '6', '', '1624', '/0/1482/1624/', '3', '371525', 'GX', '1', '1', '2017-03-09 11:53:59', '1', '2017-03-09 11:53:59');
INSERT INTO `god_area` VALUES ('1632', '高唐县', '高唐', '999', '6', '', '1624', '/0/1482/1624/', '3', '371526', 'GTX', '1', '1', '2017-03-09 11:53:59', '1', '2017-03-09 11:53:59');
INSERT INTO `god_area` VALUES ('1633', '临清市', '临清', '999', '6', '', '1624', '/0/1482/1624/', '3', '371581', 'LQS', '1', '1', '2017-03-09 11:54:00', '1', '2017-03-09 11:54:00');
INSERT INTO `god_area` VALUES ('1634', '滨州市', '滨州', '999', '6', '', '1482', '/0/1482/', '2', '371600', 'BZS', '1', '1', '2017-03-09 11:54:00', '1', '2017-03-09 11:54:00');
INSERT INTO `god_area` VALUES ('1636', '滨城区', '滨城区', '999', '9', '', '1634', '/0/1482/1634/', '3', '371602', 'BCQ', '1', '1', '2017-03-09 11:54:00', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1637', '沾化区', '沾化', '999', '6', '', '1634', '/0/1482/1634/', '3', '371603', 'ZIQ', '1', '1', '2017-03-09 11:54:00', '1', '2017-03-09 11:54:00');
INSERT INTO `god_area` VALUES ('1638', '惠民县', '惠民', '999', '6', '', '1634', '/0/1482/1634/', '3', '371621', 'IMX', '1', '1', '2017-03-09 11:54:00', '1', '2017-03-09 11:54:00');
INSERT INTO `god_area` VALUES ('1639', '阳信县', '阳信', '999', '6', '', '1634', '/0/1482/1634/', '3', '371622', 'YXX', '1', '1', '2017-03-09 11:54:00', '1', '2017-03-09 11:54:00');
INSERT INTO `god_area` VALUES ('1640', '无棣县', '无棣', '999', '6', '', '1634', '/0/1482/1634/', '3', '371623', 'WX', '1', '1', '2017-03-09 11:54:00', '1', '2017-03-09 11:54:00');
INSERT INTO `god_area` VALUES ('1641', '博兴县', '博兴', '999', '6', '', '1634', '/0/1482/1634/', '3', '371625', 'BXX', '1', '1', '2017-03-09 11:54:00', '1', '2017-03-09 11:54:00');
INSERT INTO `god_area` VALUES ('1642', '邹平县', '邹平', '999', '6', '', '1634', '/0/1482/1634/', '3', '371626', 'ZPX', '1', '1', '2017-03-09 11:54:00', '1', '2017-03-09 11:54:00');
INSERT INTO `god_area` VALUES ('1643', '菏泽市', '菏泽', '999', '6', '', '1482', '/0/1482/', '2', '371700', 'IZS', '1', '1', '2017-03-09 11:54:00', '1', '2017-03-09 11:54:00');
INSERT INTO `god_area` VALUES ('1645', '牡丹区', '牡丹', '999', '6', '', '1643', '/0/1482/1643/', '3', '371702', 'MDQ', '1', '1', '2017-03-09 11:54:00', '1', '2017-03-09 11:54:00');
INSERT INTO `god_area` VALUES ('1646', '曹县', '曹县', '999', '6', '', '1643', '/0/1482/1643/', '3', '371721', 'CX', '1', '1', '2017-03-09 11:54:00', '1', '2017-03-09 11:54:00');
INSERT INTO `god_area` VALUES ('1647', '单县', '单县', '999', '6', '', '1643', '/0/1482/1643/', '3', '371722', 'DX', '1', '1', '2017-03-09 11:54:00', '1', '2017-03-09 11:54:00');
INSERT INTO `god_area` VALUES ('1648', '成武县', '成武', '999', '6', '', '1643', '/0/1482/1643/', '3', '371723', 'CWX', '1', '1', '2017-03-09 11:54:00', '1', '2017-03-09 11:54:00');
INSERT INTO `god_area` VALUES ('1649', '巨野县', '巨野', '999', '6', '', '1643', '/0/1482/1643/', '3', '371724', 'JYX', '1', '1', '2017-03-09 11:54:00', '1', '2017-03-09 11:54:00');
INSERT INTO `god_area` VALUES ('1650', '郓城县', '郓城', '999', '6', '', '1643', '/0/1482/1643/', '3', '371725', 'CX', '1', '1', '2017-03-09 11:54:00', '1', '2017-03-09 11:54:00');
INSERT INTO `god_area` VALUES ('1651', '鄄城县', '鄄城', '999', '6', '', '1643', '/0/1482/1643/', '3', '371726', 'CX', '1', '1', '2017-03-09 11:54:00', '1', '2017-03-09 11:54:00');
INSERT INTO `god_area` VALUES ('1652', '定陶区', '定陶', '999', '6', '', '1643', '/0/1482/1643/', '3', '371727', 'DTQ', '1', '1', '2017-03-09 11:54:00', '16', '2018-04-10 17:05:32');
INSERT INTO `god_area` VALUES ('1653', '东明县', '东明', '999', '6', '', '1643', '/0/1482/1643/', '3', '371728', 'DMX', '1', '1', '2017-03-09 11:54:00', '1', '2017-03-09 11:54:00');
INSERT INTO `god_area` VALUES ('1654', '河南省', '河南', '999', '6', '', '0', '/0/', '1', '410000', 'INS', '1', '1', '2017-03-09 11:54:00', '1', '2017-03-09 11:54:00');
INSERT INTO `god_area` VALUES ('1655', '郑州市', '郑州', '999', '6', '', '1654', '/0/1654/', '2', '410100', 'ZZS', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1657', '中原区', '中原', '999', '6', '', '1655', '/0/1654/1655/', '3', '410102', 'ZYQ', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1658', '二七区', '二七', '999', '6', '', '1655', '/0/1654/1655/', '3', '410103', 'EQQ', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1659', '管城回族区', '管城', '999', '6', '', '1655', '/0/1654/1655/', '3', '410104', 'GCIZQ', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1660', '金水区', '金水', '999', '6', '', '1655', '/0/1654/1655/', '3', '410105', 'JSQ', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1661', '上街区', '上街', '999', '6', '', '1655', '/0/1654/1655/', '3', '410106', 'SJQ', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1662', '惠济区', '惠济', '999', '6', '', '1655', '/0/1654/1655/', '3', '410108', 'IJQ', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1663', '中牟县', '中牟', '999', '6', '', '1655', '/0/1654/1655/', '3', '410122', 'ZMX', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1664', '巩义市', '巩义', '999', '6', '', '1655', '/0/1654/1655/', '3', '410181', 'GYS', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1665', '荥阳市', '荥阳', '999', '6', '', '1655', '/0/1654/1655/', '3', '410182', 'YS', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1666', '新密市', '新密', '999', '6', '', '1655', '/0/1654/1655/', '3', '410183', 'XMS', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1667', '新郑市', '新郑', '999', '6', '', '1655', '/0/1654/1655/', '3', '410184', 'XZS', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1668', '登封市', '登封', '999', '6', '', '1655', '/0/1654/1655/', '3', '410185', 'DFS', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1669', '开封市', '开封', '999', '6', '', '1654', '/0/1654/', '2', '410200', 'KFS', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1671', '龙亭区', '龙亭', '999', '6', '', '1669', '/0/1654/1669/', '3', '410202', 'LTQ', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1672', '顺河回族区', '顺河', '999', '6', '', '1669', '/0/1654/1669/', '3', '410203', 'SIIZQ', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1673', '鼓楼区', '鼓楼区', '999', '9', '', '1669', '/0/1654/1669/', '3', '410204', 'GLQ', '1', '88', '2017-03-09 11:54:01', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1674', '禹王台区', '禹王台', '999', '9', '', '1669', '/0/1654/1669/', '3', '410205', 'YWTQ', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1675', '金明区', '金明', '999', '6', '', '1669', '/0/1654/1669/', '3', '410211', 'JMQ', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1676', '杞县', '杞县', '999', '6', '', '1669', '/0/1654/1669/', '3', '410221', 'X', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1677', '通许县', '通许', '999', '6', '', '1669', '/0/1654/1669/', '3', '410222', 'TXX', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1678', '尉氏县', '尉氏', '999', '6', '', '1669', '/0/1654/1669/', '3', '410223', 'SX', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1679', '开封县', '开封县', '999', '9', '', '1669', '/0/1654/1669/', '3', '410224', 'KFX', '1', '88', '2017-03-09 11:54:01', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1680', '兰考县', '兰考', '999', '6', '', '1669', '/0/1654/1669/', '3', '410225', 'LKX', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1681', '洛阳市', '洛阳', '999', '6', '', '1654', '/0/1654/', '2', '410300', 'LYS', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1683', '老城区', '老城区', '999', '9', '', '1681', '/0/1654/1681/', '3', '410302', 'LCQ', '1', '1', '2017-03-09 11:54:01', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1684', '西工区', '西工', '999', '6', '', '1681', '/0/1654/1681/', '3', '410303', 'XGQ', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1685', '瀍河回族区', '瀍河', '999', '6', '', '1681', '/0/1654/1681/', '3', '410304', 'CHHZQ', '1', '1', '2017-03-09 11:54:01', '1', '2017-03-09 11:54:01');
INSERT INTO `god_area` VALUES ('1686', '涧西区', '涧西区', '999', '6', '', '1681', '/0/1654/1681/', '3', '410305', 'JXQ', '1', '1', '2017-03-09 11:54:01', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('1687', '吉利区', '吉利', '999', '6', '', '1681', '/0/1654/1681/', '3', '410306', 'JLQ', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1688', '洛龙区', '洛龙', '999', '6', '', '1681', '/0/1654/1681/', '3', '410311', 'LLQ', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1689', '孟津县', '孟津', '999', '6', '', '1681', '/0/1654/1681/', '3', '410322', 'MJX', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1690', '新安县', '新安', '999', '6', '', '1681', '/0/1654/1681/', '3', '410323', 'XAX', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1691', '栾川县', '栾川', '999', '6', '', '1681', '/0/1654/1681/', '3', '410324', 'CX', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1692', '嵩县', '嵩县', '999', '6', '', '1681', '/0/1654/1681/', '3', '410325', 'X', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1693', '汝阳县', '汝阳', '999', '6', '', '1681', '/0/1654/1681/', '3', '410326', 'RYX', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1694', '宜阳县', '宜阳', '999', '6', '', '1681', '/0/1654/1681/', '3', '410327', 'YYX', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1695', '洛宁县', '洛宁', '999', '6', '', '1681', '/0/1654/1681/', '3', '410328', 'LNX', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1696', '伊川县', '伊川', '999', '6', '', '1681', '/0/1654/1681/', '3', '410329', 'YCX', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1697', '偃师市', '偃师', '999', '6', '', '1681', '/0/1654/1681/', '3', '410381', 'SS', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1698', '平顶山市', '平顶山', '999', '9', '', '1654', '/0/1654/', '2', '410400', 'PDSS', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1700', '新华区', '新华区', '999', '9', '', '1698', '/0/1654/1698/', '3', '410402', 'XIQ', '1', '88', '2017-03-09 11:54:02', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1701', '卫东区', '卫东区', '999', '6', '', '1698', '/0/1654/1698/', '3', '410403', 'WDQ', '1', '1', '2017-03-09 11:54:02', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('1702', '石龙区', '石龙', '999', '6', '', '1698', '/0/1654/1698/', '3', '410404', 'SLQ', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1703', '湛河区', '湛河', '999', '6', '', '1698', '/0/1654/1698/', '3', '410411', 'ZIQ', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1704', '宝丰县', '宝丰', '999', '6', '', '1698', '/0/1654/1698/', '3', '410421', 'BFX', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1705', '叶县', '叶县', '999', '6', '', '1698', '/0/1654/1698/', '3', '410422', 'YX', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1706', '鲁山县', '鲁山', '999', '6', '', '1698', '/0/1654/1698/', '3', '410423', 'LSX', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1707', '郏县', '郏县', '999', '6', '', '1698', '/0/1654/1698/', '3', '410425', 'X', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1708', '舞钢市', '舞钢', '999', '6', '', '1698', '/0/1654/1698/', '3', '410481', 'WGS', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1709', '汝州市', '汝州', '999', '6', '', '1698', '/0/1654/1698/', '3', '410482', 'RZS', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1710', '安阳市', '安阳', '999', '6', '', '1654', '/0/1654/', '2', '410500', 'AYS', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1712', '文峰区', '文峰', '999', '6', '', '1710', '/0/1654/1710/', '3', '410502', 'WFQ', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1713', '北关区', '北关', '999', '6', '', '1710', '/0/1654/1710/', '3', '410503', 'BGQ', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1714', '殷都区', '殷都', '999', '6', '', '1710', '/0/1654/1710/', '3', '410505', 'YDQ', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1715', '龙安区', '龙安', '999', '6', '', '1710', '/0/1654/1710/', '3', '410506', 'LAQ', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1716', '安阳县', '安阳县', '999', '9', '', '1710', '/0/1654/1710/', '3', '410522', 'AYX', '1', '1', '2017-03-09 11:54:02', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1717', '汤阴县', '汤阴', '999', '6', '', '1710', '/0/1654/1710/', '3', '410523', 'TYX', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1718', '滑县', '滑县', '999', '6', '', '1710', '/0/1654/1710/', '3', '410526', 'IX', '1', '1', '2017-03-09 11:54:02', '1', '2017-03-09 11:54:02');
INSERT INTO `god_area` VALUES ('1719', '内黄县', '内黄', '999', '6', '', '1710', '/0/1654/1710/', '3', '410527', 'NIX', '1', '1', '2017-03-09 11:54:03', '1', '2017-03-09 11:54:03');
INSERT INTO `god_area` VALUES ('1720', '林州市', '林州', '999', '6', '', '1710', '/0/1654/1710/', '3', '410581', 'LZS', '1', '1', '2017-03-09 11:54:03', '1', '2017-03-09 11:54:03');
INSERT INTO `god_area` VALUES ('1721', '鹤壁市', '鹤壁', '999', '6', '', '1654', '/0/1654/', '2', '410600', 'IBS', '1', '1', '2017-03-09 11:54:03', '1', '2017-03-09 11:54:03');
INSERT INTO `god_area` VALUES ('1723', '鹤山区', '鹤山', '999', '6', '', '1721', '/0/1654/1721/', '3', '410602', 'ISQ', '1', '1', '2017-03-09 11:54:03', '1', '2017-03-09 11:54:03');
INSERT INTO `god_area` VALUES ('1724', '山城区', '山城区', '999', '9', '', '1721', '/0/1654/1721/', '3', '410603', 'SCQ', '1', '1', '2017-03-09 11:54:03', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1725', '淇滨区', '淇滨', '999', '6', '', '1721', '/0/1654/1721/', '3', '410611', 'BQ', '1', '1', '2017-03-09 11:54:03', '1', '2017-03-09 11:54:03');
INSERT INTO `god_area` VALUES ('1726', '浚县', '浚县', '999', '6', '', '1721', '/0/1654/1721/', '3', '410621', 'JX', '1', '1', '2017-03-09 11:54:03', '1', '2017-03-09 11:54:03');
INSERT INTO `god_area` VALUES ('1727', '淇县', '淇县', '999', '6', '', '1721', '/0/1654/1721/', '3', '410622', 'X', '1', '1', '2017-03-09 11:54:03', '1', '2017-03-09 11:54:03');
INSERT INTO `god_area` VALUES ('1728', '新乡市', '新乡', '999', '6', '', '1654', '/0/1654/', '2', '410700', 'XXS', '1', '1', '2017-03-09 11:54:03', '1', '2017-03-09 11:54:03');
INSERT INTO `god_area` VALUES ('1730', '红旗区', '红旗', '999', '6', '', '1728', '/0/1654/1728/', '3', '410702', 'IQQ', '1', '1', '2017-03-09 11:54:03', '1', '2017-03-09 11:54:03');
INSERT INTO `god_area` VALUES ('1731', '卫滨区', '卫滨', '999', '6', '', '1728', '/0/1654/1728/', '3', '410703', 'WBQ', '1', '1', '2017-03-09 11:54:03', '1', '2017-03-09 11:54:03');
INSERT INTO `god_area` VALUES ('1732', '凤泉区', '凤泉', '999', '6', '', '1728', '/0/1654/1728/', '3', '410704', 'FQQ', '1', '1', '2017-03-09 11:54:03', '1', '2017-03-09 11:54:03');
INSERT INTO `god_area` VALUES ('1733', '牧野区', '牧野', '999', '6', '', '1728', '/0/1654/1728/', '3', '410711', 'MYQ', '1', '1', '2017-03-09 11:54:03', '1', '2017-03-09 11:54:03');
INSERT INTO `god_area` VALUES ('1734', '新乡县', '新乡县', '999', '9', '', '1728', '/0/1654/1728/', '3', '410721', 'XXX', '1', '1', '2017-03-09 11:54:03', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1735', '获嘉县', '获嘉', '999', '6', '', '1728', '/0/1654/1728/', '3', '410724', 'IJX', '1', '1', '2017-03-09 11:54:03', '1', '2017-03-09 11:54:03');
INSERT INTO `god_area` VALUES ('1736', '原阳县', '原阳', '999', '6', '', '1728', '/0/1654/1728/', '3', '410725', 'YYX', '1', '1', '2017-03-09 11:54:03', '1', '2017-03-09 11:54:03');
INSERT INTO `god_area` VALUES ('1737', '延津县', '延津', '999', '6', '', '1728', '/0/1654/1728/', '3', '410726', 'YJX', '1', '1', '2017-03-09 11:54:03', '1', '2017-03-09 11:54:03');
INSERT INTO `god_area` VALUES ('1738', '封丘县', '封丘', '999', '6', '', '1728', '/0/1654/1728/', '3', '410727', 'FQX', '1', '1', '2017-03-09 11:54:03', '1', '2017-03-09 11:54:03');
INSERT INTO `god_area` VALUES ('1739', '长垣县', '长垣', '999', '6', '', '1728', '/0/1654/1728/', '3', '410728', 'CYX', '1', '1', '2017-03-09 11:54:03', '1', '2017-03-09 11:54:03');
INSERT INTO `god_area` VALUES ('1740', '卫辉市', '卫辉', '999', '6', '', '1728', '/0/1654/1728/', '3', '410781', 'WIS', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1741', '辉县市', '辉县市', '999', '9', '', '1728', '/0/1654/1728/', '3', '410782', 'IXS', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1742', '焦作市', '焦作', '999', '6', '', '1654', '/0/1654/', '2', '410800', 'JZS', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1744', '解放区', '解放区', '999', '9', '', '1742', '/0/1654/1742/', '3', '410802', 'JFQ', '1', '1', '2017-03-09 11:54:04', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1745', '中站区', '中站', '999', '6', '', '1742', '/0/1654/1742/', '3', '410803', 'ZZQ', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1746', '马村区', '马村', '999', '6', '', '1742', '/0/1654/1742/', '3', '410804', 'MCQ', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1747', '山阳区', '山阳', '999', '6', '', '1742', '/0/1654/1742/', '3', '410811', 'SYQ', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1748', '修武县', '修武', '999', '6', '', '1742', '/0/1654/1742/', '3', '410821', 'XWX', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1749', '博爱县', '博爱', '999', '6', '', '1742', '/0/1654/1742/', '3', '410822', 'BAX', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1750', '武陟县', '武陟', '999', '6', '', '1742', '/0/1654/1742/', '3', '410823', 'WX', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1751', '温县', '温县', '999', '6', '', '1742', '/0/1654/1742/', '3', '410825', 'WX', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1752', '沁阳市', '沁阳', '999', '6', '', '1742', '/0/1654/1742/', '3', '410882', 'QYS', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1753', '孟州市', '孟州', '999', '6', '', '1742', '/0/1654/1742/', '3', '410883', 'MZS', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1754', '濮阳市', '濮阳', '999', '6', '', '1654', '/0/1654/', '2', '410900', 'YS', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1756', '华龙区', '华龙', '999', '6', '', '1754', '/0/1654/1754/', '3', '410902', 'ILQ', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1757', '清丰县', '清丰', '999', '6', '', '1754', '/0/1654/1754/', '3', '410922', 'QFX', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1758', '南乐县', '南乐', '999', '6', '', '1754', '/0/1654/1754/', '3', '410923', 'NLX', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1759', '范县', '范县', '999', '6', '', '1754', '/0/1654/1754/', '3', '410926', 'FX', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1760', '台前县', '台前', '999', '6', '', '1754', '/0/1654/1754/', '3', '410927', 'TQX', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1761', '濮阳县', '濮阳县', '999', '9', '', '1754', '/0/1654/1754/', '3', '410928', 'YX', '1', '1', '2017-03-09 11:54:04', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1762', '许昌市', '许昌', '999', '6', '', '1654', '/0/1654/', '2', '411000', 'XCS', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1764', '魏都区', '魏都', '999', '6', '', '1762', '/0/1654/1762/', '3', '411002', 'DQ', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1765', '建安区', '建安', '999', '6', '', '1762', '/0/1654/1762/', '3', '411023', 'XCX', '1', '1', '2017-03-09 11:54:04', '16', '2018-06-14 10:41:29');
INSERT INTO `god_area` VALUES ('1766', '鄢陵县', '鄢陵', '999', '6', '', '1762', '/0/1654/1762/', '3', '411024', 'LX', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1767', '襄城县', '襄城', '999', '6', '', '1762', '/0/1654/1762/', '3', '411025', 'XCX', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1768', '禹州市', '禹州', '999', '6', '', '1762', '/0/1654/1762/', '3', '411081', 'YZS', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1769', '长葛市', '长葛', '999', '6', '', '1762', '/0/1654/1762/', '3', '411082', 'CGS', '1', '1', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1770', '漯河市', '漯河', '999', '6', '', '1762', '/0/1654/1762/', '3', '411100', 'IS', '0', '88', '2017-03-09 11:54:04', '1', '2017-03-09 11:54:04');
INSERT INTO `god_area` VALUES ('1772', '源汇区', '源汇', '999', '6', '', '1762', '/0/1654/1762/', '3', '411102', 'YIQ', '0', '88', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1773', '郾城区', '郾城区', '999', '9', '', '1762', '/0/1654/1762/', '3', '411103', 'CQ', '0', '88', '2017-03-09 11:54:05', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1774', '召陵区', '召陵', '999', '6', '', '1762', '/0/1654/1762/', '3', '411104', 'ZLQ', '0', '88', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1775', '舞阳县', '舞阳', '999', '6', '', '1762', '/0/1654/1762/', '3', '411121', 'WYX', '0', '88', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1776', '临颍县', '临颍', '999', '6', '', '1762', '/0/1654/1762/', '3', '411122', 'LX', '0', '88', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1777', '三门峡市', '三门峡', '999', '9', '', '1654', '/0/1654/', '2', '411200', 'SMXS', '1', '1', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1779', '湖滨区', '湖滨', '999', '6', '', '1777', '/0/1654/1777/', '3', '411202', 'IBQ', '1', '1', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1780', '渑池县', '渑池', '999', '6', '', '1777', '/0/1654/1777/', '3', '411221', 'CX', '1', '1', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1781', '陕州区', '陕州', '999', '6', '', '1777', '/0/1654/1777/', '3', '411222', 'SZQ', '1', '1', '2017-03-09 11:54:05', '6', '2017-08-23 11:57:11');
INSERT INTO `god_area` VALUES ('1782', '卢氏县', '卢氏', '999', '6', '', '1777', '/0/1654/1777/', '3', '411224', 'LSX', '1', '1', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1783', '义马市', '义马', '999', '6', '', '1777', '/0/1654/1777/', '3', '411281', 'YMS', '1', '1', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1784', '灵宝市', '灵宝', '999', '6', '', '1777', '/0/1654/1777/', '3', '411282', 'LBS', '1', '1', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1785', '南阳市', '南阳', '999', '6', '', '1654', '/0/1654/', '2', '411300', 'NYS', '1', '1', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1787', '宛城区', '宛城区', '999', '9', '', '1785', '/0/1654/1785/', '3', '411302', 'WCQ', '1', '1', '2017-03-09 11:54:05', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1788', '卧龙区', '卧龙', '999', '6', '', '1785', '/0/1654/1785/', '3', '411303', 'WLQ', '1', '1', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1789', '南召县', '南召', '999', '6', '', '1785', '/0/1654/1785/', '3', '411321', 'NZX', '1', '1', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1790', '方城县', '方城', '999', '6', '', '1785', '/0/1654/1785/', '3', '411322', 'FCX', '1', '1', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1791', '西峡县', '西峡', '999', '6', '', '1785', '/0/1654/1785/', '3', '411323', 'XXX', '1', '1', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1792', '镇平县', '镇平', '999', '6', '', '1785', '/0/1654/1785/', '3', '411324', 'ZPX', '1', '1', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1793', '内乡县', '内乡', '999', '6', '', '1785', '/0/1654/1785/', '3', '411325', 'NXX', '1', '1', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1794', '淅川县', '淅川', '999', '6', '', '1785', '/0/1654/1785/', '3', '411326', 'CX', '1', '1', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1795', '社旗县', '社旗', '999', '6', '', '1785', '/0/1654/1785/', '3', '411327', 'SQX', '1', '1', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1796', '唐河县', '唐河', '999', '6', '', '1785', '/0/1654/1785/', '3', '411328', 'TIX', '1', '1', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1797', '新野县', '新野', '999', '6', '', '1785', '/0/1654/1785/', '3', '411329', 'XYX', '1', '1', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1798', '桐柏县', '桐柏', '999', '6', '', '1785', '/0/1654/1785/', '3', '411330', 'TBX', '1', '1', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1799', '邓州市', '邓州', '999', '6', '', '1785', '/0/1654/1785/', '3', '411381', 'DZS', '1', '1', '2017-03-09 11:54:05', '1', '2017-03-09 11:54:05');
INSERT INTO `god_area` VALUES ('1800', '商丘市', '商丘', '999', '6', '', '1654', '/0/1654/', '2', '411400', 'SQS', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1802', '梁园区', '梁园', '999', '6', '', '1800', '/0/1654/1800/', '3', '411402', 'LYQ', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1803', '睢阳区', '睢阳', '999', '6', '', '1800', '/0/1654/1800/', '3', '411403', 'YQ', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1804', '民权县', '民权', '999', '6', '', '1800', '/0/1654/1800/', '3', '411421', 'MQX', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1805', '睢县', '睢县', '999', '6', '', '1800', '/0/1654/1800/', '3', '411422', 'X', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1806', '宁陵县', '宁陵', '999', '6', '', '1800', '/0/1654/1800/', '3', '411423', 'NLX', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1807', '柘城县', '柘城', '999', '6', '', '1800', '/0/1654/1800/', '3', '411424', 'CX', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1808', '虞城县', '虞城', '999', '6', '', '1800', '/0/1654/1800/', '3', '411425', 'YCX', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1809', '夏邑县', '夏邑', '999', '6', '', '1800', '/0/1654/1800/', '3', '411426', 'XYX', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1810', '永城市', '永城', '999', '6', '', '1800', '/0/1654/1800/', '3', '411481', 'YCS', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1811', '信阳市', '信阳', '999', '6', '', '1654', '/0/1654/', '2', '411500', 'XYS', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1813', '浉河区', '浉河', '999', '6', '', '1811', '/0/1654/1811/', '3', '411502', 'SHQ', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1814', '平桥区', '平桥', '999', '6', '', '1811', '/0/1654/1811/', '3', '411503', 'PQQ', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1815', '罗山县', '罗山', '999', '6', '', '1811', '/0/1654/1811/', '3', '411521', 'LSX', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1816', '光山县', '光山', '999', '6', '', '1811', '/0/1654/1811/', '3', '411522', 'GSX', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1817', '新县', '新县', '999', '6', '', '1811', '/0/1654/1811/', '3', '411523', 'XX', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1818', '商城县', '商城', '999', '6', '', '1811', '/0/1654/1811/', '3', '411524', 'SCX', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1819', '固始县', '固始', '999', '6', '', '1811', '/0/1654/1811/', '3', '411525', 'GSX', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1820', '潢川县', '潢川', '999', '6', '', '1811', '/0/1654/1811/', '3', '411526', 'CX', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1821', '淮滨县', '淮滨', '999', '6', '', '1811', '/0/1654/1811/', '3', '411527', 'IBX', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1822', '息县', '息县', '999', '6', '', '1811', '/0/1654/1811/', '3', '411528', 'XX', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1823', '周口市', '周口', '999', '6', '', '1654', '/0/1654/', '2', '411600', 'ZKS', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1825', '川汇区', '川汇', '999', '6', '', '1823', '/0/1654/1823/', '3', '411602', 'CIQ', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1826', '扶沟县', '扶沟', '999', '6', '', '1823', '/0/1654/1823/', '3', '411621', 'FGX', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1827', '西华县', '西华', '999', '6', '', '1823', '/0/1654/1823/', '3', '411622', 'XIX', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1828', '商水县', '商水', '999', '6', '', '1823', '/0/1654/1823/', '3', '411623', 'SSX', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1829', '沈丘县', '沈丘', '999', '6', '', '1823', '/0/1654/1823/', '3', '411624', 'SQX', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1830', '郸城县', '郸城', '999', '6', '', '1823', '/0/1654/1823/', '3', '411625', 'DCX', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1831', '淮阳县', '淮阳', '999', '6', '', '1823', '/0/1654/1823/', '3', '411626', 'IYX', '1', '1', '2017-03-09 11:54:06', '1', '2017-03-09 11:54:06');
INSERT INTO `god_area` VALUES ('1832', '太康县', '太康', '999', '6', '', '1823', '/0/1654/1823/', '3', '411627', 'TKX', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1833', '鹿邑县', '鹿邑', '999', '6', '', '1823', '/0/1654/1823/', '3', '411628', 'LYX', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1834', '项城市', '项城', '999', '6', '', '1823', '/0/1654/1823/', '3', '411681', 'XCS', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1835', '驻马店市', '驻马店', '999', '9', '', '1654', '/0/1654/', '2', '411700', 'ZMDS', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1837', '驿城区', '驿城区', '999', '9', '', '1835', '/0/1654/1835/', '3', '411702', 'CQ', '1', '1', '2017-03-09 11:54:07', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1838', '西平县', '西平', '999', '6', '', '1835', '/0/1654/1835/', '3', '411721', 'XPX', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1839', '上蔡县', '上蔡', '999', '6', '', '1835', '/0/1654/1835/', '3', '411722', 'SCX', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1840', '平舆县', '平舆', '999', '6', '', '1835', '/0/1654/1835/', '3', '411723', 'PYX', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1841', '正阳县', '正阳', '999', '6', '', '1835', '/0/1654/1835/', '3', '411724', 'ZYX', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1842', '确山县', '确山', '999', '6', '', '1835', '/0/1654/1835/', '3', '411725', 'QSX', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1843', '泌阳县', '泌阳', '999', '6', '', '1835', '/0/1654/1835/', '3', '411726', 'MYX', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1844', '汝南县', '汝南', '999', '6', '', '1835', '/0/1654/1835/', '3', '411727', 'RNX', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1845', '遂平县', '遂平', '999', '6', '', '1835', '/0/1654/1835/', '3', '411728', 'SPX', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1846', '新蔡县', '新蔡', '999', '6', '', '1835', '/0/1654/1835/', '3', '411729', 'XCX', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1848', '济源市', '济源', '999', '6', '', '1654', '/0/1654/', '2', '419001', 'JYS', '1', '1', '2017-03-09 11:54:07', '6', '2017-08-22 16:32:11');
INSERT INTO `god_area` VALUES ('1849', '湖北省', '湖北', '999', '6', '', '0', '/0/', '1', '420000', 'IBS', '1', '1', '2017-03-09 11:54:07', '1', '2017-06-28 09:51:57');
INSERT INTO `god_area` VALUES ('1850', '武汉市', '武汉', '999', '6', '', '1849', '/0/1849/', '2', '420100', 'WIS', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1852', '江岸区', '江岸', '999', '6', '', '1850', '/0/1849/1850/', '3', '420102', 'JAQ', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1853', '江汉区', '江汉', '999', '6', '', '1850', '/0/1849/1850/', '3', '420103', 'JIQ', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1854', '硚口区', '硚口', '999', '6', '', '1850', '/0/1849/1850/', '3', '420104', 'QKQ', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1855', '汉阳区', '汉阳', '999', '6', '', '1850', '/0/1849/1850/', '3', '420105', 'IYQ', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1856', '武昌区', '武昌', '999', '6', '', '1850', '/0/1849/1850/', '3', '420106', 'WCQ', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1857', '青山区', '青山', '999', '6', '', '1850', '/0/1849/1850/', '3', '420107', 'QSQ', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1858', '洪山区', '洪山区', '999', '9', '', '1850', '/0/1849/1850/', '3', '420111', 'ISQ', '1', '1', '2017-03-09 11:54:07', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1859', '东西湖区', '东西湖', '999', '9', '', '1850', '/0/1849/1850/', '3', '420112', 'DXIQ', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1860', '汉南区', '汉南区', '999', '6', '', '1850', '/0/1849/1850/', '3', '420113', 'INQ', '1', '1', '2017-03-09 11:54:07', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('1861', '蔡甸区', '蔡甸', '999', '6', '', '1850', '/0/1849/1850/', '3', '420114', 'CDQ', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1862', '江夏区', '江夏', '999', '6', '', '1850', '/0/1849/1850/', '3', '420115', 'JXQ', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1863', '黄陂区', '黄陂', '999', '6', '', '1850', '/0/1849/1850/', '3', '420116', 'IQ', '1', '1', '2017-03-09 11:54:07', '1', '2017-03-09 11:54:07');
INSERT INTO `god_area` VALUES ('1864', '新洲区', '新洲', '999', '6', '', '1850', '/0/1849/1850/', '3', '420117', 'XZQ', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1865', '黄石市', '黄石', '999', '6', '', '1849', '/0/1849/', '2', '420200', 'ISS', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1867', '黄石港区', '黄石港', '999', '9', '', '1865', '/0/1849/1865/', '3', '420202', 'ISGQ', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1868', '西塞山区', '西塞山', '999', '9', '', '1865', '/0/1849/1865/', '3', '420203', 'XSSQ', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1869', '下陆区', '下陆', '999', '6', '', '1865', '/0/1849/1865/', '3', '420204', 'XLQ', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1870', '铁山区', '铁山', '999', '6', '', '1865', '/0/1849/1865/', '3', '420205', 'TSQ', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1871', '阳新县', '阳新', '999', '6', '', '1865', '/0/1849/1865/', '3', '420222', 'YXX', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1872', '大冶市', '大冶', '999', '6', '', '1865', '/0/1849/1865/', '3', '420281', 'DYS', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1873', '十堰市', '十堰', '999', '6', '', '1849', '/0/1849/', '2', '420300', 'SYS', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1875', '茅箭区', '茅箭', '999', '6', '', '1873', '/0/1849/1873/', '3', '420302', 'JQ', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1876', '张湾区', '张湾', '999', '6', '', '1873', '/0/1849/1873/', '3', '420303', 'ZWQ', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1877', '郧阳区', '郧阳', '999', '6', '', '1873', '/0/1849/1873/', '3', '420304', 'YYQ', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1878', '郧西县', '郧西', '999', '6', '', '1873', '/0/1849/1873/', '3', '420322', 'YXX', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1879', '竹山县', '竹山', '999', '6', '', '1873', '/0/1849/1873/', '3', '420323', 'ZSX', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1880', '竹溪县', '竹溪', '999', '6', '', '1873', '/0/1849/1873/', '3', '420324', 'ZXX', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1881', '房县', '房县', '999', '6', '', '1873', '/0/1849/1873/', '3', '420325', 'FX', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1882', '丹江口市', '丹江口', '999', '9', '', '1873', '/0/1849/1873/', '3', '420381', 'DJKS', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1883', '宜昌市', '宜昌', '999', '6', '', '1849', '/0/1849/', '2', '420500', 'YCS', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1885', '西陵区', '西陵', '999', '6', '', '1883', '/0/1849/1883/', '3', '420502', 'XLQ', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1886', '伍家岗区', '伍家岗', '999', '9', '', '1883', '/0/1849/1883/', '3', '420503', 'WJGQ', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1887', '点军区', '点军', '999', '6', '', '1883', '/0/1849/1883/', '3', '420504', 'DJQ', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1888', '猇亭区', '猇亭', '999', '6', '', '1883', '/0/1849/1883/', '3', '420505', 'XTQ', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1889', '夷陵区', '夷陵', '999', '6', '', '1883', '/0/1849/1883/', '3', '420506', 'YTQ', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1890', '远安县', '远安', '999', '6', '', '1883', '/0/1849/1883/', '3', '420525', 'YAX', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1891', '兴山县', '兴山', '999', '6', '', '1883', '/0/1849/1883/', '3', '420526', 'XSX', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1892', '秭归县', '秭归', '999', '6', '', '1883', '/0/1849/1883/', '3', '420527', 'GX', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1893', '长阳土家族自治县', '长阳', '999', '6', '', '1883', '/0/1849/1883/', '3', '420528', 'CYTJZZZX', '1', '1', '2017-03-09 11:54:08', '1', '2017-03-09 11:54:08');
INSERT INTO `god_area` VALUES ('1894', '五峰土家族自治县', '五峰', '999', '6', '', '1883', '/0/1849/1883/', '3', '420529', 'WFTJZZZX', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1895', '宜都市', '宜都', '999', '6', '', '1883', '/0/1849/1883/', '3', '420581', 'YDS', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1896', '当阳市', '当阳', '999', '6', '', '1883', '/0/1849/1883/', '3', '420582', 'DYS', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1897', '枝江市', '枝江', '999', '6', '', '1883', '/0/1849/1883/', '3', '420583', 'ZJS', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1898', '襄阳市', '襄阳', '999', '6', '', '1849', '/0/1849/', '2', '420600', 'XYS', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1900', '襄城区', '襄城区', '999', '9', '', '1898', '/0/1849/1898/', '3', '420602', 'XCQ', '1', '1', '2017-03-09 11:54:09', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1901', '樊城区', '樊城区', '999', '9', '', '1898', '/0/1849/1898/', '3', '420606', 'FCQ', '1', '1', '2017-03-09 11:54:09', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1902', '襄州区', '襄州', '999', '6', '', '1898', '/0/1849/1898/', '3', '420607', 'XZQ', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1903', '南漳县', '南漳', '999', '6', '', '1898', '/0/1849/1898/', '3', '420624', 'NZX', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1904', '谷城县', '谷城', '999', '6', '', '1898', '/0/1849/1898/', '3', '420625', 'GCX', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1905', '保康县', '保康', '999', '6', '', '1898', '/0/1849/1898/', '3', '420626', 'BKX', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1906', '老河口市', '老河口', '999', '9', '', '1898', '/0/1849/1898/', '3', '420682', 'LIKS', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1907', '枣阳市', '枣阳', '999', '6', '', '1898', '/0/1849/1898/', '3', '420683', 'ZYS', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1908', '宜城市', '宜城', '999', '6', '', '1898', '/0/1849/1898/', '3', '420684', 'YCS', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1909', '鄂州市', '鄂州', '999', '6', '', '1849', '/0/1849/', '2', '420700', 'EZS', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1911', '梁子湖区', '梁子湖', '999', '9', '', '1909', '/0/1849/1909/', '3', '420702', 'LZIQ', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1912', '华容区', '华容', '999', '6', '', '1909', '/0/1849/1909/', '3', '420703', 'IRQ', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1913', '鄂城区', '鄂城区', '999', '9', '', '1909', '/0/1849/1909/', '3', '420704', 'ECQ', '1', '1', '2017-03-09 11:54:09', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1914', '荆门市', '荆门', '999', '6', '', '1849', '/0/1849/', '2', '420800', 'JMS', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1916', '东宝区', '东宝', '999', '6', '', '1914', '/0/1849/1914/', '3', '420802', 'DBQ', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1917', '掇刀区', '掇刀', '999', '6', '', '1914', '/0/1849/1914/', '3', '420804', 'DDQ', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1918', '京山市', '京山', '999', '6', '', '1914', '/0/1849/1914/', '3', '420821', 'JSX', '1', '1', '2017-03-09 11:54:09', '16', '2018-08-30 14:35:36');
INSERT INTO `god_area` VALUES ('1919', '沙洋县', '沙洋', '999', '6', '', '1914', '/0/1849/1914/', '3', '420822', 'SYX', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1920', '钟祥市', '钟祥', '999', '6', '', '1914', '/0/1849/1914/', '3', '420881', 'ZXS', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1921', '孝感市', '孝感', '999', '6', '', '1849', '/0/1849/', '2', '420900', 'GS', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1923', '孝南区', '孝南区', '999', '6', '', '1921', '/0/1849/1921/', '3', '420902', 'NQ', '1', '1', '2017-03-09 11:54:09', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('1924', '孝昌县', '孝昌', '999', '6', '', '1921', '/0/1849/1921/', '3', '420921', 'CX', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1925', '大悟县', '大悟', '999', '6', '', '1921', '/0/1849/1921/', '3', '420922', 'DWX', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1926', '云梦县', '云梦', '999', '6', '', '1921', '/0/1849/1921/', '3', '420923', 'YMX', '1', '1', '2017-03-09 11:54:09', '1', '2017-03-09 11:54:09');
INSERT INTO `god_area` VALUES ('1927', '应城市', '应城', '999', '6', '', '1921', '/0/1849/1921/', '3', '420981', 'YCS', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1928', '安陆市', '安陆', '999', '6', '', '1921', '/0/1849/1921/', '3', '420982', 'ALS', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1929', '汉川市', '汉川', '999', '6', '', '1921', '/0/1849/1921/', '3', '420984', 'ICS', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1930', '荆州市', '荆州', '999', '6', '', '1849', '/0/1849/', '2', '421000', 'JZS', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1932', '沙市区', '沙市区', '999', '6', '', '1930', '/0/1849/1930/', '3', '421002', 'SSQ', '1', '1', '2017-03-09 11:54:10', '1', '2018-12-05 23:13:03');
INSERT INTO `god_area` VALUES ('1933', '荆州区', '荆州区', '999', '9', '', '1930', '/0/1849/1930/', '3', '421003', 'JZQ', '1', '88', '2017-03-09 11:54:10', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('1934', '公安县', '公安县', '999', '9', '', '1930', '/0/1849/1930/', '3', '421022', 'GAX', '1', '1', '2017-03-09 11:54:10', '1', '2017-08-18 09:07:59');
INSERT INTO `god_area` VALUES ('1935', '监利县', '监利', '999', '6', '', '1930', '/0/1849/1930/', '3', '421023', 'JLX', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1936', '江陵县', '江陵', '999', '6', '', '1930', '/0/1849/1930/', '3', '421024', 'JLX', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1937', '石首市', '石首', '999', '6', '', '1930', '/0/1849/1930/', '3', '421081', 'SSS', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1938', '洪湖市', '洪湖', '999', '6', '', '1930', '/0/1849/1930/', '3', '421083', 'IIS', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1939', '松滋市', '松滋', '999', '6', '', '1930', '/0/1849/1930/', '3', '421087', 'SZS', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1940', '黄冈市', '黄冈', '999', '6', '', '1849', '/0/1849/', '2', '421100', 'IGS', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1942', '黄州区', '黄州', '999', '6', '', '1940', '/0/1849/1940/', '3', '421102', 'IZQ', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1943', '团风县', '团风', '999', '6', '', '1940', '/0/1849/1940/', '3', '421121', 'TFX', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1944', '红安县', '红安', '999', '6', '', '1940', '/0/1849/1940/', '3', '421122', 'IAX', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1945', '罗田县', '罗田', '999', '6', '', '1940', '/0/1849/1940/', '3', '421123', 'LTX', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1946', '英山县', '英山', '999', '6', '', '1940', '/0/1849/1940/', '3', '421124', 'YSX', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1947', '浠水县', '浠水', '999', '6', '', '1940', '/0/1849/1940/', '3', '421125', 'SX', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1948', '蕲春县', '蕲春', '999', '6', '', '1940', '/0/1849/1940/', '3', '421126', 'CX', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1949', '黄梅县', '黄梅', '999', '6', '', '1940', '/0/1849/1940/', '3', '421127', 'IX', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1950', '麻城市', '麻城', '999', '6', '', '1940', '/0/1849/1940/', '3', '421181', 'MCS', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1951', '武穴市', '武穴', '999', '6', '', '1940', '/0/1849/1940/', '3', '421182', 'WXS', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1952', '咸宁市', '咸宁', '999', '6', '', '1849', '/0/1849/', '2', '421200', 'XNS', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1954', '咸安区', '咸安', '999', '6', '', '1952', '/0/1849/1952/', '3', '421202', 'XAQ', '1', '1', '2017-03-09 11:54:10', '1', '2017-03-09 11:54:10');
INSERT INTO `god_area` VALUES ('1955', '嘉鱼县', '嘉鱼', '999', '6', '', '1952', '/0/1849/1952/', '3', '421221', 'JYX', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1956', '通城县', '通城', '999', '6', '', '1952', '/0/1849/1952/', '3', '421222', 'TCX', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1957', '崇阳县', '崇阳', '999', '6', '', '1952', '/0/1849/1952/', '3', '421223', 'CYX', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1958', '通山县', '通山', '999', '6', '', '1952', '/0/1849/1952/', '3', '421224', 'TSX', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1959', '赤壁市', '赤壁', '999', '6', '', '1952', '/0/1849/1952/', '3', '421281', 'CBS', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1960', '随州市', '随州', '999', '6', '', '1849', '/0/1849/', '2', '421300', 'SZS', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1962', '曾都区', '曾都', '999', '6', '', '1960', '/0/1849/1960/', '3', '421303', 'ZDQ', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1963', '随县', '随县', '999', '6', '', '1960', '/0/1849/1960/', '3', '421321', 'SX', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1964', '广水市', '广水', '999', '6', '', '1960', '/0/1849/1960/', '3', '421381', 'GSS', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1965', '恩施土家族苗族自治州', '恩施州', '999', '9', '', '1849', '/0/1849/', '2', '422800', 'ESTJZMZZZZ', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1966', '恩施市', '恩施市', '999', '9', '', '1965', '/0/1849/1965/', '3', '422801', 'ESS', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1967', '利川市', '利川', '999', '6', '', '1965', '/0/1849/1965/', '3', '422802', 'LCS', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1968', '建始县', '建始', '999', '6', '', '1965', '/0/1849/1965/', '3', '422822', 'JSX', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1969', '巴东县', '巴东', '999', '6', '', '1965', '/0/1849/1965/', '3', '422823', 'BDX', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1970', '宣恩县', '宣恩', '999', '6', '', '1965', '/0/1849/1965/', '3', '422825', 'XEX', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1971', '咸丰县', '咸丰', '999', '6', '', '1965', '/0/1849/1965/', '3', '422826', 'XFX', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1972', '来凤县', '来凤', '999', '6', '', '1965', '/0/1849/1965/', '3', '422827', 'LFX', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1973', '鹤峰县', '鹤峰', '999', '6', '', '1965', '/0/1849/1965/', '3', '422828', 'IFX', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1975', '仙桃市', '仙桃', '999', '6', '', '1849', '/0/1849/', '2', '429004', 'XTS', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1976', '潜江市', '潜江', '999', '6', '', '1849', '/0/1849/', '2', '429005', 'QJS', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1977', '天门市', '天门', '999', '6', '', '1849', '/0/1849/', '2', '429006', 'TMS', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1978', '神农架林区', '神农架', '999', '9', '', '1849', '/0/1849/', '2', '429021', 'SNJLQ', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1979', '湖南省', '湖南', '999', '6', '', '0', '/0/', '1', '430000', 'INS', '1', '1', '2017-03-09 11:54:11', '1', '2017-06-28 09:52:41');
INSERT INTO `god_area` VALUES ('1980', '长沙市', '长沙', '999', '6', '', '1979', '/0/1979/', '2', '430100', 'CSS', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1982', '芙蓉区', '芙蓉', '999', '6', '', '1980', '/0/1979/1980/', '3', '430102', 'RQ', '1', '1', '2017-03-09 11:54:11', '1', '2017-03-09 11:54:11');
INSERT INTO `god_area` VALUES ('1983', '天心区', '天心', '999', '6', '', '1980', '/0/1979/1980/', '3', '430103', 'TXQ', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('1984', '岳麓区', '岳麓', '999', '6', '', '1980', '/0/1979/1980/', '3', '430104', 'YLQ', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('1985', '开福区', '开福', '999', '6', '', '1980', '/0/1979/1980/', '3', '430105', 'KFQ', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('1986', '雨花区', '雨花', '999', '6', '', '1980', '/0/1979/1980/', '3', '430111', 'YIQ', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('1987', '望城区', '望城区', '999', '9', '', '1980', '/0/1979/1980/', '3', '430112', 'WCQ', '1', '1', '2017-03-09 11:54:12', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('1988', '长沙县', '长沙县', '999', '9', '', '1980', '/0/1979/1980/', '3', '430121', 'CSX', '1', '1', '2017-03-09 11:54:12', '1', '2017-08-18 09:08:44');
INSERT INTO `god_area` VALUES ('1989', '宁乡市', '宁乡', '999', '6', '', '1980', '/0/1979/1980/', '3', '430124', 'NXS', '1', '1', '2017-03-09 11:54:12', '16', '2018-04-11 17:01:43');
INSERT INTO `god_area` VALUES ('1990', '浏阳市', '浏阳', '999', '6', '', '1980', '/0/1979/1980/', '3', '430181', 'YS', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('1991', '株洲市', '株洲', '999', '6', '', '1979', '/0/1979/', '2', '430200', 'ZZS', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('1993', '荷塘区', '荷塘', '999', '6', '', '1991', '/0/1979/1991/', '3', '430202', 'ITQ', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('1994', '芦淞区', '芦淞', '999', '6', '', '1991', '/0/1979/1991/', '3', '430203', 'LQ', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('1995', '石峰区', '石峰', '999', '6', '', '1991', '/0/1979/1991/', '3', '430204', 'SFQ', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('1996', '天元区', '天元', '999', '6', '', '1991', '/0/1979/1991/', '3', '430211', 'TYQ', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('1997', '株洲县', '株洲县', '999', '9', '', '1991', '/0/1979/1991/', '3', '430221', 'ZZX', '1', '1', '2017-03-09 11:54:12', '1', '2018-12-04 17:33:21');
INSERT INTO `god_area` VALUES ('1998', '攸县', '攸县', '999', '6', '', '1991', '/0/1979/1991/', '3', '430223', 'X', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('1999', '茶陵县', '茶陵', '999', '6', '', '1991', '/0/1979/1991/', '3', '430224', 'CLX', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('2000', '炎陵县', '炎陵', '999', '6', '', '1991', '/0/1979/1991/', '3', '430225', 'YLX', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('2001', '醴陵市', '醴陵', '999', '6', '', '1991', '/0/1979/1991/', '3', '430281', 'LS', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('2002', '湘潭市', '湘潭', '999', '6', '', '1979', '/0/1979/', '2', '430300', 'XTS', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('2004', '雨湖区', '雨湖', '999', '6', '', '2002', '/0/1979/2002/', '3', '430302', 'YIQ', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('2005', '岳塘区', '岳塘', '999', '6', '', '2002', '/0/1979/2002/', '3', '430304', 'YTQ', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('2006', '湘潭县', '湘潭县', '999', '9', '', '2002', '/0/1979/2002/', '3', '430321', 'XTX', '1', '88', '2017-03-09 11:54:12', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2007', '湘乡市', '湘乡', '999', '6', '', '2002', '/0/1979/2002/', '3', '430381', 'XXS', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('2008', '韶山市', '韶山', '999', '6', '', '2002', '/0/1979/2002/', '3', '430382', 'SSS', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('2009', '衡阳市', '衡阳', '999', '6', '', '1979', '/0/1979/', '2', '430400', 'IYS', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('2011', '珠晖区', '珠晖', '999', '6', '', '2009', '/0/1979/2009/', '3', '430405', 'ZQ', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('2012', '雁峰区', '雁峰', '999', '6', '', '2009', '/0/1979/2009/', '3', '430406', 'YFQ', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('2013', '石鼓区', '石鼓', '999', '6', '', '2009', '/0/1979/2009/', '3', '430407', 'SGQ', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('2014', '蒸湘区', '蒸湘', '999', '6', '', '2009', '/0/1979/2009/', '3', '430408', 'ZXQ', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('2015', '南岳区', '南岳', '999', '6', '', '2009', '/0/1979/2009/', '3', '430412', 'NYQ', '1', '1', '2017-03-09 11:54:12', '1', '2017-03-09 11:54:12');
INSERT INTO `god_area` VALUES ('2016', '衡阳县', '衡阳县', '999', '9', '', '2009', '/0/1979/2009/', '3', '430421', 'IYX', '1', '88', '2017-03-09 11:54:12', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2017', '衡南县', '衡南', '999', '6', '', '2009', '/0/1979/2009/', '3', '430422', 'INX', '1', '1', '2017-03-09 11:54:13', '1', '2017-03-09 11:54:13');
INSERT INTO `god_area` VALUES ('2018', '衡山县', '衡山', '999', '6', '', '2009', '/0/1979/2009/', '3', '430423', 'ISX', '1', '1', '2017-03-09 11:54:13', '1', '2017-03-09 11:54:13');
INSERT INTO `god_area` VALUES ('2019', '衡东县', '衡东', '999', '6', '', '2009', '/0/1979/2009/', '3', '430424', 'IDX', '1', '1', '2017-03-09 11:54:13', '1', '2017-03-09 11:54:13');
INSERT INTO `god_area` VALUES ('2020', '祁东县', '祁东', '999', '6', '', '2009', '/0/1979/2009/', '3', '430426', 'QDX', '1', '1', '2017-03-09 11:54:13', '1', '2017-03-09 11:54:13');
INSERT INTO `god_area` VALUES ('2021', '耒阳市', '耒阳', '999', '6', '', '2009', '/0/1979/2009/', '3', '430481', 'YS', '1', '1', '2017-03-09 11:54:13', '1', '2017-03-09 11:54:13');
INSERT INTO `god_area` VALUES ('2022', '常宁市', '常宁', '999', '6', '', '2009', '/0/1979/2009/', '3', '430482', 'CNS', '1', '1', '2017-03-09 11:54:13', '1', '2017-03-09 11:54:13');
INSERT INTO `god_area` VALUES ('2023', '邵阳市', '邵阳', '999', '6', '', '1979', '/0/1979/', '2', '430500', 'SYS', '1', '1', '2017-03-09 11:54:13', '1', '2017-03-09 11:54:13');
INSERT INTO `god_area` VALUES ('2025', '双清区', '双清', '999', '6', '', '2023', '/0/1979/2023/', '3', '430502', 'SQQ', '1', '1', '2017-03-09 11:54:13', '1', '2017-03-09 11:54:13');
INSERT INTO `god_area` VALUES ('2026', '大祥区', '大祥', '999', '6', '', '2023', '/0/1979/2023/', '3', '430503', 'DXQ', '1', '1', '2017-03-09 11:54:13', '1', '2017-03-09 11:54:13');
INSERT INTO `god_area` VALUES ('2027', '北塔区', '北塔', '999', '6', '', '2023', '/0/1979/2023/', '3', '430511', 'BTQ', '1', '1', '2017-03-09 11:54:13', '1', '2017-03-09 11:54:13');
INSERT INTO `god_area` VALUES ('2028', '邵东县', '邵东', '999', '6', '', '2023', '/0/1979/2023/', '3', '430521', 'SDX', '1', '1', '2017-03-09 11:54:13', '1', '2017-03-09 11:54:13');
INSERT INTO `god_area` VALUES ('2029', '新邵县', '新邵', '999', '6', '', '2023', '/0/1979/2023/', '3', '430522', 'XSX', '1', '1', '2017-03-09 11:54:13', '1', '2017-03-09 11:54:13');
INSERT INTO `god_area` VALUES ('2030', '邵阳县', '邵阳县', '999', '9', '', '2023', '/0/1979/2023/', '3', '430523', 'SYX', '1', '88', '2017-03-09 11:54:13', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2031', '隆回县', '隆回', '999', '6', '', '2023', '/0/1979/2023/', '3', '430524', 'LIX', '1', '1', '2017-03-09 11:54:13', '1', '2017-03-09 11:54:13');
INSERT INTO `god_area` VALUES ('2032', '洞口县', '洞口', '999', '6', '', '2023', '/0/1979/2023/', '3', '430525', 'DKX', '1', '1', '2017-03-09 11:54:13', '1', '2017-03-09 11:54:13');
INSERT INTO `god_area` VALUES ('2033', '绥宁县', '绥宁', '999', '6', '', '2023', '/0/1979/2023/', '3', '430527', 'SNX', '1', '1', '2017-03-09 11:54:13', '1', '2017-03-09 11:54:13');
INSERT INTO `god_area` VALUES ('2034', '新宁县', '新宁', '999', '6', '', '2023', '/0/1979/2023/', '3', '430528', 'XNX', '1', '1', '2017-03-09 11:54:13', '1', '2017-03-09 11:54:13');
INSERT INTO `god_area` VALUES ('2035', '城步苗族自治县', '城步', '999', '6', '', '2023', '/0/1979/2023/', '3', '430529', 'CBMZZZX', '1', '1', '2017-03-09 11:54:13', '1', '2017-03-09 11:54:13');
INSERT INTO `god_area` VALUES ('2036', '武冈市', '武冈', '999', '6', '', '2023', '/0/1979/2023/', '3', '430581', 'WGS', '1', '1', '2017-03-09 11:54:13', '1', '2017-03-09 11:54:13');
INSERT INTO `god_area` VALUES ('2037', '岳阳市', '岳阳', '999', '6', '', '1979', '/0/1979/', '2', '430600', 'YYS', '1', '1', '2017-03-09 11:54:13', '1', '2017-03-09 11:54:13');
INSERT INTO `god_area` VALUES ('2039', '岳阳楼区', '岳阳楼', '999', '9', '', '2037', '/0/1979/2037/', '3', '430602', 'YYLQ', '1', '1', '2017-03-09 11:54:13', '1', '2017-03-09 11:54:13');
INSERT INTO `god_area` VALUES ('2040', '云溪区', '云溪', '999', '6', '', '2037', '/0/1979/2037/', '3', '430603', 'YXQ', '1', '1', '2017-03-09 11:54:14', '1', '2017-03-09 11:54:14');
INSERT INTO `god_area` VALUES ('2041', '君山区', '君山', '999', '6', '', '2037', '/0/1979/2037/', '3', '430611', 'JSQ', '1', '1', '2017-03-09 11:54:14', '1', '2017-03-09 11:54:14');
INSERT INTO `god_area` VALUES ('2042', '岳阳县', '岳阳县', '999', '9', '', '2037', '/0/1979/2037/', '3', '430621', 'YYX', '1', '88', '2017-03-09 11:54:14', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2043', '华容县', '华容', '999', '6', '', '2037', '/0/1979/2037/', '3', '430623', 'IRX', '1', '1', '2017-03-09 11:54:14', '1', '2017-03-09 11:54:14');
INSERT INTO `god_area` VALUES ('2044', '湘阴县', '湘阴', '999', '6', '', '2037', '/0/1979/2037/', '3', '430624', 'XYX', '1', '1', '2017-03-09 11:54:14', '1', '2017-03-09 11:54:14');
INSERT INTO `god_area` VALUES ('2045', '平江县', '平江', '999', '6', '', '2037', '/0/1979/2037/', '3', '430626', 'PJX', '1', '1', '2017-03-09 11:54:14', '1', '2017-03-09 11:54:14');
INSERT INTO `god_area` VALUES ('2046', '汨罗市', '汨罗', '999', '6', '', '2037', '/0/1979/2037/', '3', '430681', 'LS', '1', '1', '2017-03-09 11:54:14', '1', '2017-03-09 11:54:14');
INSERT INTO `god_area` VALUES ('2047', '临湘市', '临湘', '999', '6', '', '2037', '/0/1979/2037/', '3', '430682', 'LXS', '1', '1', '2017-03-09 11:54:14', '1', '2017-03-09 11:54:14');
INSERT INTO `god_area` VALUES ('2048', '常德市', '常德', '999', '6', '', '1979', '/0/1979/', '2', '430700', 'CDS', '1', '1', '2017-03-09 11:54:14', '1', '2017-03-09 11:54:14');
INSERT INTO `god_area` VALUES ('2050', '武陵区', '武陵', '999', '6', '', '2048', '/0/1979/2048/', '3', '430702', 'WLQ', '1', '1', '2017-03-09 11:54:14', '1', '2017-03-09 11:54:14');
INSERT INTO `god_area` VALUES ('2051', '鼎城区', '鼎城区', '999', '9', '', '2048', '/0/1979/2048/', '3', '430703', 'DCQ', '1', '1', '2017-03-09 11:54:14', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('2052', '安乡县', '安乡', '999', '6', '', '2048', '/0/1979/2048/', '3', '430721', 'AXX', '1', '1', '2017-03-09 11:54:14', '1', '2017-03-09 11:54:14');
INSERT INTO `god_area` VALUES ('2053', '汉寿县', '汉寿', '999', '6', '', '2048', '/0/1979/2048/', '3', '430722', 'ISX', '1', '1', '2017-03-09 11:54:14', '1', '2017-03-09 11:54:14');
INSERT INTO `god_area` VALUES ('2054', '澧县', '澧县', '999', '6', '', '2048', '/0/1979/2048/', '3', '430723', 'X', '1', '1', '2017-03-09 11:54:14', '1', '2017-03-09 11:54:14');
INSERT INTO `god_area` VALUES ('2055', '临澧县', '临澧', '999', '6', '', '2048', '/0/1979/2048/', '3', '430724', 'LX', '1', '1', '2017-03-09 11:54:14', '1', '2017-03-09 11:54:14');
INSERT INTO `god_area` VALUES ('2056', '桃源县', '桃源', '999', '6', '', '2048', '/0/1979/2048/', '3', '430725', 'TYX', '1', '1', '2017-03-09 11:54:14', '1', '2017-03-09 11:54:14');
INSERT INTO `god_area` VALUES ('2057', '石门县', '石门', '999', '6', '', '2048', '/0/1979/2048/', '3', '430726', 'SMX', '1', '1', '2017-03-09 11:54:14', '1', '2017-03-09 11:54:14');
INSERT INTO `god_area` VALUES ('2058', '津市市', '津市', '999', '6', '', '2048', '/0/1979/2048/', '3', '430781', 'JS', '1', '1', '2017-03-09 11:54:14', '16', '2018-07-16 16:24:06');
INSERT INTO `god_area` VALUES ('2059', '张家界市', '张家界', '999', '9', '', '1979', '/0/1979/', '2', '430800', 'ZJJS', '1', '1', '2017-03-09 11:54:14', '1', '2017-03-09 11:54:14');
INSERT INTO `god_area` VALUES ('2061', '永定区', '永定', '999', '6', '', '2059', '/0/1979/2059/', '3', '430802', 'YDQ', '1', '1', '2017-03-09 11:54:14', '1', '2017-03-09 11:54:14');
INSERT INTO `god_area` VALUES ('2062', '武陵源区', '武陵源', '999', '9', '', '2059', '/0/1979/2059/', '3', '430811', 'WLYQ', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2063', '慈利县', '慈利', '999', '6', '', '2059', '/0/1979/2059/', '3', '430821', 'CLX', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2064', '桑植县', '桑植', '999', '6', '', '2059', '/0/1979/2059/', '3', '430822', 'SZX', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2065', '益阳市', '益阳', '999', '6', '', '1979', '/0/1979/', '2', '430900', 'YYS', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2067', '资阳区', '资阳区', '999', '9', '', '2065', '/0/1979/2065/', '3', '430902', 'ZYQ', '1', '1', '2017-03-09 11:54:15', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2068', '赫山区', '赫山', '999', '6', '', '2065', '/0/1979/2065/', '3', '430903', 'ISQ', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2069', '南县', '南县', '999', '6', '', '2065', '/0/1979/2065/', '3', '430921', 'NX', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2070', '桃江县', '桃江', '999', '6', '', '2065', '/0/1979/2065/', '3', '430922', 'TJX', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2071', '安化县', '安化', '999', '6', '', '2065', '/0/1979/2065/', '3', '430923', 'AIX', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2072', '沅江市', '沅江', '999', '6', '', '2065', '/0/1979/2065/', '3', '430981', 'JS', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2073', '郴州市', '郴州', '999', '6', '', '1979', '/0/1979/', '2', '431000', 'CZS', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2075', '北湖区', '北湖', '999', '6', '', '2073', '/0/1979/2073/', '3', '431002', 'BIQ', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2076', '苏仙区', '苏仙', '999', '6', '', '2073', '/0/1979/2073/', '3', '431003', 'SXQ', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2077', '桂阳县', '桂阳', '999', '6', '', '2073', '/0/1979/2073/', '3', '431021', 'GYX', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2078', '宜章县', '宜章', '999', '6', '', '2073', '/0/1979/2073/', '3', '431022', 'YZX', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2079', '永兴县', '永兴', '999', '6', '', '2073', '/0/1979/2073/', '3', '431023', 'YXX', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2080', '嘉禾县', '嘉禾', '999', '6', '', '2073', '/0/1979/2073/', '3', '431024', 'JIX', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2081', '临武县', '临武', '999', '6', '', '2073', '/0/1979/2073/', '3', '431025', 'LWX', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2082', '汝城县', '汝城', '999', '6', '', '2073', '/0/1979/2073/', '3', '431026', 'RCX', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2083', '桂东县', '桂东', '999', '6', '', '2073', '/0/1979/2073/', '3', '431027', 'GDX', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2084', '安仁县', '安仁', '999', '6', '', '2073', '/0/1979/2073/', '3', '431028', 'ARX', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2085', '资兴市', '资兴', '999', '6', '', '2073', '/0/1979/2073/', '3', '431081', 'ZXS', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2086', '永州市', '永州', '999', '6', '', '1979', '/0/1979/', '2', '431100', 'YZS', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2088', '零陵区', '零陵', '999', '6', '', '2086', '/0/1979/2086/', '3', '431102', 'LLQ', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2089', '冷水滩区', '冷水滩', '999', '9', '', '2086', '/0/1979/2086/', '3', '431103', 'LSTQ', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2090', '祁阳县', '祁阳', '999', '6', '', '2086', '/0/1979/2086/', '3', '431121', 'QYX', '1', '1', '2017-03-09 11:54:15', '1', '2017-03-09 11:54:15');
INSERT INTO `god_area` VALUES ('2091', '东安县', '东安县', '999', '9', '', '2086', '/0/1979/2086/', '3', '431122', 'DAX', '1', '1', '2017-03-09 11:54:16', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2092', '双牌县', '双牌', '999', '6', '', '2086', '/0/1979/2086/', '3', '431123', 'SPX', '1', '1', '2017-03-09 11:54:16', '1', '2017-03-09 11:54:16');
INSERT INTO `god_area` VALUES ('2093', '道县', '道县', '999', '6', '', '2086', '/0/1979/2086/', '3', '431124', 'DX', '1', '1', '2017-03-09 11:54:16', '1', '2017-03-09 11:54:16');
INSERT INTO `god_area` VALUES ('2094', '江永县', '江永', '999', '6', '', '2086', '/0/1979/2086/', '3', '431125', 'JYX', '1', '1', '2017-03-09 11:54:16', '1', '2017-03-09 11:54:16');
INSERT INTO `god_area` VALUES ('2095', '宁远县', '宁远', '999', '6', '', '2086', '/0/1979/2086/', '3', '431126', 'NYX', '1', '1', '2017-03-09 11:54:16', '1', '2017-03-09 11:54:16');
INSERT INTO `god_area` VALUES ('2096', '蓝山县', '蓝山', '999', '6', '', '2086', '/0/1979/2086/', '3', '431127', 'LSX', '1', '1', '2017-03-09 11:54:16', '1', '2017-03-09 11:54:16');
INSERT INTO `god_area` VALUES ('2097', '新田县', '新田', '999', '6', '', '2086', '/0/1979/2086/', '3', '431128', 'XTX', '1', '1', '2017-03-09 11:54:16', '1', '2017-03-09 11:54:16');
INSERT INTO `god_area` VALUES ('2098', '江华瑶族自治县', '江华', '999', '6', '', '2086', '/0/1979/2086/', '3', '431129', 'JIYZZZX', '1', '1', '2017-03-09 11:54:16', '1', '2017-03-09 11:54:16');
INSERT INTO `god_area` VALUES ('2099', '怀化市', '怀化', '999', '6', '', '1979', '/0/1979/', '2', '431200', 'IIS', '1', '1', '2017-03-09 11:54:16', '1', '2017-03-09 11:54:16');
INSERT INTO `god_area` VALUES ('2101', '鹤城区', '鹤城区', '999', '9', '', '2099', '/0/1979/2099/', '3', '431202', 'ICQ', '1', '1', '2017-03-09 11:54:16', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('2102', '中方县', '中方', '999', '6', '', '2099', '/0/1979/2099/', '3', '431221', 'ZFX', '1', '1', '2017-03-09 11:54:16', '1', '2017-03-09 11:54:16');
INSERT INTO `god_area` VALUES ('2103', '沅陵县', '沅陵', '999', '6', '', '2099', '/0/1979/2099/', '3', '431222', 'LX', '1', '1', '2017-03-09 11:54:16', '1', '2017-03-09 11:54:16');
INSERT INTO `god_area` VALUES ('2104', '辰溪县', '辰溪', '999', '6', '', '2099', '/0/1979/2099/', '3', '431223', 'CXX', '1', '1', '2017-03-09 11:54:16', '1', '2017-03-09 11:54:16');
INSERT INTO `god_area` VALUES ('2105', '溆浦县', '溆浦', '999', '6', '', '2099', '/0/1979/2099/', '3', '431224', 'PX', '1', '1', '2017-03-09 11:54:16', '1', '2017-03-09 11:54:16');
INSERT INTO `god_area` VALUES ('2106', '会同县', '会同', '999', '6', '', '2099', '/0/1979/2099/', '3', '431225', 'ITX', '1', '1', '2017-03-09 11:54:16', '1', '2017-03-09 11:54:16');
INSERT INTO `god_area` VALUES ('2107', '麻阳苗族自治县', '麻阳', '999', '6', '', '2099', '/0/1979/2099/', '3', '431226', 'MYMZZZX', '1', '1', '2017-03-09 11:54:16', '1', '2017-03-09 11:54:16');
INSERT INTO `god_area` VALUES ('2108', '新晃侗族自治县', '新晃', '999', '6', '', '2099', '/0/1979/2099/', '3', '431227', 'XIDZZZX', '1', '1', '2017-03-09 11:54:16', '1', '2017-03-09 11:54:16');
INSERT INTO `god_area` VALUES ('2109', '芷江侗族自治县', '芷江', '999', '6', '', '2099', '/0/1979/2099/', '3', '431228', 'JDZZZX', '1', '1', '2017-03-09 11:54:16', '1', '2017-03-09 11:54:16');
INSERT INTO `god_area` VALUES ('2110', '靖州苗族侗族自治县', '靖州', '999', '6', '', '2099', '/0/1979/2099/', '3', '431229', 'JZMZDZZZX', '1', '1', '2017-03-09 11:54:16', '1', '2017-03-09 11:54:16');
INSERT INTO `god_area` VALUES ('2111', '通道侗族自治县', '通道', '999', '6', '', '2099', '/0/1979/2099/', '3', '431230', 'TDDZZZX', '1', '1', '2017-03-09 11:54:16', '1', '2017-03-09 11:54:16');
INSERT INTO `god_area` VALUES ('2112', '洪江市', '洪江', '999', '6', '', '2099', '/0/1979/2099/', '3', '431281', 'IJS', '1', '1', '2017-03-09 11:54:16', '1', '2017-03-09 11:54:16');
INSERT INTO `god_area` VALUES ('2113', '娄底市', '娄底', '999', '6', '', '1979', '/0/1979/', '2', '431300', 'LDS', '1', '1', '2017-03-09 11:54:16', '1', '2017-03-09 11:54:16');
INSERT INTO `god_area` VALUES ('2115', '娄星区', '娄星', '999', '6', '', '2113', '/0/1979/2113/', '3', '431302', 'LXQ', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2116', '双峰县', '双峰', '999', '6', '', '2113', '/0/1979/2113/', '3', '431321', 'SFX', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2117', '新化县', '新化', '999', '6', '', '2113', '/0/1979/2113/', '3', '431322', 'XIX', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2118', '冷水江市', '冷水江', '999', '9', '', '2113', '/0/1979/2113/', '3', '431381', 'LSJS', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2119', '涟源市', '涟源', '999', '6', '', '2113', '/0/1979/2113/', '3', '431382', 'LYS', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2120', '湘西土家族苗族自治州', '湘西州', '999', '9', '', '1979', '/0/1979/', '2', '433100', 'XXTJZMZZZZ', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2121', '吉首市', '吉首', '999', '6', '', '2120', '/0/1979/2120/', '3', '433101', 'JSS', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2122', '泸溪县', '泸溪', '999', '6', '', '2120', '/0/1979/2120/', '3', '433122', 'XX', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2123', '凤凰县', '凤凰', '999', '6', '', '2120', '/0/1979/2120/', '3', '433123', 'FIX', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2124', '花垣县', '花垣', '999', '6', '', '2120', '/0/1979/2120/', '3', '433124', 'IYX', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2125', '保靖县', '保靖', '999', '6', '', '2120', '/0/1979/2120/', '3', '433125', 'BJX', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2126', '古丈县', '古丈', '999', '6', '', '2120', '/0/1979/2120/', '3', '433126', 'GZX', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2127', '永顺县', '永顺', '999', '6', '', '2120', '/0/1979/2120/', '3', '433127', 'YSX', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2128', '龙山县', '龙山', '999', '6', '', '2120', '/0/1979/2120/', '3', '433130', 'LSX', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2129', '广东省', '广东', '999', '6', '', '0', '/0/', '1', '440000', 'GDS', '1', '1', '2017-03-09 11:54:17', '1', '2017-06-28 09:52:07');
INSERT INTO `god_area` VALUES ('2130', '广州市', '广州', '999', '6', '', '2129', '/0/2129/', '2', '440100', 'GZS', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2132', '荔湾区', '荔湾', '999', '6', '', '2130', '/0/2129/2130/', '3', '440103', 'LWQ', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2133', '越秀区', '越秀', '999', '6', '', '2130', '/0/2129/2130/', '3', '440104', 'YXQ', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2134', '海珠区', '海珠', '999', '6', '', '2130', '/0/2129/2130/', '3', '440105', 'IZQ', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2135', '天河区', '天河', '999', '6', '', '2130', '/0/2129/2130/', '3', '440106', 'TIQ', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2136', '白云区', '白云区', '999', '9', '', '2130', '/0/2129/2130/', '3', '440111', 'BYQ', '1', '1', '2017-03-09 11:54:17', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('2137', '黄埔区', '黄埔', '999', '6', '', '2130', '/0/2129/2130/', '3', '440112', 'IPQ', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2138', '番禺区', '番禺', '999', '6', '', '2130', '/0/2129/2130/', '3', '440113', 'FQ', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2139', '花都区', '花都', '999', '6', '', '2130', '/0/2129/2130/', '3', '440114', 'IDQ', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2140', '南沙区', '南沙', '999', '6', '', '2130', '/0/2129/2130/', '3', '440115', 'NSQ', '1', '1', '2017-03-09 11:54:17', '1', '2017-03-09 11:54:17');
INSERT INTO `god_area` VALUES ('2141', '萝岗区', '萝岗', '999', '6', '', '2130', '/0/2129/2130/', '3', '440116', null, '0', '1', '2017-03-09 11:54:18', '1', '2017-07-26 18:20:12');
INSERT INTO `god_area` VALUES ('2142', '从化区', '从化', '999', '6', '', '2130', '/0/2129/2130/', '3', '440117', 'CIQ', '1', '1', '2017-03-09 11:54:18', '1', '2017-03-09 11:54:18');
INSERT INTO `god_area` VALUES ('2143', '增城区', '增城区', '999', '9', '', '2130', '/0/2129/2130/', '3', '440118', 'ZCQ', '1', '1', '2017-03-09 11:54:18', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('2144', '韶关市', '韶关', '999', '6', '', '2129', '/0/2129/', '2', '440200', 'SGS', '1', '1', '2017-03-09 11:54:18', '1', '2017-03-09 11:54:18');
INSERT INTO `god_area` VALUES ('2146', '武江区', '武江', '999', '6', '', '2144', '/0/2129/2144/', '3', '440203', 'WJQ', '1', '1', '2017-03-09 11:54:18', '1', '2017-03-09 11:54:18');
INSERT INTO `god_area` VALUES ('2147', '浈江区', '浈江', '999', '6', '', '2144', '/0/2129/2144/', '3', '440204', 'JQ', '1', '1', '2017-03-09 11:54:18', '1', '2017-03-09 11:54:18');
INSERT INTO `god_area` VALUES ('2148', '曲江区', '曲江', '999', '6', '', '2144', '/0/2129/2144/', '3', '440205', 'QJQ', '1', '1', '2017-03-09 11:54:18', '1', '2017-03-09 11:54:18');
INSERT INTO `god_area` VALUES ('2149', '始兴县', '始兴', '999', '6', '', '2144', '/0/2129/2144/', '3', '440222', 'SXX', '1', '1', '2017-03-09 11:54:18', '1', '2017-03-09 11:54:18');
INSERT INTO `god_area` VALUES ('2150', '仁化县', '仁化', '999', '6', '', '2144', '/0/2129/2144/', '3', '440224', 'RIX', '1', '1', '2017-03-09 11:54:18', '1', '2017-03-09 11:54:18');
INSERT INTO `god_area` VALUES ('2151', '翁源县', '翁源', '999', '6', '', '2144', '/0/2129/2144/', '3', '440229', 'WYX', '1', '1', '2017-03-09 11:54:18', '1', '2017-03-09 11:54:18');
INSERT INTO `god_area` VALUES ('2152', '乳源瑶族自治县', '乳源', '999', '6', '', '2144', '/0/2129/2144/', '3', '440232', 'RYYZZZX', '1', '1', '2017-03-09 11:54:18', '1', '2017-03-09 11:54:18');
INSERT INTO `god_area` VALUES ('2153', '新丰县', '新丰', '999', '6', '', '2144', '/0/2129/2144/', '3', '440233', 'XFX', '1', '1', '2017-03-09 11:54:18', '1', '2017-03-09 11:54:18');
INSERT INTO `god_area` VALUES ('2154', '乐昌市', '乐昌', '999', '6', '', '2144', '/0/2129/2144/', '3', '440281', 'LCS', '1', '1', '2017-03-09 11:54:18', '1', '2017-03-09 11:54:18');
INSERT INTO `god_area` VALUES ('2155', '南雄市', '南雄', '999', '6', '', '2144', '/0/2129/2144/', '3', '440282', 'NXS', '1', '1', '2017-03-09 11:54:18', '1', '2017-03-09 11:54:18');
INSERT INTO `god_area` VALUES ('2156', '深圳市', '深圳', '999', '6', '', '2129', '/0/2129/', '2', '440300', 'SS', '1', '1', '2017-03-09 11:54:18', '1', '2017-03-09 11:54:18');
INSERT INTO `god_area` VALUES ('2158', '罗湖区', '罗湖', '999', '6', '', '2156', '/0/2129/2156/', '3', '440303', 'LIQ', '1', '1', '2017-03-09 11:54:18', '1', '2017-03-09 11:54:18');
INSERT INTO `god_area` VALUES ('2159', '福田区', '福田', '999', '6', '', '2156', '/0/2129/2156/', '3', '440304', 'FTQ', '1', '1', '2017-03-09 11:54:18', '1', '2017-03-09 11:54:18');
INSERT INTO `god_area` VALUES ('2160', '南山区', '南山区', '999', '9', '', '2156', '/0/2129/2156/', '3', '440305', 'NSQ', '1', '88', '2017-03-09 11:54:18', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2161', '宝安区', '宝安', '999', '6', '', '2156', '/0/2129/2156/', '3', '440306', 'BAQ', '1', '1', '2017-03-09 11:54:18', '1', '2017-03-09 11:54:18');
INSERT INTO `god_area` VALUES ('2162', '龙岗区', '龙岗', '999', '6', '', '2156', '/0/2129/2156/', '3', '440307', 'LGQ', '1', '1', '2017-03-09 11:54:18', '1', '2017-03-09 11:54:18');
INSERT INTO `god_area` VALUES ('2163', '盐田区', '盐田', '999', '6', '', '2156', '/0/2129/2156/', '3', '440308', 'YTQ', '1', '1', '2017-03-09 11:54:19', '1', '2017-03-09 11:54:19');
INSERT INTO `god_area` VALUES ('2164', '珠海市', '珠海', '999', '6', '', '2129', '/0/2129/', '2', '440400', 'ZIS', '1', '1', '2017-03-09 11:54:19', '1', '2017-03-09 11:54:19');
INSERT INTO `god_area` VALUES ('2166', '香洲区', '香洲', '999', '6', '', '2164', '/0/2129/2164/', '3', '440402', 'XZQ', '1', '1', '2017-03-09 11:54:19', '1', '2017-03-09 11:54:19');
INSERT INTO `god_area` VALUES ('2167', '斗门区', '斗门', '999', '6', '', '2164', '/0/2129/2164/', '3', '440403', 'DMQ', '1', '1', '2017-03-09 11:54:19', '1', '2017-03-09 11:54:19');
INSERT INTO `god_area` VALUES ('2168', '金湾区', '金湾', '999', '6', '', '2164', '/0/2129/2164/', '3', '440404', 'JWQ', '1', '1', '2017-03-09 11:54:19', '1', '2017-03-09 11:54:19');
INSERT INTO `god_area` VALUES ('2169', '汕头市', '汕头', '999', '6', '', '2129', '/0/2129/', '2', '440500', 'STS', '1', '1', '2017-03-09 11:54:19', '1', '2017-03-09 11:54:19');
INSERT INTO `god_area` VALUES ('2171', '龙湖区', '龙湖', '999', '6', '', '2169', '/0/2129/2169/', '3', '440507', 'LIQ', '1', '1', '2017-03-09 11:54:19', '1', '2017-03-09 11:54:19');
INSERT INTO `god_area` VALUES ('2172', '金平区', '金平', '999', '6', '', '2169', '/0/2129/2169/', '3', '440511', 'JPQ', '1', '1', '2017-03-09 11:54:19', '1', '2017-03-09 11:54:19');
INSERT INTO `god_area` VALUES ('2173', '濠江区', '濠江', '999', '6', '', '2169', '/0/2129/2169/', '3', '440512', 'JQ', '1', '1', '2017-03-09 11:54:19', '1', '2017-03-09 11:54:19');
INSERT INTO `god_area` VALUES ('2174', '潮阳区', '潮阳', '999', '6', '', '2169', '/0/2129/2169/', '3', '440513', 'CYQ', '1', '1', '2017-03-09 11:54:19', '1', '2017-03-09 11:54:19');
INSERT INTO `god_area` VALUES ('2175', '潮南区', '潮南区', '999', '6', '', '2169', '/0/2129/2169/', '3', '440514', 'CNQ', '1', '1', '2017-03-09 11:54:19', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('2176', '澄海区', '澄海', '999', '6', '', '2169', '/0/2129/2169/', '3', '440515', 'CIQ', '1', '1', '2017-03-09 11:54:19', '1', '2017-03-09 11:54:19');
INSERT INTO `god_area` VALUES ('2177', '南澳县', '南澳', '999', '6', '', '2169', '/0/2129/2169/', '3', '440523', 'NAX', '1', '1', '2017-03-09 11:54:19', '1', '2017-03-09 11:54:19');
INSERT INTO `god_area` VALUES ('2178', '佛山市', '佛山', '999', '6', '', '2129', '/0/2129/', '2', '440600', 'FSS', '1', '1', '2017-03-09 11:54:19', '1', '2017-03-09 11:54:19');
INSERT INTO `god_area` VALUES ('2180', '禅城区', '禅城区', '999', '9', '', '2178', '/0/2129/2178/', '3', '440604', 'CQ', '1', '1', '2017-03-09 11:54:19', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('2181', '南海区', '南海区', '999', '9', '', '2178', '/0/2129/2178/', '3', '440605', 'NIQ', '1', '1', '2017-03-09 11:54:19', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('2182', '顺德区', '顺德', '999', '6', '', '2178', '/0/2129/2178/', '3', '440606', 'SDQ', '1', '1', '2017-03-09 11:54:19', '1', '2017-03-09 11:54:19');
INSERT INTO `god_area` VALUES ('2183', '三水区', '三水', '999', '6', '', '2178', '/0/2129/2178/', '3', '440607', 'SSQ', '1', '1', '2017-03-09 11:54:19', '1', '2017-03-09 11:54:19');
INSERT INTO `god_area` VALUES ('2184', '高明区', '高明', '999', '6', '', '2178', '/0/2129/2178/', '3', '440608', 'GMQ', '1', '1', '2017-03-09 11:54:19', '1', '2017-03-09 11:54:19');
INSERT INTO `god_area` VALUES ('2185', '江门市', '江门', '999', '6', '', '2129', '/0/2129/', '2', '440700', 'JMS', '1', '1', '2017-03-09 11:54:19', '1', '2017-03-09 11:54:19');
INSERT INTO `god_area` VALUES ('2187', '蓬江区', '蓬江', '999', '6', '', '2185', '/0/2129/2185/', '3', '440703', 'PJQ', '1', '1', '2017-03-09 11:54:19', '1', '2017-03-09 11:54:19');
INSERT INTO `god_area` VALUES ('2188', '江海区', '江海区', '999', '9', '', '2185', '/0/2129/2185/', '3', '440704', 'JIQ', '1', '1', '2017-03-09 11:54:19', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2189', '新会区', '新会', '999', '6', '', '2185', '/0/2129/2185/', '3', '440705', 'XIQ', '1', '1', '2017-03-09 11:54:19', '1', '2017-03-09 11:54:19');
INSERT INTO `god_area` VALUES ('2190', '台山市', '台山', '999', '6', '', '2185', '/0/2129/2185/', '3', '440781', 'TSS', '1', '1', '2017-03-09 11:54:19', '1', '2017-03-09 11:54:19');
INSERT INTO `god_area` VALUES ('2191', '开平市', '开平', '999', '6', '', '2185', '/0/2129/2185/', '3', '440783', 'KPS', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2192', '鹤山市', '鹤山', '999', '6', '', '2185', '/0/2129/2185/', '3', '440784', 'ISS', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2193', '恩平市', '恩平', '999', '6', '', '2185', '/0/2129/2185/', '3', '440785', 'EPS', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2194', '湛江市', '湛江', '999', '6', '', '2129', '/0/2129/', '2', '440800', 'ZJS', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2196', '赤坎区', '赤坎', '999', '6', '', '2194', '/0/2129/2194/', '3', '440802', 'CKQ', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2197', '霞山区', '霞山', '999', '6', '', '2194', '/0/2129/2194/', '3', '440803', 'XSQ', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2198', '坡头区', '坡头', '999', '6', '', '2194', '/0/2129/2194/', '3', '440804', 'PTQ', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2199', '麻章区', '麻章', '999', '6', '', '2194', '/0/2129/2194/', '3', '440811', 'MZQ', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2200', '遂溪县', '遂溪', '999', '6', '', '2194', '/0/2129/2194/', '3', '440823', 'SXX', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2201', '徐闻县', '徐闻', '999', '6', '', '2194', '/0/2129/2194/', '3', '440825', 'XWX', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2202', '廉江市', '廉江', '999', '6', '', '2194', '/0/2129/2194/', '3', '440881', 'LJS', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2203', '雷州市', '雷州', '999', '6', '', '2194', '/0/2129/2194/', '3', '440882', 'LZS', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2204', '吴川市', '吴川', '999', '6', '', '2194', '/0/2129/2194/', '3', '440883', 'WCS', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2205', '茂名市', '茂名', '999', '6', '', '2129', '/0/2129/', '2', '440900', 'MMS', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2207', '茂南区', '茂南区', '999', '9', '', '2205', '/0/2129/2205/', '3', '440902', 'MNQ', '1', '1', '2017-03-09 11:54:20', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('2208', '电白区', '电白', '999', '6', '', '2205', '/0/2129/2205/', '3', '440904', 'DBQ', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2209', '高州市', '高州', '999', '6', '', '2205', '/0/2129/2205/', '3', '440981', 'GZS', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2210', '化州市', '化州', '999', '6', '', '2205', '/0/2129/2205/', '3', '440982', 'IZS', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2211', '信宜市', '信宜', '999', '6', '', '2205', '/0/2129/2205/', '3', '440983', 'XYS', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2212', '肇庆市', '肇庆', '999', '6', '', '2129', '/0/2129/', '2', '441200', 'ZQS', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2214', '端州区', '端州', '999', '6', '', '2212', '/0/2129/2212/', '3', '441202', 'DZQ', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2215', '鼎湖区', '鼎湖', '999', '6', '', '2212', '/0/2129/2212/', '3', '441203', 'DIQ', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2216', '广宁县', '广宁', '999', '6', '', '2212', '/0/2129/2212/', '3', '441223', 'GNX', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2217', '怀集县', '怀集', '999', '6', '', '2212', '/0/2129/2212/', '3', '441224', 'IJX', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2218', '封开县', '封开', '999', '6', '', '2212', '/0/2129/2212/', '3', '441225', 'FKX', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2219', '德庆县', '德庆', '999', '6', '', '2212', '/0/2129/2212/', '3', '441226', 'DQX', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2220', '高要区', '高要', '999', '6', '', '2212', '/0/2129/2212/', '3', '441283', 'GYS', '1', '1', '2017-03-09 11:54:20', '16', '2018-07-16 16:23:10');
INSERT INTO `god_area` VALUES ('2221', '四会市', '四会', '999', '6', '', '2212', '/0/2129/2212/', '3', '441284', 'SIS', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2222', '惠州市', '惠州', '999', '6', '', '2129', '/0/2129/', '2', '441300', 'IZS', '1', '1', '2017-03-09 11:54:20', '1', '2017-03-09 11:54:20');
INSERT INTO `god_area` VALUES ('2224', '惠城区', '惠城区', '999', '9', '', '2222', '/0/2129/2222/', '3', '441302', 'ICQ', '1', '1', '2017-03-09 11:54:21', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('2225', '惠阳区', '惠阳', '999', '6', '', '2222', '/0/2129/2222/', '3', '441303', 'IYQ', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2226', '博罗县', '博罗', '999', '6', '', '2222', '/0/2129/2222/', '3', '441322', 'BLX', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2227', '惠东县', '惠东', '999', '6', '', '2222', '/0/2129/2222/', '3', '441323', 'IDX', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2228', '龙门县', '龙门', '999', '6', '', '2222', '/0/2129/2222/', '3', '441324', 'LMX', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2229', '梅州市', '梅州', '999', '6', '', '2129', '/0/2129/', '2', '441400', 'ZS', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2231', '梅江区', '梅江', '999', '6', '', '2229', '/0/2129/2229/', '3', '441402', 'JQ', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2232', '梅县区', '梅县', '999', '6', '', '2229', '/0/2129/2229/', '3', '441403', 'XQ', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2233', '大埔县', '大埔', '999', '6', '', '2229', '/0/2129/2229/', '3', '441422', 'DPX', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2234', '丰顺县', '丰顺', '999', '6', '', '2229', '/0/2129/2229/', '3', '441423', 'FSX', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2235', '五华县', '五华', '999', '6', '', '2229', '/0/2129/2229/', '3', '441424', 'WIX', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2236', '平远县', '平远', '999', '6', '', '2229', '/0/2129/2229/', '3', '441426', 'PYX', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2237', '蕉岭县', '蕉岭', '999', '6', '', '2229', '/0/2129/2229/', '3', '441427', 'JLX', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2238', '兴宁市', '兴宁', '999', '6', '', '2229', '/0/2129/2229/', '3', '441481', 'XNS', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2239', '汕尾市', '汕尾', '999', '6', '', '2129', '/0/2129/', '2', '441500', 'SS', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2242', '海丰县', '海丰', '999', '6', '', '2239', '/0/2129/2239/', '3', '441521', 'IFX', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2243', '陆河县', '陆河', '999', '6', '', '2239', '/0/2129/2239/', '3', '441523', 'LIX', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2244', '陆丰市', '陆丰', '999', '6', '', '2239', '/0/2129/2239/', '3', '441581', 'LFS', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2245', '河源市', '河源', '999', '6', '', '2129', '/0/2129/', '2', '441600', 'IYS', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2247', '源城区', '源城区', '999', '9', '', '2245', '/0/2129/2245/', '3', '441602', 'YCQ', '1', '1', '2017-03-09 11:54:21', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('2248', '紫金县', '紫金', '999', '6', '', '2245', '/0/2129/2245/', '3', '441621', 'ZJX', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2249', '龙川县', '龙川', '999', '6', '', '2245', '/0/2129/2245/', '3', '441622', 'LCX', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2250', '连平县', '连平', '999', '6', '', '2245', '/0/2129/2245/', '3', '441623', 'LPX', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2251', '和平县', '和平县', '999', '9', '', '2245', '/0/2129/2245/', '3', '441624', 'IPX', '1', '88', '2017-03-09 11:54:21', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2252', '东源县', '东源', '999', '6', '', '2245', '/0/2129/2245/', '3', '441625', 'DYX', '1', '1', '2017-03-09 11:54:21', '1', '2017-03-09 11:54:21');
INSERT INTO `god_area` VALUES ('2253', '阳江市', '阳江', '999', '6', '', '2129', '/0/2129/', '2', '441700', 'YJS', '1', '1', '2017-03-09 11:54:22', '1', '2017-03-09 11:54:22');
INSERT INTO `god_area` VALUES ('2255', '江城区', '江城区', '999', '9', '', '2253', '/0/2129/2253/', '3', '441702', 'JCQ', '1', '1', '2017-03-09 11:54:22', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('2256', '阳西县', '阳西', '999', '6', '', '2253', '/0/2129/2253/', '3', '441721', 'YXX', '1', '1', '2017-03-09 11:54:22', '1', '2017-03-09 11:54:22');
INSERT INTO `god_area` VALUES ('2257', '阳东区', '阳东区', '999', '6', '', '2253', '/0/2129/2253/', '3', '441723', 'YDQ', '1', '1', '2017-03-09 11:54:22', '6', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('2258', '阳春市', '阳春', '999', '6', '', '2253', '/0/2129/2253/', '3', '441781', 'YCS', '1', '1', '2017-03-09 11:54:22', '1', '2017-03-09 11:54:22');
INSERT INTO `god_area` VALUES ('2259', '清远市', '清远', '999', '6', '', '2129', '/0/2129/', '2', '441800', 'QYS', '1', '1', '2017-03-09 11:54:22', '1', '2017-03-09 11:54:22');
INSERT INTO `god_area` VALUES ('2261', '清城区', '清城区', '999', '9', '', '2259', '/0/2129/2259/', '3', '441802', 'QCQ', '1', '1', '2017-03-09 11:54:22', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('2262', '清新区', '清新', '999', '6', '', '2259', '/0/2129/2259/', '3', '441803', 'QXQ', '1', '1', '2017-03-09 11:54:22', '1', '2017-03-09 11:54:22');
INSERT INTO `god_area` VALUES ('2263', '佛冈县', '佛冈', '999', '6', '', '2259', '/0/2129/2259/', '3', '441821', 'FGX', '1', '1', '2017-03-09 11:54:22', '1', '2017-03-09 11:54:22');
INSERT INTO `god_area` VALUES ('2264', '阳山县', '阳山', '999', '6', '', '2259', '/0/2129/2259/', '3', '441823', 'YSX', '1', '1', '2017-03-09 11:54:22', '1', '2017-03-09 11:54:22');
INSERT INTO `god_area` VALUES ('2265', '连山壮族瑶族自治县', '连山', '999', '6', '', '2259', '/0/2129/2259/', '3', '441825', 'LSZZYZZZX', '1', '1', '2017-03-09 11:54:22', '1', '2017-03-09 11:54:22');
INSERT INTO `god_area` VALUES ('2266', '连南瑶族自治县', '连南', '999', '6', '', '2259', '/0/2129/2259/', '3', '441826', 'LNYZZZX', '1', '1', '2017-03-09 11:54:22', '1', '2017-03-09 11:54:22');
INSERT INTO `god_area` VALUES ('2267', '英德市', '英德', '999', '6', '', '2259', '/0/2129/2259/', '3', '441881', 'YDS', '1', '1', '2017-03-09 11:54:22', '1', '2017-03-09 11:54:22');
INSERT INTO `god_area` VALUES ('2268', '连州市', '连州', '999', '6', '', '2259', '/0/2129/2259/', '3', '441882', 'LZS', '1', '1', '2017-03-09 11:54:22', '1', '2017-03-09 11:54:22');
INSERT INTO `god_area` VALUES ('2269', '东莞市', '东莞', '999', '6', '', '2129', '/0/2129/', '2', '441900', 'DS', '1', '1', '2017-03-09 11:54:22', '1', '2017-03-09 11:54:22');
INSERT INTO `god_area` VALUES ('2270', '中山市', '中山市', '999', '6', '', '2129', '/0/2129/', '2', '442000', 'ZSS', '1', '1', '2017-03-09 11:54:22', '1', '2018-12-05 16:55:13');
INSERT INTO `god_area` VALUES ('2271', '潮州市', '潮州', '999', '6', '', '2129', '/0/2129/', '2', '445100', 'CZS', '1', '1', '2017-03-09 11:54:22', '1', '2017-03-09 11:54:22');
INSERT INTO `god_area` VALUES ('2273', '湘桥区', '湘桥', '999', '6', '', '2271', '/0/2129/2271/', '3', '445102', 'XQQ', '1', '1', '2017-03-09 11:54:22', '1', '2017-03-09 11:54:22');
INSERT INTO `god_area` VALUES ('2274', '潮安区', '潮安', '999', '6', '', '2271', '/0/2129/2271/', '3', '445103', 'CAQ', '1', '1', '2017-03-09 11:54:22', '1', '2017-03-09 11:54:22');
INSERT INTO `god_area` VALUES ('2275', '饶平县', '饶平', '999', '6', '', '2271', '/0/2129/2271/', '3', '445122', 'RPX', '1', '1', '2017-03-09 11:54:22', '1', '2017-03-09 11:54:22');
INSERT INTO `god_area` VALUES ('2276', '揭阳市', '揭阳', '999', '6', '', '2129', '/0/2129/', '2', '445200', 'JYS', '1', '1', '2017-03-09 11:54:22', '1', '2017-03-09 11:54:22');
INSERT INTO `god_area` VALUES ('2278', '榕城区', '榕城区', '999', '9', '', '2276', '/0/2129/2276/', '3', '445202', 'CQ', '1', '1', '2017-03-09 11:54:22', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('2279', '揭东区', '揭东区', '999', '6', '', '2276', '/0/2129/2276/', '3', '445203', 'JDQ', '1', '1', '2017-03-09 11:54:22', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('2280', '揭西县', '揭西', '999', '6', '', '2276', '/0/2129/2276/', '3', '445222', 'JXX', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 11:54:23');
INSERT INTO `god_area` VALUES ('2281', '惠来县', '惠来', '999', '6', '', '2276', '/0/2129/2276/', '3', '445224', 'ILX', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 11:54:23');
INSERT INTO `god_area` VALUES ('2282', '普宁市', '普宁', '999', '6', '', '2276', '/0/2129/2276/', '3', '445281', 'PNS', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 11:54:23');
INSERT INTO `god_area` VALUES ('2283', '云浮市', '云浮', '999', '6', '', '2129', '/0/2129/', '2', '445300', 'YFS', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 11:54:23');
INSERT INTO `god_area` VALUES ('2285', '云城区', '云城区', '999', '9', '', '2283', '/0/2129/2283/', '3', '445302', 'YCQ', '1', '1', '2017-03-09 11:54:23', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('2286', '云安区', '云安', '999', '6', '', '2283', '/0/2129/2283/', '3', '445303', 'YAQ', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 11:54:23');
INSERT INTO `god_area` VALUES ('2287', '新兴县', '新兴', '999', '6', '', '2283', '/0/2129/2283/', '3', '445321', 'XXX', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 11:54:23');
INSERT INTO `god_area` VALUES ('2288', '郁南县', '郁南', '999', '6', '', '2283', '/0/2129/2283/', '3', '445322', 'YNX', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 11:54:23');
INSERT INTO `god_area` VALUES ('2289', '罗定市', '罗定', '999', '6', '', '2283', '/0/2129/2283/', '3', '445381', 'LDS', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 11:54:23');
INSERT INTO `god_area` VALUES ('2290', '广西壮族自治区', '广西', '999', '6', '', '0', '/0/', '1', '450000', 'GXZZZZQ', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 14:04:23');
INSERT INTO `god_area` VALUES ('2291', '南宁市', '南宁', '999', '6', '', '2290', '/0/2290/', '2', '450100', 'NNS', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 11:54:23');
INSERT INTO `god_area` VALUES ('2293', '兴宁区', '兴宁', '999', '6', '', '2291', '/0/2290/2291/', '3', '450102', 'XNQ', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 11:54:23');
INSERT INTO `god_area` VALUES ('2294', '青秀区', '青秀', '999', '6', '', '2291', '/0/2290/2291/', '3', '450103', 'QXQ', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 11:54:23');
INSERT INTO `god_area` VALUES ('2295', '江南区', '江南区', '999', '6', '', '2291', '/0/2290/2291/', '3', '450105', 'JNQ', '1', '1', '2017-03-09 11:54:23', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('2296', '西乡塘区', '西乡塘', '999', '9', '', '2291', '/0/2290/2291/', '3', '450107', 'XXTQ', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 11:54:23');
INSERT INTO `god_area` VALUES ('2297', '良庆区', '良庆', '999', '6', '', '2291', '/0/2290/2291/', '3', '450108', 'LQQ', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 11:54:23');
INSERT INTO `god_area` VALUES ('2298', '邕宁区', '邕宁', '999', '6', '', '2291', '/0/2290/2291/', '3', '450109', 'NQ', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 11:54:23');
INSERT INTO `god_area` VALUES ('2299', '武鸣区', '武鸣', '999', '6', '', '2291', '/0/2290/2291/', '3', '450122', 'WMQ', '1', '1', '2017-03-09 11:54:23', '6', '2017-08-18 15:41:30');
INSERT INTO `god_area` VALUES ('2300', '隆安县', '隆安', '999', '6', '', '2291', '/0/2290/2291/', '3', '450123', 'LAX', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 11:54:23');
INSERT INTO `god_area` VALUES ('2301', '马山县', '马山', '999', '6', '', '2291', '/0/2290/2291/', '3', '450124', 'MSX', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 11:54:23');
INSERT INTO `god_area` VALUES ('2302', '上林县', '上林', '999', '6', '', '2291', '/0/2290/2291/', '3', '450125', 'SLX', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 11:54:23');
INSERT INTO `god_area` VALUES ('2303', '宾阳县', '宾阳', '999', '6', '', '2291', '/0/2290/2291/', '3', '450126', 'BYX', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 11:54:23');
INSERT INTO `god_area` VALUES ('2304', '横县', '横县', '999', '6', '', '2291', '/0/2290/2291/', '3', '450127', 'IX', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 11:54:23');
INSERT INTO `god_area` VALUES ('2305', '柳州市', '柳州', '999', '6', '', '2290', '/0/2290/', '2', '450200', 'LZS', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 11:54:23');
INSERT INTO `god_area` VALUES ('2307', '城中区', '城中', '999', '6', '', '2305', '/0/2290/2305/', '3', '450202', 'CZQ', '1', '1', '2017-03-09 11:54:23', '1', '2017-03-09 11:54:23');
INSERT INTO `god_area` VALUES ('2308', '鱼峰区', '鱼峰', '999', '6', '', '2305', '/0/2290/2305/', '3', '450203', 'YFQ', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2309', '柳南区', '柳南区', '999', '6', '', '2305', '/0/2290/2305/', '3', '450204', 'LNQ', '1', '1', '2017-03-09 11:54:24', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('2310', '柳北区', '柳北区', '999', '6', '', '2305', '/0/2290/2305/', '3', '450205', 'LBQ', '1', '1', '2017-03-09 11:54:24', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('2311', '柳江区', '柳江', '999', '6', '', '2305', '/0/2290/2305/', '3', '450221', 'LJQ', '1', '1', '2017-03-09 11:54:24', '6', '2017-08-18 15:21:12');
INSERT INTO `god_area` VALUES ('2312', '柳城县', '柳城', '999', '6', '', '2305', '/0/2290/2305/', '3', '450222', 'LCX', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2313', '鹿寨县', '鹿寨', '999', '6', '', '2305', '/0/2290/2305/', '3', '450223', 'LZX', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2314', '融安县', '融安', '999', '6', '', '2305', '/0/2290/2305/', '3', '450224', 'RAX', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2315', '融水苗族自治县', '融水', '999', '6', '', '2305', '/0/2290/2305/', '3', '450225', 'RSMZZZX', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2316', '三江侗族自治县', '三江', '999', '6', '', '2305', '/0/2290/2305/', '3', '450226', 'SJDZZZX', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2317', '桂林市', '桂林', '999', '6', '', '2290', '/0/2290/', '2', '450300', 'GLS', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2319', '秀峰区', '秀峰', '999', '6', '', '2317', '/0/2290/2317/', '3', '450302', 'XFQ', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2320', '叠彩区', '叠彩', '999', '6', '', '2317', '/0/2290/2317/', '3', '450303', 'DCQ', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2321', '象山区', '象山', '999', '6', '', '2317', '/0/2290/2317/', '3', '450304', 'XSQ', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2322', '七星区', '七星', '999', '6', '', '2317', '/0/2290/2317/', '3', '450305', 'QXQ', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2323', '雁山区', '雁山', '999', '6', '', '2317', '/0/2290/2317/', '3', '450311', 'YSQ', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2324', '临桂区', '临桂', '999', '6', '', '2317', '/0/2290/2317/', '3', '450312', 'LGQ', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2325', '阳朔县', '阳朔', '999', '6', '', '2317', '/0/2290/2317/', '3', '450321', 'YSX', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2326', '灵川县', '灵川', '999', '6', '', '2317', '/0/2290/2317/', '3', '450323', 'LCX', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2327', '全州县', '全州', '999', '6', '', '2317', '/0/2290/2317/', '3', '450324', 'QZX', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2328', '兴安县', '兴安县', '999', '9', '', '2317', '/0/2290/2317/', '3', '450325', 'XAX', '1', '1', '2017-03-09 11:54:24', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('2329', '永福县', '永福', '999', '6', '', '2317', '/0/2290/2317/', '3', '450326', 'YFX', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2330', '灌阳县', '灌阳', '999', '6', '', '2317', '/0/2290/2317/', '3', '450327', 'GYX', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2331', '龙胜各族自治县', '龙胜', '999', '6', '', '2317', '/0/2290/2317/', '3', '450328', 'LSGZZZX', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2332', '资源县', '资源县', '999', '9', '', '2317', '/0/2290/2317/', '3', '450329', 'ZYX', '1', '1', '2017-03-09 11:54:24', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2333', '平乐县', '平乐', '999', '6', '', '2317', '/0/2290/2317/', '3', '450330', 'PLX', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2334', '荔浦县', '荔浦', '999', '6', '', '2317', '/0/2290/2317/', '3', '450331', 'LPX', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2335', '恭城瑶族自治县', '恭城', '999', '6', '', '2317', '/0/2290/2317/', '3', '450332', 'GCYZZZX', '1', '1', '2017-03-09 11:54:24', '1', '2017-03-09 11:54:24');
INSERT INTO `god_area` VALUES ('2336', '梧州市', '梧州', '999', '6', '', '2290', '/0/2290/', '2', '450400', 'WZS', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2338', '万秀区', '万秀', '999', '6', '', '2336', '/0/2290/2336/', '3', '450403', 'WXQ', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2339', '长洲区', '长洲', '999', '6', '', '2336', '/0/2290/2336/', '3', '450405', 'CZQ', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2340', '龙圩区', '龙圩', '999', '6', '', '2336', '/0/2290/2336/', '3', '450406', 'LQ', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2341', '苍梧县', '苍梧', '999', '6', '', '2336', '/0/2290/2336/', '3', '450421', 'CWX', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2342', '藤县', '藤县', '999', '6', '', '2336', '/0/2290/2336/', '3', '450422', 'TX', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2343', '蒙山县', '蒙山', '999', '6', '', '2336', '/0/2290/2336/', '3', '450423', 'MSX', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2344', '岑溪市', '岑溪', '999', '6', '', '2336', '/0/2290/2336/', '3', '450481', 'XS', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2345', '北海市', '北海', '999', '6', '', '2290', '/0/2290/', '2', '450500', 'BIS', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2347', '海城区', '海城区', '999', '9', '', '2345', '/0/2290/2345/', '3', '450502', 'ICQ', '1', '1', '2017-03-09 11:54:25', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('2348', '银海区', '银海', '999', '6', '', '2345', '/0/2290/2345/', '3', '450503', 'YIQ', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2349', '铁山港区', '铁山港', '999', '9', '', '2345', '/0/2290/2345/', '3', '450512', 'TSGQ', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2350', '合浦县', '合浦', '999', '6', '', '2345', '/0/2290/2345/', '3', '450521', 'IPX', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2351', '防城港市', '防城港', '999', '9', '', '2290', '/0/2290/', '2', '450600', 'FCGS', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2353', '港口区', '港口', '999', '6', '', '2351', '/0/2290/2351/', '3', '450602', 'GKQ', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2354', '防城区', '防城区', '999', '9', '', '2351', '/0/2290/2351/', '3', '450603', 'FCQ', '1', '1', '2017-03-09 11:54:25', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2355', '上思县', '上思', '999', '6', '', '2351', '/0/2290/2351/', '3', '450621', 'SSX', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2356', '东兴市', '东兴', '999', '6', '', '2351', '/0/2290/2351/', '3', '450681', 'DXS', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2357', '钦州市', '钦州', '999', '6', '', '2290', '/0/2290/', '2', '450700', 'QZS', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2359', '钦南区', '钦南区', '999', '6', '', '2357', '/0/2290/2357/', '3', '450702', 'QNQ', '1', '1', '2017-03-09 11:54:25', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('2360', '钦北区', '钦北区', '999', '6', '', '2357', '/0/2290/2357/', '3', '450703', 'QBQ', '1', '1', '2017-03-09 11:54:25', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('2361', '灵山县', '灵山', '999', '6', '', '2357', '/0/2290/2357/', '3', '450721', 'LSX', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2362', '浦北县', '浦北', '999', '6', '', '2357', '/0/2290/2357/', '3', '450722', 'PBX', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2363', '贵港市', '贵港', '999', '6', '', '2290', '/0/2290/', '2', '450800', 'GGS', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2365', '港北区', '港北区', '999', '6', '', '2363', '/0/2290/2363/', '3', '450802', 'GBQ', '1', '1', '2017-03-09 11:54:25', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('2366', '港南区', '港南区', '999', '6', '', '2363', '/0/2290/2363/', '3', '450803', 'GNQ', '1', '1', '2017-03-09 11:54:25', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('2367', '覃塘区', '覃塘', '999', '6', '', '2363', '/0/2290/2363/', '3', '450804', 'TQ', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2368', '平南县', '平南', '999', '6', '', '2363', '/0/2290/2363/', '3', '450821', 'PNX', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2369', '桂平市', '桂平', '999', '6', '', '2363', '/0/2290/2363/', '3', '450881', 'GPS', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2370', '玉林市', '玉林', '999', '6', '', '2290', '/0/2290/', '2', '450900', 'YLS', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2372', '玉州区', '玉州', '999', '6', '', '2370', '/0/2290/2370/', '3', '450902', 'YZQ', '1', '1', '2017-03-09 11:54:25', '1', '2017-03-09 11:54:25');
INSERT INTO `god_area` VALUES ('2373', '福绵区', '福绵', '999', '6', '', '2370', '/0/2290/2370/', '3', '450903', 'FMQ', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2374', '容县', '容县', '999', '6', '', '2370', '/0/2290/2370/', '3', '450921', 'RX', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2375', '陆川县', '陆川', '999', '6', '', '2370', '/0/2290/2370/', '3', '450922', 'LCX', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2376', '博白县', '博白', '999', '6', '', '2370', '/0/2290/2370/', '3', '450923', 'BBX', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2377', '兴业县', '兴业', '999', '6', '', '2370', '/0/2290/2370/', '3', '450924', 'XYX', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2378', '北流市', '北流', '999', '6', '', '2370', '/0/2290/2370/', '3', '450981', 'BLS', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2379', '百色市', '百色', '999', '6', '', '2290', '/0/2290/', '2', '451000', 'BSS', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2381', '右江区', '右江', '999', '6', '', '2379', '/0/2290/2379/', '3', '451002', 'YJQ', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2382', '田阳县', '田阳', '999', '6', '', '2379', '/0/2290/2379/', '3', '451021', 'TYX', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2383', '田东县', '田东', '999', '6', '', '2379', '/0/2290/2379/', '3', '451022', 'TDX', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2384', '平果县', '平果', '999', '6', '', '2379', '/0/2290/2379/', '3', '451023', 'PGX', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2385', '德保县', '德保', '999', '6', '', '2379', '/0/2290/2379/', '3', '451024', 'DBX', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2386', '靖西市', '靖西', '999', '6', '', '2379', '/0/2290/2379/', '3', '451025', 'JXS', '1', '1', '2017-03-09 11:54:26', '6', '2017-08-18 15:07:45');
INSERT INTO `god_area` VALUES ('2387', '那坡县', '那坡', '999', '6', '', '2379', '/0/2290/2379/', '3', '451026', 'NPX', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2388', '凌云县', '凌云', '999', '6', '', '2379', '/0/2290/2379/', '3', '451027', 'LYX', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2389', '乐业县', '乐业', '999', '6', '', '2379', '/0/2290/2379/', '3', '451028', 'LYX', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2390', '田林县', '田林', '999', '6', '', '2379', '/0/2290/2379/', '3', '451029', 'TLX', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2391', '西林县', '西林', '999', '6', '', '2379', '/0/2290/2379/', '3', '451030', 'XLX', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2392', '隆林各族自治县', '隆林', '999', '6', '', '2379', '/0/2290/2379/', '3', '451031', 'LLGZZZX', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2393', '贺州市', '贺州', '999', '6', '', '2290', '/0/2290/', '2', '451100', 'IZS', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2395', '八步区', '八步区', '999', '9', '', '2393', '/0/2290/2393/', '3', '451102', 'BBQ', '1', '88', '2017-03-09 11:54:26', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2396', '昭平县', '昭平', '999', '6', '', '2393', '/0/2290/2393/', '3', '451121', 'ZPX', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2397', '钟山县', '钟山', '999', '6', '', '2393', '/0/2290/2393/', '3', '451122', 'ZSX', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2398', '富川瑶族自治县', '富川', '999', '6', '', '2393', '/0/2290/2393/', '3', '451123', 'FCYZZZX', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2399', '河池市', '河池', '999', '6', '', '2290', '/0/2290/', '2', '451200', 'ICS', '1', '1', '2017-03-09 11:54:26', '1', '2017-03-09 11:54:26');
INSERT INTO `god_area` VALUES ('2401', '金城江区', '金城江', '999', '9', '', '2399', '/0/2290/2399/', '3', '451202', 'JCJQ', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2402', '南丹县', '南丹', '999', '6', '', '2399', '/0/2290/2399/', '3', '451221', 'NDX', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2403', '天峨县', '天峨', '999', '6', '', '2399', '/0/2290/2399/', '3', '451222', 'TEX', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2404', '凤山县', '凤山', '999', '6', '', '2399', '/0/2290/2399/', '3', '451223', 'FSX', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2405', '东兰县', '东兰', '999', '6', '', '2399', '/0/2290/2399/', '3', '451224', 'DLX', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2406', '罗城仫佬族自治县', '罗城', '999', '6', '', '2399', '/0/2290/2399/', '3', '451225', 'LCLZZZX', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2407', '环江毛南族自治县', '环江', '999', '6', '', '2399', '/0/2290/2399/', '3', '451226', 'IJMNZZZX', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2408', '巴马瑶族自治县', '巴马', '999', '6', '', '2399', '/0/2290/2399/', '3', '451227', 'BMYZZZX', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2409', '都安瑶族自治县', '都安', '999', '6', '', '2399', '/0/2290/2399/', '3', '451228', 'DAYZZZX', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2410', '大化瑶族自治县', '大化', '999', '6', '', '2399', '/0/2290/2399/', '3', '451229', 'DIYZZZX', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2411', '宜州区', '宜州', '999', '6', '', '2399', '/0/2290/2399/', '3', '451281', 'YZS', '1', '1', '2017-03-09 11:54:27', '12', '2018-06-21 14:19:10');
INSERT INTO `god_area` VALUES ('2412', '来宾市', '来宾', '999', '6', '', '2290', '/0/2290/', '2', '451300', 'LBS', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2414', '兴宾区', '兴宾', '999', '6', '', '2412', '/0/2290/2412/', '3', '451302', 'XBQ', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2415', '忻城县', '忻城', '999', '6', '', '2412', '/0/2290/2412/', '3', '451321', 'XCX', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2416', '象州县', '象州', '999', '6', '', '2412', '/0/2290/2412/', '3', '451322', 'XZX', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2417', '武宣县', '武宣', '999', '6', '', '2412', '/0/2290/2412/', '3', '451323', 'WXX', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2418', '金秀瑶族自治县', '金秀', '999', '6', '', '2412', '/0/2290/2412/', '3', '451324', 'JXYZZZX', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2419', '合山市', '合山', '999', '6', '', '2412', '/0/2290/2412/', '3', '451381', 'ISS', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2420', '崇左市', '崇左', '999', '6', '', '2290', '/0/2290/', '2', '451400', 'CZS', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2422', '江州区', '江州', '999', '6', '', '2420', '/0/2290/2420/', '3', '451402', 'JZQ', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2423', '扶绥县', '扶绥', '999', '6', '', '2420', '/0/2290/2420/', '3', '451421', 'FSX', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2424', '宁明县', '宁明', '999', '6', '', '2420', '/0/2290/2420/', '3', '451422', 'NMX', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2425', '龙州县', '龙州', '999', '6', '', '2420', '/0/2290/2420/', '3', '451423', 'LZX', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2426', '大新县', '大新', '999', '6', '', '2420', '/0/2290/2420/', '3', '451424', 'DXX', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2427', '天等县', '天等', '999', '6', '', '2420', '/0/2290/2420/', '3', '451425', 'TDX', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2428', '凭祥市', '凭祥', '999', '6', '', '2420', '/0/2290/2420/', '3', '451481', 'PXS', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2429', '海南省', '海南', '999', '6', '', '0', '/0/', '1', '460000', 'INS', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2430', '海口市', '海口', '999', '6', '', '2429', '/0/2429/', '2', '460100', 'IKS', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2432', '秀英区', '秀英', '999', '6', '', '2430', '/0/2429/2430/', '3', '460105', 'XYQ', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2433', '龙华区', '龙华', '999', '6', '', '2430', '/0/2429/2430/', '3', '460106', 'LIQ', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2434', '琼山区', '琼山', '999', '6', '', '2430', '/0/2429/2430/', '3', '460107', 'QSQ', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2435', '美兰区', '美兰', '999', '6', '', '2430', '/0/2429/2430/', '3', '460108', 'MLQ', '1', '1', '2017-03-09 11:54:27', '1', '2017-03-09 11:54:27');
INSERT INTO `god_area` VALUES ('2436', '三亚市', '三亚', '999', '6', '', '2429', '/0/2429/', '2', '460200', 'SYS', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2438', '海棠区', '海棠', '999', '6', '', '2436', '/0/2429/2436/', '3', '460202', 'ITQ', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2439', '吉阳区', '吉阳', '999', '6', '', '2436', '/0/2429/2436/', '3', '460203', 'JYQ', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2440', '天涯区', '天涯区', '999', '9', '', '2436', '/0/2429/2436/', '3', '460204', 'TYQ', '1', '1', '2017-03-09 11:54:28', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('2441', '崖州区', '崖州', '999', '6', '', '2436', '/0/2429/2436/', '3', '460205', 'YZQ', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2442', '三沙市', '三沙', '999', '6', '', '2429', '/0/2429/', '2', '460300', 'SSS', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2444', '五指山市', '五指山', '999', '9', '', '2429', '/0/2429/', '2', '469001', 'WZSS', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2445', '琼海市', '琼海', '999', '6', '', '2429', '/0/2429/', '2', '469002', 'QIS', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2446', '儋州市', '儋州', '999', '6', '', '2429', '/0/2429/', '2', '469003', 'ZS', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2447', '文昌市', '文昌', '999', '6', '', '2429', '/0/2429/', '2', '469005', 'WCS', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2448', '万宁市', '万宁', '999', '6', '', '2429', '/0/2429/', '2', '469006', 'WNS', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2449', '东方市', '东方', '999', '6', '', '2429', '/0/2429/', '2', '469007', 'DFS', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2450', '定安县', '定安', '999', '6', '', '2429', '/0/2429/', '2', '469021', 'DAX', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2451', '屯昌县', '屯昌', '999', '6', '', '2429', '/0/2429/', '2', '469022', 'TCX', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2452', '澄迈县', '澄迈', '999', '6', '', '2429', '/0/2429/', '2', '469023', 'CMX', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2453', '临高县', '临高', '999', '6', '', '2429', '/0/2429/', '2', '469024', 'LGX', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2454', '白沙黎族自治县', '白沙', '999', '6', '', '2429', '/0/2429/', '2', '469025', 'BSLZZZX', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2455', '昌江黎族自治县', '昌江', '999', '6', '', '2429', '/0/2429/', '2', '469026', 'CJLZZZX', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2456', '乐东黎族自治县', '乐东', '999', '6', '', '2429', '/0/2429/', '2', '469027', 'LDLZZZX', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2457', '陵水黎族自治县', '陵水', '999', '6', '', '2429', '/0/2429/', '2', '469028', 'LSLZZZX', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2458', '保亭黎族苗族自治县', '保亭', '999', '6', '', '2429', '/0/2429/', '2', '469029', 'BTLZMZZZX', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2459', '琼中黎族苗族自治县', '琼中', '999', '6', '', '2429', '/0/2429/', '2', '469030', 'QZLZMZZZX', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2460', '重庆', '重庆', '999', '6', '', '0', '/0/', '1', '500000', 'CQS', '1', '1', '2017-03-09 11:54:28', '16', '2018-07-05 10:31:31');
INSERT INTO `god_area` VALUES ('2461', '重庆市', '重庆市', '999', '9', '', '2460', '/0/2460/', '2', '500100', 'ZQ', '1', '1', '2017-03-09 11:54:28', '16', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2462', '万州区', '万州', '999', '6', '', '2461', '/0/2460/2461/', '3', '500101', 'WZQ', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2463', '涪陵区', '涪陵', '999', '6', '', '2461', '/0/2460/2461/', '3', '500102', 'FLQ', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2464', '渝中区', '渝中', '999', '6', '', '2461', '/0/2460/2461/', '3', '500103', 'YZQ', '1', '1', '2017-03-09 11:54:28', '1', '2017-03-09 11:54:28');
INSERT INTO `god_area` VALUES ('2465', '大渡口区', '大渡口', '999', '9', '', '2461', '/0/2460/2461/', '3', '500104', 'DDKQ', '1', '1', '2017-03-09 11:54:29', '1', '2017-03-09 11:54:29');
INSERT INTO `god_area` VALUES ('2466', '江北区', '江北区', '999', '6', '', '2461', '/0/2460/2461/', '3', '500105', 'JBQ', '1', '1', '2017-03-09 11:54:29', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('2467', '沙坪坝区', '沙坪坝', '999', '9', '', '2461', '/0/2460/2461/', '3', '500106', 'SPBQ', '1', '1', '2017-03-09 11:54:29', '1', '2017-03-09 11:54:29');
INSERT INTO `god_area` VALUES ('2468', '九龙坡区', '九龙坡', '999', '9', '', '2461', '/0/2460/2461/', '3', '500107', 'JLPQ', '1', '1', '2017-03-09 11:54:29', '1', '2017-03-09 11:54:29');
INSERT INTO `god_area` VALUES ('2469', '南岸区', '南岸区', '999', '9', '', '2461', '/0/2460/2461/', '3', '500108', 'NAQ', '1', '1', '2017-03-09 11:54:29', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2470', '北碚区', '北碚', '999', '6', '', '2461', '/0/2460/2461/', '3', '500109', 'BQ', '1', '1', '2017-03-09 11:54:29', '1', '2017-03-09 11:54:29');
INSERT INTO `god_area` VALUES ('2471', '綦江区', '綦江', '999', '6', '', '2461', '/0/2460/2461/', '3', '500110', 'JQ', '1', '1', '2017-03-09 11:54:29', '1', '2017-03-09 11:54:29');
INSERT INTO `god_area` VALUES ('2472', '大足区', '大足', '999', '6', '', '2461', '/0/2460/2461/', '3', '500111', 'DZQ', '1', '1', '2017-03-09 11:54:29', '1', '2017-03-09 11:54:29');
INSERT INTO `god_area` VALUES ('2473', '渝北区', '渝北区', '999', '6', '', '2461', '/0/2460/2461/', '3', '500112', 'YBQ', '1', '1', '2017-03-09 11:54:29', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('2474', '巴南区', '巴南区', '999', '6', '', '2461', '/0/2460/2461/', '3', '500113', 'BNQ', '1', '1', '2017-03-09 11:54:29', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('2475', '黔江区', '黔江', '999', '6', '', '2461', '/0/2460/2461/', '3', '500114', 'QJQ', '1', '1', '2017-03-09 11:54:29', '1', '2017-03-09 11:54:29');
INSERT INTO `god_area` VALUES ('2476', '长寿区', '长寿', '999', '6', '', '2461', '/0/2460/2461/', '3', '500115', 'CSQ', '1', '1', '2017-03-09 11:54:29', '1', '2017-03-09 11:54:29');
INSERT INTO `god_area` VALUES ('2477', '江津区', '江津', '999', '6', '', '2461', '/0/2460/2461/', '3', '500116', 'JJQ', '1', '1', '2017-03-09 11:54:29', '1', '2017-03-09 11:54:29');
INSERT INTO `god_area` VALUES ('2478', '合川区', '合川', '999', '6', '', '2461', '/0/2460/2461/', '3', '500117', 'ICQ', '1', '1', '2017-03-09 11:54:29', '1', '2017-03-09 11:54:29');
INSERT INTO `god_area` VALUES ('2479', '永川区', '永川', '999', '6', '', '2461', '/0/2460/2461/', '3', '500118', 'YCQ', '1', '1', '2017-03-09 11:54:29', '1', '2017-03-09 11:54:29');
INSERT INTO `god_area` VALUES ('2480', '南川区', '南川', '999', '6', '', '2461', '/0/2460/2461/', '3', '500119', 'NCQ', '1', '1', '2017-03-09 11:54:29', '1', '2017-03-09 11:54:29');
INSERT INTO `god_area` VALUES ('2481', '璧山区', '璧山', '999', '6', '', '2461', '/0/2460/2461/', '3', '500120', 'SQ', '1', '1', '2017-03-09 11:54:29', '1', '2017-03-09 11:54:29');
INSERT INTO `god_area` VALUES ('2482', '铜梁区', '铜梁', '999', '6', '', '2461', '/0/2460/2461/', '3', '500151', 'TLQ', '1', '1', '2017-03-09 11:54:29', '1', '2017-03-09 11:54:29');
INSERT INTO `god_area` VALUES ('2483', '潼南区', '潼南区', '999', '6', '', '2461', '/0/2460/2461/', '3', '500223', 'NQ', '1', '1', '2017-03-09 11:54:29', '6', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('2484', '荣昌区', '荣昌', '999', '6', '', '2461', '/0/2460/2461/', '3', '500226', 'RCQ', '1', '1', '2017-03-09 11:54:29', '6', '2017-08-10 10:13:07');
INSERT INTO `god_area` VALUES ('2485', '梁平区', '梁平', '999', '6', '', '2461', '/0/2460/2461/', '3', '500228', 'LPX', '1', '1', '2017-03-09 11:54:29', '16', '2018-05-30 16:36:14');
INSERT INTO `god_area` VALUES ('2486', '城口县', '城口', '999', '6', '', '2461', '/0/2460/2461/', '3', '500229', 'CKX', '1', '1', '2017-03-09 11:54:29', '1', '2017-03-09 11:54:29');
INSERT INTO `god_area` VALUES ('2487', '丰都县', '丰都', '999', '6', '', '2461', '/0/2460/2461/', '3', '500230', 'FDX', '1', '1', '2017-03-09 11:54:29', '1', '2017-03-09 11:54:29');
INSERT INTO `god_area` VALUES ('2488', '垫江县', '垫江', '999', '6', '', '2461', '/0/2460/2461/', '3', '500231', 'DJX', '1', '1', '2017-03-09 11:54:29', '1', '2017-03-09 11:54:29');
INSERT INTO `god_area` VALUES ('2489', '武隆区', '武隆', '999', '6', '', '2461', '/0/2460/2461/', '3', '500232', 'WLX', '1', '1', '2017-03-09 11:54:29', '16', '2018-06-04 09:36:09');
INSERT INTO `god_area` VALUES ('2490', '忠县', '忠县', '999', '6', '', '2461', '/0/2460/2461/', '3', '500233', 'ZX', '1', '1', '2017-03-09 11:54:29', '1', '2017-03-09 11:54:29');
INSERT INTO `god_area` VALUES ('2491', '开县', '开县', '999', '6', '', '2461', '/0/2460/2461/', '3', '500234', null, '0', '1', '2017-03-09 11:54:29', '6', '2017-08-10 10:13:58');
INSERT INTO `god_area` VALUES ('2492', '云阳县', '云阳', '999', '6', '', '2461', '/0/2460/2461/', '3', '500235', 'YYX', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2493', '奉节县', '奉节', '999', '6', '', '2461', '/0/2460/2461/', '3', '500236', 'FJX', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2494', '巫山县', '巫山', '999', '6', '', '2461', '/0/2460/2461/', '3', '500237', 'WSX', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2495', '巫溪县', '巫溪', '999', '6', '', '2461', '/0/2460/2461/', '3', '500238', 'WXX', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2496', '石柱土家族自治县', '石柱', '999', '6', '', '2461', '/0/2460/2461/', '3', '500240', 'SZTJZZZX', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2497', '秀山土家族苗族自治县', '秀山', '999', '6', '', '2461', '/0/2460/2461/', '3', '500241', 'XSTJZMZZZX', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2498', '酉阳土家族苗族自治县', '酉阳', '999', '6', '', '2461', '/0/2460/2461/', '3', '500242', 'YYTJZMZZZX', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2499', '彭水苗族土家族自治县', '彭水', '999', '6', '', '2461', '/0/2460/2461/', '3', '500243', 'PSMZTJZZZX', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2500', '四川省', '四川', '999', '6', '', '0', '/0/', '1', '510000', 'SCS', '1', '1', '2017-03-09 11:54:30', '1', '2017-06-28 09:52:48');
INSERT INTO `god_area` VALUES ('2501', '成都市', '成都', '999', '6', '', '2500', '/0/2500/', '2', '510100', 'CDS', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2503', '锦江区', '锦江', '999', '6', '', '2501', '/0/2500/2501/', '3', '510104', 'JJQ', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2504', '青羊区', '青羊', '999', '6', '', '2501', '/0/2500/2501/', '3', '510105', 'QYQ', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2505', '金牛区', '金牛', '999', '6', '', '2501', '/0/2500/2501/', '3', '510106', 'JNQ', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2506', '武侯区', '武侯', '999', '6', '', '2501', '/0/2500/2501/', '3', '510107', 'WIQ', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2507', '成华区', '成华', '999', '6', '', '2501', '/0/2500/2501/', '3', '510108', 'CIQ', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2508', '龙泉驿区', '龙泉驿', '999', '9', '', '2501', '/0/2500/2501/', '3', '510112', 'LQQ', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2509', '青白江区', '青白江', '999', '9', '', '2501', '/0/2500/2501/', '3', '510113', 'QBJQ', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2510', '新都区', '新都', '999', '6', '', '2501', '/0/2500/2501/', '3', '510114', 'XDQ', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2511', '温江区', '温江', '999', '6', '', '2501', '/0/2500/2501/', '3', '510115', 'WJQ', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2512', '金堂县', '金堂', '999', '6', '', '2501', '/0/2500/2501/', '3', '510121', 'JTX', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2513', '双流区', '双流', '999', '6', '', '2501', '/0/2500/2501/', '3', '510122', 'SLX', '1', '1', '2017-03-09 11:54:30', '16', '2018-05-12 16:13:43');
INSERT INTO `god_area` VALUES ('2514', '郫都区', '郫都', '999', '6', '', '2501', '/0/2500/2501/', '3', '510124', 'DQ', '1', '1', '2017-03-09 11:54:30', '12', '2017-10-12 16:05:48');
INSERT INTO `god_area` VALUES ('2515', '大邑县', '大邑', '999', '6', '', '2501', '/0/2500/2501/', '3', '510129', 'DYX', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2516', '蒲江县', '蒲江', '999', '6', '', '2501', '/0/2500/2501/', '3', '510131', 'PJX', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2517', '新津县', '新津', '999', '6', '', '2501', '/0/2500/2501/', '3', '510132', 'XJX', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2518', '都江堰市', '都江堰', '999', '9', '', '2501', '/0/2500/2501/', '3', '510181', 'DJYS', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2519', '彭州市', '彭州', '999', '6', '', '2501', '/0/2500/2501/', '3', '510182', 'PZS', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2520', '邛崃市', '邛崃', '999', '6', '', '2501', '/0/2500/2501/', '3', '510183', 'S', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2521', '崇州市', '崇州', '999', '6', '', '2501', '/0/2500/2501/', '3', '510184', 'CZS', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2522', '自贡市', '自贡', '999', '6', '', '2500', '/0/2500/', '2', '510300', 'ZGS', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2524', '自流井区', '自流井', '999', '9', '', '2522', '/0/2500/2522/', '3', '510302', 'ZLJQ', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2525', '贡井区', '贡井', '999', '6', '', '2522', '/0/2500/2522/', '3', '510303', 'GJQ', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2526', '大安区', '大安', '999', '6', '', '2522', '/0/2500/2522/', '3', '510304', 'DAQ', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2527', '沿滩区', '沿滩', '999', '6', '', '2522', '/0/2500/2522/', '3', '510311', 'YTQ', '1', '1', '2017-03-09 11:54:30', '1', '2017-03-09 11:54:30');
INSERT INTO `god_area` VALUES ('2528', '荣县', '荣县', '999', '6', '', '2522', '/0/2500/2522/', '3', '510321', 'RX', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2529', '富顺县', '富顺', '999', '6', '', '2522', '/0/2500/2522/', '3', '510322', 'FSX', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2530', '攀枝花市', '攀枝花', '999', '9', '', '2500', '/0/2500/', '2', '510400', 'PZIS', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2532', '东区', '东区', '999', '6', '', '2530', '/0/2500/2530/', '3', '510402', 'DQ', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2533', '西区', '西区', '999', '6', '', '2530', '/0/2500/2530/', '3', '510403', 'XQ', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2534', '仁和区', '仁和', '999', '6', '', '2530', '/0/2500/2530/', '3', '510411', 'RIQ', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2535', '米易县', '米易', '999', '6', '', '2530', '/0/2500/2530/', '3', '510421', 'MYX', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2536', '盐边县', '盐边', '999', '6', '', '2530', '/0/2500/2530/', '3', '510422', 'YBX', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2537', '泸州市', '泸州', '999', '6', '', '2500', '/0/2500/', '2', '510500', 'ZS', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2539', '江阳区', '江阳', '999', '6', '', '2537', '/0/2500/2537/', '3', '510502', 'JYQ', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2540', '纳溪区', '纳溪', '999', '6', '', '2537', '/0/2500/2537/', '3', '510503', 'NXQ', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2541', '龙马潭区', '龙马潭', '999', '9', '', '2537', '/0/2500/2537/', '3', '510504', 'LMTQ', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2542', '泸县', '泸县', '999', '6', '', '2537', '/0/2500/2537/', '3', '510521', 'X', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2543', '合江县', '合江', '999', '6', '', '2537', '/0/2500/2537/', '3', '510522', 'IJX', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2544', '叙永县', '叙永', '999', '6', '', '2537', '/0/2500/2537/', '3', '510524', 'XYX', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2545', '古蔺县', '古蔺', '999', '6', '', '2537', '/0/2500/2537/', '3', '510525', 'GX', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2546', '德阳市', '德阳', '999', '6', '', '2500', '/0/2500/', '2', '510600', 'DYS', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2548', '旌阳区', '旌阳', '999', '6', '', '2546', '/0/2500/2546/', '3', '510603', 'YQ', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2549', '中江县', '中江', '999', '6', '', '2546', '/0/2500/2546/', '3', '510623', 'ZJX', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2550', '罗江区', '罗江', '999', '6', '', '2546', '/0/2500/2546/', '3', '510626', 'LJX', '1', '1', '2017-03-09 11:54:31', '16', '2018-07-16 16:13:39');
INSERT INTO `god_area` VALUES ('2551', '广汉市', '广汉', '999', '6', '', '2546', '/0/2500/2546/', '3', '510681', 'GIS', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2552', '什邡市', '什邡', '999', '6', '', '2546', '/0/2500/2546/', '3', '510682', 'SS', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2553', '绵竹市', '绵竹', '999', '6', '', '2546', '/0/2500/2546/', '3', '510683', 'MZS', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2554', '绵阳市', '绵阳', '999', '6', '', '2500', '/0/2500/', '2', '510700', 'MYS', '1', '1', '2017-03-09 11:54:31', '1', '2017-03-09 11:54:31');
INSERT INTO `god_area` VALUES ('2556', '涪城区', '涪城区', '999', '9', '', '2554', '/0/2500/2554/', '3', '510703', 'FCQ', '1', '1', '2017-03-09 11:54:32', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('2557', '游仙区', '游仙', '999', '6', '', '2554', '/0/2500/2554/', '3', '510704', 'YXQ', '1', '1', '2017-03-09 11:54:32', '1', '2017-03-09 11:54:32');
INSERT INTO `god_area` VALUES ('2558', '三台县', '三台', '999', '6', '', '2554', '/0/2500/2554/', '3', '510722', 'STX', '1', '1', '2017-03-09 11:54:32', '1', '2017-03-09 11:54:32');
INSERT INTO `god_area` VALUES ('2559', '盐亭县', '盐亭', '999', '6', '', '2554', '/0/2500/2554/', '3', '510723', 'YTX', '1', '1', '2017-03-09 11:54:32', '1', '2017-03-09 11:54:32');
INSERT INTO `god_area` VALUES ('2560', '安州区', '安州', '999', '6', '', '2554', '/0/2500/2554/', '3', '510724', 'AX', '1', '1', '2017-03-09 11:54:32', '16', '2018-05-10 15:20:41');
INSERT INTO `god_area` VALUES ('2561', '梓潼县', '梓潼', '999', '6', '', '2554', '/0/2500/2554/', '3', '510725', 'X', '1', '1', '2017-03-09 11:54:32', '1', '2017-03-09 11:54:32');
INSERT INTO `god_area` VALUES ('2562', '北川羌族自治县', '北川', '999', '6', '', '2554', '/0/2500/2554/', '3', '510726', 'BCQZZZX', '1', '1', '2017-03-09 11:54:32', '1', '2017-03-09 11:54:32');
INSERT INTO `god_area` VALUES ('2563', '平武县', '平武', '999', '6', '', '2554', '/0/2500/2554/', '3', '510727', 'PWX', '1', '1', '2017-03-09 11:54:32', '1', '2017-03-09 11:54:32');
INSERT INTO `god_area` VALUES ('2564', '江油市', '江油', '999', '6', '', '2554', '/0/2500/2554/', '3', '510781', 'JYS', '1', '1', '2017-03-09 11:54:32', '1', '2017-03-09 11:54:32');
INSERT INTO `god_area` VALUES ('2565', '广元市', '广元', '999', '6', '', '2500', '/0/2500/', '2', '510800', 'GYS', '1', '1', '2017-03-09 11:54:32', '1', '2017-03-09 11:54:32');
INSERT INTO `god_area` VALUES ('2567', '利州区', '利州', '999', '6', '', '2565', '/0/2500/2565/', '3', '510802', 'LZQ', '1', '1', '2017-03-09 11:54:32', '1', '2017-03-09 11:54:32');
INSERT INTO `god_area` VALUES ('2568', '昭化区', '昭化', '999', '6', '', '2565', '/0/2500/2565/', '3', '510811', 'ZIQ', '1', '1', '2017-03-09 11:54:32', '1', '2017-03-09 11:54:32');
INSERT INTO `god_area` VALUES ('2569', '朝天区', '朝天', '999', '6', '', '2565', '/0/2500/2565/', '3', '510812', 'CTQ', '1', '1', '2017-03-09 11:54:32', '1', '2017-03-09 11:54:32');
INSERT INTO `god_area` VALUES ('2570', '旺苍县', '旺苍', '999', '6', '', '2565', '/0/2500/2565/', '3', '510821', 'WCX', '1', '1', '2017-03-09 11:54:32', '1', '2017-03-09 11:54:32');
INSERT INTO `god_area` VALUES ('2571', '青川县', '青川', '999', '6', '', '2565', '/0/2500/2565/', '3', '510822', 'QCX', '1', '1', '2017-03-09 11:54:32', '1', '2017-03-09 11:54:32');
INSERT INTO `god_area` VALUES ('2572', '剑阁县', '剑阁', '999', '6', '', '2565', '/0/2500/2565/', '3', '510823', 'JGX', '1', '1', '2017-03-09 11:54:32', '1', '2017-03-09 11:54:32');
INSERT INTO `god_area` VALUES ('2573', '苍溪县', '苍溪', '999', '6', '', '2565', '/0/2500/2565/', '3', '510824', 'CXX', '1', '1', '2017-03-09 11:54:32', '1', '2017-03-09 11:54:32');
INSERT INTO `god_area` VALUES ('2574', '遂宁市', '遂宁', '999', '6', '', '2500', '/0/2500/', '2', '510900', 'SNS', '1', '1', '2017-03-09 11:54:32', '1', '2017-03-09 11:54:32');
INSERT INTO `god_area` VALUES ('2576', '船山区', '船山', '999', '6', '', '2574', '/0/2500/2574/', '3', '510903', 'CSQ', '1', '1', '2017-03-09 11:54:32', '1', '2017-03-09 11:54:32');
INSERT INTO `god_area` VALUES ('2577', '安居区', '安居', '999', '6', '', '2574', '/0/2500/2574/', '3', '510904', 'AJQ', '1', '1', '2017-03-09 11:54:33', '1', '2017-03-09 11:54:33');
INSERT INTO `god_area` VALUES ('2578', '蓬溪县', '蓬溪', '999', '6', '', '2574', '/0/2500/2574/', '3', '510921', 'PXX', '1', '1', '2017-03-09 11:54:33', '1', '2017-03-09 11:54:33');
INSERT INTO `god_area` VALUES ('2579', '射洪县', '射洪', '999', '6', '', '2574', '/0/2500/2574/', '3', '510922', 'SIX', '1', '1', '2017-03-09 11:54:33', '1', '2017-03-09 11:54:33');
INSERT INTO `god_area` VALUES ('2580', '大英县', '大英', '999', '6', '', '2574', '/0/2500/2574/', '3', '510923', 'DYX', '1', '1', '2017-03-09 11:54:33', '1', '2017-03-09 11:54:33');
INSERT INTO `god_area` VALUES ('2581', '内江市', '内江', '999', '6', '', '2500', '/0/2500/', '2', '511000', 'NJS', '1', '1', '2017-03-09 11:54:33', '1', '2017-03-09 11:54:33');
INSERT INTO `god_area` VALUES ('2584', '东兴区', '东兴', '999', '6', '', '2581', '/0/2500/2581/', '3', '511011', 'DXQ', '1', '1', '2017-03-09 11:54:33', '1', '2018-11-30 15:30:36');
INSERT INTO `god_area` VALUES ('2585', '威远县', '威远', '999', '6', '', '2581', '/0/2500/2581/', '3', '511024', 'WYX', '1', '1', '2017-03-09 11:54:33', '1', '2017-03-09 11:54:33');
INSERT INTO `god_area` VALUES ('2586', '资中县', '资中', '999', '6', '', '2581', '/0/2500/2581/', '3', '511025', 'ZZX', '1', '1', '2017-03-09 11:54:33', '1', '2017-03-09 11:54:33');
INSERT INTO `god_area` VALUES ('2587', '隆昌市', '隆昌', '999', '6', '', '2581', '/0/2500/2581/', '3', '511028', 'LCS', '1', '1', '2017-03-09 11:54:33', '16', '2018-04-16 16:37:25');
INSERT INTO `god_area` VALUES ('2588', '乐山市', '乐山', '999', '6', '', '2581', '/0/2500/2581/', '3', '511100', 'LSS', '0', '88', '2017-03-09 11:54:33', '88', '2018-11-20 18:50:00');
INSERT INTO `god_area` VALUES ('2591', '沙湾区', '沙湾', '999', '6', '', '2581', '/0/2500/2581/', '3', '511111', 'SWQ', '0', '88', '2017-03-09 11:54:33', '88', '2018-11-20 18:50:00');
INSERT INTO `god_area` VALUES ('2592', '五通桥区', '五通桥', '999', '9', '', '2581', '/0/2500/2581/', '3', '511112', 'WTQQ', '0', '88', '2017-03-09 11:54:33', '88', '2018-11-20 18:50:00');
INSERT INTO `god_area` VALUES ('2593', '金口河区', '金口河', '999', '9', '', '2581', '/0/2500/2581/', '3', '511113', 'JKIQ', '0', '88', '2017-03-09 11:54:33', '88', '2018-11-20 18:50:00');
INSERT INTO `god_area` VALUES ('2594', '犍为县', '犍为', '999', '6', '', '2581', '/0/2500/2581/', '3', '511123', 'WX', '0', '88', '2017-03-09 11:54:33', '88', '2018-11-20 18:50:00');
INSERT INTO `god_area` VALUES ('2595', '井研县', '井研', '999', '6', '', '2581', '/0/2500/2581/', '3', '511124', 'JYX', '0', '88', '2017-03-09 11:54:33', '88', '2018-11-20 18:50:00');
INSERT INTO `god_area` VALUES ('2596', '夹江县', '夹江', '999', '6', '', '2581', '/0/2500/2581/', '3', '511126', 'JJX', '0', '88', '2017-03-09 11:54:33', '88', '2018-11-20 18:50:00');
INSERT INTO `god_area` VALUES ('2597', '沐川县', '沐川', '999', '6', '', '2581', '/0/2500/2581/', '3', '511129', 'CX', '0', '88', '2017-03-09 11:54:33', '88', '2018-11-20 18:50:00');
INSERT INTO `god_area` VALUES ('2598', '峨边彝族自治县', '峨边', '999', '6', '', '2581', '/0/2500/2581/', '3', '511132', 'EBYZZZX', '0', '88', '2017-03-09 11:54:34', '88', '2018-11-20 18:50:00');
INSERT INTO `god_area` VALUES ('2599', '马边彝族自治县', '马边', '999', '6', '', '2581', '/0/2500/2581/', '3', '511133', 'MBYZZZX', '0', '88', '2017-03-09 11:54:34', '88', '2018-11-20 18:50:00');
INSERT INTO `god_area` VALUES ('2600', '峨眉山市', '峨眉山', '999', '9', '', '2581', '/0/2500/2581/', '3', '511181', 'ESS', '0', '88', '2017-03-09 11:54:34', '88', '2018-11-20 18:50:00');
INSERT INTO `god_area` VALUES ('2601', '南充市', '南充', '999', '6', '', '2500', '/0/2500/', '2', '511300', 'NCS', '1', '1', '2017-03-09 11:54:34', '1', '2017-03-09 11:54:34');
INSERT INTO `god_area` VALUES ('2603', '顺庆区', '顺庆', '999', '6', '', '2601', '/0/2500/2601/', '3', '511302', 'SQQ', '1', '1', '2017-03-09 11:54:34', '1', '2017-03-09 11:54:34');
INSERT INTO `god_area` VALUES ('2604', '高坪区', '高坪', '999', '6', '', '2601', '/0/2500/2601/', '3', '511303', 'GPQ', '1', '1', '2017-03-09 11:54:34', '1', '2017-03-09 11:54:34');
INSERT INTO `god_area` VALUES ('2605', '嘉陵区', '嘉陵', '999', '6', '', '2601', '/0/2500/2601/', '3', '511304', 'JLQ', '1', '1', '2017-03-09 11:54:34', '1', '2017-03-09 11:54:34');
INSERT INTO `god_area` VALUES ('2606', '南部县', '南部县', '999', '9', '', '2601', '/0/2500/2601/', '3', '511321', 'NBX', '1', '1', '2017-03-09 11:54:34', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('2607', '营山县', '营山', '999', '6', '', '2601', '/0/2500/2601/', '3', '511322', 'YSX', '1', '1', '2017-03-09 11:54:34', '1', '2017-03-09 11:54:34');
INSERT INTO `god_area` VALUES ('2608', '蓬安县', '蓬安', '999', '6', '', '2601', '/0/2500/2601/', '3', '511323', 'PAX', '1', '1', '2017-03-09 11:54:34', '1', '2017-03-09 11:54:34');
INSERT INTO `god_area` VALUES ('2609', '仪陇县', '仪陇', '999', '6', '', '2601', '/0/2500/2601/', '3', '511324', 'YX', '1', '1', '2017-03-09 11:54:34', '1', '2017-03-09 11:54:34');
INSERT INTO `god_area` VALUES ('2610', '西充县', '西充', '999', '6', '', '2601', '/0/2500/2601/', '3', '511325', 'XCX', '1', '1', '2017-03-09 11:54:34', '1', '2017-03-09 11:54:34');
INSERT INTO `god_area` VALUES ('2611', '阆中市', '阆中', '999', '6', '', '2601', '/0/2500/2601/', '3', '511381', 'ZS', '1', '1', '2017-03-09 11:54:34', '1', '2017-03-09 11:54:34');
INSERT INTO `god_area` VALUES ('2612', '眉山市', '眉山', '999', '6', '', '2500', '/0/2500/', '2', '511400', 'SS', '1', '1', '2017-03-09 11:54:34', '1', '2017-03-09 11:54:34');
INSERT INTO `god_area` VALUES ('2614', '东坡区', '东坡', '999', '6', '', '2612', '/0/2500/2612/', '3', '511402', 'DPQ', '1', '1', '2017-03-09 11:54:34', '1', '2017-03-09 11:54:34');
INSERT INTO `god_area` VALUES ('2615', '仁寿县', '仁寿', '999', '6', '', '2612', '/0/2500/2612/', '3', '511421', 'RSX', '1', '1', '2017-03-09 11:54:34', '1', '2017-03-09 11:54:34');
INSERT INTO `god_area` VALUES ('2616', '彭山区', '彭山', '999', '6', '', '2612', '/0/2500/2612/', '3', '511422', 'PSQ', '1', '1', '2017-03-09 11:54:34', '16', '2018-04-10 13:53:41');
INSERT INTO `god_area` VALUES ('2617', '洪雅县', '洪雅', '999', '6', '', '2612', '/0/2500/2612/', '3', '511423', 'IYX', '1', '1', '2017-03-09 11:54:35', '1', '2017-03-09 11:54:35');
INSERT INTO `god_area` VALUES ('2618', '丹棱县', '丹棱', '999', '6', '', '2612', '/0/2500/2612/', '3', '511424', 'DLX', '1', '1', '2017-03-09 11:54:35', '1', '2017-03-09 11:54:35');
INSERT INTO `god_area` VALUES ('2619', '青神县', '青神', '999', '6', '', '2612', '/0/2500/2612/', '3', '511425', 'QSX', '1', '1', '2017-03-09 11:54:35', '1', '2017-03-09 11:54:35');
INSERT INTO `god_area` VALUES ('2620', '宜宾市', '宜宾', '999', '6', '', '2500', '/0/2500/', '2', '511500', 'YBS', '1', '1', '2017-03-09 11:54:35', '1', '2017-03-09 11:54:35');
INSERT INTO `god_area` VALUES ('2622', '翠屏区', '翠屏', '999', '6', '', '2620', '/0/2500/2620/', '3', '511502', 'CPQ', '1', '1', '2017-03-09 11:54:35', '1', '2017-03-09 11:54:35');
INSERT INTO `god_area` VALUES ('2623', '南溪区', '南溪', '999', '6', '', '2620', '/0/2500/2620/', '3', '511503', 'NXQ', '1', '1', '2017-03-09 11:54:35', '1', '2017-03-09 11:54:35');
INSERT INTO `god_area` VALUES ('2624', '宜宾县', '宜宾县', '999', '9', '', '2620', '/0/2500/2620/', '3', '511521', 'YBX', '1', '88', '2017-03-09 11:54:35', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2625', '江安县', '江安', '999', '6', '', '2620', '/0/2500/2620/', '3', '511523', 'JAX', '1', '1', '2017-03-09 11:54:35', '1', '2017-03-09 11:54:35');
INSERT INTO `god_area` VALUES ('2626', '长宁县', '长宁', '999', '6', '', '2620', '/0/2500/2620/', '3', '511524', 'CNX', '1', '1', '2017-03-09 11:54:35', '1', '2017-03-09 11:54:35');
INSERT INTO `god_area` VALUES ('2627', '高县', '高县', '999', '6', '', '2620', '/0/2500/2620/', '3', '511525', 'GX', '1', '1', '2017-03-09 11:54:35', '1', '2017-03-09 11:54:35');
INSERT INTO `god_area` VALUES ('2628', '珙县', '珙县', '999', '6', '', '2620', '/0/2500/2620/', '3', '511526', 'X', '1', '1', '2017-03-09 11:54:35', '1', '2017-03-09 11:54:35');
INSERT INTO `god_area` VALUES ('2629', '筠连县', '筠连', '999', '6', '', '2620', '/0/2500/2620/', '3', '511527', 'LX', '1', '1', '2017-03-09 11:54:35', '1', '2017-03-09 11:54:35');
INSERT INTO `god_area` VALUES ('2630', '兴文县', '兴文', '999', '6', '', '2620', '/0/2500/2620/', '3', '511528', 'XWX', '1', '1', '2017-03-09 11:54:35', '1', '2017-03-09 11:54:35');
INSERT INTO `god_area` VALUES ('2631', '屏山县', '屏山', '999', '6', '', '2620', '/0/2500/2620/', '3', '511529', 'PSX', '1', '1', '2017-03-09 11:54:35', '1', '2017-03-09 11:54:35');
INSERT INTO `god_area` VALUES ('2632', '广安市', '广安', '999', '6', '', '2500', '/0/2500/', '2', '511600', 'GAS', '1', '1', '2017-03-09 11:54:35', '1', '2017-03-09 11:54:35');
INSERT INTO `god_area` VALUES ('2634', '广安区', '广安区', '999', '9', '', '2632', '/0/2500/2632/', '3', '511602', 'GAQ', '1', '88', '2017-03-09 11:54:35', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2635', '前锋区', '前锋', '999', '6', '', '2632', '/0/2500/2632/', '3', '511603', 'QFQ', '1', '1', '2017-03-09 11:54:35', '1', '2017-03-09 11:54:35');
INSERT INTO `god_area` VALUES ('2636', '岳池县', '岳池', '999', '6', '', '2632', '/0/2500/2632/', '3', '511621', 'YCX', '1', '1', '2017-03-09 11:54:35', '1', '2017-03-09 11:54:35');
INSERT INTO `god_area` VALUES ('2637', '武胜县', '武胜', '999', '6', '', '2632', '/0/2500/2632/', '3', '511622', 'WSX', '1', '1', '2017-03-09 11:54:35', '1', '2017-03-09 11:54:35');
INSERT INTO `god_area` VALUES ('2638', '邻水县', '邻水', '999', '6', '', '2632', '/0/2500/2632/', '3', '511623', 'LSX', '1', '1', '2017-03-09 11:54:35', '1', '2017-03-09 11:54:35');
INSERT INTO `god_area` VALUES ('2639', '华蓥市', '华蓥', '999', '6', '', '2632', '/0/2500/2632/', '3', '511681', 'IS', '1', '1', '2017-03-09 11:54:35', '1', '2017-03-09 11:54:35');
INSERT INTO `god_area` VALUES ('2640', '达州市', '达州', '999', '6', '', '2500', '/0/2500/', '2', '511700', 'DZS', '1', '1', '2017-03-09 11:54:35', '1', '2017-03-09 11:54:35');
INSERT INTO `god_area` VALUES ('2642', '通川区', '通川', '999', '6', '', '2640', '/0/2500/2640/', '3', '511702', 'TCQ', '1', '1', '2017-03-09 11:54:35', '1', '2017-03-09 11:54:35');
INSERT INTO `god_area` VALUES ('2643', '达川区', '达川', '999', '6', '', '2640', '/0/2500/2640/', '3', '511703', 'DCQ', '1', '1', '2017-03-09 11:54:36', '1', '2017-03-09 11:54:36');
INSERT INTO `god_area` VALUES ('2644', '宣汉县', '宣汉', '999', '6', '', '2640', '/0/2500/2640/', '3', '511722', 'XIX', '1', '1', '2017-03-09 11:54:36', '1', '2017-03-09 11:54:36');
INSERT INTO `god_area` VALUES ('2645', '开江县', '开江', '999', '6', '', '2640', '/0/2500/2640/', '3', '511723', 'KJX', '1', '1', '2017-03-09 11:54:36', '1', '2017-03-09 11:54:36');
INSERT INTO `god_area` VALUES ('2646', '大竹县', '大竹', '999', '6', '', '2640', '/0/2500/2640/', '3', '511724', 'DZX', '1', '1', '2017-03-09 11:54:36', '1', '2017-03-09 11:54:36');
INSERT INTO `god_area` VALUES ('2647', '渠县', '渠县', '999', '6', '', '2640', '/0/2500/2640/', '3', '511725', 'QX', '1', '1', '2017-03-09 11:54:36', '1', '2017-03-09 11:54:36');
INSERT INTO `god_area` VALUES ('2648', '万源市', '万源', '999', '6', '', '2640', '/0/2500/2640/', '3', '511781', 'WYS', '1', '1', '2017-03-09 11:54:36', '1', '2017-03-09 11:54:36');
INSERT INTO `god_area` VALUES ('2649', '雅安市', '雅安', '999', '6', '', '2500', '/0/2500/', '2', '511800', 'YAS', '1', '1', '2017-03-09 11:54:36', '1', '2017-03-09 11:54:36');
INSERT INTO `god_area` VALUES ('2651', '雨城区', '雨城区', '999', '9', '', '2649', '/0/2500/2649/', '3', '511802', 'YCQ', '1', '1', '2017-03-09 11:54:36', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('2652', '名山区', '名山', '999', '6', '', '2649', '/0/2500/2649/', '3', '511803', 'MSQ', '1', '1', '2017-03-09 11:54:36', '1', '2017-03-09 11:54:36');
INSERT INTO `god_area` VALUES ('2653', '荥经县', '荥经', '999', '6', '', '2649', '/0/2500/2649/', '3', '511822', 'JX', '1', '1', '2017-03-09 11:54:36', '1', '2017-03-09 11:54:36');
INSERT INTO `god_area` VALUES ('2654', '汉源县', '汉源', '999', '6', '', '2649', '/0/2500/2649/', '3', '511823', 'IYX', '1', '1', '2017-03-09 11:54:36', '1', '2017-03-09 11:54:36');
INSERT INTO `god_area` VALUES ('2655', '石棉县', '石棉', '999', '6', '', '2649', '/0/2500/2649/', '3', '511824', 'SMX', '1', '1', '2017-03-09 11:54:36', '1', '2017-03-09 11:54:36');
INSERT INTO `god_area` VALUES ('2656', '天全县', '天全', '999', '6', '', '2649', '/0/2500/2649/', '3', '511825', 'TQX', '1', '1', '2017-03-09 11:54:36', '1', '2017-03-09 11:54:36');
INSERT INTO `god_area` VALUES ('2657', '芦山县', '芦山', '999', '6', '', '2649', '/0/2500/2649/', '3', '511826', 'LSX', '1', '1', '2017-03-09 11:54:36', '1', '2017-03-09 11:54:36');
INSERT INTO `god_area` VALUES ('2658', '宝兴县', '宝兴', '999', '6', '', '2649', '/0/2500/2649/', '3', '511827', 'BXX', '1', '1', '2017-03-09 11:54:36', '1', '2017-03-09 11:54:36');
INSERT INTO `god_area` VALUES ('2659', '巴中市', '巴中', '999', '6', '', '2500', '/0/2500/', '2', '511900', 'BZS', '1', '1', '2017-03-09 11:54:36', '1', '2017-03-09 11:54:36');
INSERT INTO `god_area` VALUES ('2661', '巴州区', '巴州', '999', '6', '', '2659', '/0/2500/2659/', '3', '511902', 'BZQ', '1', '1', '2017-03-09 11:54:36', '1', '2017-03-09 11:54:36');
INSERT INTO `god_area` VALUES ('2662', '恩阳区', '恩阳', '999', '6', '', '2659', '/0/2500/2659/', '3', '511903', 'EYQ', '1', '1', '2017-03-09 11:54:36', '1', '2017-03-09 11:54:36');
INSERT INTO `god_area` VALUES ('2663', '通江县', '通江', '999', '6', '', '2659', '/0/2500/2659/', '3', '511921', 'TJX', '1', '1', '2017-03-09 11:54:36', '1', '2017-03-09 11:54:36');
INSERT INTO `god_area` VALUES ('2664', '南江县', '南江', '999', '6', '', '2659', '/0/2500/2659/', '3', '511922', 'NJX', '1', '1', '2017-03-09 11:54:36', '1', '2017-03-09 11:54:36');
INSERT INTO `god_area` VALUES ('2665', '平昌县', '平昌', '999', '6', '', '2659', '/0/2500/2659/', '3', '511923', 'PCX', '1', '1', '2017-03-09 11:54:37', '1', '2017-03-09 11:54:37');
INSERT INTO `god_area` VALUES ('2666', '资阳市', '资阳', '999', '6', '', '2500', '/0/2500/', '2', '512000', 'ZYS', '1', '1', '2017-03-09 11:54:37', '1', '2017-03-09 11:54:37');
INSERT INTO `god_area` VALUES ('2668', '雁江区', '雁江', '999', '6', '', '2666', '/0/2500/2666/', '3', '512002', 'YJQ', '1', '1', '2017-03-09 11:54:37', '1', '2017-03-09 11:54:37');
INSERT INTO `god_area` VALUES ('2669', '安岳县', '安岳', '999', '6', '', '2666', '/0/2500/2666/', '3', '512021', 'AYX', '1', '1', '2017-03-09 11:54:37', '1', '2017-03-09 11:54:37');
INSERT INTO `god_area` VALUES ('2670', '乐至县', '乐至', '999', '6', '', '2666', '/0/2500/2666/', '3', '512022', 'LZX', '1', '1', '2017-03-09 11:54:37', '1', '2017-03-09 11:54:37');
INSERT INTO `god_area` VALUES ('2671', '简阳市', '简阳', '999', '6', '', '2666', '/0/2500/2666/', '3', '512081', 'JYS', '0', '88', '2017-03-09 11:54:37', '1', '2017-03-09 11:54:37');
INSERT INTO `god_area` VALUES ('2672', '阿坝藏族羌族自治州', '阿坝', '999', '6', '', '2500', '/0/2500/', '2', '513200', 'ABCZQZZZZ', '1', '1', '2017-03-09 11:54:37', '1', '2017-03-09 11:54:37');
INSERT INTO `god_area` VALUES ('2673', '汶川县', '汶川', '999', '6', '', '2672', '/0/2500/2672/', '3', '513221', 'CX', '1', '1', '2017-03-09 11:54:37', '1', '2017-03-09 11:54:37');
INSERT INTO `god_area` VALUES ('2674', '理县', '理县', '999', '6', '', '2672', '/0/2500/2672/', '3', '513222', 'LX', '1', '1', '2017-03-09 11:54:37', '1', '2017-03-09 11:54:37');
INSERT INTO `god_area` VALUES ('2675', '茂县', '茂县', '999', '6', '', '2672', '/0/2500/2672/', '3', '513223', 'MX', '1', '1', '2017-03-09 11:54:37', '1', '2017-03-09 11:54:37');
INSERT INTO `god_area` VALUES ('2676', '松潘县', '松潘', '999', '6', '', '2672', '/0/2500/2672/', '3', '513224', 'SPX', '1', '1', '2017-03-09 11:54:37', '1', '2017-03-09 11:54:37');
INSERT INTO `god_area` VALUES ('2677', '九寨沟县', '九寨沟', '999', '9', '', '2672', '/0/2500/2672/', '3', '513225', 'JZGX', '1', '1', '2017-03-09 11:54:37', '1', '2017-03-09 11:54:37');
INSERT INTO `god_area` VALUES ('2678', '金川县', '金川', '999', '6', '', '2672', '/0/2500/2672/', '3', '513226', 'JCX', '1', '1', '2017-03-09 11:54:37', '1', '2017-03-09 11:54:37');
INSERT INTO `god_area` VALUES ('2679', '小金县', '小金', '999', '6', '', '2672', '/0/2500/2672/', '3', '513227', 'JX', '1', '1', '2017-03-09 11:54:37', '1', '2017-03-09 11:54:37');
INSERT INTO `god_area` VALUES ('2680', '黑水县', '黑水', '999', '6', '', '2672', '/0/2500/2672/', '3', '513228', 'ISX', '1', '1', '2017-03-09 11:54:37', '1', '2017-03-09 11:54:37');
INSERT INTO `god_area` VALUES ('2681', '马尔康市', '马尔康', '999', '9', '', '2672', '/0/2500/2672/', '3', '513229', 'MEKS', '1', '1', '2017-03-09 11:54:37', '12', '2017-09-18 17:23:42');
INSERT INTO `god_area` VALUES ('2682', '壤塘县', '壤塘', '999', '6', '', '2672', '/0/2500/2672/', '3', '513230', 'RTX', '1', '1', '2017-03-09 11:54:37', '1', '2017-03-09 11:54:37');
INSERT INTO `god_area` VALUES ('2683', '阿坝县', '阿坝县', '999', '9', '', '2672', '/0/2500/2672/', '3', '513231', 'ABX', '1', '1', '2017-03-09 11:54:37', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2684', '若尔盖县', '若尔盖', '999', '9', '', '2672', '/0/2500/2672/', '3', '513232', 'REGX', '1', '1', '2017-03-09 11:54:37', '1', '2017-03-09 11:54:37');
INSERT INTO `god_area` VALUES ('2685', '红原县', '红原', '999', '6', '', '2672', '/0/2500/2672/', '3', '513233', 'IYX', '1', '1', '2017-03-09 11:54:37', '1', '2017-03-09 11:54:37');
INSERT INTO `god_area` VALUES ('2686', '甘孜藏族自治州', '甘孜', '999', '6', '', '2500', '/0/2500/', '2', '513300', 'GZCZZZZ', '1', '1', '2017-03-09 11:54:37', '1', '2017-03-09 11:54:37');
INSERT INTO `god_area` VALUES ('2687', '康定县', '康定', '999', '6', '', '2686', '/0/2500/2686/', '3', '513321', null, '0', '1', '2017-03-09 11:54:37', '12', '2017-09-18 11:29:23');
INSERT INTO `god_area` VALUES ('2688', '泸定县', '泸定', '999', '6', '', '2686', '/0/2500/2686/', '3', '513322', 'DX', '1', '1', '2017-03-09 11:54:37', '1', '2017-03-09 11:54:37');
INSERT INTO `god_area` VALUES ('2689', '丹巴县', '丹巴', '999', '6', '', '2686', '/0/2500/2686/', '3', '513323', 'DBX', '1', '1', '2017-03-09 11:54:37', '1', '2017-03-09 11:54:37');
INSERT INTO `god_area` VALUES ('2690', '九龙县', '九龙', '999', '6', '', '2686', '/0/2500/2686/', '3', '513324', 'JLX', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2691', '雅江县', '雅江', '999', '6', '', '2686', '/0/2500/2686/', '3', '513325', 'YJX', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2692', '道孚县', '道孚', '999', '6', '', '2686', '/0/2500/2686/', '3', '513326', 'DX', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2693', '炉霍县', '炉霍', '999', '6', '', '2686', '/0/2500/2686/', '3', '513327', 'LIX', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2694', '甘孜县', '甘孜县', '999', '9', '', '2686', '/0/2500/2686/', '3', '513328', 'GZX', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2695', '新龙县', '新龙', '999', '6', '', '2686', '/0/2500/2686/', '3', '513329', 'XLX', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2696', '德格县', '德格', '999', '6', '', '2686', '/0/2500/2686/', '3', '513330', 'DGX', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2697', '白玉县', '白玉', '999', '6', '', '2686', '/0/2500/2686/', '3', '513331', 'BYX', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2698', '石渠县', '石渠', '999', '6', '', '2686', '/0/2500/2686/', '3', '513332', 'SQX', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2699', '色达县', '色达', '999', '6', '', '2686', '/0/2500/2686/', '3', '513333', 'SDX', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2700', '理塘县', '理塘', '999', '6', '', '2686', '/0/2500/2686/', '3', '513334', 'LTX', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2701', '巴塘县', '巴塘', '999', '6', '', '2686', '/0/2500/2686/', '3', '513335', 'BTX', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2702', '乡城县', '乡城', '999', '6', '', '2686', '/0/2500/2686/', '3', '513336', 'XCX', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2703', '稻城县', '稻城', '999', '6', '', '2686', '/0/2500/2686/', '3', '513337', 'DCX', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2704', '得荣县', '得荣', '999', '6', '', '2686', '/0/2500/2686/', '3', '513338', 'DRX', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2705', '凉山彝族自治州', '凉山', '999', '6', '', '2500', '/0/2500/', '2', '513400', 'LSYZZZZ', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2706', '西昌市', '西昌', '999', '6', '', '2705', '/0/2500/2705/', '3', '513401', 'XCS', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2707', '木里藏族自治县', '木里', '999', '6', '', '2705', '/0/2500/2705/', '3', '513422', 'MLCZZZX', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2708', '盐源县', '盐源', '999', '6', '', '2705', '/0/2500/2705/', '3', '513423', 'YYX', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2709', '德昌县', '德昌', '999', '6', '', '2705', '/0/2500/2705/', '3', '513424', 'DCX', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2710', '会理县', '会理', '999', '6', '', '2705', '/0/2500/2705/', '3', '513425', 'ILX', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2711', '会东县', '会东', '999', '6', '', '2705', '/0/2500/2705/', '3', '513426', 'IDX', '1', '1', '2017-03-09 11:54:38', '1', '2017-03-09 11:54:38');
INSERT INTO `god_area` VALUES ('2712', '宁南县', '宁南', '999', '6', '', '2705', '/0/2500/2705/', '3', '513427', 'NNX', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2713', '普格县', '普格', '999', '6', '', '2705', '/0/2500/2705/', '3', '513428', 'PGX', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2714', '布拖县', '布拖', '999', '6', '', '2705', '/0/2500/2705/', '3', '513429', 'BTX', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2715', '金阳县', '金阳', '999', '6', '', '2705', '/0/2500/2705/', '3', '513430', 'JYX', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2716', '昭觉县', '昭觉', '999', '6', '', '2705', '/0/2500/2705/', '3', '513431', 'ZJX', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2717', '喜德县', '喜德', '999', '6', '', '2705', '/0/2500/2705/', '3', '513432', 'XDX', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2718', '冕宁县', '冕宁', '999', '6', '', '2705', '/0/2500/2705/', '3', '513433', 'MNX', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2719', '越西县', '越西', '999', '6', '', '2705', '/0/2500/2705/', '3', '513434', 'YXX', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2720', '甘洛县', '甘洛', '999', '6', '', '2705', '/0/2500/2705/', '3', '513435', 'GLX', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2721', '美姑县', '美姑', '999', '6', '', '2705', '/0/2500/2705/', '3', '513436', 'MGX', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2722', '雷波县', '雷波', '999', '6', '', '2705', '/0/2500/2705/', '3', '513437', 'LBX', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2723', '贵州省', '贵州', '999', '6', '', '0', '/0/', '1', '520000', 'GZS', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2724', '贵阳市', '贵阳', '999', '6', '', '2723', '/0/2723/', '2', '520100', 'GYS', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2726', '南明区', '南明', '999', '6', '', '2724', '/0/2723/2724/', '3', '520102', 'NMQ', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2727', '云岩区', '云岩', '999', '6', '', '2724', '/0/2723/2724/', '3', '520103', 'YYQ', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2728', '花溪区', '花溪', '999', '6', '', '2724', '/0/2723/2724/', '3', '520111', 'IXQ', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2729', '乌当区', '乌当', '999', '6', '', '2724', '/0/2723/2724/', '3', '520112', 'WDQ', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2730', '白云区', '白云', '999', '6', '', '2724', '/0/2723/2724/', '3', '520113', 'BYQ', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2731', '观山湖区', '观山湖', '999', '9', '', '2724', '/0/2723/2724/', '3', '520115', 'GSIQ', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2732', '开阳县', '开阳', '999', '6', '', '2724', '/0/2723/2724/', '3', '520121', 'KYX', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2733', '息烽县', '息烽', '999', '6', '', '2724', '/0/2723/2724/', '3', '520122', 'XFX', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2734', '修文县', '修文', '999', '6', '', '2724', '/0/2723/2724/', '3', '520123', 'XWX', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2735', '清镇市', '清镇', '999', '6', '', '2724', '/0/2723/2724/', '3', '520181', 'QZS', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2736', '六盘水市', '六盘水', '999', '9', '', '2723', '/0/2723/', '2', '520200', 'LPSS', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2737', '钟山区', '钟山', '999', '6', '', '2736', '/0/2723/2736/', '3', '520201', 'ZSQ', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2738', '六枝特区', '六枝特', '999', '9', '', '2736', '/0/2723/2736/', '3', '520203', 'LZTQ', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2739', '水城县', '水城', '999', '6', '', '2736', '/0/2723/2736/', '3', '520221', 'SCX', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2740', '盘州市', '盘州', '999', '6', '', '2736', '/0/2723/2736/', '3', '520222', 'PZS', '1', '1', '2017-03-09 11:54:39', '16', '2017-12-23 14:25:37');
INSERT INTO `god_area` VALUES ('2741', '遵义市', '遵义', '999', '6', '', '2723', '/0/2723/', '2', '520300', 'ZYS', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2743', '红花岗区', '红花岗', '999', '9', '', '2741', '/0/2723/2741/', '3', '520302', 'IIGQ', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2744', '汇川区', '汇川', '999', '6', '', '2741', '/0/2723/2741/', '3', '520303', 'ICQ', '1', '1', '2017-03-09 11:54:39', '1', '2017-03-09 11:54:39');
INSERT INTO `god_area` VALUES ('2745', '播州区', '播州', '999', '6', '', '2741', '/0/2723/2741/', '3', '520321', 'BZQ', '1', '1', '2017-03-09 11:54:39', '6', '2017-12-26 10:12:37');
INSERT INTO `god_area` VALUES ('2746', '桐梓县', '桐梓', '999', '6', '', '2741', '/0/2723/2741/', '3', '520322', 'TX', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2747', '绥阳县', '绥阳', '999', '6', '', '2741', '/0/2723/2741/', '3', '520323', 'SYX', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2748', '正安县', '正安', '999', '6', '', '2741', '/0/2723/2741/', '3', '520324', 'ZAX', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2749', '道真仡佬族苗族自治县', '道真', '999', '6', '', '2741', '/0/2723/2741/', '3', '520325', 'DZLZMZZZX', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2750', '务川仡佬族苗族自治县', '务川', '999', '6', '', '2741', '/0/2723/2741/', '3', '520326', 'WCLZMZZZX', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2751', '凤冈县', '凤冈', '999', '6', '', '2741', '/0/2723/2741/', '3', '520327', 'FGX', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2752', '湄潭县', '湄潭', '999', '6', '', '2741', '/0/2723/2741/', '3', '520328', 'TX', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2753', '余庆县', '余庆', '999', '6', '', '2741', '/0/2723/2741/', '3', '520329', 'YQX', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2754', '习水县', '习水', '999', '6', '', '2741', '/0/2723/2741/', '3', '520330', 'XSX', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2755', '赤水市', '赤水', '999', '6', '', '2741', '/0/2723/2741/', '3', '520381', 'CSS', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2756', '仁怀市', '仁怀', '999', '6', '', '2741', '/0/2723/2741/', '3', '520382', 'RIS', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2757', '安顺市', '安顺', '999', '6', '', '2723', '/0/2723/', '2', '520400', 'ASS', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2759', '西秀区', '西秀', '999', '6', '', '2757', '/0/2723/2757/', '3', '520402', 'XXQ', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2760', '平坝区', '平坝', '999', '6', '', '2757', '/0/2723/2757/', '3', '520421', 'PBQ', '1', '1', '2017-03-09 11:54:40', '6', '2017-08-18 16:40:16');
INSERT INTO `god_area` VALUES ('2761', '普定县', '普定', '999', '6', '', '2757', '/0/2723/2757/', '3', '520422', 'PDX', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2762', '镇宁布依族苗族自治县', '镇宁', '999', '6', '', '2757', '/0/2723/2757/', '3', '520423', 'ZNBYZMZZZX', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2763', '关岭布依族苗族自治县', '关岭', '999', '6', '', '2757', '/0/2723/2757/', '3', '520424', 'GLBYZMZZZX', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2764', '紫云苗族布依族自治县', '紫云', '999', '6', '', '2757', '/0/2723/2757/', '3', '520425', 'ZYMZBYZZZX', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2765', '毕节市', '毕节', '999', '6', '', '2723', '/0/2723/', '2', '520500', 'BJS', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2767', '七星关区', '七星关', '999', '9', '', '2765', '/0/2723/2765/', '3', '520502', 'QXGQ', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2768', '大方县', '大方', '999', '6', '', '2765', '/0/2723/2765/', '3', '520521', 'DFX', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2769', '黔西县', '黔西县', '999', '9', '', '2765', '/0/2723/2765/', '3', '520522', 'QXX', '1', '88', '2017-03-09 11:54:40', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2770', '金沙县', '金沙', '999', '6', '', '2765', '/0/2723/2765/', '3', '520523', 'JSX', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2771', '织金县', '织金', '999', '6', '', '2765', '/0/2723/2765/', '3', '520524', 'ZJX', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2772', '纳雍县', '纳雍', '999', '6', '', '2765', '/0/2723/2765/', '3', '520525', 'NYX', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2773', '威宁彝族回族苗族自治县', '威宁', '999', '6', '', '2765', '/0/2723/2765/', '3', '520526', 'WNYZIZMZZZX', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2774', '赫章县', '赫章', '999', '6', '', '2765', '/0/2723/2765/', '3', '520527', 'IZX', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2775', '铜仁市', '铜仁', '999', '6', '', '2723', '/0/2723/', '2', '520600', 'TRS', '1', '1', '2017-03-09 11:54:40', '1', '2017-03-09 11:54:40');
INSERT INTO `god_area` VALUES ('2777', '碧江区', '碧江', '999', '6', '', '2775', '/0/2723/2775/', '3', '520602', 'BJQ', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2778', '万山区', '万山', '999', '6', '', '2775', '/0/2723/2775/', '3', '520603', 'WSQ', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2779', '江口县', '江口', '999', '6', '', '2775', '/0/2723/2775/', '3', '520621', 'JKX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2780', '玉屏侗族自治县', '玉屏', '999', '6', '', '2775', '/0/2723/2775/', '3', '520622', 'YPDZZZX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2781', '石阡县', '石阡', '999', '6', '', '2775', '/0/2723/2775/', '3', '520623', 'SX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2782', '思南县', '思南', '999', '6', '', '2775', '/0/2723/2775/', '3', '520624', 'SNX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2783', '印江土家族苗族自治县', '印江', '999', '6', '', '2775', '/0/2723/2775/', '3', '520625', 'YJTJZMZZZX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2784', '德江县', '德江', '999', '6', '', '2775', '/0/2723/2775/', '3', '520626', 'DJX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2785', '沿河土家族自治县', '沿河', '999', '6', '', '2775', '/0/2723/2775/', '3', '520627', 'YITJZZZX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2786', '松桃苗族自治县', '松桃', '999', '6', '', '2775', '/0/2723/2775/', '3', '520628', 'STMZZZX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2787', '黔西南布依族苗族自治州', '黔西南州', '999', '12', '', '2723', '/0/2723/', '2', '522300', 'QXNBYZMZZZZ', '1', '88', '2017-03-09 11:54:41', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2788', '兴义市', '兴义', '999', '6', '', '2787', '/0/2723/2787/', '3', '522301', 'XYS', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2789', '兴仁县', '兴仁', '999', '6', '', '2787', '/0/2723/2787/', '3', '522322', 'XRX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2790', '普安县', '普安', '999', '6', '', '2787', '/0/2723/2787/', '3', '522323', 'PAX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2791', '晴隆县', '晴隆', '999', '6', '', '2787', '/0/2723/2787/', '3', '522324', 'QLX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2792', '贞丰县', '贞丰', '999', '6', '', '2787', '/0/2723/2787/', '3', '522325', 'ZFX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2793', '望谟县', '望谟', '999', '6', '', '2787', '/0/2723/2787/', '3', '522326', 'WX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2794', '册亨县', '册亨', '999', '6', '', '2787', '/0/2723/2787/', '3', '522327', 'CIX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2795', '安龙县', '安龙', '999', '6', '', '2787', '/0/2723/2787/', '3', '522328', 'ALX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2796', '黔东南苗族侗族自治州', '黔东南', '999', '9', '', '2723', '/0/2723/', '2', '522600', 'QDNMZDZZZZ', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2797', '凯里市', '凯里', '999', '6', '', '2796', '/0/2723/2796/', '3', '522601', 'KLS', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2798', '黄平县', '黄平', '999', '6', '', '2796', '/0/2723/2796/', '3', '522622', 'IPX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2799', '施秉县', '施秉', '999', '6', '', '2796', '/0/2723/2796/', '3', '522623', 'SBX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2800', '三穗县', '三穗', '999', '6', '', '2796', '/0/2723/2796/', '3', '522624', 'SSX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2801', '镇远县', '镇远', '999', '6', '', '2796', '/0/2723/2796/', '3', '522625', 'ZYX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2802', '岑巩县', '岑巩', '999', '6', '', '2796', '/0/2723/2796/', '3', '522626', 'GX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2803', '天柱县', '天柱', '999', '6', '', '2796', '/0/2723/2796/', '3', '522627', 'TZX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2804', '锦屏县', '锦屏', '999', '6', '', '2796', '/0/2723/2796/', '3', '522628', 'JPX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2805', '剑河县', '剑河', '999', '6', '', '2796', '/0/2723/2796/', '3', '522629', 'JIX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2806', '台江县', '台江', '999', '6', '', '2796', '/0/2723/2796/', '3', '522630', 'TJX', '1', '1', '2017-03-09 11:54:41', '1', '2017-03-09 11:54:41');
INSERT INTO `god_area` VALUES ('2807', '黎平县', '黎平', '999', '6', '', '2796', '/0/2723/2796/', '3', '522631', 'LPX', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2808', '榕江县', '榕江', '999', '6', '', '2796', '/0/2723/2796/', '3', '522632', 'JX', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2809', '从江县', '从江', '999', '6', '', '2796', '/0/2723/2796/', '3', '522633', 'CJX', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2810', '雷山县', '雷山', '999', '6', '', '2796', '/0/2723/2796/', '3', '522634', 'LSX', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2811', '麻江县', '麻江', '999', '6', '', '2796', '/0/2723/2796/', '3', '522635', 'MJX', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2812', '丹寨县', '丹寨', '999', '6', '', '2796', '/0/2723/2796/', '3', '522636', 'DZX', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2813', '黔南布依族苗族自治州', '黔南', '999', '6', '', '2723', '/0/2723/', '2', '522700', 'QNBYZMZZZZ', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2814', '都匀市', '都匀', '999', '6', '', '2813', '/0/2723/2813/', '3', '522701', 'DYS', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2815', '福泉市', '福泉', '999', '6', '', '2813', '/0/2723/2813/', '3', '522702', 'FQS', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2816', '荔波县', '荔波', '999', '6', '', '2813', '/0/2723/2813/', '3', '522722', 'LBX', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2817', '贵定县', '贵定', '999', '6', '', '2813', '/0/2723/2813/', '3', '522723', 'GDX', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2818', '瓮安县', '瓮安', '999', '6', '', '2813', '/0/2723/2813/', '3', '522725', 'WAX', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2819', '独山县', '独山', '999', '6', '', '2813', '/0/2723/2813/', '3', '522726', 'DSX', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2820', '平塘县', '平塘', '999', '6', '', '2813', '/0/2723/2813/', '3', '522727', 'PTX', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2821', '罗甸县', '罗甸', '999', '6', '', '2813', '/0/2723/2813/', '3', '522728', 'LDX', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2822', '长顺县', '长顺', '999', '6', '', '2813', '/0/2723/2813/', '3', '522729', 'CSX', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2823', '龙里县', '龙里', '999', '6', '', '2813', '/0/2723/2813/', '3', '522730', 'LLX', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2824', '惠水县', '惠水', '999', '6', '', '2813', '/0/2723/2813/', '3', '522731', 'ISX', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2825', '三都水族自治县', '三都', '999', '6', '', '2813', '/0/2723/2813/', '3', '522732', 'SDSZZZX', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2826', '云南省', '云南', '999', '6', '', '0', '/0/', '1', '530000', 'YNS', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 14:09:30');
INSERT INTO `god_area` VALUES ('2827', '昆明市', '昆明', '999', '6', '', '2826', '/0/2826/', '2', '530100', 'KMS', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2829', '五华区', '五华', '999', '6', '', '2827', '/0/2826/2827/', '3', '530102', 'WIQ', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2830', '盘龙区', '盘龙', '999', '6', '', '2827', '/0/2826/2827/', '3', '530103', 'PLQ', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2831', '官渡区', '官渡', '999', '6', '', '2827', '/0/2826/2827/', '3', '530111', 'GDQ', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2832', '西山区', '西山', '999', '6', '', '2827', '/0/2826/2827/', '3', '530112', 'XSQ', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2833', '东川区', '东川', '999', '6', '', '2827', '/0/2826/2827/', '3', '530113', 'DCQ', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2834', '呈贡区', '呈贡', '999', '6', '', '2827', '/0/2826/2827/', '3', '530114', 'CGQ', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2835', '晋宁区', '晋宁', '999', '6', '', '2827', '/0/2826/2827/', '3', '530122', 'JNX', '1', '1', '2017-03-09 11:54:42', '16', '2018-05-17 16:59:15');
INSERT INTO `god_area` VALUES ('2836', '富民县', '富民', '999', '6', '', '2827', '/0/2826/2827/', '3', '530124', 'FMX', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2837', '宜良县', '宜良', '999', '6', '', '2827', '/0/2826/2827/', '3', '530125', 'YLX', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2838', '石林彝族自治县', '石林', '999', '6', '', '2827', '/0/2826/2827/', '3', '530126', 'SLYZZZX', '1', '1', '2017-03-09 11:54:42', '1', '2017-03-09 11:54:42');
INSERT INTO `god_area` VALUES ('2839', '嵩明县', '嵩明', '999', '6', '', '2827', '/0/2826/2827/', '3', '530127', 'MX', '1', '1', '2017-03-09 11:54:43', '1', '2017-03-09 11:54:43');
INSERT INTO `god_area` VALUES ('2840', '禄劝彝族苗族自治县', '禄劝', '999', '6', '', '2827', '/0/2826/2827/', '3', '530128', 'LQYZMZZZX', '1', '1', '2017-03-09 11:54:43', '1', '2017-03-09 11:54:43');
INSERT INTO `god_area` VALUES ('2841', '寻甸回族彝族自治县', '寻甸', '999', '6', '', '2827', '/0/2826/2827/', '3', '530129', 'XDIZYZZZX', '1', '1', '2017-03-09 11:54:43', '1', '2017-03-09 11:54:43');
INSERT INTO `god_area` VALUES ('2842', '安宁市', '安宁', '999', '6', '', '2827', '/0/2826/2827/', '3', '530181', 'ANS', '1', '1', '2017-03-09 11:54:43', '1', '2017-03-09 11:54:43');
INSERT INTO `god_area` VALUES ('2843', '曲靖市', '曲靖', '999', '6', '', '2826', '/0/2826/', '2', '530300', 'QJS', '1', '1', '2017-03-09 11:54:43', '1', '2017-03-09 11:54:43');
INSERT INTO `god_area` VALUES ('2845', '麒麟区', '麒麟', '999', '6', '', '2843', '/0/2826/2843/', '3', '530302', 'Q', '1', '1', '2017-03-09 11:54:43', '1', '2017-03-09 11:54:43');
INSERT INTO `god_area` VALUES ('2846', '马龙区', '马龙', '999', '6', '', '2843', '/0/2826/2843/', '3', '530321', 'MLX', '1', '1', '2017-03-09 11:54:43', '12', '2018-06-28 15:51:58');
INSERT INTO `god_area` VALUES ('2847', '陆良县', '陆良', '999', '6', '', '2843', '/0/2826/2843/', '3', '530322', 'LLX', '1', '1', '2017-03-09 11:54:43', '1', '2017-03-09 11:54:43');
INSERT INTO `god_area` VALUES ('2848', '师宗县', '师宗', '999', '6', '', '2843', '/0/2826/2843/', '3', '530323', 'SZX', '1', '1', '2017-03-09 11:54:43', '1', '2017-03-09 11:54:43');
INSERT INTO `god_area` VALUES ('2849', '罗平县', '罗平', '999', '6', '', '2843', '/0/2826/2843/', '3', '530324', 'LPX', '1', '1', '2017-03-09 11:54:43', '1', '2017-03-09 11:54:43');
INSERT INTO `god_area` VALUES ('2850', '富源县', '富源', '999', '6', '', '2843', '/0/2826/2843/', '3', '530325', 'FYX', '1', '1', '2017-03-09 11:54:43', '1', '2017-03-09 11:54:43');
INSERT INTO `god_area` VALUES ('2851', '会泽县', '会泽', '999', '6', '', '2843', '/0/2826/2843/', '3', '530326', 'IZX', '1', '1', '2017-03-09 11:54:43', '1', '2017-03-09 11:54:43');
INSERT INTO `god_area` VALUES ('2852', '沾益区', '沾益', '999', '6', '', '2843', '/0/2826/2843/', '3', '530328', 'ZYQ', '1', '1', '2017-03-09 11:54:43', '12', '2017-09-22 14:27:40');
INSERT INTO `god_area` VALUES ('2853', '宣威市', '宣威', '999', '6', '', '2843', '/0/2826/2843/', '3', '530381', 'XWS', '1', '1', '2017-03-09 11:54:43', '1', '2017-03-09 11:54:43');
INSERT INTO `god_area` VALUES ('2854', '玉溪市', '玉溪', '999', '6', '', '2826', '/0/2826/', '2', '530400', 'YXS', '1', '1', '2017-03-09 11:54:43', '1', '2017-03-09 11:54:43');
INSERT INTO `god_area` VALUES ('2856', '红塔区', '红塔', '999', '6', '', '2854', '/0/2826/2854/', '3', '530402', 'ITQ', '1', '1', '2017-03-09 11:54:43', '1', '2017-03-09 11:54:43');
INSERT INTO `god_area` VALUES ('2857', '江川区', '江川', '999', '6', '', '2854', '/0/2826/2854/', '3', '530421', 'JCQ', '1', '1', '2017-03-09 11:54:43', '12', '2017-09-22 11:38:13');
INSERT INTO `god_area` VALUES ('2858', '澄江县', '澄江', '999', '6', '', '2854', '/0/2826/2854/', '3', '530422', 'CJX', '1', '1', '2017-03-09 11:54:43', '1', '2017-03-09 11:54:43');
INSERT INTO `god_area` VALUES ('2859', '通海县', '通海', '999', '6', '', '2854', '/0/2826/2854/', '3', '530423', 'TIX', '1', '1', '2017-03-09 11:54:43', '1', '2017-03-09 11:54:43');
INSERT INTO `god_area` VALUES ('2860', '华宁县', '华宁', '999', '6', '', '2854', '/0/2826/2854/', '3', '530424', 'INX', '1', '1', '2017-03-09 11:54:43', '1', '2017-03-09 11:54:43');
INSERT INTO `god_area` VALUES ('2861', '易门县', '易门', '999', '6', '', '2854', '/0/2826/2854/', '3', '530425', 'YMX', '1', '1', '2017-03-09 11:54:44', '1', '2017-03-09 11:54:44');
INSERT INTO `god_area` VALUES ('2862', '峨山彝族自治县', '峨山', '999', '6', '', '2854', '/0/2826/2854/', '3', '530426', 'ESYZZZX', '1', '1', '2017-03-09 11:54:44', '1', '2017-03-09 11:54:44');
INSERT INTO `god_area` VALUES ('2863', '新平彝族傣族自治县', '新平', '999', '6', '', '2854', '/0/2826/2854/', '3', '530427', 'XPYZDZZZX', '1', '1', '2017-03-09 11:54:44', '1', '2017-03-09 11:54:44');
INSERT INTO `god_area` VALUES ('2864', '元江哈尼族彝族傣族自治县', '元江', '999', '6', '', '2854', '/0/2826/2854/', '3', '530428', 'YJINZYZDZZZX', '1', '1', '2017-03-09 11:54:44', '1', '2017-03-09 11:54:44');
INSERT INTO `god_area` VALUES ('2865', '保山市', '保山', '999', '6', '', '2826', '/0/2826/', '2', '530500', 'BSS', '1', '1', '2017-03-09 11:54:44', '1', '2017-03-09 11:54:44');
INSERT INTO `god_area` VALUES ('2867', '隆阳区', '隆阳', '999', '6', '', '2865', '/0/2826/2865/', '3', '530502', 'LYQ', '1', '1', '2017-03-09 11:54:44', '1', '2017-03-09 11:54:44');
INSERT INTO `god_area` VALUES ('2868', '施甸县', '施甸', '999', '6', '', '2865', '/0/2826/2865/', '3', '530521', 'SDX', '1', '1', '2017-03-09 11:54:44', '1', '2017-03-09 11:54:44');
INSERT INTO `god_area` VALUES ('2869', '腾冲市', '腾冲', '999', '6', '', '2865', '/0/2826/2865/', '3', '530522', 'TCS', '1', '1', '2017-03-09 11:54:44', '6', '2017-09-13 09:03:09');
INSERT INTO `god_area` VALUES ('2870', '龙陵县', '龙陵', '999', '6', '', '2865', '/0/2826/2865/', '3', '530523', 'LLX', '1', '1', '2017-03-09 11:54:44', '1', '2017-03-09 11:54:44');
INSERT INTO `god_area` VALUES ('2871', '昌宁县', '昌宁', '999', '6', '', '2865', '/0/2826/2865/', '3', '530524', 'CNX', '1', '1', '2017-03-09 11:54:44', '1', '2017-03-09 11:54:44');
INSERT INTO `god_area` VALUES ('2872', '昭通市', '昭通', '999', '6', '', '2826', '/0/2826/', '2', '530600', 'ZTS', '1', '1', '2017-03-09 11:54:44', '1', '2017-03-09 11:54:44');
INSERT INTO `god_area` VALUES ('2874', '昭阳区', '昭阳', '999', '6', '', '2872', '/0/2826/2872/', '3', '530602', 'ZYQ', '1', '1', '2017-03-09 11:54:44', '1', '2017-03-09 11:54:44');
INSERT INTO `god_area` VALUES ('2875', '鲁甸县', '鲁甸', '999', '6', '', '2872', '/0/2826/2872/', '3', '530621', 'LDX', '1', '1', '2017-03-09 11:54:44', '1', '2017-03-09 11:54:44');
INSERT INTO `god_area` VALUES ('2876', '巧家县', '巧家', '999', '6', '', '2872', '/0/2826/2872/', '3', '530622', 'QJX', '1', '1', '2017-03-09 11:54:44', '1', '2017-03-09 11:54:44');
INSERT INTO `god_area` VALUES ('2877', '盐津县', '盐津', '999', '6', '', '2872', '/0/2826/2872/', '3', '530623', 'YJX', '1', '1', '2017-03-09 11:54:44', '1', '2017-03-09 11:54:44');
INSERT INTO `god_area` VALUES ('2878', '大关县', '大关', '999', '6', '', '2872', '/0/2826/2872/', '3', '530624', 'DGX', '1', '1', '2017-03-09 11:54:44', '1', '2017-03-09 11:54:44');
INSERT INTO `god_area` VALUES ('2879', '永善县', '永善', '999', '6', '', '2872', '/0/2826/2872/', '3', '530625', 'YSX', '1', '1', '2017-03-09 11:54:44', '1', '2017-03-09 11:54:44');
INSERT INTO `god_area` VALUES ('2880', '绥江县', '绥江', '999', '6', '', '2872', '/0/2826/2872/', '3', '530626', 'SJX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2881', '镇雄县', '镇雄', '999', '6', '', '2872', '/0/2826/2872/', '3', '530627', 'ZXX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2882', '彝良县', '彝良', '999', '6', '', '2872', '/0/2826/2872/', '3', '530628', 'YLX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2883', '威信县', '威信', '999', '6', '', '2872', '/0/2826/2872/', '3', '530629', 'WXX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2884', '水富县', '水富', '999', '6', '', '2872', '/0/2826/2872/', '3', '530630', 'SFX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2885', '丽江市', '丽江', '999', '6', '', '2826', '/0/2826/', '2', '530700', 'LJS', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2887', '古城区', '古城区', '999', '9', '', '2885', '/0/2826/2885/', '3', '530702', 'GCQ', '1', '1', '2017-03-09 11:54:45', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('2888', '玉龙纳西族自治县', '玉龙', '999', '6', '', '2885', '/0/2826/2885/', '3', '530721', 'YLNXZZZX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2889', '永胜县', '永胜', '999', '6', '', '2885', '/0/2826/2885/', '3', '530722', 'YSX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2890', '华坪县', '华坪', '999', '6', '', '2885', '/0/2826/2885/', '3', '530723', 'IPX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2891', '宁蒗彝族自治县', '宁蒗', '999', '6', '', '2885', '/0/2826/2885/', '3', '530724', 'NYZZZX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2892', '普洱市', '普洱', '999', '6', '', '2826', '/0/2826/', '2', '530800', 'PES', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2894', '思茅区', '思茅', '999', '6', '', '2892', '/0/2826/2892/', '3', '530802', 'SQ', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2895', '宁洱哈尼族彝族自治县', '宁洱', '999', '6', '', '2892', '/0/2826/2892/', '3', '530821', 'NEINZYZZZX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2896', '墨江哈尼族自治县', '墨江', '999', '6', '', '2892', '/0/2826/2892/', '3', '530822', 'JINZZZX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2897', '景东彝族自治县', '景东', '999', '6', '', '2892', '/0/2826/2892/', '3', '530823', 'JDYZZZX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2898', '景谷傣族彝族自治县', '景谷', '999', '6', '', '2892', '/0/2826/2892/', '3', '530824', 'JGDZYZZZX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2899', '镇沅彝族哈尼族拉祜族自治县', '镇沅', '999', '6', '', '2892', '/0/2826/2892/', '3', '530825', 'ZYZINZLZZZX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2900', '江城哈尼族彝族自治县', '江城', '999', '6', '', '2892', '/0/2826/2892/', '3', '530826', 'JCINZYZZZX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2901', '孟连傣族拉祜族佤族自治县', '孟连', '999', '6', '', '2892', '/0/2826/2892/', '3', '530827', 'MLDZLZZZZX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2902', '澜沧拉祜族自治县', '澜沧', '999', '6', '', '2892', '/0/2826/2892/', '3', '530828', 'LCLZZZX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2903', '西盟佤族自治县', '西盟', '999', '6', '', '2892', '/0/2826/2892/', '3', '530829', 'XMZZZX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2904', '临沧市', '临沧', '999', '6', '', '2826', '/0/2826/', '2', '530900', 'LCS', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2906', '临翔区', '临翔', '999', '6', '', '2904', '/0/2826/2904/', '3', '530902', 'LXQ', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2907', '凤庆县', '凤庆', '999', '6', '', '2904', '/0/2826/2904/', '3', '530921', 'FQX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2908', '云县', '云县', '999', '6', '', '2904', '/0/2826/2904/', '3', '530922', 'YX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2909', '永德县', '永德', '999', '6', '', '2904', '/0/2826/2904/', '3', '530923', 'YDX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2910', '镇康县', '镇康', '999', '6', '', '2904', '/0/2826/2904/', '3', '530924', 'ZKX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2911', '双江拉祜族佤族布朗族傣族自治县', '双江', '999', '6', '', '2904', '/0/2826/2904/', '3', '530925', 'SJLZZBLZDZZZX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2912', '耿马傣族佤族自治县', '耿马', '999', '6', '', '2904', '/0/2826/2904/', '3', '530926', 'GMDZZZZX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2913', '沧源佤族自治县', '沧源', '999', '6', '', '2904', '/0/2826/2904/', '3', '530927', 'CYZZZX', '1', '1', '2017-03-09 11:54:45', '1', '2017-03-09 11:54:45');
INSERT INTO `god_area` VALUES ('2914', '楚雄彝族自治州', '楚雄州', '999', '9', '', '2826', '/0/2826/', '2', '532300', 'CXYZZZZ', '1', '1', '2017-03-09 11:54:46', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2915', '楚雄市', '楚雄', '999', '6', '', '2914', '/0/2826/2914/', '3', '532301', 'CXS', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2916', '双柏县', '双柏', '999', '6', '', '2914', '/0/2826/2914/', '3', '532322', 'SBX', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2917', '牟定县', '牟定', '999', '6', '', '2914', '/0/2826/2914/', '3', '532323', 'MDX', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2918', '南华县', '南华', '999', '6', '', '2914', '/0/2826/2914/', '3', '532324', 'NIX', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2919', '姚安县', '姚安', '999', '6', '', '2914', '/0/2826/2914/', '3', '532325', 'YAX', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2920', '大姚县', '大姚', '999', '6', '', '2914', '/0/2826/2914/', '3', '532326', 'DYX', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2921', '永仁县', '永仁', '999', '6', '', '2914', '/0/2826/2914/', '3', '532327', 'YRX', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2922', '元谋县', '元谋', '999', '6', '', '2914', '/0/2826/2914/', '3', '532328', 'YMX', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2923', '武定县', '武定', '999', '6', '', '2914', '/0/2826/2914/', '3', '532329', 'WDX', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2924', '禄丰县', '禄丰', '999', '6', '', '2914', '/0/2826/2914/', '3', '532331', 'LFX', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2925', '红河哈尼族彝族自治州', '红河', '999', '6', '', '2826', '/0/2826/', '2', '532500', 'IIINZYZZZZ', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2926', '个旧市', '个旧', '999', '6', '', '2925', '/0/2826/2925/', '3', '532501', 'GJS', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2927', '开远市', '开远', '999', '6', '', '2925', '/0/2826/2925/', '3', '532502', 'KYS', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2928', '蒙自市', '蒙自', '999', '6', '', '2925', '/0/2826/2925/', '3', '532503', 'MZS', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2929', '弥勒市', '弥勒', '999', '6', '', '2925', '/0/2826/2925/', '3', '532504', 'MLS', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2930', '屏边苗族自治县', '屏边', '999', '6', '', '2925', '/0/2826/2925/', '3', '532523', 'PBMZZZX', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2931', '建水县', '建水', '999', '6', '', '2925', '/0/2826/2925/', '3', '532524', 'JSX', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2932', '石屏县', '石屏', '999', '6', '', '2925', '/0/2826/2925/', '3', '532525', 'SPX', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2933', '泸西县', '泸西', '999', '6', '', '2925', '/0/2826/2925/', '3', '532527', 'XX', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2934', '元阳县', '元阳', '999', '6', '', '2925', '/0/2826/2925/', '3', '532528', 'YYX', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2935', '红河县', '红河县', '999', '9', '', '2925', '/0/2826/2925/', '3', '532529', 'IIX', '1', '88', '2017-03-09 11:54:46', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2936', '金平苗族瑶族傣族自治县', '金平', '999', '6', '', '2925', '/0/2826/2925/', '3', '532530', 'JPMZYZDZZZX', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2937', '绿春县', '绿春', '999', '6', '', '2925', '/0/2826/2925/', '3', '532531', 'LCX', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2938', '河口瑶族自治县', '河口', '999', '6', '', '2925', '/0/2826/2925/', '3', '532532', 'IKYZZZX', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2939', '文山壮族苗族自治州', '文山州', '999', '9', '', '2826', '/0/2826/', '2', '532600', 'WSZZMZZZZ', '1', '88', '2017-03-09 11:54:46', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2940', '文山市', '文山', '999', '6', '', '2939', '/0/2826/2939/', '3', '532601', 'WSS', '1', '1', '2017-03-09 11:54:46', '1', '2017-03-09 11:54:46');
INSERT INTO `god_area` VALUES ('2941', '砚山县', '砚山', '999', '6', '', '2939', '/0/2826/2939/', '3', '532622', 'YSX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2942', '西畴县', '西畴', '999', '6', '', '2939', '/0/2826/2939/', '3', '532623', 'XCX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2943', '麻栗坡县', '麻栗坡', '999', '9', '', '2939', '/0/2826/2939/', '3', '532624', 'MLPX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2944', '马关县', '马关', '999', '6', '', '2939', '/0/2826/2939/', '3', '532625', 'MGX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2945', '丘北县', '丘北', '999', '6', '', '2939', '/0/2826/2939/', '3', '532626', 'QBX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2946', '广南县', '广南', '999', '6', '', '2939', '/0/2826/2939/', '3', '532627', 'GNX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2947', '富宁县', '富宁', '999', '6', '', '2939', '/0/2826/2939/', '3', '532628', 'FNX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2948', '西双版纳傣族自治州', '西双版纳', '999', '12', '', '2826', '/0/2826/', '2', '532800', 'XSBNDZZZZ', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2949', '景洪市', '景洪', '999', '6', '', '2948', '/0/2826/2948/', '3', '532801', 'JIS', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2950', '勐海县', '勐海', '999', '6', '', '2948', '/0/2826/2948/', '3', '532822', 'IX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2951', '勐腊县', '勐腊', '999', '6', '', '2948', '/0/2826/2948/', '3', '532823', 'LX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2952', '大理白族自治州', '大理州', '999', '9', '', '2826', '/0/2826/', '2', '532900', 'DLBZZZZ', '1', '88', '2017-03-09 11:54:47', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('2953', '大理市', '大理', '999', '6', '', '2952', '/0/2826/2952/', '3', '532901', 'DLS', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2954', '漾濞彝族自治县', '漾濞', '999', '6', '', '2952', '/0/2826/2952/', '3', '532922', 'YYZZZX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2955', '祥云县', '祥云', '999', '6', '', '2952', '/0/2826/2952/', '3', '532923', 'XYX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2956', '宾川县', '宾川', '999', '6', '', '2952', '/0/2826/2952/', '3', '532924', 'BCX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2957', '弥渡县', '弥渡', '999', '6', '', '2952', '/0/2826/2952/', '3', '532925', 'MDX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2958', '南涧彝族自治县', '南涧', '999', '6', '', '2952', '/0/2826/2952/', '3', '532926', 'NJYZZZX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2959', '巍山彝族回族自治县', '巍山', '999', '6', '', '2952', '/0/2826/2952/', '3', '532927', 'SYZIZZZX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2960', '永平县', '永平', '999', '6', '', '2952', '/0/2826/2952/', '3', '532928', 'YPX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2961', '云龙县', '云龙', '999', '6', '', '2952', '/0/2826/2952/', '3', '532929', 'YLX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2962', '洱源县', '洱源', '999', '6', '', '2952', '/0/2826/2952/', '3', '532930', 'EYX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2963', '剑川县', '剑川', '999', '6', '', '2952', '/0/2826/2952/', '3', '532931', 'JCX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2964', '鹤庆县', '鹤庆', '999', '6', '', '2952', '/0/2826/2952/', '3', '532932', 'IQX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2965', '德宏傣族景颇族自治州', '德宏', '999', '6', '', '2826', '/0/2826/', '2', '533100', 'DIDZJPZZZZ', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2966', '瑞丽市', '瑞丽', '999', '6', '', '2965', '/0/2826/2965/', '3', '533102', 'RLS', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2967', '芒市', '芒市', '999', '6', '', '2965', '/0/2826/2965/', '3', '533103', 'MS', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2968', '梁河县', '梁河', '999', '6', '', '2965', '/0/2826/2965/', '3', '533122', 'LIX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2969', '盈江县', '盈江', '999', '6', '', '2965', '/0/2826/2965/', '3', '533123', 'YJX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2970', '陇川县', '陇川', '999', '6', '', '2965', '/0/2826/2965/', '3', '533124', 'CX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2971', '怒江傈僳族自治州', '怒江', '999', '6', '', '2826', '/0/2826/', '2', '533300', 'NJLSZZZZ', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2972', '泸水市', '泸水', '999', '6', '', '2971', '/0/2826/2971/', '3', '533321', 'SX', '1', '1', '2017-03-09 11:54:47', '16', '2018-07-16 16:09:27');
INSERT INTO `god_area` VALUES ('2973', '福贡县', '福贡', '999', '6', '', '2971', '/0/2826/2971/', '3', '533323', 'FGX', '1', '1', '2017-03-09 11:54:47', '1', '2017-03-09 11:54:47');
INSERT INTO `god_area` VALUES ('2974', '贡山独龙族怒族自治县', '贡山', '999', '6', '', '2971', '/0/2826/2971/', '3', '533324', 'GSDLZNZZZX', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('2975', '兰坪白族普米族自治县', '兰坪', '999', '6', '', '2971', '/0/2826/2971/', '3', '533325', 'LPBZPMZZZX', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('2976', '迪庆藏族自治州', '迪庆', '999', '6', '', '2826', '/0/2826/', '2', '533400', 'DQCZZZZ', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('2977', '香格里拉市', '香格里拉', '999', '12', '', '2976', '/0/2826/2976/', '3', '533421', 'XGLLS', '1', '1', '2017-03-09 11:54:48', '12', '2017-10-08 09:23:46');
INSERT INTO `god_area` VALUES ('2978', '德钦县', '德钦', '999', '6', '', '2976', '/0/2826/2976/', '3', '533422', 'DQX', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('2979', '维西傈僳族自治县', '维西', '999', '6', '', '2976', '/0/2826/2976/', '3', '533423', 'WXLSZZZX', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('2980', '西藏自治区', '西藏', '999', '6', '', '0', '/0/', '1', '540000', 'XCZZQ', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('2981', '拉萨市', '拉萨', '999', '6', '', '2980', '/0/2980/', '2', '540100', 'LSS', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('2983', '城关区', '城关', '999', '6', '', '2981', '/0/2980/2981/', '3', '540102', 'CGQ', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('2984', '林周县', '林周', '999', '6', '', '2981', '/0/2980/2981/', '3', '540121', 'LZX', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('2985', '当雄县', '当雄', '999', '6', '', '2981', '/0/2980/2981/', '3', '540122', 'DXX', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('2986', '尼木县', '尼木', '999', '6', '', '2981', '/0/2980/2981/', '3', '540123', 'NMX', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('2987', '曲水县', '曲水', '999', '6', '', '2981', '/0/2980/2981/', '3', '540124', 'QSX', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('2988', '堆龙德庆区', '堆龙德庆', '999', '12', '', '2981', '/0/2980/2981/', '3', '540125', 'DLDQQ', '1', '1', '2017-03-09 11:54:48', '12', '2017-09-30 15:41:46');
INSERT INTO `god_area` VALUES ('2989', '达孜区', '达孜', '999', '6', '', '2981', '/0/2980/2981/', '3', '540126', 'DZX', '1', '1', '2017-03-09 11:54:48', '16', '2018-07-16 16:05:19');
INSERT INTO `god_area` VALUES ('2990', '墨竹工卡县', '墨竹工卡', '999', '12', '', '2981', '/0/2980/2981/', '3', '540127', 'ZGKX', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('2991', '日喀则市', '日喀则', '999', '9', '', '2980', '/0/2980/', '2', '540200', 'RKZS', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('2992', '桑珠孜区', '桑珠孜', '999', '9', '', '2991', '/0/2980/2991/', '3', '540202', 'SZZQ', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('2993', '南木林县', '南木林', '999', '9', '', '2991', '/0/2980/2991/', '3', '540221', 'NMLX', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('2994', '江孜县', '江孜', '999', '6', '', '2991', '/0/2980/2991/', '3', '540222', 'JZX', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('2995', '定日县', '定日', '999', '6', '', '2991', '/0/2980/2991/', '3', '540223', 'DRX', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('2996', '萨迦县', '萨迦', '999', '6', '', '2991', '/0/2980/2991/', '3', '540224', 'SX', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('2997', '拉孜县', '拉孜', '999', '6', '', '2991', '/0/2980/2991/', '3', '540225', 'LZX', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('2998', '昂仁县', '昂仁', '999', '6', '', '2991', '/0/2980/2991/', '3', '540226', 'ARX', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('2999', '谢通门县', '谢通门', '999', '9', '', '2991', '/0/2980/2991/', '3', '540227', 'TMX', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('3000', '白朗县', '白朗', '999', '6', '', '2991', '/0/2980/2991/', '3', '540228', 'BLX', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('3001', '仁布县', '仁布', '999', '6', '', '2991', '/0/2980/2991/', '3', '540229', 'RBX', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('3002', '康马县', '康马', '999', '6', '', '2991', '/0/2980/2991/', '3', '540230', 'KMX', '1', '1', '2017-03-09 11:54:48', '1', '2017-03-09 11:54:48');
INSERT INTO `god_area` VALUES ('3003', '定结县', '定结', '999', '6', '', '2991', '/0/2980/2991/', '3', '540231', 'DJX', '1', '1', '2017-03-09 11:54:49', '1', '2017-03-09 11:54:49');
INSERT INTO `god_area` VALUES ('3004', '仲巴县', '仲巴', '999', '6', '', '2991', '/0/2980/2991/', '3', '540232', 'ZBX', '1', '1', '2017-03-09 11:54:49', '1', '2017-03-09 11:54:49');
INSERT INTO `god_area` VALUES ('3005', '亚东县', '亚东', '999', '6', '', '2991', '/0/2980/2991/', '3', '540233', 'YDX', '1', '1', '2017-03-09 11:54:49', '1', '2017-03-09 11:54:49');
INSERT INTO `god_area` VALUES ('3006', '吉隆县', '吉隆', '999', '6', '', '2991', '/0/2980/2991/', '3', '540234', 'JLX', '1', '1', '2017-03-09 11:54:49', '1', '2017-03-09 11:54:49');
INSERT INTO `god_area` VALUES ('3007', '聂拉木县', '聂拉木', '999', '9', '', '2991', '/0/2980/2991/', '3', '540235', 'NLMX', '1', '1', '2017-03-09 11:54:49', '1', '2017-03-09 11:54:49');
INSERT INTO `god_area` VALUES ('3008', '萨嘎县', '萨嘎', '999', '6', '', '2991', '/0/2980/2991/', '3', '540236', 'SGX', '1', '1', '2017-03-09 11:54:49', '1', '2017-03-09 11:54:49');
INSERT INTO `god_area` VALUES ('3009', '岗巴县', '岗巴', '999', '6', '', '2991', '/0/2980/2991/', '3', '540237', 'GBX', '1', '1', '2017-03-09 11:54:49', '1', '2017-03-09 11:54:49');
INSERT INTO `god_area` VALUES ('3010', '昌都市', '昌都', '999', '6', '', '2980', '/0/2980/', '2', '542100', 'CDS', '1', '1', '2017-03-09 11:54:49', '12', '2017-09-30 15:30:10');
INSERT INTO `god_area` VALUES ('3011', '昌都县', '昌都县', '999', '9', '', '3010', '/0/2980/3010/', '3', '542121', 'CDX', '1', '88', '2017-03-09 11:54:49', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('3012', '江达县', '江达', '999', '6', '', '3010', '/0/2980/3010/', '3', '542122', 'JDX', '1', '1', '2017-03-09 11:54:49', '1', '2017-03-09 11:54:49');
INSERT INTO `god_area` VALUES ('3013', '贡觉县', '贡觉', '999', '6', '', '3010', '/0/2980/3010/', '3', '542123', 'GJX', '1', '1', '2017-03-09 11:54:49', '1', '2017-03-09 11:54:49');
INSERT INTO `god_area` VALUES ('3014', '类乌齐县', '类乌齐', '999', '9', '', '3010', '/0/2980/3010/', '3', '542124', 'LWQX', '1', '1', '2017-03-09 11:54:49', '1', '2017-03-09 11:54:49');
INSERT INTO `god_area` VALUES ('3015', '丁青县', '丁青', '999', '6', '', '3010', '/0/2980/3010/', '3', '542125', 'DQX', '1', '1', '2017-03-09 11:54:49', '1', '2017-03-09 11:54:49');
INSERT INTO `god_area` VALUES ('3016', '察雅县', '察雅', '999', '6', '', '3010', '/0/2980/3010/', '3', '542126', 'CYX', '1', '1', '2017-03-09 11:54:49', '1', '2017-03-09 11:54:49');
INSERT INTO `god_area` VALUES ('3017', '八宿县', '八宿', '999', '6', '', '3010', '/0/2980/3010/', '3', '542127', 'BSX', '1', '1', '2017-03-09 11:54:49', '1', '2017-03-09 11:54:49');
INSERT INTO `god_area` VALUES ('3018', '左贡县', '左贡', '999', '6', '', '3010', '/0/2980/3010/', '3', '542128', 'ZGX', '1', '1', '2017-03-09 11:54:49', '1', '2017-03-09 11:54:49');
INSERT INTO `god_area` VALUES ('3019', '芒康县', '芒康', '999', '6', '', '3010', '/0/2980/3010/', '3', '542129', 'MKX', '1', '1', '2017-03-09 11:54:49', '1', '2017-03-09 11:54:49');
INSERT INTO `god_area` VALUES ('3020', '洛隆县', '洛隆', '999', '6', '', '3010', '/0/2980/3010/', '3', '542132', 'LLX', '1', '1', '2017-03-09 11:54:49', '1', '2017-03-09 11:54:49');
INSERT INTO `god_area` VALUES ('3021', '边坝县', '边坝', '999', '6', '', '3010', '/0/2980/3010/', '3', '542133', 'BBX', '1', '1', '2017-03-09 11:54:49', '1', '2017-03-09 11:54:49');
INSERT INTO `god_area` VALUES ('3022', '山南市', '山南', '999', '6', '', '2980', '/0/2980/', '2', '542200', 'SNS', '1', '1', '2017-03-09 11:54:49', '6', '2017-08-10 10:09:14');
INSERT INTO `god_area` VALUES ('3023', '乃东区', '乃东区', '999', '6', '', '3022', '/0/2980/3022/', '3', '542221', 'NDQ', '1', '1', '2017-03-09 11:54:49', '12', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('3024', '扎囊县', '扎囊', '999', '6', '', '3022', '/0/2980/3022/', '3', '542222', 'ZNX', '1', '1', '2017-03-09 11:54:49', '1', '2017-03-09 11:54:49');
INSERT INTO `god_area` VALUES ('3025', '贡嘎县', '贡嘎', '999', '6', '', '3022', '/0/2980/3022/', '3', '542223', 'GGX', '1', '1', '2017-03-09 11:54:49', '1', '2017-03-09 11:54:49');
INSERT INTO `god_area` VALUES ('3026', '桑日县', '桑日', '999', '6', '', '3022', '/0/2980/3022/', '3', '542224', 'SRX', '1', '1', '2017-03-09 11:54:49', '1', '2017-03-09 11:54:49');
INSERT INTO `god_area` VALUES ('3027', '琼结县', '琼结', '999', '6', '', '3022', '/0/2980/3022/', '3', '542225', 'QJX', '1', '1', '2017-03-09 11:54:49', '1', '2017-03-09 11:54:49');
INSERT INTO `god_area` VALUES ('3028', '曲松县', '曲松', '999', '6', '', '3022', '/0/2980/3022/', '3', '542226', 'QSX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3029', '措美县', '措美', '999', '6', '', '3022', '/0/2980/3022/', '3', '542227', 'CMX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3030', '洛扎县', '洛扎', '999', '6', '', '3022', '/0/2980/3022/', '3', '542228', 'LZX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3031', '加查县', '加查', '999', '6', '', '3022', '/0/2980/3022/', '3', '542229', 'JCX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3032', '隆子县', '隆子', '999', '6', '', '3022', '/0/2980/3022/', '3', '542231', 'LZX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3033', '错那县', '错那', '999', '6', '', '3022', '/0/2980/3022/', '3', '542232', 'CNX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3034', '浪卡子县', '浪卡子', '999', '9', '', '3022', '/0/2980/3022/', '3', '542233', 'LKZX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3035', '那曲市', '那曲', '999', '6', '', '2980', '/0/2980/', '2', '542400', 'NQDQ', '1', '1', '2017-03-09 11:54:50', '16', '2018-07-16 15:26:54');
INSERT INTO `god_area` VALUES ('3036', '那曲县', '那曲', '999', '6', '', '3035', '/0/2980/3035/', '3', '542421', 'NQX', '0', '1', '2017-03-09 11:54:50', '16', '2018-07-16 16:08:17');
INSERT INTO `god_area` VALUES ('3037', '嘉黎县', '嘉黎', '999', '6', '', '3035', '/0/2980/3035/', '3', '542422', 'JLX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3038', '比如县', '比如', '999', '6', '', '3035', '/0/2980/3035/', '3', '542423', 'BRX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3039', '聂荣县', '聂荣', '999', '6', '', '3035', '/0/2980/3035/', '3', '542424', 'NRX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3040', '安多县', '安多', '999', '6', '', '3035', '/0/2980/3035/', '3', '542425', 'ADX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3041', '申扎县', '申扎', '999', '6', '', '3035', '/0/2980/3035/', '3', '542426', 'SZX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3042', '索县', '索县', '999', '6', '', '3035', '/0/2980/3035/', '3', '542427', 'SX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3043', '班戈县', '班戈', '999', '6', '', '3035', '/0/2980/3035/', '3', '542428', 'BGX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3044', '巴青县', '巴青', '999', '6', '', '3035', '/0/2980/3035/', '3', '542429', 'BQX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3045', '尼玛县', '尼玛', '999', '6', '', '3035', '/0/2980/3035/', '3', '542430', 'NMX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3046', '双湖县', '双湖', '999', '6', '', '3035', '/0/2980/3035/', '3', '542431', 'SIX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3047', '阿里地区', '阿里', '999', '6', '', '2980', '/0/2980/', '2', '542500', 'ALDQ', '1', '1', '2017-03-09 11:54:50', '1', '2017-08-17 09:21:26');
INSERT INTO `god_area` VALUES ('3048', '普兰县', '普兰', '999', '6', '', '3047', '/0/2980/3047/', '3', '542521', 'PLX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3049', '札达县', '札达', '999', '6', '', '3047', '/0/2980/3047/', '3', '542522', 'ZDX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3050', '噶尔县', '噶尔', '999', '6', '', '3047', '/0/2980/3047/', '3', '542523', 'GEX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3051', '日土县', '日土', '999', '6', '', '3047', '/0/2980/3047/', '3', '542524', 'RTX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3052', '革吉县', '革吉', '999', '6', '', '3047', '/0/2980/3047/', '3', '542525', 'GJX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3053', '改则县', '改则', '999', '6', '', '3047', '/0/2980/3047/', '3', '542526', 'GZX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3054', '措勤县', '措勤', '999', '6', '', '3047', '/0/2980/3047/', '3', '542527', 'CQX', '1', '1', '2017-03-09 11:54:50', '1', '2017-03-09 11:54:50');
INSERT INTO `god_area` VALUES ('3055', '林芝市', '林芝', '999', '6', '', '2980', '/0/2980/', '2', '542600', 'LZS', '1', '1', '2017-03-09 11:54:51', '1', '2017-08-17 09:21:21');
INSERT INTO `god_area` VALUES ('3056', '林芝县', '林芝县', '999', '9', '', '3055', '/0/2980/3055/', '3', '542621', 'LZX', '1', '1', '2017-03-09 11:54:51', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('3057', '工布江达县', '工布江达', '999', '12', '', '3055', '/0/2980/3055/', '3', '542622', 'GBJDX', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3058', '米林县', '米林', '999', '6', '', '3055', '/0/2980/3055/', '3', '542623', 'MLX', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3059', '墨脱县', '墨脱', '999', '6', '', '3055', '/0/2980/3055/', '3', '542624', 'TX', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3060', '波密县', '波密', '999', '6', '', '3055', '/0/2980/3055/', '3', '542625', 'BMX', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3061', '察隅县', '察隅', '999', '6', '', '3055', '/0/2980/3055/', '3', '542626', 'CYX', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3062', '朗县', '朗县', '999', '6', '', '3055', '/0/2980/3055/', '3', '542627', 'LX', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3063', '陕西省', '陕西', '999', '6', '', '0', '/0/', '1', '610000', 'SXS', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3064', '西安市', '西安', '999', '6', '', '3063', '/0/3063/', '2', '610100', 'XAS', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3066', '新城区', '新城区', '999', '9', '', '3064', '/0/3063/3064/', '3', '610102', 'XCQ', '1', '1', '2017-03-09 11:54:51', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('3067', '碑林区', '碑林', '999', '6', '', '3064', '/0/3063/3064/', '3', '610103', 'BLQ', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3068', '莲湖区', '莲湖', '999', '6', '', '3064', '/0/3063/3064/', '3', '610104', 'LIQ', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3069', '灞桥区', '灞桥', '999', '6', '', '3064', '/0/3063/3064/', '3', '610111', 'QQ', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3070', '未央区', '未央', '999', '6', '', '3064', '/0/3063/3064/', '3', '610112', 'YQ', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3071', '雁塔区', '雁塔', '999', '6', '', '3064', '/0/3063/3064/', '3', '610113', 'YTQ', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3072', '阎良区', '阎良', '999', '6', '', '3064', '/0/3063/3064/', '3', '610114', 'YLQ', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3073', '临潼区', '临潼', '999', '6', '', '3064', '/0/3063/3064/', '3', '610115', 'LQ', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3074', '长安区', '长安', '999', '6', '', '3064', '/0/3063/3064/', '3', '610116', 'CAQ', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3075', '蓝田县', '蓝田', '999', '6', '', '3064', '/0/3063/3064/', '3', '610122', 'LTX', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3076', '周至县', '周至', '999', '6', '', '3064', '/0/3063/3064/', '3', '610124', 'ZZX', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3077', '户县', '户县', '999', '6', '', '3064', '/0/3063/3064/', '3', '610125', 'IX', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3078', '高陵区', '高陵', '999', '6', '', '3064', '/0/3063/3064/', '3', '610126', 'GLX', '1', '1', '2017-03-09 11:54:51', '16', '2018-07-16 15:23:41');
INSERT INTO `god_area` VALUES ('3079', '铜川市', '铜川', '999', '6', '', '3063', '/0/3063/', '2', '610200', 'TCS', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3081', '王益区', '王益', '999', '6', '', '3079', '/0/3063/3079/', '3', '610202', 'WYQ', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3082', '印台区', '印台', '999', '6', '', '3079', '/0/3063/3079/', '3', '610203', 'YTQ', '1', '1', '2017-03-09 11:54:51', '1', '2017-03-09 11:54:51');
INSERT INTO `god_area` VALUES ('3083', '耀州区', '耀州', '999', '6', '', '3079', '/0/3063/3079/', '3', '610204', 'YZQ', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3084', '宜君县', '宜君', '999', '6', '', '3079', '/0/3063/3079/', '3', '610222', 'YJX', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3085', '宝鸡市', '宝鸡', '999', '6', '', '3063', '/0/3063/', '2', '610300', 'BJS', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3087', '渭滨区', '渭滨', '999', '6', '', '3085', '/0/3063/3085/', '3', '610302', 'BQ', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3088', '金台区', '金台', '999', '6', '', '3085', '/0/3063/3085/', '3', '610303', 'JTQ', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3089', '陈仓区', '陈仓', '999', '6', '', '3085', '/0/3063/3085/', '3', '610304', 'CCQ', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3090', '凤翔县', '凤翔', '999', '6', '', '3085', '/0/3063/3085/', '3', '610322', 'FXX', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3091', '岐山县', '岐山', '999', '6', '', '3085', '/0/3063/3085/', '3', '610323', 'SX', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3092', '扶风县', '扶风', '999', '6', '', '3085', '/0/3063/3085/', '3', '610324', 'FFX', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3093', '眉县', '眉县', '999', '6', '', '3085', '/0/3063/3085/', '3', '610326', 'X', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3094', '陇县', '陇县', '999', '6', '', '3085', '/0/3063/3085/', '3', '610327', 'X', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3095', '千阳县', '千阳', '999', '6', '', '3085', '/0/3063/3085/', '3', '610328', 'QYX', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3096', '麟游县', '麟游', '999', '6', '', '3085', '/0/3063/3085/', '3', '610329', 'YX', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3097', '凤县', '凤县', '999', '6', '', '3085', '/0/3063/3085/', '3', '610330', 'FX', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3098', '太白县', '太白', '999', '6', '', '3085', '/0/3063/3085/', '3', '610331', 'TBX', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3099', '咸阳市', '咸阳', '999', '6', '', '3063', '/0/3063/', '2', '610400', 'XYS', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3101', '秦都区', '秦都', '999', '6', '', '3099', '/0/3063/3099/', '3', '610402', 'QDQ', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3102', '杨陵区', '杨陵', '999', '6', '', '3099', '/0/3063/3099/', '3', '610403', 'YLQ', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3103', '渭城区', '渭城区', '999', '9', '', '3099', '/0/3063/3099/', '3', '610404', 'CQ', '1', '1', '2017-03-09 11:54:52', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('3104', '三原县', '三原', '999', '6', '', '3099', '/0/3063/3099/', '3', '610422', 'SYX', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3105', '泾阳县', '泾阳', '999', '6', '', '3099', '/0/3063/3099/', '3', '610423', 'YX', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3106', '乾县', '乾县', '999', '6', '', '3099', '/0/3063/3099/', '3', '610424', 'QX', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3107', '礼泉县', '礼泉', '999', '6', '', '3099', '/0/3063/3099/', '3', '610425', 'LQX', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3108', '永寿县', '永寿', '999', '6', '', '3099', '/0/3063/3099/', '3', '610426', 'YSX', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3109', '彬州市', '彬州', '999', '6', '', '3099', '/0/3063/3099/', '3', '610427', 'BX', '1', '1', '2017-03-09 11:54:52', '16', '2018-07-26 09:31:17');
INSERT INTO `god_area` VALUES ('3110', '长武县', '长武', '999', '6', '', '3099', '/0/3063/3099/', '3', '610428', 'CWX', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3111', '旬邑县', '旬邑', '999', '6', '', '3099', '/0/3063/3099/', '3', '610429', 'XYX', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3112', '淳化县', '淳化', '999', '6', '', '3099', '/0/3063/3099/', '3', '610430', 'CIX', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3113', '武功县', '武功', '999', '6', '', '3099', '/0/3063/3099/', '3', '610431', 'WGX', '1', '1', '2017-03-09 11:54:52', '1', '2017-03-09 11:54:52');
INSERT INTO `god_area` VALUES ('3114', '兴平市', '兴平', '999', '6', '', '3099', '/0/3063/3099/', '3', '610481', 'XPS', '1', '1', '2017-03-09 11:54:53', '1', '2017-03-09 11:54:53');
INSERT INTO `god_area` VALUES ('3115', '渭南市', '渭南', '999', '6', '', '3063', '/0/3063/', '2', '610500', 'NS', '1', '1', '2017-03-09 11:54:53', '1', '2017-03-09 11:54:53');
INSERT INTO `god_area` VALUES ('3117', '临渭区', '临渭', '999', '6', '', '3115', '/0/3063/3115/', '3', '610502', 'LQ', '1', '1', '2017-03-09 11:54:53', '1', '2017-03-09 11:54:53');
INSERT INTO `god_area` VALUES ('3118', '华州区', '华州', '999', '6', '', '3115', '/0/3063/3115/', '3', '610521', 'IX', '1', '1', '2017-03-09 11:54:53', '12', '2018-07-02 14:29:54');
INSERT INTO `god_area` VALUES ('3119', '潼关县', '潼关', '999', '6', '', '3115', '/0/3063/3115/', '3', '610522', 'GX', '1', '1', '2017-03-09 11:54:53', '1', '2017-03-09 11:54:53');
INSERT INTO `god_area` VALUES ('3120', '大荔县', '大荔', '999', '6', '', '3115', '/0/3063/3115/', '3', '610523', 'DLX', '1', '1', '2017-03-09 11:54:53', '1', '2017-03-09 11:54:53');
INSERT INTO `god_area` VALUES ('3121', '合阳县', '合阳', '999', '6', '', '3115', '/0/3063/3115/', '3', '610524', 'IYX', '1', '1', '2017-03-09 11:54:53', '1', '2017-03-09 11:54:53');
INSERT INTO `god_area` VALUES ('3122', '澄城县', '澄城', '999', '6', '', '3115', '/0/3063/3115/', '3', '610525', 'CCX', '1', '1', '2017-03-09 11:54:53', '1', '2017-03-09 11:54:53');
INSERT INTO `god_area` VALUES ('3123', '蒲城县', '蒲城', '999', '6', '', '3115', '/0/3063/3115/', '3', '610526', 'PCX', '1', '1', '2017-03-09 11:54:53', '1', '2017-03-09 11:54:53');
INSERT INTO `god_area` VALUES ('3124', '白水县', '白水', '999', '6', '', '3115', '/0/3063/3115/', '3', '610527', 'BSX', '1', '1', '2017-03-09 11:54:53', '1', '2017-03-09 11:54:53');
INSERT INTO `god_area` VALUES ('3125', '富平县', '富平', '999', '6', '', '3115', '/0/3063/3115/', '3', '610528', 'FPX', '1', '1', '2017-03-09 11:54:53', '1', '2017-03-09 11:54:53');
INSERT INTO `god_area` VALUES ('3126', '韩城市', '韩城', '999', '6', '', '3115', '/0/3063/3115/', '3', '610581', 'ICS', '1', '1', '2017-03-09 11:54:53', '1', '2017-03-09 11:54:53');
INSERT INTO `god_area` VALUES ('3127', '华阴市', '华阴', '999', '6', '', '3115', '/0/3063/3115/', '3', '610582', 'IYS', '1', '1', '2017-03-09 11:54:53', '1', '2017-03-09 11:54:53');
INSERT INTO `god_area` VALUES ('3128', '延安市', '延安', '999', '6', '', '3063', '/0/3063/', '2', '610600', 'YAS', '1', '1', '2017-03-09 11:54:53', '1', '2017-03-09 11:54:53');
INSERT INTO `god_area` VALUES ('3130', '宝塔区', '宝塔', '999', '6', '', '3128', '/0/3063/3128/', '3', '610602', 'BTQ', '1', '1', '2017-03-09 11:54:53', '1', '2017-03-09 11:54:53');
INSERT INTO `god_area` VALUES ('3131', '延长县', '延长县', '999', '9', '', '3128', '/0/3063/3128/', '3', '610621', 'YCX', '1', '1', '2017-03-09 11:54:53', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('3132', '延川县', '延川', '999', '6', '', '3128', '/0/3063/3128/', '3', '610622', 'YCX', '1', '1', '2017-03-09 11:54:53', '1', '2017-03-09 11:54:53');
INSERT INTO `god_area` VALUES ('3133', '子长县', '子长', '999', '6', '', '3128', '/0/3063/3128/', '3', '610623', 'ZCX', '1', '1', '2017-03-09 11:54:53', '1', '2017-03-09 11:54:53');
INSERT INTO `god_area` VALUES ('3134', '安塞区', '安塞', '999', '6', '', '3128', '/0/3063/3128/', '3', '610624', 'ASX', '1', '1', '2017-03-09 11:54:53', '12', '2018-06-05 14:28:03');
INSERT INTO `god_area` VALUES ('3135', '志丹县', '志丹', '999', '6', '', '3128', '/0/3063/3128/', '3', '610625', 'ZDX', '1', '1', '2017-03-09 11:54:53', '1', '2017-03-09 11:54:53');
INSERT INTO `god_area` VALUES ('3136', '吴起县', '吴起', '999', '6', '', '3128', '/0/3063/3128/', '3', '610626', 'WQX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3137', '甘泉县', '甘泉', '999', '6', '', '3128', '/0/3063/3128/', '3', '610627', 'GQX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3138', '富县', '富县', '999', '6', '', '3128', '/0/3063/3128/', '3', '610628', 'FX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3139', '洛川县', '洛川', '999', '6', '', '3128', '/0/3063/3128/', '3', '610629', 'LCX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3140', '宜川县', '宜川', '999', '6', '', '3128', '/0/3063/3128/', '3', '610630', 'YCX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3141', '黄龙县', '黄龙', '999', '6', '', '3128', '/0/3063/3128/', '3', '610631', 'ILX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3142', '黄陵县', '黄陵', '999', '6', '', '3128', '/0/3063/3128/', '3', '610632', 'ILX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3143', '汉中市', '汉中', '999', '6', '', '3063', '/0/3063/', '2', '610700', 'IZS', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3145', '汉台区', '汉台', '999', '6', '', '3143', '/0/3063/3143/', '3', '610702', 'ITQ', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3146', '南郑区', '南郑', '999', '6', '', '3143', '/0/3063/3143/', '3', '610721', 'NZX', '1', '1', '2017-03-09 11:54:54', '16', '2018-06-20 17:03:09');
INSERT INTO `god_area` VALUES ('3147', '城固县', '城固', '999', '6', '', '3143', '/0/3063/3143/', '3', '610722', 'CGX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3148', '洋县', '洋县', '999', '6', '', '3143', '/0/3063/3143/', '3', '610723', 'YX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3149', '西乡县', '西乡', '999', '6', '', '3143', '/0/3063/3143/', '3', '610724', 'XXX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3150', '勉县', '勉县', '999', '6', '', '3143', '/0/3063/3143/', '3', '610725', 'MX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3151', '宁强县', '宁强', '999', '6', '', '3143', '/0/3063/3143/', '3', '610726', 'NQX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3152', '略阳县', '略阳', '999', '6', '', '3143', '/0/3063/3143/', '3', '610727', 'LYX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3153', '镇巴县', '镇巴', '999', '6', '', '3143', '/0/3063/3143/', '3', '610728', 'ZBX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3154', '留坝县', '留坝', '999', '6', '', '3143', '/0/3063/3143/', '3', '610729', 'LBX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3155', '佛坪县', '佛坪', '999', '6', '', '3143', '/0/3063/3143/', '3', '610730', 'FPX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3156', '榆林市', '榆林', '999', '6', '', '3063', '/0/3063/', '2', '610800', 'YLS', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3158', '榆阳区', '榆阳', '999', '6', '', '3156', '/0/3063/3156/', '3', '610802', 'YYQ', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3159', '神木市', '神木', '999', '6', '', '3156', '/0/3063/3156/', '3', '610821', 'SMS', '1', '1', '2017-03-09 11:54:54', '12', '2017-10-10 17:07:48');
INSERT INTO `god_area` VALUES ('3160', '府谷县', '府谷', '999', '6', '', '3156', '/0/3063/3156/', '3', '610822', 'FGX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3161', '横山区', '横山', '999', '6', '', '3156', '/0/3063/3156/', '3', '610823', 'ISX', '1', '1', '2017-03-09 11:54:54', '16', '2018-05-10 11:44:01');
INSERT INTO `god_area` VALUES ('3162', '靖边县', '靖边', '999', '6', '', '3156', '/0/3063/3156/', '3', '610824', 'JBX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3163', '定边县', '定边', '999', '6', '', '3156', '/0/3063/3156/', '3', '610825', 'DBX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3164', '绥德县', '绥德', '999', '6', '', '3156', '/0/3063/3156/', '3', '610826', 'SDX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3165', '米脂县', '米脂', '999', '6', '', '3156', '/0/3063/3156/', '3', '610827', 'MZX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3166', '佳县', '佳县', '999', '6', '', '3156', '/0/3063/3156/', '3', '610828', 'JX', '1', '1', '2017-03-09 11:54:54', '1', '2017-03-09 11:54:54');
INSERT INTO `god_area` VALUES ('3167', '吴堡县', '吴堡', '999', '6', '', '3156', '/0/3063/3156/', '3', '610829', 'WBX', '1', '1', '2017-03-09 11:54:55', '1', '2017-03-09 11:54:55');
INSERT INTO `god_area` VALUES ('3168', '清涧县', '清涧', '999', '6', '', '3156', '/0/3063/3156/', '3', '610830', 'QJX', '1', '1', '2017-03-09 11:54:55', '1', '2017-03-09 11:54:55');
INSERT INTO `god_area` VALUES ('3169', '子洲县', '子洲', '999', '6', '', '3156', '/0/3063/3156/', '3', '610831', 'ZZX', '1', '1', '2017-03-09 11:54:55', '1', '2017-03-09 11:54:55');
INSERT INTO `god_area` VALUES ('3170', '安康市', '安康', '999', '6', '', '3063', '/0/3063/', '2', '610900', 'AKS', '1', '1', '2017-03-09 11:54:55', '1', '2017-03-09 11:54:55');
INSERT INTO `god_area` VALUES ('3172', '汉滨区', '汉滨', '999', '6', '', '3170', '/0/3063/3170/', '3', '610902', 'IBQ', '1', '1', '2017-03-09 11:54:55', '1', '2017-03-09 11:54:55');
INSERT INTO `god_area` VALUES ('3173', '汉阴县', '汉阴', '999', '6', '', '3170', '/0/3063/3170/', '3', '610921', 'IYX', '1', '1', '2017-03-09 11:54:55', '1', '2017-03-09 11:54:55');
INSERT INTO `god_area` VALUES ('3174', '石泉县', '石泉', '999', '6', '', '3170', '/0/3063/3170/', '3', '610922', 'SQX', '1', '1', '2017-03-09 11:54:55', '1', '2017-03-09 11:54:55');
INSERT INTO `god_area` VALUES ('3175', '宁陕县', '宁陕', '999', '6', '', '3170', '/0/3063/3170/', '3', '610923', 'NSX', '1', '1', '2017-03-09 11:54:55', '1', '2017-03-09 11:54:55');
INSERT INTO `god_area` VALUES ('3176', '紫阳县', '紫阳', '999', '6', '', '3170', '/0/3063/3170/', '3', '610924', 'ZYX', '1', '1', '2017-03-09 11:54:55', '1', '2017-03-09 11:54:55');
INSERT INTO `god_area` VALUES ('3177', '岚皋县', '岚皋', '999', '6', '', '3170', '/0/3063/3170/', '3', '610925', 'GX', '1', '1', '2017-03-09 11:54:55', '1', '2017-03-09 11:54:55');
INSERT INTO `god_area` VALUES ('3178', '平利县', '平利', '999', '6', '', '3170', '/0/3063/3170/', '3', '610926', 'PLX', '1', '1', '2017-03-09 11:54:55', '1', '2017-03-09 11:54:55');
INSERT INTO `god_area` VALUES ('3179', '镇坪县', '镇坪', '999', '6', '', '3170', '/0/3063/3170/', '3', '610927', 'ZPX', '1', '1', '2017-03-09 11:54:55', '1', '2017-03-09 11:54:55');
INSERT INTO `god_area` VALUES ('3180', '旬阳县', '旬阳', '999', '6', '', '3170', '/0/3063/3170/', '3', '610928', 'XYX', '1', '1', '2017-03-09 11:54:55', '1', '2017-03-09 11:54:55');
INSERT INTO `god_area` VALUES ('3181', '白河县', '白河', '999', '6', '', '3170', '/0/3063/3170/', '3', '610929', 'BIX', '1', '1', '2017-03-09 11:54:55', '1', '2017-03-09 11:54:55');
INSERT INTO `god_area` VALUES ('3182', '商洛市', '商洛', '999', '6', '', '3063', '/0/3063/', '2', '611000', 'SLS', '1', '1', '2017-03-09 11:54:55', '1', '2017-03-09 11:54:55');
INSERT INTO `god_area` VALUES ('3184', '商州区', '商州', '999', '6', '', '3182', '/0/3063/3182/', '3', '611002', 'SZQ', '1', '1', '2017-03-09 11:54:55', '1', '2017-03-09 11:54:55');
INSERT INTO `god_area` VALUES ('3185', '洛南县', '洛南', '999', '6', '', '3182', '/0/3063/3182/', '3', '611021', 'LNX', '1', '1', '2017-03-09 11:54:55', '1', '2017-03-09 11:54:55');
INSERT INTO `god_area` VALUES ('3186', '丹凤县', '丹凤', '999', '6', '', '3182', '/0/3063/3182/', '3', '611022', 'DFX', '1', '1', '2017-03-09 11:54:55', '1', '2017-03-09 11:54:55');
INSERT INTO `god_area` VALUES ('3187', '商南县', '商南', '999', '6', '', '3182', '/0/3063/3182/', '3', '611023', 'SNX', '1', '1', '2017-03-09 11:54:55', '1', '2017-03-09 11:54:55');
INSERT INTO `god_area` VALUES ('3188', '山阳县', '山阳', '999', '6', '', '3182', '/0/3063/3182/', '3', '611024', 'SYX', '1', '1', '2017-03-09 11:54:55', '1', '2017-03-09 11:54:55');
INSERT INTO `god_area` VALUES ('3189', '镇安县', '镇安', '999', '6', '', '3182', '/0/3063/3182/', '3', '611025', 'ZAX', '1', '1', '2017-03-09 11:54:55', '1', '2017-03-09 11:54:55');
INSERT INTO `god_area` VALUES ('3190', '柞水县', '柞水', '999', '6', '', '3182', '/0/3063/3182/', '3', '611026', 'ZSX', '1', '1', '2017-03-09 11:54:56', '1', '2017-03-09 11:54:56');
INSERT INTO `god_area` VALUES ('3191', '甘肃省', '甘肃', '999', '6', '', '0', '/0/', '1', '620000', 'GSS', '1', '1', '2017-03-09 11:54:56', '1', '2017-03-09 11:54:56');
INSERT INTO `god_area` VALUES ('3192', '兰州市', '兰州', '999', '6', '', '3191', '/0/3191/', '2', '620100', 'LZS', '1', '1', '2017-03-09 11:54:56', '1', '2017-03-09 11:54:56');
INSERT INTO `god_area` VALUES ('3194', '城关区', '城关', '999', '6', '', '3192', '/0/3191/3192/', '3', '620102', 'CGQ', '1', '1', '2017-03-09 11:54:56', '1', '2017-03-09 11:54:56');
INSERT INTO `god_area` VALUES ('3195', '七里河区', '七里河', '999', '9', '', '3192', '/0/3191/3192/', '3', '620103', 'QLIQ', '1', '1', '2017-03-09 11:54:56', '1', '2017-03-09 11:54:56');
INSERT INTO `god_area` VALUES ('3196', '西固区', '西固', '999', '6', '', '3192', '/0/3191/3192/', '3', '620104', 'XGQ', '1', '1', '2017-03-09 11:54:56', '1', '2017-03-09 11:54:56');
INSERT INTO `god_area` VALUES ('3197', '安宁区', '安宁', '999', '6', '', '3192', '/0/3191/3192/', '3', '620105', 'ANQ', '1', '1', '2017-03-09 11:54:56', '1', '2017-03-09 11:54:56');
INSERT INTO `god_area` VALUES ('3198', '红古区', '红古', '999', '6', '', '3192', '/0/3191/3192/', '3', '620111', 'IGQ', '1', '1', '2017-03-09 11:54:56', '1', '2017-03-09 11:54:56');
INSERT INTO `god_area` VALUES ('3199', '永登县', '永登', '999', '6', '', '3192', '/0/3191/3192/', '3', '620121', 'YDX', '1', '1', '2017-03-09 11:54:56', '1', '2017-03-09 11:54:56');
INSERT INTO `god_area` VALUES ('3200', '皋兰县', '皋兰', '999', '6', '', '3192', '/0/3191/3192/', '3', '620122', 'GLX', '1', '1', '2017-03-09 11:54:56', '1', '2017-03-09 11:54:56');
INSERT INTO `god_area` VALUES ('3201', '榆中县', '榆中', '999', '6', '', '3192', '/0/3191/3192/', '3', '620123', 'YZX', '1', '1', '2017-03-09 11:54:56', '1', '2017-03-09 11:54:56');
INSERT INTO `god_area` VALUES ('3202', '嘉峪关市', '嘉峪关', '999', '9', '', '3191', '/0/3191/', '2', '620200', 'JYGS', '1', '1', '2017-03-09 11:54:56', '1', '2017-03-09 11:54:56');
INSERT INTO `god_area` VALUES ('3204', '金昌市', '金昌', '999', '6', '', '3191', '/0/3191/', '2', '620300', 'JCS', '1', '1', '2017-03-09 11:54:56', '1', '2017-03-09 11:54:56');
INSERT INTO `god_area` VALUES ('3206', '金川区', '金川', '999', '6', '', '3204', '/0/3191/3204/', '3', '620302', 'JCQ', '1', '1', '2017-03-09 11:54:56', '1', '2017-03-09 11:54:56');
INSERT INTO `god_area` VALUES ('3207', '永昌县', '永昌', '999', '6', '', '3204', '/0/3191/3204/', '3', '620321', 'YCX', '1', '1', '2017-03-09 11:54:56', '1', '2017-03-09 11:54:56');
INSERT INTO `god_area` VALUES ('3208', '白银市', '白银', '999', '6', '', '3191', '/0/3191/', '2', '620400', 'BYS', '1', '1', '2017-03-09 11:54:56', '1', '2017-03-09 11:54:56');
INSERT INTO `god_area` VALUES ('3210', '白银区', '白银区', '999', '9', '', '3208', '/0/3191/3208/', '3', '620402', 'BYQ', '1', '1', '2017-03-09 11:54:56', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('3211', '平川区', '平川', '999', '6', '', '3208', '/0/3191/3208/', '3', '620403', 'PCQ', '1', '1', '2017-03-09 11:54:56', '1', '2017-03-09 11:54:56');
INSERT INTO `god_area` VALUES ('3212', '靖远县', '靖远', '999', '6', '', '3208', '/0/3191/3208/', '3', '620421', 'JYX', '1', '1', '2017-03-09 11:54:56', '1', '2017-03-09 11:54:56');
INSERT INTO `god_area` VALUES ('3213', '会宁县', '会宁', '999', '6', '', '3208', '/0/3191/3208/', '3', '620422', 'INX', '1', '1', '2017-03-09 11:54:56', '1', '2017-03-09 11:54:56');
INSERT INTO `god_area` VALUES ('3214', '景泰县', '景泰', '999', '6', '', '3208', '/0/3191/3208/', '3', '620423', 'JTX', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3215', '天水市', '天水', '999', '6', '', '3191', '/0/3191/', '2', '620500', 'TSS', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3217', '秦州区', '秦州', '999', '6', '', '3215', '/0/3191/3215/', '3', '620502', 'QZQ', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3218', '麦积区', '麦积', '999', '6', '', '3215', '/0/3191/3215/', '3', '620503', 'MJQ', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3219', '清水县', '清水', '999', '6', '', '3215', '/0/3191/3215/', '3', '620521', 'QSX', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3220', '秦安县', '秦安', '999', '6', '', '3215', '/0/3191/3215/', '3', '620522', 'QAX', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3221', '甘谷县', '甘谷', '999', '6', '', '3215', '/0/3191/3215/', '3', '620523', 'GGX', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3222', '武山县', '武山', '999', '6', '', '3215', '/0/3191/3215/', '3', '620524', 'WSX', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3223', '张家川回族自治县', '张家川', '999', '9', '', '3215', '/0/3191/3215/', '3', '620525', 'ZJCIZZZX', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3224', '武威市', '武威', '999', '6', '', '3191', '/0/3191/', '2', '620600', 'WWS', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3226', '凉州区', '凉州', '999', '6', '', '3224', '/0/3191/3224/', '3', '620602', 'LZQ', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3227', '民勤县', '民勤', '999', '6', '', '3224', '/0/3191/3224/', '3', '620621', 'MQX', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3228', '古浪县', '古浪', '999', '6', '', '3224', '/0/3191/3224/', '3', '620622', 'GLX', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3229', '天祝藏族自治县', '天祝', '999', '6', '', '3224', '/0/3191/3224/', '3', '620623', 'TZCZZZX', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3230', '张掖市', '张掖', '999', '6', '', '3191', '/0/3191/', '2', '620700', 'ZYS', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3232', '甘州区', '甘州', '999', '6', '', '3230', '/0/3191/3230/', '3', '620702', 'GZQ', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3233', '肃南裕固族自治县', '肃南', '999', '6', '', '3230', '/0/3191/3230/', '3', '620721', 'SNYGZZZX', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3234', '民乐县', '民乐', '999', '6', '', '3230', '/0/3191/3230/', '3', '620722', 'MLX', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3235', '临泽县', '临泽', '999', '6', '', '3230', '/0/3191/3230/', '3', '620723', 'LZX', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3236', '高台县', '高台', '999', '6', '', '3230', '/0/3191/3230/', '3', '620724', 'GTX', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3237', '山丹县', '山丹', '999', '6', '', '3230', '/0/3191/3230/', '3', '620725', 'SDX', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3238', '平凉市', '平凉', '999', '6', '', '3191', '/0/3191/', '2', '620800', 'PLS', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3240', '崆峒区', '崆峒', '999', '6', '', '3238', '/0/3191/3238/', '3', '620802', 'Q', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3241', '泾川县', '泾川', '999', '6', '', '3238', '/0/3191/3238/', '3', '620821', 'CX', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3242', '灵台县', '灵台', '999', '6', '', '3238', '/0/3191/3238/', '3', '620822', 'LTX', '1', '1', '2017-03-09 11:54:57', '1', '2017-03-09 11:54:57');
INSERT INTO `god_area` VALUES ('3243', '崇信县', '崇信', '999', '6', '', '3238', '/0/3191/3238/', '3', '620823', 'CXX', '1', '1', '2017-03-09 11:54:58', '1', '2017-03-09 11:54:58');
INSERT INTO `god_area` VALUES ('3244', '华亭市', '华亭', '999', '6', '', '3238', '/0/3191/3238/', '3', '620824', 'ITX', '1', '1', '2017-03-09 11:54:58', '16', '2019-03-21 13:58:30');
INSERT INTO `god_area` VALUES ('3245', '庄浪县', '庄浪', '999', '6', '', '3238', '/0/3191/3238/', '3', '620825', 'ZLX', '1', '1', '2017-03-09 11:54:58', '1', '2017-03-09 11:54:58');
INSERT INTO `god_area` VALUES ('3246', '静宁县', '静宁', '999', '6', '', '3238', '/0/3191/3238/', '3', '620826', 'JNX', '1', '1', '2017-03-09 11:54:58', '1', '2017-03-09 11:54:58');
INSERT INTO `god_area` VALUES ('3247', '酒泉市', '酒泉', '999', '6', '', '3191', '/0/3191/', '2', '620900', 'JQS', '1', '1', '2017-03-09 11:54:58', '1', '2017-03-09 11:54:58');
INSERT INTO `god_area` VALUES ('3249', '肃州区', '肃州', '999', '6', '', '3247', '/0/3191/3247/', '3', '620902', 'SZQ', '1', '1', '2017-03-09 11:54:58', '1', '2017-03-09 11:54:58');
INSERT INTO `god_area` VALUES ('3250', '金塔县', '金塔', '999', '6', '', '3247', '/0/3191/3247/', '3', '620921', 'JTX', '1', '1', '2017-03-09 11:54:58', '1', '2017-03-09 11:54:58');
INSERT INTO `god_area` VALUES ('3251', '瓜州县', '瓜州', '999', '6', '', '3247', '/0/3191/3247/', '3', '620922', 'GZX', '1', '1', '2017-03-09 11:54:58', '1', '2017-03-09 11:54:58');
INSERT INTO `god_area` VALUES ('3252', '肃北蒙古族自治县', '肃北', '999', '6', '', '3247', '/0/3191/3247/', '3', '620923', 'SBMGZZZX', '1', '1', '2017-03-09 11:54:58', '1', '2017-03-09 11:54:58');
INSERT INTO `god_area` VALUES ('3253', '阿克塞哈萨克族自治县', '阿克塞', '999', '9', '', '3247', '/0/3191/3247/', '3', '620924', 'AKSISKZZZX', '1', '1', '2017-03-09 11:54:58', '1', '2017-03-09 11:54:58');
INSERT INTO `god_area` VALUES ('3254', '玉门市', '玉门', '999', '6', '', '3247', '/0/3191/3247/', '3', '620981', 'YMS', '1', '1', '2017-03-09 11:54:58', '1', '2017-03-09 11:54:58');
INSERT INTO `god_area` VALUES ('3255', '敦煌市', '敦煌', '999', '6', '', '3247', '/0/3191/3247/', '3', '620982', 'DIS', '1', '1', '2017-03-09 11:54:58', '1', '2017-03-09 11:54:58');
INSERT INTO `god_area` VALUES ('3256', '庆阳市', '庆阳', '999', '6', '', '3191', '/0/3191/', '2', '621000', 'QYS', '1', '1', '2017-03-09 11:54:58', '1', '2017-03-09 11:54:58');
INSERT INTO `god_area` VALUES ('3258', '西峰区', '西峰', '999', '6', '', '3256', '/0/3191/3256/', '3', '621002', 'XFQ', '1', '1', '2017-03-09 11:54:58', '1', '2017-03-09 11:54:58');
INSERT INTO `god_area` VALUES ('3259', '庆城县', '庆城', '999', '6', '', '3256', '/0/3191/3256/', '3', '621021', 'QCX', '1', '1', '2017-03-09 11:54:58', '1', '2017-03-09 11:54:58');
INSERT INTO `god_area` VALUES ('3260', '环县', '环县', '999', '6', '', '3256', '/0/3191/3256/', '3', '621022', 'IX', '1', '1', '2017-03-09 11:54:58', '1', '2017-03-09 11:54:58');
INSERT INTO `god_area` VALUES ('3261', '华池县', '华池', '999', '6', '', '3256', '/0/3191/3256/', '3', '621023', 'ICX', '1', '1', '2017-03-09 11:54:58', '1', '2017-03-09 11:54:58');
INSERT INTO `god_area` VALUES ('3262', '合水县', '合水', '999', '6', '', '3256', '/0/3191/3256/', '3', '621024', 'ISX', '1', '1', '2017-03-09 11:54:58', '1', '2017-03-09 11:54:58');
INSERT INTO `god_area` VALUES ('3263', '正宁县', '正宁', '999', '6', '', '3256', '/0/3191/3256/', '3', '621025', 'ZNX', '1', '1', '2017-03-09 11:54:58', '1', '2017-03-09 11:54:58');
INSERT INTO `god_area` VALUES ('3264', '宁县', '宁县', '999', '6', '', '3256', '/0/3191/3256/', '3', '621026', 'NX', '1', '1', '2017-03-09 11:54:58', '1', '2017-03-09 11:54:58');
INSERT INTO `god_area` VALUES ('3265', '镇原县', '镇原', '999', '6', '', '3256', '/0/3191/3256/', '3', '621027', 'ZYX', '1', '1', '2017-03-09 11:54:58', '1', '2017-03-09 11:54:58');
INSERT INTO `god_area` VALUES ('3266', '定西市', '定西', '999', '6', '', '3191', '/0/3191/', '2', '621100', 'DXS', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3268', '安定区', '安定', '999', '6', '', '3266', '/0/3191/3266/', '3', '621102', 'ADQ', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3269', '通渭县', '通渭', '999', '6', '', '3266', '/0/3191/3266/', '3', '621121', 'TX', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3270', '陇西县', '陇西', '999', '6', '', '3266', '/0/3191/3266/', '3', '621122', 'XX', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3271', '渭源县', '渭源', '999', '6', '', '3266', '/0/3191/3266/', '3', '621123', 'YX', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3272', '临洮县', '临洮', '999', '6', '', '3266', '/0/3191/3266/', '3', '621124', 'LX', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3273', '漳县', '漳县', '999', '6', '', '3266', '/0/3191/3266/', '3', '621125', 'ZX', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3274', '岷县', '岷县', '999', '6', '', '3266', '/0/3191/3266/', '3', '621126', 'X', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3275', '陇南市', '陇南', '999', '6', '', '3191', '/0/3191/', '2', '621200', 'NS', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3277', '武都区', '武都', '999', '6', '', '3275', '/0/3191/3275/', '3', '621202', 'WDQ', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3278', '成县', '成县', '999', '6', '', '3275', '/0/3191/3275/', '3', '621221', 'CX', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3279', '文县', '文县', '999', '6', '', '3275', '/0/3191/3275/', '3', '621222', 'WX', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3280', '宕昌县', '宕昌', '999', '6', '', '3275', '/0/3191/3275/', '3', '621223', 'CX', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3281', '康县', '康县', '999', '6', '', '3275', '/0/3191/3275/', '3', '621224', 'KX', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3282', '西和县', '西和', '999', '6', '', '3275', '/0/3191/3275/', '3', '621225', 'XIX', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3283', '礼县', '礼县', '999', '6', '', '3275', '/0/3191/3275/', '3', '621226', 'LX', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3284', '徽县', '徽县', '999', '6', '', '3275', '/0/3191/3275/', '3', '621227', 'IX', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3285', '两当县', '两当', '999', '6', '', '3275', '/0/3191/3275/', '3', '621228', 'LDX', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3286', '临夏回族自治州', '临夏州', '999', '9', '', '3191', '/0/3191/', '2', '622900', 'LXIZZZZ', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3287', '临夏市', '临夏', '999', '6', '', '3286', '/0/3191/3286/', '3', '622901', 'LXS', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3288', '临夏县', '临夏县', '999', '9', '', '3286', '/0/3191/3286/', '3', '622921', 'LXX', '1', '88', '2017-03-09 11:54:59', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('3289', '康乐县', '康乐', '999', '6', '', '3286', '/0/3191/3286/', '3', '622922', 'KLX', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3290', '永靖县', '永靖', '999', '6', '', '3286', '/0/3191/3286/', '3', '622923', 'YJX', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3291', '广河县', '广河', '999', '6', '', '3286', '/0/3191/3286/', '3', '622924', 'GIX', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3292', '和政县', '和政', '999', '6', '', '3286', '/0/3191/3286/', '3', '622925', 'IZX', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3293', '东乡族自治县', '东乡族自治县', '999', '18', '', '3286', '/0/3191/3286/', '3', '622926', 'DXZZZX', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3294', '积石山保安族东乡族撒拉族自治县', '积石山', '999', '9', '', '3286', '/0/3191/3286/', '3', '622927', 'JSSBAZDXZSLZZZX', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3295', '甘南藏族自治州', '甘南州', '999', '9', '', '3191', '/0/3191/', '2', '623000', 'GNCZZZZ', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3296', '合作市', '合作市', '999', '9', '', '3295', '/0/3191/3295/', '3', '623001', 'IZS', '1', '1', '2017-03-09 11:54:59', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('3297', '临潭县', '临潭', '999', '6', '', '3295', '/0/3191/3295/', '3', '623021', 'LTX', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3298', '卓尼县', '卓尼', '999', '6', '', '3295', '/0/3191/3295/', '3', '623022', 'ZNX', '1', '1', '2017-03-09 11:54:59', '1', '2017-03-09 11:54:59');
INSERT INTO `god_area` VALUES ('3299', '舟曲县', '舟曲', '999', '6', '', '3295', '/0/3191/3295/', '3', '623023', 'ZQX', '1', '1', '2017-03-09 11:55:00', '1', '2017-03-09 11:55:00');
INSERT INTO `god_area` VALUES ('3300', '迭部县', '迭部', '999', '6', '', '3295', '/0/3191/3295/', '3', '623024', 'DBX', '1', '1', '2017-03-09 11:55:00', '1', '2017-03-09 11:55:00');
INSERT INTO `god_area` VALUES ('3301', '玛曲县', '玛曲', '999', '6', '', '3295', '/0/3191/3295/', '3', '623025', 'MQX', '1', '1', '2017-03-09 11:55:00', '1', '2017-03-09 11:55:00');
INSERT INTO `god_area` VALUES ('3302', '碌曲县', '碌曲', '999', '6', '', '3295', '/0/3191/3295/', '3', '623026', 'LQX', '1', '1', '2017-03-09 11:55:00', '1', '2017-03-09 11:55:00');
INSERT INTO `god_area` VALUES ('3303', '夏河县', '夏河', '999', '6', '', '3295', '/0/3191/3295/', '3', '623027', 'XIX', '1', '1', '2017-03-09 11:55:00', '1', '2017-03-09 11:55:00');
INSERT INTO `god_area` VALUES ('3304', '青海省', '青海', '999', '6', '', '0', '/0/', '1', '630000', 'QIS', '1', '1', '2017-03-09 11:55:00', '1', '2017-03-09 11:55:00');
INSERT INTO `god_area` VALUES ('3305', '西宁市', '西宁', '999', '6', '', '3304', '/0/3304/', '2', '630100', 'XNS', '1', '1', '2017-03-09 11:55:00', '1', '2017-03-09 11:55:00');
INSERT INTO `god_area` VALUES ('3307', '城东区', '城东区', '999', '6', '', '3305', '/0/3304/3305/', '3', '630102', 'CDQ', '1', '1', '2017-03-09 11:55:00', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('3308', '城中区', '城中', '999', '6', '', '3305', '/0/3304/3305/', '3', '630103', 'CZQ', '1', '1', '2017-03-09 11:55:00', '1', '2017-03-09 11:55:00');
INSERT INTO `god_area` VALUES ('3309', '城西区', '城西区', '999', '6', '', '3305', '/0/3304/3305/', '3', '630104', 'CXQ', '1', '1', '2017-03-09 11:55:00', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('3310', '城北区', '城北区', '999', '6', '', '3305', '/0/3304/3305/', '3', '630105', 'CBQ', '1', '1', '2017-03-09 11:55:00', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('3311', '大通回族土族自治县', '大通', '999', '6', '', '3305', '/0/3304/3305/', '3', '630121', 'DTIZTZZZX', '1', '1', '2017-03-09 11:55:00', '1', '2017-03-09 11:55:00');
INSERT INTO `god_area` VALUES ('3312', '湟中县', '湟中', '999', '6', '', '3305', '/0/3304/3305/', '3', '630122', 'ZX', '1', '1', '2017-03-09 11:55:00', '1', '2017-03-09 11:55:00');
INSERT INTO `god_area` VALUES ('3313', '湟源县', '湟源', '999', '6', '', '3305', '/0/3304/3305/', '3', '630123', 'YX', '1', '1', '2017-03-09 11:55:00', '1', '2017-03-09 11:55:00');
INSERT INTO `god_area` VALUES ('3314', '海东市', '海东', '999', '6', '', '3304', '/0/3304/', '2', '630200', 'IDS', '1', '1', '2017-03-09 11:55:00', '1', '2017-03-09 11:55:00');
INSERT INTO `god_area` VALUES ('3315', '乐都区', '乐都', '999', '6', '', '3314', '/0/3304/3314/', '3', '630202', 'LDQ', '1', '1', '2017-03-09 11:55:00', '1', '2017-03-09 11:55:00');
INSERT INTO `god_area` VALUES ('3316', '平安区', '平安', '999', '6', '', '3314', '/0/3304/3314/', '3', '630221', 'PAX', '1', '1', '2017-03-09 11:55:00', '16', '2018-07-16 15:15:53');
INSERT INTO `god_area` VALUES ('3317', '民和回族土族自治县', '民和', '999', '6', '', '3314', '/0/3304/3314/', '3', '630222', 'MIIZTZZZX', '1', '1', '2017-03-09 11:55:00', '1', '2017-03-09 11:55:00');
INSERT INTO `god_area` VALUES ('3318', '互助土族自治县', '互助', '999', '6', '', '3314', '/0/3304/3314/', '3', '630223', 'IZTZZZX', '1', '1', '2017-03-09 11:55:00', '1', '2017-03-09 11:55:00');
INSERT INTO `god_area` VALUES ('3319', '化隆回族自治县', '化隆', '999', '6', '', '3314', '/0/3304/3314/', '3', '630224', 'ILIZZZX', '1', '1', '2017-03-09 11:55:00', '1', '2017-03-09 11:55:00');
INSERT INTO `god_area` VALUES ('3320', '循化撒拉族自治县', '循化', '999', '6', '', '3314', '/0/3304/3314/', '3', '630225', 'XISLZZZX', '1', '1', '2017-03-09 11:55:00', '1', '2017-03-09 11:55:00');
INSERT INTO `god_area` VALUES ('3321', '海北藏族自治州', '海北', '999', '6', '', '3304', '/0/3304/', '2', '632200', 'IBCZZZZ', '1', '1', '2017-03-09 11:55:00', '1', '2017-03-09 11:55:00');
INSERT INTO `god_area` VALUES ('3322', '门源回族自治县', '门源', '999', '6', '', '3321', '/0/3304/3321/', '3', '632221', 'MYIZZZX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3323', '祁连县', '祁连', '999', '6', '', '3321', '/0/3304/3321/', '3', '632222', 'QLX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3324', '海晏县', '海晏', '999', '6', '', '3321', '/0/3304/3321/', '3', '632223', 'IX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3325', '刚察县', '刚察', '999', '6', '', '3321', '/0/3304/3321/', '3', '632224', 'GCX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3326', '黄南藏族自治州', '黄南', '999', '6', '', '3304', '/0/3304/', '2', '632300', 'INCZZZZ', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3327', '同仁县', '同仁', '999', '6', '', '3326', '/0/3304/3326/', '3', '632321', 'TRX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3328', '尖扎县', '尖扎', '999', '6', '', '3326', '/0/3304/3326/', '3', '632322', 'JZX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3329', '泽库县', '泽库', '999', '6', '', '3326', '/0/3304/3326/', '3', '632323', 'ZKX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3330', '河南蒙古族自治县', '河南县', '999', '9', '', '3326', '/0/3304/3326/', '3', '632324', 'INMGZZZX', '1', '88', '2017-03-09 11:55:01', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('3331', '海南藏族自治州', '海南藏族自治州', '999', '21', '', '3304', '/0/3304/', '2', '632500', 'INCZZZZ', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3332', '共和县', '共和县', '999', '9', '', '3331', '/0/3304/3331/', '3', '632521', 'GIX', '1', '1', '2017-03-09 11:55:01', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('3333', '同德县', '同德', '999', '6', '', '3331', '/0/3304/3331/', '3', '632522', 'TDX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3334', '贵德县', '贵德', '999', '6', '', '3331', '/0/3304/3331/', '3', '632523', 'GDX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3335', '兴海县', '兴海', '999', '6', '', '3331', '/0/3304/3331/', '3', '632524', 'XIX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3336', '贵南县', '贵南', '999', '6', '', '3331', '/0/3304/3331/', '3', '632525', 'GNX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3337', '果洛藏族自治州', '果洛', '999', '6', '', '3304', '/0/3304/', '2', '632600', 'GLCZZZZ', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3338', '玛沁县', '玛沁', '999', '6', '', '3337', '/0/3304/3337/', '3', '632621', 'MQX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3339', '班玛县', '班玛', '999', '6', '', '3337', '/0/3304/3337/', '3', '632622', 'BMX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3340', '甘德县', '甘德', '999', '6', '', '3337', '/0/3304/3337/', '3', '632623', 'GDX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3341', '达日县', '达日', '999', '6', '', '3337', '/0/3304/3337/', '3', '632624', 'DRX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3342', '久治县', '久治', '999', '6', '', '3337', '/0/3304/3337/', '3', '632625', 'JZX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3343', '玛多县', '玛多', '999', '6', '', '3337', '/0/3304/3337/', '3', '632626', 'MDX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3344', '玉树藏族自治州', '玉树州', '999', '9', '', '3304', '/0/3304/', '2', '632700', 'YSCZZZZ', '1', '88', '2017-03-09 11:55:01', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('3345', '玉树市', '玉树', '999', '6', '', '3344', '/0/3304/3344/', '3', '632701', 'YSS', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3346', '杂多县', '杂多', '999', '6', '', '3344', '/0/3304/3344/', '3', '632722', 'ZDX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3347', '称多县', '称多', '999', '6', '', '3344', '/0/3304/3344/', '3', '632723', 'CDX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3348', '治多县', '治多', '999', '6', '', '3344', '/0/3304/3344/', '3', '632724', 'ZDX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3349', '囊谦县', '囊谦', '999', '6', '', '3344', '/0/3304/3344/', '3', '632725', 'NQX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3350', '曲麻莱县', '曲麻莱', '999', '9', '', '3344', '/0/3304/3344/', '3', '632726', 'QMLX', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3351', '海西蒙古族藏族自治州', '海西', '999', '6', '', '3304', '/0/3304/', '2', '632800', 'IXMGZCZZZZ', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3352', '格尔木市', '格尔木', '999', '9', '', '3351', '/0/3304/3351/', '3', '632801', 'GEMS', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3353', '德令哈市', '德令哈', '999', '9', '', '3351', '/0/3304/3351/', '3', '632802', 'DLIS', '1', '1', '2017-03-09 11:55:01', '1', '2017-03-09 11:55:01');
INSERT INTO `god_area` VALUES ('3354', '乌兰县', '乌兰', '999', '6', '', '3351', '/0/3304/3351/', '3', '632821', 'WLX', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3355', '都兰县', '都兰', '999', '6', '', '3351', '/0/3304/3351/', '3', '632822', 'DLX', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3356', '天峻县', '天峻', '999', '6', '', '3351', '/0/3304/3351/', '3', '632823', 'TJX', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3357', '宁夏回族自治区', '宁夏', '999', '6', '', '0', '/0/', '1', '640000', 'NXIZZZQ', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 14:04:35');
INSERT INTO `god_area` VALUES ('3358', '银川市', '银川', '999', '6', '', '3357', '/0/3357/', '2', '640100', 'YCS', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3360', '兴庆区', '兴庆', '999', '6', '', '3358', '/0/3357/3358/', '3', '640104', 'XQQ', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3361', '西夏区', '西夏', '999', '6', '', '3358', '/0/3357/3358/', '3', '640105', 'XXQ', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3362', '金凤区', '金凤', '999', '6', '', '3358', '/0/3357/3358/', '3', '640106', 'JFQ', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3363', '永宁县', '永宁', '999', '6', '', '3358', '/0/3357/3358/', '3', '640121', 'YNX', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3364', '贺兰县', '贺兰', '999', '6', '', '3358', '/0/3357/3358/', '3', '640122', 'ILX', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3365', '灵武市', '灵武', '999', '6', '', '3358', '/0/3357/3358/', '3', '640181', 'LWS', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3366', '石嘴山市', '石嘴山', '999', '9', '', '3357', '/0/3357/', '2', '640200', 'SZSS', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3368', '大武口区', '大武口', '999', '9', '', '3366', '/0/3357/3366/', '3', '640202', 'DWKQ', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3369', '惠农区', '惠农', '999', '6', '', '3366', '/0/3357/3366/', '3', '640205', 'INQ', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3370', '平罗县', '平罗', '999', '6', '', '3366', '/0/3357/3366/', '3', '640221', 'PLX', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3371', '吴忠市', '吴忠', '999', '6', '', '3357', '/0/3357/', '2', '640300', 'WZS', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3373', '利通区', '利通', '999', '6', '', '3371', '/0/3357/3371/', '3', '640302', 'LTQ', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3374', '红寺堡区', '红寺堡', '999', '9', '', '3371', '/0/3357/3371/', '3', '640303', 'ISBQ', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3375', '盐池县', '盐池', '999', '6', '', '3371', '/0/3357/3371/', '3', '640323', 'YCX', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3376', '同心县', '同心', '999', '6', '', '3371', '/0/3357/3371/', '3', '640324', 'TXX', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3377', '青铜峡市', '青铜峡', '999', '9', '', '3371', '/0/3357/3371/', '3', '640381', 'QTXS', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3378', '固原市', '固原', '999', '6', '', '3357', '/0/3357/', '2', '640400', 'GYS', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3380', '原州区', '原州', '999', '6', '', '3378', '/0/3357/3378/', '3', '640402', 'YZQ', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3381', '西吉县', '西吉', '999', '6', '', '3378', '/0/3357/3378/', '3', '640422', 'XJX', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3382', '隆德县', '隆德', '999', '6', '', '3378', '/0/3357/3378/', '3', '640423', 'LDX', '1', '1', '2017-03-09 11:55:02', '1', '2017-03-09 11:55:02');
INSERT INTO `god_area` VALUES ('3383', '泾源县', '泾源', '999', '6', '', '3378', '/0/3357/3378/', '3', '640424', 'YX', '1', '1', '2017-03-09 11:55:03', '1', '2017-03-09 11:55:03');
INSERT INTO `god_area` VALUES ('3384', '彭阳县', '彭阳', '999', '6', '', '3378', '/0/3357/3378/', '3', '640425', 'PYX', '1', '1', '2017-03-09 11:55:03', '1', '2017-03-09 11:55:03');
INSERT INTO `god_area` VALUES ('3385', '中卫市', '中卫', '999', '6', '', '3357', '/0/3357/', '2', '640500', 'ZWS', '1', '1', '2017-03-09 11:55:03', '1', '2017-03-09 11:55:03');
INSERT INTO `god_area` VALUES ('3387', '沙坡头区', '沙坡头', '999', '9', '', '3385', '/0/3357/3385/', '3', '640502', 'SPTQ', '1', '1', '2017-03-09 11:55:03', '1', '2017-03-09 11:55:03');
INSERT INTO `god_area` VALUES ('3388', '中宁县', '中宁', '999', '6', '', '3385', '/0/3357/3385/', '3', '640521', 'ZNX', '1', '1', '2017-03-09 11:55:03', '1', '2017-03-09 11:55:03');
INSERT INTO `god_area` VALUES ('3389', '海原县', '海原', '999', '6', '', '3385', '/0/3357/3385/', '3', '640522', 'IYX', '1', '1', '2017-03-09 11:55:03', '1', '2017-03-09 11:55:03');
INSERT INTO `god_area` VALUES ('3390', '新疆维吾尔自治区', '新疆', '999', '6', '', '0', '/0/', '1', '650000', 'XJWWEZZQ', '1', '1', '2017-03-09 11:55:03', '1', '2017-03-09 14:04:29');
INSERT INTO `god_area` VALUES ('3391', '乌鲁木齐市', '乌鲁木齐', '999', '12', '', '3390', '/0/3390/', '2', '650100', 'WLMQS', '1', '1', '2017-03-09 11:55:03', '1', '2017-03-09 11:55:03');
INSERT INTO `god_area` VALUES ('3393', '天山区', '天山', '999', '6', '', '3391', '/0/3390/3391/', '3', '650102', 'TSQ', '1', '1', '2017-03-09 11:55:03', '1', '2017-03-09 11:55:03');
INSERT INTO `god_area` VALUES ('3394', '沙依巴克区', '沙依巴克', '999', '12', '', '3391', '/0/3390/3391/', '3', '650103', 'SYBKQ', '1', '1', '2017-03-09 11:55:03', '1', '2017-03-09 11:55:03');
INSERT INTO `god_area` VALUES ('3395', '新市区', '新市区', '999', '6', '', '3391', '/0/3390/3391/', '3', '650104', 'XSQ', '1', '1', '2017-03-09 11:55:03', '1', '2018-12-05 23:13:37');
INSERT INTO `god_area` VALUES ('3396', '水磨沟区', '水磨沟', '999', '9', '', '3391', '/0/3390/3391/', '3', '650105', 'SMGQ', '1', '1', '2017-03-09 11:55:03', '1', '2017-03-09 11:55:03');
INSERT INTO `god_area` VALUES ('3397', '头屯河区', '头屯河', '999', '9', '', '3391', '/0/3390/3391/', '3', '650106', 'TTIQ', '1', '1', '2017-03-09 11:55:03', '1', '2017-03-09 11:55:03');
INSERT INTO `god_area` VALUES ('3398', '达坂城区', '达坂城区', '999', '12', '', '3391', '/0/3390/3391/', '3', '650107', 'DCQ', '1', '1', '2017-03-09 11:55:03', '1', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('3399', '米东区', '米东区', '999', '6', '', '3391', '/0/3390/3391/', '3', '650109', 'MDQ', '1', '1', '2017-03-09 11:55:03', '1', '2018-12-05 16:29:20');
INSERT INTO `god_area` VALUES ('3400', '乌鲁木齐县', '乌鲁木齐县', '999', '15', '', '3391', '/0/3390/3391/', '3', '650121', 'WLMQX', '1', '88', '2017-03-09 11:55:03', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('3401', '克拉玛依市', '克拉玛依', '999', '12', '', '3390', '/0/3390/', '2', '650200', 'KLMYS', '1', '1', '2017-03-09 11:55:03', '1', '2017-03-09 11:55:03');
INSERT INTO `god_area` VALUES ('3403', '独山子区', '独山子', '999', '9', '', '3401', '/0/3390/3401/', '3', '650202', 'DSZQ', '1', '1', '2017-03-09 11:55:03', '1', '2017-03-09 11:55:03');
INSERT INTO `god_area` VALUES ('3404', '克拉玛依区', '克拉玛依区', '999', '15', '', '3401', '/0/3390/3401/', '3', '650203', 'KLMYQ', '1', '88', '2017-03-09 11:55:03', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('3405', '白碱滩区', '白碱滩', '999', '9', '', '3401', '/0/3390/3401/', '3', '650204', 'BJTQ', '1', '1', '2017-03-09 11:55:03', '1', '2017-03-09 11:55:03');
INSERT INTO `god_area` VALUES ('3406', '乌尔禾区', '乌尔禾', '999', '9', '', '3401', '/0/3390/3401/', '3', '650205', 'WEIQ', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3407', '吐鲁番市', '吐鲁番', '999', '9', '', '3390', '/0/3390/', '2', '652100', 'TLFDQ', '1', '1', '2017-03-09 11:55:04', '16', '2018-07-16 15:09:41');
INSERT INTO `god_area` VALUES ('3408', '吐鲁番市', '吐鲁番市', '999', '12', '', '3407', '/0/3390/3407/', '3', '652101', 'TLFS', '0', '1', '2017-03-09 11:55:04', '16', '2018-07-16 15:13:38');
INSERT INTO `god_area` VALUES ('3409', '鄯善县', '鄯善', '999', '6', '', '3407', '/0/3390/3407/', '3', '652122', 'SX', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3410', '托克逊县', '托克逊', '999', '9', '', '3407', '/0/3390/3407/', '3', '652123', 'TKXX', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3411', '哈密市', '哈密', '999', '6', '', '3390', '/0/3390/', '2', '652200', 'IMS', '1', '1', '2017-03-09 11:55:04', '12', '2017-10-06 17:29:44');
INSERT INTO `god_area` VALUES ('3412', '哈密市', '哈密', '999', '6', '', '3411', '/0/3390/3411/', '3', '652201', null, '0', '1', '2017-03-09 11:55:04', '12', '2017-10-06 17:29:15');
INSERT INTO `god_area` VALUES ('3413', '巴里坤哈萨克自治县', '巴里坤', '999', '9', '', '3411', '/0/3390/3411/', '3', '652222', 'BLKISKZZX', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3414', '伊吾县', '伊吾', '999', '6', '', '3411', '/0/3390/3411/', '3', '652223', 'YWX', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3415', '昌吉回族自治州', '昌吉', '999', '6', '', '3390', '/0/3390/', '2', '652300', 'CJIZZZZ', '1', '1', '2017-03-09 11:55:04', '1', '2017-08-17 09:15:23');
INSERT INTO `god_area` VALUES ('3416', '昌吉市', '昌吉市', '999', '9', '', '3415', '/0/3390/3415/', '3', '652301', 'CJS', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3417', '阜康市', '阜康', '999', '6', '', '3415', '/0/3390/3415/', '3', '652302', 'FKS', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3418', '呼图壁县', '呼图壁', '999', '9', '', '3415', '/0/3390/3415/', '3', '652323', 'ITBX', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3419', '玛纳斯县', '玛纳斯', '999', '9', '', '3415', '/0/3390/3415/', '3', '652324', 'MNSX', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3420', '奇台县', '奇台', '999', '6', '', '3415', '/0/3390/3415/', '3', '652325', 'QTX', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3421', '吉木萨尔县', '吉木萨尔', '999', '12', '', '3415', '/0/3390/3415/', '3', '652327', 'JMSEX', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3422', '木垒哈萨克自治县', '木垒', '999', '6', '', '3415', '/0/3390/3415/', '3', '652328', 'MLISKZZX', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3423', '博尔塔拉蒙古自治州', '博尔塔拉', '999', '12', '', '3390', '/0/3390/', '2', '652700', 'BETLMGZZZ', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3424', '博乐市', '博乐', '999', '6', '', '3423', '/0/3390/3423/', '3', '652701', 'BLS', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3425', '阿拉山口市', '阿拉山口', '999', '12', '', '3423', '/0/3390/3423/', '3', '652702', 'ALSKS', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3426', '精河县', '精河', '999', '6', '', '3423', '/0/3390/3423/', '3', '652722', 'JIX', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3427', '温泉县', '温泉', '999', '6', '', '3423', '/0/3390/3423/', '3', '652723', 'WQX', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3428', '巴音郭楞蒙古自治州', '巴音郭楞', '999', '12', '', '3390', '/0/3390/', '2', '652800', 'BYGLMGZZZ', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3429', '库尔勒市', '库尔勒', '999', '9', '', '3428', '/0/3390/3428/', '3', '652801', 'KELS', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3430', '轮台县', '轮台', '999', '6', '', '3428', '/0/3390/3428/', '3', '652822', 'LTX', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3431', '尉犁县', '尉犁', '999', '6', '', '3428', '/0/3390/3428/', '3', '652823', 'LX', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3432', '若羌县', '若羌', '999', '6', '', '3428', '/0/3390/3428/', '3', '652824', 'RQX', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3433', '且末县', '且末', '999', '6', '', '3428', '/0/3390/3428/', '3', '652825', 'QMX', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3434', '焉耆回族自治县', '焉耆', '999', '6', '', '3428', '/0/3390/3428/', '3', '652826', 'YIZZZX', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3435', '和静县', '和静', '999', '6', '', '3428', '/0/3390/3428/', '3', '652827', 'IJX', '1', '1', '2017-03-09 11:55:04', '1', '2017-03-09 11:55:04');
INSERT INTO `god_area` VALUES ('3436', '和硕县', '和硕', '999', '6', '', '3428', '/0/3390/3428/', '3', '652828', 'ISX', '1', '1', '2017-03-09 11:55:05', '1', '2017-03-09 11:55:05');
INSERT INTO `god_area` VALUES ('3437', '博湖县', '博湖', '999', '6', '', '3428', '/0/3390/3428/', '3', '652829', 'BIX', '1', '1', '2017-03-09 11:55:05', '1', '2017-03-09 11:55:05');
INSERT INTO `god_area` VALUES ('3438', '阿克苏地区', '阿克苏', '999', '9', '', '3390', '/0/3390/', '2', '652900', 'AKSDQ', '1', '1', '2017-03-09 11:55:05', '1', '2017-08-17 09:15:30');
INSERT INTO `god_area` VALUES ('3439', '阿克苏市', '阿克苏市', '999', '12', '', '3438', '/0/3390/3438/', '3', '652901', 'AKSS', '1', '1', '2017-03-09 11:55:05', '1', '2017-03-09 11:55:05');
INSERT INTO `god_area` VALUES ('3440', '温宿县', '温宿', '999', '6', '', '3438', '/0/3390/3438/', '3', '652922', 'WSX', '1', '1', '2017-03-09 11:55:05', '1', '2017-03-09 11:55:05');
INSERT INTO `god_area` VALUES ('3441', '库车县', '库车', '999', '6', '', '3438', '/0/3390/3438/', '3', '652923', 'KCX', '1', '1', '2017-03-09 11:55:05', '1', '2017-03-09 11:55:05');
INSERT INTO `god_area` VALUES ('3442', '沙雅县', '沙雅', '999', '6', '', '3438', '/0/3390/3438/', '3', '652924', 'SYX', '1', '1', '2017-03-09 11:55:05', '1', '2017-03-09 11:55:05');
INSERT INTO `god_area` VALUES ('3443', '新和县', '新和', '999', '6', '', '3438', '/0/3390/3438/', '3', '652925', 'XIX', '1', '1', '2017-03-09 11:55:05', '1', '2017-03-09 11:55:05');
INSERT INTO `god_area` VALUES ('3444', '拜城县', '拜城', '999', '6', '', '3438', '/0/3390/3438/', '3', '652926', 'BCX', '1', '1', '2017-03-09 11:55:05', '1', '2017-03-09 11:55:05');
INSERT INTO `god_area` VALUES ('3445', '乌什县', '乌什', '999', '6', '', '3438', '/0/3390/3438/', '3', '652927', 'WSX', '1', '1', '2017-03-09 11:55:05', '1', '2017-03-09 11:55:05');
INSERT INTO `god_area` VALUES ('3446', '阿瓦提县', '阿瓦提', '999', '9', '', '3438', '/0/3390/3438/', '3', '652928', 'AWTX', '1', '1', '2017-03-09 11:55:05', '1', '2017-03-09 11:55:05');
INSERT INTO `god_area` VALUES ('3447', '柯坪县', '柯坪', '999', '6', '', '3438', '/0/3390/3438/', '3', '652929', 'KPX', '1', '1', '2017-03-09 11:55:05', '1', '2017-03-09 11:55:05');
INSERT INTO `god_area` VALUES ('3448', '克孜勒苏柯尔克孜自治州', '克孜勒苏', '999', '12', '', '3390', '/0/3390/', '2', '653000', 'KZLSKEKZZZZ', '1', '1', '2017-03-09 11:55:05', '1', '2017-08-17 09:17:54');
INSERT INTO `god_area` VALUES ('3449', '阿图什市', '阿图什', '999', '9', '', '3448', '/0/3390/3448/', '3', '653001', 'ATSS', '1', '1', '2017-03-09 11:55:05', '1', '2017-03-09 11:55:05');
INSERT INTO `god_area` VALUES ('3450', '阿克陶县', '阿克陶', '999', '9', '', '3448', '/0/3390/3448/', '3', '653022', 'AKTX', '1', '1', '2017-03-09 11:55:05', '1', '2017-03-09 11:55:05');
INSERT INTO `god_area` VALUES ('3451', '阿合奇县', '阿合奇', '999', '9', '', '3448', '/0/3390/3448/', '3', '653023', 'AIQX', '1', '1', '2017-03-09 11:55:05', '1', '2017-03-09 11:55:05');
INSERT INTO `god_area` VALUES ('3452', '乌恰县', '乌恰', '999', '6', '', '3448', '/0/3390/3448/', '3', '653024', 'WQX', '1', '1', '2017-03-09 11:55:05', '1', '2017-03-09 11:55:05');
INSERT INTO `god_area` VALUES ('3453', '喀什地区', '喀什', '999', '6', '', '3390', '/0/3390/', '2', '653100', 'KSDQ', '1', '1', '2017-03-09 11:55:05', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('3454', '喀什市', '喀什市', '999', '9', '', '3453', '/0/3390/3453/', '3', '653101', 'KSS', '1', '1', '2017-03-09 11:55:05', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('3455', '疏附县', '疏附', '999', '6', '', '3453', '/0/3390/3453/', '3', '653121', 'SFX', '1', '1', '2017-03-09 11:55:05', '1', '2017-03-09 11:55:05');
INSERT INTO `god_area` VALUES ('3456', '疏勒县', '疏勒', '999', '6', '', '3453', '/0/3390/3453/', '3', '653122', 'SLX', '1', '1', '2017-03-09 11:55:05', '1', '2017-03-09 11:55:05');
INSERT INTO `god_area` VALUES ('3457', '英吉沙县', '英吉沙', '999', '9', '', '3453', '/0/3390/3453/', '3', '653123', 'YJSX', '1', '1', '2017-03-09 11:55:05', '1', '2017-03-09 11:55:05');
INSERT INTO `god_area` VALUES ('3458', '泽普县', '泽普', '999', '6', '', '3453', '/0/3390/3453/', '3', '653124', 'ZPX', '1', '1', '2017-03-09 11:55:05', '1', '2017-03-09 11:55:05');
INSERT INTO `god_area` VALUES ('3459', '莎车县', '莎车', '999', '6', '', '3453', '/0/3390/3453/', '3', '653125', 'SCX', '1', '1', '2017-03-09 11:55:05', '1', '2017-03-09 11:55:05');
INSERT INTO `god_area` VALUES ('3460', '叶城县', '叶城', '999', '6', '', '3453', '/0/3390/3453/', '3', '653126', 'YCX', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3461', '麦盖提县', '麦盖提', '999', '9', '', '3453', '/0/3390/3453/', '3', '653127', 'MGTX', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3462', '岳普湖县', '岳普湖', '999', '9', '', '3453', '/0/3390/3453/', '3', '653128', 'YPIX', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3463', '伽师县', '伽师', '999', '6', '', '3453', '/0/3390/3453/', '3', '653129', 'SX', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3464', '巴楚县', '巴楚', '999', '6', '', '3453', '/0/3390/3453/', '3', '653130', 'BCX', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3465', '塔什库尔干塔吉克自治县', '塔什库尔干', '999', '15', '', '3453', '/0/3390/3453/', '3', '653131', 'TSKEGTJKZZX', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3466', '和田地区', '和田', '999', '6', '', '3390', '/0/3390/', '2', '653200', 'ITDQ', '1', '1', '2017-03-09 11:55:06', '1', '2017-08-17 09:18:04');
INSERT INTO `god_area` VALUES ('3467', '和田市', '和田市', '999', '9', '', '3466', '/0/3390/3466/', '3', '653201', 'ITS', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3468', '和田县', '和田县', '999', '9', '', '3466', '/0/3390/3466/', '3', '653221', 'ITX', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3469', '墨玉县', '墨玉', '999', '6', '', '3466', '/0/3390/3466/', '3', '653222', 'YX', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3470', '皮山县', '皮山', '999', '6', '', '3466', '/0/3390/3466/', '3', '653223', 'PSX', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3471', '洛浦县', '洛浦', '999', '6', '', '3466', '/0/3390/3466/', '3', '653224', 'LPX', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3472', '策勒县', '策勒', '999', '6', '', '3466', '/0/3390/3466/', '3', '653225', 'CLX', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3473', '于田县', '于田', '999', '6', '', '3466', '/0/3390/3466/', '3', '653226', 'YTX', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3474', '民丰县', '民丰', '999', '6', '', '3466', '/0/3390/3466/', '3', '653227', 'MFX', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3475', '伊犁哈萨克自治州', '伊犁', '999', '6', '', '3390', '/0/3390/', '2', '654000', 'YLISKZZZ', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3476', '伊宁县', '伊宁县', '999', '9', '', '3475', '/0/3390/3475/', '3', '654002', 'YNX', '1', '1', '2017-03-09 11:55:06', '6', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('3477', '奎屯市', '奎屯', '999', '6', '', '3475', '/0/3390/3475/', '3', '654003', 'KTS', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3478', '伊宁市', '伊宁', '999', '6', '', '3475', '/0/3390/3475/', '3', '654021', 'YNS', '1', '1', '2017-03-09 11:55:06', '6', '2017-09-19 09:01:27');
INSERT INTO `god_area` VALUES ('3479', '察布查尔锡伯自治县', '察布查尔锡伯', '999', '18', '', '3475', '/0/3390/3475/', '3', '654022', 'CBCEXBZZX', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3480', '霍城县', '霍城', '999', '6', '', '3475', '/0/3390/3475/', '3', '654023', 'ICX', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3481', '巩留县', '巩留', '999', '6', '', '3475', '/0/3390/3475/', '3', '654024', 'GLX', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3482', '新源县', '新源', '999', '6', '', '3475', '/0/3390/3475/', '3', '654025', 'XYX', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3483', '昭苏县', '昭苏', '999', '6', '', '3475', '/0/3390/3475/', '3', '654026', 'ZSX', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3484', '特克斯县', '特克斯', '999', '9', '', '3475', '/0/3390/3475/', '3', '654027', 'TKSX', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3485', '尼勒克县', '尼勒克', '999', '9', '', '3475', '/0/3390/3475/', '3', '654028', 'NLKX', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3486', '塔城地区', '塔城', '999', '6', '', '3390', '/0/3390/', '2', '654200', 'TCDQ', '1', '1', '2017-03-09 11:55:06', '1', '2017-08-17 09:18:22');
INSERT INTO `god_area` VALUES ('3487', '塔城市', '塔城市', '999', '9', '', '3486', '/0/3390/3486/', '3', '654201', 'TCS', '1', '1', '2017-03-09 11:55:06', '1', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('3488', '乌苏市', '乌苏', '999', '6', '', '3486', '/0/3390/3486/', '3', '654202', 'WSS', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3489', '额敏县', '额敏', '999', '6', '', '3486', '/0/3390/3486/', '3', '654221', 'EMX', '1', '1', '2017-03-09 11:55:06', '1', '2017-03-09 11:55:06');
INSERT INTO `god_area` VALUES ('3490', '沙湾县', '沙湾', '999', '6', '', '3486', '/0/3390/3486/', '3', '654223', 'SWX', '1', '1', '2017-03-09 11:55:07', '1', '2017-03-09 11:55:07');
INSERT INTO `god_area` VALUES ('3491', '托里县', '托里', '999', '6', '', '3486', '/0/3390/3486/', '3', '654224', 'TLX', '1', '1', '2017-03-09 11:55:07', '1', '2017-03-09 11:55:07');
INSERT INTO `god_area` VALUES ('3492', '裕民县', '裕民', '999', '6', '', '3486', '/0/3390/3486/', '3', '654225', 'YMX', '1', '1', '2017-03-09 11:55:07', '1', '2017-03-09 11:55:07');
INSERT INTO `god_area` VALUES ('3493', '和布克赛尔蒙古自治县', '和布克赛尔', '999', '15', '', '3486', '/0/3390/3486/', '3', '654226', 'IBKSEMGZZX', '1', '1', '2017-03-09 11:55:07', '1', '2017-03-09 11:55:07');
INSERT INTO `god_area` VALUES ('3494', '阿勒泰地区', '阿勒泰', '999', '9', '', '3390', '/0/3390/', '2', '654300', 'ALTDQ', '1', '1', '2017-03-09 11:55:07', '1', '2017-08-17 09:18:17');
INSERT INTO `god_area` VALUES ('3495', '阿勒泰市', '阿勒泰市', '999', '12', '', '3494', '/0/3390/3494/', '3', '654301', 'ALTS', '1', '1', '2017-03-09 11:55:07', '1', '2017-03-09 11:55:07');
INSERT INTO `god_area` VALUES ('3496', '布尔津县', '布尔津', '999', '9', '', '3494', '/0/3390/3494/', '3', '654321', 'BEJX', '1', '1', '2017-03-09 11:55:07', '1', '2017-03-09 11:55:07');
INSERT INTO `god_area` VALUES ('3497', '富蕴县', '富蕴', '999', '6', '', '3494', '/0/3390/3494/', '3', '654322', 'FYX', '1', '1', '2017-03-09 11:55:07', '1', '2017-03-09 11:55:07');
INSERT INTO `god_area` VALUES ('3498', '福海县', '福海', '999', '6', '', '3494', '/0/3390/3494/', '3', '654323', 'FIX', '1', '1', '2017-03-09 11:55:07', '1', '2017-03-09 11:55:07');
INSERT INTO `god_area` VALUES ('3499', '哈巴河县', '哈巴河', '999', '9', '', '3494', '/0/3390/3494/', '3', '654324', 'IBIX', '1', '1', '2017-03-09 11:55:07', '1', '2017-03-09 11:55:07');
INSERT INTO `god_area` VALUES ('3500', '青河县', '青河', '999', '6', '', '3494', '/0/3390/3494/', '3', '654325', 'QIX', '1', '1', '2017-03-09 11:55:07', '1', '2017-03-09 11:55:07');
INSERT INTO `god_area` VALUES ('3501', '吉木乃县', '吉木乃', '999', '9', '', '3494', '/0/3390/3494/', '3', '654326', 'JMNX', '1', '1', '2017-03-09 11:55:07', '1', '2017-03-09 11:55:07');
INSERT INTO `god_area` VALUES ('3503', '石河子市', '石河子', '999', '9', '', '3502', '/0/3390/3502/', '3', '659001', null, '0', '88', '2017-03-09 11:55:07', '1', '2017-03-09 11:55:07');
INSERT INTO `god_area` VALUES ('3504', '阿拉尔市', '阿拉尔', '999', '9', '', '3502', '/0/3390/3502/', '3', '659002', null, '0', '88', '2017-03-09 11:55:07', '1', '2017-03-09 11:55:07');
INSERT INTO `god_area` VALUES ('3505', '图木舒克市', '图木舒克', '999', '12', '', '3502', '/0/3390/3502/', '3', '659003', 'TMSKS', '0', '88', '2017-03-09 11:55:07', '1', '2017-03-09 11:55:07');
INSERT INTO `god_area` VALUES ('3506', '五家渠市', '五家渠', '999', '9', '', '3502', '/0/3390/3502/', '3', '659004', 'WJQS', '0', '88', '2017-03-09 11:55:07', '1', '2017-03-09 11:55:07');
INSERT INTO `god_area` VALUES ('3507', '台湾省', '台湾', '999', '6', '', '0', '/0/', '1', '710000', null, '0', '1', '2017-03-09 11:55:07', '1', '2017-03-09 11:55:07');
INSERT INTO `god_area` VALUES ('3508', '香港特别行政区', '香港', '999', '6', '', '0', '/0/', '1', '810000', null, '0', '1', '2017-03-09 11:55:07', '1', '2017-03-09 14:03:29');
INSERT INTO `god_area` VALUES ('3509', '澳门特别行政区', '澳门', '999', '6', '', '0', '/0/', '1', '820000', null, '0', '1', '2017-03-09 11:55:07', '1', '2017-03-09 14:03:40');
INSERT INTO `god_area` VALUES ('3510', '其他', '国家', '1', '6', '', '0', '/0/', '1', '', 'GJ', '1', '1', '2017-05-02 15:03:56', '1', '2019-07-12 07:47:02');
INSERT INTO `god_area` VALUES ('3511', '开州区', '开州', '999', '6', '', '2461', '/0/2460/2461/', '3', '', 'KZQ', '1', '5', '2017-06-15 16:56:00', '5', '2017-06-15 16:57:10');
INSERT INTO `god_area` VALUES ('3512', '龙华区', '龙华', '999', '6', '', '2130', '/0/2129/2130/', '3', '', null, '0', '5', '2017-06-15 17:00:02', '5', '2017-06-15 17:01:48');
INSERT INTO `god_area` VALUES ('3513', '龙华区', '龙华', '999', '6', '', '2156', '/0/2129/2156/', '3', '', 'LIQ', '1', '5', '2017-06-15 17:02:25', '5', '2017-06-15 17:02:25');
INSERT INTO `god_area` VALUES ('3514', '漯河市', '漯河', '999', '6', '', '1654', '/0/1654/', '2', '', 'IS', '1', '6', '2017-08-09 15:17:20', '6', '2017-08-09 15:17:20');
INSERT INTO `god_area` VALUES ('3515', '乐山市', '乐山', '999', '6', '', '2500', '/0/2500/', '2', '', 'LSS', '1', '6', '2017-08-10 10:05:44', '6', '2017-08-10 10:05:44');
INSERT INTO `god_area` VALUES ('3516', '简阳市', '简阳', '999', '6', '', '2501', '/0/2500/2501/', '3', '', 'JYS', '1', '6', '2017-08-10 10:07:09', '6', '2017-08-10 10:07:09');
INSERT INTO `god_area` VALUES ('3517', '叶集区', '叶集', '999', '6', '', '1225', '/0/1117/1225/', '3', '', 'YJQ', '1', '6', '2017-08-10 16:29:33', '6', '2017-08-10 16:29:33');
INSERT INTO `god_area` VALUES ('3518', '平桂区', '平桂', '999', '6', '', '2393', '/0/2290/2393/', '3', '', 'PGQ', '1', '6', '2017-08-18 15:04:39', '6', '2017-08-18 15:04:39');
INSERT INTO `god_area` VALUES ('3519', '都匀市', '都匀', '999', '6', '', '2787', '/0/2723/2787/', '3', '', null, '0', '6', '2017-08-18 17:22:43', '6', '2017-08-18 17:25:09');
INSERT INTO `god_area` VALUES ('3520', '福泉市', '福泉', '999', '6', '', '2787', '/0/2723/2787/', '3', '', null, '0', '6', '2017-08-18 17:23:17', '6', '2017-08-18 17:25:11');
INSERT INTO `god_area` VALUES ('3521', '郾城区', '郾城区', '999', '9', '', '3514', '/0/1654/3514/', '3', '', 'CQ', '1', '6', '2017-08-23 10:30:13', '6', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('3522', '源汇区', '源汇', '999', '6', '', '3514', '/0/1654/3514/', '3', '', 'YIQ', '1', '6', '2017-08-23 10:30:53', '6', '2017-08-23 10:30:53');
INSERT INTO `god_area` VALUES ('3523', '召陵区', '召陵', '999', '6', '', '3514', '/0/1654/3514/', '3', '', 'ZLQ', '1', '6', '2017-08-23 10:31:43', '6', '2017-08-23 10:31:43');
INSERT INTO `god_area` VALUES ('3524', '舞阳县', '舞阳', '999', '6', '', '3514', '/0/1654/3514/', '3', '', 'WYX', '1', '6', '2017-08-23 10:32:26', '6', '2017-08-23 10:32:26');
INSERT INTO `god_area` VALUES ('3525', '临颍县', '临颍', '999', '6', '', '3514', '/0/1654/3514/', '3', '', 'LX', '1', '6', '2017-08-23 10:33:03', '6', '2017-08-23 10:33:03');
INSERT INTO `god_area` VALUES ('3526', '康巴什区', '康巴什', '999', '9', '', '426', '/0/374/426/', '3', '', 'KBSQ', '1', '6', '2017-09-06 10:46:39', '6', '2017-09-06 10:46:39');
INSERT INTO `god_area` VALUES ('3527', '寿县', '寿县', '999', '6', '', '1148', '/0/1117/1148/', '3', '', 'SX', '1', '1', '2017-09-07 09:11:04', '13', '2017-09-07 09:11:04');
INSERT INTO `god_area` VALUES ('3528', '徽州区', '徽州', '999', '6', '', '1117', '/0/1117/', '2', '', 'IZQ', '0', '88', '2017-09-07 09:28:18', '13', '2017-09-07 09:28:18');
INSERT INTO `god_area` VALUES ('3529', '祁门县', '祁门', '999', '6', '', '3528', '/0/1117/3528/', '3', '', 'QMX', '0', '88', '2017-09-07 09:47:41', '13', '2017-09-07 09:47:41');
INSERT INTO `god_area` VALUES ('3530', '歙县', '歙县', '999', '6', '', '3528', '/0/1117/3528/', '3', '', 'X', '0', '88', '2017-09-07 09:48:31', '13', '2017-09-07 10:14:44');
INSERT INTO `god_area` VALUES ('3531', '休宁县', '休宁', '999', '6', '', '3528', '/0/1117/3528/', '3', '', 'XNX', '0', '88', '2017-09-07 09:49:13', '13', '2017-09-07 09:49:13');
INSERT INTO `god_area` VALUES ('3532', '黟县', '黟县', '999', '6', '', '3528', '/0/1117/3528/', '3', '', 'X', '0', '88', '2017-09-07 09:49:41', '1', '2017-09-07 10:13:23');
INSERT INTO `god_area` VALUES ('3533', '盘锦市', '盘锦', '999', '6', '', '498', '/0/498/', '2', '', 'PJS', '1', '12', '2017-09-08 14:31:25', '12', '2017-09-08 14:31:25');
INSERT INTO `god_area` VALUES ('3534', '大洼区', '大洼', '999', '6', '', '3533', '/0/498/3533/', '3', '', 'DWQ', '1', '12', '2017-09-08 14:32:34', '12', '2017-09-08 14:32:34');
INSERT INTO `god_area` VALUES ('3535', '双台子区', '双台子', '999', '9', '', '3533', '/0/498/3533/', '3', '', 'STZQ', '1', '12', '2017-09-08 14:33:10', '12', '2017-09-08 14:33:10');
INSERT INTO `god_area` VALUES ('3536', '兴隆台区', '兴隆台', '999', '9', '', '3533', '/0/498/3533/', '3', '', 'XLTQ', '1', '12', '2017-09-08 14:33:40', '12', '2017-09-08 14:33:40');
INSERT INTO `god_area` VALUES ('3537', '盘山县', '盘山', '999', '6', '', '3533', '/0/498/3533/', '3', '', 'PSX', '1', '12', '2017-09-08 14:34:06', '12', '2017-09-08 14:34:06');
INSERT INTO `god_area` VALUES ('3538', '梁溪区', '梁溪', '999', '6', '', '892', '/0/878/892/', '3', '', 'LXQ', '1', '6', '2017-09-14 10:59:36', '6', '2017-09-14 10:59:36');
INSERT INTO `god_area` VALUES ('3539', '新吴区', '新吴', '999', '6', '', '892', '/0/878/892/', '3', '', 'XWQ', '1', '6', '2017-09-14 10:59:56', '6', '2017-09-14 10:59:56');
INSERT INTO `god_area` VALUES ('3540', '峨边彝族自治县', '峨边', '999', '6', '', '3515', '/0/2500/3515/', '3', '', 'EBYZZZX', '1', '12', '2017-09-18 15:58:58', '12', '2017-09-18 15:58:58');
INSERT INTO `god_area` VALUES ('3541', '马边彝族自治县', '马边', '999', '6', '', '3515', '/0/2500/3515/', '3', '', 'MBYZZZX', '1', '12', '2017-09-18 15:59:35', '12', '2017-09-18 15:59:35');
INSERT INTO `god_area` VALUES ('3542', '夹江县', '夹江', '999', '6', '', '3515', '/0/2500/3515/', '3', '', 'JJX', '1', '12', '2017-09-18 16:00:13', '12', '2017-09-18 16:00:13');
INSERT INTO `god_area` VALUES ('3543', '犍为县', '犍为', '999', '6', '', '3515', '/0/2500/3515/', '3', '', 'WX', '1', '12', '2017-09-18 16:00:50', '12', '2017-09-18 16:00:50');
INSERT INTO `god_area` VALUES ('3544', '井研县', '井研', '999', '6', '', '3515', '/0/2500/3515/', '3', '', 'JYX', '1', '12', '2017-09-18 16:01:12', '12', '2017-09-18 16:01:12');
INSERT INTO `god_area` VALUES ('3545', '沐川县', '沐川', '999', '6', '', '3515', '/0/2500/3515/', '3', '', 'CX', '1', '12', '2017-09-18 16:01:36', '12', '2017-09-18 16:01:36');
INSERT INTO `god_area` VALUES ('3546', '金口河区', '金口河', '999', '9', '', '3515', '/0/2500/3515/', '3', '', 'JKIQ', '1', '12', '2017-09-18 16:02:12', '12', '2017-09-18 16:02:12');
INSERT INTO `god_area` VALUES ('3547', '沙湾区', '沙湾区', '999', '9', '', '3515', '/0/2500/3515/', '3', '', 'SWQ', '1', '12', '2017-09-18 16:02:32', '12', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('3548', '五通桥区', '五通桥', '999', '9', '', '3515', '/0/2500/3515/', '3', '', 'WTQQ', '1', '12', '2017-09-18 16:02:55', '12', '2017-09-18 16:02:55');
INSERT INTO `god_area` VALUES ('3549', '竞秀区', '竞秀', '999', '6', '', '128', '/0/37/128/', '3', '', 'JXQ', '1', '6', '2017-09-22 15:59:25', '6', '2017-09-22 15:59:25');
INSERT INTO `god_area` VALUES ('3550', '莲池区', '莲池', '999', '6', '', '128', '/0/37/128/', '3', '', 'LCQ', '1', '6', '2017-09-22 15:59:49', '6', '2017-09-22 15:59:49');
INSERT INTO `god_area` VALUES ('3551', '祥符区', '祥符', '999', '6', '', '1669', '/0/1654/1669/', '3', '', 'XFQ', '1', '12', '2017-09-30 11:47:34', '12', '2017-09-30 11:47:34');
INSERT INTO `god_area` VALUES ('3552', '卡若区', '卡若', '999', '6', '', '3010', '/0/2980/3010/', '3', '', 'KRQ', '1', '12', '2017-09-30 15:30:41', '12', '2017-09-30 15:30:41');
INSERT INTO `god_area` VALUES ('3553', '巴宜区', '巴宜', '999', '6', '', '3055', '/0/2980/3055/', '3', '', 'BYQ', '1', '12', '2017-09-30 15:57:20', '12', '2017-09-30 15:57:20');
INSERT INTO `god_area` VALUES ('3554', '阿拉尔市', '阿拉尔', '999', '9', '', '3390', '/0/3390/', '2', '', 'ALES', '1', '12', '2017-10-06 13:55:06', '12', '2017-10-06 13:55:06');
INSERT INTO `god_area` VALUES ('3555', '石河子市', '石河子', '999', '9', '', '3390', '/0/3390/', '2', '', 'SIZS', '1', '12', '2017-10-06 13:55:38', '12', '2017-10-06 13:55:38');
INSERT INTO `god_area` VALUES ('3556', '铁门关市', '铁门关', '999', '9', '', '3390', '/0/3390/', '2', '', 'TMGS', '1', '12', '2017-10-06 13:56:03', '12', '2017-10-06 13:56:03');
INSERT INTO `god_area` VALUES ('3557', '图木舒克市', '图木舒克', '999', '12', '', '3390', '/0/3390/', '2', '', 'TMSKS', '1', '12', '2017-10-06 13:56:23', '12', '2017-10-06 13:56:23');
INSERT INTO `god_area` VALUES ('3558', '五家渠市', '五家渠', '999', '9', '', '3390', '/0/3390/', '2', '', 'WJQS', '1', '12', '2017-10-06 13:56:55', '12', '2017-10-06 13:56:55');
INSERT INTO `god_area` VALUES ('3559', '伊州区', '伊州', '999', '6', '', '3411', '/0/3390/3411/', '3', '', 'YZQ', '1', '12', '2017-10-06 17:30:18', '12', '2017-10-06 17:30:18');
INSERT INTO `god_area` VALUES ('3560', '西海岸新区', '西海岸', '999', '9', '', '1495', '/0/1482/1495/', '3', '', 'XIAXQ', '1', '16', '2018-04-10 14:14:31', '16', '2018-04-10 14:30:12');
INSERT INTO `god_area` VALUES ('3561', '贵安新区', '贵安', '999', '6', '', '2723', '/0/2723/', '2', '', 'GAXQ', '1', '16', '2018-04-12 15:52:30', '16', '2018-04-12 15:52:30');
INSERT INTO `god_area` VALUES ('3562', '宁波杭州湾新区', '杭州湾新区', '999', '15', '', '1020', '/0/1004/1020/', '3', '', 'NBIZWXQ', '1', '16', '2018-04-12 17:36:47', '16', '2018-04-12 17:36:47');
INSERT INTO `god_area` VALUES ('3563', '平潭综合实验区', '平潭综合实验区', '999', '21', '', '1255', '/0/1255/', '2', '', 'PTZISYQ', '1', '16', '2018-04-16 17:11:19', '16', '2018-04-16 17:11:19');
INSERT INTO `god_area` VALUES ('3564', '平潭县', '平潭', '999', '6', '', '3563', '/0/1255/3563/', '3', '', 'PTX', '0', '88', '2018-04-17 08:53:48', '16', '2018-04-17 08:53:48');
INSERT INTO `god_area` VALUES ('3565', '镇江新区', '镇江新区', '999', '12', '', '981', '/0/878/981/', '3', '', 'ZJXQ', '1', '16', '2018-04-17 11:49:35', '16', '2018-12-04 17:33:35');
INSERT INTO `god_area` VALUES ('3566', '滇中新区', '滇中新区', '999', '12', '', '2826', '/0/2826/', '2', '', 'DZXQ', '1', '16', '2018-04-19 17:01:30', '16', '2018-12-05 15:51:17');
INSERT INTO `god_area` VALUES ('3567', '九华山风景区', '九华山', '999', '9', '', '1240', '/0/1117/1240/', '3', '', 'JISFJQ', '0', '16', '2018-04-24 11:05:05', '16', '2018-08-20 14:15:04');
INSERT INTO `god_area` VALUES ('3568', '毛集实验区', '毛集', '999', '6', '', '1148', '/0/1117/1148/', '3', '', 'MJSYQ', '1', '16', '2018-04-25 09:12:27', '16', '2018-04-25 09:12:27');
INSERT INTO `god_area` VALUES ('3569', '横琴新区', '横琴', '999', '6', '', '2164', '/0/2129/2164/', '3', '', 'IQXQ', '1', '16', '2018-04-25 10:08:53', '16', '2018-04-25 10:08:53');
INSERT INTO `god_area` VALUES ('3570', '光明区', '光明', '999', '6', '', '2156', '/0/2129/2156/', '3', '', 'GMXQ', '1', '88', '2018-04-25 10:14:46', '16', '2018-04-25 10:14:46');
INSERT INTO `god_area` VALUES ('3571', '大鹏新区', '大鹏新区', '999', '6', '', '2156', '/0/2129/2156/', '3', '', 'DPXQ', '1', '16', '2018-04-25 10:16:15', '16', '2018-12-05 16:36:21');
INSERT INTO `god_area` VALUES ('3572', '洋浦经济开发区', '洋浦', '999', '6', '', '2429', '/0/2429/', '2', '', null, '1', '16', '2018-04-27 17:31:21', '16', '2018-04-27 17:31:21');
INSERT INTO `god_area` VALUES ('3573', '坪山区', '坪山', '999', '6', '', '2156', '/0/2129/2156/', '3', '', null, '1', '16', '2018-05-07 09:43:33', '16', '2018-05-21 10:49:20');
INSERT INTO `god_area` VALUES ('3574', '霍尔果斯市', '霍尔果斯', '999', '12', '', '3475', '/0/3390/3475/', '3', '', null, '1', '16', '2018-05-17 10:40:56', '16', '2018-05-17 10:40:56');
INSERT INTO `god_area` VALUES ('3575', '峨眉山市', '峨眉山', '999', '9', '', '3515', '/0/2500/3515/', '3', '', null, '1', '16', '2018-05-24 16:50:51', '16', '2018-05-24 16:50:51');
INSERT INTO `god_area` VALUES ('3576', '可克达拉市', '可克达拉', '999', '12', '', '3390', '/0/3390/', '2', '', null, '1', '16', '2018-06-14 08:53:32', '16', '2018-06-14 08:53:32');
INSERT INTO `god_area` VALUES ('3577', '清江浦区', '清江浦', '999', '9', '', '952', '/0/878/952/', '3', '', null, '1', '16', '2018-06-20 09:06:08', '16', '2018-06-20 09:06:08');
INSERT INTO `god_area` VALUES ('3578', '宜阳新区', '宜阳新', '999', '9', '', '1443', '/0/1359/1443/', '3', '', null, '1', '12', '2018-06-23 14:51:47', '12', '2018-06-23 14:51:47');
INSERT INTO `god_area` VALUES ('3579', '蓉江新区', '蓉江新', '999', '9', '', '1408', '/0/1359/1408/', '3', '', null, '1', '12', '2018-06-28 15:27:50', '12', '2018-06-28 15:27:50');
INSERT INTO `god_area` VALUES ('3580', '北屯市', '北屯', '999', '6', '', '3390', '/0/3390/', '2', '', null, '1', '16', '2018-07-04 17:37:02', '16', '2018-07-04 17:37:02');
INSERT INTO `god_area` VALUES ('3581', '石岐区', '石岐', '999', '6', '', '2270', '/0/2129/2270/', '3', '', null, '1', '12', '2018-07-12 14:29:51', '12', '2018-07-12 14:29:51');
INSERT INTO `god_area` VALUES ('3582', '东区', '东区', '999', '6', '', '2270', '/0/2129/2270/', '3', '', null, '1', '12', '2018-07-12 14:30:14', '12', '2018-07-12 14:30:14');
INSERT INTO `god_area` VALUES ('3583', '西区', '西区', '999', '6', '', '2270', '/0/2129/2270/', '3', '', null, '1', '12', '2018-07-12 14:30:30', '12', '2018-07-12 14:30:30');
INSERT INTO `god_area` VALUES ('3584', '南区', '南区', '999', '6', '', '2270', '/0/2129/2270/', '3', '', null, '1', '12', '2018-07-12 14:30:49', '12', '2018-07-12 14:30:49');
INSERT INTO `god_area` VALUES ('3585', '五桂山区', '五桂山', '999', '9', '', '2270', '/0/2129/2270/', '3', '', null, '1', '12', '2018-07-12 14:32:30', '12', '2018-07-12 14:32:30');
INSERT INTO `god_area` VALUES ('3586', '火炬开发区', '火炬开发区', '999', '6', '', '2270', '/0/2129/2270/', '3', '', null, '1', '12', '2018-07-12 14:35:00', '12', '2018-12-05 16:50:19');
INSERT INTO `god_area` VALUES ('3587', '昆玉市', '昆玉', '999', '6', '自治区直辖县级行政单位', '3390', '/0/3390/', '2', '', null, '1', '16', '2018-07-16 15:04:49', '16', '2018-07-16 15:04:49');
INSERT INTO `god_area` VALUES ('3588', '双河市', '双河', '999', '6', '自治区直辖县级行政单位', '3390', '/0/3390/', '2', '', null, '1', '16', '2018-07-16 15:06:27', '16', '2018-07-16 15:06:27');
INSERT INTO `god_area` VALUES ('3589', '高昌区', '高昌', '999', '6', '', '3407', '/0/3390/3407/', '3', '', null, '1', '16', '2018-07-16 15:14:19', '16', '2018-07-16 15:14:19');
INSERT INTO `god_area` VALUES ('3590', '鄠邑区', '鄠邑', '999', '6', '', '3064', '/0/3063/3064/', '3', '', null, '1', '16', '2018-07-16 15:21:28', '16', '2018-07-16 15:21:28');
INSERT INTO `god_area` VALUES ('3591', '色尼区', '色尼', '999', '6', '', '3035', '/0/2980/3035/', '3', '', null, '1', '16', '2018-07-16 15:28:38', '16', '2018-07-16 15:29:39');
INSERT INTO `god_area` VALUES ('3592', '康定市', '康定', '999', '6', '', '2686', '/0/2500/2686/', '3', '', null, '1', '16', '2018-07-16 16:11:19', '16', '2018-07-16 16:11:19');
INSERT INTO `god_area` VALUES ('3593', '市中区', '市中区', '999', '9', '', '2581', '/0/2500/2581/', '3', '', null, '1', '15', '2018-11-29 14:47:36', '15', '2018-11-29 14:47:36');
INSERT INTO `god_area` VALUES ('3594', '市中区', '市中区', '999', '9', '', '3515', '/0/2500/3515/', '3', '', null, '1', '15', '2018-11-29 14:50:29', '15', '2018-11-29 14:50:29');
INSERT INTO `god_area` VALUES ('3595', '城区', '城区', '999', '6', '', '2239', '/0/2129/2239/', '3', '', null, '1', '88', '2018-11-29 14:51:58', '0', '2018-11-29 14:51:58');
INSERT INTO `god_area` VALUES ('3596', '平潭县', '平潭', '999', '6', '', '1256', '/0/1255/1256/', '3', '', null, '1', '88', '2018-11-29 14:54:17', '0', '2018-11-29 14:51:58');

-- ----------------------------
-- Table structure for god_customer
-- ----------------------------
DROP TABLE IF EXISTS `god_customer`;
CREATE TABLE `god_customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '关联userid',
  `uuid` varchar(100) NOT NULL DEFAULT '' COMMENT '客户uuid',
  `avatar` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '头像',
  `nickname` varchar(100) NOT NULL DEFAULT '' COMMENT '昵称',
  `birthday` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '出生日期，格式19900120',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别 0保密 1男2女',
  `city` varchar(50) NOT NULL DEFAULT '' COMMENT '所在城市',
  `company` varchar(150) NOT NULL DEFAULT '' COMMENT '公司名称',
  `address` varchar(150) NOT NULL DEFAULT '' COMMENT '地址',
  `contact` varchar(100) NOT NULL DEFAULT '' COMMENT '联系人',
  `phone` char(11) NOT NULL DEFAULT '' COMMENT '电话',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `qq` varchar(20) NOT NULL DEFAULT '' COMMENT 'qq',
  `remark` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  `create_by` int(10) unsigned NOT NULL DEFAULT '0',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_by` int(10) unsigned NOT NULL DEFAULT '0',
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `idxque_uuid` (`uuid`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='客户资料信息';

-- ----------------------------
-- Records of god_customer
-- ----------------------------
INSERT INTO `god_customer` VALUES ('1', '3', '6a28d0e0-f657-4bdc-8b16-45f05ce5cbe3', '/storage/uploads/avatars/VT5wxniZn8mpXtmZSr3ekYdRNFhILMB6E8iH1lnH.jpeg', 'huyao', '19900220', '1', '长沙', '123', '456', '雷达', '4788', '49849', '4949848', '', '0', '2020-02-14 17:38:51', '0', '2020-02-25 17:34:51');
INSERT INTO `god_customer` VALUES ('2', '3', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '/storage/uploads/avatars/VT5wxniZn8mpXtmZSr3ekYdRNFhILMB6E8iH1lnH.jpeg', 'zhoyifu', '19921004', '1', '', '', '', '', '', '', '', '', '0', '2020-02-17 17:05:18', '0', '2020-02-25 17:35:03');

-- ----------------------------
-- Table structure for god_kefu_answer_content
-- ----------------------------
DROP TABLE IF EXISTS `god_kefu_answer_content`;
CREATE TABLE `god_kefu_answer_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '云帐号id',
  `seat_id` int(10) NOT NULL DEFAULT '0' COMMENT '坐席ID，如id为空将全局共用',
  `type_id` int(10) NOT NULL DEFAULT '0' COMMENT '类型id',
  `title` varchar(150) NOT NULL DEFAULT '' COMMENT '标题',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '回复的内容',
  `create_by` int(10) DEFAULT '0',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_by` int(10) DEFAULT '0',
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_userid` (`user_id`),
  KEY `idx_seatid` (`seat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COMMENT='客服快捷回复表';

-- ----------------------------
-- Records of god_kefu_answer_content
-- ----------------------------
INSERT INTO `god_kefu_answer_content` VALUES ('1', '1', '1', '0', '商品询问', '我们的商品都是来自步知公考大咖老师', '0', '2020-02-07 17:25:38', '0', null);
INSERT INTO `god_kefu_answer_content` VALUES ('2', '1', '0', '13', '', '你好啊，这里是个人回复保存的回复信息', '0', '2020-02-19 11:02:15', '0', null);
INSERT INTO `god_kefu_answer_content` VALUES ('14', '3', '2', '6', '测试', '12', '0', '2020-02-26 12:12:03', '0', '2020-02-26 12:12:03');
INSERT INTO `god_kefu_answer_content` VALUES ('9', '0', '0', '0', '123', '123', '0', '2020-02-24 18:17:15', '0', '2020-02-24 18:17:15');
INSERT INTO `god_kefu_answer_content` VALUES ('13', '3', '4', '6', '123', '123', '0', '2020-02-26 10:34:39', '0', '2020-02-26 10:34:41');
INSERT INTO `god_kefu_answer_content` VALUES ('7', '1', '0', '4', '', '33333366636545你好啊', '0', '2020-02-19 17:07:12', '0', '2020-02-19 17:07:12');
INSERT INTO `god_kefu_answer_content` VALUES ('12', '3', '0', '6', '12313', '231233', '0', '2020-02-24 18:32:56', '0', '2020-02-24 18:32:56');

-- ----------------------------
-- Table structure for god_kefu_answer_type
-- ----------------------------
DROP TABLE IF EXISTS `god_kefu_answer_type`;
CREATE TABLE `god_kefu_answer_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '云帐号id',
  `seat_id` int(10) NOT NULL DEFAULT '0' COMMENT '坐席id',
  `name` varchar(50) NOT NULL DEFAULT '',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COMMENT='快捷回复类型表';

-- ----------------------------
-- Records of god_kefu_answer_type
-- ----------------------------
INSERT INTO `god_kefu_answer_type` VALUES ('6', '3', '0', 'test3', '2020-02-24 16:13:18', '2020-02-25 10:14:13');
INSERT INTO `god_kefu_answer_type` VALUES ('4', '1', '0', '公考雷达信息咨询', '2020-02-18 23:39:13', null);
INSERT INTO `god_kefu_answer_type` VALUES ('5', '1', '0', '公用回复', '2020-02-18 23:54:42', null);
INSERT INTO `god_kefu_answer_type` VALUES ('15', '1', '1', '952929', '2021-11-02 09:41:37', null);
INSERT INTO `god_kefu_answer_type` VALUES ('16', '1', '1', '118145', '2021-11-02 09:41:50', null);
INSERT INTO `god_kefu_answer_type` VALUES ('13', '1', '1', '个人3333', '2020-02-19 10:43:58', null);

-- ----------------------------
-- Table structure for god_kefu_cust
-- ----------------------------
DROP TABLE IF EXISTS `god_kefu_cust`;
CREATE TABLE `god_kefu_cust` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '云帐号id',
  `seat_id` int(10) NOT NULL DEFAULT '0' COMMENT '客服座席id',
  `uuid` varchar(100) NOT NULL DEFAULT '' COMMENT '随机生成id',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '呢称',
  `avatar` varchar(150) NOT NULL DEFAULT '' COMMENT '头像',
  `online` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:在线 0:已断开',
  `chat_time` int(11) NOT NULL DEFAULT '0' COMMENT '聊天最后时间',
  `mark` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:星标用户',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '-1:已删除 1:正常 0:非正常',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idxque_uuid_seatid` (`uuid`,`seat_id`),
  KEY `idx_seatid` (`seat_id`,`chat_time`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COMMENT='聊天用户表，可删除历史记录';

-- ----------------------------
-- Records of god_kefu_cust
-- ----------------------------
INSERT INTO `god_kefu_cust` VALUES ('1', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '客户1y08979', 'http://thirdwx.qlogo.cn/mmopen/vi_32/6ejYgEC8IZJTLdAyNxfKib4HUHce99yDNEUoKnfs1dufgcpoH7sLvRDcKQjZ8Y8k6TXFbm8iay61w3icsMDbg6SNQ/132', '0', '1583427875', '0', '1', '2020-03-06 00:27:01', '2020-03-06 01:19:13');
INSERT INTO `god_kefu_cust` VALUES ('2', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '客户1y1cbc4', 'http://thirdwx.qlogo.cn/mmopen/vi_32/6ejYgEC8IZJTLdAyNxfKib4HUHce99yDNEUoKnfs1dufgcpoH7sLvRDcKQjZ8Y8k6TXFbm8iay61w3icsMDbg6SNQ/132', '0', '1583426598', '0', '1', '2020-03-06 00:27:02', '2020-03-06 01:05:00');
INSERT INTO `god_kefu_cust` VALUES ('3', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '客户1y3c583', 'http://thirdwx.qlogo.cn/mmopen/vi_32/6ejYgEC8IZJTLdAyNxfKib4HUHce99yDNEUoKnfs1dufgcpoH7sLvRDcKQjZ8Y8k6TXFbm8iay61w3icsMDbg6SNQ/132', '0', '1583651112', '0', '1', '2020-03-08 13:50:33', '2020-03-09 00:52:52');
INSERT INTO `god_kefu_cust` VALUES ('4', '1', '1', '1y6086567aff4746fabb0426eaa48f82bf', '客户1y60865', 'http://thirdwx.qlogo.cn/mmopen/vi_32/6ejYgEC8IZJTLdAyNxfKib4HUHce99yDNEUoKnfs1dufgcpoH7sLvRDcKQjZ8Y8k6TXFbm8iay61w3icsMDbg6SNQ/132', '0', '1583647675', '0', '1', '2020-03-08 13:53:15', '2020-03-09 00:52:52');
INSERT INTO `god_kefu_cust` VALUES ('5', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '客户1y85977', 'http://thirdwx.qlogo.cn/mmopen/vi_32/6ejYgEC8IZJTLdAyNxfKib4HUHce99yDNEUoKnfs1dufgcpoH7sLvRDcKQjZ8Y8k6TXFbm8iay61w3icsMDbg6SNQ/132', '0', '1587972506', '0', '1', '2020-04-17 13:40:32', '2020-04-27 15:34:24');
INSERT INTO `god_kefu_cust` VALUES ('6', '1', '1', '1yb5a29b498dc74cb5a7982064e07725ee', '客户1yb5a29', 'http://thirdwx.qlogo.cn/mmopen/vi_32/6ejYgEC8IZJTLdAyNxfKib4HUHce99yDNEUoKnfs1dufgcpoH7sLvRDcKQjZ8Y8k6TXFbm8iay61w3icsMDbg6SNQ/132', '0', '1587102609', '0', '1', '2020-04-17 13:49:57', '2020-04-17 13:58:25');
INSERT INTO `god_kefu_cust` VALUES ('7', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '客户1y05c39', 'http://thirdwx.qlogo.cn/mmopen/vi_32/6ejYgEC8IZJTLdAyNxfKib4HUHce99yDNEUoKnfs1dufgcpoH7sLvRDcKQjZ8Y8k6TXFbm8iay61w3icsMDbg6SNQ/132', '0', '1588055935', '0', '1', '2020-04-17 15:03:36', '2020-04-28 14:46:45');
INSERT INTO `god_kefu_cust` VALUES ('8', '1', '1', 'undefined', '客户undefin', 'http://thirdwx.qlogo.cn/mmopen/vi_32/6ejYgEC8IZJTLdAyNxfKib4HUHce99yDNEUoKnfs1dufgcpoH7sLvRDcKQjZ8Y8k6TXFbm8iay61w3icsMDbg6SNQ/132', '0', '1635816702', '0', '1', '2020-04-27 16:35:35', '2021-11-02 09:31:44');
INSERT INTO `god_kefu_cust` VALUES ('9', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '客户1y89bef', 'http://thirdwx.qlogo.cn/mmopen/vi_32/6ejYgEC8IZJTLdAyNxfKib4HUHce99yDNEUoKnfs1dufgcpoH7sLvRDcKQjZ8Y8k6TXFbm8iay61w3icsMDbg6SNQ/132', '0', '1588041878', '0', '1', '2020-04-27 16:36:19', '2020-04-28 10:44:41');
INSERT INTO `god_kefu_cust` VALUES ('10', '1', '1', '1y6d6fca0fa5c548d59a304fca9f15873e', '客户1y6d6fc', 'http://thirdwx.qlogo.cn/mmopen/vi_32/6ejYgEC8IZJTLdAyNxfKib4HUHce99yDNEUoKnfs1dufgcpoH7sLvRDcKQjZ8Y8k6TXFbm8iay61w3icsMDbg6SNQ/132', '0', '1635325642', '0', '1', '2021-10-27 17:02:03', '2021-10-27 17:36:18');
INSERT INTO `god_kefu_cust` VALUES ('11', '1', '1', '1yba44657481754393b0bdfdf40f4950f9', '客户1yba446', 'http://thirdwx.qlogo.cn/mmopen/vi_32/6ejYgEC8IZJTLdAyNxfKib4HUHce99yDNEUoKnfs1dufgcpoH7sLvRDcKQjZ8Y8k6TXFbm8iay61w3icsMDbg6SNQ/132', '0', '1635816848', '0', '1', '2021-11-02 09:30:51', '2021-11-03 11:09:52');
INSERT INTO `god_kefu_cust` VALUES ('12', '1', '1', '1yf97bb2a2b45045b095e663420d844da7', '客户1yf97bb', 'http://thirdwx.qlogo.cn/mmopen/vi_32/6ejYgEC8IZJTLdAyNxfKib4HUHce99yDNEUoKnfs1dufgcpoH7sLvRDcKQjZ8Y8k6TXFbm8iay61w3icsMDbg6SNQ/132', '0', '1635818084', '0', '1', '2021-11-02 09:31:45', '2021-11-03 11:09:52');

-- ----------------------------
-- Table structure for god_kefu_cust_info
-- ----------------------------
DROP TABLE IF EXISTS `god_kefu_cust_info`;
CREATE TABLE `god_kefu_cust_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '云帐号id',
  `uuid` varchar(100) NOT NULL DEFAULT '' COMMENT '随机生成id',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '呢称',
  `avatar` varchar(150) NOT NULL DEFAULT '' COMMENT '头像',
  `chat_time` int(11) NOT NULL DEFAULT '0' COMMENT '聊天最后时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idxque_uuid` (`uuid`),
  KEY `idx_chattime` (`chat_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户个人信息';

-- ----------------------------
-- Records of god_kefu_cust_info
-- ----------------------------

-- ----------------------------
-- Table structure for god_kefu_cust_visit
-- ----------------------------
DROP TABLE IF EXISTS `god_kefu_cust_visit`;
CREATE TABLE `god_kefu_cust_visit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '云帐号',
  `uuid` varchar(100) NOT NULL DEFAULT '' COMMENT '聊天用户uuid',
  `source` varchar(150) NOT NULL DEFAULT '' COMMENT '访问来源',
  `channel` varchar(150) NOT NULL DEFAULT '' COMMENT '接入渠道',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'ip地址',
  `device` varchar(150) NOT NULL DEFAULT '' COMMENT '设备信息',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='访问来源';

-- ----------------------------
-- Records of god_kefu_cust_visit
-- ----------------------------

-- ----------------------------
-- Table structure for god_kefu_feedback_content
-- ----------------------------
DROP TABLE IF EXISTS `god_kefu_feedback_content`;
CREATE TABLE `god_kefu_feedback_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `uuid` varchar(100) NOT NULL DEFAULT '' COMMENT '用户uuid',
  `type_id` int(10) NOT NULL DEFAULT '0' COMMENT '问题类型',
  `title` varchar(150) NOT NULL DEFAULT '' COMMENT '标题',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '问题描述',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '联系邮箱',
  `phone` char(11) NOT NULL DEFAULT '' COMMENT '联系电话',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:未处理 1:已处理',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='反馈留言提问表';

-- ----------------------------
-- Records of god_kefu_feedback_content
-- ----------------------------
INSERT INTO `god_kefu_feedback_content` VALUES ('1', '1', '65465465465', '1', '阿斯蒂芬基本面', '在要在要', '', '', '1', '要在要要要122', '2020-04-13 17:26:03', '2020-04-13 17:57:01');

-- ----------------------------
-- Table structure for god_kefu_feedback_type
-- ----------------------------
DROP TABLE IF EXISTS `god_kefu_feedback_type`;
CREATE TABLE `god_kefu_feedback_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '云帐号id',
  `name` varchar(50) NOT NULL DEFAULT '',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='反馈留言类型';

-- ----------------------------
-- Records of god_kefu_feedback_type
-- ----------------------------
INSERT INTO `god_kefu_feedback_type` VALUES ('1', '1', '商城', '2020-02-07 11:23:10', null);
INSERT INTO `god_kefu_feedback_type` VALUES ('2', '1', '雷V', '2020-02-07 11:23:18', null);
INSERT INTO `god_kefu_feedback_type` VALUES ('3', '1', '大咖课', '2020-02-07 11:23:32', null);
INSERT INTO `god_kefu_feedback_type` VALUES ('4', '1', '其他', '2020-02-07 11:29:40', null);
INSERT INTO `god_kefu_feedback_type` VALUES ('5', '0', '哈哈哈1123', '2020-04-08 18:31:23', '2020-04-08 18:35:56');
INSERT INTO `god_kefu_feedback_type` VALUES ('6', '1', '哈哈中', '2020-04-08 21:00:59', '2020-04-08 21:00:59');

-- ----------------------------
-- Table structure for god_kefu_message
-- ----------------------------
DROP TABLE IF EXISTS `god_kefu_message`;
CREATE TABLE `god_kefu_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` varchar(100) NOT NULL DEFAULT '' COMMENT '消息ID',
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '云帐号id',
  `seat_id` int(10) NOT NULL DEFAULT '0' COMMENT '客服座席id',
  `uuid` varchar(100) NOT NULL DEFAULT '' COMMENT 'sha1，聊天客户uuid，客服端随机生成',
  `origin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '消息所属，1:客户 2:坐席 0:系统消息',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '消息类型0:文本 1:图片 2:video 3:voice',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '消息内容',
  `is_read` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:未读 1:已读',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unique` (`message_id`),
  KEY `idx_uuid_seatid_origin` (`uuid`,`seat_id`,`origin`)
) ENGINE=InnoDB AUTO_INCREMENT=1254 DEFAULT CHARSET=utf8mb4 COMMENT='可按月分表，或者清除历史记录表';

-- ----------------------------
-- Records of god_kefu_message
-- ----------------------------
INSERT INTO `god_kefu_message` VALUES ('126', 'ad237ad266b7429eb1a5698160b280cb', '1', '1', '1b61f812-be9e-44ad-ae6b-6e8a3d778874', '0', '0', '枯要要', '0', '2020-02-17 09:58:09', null);
INSERT INTO `god_kefu_message` VALUES ('127', 'dfc960b3f4d74eba81a72c53ea9812f4', '1', '1', '1b61f812-be9e-44ad-ae6b-6e8a3d778874', '0', '0', '知道了', '0', '2020-02-17 09:58:14', null);
INSERT INTO `god_kefu_message` VALUES ('128', '89dd41f8b9f242d5ae3a013fe62c19b0', '1', '1', '1b61f812-be9e-44ad-ae6b-6e8a3d778874', '0', '0', '11111111', '0', '2020-02-17 09:59:10', null);
INSERT INTO `god_kefu_message` VALUES ('129', '684d9b48112f4afdaacf163172615565', '1', '1', '1b61f812-be9e-44ad-ae6b-6e8a3d778874', '0', '0', '11111111', '0', '2020-02-17 09:59:16', null);
INSERT INTO `god_kefu_message` VALUES ('130', '9e999b6bfaa142a8bc8bcb884715b803', '1', '1', '1b61f812-be9e-44ad-ae6b-6e8a3d778874', '0', '0', '厅要', '0', '2020-02-17 09:59:18', null);
INSERT INTO `god_kefu_message` VALUES ('131', '78d5ccf5ad134963a958a47888d1df6a', '1', '1', '1b61f812-be9e-44ad-ae6b-6e8a3d778874', '0', '0', '阿斯蒂芬 苛', '0', '2020-02-17 09:59:21', null);
INSERT INTO `god_kefu_message` VALUES ('132', '2dfd498174294bdb82430f1e110c8628', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '结束语设置成功', '0', '2020-02-17 11:30:43', null);
INSERT INTO `god_kefu_message` VALUES ('133', 'ae27f367c0c64e59ab4ea69b68b5b70b', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '你好呀', '0', '2020-02-17 11:31:06', null);
INSERT INTO `god_kefu_message` VALUES ('134', '0df91b7add034759a101def21b3382e7', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '你好，这里是客户端', '0', '2020-02-17 11:31:37', null);
INSERT INTO `god_kefu_message` VALUES ('135', '27324d9e6a5d4ee98dac8fedd82345ce', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '111111111111', '0', '2020-02-17 11:48:38', null);
INSERT INTO `god_kefu_message` VALUES ('136', '9e04126f93fa43dc91b9bdbb56e77812', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '2222222222222', '0', '2020-02-17 11:49:30', null);
INSERT INTO `god_kefu_message` VALUES ('137', '6f24e1c6ecee4811983f854fc6008fdd', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '33333333333', '0', '2020-02-17 11:51:54', null);
INSERT INTO `god_kefu_message` VALUES ('138', '1f2faad7dd5642668e04cf561efe1217', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '4444444', '0', '2020-02-17 12:23:33', null);
INSERT INTO `god_kefu_message` VALUES ('139', '33768caa71bf4b179bcde13bb8b0dd66', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '55555555555', '0', '2020-02-17 12:23:35', null);
INSERT INTO `god_kefu_message` VALUES ('140', '2924bbc4201147128ff931a03cec8342', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '6666666', '0', '2020-02-17 12:25:01', null);
INSERT INTO `god_kefu_message` VALUES ('141', 'bd1c0cd845724e35a251205aaf349210', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '7777777', '0', '2020-02-17 12:25:04', null);
INSERT INTO `god_kefu_message` VALUES ('142', 'b09443a7f01a446ab380e2153db5fa09', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '888888', '0', '2020-02-17 12:27:16', null);
INSERT INTO `god_kefu_message` VALUES ('143', '979bfa94e80f4f47b0209db9f871187e', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '999999999', '0', '2020-02-17 12:27:19', null);
INSERT INTO `god_kefu_message` VALUES ('144', '47a1b463c784437ba4fa42e2f8f3ad24', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '1010101010', '0', '2020-02-17 12:37:19', null);
INSERT INTO `god_kefu_message` VALUES ('145', '0513a49c0bc1412cbb86aa5d6604a6c5', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '12212121', '0', '2020-02-17 12:39:53', null);
INSERT INTO `god_kefu_message` VALUES ('146', 'f94abde7ee0e4b40ae37fc257625b8dd', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '1313131313', '0', '2020-02-17 12:40:34', null);
INSERT INTO `god_kefu_message` VALUES ('147', '25ee647f7f4d42c3a8a9d42184546bd8', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '我的QQ无多群无多', '0', '2020-02-17 12:41:58', null);
INSERT INTO `god_kefu_message` VALUES ('148', 'b5676a9936ce4dd08f078373083e805e', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '飞吻飞吻仍无法f', '0', '2020-02-17 12:42:03', null);
INSERT INTO `god_kefu_message` VALUES ('149', '5e7304e593ea4feaaadbd761b1a26235', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '2132312312', '0', '2020-02-17 12:51:51', null);
INSERT INTO `god_kefu_message` VALUES ('150', '216f691572f44a469106d2bf5f340c20', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '人防(⊙o⊙)…反而rferf', '0', '2020-02-17 12:51:53', null);
INSERT INTO `god_kefu_message` VALUES ('151', '218b17316e50432eb8ba0c37a9281023', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '12356456', '0', '2020-02-17 14:43:59', null);
INSERT INTO `god_kefu_message` VALUES ('152', '8b342212054f40d89b9163dc674d1d5e', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '轻微的无多无多无', '0', '2020-02-17 15:06:26', null);
INSERT INTO `god_kefu_message` VALUES ('153', 'ef69629ef027454492d821755c8b4f80', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '123456789', '0', '2020-02-17 15:09:20', null);
INSERT INTO `god_kefu_message` VALUES ('154', '3328e04e66b74283a9ad36c171d30c24', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', 'dqw4dwq481', '0', '2020-02-17 15:12:03', null);
INSERT INTO `god_kefu_message` VALUES ('155', '8564401fb9b94b4388a6d7f9232b4d3f', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '打完打的哇群多', '0', '2020-02-17 15:18:32', null);
INSERT INTO `god_kefu_message` VALUES ('156', 'bc4f6cdabe304284b8cd1e16f4ca3d1a', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '驱蚊器无无微软', '0', '2020-02-17 15:23:18', null);
INSERT INTO `god_kefu_message` VALUES ('157', 'cb17848f4d7b49c8877819fdecfb4f03', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '112233', '0', '2020-02-17 15:24:47', null);
INSERT INTO `god_kefu_message` VALUES ('158', '1d0e21a346e04db4b59b24a9e430c059', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '强无敌强无敌无', '0', '2020-02-17 15:29:50', null);
INSERT INTO `god_kefu_message` VALUES ('159', '6fc91f0372c64526bf5bb79066a7040e', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '结束语设置成功', '0', '2020-02-17 15:50:25', null);
INSERT INTO `god_kefu_message` VALUES ('160', 'a9f2dfdfa07748b8a2f654ba3a16dc15', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '结束语设置成功', '0', '2020-02-17 15:50:35', null);
INSERT INTO `god_kefu_message` VALUES ('161', '1900bdba07514424bae4f144e0b1043c', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '结束语设置成功', '0', '2020-02-17 15:50:36', null);
INSERT INTO `god_kefu_message` VALUES ('162', '3859adb9f52e4691b2b9cbb6e0c98c68', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '结束语设置成功', '0', '2020-02-17 15:50:37', null);
INSERT INTO `god_kefu_message` VALUES ('163', 'c1f564884c39417f9fa8e2e084e5cd54', '1', '1', '1b61f812-be9e-44ad-ae6b-6e8a3d778874', '0', '0', '结束语设置成功', '0', '2020-02-17 16:58:21', null);
INSERT INTO `god_kefu_message` VALUES ('164', '630a22ed27f446a282cf22a6ebdaf989', '1', '1', '1b61f812-be9e-44ad-ae6b-6e8a3d778874', '0', '0', '结束语设置成功', '0', '2020-02-17 16:58:30', null);
INSERT INTO `god_kefu_message` VALUES ('165', 'ca13231bddda4167a5d7774c9412935d', '1', '1', '1b61f812-be9e-44ad-ae6b-6e8a3d778874', '2', '0', '哈哈w', '0', '2020-02-17 16:58:36', null);
INSERT INTO `god_kefu_message` VALUES ('166', '37653b12e5434b08a6e84d3ed1b34884', '1', '1', '1b61f812-be9e-44ad-ae6b-6e8a3d778874', '2', '0', '要在要', '0', '2020-02-17 16:59:30', null);
INSERT INTO `god_kefu_message` VALUES ('167', 'c6a8856b9703456b876d361331d545e4', '1', '1', '1b61f812-be9e-44ad-ae6b-6e8a3d778874', '2', '0', '在要要要要', '0', '2020-02-17 17:00:35', null);
INSERT INTO `god_kefu_message` VALUES ('168', 'eeb229a1df164e6bbb4865eb5946187a', '1', '1', '1b61f812-be9e-44ad-ae6b-6e8a3d778874', '1', '0', '我回复你', '1', '2020-02-17 17:00:55', '2020-02-17 16:59:22');
INSERT INTO `god_kefu_message` VALUES ('169', 'c233a99c1271472c8dc464c97ec837c1', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '结束语设置成功', '0', '2020-02-17 17:03:35', null);
INSERT INTO `god_kefu_message` VALUES ('170', '5189cb47f93c4a3d8b88785ed8db46fd', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '1', '0', '778899', '1', '2020-02-17 17:03:40', '2020-02-17 17:03:48');
INSERT INTO `god_kefu_message` VALUES ('171', 'f6bb891789e548b5b8fe3b28f0a39c0e', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '结束语设置成功', '0', '2020-02-17 17:44:52', null);
INSERT INTO `god_kefu_message` VALUES ('172', '1551fea5ca024eb98dc31d5f1a4bb302', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '结束语设置成功', '0', '2020-02-17 17:45:22', null);
INSERT INTO `god_kefu_message` VALUES ('173', '30a452bb2f6c42d780dadfe525a3933f', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '1', '0', '111', '1', '2020-02-17 17:45:52', '2020-02-17 17:46:25');
INSERT INTO `god_kefu_message` VALUES ('174', 'a69fcf23e64b4a6b8003b24b3aa2cd47', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '1', '0', '我想咨询雷达VIP', '1', '2020-02-17 17:46:04', '2020-02-17 17:46:25');
INSERT INTO `god_kefu_message` VALUES ('175', '99b04d71402648d4b8b8250f64aaa556', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '结束语设置成功', '0', '2020-02-17 17:54:13', null);
INSERT INTO `god_kefu_message` VALUES ('176', '9fd656c0a4e84fceb76d554409ce4b67', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '1', '0', '111', '1', '2020-02-17 17:54:20', '2020-02-17 17:54:22');
INSERT INTO `god_kefu_message` VALUES ('177', '144da6d64e36476cbd3d43ca55dd6d2d', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '结束语设置成功', '0', '2020-02-17 18:21:19', null);
INSERT INTO `god_kefu_message` VALUES ('178', 'e305083db2494a829712eb84e5f0b831', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '结束语设置成功', '0', '2020-02-17 18:22:06', null);
INSERT INTO `god_kefu_message` VALUES ('179', 'bb9e3828954945999e970c3e55d43e41', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '1', '0', 'hello', '1', '2020-02-17 18:22:13', '2020-02-17 18:22:19');
INSERT INTO `god_kefu_message` VALUES ('180', 'f507fb3b340a450d9e6a8e8c7d8d9643', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '结束语设置成功', '0', '2020-02-17 18:34:00', null);
INSERT INTO `god_kefu_message` VALUES ('181', '9bb9f2f6bc4d41838bb7cd2ba11a7f1c', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '1', '0', '我想和你聊天', '1', '2020-02-17 18:34:17', '2020-02-17 18:34:29');
INSERT INTO `god_kefu_message` VALUES ('182', 'e3deccadf9a74573a73154b11eccbae0', '1', '1', '7ab1cd38-17d0-47ae-a9b2-9d4d61a44a45', '0', '0', '结束语设置成功', '0', '2020-02-17 18:51:21', null);
INSERT INTO `god_kefu_message` VALUES ('183', '815eb839152143e6b51daf183b6d37a1', '1', '1', '321f31da-2b0c-4e99-81e1-4a92f7beaf51', '0', '0', '结束语设置成功', '0', '2020-02-17 21:45:53', null);
INSERT INTO `god_kefu_message` VALUES ('184', '15352e5f1bb54b899020ae6066db981c', '1', '1', '9ec65a7d-b5d7-413e-8b19-990de321fb73', '0', '0', '结束语设置成功', '0', '2020-02-18 10:36:43', null);
INSERT INTO `god_kefu_message` VALUES ('185', '4e968604c3c74a6b8ad2ac6ac0601dd7', '1', '1', '9ec65a7d-b5d7-413e-8b19-990de321fb73', '0', '0', '结束语设置成功', '0', '2020-02-18 10:36:52', null);
INSERT INTO `god_kefu_message` VALUES ('186', 'ea3e757b58a048ccbd836a2c6bc67ca5', '1', '1', '9ec65a7d-b5d7-413e-8b19-990de321fb73', '1', '0', '你好啊', '1', '2020-02-18 10:37:01', '2020-02-18 10:37:03');
INSERT INTO `god_kefu_message` VALUES ('187', '3584eb0b05064def9284eba48fcaecae', '1', '1', '9ec65a7d-b5d7-413e-8b19-990de321fb73', '2', '0', '这是坐席回复的消息', '0', '2020-02-18 10:37:51', null);
INSERT INTO `god_kefu_message` VALUES ('188', '0492debe9ae049fa8d09bb1ee91b0bba', '1', '1', '9ec65a7d-b5d7-413e-8b19-990de321fb73', '2', '0', '这是坐席回复的消息', '0', '2020-02-18 10:48:22', null);
INSERT INTO `god_kefu_message` VALUES ('189', 'fcd53a8e96f94d8c8e2b14dd8055123c', '1', '1', '9ec65a7d-b5d7-413e-8b19-990de321fb73', '2', '0', '这是坐席回复的消息', '0', '2020-02-18 10:50:26', null);
INSERT INTO `god_kefu_message` VALUES ('190', '28aff49556b544529e6fb538de8ae2d6', '1', '1', '9ec65a7d-b5d7-413e-8b19-990de321fb73', '2', '0', '这是坐席回复的消息', '0', '2020-02-18 10:50:27', null);
INSERT INTO `god_kefu_message` VALUES ('191', '91d511470b67424fb2eae5bce130cd42', '1', '1', '9ec65a7d-b5d7-413e-8b19-990de321fb73', '2', '0', '这是坐席回复的消息', '0', '2020-02-18 10:50:29', null);
INSERT INTO `god_kefu_message` VALUES ('192', 'c2afc14034f8447ca9224d13aa51bbbe', '1', '1', '9ec65a7d-b5d7-413e-8b19-990de321fb73', '2', '0', '这是坐席回复的消息', '0', '2020-02-18 10:50:29', null);
INSERT INTO `god_kefu_message` VALUES ('193', '268699ff656b46c6ab5f7d7fa7b168fa', '1', '1', '9ec65a7d-b5d7-413e-8b19-990de321fb73', '2', '0', '这是坐席回复的消息', '0', '2020-02-18 10:50:35', null);
INSERT INTO `god_kefu_message` VALUES ('194', '7b674224739946d69004559b0b37421c', '1', '1', '9ec65a7d-b5d7-413e-8b19-990de321fb73', '2', '0', '这是坐席回复的消息', '0', '2020-02-18 10:50:37', null);
INSERT INTO `god_kefu_message` VALUES ('195', '3016b626b7ca4ff2bd842f6d41ea9d34', '1', '1', '9ec65a7d-b5d7-413e-8b19-990de321fb73', '0', '0', '结束语设置成功', '0', '2020-02-18 10:50:42', null);
INSERT INTO `god_kefu_message` VALUES ('196', '6dafb492fd094695ab4ec9049d1551f3', '1', '1', '9ec65a7d-b5d7-413e-8b19-990de321fb73', '0', '0', '结束语设置成功', '0', '2020-02-18 12:11:15', null);
INSERT INTO `god_kefu_message` VALUES ('197', 'f7a5e109f83d45769812673af62f48f2', '1', '1', '9ec65a7d-b5d7-413e-8b19-990de321fb73', '1', '0', '111', '1', '2020-02-18 12:11:19', '2020-02-18 12:11:27');
INSERT INTO `god_kefu_message` VALUES ('198', '251e7c123c244afab64be1e34a6fc7d7', '1', '1', '9ec65a7d-b5d7-413e-8b19-990de321fb73', '2', '0', '222', '0', '2020-02-18 12:11:32', null);
INSERT INTO `god_kefu_message` VALUES ('199', '65bdb7a746494d06989eaef1d5b285cc', '1', '1', '9ec65a7d-b5d7-413e-8b19-990de321fb73', '2', '0', '2225864498', '0', '2020-02-18 12:11:41', null);
INSERT INTO `god_kefu_message` VALUES ('200', 'fb017a9bb99a4d6b995f52e07c6f204f', '1', '1', '9ec65a7d-b5d7-413e-8b19-990de321fb73', '2', '0', '5612561', '0', '2020-02-18 12:12:08', null);
INSERT INTO `god_kefu_message` VALUES ('201', '371cf8fbb0974ddebcaa506ccb4ba020', '1', '1', '9ec65a7d-b5d7-413e-8b19-990de321fb73', '2', '0', '打完吊袜带哇多', '0', '2020-02-18 12:15:24', null);
INSERT INTO `god_kefu_message` VALUES ('202', '76d66995f5c74c35af011fdeadbe9c71', '1', '1', '9ec65a7d-b5d7-413e-8b19-990de321fb73', '2', '0', '645959459', '0', '2020-02-18 12:17:20', null);
INSERT INTO `god_kefu_message` VALUES ('203', '1b5b1507d2934e99901426c8359563a0', '1', '1', '8b93f3e4-1552-4f2d-a5eb-a99fc34eb48f', '0', '0', '结束语设置成功', '0', '2020-02-18 18:25:45', null);
INSERT INTO `god_kefu_message` VALUES ('204', 'e8baa1e78b624dcdaed9a48e91b215e8', '1', '1', '0905e08e-68bb-4114-bec9-2356ae60bb1b', '0', '0', '结束语设置成功', '0', '2020-02-19 18:10:34', null);
INSERT INTO `god_kefu_message` VALUES ('205', 'b6bbd1d47b1b4bbea78c9b9076680506', '1', '1', '0905e08e-68bb-4114-bec9-2356ae60bb1b', '0', '0', '结束语设置成功', '0', '2020-02-19 18:10:37', null);
INSERT INTO `god_kefu_message` VALUES ('206', 'a9099cac725c45429eec501cbf5d51fd', '1', '1', '4b22ce86-f16f-415d-8fc1-258b82f81fad', '0', '0', '结束语设置成功', '0', '2020-02-20 03:09:51', null);
INSERT INTO `god_kefu_message` VALUES ('207', '05679aa1ff3b48c8bfb499b4a886e41d', '1', '1', '1y5d471e8c3e4d46528d35049aa3241930', '0', '0', '结束语设置成功', '0', '2020-02-20 10:32:47', null);
INSERT INTO `god_kefu_message` VALUES ('208', 'a8725f820c454dbca13e4389bb1ebfbc', '1', '1', '1y2ee7faae4eb34200a3b34b5a3435035a', '0', '0', '结束语设置成功', '0', '2020-02-20 10:33:05', null);
INSERT INTO `god_kefu_message` VALUES ('209', '634d6b3234bb405290a9411c8b8af3f5', '1', '1', '1y94aca8e8c49944a89d4ce841cde4c47c', '0', '0', '结束语设置成功', '0', '2020-02-20 10:35:02', null);
INSERT INTO `god_kefu_message` VALUES ('210', '19671d8c40764bdf8f7a575b8cb262b8', '1', '1', '1y81e6560f0f8349b093fd7e2eb8f51a01', '0', '0', '结束语设置成功', '0', '2020-02-20 10:35:14', null);
INSERT INTO `god_kefu_message` VALUES ('211', '26ab8eeb06c24d959268649a3d322b0f', '1', '1', '1y270f061188974848aded8a451f0f6149', '0', '0', '结束语设置成功', '0', '2020-02-20 10:35:25', null);
INSERT INTO `god_kefu_message` VALUES ('212', '7ba7367d96d248fbb8727602af8450a6', '1', '1', '1y6f86987facaf4175821a1ae84f9592dd', '0', '0', '结束语设置成功', '0', '2020-02-20 10:35:49', null);
INSERT INTO `god_kefu_message` VALUES ('213', 'fa888b836c8f4ad88bdf7480d5d6913a', '1', '1', '1y8dd7618c20b141fb8c213c13e8a37c65', '0', '0', '结束语设置成功', '0', '2020-02-20 10:38:22', null);
INSERT INTO `god_kefu_message` VALUES ('214', 'fef34b3e4e524460a815ece4d8803457', '1', '1', '1yf921eef2d7da4a86a0df5e8872dfbca8', '0', '0', '结束语设置成功', '0', '2020-02-20 10:38:25', null);
INSERT INTO `god_kefu_message` VALUES ('215', '1633ce98306a41bb80da607a7c1b7264', '1', '1', '1y7b62abe3fa784d7f826745829147871f', '0', '0', '结束语设置成功', '0', '2020-02-20 10:38:28', null);
INSERT INTO `god_kefu_message` VALUES ('216', 'b76bdbb6dbde44c892e3b66ca7f126fc', '1', '1', '1yc1e0ced895894786a2861c6a389b7c87', '0', '0', '结束语设置成功', '0', '2020-02-20 10:38:49', null);
INSERT INTO `god_kefu_message` VALUES ('217', 'c39873588b584a91b8c8f0787a77a25f', '1', '1', '1yb1c5db805d904dbbae55cec751047500', '0', '0', '结束语设置成功', '0', '2020-02-20 10:39:53', null);
INSERT INTO `god_kefu_message` VALUES ('218', '6e9b841a1c1c4b8a9c1fc34fe158ff46', '1', '1', '1y8536507bfe854accba346f7f8a1686d5', '0', '0', '结束语设置成功', '0', '2020-02-20 10:39:56', null);
INSERT INTO `god_kefu_message` VALUES ('219', '6a99da848967437eac29114201dcace7', '1', '1', '1yb222503eb3b840cd9dfaa7601545135d', '0', '0', '结束语设置成功', '0', '2020-02-20 10:40:39', null);
INSERT INTO `god_kefu_message` VALUES ('220', '9241cc503fe14961bfb2f82ecff514fe', '1', '1', '1y5e53ebf6668041c299493a2a349f5265', '0', '0', '结束语设置成功', '0', '2020-02-20 10:40:41', null);
INSERT INTO `god_kefu_message` VALUES ('221', 'c2ca7f680a94428aa5b629427b7ba959', '1', '1', '1y0210be242c694cf098bc08606b0376a2', '0', '0', '结束语设置成功', '0', '2020-02-20 10:40:43', null);
INSERT INTO `god_kefu_message` VALUES ('222', '831d2a25f0c4493f85d393df42324971', '1', '1', '1yd7e778e3d4564ee3bebda813630fee23', '0', '0', '结束语设置成功', '0', '2020-02-20 10:43:32', null);
INSERT INTO `god_kefu_message` VALUES ('223', '18cb1cf4dbba42acb88d6cb28e6020d6', '1', '1', '1y3740c662019b495b88357c1d6b64c4a4', '0', '0', '结束语设置成功', '0', '2020-02-20 10:43:34', null);
INSERT INTO `god_kefu_message` VALUES ('224', '7af81e03c76a48ba865f410d20640077', '1', '1', '1y5cf3aa495b974db98bb034279549c7c4', '0', '0', '结束语设置成功', '0', '2020-02-20 10:44:10', null);
INSERT INTO `god_kefu_message` VALUES ('225', '2dabab40cb6c4f1d85c96a322e4e580d', '1', '1', '1y5d03d4cf147948a4b5bf9d10758668df', '0', '0', '结束语设置成功', '0', '2020-02-20 10:44:12', null);
INSERT INTO `god_kefu_message` VALUES ('226', '9a917a73ea0646ec9e91ad7e911310dc', '1', '1', '1y930f77024ed347c498dccb076c30d628', '0', '0', '结束语设置成功', '0', '2020-02-20 10:44:19', null);
INSERT INTO `god_kefu_message` VALUES ('227', 'b0090d6b40c34f8fb109b774c4b3d1e5', '1', '1', '1y99815243cd554f57b98c88167e73fb98', '0', '0', '结束语设置成功', '0', '2020-02-20 10:45:14', null);
INSERT INTO `god_kefu_message` VALUES ('228', '417ed0ab4f734939906db20f3c077c25', '1', '1', '1yd3a02b7490cb495ca1ba6e67fe67badb', '0', '0', '结束语设置成功', '0', '2020-02-20 10:45:33', null);
INSERT INTO `god_kefu_message` VALUES ('229', '0c34008b93404cd7baaee610a721d340', '1', '1', '1y857b76396533476691e8b449ffead5a7', '0', '0', '结束语设置成功', '0', '2020-02-20 10:45:47', null);
INSERT INTO `god_kefu_message` VALUES ('230', 'd375459b21d34a3389ae15394e480542', '1', '1', '1y5552aa0d40b84250bf87847ff9aace00', '0', '0', '结束语设置成功', '0', '2020-02-20 10:46:01', null);
INSERT INTO `god_kefu_message` VALUES ('231', 'a5995a72e27b4b27bec2b5895559d254', '1', '1', '1yc72244322d9742798ed30ce07b1ef6fd', '0', '0', '结束语设置成功', '0', '2020-02-20 10:46:07', null);
INSERT INTO `god_kefu_message` VALUES ('232', '9e3fe6dbc0514d0ba17d95ecdb6fa6a2', '1', '1', '1ya54b8f423311405cbbf97f3322ab0357', '0', '0', '结束语设置成功', '0', '2020-02-20 10:46:21', null);
INSERT INTO `god_kefu_message` VALUES ('233', '7e762ae8e54a470394c5bbe87588a985', '1', '1', '1yfa6f8f1b4f1f4ac99af4dae9109b10fb', '0', '0', '结束语设置成功', '0', '2020-02-20 10:46:27', null);
INSERT INTO `god_kefu_message` VALUES ('234', 'bbd54a866bfb496bb1c30be9371f9149', '1', '1', '1ybfc372ceeb2d425e8768c4de48c28634', '0', '0', '结束语设置成功', '0', '2020-02-20 10:47:12', null);
INSERT INTO `god_kefu_message` VALUES ('235', '86a62389194f40c7a620087c41edbcfd', '1', '1', '1y6e8f7a17fdf047d9a92ca03d9943d450', '0', '0', '结束语设置成功', '0', '2020-02-20 10:47:14', null);
INSERT INTO `god_kefu_message` VALUES ('236', '1e4c442edfcb42c08dd2ed1293d866f6', '1', '1', '1y48ffb163bd4d4a89b355f9b172f7314a', '0', '0', '结束语设置成功', '0', '2020-02-20 10:55:18', null);
INSERT INTO `god_kefu_message` VALUES ('237', 'fb23201de5f6440996a46ed5b9ef0372', '1', '1', '1y2393e69589d64ffabdba10cb2c50d19c', '0', '0', '结束语设置成功', '0', '2020-02-20 11:03:08', null);
INSERT INTO `god_kefu_message` VALUES ('238', 'b89a673fce134b9c9b6a036b3735bd05', '1', '1', '1y2393e69589d64ffabdba10cb2c50d19c', '2', '0', '111111111', '0', '2020-02-20 11:16:05', null);
INSERT INTO `god_kefu_message` VALUES ('239', '09f881dfb6454f5aa3a060fb4feda7eb', '1', '1', '1y8a93dc8953e643cba848953dccee066b', '0', '0', '结束语设置成功', '0', '2020-02-20 11:25:55', null);
INSERT INTO `god_kefu_message` VALUES ('240', 'c7d0c5867fea425fa22c349f99760c9f', '1', '1', '1y2e8134870fd4484193db920bc322016d', '0', '0', '结束语设置成功', '0', '2020-02-20 11:26:21', null);
INSERT INTO `god_kefu_message` VALUES ('241', '9307fbc6f06c4680a67264d642e74e75', '1', '1', '1y31fd6ea93c384874a326c0ee6f9ef283', '0', '0', '结束语设置成功', '0', '2020-02-20 11:27:58', null);
INSERT INTO `god_kefu_message` VALUES ('242', '6b9ec91eb5824a6faf4eb14237dd6483', '1', '1', '1yea336a00dc6641628fb951faaf166fa5', '0', '0', '结束语设置成功', '0', '2020-02-20 11:28:09', null);
INSERT INTO `god_kefu_message` VALUES ('243', '22c76dac74954ab28f0ea15f0593df4b', '1', '1', '1ye22ab39fdf684990be569c6c32fc0a2c', '0', '0', '结束语设置成功', '0', '2020-02-20 11:28:44', null);
INSERT INTO `god_kefu_message` VALUES ('244', 'f0e0562b24e443d7b9ce5d1ff4afed6e', '1', '1', '1y708fed8b0c274100ac6aa4132ef68482', '0', '0', '结束语设置成功', '0', '2020-02-20 11:30:27', null);
INSERT INTO `god_kefu_message` VALUES ('245', '9d2eff96b6eb4e3bb9f5ab4ccaec62d7', '1', '1', '1yb6f7962f075f4bf49e11c589e515ac12', '0', '0', '结束语设置成功', '0', '2020-02-20 11:32:13', null);
INSERT INTO `god_kefu_message` VALUES ('246', 'cb23afada810465f8b54c1724cbe858f', '1', '1', '1yd502178988a04290bbdbced86af55c75', '0', '0', '结束语设置成功', '0', '2020-02-20 11:33:29', null);
INSERT INTO `god_kefu_message` VALUES ('247', 'c571320265da416a9e6aea75d84779b2', '1', '1', '1y5dca2d97d9904c9f8dcc3f744a667434', '0', '0', '结束语设置成功', '0', '2020-02-20 11:37:04', null);
INSERT INTO `god_kefu_message` VALUES ('248', '8c9a3ae863af43dd9c52a0ff9f4fff6f', '1', '1', '1y8a2d3c612e2840949ee2b2141de5d27c', '0', '0', '结束语设置成功', '0', '2020-02-20 11:37:50', null);
INSERT INTO `god_kefu_message` VALUES ('249', 'bf2ee8302b4a4eea863ea3baa10f920b', '1', '1', '1y4c8c81690ebe4534a4bb1a13a09dc1ed', '0', '0', '结束语设置成功', '0', '2020-02-20 11:38:45', null);
INSERT INTO `god_kefu_message` VALUES ('250', '3d745a3da3e149a7ada157f7cd7fbe8a', '1', '1', '1ye08d85a9a80d485db86e8cffd02514f0', '0', '0', '结束语设置成功', '0', '2020-02-20 11:39:03', null);
INSERT INTO `god_kefu_message` VALUES ('251', '7e75e63227d14a658a29069925fe0086', '1', '1', '1y4c1d725fcbcc400b8e7f91fb828084c2', '0', '0', '结束语设置成功', '0', '2020-02-20 11:39:54', null);
INSERT INTO `god_kefu_message` VALUES ('252', '15002795d8bd436ca24c27cafd719fce', '1', '1', '1y9fb61e25af034444972e95fe535683fd', '0', '0', '结束语设置成功', '0', '2020-02-20 11:39:56', null);
INSERT INTO `god_kefu_message` VALUES ('253', 'a6bc1bda3f8141aba939c9fdd17d8c38', '1', '1', '1y5ac78c478ecb4ab0b4623574cccd7b26', '0', '0', '结束语设置成功', '0', '2020-02-20 11:41:30', null);
INSERT INTO `god_kefu_message` VALUES ('254', '3d0782e137024308ad55f9c88b087c36', '1', '1', '1yd7877dc8a8a941a7a679aa1f8518744b', '0', '0', '结束语设置成功', '0', '2020-02-20 11:41:39', null);
INSERT INTO `god_kefu_message` VALUES ('255', 'a697fb00f0b446f3a56e08e2c782c6b4', '1', '1', '1yd64571528f6c4142a69cde321d68e6ba', '0', '0', '结束语设置成功', '0', '2020-02-20 11:41:43', null);
INSERT INTO `god_kefu_message` VALUES ('256', '3b8d47a92a27482e8aa9502ccc2159f0', '1', '1', '1ycf01c8e5984541f6a10ad8348768d20a', '0', '0', '结束语设置成功', '0', '2020-02-20 11:42:59', null);
INSERT INTO `god_kefu_message` VALUES ('257', '33fd0d93b14c4285a294617741356846', '1', '1', '1y3b3cd4ccaa454fbcb7fd5c88a7618e4c', '0', '0', '结束语设置成功', '0', '2020-02-20 11:44:30', null);
INSERT INTO `god_kefu_message` VALUES ('258', 'ec121da06b41408fa678b3559fd528f6', '1', '1', '1yb321b396797f4e959dd8e5c488bf93b9', '0', '0', '结束语设置成功', '0', '2020-02-20 11:48:44', null);
INSERT INTO `god_kefu_message` VALUES ('259', '78d5dcea8f8c4f0f8cc30fb24fa8ca69', '1', '1', '1ye852b3fb681748978cc5500a76bebefd', '0', '0', '结束语设置成功', '0', '2020-02-20 11:49:14', null);
INSERT INTO `god_kefu_message` VALUES ('260', 'a3a4e8fa0abf4196af4ed560afac82d5', '1', '1', '1yd913d979df5649d7be4145b3b1209536', '0', '0', '结束语设置成功', '0', '2020-02-20 11:49:32', null);
INSERT INTO `god_kefu_message` VALUES ('261', 'b4bd08e0e05f492bbbc7f4ca8e548db2', '1', '1', '1y9ceaa73e6ac54c56ad4bc8740d64c0b6', '0', '0', '结束语设置成功', '0', '2020-02-20 11:50:11', null);
INSERT INTO `god_kefu_message` VALUES ('262', 'c3ad3f60529340a98d8500240ecb640c', '1', '1', '1yb6a4b683653346bf8fe8ba313b9d6772', '0', '0', '结束语设置成功', '0', '2020-02-20 11:50:12', null);
INSERT INTO `god_kefu_message` VALUES ('263', '8ad45632de9249e49ae383529adf1808', '1', '1', '1y6708630a58b24edea9dbe3ba440a5d82', '0', '0', '结束语设置成功', '0', '2020-02-20 11:50:35', null);
INSERT INTO `god_kefu_message` VALUES ('264', 'b9d3bad7eed042908035b5a4f65a5ce5', '1', '1', '1y1397de41ff24453584ac2973649ae5f6', '0', '0', '结束语设置成功', '0', '2020-02-20 11:50:38', null);
INSERT INTO `god_kefu_message` VALUES ('265', '32689a2f493341068122a75a97a367e7', '1', '1', '1y65cb2d26adf246059cd61daa77eafaed', '0', '0', '结束语设置成功', '0', '2020-02-20 11:50:59', null);
INSERT INTO `god_kefu_message` VALUES ('266', 'db9e8d1d30d1428b87c1bf71171cc41f', '1', '1', '1y49c7e17f54ae47eea7a407a5486401f6', '0', '0', '结束语设置成功', '0', '2020-02-20 11:52:10', null);
INSERT INTO `god_kefu_message` VALUES ('267', 'c2f809570ca046c29a129456b1e522d1', '1', '1', '1yf3c49a4d52214c61ad3062c58736f50f', '0', '0', '结束语设置成功', '0', '2020-02-20 11:52:55', null);
INSERT INTO `god_kefu_message` VALUES ('268', '1aed58e16b40420fb260e5af03caf023', '1', '1', '1y623fe0385f2642a7868e0bc211672384', '0', '0', '结束语设置成功', '0', '2020-02-20 11:53:08', null);
INSERT INTO `god_kefu_message` VALUES ('269', '646e5a937b914f41af5ea65548321308', '1', '1', '1y315158f752ca43d281727651423782f8', '0', '0', '结束语设置成功', '0', '2020-02-20 11:53:31', null);
INSERT INTO `god_kefu_message` VALUES ('270', 'eb76e86e7a1d43e1accc8cd34fc24e67', '1', '1', '1yc5036073b2234d6097e0a78f4baae87d', '0', '0', '结束语设置成功', '0', '2020-02-20 11:53:39', null);
INSERT INTO `god_kefu_message` VALUES ('271', '161236d9f5ad49dea2cc611065ca9cf6', '1', '1', '1ya037e63fd34c4641aa536e1bfe2c66c0', '0', '0', '结束语设置成功', '0', '2020-02-20 11:54:15', null);
INSERT INTO `god_kefu_message` VALUES ('272', 'e7d667c5d3d74ba69cc2306634571477', '1', '1', '1y4ceeaf2da3e849328840a6400bfc1d3d', '0', '0', '结束语设置成功', '0', '2020-02-20 11:54:18', null);
INSERT INTO `god_kefu_message` VALUES ('273', 'eda687d0241143e08ff5c40daa4ca5d4', '1', '1', '1ye2d3f76287cc45e58fad6034f22289f7', '0', '0', '结束语设置成功', '0', '2020-02-20 11:55:05', null);
INSERT INTO `god_kefu_message` VALUES ('274', '5f9f8ca0247747dba5a82c23497a266b', '1', '1', '1y433ed1a50be54572aadb435d26f248a0', '0', '0', '结束语设置成功', '0', '2020-02-20 11:55:10', null);
INSERT INTO `god_kefu_message` VALUES ('275', 'f585ab9aca3246529b0d680586c7d421', '1', '1', '1yee822c01d2c24515aa65a37b0525eb4b', '0', '0', '结束语设置成功', '0', '2020-02-20 11:55:57', null);
INSERT INTO `god_kefu_message` VALUES ('276', '0ff8c62699f7494a820b70c05bf5a14c', '1', '1', '1yb506969a56c540c8a5efad2c13545440', '0', '0', '结束语设置成功', '0', '2020-02-20 11:56:24', null);
INSERT INTO `god_kefu_message` VALUES ('277', '3b28de7bb9e54fd3aea9cda8f6a75669', '1', '1', '1ycf8ff8bc6ba8406fa50da44eacfda55a', '0', '0', '结束语设置成功', '0', '2020-02-20 11:56:57', null);
INSERT INTO `god_kefu_message` VALUES ('278', 'fd2daf21a4bd43338aa150b5430a3666', '1', '1', '1yabe5e5fbecc14562bf1df41f3f719575', '0', '0', '结束语设置成功', '0', '2020-02-20 11:57:48', null);
INSERT INTO `god_kefu_message` VALUES ('279', '47f45275c39346f981b4c4605d11a93f', '1', '1', '1yd0228f99fed54e2a8478ef9ecd650485', '0', '0', '结束语设置成功', '0', '2020-02-20 11:58:41', null);
INSERT INTO `god_kefu_message` VALUES ('280', 'c95b71c8d2964f6f89d13550d491da78', '1', '1', '1yc1859d624849459ab5adfa231ea4d2e4', '0', '0', '结束语设置成功', '0', '2020-02-20 12:03:31', null);
INSERT INTO `god_kefu_message` VALUES ('281', '115520a55cd24e07ad2a672dc596e603', '1', '1', '1y44be2434ba904ba9a052337e70aaa5b6', '0', '0', '结束语设置成功', '0', '2020-02-20 12:03:33', null);
INSERT INTO `god_kefu_message` VALUES ('282', 'ee4dd16ab59449378888f7dcefbcaaaa', '1', '1', '1yd6a36e61dca5468592787e11d0cad50e', '0', '0', '结束语设置成功', '0', '2020-02-20 12:05:36', null);
INSERT INTO `god_kefu_message` VALUES ('283', 'eff6f7ce351e4dbca41d3640d1700a51', '1', '1', '1y7ae05b0f00f74870aff502749f5161fd', '0', '0', '结束语设置成功', '0', '2020-02-20 12:06:04', null);
INSERT INTO `god_kefu_message` VALUES ('284', 'ca0bfe1fdd0247f2aa8eae74526c919f', '1', '1', '1y6cf5351845694f009622c59a6e5e44a2', '0', '0', '结束语设置成功', '0', '2020-02-20 12:06:15', null);
INSERT INTO `god_kefu_message` VALUES ('285', 'e66a54143ec544ffb5bcd5837a91e280', '1', '1', '1ya101e3f2c5414045ab9f0adc9fcb937c', '0', '0', '结束语设置成功', '0', '2020-02-20 12:06:18', null);
INSERT INTO `god_kefu_message` VALUES ('286', '9dc0b8ebf3794ebeabfbef3c12ac5e5f', '1', '1', '1y11830d541cd7475a807dc83f8182f379', '0', '0', '结束语设置成功', '0', '2020-02-20 12:07:45', null);
INSERT INTO `god_kefu_message` VALUES ('287', '48570e3343aa4948a4ce127d4fbb137f', '1', '1', '1ya07053b613f847a3b47704730351167d', '0', '0', '结束语设置成功', '0', '2020-02-20 12:07:50', null);
INSERT INTO `god_kefu_message` VALUES ('288', '138f4bcdd04f43a39aa9f370a7e99916', '1', '1', '1yf955ee79599144a5b63e5a81760607ee', '0', '0', '结束语设置成功', '0', '2020-02-20 12:07:52', null);
INSERT INTO `god_kefu_message` VALUES ('289', 'ac981716a8034541839337d553c6d62d', '1', '1', '1yc48a89fb5e014bf3b06a59f953826a0f', '0', '0', '结束语设置成功', '0', '2020-02-20 12:08:45', null);
INSERT INTO `god_kefu_message` VALUES ('290', '8654c175256d4cd1bdf1bef138d65fc3', '1', '1', '1y225387b89cbb4e90afdc6bac4dc2de08', '0', '0', '结束语设置成功', '0', '2020-02-20 12:12:05', null);
INSERT INTO `god_kefu_message` VALUES ('291', '2fd08ec5d2d046dbaeeeda84ad4eacb1', '1', '1', '1yb46dc99e5c954df9a544b4f937e79dd2', '0', '0', '结束语设置成功', '0', '2020-02-20 12:14:21', null);
INSERT INTO `god_kefu_message` VALUES ('292', '59edeb1118a64ea08b11b3ade556c288', '1', '1', '1y55c59515e7a44978a4d088a9e3e81ded', '0', '0', '结束语设置成功', '0', '2020-02-20 12:18:25', null);
INSERT INTO `god_kefu_message` VALUES ('293', 'c66b9413ad8c43dc92ee7a77e5b77f34', '1', '1', 'e816a45f-07f5-4033-a49d-ed824c7017c8', '0', '0', '结束语设置成功', '0', '2020-02-20 12:20:22', null);
INSERT INTO `god_kefu_message` VALUES ('294', 'e15a90574aa64114b8d6f54d45e8b42f', '1', '1', 'e816a45f-07f5-4033-a49d-ed824c7017c8', '0', '0', '结束语设置成功', '0', '2020-02-20 12:20:24', null);
INSERT INTO `god_kefu_message` VALUES ('295', '37e7c222c97f46e2b8283b391ee81909', '1', '1', '1y018cdc0953934f108e90b52ea446daaf', '0', '0', '结束语设置成功', '0', '2020-02-20 12:22:22', null);
INSERT INTO `god_kefu_message` VALUES ('296', '5bde0863c9e84394898a5414f9baf5d0', '1', '1', '1y018cdc0953934f108e90b52ea446daaf', '1', '0', '你好啊', '1', '2020-02-20 12:24:21', '2020-02-20 12:24:23');
INSERT INTO `god_kefu_message` VALUES ('297', '637bf74a85614a61ae0409c757a59fc5', '1', '1', '1y018cdc0953934f108e90b52ea446daaf', '2', '0', 'hello', '0', '2020-02-20 12:24:50', null);
INSERT INTO `god_kefu_message` VALUES ('298', 'cb373c866add4c7792022aeca752f80a', '1', '1', '1y8382eba31cc64c918fb7607a8da26c73', '0', '0', '结束语设置成功', '0', '2020-02-20 12:26:25', null);
INSERT INTO `god_kefu_message` VALUES ('299', '6ee08d00e2ce45978b13cc3f007f81e2', '1', '1', '1y5e861d5d6fa44b27a913162e1b6923ed', '0', '0', '结束语设置成功', '0', '2020-02-20 14:41:27', null);
INSERT INTO `god_kefu_message` VALUES ('300', 'aa14de521c9440e3a99e2e37816888c6', '1', '1', '1y206015c4679045bdb7700c64a8c9b0f3', '0', '0', '结束语设置成功', '0', '2020-02-20 14:42:49', null);
INSERT INTO `god_kefu_message` VALUES ('301', '9aa1a9d4493d4bfbabf02c6a8e44d141', '1', '1', '1y09e801aa963947a18e8dcfbe6781b991', '0', '0', '结束语设置成功', '0', '2020-02-20 14:44:06', null);
INSERT INTO `god_kefu_message` VALUES ('302', 'd9d9a0b5cb324e70af41f56060cccba5', '1', '1', '1y50a16f7e300c48f99a227acb0cbb68ca', '0', '0', '结束语设置成功', '0', '2020-02-20 14:44:40', null);
INSERT INTO `god_kefu_message` VALUES ('303', 'e4a5ea186fd047ebb8cee80b8b8cc3cb', '1', '1', '1y648c5f7f0b504e99b1a9b13f7e96824d', '0', '0', '结束语设置成功', '0', '2020-02-20 14:45:11', null);
INSERT INTO `god_kefu_message` VALUES ('304', '4c0a418043024b2284f0152f2dc20608', '1', '1', '1yaad7847f81464363885e121621f0337a', '0', '0', '结束语设置成功', '0', '2020-02-20 14:45:15', null);
INSERT INTO `god_kefu_message` VALUES ('305', '2a65967f13af4fea948455396d55f320', '1', '1', '1y56cb2b0067e943678741ea84cfd584df', '0', '0', '结束语设置成功', '0', '2020-02-20 14:45:21', null);
INSERT INTO `god_kefu_message` VALUES ('306', '4b5bbf1d9277444ea45ed49d040162e0', '1', '1', '1y9a7e40ddbe794615b5e4608e61f17755', '0', '0', '结束语设置成功', '0', '2020-02-20 14:45:25', null);
INSERT INTO `god_kefu_message` VALUES ('307', 'f5972e79e2994803b2896318cd67bc14', '1', '1', '1y4b70f81fa99f4829a3a6be8bdb538765', '0', '0', '结束语设置成功', '0', '2020-02-20 14:46:11', null);
INSERT INTO `god_kefu_message` VALUES ('308', '3e6f587b94c041199389284741455638', '1', '1', '1yf8e45f5bf6cd4f55ba82008a62fe9555', '0', '0', '结束语设置成功', '0', '2020-02-20 14:46:32', null);
INSERT INTO `god_kefu_message` VALUES ('309', '2fc4eb4aa785423a86c3de006b71df50', '1', '1', '1y6a880c46eb93429db2965b93fc594e3e', '0', '0', '结束语设置成功', '0', '2020-02-20 14:46:57', null);
INSERT INTO `god_kefu_message` VALUES ('310', 'd73509a87d104c4e8354e14296d06b69', '1', '1', '1y677a0f8086394a42a36fcf01024b5e29', '0', '0', '结束语设置成功', '0', '2020-02-20 14:47:02', null);
INSERT INTO `god_kefu_message` VALUES ('311', '65659deaf1774c7e878a68656043bac3', '1', '1', '1y601aa055d0f4486e8c6de21ab2220128', '0', '0', '结束语设置成功', '0', '2020-02-20 14:47:38', null);
INSERT INTO `god_kefu_message` VALUES ('312', 'f9301416d084438186b49ddb226c2c6f', '1', '1', '1y6ee5c5e440fa4ee899b6db946d9be61e', '0', '0', '结束语设置成功', '0', '2020-02-20 14:48:41', null);
INSERT INTO `god_kefu_message` VALUES ('313', '635518a1dbbf4aa7a4e6008866cfcbc3', '1', '1', '1y3e3f6dbb52fb4d6eb19f169b49d3b5d1', '0', '0', '结束语设置成功', '0', '2020-02-20 14:48:54', null);
INSERT INTO `god_kefu_message` VALUES ('314', '1c8af2ec6d824e19901c01206d77a3e4', '1', '1', '1y783a0c7df19e430d81b09d50b6c8d5ed', '0', '0', '结束语设置成功', '0', '2020-02-20 14:52:27', null);
INSERT INTO `god_kefu_message` VALUES ('315', 'a39616656ff6416cad04b873f9afabf3', '1', '1', '1y16049710cbef40ef9f615c565999fc47', '0', '0', '结束语设置成功', '0', '2020-02-20 14:54:49', null);
INSERT INTO `god_kefu_message` VALUES ('316', '3266bbec0d85449b91fd07b17dc5ad70', '1', '1', '1y16049710cbef40ef9f615c565999fc47', '1', '0', '123456', '1', '2020-02-20 14:55:13', '2020-02-20 15:12:07');
INSERT INTO `god_kefu_message` VALUES ('317', '0e918da29e2846368be14f09b994c222', '1', '1', '1y64014e9d33014e6dac1af93da7f0d23d', '0', '0', '结束语设置成功', '0', '2020-02-20 14:55:17', null);
INSERT INTO `god_kefu_message` VALUES ('318', 'f0e7b2c849fb4e779eb8de8398b5529a', '1', '1', '1y64014e9d33014e6dac1af93da7f0d23d', '1', '0', '111', '1', '2020-02-20 14:56:12', '2020-02-20 14:56:13');
INSERT INTO `god_kefu_message` VALUES ('319', 'ad786e0b545c4a0ba25ed71733b4a15e', '1', '1', '1y64014e9d33014e6dac1af93da7f0d23d', '2', '0', '222', '0', '2020-02-20 14:56:19', null);
INSERT INTO `god_kefu_message` VALUES ('320', '1799f86201b24966961e9017ad1c02fc', '1', '1', '1y2a33386dc26b4bd989c8278fc862b161', '0', '0', '结束语设置成功', '0', '2020-02-20 14:56:26', null);
INSERT INTO `god_kefu_message` VALUES ('321', '2305f04b845a4b3da0ea23a4c6bedf57', '1', '1', '1y7b8107b53aab4971999b101a98fc938b', '0', '0', '结束语设置成功', '0', '2020-02-20 14:57:08', null);
INSERT INTO `god_kefu_message` VALUES ('322', 'b342cb82182941ffb19d1ed839c965cf', '1', '1', '1y5374b81c31b04e6fb13983f19ca8e86a', '0', '0', '结束语设置成功', '0', '2020-02-20 14:57:13', null);
INSERT INTO `god_kefu_message` VALUES ('323', '269bb8ea742c4ebfbc09f79821f4edd2', '1', '1', '1ye013334957f34687bbff686f27d2d115', '0', '0', '结束语设置成功', '0', '2020-02-20 15:05:17', null);
INSERT INTO `god_kefu_message` VALUES ('324', 'ab794f042e94439ab2f06a9db3c04dbe', '1', '1', '1y6524eec5a3644eb1b4ec97de66524327', '0', '0', '结束语设置成功', '0', '2020-02-20 15:05:52', null);
INSERT INTO `god_kefu_message` VALUES ('325', 'd40a9f54ddcf48c697bcd6df8ba68286', '1', '1', '1y6a01bd70abf04d589f950a1793c65d92', '0', '0', '结束语设置成功', '0', '2020-02-20 15:06:19', null);
INSERT INTO `god_kefu_message` VALUES ('326', '1b137b6be0bf47d89e9fe0449f32be90', '1', '1', '1y027fbf9b97c04f09a2e17ac5f6f901e9', '0', '0', '结束语设置成功', '0', '2020-02-20 15:06:49', null);
INSERT INTO `god_kefu_message` VALUES ('327', '637c69c4cd8b4cb9a52be7b823406916', '1', '1', '1y0fac61224dae41cdbe9d28bbf9069b1c', '0', '0', '结束语设置成功', '0', '2020-02-20 15:08:25', null);
INSERT INTO `god_kefu_message` VALUES ('328', 'bfb9c51352064daaa453084bdbbb1655', '1', '1', '1y90a9e68ae1f042e2abdbce7bc82ae5d6', '0', '0', '结束语设置成功', '0', '2020-02-20 15:17:15', null);
INSERT INTO `god_kefu_message` VALUES ('329', 'ec8183f8ec9a4582ab2bc59415386b68', '1', '1', '1yc78ef492e4974bb9ac6835b51bfe498e', '0', '0', '结束语设置成功', '0', '2020-02-20 15:17:20', null);
INSERT INTO `god_kefu_message` VALUES ('330', '410884d53dec4d70bab880dd500f648a', '1', '1', '1y38613a8702754ffb93b4517f81f13fa2', '0', '0', '结束语设置成功', '0', '2020-02-20 15:18:13', null);
INSERT INTO `god_kefu_message` VALUES ('331', '6c3a0dd95e1943ef82bb04fae777e874', '1', '1', '1y38613a8702754ffb93b4517f81f13fa2', '1', '0', '123456', '1', '2020-02-20 15:23:23', '2020-02-20 15:23:30');
INSERT INTO `god_kefu_message` VALUES ('332', 'e3240be3292b43709b04076fa1262637', '1', '1', '1y3be4a0301aab45f58be32c50e0453dce', '0', '0', '结束语设置成功', '0', '2020-02-20 15:23:45', null);
INSERT INTO `god_kefu_message` VALUES ('333', '08377434f828472ea25c2e9e98b4bb15', '1', '1', '1y725c31da5e2e4ba88896b0bf92f8895a', '0', '0', '结束语设置成功', '0', '2020-02-20 15:24:40', null);
INSERT INTO `god_kefu_message` VALUES ('334', '932203fa7d5644268162e2c2a074e40d', '1', '1', '1yc867afec0bc34357a15b417dd7f64f03', '0', '0', '结束语设置成功', '0', '2020-02-20 15:24:54', null);
INSERT INTO `god_kefu_message` VALUES ('335', '69dbb17fb1de4929a6391b1b37ef56a1', '1', '1', '1ycbde98f61cb44bfc88a7e1b74972cc1a', '0', '0', '结束语设置成功', '0', '2020-02-20 15:28:30', null);
INSERT INTO `god_kefu_message` VALUES ('336', '7a4ee20d0a2e47d48a2c71cf5d9472cb', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 15:44:23', null);
INSERT INTO `god_kefu_message` VALUES ('337', '92ad8de55f7d4325b4642d70ba54a5e6', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 15:44:34', null);
INSERT INTO `god_kefu_message` VALUES ('338', 'acc6e0d990fe44c785a162e60032c136', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 15:44:37', null);
INSERT INTO `god_kefu_message` VALUES ('339', 'adde40081cf8467585fbfdc2ac561364', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '1', '0', '7788', '1', '2020-02-20 15:46:23', '2020-02-20 15:46:25');
INSERT INTO `god_kefu_message` VALUES ('340', '4b52f73991364d029d1d5579306c1474', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '2', '0', '8899', '1', '2020-02-20 15:46:39', '2020-02-20 15:46:44');
INSERT INTO `god_kefu_message` VALUES ('341', '0d39f6de2cae4d329b053fefbf739c9d', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 15:46:44', null);
INSERT INTO `god_kefu_message` VALUES ('342', 'ce4a79045ff04dbe80e3ed1e7114aad2', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '2', '0', '789151265', '1', '2020-02-20 15:50:54', '2020-02-20 15:58:07');
INSERT INTO `god_kefu_message` VALUES ('343', 'ddad4bd02b984ccfbe93599d8ffbacb6', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 15:58:08', null);
INSERT INTO `god_kefu_message` VALUES ('344', '9baad13763844390aecfe47707f540be', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 15:58:41', null);
INSERT INTO `god_kefu_message` VALUES ('345', '5b4de74232f04987a7728d9a95134b4f', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:00:34', null);
INSERT INTO `god_kefu_message` VALUES ('346', '3f6c62d44a01479f8b67e641ab564066', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:06:24', null);
INSERT INTO `god_kefu_message` VALUES ('347', '5b781e6cf0104e05b3cb1d1f70e0a28f', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:08:19', null);
INSERT INTO `god_kefu_message` VALUES ('348', 'bd502411bb5d4f91baefe0ee29c07f5f', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:09:49', null);
INSERT INTO `god_kefu_message` VALUES ('349', '85f9f9f305c7437293ec15f2a585f449', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:11:01', null);
INSERT INTO `god_kefu_message` VALUES ('350', 'f974ce921b884afc8b519f0706f56e0b', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:11:54', null);
INSERT INTO `god_kefu_message` VALUES ('351', 'b591adc193064b8ba0b19bf3451fbac7', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:13:08', null);
INSERT INTO `god_kefu_message` VALUES ('352', '2c660dc851cc4ee7aaddd554fcb60db3', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:13:11', null);
INSERT INTO `god_kefu_message` VALUES ('353', 'e575e7333e7f4bc2995aa25c848317e2', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '1', '0', '测试更新', '1', '2020-02-20 16:13:23', '2020-02-20 16:16:13');
INSERT INTO `god_kefu_message` VALUES ('354', 'd44a704ede514f1287d457c18b971d44', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:13:48', null);
INSERT INTO `god_kefu_message` VALUES ('355', '985d446298244fbeac79e225541e1247', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '1', '0', '测试更新消息', '1', '2020-02-20 16:14:09', '2020-02-20 16:16:13');
INSERT INTO `god_kefu_message` VALUES ('356', 'bb97c59fc6f349a0b96f07763439d39c', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:14:37', null);
INSERT INTO `god_kefu_message` VALUES ('357', '79743b1cc8884594a60da0714aa464ca', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '1', '0', '还没好？', '1', '2020-02-20 16:15:01', '2020-02-20 16:16:13');
INSERT INTO `god_kefu_message` VALUES ('358', 'c4d889cd382e436babd09877a14614e6', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '1', '0', '可以了哦', '1', '2020-02-20 16:15:08', '2020-02-20 16:16:13');
INSERT INTO `god_kefu_message` VALUES ('359', 'a03c2bafec7e43139de881c854b516d4', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '2', '0', '真的呀', '1', '2020-02-20 16:16:39', '2020-02-20 16:18:55');
INSERT INTO `god_kefu_message` VALUES ('360', '9dd562765de64662bf7eafc26cf8805a', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:18:56', null);
INSERT INTO `god_kefu_message` VALUES ('361', '9d136cd911374919ab62b37acff232f7', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:20:32', null);
INSERT INTO `god_kefu_message` VALUES ('362', 'eeb05faf6dcd4475b94303dd53a1f039', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:21:08', null);
INSERT INTO `god_kefu_message` VALUES ('363', '6ee9496b5792405598daf419d10c90a3', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '2', '0', '当然是真的啦', '1', '2020-02-20 16:21:31', '2020-02-20 16:28:59');
INSERT INTO `god_kefu_message` VALUES ('364', '4cb382833e784fe8854c9486f4813f25', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '1', '0', '完美！', '1', '2020-02-20 16:22:01', '2020-02-20 16:31:34');
INSERT INTO `god_kefu_message` VALUES ('365', '28878abeaeee48d8ad5395c8ca39ef27', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '1', '0', '为啥有两条', '1', '2020-02-20 16:27:53', '2020-02-20 16:31:34');
INSERT INTO `god_kefu_message` VALUES ('366', '6e6862557b50436ab83ba1455911e88a', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:28:59', null);
INSERT INTO `god_kefu_message` VALUES ('367', '9d6614a547254907a4077e049e64e60a', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:29:03', null);
INSERT INTO `god_kefu_message` VALUES ('368', 'f484f303db5742f886a0052107231af7', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '1', '0', '什么情况', '1', '2020-02-20 16:29:23', '2020-02-20 16:31:34');
INSERT INTO `god_kefu_message` VALUES ('369', '4277d434a1c74edeb8ba73be5a367d99', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '1', '0', '为啥', '1', '2020-02-20 16:29:30', '2020-02-20 16:31:34');
INSERT INTO `god_kefu_message` VALUES ('370', '78b6438adf96458195acfe4a344ea1a6', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:29:56', null);
INSERT INTO `god_kefu_message` VALUES ('371', '4ba1cecb01ce47c58e3e5a3cd546d0de', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '1', '0', '7788999', '0', '2020-02-20 16:32:47', null);
INSERT INTO `god_kefu_message` VALUES ('372', 'd17221a4a65a463ca045fbccd34a216a', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:33:52', null);
INSERT INTO `god_kefu_message` VALUES ('373', 'f5b7027ee1554573864de2ab386f859d', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '1', '0', '哈哈哈哈', '0', '2020-02-20 16:33:58', null);
INSERT INTO `god_kefu_message` VALUES ('374', '1e7d9dddd3e24316a4781ae40e1c5ca1', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:36:03', null);
INSERT INTO `god_kefu_message` VALUES ('375', '95c4638c20154e6da6017824bab1b47c', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:36:13', null);
INSERT INTO `god_kefu_message` VALUES ('376', '2f76e7c3af02498d9cbd387601bb6abf', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '1', '0', '4889489', '0', '2020-02-20 16:43:00', null);
INSERT INTO `god_kefu_message` VALUES ('377', '9f19d68c48274879be59f6695c1b9cc3', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:43:42', null);
INSERT INTO `god_kefu_message` VALUES ('378', '79a9734554024b259a81b3b3fc3c0fed', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:44:33', null);
INSERT INTO `god_kefu_message` VALUES ('379', '801fd55bd88b4379a2eb3c8c51af571d', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:44:41', null);
INSERT INTO `god_kefu_message` VALUES ('380', '411a5cd1903f4364b22c111a3e24de4b', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 16:53:47', null);
INSERT INTO `god_kefu_message` VALUES ('381', '7964e8d4266b4addb6d9c2c3533237eb', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 17:14:27', null);
INSERT INTO `god_kefu_message` VALUES ('382', '6a7d0a5491084d13827891bc8b6e703f', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 17:21:08', null);
INSERT INTO `god_kefu_message` VALUES ('383', '1cd2829585364485b5d7b6840844fc61', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 17:36:18', null);
INSERT INTO `god_kefu_message` VALUES ('384', 'c708372e0b9f4dc1901dcabc5f83029c', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 17:46:34', null);
INSERT INTO `god_kefu_message` VALUES ('385', '003b5c038efd45ccb160dcf7bb867fba', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 17:49:30', null);
INSERT INTO `god_kefu_message` VALUES ('386', '8dc42ffdadf049bfa6bbfde816232274', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 17:51:37', null);
INSERT INTO `god_kefu_message` VALUES ('387', '7316e8590f264c4d9d33e38a924cde3a', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 17:52:03', null);
INSERT INTO `god_kefu_message` VALUES ('388', '8310b0c03dbf41fc9dfd1b0d4d6d9322', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 17:52:28', null);
INSERT INTO `god_kefu_message` VALUES ('389', 'b3d0f4b30dd14f74969c9f2b070250c3', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 18:22:23', null);
INSERT INTO `god_kefu_message` VALUES ('390', '44f7ad36920d48178ad41507cc34b5b6', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '2', '0', '1234', '1', '2020-02-20 18:33:02', '2020-02-20 18:35:12');
INSERT INTO `god_kefu_message` VALUES ('391', 'a017fcc4a0194ecb8501f0a44ac9d2d9', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '1', '0', '859489', '1', '2020-02-20 18:33:05', '2020-02-20 18:33:16');
INSERT INTO `god_kefu_message` VALUES ('392', 'c047877ee09b477db2154b7cad1ff9e7', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '2', '0', '千万23123', '1', '2020-02-20 18:33:16', '2020-02-20 18:35:12');
INSERT INTO `god_kefu_message` VALUES ('393', '14d328087c9c4a4781af77972687a6bc', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '1', '0', '48498489', '1', '2020-02-20 18:35:04', '2020-02-23 15:15:03');
INSERT INTO `god_kefu_message` VALUES ('394', 'df7cb60b82cf431f8d829df2ef97e5ab', '1', '1', '1y243210be54734c88b80dd4eee8866b36', '0', '0', '结束语设置成功', '0', '2020-02-20 18:35:13', null);
INSERT INTO `god_kefu_message` VALUES ('395', '657997e6c92f49038a1665365dab414f', '1', '1', '1y68a87609730d4f9fa6febe13c671f36b', '0', '0', '结束语设置成功', '0', '2020-02-20 23:47:19', null);
INSERT INTO `god_kefu_message` VALUES ('396', 'c55297d73fe94e8a8576eded527224ce', '1', '1', '1y68a87609730d4f9fa6febe13c671f36b', '0', '0', '结束语设置成功', '0', '2020-02-20 23:47:24', null);
INSERT INTO `god_kefu_message` VALUES ('397', '52f49392722a4f249018425ee3c94309', '1', '1', '1y68a87609730d4f9fa6febe13c671f36b', '0', '0', '结束语设置成功', '0', '2020-02-20 23:47:36', null);
INSERT INTO `god_kefu_message` VALUES ('398', '3b485389d603409495b7f97f147b0960', '1', '1', '1y68a87609730d4f9fa6febe13c671f36b', '0', '0', '结束语设置成功', '0', '2020-02-20 23:48:17', null);
INSERT INTO `god_kefu_message` VALUES ('399', '78314fe3bfab4783acfbf2d64aef7b32', '1', '1', '1y68a87609730d4f9fa6febe13c671f36b', '0', '0', '结束语设置成功', '0', '2020-02-20 23:52:02', null);
INSERT INTO `god_kefu_message` VALUES ('400', '4957423b002743cfa665b436e893d4da', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-20 23:58:45', null);
INSERT INTO `god_kefu_message` VALUES ('401', '27569acc257c4d8e8a51c4cab3746fb2', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:10:53', null);
INSERT INTO `god_kefu_message` VALUES ('402', '17287e70661848dc87ee57af31aa10df', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:13:19', null);
INSERT INTO `god_kefu_message` VALUES ('403', '86ff686109584ea9b502940d0f22fa39', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:13:19', null);
INSERT INTO `god_kefu_message` VALUES ('404', '4fcb0b4ff56e48a1a973abaf7ca8dd3c', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:13:56', null);
INSERT INTO `god_kefu_message` VALUES ('405', 'ccf413a5f332414bb6c0874ebadcef17', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:14:03', null);
INSERT INTO `god_kefu_message` VALUES ('406', '87b72a9464104d04bc8d2965ee57ae0d', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:15:18', null);
INSERT INTO `god_kefu_message` VALUES ('407', '7037e0d8fdf742d2822af8d9a6937dbc', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:17:20', null);
INSERT INTO `god_kefu_message` VALUES ('408', '373ad1f3eef249b588a05a828ac29c0e', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:18:31', null);
INSERT INTO `god_kefu_message` VALUES ('409', 'ff6666aafe2549b6b490b31544ce0dba', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:21:47', null);
INSERT INTO `god_kefu_message` VALUES ('410', 'aeb7f81fcc9b4b22953377c293d51443', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:22:29', null);
INSERT INTO `god_kefu_message` VALUES ('411', '8c15ee329b4d415aa1392ed8ae06e63d', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:22:55', null);
INSERT INTO `god_kefu_message` VALUES ('412', '3a0d4992f36a43808fe56db0facbdccc', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:23:45', null);
INSERT INTO `god_kefu_message` VALUES ('413', '58c5271f8e514e70adf12b64de7272cb', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:24:48', null);
INSERT INTO `god_kefu_message` VALUES ('414', 'f819a45954014e12b84cd482721ee3e9', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:24:49', null);
INSERT INTO `god_kefu_message` VALUES ('415', '06ed89bcaeff43a2a9741076ad998b8a', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:25:45', null);
INSERT INTO `god_kefu_message` VALUES ('416', '4584a0591bb04d97a68aedad7d4d4f21', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:28:09', null);
INSERT INTO `god_kefu_message` VALUES ('417', 'd8a1535e8219496baf59250b6d8f3a95', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:31:19', null);
INSERT INTO `god_kefu_message` VALUES ('418', 'b2c0d106eec249c7a6064a2806b4ddcb', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:32:28', null);
INSERT INTO `god_kefu_message` VALUES ('419', 'dd4f0683ac284b23b888f6140d8ba657', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:33:01', null);
INSERT INTO `god_kefu_message` VALUES ('420', 'b8d0c530d18849fb9d386189d2a65732', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:33:14', null);
INSERT INTO `god_kefu_message` VALUES ('421', 'b44ad60372e34371ad03537432942013', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:33:45', null);
INSERT INTO `god_kefu_message` VALUES ('422', '05a2bb4802e24fc5bc7ba6c1781b0a13', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:33:58', null);
INSERT INTO `god_kefu_message` VALUES ('423', '5d7a92a3f7a24397a3cecd734b4a4451', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:34:09', null);
INSERT INTO `god_kefu_message` VALUES ('424', 'ffd0e16a385a4a4c82cc0f7296067f38', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:34:46', null);
INSERT INTO `god_kefu_message` VALUES ('425', '210f52c9332a4590b7cfdeddb1f99a23', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:35:04', null);
INSERT INTO `god_kefu_message` VALUES ('426', '79d343deb97c4b6e82101c16afba2391', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:36:25', null);
INSERT INTO `god_kefu_message` VALUES ('427', 'ebf2d48f58444d79a8a4e1b72a338b75', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:37:07', null);
INSERT INTO `god_kefu_message` VALUES ('428', '0c7f38ef1a0e41ec821eb817510f9fc2', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:37:26', null);
INSERT INTO `god_kefu_message` VALUES ('429', 'cfb03084e1224be397abc669d8dca5a7', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:39:27', null);
INSERT INTO `god_kefu_message` VALUES ('430', 'f6d9c5c496054dabad4cb4aa9583f92d', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:40:27', null);
INSERT INTO `god_kefu_message` VALUES ('431', 'e1237f7c4f494c2e9c828621ffb1cd4e', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:42:26', null);
INSERT INTO `god_kefu_message` VALUES ('432', '2f91d5aacd8740579ba31fe63eeeb92a', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:43:04', null);
INSERT INTO `god_kefu_message` VALUES ('433', '95a3ed27bbf34619878dda3ec121e6af', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:43:08', null);
INSERT INTO `god_kefu_message` VALUES ('434', '692891116c0a4d49b9af06657c6f0368', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:46:29', null);
INSERT INTO `god_kefu_message` VALUES ('435', 'c0b3aca534f340a5bca11fab79a4c560', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:47:33', null);
INSERT INTO `god_kefu_message` VALUES ('436', '8037402398ae43fc8d2d02fc225ef4ad', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:47:40', null);
INSERT INTO `god_kefu_message` VALUES ('437', 'f71e550a25784834ab032f9ddb5e686e', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:48:38', null);
INSERT INTO `god_kefu_message` VALUES ('438', '4a1590506b4f42788f58e16bf50be4a1', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:48:53', null);
INSERT INTO `god_kefu_message` VALUES ('439', 'f16c43c749bc42a78e8d3eb55aba2992', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:48:53', null);
INSERT INTO `god_kefu_message` VALUES ('440', '43bdc19a236049bba590fd3612baebf8', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:50:06', null);
INSERT INTO `god_kefu_message` VALUES ('441', 'e5a269268a2c4f2f9a4ccb4d041d60a4', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:53:08', null);
INSERT INTO `god_kefu_message` VALUES ('442', '6476d8330a56432aa296013fb919b60c', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:53:13', null);
INSERT INTO `god_kefu_message` VALUES ('443', '2d69bc5b0ce0477284b54a4981829e90', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:57:52', null);
INSERT INTO `god_kefu_message` VALUES ('444', 'b8df4ec2198a49d0b0fd4f23e2cda216', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 00:59:35', null);
INSERT INTO `god_kefu_message` VALUES ('445', '181f58b8762f4ede977e351815ff168f', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 01:00:58', null);
INSERT INTO `god_kefu_message` VALUES ('446', '5a1b4776b85f4a41866724893e270850', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 01:03:44', null);
INSERT INTO `god_kefu_message` VALUES ('447', 'e72c9e80a97c4d5fb162e72eac85e64b', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 01:03:46', null);
INSERT INTO `god_kefu_message` VALUES ('448', 'c05fc96264d7436795240ad50d95af90', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 01:04:05', null);
INSERT INTO `god_kefu_message` VALUES ('449', '1d2fd302d08848a181b84fd9ce1d6671', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 01:04:20', null);
INSERT INTO `god_kefu_message` VALUES ('450', 'ad2d70f7b17d402787832e791e8f055e', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 01:11:01', null);
INSERT INTO `god_kefu_message` VALUES ('451', '6d1af5758b4b4c459f875c361df905b6', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 01:11:04', null);
INSERT INTO `god_kefu_message` VALUES ('452', 'c90dfe6ba8844feb98533e000848db3d', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 01:12:23', null);
INSERT INTO `god_kefu_message` VALUES ('453', '45912db3091943fca1124bd924e7dd33', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 01:12:23', null);
INSERT INTO `god_kefu_message` VALUES ('454', '31782cd59639496a847f83264c78cf88', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 01:14:09', null);
INSERT INTO `god_kefu_message` VALUES ('455', '367ce913f8f04237abcddf04fe4918d1', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-21 01:15:27', null);
INSERT INTO `god_kefu_message` VALUES ('456', 'eefb2c19880b41c2909ab9d2f1bfaebb', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 09:42:56', null);
INSERT INTO `god_kefu_message` VALUES ('457', '5d40404a95b2497f98ab291c5b597cd1', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 09:42:58', null);
INSERT INTO `god_kefu_message` VALUES ('458', '6df43df4c1554310b0a59470923509a7', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 09:43:14', null);
INSERT INTO `god_kefu_message` VALUES ('459', 'e33c54cb789e407994e843b69966fa41', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 09:43:18', null);
INSERT INTO `god_kefu_message` VALUES ('460', '3b063060030047b5b57785acb0c905c3', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 09:51:20', null);
INSERT INTO `god_kefu_message` VALUES ('461', '85c95184e9e44cdc84d461eb3fbe4a70', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 09:52:52', null);
INSERT INTO `god_kefu_message` VALUES ('462', 'f435b0eec4364efd988a30884c96b657', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 09:54:29', null);
INSERT INTO `god_kefu_message` VALUES ('463', 'c372723317c74ffc8c99b1acef820d4a', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 09:58:18', null);
INSERT INTO `god_kefu_message` VALUES ('464', 'e0153d08b0bc467d963de5a777665eb3', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 09:59:03', null);
INSERT INTO `god_kefu_message` VALUES ('465', 'ca70a1088062492aa88509ff28635774', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 10:00:27', null);
INSERT INTO `god_kefu_message` VALUES ('466', 'b45eef247af944168f73f2220cacd963', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 10:04:56', null);
INSERT INTO `god_kefu_message` VALUES ('467', '5b234c68b41745ac89543db59780c175', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 10:11:01', null);
INSERT INTO `god_kefu_message` VALUES ('468', '2edf7a504fe5465691eeb3cc645557c7', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 10:16:00', null);
INSERT INTO `god_kefu_message` VALUES ('469', 'a31769d81ecd42e3823dcae59f23128d', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 10:16:28', null);
INSERT INTO `god_kefu_message` VALUES ('470', '8bfd5f6c2cbb4ce3be00c9f3fc9f17fc', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 10:18:26', null);
INSERT INTO `god_kefu_message` VALUES ('471', '2249e0ab90e64ae782abbe5ca5981fac', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 10:19:06', null);
INSERT INTO `god_kefu_message` VALUES ('472', '10c1dde23ab049b2a08dc0e635ecf160', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 10:26:01', null);
INSERT INTO `god_kefu_message` VALUES ('473', 'abdbbc0db85a4449b046cd461ae17a1d', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 10:43:59', null);
INSERT INTO `god_kefu_message` VALUES ('474', 'ebc5b7a1d03c4693ade7a592342dee99', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 10:44:03', null);
INSERT INTO `god_kefu_message` VALUES ('475', 'd05c3c058906471696fe686b22885dbb', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 11:24:58', null);
INSERT INTO `god_kefu_message` VALUES ('476', '06ec7d93c47744d59ebe11f9a552202a', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 11:25:01', null);
INSERT INTO `god_kefu_message` VALUES ('477', 'ecba39a4e6164310a52228deae36ecf5', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 11:29:04', null);
INSERT INTO `god_kefu_message` VALUES ('478', 'd0946d9101634e6b9514c689798b598a', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 12:33:54', null);
INSERT INTO `god_kefu_message` VALUES ('479', '801aa1eda2664551bf712155e3f8fa1c', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 12:38:27', null);
INSERT INTO `god_kefu_message` VALUES ('480', '57de5d4f09e34aa8bbfdf4c77f65d2ba', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 12:38:34', null);
INSERT INTO `god_kefu_message` VALUES ('481', 'e08dc88d7ecc4a34958c72a57861ca1b', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 14:38:40', null);
INSERT INTO `god_kefu_message` VALUES ('482', 'e3269fc7d8a54a6b94c720a3cf0f3500', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 14:55:21', null);
INSERT INTO `god_kefu_message` VALUES ('483', '27a6a6f91b8a4a4bab91c35631518dd3', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 14:58:19', null);
INSERT INTO `god_kefu_message` VALUES ('484', '3354519386c148ac9d40d93f4552db01', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 14:58:26', null);
INSERT INTO `god_kefu_message` VALUES ('485', 'a82be28a00e540589feddd578fa8f3e3', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 15:27:49', null);
INSERT INTO `god_kefu_message` VALUES ('486', '1aae1f9c77fd4fafbea8e1b6984d6668', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 18:11:29', null);
INSERT INTO `god_kefu_message` VALUES ('487', '0a507ba1da98442282ac2518dc1d2743', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 18:11:30', null);
INSERT INTO `god_kefu_message` VALUES ('488', 'e22f996a49b745719b7011ef14173cf3', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '0', '0', '结束语设置成功', '0', '2020-02-21 18:11:37', null);
INSERT INTO `god_kefu_message` VALUES ('489', 'b0de2a92b3d54c179ecc9afd6de44a4b', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '1', '0', '你好', '1', '2020-02-21 18:11:47', '2020-02-21 18:11:50');
INSERT INTO `god_kefu_message` VALUES ('490', 'ce092172014542f582ccb33cf512079b', '1', '1', '1y1898319d2cc14054939a6fa4bafe1309', '2', '0', '你怎么不在线', '0', '2020-02-21 18:12:15', null);
INSERT INTO `god_kefu_message` VALUES ('491', '1610662f8ecc4c60a9e021f683ae3205', '1', '1', '1yadb7b5f406dc484794647c18d7819997', '0', '0', '结束语设置成功', '0', '2020-02-24 15:44:23', null);
INSERT INTO `god_kefu_message` VALUES ('492', 'd337b1dd31074820abce06914bd4566d', '1', '1', '1yadb7b5f406dc484794647c18d7819997', '0', '0', '结束语设置成功', '0', '2020-02-24 15:44:50', null);
INSERT INTO `god_kefu_message` VALUES ('493', '9f014c77147f41a4b658dfa925e469bd', '1', '1', '1yadb7b5f406dc484794647c18d7819997', '0', '0', '结束语设置成功', '0', '2020-02-24 15:45:01', null);
INSERT INTO `god_kefu_message` VALUES ('494', '88a44f1910a04c87892334f205555500', '1', '1', '1yadb7b5f406dc484794647c18d7819997', '1', '0', '123', '1', '2020-02-24 15:45:21', '2020-02-24 15:45:23');
INSERT INTO `god_kefu_message` VALUES ('495', '17efa7150c1f461ba5a175229d7dd2f1', '1', '1', '1yadb7b5f406dc484794647c18d7819997', '1', '0', '456', '1', '2020-02-24 15:48:40', '2020-02-24 15:51:48');
INSERT INTO `god_kefu_message` VALUES ('496', 'd1a6a2068df344e096efc780d6cc383e', '1', '1', '1yadb7b5f406dc484794647c18d7819997', '1', '0', '为啥哦', '1', '2020-02-24 15:48:57', '2020-02-24 15:51:48');
INSERT INTO `god_kefu_message` VALUES ('497', 'b52cdd08378d491fa0d0df5903248748', '1', '1', '1yadb7b5f406dc484794647c18d7819997', '2', '0', '时间怎么回事', '1', '2020-02-24 15:51:48', '2020-02-24 17:09:16');
INSERT INTO `god_kefu_message` VALUES ('498', '68d12430dc454c0b9046921d8ba60262', '1', '1', '1yadb7b5f406dc484794647c18d7819997', '2', '0', '我的消息哪去了', '1', '2020-02-24 15:52:20', '2020-02-24 17:09:16');
INSERT INTO `god_kefu_message` VALUES ('499', 'edeb32b7622b403bbf16000d1ec91d66', '1', '1', '1yadb7b5f406dc484794647c18d7819997', '2', '0', '你好啊', '1', '2020-02-24 15:52:42', '2020-02-24 17:09:16');
INSERT INTO `god_kefu_message` VALUES ('500', '17d7c77de58d433186933566ded7d28e', '1', '1', '1yadb7b5f406dc484794647c18d7819997', '1', '0', '我很好', '1', '2020-02-24 15:52:49', '2020-02-24 15:53:56');
INSERT INTO `god_kefu_message` VALUES ('501', '7c93aa5d4c66491391395e330ce437f8', '1', '1', '1yadb7b5f406dc484794647c18d7819997', '0', '0', '结束语设置成功', '0', '2020-02-24 17:09:16', null);
INSERT INTO `god_kefu_message` VALUES ('502', '459d35b53cbe454da9337332e0ede022', '1', '1', '1yadb7b5f406dc484794647c18d7819997', '0', '0', '结束语设置成功', '0', '2020-02-24 17:09:33', null);
INSERT INTO `god_kefu_message` VALUES ('503', '9b0fd1da65b544bfa6002c97b935e6e9', '1', '1', '1yadb7b5f406dc484794647c18d7819997', '0', '0', '结束语设置成功', '0', '2020-02-24 18:15:40', null);
INSERT INTO `god_kefu_message` VALUES ('504', '4419d728f7824f2aa4a4ab9ea5ad7f0a', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-02-27 00:59:12', null);
INSERT INTO `god_kefu_message` VALUES ('505', 'a5357fb35fa74fee92f1acf07155cc44', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-02-27 00:59:14', null);
INSERT INTO `god_kefu_message` VALUES ('506', 'fbe53a13866143a893c2ee9b16efa93d', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-02-27 01:00:11', null);
INSERT INTO `god_kefu_message` VALUES ('507', '7da7146722444ebdad7275e31e1c0426', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-02-27 01:06:53', null);
INSERT INTO `god_kefu_message` VALUES ('508', '9ee44818c16245239eb48965a9bf295c', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-27 01:07:05', null);
INSERT INTO `god_kefu_message` VALUES ('509', 'ebcaeab383c34d72bb807f384907e1d0', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-27 01:07:08', null);
INSERT INTO `god_kefu_message` VALUES ('510', '8a87710604a64ab3b6d57d1d7eb52b02', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-27 01:10:07', null);
INSERT INTO `god_kefu_message` VALUES ('511', '24fa827b9ce94240b6a4d59f105a01d2', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-27 01:12:17', null);
INSERT INTO `god_kefu_message` VALUES ('512', '5c20d50c4b8540b89362abc59565eb75', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-02-27 01:13:18', null);
INSERT INTO `god_kefu_message` VALUES ('513', '3749c6cf53e2427ebe1a2b650c47c457', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-02-27 01:13:31', null);
INSERT INTO `god_kefu_message` VALUES ('514', '2ce04a147cc14a93af1f89c66f164f48', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-02-27 01:13:52', null);
INSERT INTO `god_kefu_message` VALUES ('515', 'a0f191d25ebd4c7f8496345b3dfe9606', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-02-27 01:15:24', null);
INSERT INTO `god_kefu_message` VALUES ('516', 'e6e93a6b621341da9977bef969adac82', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-02-27 01:19:04', null);
INSERT INTO `god_kefu_message` VALUES ('517', 'fdf935c16a7146a4bbe3864826e0e531', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-27 01:20:27', null);
INSERT INTO `god_kefu_message` VALUES ('518', '6f4f1b45a9a94cd7be3b92cd9010225a', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-02-27 01:20:28', null);
INSERT INTO `god_kefu_message` VALUES ('519', '9f470ea98f944f7ebb035e8fed68a32d', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-02-27 01:22:31', null);
INSERT INTO `god_kefu_message` VALUES ('520', '56e4932d33c44cbfbcfb884429194f31', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-02-27 01:22:33', null);
INSERT INTO `god_kefu_message` VALUES ('521', '3b2031290e204bac912afaa599162df5', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-02-27 01:25:33', null);
INSERT INTO `god_kefu_message` VALUES ('522', '1e92da5e4f0b40ebad5e789b1d71b01f', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-27 01:25:36', null);
INSERT INTO `god_kefu_message` VALUES ('523', '973f0a06dd6c49a78f2975edd533d0e4', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-02-27 01:25:39', null);
INSERT INTO `god_kefu_message` VALUES ('524', '0a4314b90bf34667a0169761c891d636', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-02-27 01:25:40', null);
INSERT INTO `god_kefu_message` VALUES ('525', '7ffb396beef24b9dbfd1ab9848b551eb', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-03-06 00:27:02', null);
INSERT INTO `god_kefu_message` VALUES ('526', '3f2c6d07240f47c7b41cf2abe6171a07', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '0', '0', '结束语设置成功', '0', '2020-03-06 00:27:03', null);
INSERT INTO `god_kefu_message` VALUES ('527', 'd09acdb7be2243ebb400615cc24d9a78', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-03-06 00:29:44', null);
INSERT INTO `god_kefu_message` VALUES ('528', '731acccd89b3453da35390403e1d1898', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-03-06 00:30:07', null);
INSERT INTO `god_kefu_message` VALUES ('529', 'fbd3a44a95e14c5b95eab53c7bfebb44', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-03-06 00:30:49', null);
INSERT INTO `god_kefu_message` VALUES ('530', 'd6ce73aefbd74bba9b3e13718fa2586d', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '1', '0', '你好', '1', '2020-03-06 00:31:13', '2020-03-06 00:31:27');
INSERT INTO `god_kefu_message` VALUES ('531', 'e4705ec9c91e428784fe5ae65f74435d', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '1', '0', '你好啊', '1', '2020-03-06 00:31:47', '2020-03-06 00:32:11');
INSERT INTO `god_kefu_message` VALUES ('532', '45df92b67d8742e8b3ed88896bdcd6db', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '1', '0', '什么情况', '1', '2020-03-06 00:32:03', '2020-03-06 00:32:11');
INSERT INTO `god_kefu_message` VALUES ('533', '55b011a884a54f3dabc92526c79f7599', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-03-06 00:38:55', null);
INSERT INTO `god_kefu_message` VALUES ('534', 'c6693013ba3c4078a6ab7b067657196a', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-03-06 00:40:14', null);
INSERT INTO `god_kefu_message` VALUES ('535', 'd991f638f20f40e995255659aeae4d48', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-03-06 00:40:15', null);
INSERT INTO `god_kefu_message` VALUES ('536', '5d9e41b4057e44e989b4548f1c18362f', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-03-06 00:41:18', null);
INSERT INTO `god_kefu_message` VALUES ('537', '53dab54ab7f545e5b4258387dfb189a6', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-03-06 00:41:19', null);
INSERT INTO `god_kefu_message` VALUES ('538', 'd65f7fc44ea944b79e7acb9f55d8292e', '1', '1', '1y1cbc421622ce44fe9747c779bfed5354', '2', '0', '哈喽啊', '0', '2020-03-06 00:43:19', null);
INSERT INTO `god_kefu_message` VALUES ('539', '8559d8732e134fc98797d195b0e1319c', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-03-06 00:44:09', null);
INSERT INTO `god_kefu_message` VALUES ('540', '04274d09a6534d7d9312d5f08fe71500', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '1', '0', '这次呢', '1', '2020-03-06 01:01:01', '2020-03-06 01:01:12');
INSERT INTO `god_kefu_message` VALUES ('541', 'c18dbc5bb983447ea7d2641bc3a1e492', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '2', '0', '啊', '1', '2020-03-06 01:01:21', '2020-03-06 01:03:08');
INSERT INTO `god_kefu_message` VALUES ('542', '6ffc00e572574e47a61e9f46b57eef7d', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-03-06 01:03:08', null);
INSERT INTO `god_kefu_message` VALUES ('543', '2af6619981054ab3b31efdc6874d5489', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '0', '0', '结束语设置成功', '0', '2020-03-06 01:03:39', null);
INSERT INTO `god_kefu_message` VALUES ('544', '477c3685d06744299f6e4e3b1dcbdc95', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '2', '0', '111', '0', '2020-03-06 01:03:53', null);
INSERT INTO `god_kefu_message` VALUES ('545', '5b6e09ee2fb246cc8d12dc22316b7c8d', '1', '1', '1y089796a009644fcf8d3741cd19155fd8', '1', '0', '222', '1', '2020-03-06 01:04:35', '2020-03-06 01:04:43');
INSERT INTO `god_kefu_message` VALUES ('546', '542e418445ae4b58a1872b04b1c92e54', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 13:50:34', null);
INSERT INTO `god_kefu_message` VALUES ('547', '33c9eb8d287f4fd68ab4d08f09f86b25', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '1', '0', '你好', '1', '2020-03-08 13:51:37', '2020-03-08 13:51:39');
INSERT INTO `god_kefu_message` VALUES ('548', '476452e9c16a4e52b48f6cc66ed39bb9', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '2', '0', '测试消息', '1', '2020-03-08 13:52:29', '2020-03-08 14:09:19');
INSERT INTO `god_kefu_message` VALUES ('549', '736f5994a6be426bb44da3d72c977cbe', '1', '1', '1y6086567aff4746fabb0426eaa48f82bf', '0', '0', '结束语设置成功', '0', '2020-03-08 13:53:16', null);
INSERT INTO `god_kefu_message` VALUES ('550', 'eb323d2d7d9040839a7a51a7a8835cbe', '1', '1', '1y6086567aff4746fabb0426eaa48f82bf', '2', '0', '111', '0', '2020-03-08 13:53:29', null);
INSERT INTO `god_kefu_message` VALUES ('551', '3e375f1f324d40bdb0b1b4bddfa27529', '1', '1', '1y6086567aff4746fabb0426eaa48f82bf', '2', '0', '222', '0', '2020-03-08 13:53:35', null);
INSERT INTO `god_kefu_message` VALUES ('552', '018bd9e78cc24c35a718d9aad1e1c872', '1', '1', '1y6086567aff4746fabb0426eaa48f82bf', '1', '0', '333', '1', '2020-03-08 13:53:47', '2020-03-08 13:53:51');
INSERT INTO `god_kefu_message` VALUES ('553', 'b93eaa5e30be45838c4a1159c6525742', '1', '1', '1y6086567aff4746fabb0426eaa48f82bf', '2', '0', '44\n', '0', '2020-03-08 13:54:15', null);
INSERT INTO `god_kefu_message` VALUES ('554', '3a03059397bd43e4909e8e78116757e0', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '1', '0', '555', '1', '2020-03-08 13:57:38', '2020-03-08 13:57:42');
INSERT INTO `god_kefu_message` VALUES ('555', '1d08cf78a6c446e8a4e930f39e125cbc', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '2', '0', '9659484', '1', '2020-03-08 13:59:51', '2020-03-08 14:09:19');
INSERT INTO `god_kefu_message` VALUES ('556', '616f93c7304f495abd886a0a1301c46e', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '2', '0', '2233', '1', '2020-03-08 14:01:12', '2020-03-08 14:09:19');
INSERT INTO `god_kefu_message` VALUES ('557', '93cb58136d83420385903a9455ee4968', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '1', '0', '5656', '1', '2020-03-08 14:02:18', '2020-03-08 14:02:26');
INSERT INTO `god_kefu_message` VALUES ('558', '1ad1066d25ac4931891f979fb46a734f', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '2', '0', '121212', '1', '2020-03-08 14:04:02', '2020-03-08 14:09:19');
INSERT INTO `god_kefu_message` VALUES ('559', 'e6d29ba783524dae9dea0cd5125b27d1', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '1', '0', '131313', '1', '2020-03-08 14:05:40', '2020-03-08 14:05:50');
INSERT INTO `god_kefu_message` VALUES ('560', '1f00bb7761524b17b2da6e99af861066', '1', '1', '1y6086567aff4746fabb0426eaa48f82bf', '1', '0', '5555', '1', '2020-03-08 14:06:20', '2020-03-08 14:06:23');
INSERT INTO `god_kefu_message` VALUES ('561', '989168e610ff465f8957dfbfdd5b55a2', '1', '1', '1y6086567aff4746fabb0426eaa48f82bf', '2', '0', '333', '0', '2020-03-08 14:07:55', null);
INSERT INTO `god_kefu_message` VALUES ('562', 'c002076fdab64093bd6d55fca994c830', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '2', '0', '1411414', '1', '2020-03-08 14:08:08', '2020-03-08 14:09:19');
INSERT INTO `god_kefu_message` VALUES ('563', '34755318162e49e0ac61d098733da107', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:09:14', null);
INSERT INTO `god_kefu_message` VALUES ('564', '2d15bac7b33044d4b9b27ae7a000463c', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:09:19', null);
INSERT INTO `god_kefu_message` VALUES ('565', '45a4c4619a4043cd9ee5fdd11ed430b2', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:09:23', null);
INSERT INTO `god_kefu_message` VALUES ('566', 'e73aa13ee8fc487793af63a9d918f20b', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:09:30', null);
INSERT INTO `god_kefu_message` VALUES ('567', 'd90c6b264b48469fb6994d8117957677', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:09:34', null);
INSERT INTO `god_kefu_message` VALUES ('568', 'c6e7ff4ace31498d8ca6d07cca12fb5d', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:09:37', null);
INSERT INTO `god_kefu_message` VALUES ('569', '1892b9a2004844cb9af8f1c7e464f5f3', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:09:38', null);
INSERT INTO `god_kefu_message` VALUES ('570', '4314f12f93024fb09492aed60e2d0e2e', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:09:39', null);
INSERT INTO `god_kefu_message` VALUES ('571', 'eba77d1e380f4394a4d63ecb7b6fb52f', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:16:39', null);
INSERT INTO `god_kefu_message` VALUES ('572', '0bc03216eb8d4b2c81bddbe7be64e04f', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:18:51', null);
INSERT INTO `god_kefu_message` VALUES ('573', 'dc6a0f9668164b3d80933b7e885fdb2b', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:19:00', null);
INSERT INTO `god_kefu_message` VALUES ('574', '2ec5ade2224c4b27879b9c2d04ece727', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:19:57', null);
INSERT INTO `god_kefu_message` VALUES ('575', 'eefd16416670411184de954321c7dfd4', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:22:12', null);
INSERT INTO `god_kefu_message` VALUES ('576', '8791ce5afbbc46319aae63e2c51ad174', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:32:45', null);
INSERT INTO `god_kefu_message` VALUES ('577', '093ec2578bdf449197f0dfb3faa23356', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:33:22', null);
INSERT INTO `god_kefu_message` VALUES ('578', '85217b9c15d54208a421c425067959cb', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:35:01', null);
INSERT INTO `god_kefu_message` VALUES ('579', '0060b7f842e246f387841ba6c2668e30', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:36:03', null);
INSERT INTO `god_kefu_message` VALUES ('580', '88b29b84eee04bf3929e156800cd9d9b', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:36:34', null);
INSERT INTO `god_kefu_message` VALUES ('581', '63eaff0e54a24453a7a7c0e77c78403c', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:38:14', null);
INSERT INTO `god_kefu_message` VALUES ('582', '6d52a64e776247d28c18a8bd321ae06f', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:38:40', null);
INSERT INTO `god_kefu_message` VALUES ('583', '27d63da4fce342ffaf53694df67c273a', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:43:09', null);
INSERT INTO `god_kefu_message` VALUES ('584', '0f9851bf82a04e4a907d3ba5068f1860', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:43:56', null);
INSERT INTO `god_kefu_message` VALUES ('585', '70eb48b2b587416f81952e6e12009b90', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:46:46', null);
INSERT INTO `god_kefu_message` VALUES ('586', 'fc3f1934bb7047b0bf687b19bc573b1e', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:47:03', null);
INSERT INTO `god_kefu_message` VALUES ('587', 'b90c20c527b74c329427d7d8cc6ea0ad', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:50:17', null);
INSERT INTO `god_kefu_message` VALUES ('588', '6cb914f1845344eea1df02ef265ec3bb', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '1', '0', '1', '1', '2020-03-08 14:50:22', '2020-03-08 14:50:23');
INSERT INTO `god_kefu_message` VALUES ('589', '72b096805fa546d6937591430d6e88e5', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:53:15', null);
INSERT INTO `god_kefu_message` VALUES ('590', '32a8f181709746c29dcb10f2b64b7a7b', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 14:55:06', null);
INSERT INTO `god_kefu_message` VALUES ('591', '35f1509731924fc98397159853b37871', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '1', '0', '11', '1', '2020-03-08 14:55:12', '2020-03-08 14:55:15');
INSERT INTO `god_kefu_message` VALUES ('592', '9767308657484c94afee077e6d64475c', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '2', '0', '222', '1', '2020-03-08 14:55:23', '2020-03-08 15:00:39');
INSERT INTO `god_kefu_message` VALUES ('593', 'd51b160812d340d8a960d3d6da107edf', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 15:00:39', null);
INSERT INTO `god_kefu_message` VALUES ('594', 'd6f1a806ddd54a85ba4c093896547431', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 15:01:39', null);
INSERT INTO `god_kefu_message` VALUES ('595', '1ea82d0f13064f0f9a70590bb4bfa572', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 15:02:56', null);
INSERT INTO `god_kefu_message` VALUES ('596', '9b8037420dbc48d7a7547c8ef23cc77e', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '0', '0', '结束语设置成功', '0', '2020-03-08 15:04:28', null);
INSERT INTO `god_kefu_message` VALUES ('597', 'b7130c0d49d04895af59931a38e4831b', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '2', '0', '3333', '0', '2020-03-08 15:05:07', null);
INSERT INTO `god_kefu_message` VALUES ('598', 'cafd838a3b8e41d5b8e7927e4dc458c3', '1', '1', '1y3c583c3465c94fd398f0bb027b43f0d8', '1', '0', '333', '1', '2020-03-08 15:05:12', '2020-03-08 21:10:50');
INSERT INTO `god_kefu_message` VALUES ('599', 'cb9f269079734cfabcfe2d2cf28459ed', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:40:33', null);
INSERT INTO `god_kefu_message` VALUES ('600', 'a86ee36c5e544671a527354befc07c72', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '1', '0', '15616', '1', '2020-04-17 13:40:38', '2020-04-17 13:40:45');
INSERT INTO `god_kefu_message` VALUES ('601', 'ae878546b48945bc938547c7eebd0273', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '2', '0', '123', '1', '2020-04-17 13:40:50', '2020-04-17 13:44:50');
INSERT INTO `god_kefu_message` VALUES ('602', '5196eeb86e0f4c52abb575191842cab8', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '2', '0', '123456', '1', '2020-04-17 13:40:57', '2020-04-17 13:44:50');
INSERT INTO `god_kefu_message` VALUES ('603', '1a6f8f2e0c6e4a128de08afa0fe35c0b', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '2', '0', '2222', '1', '2020-04-17 13:41:07', '2020-04-17 13:44:50');
INSERT INTO `god_kefu_message` VALUES ('604', '49798c338e384ebdbb86c218883028e3', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '1', '0', '333333', '1', '2020-04-17 13:41:14', '2020-04-17 13:43:05');
INSERT INTO `god_kefu_message` VALUES ('605', 'fc1f22064ce444fdacfb7a8c8ad47019', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:44:39', null);
INSERT INTO `god_kefu_message` VALUES ('606', '25508bba06804ed2ba4994877c0759bb', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:44:50', null);
INSERT INTO `god_kefu_message` VALUES ('607', '6fd0d67fa8004332aff5c1c8ab808e4e', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:44:55', null);
INSERT INTO `god_kefu_message` VALUES ('608', '18d91513d8114312b761d503f5ca3195', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:45:16', null);
INSERT INTO `god_kefu_message` VALUES ('609', '651c8b26759249ab895919a0a62b089b', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:45:25', null);
INSERT INTO `god_kefu_message` VALUES ('610', 'eab5071236dd4f9093e7716a671ab301', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:45:29', null);
INSERT INTO `god_kefu_message` VALUES ('611', '6c1a45b67d364973ac9aa1a723fd96a0', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:47:39', null);
INSERT INTO `god_kefu_message` VALUES ('612', 'b94d8b052182485e94eafd2efbbc78dc', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:47:40', null);
INSERT INTO `god_kefu_message` VALUES ('613', 'a2d6012c35de4c85b2213725a0439aa6', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:48:49', null);
INSERT INTO `god_kefu_message` VALUES ('614', 'c5f07043766542438d76500e45a45728', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:49:07', null);
INSERT INTO `god_kefu_message` VALUES ('615', '9b9022d308404acd9c709c828c72a055', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:49:12', null);
INSERT INTO `god_kefu_message` VALUES ('616', '5464f16f24fd4d94a5a09bff3636ecdb', '1', '1', '1yb5a29b498dc74cb5a7982064e07725ee', '0', '0', '结束语设置成功', '0', '2020-04-17 13:49:58', null);
INSERT INTO `god_kefu_message` VALUES ('617', '79238ec215c149baa34e92997fc5fc51', '1', '1', '1yb5a29b498dc74cb5a7982064e07725ee', '0', '0', '结束语设置成功', '0', '2020-04-17 13:50:05', null);
INSERT INTO `god_kefu_message` VALUES ('618', '2a90193e5c584c49b0abc1ab09c740c3', '1', '1', '1yb5a29b498dc74cb5a7982064e07725ee', '0', '0', '结束语设置成功', '0', '2020-04-17 13:50:09', null);
INSERT INTO `god_kefu_message` VALUES ('619', '7dfe388b1dab457c93e9e4c1539ae143', '1', '1', '1yb5a29b498dc74cb5a7982064e07725ee', '0', '0', '结束语设置成功', '0', '2020-04-17 13:50:18', null);
INSERT INTO `god_kefu_message` VALUES ('620', 'a5ada8f9852745e99421e7fda15c04d3', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:26', null);
INSERT INTO `god_kefu_message` VALUES ('621', '7b9ca58cba5049b384533c11a83a94fc', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:30', null);
INSERT INTO `god_kefu_message` VALUES ('622', 'b1b2a24e763045ba84d8d410d4dab1a4', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:31', null);
INSERT INTO `god_kefu_message` VALUES ('623', '06420f3e3b564f99b573bd7750111695', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:32', null);
INSERT INTO `god_kefu_message` VALUES ('624', '09f9dc7144fc4c40ae0681e915e5369e', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:33', null);
INSERT INTO `god_kefu_message` VALUES ('625', '626c6883b74a4940842a46c22d1ca9f8', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:34', null);
INSERT INTO `god_kefu_message` VALUES ('626', '048141b2f09c40ad9094a3432ff02c99', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:37', null);
INSERT INTO `god_kefu_message` VALUES ('627', '8121abf0250f47369db1489431674210', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:37', null);
INSERT INTO `god_kefu_message` VALUES ('628', '990a5d8c2053460bba337a00d08fa8c6', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:39', null);
INSERT INTO `god_kefu_message` VALUES ('629', '60e3a8aa588b4531ba7e79ce96ca88c6', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:39', null);
INSERT INTO `god_kefu_message` VALUES ('630', 'df2a83f43d544964b470da69c76af399', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:40', null);
INSERT INTO `god_kefu_message` VALUES ('631', 'b28b8982ecaa4d8a83f955f2ed484356', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:40', null);
INSERT INTO `god_kefu_message` VALUES ('632', 'dc3f5f0523fd47f2b082a08a97ec40a2', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:41', null);
INSERT INTO `god_kefu_message` VALUES ('633', 'a0cda5aa5f344a04a8aa40e06184051c', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:41', null);
INSERT INTO `god_kefu_message` VALUES ('634', 'f7519c539767408ca5de683229ee2cce', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:42', null);
INSERT INTO `god_kefu_message` VALUES ('635', '1158f667619e4bde8bfe8fd7bddde90d', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:42', null);
INSERT INTO `god_kefu_message` VALUES ('636', '3a5a78cdc2924cbd8d163e7d5088c5fa', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:42', null);
INSERT INTO `god_kefu_message` VALUES ('637', '2a74c0d09344413f9a87eee160ff5253', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:42', null);
INSERT INTO `god_kefu_message` VALUES ('638', '2154a01dd3ff4ff99573b0549afdbcce', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:43', null);
INSERT INTO `god_kefu_message` VALUES ('639', 'acddb6db00a64f2ea0737ab2474a3715', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:43', null);
INSERT INTO `god_kefu_message` VALUES ('640', '4fd9bf58b1404d02b79131dd0a1da85c', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:44', null);
INSERT INTO `god_kefu_message` VALUES ('641', '1bfd5204044b4a388fac47d96323d485', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '1', '0', '555', '0', '2020-04-17 13:58:48', null);
INSERT INTO `god_kefu_message` VALUES ('642', 'bcce3375723f40ed9feec1e053068d85', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:49', null);
INSERT INTO `god_kefu_message` VALUES ('643', '3b4a865170414f14a8606e2456c2c96e', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:51', null);
INSERT INTO `god_kefu_message` VALUES ('644', '17ec217c99994ca0b2ef04e2f685c052', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:52', null);
INSERT INTO `god_kefu_message` VALUES ('645', 'ddce791cfe2544b7ab5c16b8b9320427', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:53', null);
INSERT INTO `god_kefu_message` VALUES ('646', '759275b579e74fbf9c5945bed73a1422', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:54', null);
INSERT INTO `god_kefu_message` VALUES ('647', 'f70dbeef6256498f9c28c3974db2a20d', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:54', null);
INSERT INTO `god_kefu_message` VALUES ('648', 'aa1cbfc5f98b4b2187a971178ce245f7', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:55', null);
INSERT INTO `god_kefu_message` VALUES ('649', 'd99764230d3b49d391b0c6101f3ac563', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:55', null);
INSERT INTO `god_kefu_message` VALUES ('650', '71d5bfb84c1d486a81d4f96563210927', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:55', null);
INSERT INTO `god_kefu_message` VALUES ('651', 'ec07f8a2d94549668218caa0b41e2903', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:55', null);
INSERT INTO `god_kefu_message` VALUES ('652', 'c98f20ef20af4881968b0a4f95f7f48a', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:56', null);
INSERT INTO `god_kefu_message` VALUES ('653', 'f25ec6e93bc84d2e97ec23a9ffc8dfac', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:56', null);
INSERT INTO `god_kefu_message` VALUES ('654', '5b443e7a88734e6f934413b897dae27b', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:56', null);
INSERT INTO `god_kefu_message` VALUES ('655', 'c427f01614a64353af5ee200cf71d38b', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:57', null);
INSERT INTO `god_kefu_message` VALUES ('656', '35179b6a73ae475b8f9d9b609c183a7c', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:57', null);
INSERT INTO `god_kefu_message` VALUES ('657', '5a758eebacb34cadae7a29ed63733ba9', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:58', null);
INSERT INTO `god_kefu_message` VALUES ('658', 'a22c92f631eb4959908760801f17b9fd', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:58:59', null);
INSERT INTO `god_kefu_message` VALUES ('659', 'e0dbb8a4ee07490fa9d55916f0fffb7a', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:59:00', null);
INSERT INTO `god_kefu_message` VALUES ('660', '550c2715ed814026acafe0caa0bc68eb', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:59:00', null);
INSERT INTO `god_kefu_message` VALUES ('661', '42516f89cc5b4a799e694b9d90943d0b', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:59:01', null);
INSERT INTO `god_kefu_message` VALUES ('662', 'cebc486da022481bacba4a8b05757f77', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:59:02', null);
INSERT INTO `god_kefu_message` VALUES ('663', '6b5b7cc304c84a57a6d767316a96f83e', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:59:02', null);
INSERT INTO `god_kefu_message` VALUES ('664', '8d16c491bc254241b54841143ed06368', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:59:03', null);
INSERT INTO `god_kefu_message` VALUES ('665', '25e86391b9614796979c2b6408e83a1e', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:59:04', null);
INSERT INTO `god_kefu_message` VALUES ('666', '6d125d956ced47e1bfe731e45aebba43', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 13:59:29', null);
INSERT INTO `god_kefu_message` VALUES ('667', '8dc8e1fe06224ed7922d8a9b7b75fee1', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 14:00:29', null);
INSERT INTO `god_kefu_message` VALUES ('668', 'a507afb07a2d4636acd1693113c162a7', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 14:00:29', null);
INSERT INTO `god_kefu_message` VALUES ('669', '56b76cb075324c6195aa4f546ef65aed', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 14:00:30', null);
INSERT INTO `god_kefu_message` VALUES ('670', '8c2a9daaefc84e2b9b8d0bb7534d096d', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 14:00:38', null);
INSERT INTO `god_kefu_message` VALUES ('671', '2ad1eb77ef484d4d827d9d7a9030eca0', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 14:00:39', null);
INSERT INTO `god_kefu_message` VALUES ('672', 'a7bfa256af354b42a93e8e535338a520', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 14:00:39', null);
INSERT INTO `god_kefu_message` VALUES ('673', '7061034e823f4aa0bbf0380b37877891', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '1', '0', '213123', '1', '2020-04-17 14:00:52', '2020-04-17 15:03:53');
INSERT INTO `god_kefu_message` VALUES ('674', '1266b5e552074b70ae21fe7f91b8032d', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 14:01:04', null);
INSERT INTO `god_kefu_message` VALUES ('675', '68f4262c556240b7a1c4fe9307bc0aac', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 14:01:09', null);
INSERT INTO `god_kefu_message` VALUES ('676', '56309c906ee442caa61b4a8808cec072', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 14:01:12', null);
INSERT INTO `god_kefu_message` VALUES ('677', '399c6fc828e14c03b1631cf0d0d4e9d5', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 14:01:14', null);
INSERT INTO `god_kefu_message` VALUES ('678', '96e81ec82b1b4406b64907c84fba0dcb', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '1', '0', '546456', '1', '2020-04-17 14:01:34', '2020-04-17 15:03:53');
INSERT INTO `god_kefu_message` VALUES ('679', 'd952d9638edb47c39716d77e291e9372', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 14:01:40', null);
INSERT INTO `god_kefu_message` VALUES ('680', '88659566b15645228e911028d1d067fc', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-17 14:01:45', null);
INSERT INTO `god_kefu_message` VALUES ('681', '90cf65a81a4640a2bd637d41f5dbc5cb', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-17 15:03:36', null);
INSERT INTO `god_kefu_message` VALUES ('682', '57847d29d99d436a8b34b0202e515a41', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-17 15:03:42', null);
INSERT INTO `god_kefu_message` VALUES ('683', '4f02b85fd7ae47f3ae525b079aade037', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '345345', '1', '2020-04-17 15:03:49', '2020-04-17 15:03:52');
INSERT INTO `god_kefu_message` VALUES ('684', '78fa978e8c964f379dbec2a35e9e205f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '3123123', '1', '2020-04-17 15:04:10', '2020-04-17 15:04:15');
INSERT INTO `god_kefu_message` VALUES ('685', '25df6596fa3c4cc4b87bc45cc9087002', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-17 15:08:14', null);
INSERT INTO `god_kefu_message` VALUES ('686', 'e1fa31206e0a40af9d85ad28eafe1bd8', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-17 15:08:15', null);
INSERT INTO `god_kefu_message` VALUES ('687', '35fdb6abb63b483ab03bd7e039ec8d87', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-17 15:11:14', null);
INSERT INTO `god_kefu_message` VALUES ('688', 'e2395ac3f8f24270ba047fade23e7b40', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-17 15:12:23', null);
INSERT INTO `god_kefu_message` VALUES ('689', 'a5889cd2def94d1db3aed2c2e487a1cc', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-17 15:12:28', null);
INSERT INTO `god_kefu_message` VALUES ('690', '46620c6ebf0441db9aa38a1634335396', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-17 15:13:00', null);
INSERT INTO `god_kefu_message` VALUES ('691', '0ee7594f2a9544af91d94856c8b817f8', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-17 15:13:46', null);
INSERT INTO `god_kefu_message` VALUES ('692', '277d089c09154b64bd07676af1f0715e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-17 15:13:57', null);
INSERT INTO `god_kefu_message` VALUES ('693', '1f756315bdcf42148004645908156d49', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-17 15:15:36', null);
INSERT INTO `god_kefu_message` VALUES ('694', '00c8bd2e477a4cd69de80e22540b292d', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-17 15:15:37', null);
INSERT INTO `god_kefu_message` VALUES ('695', '16c22f5861b144608fd25a5cc460987b', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '123123', '0', '2020-04-17 15:56:17', null);
INSERT INTO `god_kefu_message` VALUES ('696', '1d88704959be4afca94db685f769b9f1', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:32', null);
INSERT INTO `god_kefu_message` VALUES ('697', '72a31f73bf2346efb406162aefcf32dc', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:39', null);
INSERT INTO `god_kefu_message` VALUES ('698', 'd198ebce95d043a48464402fafb0157e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:40', null);
INSERT INTO `god_kefu_message` VALUES ('699', 'dbff84a931d24840ba1ed4ccbe759bca', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:41', null);
INSERT INTO `god_kefu_message` VALUES ('700', '1290903329a6447e9fd552127f750591', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:43', null);
INSERT INTO `god_kefu_message` VALUES ('701', '545bb16a8850431a8ea4b28130ce8c8d', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:43', null);
INSERT INTO `god_kefu_message` VALUES ('702', '0ed6ab3f87b243268db9c6dfbdbde6d0', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:44', null);
INSERT INTO `god_kefu_message` VALUES ('703', '622d3c6b9e144016b64e17451ff3be4f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:44', null);
INSERT INTO `god_kefu_message` VALUES ('704', 'acdbd201b4224ef6b4d58d49b7fc7320', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:44', null);
INSERT INTO `god_kefu_message` VALUES ('705', 'f86f84e9266745bfbe8c2a8f4cfb5df2', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:47', null);
INSERT INTO `god_kefu_message` VALUES ('706', 'a493fbffa709488da993f3adaa0c1122', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:47', null);
INSERT INTO `god_kefu_message` VALUES ('707', '49b7f530698a4a9f8c58fb46ed645ccf', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:47', null);
INSERT INTO `god_kefu_message` VALUES ('708', '85744c4a505147c888cd7eacdd6e9fbe', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:48', null);
INSERT INTO `god_kefu_message` VALUES ('709', 'e0fb5e210a294f7ba7cf6636f991629f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:48', null);
INSERT INTO `god_kefu_message` VALUES ('710', '1d009d0634c44e81a9d00c4a5e7f4ac6', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:49', null);
INSERT INTO `god_kefu_message` VALUES ('711', '0b2c00d721324f35af9ecc97ce01e501', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:50', null);
INSERT INTO `god_kefu_message` VALUES ('712', '62d9df5b4b594c4c8175b3ad53e479a7', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:51', null);
INSERT INTO `god_kefu_message` VALUES ('713', 'e39fea9a000c4b669b3ef483207bde9f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:51', null);
INSERT INTO `god_kefu_message` VALUES ('714', 'c453e38ff64a4e0897769c337353d6ff', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:52', null);
INSERT INTO `god_kefu_message` VALUES ('715', '7e8c2e744b1b40488897752094e1014c', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:52', null);
INSERT INTO `god_kefu_message` VALUES ('716', '02863c59dc1a4fbfbc2dde368e5780df', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:52', null);
INSERT INTO `god_kefu_message` VALUES ('717', '2267eff0fb1d4368a6c3a020fbc1ab6a', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:53', null);
INSERT INTO `god_kefu_message` VALUES ('718', 'e0a94f82b13c430ab2aedf4d2c65310b', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:53', null);
INSERT INTO `god_kefu_message` VALUES ('719', 'd41f09b1b2b54292b2b6ea36b20a8677', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:53', null);
INSERT INTO `god_kefu_message` VALUES ('720', '7c2572c337aa4b2cb67f78a1ae5941b5', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:44:53', null);
INSERT INTO `god_kefu_message` VALUES ('721', '5ecdc78f90ff4391aaff5071fc06b300', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:45:23', null);
INSERT INTO `god_kefu_message` VALUES ('722', 'db0714e00ead443e8ab50ef91ec0794e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:45:24', null);
INSERT INTO `god_kefu_message` VALUES ('723', '8cf4a7ee512049fdab3aa4ce60c451b4', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:45:26', null);
INSERT INTO `god_kefu_message` VALUES ('724', '41345cba9bbd4182acf1b3651634f83c', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:45:27', null);
INSERT INTO `god_kefu_message` VALUES ('725', '3e645f1946304c7daa7b87693a6b659e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:45:36', null);
INSERT INTO `god_kefu_message` VALUES ('726', 'd323df3ae80f4e63b72046c0d5848f46', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:45:37', null);
INSERT INTO `god_kefu_message` VALUES ('727', '05f833b06766430bbb86dd2c8e25660e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:45:37', null);
INSERT INTO `god_kefu_message` VALUES ('728', 'c34f5f10621e459681d5bb9ed7fe4f4d', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:45:38', null);
INSERT INTO `god_kefu_message` VALUES ('729', 'c1dd4606875b498a8d2b6e88d075da93', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-20 09:46:46', null);
INSERT INTO `god_kefu_message` VALUES ('730', '2914aa166a56495abef390b96f96cf67', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-22 09:59:51', null);
INSERT INTO `god_kefu_message` VALUES ('731', '37f5658cd79f47f6a77d3a8fdecd74f4', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-22 09:59:52', null);
INSERT INTO `god_kefu_message` VALUES ('732', 'e2b1d39c24bc439ca0b5140bb8676c25', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-22 09:59:53', null);
INSERT INTO `god_kefu_message` VALUES ('733', '6fc3092a7eee4177836533a0569644cb', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-22 09:59:53', null);
INSERT INTO `god_kefu_message` VALUES ('734', 'e782dd9c3d9e4fdb8a3ea0ae8a28b008', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-22 10:00:09', null);
INSERT INTO `god_kefu_message` VALUES ('735', 'b84bc77a1df24b0090d48f1f54a22458', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-22 10:00:18', null);
INSERT INTO `god_kefu_message` VALUES ('736', '416e32c1b61e42a4a53588860b809416', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-22 10:00:41', null);
INSERT INTO `god_kefu_message` VALUES ('737', '579ee942e5bd4e76b908a988ce4aa206', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-22 10:00:43', null);
INSERT INTO `god_kefu_message` VALUES ('738', 'bd234f51451340e5bf70b37b41fa57e7', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-22 10:00:45', null);
INSERT INTO `god_kefu_message` VALUES ('739', '57176a088fbc4e3fb36bd25f38044fa1', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:50:57', null);
INSERT INTO `god_kefu_message` VALUES ('740', 'e77ae3bb209d4570b0256bcfcaccf354', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:51:11', null);
INSERT INTO `god_kefu_message` VALUES ('741', 'a310c1b654d745038d14972b09e45acf', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:51:12', null);
INSERT INTO `god_kefu_message` VALUES ('742', '1b72965cdf3844c383007ddd31757eca', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:51:13', null);
INSERT INTO `god_kefu_message` VALUES ('743', 'd3e525ad1434429e8da3927cb4d4011f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:51:15', null);
INSERT INTO `god_kefu_message` VALUES ('744', '050ba2bc47c5431fbd38c80ee885ee92', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:53:29', null);
INSERT INTO `god_kefu_message` VALUES ('745', '443cf144d7f14adcb7bf4f212a1fd745', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:53:31', null);
INSERT INTO `god_kefu_message` VALUES ('746', '21f9d23f415d4563951f8ef5c8d398a9', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:53:32', null);
INSERT INTO `god_kefu_message` VALUES ('747', '001d008e0ec34c6fa3d4f74be659faa9', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:53:34', null);
INSERT INTO `god_kefu_message` VALUES ('748', '5c9973b96b1a4236aebd101b4a9fb33c', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:53:35', null);
INSERT INTO `god_kefu_message` VALUES ('749', '564650302d1a4f399957c9024726c981', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:55:42', null);
INSERT INTO `god_kefu_message` VALUES ('750', '056ca849528b445b9171bd74449edbc3', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:55:43', null);
INSERT INTO `god_kefu_message` VALUES ('751', '7a01f4f259f947529d2a4a54d433588b', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:55:44', null);
INSERT INTO `god_kefu_message` VALUES ('752', '6795e3d32fc547aeab6ae5f8b3ed0328', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:55:45', null);
INSERT INTO `god_kefu_message` VALUES ('753', 'd8eff25a55c04dbd9de16e857652642c', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:55:46', null);
INSERT INTO `god_kefu_message` VALUES ('754', '29b3bcfcb3c34d24a5cc6a1157637b88', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:55:46', null);
INSERT INTO `god_kefu_message` VALUES ('755', 'db3cad9836834842a75c8857c39b6045', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:55:48', null);
INSERT INTO `god_kefu_message` VALUES ('756', '3a29d7ae41c44fe6948f1539e5e9b5d5', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:55:56', null);
INSERT INTO `god_kefu_message` VALUES ('757', 'b7a2c2a2d8b642eabd02b977ba307e38', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:55:57', null);
INSERT INTO `god_kefu_message` VALUES ('758', 'c3ec56c0217d41ebbe0d726ef1d75e1a', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:56:00', null);
INSERT INTO `god_kefu_message` VALUES ('759', 'a83dd3032e6643609d420a1ead6ec127', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:56:03', null);
INSERT INTO `god_kefu_message` VALUES ('760', '5d375f51077c46cf9f65f482375a98ec', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:56:04', null);
INSERT INTO `god_kefu_message` VALUES ('761', 'aea13a552f1a46b08936cf096551cca3', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:56:18', null);
INSERT INTO `god_kefu_message` VALUES ('762', '34f889ab2e1a436cab57a19af84a2117', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:56:18', null);
INSERT INTO `god_kefu_message` VALUES ('763', '0839a88cdff44e37836ff0c937549619', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:56:21', null);
INSERT INTO `god_kefu_message` VALUES ('764', '20faeb1f231b449b88d45bbe8dfee057', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 16:56:23', null);
INSERT INTO `god_kefu_message` VALUES ('765', '42e9f212a6324a07a3ee5b8630880039', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:03:53', null);
INSERT INTO `god_kefu_message` VALUES ('766', '23897148dfa24c459301ab43f0efb496', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:04:01', null);
INSERT INTO `god_kefu_message` VALUES ('767', 'e2c7f186282745e783d9204c18610a00', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:05:08', null);
INSERT INTO `god_kefu_message` VALUES ('768', 'aeda8395940549ebbd7eef3ed307410a', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:05:13', null);
INSERT INTO `god_kefu_message` VALUES ('769', 'c561f0d96edb4ed297d442893421a2fd', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:05:43', null);
INSERT INTO `god_kefu_message` VALUES ('770', '6b391f5756f349c2a2eadf44d7d4ecbd', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:05:47', null);
INSERT INTO `god_kefu_message` VALUES ('771', 'be0b99be762b49ea9b91a80e0fb0c394', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:05:49', null);
INSERT INTO `god_kefu_message` VALUES ('772', '63385d52815840db9a5537a0bf0e39f8', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:10:19', null);
INSERT INTO `god_kefu_message` VALUES ('773', '27f5cd68acab47f4b7654cc8681d10d2', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:10:23', null);
INSERT INTO `god_kefu_message` VALUES ('774', '3ce29c16149f400c895f56a42d8ab676', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:11:17', null);
INSERT INTO `god_kefu_message` VALUES ('775', '0ef0ab4a5b8a457b8467713417e09c1d', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:11:18', null);
INSERT INTO `god_kefu_message` VALUES ('776', 'eb8a648c66364aa884064e5ba5474529', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:11:19', null);
INSERT INTO `god_kefu_message` VALUES ('777', '2b9f79c81cc946c0a3f0071f0b8a3ac3', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:11:19', null);
INSERT INTO `god_kefu_message` VALUES ('778', 'd55cec829902491fb2c645f6b7a6d1c4', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:11:46', null);
INSERT INTO `god_kefu_message` VALUES ('779', 'd103456555df468f83da93d9e5b3e517', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:11:48', null);
INSERT INTO `god_kefu_message` VALUES ('780', 'e7393c1510be4e93afd059f99b190b79', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:11:49', null);
INSERT INTO `god_kefu_message` VALUES ('781', '095ee39396504ddcb950d7a99e3369c2', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:18:26', null);
INSERT INTO `god_kefu_message` VALUES ('782', 'aab0c0302c9242d980ec3847126e25df', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:18:34', null);
INSERT INTO `god_kefu_message` VALUES ('783', '71721af933e74bbdbdb8749e0c3fc21f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:18:38', null);
INSERT INTO `god_kefu_message` VALUES ('784', 'a2a31b73613045efb0712c0e7166606e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:18:40', null);
INSERT INTO `god_kefu_message` VALUES ('785', 'db9d73d4bc7747c7967d958879f7cb17', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:18:41', null);
INSERT INTO `god_kefu_message` VALUES ('786', '6efb23bbbbd344ebb1611a2700757bae', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:22:43', null);
INSERT INTO `god_kefu_message` VALUES ('787', 'baf73e48a216475c80d36dd2085e85a0', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:22:46', null);
INSERT INTO `god_kefu_message` VALUES ('788', 'c6dbf696a94e42f8a45961e0e5300d21', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:22:50', null);
INSERT INTO `god_kefu_message` VALUES ('789', '95474bd2967747bb88f6c90d1dc80df3', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:22:51', null);
INSERT INTO `god_kefu_message` VALUES ('790', '56fb663b179443a0bcee519c4d38c57d', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:22:52', null);
INSERT INTO `god_kefu_message` VALUES ('791', '804b5bd23c8d436ba2f9fa3f7bac61ea', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:22:53', null);
INSERT INTO `god_kefu_message` VALUES ('792', '5618bae18c654bcbb3b5730189bdf738', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:26:02', null);
INSERT INTO `god_kefu_message` VALUES ('793', 'ca097632c7d742aa9ff7f763f69881fc', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:26:07', null);
INSERT INTO `god_kefu_message` VALUES ('794', '4a65b412c5b64bbe96582a95e9643883', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:26:30', null);
INSERT INTO `god_kefu_message` VALUES ('795', '901b516206d34133af9ba1f8af2319a7', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:27:20', null);
INSERT INTO `god_kefu_message` VALUES ('796', 'bd552336447548249290c048151190c8', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:27:21', null);
INSERT INTO `god_kefu_message` VALUES ('797', '92fcf746cc1b4f59aa67992dfd1e4c0e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:27:23', null);
INSERT INTO `god_kefu_message` VALUES ('798', 'e0ccae91569143569f0dc0467baeea0d', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:27:24', null);
INSERT INTO `god_kefu_message` VALUES ('799', 'd79640dbcf994d6782cff147265d5de8', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:27:25', null);
INSERT INTO `god_kefu_message` VALUES ('800', '6902ace0318e40158c431769203a30dd', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:27:26', null);
INSERT INTO `god_kefu_message` VALUES ('801', '5e5572e963c04d93a5eb406a2efb6fee', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:27:27', null);
INSERT INTO `god_kefu_message` VALUES ('802', 'a6b77cad1cfe4eb1ae926586c5e8d182', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:29:22', null);
INSERT INTO `god_kefu_message` VALUES ('803', 'ad8cf5b032224a72a65c4a6b74c37661', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:29:24', null);
INSERT INTO `god_kefu_message` VALUES ('804', '32b8b663505d49e7b7e5dc43f5a6c8ef', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:29:25', null);
INSERT INTO `god_kefu_message` VALUES ('805', 'd72e8e648ff44a728f7064cf04f838a1', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:30:07', null);
INSERT INTO `god_kefu_message` VALUES ('806', 'ebba5fce11a747838634161240670307', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:30:09', null);
INSERT INTO `god_kefu_message` VALUES ('807', 'bd4b6bb3fdc34d58848f637d3f3c201a', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:34:40', null);
INSERT INTO `god_kefu_message` VALUES ('808', 'dab5e1404e94450984af11e5a6542045', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:34:49', null);
INSERT INTO `god_kefu_message` VALUES ('809', '7abdd28e225843249a70c066666174f2', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:35:34', null);
INSERT INTO `god_kefu_message` VALUES ('810', '243053da3ba04717aa797cb04ce10094', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:36:12', null);
INSERT INTO `god_kefu_message` VALUES ('811', '6a70cb0eca804519934c2e1a7fc3617a', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:36:36', null);
INSERT INTO `god_kefu_message` VALUES ('812', 'b429c74e1dca4787924636bdd656c5fd', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '123123', '0', '2020-04-23 17:37:40', null);
INSERT INTO `god_kefu_message` VALUES ('813', 'debc0e1adc5c40d7a64102a0af2ed3ec', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:37:49', null);
INSERT INTO `god_kefu_message` VALUES ('814', 'cc059ef5c0f84a6680b57b06a64988a6', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:38:38', null);
INSERT INTO `god_kefu_message` VALUES ('815', 'da2a3780935646d99049fa1edfae2d04', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:44:45', null);
INSERT INTO `god_kefu_message` VALUES ('816', '49f2ab98d08f415a87f808e15377ed6c', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:46:39', null);
INSERT INTO `god_kefu_message` VALUES ('817', '638fbea5e7be4822b49aabe0cd18580a', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:47:05', null);
INSERT INTO `god_kefu_message` VALUES ('818', '48548860140b46fb8627c3bca1c25815', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:47:07', null);
INSERT INTO `god_kefu_message` VALUES ('819', '7f4325e3d2924f88b55cc4c0ebb19de0', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '345', '1', '2020-04-23 17:47:09', '2020-04-23 17:50:15');
INSERT INTO `god_kefu_message` VALUES ('820', '195b4a1fdf8a442780c3f77f2065e3ea', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:47:18', null);
INSERT INTO `god_kefu_message` VALUES ('821', 'f8252f7135e443b2a48427e10ec294d7', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:48:54', null);
INSERT INTO `god_kefu_message` VALUES ('822', '4d7a5296810e4b26bf9975ed1e7ed495', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:48:57', null);
INSERT INTO `god_kefu_message` VALUES ('823', '45045cde18c345f191e47ac679dbbc96', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:49:03', null);
INSERT INTO `god_kefu_message` VALUES ('824', '03d0834e8f3c4cf5a3597d03c21cbb91', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-23 17:49:28', null);
INSERT INTO `god_kefu_message` VALUES ('825', 'f9c28959406e440ea42774c27ef6f95e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', 'face[12]face[15]', '1', '2020-04-23 17:49:35', '2020-04-23 17:50:15');
INSERT INTO `god_kefu_message` VALUES ('826', '31c5bd7f80754a96a25c140a18ed7592', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', 'face[25]face[26]', '1', '2020-04-23 17:49:47', '2020-04-23 17:50:15');
INSERT INTO `god_kefu_message` VALUES ('827', '8483a93e97fb47d0b126c2487ce87c98', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:06:22', null);
INSERT INTO `god_kefu_message` VALUES ('828', 'd6c50bcecc554b8184ab543c416da4b2', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:21:46', null);
INSERT INTO `god_kefu_message` VALUES ('829', '680fbca5411c498c8bfb05242c0bc42c', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:21:51', null);
INSERT INTO `god_kefu_message` VALUES ('830', '246e99abdde44a969c2ab2273e6735e7', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:31:04', null);
INSERT INTO `god_kefu_message` VALUES ('831', '9ee2d5c6c26749e5a2bf89ed010d1a32', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:38:06', null);
INSERT INTO `god_kefu_message` VALUES ('832', '29f47e61eb60495b8dcbe62c5261cd63', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:38:08', null);
INSERT INTO `god_kefu_message` VALUES ('833', '68bc6db0e89c457195efc8a7c864bb60', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:38:20', null);
INSERT INTO `god_kefu_message` VALUES ('834', 'eb6baa4ec58f4fb2aed659ffa0e20184', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:38:37', null);
INSERT INTO `god_kefu_message` VALUES ('835', 'bf0c312f36814f618874c517245514ad', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:38:50', null);
INSERT INTO `god_kefu_message` VALUES ('836', '37528be5b3c0490a99056fb0972e7d09', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:38:51', null);
INSERT INTO `god_kefu_message` VALUES ('837', 'c0b4fe96d4bb40dbb413f9f4863eb877', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:38:53', null);
INSERT INTO `god_kefu_message` VALUES ('838', '3dfad449faab433a88ace731a363c0d2', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:39:03', null);
INSERT INTO `god_kefu_message` VALUES ('839', '86f80ba77b454d02971fde4f43c5be94', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:39:04', null);
INSERT INTO `god_kefu_message` VALUES ('840', '2b8dea007de34cf7b0b955bf30ea93ac', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:19][emoji:18]', '0', '2020-04-25 14:39:08', null);
INSERT INTO `god_kefu_message` VALUES ('841', '40ae7dad2a654470baa95da87be99402', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:39:12', null);
INSERT INTO `god_kefu_message` VALUES ('842', '01bc3b66bea1487da1e2f8f11cf78d81', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:40:16', null);
INSERT INTO `god_kefu_message` VALUES ('843', 'b563466216634b258bb7704460e6803a', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:40:18', null);
INSERT INTO `god_kefu_message` VALUES ('844', '0d65ff81a8d341f2be9bab9effe5e2b6', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:43:09', null);
INSERT INTO `god_kefu_message` VALUES ('845', '4c5a4e8bf2d04070a87b175622a8fc93', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:43:16', null);
INSERT INTO `god_kefu_message` VALUES ('846', '858ad82b892c42c294c999c2e1e98eed', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:43:19', null);
INSERT INTO `god_kefu_message` VALUES ('847', '8f2df9ac43224f189427e04fa1ecee51', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:12]', '0', '2020-04-25 14:43:24', null);
INSERT INTO `god_kefu_message` VALUES ('848', '03e3167b6a7240298fb051bff0b9338b', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:43:25', null);
INSERT INTO `god_kefu_message` VALUES ('849', '2d92fe1872314a908d09652123d80780', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:43:28', null);
INSERT INTO `god_kefu_message` VALUES ('850', 'e1a9f94f5b304ac889ffcc59227c6e65', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:44:41', null);
INSERT INTO `god_kefu_message` VALUES ('851', '4518b489f290472fbcee6ab385b51628', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:44:45', null);
INSERT INTO `god_kefu_message` VALUES ('852', 'ed8a46e9a26a4c348a8f6896d838b6c8', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:44:50', null);
INSERT INTO `god_kefu_message` VALUES ('853', 'cfe12459e08a4feb87fdb6229ea847e2', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:45:49', null);
INSERT INTO `god_kefu_message` VALUES ('854', 'c52181accfda416baf38e3fbf4e3f7d3', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:45:52', null);
INSERT INTO `god_kefu_message` VALUES ('855', '9a497cc666e44a93ae8a6212fecc1095', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:47:49', null);
INSERT INTO `god_kefu_message` VALUES ('856', 'c1daab6995ef40c2aeea10e10e99315b', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:47:51', null);
INSERT INTO `god_kefu_message` VALUES ('857', '518007b3efb1410ab0f800ee35b54f2b', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:47:55', null);
INSERT INTO `god_kefu_message` VALUES ('858', '07776739417546c08ce328aae957cd6d', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:47:58', null);
INSERT INTO `god_kefu_message` VALUES ('859', '6f7c9a691ec14f00ae0f20da9ce2c4ae', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:48:01', null);
INSERT INTO `god_kefu_message` VALUES ('860', '58b06679431a4903be31083c6ad62602', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:15]', '0', '2020-04-25 14:48:04', null);
INSERT INTO `god_kefu_message` VALUES ('861', '3a32ba18eea44f918616952bf98dc510', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:48:06', null);
INSERT INTO `god_kefu_message` VALUES ('862', '85a92762cf51494bb454e7fc0486a773', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:13]', '0', '2020-04-25 14:48:09', null);
INSERT INTO `god_kefu_message` VALUES ('863', 'dbcb17539fad4f41a20901f74a31701e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:48:10', null);
INSERT INTO `god_kefu_message` VALUES ('864', '4ed6bfac7f9845c6adea6dd1441ffdf5', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:49:09', null);
INSERT INTO `god_kefu_message` VALUES ('865', '20560fa8881f4fdf90fc002c4be4efdd', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 14:50:05', null);
INSERT INTO `god_kefu_message` VALUES ('866', 'a9e9c784be464cd0a434c14b21488f88', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:30:33', null);
INSERT INTO `god_kefu_message` VALUES ('867', '8be387029dd549399491ec454f3e8f94', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:18]', '0', '2020-04-25 15:30:38', null);
INSERT INTO `god_kefu_message` VALUES ('868', '821d6c2892b342c79d790dac12457002', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:22][emoji:12]', '0', '2020-04-25 15:30:46', null);
INSERT INTO `god_kefu_message` VALUES ('869', 'cfb87de7277142149122da9997bcb7d5', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:30:47', null);
INSERT INTO `god_kefu_message` VALUES ('870', 'cc019e9eab4f4adfa2e688028fc47195', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:30:49', null);
INSERT INTO `god_kefu_message` VALUES ('871', '4a88ff2135cd4004a9aa6a18e9f866f2', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:31:11', null);
INSERT INTO `god_kefu_message` VALUES ('872', '566d124acce444029de572a70f70c787', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:31:13', null);
INSERT INTO `god_kefu_message` VALUES ('873', '60b7433933c94ed0a3dbc8f1c6020528', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:31:15', null);
INSERT INTO `god_kefu_message` VALUES ('874', '1889ede152f441fb86b907549b6381c9', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:31:35', null);
INSERT INTO `god_kefu_message` VALUES ('875', '4398ce70b6c042779dc181c51f6890d4', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:32:09', null);
INSERT INTO `god_kefu_message` VALUES ('876', '27ce307e90dc414d9f6721658b22fb38', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:32:11', null);
INSERT INTO `god_kefu_message` VALUES ('877', '0f1287369fdf495f9c2a231c2a2ae86a', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:34:18', null);
INSERT INTO `god_kefu_message` VALUES ('878', '38b87fd9da4e4912baa3fe6551d3f1a6', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:34:20', null);
INSERT INTO `god_kefu_message` VALUES ('879', 'a0f70075262f4cf0bb40570289940232', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:34:25', null);
INSERT INTO `god_kefu_message` VALUES ('880', '1a5a7788c29549c384cb35472835bce2', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:19]', '0', '2020-04-25 15:34:28', null);
INSERT INTO `god_kefu_message` VALUES ('881', 'b0bb1155245f4f2ba30467f3a1f0216c', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:34:31', null);
INSERT INTO `god_kefu_message` VALUES ('882', '59290ba8957a400a9a9ce98846841797', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '123123123[emoji:11]', '0', '2020-04-25 15:34:41', null);
INSERT INTO `god_kefu_message` VALUES ('883', '41f7073497994679b5e94ccb84d64bf9', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:34:43', null);
INSERT INTO `god_kefu_message` VALUES ('884', '5ab4107136d1459dac449009580c8a8b', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '456456[emoji:11]', '0', '2020-04-25 15:34:47', null);
INSERT INTO `god_kefu_message` VALUES ('885', 'dac5b32ac588490bb116d431d5406b4a', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '213123', '0', '2020-04-25 15:34:55', null);
INSERT INTO `god_kefu_message` VALUES ('886', 'c5efbc4b481347c2b7c417f19c572d11', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:34:59', null);
INSERT INTO `god_kefu_message` VALUES ('887', '785b963999124ea6991e217a2725151b', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '234234', '0', '2020-04-25 15:35:00', null);
INSERT INTO `god_kefu_message` VALUES ('888', '4bbfd5b987d64120a99e375513406f9a', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:35:04', null);
INSERT INTO `god_kefu_message` VALUES ('889', 'c193d1d3404c4a20994f5836bb826093', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:35:08', null);
INSERT INTO `god_kefu_message` VALUES ('890', 'e27b5f9de26e45c88ca782b8727b10e1', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:36:48', null);
INSERT INTO `god_kefu_message` VALUES ('891', 'dd1ffd20d9f440ba9a03f7cadfb884fe', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:37:49', null);
INSERT INTO `god_kefu_message` VALUES ('892', '76d39b320f654703acd61de3226bbe6c', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:37:51', null);
INSERT INTO `god_kefu_message` VALUES ('893', '0bcea32fe8f747eeb081d3816e57ce20', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:37:53', null);
INSERT INTO `god_kefu_message` VALUES ('894', '5c0e6b1c9d1b4a8a8eeedb016bb71a1c', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:37:56', null);
INSERT INTO `god_kefu_message` VALUES ('895', '535abe99d37a462eb7453ab8cc9298cf', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:28]', '0', '2020-04-25 15:37:59', null);
INSERT INTO `god_kefu_message` VALUES ('896', '0a979ba681f7438aa8d0ad19fd39eaad', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:38:02', null);
INSERT INTO `god_kefu_message` VALUES ('897', '8a900f6e50084bcca8d31130e67fee3e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:38:13', null);
INSERT INTO `god_kefu_message` VALUES ('898', '90599045d55d4deabf947fb3e86952cb', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:38:14', null);
INSERT INTO `god_kefu_message` VALUES ('899', 'f11805461e664e2895a5a825cf1f390e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:38:31', null);
INSERT INTO `god_kefu_message` VALUES ('900', 'db736b2e3bb747449f5a00de67e63b73', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:38:33', null);
INSERT INTO `god_kefu_message` VALUES ('901', 'fb66e2a529924369872bbf6eac7cc40d', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:38:48', null);
INSERT INTO `god_kefu_message` VALUES ('902', '947283d5b69f4f6f8471233faef128ab', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:39:08', null);
INSERT INTO `god_kefu_message` VALUES ('903', 'afb58df4d53a47049e84cba1b146caa7', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:39:09', null);
INSERT INTO `god_kefu_message` VALUES ('904', 'aaf3dfd2b65b422bb8df83942dcf2c3a', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:39:53', null);
INSERT INTO `god_kefu_message` VALUES ('905', '1e1056a1f43a4b079f47bf78a0bd7503', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:39:55', null);
INSERT INTO `god_kefu_message` VALUES ('906', 'ad69414d08464d2a8047e28b8383d558', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:40:11', null);
INSERT INTO `god_kefu_message` VALUES ('907', '804ea12eacb94abbbb2117c516962d8f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:23]', '0', '2020-04-25 15:40:15', null);
INSERT INTO `god_kefu_message` VALUES ('908', 'd65565fbd4b14b488d9ccc1a7dd0bab9', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:40:16', null);
INSERT INTO `god_kefu_message` VALUES ('909', '11527444fa5e46089047be6aad8ed6ce', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:40:37', null);
INSERT INTO `god_kefu_message` VALUES ('910', 'ac835bfc75224232a4d6c0c1343aaa3b', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:41:37', null);
INSERT INTO `god_kefu_message` VALUES ('911', '3cfe5f7febe6428aac2ec292a110f8d3', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:41:57', null);
INSERT INTO `god_kefu_message` VALUES ('912', '21f55095cda44454a706f56c7bcee574', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:42:11', null);
INSERT INTO `god_kefu_message` VALUES ('913', '2a6f1cffb6b04a29ae9326cbf7d81d8f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:42:25', null);
INSERT INTO `god_kefu_message` VALUES ('914', 'e79c784226d94185b034d9dd244131c1', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:43:22', null);
INSERT INTO `god_kefu_message` VALUES ('915', '4719b5db2a6843a7858d27e57abb3011', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:43:23', null);
INSERT INTO `god_kefu_message` VALUES ('916', '795176ff2af548b48282ca50189d3092', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:12]', '0', '2020-04-25 15:43:27', null);
INSERT INTO `god_kefu_message` VALUES ('917', '48edbcb1ad94417dbca3abecb9d321fe', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:43:29', null);
INSERT INTO `god_kefu_message` VALUES ('918', '14f1b4646f394d08b21ae312c92c944b', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:45:06', null);
INSERT INTO `god_kefu_message` VALUES ('919', '08b4d31864434748bd4a8d80345ce8a5', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:46:07', null);
INSERT INTO `god_kefu_message` VALUES ('920', '84be4029f9454e918db95d66c073cffe', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:46:28', null);
INSERT INTO `god_kefu_message` VALUES ('921', '7be540c07dac44638335e2c0f4f6e1d9', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:30]', '0', '2020-04-25 15:46:31', null);
INSERT INTO `god_kefu_message` VALUES ('922', '0df37e2b337d4cd691138ee08ed541c5', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:46:33', null);
INSERT INTO `god_kefu_message` VALUES ('923', '97f71df88b6840eb8e88c9ff56756d2f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:47:31', null);
INSERT INTO `god_kefu_message` VALUES ('924', '03e87bb0f5604eda8fd6a549c0fcea57', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:47:33', null);
INSERT INTO `god_kefu_message` VALUES ('925', '09d349e2d72945e888f80ff2d00b9f6d', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '4234234[emoji:20][emoji:20]', '0', '2020-04-25 15:48:29', null);
INSERT INTO `god_kefu_message` VALUES ('926', '9c7ddf0c216b4b6993f274f15ec730f6', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:48:30', null);
INSERT INTO `god_kefu_message` VALUES ('927', '3da33606324b4cd1b3701d23091d7e6e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:48:33', null);
INSERT INTO `god_kefu_message` VALUES ('928', 'e41433b428a647c5b636550f8f78d927', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:29][emoji:29][emoji:29][emoji:29]', '0', '2020-04-25 15:48:40', null);
INSERT INTO `god_kefu_message` VALUES ('929', '72ff061624724f4d9870d2149717b28b', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:48:42', null);
INSERT INTO `god_kefu_message` VALUES ('930', '8d7f524dd23641db887cfb0886f19fb3', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:28]', '0', '2020-04-25 15:49:03', null);
INSERT INTO `god_kefu_message` VALUES ('931', '2eb4e65adf864bcb95af9b0adfba5ff7', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:49:05', null);
INSERT INTO `god_kefu_message` VALUES ('932', '06a65b257865422994fcfc396960dc6e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:49:46', null);
INSERT INTO `god_kefu_message` VALUES ('933', '5407ab8b8f2141e3aaf4af7553bb288d', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:49:48', null);
INSERT INTO `god_kefu_message` VALUES ('934', '67c6d6faa8fa44f98af4c159f5e0a75a', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:29]', '0', '2020-04-25 15:49:51', null);
INSERT INTO `god_kefu_message` VALUES ('935', '74598b90e0fe47a6ab4199b070f9f4b4', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:49:52', null);
INSERT INTO `god_kefu_message` VALUES ('936', '1b14ce1e99414397989987d7d712bc2b', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:50:17', null);
INSERT INTO `god_kefu_message` VALUES ('937', 'd4e34cfad1b347c9b8aa5c7db5493625', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:50:53', null);
INSERT INTO `god_kefu_message` VALUES ('938', '23b91553353b4cdf88cca68478013f13', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:50:55', null);
INSERT INTO `god_kefu_message` VALUES ('939', '9c08065da24a414ebe11286f65980102', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:51:09', null);
INSERT INTO `god_kefu_message` VALUES ('940', 'ff116ae27a2c4c0b92ea50d667d0f359', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:51:13', null);
INSERT INTO `god_kefu_message` VALUES ('941', '1b4921b366b343ed9373c225d7471675', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:51:21', null);
INSERT INTO `god_kefu_message` VALUES ('942', '9920eadc65294d66b5b81c8f95936a44', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:29][emoji:29]', '0', '2020-04-25 15:51:24', null);
INSERT INTO `god_kefu_message` VALUES ('943', '87c56bfdd6564fa78af268ad97c6e59e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-25 15:51:25', null);
INSERT INTO `god_kefu_message` VALUES ('944', '49330e2add544695b92aa4dc4e18ccc5', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:04:32', null);
INSERT INTO `god_kefu_message` VALUES ('945', '82c5eafb21f3476fa5a67d84c3cbcaf6', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:21]', '0', '2020-04-27 11:05:13', null);
INSERT INTO `god_kefu_message` VALUES ('946', 'cb580c66018e432c85f055fe938dd1b4', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:05:14', null);
INSERT INTO `god_kefu_message` VALUES ('947', 'beec5b9468b24ea5a2082b255b418403', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:05:35', null);
INSERT INTO `god_kefu_message` VALUES ('948', '663cf484b4694e12b3bddced91ca2075', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:05:36', null);
INSERT INTO `god_kefu_message` VALUES ('949', '7b0cd9f4727c448d95973a44d71c2f08', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:05:38', null);
INSERT INTO `god_kefu_message` VALUES ('950', '73704a877dc24efabddc7620562a99c6', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:05:39', null);
INSERT INTO `god_kefu_message` VALUES ('951', '3b582771488f4121ab347a0e52735dee', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:05:39', null);
INSERT INTO `god_kefu_message` VALUES ('952', '8f4f0edabdff466e9e61383ccebfd457', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:05:39', null);
INSERT INTO `god_kefu_message` VALUES ('953', 'c77b93ef70274451b418faffc91635cd', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:05:39', null);
INSERT INTO `god_kefu_message` VALUES ('954', '33e2410970d9466fb88b322b995c191d', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:05:40', null);
INSERT INTO `god_kefu_message` VALUES ('955', '464588c5118348b08a665222e023c2eb', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:05:40', null);
INSERT INTO `god_kefu_message` VALUES ('956', '8a70f1d80a964d2f93cff707c295bd5e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:05:41', null);
INSERT INTO `god_kefu_message` VALUES ('957', 'b603e10b5e6142eabe77c931c997b232', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:05:41', null);
INSERT INTO `god_kefu_message` VALUES ('958', '2f106d29ca474360ab6ae275badb10c0', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:05:41', null);
INSERT INTO `god_kefu_message` VALUES ('959', '46b7232921dd478794a3ff0c61b9adfc', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:06:02', null);
INSERT INTO `god_kefu_message` VALUES ('960', '0f257d80682945beb05d07961d620ffe', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:06:03', null);
INSERT INTO `god_kefu_message` VALUES ('961', '01b267b7f8514b2f86f3b11a2626b7d3', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:28][emoji:28][emoji:28]', '0', '2020-04-27 11:06:23', null);
INSERT INTO `god_kefu_message` VALUES ('962', '63fef2438979496481dc0e585d9151aa', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:09:20', null);
INSERT INTO `god_kefu_message` VALUES ('963', 'fe1e0ca1a0e0491590ca457115b4343e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:13][emoji:13][emoji:13][emoji:13]', '0', '2020-04-27 11:09:32', null);
INSERT INTO `god_kefu_message` VALUES ('964', '7fd98aec345b439586c95a122dcc6991', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:09:34', null);
INSERT INTO `god_kefu_message` VALUES ('965', '7ec4500339764ffbbee030f2ad57dccf', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:12][emoji:22][emoji:15]', '0', '2020-04-27 11:09:47', null);
INSERT INTO `god_kefu_message` VALUES ('966', '4bccf9ed46ac48e0b5a07613ac041ea8', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:09:49', null);
INSERT INTO `god_kefu_message` VALUES ('967', '79ae8c40801d4d8d9809da49d8483a9c', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:13:09', null);
INSERT INTO `god_kefu_message` VALUES ('968', '45c3a41e017b42d1add7430c1dbf9f80', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:13:12', null);
INSERT INTO `god_kefu_message` VALUES ('969', '872841749f75498a82710a699dcee98e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:15:57', null);
INSERT INTO `god_kefu_message` VALUES ('970', 'd19db674f39e4310b871c2fd3780f11d', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:16:06', null);
INSERT INTO `god_kefu_message` VALUES ('971', '5d2741da2f8f41c6a7f92062f65311bd', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:16:06', null);
INSERT INTO `god_kefu_message` VALUES ('972', '2854d4122ccd41889e404699dab690e8', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:16:10', null);
INSERT INTO `god_kefu_message` VALUES ('973', 'e488e8b3eea84e41802205fd1821e450', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:16:38', null);
INSERT INTO `god_kefu_message` VALUES ('974', 'd352cde9489846d580fc8ecc2d080a19', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:16:40', null);
INSERT INTO `god_kefu_message` VALUES ('975', '873dad42fa0846dcb40cad7ffa8dd2b7', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:17:23', null);
INSERT INTO `god_kefu_message` VALUES ('976', 'e18997f9c9384db18e00263360090ff3', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:17:25', null);
INSERT INTO `god_kefu_message` VALUES ('977', '57a46bf9c4cb4066ac4a6d5827a01888', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '3453', '0', '2020-04-27 11:17:28', null);
INSERT INTO `god_kefu_message` VALUES ('978', 'e39c526a2f854b2d84d76a7a694a1768', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:17:29', null);
INSERT INTO `god_kefu_message` VALUES ('979', '8271fd75bce74f8eae2e4a87230f397f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:14]', '0', '2020-04-27 11:17:33', null);
INSERT INTO `god_kefu_message` VALUES ('980', '41395fbb235346ddbabc5f390912b1de', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:17:34', null);
INSERT INTO `god_kefu_message` VALUES ('981', 'fac29d88a9d147b1b20c930d4de598ef', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:22][emoji:22][emoji:22]', '0', '2020-04-27 11:17:37', null);
INSERT INTO `god_kefu_message` VALUES ('982', 'cf5b73fbb0464b7ca1b81d4e3395cb9d', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:17:40', null);
INSERT INTO `god_kefu_message` VALUES ('983', '115003d4bb08419ca19db8208ecfb8a2', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:17:42', null);
INSERT INTO `god_kefu_message` VALUES ('984', '7af3beddc16748008dd224e07579383b', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:21][emoji:14][emoji:6][emoji:3]', '0', '2020-04-27 11:17:49', null);
INSERT INTO `god_kefu_message` VALUES ('985', '046e610ae47e4e62b2bd32de4081c913', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:17:50', null);
INSERT INTO `god_kefu_message` VALUES ('986', '85a7b27267e543eb8ffd729957f86ada', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:17:53', null);
INSERT INTO `god_kefu_message` VALUES ('987', 'c917cd6f12814fde9a76bf3f81250b3f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:9][emoji:1][emoji:25][emoji:27][emoji:21][emoji:13]', '0', '2020-04-27 11:17:59', null);
INSERT INTO `god_kefu_message` VALUES ('988', 'ec281357a4494716a36abebaa2c2dba0', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:18:01', null);
INSERT INTO `god_kefu_message` VALUES ('989', '2e387f78c60748e2b299369a45048db0', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:18:08', null);
INSERT INTO `god_kefu_message` VALUES ('990', '623db03325974f229675b24546f35488', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:0][emoji:1][emoji:2]', '0', '2020-04-27 11:18:18', null);
INSERT INTO `god_kefu_message` VALUES ('991', '2f25f79d94f94e70bd7433dedc1e23a9', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:18:19', null);
INSERT INTO `god_kefu_message` VALUES ('992', 'b1bb61ef369f43d9a1dde09d19f06077', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:0]', '0', '2020-04-27 11:18:37', null);
INSERT INTO `god_kefu_message` VALUES ('993', '29ee027e5ee0496a979b5306200bf2d2', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:18:39', null);
INSERT INTO `god_kefu_message` VALUES ('994', 'd20e48f1708543cba4d49bd8ffa31138', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:19:22', null);
INSERT INTO `god_kefu_message` VALUES ('995', '1093e3e981364d25b67c44307c700a26', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:19:31', null);
INSERT INTO `god_kefu_message` VALUES ('996', '56052098682544b29fbaffd67b7ea8ee', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:19:33', null);
INSERT INTO `god_kefu_message` VALUES ('997', '845cac393917453794998a1969f9e0d4', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:14][emoji:15][emoji:15][emoji:15]', '0', '2020-04-27 11:20:07', null);
INSERT INTO `god_kefu_message` VALUES ('998', 'f70ba31c003843ef858e0ccdc43ec03a', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:20:10', null);
INSERT INTO `god_kefu_message` VALUES ('999', 'e4e16a125da246b78d1330ac3fb5c73a', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:21:38', null);
INSERT INTO `god_kefu_message` VALUES ('1000', 'a0c63788299f4de4b1331b35a38e0a90', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:35][emoji:35][emoji:35][emoji:35]', '0', '2020-04-27 11:21:45', null);
INSERT INTO `god_kefu_message` VALUES ('1001', 'ff9c5e96e4364b6cbfa79af8cbc53ed7', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:21:47', null);
INSERT INTO `god_kefu_message` VALUES ('1002', '24a42a95d421486789b3e0d7a09c6821', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:19][emoji:20]', '0', '2020-04-27 11:21:55', null);
INSERT INTO `god_kefu_message` VALUES ('1003', '9afd669e9d3443ffbbeddf904eaf2832', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:21:56', null);
INSERT INTO `god_kefu_message` VALUES ('1004', '8b59bd3a9cea415084562acbe7f1e076', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:13][emoji:14][emoji:14][emoji:15][emoji:15][emoji:23]', '0', '2020-04-27 11:22:39', null);
INSERT INTO `god_kefu_message` VALUES ('1005', '13813f27f40140458c20547c8b6057be', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:22:42', null);
INSERT INTO `god_kefu_message` VALUES ('1006', '29c0a127a7ea496a9e859490b978c195', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:23:26', null);
INSERT INTO `god_kefu_message` VALUES ('1007', 'aef73fb8c4994bc187877853aa66d362', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:25:14', null);
INSERT INTO `god_kefu_message` VALUES ('1008', 'f98855bfdc82489a8acf1c7e3f68c95e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:25:15', null);
INSERT INTO `god_kefu_message` VALUES ('1009', 'cae1db7ebb1e4f89bbf080e5783ec575', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:25:17', null);
INSERT INTO `god_kefu_message` VALUES ('1010', '4aaad84e1ef543489924aa6b81e0ec81', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:25:18', null);
INSERT INTO `god_kefu_message` VALUES ('1011', 'bfefc7e7317b440b8096fdffd60b0660', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:11]', '0', '2020-04-27 11:25:20', null);
INSERT INTO `god_kefu_message` VALUES ('1012', '7f341d06f65147a4ad1649b055431825', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:25:22', null);
INSERT INTO `god_kefu_message` VALUES ('1013', '8c8d3d2dd28d4c05884018134f5caa6f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:25:24', null);
INSERT INTO `god_kefu_message` VALUES ('1014', 'bce5575e48ee4b8ba5fcb368e0229bb5', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:26:10', null);
INSERT INTO `god_kefu_message` VALUES ('1015', '5b94ffc067ce4b3e96f3f1d41c72eb36', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:26:19', null);
INSERT INTO `god_kefu_message` VALUES ('1016', '43f660d802c04694a6ba6fd60cfdb476', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:26:20', null);
INSERT INTO `god_kefu_message` VALUES ('1017', '1b1aaa209e8249cb89e7a5e6f6af2547', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:26:22', null);
INSERT INTO `god_kefu_message` VALUES ('1018', 'f984d2900a1e4415913508f37ba8f815', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:19][emoji:20][emoji:14][emoji:6][emoji:31][emoji:31]', '0', '2020-04-27 11:26:27', null);
INSERT INTO `god_kefu_message` VALUES ('1019', '93a77de234e04e2fb41e820537f6efd2', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:26:28', null);
INSERT INTO `god_kefu_message` VALUES ('1020', 'e69cde40b407498591e05e54035d11db', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:29:09', null);
INSERT INTO `god_kefu_message` VALUES ('1021', 'ab757cfb2cb449888ed2468fc84bcc66', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:29:12', null);
INSERT INTO `god_kefu_message` VALUES ('1022', 'a206d73a8933405595e79a83323cf63f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:28][emoji:20][emoji:13]', '0', '2020-04-27 11:29:15', null);
INSERT INTO `god_kefu_message` VALUES ('1023', '905e4f2233d84012823c7dcfdeed7535', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:29:16', null);
INSERT INTO `god_kefu_message` VALUES ('1024', '0fb4c11b00714a80bbdca42b0f3df8ea', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:29:26', null);
INSERT INTO `god_kefu_message` VALUES ('1025', '5e7e4eef17434670b217cebd1a6d70b6', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:29:31', null);
INSERT INTO `god_kefu_message` VALUES ('1026', '5aa1f8b6437742eca2fd7775a092cf44', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:29:34', null);
INSERT INTO `god_kefu_message` VALUES ('1027', 'b81835ba9b834bd3a7fe18a288a99cc3', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:30:05', null);
INSERT INTO `god_kefu_message` VALUES ('1028', 'b0c9bfce3be1415b992c4485cb08508f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:30:08', null);
INSERT INTO `god_kefu_message` VALUES ('1029', 'b90d6686336a4572b812b1cfd7912361', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:30:08', null);
INSERT INTO `god_kefu_message` VALUES ('1030', '0223b251e1904a18b85b1a29d119aeba', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:31:13', null);
INSERT INTO `god_kefu_message` VALUES ('1031', 'f2f46d0b77fa4b078d6ee293c04fd702', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:31:28', null);
INSERT INTO `god_kefu_message` VALUES ('1032', '833ebf4df1784745861698f8654257aa', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:33:24', null);
INSERT INTO `god_kefu_message` VALUES ('1033', '591a6198ac0644a3a53890dba115a93c', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:33:32', null);
INSERT INTO `god_kefu_message` VALUES ('1034', '4447ef9e5f7549d3be39f8c18915ae4b', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:33:37', null);
INSERT INTO `god_kefu_message` VALUES ('1035', '3da50ac7ad484b609c9cc96530d5bcdf', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:18]', '1', '2020-04-27 11:33:39', '2020-04-27 11:36:05');
INSERT INTO `god_kefu_message` VALUES ('1036', '73cf84d07bb34cebb479bcadd6aa6b40', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:33:46', null);
INSERT INTO `god_kefu_message` VALUES ('1037', '429d1ff6cdc8474daca43d5e358df35e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:18]', '1', '2020-04-27 11:33:50', '2020-04-27 11:36:05');
INSERT INTO `god_kefu_message` VALUES ('1038', 'c2533f7447ae4843966ba05004eb939f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:29]', '1', '2020-04-27 11:33:53', '2020-04-27 11:36:05');
INSERT INTO `god_kefu_message` VALUES ('1039', 'd72092945cd4478ba1d59e6a12bbc9b1', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:15]', '1', '2020-04-27 11:33:55', '2020-04-27 11:36:05');
INSERT INTO `god_kefu_message` VALUES ('1040', '1874c89c5ea242d7801df76a01e580df', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:22][emoji:22][emoji:23][emoji:23]测试测试\n', '1', '2020-04-27 11:34:20', '2020-04-27 11:36:05');
INSERT INTO `god_kefu_message` VALUES ('1041', 'c1b9e0cc24e843349fc3f5241b7394d4', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:21][emoji:21][emoji:21][emoji:21][emoji:14][emoji:14]', '1', '2020-04-27 11:34:44', '2020-04-27 11:36:05');
INSERT INTO `god_kefu_message` VALUES ('1042', '3bd55e14b0c043cbbf57616520e32daa', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 11:35:23', null);
INSERT INTO `god_kefu_message` VALUES ('1043', 'c5d6d8eee81a490f80bfbcaadec86daa', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:11][emoji:11][emoji:15][emoji:15]', '1', '2020-04-27 11:35:28', '2020-04-27 11:36:05');
INSERT INTO `god_kefu_message` VALUES ('1044', 'd1c9a10a3b214555872ab1b1231899c4', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '[emoji:16][emoji:16][emoji:19][emoji:9]', '1', '2020-04-27 11:45:53', '2020-04-27 13:39:36');
INSERT INTO `god_kefu_message` VALUES ('1045', '08061f79dbad480981eecb92f490efa3', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', ' 测试表情[emoji:40][emoji:128]', '1', '2020-04-27 11:47:11', '2020-04-27 13:39:36');
INSERT INTO `god_kefu_message` VALUES ('1046', 'ee3e3cef111f469b85ead9bd23a0aa09', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '[emoji:122][emoji:122][emoji:122]', '1', '2020-04-27 11:55:38', '2020-04-27 13:39:36');
INSERT INTO `god_kefu_message` VALUES ('1047', '28491a78b4d44913a44a10e9ca2ce232', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '[emoji:103][emoji:103]', '1', '2020-04-27 11:55:56', '2020-04-27 13:39:36');
INSERT INTO `god_kefu_message` VALUES ('1048', 'f12828804e5247e1b9c38350b1241b37', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 13:39:36', null);
INSERT INTO `god_kefu_message` VALUES ('1049', 'a1697cf5c8b84440b0892280c11d927b', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', 'Test  [emoji:113][emoji:113][emoji:113][emoji:113][emoji:113][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114]', '1', '2020-04-27 13:39:56', '2020-04-27 13:40:03');
INSERT INTO `god_kefu_message` VALUES ('1050', '38b61b92314e46dd9f8f6b3a6c20221d', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:108][emoji:108][emoji:108][emoji:108][emoji:108]asdasd萨达萨达阿萨德 \n[emoji:108][emoji:108][emoji:108][emoji:108]', '1', '2020-04-27 13:59:56', '2020-04-27 14:00:41');
INSERT INTO `god_kefu_message` VALUES ('1051', 'c6d7d9f439064193871c67b98e9f308e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 14:01:40', null);
INSERT INTO `god_kefu_message` VALUES ('1052', '40e405cd98c04530b19f2234668cb942', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:114]', '1', '2020-04-27 14:01:42', '2020-04-27 14:03:16');
INSERT INTO `god_kefu_message` VALUES ('1053', '1830c252a4e945ca83933261dc56ad1d', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114][emoji:114]', '1', '2020-04-27 14:01:45', '2020-04-27 14:03:16');
INSERT INTO `god_kefu_message` VALUES ('1054', '1cfc2baf85fd4589aa43307650e05ff5', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 14:02:39', null);
INSERT INTO `god_kefu_message` VALUES ('1055', '304810471a044b058af835c48ce14af7', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:114]', '1', '2020-04-27 14:02:47', '2020-04-27 14:03:16');
INSERT INTO `god_kefu_message` VALUES ('1056', 'be64dea68fc14314a16cff0f0b83cec6', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '0', '0', '结束语设置成功', '0', '2020-04-27 15:21:23', null);
INSERT INTO `god_kefu_message` VALUES ('1057', 'e688f5726f3b410f807b1a52d22f29b2', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '1', '0', '[emoji:25][emoji:25][emoji:25]', '1', '2020-04-27 15:22:37', '2020-04-27 15:22:50');
INSERT INTO `god_kefu_message` VALUES ('1058', '9d16b1cacb5d4843b7b634f3a13b272e', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '1', '0', '3333', '1', '2020-04-27 15:23:23', '2020-04-27 15:27:24');
INSERT INTO `god_kefu_message` VALUES ('1059', '5be51902e01c4cddb172640a26ee6958', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '2', '0', '5555555\n', '0', '2020-04-27 15:27:24', null);
INSERT INTO `god_kefu_message` VALUES ('1060', '8f4aaf5296d64ef395af71336aadb809', '1', '1', '1y85977360b41048aaa05dba5472b3951e', '2', '0', '44444444\n\n', '0', '2020-04-27 15:28:26', null);
INSERT INTO `god_kefu_message` VALUES ('1061', 'f2a91e533722458a8fe24c1300eead0d', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 15:36:38', null);
INSERT INTO `god_kefu_message` VALUES ('1062', 'a85a7f37cea9403ab9082fd500aa1187', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 15:38:28', null);
INSERT INTO `god_kefu_message` VALUES ('1063', '7249feba26bc4a2687191baeb068c7c5', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 15:38:35', null);
INSERT INTO `god_kefu_message` VALUES ('1064', '877dc9962cd44e4d8e2849d8211217e9', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 15:39:13', null);
INSERT INTO `god_kefu_message` VALUES ('1065', 'd0049f85a7bb4b189c3d35ea16f3fcdb', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '3333', '1', '2020-04-27 15:39:16', '2020-04-27 15:39:19');
INSERT INTO `god_kefu_message` VALUES ('1066', '24f83dcb141e4c8cb3cf5c608935eff7', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '4444444444444444444', '0', '2020-04-27 15:39:23', null);
INSERT INTO `god_kefu_message` VALUES ('1067', '53527568bb084469a7d105329204571f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '44444444444444444444', '0', '2020-04-27 15:39:26', null);
INSERT INTO `god_kefu_message` VALUES ('1068', '50b058319b3b48a19d7a308e18318a04', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '4444444444444444444444444', '0', '2020-04-27 15:39:29', null);
INSERT INTO `god_kefu_message` VALUES ('1069', '82f6771c80cf4402839a306975ad2083', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '44444444444', '0', '2020-04-27 15:39:36', null);
INSERT INTO `god_kefu_message` VALUES ('1070', '8f344782ca3d430d9c8bd94f5d70e26d', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '543534534', '0', '2020-04-27 15:39:43', null);
INSERT INTO `god_kefu_message` VALUES ('1071', '68c6c7700a9b46f2b693f3f1c2807891', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '5345', '0', '2020-04-27 15:39:45', null);
INSERT INTO `god_kefu_message` VALUES ('1072', 'bc73803efcc54250a1aa3d25c6c25c31', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '5345345', '0', '2020-04-27 15:39:46', null);
INSERT INTO `god_kefu_message` VALUES ('1073', '66ec3e7959ed48d58c900e824679fb81', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '45345345', '0', '2020-04-27 15:39:48', null);
INSERT INTO `god_kefu_message` VALUES ('1074', 'e7c6b85cae294c69baadefc9daab9e60', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '[emoji:41]', '0', '2020-04-27 15:39:59', null);
INSERT INTO `god_kefu_message` VALUES ('1075', 'c4293b3da8c84f78afaf7031463a17c2', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '[emoji:40]', '0', '2020-04-27 15:40:03', null);
INSERT INTO `god_kefu_message` VALUES ('1076', '38d124c386514478881dc9ceda415bdd', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '[emoji:40]', '0', '2020-04-27 15:40:04', null);
INSERT INTO `god_kefu_message` VALUES ('1077', '5ed4aad655f44d4695b58001ba031aa8', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '[emoji:40]', '0', '2020-04-27 15:40:05', null);
INSERT INTO `god_kefu_message` VALUES ('1078', '4f758e89722347be9de94feb6a4e4005', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '[emoji:40]', '0', '2020-04-27 15:40:07', null);
INSERT INTO `god_kefu_message` VALUES ('1079', '5a1c8c14672b45a8a5d326386dc3b9e4', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '[emoji:40]', '0', '2020-04-27 15:40:09', null);
INSERT INTO `god_kefu_message` VALUES ('1080', '387653a28d744669bd914634c1c75aaa', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '[emoji:40]', '0', '2020-04-27 15:40:10', null);
INSERT INTO `god_kefu_message` VALUES ('1081', 'c6e8452506474eadaee0fe41cca597bf', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '3', '1', '2020-04-27 15:41:33', '2020-04-27 16:28:20');
INSERT INTO `god_kefu_message` VALUES ('1082', '4bee8971df0346dd87f9e930b1ad384b', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '4', '1', '2020-04-27 15:41:35', '2020-04-27 16:28:20');
INSERT INTO `god_kefu_message` VALUES ('1083', '2b8be5c872724f54b499923509daff44', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '5', '1', '2020-04-27 15:41:36', '2020-04-27 16:28:20');
INSERT INTO `god_kefu_message` VALUES ('1084', '090600da82fe4dd7a3a021f27dd200e6', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '3', '1', '2020-04-27 15:41:37', '2020-04-27 16:28:20');
INSERT INTO `god_kefu_message` VALUES ('1085', '3c94088b68404d4491126f3bf065f93d', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '2', '1', '2020-04-27 15:41:38', '2020-04-27 16:28:20');
INSERT INTO `god_kefu_message` VALUES ('1086', '737d66392cc0452eaf96ebfb287e2758', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '3', '1', '2020-04-27 15:41:58', '2020-04-27 16:28:20');
INSERT INTO `god_kefu_message` VALUES ('1087', '1e2a5fb3143640859a3b61bdf7cd20a4', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '4', '1', '2020-04-27 15:42:00', '2020-04-27 16:28:20');
INSERT INTO `god_kefu_message` VALUES ('1088', '4fbffe39fe464803b5f294e4066c28b3', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '33333', '1', '2020-04-27 15:44:29', '2020-04-27 16:28:20');
INSERT INTO `god_kefu_message` VALUES ('1089', '462752ef935f4b6f9e7c3832f8aca4ab', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '测测试测测试测测试测测试测测试测测试测测试测测试测测试测测试测测试测测试测测试测测试测测试测测试测测试测测试测测试', '1', '2020-04-27 16:25:20', '2020-04-27 16:28:20');
INSERT INTO `god_kefu_message` VALUES ('1090', '56fa59dafb6e4f91881759dbd8395101', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 16:28:21', null);
INSERT INTO `god_kefu_message` VALUES ('1091', '6a16312f0e1844a9924738c2ac3b4640', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '423423', '1', '2020-04-27 16:28:24', '2020-04-27 16:28:31');
INSERT INTO `god_kefu_message` VALUES ('1092', '8749cf79462d497f9efe289980b0d54f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 16:30:06', null);
INSERT INTO `god_kefu_message` VALUES ('1093', 'c65f4261c48c4972a1a0fe55f95efd24', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '123123123', '1', '2020-04-27 16:30:26', '2020-04-27 16:35:12');
INSERT INTO `god_kefu_message` VALUES ('1094', 'd2ec57d057d2452c8fd891edf7aff9b5', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '213123123', '1', '2020-04-27 16:31:52', '2020-04-27 16:35:12');
INSERT INTO `god_kefu_message` VALUES ('1095', 'a428a82c424040df9befb7a373f832b8', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 16:34:56', null);
INSERT INTO `god_kefu_message` VALUES ('1096', 'fec0a76b3fb94efd950aba9c4bad89a9', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '33333', '1', '2020-04-27 16:34:58', '2020-04-27 16:35:12');
INSERT INTO `god_kefu_message` VALUES ('1097', '2829b6be34a948dab9acb1214b1b7368', '1', '1', 'undefined', '0', '0', '结束语设置成功', '0', '2020-04-27 16:35:35', null);
INSERT INTO `god_kefu_message` VALUES ('1098', '04ba3d53115548789ae6649489effc22', '1', '1', '', '1', '0', '123', '0', '2020-04-27 16:35:56', null);
INSERT INTO `god_kefu_message` VALUES ('1099', '038036bca96e4d65828af67395b8b4ca', '1', '1', '', '1', '0', '33333333', '0', '2020-04-27 16:36:09', null);
INSERT INTO `god_kefu_message` VALUES ('1100', 'eb827c0c33f04811abe02fbe12f049a0', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-27 16:36:20', null);
INSERT INTO `god_kefu_message` VALUES ('1101', '78aed7ee1859471ea09c645b3e9ef513', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '1', '0', '3333333', '1', '2020-04-27 16:36:24', '2020-04-27 16:36:36');
INSERT INTO `god_kefu_message` VALUES ('1102', '001cff1f3fba45d9ba17863ef1934b30', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '1', '0', '3333', '1', '2020-04-27 16:36:56', '2020-04-27 16:37:11');
INSERT INTO `god_kefu_message` VALUES ('1103', '11843422a14b4f2bb737093f9418e763', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '1', '0', '2222', '1', '2020-04-27 16:37:08', '2020-04-27 16:37:11');
INSERT INTO `god_kefu_message` VALUES ('1104', 'd47db63ba720402a8448c6d076efdde9', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '345345', '1', '2020-04-27 16:43:05', '2020-04-27 16:45:27');
INSERT INTO `god_kefu_message` VALUES ('1105', '616f768bea88443d8bebb0b85a516faa', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '6666', '1', '2020-04-27 16:43:16', '2020-04-27 16:45:27');
INSERT INTO `god_kefu_message` VALUES ('1106', '16ad943374ef47ef8f28a38d97c4c30b', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '333333', '1', '2020-04-27 16:45:15', '2020-04-27 16:45:27');
INSERT INTO `god_kefu_message` VALUES ('1107', '9db3e986bb1a4a35ad34216987647b45', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '1', '0', '444444444444', '1', '2020-04-27 16:45:24', '2020-04-27 16:45:26');
INSERT INTO `god_kefu_message` VALUES ('1108', 'bcb7f656e2204c1db24a2258bf7b13a0', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-27 16:46:03', null);
INSERT INTO `god_kefu_message` VALUES ('1109', '2c1ca6e7f8d6453abaa209bc47c5e05c', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '1', '0', '333\n', '1', '2020-04-27 16:46:15', '2020-04-27 16:46:16');
INSERT INTO `god_kefu_message` VALUES ('1110', '4fed274e38bf4e69a22ae3ac409f4938', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-27 16:46:51', null);
INSERT INTO `god_kefu_message` VALUES ('1111', '0575f5b217004a5d96daeec8842d09e4', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-27 16:53:59', null);
INSERT INTO `god_kefu_message` VALUES ('1112', 'c2768e5e91a0469f84b180a8c20bdd47', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '1', '0', '363636\n', '0', '2020-04-27 17:04:59', null);
INSERT INTO `god_kefu_message` VALUES ('1113', '7da9cb8d632744f9bae29838d032e320', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-27 17:11:55', null);
INSERT INTO `god_kefu_message` VALUES ('1114', '0306bfa24ad24df0b01b924edec9711d', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-27 17:11:56', null);
INSERT INTO `god_kefu_message` VALUES ('1115', '9c4194c7d17b488b99da823c06972032', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 17:12:29', null);
INSERT INTO `god_kefu_message` VALUES ('1116', '16e0e67274dd4007bd19d89628e47ed3', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-27 17:12:36', null);
INSERT INTO `god_kefu_message` VALUES ('1117', 'c3c69355e97c46de8e92984aa6ff3839', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '1', '0', '3123', '0', '2020-04-27 17:12:38', null);
INSERT INTO `god_kefu_message` VALUES ('1118', 'ffd16246bcb343fe83d520bb99081861', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '312312', '1', '2020-04-27 17:12:41', '2020-04-27 17:21:46');
INSERT INTO `god_kefu_message` VALUES ('1119', 'a0fbf062f8d44665ac7b804fd1292a45', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-27 17:14:11', null);
INSERT INTO `god_kefu_message` VALUES ('1120', 'b8254c8760b74b48b3af1a217b59bb12', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-27 17:15:44', null);
INSERT INTO `god_kefu_message` VALUES ('1121', '3234a714921c4f07970fb44327df1cef', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-27 17:18:50', null);
INSERT INTO `god_kefu_message` VALUES ('1122', '3a5347a30b084c7a9d4edf82994621bf', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-27 17:18:54', null);
INSERT INTO `god_kefu_message` VALUES ('1123', '92b1fef474654a3a9472c55a643892c2', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-27 17:18:57', null);
INSERT INTO `god_kefu_message` VALUES ('1124', '6ae5925f311549e988bfd18795f1f4ea', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 17:19:18', null);
INSERT INTO `god_kefu_message` VALUES ('1125', 'f02ea4039ad04684ad25754044572dd9', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-27 17:20:43', null);
INSERT INTO `god_kefu_message` VALUES ('1126', '9c37e12ead8b416ea2b97916b37ce4c6', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 17:20:46', null);
INSERT INTO `god_kefu_message` VALUES ('1127', '5490c22b243c49e7867ec27eb63739df', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '[emoji:14][emoji:14][emoji:14]', '1', '2020-04-27 17:21:50', '2020-04-27 18:00:43');
INSERT INTO `god_kefu_message` VALUES ('1128', 'e7bed183fc5543c39c11be4bcd38a678', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '[emoji:22][emoji:22][emoji:22][emoji:22]', '1', '2020-04-27 17:22:36', '2020-04-28 09:28:41');
INSERT INTO `god_kefu_message` VALUES ('1129', '69be4b2b95964ae8998ab0c298e41bcc', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '1', '0', '111\n', '0', '2020-04-27 17:50:39', null);
INSERT INTO `god_kefu_message` VALUES ('1130', '34393f779c4f4f90a8cb9e2469dd755d', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-27 17:52:20', null);
INSERT INTO `god_kefu_message` VALUES ('1131', '162de000767a41479214bc3ca4efe079', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-27 17:52:21', null);
INSERT INTO `god_kefu_message` VALUES ('1132', '7dd706951dfe43eb807a2471f9e4103a', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 17:53:47', null);
INSERT INTO `god_kefu_message` VALUES ('1133', '94d617226a674e6db7bfb40302080c36', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-27 18:00:43', null);
INSERT INTO `god_kefu_message` VALUES ('1134', '0e16c512c8424fd89a98d958171594ef', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 09:28:28', null);
INSERT INTO `god_kefu_message` VALUES ('1135', 'a329d61aa4c84419a1655189c997b435', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 09:28:37', null);
INSERT INTO `god_kefu_message` VALUES ('1136', '8505e135a8954e688921843f564cd44a', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '33333', '1', '2020-04-28 09:28:39', '2020-04-28 09:28:41');
INSERT INTO `god_kefu_message` VALUES ('1137', '0c02928727c945ecb7773e1cd5541483', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '2', '0', '[emoji:23]asdasd[emoji:12][emoji:12][emoji:16]', '1', '2020-04-28 09:29:07', '2020-04-28 10:35:01');
INSERT INTO `god_kefu_message` VALUES ('1138', '80a02717d168460cbc221a5729cad304', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-28 09:29:28', null);
INSERT INTO `god_kefu_message` VALUES ('1139', '325669f260e94d639c0b29dd957097ca', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-28 10:33:35', null);
INSERT INTO `god_kefu_message` VALUES ('1140', 'd6a3face1459445d94e77365825624b0', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 10:35:02', null);
INSERT INTO `god_kefu_message` VALUES ('1141', 'c914b7e085624465a52e2989fe05c984', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-28 10:36:38', null);
INSERT INTO `god_kefu_message` VALUES ('1142', '74bc98e791a04a97ba5ca9e51a822eca', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-28 10:39:20', null);
INSERT INTO `god_kefu_message` VALUES ('1143', 'ddd325e4c60c4f53aeb8ef20236d2b55', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-28 10:40:27', null);
INSERT INTO `god_kefu_message` VALUES ('1144', 'bdebfe61c6e54e93ab052081a4e4c0bd', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-28 10:40:40', null);
INSERT INTO `god_kefu_message` VALUES ('1145', '93e9d7a7ef994442ad87980b3b8007b2', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-28 10:43:41', null);
INSERT INTO `god_kefu_message` VALUES ('1146', 'd7cba48fdb7246678b44bc4b247781b4', '1', '1', '1y89bef50fc22943b3a747701f9a88e7c1', '0', '0', '结束语设置成功', '0', '2020-04-28 10:44:39', null);
INSERT INTO `god_kefu_message` VALUES ('1147', '43d836173df846e6b26af40cdda81012', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:42:43', null);
INSERT INTO `god_kefu_message` VALUES ('1148', '831d9f35a7ca4c5592a7072fc15c0d26', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:38', null);
INSERT INTO `god_kefu_message` VALUES ('1149', '68510f09d4e64a05a9e5889cb38cb01d', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:39', null);
INSERT INTO `god_kefu_message` VALUES ('1150', '2211a817e7d34b80b3b3e37ec2c18a1b', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:40', null);
INSERT INTO `god_kefu_message` VALUES ('1151', '2b7c969bccb14f2885c87533d227153e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:41', null);
INSERT INTO `god_kefu_message` VALUES ('1152', 'a23513c83cd44895968fc5bb592c0a71', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:41', null);
INSERT INTO `god_kefu_message` VALUES ('1153', 'e0d640f35e3949238fec54485d09b2a5', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:41', null);
INSERT INTO `god_kefu_message` VALUES ('1154', '808c2a2ce3444d75b63e118239b9f463', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:42', null);
INSERT INTO `god_kefu_message` VALUES ('1155', '988cc145419142c2870e5b333e191fce', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:42', null);
INSERT INTO `god_kefu_message` VALUES ('1156', '6576dabf09fd43a39661eaa1aae86298', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:42', null);
INSERT INTO `god_kefu_message` VALUES ('1157', 'c7fd08388eba4b65b168503703405803', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:43', null);
INSERT INTO `god_kefu_message` VALUES ('1158', 'f833bb0c9a034958baa0f99a60cd6523', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:43', null);
INSERT INTO `god_kefu_message` VALUES ('1159', 'f9bc96ae76f340958e6ccb500e6662f7', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:44', null);
INSERT INTO `god_kefu_message` VALUES ('1160', 'b6ee974874b449a3acc5ca644a5fc5b9', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:44', null);
INSERT INTO `god_kefu_message` VALUES ('1161', '01e21a2873bc49f5bf60ee40a9b95ed5', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:45', null);
INSERT INTO `god_kefu_message` VALUES ('1162', '6f8a640b46d1434a8a6621cd3cedd0f6', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:46', null);
INSERT INTO `god_kefu_message` VALUES ('1163', 'e13bd4329a544d7a947cb71fa7ef0033', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:46', null);
INSERT INTO `god_kefu_message` VALUES ('1164', '148182fb6a7c4e71b4e6d2e77b8f3de6', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:46', null);
INSERT INTO `god_kefu_message` VALUES ('1165', 'e37d3c0231a24c69962086eeca0e6cee', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:47', null);
INSERT INTO `god_kefu_message` VALUES ('1166', '66acade9fc4b4ced9ca496660bb0add3', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:47', null);
INSERT INTO `god_kefu_message` VALUES ('1167', 'a8ac024710f647ef87bfb6f562a21630', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:47', null);
INSERT INTO `god_kefu_message` VALUES ('1168', '4cbc5a9b16d341eaba774a36882a61dd', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:47', null);
INSERT INTO `god_kefu_message` VALUES ('1169', 'ea2c38da895846b8af7b8062e2b9913f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:48', null);
INSERT INTO `god_kefu_message` VALUES ('1170', '3ca8bdfbc7294236a91b70f73d64af3a', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:49', null);
INSERT INTO `god_kefu_message` VALUES ('1171', '397924af12a448e4b955a3cc5b865b14', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:49', null);
INSERT INTO `god_kefu_message` VALUES ('1172', 'a2ef2ad5f59b4630a2d7d8faa7d4c394', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:50', null);
INSERT INTO `god_kefu_message` VALUES ('1173', 'fd972b9879cf482b837ac9651c483461', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:50', null);
INSERT INTO `god_kefu_message` VALUES ('1174', 'daee18c6643d4b1ab49e76feac3cf0c8', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:51', null);
INSERT INTO `god_kefu_message` VALUES ('1175', 'ba09ab2c801d4133b83f1eabcd1127dd', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:51', null);
INSERT INTO `god_kefu_message` VALUES ('1176', '13817d8ab0784623aa5ebd64d232bbdc', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:52', null);
INSERT INTO `god_kefu_message` VALUES ('1177', 'f97582b332974d89a497985764c85243', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:53', null);
INSERT INTO `god_kefu_message` VALUES ('1178', '4fdcc86f5a8e4e9abdbd45e1499466ca', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:53', null);
INSERT INTO `god_kefu_message` VALUES ('1179', '4197dc1db2b646eca00b8f10070bc5d9', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:55', null);
INSERT INTO `god_kefu_message` VALUES ('1180', '244cf1dc8dfb4e6fa058f1f60e3e1fa0', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:55', null);
INSERT INTO `god_kefu_message` VALUES ('1181', '12c2bdca28a742a69a6bb9971dad692e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:56', null);
INSERT INTO `god_kefu_message` VALUES ('1182', '2898f87f6ca548adbfed68eb760bb6f8', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:57', null);
INSERT INTO `god_kefu_message` VALUES ('1183', '075481588ec3441184cfe7d658ce7308', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:57', null);
INSERT INTO `god_kefu_message` VALUES ('1184', '1f9a8580c1a34fc7952e0918bf366e4d', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:57', null);
INSERT INTO `god_kefu_message` VALUES ('1185', 'c14a2897f2cc49b39f719d21a1031e39', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:57', null);
INSERT INTO `god_kefu_message` VALUES ('1186', 'e68b17fc9ceb4ed68861046a0f49608d', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:57', null);
INSERT INTO `god_kefu_message` VALUES ('1187', 'b0da853a78c74549899869a6521d40cd', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:58', null);
INSERT INTO `god_kefu_message` VALUES ('1188', '600cffca325a470e88aa46ffa7e3b947', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:58', null);
INSERT INTO `god_kefu_message` VALUES ('1189', 'f272b567326a4d698898209dc1db82bb', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:58', null);
INSERT INTO `god_kefu_message` VALUES ('1190', '03921b4fe5d04313b2c1a85ab70db381', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:58', null);
INSERT INTO `god_kefu_message` VALUES ('1191', '36a574c90d3649608833bd7d935f287f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:43:59', null);
INSERT INTO `god_kefu_message` VALUES ('1192', '9d99ad8471934a618ea72560a4a13f7c', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:00', null);
INSERT INTO `god_kefu_message` VALUES ('1193', '7e656c93e08e4694ae082432b3ed982f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:00', null);
INSERT INTO `god_kefu_message` VALUES ('1194', 'a23b07a25bff446c8a70be7f8b41b22a', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:00', null);
INSERT INTO `god_kefu_message` VALUES ('1195', 'd856c0589cc94d848825be68d622d0cf', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:01', null);
INSERT INTO `god_kefu_message` VALUES ('1196', 'fb31cf0e8803413181da1e0443e3bae5', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:01', null);
INSERT INTO `god_kefu_message` VALUES ('1197', '22d96629ab324f748d09479f07011708', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:01', null);
INSERT INTO `god_kefu_message` VALUES ('1198', 'cf7f95b559b94c45b1f70552647c2a8b', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:02', null);
INSERT INTO `god_kefu_message` VALUES ('1199', 'b27eb376f676425286529ffa59bcd442', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:03', null);
INSERT INTO `god_kefu_message` VALUES ('1200', 'c2e150b6d0da4e56bbde75fa19307270', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:04', null);
INSERT INTO `god_kefu_message` VALUES ('1201', 'bd1d83fcdc3047f2825c13045392332c', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:05', null);
INSERT INTO `god_kefu_message` VALUES ('1202', '8e1df8de108c4dca9431b5a8e8b9ac7c', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:06', null);
INSERT INTO `god_kefu_message` VALUES ('1203', 'c7a7b82deda546ad97566a7b64ef952c', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:07', null);
INSERT INTO `god_kefu_message` VALUES ('1204', '9d6f832d29304e83b2699b68a8fa477f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:07', null);
INSERT INTO `god_kefu_message` VALUES ('1205', '78cf6c72791242bdab1650b4c44f3862', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:07', null);
INSERT INTO `god_kefu_message` VALUES ('1206', 'fa26aaa54ee9499da4b291d8d8fbaff8', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:07', null);
INSERT INTO `god_kefu_message` VALUES ('1207', '0d333ea5562f48c49b2646dde3974086', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:08', null);
INSERT INTO `god_kefu_message` VALUES ('1208', '4ade13f5f77340e3a1a5619414f62e68', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:09', null);
INSERT INTO `god_kefu_message` VALUES ('1209', 'd545a394ebed4ea1bccd8ba2a1a20fb3', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:09', null);
INSERT INTO `god_kefu_message` VALUES ('1210', '6ef936c7b186488ebc025fce001edc18', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:10', null);
INSERT INTO `god_kefu_message` VALUES ('1211', 'b9660a4262c6424185f20eb510c6c003', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:11', null);
INSERT INTO `god_kefu_message` VALUES ('1212', 'fb1775c73939407596911e007de21a75', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:11', null);
INSERT INTO `god_kefu_message` VALUES ('1213', 'ae60830a8ffe4ed3b6b14dd5dad260d3', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:44:12', null);
INSERT INTO `god_kefu_message` VALUES ('1214', '3b419dc8d82141e19f7765b708e72622', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '1', '0', '3333 ', '1', '2020-04-28 13:44:19', '2020-04-28 13:44:20');
INSERT INTO `god_kefu_message` VALUES ('1215', '4c77ea482d564770b9ab64c27f93d43f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:49:57', null);
INSERT INTO `god_kefu_message` VALUES ('1216', 'cd5fa66e019341f3bf4d546fd254d593', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:49:58', null);
INSERT INTO `god_kefu_message` VALUES ('1217', 'e1f4bb021a98408dac8bd44f33ffbf0b', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:49:59', null);
INSERT INTO `god_kefu_message` VALUES ('1218', 'a3fa47002a1341f4a0663c14c8b0c3b6', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:49:59', null);
INSERT INTO `god_kefu_message` VALUES ('1219', '17bab5850ab046b5852b4ea718cd2f8e', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:50:00', null);
INSERT INTO `god_kefu_message` VALUES ('1220', 'ecedb3963a5b400babd03d3a11871f08', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:50:01', null);
INSERT INTO `god_kefu_message` VALUES ('1221', '8642565d3c8a4f1996f4667ffed65b4f', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:50:01', null);
INSERT INTO `god_kefu_message` VALUES ('1222', '29692e6344814d75926d1c54bf93f3b2', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:50:02', null);
INSERT INTO `god_kefu_message` VALUES ('1223', '390f1c9f57534adbb0ace1111ca19cd4', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:50:03', null);
INSERT INTO `god_kefu_message` VALUES ('1224', '06e93bdf5e104f09bc633eaa03e98f70', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 13:51:27', null);
INSERT INTO `god_kefu_message` VALUES ('1225', 'bfa255ef12b547b2acc3e9d34c34e053', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 14:33:40', null);
INSERT INTO `god_kefu_message` VALUES ('1226', '158d8a0fb6594073922fdfd77544fda1', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 14:33:41', null);
INSERT INTO `god_kefu_message` VALUES ('1227', '35fa430db98643c2b2b88e064e789929', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 14:35:32', null);
INSERT INTO `god_kefu_message` VALUES ('1228', '9d1930f8524042d88bf5d4a56554a896', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 14:35:32', null);
INSERT INTO `god_kefu_message` VALUES ('1229', 'ce6f2ae8c29140e38697f3d3e5270748', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 14:38:48', null);
INSERT INTO `god_kefu_message` VALUES ('1230', '5171496435b34a8eba915bebb182f7cf', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 14:38:55', null);
INSERT INTO `god_kefu_message` VALUES ('1231', 'cc0dcd71e7f747528b7ce083ce6320c1', '1', '1', '1y05c39fdaf70c456ba0476905fe92fc16', '0', '0', '结束语设置成功', '0', '2020-04-28 14:38:55', null);
INSERT INTO `god_kefu_message` VALUES ('1232', '89afa1bbb0ce4a079128fc7b321cd14c', '1', '1', 'undefined', '0', '0', '歡迎各位牛逼的開發者大佬', '0', '2021-10-27 17:01:38', null);
INSERT INTO `god_kefu_message` VALUES ('1233', 'b1407440319a4cea970530c82c3e964e', '1', '1', '', '1', '0', 'l\n', '0', '2021-10-27 17:01:49', null);
INSERT INTO `god_kefu_message` VALUES ('1234', 'fced340f6bc140c08f9d6e5943d62556', '1', '1', '1y6d6fca0fa5c548d59a304fca9f15873e', '0', '0', '歡迎各位牛逼的開發者大佬', '0', '2021-10-27 17:02:04', null);
INSERT INTO `god_kefu_message` VALUES ('1235', 'f635b822196c41abb766f49f3135ce14', '1', '1', '1y6d6fca0fa5c548d59a304fca9f15873e', '0', '0', '歡迎各位牛逼的開發者大佬', '0', '2021-10-27 17:03:46', null);
INSERT INTO `god_kefu_message` VALUES ('1236', '5f3fffc659b9458190e1a01a38fe857d', '1', '1', '1y6d6fca0fa5c548d59a304fca9f15873e', '0', '0', '歡迎各位牛逼的開發者大佬', '0', '2021-10-27 17:07:15', null);
INSERT INTO `god_kefu_message` VALUES ('1237', 'c8ecc09f1a5144bd93850c89f12e9921', '1', '1', '1y6d6fca0fa5c548d59a304fca9f15873e', '0', '0', '歡迎各位牛逼的開發者大佬', '0', '2021-10-27 17:07:23', null);
INSERT INTO `god_kefu_message` VALUES ('1238', 'a0c67af49d764b2fbc979ba584e6561d', '1', '1', 'undefined', '0', '0', '你好', '0', '2021-11-02 09:30:22', null);
INSERT INTO `god_kefu_message` VALUES ('1239', '378dfcaa626844ba80ca54060ad865eb', '1', '1', '1yba44657481754393b0bdfdf40f4950f9', '0', '0', '你好', '0', '2021-11-02 09:30:52', null);
INSERT INTO `god_kefu_message` VALUES ('1240', 'fd0ebb88c1a043c9932219d2ae266d50', '1', '1', '1yba44657481754393b0bdfdf40f4950f9', '0', '0', '你好', '0', '2021-11-02 09:31:42', null);
INSERT INTO `god_kefu_message` VALUES ('1241', '4ba6afb4d24c46c4a78080e76da27a56', '1', '1', 'undefined', '0', '0', '你好', '0', '2021-11-02 09:31:42', null);
INSERT INTO `god_kefu_message` VALUES ('1242', '965dee44a84447db82f15af702e93767', '1', '1', '1yf97bb2a2b45045b095e663420d844da7', '0', '0', '你好', '0', '2021-11-02 09:31:46', null);
INSERT INTO `god_kefu_message` VALUES ('1243', '02ea7afcebb943beb1159b2aff160b18', '1', '1', '1yba44657481754393b0bdfdf40f4950f9', '1', '0', '你好啊\n', '1', '2021-11-02 09:31:50', '2021-11-02 09:34:02');
INSERT INTO `god_kefu_message` VALUES ('1244', '22e0a243e3794cf9a3e12ebcf462f59b', '1', '1', '1yba44657481754393b0bdfdf40f4950f9', '1', '0', '我是胖虎哦', '1', '2021-11-02 09:32:01', '2021-11-02 09:34:02');
INSERT INTO `god_kefu_message` VALUES ('1245', '5a4a8ed972af4646b80eba3e835cd89e', '1', '1', '1yba44657481754393b0bdfdf40f4950f9', '2', '0', '111', '0', '2021-11-02 09:34:08', null);
INSERT INTO `god_kefu_message` VALUES ('1246', 'db561c29ad9b41d7b5415a35aab75c65', '1', '1', '1yf97bb2a2b45045b095e663420d844da7', '0', '0', '你好', '0', '2021-11-02 09:35:42', null);
INSERT INTO `god_kefu_message` VALUES ('1247', '536fd789419b4770b98cc4f6133d1dfa', '1', '1', '1yf97bb2a2b45045b095e663420d844da7', '0', '0', '你好', '0', '2021-11-02 09:35:45', null);
INSERT INTO `god_kefu_message` VALUES ('1248', 'd36869d443d6499e91bf87a0f010398f', '1', '1', '1yf97bb2a2b45045b095e663420d844da7', '1', '0', '123456', '1', '2021-11-02 09:35:53', '2021-11-02 09:36:00');
INSERT INTO `god_kefu_message` VALUES ('1249', '0c2cc5ceae9d4c3d8b006c785f72a790', '1', '1', '1yf97bb2a2b45045b095e663420d844da7', '1', '0', '987454545', '1', '2021-11-02 09:36:08', '2021-11-02 09:36:15');
INSERT INTO `god_kefu_message` VALUES ('1250', 'ddfb6d3e24a4499b954299b84001de82', '1', '1', '1yf97bb2a2b45045b095e663420d844da7', '2', '0', '4664mkll.mkkm', '1', '2021-11-02 09:36:15', '2021-11-02 09:51:39');
INSERT INTO `god_kefu_message` VALUES ('1251', 'bd2d7103a59b48f6b77b3dbe3869fc2a', '1', '1', '1yf97bb2a2b45045b095e663420d844da7', '0', '0', '你好', '0', '2021-11-02 09:51:39', null);
INSERT INTO `god_kefu_message` VALUES ('1252', '3e0c3a667e824c9ca24e1f2d01307db4', '1', '1', '1yf97bb2a2b45045b095e663420d844da7', '2', '0', '00000000', '0', '2021-11-02 09:54:10', null);
INSERT INTO `god_kefu_message` VALUES ('1253', '9e57eab7df324534a092cfadb1838819', '1', '1', '1yf97bb2a2b45045b095e663420d844da7', '1', '0', '111111111111', '0', '2021-11-02 09:54:44', null);

-- ----------------------------
-- Table structure for god_kefu_seat
-- ----------------------------
DROP TABLE IF EXISTS `god_kefu_seat`;
CREATE TABLE `god_kefu_seat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '客服id',
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '云帐号id',
  `username` varchar(100) NOT NULL DEFAULT '' COMMENT '登录帐号',
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT '登录密码',
  `phone` varchar(15) NOT NULL DEFAULT '' COMMENT '联系电话',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '客服名称',
  `avatar` varchar(150) NOT NULL DEFAULT '' COMMENT '客服头像',
  `max_accept` smallint(6) NOT NULL DEFAULT '0' COMMENT '最大上线接入人数',
  `phrase_start` varchar(255) NOT NULL DEFAULT '' COMMENT '欢迎语',
  `phrase_end` varchar(255) NOT NULL DEFAULT '' COMMENT '结束语',
  `expired` int(11) NOT NULL DEFAULT '0' COMMENT '到期时间',
  `robot_id` int(10) NOT NULL DEFAULT '0' COMMENT '机器人id,0:表示未接入机器人',
  `weixin` varchar(80) NOT NULL DEFAULT '' COMMENT '微信号',
  `qq` varchar(15) NOT NULL DEFAULT '' COMMENT 'qq',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `introduce` varchar(150) NOT NULL DEFAULT '' COMMENT '介绍',
  `signature` varchar(150) NOT NULL DEFAULT '' COMMENT '签名',
  `last_login_ip` varchar(100) DEFAULT '' COMMENT '最后登录ip',
  `last_login_time` int(11) DEFAULT '0' COMMENT '最后登录时间',
  `online` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:在线 0:下线',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '-1:已删除 1:正常 0:非正常',
  `create_by` int(10) NOT NULL DEFAULT '0',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_by` int(10) NOT NULL DEFAULT '0',
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='客服座席';

-- ----------------------------
-- Records of god_kefu_seat
-- ----------------------------
INSERT INTO `god_kefu_seat` VALUES ('1', '1', 'huyao168', '83b40bca95f57b8cd2bc016cb458f240', '13269550058', 'panghu', 'http://thirdwx.qlogo.cn/mmopen/vi_32/WFmPw6MMlwMSPfkATf04cpQnficicaXrEhqYkicGD9FI1wdl6Eibsow7fnWFNOTp3icBcV6vpEn8nv0lwczOic8fbxmQ/132', '90', '你好', '吃了吗', '0', '0', 'huyao168', '28101686', '28101686@qq.com', '雷达业务', '来啊来啊', '', '0', '0', '1', '0', '2020-02-06 11:08:39', '0', '2021-11-03 11:09:52');
INSERT INTO `god_kefu_seat` VALUES ('2', '3', '', '', '', '123123', '/storage/uploads/avatars/YXwRcqXkRhwDzPDgSYngDoVWzAQWorR5NnYb85g5.jpeg', '23', '123', '123', '1582560000', '0', '', '', '', '', '', '', '0', '0', '-1', '0', '2020-02-25 15:27:26', '0', '2020-02-25 16:04:40');
INSERT INTO `god_kefu_seat` VALUES ('3', '3', '', '', '', '测试坐席', '/storage/uploads/avatars/jTNlPFX17dNSMtxXfIsCVHka4BCsDJvtgdcm1SbL.jpeg', '200', '你好', '再见', '1582560000', '0', '', '', '', '', '', '', '0', '0', '0', '0', '2020-02-25 15:47:31', '0', '2020-02-25 16:04:40');
INSERT INTO `god_kefu_seat` VALUES ('4', '3', '', '', '', '123123', '/storage/uploads/avatars/VT5wxniZn8mpXtmZSr3ekYdRNFhILMB6E8iH1lnH.jpeg', '1231', '23123', '123', '1582560000', '0', '', '', '', '', '', '', '0', '0', '1', '0', '2020-02-25 16:02:23', '0', '2020-02-25 16:04:40');
INSERT INTO `god_kefu_seat` VALUES ('5', '1', 'zctsir', 'fc10127c4f3adc427c2c7d88cd7ce678', '13203669321', '张成廷（测试）', '/storage/uploads/seat/avatars/Qk4MEgvBwTQok5iDoguwYperjsT67MxjDFZcAtzR.png', '10', '你好，请问有什么可以帮助你的', '欢迎再次题问', '0', '0', '13203669321', '392832743', '392832743@qq.com', '无所不知，无所不答', '无所不知，无所不答', '', '0', '0', '1', '0', '2021-11-04 08:55:40', '0', '2021-11-04 08:55:40');

-- ----------------------------
-- Table structure for god_kefu_seat_comment
-- ----------------------------
DROP TABLE IF EXISTS `god_kefu_seat_comment`;
CREATE TABLE `god_kefu_seat_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '云帐号id',
  `seat_id` int(10) NOT NULL DEFAULT '0' COMMENT '坐席id',
  `uuid` varchar(100) NOT NULL DEFAULT '' COMMENT '用户聊天uuid',
  `star` tinyint(1) NOT NULL DEFAULT '0' COMMENT '评星级别',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '评论内容',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COMMENT='坐席评论表';

-- ----------------------------
-- Records of god_kefu_seat_comment
-- ----------------------------
INSERT INTO `god_kefu_seat_comment` VALUES ('1', '1', '4', '6a28d0e0-f657-4bdc-8b16-45f05ce5cbe3', '5', '测试非常满意', '2020-02-21 01:14:25');
INSERT INTO `god_kefu_seat_comment` VALUES ('2', '1', '4', '6a28d0e0-f657-4bdc-8b16-45f05ce5cbe3', '5', '测试非常满意', '2020-02-21 01:14:32');
INSERT INTO `god_kefu_seat_comment` VALUES ('3', '1', '4', '6a28d0e0-f657-4bdc-8b16-45f05ce5cbe3', '5', '测试非常满意', '2020-02-21 01:15:02');
INSERT INTO `god_kefu_seat_comment` VALUES ('4', '1', '4', '6a28d0e0-f657-4bdc-8b16-45f05ce5cbe3', '0', '', '2020-02-21 01:15:29');
INSERT INTO `god_kefu_seat_comment` VALUES ('5', '1', '4', '6a28d0e0-f657-4bdc-8b16-45f05ce5cbe3', '4', '测试评价信息接口及功能', '2020-02-21 01:16:42');
INSERT INTO `god_kefu_seat_comment` VALUES ('6', '1', '4', '6a28d0e0-f657-4bdc-8b16-45f05ce5cbe3', '5', '这里是评价信息', '2020-02-21 09:44:08');
INSERT INTO `god_kefu_seat_comment` VALUES ('7', '1', '1', '', '0', '', '2020-03-08 14:40:58');
INSERT INTO `god_kefu_seat_comment` VALUES ('8', '1', '1', '', '0', '', '2020-03-08 14:41:00');
INSERT INTO `god_kefu_seat_comment` VALUES ('9', '1', '1', '', '0', '', '2020-03-08 14:42:21');
INSERT INTO `god_kefu_seat_comment` VALUES ('10', '1', '1', '', '0', '11', '2020-03-08 14:42:27');
INSERT INTO `god_kefu_seat_comment` VALUES ('11', '1', '1', '', '0', '', '2020-03-08 14:43:11');
INSERT INTO `god_kefu_seat_comment` VALUES ('12', '1', '1', '', '0', '1', '2020-03-08 14:43:18');
INSERT INTO `god_kefu_seat_comment` VALUES ('13', '1', '1', '', '3', '测试提交评价', '2020-03-08 14:44:16');
INSERT INTO `god_kefu_seat_comment` VALUES ('14', '1', '1', '', '4', '   ', '2020-03-08 14:44:27');
INSERT INTO `god_kefu_seat_comment` VALUES ('15', '1', '1', '', '0', '   ', '2020-03-08 14:44:49');
INSERT INTO `god_kefu_seat_comment` VALUES ('16', '1', '1', '', '0', '', '2020-03-08 14:46:48');
INSERT INTO `god_kefu_seat_comment` VALUES ('17', '1', '1', '', '0', ' ', '2020-03-08 14:47:16');
INSERT INTO `god_kefu_seat_comment` VALUES ('18', '1', '1', '', '5', '6518541', '2020-04-17 13:50:24');
INSERT INTO `god_kefu_seat_comment` VALUES ('19', '2', '20', '', '1', '222222', '2021-10-27 09:29:00');
INSERT INTO `god_kefu_seat_comment` VALUES ('20', '2', '20', '', '1', '222222', '2021-10-27 10:19:19');
INSERT INTO `god_kefu_seat_comment` VALUES ('21', '2', '20', '', '1', '222222', '2021-10-27 10:19:34');
INSERT INTO `god_kefu_seat_comment` VALUES ('22', '2', '20', '', '1', '222222', '2021-10-27 10:29:18');

-- ----------------------------
-- Table structure for god_kefu_seat_star
-- ----------------------------
DROP TABLE IF EXISTS `god_kefu_seat_star`;
CREATE TABLE `god_kefu_seat_star` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '云帐号id',
  `seat_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '客服座席id',
  `star1` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1星级',
  `star2` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '2星级',
  `star3` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '3星级',
  `star4` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '4星级',
  `star5` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '5星级',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_seatid` (`seat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='坐席评星表';

-- ----------------------------
-- Records of god_kefu_seat_star
-- ----------------------------
INSERT INTO `god_kefu_seat_star` VALUES ('2', '1', '1', '0', '0', '1', '0', '0', '2020-03-08 14:44:16', null);
INSERT INTO `god_kefu_seat_star` VALUES ('4', '1', '4', '5', '10', '15', '20', '30', '2020-02-21 01:14:25', '2020-02-25 16:15:06');
INSERT INTO `god_kefu_seat_star` VALUES ('5', '2', '20', '1', '0', '0', '0', '0', '2021-10-27 09:29:00', null);

-- ----------------------------
-- Table structure for god_notice_content
-- ----------------------------
DROP TABLE IF EXISTS `god_notice_content`;
CREATE TABLE `god_notice_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '云帐号id',
  `seat_id` int(10) NOT NULL DEFAULT '0' COMMENT '创建工作的客服id',
  `assign_seat_id` int(10) NOT NULL DEFAULT '0' COMMENT '指派客服id',
  `type_id` int(10) NOT NULL DEFAULT '0' COMMENT '分类id',
  `is_top` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `weight` tinyint(1) NOT NULL DEFAULT '0' COMMENT '权重 1:重要 0:普通',
  `title` varchar(150) NOT NULL DEFAULT '' COMMENT '工单标题',
  `content` text COMMENT '问题描述',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态0:尚未受理 1:受理中 2:等待回复 3:已解决 4:已关闭',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='工单内容表';

-- ----------------------------
-- Records of god_notice_content
-- ----------------------------
INSERT INTO `god_notice_content` VALUES ('1', '1', '1', '0', '16', '1', '1', '工单标题', '<p>工单内容工单内容工单内容工单内容</p>', '0', '2020-04-13 14:17:21', '2020-04-13 14:39:52');
INSERT INTO `god_notice_content` VALUES ('2', '1', '0', '1', '16', '0', '0', '工单标题工单标题工单标题', '<p>工单标题<span style=\"color: red\"></span>工单标题<span style=\"color: red\"></span>工单标题<span style=\"color: red\"></span>工单标题<span style=\"color: red\"></span></p>', '0', '2020-04-14 14:58:48', '2020-04-14 14:58:48');

-- ----------------------------
-- Table structure for god_notice_log
-- ----------------------------
DROP TABLE IF EXISTS `god_notice_log`;
CREATE TABLE `god_notice_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '云帐号id',
  `seat_id` int(10) NOT NULL DEFAULT '0' COMMENT '指派客服',
  `assign_seat_id` int(10) NOT NULL DEFAULT '0' COMMENT '指派客服',
  `content_id` int(10) NOT NULL DEFAULT '0' COMMENT '工单内容id',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='工单状态日志表';

-- ----------------------------
-- Records of god_notice_log
-- ----------------------------
INSERT INTO `god_notice_log` VALUES ('1', '1', '1', '0', '1', '备注备注备注', '2020-04-13 14:17:21', '2020-04-13 15:06:50');
INSERT INTO `god_notice_log` VALUES ('2', '1', '1', '1', '1', '阿斯蒂芬工', '2020-04-13 14:39:52', '2020-04-13 15:00:31');
INSERT INTO `god_notice_log` VALUES ('3', '1', '0', '1', '1', '工单标题工单标题工单标题', '2020-04-14 14:58:48', '2020-04-14 14:58:48');

-- ----------------------------
-- Table structure for god_notice_type
-- ----------------------------
DROP TABLE IF EXISTS `god_notice_type`;
CREATE TABLE `god_notice_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '云帐号id',
  `name` varchar(50) NOT NULL DEFAULT '',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COMMENT='工单类型表';

-- ----------------------------
-- Records of god_notice_type
-- ----------------------------
INSERT INTO `god_notice_type` VALUES ('16', '1', '商城', '2020-04-10 13:57:38', '2020-04-10 13:57:38');
INSERT INTO `god_notice_type` VALUES ('17', '1', '雷V', '2020-04-10 13:57:52', '2020-04-10 13:57:52');

-- ----------------------------
-- Table structure for god_robot
-- ----------------------------
DROP TABLE IF EXISTS `god_robot`;
CREATE TABLE `god_robot` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '云帐号id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '机器人名称',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='机器人类型';

-- ----------------------------
-- Records of god_robot
-- ----------------------------
INSERT INTO `god_robot` VALUES ('1', '1', '雷达课程销售2', '2020-04-13 15:41:11', '2020-04-13 15:41:30');

-- ----------------------------
-- Table structure for god_robot_corpus
-- ----------------------------
DROP TABLE IF EXISTS `god_robot_corpus`;
CREATE TABLE `god_robot_corpus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '云帐号id',
  `robot_id` int(10) NOT NULL DEFAULT '0' COMMENT '类型id',
  `question` varchar(150) NOT NULL DEFAULT '' COMMENT '问题',
  `answer` varchar(255) NOT NULL DEFAULT '' COMMENT '回复',
  `url` varchar(150) NOT NULL DEFAULT '' COMMENT '外部引用资料',
  `weight` smallint(6) NOT NULL DEFAULT '0' COMMENT '权重[0-10]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of god_robot_corpus
-- ----------------------------
INSERT INTO `god_robot_corpus` VALUES ('1', '1', '1', '语料标题111', '语料内容2222', 'http://kfuser.md.cn/kf_admin', '20', '2020-04-13 16:04:40', '2020-04-13 16:08:30');

-- ----------------------------
-- Table structure for god_user
-- ----------------------------
DROP TABLE IF EXISTS `god_user`;
CREATE TABLE `god_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '呢称',
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `appkey` char(40) NOT NULL DEFAULT '' COMMENT 'sha1(id+time+key)',
  `phone` char(11) NOT NULL DEFAULT '',
  `avatar` varchar(150) NOT NULL DEFAULT '' COMMENT '头像地址',
  `remember_token` varchar(100) DEFAULT NULL,
  `last_login_ip` varchar(100) NOT NULL DEFAULT '',
  `last_login_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态-1:删除 0:禁用 1:正常',
  `create_by` int(10) NOT NULL DEFAULT '0',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_by` int(10) NOT NULL DEFAULT '0',
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_appkey` (`appkey`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='云帐号用户';

-- ----------------------------
-- Records of god_user
-- ----------------------------
INSERT INTO `god_user` VALUES ('1', 'huyao', 'huyao', 'fc10127c4f3adc427c2c7d88cd7ce678', '841456039519b1ea7e3094c76fd314c09d6e2dde', '13269550058', '/storage/uploads/customer/avatars/wDyvqD0ihrYl6QF45lWXrFRmiXM6qhRs9ldmHl3C.jpeg', '02QG5wFAA9L7LEohrmOYrHBgA5ZI5O0BFzyZWU5JZiEHHebPRVJmOqMaTgN1', '', '0', '1', '0', '2020-04-14 14:52:18', '0', '2020-04-14 14:54:40');
INSERT INTO `god_user` VALUES ('2', '', 'zhongyifu', 'fc10127c4f3adc427c2c7d88cd7ce678', 'adsfads', '', '', 'y3yJLQI1GKf4gm4e0ZQEI7RDF2FElNObmHbLoR9unb7jDdOfL2SlseEt9KU7', '', '0', '1', '0', '2021-11-03 10:23:55', '0', '2021-11-03 10:23:55');
INSERT INTO `god_user` VALUES ('3', '彭鹏', 'pengpeng', 'fc10127c4f3adc427c2c7d88cd7ce678', '1', '17621502221', '/storage/uploads/customer/avatars/OXqK7U0Ysywd7ZZcF9K6k5H4gAUl7INNXLwBfL8q.png', 'zSbdyHl8xD05kw66qKU4HZck7jofZ9ePsIRL7xFNW3krUImJanTcNMr3XsNJ', '', '0', '1', '0', '2020-04-13 17:09:52', '0', '2020-04-13 17:09:52');
INSERT INTO `god_user` VALUES ('7', '', 'zhongyf', 'fc10127c4f3adc427c2c7d88cd7ce678', 'adsfasdf', '', '', 'OjnIex4YVfMtW094oIafhjgOFLl1162smWlxxPEypdMgCCAAtkCDGVBNEmpq', '', '0', '1', '0', '2021-11-03 10:23:57', '0', '2021-11-03 10:23:57');

-- ----------------------------
-- Table structure for god_user_company
-- ----------------------------
DROP TABLE IF EXISTS `god_user_company`;
CREATE TABLE `god_user_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '云帐号id',
  `province` smallint(6) NOT NULL DEFAULT '0' COMMENT '省',
  `city` smallint(6) NOT NULL DEFAULT '0' COMMENT '市',
  `region` smallint(6) NOT NULL DEFAULT '0' COMMENT '区',
  `title` varchar(150) NOT NULL DEFAULT '' COMMENT '公司名称',
  `product` varchar(150) NOT NULL DEFAULT '' COMMENT '主营业务|产品名称',
  `contact` varchar(20) NOT NULL DEFAULT '' COMMENT '联系人',
  `phone` varchar(11) NOT NULL DEFAULT '' COMMENT '联系电话',
  `address` varchar(150) NOT NULL DEFAULT '' COMMENT '地址',
  `desc` varchar(255) NOT NULL DEFAULT '' COMMENT '公司介绍',
  `create_time` timestamp NULL DEFAULT NULL,
  `modify_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='公司信息';

-- ----------------------------
-- Records of god_user_company
-- ----------------------------
INSERT INTO `god_user_company` VALUES ('10', '1', '1', '2', '14', '你好在要要', '枯要要要要', '胡瑶', '13269550058', '枯要要要要', '你好', '2020-03-19 17:40:16', '2020-04-13 16:13:02');
INSERT INTO `god_user_company` VALUES ('11', '3', '1979', '1980', '1988', '麦都', '公考教育', '彭鹏', '17621502221', '湖南长沙', '湖南', '2020-03-19 17:53:55', '2020-03-19 17:53:55');

-- ----------------------------
-- Table structure for god_user_login_log
-- ----------------------------
DROP TABLE IF EXISTS `god_user_login_log`;
CREATE TABLE `god_user_login_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `seat_id` int(10) unsigned NOT NULL DEFAULT '0',
  `login_time` timestamp NULL DEFAULT NULL COMMENT '登录时间',
  `login_ip` varchar(20) DEFAULT '' COMMENT '登录ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='登录日志表';

-- ----------------------------
-- Records of god_user_login_log
-- ----------------------------
INSERT INTO `god_user_login_log` VALUES ('1', '1', '0', '2020-04-13 17:19:14', '127.0.0.1');
INSERT INTO `god_user_login_log` VALUES ('2', '1', '1', '2020-04-13 17:19:33', '127.0.0.1');
INSERT INTO `god_user_login_log` VALUES ('3', '1', '1', '2020-04-13 17:24:04', '127.0.0.1');
INSERT INTO `god_user_login_log` VALUES ('4', '1', '0', '2020-04-14 14:56:27', '127.0.0.1');
INSERT INTO `god_user_login_log` VALUES ('5', '1', '0', '2020-04-14 16:39:13', '127.0.0.1');
INSERT INTO `god_user_login_log` VALUES ('6', '1', '0', '2020-04-14 16:39:24', '127.0.0.1');
INSERT INTO `god_user_login_log` VALUES ('7', '1', '0', '2021-10-20 13:57:49', '127.0.0.1');
INSERT INTO `god_user_login_log` VALUES ('8', '1', '0', '2021-10-20 13:58:20', '127.0.0.1');
INSERT INTO `god_user_login_log` VALUES ('9', '1', '0', '2021-10-20 14:35:39', '222.247.12.221');
INSERT INTO `god_user_login_log` VALUES ('10', '1', '0', '2021-10-20 15:23:44', '222.247.12.221');
INSERT INTO `god_user_login_log` VALUES ('11', '1', '0', '2021-10-20 15:25:04', '222.247.12.221');
INSERT INTO `god_user_login_log` VALUES ('12', '1', '0', '2021-10-20 15:34:32', '222.247.12.221');
INSERT INTO `god_user_login_log` VALUES ('13', '1', '0', '2021-11-02 09:56:44', '119.39.76.153');
INSERT INTO `god_user_login_log` VALUES ('14', '1', '0', '2021-11-02 10:37:45', '222.247.11.150');
INSERT INTO `god_user_login_log` VALUES ('15', '1', '0', '2021-11-02 10:45:12', '127.0.0.1');
INSERT INTO `god_user_login_log` VALUES ('16', '1', '0', '2021-11-02 11:35:16', '127.0.0.1');
INSERT INTO `god_user_login_log` VALUES ('17', '1', '0', '2021-11-03 09:40:32', '127.0.0.1');
INSERT INTO `god_user_login_log` VALUES ('18', '1', '0', '2021-11-03 10:21:45', '222.247.11.150');
INSERT INTO `god_user_login_log` VALUES ('19', '1', '0', '2021-11-03 15:23:07', '119.39.76.153');
INSERT INTO `god_user_login_log` VALUES ('20', '1', '0', '2021-11-04 08:43:46', '127.0.0.1');
INSERT INTO `god_user_login_log` VALUES ('21', '1', '5', '2021-11-04 10:02:50', '127.0.0.1');
INSERT INTO `god_user_login_log` VALUES ('22', '1', '5', '2021-11-04 10:03:16', '127.0.0.1');
INSERT INTO `god_user_login_log` VALUES ('23', '1', '5', '2021-11-04 10:03:38', '127.0.0.1');
INSERT INTO `god_user_login_log` VALUES ('24', '1', '0', '2021-11-04 10:03:49', '127.0.0.1');
INSERT INTO `god_user_login_log` VALUES ('25', '1', '0', '2021-11-04 10:33:26', '127.0.0.1');
INSERT INTO `god_user_login_log` VALUES ('26', '1', '5', '2021-11-04 10:44:56', '127.0.0.1');
INSERT INTO `god_user_login_log` VALUES ('27', '1', '5', '2021-11-04 10:46:25', '127.0.0.1');
INSERT INTO `god_user_login_log` VALUES ('28', '1', '0', '2021-11-04 10:49:34', '222.247.9.55');
INSERT INTO `god_user_login_log` VALUES ('29', '1', '5', '2021-11-04 11:18:49', '127.0.0.1');
INSERT INTO `god_user_login_log` VALUES ('30', '1', '0', '2021-11-04 11:23:09', '127.0.0.1');
INSERT INTO `god_user_login_log` VALUES ('31', '1', '5', '2021-11-04 11:23:28', '127.0.0.1');

-- ----------------------------
-- Table structure for god_vip_goods
-- ----------------------------
DROP TABLE IF EXISTS `god_vip_goods`;
CREATE TABLE `god_vip_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL DEFAULT '' COMMENT '名称',
  `price` int(11) NOT NULL DEFAULT '0' COMMENT '原价',
  `discount` float NOT NULL DEFAULT '0' COMMENT '折扣',
  `valid_days` smallint(6) NOT NULL DEFAULT '0' COMMENT '有效使用天数',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:正常 0:暂停',
  `create_by` int(6) NOT NULL DEFAULT '0' COMMENT '创建者',
  `create_time` timestamp NULL DEFAULT NULL,
  `modify_by` int(6) NOT NULL DEFAULT '0' COMMENT '修改者',
  `modify_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of god_vip_goods
-- ----------------------------
INSERT INTO `god_vip_goods` VALUES ('1', '基础版本/坐席', '30000', '1', '365', '1', '0', null, '0', null);
INSERT INTO `god_vip_goods` VALUES ('2', '高级版本/坐席', '50000', '1', '365', '1', '0', null, '0', null);

-- ----------------------------
-- Table structure for god_vip_order
-- ----------------------------
DROP TABLE IF EXISTS `god_vip_order`;
CREATE TABLE `god_vip_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `goods_id` int(10) NOT NULL DEFAULT '0' COMMENT '支付商品ID',
  `buy_num` smallint(6) NOT NULL DEFAULT '0' COMMENT '购买数量',
  `price` int(10) NOT NULL DEFAULT '0' COMMENT '订单支付金额,单位(分)',
  `order_sn` varchar(20) NOT NULL DEFAULT '' COMMENT '订单号',
  `valid_days` smallint(6) NOT NULL DEFAULT '0' COMMENT '时长(天)',
  `expired` int(11) NOT NULL DEFAULT '0' COMMENT '到期时间，时间戳',
  `pay_price` int(11) DEFAULT '0' COMMENT '订单支付金额',
  `pay_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:微信支付 2:支付宝',
  `pay_time` int(11) NOT NULL DEFAULT '0' COMMENT '支付时间',
  `pay_trade` varchar(100) NOT NULL DEFAULT '' COMMENT '支付交易号',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:待支付 1:已支付',
  `create_time` timestamp NULL DEFAULT NULL,
  `modify_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of god_vip_order
-- ----------------------------
