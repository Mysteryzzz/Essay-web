/*
Navicat MySQL Data Transfer

Source Server         : keti
Source Server Version : 50506
Source Host           : 10.25.112.10:3306
Source Database       : final

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-02-04 12:45:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_essay_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_essay_info`;
CREATE TABLE `t_essay_info` (
  `essay_id` int(11) NOT NULL AUTO_INCREMENT,
  `essay_name` varchar(30) DEFAULT NULL,
  `e_stu_name` varchar(30) DEFAULT NULL,
  `e_stu_no` varchar(30) NOT NULL,
  `essay_route` varchar(50) DEFAULT NULL,
  `essay_date` varchar(50) DEFAULT NULL,
  `essay_content` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`essay_id`,`e_stu_no`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_essay_info
-- ----------------------------
INSERT INTO `t_essay_info` VALUES ('41', '人工智能家庭管理', '刘小硕', 'S0006', null, '2018-02-04 12:36:34', '阿萨大');

-- ----------------------------
-- Table structure for `t_essay_name_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_essay_name_info`;
CREATE TABLE `t_essay_name_info` (
  `en_id` int(11) NOT NULL AUTO_INCREMENT,
  `en_tea_name` varchar(30) DEFAULT NULL,
  `en_essay_name` varchar(30) NOT NULL,
  `en_essay_content` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`en_id`,`en_essay_name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_essay_name_info
-- ----------------------------
INSERT INTO `t_essay_name_info` VALUES ('7', '董成昀', '人工智能家庭管理', '人终有一死，而有的人需要一点小小的bang助');
INSERT INTO `t_essay_name_info` VALUES ('8', '董成昀', '深度机器学习', 'e84654w65e4r65w4erqwerq');
INSERT INTO `t_essay_name_info` VALUES ('9', '陆柒柒', '测试bug', '测试bugvffff');

-- ----------------------------
-- Table structure for `t_man_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_man_info`;
CREATE TABLE `t_man_info` (
  `man_no` char(5) NOT NULL,
  `man_name` varchar(30) DEFAULT NULL,
  `man_pwd` varchar(30) DEFAULT NULL,
  `man_email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`man_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_man_info
-- ----------------------------
INSERT INTO `t_man_info` VALUES ('15010', '刘烁', '970621', '1062852837@163.com');
INSERT INTO `t_man_info` VALUES ('R0001', '周洁琼', '123456', null);
INSERT INTO `t_man_info` VALUES ('R0002', '程潇', '654321', null);

-- ----------------------------
-- Table structure for `t_select_course_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_select_course_info`;
CREATE TABLE `t_select_course_info` (
  `sc_id` int(11) NOT NULL AUTO_INCREMENT,
  `sc_stu_name` varchar(30) DEFAULT NULL,
  `sc_stu_no` varchar(30) NOT NULL,
  `sc_tea_name` varchar(30) DEFAULT NULL,
  `sc_tea_no` varchar(30) DEFAULT NULL,
  `sc_essay_name` varchar(30) DEFAULT NULL,
  `sc_checked` int(2) NOT NULL,
  PRIMARY KEY (`sc_id`,`sc_stu_no`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_select_course_info
-- ----------------------------
INSERT INTO `t_select_course_info` VALUES ('42', '刘小硕', 'S0006', '董成昀', 'T0001', '人工智能家庭管理', '1');

-- ----------------------------
-- Table structure for `t_student_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_student_info`;
CREATE TABLE `t_student_info` (
  `stu_no` char(5) NOT NULL,
  `stu_name` varchar(30) DEFAULT NULL,
  `stu_pwd` varchar(30) DEFAULT NULL,
  `stu_time` varchar(30) DEFAULT NULL,
  `stu_checked` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student_info
-- ----------------------------
INSERT INTO `t_student_info` VALUES ('S0001', '李大彪', '111111', '2018-02-15', '0');
INSERT INTO `t_student_info` VALUES ('S0002', '丁小鑫', '333333', '2017/12/03', '0');
INSERT INTO `t_student_info` VALUES ('S0003', '林小逸', '444444', '2017/12/25', '0');
INSERT INTO `t_student_info` VALUES ('S0004', '贺小霖', '555555', '2017/11/13', '0');
INSERT INTO `t_student_info` VALUES ('S0005', '刘烁', '970725', '', '0');
INSERT INTO `t_student_info` VALUES ('S0006', '刘小硕', '970725', null, '2');
INSERT INTO `t_student_info` VALUES ('S0007', '吴光兵', '123456', '', '2');

-- ----------------------------
-- Table structure for `t_tea_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_tea_info`;
CREATE TABLE `t_tea_info` (
  `tea_no` char(5) NOT NULL,
  `tea_name` varchar(30) DEFAULT NULL,
  `tea_pwd` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`tea_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_tea_info
-- ----------------------------
INSERT INTO `t_tea_info` VALUES ('T0001', '董成昀', '121212');
INSERT INTO `t_tea_info` VALUES ('T0002', '黄明俊', '343434');
INSERT INTO `t_tea_info` VALUES ('T0003', '杨金合', '666666');
INSERT INTO `t_tea_info` VALUES ('T0004', '陆柒柒', '123456');

-- ----------------------------
-- View structure for `view_essay_info`
-- ----------------------------
DROP VIEW IF EXISTS `view_essay_info`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `view_essay_info` AS select `en`.`essay_id` AS `essay_id`,`en`.`essay_name` AS `essay_name`,`en`.`e_stu_name` AS `e_stu_name`,`en`.`e_stu_no` AS `e_stu_no`,`en`.`essay_route` AS `essay_route`,`en`.`essay_date` AS `essay_date`,`en`.`essay_content` AS `essay_content`,`sc`.`sc_id` AS `sc_id`,`sc`.`sc_stu_name` AS `sc_stu_name`,`sc`.`sc_stu_no` AS `sc_stu_no`,`sc`.`sc_tea_name` AS `sc_tea_name`,`sc`.`sc_tea_no` AS `sc_tea_no`,`sc`.`sc_essay_name` AS `sc_essay_name`,`sc`.`sc_checked` AS `sc_checked`,`ts`.`stu_no` AS `stu_no`,`ts`.`stu_name` AS `stu_name`,`ts`.`stu_pwd` AS `stu_pwd`,`ts`.`stu_time` AS `stu_time`,`ts`.`stu_checked` AS `stu_checked` from ((`t_essay_info` `en` join `t_select_course_info` `sc` on(((`en`.`essay_name` = `sc`.`sc_essay_name`) and (`en`.`e_stu_name` = `sc`.`sc_stu_name`) and (`en`.`e_stu_no` = `sc`.`sc_stu_no`)))) join `t_student_info` `ts` on(((`ts`.`stu_name` = `en`.`e_stu_name`) and (`ts`.`stu_no` = `en`.`e_stu_no`)))) where (`sc`.`sc_checked` = '1') ;

-- ----------------------------
-- View structure for `v_passwordall`
-- ----------------------------
DROP VIEW IF EXISTS `v_passwordall`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_passwordall` AS select `t_student_info`.`stu_no` AS `stu_no`,`t_student_info`.`stu_name` AS `stu_name`,`t_student_info`.`stu_pwd` AS `stu_pwd`,`t_tea_info`.`tea_no` AS `tea_no`,`t_tea_info`.`tea_name` AS `tea_name`,`t_tea_info`.`tea_pwd` AS `tea_pwd`,`t_man_info`.`man_no` AS `man_no`,`t_man_info`.`man_name` AS `man_name`,`t_man_info`.`man_pwd` AS `man_pwd` from ((`t_man_info` join `t_tea_info`) join `t_student_info`) ;

-- ----------------------------
-- View structure for `v_stu_all`
-- ----------------------------
DROP VIEW IF EXISTS `v_stu_all`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v_stu_all` AS select `stu`.`stu_no` AS `stu_no`,`stu`.`stu_name` AS `stu_name`,`stu`.`stu_pwd` AS `stu_pwd`,`stu`.`stu_time` AS `stu_time`,`stu`.`stu_checked` AS `stu_checked`,`essay`.`essay_id` AS `essay_id`,`essay`.`essay_name` AS `essay_name`,`essay`.`e_stu_name` AS `e_stu_name`,`essay`.`e_stu_no` AS `e_stu_no`,`essay`.`essay_route` AS `essay_route`,`essay`.`essay_date` AS `essay_date`,`en`.`en_id` AS `en_id`,`en`.`en_tea_name` AS `en_tea_name`,`en`.`en_essay_name` AS `en_essay_name`,`en`.`en_essay_content` AS `en_essay_content`,`tea`.`tea_no` AS `tea_no`,`tea`.`tea_name` AS `tea_name`,`tea`.`tea_pwd` AS `tea_pwd`,`sc`.`sc_id` AS `sc_id`,`sc`.`sc_stu_name` AS `sc_stu_name`,`sc`.`sc_stu_no` AS `sc_stu_no`,`sc`.`sc_tea_name` AS `sc_tea_name`,`sc`.`sc_tea_no` AS `sc_tea_no`,`sc`.`sc_essay_name` AS `sc_essay_name` from ((((`t_student_info` `stu` join `t_essay_info` `essay` on(((`stu`.`stu_no` = `essay`.`e_stu_no`) and (`stu`.`stu_name` = `essay`.`e_stu_name`)))) join `t_essay_name_info` `en` on((`essay`.`essay_name` = `en`.`en_essay_name`))) join `t_tea_info` `tea` on((`en`.`en_tea_name` = `tea`.`tea_name`))) join `t_select_course_info` `sc` on(((`tea`.`tea_no` = `sc`.`sc_tea_no`) and (`tea`.`tea_name` = `sc`.`sc_tea_name`)))) ;
