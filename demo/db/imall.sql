/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : imall

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 11/06/2022 10:06:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '地址id',
  `open_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信用户id',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收货人姓名',
  `mobile` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号',
  `province` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '省份',
  `city` char(30) DEFAULT NULL COMMENT '城市',
  `district` char(30) DEFAULT NULL COMMENT '区/县',
  `detailed_address` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '详细地址',
  `is_default` tinyint DEFAULT NULL COMMENT '1为默认，2为非默认',
  `created` char(20) DEFAULT NULL COMMENT '创建时间',
  `updated` char(20) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1109 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of address
-- ----------------------------
BEGIN;
INSERT INTO `address` (`id`, `open_id`, `name`, `mobile`, `province`, `city`, `district`, `detailed_address`, `is_default`, `created`, `updated`) VALUES (1107, 'oUT385ZLmRr6R_a9xKSfSW9SekYI', '李先生', '13546440088', '河北省', '石家庄市', '长安区', '五里街道4栋203', 1, '2022-05-16 15:37:18', '2022-05-28 13:54:14');
INSERT INTO `address` (`id`, `open_id`, `name`, `mobile`, `province`, `city`, `district`, `detailed_address`, `is_default`, `created`, `updated`) VALUES (1108, 'oUT385ZLmRr6R_a9xKSfSW9SekYI', '张先生', '13508096609', '辽宁省', '沈阳市', '铁西区', '某某街道208号', 2, '2022-05-16 15:57:30', '2022-05-23 20:54:21');
COMMIT;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '类目编号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '类目名称',
  `parent_id` bigint DEFAULT NULL COMMENT '父级类目编号',
  `level` tinyint DEFAULT NULL COMMENT '类目级别',
  `sort` int DEFAULT NULL COMMENT '类目排序',
  `created` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `updated` varchar(50) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2055 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` (`id`, `name`, `parent_id`, `level`, `sort`, `created`, `updated`) VALUES (2046, '蔬菜', 1, 1, 1, '2022-06-04 20:43:49', '');
INSERT INTO `category` (`id`, `name`, `parent_id`, `level`, `sort`, `created`, `updated`) VALUES (2047, '水果', 1, 1, 2, '2022-06-04 20:43:57', '');
INSERT INTO `category` (`id`, `name`, `parent_id`, `level`, `sort`, `created`, `updated`) VALUES (2048, '菜心', 2046, 2, 22, '2022-06-04 20:55:41', '');
INSERT INTO `category` (`id`, `name`, `parent_id`, `level`, `sort`, `created`, `updated`) VALUES (2049, '地瓜叶', 2046, 2, 32, '2022-06-04 20:56:24', '');
INSERT INTO `category` (`id`, `name`, `parent_id`, `level`, `sort`, `created`, `updated`) VALUES (2050, '西红柿', 2046, 2, 5, '2022-06-04 20:56:44', '');
INSERT INTO `category` (`id`, `name`, `parent_id`, `level`, `sort`, `created`, `updated`) VALUES (2051, '茄子', 2046, 2, 30, '2022-06-04 20:57:03', '');
INSERT INTO `category` (`id`, `name`, `parent_id`, `level`, `sort`, `created`, `updated`) VALUES (2052, '胡萝卜', 2046, 2, 50, '2022-06-04 20:57:24', '');
INSERT INTO `category` (`id`, `name`, `parent_id`, `level`, `sort`, `created`, `updated`) VALUES (2053, '香蕉', 2047, 2, 20, '2022-06-04 20:57:44', '');
INSERT INTO `category` (`id`, `name`, `parent_id`, `level`, `sort`, `created`, `updated`) VALUES (2054, '苹果', 2047, 2, 33, '2022-06-04 20:57:56', '');
COMMIT;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `category_id` bigint DEFAULT NULL COMMENT '类目编号',
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品标题',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `price` decimal(10,2) DEFAULT NULL COMMENT '商品价格',
  `quantity` int DEFAULT NULL COMMENT '商品数量',
  `image_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品图片',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品备注',
  `sales` int DEFAULT NULL COMMENT '商品销量',
  `status` tinyint DEFAULT NULL COMMENT '商品状态',
  `created` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `updated` varchar(50) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of goods
-- ----------------------------
BEGIN;
INSERT INTO `goods` (`id`, `category_id`, `title`, `name`, `price`, `quantity`, `image_url`, `remark`, `sales`, `status`, `created`, `updated`) VALUES (24, 2048, '广东菜心', '菜心', 6.89, 200, 'http://localhost:8000/image/IMG_1550.JPG', '图片仅供参考，请以实物为准', 230, 1, '2022-05-21 15:27:55', '2022-06-04 20:55:59');
INSERT INTO `goods` (`id`, `category_id`, `title`, `name`, `price`, `quantity`, `image_url`, `remark`, `sales`, `status`, `created`, `updated`) VALUES (25, 2049, '地瓜叶 300g', '地瓜叶', 4.90, 20, 'http://localhost:8000/image/IMG_1551.JPG', '图片仅供参考，请以实物为准', 303, 1, '2022-05-21 15:30:02', '2022-06-04 20:56:35');
INSERT INTO `goods` (`id`, `category_id`, `title`, `name`, `price`, `quantity`, `image_url`, `remark`, `sales`, `status`, `created`, `updated`) VALUES (26, 2050, '西红柿 350g', '西红柿', 5.80, 110, 'http://localhost:8000/image/IMG_1552.JPG', '图片仅供参考，请以实物为准', 12, 1, '2022-05-21 15:32:51', '2022-06-04 20:56:54');
INSERT INTO `goods` (`id`, `category_id`, `title`, `name`, `price`, `quantity`, `image_url`, `remark`, `sales`, `status`, `created`, `updated`) VALUES (28, 2051, '茄子 250g', '茄子', 3.85, 300, 'http://localhost:8000/image/IMG_1554.PNG', '图片仅供参考，请以实物为准', 85, 1, '2022-05-21 15:36:55', '2022-06-04 20:57:13');
INSERT INTO `goods` (`id`, `category_id`, `title`, `name`, `price`, `quantity`, `image_url`, `remark`, `sales`, `status`, `created`, `updated`) VALUES (29, 2052, '胡萝卜 300g', '胡萝卜', 3.50, 455, 'http://localhost:8000/image/IMG_1555.JPG', '图片仅供参考，请以实物为准', 24, 1, '2022-05-21 15:39:19', '2022-06-04 20:57:31');
INSERT INTO `goods` (`id`, `category_id`, `title`, `name`, `price`, `quantity`, `image_url`, `remark`, `sales`, `status`, `created`, `updated`) VALUES (30, 2053, '香蕉 500g', '香蕉', 11.80, 400, 'http://localhost:8000/image/IMG_1556.PNG', '图片仅供参考，请以实物为准', 6, 1, '2022-05-21 15:43:09', '2022-06-04 20:58:15');
INSERT INTO `goods` (`id`, `category_id`, `title`, `name`, `price`, `quantity`, `image_url`, `remark`, `sales`, `status`, `created`, `updated`) VALUES (31, 2054, '甘肃苹果 600g', '苹果', 19.50, 223, 'http://localhost:8000/image/IMG_1557.JPG', '图片仅供参考，请以实物为准', 790, 1, '2022-05-21 15:46:01', '2022-06-04 20:58:08');
INSERT INTO `goods` (`id`, `category_id`, `title`, `name`, `price`, `quantity`, `image_url`, `remark`, `sales`, `status`, `created`, `updated`) VALUES (32, 2050, '西红柿 350g', '西红柿', 5.80, 110, 'http://localhost:8000/image/IMG_1552.JPG', '图片仅供参考，请以实物为准', 12, 1, '2022-05-21 15:32:51', '2022-06-04 20:58:32');
INSERT INTO `goods` (`id`, `category_id`, `title`, `name`, `price`, `quantity`, `image_url`, `remark`, `sales`, `status`, `created`, `updated`) VALUES (33, 2050, '西红柿 350g', '西红柿', 5.80, 110, 'http://localhost:8000/image/IMG_1552.JPG', '图片仅供参考，请以实物为准', 12, 1, '2022-05-21 15:32:51', '2022-06-04 20:58:27');
INSERT INTO `goods` (`id`, `category_id`, `title`, `name`, `price`, `quantity`, `image_url`, `remark`, `sales`, `status`, `created`, `updated`) VALUES (34, 2050, '西红柿 350g', '西红柿', 5.80, 110, 'http://localhost:8000/image/IMG_1552.JPG', '图片仅供参考，请以实物为准', 12, 1, '2022-05-21 15:32:51', '2022-06-04 20:58:22');
INSERT INTO `goods` (`id`, `category_id`, `title`, `name`, `price`, `quantity`, `image_url`, `remark`, `sales`, `status`, `created`, `updated`) VALUES (35, 2050, '西红柿 350g', '西红柿', 5.80, 110, 'http://localhost:8000/image/IMG_1552.JPG', '图片仅供参考，请以实物为准', 12, 1, '2022-05-21 15:32:51', '2022-06-04 20:58:41');
COMMIT;

-- ----------------------------
-- Table structure for market
-- ----------------------------
DROP TABLE IF EXISTS `market`;
CREATE TABLE `market` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `type` tinyint DEFAULT NULL COMMENT '类型',
  `banner_image` varchar(200) DEFAULT NULL COMMENT '活动图片',
  `begin_time` varchar(50) DEFAULT NULL COMMENT '开始时间',
  `over_time` varchar(50) DEFAULT NULL COMMENT '结束时间',
  `goods_ids` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关联商品',
  `status` tinyint DEFAULT NULL COMMENT '状态，1-开启，2-关闭',
  `created` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `updated` varchar(50) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of market
-- ----------------------------
BEGIN;
INSERT INTO `market` (`id`, `name`, `type`, `banner_image`, `begin_time`, `over_time`, `goods_ids`, `status`, `created`, `updated`) VALUES (9, '钻石展位1', 1, 'http://localhost:8000/image/b1.png', '2022-06-08 00:00:00', '2022-06-25 00:00:00', '24', 1, '2022-06-08 22:05:13', '2022-06-10 22:11:09');
INSERT INTO `market` (`id`, `name`, `type`, `banner_image`, `begin_time`, `over_time`, `goods_ids`, `status`, `created`, `updated`) VALUES (10, '钻石展位2', 1, 'http://localhost:8000/image/b2.png', '2022-06-08 00:00:00', '2022-06-24 00:00:00', '24', 1, '2022-06-08 22:11:35', '2022-06-08 22:11:40');
COMMIT;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `open_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信用户编号',
  `goods_ids_count` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品项Id',
  `goods_count` int DEFAULT NULL COMMENT '商品数量',
  `total_price` decimal(10,2) DEFAULT NULL COMMENT '订单金额',
  `address_id` bigint DEFAULT NULL COMMENT '地址编号',
  `status` tinyint DEFAULT NULL COMMENT '订单状态，1-待付款，2-已取消，3-已付款，4-配送中，5-已完成',
  `created` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `updated` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of order
-- ----------------------------
BEGIN;
INSERT INTO `order` (`id`, `open_id`, `goods_ids_count`, `goods_count`, `total_price`, `address_id`, `status`, `created`, `updated`) VALUES (24, 'oUT385ZLmRr6R_a9xKSfSW9SekYI', '29:2,30:4', 6, 54.20, 1107, 1, '2022-06-11 09:23:52', '2022-06-11 09:25:06');
INSERT INTO `order` (`id`, `open_id`, `goods_ids_count`, `goods_count`, `total_price`, `address_id`, `status`, `created`, `updated`) VALUES (25, 'oUT385ZLmRr6R_a9xKSfSW9SekYI', '25:2,28:4,31:2', 8, 64.20, 1107, 2, '2022-06-11 09:25:58', '');
INSERT INTO `order` (`id`, `open_id`, `goods_ids_count`, `goods_count`, `total_price`, `address_id`, `status`, `created`, `updated`) VALUES (26, 'oUT385ZLmRr6R_a9xKSfSW9SekYI', '30:2,31:3,33:3', 8, 99.50, 1107, 3, '2022-06-11 09:26:44', '');
INSERT INTO `order` (`id`, `open_id`, `goods_ids_count`, `goods_count`, `total_price`, `address_id`, `status`, `created`, `updated`) VALUES (27, 'oUT385ZLmRr6R_a9xKSfSW9SekYI', '24:2,25:2', 4, 23.58, 1107, 4, '2022-06-11 09:27:19', '');
INSERT INTO `order` (`id`, `open_id`, `goods_ids_count`, `goods_count`, `total_price`, `address_id`, `status`, `created`, `updated`) VALUES (28, 'oUT385ZLmRr6R_a9xKSfSW9SekYI', '26:2', 2, 11.60, 1107, 5, '2022-06-11 09:27:32', '');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `open_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信用户唯一标识',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名称',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户密码',
  `status` tinyint DEFAULT NULL COMMENT '用户状态',
  `created` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `updated` varchar(50) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` (`id`, `open_id`, `username`, `password`, `status`, `created`, `updated`) VALUES (1010, 'oUT385ZLmRr6R_a9xKSfSW9SekYI', 'admin', '12345', 1, '2022-05-15 21:28:54', '');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
