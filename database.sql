/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : database

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-06-03 23:36:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Price` float DEFAULT NULL,
  `cond` varchar(100) NOT NULL,
  `Issuer` int(10) NOT NULL,
  `Style` varchar(10) DEFAULT NULL,
  `Imgpath` varchar(100) NOT NULL,
  `State` char(1) NOT NULL,
  `Stateflg` char(1) NOT NULL,
  `Temp` varchar(100) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `image_detail1` varchar(255) DEFAULT NULL,
  `image_detail2` varchar(255) DEFAULT NULL,
  `image_detail3` varchar(255) DEFAULT NULL,
  `sellername` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Issuer` (`Issuer`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`Issuer`) REFERENCES `seller` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('5', '一本好书', '50', '9成新', '1', '2', '42462460-299c-430e-aedb-34254f33d545t4.jpg', '0', '0', null, '这是一本好看的书', '42462460-299c-430e-aedb-34254f33d545t4.jpg', '42462460-299c-430e-aedb-34254f33d545t4.jpg', '42462460-299c-430e-aedb-34254f33d545t4.jpg', '卖家1');
INSERT INTO `book` VALUES ('6', '一本好书', '50', '9成新', '1', '3', '9c3687ec-cf45-4980-b7e9-5cd5e966c52bt2.jpg', '0', '0', null, '这是一本好看的书', '9c3687ec-cf45-4980-b7e9-5cd5e966c52bt2.jpg', '9c3687ec-cf45-4980-b7e9-5cd5e966c52bt2.jpg', '9c3687ec-cf45-4980-b7e9-5cd5e966c52bt2.jpg', '卖家1');
INSERT INTO `book` VALUES ('7', '一本好书', '50', '9成新', '1', '4', '763c4b66-e943-439e-87d1-26acf4b487d4t3.jpg', '0', '0', null, '这是一本好看的书', null, null, null, '卖家1');
INSERT INTO `book` VALUES ('8', '一本好书', '50', '9成新', '1', '5', '586dba36-b6fc-4ab8-8c42-a468c4117488t1.jpg', '0', '0', null, '这是一本好看的书', null, null, null, '卖家1');
INSERT INTO `book` VALUES ('11', '一本好书12', '31', '9成新', '1', '6', 'book-default-show.jpg', '0', '0', null, '这是一本好看的书', null, null, null, '卖家1');
INSERT INTO `book` VALUES ('12', '一本好书14', '50', '9成新', '1', '7', 'db538b86-3863-4091-aabf-a4560d982186t1.jpg', '0', '0', null, '这是一本好看的书', '', null, null, '卖家1');
INSERT INTO `book` VALUES ('13', '一本好书2', '50', '9成新', '1', '8', '44c673d2-430e-4dda-80af-7e7ac040853ft3.jpg', '0', '0', null, '这是一本好看的书', '2b5284b6-fef2-4654-b229-326468854329t4.jpg', null, null, '卖家1');
INSERT INTO `book` VALUES ('14', '另外一本书', '49.99', '7成新', '2', '9', '5dc9a002-cb7e-4bf1-a09b-98d464e4cb7ae5b48ffa6229c1005616e8c6573385e1.png', '0', '0', null, '这是另外一本书', '4b82f66e-262a-4eec-91b7-a2e2a7a65d23Dest Image.png', 'book-default-show.jpg', 'book-default-show.jpg', '卖家2');
INSERT INTO `book` VALUES ('15', '又是一本书', '11', '6成新', '1', '2', 'book-default-show.jpg', '0', '0', null, '', 'book-default-show.jpg', 'book-default-show.jpg', 'book-default-show.jpg', '卖家1');
INSERT INTO `book` VALUES ('16', '毛泽东思想和中国特色社会主义理论体系', '123.11', '九成新', '1', '1', 'f2884eba-e6c9-462b-ba18-1bac9c690f00ChMkJlbKxVmIGXwtAAUqPkU1VwwAALHUgOQ-1kABSpW756.jpg', '0', '0', null, '好书', 'book-default-show.jpg', 'book-default-show.jpg', 'book-default-show.jpg', '卖家1');
INSERT INTO `book` VALUES ('17', '宗教概述', '23.5', '五成新', '1', '2', 'book-default-show.jpg', '0', '0', null, '介绍所有宗教', 'book-default-show.jpg', 'book-default-show.jpg', 'book-default-show.jpg', '卖家1');
INSERT INTO `book` VALUES ('18', '刑法', '88.5', '六成新', '1', '3', 'book-default-show.jpg', '0', '0', null, '刑法', 'book-default-show.jpg', 'book-default-show.jpg', 'book-default-show.jpg', '卖家1');
INSERT INTO `book` VALUES ('19', '民法', '88.5', '二成新', '1', '3', 'book-default-show.jpg', '0', '0', null, '民法', 'book-default-show.jpg', 'book-default-show.jpg', 'book-default-show.jpg', '卖家1');
INSERT INTO `book` VALUES ('20', '西方经济学', '90', '七成新', '1', '3', 'book-default-show.jpg', '0', '0', null, '西方经济学', 'book-default-show.jpg', 'book-default-show.jpg', 'book-default-show.jpg', '卖家1');
INSERT INTO `book` VALUES ('21', '西方经济学', '90', '七成新', '1', '5', 'book-default-show.jpg', '0', '0', null, '西方经济学', 'book-default-show.jpg', 'book-default-show.jpg', 'book-default-show.jpg', '卖家1');
INSERT INTO `book` VALUES ('22', '英语四级', '23.12', '七成新', '1', '7', 'book-default-show.jpg', '0', '0', null, '四级参考书', 'book-default-show.jpg', 'book-default-show.jpg', 'book-default-show.jpg', '卖家1');
INSERT INTO `book` VALUES ('23', '杭州地图', '5.11', '七成新', '1', '8', 'book-default-show.jpg', '0', '0', null, '地图', 'book-default-show.jpg', 'book-default-show.jpg', 'book-default-show.jpg', '卖家1');

-- ----------------------------
-- Table structure for buyer
-- ----------------------------
DROP TABLE IF EXISTS `buyer`;
CREATE TABLE `buyer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Account` varchar(10) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Num` char(11) NOT NULL,
  `Temp` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buyer
-- ----------------------------
INSERT INTO `buyer` VALUES ('1', 'asd', 'asd', '123', 'aa', '2222', null);
INSERT INTO `buyer` VALUES ('2', 'qwe', '', '111', 'asd', '110', null);
INSERT INTO `buyer` VALUES ('3', 'q', 'btest', '1', '1', '1', null);
INSERT INTO `buyer` VALUES ('4', '哈哈', '12', '123', 'kk', '200', null);
INSERT INTO `buyer` VALUES ('6', 'hh', 'hh', '123456789', '', '11', null);

-- ----------------------------
-- Table structure for detail
-- ----------------------------
DROP TABLE IF EXISTS `detail`;
CREATE TABLE `detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Bid` int(10) NOT NULL,
  `Oid` int(10) NOT NULL,
  `Price` float(10,2) NOT NULL,
  `Totalprice` float(10,2) NOT NULL,
  `Bnum` int(10) NOT NULL,
  `Snum` int(10) NOT NULL,
  `Count` int(10) NOT NULL,
  `Date` date NOT NULL,
  `Temp` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Bid` (`Bid`),
  KEY `Oid` (`Oid`),
  KEY `Bnum` (`Bnum`),
  KEY `Snum` (`Snum`),
  CONSTRAINT `detail_ibfk_1` FOREIGN KEY (`Bid`) REFERENCES `book` (`id`),
  CONSTRAINT `detail_ibfk_2` FOREIGN KEY (`Oid`) REFERENCES `orderform` (`id`),
  CONSTRAINT `detail_ibfk_3` FOREIGN KEY (`Bnum`) REFERENCES `buyer` (`id`),
  CONSTRAINT `detail_ibfk_4` FOREIGN KEY (`Snum`) REFERENCES `seller` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detail
-- ----------------------------

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Account` varchar(10) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Temp` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', 'qq', 'qq', '11', null);
INSERT INTO `manager` VALUES ('2', 'e', 'hh', '123', null);
INSERT INTO `manager` VALUES ('3', 'k', 'kk', '23', null);

-- ----------------------------
-- Table structure for orderform
-- ----------------------------
DROP TABLE IF EXISTS `orderform`;
CREATE TABLE `orderform` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `Stateflg` char(1) DEFAULT NULL,
  `Temp` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderform
-- ----------------------------

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookid` int(11) DEFAULT NULL,
  `buyerid` int(11) DEFAULT NULL,
  `sellerid` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `phonenum` char(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bookname` varchar(100) DEFAULT NULL,
  `buyername` varchar(20) DEFAULT NULL,
  `sellername` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookid` (`bookid`),
  KEY `buyerid` (`buyerid`),
  KEY `sellerid` (`sellerid`),
  CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`bookid`) REFERENCES `book` (`id`),
  CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`buyerid`) REFERENCES `buyer` (`id`),
  CONSTRAINT `order_detail_ibfk_3` FOREIGN KEY (`sellerid`) REFERENCES `seller` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('1', '5', '1', '1', '50', '2019-06-02', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('2', '5', '1', '1', '50', '2019-06-02', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('3', '6', '1', '1', '50', '2019-06-02', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('4', '7', '1', '1', '50', '2019-06-02', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('5', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('6', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('7', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('8', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('9', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('10', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('11', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('12', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('13', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('14', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('15', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('16', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('17', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('18', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('19', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('20', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('21', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('22', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('23', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('24', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('25', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('26', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('27', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('28', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('29', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('30', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('31', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('32', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('33', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('34', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('35', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('36', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('37', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('38', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('39', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('40', '5', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '大哥');
INSERT INTO `order_detail` VALUES ('44', '6', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书', 'asd', '卖家1');
INSERT INTO `order_detail` VALUES ('45', '13', '1', '1', '50', '2019-06-03', '2222', 'aa', '一本好书2', 'asd', '卖家1');

-- ----------------------------
-- Table structure for seller
-- ----------------------------
DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Account` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Temp` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seller
-- ----------------------------
INSERT INTO `seller` VALUES ('1', '11', '卖家1', '11', null);
INSERT INTO `seller` VALUES ('2', 'q1', '卖家2', '111', null);
