/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : restraunt

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-08-09 20:54:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `LoginName` varchar(20) DEFAULT NULL,
  `LoginPwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for meal
-- ----------------------------
DROP TABLE IF EXISTS `meal`;
CREATE TABLE `meal` (
  `MealId` int(4) NOT NULL AUTO_INCREMENT,
  `MealSeriesId` int(4) DEFAULT NULL,
  `MealName` varchar(20) DEFAULT NULL,
  `MealSummarize` varchar(250) DEFAULT NULL,
  `MealDescription` varchar(250) DEFAULT NULL,
  `MealPrice` decimal(8,2) DEFAULT NULL,
  `MealImage` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MealId`),
  KEY `MealSeriesId` (`MealSeriesId`),
  CONSTRAINT `meal_ibfk_1` FOREIGN KEY (`MealSeriesId`) REFERENCES `mealseries` (`SeriesId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meal
-- ----------------------------
INSERT INTO `meal` VALUES ('1', '1', '雪梨肉肘棒', '味鲜香甜咸，肘棒不腻', '味鲜香甜咸，肘棒不腻', '10.00', '01.jpg');
INSERT INTO `meal` VALUES ('2', '1', '素锅烤鸭肉', '颜色鲜艳，酷似鸭肉，鲜香不腻。', '颜色鲜艳，酷似鸭肉，鲜香不腻。', '20.00', '02.jpg');
INSERT INTO `meal` VALUES ('3', '1', '烤花肉揽桂鱼', '味道特鲜，白中泛红，佐以姜末、香醋，尤胜一等。', ' 烤花揽桂鱼，是运用孔府菜的传统独特工艺味，道特鲜，白中泛红，佐以姜末、香醋，尤胜一等。', '15.00', '03.jpg');
INSERT INTO `meal` VALUES ('4', '1', '泰安肉三美豆腐', '汤汁乳白而鲜，豆腐软滑，白菜鲜嫩，清淡爽口。', '“泰安三美豆腐”是泰安风味名菜。泰安产的白菜、豆腐和泰山泉水，历来被誉为“泰安三美”。泰安白菜个儿大心实，质细无筋；泰安豆腐，浆细质纯，嫩而不老；泰山泉水，清甜爽口，杂质少', '8.00', '04.jpg');
INSERT INTO `meal` VALUES ('5', '1', '落叶琵琶肉虾', '外型美观，鲜香味美。', ' 外型美观，鲜香味美。 ', '14.00', '05.jpg');
INSERT INTO `meal` VALUES ('6', '1', '肉冬菜肉末', '味鲜香适口，下饭便菜。', '味鲜香适口，下饭便菜。', '22.00', '06.jpg');
INSERT INTO `meal` VALUES ('7', '1', '糖醋红柿椒', '色红美，味鲜香。', '色红美，味鲜香。', '8.00', '07.jpg');
INSERT INTO `meal` VALUES ('8', '2', '芹黄烧鱼条', '色泽金黄润亮，鱼肉鲜嫩味香。', '色泽金黄润亮，鱼肉鲜嫩味香。', '15.00', '08.jpg');
INSERT INTO `meal` VALUES ('9', '2', '巴国玉米糕肉', '风味浓、口感奇、品种多', '风味浓、口感奇、品种多，信手拈来，皆为佳品。', '13.00', '09.jpg');
INSERT INTO `meal` VALUES ('10', '2', '酥皮龙虾', '色泽黄绿相衬，协调雅致，外酥内嫩，鲜香爽口', '酥皮龙虾成菜配以西兰花和蒜薹花，使色泽更加丰富，口感多样，诱人食欲。', '20.00', '10.jpg');
INSERT INTO `meal` VALUES ('11', '1', '香煎茄片', '色泽红亮，口感似鱼 ', '色泽红亮，口感似鱼 ', '9.00', '11.jpg');
INSERT INTO `meal` VALUES ('12', '1', '金陵片皮鸭', '此菜深红明亮，皮脆，肉滑，分两次上桌，滋味各异', '此菜深红明亮，皮脆，肉滑，分两次上桌，滋味各异，原为江苏风味，传入广东有较长历史，在制法上已有不少变化，现已成为粤菜名品。', '10.00', '12.jpg');
INSERT INTO `meal` VALUES ('15', '5', '佛跳墙', '佛跳墙，又名满坛香、福寿全，是福建福州的当地名菜', ' 佛跳墙，又名满坛香、福寿全，是福建福州的当地名菜，属闽菜系。相传，它是在清道光年间由福州聚春园菜馆老板郑春发研制出来的。佛跳墙富含营养，可促进发育，美容，延缓衰老，增强免疫力，乃进补佳品。', '200.00', '1707272312587389.jpg');
INSERT INTO `meal` VALUES ('16', '5', '冰糖燕窝', '冰糖燕窝是是一道传统药膳，属于秋季滋阴润燥的佳品。', '冰糖燕窝是是一道传统药膳，属于秋季滋阴润燥的佳品。有补肺养阴、镇咳止血的功效，往往用于肺结核咯血、支气管炎、肺气肿等症，年老体弱之人服用此汤菜有益气强身之功用。', '40.00', '1707272314304833.jpg');
INSERT INTO `meal` VALUES ('17', '5', '清炒鳝丝', '黄鳝不仅为席上佳肴，其肉、血、头、皮均有一定的药用价值。', '黄鳝不仅为席上佳肴，其肉、血、头、皮均有一定的药用价值。据《本草纲目》记载，黄鳝有补血、补气、消炎、消毒、除风湿等功效。', '60.00', '1707272324199546.jpg');

-- ----------------------------
-- Table structure for mealseries
-- ----------------------------
DROP TABLE IF EXISTS `mealseries`;
CREATE TABLE `mealseries` (
  `SeriesId` int(4) NOT NULL AUTO_INCREMENT,
  `SeriesName` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`SeriesId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mealseries
-- ----------------------------
INSERT INTO `mealseries` VALUES ('1', '鲁菜');
INSERT INTO `mealseries` VALUES ('2', '川菜');
INSERT INTO `mealseries` VALUES ('3', '粤菜');
INSERT INTO `mealseries` VALUES ('4', '苏菜');
INSERT INTO `mealseries` VALUES ('5', '闽菜');
INSERT INTO `mealseries` VALUES ('6', '浙菜');
INSERT INTO `mealseries` VALUES ('7', '湘菜');
INSERT INTO `mealseries` VALUES ('8', '徽菜');
INSERT INTO `mealseries` VALUES ('9', '西餐');

-- ----------------------------
-- Table structure for orderdts
-- ----------------------------
DROP TABLE IF EXISTS `orderdts`;
CREATE TABLE `orderdts` (
  `ODID` int(4) NOT NULL AUTO_INCREMENT,
  `OID` int(4) DEFAULT NULL,
  `MealId` int(4) DEFAULT NULL,
  `MealPrice` decimal(8,2) DEFAULT NULL,
  `MealCount` int(4) DEFAULT NULL,
  PRIMARY KEY (`ODID`),
  KEY `OID` (`OID`),
  KEY `MealId` (`MealId`),
  CONSTRAINT `orderdts_ibfk_1` FOREIGN KEY (`OID`) REFERENCES `orders` (`OID`),
  CONSTRAINT `orderdts_ibfk_2` FOREIGN KEY (`MealId`) REFERENCES `meal` (`MealId`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdts
-- ----------------------------
INSERT INTO `orderdts` VALUES ('18', '9', '1', '10.00', '1');
INSERT INTO `orderdts` VALUES ('19', '9', '2', '20.00', '1');
INSERT INTO `orderdts` VALUES ('20', '10', '1', '10.00', '2');
INSERT INTO `orderdts` VALUES ('21', '10', '2', '20.00', '3');
INSERT INTO `orderdts` VALUES ('22', '11', '2', '20.00', '2');
INSERT INTO `orderdts` VALUES ('23', '11', '4', '8.00', '1');
INSERT INTO `orderdts` VALUES ('24', '12', '2', '20.00', '3');
INSERT INTO `orderdts` VALUES ('25', '12', '4', '8.00', '1');
INSERT INTO `orderdts` VALUES ('26', '13', '1', '10.00', '1');
INSERT INTO `orderdts` VALUES ('27', '13', '2', '20.00', '1');
INSERT INTO `orderdts` VALUES ('28', '14', '1', '10.00', '1');
INSERT INTO `orderdts` VALUES ('29', '14', '2', '20.00', '1');
INSERT INTO `orderdts` VALUES ('30', '14', '6', '12.00', '1');
INSERT INTO `orderdts` VALUES ('31', '15', '4', '8.00', '1');
INSERT INTO `orderdts` VALUES ('32', '16', '11', '9.00', '1');
INSERT INTO `orderdts` VALUES ('38', '17', '2', '20.00', '1');
INSERT INTO `orderdts` VALUES ('39', '18', '2', '20.00', '10');
INSERT INTO `orderdts` VALUES ('40', '18', '3', '15.00', '10');
INSERT INTO `orderdts` VALUES ('41', '19', '1', '10.00', '1');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `OID` int(4) NOT NULL AUTO_INCREMENT,
  `UserId` int(4) DEFAULT NULL,
  `OrderTime` datetime DEFAULT NULL,
  `OrderState` varchar(20) DEFAULT NULL,
  `OrderPrice` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`OID`),
  KEY `UserId` (`UserId`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('9', '1', '2017-07-09 16:07:44', '已处理', '30.00');
INSERT INTO `orders` VALUES ('10', '1', '2017-07-09 16:54:17', '已处理', '80.00');
INSERT INTO `orders` VALUES ('11', '1', '2017-07-09 17:30:16', '已处理', '48.00');
INSERT INTO `orders` VALUES ('12', '2', '2017-07-09 17:52:48', '已处理', '68.00');
INSERT INTO `orders` VALUES ('13', '5', '2017-07-10 17:26:31', '已处理', '30.00');
INSERT INTO `orders` VALUES ('14', '4', '2017-07-10 17:51:08', '已处理', '42.00');
INSERT INTO `orders` VALUES ('15', '4', '2017-07-10 17:51:18', '已处理', '8.00');
INSERT INTO `orders` VALUES ('16', '4', '2017-07-10 17:51:36', '已处理', '9.00');
INSERT INTO `orders` VALUES ('17', '2', '2017-07-26 14:33:08', '已处理', '20.00');
INSERT INTO `orders` VALUES ('18', '22', '2017-07-27 17:22:29', '已处理', '350.00');
INSERT INTO `orders` VALUES ('19', '5', '2017-07-30 14:02:06', '未处理', '10.00');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `LoginName` varchar(20) DEFAULT NULL,
  `LoginPwd` varchar(20) DEFAULT NULL,
  `TrueName` varchar(20) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;


