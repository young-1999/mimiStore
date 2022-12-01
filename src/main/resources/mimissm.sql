/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80028
Source Host           : localhost:3306
Source Database       : mimissm

Target Server Type    : MYSQL
Target Server Version : 80028
File Encoding         : 65001

Date: 2022-12-01 15:02:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `a_id` int NOT NULL AUTO_INCREMENT,
  `a_name` varchar(20) DEFAULT NULL,
  `a_pass` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'c984aed014aec7623a54f0591da07a85fd4b762d');
INSERT INTO `admin` VALUES ('2', 'yys', 'c984aed014aec7623a54f0591da07a85fd4b762d');

-- ----------------------------
-- Table structure for product_info
-- ----------------------------
DROP TABLE IF EXISTS `product_info`;
CREATE TABLE `product_info` (
  `p_id` int NOT NULL AUTO_INCREMENT,
  `p_name` varchar(20) DEFAULT NULL,
  `p_content` varchar(200) DEFAULT NULL,
  `p_price` int DEFAULT NULL,
  `p_image` varchar(200) DEFAULT NULL,
  `p_number` int DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `p_date` date DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `product_info_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `product_type` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of product_info
-- ----------------------------
INSERT INTO `product_info` VALUES ('6', '小米平板3', '7.9英寸 金色 4GB内存 64GB闪存', '1499', 'xmPad3.jpg', '500', '2', '2018-01-09');
INSERT INTO `product_info` VALUES ('7', '小米Air12', '12.5英寸 银色 4GB内存 128GB闪存', '3599', 'xmAir12.jpg', '500', '2', '2018-01-18');
INSERT INTO `product_info` VALUES ('8', '小米Air13', '13.3英寸 银色 8GB内存 256GB闪存', '4999', 'xmAir13.jpg', '500', '2', '2018-01-17');
INSERT INTO `product_info` VALUES ('9', '小米Pro', '15.6英寸 灰色 16GB内存 256GB闪存', '6999', 'xmPro.jpg', '500', '2', '2018-01-16');
INSERT INTO `product_info` VALUES ('10', '小米电视4', '49英寸 原装LG屏 3840×2160 真4K', '3299', 'xmTV4-49.jpg', '500', '3', '2018-01-15');
INSERT INTO `product_info` VALUES ('11', '小米电视4', '55英寸 原装三星屏 3840×2160 真4K', '3999', 'xmTV4-55.jpg', '500', '3', '2018-01-13');
INSERT INTO `product_info` VALUES ('12', '小米电视4', '65英寸 原装三星屏 3840×2160 真4K', '8999', 'xmTV4-65.jpg', '500', '3', '2018-01-22');
INSERT INTO `product_info` VALUES ('13', '小米电视4A', '43英寸 FHD全高清屏 1920*1080', '1999', 'xmTV4A-43.jpg', '500', '3', '2018-01-11');
INSERT INTO `product_info` VALUES ('14', '小米电视4A', '49英寸 FHD全高清屏 1920*1080', '2299', 'xmTV4A-49.jpg', '500', '3', '2018-01-21');
INSERT INTO `product_info` VALUES ('15', '小米MIX2', '全陶瓷 黑色 8GB内存 128GB闪存', '4699', 'xmMIX2.jpg', '500', '1', '2018-04-01');
INSERT INTO `product_info` VALUES ('17', '小米6', '小龙999处理器，1亿像素，外加两万毫安时大电池，你顶不住了它还能顶住。', '2899', 'xm6.jpg', '500', '1', '2019-06-21');
INSERT INTO `product_info` VALUES ('18', '小米MAX2', '全球首发小龙9999处理器，are you ok？', '2999', 'xmMAX2.jpg', '500', '1', '2020-10-10');
INSERT INTO `product_info` VALUES ('19', '华为mate100', '麒麟9000处理器，徕卡两亿像素三摄，1.2F大光圈', '3999', 'xm5X.jpg', '500', '1', '2018-03-02');
INSERT INTO `product_info` VALUES ('21', 'mimi20', '麒麟9000处理器，徕卡两亿像素三摄，1.2F大光圈666', '1999', '19136406eceb432a920d0a156d1571fc.jpg', '500', '1', '2022-11-04');
INSERT INTO `product_info` VALUES ('22', '米米15s', '小龙999处理器，1亿像素，外加两万毫安时大电池，你顶不住了它还能顶住。', '2999', 'fd3a09f96fe247618f01476c9330ac20.jpg', '500', '1', '2022-11-04');
INSERT INTO `product_info` VALUES ('27', 'mate50', '麒麟9000处理器，徕卡两亿像素三摄，1.2F大光圈', '1399', 'aabb889957244e22813fe8ec9299de5d.jpg', '500', '1', '2022-12-01');

-- ----------------------------
-- Table structure for product_type
-- ----------------------------
DROP TABLE IF EXISTS `product_type`;
CREATE TABLE `product_type` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of product_type
-- ----------------------------
INSERT INTO `product_type` VALUES ('1', '手机');
INSERT INTO `product_type` VALUES ('2', '电脑');
INSERT INTO `product_type` VALUES ('3', '电视');
