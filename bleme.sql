/*
 Navicat Premium Data Transfer

 Source Server         : 本地MySQL
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : bleme

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 22/10/2021 10:51:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `receiver_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收货人姓名',
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `province` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '省',
  `city` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '市',
  `county` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '区',
  `address_detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `address_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '地址id',
  `is_default` tinyint(1) NULL DEFAULT NULL COMMENT '是否设置默认地址',
  PRIMARY KEY (`address_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1258315777, '李哥', '13952841426', '黑龙江省', '鸡西市', '鸡冠区', '常州信息职业技术学院12栋706', 1, 1);
INSERT INTO `address` VALUES (1862303745, '121221', '18261991543', '广西壮族自治区', '南宁市', '兴宁区', '45', 2, 0);
INSERT INTO `address` VALUES (-402624510, '地址1', '19212344231', '北京市', '北京市', '东城区', '我家楼下', 8, 0);
INSERT INTO `address` VALUES (-402624510, '地址3', '13423124423', '山西省', '太原市', '小店区', '详细地址3', 11, 0);

-- ----------------------------
-- Table structure for inshop_category
-- ----------------------------
DROP TABLE IF EXISTS `inshop_category`;
CREATE TABLE `inshop_category`  (
  `shop_id` int(0) NOT NULL COMMENT '店铺id',
  `category_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '店铺内分类名称',
  `category_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inshop_category
-- ----------------------------
INSERT INTO `inshop_category` VALUES (3, '优惠', 1);
INSERT INTO `inshop_category` VALUES (3, '满减套餐', 2);
INSERT INTO `inshop_category` VALUES (3, '满减主食', 3);
INSERT INTO `inshop_category` VALUES (3, '满减小食', 4);
INSERT INTO `inshop_category` VALUES (3, '满减饮料', 5);
INSERT INTO `inshop_category` VALUES (3, '折扣套餐', 6);
INSERT INTO `inshop_category` VALUES (3, '会员专享', 7);
INSERT INTO `inshop_category` VALUES (1, '惊喜连连', 8);
INSERT INTO `inshop_category` VALUES (1, '爆款主推', 9);
INSERT INTO `inshop_category` VALUES (1, '一元小吃', 10);
INSERT INTO `inshop_category` VALUES (1, '经典小吃', 11);
INSERT INTO `inshop_category` VALUES (1, '套餐系列', 12);
INSERT INTO `inshop_category` VALUES (1, '来份小菜', 13);
INSERT INTO `inshop_category` VALUES (1, '我要加肉', 14);
INSERT INTO `inshop_category` VALUES (1, '加份米线', 15);
INSERT INTO `inshop_category` VALUES (1, '火爆满减', 16);
INSERT INTO `inshop_category` VALUES (1, '饮料专区', 17);
INSERT INTO `inshop_category` VALUES (1, '添油加醋', 18);
INSERT INTO `inshop_category` VALUES (2, '优惠', 19);
INSERT INTO `inshop_category` VALUES (2, '特惠套餐专区', 20);
INSERT INTO `inshop_category` VALUES (2, '收藏店铺福利', 21);
INSERT INTO `inshop_category` VALUES (2, '中份韩式炸鸡', 22);
INSERT INTO `inshop_category` VALUES (2, '超值套餐加量', 23);
INSERT INTO `inshop_category` VALUES (2, '中份无骨炸鸡', 24);
INSERT INTO `inshop_category` VALUES (2, '新品套餐上市', 25);
INSERT INTO `inshop_category` VALUES (2, '大份单拼炸鸡', 26);
INSERT INTO `inshop_category` VALUES (2, '大份双排炸鸡', 27);
INSERT INTO `inshop_category` VALUES (2, '大份单拼无骨炸鸡', 28);
INSERT INTO `inshop_category` VALUES (2, '大份双拼无骨炸鸡', 29);
INSERT INTO `inshop_category` VALUES (2, '经典小吃系列', 30);
INSERT INTO `inshop_category` VALUES (2, '客户点餐必看', 31);
INSERT INTO `inshop_category` VALUES (2, '炸鸡饮品', 32);
INSERT INTO `inshop_category` VALUES (4, '特惠专场', 33);
INSERT INTO `inshop_category` VALUES (4, '回馈新老顾客', 34);
INSERT INTO `inshop_category` VALUES (4, '精致单人', 35);
INSERT INTO `inshop_category` VALUES (4, '整鸡套餐', 36);
INSERT INTO `inshop_category` VALUES (4, '双拼套餐', 37);
INSERT INTO `inshop_category` VALUES (4, '秘制鸡腿', 38);
INSERT INTO `inshop_category` VALUES (4, '豪华套餐', 39);
INSERT INTO `inshop_category` VALUES (4, '百亿补贴', 40);
INSERT INTO `inshop_category` VALUES (4, '豪华大餐', 41);
INSERT INTO `inshop_category` VALUES (4, '多人共享', 42);
INSERT INTO `inshop_category` VALUES (4, '1-5元小吃加量', 43);
INSERT INTO `inshop_category` VALUES (4, '5-9元小吃加量', 44);
INSERT INTO `inshop_category` VALUES (4, '10元以上小吃加量', 45);
INSERT INTO `inshop_category` VALUES (5, '扫码领券', 46);
INSERT INTO `inshop_category` VALUES (5, '收藏惊喜', 47);
INSERT INTO `inshop_category` VALUES (5, '爆款折扣', 48);
INSERT INTO `inshop_category` VALUES (5, '南昌拌粉', 49);
INSERT INTO `inshop_category` VALUES (5, '治愈套餐', 50);
INSERT INTO `inshop_category` VALUES (5, '老街卤味', 51);
INSERT INTO `inshop_category` VALUES (5, '土豪加餐', 52);
INSERT INTO `inshop_category` VALUES (5, '夏季冰饮', 53);
INSERT INTO `inshop_category` VALUES (5, '小料单加', 54);
INSERT INTO `inshop_category` VALUES (5, '主食加量', 55);
INSERT INTO `inshop_category` VALUES (5, '汤品', 56);
INSERT INTO `inshop_category` VALUES (5, '财富密码', 57);
INSERT INTO `inshop_category` VALUES (6, '下单福利', 58);
INSERT INTO `inshop_category` VALUES (6, '热销', 59);
INSERT INTO `inshop_category` VALUES (6, '推荐', 60);
INSERT INTO `inshop_category` VALUES (6, '优惠', 61);
INSERT INTO `inshop_category` VALUES (6, '必选品', 62);
INSERT INTO `inshop_category` VALUES (6, '【一人一锅】', 63);
INSERT INTO `inshop_category` VALUES (6, '米饭，不要忘了点【单点不送】', 64);
INSERT INTO `inshop_category` VALUES (6, '【肉食荤菜】单点不送', 65);
INSERT INTO `inshop_category` VALUES (6, '【豆类制品】单点不送', 66);
INSERT INTO `inshop_category` VALUES (6, '【新鲜蔬菜】单点不送', 67);
INSERT INTO `inshop_category` VALUES (6, '【饮料】单点不送', 68);
INSERT INTO `inshop_category` VALUES (6, '【餐具】', 69);

-- ----------------------------
-- Table structure for inshop_goods
-- ----------------------------
DROP TABLE IF EXISTS `inshop_goods`;
CREATE TABLE `inshop_goods`  (
  `shop_id` int(0) NOT NULL COMMENT '店铺id',
  `category_id` int(0) NOT NULL COMMENT '分类id',
  `good_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品名称',
  `good_desc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品描述',
  `original_price` double(5, 2) NULL DEFAULT NULL COMMENT '原价',
  `present_price` double(5, 2) NULL DEFAULT NULL COMMENT '现价',
  `monthly_sale` int(0) NOT NULL COMMENT '月售',
  `good_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `good_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`good_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inshop_goods
-- ----------------------------
INSERT INTO `inshop_goods` VALUES (3, 1, '香辣翅根', '原料：鸡翅', 8.00, 1.50, 494, 1, 'https://pic.imgdb.cn/item/616e8be02ab3f51d91c2c1bf.png');
INSERT INTO `inshop_goods` VALUES (3, 1, '劲脆鸡排堡', '原料：鸡肉', 7.99, 2.99, 577, 2, 'https://pic.imgdb.cn/item/616e8be02ab3f51d91c2c1b6.png');
INSERT INTO `inshop_goods` VALUES (3, 1, 'W会员专享套餐', '香辣鸡排堡+华香脆骨串+中可', 37.80, 18.90, 19, 3, 'https://pic.imgdb.cn/item/616e8be02ab3f51d91c2c1ae.png');
INSERT INTO `inshop_goods` VALUES (3, 2, '手扒鸡套餐', '手扒鸡1只+大薯条1份+中杯可乐1杯', 62.00, 29.00, 14, 4, 'https://pic.imgdb.cn/item/616ea7ed2ab3f51d91d5a6ee.png');
INSERT INTO `inshop_goods` VALUES (3, 2, '专享单人餐A', '双层鸡排堡+上校+大薯条+中杯可乐', 49.00, 14.00, 51, 5, 'https://pic.imgdb.cn/item/616ea7ed2ab3f51d91d5a6e9.png');
INSERT INTO `inshop_goods` VALUES (3, 2, '专享单人餐', '香辣鸡腿堡+鸡肉卷+2翅根+中杯可乐', 49.00, 16.00, 110, 6, 'https://pic.imgdb.cn/item/616ea7ed2ab3f51d91d5a6e3.png');
INSERT INTO `inshop_goods` VALUES (3, 3, '嫩牛五方', '原料：面包', 15.00, 12.00, 84, 7, 'https://pic.imgdb.cn/item/616eb1032ab3f51d91dcb60d.png');
INSERT INTO `inshop_goods` VALUES (3, 3, '香辣双鸡堡', '腌制工艺升级，口感升级', 15.00, 12.00, 52, 8, 'https://pic.imgdb.cn/item/616eb1022ab3f51d91dcb605.png');
INSERT INTO `inshop_goods` VALUES (3, 3, '辣味鸡肉卷', '人气必吃！', 15.00, 12.00, 64, 9, 'https://pic.imgdb.cn/item/616eb1022ab3f51d91dcb5ff.png');
INSERT INTO `inshop_goods` VALUES (3, 4, '大薯条', '亲，外卖薯条会变软，介意勿点', NULL, 12.00, 113, 10, 'https://pic.imgdb.cn/item/616eb3112ab3f51d91df35a2.png');
INSERT INTO `inshop_goods` VALUES (3, 4, '鸡米花', '原料：鸡肉', NULL, 12.00, 77, 11, 'https://pic.imgdb.cn/item/616eb3112ab3f51d91df3598.png');
INSERT INTO `inshop_goods` VALUES (3, 4, '黑椒鸡块', '原料：鸡肉', NULL, 12.00, 73, 12, 'https://pic.imgdb.cn/item/616eb3112ab3f51d91df3584.png');
INSERT INTO `inshop_goods` VALUES (3, 4, '黄金脆鸡排', '元气满满大鸡排！', NULL, 12.00, 172, 13, 'https://pic.imgdb.cn/item/616eb3112ab3f51d91df3576.png');
INSERT INTO `inshop_goods` VALUES (3, 5, '中杯可乐', '原料：可乐', NULL, 10.00, 142, 14, 'https://pic.imgdb.cn/item/616eb3b12ab3f51d91e020cc.png');
INSERT INTO `inshop_goods` VALUES (3, 5, '大杯可乐', '原料：可乐', NULL, 11.00, 71, 15, 'https://pic.imgdb.cn/item/616eb3b12ab3f51d91e020cc.png');
INSERT INTO `inshop_goods` VALUES (3, 5, '牛奶', NULL, NULL, 11.00, 15, 16, 'https://pic.imgdb.cn/item/616eb3b12ab3f51d91e020bf.png');
INSERT INTO `inshop_goods` VALUES (3, 5, '中杯果珍', NULL, NULL, 10.00, 13, 17, 'https://pic.imgdb.cn/item/616eb3b12ab3f51d91e020b5.png');
INSERT INTO `inshop_goods` VALUES (3, 6, '单人折扣餐', '香辣鸡腿堡+辣味鸡肉卷+中杯可乐', 39.90, 20.90, 100, 18, 'https://pic.imgdb.cn/item/616eb4872ab3f51d91e0e0e7.png');
INSERT INTO `inshop_goods` VALUES (3, 6, '嫩牛五方汉堡餐', '黑椒嫩牛五方+香辣鸡腿堡+中可/大可', 40.50, 20.50, 146, 19, 'https://pic.imgdb.cn/item/616eb4872ab3f51d91e0e0de.png');
INSERT INTO `inshop_goods` VALUES (3, 6, '招牌蜜汁全鸡餐', '手扒鸡1只+中杯可乐1杯', 54.90, 27.90, 74, 20, 'https://pic.imgdb.cn/item/616eb4872ab3f51d91e0e0d9.png');
INSERT INTO `inshop_goods` VALUES (3, 7, '[会员专享]卷堡超值套餐', '单层鸡排堡+辣味鸡肉卷+中可', 37.80, 18.90, 67, 21, 'https://pic.imgdb.cn/item/616eb56a2ab3f51d91e18dd1.png');
INSERT INTO `inshop_goods` VALUES (1, 8, '超级好吃的一口肠', '翻越十万八千里，只为见到你的胃', 0.90, 0.10, 381, 22, 'https://pic.imgdb.cn/item/616f6c822ab3f51d91677956.png');
INSERT INTO `inshop_goods` VALUES (1, 8, '可以吃好多肉肉||雪花肥牛', '精选雪花肥牛', 1.20, 0.10, 745, 23, 'https://pic.imgdb.cn/item/616f6c822ab3f51d9167794b.png');
INSERT INTO `inshop_goods` VALUES (1, 8, '牛转乾坤|牛肉丸一个', '原料：牛肉丸', 1.20, 0.10, 252, 24, 'https://pic.imgdb.cn/item/616f6c822ab3f51d91677938.png');
INSERT INTO `inshop_goods` VALUES (1, 8, '随机新鲜蔬菜一份', '原料：娃娃菜，金针菇', 2.00, 0.50, 272, 25, 'https://pic.imgdb.cn/item/616f6c822ab3f51d91677942.png');
INSERT INTO `inshop_goods` VALUES (1, 8, '人気纯手工|红豆双皮奶', '玲珑骰子安红豆，入骨相思知不知', 8.00, 1.99, 80, 26, 'https://pic.imgdb.cn/item/616f6c822ab3f51d91677933.png');

-- ----------------------------
-- Table structure for order_items
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items`  (
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单编号',
  `item_id` int(0) NULL DEFAULT NULL COMMENT '商品id',
  `item_num` int(0) NULL DEFAULT NULL COMMENT '商品数量',
  `listItem_id` int(0) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `item_price` double NULL DEFAULT NULL,
  PRIMARY KEY (`listItem_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_items
-- ----------------------------
INSERT INTO `order_items` VALUES ('1450873323062931458', 26, 1, 1, '人気纯手工|红豆双皮奶', 1.99);
INSERT INTO `order_items` VALUES ('1450873323062931458', 23, 1, 2, '可以吃好多肉肉||雪花肥牛', 0.1);
INSERT INTO `order_items` VALUES ('1450873323062931458', 22, 1, 3, '超级好吃的一口肠', 0.1);
INSERT INTO `order_items` VALUES ('1450875441429729282', 3, 1, 4, 'W会员专享套餐', 18.9);
INSERT INTO `order_items` VALUES ('1450875441429729282', 11, 1, 5, '鸡米花', 12);
INSERT INTO `order_items` VALUES ('1450875441429729282', 10, 1, 6, '大薯条', 12);
INSERT INTO `order_items` VALUES ('1450981866688507906', 1, 1, 7, '香辣翅根', 1.5);
INSERT INTO `order_items` VALUES ('1450981866688507906', 2, 1, 8, '劲脆鸡排堡', 2.99);
INSERT INTO `order_items` VALUES ('1450981866688507906', 3, 1, 9, 'W会员专享套餐', 18.9);
INSERT INTO `order_items` VALUES ('1450981866688507906', 4, 2, 10, '手扒鸡套餐', 29);
INSERT INTO `order_items` VALUES ('1450981866688507906', 5, 1, 11, '专享单人餐A', 14);
INSERT INTO `order_items` VALUES ('1450981866688507906', 6, 1, 12, '专享单人餐', 16);
INSERT INTO `order_items` VALUES ('1450981866688507906', 17, 1, 13, '中杯果珍', 10);
INSERT INTO `order_items` VALUES ('1450981866688507906', 15, 2, 14, '大杯可乐', 11);
INSERT INTO `order_items` VALUES ('1450986166609321986', 26, 1, 15, '人気纯手工|红豆双皮奶', 1.99);
INSERT INTO `order_items` VALUES ('1450986166609321986', 4, 1, 16, '手扒鸡套餐', 29);
INSERT INTO `order_items` VALUES ('1450986166609321986', 5, 1, 17, '专享单人餐A', 14);
INSERT INTO `order_items` VALUES ('1450986166609321986', 21, 2, 18, '[会员专享]卷堡超值套餐', 18.9);
INSERT INTO `order_items` VALUES ('1450986166609321986', 18, 1, 19, '单人折扣餐', 20.9);
INSERT INTO `order_items` VALUES ('1450986166609321986', 19, 1, 20, '嫩牛五方汉堡餐', 20.5);
INSERT INTO `order_items` VALUES ('1450986166609321986', 15, 1, 21, '大杯可乐', 11);
INSERT INTO `order_items` VALUES ('1450986166609321986', 16, 1, 22, '牛奶', 11);
INSERT INTO `order_items` VALUES ('1450986166609321986', 17, 1, 23, '中杯果珍', 10);
INSERT INTO `order_items` VALUES ('1451086330258784257', 3, 1, 24, 'W会员专享套餐', 18.9);
INSERT INTO `order_items` VALUES ('1451086330258784257', 11, 1, 25, '鸡米花', 12);
INSERT INTO `order_items` VALUES ('1451086330258784257', 14, 1, 26, '中杯可乐', 10);
INSERT INTO `order_items` VALUES ('1451086330258784257', 21, 1, 27, '[会员专享]卷堡超值套餐', 18.9);
INSERT INTO `order_items` VALUES ('1451086330258784257', 4, 1, 28, '手扒鸡套餐', 29);
INSERT INTO `order_items` VALUES ('1451089867990630401', 26, 6, 29, '人気纯手工|红豆双皮奶', 1.99);
INSERT INTO `order_items` VALUES ('1451089867990630401', 22, 11, 30, '超级好吃的一口肠', 0.1);
INSERT INTO `order_items` VALUES ('1451369890903617537', 3, 1, 31, 'W会员专享套餐', 18.9);
INSERT INTO `order_items` VALUES ('1451369890903617537', 21, 1, 32, '[会员专享]卷堡超值套餐', 18.9);
INSERT INTO `order_items` VALUES ('1451369890903617537', 10, 1, 33, '大薯条', 12);
INSERT INTO `order_items` VALUES ('1451369890903617537', 12, 1, 34, '黑椒鸡块', 12);
INSERT INTO `order_items` VALUES ('1451369890903617537', 13, 1, 35, '黄金脆鸡排', 12);

-- ----------------------------
-- Table structure for order_list
-- ----------------------------
DROP TABLE IF EXISTS `order_list`;
CREATE TABLE `order_list`  (
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单编号',
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `total_num` int(0) NULL DEFAULT NULL COMMENT '商品数量',
  `total_price` double(10, 2) NULL DEFAULT NULL COMMENT '总价',
  `create_time` datetime(0) NOT NULL COMMENT '订单创建时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_list
-- ----------------------------
INSERT INTO `order_list` VALUES ('1450873323062931458', 1258315777, 3, 2.19, '2021-10-21 01:15:31');
INSERT INTO `order_list` VALUES ('1450875441429729282', 1258315777, 3, 42.90, '2021-10-21 01:23:56');
INSERT INTO `order_list` VALUES ('1450981866688507906', -402624510, 10, 143.39, '2021-10-21 08:26:50');
INSERT INTO `order_list` VALUES ('1450986166609321986', 1258315777, 10, 156.19, '2021-10-21 08:43:55');
INSERT INTO `order_list` VALUES ('1451086330258784257', 1258315777, 5, 88.80, '2021-10-21 15:21:56');
INSERT INTO `order_list` VALUES ('1451089867990630401', 1258315777, 17, 13.04, '2021-10-21 15:35:59');
INSERT INTO `order_list` VALUES ('1451369890903617537', 2080501762, 5, 73.80, '2021-10-22 10:08:42');

-- ----------------------------
-- Table structure for takeout_shop
-- ----------------------------
DROP TABLE IF EXISTS `takeout_shop`;
CREATE TABLE `takeout_shop`  (
  `shop_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '店铺id',
  `shop_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '店铺名称',
  `shop_point` double NULL DEFAULT NULL COMMENT '店铺评分',
  `monthly_sale` int(0) NULL DEFAULT NULL COMMENT '店铺月售',
  `shop_category` int(0) NULL DEFAULT NULL COMMENT '店铺分类',
  `shop_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_recommended` tinyint(0) NULL DEFAULT 0 COMMENT '是否被推荐',
  `shop_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '店铺徽标',
  PRIMARY KEY (`shop_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of takeout_shop
-- ----------------------------
INSERT INTO `takeout_shop` VALUES (1, '川粉霸·大碗牛肉·肥牛米线（常州大学城店）', 4.8, 1479, NULL, '“汤和面分开，味道很好”', 1, 'https://pic.imgdb.cn/item/616e34a22ab3f51d917d2b15.png');
INSERT INTO `takeout_shop` VALUES (2, '三个先森的韩国炸鸡（大学城店）', 5, 72, NULL, '近1天有20人下单尝鲜', 1, 'https://pic.imgdb.cn/item/616e34c32ab3f51d917d4e27.png');
INSERT INTO `takeout_shop` VALUES (3, '华莱士·全鸡汉堡（信息学院店）', 4.5, 2437, NULL, '“味道不错，下次再来  包装盒很好啊”', 1, 'https://pic.imgdb.cn/item/616e34a22ab3f51d917d2b1a.png');
INSERT INTO `takeout_shop` VALUES (4, '柠檬队长韩国炸鸡（武进店）', 4.7, 2662, NULL, '“口感不错，价格比较划算整只炸鸡”', 1, 'https://pic.imgdb.cn/item/616e3a822ab3f51d9181b33e.png');
INSERT INTO `takeout_shop` VALUES (5, '老街儿南昌拌粉（大学城店）', 4.8, 1283, NULL, '“料很丰富，味道也很不错，好吃”', 1, 'https://pic.imgdb.cn/item/616e3a822ab3f51d9181b338.png');
INSERT INTO `takeout_shop` VALUES (6, '鸡小酱鸡公煲（滆湖中路店）', 4.7, 3794, NULL, '“热干面绝了，老板放了豆瓣酱，很好吃”', 1, 'https://pic.imgdb.cn/item/616e3a822ab3f51d9181b346.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户密码',
  `role` int(0) NULL DEFAULT 1 COMMENT '用户角色',
  `phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `pay_pwd` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_username_uindex`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1862303746 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (-402624510, 'baby', '20091230115', 1, '13912344321', '666666');
INSERT INTO `user` VALUES (-381681662, '111', '111', 1, '13812312312', '123456');
INSERT INTO `user` VALUES (1, 'admin', 'admin123456', 3, NULL, '999999');
INSERT INTO `user` VALUES (1258315777, 'baby李', '12345', 2, '13952841426', '210545');
INSERT INTO `user` VALUES (2080501762, '测试用户', '12345', 1, '13912344321', '123456');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `role_id` int(0) NOT NULL COMMENT '角色id',
  `role_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (0, '游客');
INSERT INTO `user_role` VALUES (1, '普通会员');
INSERT INTO `user_role` VALUES (2, '高级会员');
INSERT INTO `user_role` VALUES (3, '管理员');

SET FOREIGN_KEY_CHECKS = 1;
