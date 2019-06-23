/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50642
Source Host           : localhost:3306
Source Database       : db_mistake_management

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2019-05-17 13:30:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` char(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '0011111001', '123456');
INSERT INTO `admin` VALUES ('2', '0011111002', '0011111002');
INSERT INTO `admin` VALUES ('3', '0011111003', '0011111003');
INSERT INTO `admin` VALUES ('4', '0011111004', '0011111004');

-- ----------------------------
-- Table structure for mistake_question
-- ----------------------------
DROP TABLE IF EXISTS `mistake_question`;
CREATE TABLE `mistake_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `wrong_reason` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL,
  `wrong_choice` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `mistake_question_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  CONSTRAINT `mistake_question_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `test_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mistake_question
-- ----------------------------
INSERT INTO `mistake_question` VALUES ('1', '1', '17', '', '1', '组成原理', 'B');
INSERT INTO `mistake_question` VALUES ('2', '1', '16', '', '1', '组成原理', 'B');
INSERT INTO `mistake_question` VALUES ('3', '1', '18', '', '1', '操作系统', 'B');
INSERT INTO `mistake_question` VALUES ('4', '1', '12', '', '1', '组成原理', 'B');
INSERT INTO `mistake_question` VALUES ('5', '1', '14', '', '1', '组成原理', 'A');
INSERT INTO `mistake_question` VALUES ('6', '1', '8', '', '1', '组成原理', 'A');
INSERT INTO `mistake_question` VALUES ('7', '1', '82', '覆盖文件需要看参数', '2', '文件操作', 'B');
INSERT INTO `mistake_question` VALUES ('8', '1', '56', '', '2', '选择结构', 'C');
INSERT INTO `mistake_question` VALUES ('9', '1', '50', '', '2', '程序基础', 'B');
INSERT INTO `mistake_question` VALUES ('10', '1', '56', '标识符', '2', '选择结构', 'C');
INSERT INTO `mistake_question` VALUES ('11', '1', '78', '结构体', '2', '结构体与共用体', 'C');
INSERT INTO `mistake_question` VALUES ('12', '1', '84', '文件读写', '2', '文件操作', 'C');
INSERT INTO `mistake_question` VALUES ('13', '1', '58', '表达式', '2', '选择结构', 'D');
INSERT INTO `mistake_question` VALUES ('14', '1', '49', '基础', '2', '程序基础', 'C');
INSERT INTO `mistake_question` VALUES ('15', '1', '13', '', '1', '组成原理', 'C');
INSERT INTO `mistake_question` VALUES ('16', '1', '38', '', '1', '其他知识', 'B');
INSERT INTO `mistake_question` VALUES ('17', '1', '27', '', '1', '计算机网络', 'D');
INSERT INTO `mistake_question` VALUES ('18', '1', '18', '', '1', '操作系统', 'D');
INSERT INTO `mistake_question` VALUES ('19', '1', '17', '', '1', '组成原理', 'C');
INSERT INTO `mistake_question` VALUES ('20', '1', '32', '', '1', '操作系统', 'D');
INSERT INTO `mistake_question` VALUES ('21', '1', '29', '', '1', '其他知识', 'D');
INSERT INTO `mistake_question` VALUES ('22', '1', '28', '', '1', '计算机网络', 'D');
INSERT INTO `mistake_question` VALUES ('23', '1', '21', '', '1', '组成原理', 'D');
INSERT INTO `mistake_question` VALUES ('24', '1', '19', '', '1', '计算机网络', 'C');
INSERT INTO `mistake_question` VALUES ('25', '2', '72', '', '2', '数组', 'C');
INSERT INTO `mistake_question` VALUES ('26', '2', '78', '', '2', '结构体与共用体', 'D');
INSERT INTO `mistake_question` VALUES ('27', '2', '78', '', '2', '结构体与共用体', 'D');
INSERT INTO `mistake_question` VALUES ('28', '2', '73', '', '2', '数组', 'A');
INSERT INTO `mistake_question` VALUES ('29', '2', '33', '', '1', '计算机网络', 'A');
INSERT INTO `mistake_question` VALUES ('30', '2', '75', '', '2', '数组', 'B');
INSERT INTO `mistake_question` VALUES ('31', '2', '71', '', '2', '数组', 'B');
INSERT INTO `mistake_question` VALUES ('32', '2', '7', '', '1', '其他知识', 'D');
INSERT INTO `mistake_question` VALUES ('33', '2', '41', '', '1', '其他知识', 'C');
INSERT INTO `mistake_question` VALUES ('34', '2', '15', '', '1', '组成原理', 'D');
INSERT INTO `mistake_question` VALUES ('35', '2', '18', '', '1', '操作系统', 'D');
INSERT INTO `mistake_question` VALUES ('36', '2', '32', '', '1', '操作系统', 'A');
INSERT INTO `mistake_question` VALUES ('37', '2', '72', '', '2', '数组', 'B');
INSERT INTO `mistake_question` VALUES ('38', '2', '72', '', '2', '数组', 'B');
INSERT INTO `mistake_question` VALUES ('39', '2', '29', '', '1', '其他知识', 'D');
INSERT INTO `mistake_question` VALUES ('40', '2', '23', '', '1', '其他知识', 'C');
INSERT INTO `mistake_question` VALUES ('41', '2', '21', '', '1', '组成原理', 'B');
INSERT INTO `mistake_question` VALUES ('42', '2', '62', '', '2', '循环结构', 'B');
INSERT INTO `mistake_question` VALUES ('43', '2', '62', '', '2', '循环结构', 'A');
INSERT INTO `mistake_question` VALUES ('44', '2', '81', '', '2', '文件操作', 'B');
INSERT INTO `mistake_question` VALUES ('45', '2', '39', '', '1', '其他知识', 'A');
INSERT INTO `mistake_question` VALUES ('46', '2', '11', '', '1', '组成原理', 'A');
INSERT INTO `mistake_question` VALUES ('47', '2', '19', '', '1', '计算机网络', 'B');
INSERT INTO `mistake_question` VALUES ('48', '2', '32', '', '1', '操作系统', 'A');
INSERT INTO `mistake_question` VALUES ('49', '2', '9', '', '1', '组成原理', 'D');
INSERT INTO `mistake_question` VALUES ('50', '2', '33', '', '1', '计算机网络', 'A');
INSERT INTO `mistake_question` VALUES ('51', '2', '5', '', '1', '组成原理', 'D');
INSERT INTO `mistake_question` VALUES ('52', '2', '28', '', '1', '计算机网络', 'C');
INSERT INTO `mistake_question` VALUES ('53', '2', '44', '', '1', '操作系统', 'D');
INSERT INTO `mistake_question` VALUES ('54', '2', '17', '', '1', '组成原理', 'D');
INSERT INTO `mistake_question` VALUES ('55', '2', '45', '', '1', '计算机网络', 'B');
INSERT INTO `mistake_question` VALUES ('56', '2', '40', '', '1', '其他知识', 'D');
INSERT INTO `mistake_question` VALUES ('57', '2', '46', '', '1', '计算机网络', null);
INSERT INTO `mistake_question` VALUES ('58', '2', '76', '', '2', '结构体与共用体', 'A');
INSERT INTO `mistake_question` VALUES ('59', '2', '16', '', '1', '组成原理', 'A');
INSERT INTO `mistake_question` VALUES ('60', '2', '13', '', '1', '组成原理', 'D');
INSERT INTO `mistake_question` VALUES ('61', '2', '29', '', '1', '其他知识', 'A');
INSERT INTO `mistake_question` VALUES ('62', '2', '36', '', '1', '其他知识', 'B');
INSERT INTO `mistake_question` VALUES ('63', '2', '14', '', '1', '组成原理', 'A');
INSERT INTO `mistake_question` VALUES ('64', '2', '44', '', '1', '操作系统', 'D');
INSERT INTO `mistake_question` VALUES ('65', '2', '21', '', '1', '组成原理', 'B');
INSERT INTO `mistake_question` VALUES ('66', '2', '15', '', '1', '组成原理', 'D');
INSERT INTO `mistake_question` VALUES ('67', '2', '19', '', '1', '计算机网络', 'B');
INSERT INTO `mistake_question` VALUES ('68', '2', '49', '', '2', '程序基础', 'D');
INSERT INTO `mistake_question` VALUES ('69', '2', '40', '', '1', '其他知识', 'A');
INSERT INTO `mistake_question` VALUES ('70', '2', '18', '', '1', '操作系统', 'A');
INSERT INTO `mistake_question` VALUES ('71', '2', '41', '', '1', '其他知识', 'C');
INSERT INTO `mistake_question` VALUES ('72', '2', '25', '', '1', '操作系统', 'A');
INSERT INTO `mistake_question` VALUES ('73', '2', '29', '', '1', '其他知识', 'A');
INSERT INTO `mistake_question` VALUES ('74', '2', '31', '', '1', '操作系统', 'D');
INSERT INTO `mistake_question` VALUES ('75', '2', '24', '', '1', '组成原理', 'D');
INSERT INTO `mistake_question` VALUES ('76', '2', '11', '', '1', '组成原理', 'D');
INSERT INTO `mistake_question` VALUES ('77', '2', '44', '', '1', '操作系统', 'D');
INSERT INTO `mistake_question` VALUES ('78', '6', '23', '', '1', '其他知识', 'C');
INSERT INTO `mistake_question` VALUES ('79', '6', '31', '', '1', '操作系统', 'C');
INSERT INTO `mistake_question` VALUES ('80', '6', '35', '', '1', '计算机网络', 'C');
INSERT INTO `mistake_question` VALUES ('81', '6', '34', '', '1', '计算机网络', 'C');
INSERT INTO `mistake_question` VALUES ('82', '6', '13', '', '1', '组成原理', 'C');
INSERT INTO `mistake_question` VALUES ('83', '6', '32', '', '1', '操作系统', 'C');
INSERT INTO `mistake_question` VALUES ('84', '2', '44', '', '1', '操作系统', 'D');
INSERT INTO `mistake_question` VALUES ('85', '2', '89', '', '1', '计算机网络', 'D');
INSERT INTO `mistake_question` VALUES ('86', '2', '87', '', '1', '组成原理', 'C');
INSERT INTO `mistake_question` VALUES ('87', '1', '55', '', '2', '程序基础', 'A');
INSERT INTO `mistake_question` VALUES ('88', '1', '66', '', '2', '指针', 'D');
INSERT INTO `mistake_question` VALUES ('89', '1', '72', '', '2', '数组', 'D');
INSERT INTO `mistake_question` VALUES ('90', '1', '52', '', '2', '程序基础', 'B');
INSERT INTO `mistake_question` VALUES ('91', '1', '22', '', '1', '计算机网络', 'B');
INSERT INTO `mistake_question` VALUES ('92', '1', '5', '', '1', '组成原理', 'A');
INSERT INTO `mistake_question` VALUES ('93', '1', '39', '', '1', '其他知识', 'A');
INSERT INTO `mistake_question` VALUES ('94', '1', '8', '', '1', '组成原理', 'D');
INSERT INTO `mistake_question` VALUES ('95', '1', '25', '', '1', '操作系统', 'B');
INSERT INTO `mistake_question` VALUES ('96', '1', '87', '', '1', '组成原理', 'C');
INSERT INTO `mistake_question` VALUES ('97', '1', '55', '', '2', '程序基础', 'C');
INSERT INTO `mistake_question` VALUES ('98', '1', '85', '', '2', '文件操作', 'B');
INSERT INTO `mistake_question` VALUES ('99', '1', '70', '', '2', '指针', 'B');
INSERT INTO `mistake_question` VALUES ('100', '1', '82', '', '2', '文件操作', 'D');
INSERT INTO `mistake_question` VALUES ('101', '1', '66', '', '2', '指针', 'D');
INSERT INTO `mistake_question` VALUES ('102', '1', '60', '', '2', '选择结构', 'D');
INSERT INTO `mistake_question` VALUES ('103', '1', '67', '', '2', '指针', 'A');
INSERT INTO `mistake_question` VALUES ('104', '1', '75', '', '2', '数组', 'D');
INSERT INTO `mistake_question` VALUES ('105', '1', '77', '', '2', '结构体与共用体', 'C');
INSERT INTO `mistake_question` VALUES ('106', '2', '74', '', '2', '数组', 'C');
INSERT INTO `mistake_question` VALUES ('107', '2', '54', '', '2', '程序基础', 'B');
INSERT INTO `mistake_question` VALUES ('108', '2', '81', '', '2', '文件操作', 'B');
INSERT INTO `mistake_question` VALUES ('109', '2', '61', '', '2', '循环结构', 'D');
INSERT INTO `mistake_question` VALUES ('110', '2', '57', '', '2', '选择结构', 'B');
INSERT INTO `mistake_question` VALUES ('111', '2', '70', '', '2', '指针', 'D');
INSERT INTO `mistake_question` VALUES ('112', '2', '47', '', '2', '程序基础', 'C');
INSERT INTO `mistake_question` VALUES ('113', '2', '72', '', '2', '数组', 'D');
INSERT INTO `mistake_question` VALUES ('114', '2', '52', '', '2', '程序基础', 'D');
INSERT INTO `mistake_question` VALUES ('115', '2', '55', '', '2', '程序基础', 'D');
INSERT INTO `mistake_question` VALUES ('116', '2', '78', '', '2', '结构体与共用体', 'D');
INSERT INTO `mistake_question` VALUES ('117', '2', '49', '', '2', '程序基础', 'D');
INSERT INTO `mistake_question` VALUES ('118', '2', '75', '', '2', '数组', 'D');
INSERT INTO `mistake_question` VALUES ('119', '2', '75', '', '2', '数组', 'D');
INSERT INTO `mistake_question` VALUES ('120', '2', '76', '', '2', '结构体与共用体', 'D');
INSERT INTO `mistake_question` VALUES ('121', '2', '78', '', '2', '结构体与共用体', 'C');
INSERT INTO `mistake_question` VALUES ('122', '2', '79', '', '2', '结构体与共用体', 'D');
INSERT INTO `mistake_question` VALUES ('123', '2', '69', '', '2', '指针', 'C');
INSERT INTO `mistake_question` VALUES ('124', '2', '73', '', '2', '数组', 'D');
INSERT INTO `mistake_question` VALUES ('125', '1', '59', '', '2', '选择结构', 'B');
INSERT INTO `mistake_question` VALUES ('126', '1', '71', '', '2', '数组', 'B');
INSERT INTO `mistake_question` VALUES ('127', '1', '60', '', '2', '选择结构', 'D');
INSERT INTO `mistake_question` VALUES ('128', '1', '80', '', '2', '结构体与共用体', 'B');
INSERT INTO `mistake_question` VALUES ('129', '1', '83', '', '2', '文件操作', 'D');
INSERT INTO `mistake_question` VALUES ('130', '1', '58', '', '2', '选择结构', 'D');
INSERT INTO `mistake_question` VALUES ('131', '1', '73', '', '2', '数组', 'C');
INSERT INTO `mistake_question` VALUES ('132', '1', '51', '', '2', '程序基础', 'B');
INSERT INTO `mistake_question` VALUES ('133', '1', '5', '', '1', '组成原理', 'C');
INSERT INTO `mistake_question` VALUES ('134', '1', '6', '', '1', '组成原理', 'D');
INSERT INTO `mistake_question` VALUES ('135', '1', '24', '', '1', '组成原理', 'D');
INSERT INTO `mistake_question` VALUES ('136', '2', '13', '', '1', '组成原理', 'C');
INSERT INTO `mistake_question` VALUES ('137', '2', '13', '', '1', '组成原理', 'C');
INSERT INTO `mistake_question` VALUES ('138', '2', '47', '', '2', '程序基础', 'C');
INSERT INTO `mistake_question` VALUES ('139', '2', '47', '', '2', '程序基础', 'C');
INSERT INTO `mistake_question` VALUES ('140', '11', '37', '', '1', '其他知识', 'D');
INSERT INTO `mistake_question` VALUES ('141', '11', '10', '', '1', '组成原理', 'B');
INSERT INTO `mistake_question` VALUES ('142', '11', '25', '', '1', '操作系统', 'A');
INSERT INTO `mistake_question` VALUES ('143', '11', '14', '', '1', '组成原理', 'D');
INSERT INTO `mistake_question` VALUES ('144', '8', '29', '', '1', '其他知识', 'A');
INSERT INTO `mistake_question` VALUES ('145', '8', '37', '', '1', '其他知识', 'C');
INSERT INTO `mistake_question` VALUES ('146', '8', '42', '', '1', '操作系统', 'C');
INSERT INTO `mistake_question` VALUES ('147', '8', '8', '', '1', '组成原理', 'B');
INSERT INTO `mistake_question` VALUES ('148', '8', '99', '', '2', '循环', 'B');
INSERT INTO `mistake_question` VALUES ('149', '8', '52', '', '2', '程序基础', 'B');
INSERT INTO `mistake_question` VALUES ('150', '8', '69', '', '2', '指针', 'C');
INSERT INTO `mistake_question` VALUES ('151', '8', '95', '', '2', '循环', 'C');
INSERT INTO `mistake_question` VALUES ('152', '8', '26', '', '1', '操作系统', 'A');
INSERT INTO `mistake_question` VALUES ('153', '8', '31', '', '1', '操作系统', 'C');
INSERT INTO `mistake_question` VALUES ('154', '8', '13', '', '1', '组成原理', 'C');
INSERT INTO `mistake_question` VALUES ('155', '8', '29', '', '1', '其他知识', 'C');

-- ----------------------------
-- Table structure for question_frequency
-- ----------------------------
DROP TABLE IF EXISTS `question_frequency`;
CREATE TABLE `question_frequency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `answer_times` int(11) DEFAULT NULL,
  `error_times` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `question_frequency_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `test_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_frequency
-- ----------------------------
INSERT INTO `question_frequency` VALUES ('1', '17', '1', '0');
INSERT INTO `question_frequency` VALUES ('2', '16', '1', '0');
INSERT INTO `question_frequency` VALUES ('3', '18', '1', '0');
INSERT INTO `question_frequency` VALUES ('4', '12', '1', '0');
INSERT INTO `question_frequency` VALUES ('5', '14', '1', '0');
INSERT INTO `question_frequency` VALUES ('6', '8', '1', '0');
INSERT INTO `question_frequency` VALUES ('7', '82', '1', '0');
INSERT INTO `question_frequency` VALUES ('8', '56', '1', '0');
INSERT INTO `question_frequency` VALUES ('9', '50', '1', '0');
INSERT INTO `question_frequency` VALUES ('10', '78', '1', '0');
INSERT INTO `question_frequency` VALUES ('11', '84', '1', '0');
INSERT INTO `question_frequency` VALUES ('12', '58', '1', '0');
INSERT INTO `question_frequency` VALUES ('13', '49', '1', '0');
INSERT INTO `question_frequency` VALUES ('14', '13', '1', '0');
INSERT INTO `question_frequency` VALUES ('15', '38', '1', '0');
INSERT INTO `question_frequency` VALUES ('16', '27', '1', '0');
INSERT INTO `question_frequency` VALUES ('17', '32', '1', '0');
INSERT INTO `question_frequency` VALUES ('18', '29', '1', '0');
INSERT INTO `question_frequency` VALUES ('19', '28', '1', '0');
INSERT INTO `question_frequency` VALUES ('20', '21', '1', '0');
INSERT INTO `question_frequency` VALUES ('21', '19', '1', '0');
INSERT INTO `question_frequency` VALUES ('22', '72', '1', '0');
INSERT INTO `question_frequency` VALUES ('23', '73', '1', '0');
INSERT INTO `question_frequency` VALUES ('24', '33', '1', '0');
INSERT INTO `question_frequency` VALUES ('25', '75', '1', '0');
INSERT INTO `question_frequency` VALUES ('26', '71', '1', '0');
INSERT INTO `question_frequency` VALUES ('27', '7', '1', '0');
INSERT INTO `question_frequency` VALUES ('28', '41', '1', '0');
INSERT INTO `question_frequency` VALUES ('29', '15', '1', '0');
INSERT INTO `question_frequency` VALUES ('30', '23', '1', '0');
INSERT INTO `question_frequency` VALUES ('31', '62', '1', '0');
INSERT INTO `question_frequency` VALUES ('32', '81', '1', '0');
INSERT INTO `question_frequency` VALUES ('33', '39', '1', '0');
INSERT INTO `question_frequency` VALUES ('34', '11', '1', '0');
INSERT INTO `question_frequency` VALUES ('35', '9', '1', '0');
INSERT INTO `question_frequency` VALUES ('36', '5', '1', '0');
INSERT INTO `question_frequency` VALUES ('37', '44', '1', '0');
INSERT INTO `question_frequency` VALUES ('38', '45', '1', '0');
INSERT INTO `question_frequency` VALUES ('39', '40', '1', '0');
INSERT INTO `question_frequency` VALUES ('40', '46', '1', '0');
INSERT INTO `question_frequency` VALUES ('41', '76', '1', '0');
INSERT INTO `question_frequency` VALUES ('42', '36', '1', '0');
INSERT INTO `question_frequency` VALUES ('43', '25', '1', '0');
INSERT INTO `question_frequency` VALUES ('44', '31', '1', '0');
INSERT INTO `question_frequency` VALUES ('45', '24', '4', '0');
INSERT INTO `question_frequency` VALUES ('46', '35', '1', '0');
INSERT INTO `question_frequency` VALUES ('47', '34', '1', '0');
INSERT INTO `question_frequency` VALUES ('48', '88', '0', '0');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` char(8) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sex` char(2) DEFAULT '男',
  `name` varchar(10) DEFAULT NULL,
  `institute` varchar(20) DEFAULT NULL,
  `major` varchar(30) DEFAULT NULL,
  `class_number` int(11) DEFAULT NULL,
  `last_login_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '15030127', '111111', '女', '六分发', '计算机学院', '计算机科学与技术', '2', '2019-04-08');
INSERT INTO `student` VALUES ('2', '15030128', '11111111', '男', '王春花', '计算机学院', '计算机科学与技术', '2', '2019-04-09');
INSERT INTO `student` VALUES ('3', '15030129', '15030129', '男', '李佳伟', '信息学院', '通信工程', '1', '2019-01-02');
INSERT INTO `student` VALUES ('5', '15030130', '15030130', '男', '李明', '信息学院', '自动化', '1', '2019-04-03');
INSERT INTO `student` VALUES ('6', '15030131', '15030131', '男', '的方法', '信息学院', '通信工程', '2', '2019-03-15');
INSERT INTO `student` VALUES ('7', '15030132', '15030132', '男', '王明', '信息学院', '自动化', '1', '2019-04-01');
INSERT INTO `student` VALUES ('8', '15030133', '15030133', '男', '张明', '计算机学院', '软件工程', '2', '2019-05-15');
INSERT INTO `student` VALUES ('10', '15030151', '15030151', '男', '某某', '无', '无', '0', '2019-03-14');
INSERT INTO `student` VALUES ('11', '15030155', '111111', '男', '六六', '计算机学院', '软件工程', '1', '2019-04-10');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` char(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sex` char(2) DEFAULT '男',
  `institute` varchar(20) DEFAULT NULL,
  `research_direction` varchar(50) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '9910001001', '111111', '女', '计算机学院', '深度学习', '张建');
INSERT INTO `teacher` VALUES ('2', '9910001002', '9910001002', '女', '计算机学院', '区块链，大数据', '李芳润');
INSERT INTO `teacher` VALUES ('3', '9910001003', '9910001003', '男', '计算机学院', '软件测试', '李洪');
INSERT INTO `teacher` VALUES ('4', '9910001004', '9910001004', '男', '计算机学院', '物联网', '王洪');
INSERT INTO `teacher` VALUES ('5', '9910001005', '9910001005', '男', '无', '无', '张洪');
INSERT INTO `teacher` VALUES ('6', '9910001006', '9910001006', '女', '无', '无', '李明明');
INSERT INTO `teacher` VALUES ('7', '9910001007', '9910001007', '女', '无', '无', '李华华');
INSERT INTO `teacher` VALUES ('9', '9910001009', '9910001009', '男', '无', '无', '某某');

-- ----------------------------
-- Table structure for test_question
-- ----------------------------
DROP TABLE IF EXISTS `test_question`;
CREATE TABLE `test_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `subject` varchar(20) DEFAULT NULL,
  `stem` text,
  `choice_a` varchar(255) DEFAULT NULL,
  `choice_b` varchar(255) DEFAULT NULL,
  `choice_c` varchar(255) DEFAULT NULL,
  `choice_d` varchar(255) DEFAULT NULL,
  `correct_choice` char(1) DEFAULT NULL,
  `tip` varchar(255) DEFAULT NULL,
  `answer_times` int(11) NOT NULL,
  `error_times` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_id` (`teacher_id`),
  CONSTRAINT `test_question_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_question
-- ----------------------------
INSERT INTO `test_question` VALUES ('5', '1', '1', '组成原理', '下列叙述中，正确的是()', 'CPU能直接读取硬盘上的数据', 'CPU能直接存取内存存储', 'CPU由存储器、运算器和控制器组成', 'CPU主要用来存储程序和数据', 'B', 'CPU的作用', '7', '2');
INSERT INTO `test_question` VALUES ('6', '1', '1', '组成原理', '1946年首台电子数字计算机ENIAC问世后，冯•诺依曼（Von Neumann）在研制EDVAC计算机时，提出两个重要的改进，它们是()', '引入CPU和内存存储的概念', '采用机器语言和十六进制', '采用二进制和存储程序控制的概念', '采用ASCII编码系统', 'C', '计算机历史', '5', '1');
INSERT INTO `test_question` VALUES ('7', '1', '1', '其他知识', '汇编语言是一种()', '依赖于计算机的低级程序设计语言', '计算机能直接执行的程序设计语言', '独立于计算机的高级程序设计语言', '面向问题的程序设计语言', 'A', '编程语言', '4', '1');
INSERT INTO `test_question` VALUES ('8', '1', '1', '组成原理', '假设某台式计算机的内存储器容量为128MB，硬盘容量为10GB。硬盘容量是内存容量的()', '40倍', '60倍', '80倍', '100倍', 'C', '进制转换', '7', '2');
INSERT INTO `test_question` VALUES ('9', '1', '1', '组成原理', '计算机的硬件主要包括：中央处理器（CPU）、存储器、输出设备和()', '键盘', '鼠标', '输入设备', '显示器', 'C', '计算机硬件组成', '3', '1');
INSERT INTO `test_question` VALUES ('10', '1', '1', '组成原理', '20GB的硬盘表示容量约为()', '20亿个字节', '20亿个二进制位', '200亿个字节', '200亿个二进制位', 'C', '进制转换', '6', '1');
INSERT INTO `test_question` VALUES ('11', '1', '1', '组成原理', '在一个非零无符号二进制整数之后添加一个0，则此数的值为原数的()', '4倍', '2倍', '1/2倍', '1/4倍', 'B', '进制转换', '4', '1');
INSERT INTO `test_question` VALUES ('12', '1', '1', '组成原理', 'Pentium（奔腾）微机的字长是()', '8位', '16位', '32位', '64位', 'C', '组成原理常识', '3', '1');
INSERT INTO `test_question` VALUES ('13', '1', '1', '组成原理', '下列关于ASCII编码的叙述中，正确的是()', '一个字符的标准ASCII码占一个字节，其最高二进制位总为1', '所有大写英文字母的ASCII码值都小于小写英文字母’a’的ASCII码值', '所有大写英文字母的ASCII码值都大于小写英文字母’a’的ASCII码值', '标准ASCII码表有256个不同的字符编码', 'B', 'ASCII编码', '4', '3');
INSERT INTO `test_question` VALUES ('14', '1', '1', '组成原理', '在CD光盘上标记有“CD-RW”字样，“RW”标记表明该光盘是()', '只能写入一次，可以反复读出的一次性写入光盘', '可多次擦除型光盘', '只能读出，不能写入的只读光盘', '其驱动器单倍速为1350KB/S的高密度可读写光盘', 'B', '字母表示', '3', '1');
INSERT INTO `test_question` VALUES ('15', '1', '1', '组成原理', '一个字长为5位的无符号二进制数能表示的十进制数值范围是()', '1~32', '0~31', '1~31', '0~32', 'B', '进制转换', '5', '1');
INSERT INTO `test_question` VALUES ('16', '1', '1', '组成原理', '计算机病毒是指“能够侵入计算机系统并在计算机系统中潜伏、传播，破坏系统正常工作的一种具有繁殖能力的()', '流行性感冒病毒', '特殊小程序', '特殊微生物', '源程序', 'B', '计算机病毒', '2', '1');
INSERT INTO `test_question` VALUES ('17', '1', '1', '组成原理', '在计算机中，每个存储单元都有一个连续的编号，此编号称为()', '地址', '位置号', '门牌号', '房号', 'A', '存储单元概念', '2', '1');
INSERT INTO `test_question` VALUES ('18', '1', '1', '操作系统', '在所列出的：1、字处理软件，2、Linux，3、UNIX，4、学籍管理系统，5、Windows 7和6、Office 2010这六个软件中，属于系统软件的有()', '1,2,3', '2,3,5', '1,2,3,5', '全部都不是', 'B', '系统软件', '4', '1');
INSERT INTO `test_question` VALUES ('19', '1', '1', '计算机网络', '为实现以ADSL方式接入Internet，至少需要在计算机中内置或外置一个关键硬件设备是()', '网卡', '集线器', '服务器', '调制解调器（Modern）', 'D', '网络硬件', '3', '1');
INSERT INTO `test_question` VALUES ('20', '1', '1', '组成原理', '在下列字符中，其中ASCII码值最小的一个是()', '空格字符', '0', 'A', 'a', 'A', 'ASCII编码', '4', '1');
INSERT INTO `test_question` VALUES ('21', '1', '1', '组成原理', '十进制数18转换成二进制数是()', '010101', '101000', '010010', '001010', 'C', '进制转换', '5', '1');
INSERT INTO `test_question` VALUES ('22', '1', '1', '计算机网络', '有一域名为bit.edu.cn，根据域名代码的规定，此域名表示()', '政府机关', '商业组织', '军事部门', '教育机构', 'D', '域名', '7', '1');
INSERT INTO `test_question` VALUES ('23', '1', '1', '其他知识', '用助记符代替操作码、地址符号代替操作数的面向机器的语言是()', '汇编语言', 'FORTRAN语言', '机器语言', '高级语言', 'A', '编程语言', '3', '1');
INSERT INTO `test_question` VALUES ('24', '1', '1', '组成原理', '下列设备中，不能作为微机输出设备的是()', '打印机', '显示器', '鼠标器', '绘图仪', 'C', '输出设备', '5', '1');
INSERT INTO `test_question` VALUES ('25', '1', '1', '操作系统', '操作系统对磁盘进行读、写操作的单位是()', '磁道', '字节', '扇区', 'KB', 'C', '磁盘读写', '7', '2');
INSERT INTO `test_question` VALUES ('26', '1', '1', '操作系统', '下列各类计算机程序语言中，不属于高级程序设计语言的是()', 'Visual Basic', 'FORTAN语言', 'Pascal语言', '汇编语言', 'D', '程序语言', '9', '2');
INSERT INTO `test_question` VALUES ('27', '1', '1', '计算机网络', '下列各项中，非法的Internet的IP地址是()', '202.96.12.14', '202.196.72.140', '112.256.23.8', '201.124.38.79', 'C', '地址问题', '3', '1');
INSERT INTO `test_question` VALUES ('28', '1', '1', '计算机网络', '计算机网络分为局域网、城域网和广域网，下列属于局域网的是()', 'ChinaDDN网', 'Novell网', 'Chinanet网', 'Internet', 'B', '网络类别', '8', '1');
INSERT INTO `test_question` VALUES ('29', '1', '1', '其他知识', '用高级程序设计语言编写的程序()', '计算机能直接执行', '具有良好的可读性和可移植性', '执行效率高但可读性差', '依赖具体机器，可移植性差', 'B', '编程语言优缺点', '5', '2');
INSERT INTO `test_question` VALUES ('30', '1', '1', '操作系统', '下列软件中，属于系统软件的是()', '办公自动化软件', 'Windows XP', '管理信息系统', '指挥信息系统', 'B', '系统软件', '5', '1');
INSERT INTO `test_question` VALUES ('31', '1', '1', '操作系统', '计算机系统软件中最核心的是()', '语言处理系统', '操作系统', '数据库管理系统', '诊断程序', 'B', '系统软件', '3', '2');
INSERT INTO `test_question` VALUES ('32', '1', '1', '操作系统', '下列叙述中，错误的是()', '把数据从内存传输到硬盘的操作称为写盘', 'WPS Office 2010属于系统软件', '把高级语言源程序转换为等价的机器语言目标程序的过程叫编译', '计算机内部对数据的传输、存储和处理都使用二进制', 'B', '操作系统基础', '2', '1');
INSERT INTO `test_question` VALUES ('33', '1', '1', '计算机网络', '因特网中IP地址用四组十进制数表示，每组数字的取值范围是()', '0~127', '0~128', '0~255', '0~256', 'C', 'IP地址范围', '8', '1');
INSERT INTO `test_question` VALUES ('34', '1', '1', '计算机网络', 'Internet最初创建时的应用领域是()', '经济', '军事', '教育', '外交', 'B', '网络基础', '6', '1');
INSERT INTO `test_question` VALUES ('35', '1', '1', '计算机网络', '接入因特网的每台主机都有一个唯一可识别的地址，称为()', 'TCP地址', 'IP地址', 'TCP/IP地址', 'URL', 'B', '网络基础', '6', '0');
INSERT INTO `test_question` VALUES ('36', '1', '1', '其他知识', '计算机软件的确切含义是()', '计算机程序、数据与相应文档的总称', '系统软件与应用软件的总和', '操作系统、数据库管理软件与应用软件的总和', '各类应用软件的总称', 'A', '计算机软件概念', '5', '0');
INSERT INTO `test_question` VALUES ('37', '1', '1', '其他知识', '显示器的参数：1024×768，它表示()', '显示器分辨率', '显示器颜色指标', '显示器屏幕大小', '显示器每个字符的列数和行数', 'A', '参数概念', '6', '2');
INSERT INTO `test_question` VALUES ('38', '1', '1', '其他知识', '下列关于世界上第一台电子计算机ENIAC的叙述中，错误的是()', '它是1946年在美国诞生的', '它主要采用电子管和继电器', '它是首次采用存储程序控制使计算机自动工作', '它主要用于弹道计算', 'C', '计算机历史', '2', '0');
INSERT INTO `test_question` VALUES ('39', '1', '1', '其他知识', '电子商务的本质是()', '计算机技术', '电子技术', '商务活动', '网络技术', 'C', '计算机延申', '4', '1');
INSERT INTO `test_question` VALUES ('40', '1', '1', '其他知识', '以.jpg为扩展名的文件通常是()', '文本文件', '音频信号文件', '图像文件', '视频信号文件', 'C', '计算机常识', '6', '0');
INSERT INTO `test_question` VALUES ('41', '1', '1', '其他知识', '为了防止信息被别人窃取，可以设置开机密码，下列密码设置最安全的是()', '12345678', 'nd@YZ@g1', 'NDYZ', 'Yingzhong', 'B', '计算机常识', '3', '0');
INSERT INTO `test_question` VALUES ('42', '1', '1', '操作系统', '计算机操作系统的主要功能是()', '管理计算机系统的软硬件资源，以充分发挥计算机资源的效率，并为其它软件提供良好的运行环境', '把高级程序设计语言和汇编语言编写的程序翻译到计算机硬件可以直接执行的目标程序，为用户提供良好的软件开发环境', '对各类计算机文件进行有效的管理，并提交计算机硬件高效处理', '为用户提供方便的操作和使用计算机', 'A', '操作系统功能', '2', '1');
INSERT INTO `test_question` VALUES ('43', '1', '1', '操作系统', '操作系统管理用户数据的单位是()', '扇区', '文件', '磁道', '文件夹', 'B', '操作系统', '5', '0');
INSERT INTO `test_question` VALUES ('44', '1', '1', '操作系统', '按操作系统的分类，UNIX操作系统是()', '批处理操作系统', '实时操作系统', '分时操作系统', '单用户操作系统', 'C', 'UNIX系统', '3', '1');
INSERT INTO `test_question` VALUES ('45', '1', '1', '计算机网络', '在计算机网络中，英文缩写WAN的中文名是()', '局域网', '无线网', '广域网', '城域网', 'C', '计算机网络名词', '7', '0');
INSERT INTO `test_question` VALUES ('46', '1', '1', '计算机网络', '正确的IP地址是()', '202.112.111.1', '202.2.2.2.2', '202.202.1', '202.257.14.13', 'A', 'IP地址', '5', '0');
INSERT INTO `test_question` VALUES ('47', '1', '2', '程序基础', 'C语言程序的模块化是通过一下哪个选项来实现的()', '变量', '函数', '程序行', '语句', 'B', 'c语言模块化', '4', '3');
INSERT INTO `test_question` VALUES ('48', '1', '2', '程序基础', '以下叙述中正确的是()', 'N-S流程图只能描述简单的顺序结构的程序', '程序的算法只能使用流程图来描述', '结构化程序的三种基本结构是循环结构、选择结构、顺序结构', '计算机可以直接处理C语言程序，不必进行任何转换', 'C', '程序基础', '5', '0');
INSERT INTO `test_question` VALUES ('49', '1', '2', '程序基础', '以下叙述中正确的是()', '在算法设计时，可以把复杂任务分解成一些简单的子任务', '在C语言程序设计中，所有函数必须保存在一个源文件中', '只要包含了三种基本结构的算法就是结构化程序', '结构化程序必须包含所有的三种基本结构，缺一 不可', 'A', '程序基础', '7', '1');
INSERT INTO `test_question` VALUES ('50', '1', '2', '程序基础', '以下叙述中正确的是()', 'C语言程序所调用的函数必须放在main函数的前面', 'C语言程序总是从最前面的函数开始执行', 'C语言程序中main函数必须放在程序的开始位置', 'C语言程序总是从main函数开始执行', 'D', '程序调用', '9', '0');
INSERT INTO `test_question` VALUES ('51', '1', '2', '程序基础', '以下叙述中正确的是()', 'C编译程序把文件后缀为.c的源程序文件编译成文件后缀为.obj的二进制文件', 'C编译程序把文件后缀为.c的源程序文件编译成文件后缀为.exe的可执行文件', 'C编译程序把文件后缀为.obj的二进制文件编译成立件后缀为.exe的可执行文件', '链接程序把文件后缀为.c的源程序文件 链接成文件后缀为.exe的可执行文件', 'A', '程序编译', '9', '1');
INSERT INTO `test_question` VALUES ('52', '1', '2', '程序基础', '以下选项中不属于C语言标识符的是()', '常量', '用户标识符', '关键字', '预定义标识符', 'A', '标识符', '11', '3');
INSERT INTO `test_question` VALUES ('53', '1', '2', '程序基础', '以下叙述中正确的是()', '语言中的关键字不能作变量名，但可以作为函数名', '标识符的长度不能任意长，最多只能包含16 个字符', '标识符且是由字母、数字和下划线组成，且第一个字符不得为数字', '用户自定义的标识符必须”见名知意”，如果随意定义，则会出编译错误', 'C', '标识符', '4', '0');
INSERT INTO `test_question` VALUES ('54', '1', '2', '程序基础', '以下叙述中正确的是()', '只能在函数体内定义变量，其他地方不允许定义变量', '常量的类型不能从字面形式上区分，需要根据类型名来决定', '预定义的标识符是C语言关键字的一种，不能另作它用', '整型常量和实型常量都是数值型常量', 'D', '常量', '7', '1');
INSERT INTO `test_question` VALUES ('55', '1', '2', '程序基础', '以下叙述中正确的是()', '在C程序中的八进制和十六进制，可以是浮点数', '整型变量可以分为int型、short型、long型和unsigned型四种', '八进制数的开头要使用英文字母o，否则不能与十 进制区分开', '英文大写字母X和英文小写字母x都可以作为二进制数字的开头字符', 'B', '进制', '8', '3');
INSERT INTO `test_question` VALUES ('56', '1', '2', '选择结构', '与数学表达式x>=y>=z对应的C语言表达式是()', '（x>=y）|| （y>=x）', '（x>=y>=z）', '（x>=y）!（y>=z）', '（x>=y）&&（y>=z）', 'D', '选择表达式', '5', '0');
INSERT INTO `test_question` VALUES ('57', '1', '2', '选择结构', '下列关系表达式中，结果为“假”的是()', '3<=4', '(3<4) == 1', '(3+4) > 6', '(3 != 4) > 2', 'D', '选择表达式', '6', '1');
INSERT INTO `test_question` VALUES ('58', '1', '2', '选择结构', '若变量已正确定义，以下选项中非法的表达式是()', 'a != 4 || ‘b’', '‘a’ = 1/2 * (x=y=20, x*3)', '‘a’ % 4', '‘A’ + 32', 'B', '选择表达式', '4', '1');
INSERT INTO `test_question` VALUES ('59', '1', '2', '选择结构', '设有定义： int a=0, b=1; 以下表达式中，会产生“短路”现象，致使变量b的值不变的是()', 'a++ && b++', 'a++ || ++b', '++a && b++', '+a || ++b', 'A', '选择表达式', '8', '1');
INSERT INTO `test_question` VALUES ('60', '1', '2', '选择结构', '以下叙述中正确的是()', '对于逻辑表达式：a++ || b++, 设a的值1, 则求解表达式的值后，b的值会发生变化', '对于逻辑表达式：a++ && b++, 设a的值为0，则求解表达式的值后，b的值会发生改变', 'else不是一条独立语句，它只是if语句的一部分', '关系运算符的结果有三种：0，1，-1', 'C', '选择表达式', '8', '2');
INSERT INTO `test_question` VALUES ('61', '1', '2', '循环结构', '关于\"while(条件表达式)循环体\",以下叙述正确的是?(假设循环体里面没有break,continue，return，goto等等语句)', '循环体的执行次数总是比条件表达式的执行次数多一次', '条件表达式的执行次数总是比循环体的执行次数多一次', '条件表达式的执行次数与循环体的执行次数一样', '条件表达式的执行次数与循环体的执行次数无关', 'B', 'while循环体', '7', '1');
INSERT INTO `test_question` VALUES ('62', '1', '2', '循环结构', '由以下while构成的循环，循环体循环次数是()\nint k=0;\nwhile (k=1) k++;', '语法错，不能执行', '一次也不执行', '执行一次', '无限次', 'D', 'while循环体', '10', '0');
INSERT INTO `test_question` VALUES ('63', '1', '2', '循环结构', '以下叙述正确的是()', '只要适当修改代码，就可以将do-while与while相互转换', '对于“for（表达式1；表达式2；表达式3）循环体”首先计算表达式2的值，以便决定是否开始循环', '对于“for（表达式1；表达式2；表达式3）循环体”，只有在个别情况下，才能转换成while语句', '如果根据算法需要使用无限循环，（即通常所称“死循环”），则只能使用while语句', 'A', '循环方式', '3', '0');
INSERT INTO `test_question` VALUES ('64', '1', '2', '循环结构', '对于while (!E) s; 执行循环体s，E的取值为()', 'E等于1', 'E不等于0', 'E不等于1', 'E等于0', 'D', 'while()循环', '6', '0');
INSERT INTO `test_question` VALUES ('65', '1', '2', '循环结构', '关于do循环体while(条件表达式)，以下叙述中正确的是()', '条件表达式的执行次数总是比循环体的执行次数多一次', '循环体的执行次数总是比条件表达式执行次数多一次', '条件表达式的执行次数与循环体的执行次数一样', '条件表达式的执行次数与循环体的执行次数无关', 'C', 'do.while()循环', '6', '0');
INSERT INTO `test_question` VALUES ('66', '1', '2', '指针', '以下叙述中错误的是()', '可以给指针变量赋一个整数作为地址值', '函数可以返回地址值', '改变函数形参的值，不会改变对应实参的值', '当在程序开头包含头文件stdio.h时，可以给指针变量赋NULL', 'A', '指针作用', '7', '2');
INSERT INTO `test_question` VALUES ('67', '1', '2', '指针', '设已有定义：float x;，则以下对指针变量p进行定义且赋初值的语句正确的是()', 'int *p=(float)x;', 'float *p=&x;', 'float p=&x;', 'float *p=1024;', 'B', '指针赋值', '2', '1');
INSERT INTO `test_question` VALUES ('68', '1', '2', '指针', '设有定义：char p[]={\'1\',\'2\',\'3\'},*q=p;，以下不能计算出一个char型数据所占字节数的表达式是()', 'sizeof(p)', 'sizeof(char)', 'sizeof(*p)', 'sizeof(p[0])', 'A', '指针取字节长度', '9', '0');
INSERT INTO `test_question` VALUES ('69', '1', '2', '指针', '若有定义语句：double x,y,*px,*py;执行了px=&x;py=&y;之后，正确的输入语句是()', 'scanf(\"%lf%le\",px,py);', 'scanf(\"%f%f\",&x,&y);', 'scanf(\"%f%f\",x,y);', 'scanf(\"%lf%lf\",x,y);', 'A', '指针取值', '7', '2');
INSERT INTO `test_question` VALUES ('70', '1', '2', '指针', '若有定义语句：double a,*p=&a;以下叙述中错误的是()', '定义语句中的*号是一个间址运算符', '定义语句中的*号是一个说明符', '定义语句中的p只能存放double类型变量的地址', '定义语句中，*p=&a把变量a的地址作为初值赋给指针变量p', 'A', '指针含义', '8', '2');
INSERT INTO `test_question` VALUES ('71', '1', '2', '数组', '设有定义：int a[10]={0,1,2,3,4,5,6,7,8,9},*p=a,i;若0<=i<=10，则对a数组的引用错误是()', 'a[10]', '*(&a[i])', 'p[i]', 'a[p-a]', 'A', '数组引用', '8', '1');
INSERT INTO `test_question` VALUES ('72', '1', '2', '数组', '以下叙述正确的是()', '语句int a[8]={0};', '语句int a[]={0};是不合法的，遗漏了数组大小', '句char[2={“A”,”B”};是合法的，定义了一个包含2个字符的数组', '语句char  a[3]; a=”AB”;是合法的，因为数组有3个字符空间容量，可以保存2个字符', 'A', '数组定义', '4', '2');
INSERT INTO `test_question` VALUES ('73', '1', '2', '数组', '以下叙述正确的是()', '一条语句只能定义一个数组', '每个数组包含一组具有同一类型的变量，这些变量在内存中占有连续的存储单元', '数组说明符中一对方括号只能使用整型变量，不能使用表达式', '在引用数组元素时，下标表达式可以使用浮点数', 'B', '数组概念', '7', '2');
INSERT INTO `test_question` VALUES ('74', '1', '2', '数组', '以下叙述正确的是()', '数组下标下限是1', '数组下标下限由数组中第一个非零元素的位置决定', '数组下标下限由数组中第一个被赋值元素的位置决定', 'char c1,c2,*c3,c4[40];是合法的变量定义语句', 'D', '数组下标', '7', '1');
INSERT INTO `test_question` VALUES ('75', '1', '2', '数组', '若有定义语句：int m[][3]={1,2,3,4,5,6,7}\n与该语句等价的是\n()', 'int m[][3]={{1,2,3},{4,5,6},{7}};', 'int m[][3]={{1,2},{3,4},{5,6,7}}', 'int m[][3]={{1,2,3},{4,5},{6,7}}', 'int m[][3]={{1},{2,3,4},{5,6,7}}', 'A', '二维数组', '6', '3');
INSERT INTO `test_question` VALUES ('76', '1', '2', '结构体与共用体', '若有语句typedef struct S {int g; char h;}T;则下列叙述中正确的是()', '可用S定义结构体变量', '可用T定义结构体变量', 'S是struct类型的变量', 'T是struct S类型的变量', 'B', '结构体定义', '8', '1');
INSERT INTO `test_question` VALUES ('77', '1', '2', '结构体与共用体', '下列叙述中错误的是()', '可以用typedef将以存在的类型用一个新的名字来代表', '可以通过typedef增加新的类型', '用typedef定义新的类型名后，原有类型名仍有效', '用typedef可以为各种类型起别名，但不能为变量起别名', 'B', '结构体定义', '3', '1');
INSERT INTO `test_question` VALUES ('78', '1', '2', '结构体与共用体', '下列结构体类型说明和变量定义中正确的是()', 'struct REC;    {int n; char C;};    REC t1,t2;', 'typedef struct    {int n; char c;} REC;    REC t1,t2;', 'typedef struct REC;    {int n=0; char c=’A’;} t1,t2;', 'struct    {int n; char c;} REC;    REC t1;t2;', 'B', '结构体定义', '7', '2');
INSERT INTO `test_question` VALUES ('79', '1', '2', '结构体与共用体', '下列结构体的定义语句中错误的是()', 'struct ord{int x;int y;int z;} struct ord a;', 'struct ord {int x;int y;int z;}; struct ord a;', 'struct ord{int x;int y;int z;} a; ', 'struct{int x;int y;int z;}a;', 'A', '结构体定义', '5', '1');
INSERT INTO `test_question` VALUES ('80', '1', '2', '结构体与共用体', '有以下结构体说明、变量定义和赋值语句：\nstruct STD { char name[10]; int age; char sex; } s[5], *ps; ps =&s[0];\n则下列scanf函数调用语句有错误的是()', 'scanf(“%s\" ,s[0]. name) ;', 'scanf(\"%d\" ,&s[0]. age);', 'scanf( “%c\",&(ps-> sex)) ;', 'scanf(\"%d\",ps-> age);', 'D', '结构体调用', '4', '1');
INSERT INTO `test_question` VALUES ('81', '1', '2', '文件操作', '下列关于C语言文件的叙述中正确的是()', '文件由一系列数据依次排列组成，只能构成二进制文件', '文件由结构序列组成，可以构成二进制文件或文本文件', '文件由数据序列组成，可以构成二进制文件或文本文件', '文件由字符序列组成，其类型只能是文本文件', 'C', '文件概念', '2', '1');
INSERT INTO `test_question` VALUES ('82', '1', '2', '文件操作', '下列叙述中正确的是()', '当对文件的读(写)操作完成之后,必须将它关闭，否则可能导致数据丢失', '打开一个已存在的文件并进行写操作后，原有文件中的全部数据必定被覆盖', '在一个程序中对文件进行写操作后,必须先关闭该文件然后再打开才能读到第一个数据', 'C语言中的文件是流式文件，因此只能顺序存取数据', 'A', '文件操作', '9', '1');
INSERT INTO `test_question` VALUES ('83', '1', '2', '文件操作', '设文件指针fp已定义，执行语句fp=fopen(“file”,”w”);后，下列针对文本文件file操作叙述的选项中正确的是()', '只能写不能读', '写操作结束后可以从头开始读', '可以在原有内容后追加写', '可以随意读和写', 'A', '文件读写', '12', '1');
INSERT INTO `test_question` VALUES ('84', '1', '2', '文件操作', '读取二进制文件的函数调用形式为:fread( buffer size,count,fp);,其中buffer代表的是()', '一个内存块的字节数', '一个整型变量，代表待读取的数据的字节数', '一个文件指针，指向待读取的文件', '一个内存块的首地址，代表读人数据存放的地址', 'D', '文件相关概念', '6', '0');
INSERT INTO `test_question` VALUES ('85', '1', '2', '文件操作', '设fp为指向某二进制文件的指针，且已读到此文件末尾，则函数feof(fp)的返回值为()', '0', '\"\\0\'', '非0值', 'NULL', 'C', '文件操作', '5', '1');
INSERT INTO `test_question` VALUES ('86', '1', '2', '文件操作', '在C中，对文件的存取以()为单位', '记录', '字节', '元素', '簇', 'B', '文件相关概念', '7', '0');
INSERT INTO `test_question` VALUES ('87', '1', '1', '组成原理', '11', '1', '1', '1', '', 'D', '', '5', '2');
INSERT INTO `test_question` VALUES ('88', '1', '1', '组成原理', '去围绕太阳热 额额额发改的 ', '+', ' 反倒是', ' 反倒是', ' 复试', 'B', '测试1', '3', '0');
INSERT INTO `test_question` VALUES ('89', '1', '1', '计算机网络', 'test1', '+', 't', 't', 't', 'A', 'tt', '2', '1');
INSERT INTO `test_question` VALUES ('90', '1', '1', '组成原理', '已知英文字母m的ASCII码值为6DH，那么ASCII码值为71H的英文字母是（）', 'M', 'j', 'p', 'q', 'D', 'ASCII', '4', '0');
INSERT INTO `test_question` VALUES ('91', '3', '2', '循环', '下列哪个正确', 'while', 'whiil', 'whi', 'wh', 'A', '拼写', '0', '0');
INSERT INTO `test_question` VALUES ('92', '2', '2', '指针', '下列哪个正确', 'p', '&p', '*p', '**p', 'C', '', '0', '0');
INSERT INTO `test_question` VALUES ('93', '1', '2', '数组', '下列哪个正确', 'a[]', 'a[1]', 'a[n]', 'aa', 'B', '', '1', '0');
INSERT INTO `test_question` VALUES ('94', '1', '2', '循环', '下列哪个正确', 'while', 'dowhile()', 'for', 'for(;;)', 'D', '', '1', '0');
INSERT INTO `test_question` VALUES ('95', '3', '2', '循环', '下列哪个正确', 'while', 'whiil', 'whi', 'wh', 'A', '拼写', '2', '1');
INSERT INTO `test_question` VALUES ('96', '2', '2', '指针', '下列哪个正确', 'p', '&p', '*p', '**p', 'C', '', '2', '0');
INSERT INTO `test_question` VALUES ('97', '1', '2', '数组', '下列哪个正确', 'a[]', 'a[1]', 'a[n]', 'aa', 'B', '', '1', '0');
INSERT INTO `test_question` VALUES ('98', '1', '2', '循环', '下列哪个正确', 'while', 'dowhile()', 'for', 'for(;;)', 'D', '', '3', '0');
INSERT INTO `test_question` VALUES ('99', '3', '2', '循环', '下列哪个正确', 'while', 'whiil', 'whi', 'wh', 'A', '拼写', '1', '1');
INSERT INTO `test_question` VALUES ('100', '2', '2', '指针', '下列哪个正确', 'p', '&p', '*p', '**p', 'C', '', '1', '0');
INSERT INTO `test_question` VALUES ('101', '1', '2', '数组', '下列哪个正确', 'a[]', 'a[1]', 'a[n]', 'aa', 'B', '', '1', '0');
INSERT INTO `test_question` VALUES ('102', '1', '2', '循环', '下列哪个正确', 'while', 'dowhile()', 'for', 'for(;;)', 'D', '', '1', '0');
INSERT INTO `test_question` VALUES ('103', '1', '2', 'tt', 'tt', 't1', 't1', 't1', 't1', 'D', '', '0', '0');
INSERT INTO `test_question` VALUES ('104', '3', '2', '循环', '下列哪个正确', 't1', 'whiil', 'whi', 'wh', 'A', '拼写', '3', '0');
INSERT INTO `test_question` VALUES ('105', '2', '2', '指针', '下列哪个正确', 'q1', '&p', '*p', '**p', 'C', '', '1', '0');
INSERT INTO `test_question` VALUES ('106', '1', '2', '数组', '下列哪个正确', 'w1', 'a[1]', 'a[n]', 'aa', 'B', '', '2', '0');
INSERT INTO `test_question` VALUES ('107', '2', '2', '循环', '下列哪个正确', 's1', 'dowhile()', 'for', 'for(;;)', 'D', '', '2', '0');
INSERT INTO `test_question` VALUES ('108', '1', '2', 'tt', 'tt', 't1', 't1', 't1', 't1', 'D', '', '1', '0');
INSERT INTO `test_question` VALUES ('109', '3', '2', '循环', '下列哪个正确', 't1', 'whiil', 'whi', 'wh', 'A', '拼写', '1', '0');
INSERT INTO `test_question` VALUES ('110', '2', '2', '指针', '下列哪个正确', 'q1', '&p', '*p', '**p', 'C', '', '3', '0');
INSERT INTO `test_question` VALUES ('111', '1', '2', '数组', '下列哪个正确', 'w1', 'a[1]', 'a[n]', 'aa', 'B', '', '1', '0');
INSERT INTO `test_question` VALUES ('112', '2', '2', '循环', '下列哪个正确', 's1', 'dowhile()', 'for', 'for(;;)', 'D', '', '2', '0');
INSERT INTO `test_question` VALUES ('113', '1', '2', 'tt', 'tt', 't1', 't1', 't1', 't1', 'D', '', '0', '0');
