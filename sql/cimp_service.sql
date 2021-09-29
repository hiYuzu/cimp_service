/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : cimp_service

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 29/09/2021 16:26:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for active_user
-- ----------------------------
DROP TABLE IF EXISTS `active_user`;
CREATE TABLE `active_user`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount` int(11) NULL DEFAULT NULL COMMENT '人数'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for active_user_age
-- ----------------------------
DROP TABLE IF EXISTS `active_user_age`;
CREATE TABLE `active_user_age`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount5` int(11) NULL DEFAULT NULL COMMENT '1-5岁人数',
  `amount10` int(11) NULL DEFAULT NULL COMMENT '6-10岁人数',
  `amount15` int(11) NULL DEFAULT NULL COMMENT '11-15岁人数',
  `amount20` int(11) NULL DEFAULT NULL COMMENT '16-20岁人数',
  `amount25` int(11) NULL DEFAULT NULL COMMENT '21-25岁人数',
  `amount30` int(11) NULL DEFAULT NULL COMMENT '26-30岁人数',
  `amount35` int(11) NULL DEFAULT NULL COMMENT '31-35岁人数',
  `amount40` int(11) NULL DEFAULT NULL COMMENT '36-40岁人数',
  `amount45` int(11) NULL DEFAULT NULL COMMENT '41-45岁人数',
  `amount50` int(11) NULL DEFAULT NULL COMMENT '46-50岁人数',
  `amount55` int(11) NULL DEFAULT NULL COMMENT '51-55岁人数',
  `amount60` int(11) NULL DEFAULT NULL COMMENT '56-60岁人数',
  `amount65` int(11) NULL DEFAULT NULL COMMENT '61-65岁人数',
  `amount70` int(11) NULL DEFAULT NULL COMMENT '66-70岁人数',
  `amount_over` int(11) NULL DEFAULT NULL COMMENT '70+岁'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for active_user_attr
-- ----------------------------
DROP TABLE IF EXISTS `active_user_attr`;
CREATE TABLE `active_user_attr`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount` int(11) NULL DEFAULT NULL COMMENT '人数',
  `city_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属城市ID'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for active_user_home
-- ----------------------------
DROP TABLE IF EXISTS `active_user_home`;
CREATE TABLE `active_user_home`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount` int(11) NULL DEFAULT NULL COMMENT '人数',
  `city_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '户籍城市ID'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for active_user_sex
-- ----------------------------
DROP TABLE IF EXISTS `active_user_sex`;
CREATE TABLE `active_user_sex`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount_male` int(11) NULL DEFAULT NULL COMMENT '男性人数',
  `amount_female` int(11) NULL DEFAULT NULL COMMENT '女性人数'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for area_appear
-- ----------------------------
DROP TABLE IF EXISTS `area_appear`;
CREATE TABLE `area_appear`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID\r\n',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount` int(11) NULL DEFAULT NULL COMMENT '人数'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for area_appear_attr
-- ----------------------------
DROP TABLE IF EXISTS `area_appear_attr`;
CREATE TABLE `area_appear_attr`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount` int(11) NULL DEFAULT NULL COMMENT '人数',
  `city_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属城市ID'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for area_appear_home
-- ----------------------------
DROP TABLE IF EXISTS `area_appear_home`;
CREATE TABLE `area_appear_home`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount` int(11) NULL DEFAULT NULL COMMENT '人数',
  `city_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '户籍城市ID'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for area_stay_duration
-- ----------------------------
DROP TABLE IF EXISTS `area_stay_duration`;
CREATE TABLE `area_stay_duration`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount` int(11) NULL DEFAULT NULL COMMENT '人数'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for area_stay_duration_age
-- ----------------------------
DROP TABLE IF EXISTS `area_stay_duration_age`;
CREATE TABLE `area_stay_duration_age`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount5` int(11) NULL DEFAULT NULL COMMENT '1-5岁人数',
  `amount10` int(11) NULL DEFAULT NULL COMMENT '6-10岁人数',
  `amount15` int(11) NULL DEFAULT NULL COMMENT '11-15岁人数',
  `amount20` int(11) NULL DEFAULT NULL COMMENT '16-20岁人数',
  `amount25` int(11) NULL DEFAULT NULL COMMENT '21-25岁人数',
  `amount30` int(11) NULL DEFAULT NULL COMMENT '26-30岁人数',
  `amount35` int(11) NULL DEFAULT NULL COMMENT '31-35岁人数',
  `amount40` int(11) NULL DEFAULT NULL COMMENT '36-40岁人数',
  `amount45` int(11) NULL DEFAULT NULL COMMENT '41-45岁人数',
  `amount50` int(11) NULL DEFAULT NULL COMMENT '46-50岁人数',
  `amount55` int(11) NULL DEFAULT NULL COMMENT '51-55岁人数',
  `amount60` int(11) NULL DEFAULT NULL COMMENT '56-60岁人数',
  `amount65` int(11) NULL DEFAULT NULL COMMENT '61-65岁人数',
  `amount70` int(11) NULL DEFAULT NULL COMMENT '66-70岁人数',
  `amount_over` int(11) NULL DEFAULT NULL COMMENT '70+岁'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for area_stay_duration_attr
-- ----------------------------
DROP TABLE IF EXISTS `area_stay_duration_attr`;
CREATE TABLE `area_stay_duration_attr`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount` int(11) NULL DEFAULT NULL COMMENT '人数',
  `city_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属城市ID'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for area_stay_duration_home
-- ----------------------------
DROP TABLE IF EXISTS `area_stay_duration_home`;
CREATE TABLE `area_stay_duration_home`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount` int(11) NULL DEFAULT NULL COMMENT '人数',
  `city_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '户籍城市ID'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for area_stay_duration_sex
-- ----------------------------
DROP TABLE IF EXISTS `area_stay_duration_sex`;
CREATE TABLE `area_stay_duration_sex`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount_male` int(11) NULL DEFAULT NULL COMMENT '男性人数',
  `amount_female` int(11) NULL DEFAULT NULL COMMENT '女性人数'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for daily_commute_radius
-- ----------------------------
DROP TABLE IF EXISTS `daily_commute_radius`;
CREATE TABLE `daily_commute_radius`  (
  `work_area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作区域ID',
  `live_area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '居住区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `distance` double(11, 0) NULL DEFAULT NULL COMMENT '距离'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for daily_commute_time
-- ----------------------------
DROP TABLE IF EXISTS `daily_commute_time`;
CREATE TABLE `daily_commute_time`  (
  `work_area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作区域ID',
  `live_area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '居住区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `duration` double(11, 0) NULL DEFAULT NULL COMMENT '时长'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for daily_day
-- ----------------------------
DROP TABLE IF EXISTS `daily_day`;
CREATE TABLE `daily_day`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount` int(11) NULL DEFAULT NULL COMMENT '人数'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for daily_night
-- ----------------------------
DROP TABLE IF EXISTS `daily_night`;
CREATE TABLE `daily_night`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount` int(11) NULL DEFAULT NULL COMMENT '人数'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dic_all_area
-- ----------------------------
DROP TABLE IF EXISTS `dic_all_area`;
CREATE TABLE `dic_all_area`  (
  `attr_id` int(11) NOT NULL,
  `attr_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`attr_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dic_all_area
-- ----------------------------
INSERT INTO `dic_all_area` VALUES (0, '亚洲');
INSERT INTO `dic_all_area` VALUES (1, '欧洲');
INSERT INTO `dic_all_area` VALUES (2, '美洲');
INSERT INTO `dic_all_area` VALUES (3, '大洋洲');
INSERT INTO `dic_all_area` VALUES (4, '非洲');
INSERT INTO `dic_all_area` VALUES (21, '阿富汗');
INSERT INTO `dic_all_area` VALUES (22, '亚美尼亚');
INSERT INTO `dic_all_area` VALUES (23, '阿塞拜疆');
INSERT INTO `dic_all_area` VALUES (24, '巴林');
INSERT INTO `dic_all_area` VALUES (25, '孟加拉国');
INSERT INTO `dic_all_area` VALUES (26, '不丹');
INSERT INTO `dic_all_area` VALUES (27, '文莱');
INSERT INTO `dic_all_area` VALUES (28, '柬埔寨');
INSERT INTO `dic_all_area` VALUES (29, '东帝汶');
INSERT INTO `dic_all_area` VALUES (30, '乔治亚');
INSERT INTO `dic_all_area` VALUES (31, '印度');
INSERT INTO `dic_all_area` VALUES (32, '印度尼西亚');
INSERT INTO `dic_all_area` VALUES (33, '伊朗');
INSERT INTO `dic_all_area` VALUES (34, '伊拉克');
INSERT INTO `dic_all_area` VALUES (35, '以色列');
INSERT INTO `dic_all_area` VALUES (36, '日本');
INSERT INTO `dic_all_area` VALUES (37, '约旦');
INSERT INTO `dic_all_area` VALUES (38, '哈萨克');
INSERT INTO `dic_all_area` VALUES (39, '北朝鲜');
INSERT INTO `dic_all_area` VALUES (40, '韩国');
INSERT INTO `dic_all_area` VALUES (41, '科威特');
INSERT INTO `dic_all_area` VALUES (42, '吉尔吉斯');
INSERT INTO `dic_all_area` VALUES (43, '老挝');
INSERT INTO `dic_all_area` VALUES (44, '黎巴嫩');
INSERT INTO `dic_all_area` VALUES (45, '马来西亚');
INSERT INTO `dic_all_area` VALUES (46, '马尔代夫');
INSERT INTO `dic_all_area` VALUES (47, '蒙古国');
INSERT INTO `dic_all_area` VALUES (48, '缅甸');
INSERT INTO `dic_all_area` VALUES (49, '尼泊尔');
INSERT INTO `dic_all_area` VALUES (50, '阿曼');
INSERT INTO `dic_all_area` VALUES (51, '巴基斯坦');
INSERT INTO `dic_all_area` VALUES (52, '巴勒斯坦');
INSERT INTO `dic_all_area` VALUES (53, '菲律宾');
INSERT INTO `dic_all_area` VALUES (54, '卡达');
INSERT INTO `dic_all_area` VALUES (55, '沙特阿拉伯');
INSERT INTO `dic_all_area` VALUES (56, '新加坡');
INSERT INTO `dic_all_area` VALUES (57, '斯里兰卡');
INSERT INTO `dic_all_area` VALUES (58, '叙利亚');
INSERT INTO `dic_all_area` VALUES (59, '塔吉克');
INSERT INTO `dic_all_area` VALUES (60, '泰国');
INSERT INTO `dic_all_area` VALUES (61, '土耳其');
INSERT INTO `dic_all_area` VALUES (62, '土库曼');
INSERT INTO `dic_all_area` VALUES (63, '阿拉伯联合酋长国');
INSERT INTO `dic_all_area` VALUES (64, '乌兹别克');
INSERT INTO `dic_all_area` VALUES (65, '越南');
INSERT INTO `dic_all_area` VALUES (66, '也门');
INSERT INTO `dic_all_area` VALUES (86, '中国');
INSERT INTO `dic_all_area` VALUES (121, '阿尔巴尼亚');
INSERT INTO `dic_all_area` VALUES (122, '安道尔');
INSERT INTO `dic_all_area` VALUES (123, '奥地利');
INSERT INTO `dic_all_area` VALUES (124, '白俄罗斯');
INSERT INTO `dic_all_area` VALUES (125, '比利时');
INSERT INTO `dic_all_area` VALUES (126, '波斯尼亚与赫塞哥维纳');
INSERT INTO `dic_all_area` VALUES (127, '保加利亚');
INSERT INTO `dic_all_area` VALUES (128, '克罗地亚');
INSERT INTO `dic_all_area` VALUES (129, '塞浦路斯');
INSERT INTO `dic_all_area` VALUES (130, '捷克');
INSERT INTO `dic_all_area` VALUES (131, '丹麦');
INSERT INTO `dic_all_area` VALUES (132, '爱沙尼亚');
INSERT INTO `dic_all_area` VALUES (133, '法罗群岛 (丹麦)');
INSERT INTO `dic_all_area` VALUES (134, '芬兰');
INSERT INTO `dic_all_area` VALUES (135, '法国');
INSERT INTO `dic_all_area` VALUES (136, '德国');
INSERT INTO `dic_all_area` VALUES (137, '直布罗陀 (英国)');
INSERT INTO `dic_all_area` VALUES (138, '希腊');
INSERT INTO `dic_all_area` VALUES (139, '匈牙利');
INSERT INTO `dic_all_area` VALUES (140, '冰岛');
INSERT INTO `dic_all_area` VALUES (141, '爱尔兰共和国');
INSERT INTO `dic_all_area` VALUES (142, '意大利');
INSERT INTO `dic_all_area` VALUES (143, '拉脱维亚');
INSERT INTO `dic_all_area` VALUES (144, '列支敦士登');
INSERT INTO `dic_all_area` VALUES (145, '立陶宛');
INSERT INTO `dic_all_area` VALUES (146, '卢森堡');
INSERT INTO `dic_all_area` VALUES (147, '马耳他');
INSERT INTO `dic_all_area` VALUES (148, '摩尔多瓦');
INSERT INTO `dic_all_area` VALUES (149, '摩纳哥');
INSERT INTO `dic_all_area` VALUES (150, '黑山共和国');
INSERT INTO `dic_all_area` VALUES (151, '荷兰');
INSERT INTO `dic_all_area` VALUES (152, '挪威');
INSERT INTO `dic_all_area` VALUES (153, '波兰');
INSERT INTO `dic_all_area` VALUES (154, '葡萄牙');
INSERT INTO `dic_all_area` VALUES (155, '罗马尼亚');
INSERT INTO `dic_all_area` VALUES (156, '俄罗斯');
INSERT INTO `dic_all_area` VALUES (157, '圣马力诺');
INSERT INTO `dic_all_area` VALUES (158, '塞尔维亚共和国');
INSERT INTO `dic_all_area` VALUES (159, '斯洛伐克');
INSERT INTO `dic_all_area` VALUES (160, '斯洛文尼亚');
INSERT INTO `dic_all_area` VALUES (161, '西班牙');
INSERT INTO `dic_all_area` VALUES (162, '瑞典');
INSERT INTO `dic_all_area` VALUES (163, '瑞士');
INSERT INTO `dic_all_area` VALUES (164, '乌克兰');
INSERT INTO `dic_all_area` VALUES (165, '英国');
INSERT INTO `dic_all_area` VALUES (166, '梵蒂冈');
INSERT INTO `dic_all_area` VALUES (221, '安圭拉');
INSERT INTO `dic_all_area` VALUES (222, '安提瓜和巴布达');
INSERT INTO `dic_all_area` VALUES (223, '阿根廷');
INSERT INTO `dic_all_area` VALUES (224, '阿鲁巴 (荷兰王国)');
INSERT INTO `dic_all_area` VALUES (225, '巴哈马');
INSERT INTO `dic_all_area` VALUES (226, '巴巴多斯');
INSERT INTO `dic_all_area` VALUES (227, '伯利兹');
INSERT INTO `dic_all_area` VALUES (228, '百慕大 (英国)');
INSERT INTO `dic_all_area` VALUES (229, '玻利维亚');
INSERT INTO `dic_all_area` VALUES (230, '巴西');
INSERT INTO `dic_all_area` VALUES (231, '英属维尔京群岛 (英国)');
INSERT INTO `dic_all_area` VALUES (232, '加拿大');
INSERT INTO `dic_all_area` VALUES (233, '开曼群岛 (英国)');
INSERT INTO `dic_all_area` VALUES (234, '智利');
INSERT INTO `dic_all_area` VALUES (235, '哥伦比亚');
INSERT INTO `dic_all_area` VALUES (236, '哥斯达黎加');
INSERT INTO `dic_all_area` VALUES (237, '古巴');
INSERT INTO `dic_all_area` VALUES (238, '库拉索 (荷兰王国)');
INSERT INTO `dic_all_area` VALUES (239, '多米尼克');
INSERT INTO `dic_all_area` VALUES (240, '多米尼加共和国');
INSERT INTO `dic_all_area` VALUES (241, '厄瓜多尔');
INSERT INTO `dic_all_area` VALUES (242, '萨尔瓦多');
INSERT INTO `dic_all_area` VALUES (243, '福克兰群岛 (英国)');
INSERT INTO `dic_all_area` VALUES (244, '法属圭亚那 (法国)');
INSERT INTO `dic_all_area` VALUES (245, '格陵兰 (丹麦)');
INSERT INTO `dic_all_area` VALUES (246, '格林纳达');
INSERT INTO `dic_all_area` VALUES (247, '瓜德罗普 (法国)');
INSERT INTO `dic_all_area` VALUES (248, '危地马拉');
INSERT INTO `dic_all_area` VALUES (249, '圭亚那');
INSERT INTO `dic_all_area` VALUES (250, '海地');
INSERT INTO `dic_all_area` VALUES (251, '洪都拉斯');
INSERT INTO `dic_all_area` VALUES (252, '牙买加');
INSERT INTO `dic_all_area` VALUES (253, '马提尼克 (法国)');
INSERT INTO `dic_all_area` VALUES (254, '墨西哥');
INSERT INTO `dic_all_area` VALUES (255, '蒙塞拉特岛 (英国)');
INSERT INTO `dic_all_area` VALUES (256, '尼加拉瓜');
INSERT INTO `dic_all_area` VALUES (257, '巴拿马');
INSERT INTO `dic_all_area` VALUES (258, '巴拉圭');
INSERT INTO `dic_all_area` VALUES (259, '秘鲁');
INSERT INTO `dic_all_area` VALUES (260, '波多黎各 (美国)');
INSERT INTO `dic_all_area` VALUES (261, '圣克里斯多福与尼维斯');
INSERT INTO `dic_all_area` VALUES (262, '圣卢西亚');
INSERT INTO `dic_all_area` VALUES (263, '圣皮耶与密克隆群岛 (法国)');
INSERT INTO `dic_all_area` VALUES (264, '圣文森及格林纳丁');
INSERT INTO `dic_all_area` VALUES (265, '苏里南');
INSERT INTO `dic_all_area` VALUES (266, '特立尼达和多巴哥');
INSERT INTO `dic_all_area` VALUES (267, '土克凯可群岛 (英国)');
INSERT INTO `dic_all_area` VALUES (268, '美国');
INSERT INTO `dic_all_area` VALUES (269, '美属维尔京群岛 (美国)');
INSERT INTO `dic_all_area` VALUES (270, '乌拉圭');
INSERT INTO `dic_all_area` VALUES (271, '委内瑞拉');
INSERT INTO `dic_all_area` VALUES (321, '美属萨摩亚 (美国)');
INSERT INTO `dic_all_area` VALUES (322, '澳洲');
INSERT INTO `dic_all_area` VALUES (323, '库克群岛 (新西兰)');
INSERT INTO `dic_all_area` VALUES (324, '斐济');
INSERT INTO `dic_all_area` VALUES (325, '法属波利尼西亚 (法国)');
INSERT INTO `dic_all_area` VALUES (326, '关岛 (美国)');
INSERT INTO `dic_all_area` VALUES (327, '基里巴斯');
INSERT INTO `dic_all_area` VALUES (328, '马绍尔群岛');
INSERT INTO `dic_all_area` VALUES (329, '密克罗尼西亚联邦');
INSERT INTO `dic_all_area` VALUES (330, '瑙鲁');
INSERT INTO `dic_all_area` VALUES (331, '新喀里多尼亚 (法国)');
INSERT INTO `dic_all_area` VALUES (332, '新西兰');
INSERT INTO `dic_all_area` VALUES (333, '纽埃');
INSERT INTO `dic_all_area` VALUES (334, '北马里亚纳群岛 (美国)');
INSERT INTO `dic_all_area` VALUES (335, '帕劳');
INSERT INTO `dic_all_area` VALUES (336, '巴布亚新几内亚');
INSERT INTO `dic_all_area` VALUES (337, '萨摩亚');
INSERT INTO `dic_all_area` VALUES (338, '所罗门群岛');
INSERT INTO `dic_all_area` VALUES (339, '东加');
INSERT INTO `dic_all_area` VALUES (340, '瓦努阿图');
INSERT INTO `dic_all_area` VALUES (341, '瓦利斯和富图纳群岛 (法国)');
INSERT INTO `dic_all_area` VALUES (421, '阿尔及利亚');
INSERT INTO `dic_all_area` VALUES (422, '安哥拉');
INSERT INTO `dic_all_area` VALUES (423, '贝宁');
INSERT INTO `dic_all_area` VALUES (424, '博茨瓦纳');
INSERT INTO `dic_all_area` VALUES (425, '布基纳法索');
INSERT INTO `dic_all_area` VALUES (426, '布隆迪');
INSERT INTO `dic_all_area` VALUES (427, '喀麦隆');
INSERT INTO `dic_all_area` VALUES (428, '佛得角');
INSERT INTO `dic_all_area` VALUES (429, '中非共和国');
INSERT INTO `dic_all_area` VALUES (430, '乍得');
INSERT INTO `dic_all_area` VALUES (431, '科摩罗');
INSERT INTO `dic_all_area` VALUES (432, '刚果共和国');
INSERT INTO `dic_all_area` VALUES (433, '科特迪瓦');
INSERT INTO `dic_all_area` VALUES (434, '刚果民主共和国');
INSERT INTO `dic_all_area` VALUES (435, '吉布提');
INSERT INTO `dic_all_area` VALUES (436, '埃及');
INSERT INTO `dic_all_area` VALUES (437, '赤道几内亚');
INSERT INTO `dic_all_area` VALUES (438, '厄立特里亚');
INSERT INTO `dic_all_area` VALUES (439, '埃塞俄比亚');
INSERT INTO `dic_all_area` VALUES (440, '加蓬');
INSERT INTO `dic_all_area` VALUES (441, '冈比亚');
INSERT INTO `dic_all_area` VALUES (442, '加纳');
INSERT INTO `dic_all_area` VALUES (443, '几内亚');
INSERT INTO `dic_all_area` VALUES (444, '几内亚比绍');
INSERT INTO `dic_all_area` VALUES (445, '肯尼亚');
INSERT INTO `dic_all_area` VALUES (446, '莱索托');
INSERT INTO `dic_all_area` VALUES (447, '利比里亚');
INSERT INTO `dic_all_area` VALUES (448, '利比亚');
INSERT INTO `dic_all_area` VALUES (449, '马达加斯加');
INSERT INTO `dic_all_area` VALUES (450, '马拉维');
INSERT INTO `dic_all_area` VALUES (451, '马里共和国');
INSERT INTO `dic_all_area` VALUES (452, '毛里塔尼亚');
INSERT INTO `dic_all_area` VALUES (453, '毛里求斯');
INSERT INTO `dic_all_area` VALUES (454, '摩洛哥');
INSERT INTO `dic_all_area` VALUES (455, '莫桑比克');
INSERT INTO `dic_all_area` VALUES (456, '纳米比亚');
INSERT INTO `dic_all_area` VALUES (457, '尼日');
INSERT INTO `dic_all_area` VALUES (458, '尼日利亚');
INSERT INTO `dic_all_area` VALUES (459, '留尼汪 (法国)');
INSERT INTO `dic_all_area` VALUES (460, '卢旺达');
INSERT INTO `dic_all_area` VALUES (461, '圣多美普林西比');
INSERT INTO `dic_all_area` VALUES (462, '塞内加尔');
INSERT INTO `dic_all_area` VALUES (463, '塞舌尔');
INSERT INTO `dic_all_area` VALUES (464, '塞拉利昂');
INSERT INTO `dic_all_area` VALUES (465, '索马里');
INSERT INTO `dic_all_area` VALUES (466, '南非');
INSERT INTO `dic_all_area` VALUES (467, '苏丹');
INSERT INTO `dic_all_area` VALUES (468, '斯威士兰');
INSERT INTO `dic_all_area` VALUES (469, '坦桑尼亚');
INSERT INTO `dic_all_area` VALUES (470, '多哥');
INSERT INTO `dic_all_area` VALUES (471, '突尼斯');
INSERT INTO `dic_all_area` VALUES (472, '乌干达');
INSERT INTO `dic_all_area` VALUES (473, '赞比亚');
INSERT INTO `dic_all_area` VALUES (474, '津巴布韦');
INSERT INTO `dic_all_area` VALUES (8611, '北京');
INSERT INTO `dic_all_area` VALUES (8612, '天津');
INSERT INTO `dic_all_area` VALUES (8613, '河北');
INSERT INTO `dic_all_area` VALUES (8614, '山西');
INSERT INTO `dic_all_area` VALUES (8615, '内蒙古');
INSERT INTO `dic_all_area` VALUES (8621, '辽宁');
INSERT INTO `dic_all_area` VALUES (8622, '吉林');
INSERT INTO `dic_all_area` VALUES (8623, '黑龙江');
INSERT INTO `dic_all_area` VALUES (8631, '上海');
INSERT INTO `dic_all_area` VALUES (8632, '江苏');
INSERT INTO `dic_all_area` VALUES (8633, '浙江');
INSERT INTO `dic_all_area` VALUES (8634, '安徽');
INSERT INTO `dic_all_area` VALUES (8635, '福建');
INSERT INTO `dic_all_area` VALUES (8636, '江西');
INSERT INTO `dic_all_area` VALUES (8637, '山东');
INSERT INTO `dic_all_area` VALUES (8641, '河南');
INSERT INTO `dic_all_area` VALUES (8642, '湖北');
INSERT INTO `dic_all_area` VALUES (8643, '湖南');
INSERT INTO `dic_all_area` VALUES (8644, '广东');
INSERT INTO `dic_all_area` VALUES (8645, '广西');
INSERT INTO `dic_all_area` VALUES (8646, '海南');
INSERT INTO `dic_all_area` VALUES (8650, '重庆');
INSERT INTO `dic_all_area` VALUES (8651, '四川');
INSERT INTO `dic_all_area` VALUES (8652, '贵州');
INSERT INTO `dic_all_area` VALUES (8653, '云南');
INSERT INTO `dic_all_area` VALUES (8654, '西藏');
INSERT INTO `dic_all_area` VALUES (8661, '陕西');
INSERT INTO `dic_all_area` VALUES (8662, '甘肃');
INSERT INTO `dic_all_area` VALUES (8663, '青海');
INSERT INTO `dic_all_area` VALUES (8664, '宁夏');
INSERT INTO `dic_all_area` VALUES (8665, '新疆');
INSERT INTO `dic_all_area` VALUES (8671, '台湾');
INSERT INTO `dic_all_area` VALUES (8681, '香港');
INSERT INTO `dic_all_area` VALUES (8682, '澳门');
INSERT INTO `dic_all_area` VALUES (9999, '国外未知');
INSERT INTO `dic_all_area` VALUES (99999, '国内未知');
INSERT INTO `dic_all_area` VALUES (861301, '石家庄');
INSERT INTO `dic_all_area` VALUES (861302, '保定');
INSERT INTO `dic_all_area` VALUES (861303, '邯郸');
INSERT INTO `dic_all_area` VALUES (861304, '邢台');
INSERT INTO `dic_all_area` VALUES (861305, '衡水');
INSERT INTO `dic_all_area` VALUES (861306, '张家口');
INSERT INTO `dic_all_area` VALUES (861307, '廊坊');
INSERT INTO `dic_all_area` VALUES (861308, '承德');
INSERT INTO `dic_all_area` VALUES (861309, '唐山');
INSERT INTO `dic_all_area` VALUES (861310, '秦皇岛');
INSERT INTO `dic_all_area` VALUES (861311, '沧州');
INSERT INTO `dic_all_area` VALUES (861401, '太原');
INSERT INTO `dic_all_area` VALUES (861402, '大同');
INSERT INTO `dic_all_area` VALUES (861403, '阳泉');
INSERT INTO `dic_all_area` VALUES (861404, '长治');
INSERT INTO `dic_all_area` VALUES (861405, '晋城');
INSERT INTO `dic_all_area` VALUES (861406, '朔州');
INSERT INTO `dic_all_area` VALUES (861407, '晋中');
INSERT INTO `dic_all_area` VALUES (861408, '运城');
INSERT INTO `dic_all_area` VALUES (861409, '忻州');
INSERT INTO `dic_all_area` VALUES (861410, '临汾');
INSERT INTO `dic_all_area` VALUES (861411, '吕梁');
INSERT INTO `dic_all_area` VALUES (861501, '呼和浩特');
INSERT INTO `dic_all_area` VALUES (861502, '包头');
INSERT INTO `dic_all_area` VALUES (861503, '乌海');
INSERT INTO `dic_all_area` VALUES (861504, '赤峰');
INSERT INTO `dic_all_area` VALUES (861505, '通辽');
INSERT INTO `dic_all_area` VALUES (861506, '鄂尔多斯');
INSERT INTO `dic_all_area` VALUES (861507, '呼伦贝尔');
INSERT INTO `dic_all_area` VALUES (861508, '巴彦淖尔');
INSERT INTO `dic_all_area` VALUES (861509, '乌兰察布');
INSERT INTO `dic_all_area` VALUES (861510, '兴安');
INSERT INTO `dic_all_area` VALUES (861511, '锡林郭勒');
INSERT INTO `dic_all_area` VALUES (861512, '阿拉善');
INSERT INTO `dic_all_area` VALUES (862101, '沈阳');
INSERT INTO `dic_all_area` VALUES (862102, '大连');
INSERT INTO `dic_all_area` VALUES (862103, '鞍山');
INSERT INTO `dic_all_area` VALUES (862104, '抚顺');
INSERT INTO `dic_all_area` VALUES (862105, '本溪');
INSERT INTO `dic_all_area` VALUES (862106, '丹东');
INSERT INTO `dic_all_area` VALUES (862107, '锦州');
INSERT INTO `dic_all_area` VALUES (862108, '营口');
INSERT INTO `dic_all_area` VALUES (862109, '阜新');
INSERT INTO `dic_all_area` VALUES (862110, '辽阳');
INSERT INTO `dic_all_area` VALUES (862111, '盘锦');
INSERT INTO `dic_all_area` VALUES (862112, '铁岭');
INSERT INTO `dic_all_area` VALUES (862113, '朝阳');
INSERT INTO `dic_all_area` VALUES (862114, '葫芦岛');
INSERT INTO `dic_all_area` VALUES (862115, '旅大');
INSERT INTO `dic_all_area` VALUES (862201, '长春');
INSERT INTO `dic_all_area` VALUES (862202, '吉林');
INSERT INTO `dic_all_area` VALUES (862203, '四平');
INSERT INTO `dic_all_area` VALUES (862204, '辽源');
INSERT INTO `dic_all_area` VALUES (862205, '通化');
INSERT INTO `dic_all_area` VALUES (862206, '白山');
INSERT INTO `dic_all_area` VALUES (862207, '松原');
INSERT INTO `dic_all_area` VALUES (862208, '白城');
INSERT INTO `dic_all_area` VALUES (862209, '延边');
INSERT INTO `dic_all_area` VALUES (862210, '梅河口');
INSERT INTO `dic_all_area` VALUES (862211, '公主岭');
INSERT INTO `dic_all_area` VALUES (862212, '长白山');
INSERT INTO `dic_all_area` VALUES (862301, '哈尔滨');
INSERT INTO `dic_all_area` VALUES (862302, '齐齐哈尔');
INSERT INTO `dic_all_area` VALUES (862303, '牡丹江');
INSERT INTO `dic_all_area` VALUES (862304, '佳木斯');
INSERT INTO `dic_all_area` VALUES (862305, '大庆');
INSERT INTO `dic_all_area` VALUES (862306, '鸡西');
INSERT INTO `dic_all_area` VALUES (862307, '双鸭山');
INSERT INTO `dic_all_area` VALUES (862308, '伊春');
INSERT INTO `dic_all_area` VALUES (862309, '七台河');
INSERT INTO `dic_all_area` VALUES (862310, '鹤岗');
INSERT INTO `dic_all_area` VALUES (862311, '黑河');
INSERT INTO `dic_all_area` VALUES (862312, '绥化');
INSERT INTO `dic_all_area` VALUES (862313, '大兴安岭');
INSERT INTO `dic_all_area` VALUES (863201, '南京');
INSERT INTO `dic_all_area` VALUES (863202, '无锡');
INSERT INTO `dic_all_area` VALUES (863203, '徐州');
INSERT INTO `dic_all_area` VALUES (863204, '常州');
INSERT INTO `dic_all_area` VALUES (863205, '苏州');
INSERT INTO `dic_all_area` VALUES (863206, '南通');
INSERT INTO `dic_all_area` VALUES (863207, '连云港');
INSERT INTO `dic_all_area` VALUES (863208, '淮安');
INSERT INTO `dic_all_area` VALUES (863209, '盐城');
INSERT INTO `dic_all_area` VALUES (863210, '扬州');
INSERT INTO `dic_all_area` VALUES (863211, '镇江');
INSERT INTO `dic_all_area` VALUES (863212, '泰州');
INSERT INTO `dic_all_area` VALUES (863213, '宿迁');
INSERT INTO `dic_all_area` VALUES (863214, '江阴');
INSERT INTO `dic_all_area` VALUES (863215, '东台');
INSERT INTO `dic_all_area` VALUES (863301, '杭州');
INSERT INTO `dic_all_area` VALUES (863302, '宁波');
INSERT INTO `dic_all_area` VALUES (863303, '温州');
INSERT INTO `dic_all_area` VALUES (863304, '绍兴');
INSERT INTO `dic_all_area` VALUES (863305, '湖州');
INSERT INTO `dic_all_area` VALUES (863306, '嘉兴');
INSERT INTO `dic_all_area` VALUES (863307, '金华');
INSERT INTO `dic_all_area` VALUES (863308, '衢州');
INSERT INTO `dic_all_area` VALUES (863309, '舟山');
INSERT INTO `dic_all_area` VALUES (863310, '台州');
INSERT INTO `dic_all_area` VALUES (863311, '丽水');
INSERT INTO `dic_all_area` VALUES (863401, '合肥');
INSERT INTO `dic_all_area` VALUES (863402, '芜湖');
INSERT INTO `dic_all_area` VALUES (863403, '蚌埠');
INSERT INTO `dic_all_area` VALUES (863404, '淮南');
INSERT INTO `dic_all_area` VALUES (863405, '马鞍山');
INSERT INTO `dic_all_area` VALUES (863406, '淮北');
INSERT INTO `dic_all_area` VALUES (863407, '铜陵');
INSERT INTO `dic_all_area` VALUES (863408, '安庆');
INSERT INTO `dic_all_area` VALUES (863409, '黄山');
INSERT INTO `dic_all_area` VALUES (863410, '阜阳');
INSERT INTO `dic_all_area` VALUES (863411, '宿州');
INSERT INTO `dic_all_area` VALUES (863412, '滁州');
INSERT INTO `dic_all_area` VALUES (863413, '六安');
INSERT INTO `dic_all_area` VALUES (863414, '宣城');
INSERT INTO `dic_all_area` VALUES (863415, '池州');
INSERT INTO `dic_all_area` VALUES (863416, '亳州');
INSERT INTO `dic_all_area` VALUES (863501, '福州');
INSERT INTO `dic_all_area` VALUES (863502, '厦门');
INSERT INTO `dic_all_area` VALUES (863503, '泉州');
INSERT INTO `dic_all_area` VALUES (863504, '莆田');
INSERT INTO `dic_all_area` VALUES (863505, '三明');
INSERT INTO `dic_all_area` VALUES (863506, '漳州');
INSERT INTO `dic_all_area` VALUES (863507, '南平');
INSERT INTO `dic_all_area` VALUES (863508, '龙岩');
INSERT INTO `dic_all_area` VALUES (863509, '宁德');
INSERT INTO `dic_all_area` VALUES (863601, '南昌');
INSERT INTO `dic_all_area` VALUES (863602, '上饶');
INSERT INTO `dic_all_area` VALUES (863603, '九江');
INSERT INTO `dic_all_area` VALUES (863604, '萍乡');
INSERT INTO `dic_all_area` VALUES (863605, '新余');
INSERT INTO `dic_all_area` VALUES (863606, '鹰潭');
INSERT INTO `dic_all_area` VALUES (863607, '赣州');
INSERT INTO `dic_all_area` VALUES (863608, '宜春');
INSERT INTO `dic_all_area` VALUES (863609, '景德镇');
INSERT INTO `dic_all_area` VALUES (863610, '吉安');
INSERT INTO `dic_all_area` VALUES (863611, '抚州');
INSERT INTO `dic_all_area` VALUES (863701, '济南');
INSERT INTO `dic_all_area` VALUES (863702, '青岛');
INSERT INTO `dic_all_area` VALUES (863703, '淄博');
INSERT INTO `dic_all_area` VALUES (863704, '枣庄');
INSERT INTO `dic_all_area` VALUES (863705, '东营');
INSERT INTO `dic_all_area` VALUES (863706, '烟台');
INSERT INTO `dic_all_area` VALUES (863707, '潍坊');
INSERT INTO `dic_all_area` VALUES (863708, '济宁');
INSERT INTO `dic_all_area` VALUES (863709, '泰安');
INSERT INTO `dic_all_area` VALUES (863710, '威海');
INSERT INTO `dic_all_area` VALUES (863711, '日照');
INSERT INTO `dic_all_area` VALUES (863712, '滨州');
INSERT INTO `dic_all_area` VALUES (863713, '德州');
INSERT INTO `dic_all_area` VALUES (863714, '聊城');
INSERT INTO `dic_all_area` VALUES (863715, '临沂');
INSERT INTO `dic_all_area` VALUES (863716, '菏泽');
INSERT INTO `dic_all_area` VALUES (863717, '莱芜');
INSERT INTO `dic_all_area` VALUES (864101, '郑州');
INSERT INTO `dic_all_area` VALUES (864102, '开封');
INSERT INTO `dic_all_area` VALUES (864103, '洛阳');
INSERT INTO `dic_all_area` VALUES (864104, '平顶山');
INSERT INTO `dic_all_area` VALUES (864105, '安阳');
INSERT INTO `dic_all_area` VALUES (864106, '鹤壁');
INSERT INTO `dic_all_area` VALUES (864107, '新乡');
INSERT INTO `dic_all_area` VALUES (864108, '焦作');
INSERT INTO `dic_all_area` VALUES (864109, '濮阳');
INSERT INTO `dic_all_area` VALUES (864110, '许昌');
INSERT INTO `dic_all_area` VALUES (864111, '漯河');
INSERT INTO `dic_all_area` VALUES (864112, '三门峡');
INSERT INTO `dic_all_area` VALUES (864113, '商丘');
INSERT INTO `dic_all_area` VALUES (864114, '周口');
INSERT INTO `dic_all_area` VALUES (864115, '驻马店');
INSERT INTO `dic_all_area` VALUES (864116, '南阳');
INSERT INTO `dic_all_area` VALUES (864117, '信阳');
INSERT INTO `dic_all_area` VALUES (864118, '济源');
INSERT INTO `dic_all_area` VALUES (864201, '武汉');
INSERT INTO `dic_all_area` VALUES (864202, '黄石');
INSERT INTO `dic_all_area` VALUES (864203, '十堰');
INSERT INTO `dic_all_area` VALUES (864204, '荆州');
INSERT INTO `dic_all_area` VALUES (864205, '宜昌');
INSERT INTO `dic_all_area` VALUES (864206, '襄阳');
INSERT INTO `dic_all_area` VALUES (864207, '鄂州');
INSERT INTO `dic_all_area` VALUES (864208, '荆门');
INSERT INTO `dic_all_area` VALUES (864209, '孝感');
INSERT INTO `dic_all_area` VALUES (864210, '黄冈');
INSERT INTO `dic_all_area` VALUES (864211, '咸宁');
INSERT INTO `dic_all_area` VALUES (864212, '随州');
INSERT INTO `dic_all_area` VALUES (864213, '恩施');
INSERT INTO `dic_all_area` VALUES (864214, '仙桃');
INSERT INTO `dic_all_area` VALUES (864215, '天门');
INSERT INTO `dic_all_area` VALUES (864216, '潜江');
INSERT INTO `dic_all_area` VALUES (864217, '神农架');
INSERT INTO `dic_all_area` VALUES (864218, '湖北省直辖行政单位');
INSERT INTO `dic_all_area` VALUES (864301, '长沙');
INSERT INTO `dic_all_area` VALUES (864302, '株洲');
INSERT INTO `dic_all_area` VALUES (864303, '湘潭');
INSERT INTO `dic_all_area` VALUES (864304, '衡阳');
INSERT INTO `dic_all_area` VALUES (864305, '邵阳');
INSERT INTO `dic_all_area` VALUES (864306, '岳阳');
INSERT INTO `dic_all_area` VALUES (864307, '张家界');
INSERT INTO `dic_all_area` VALUES (864308, '益阳');
INSERT INTO `dic_all_area` VALUES (864309, '常德');
INSERT INTO `dic_all_area` VALUES (864310, '娄底');
INSERT INTO `dic_all_area` VALUES (864311, '郴州');
INSERT INTO `dic_all_area` VALUES (864312, '永州');
INSERT INTO `dic_all_area` VALUES (864313, '怀化');
INSERT INTO `dic_all_area` VALUES (864314, '湘西');
INSERT INTO `dic_all_area` VALUES (864401, '广州');
INSERT INTO `dic_all_area` VALUES (864402, '深圳');
INSERT INTO `dic_all_area` VALUES (864403, '珠海');
INSERT INTO `dic_all_area` VALUES (864404, '汕头');
INSERT INTO `dic_all_area` VALUES (864405, '佛山');
INSERT INTO `dic_all_area` VALUES (864406, '韶关');
INSERT INTO `dic_all_area` VALUES (864407, '湛江');
INSERT INTO `dic_all_area` VALUES (864408, '肇庆');
INSERT INTO `dic_all_area` VALUES (864409, '江门');
INSERT INTO `dic_all_area` VALUES (864410, '茂名');
INSERT INTO `dic_all_area` VALUES (864411, '惠州');
INSERT INTO `dic_all_area` VALUES (864412, '梅州');
INSERT INTO `dic_all_area` VALUES (864413, '汕尾');
INSERT INTO `dic_all_area` VALUES (864414, '河源');
INSERT INTO `dic_all_area` VALUES (864415, '阳江');
INSERT INTO `dic_all_area` VALUES (864416, '清远');
INSERT INTO `dic_all_area` VALUES (864417, '东莞');
INSERT INTO `dic_all_area` VALUES (864418, '中山');
INSERT INTO `dic_all_area` VALUES (864419, '潮州');
INSERT INTO `dic_all_area` VALUES (864420, '揭阳');
INSERT INTO `dic_all_area` VALUES (864421, '云浮');
INSERT INTO `dic_all_area` VALUES (864501, '南宁');
INSERT INTO `dic_all_area` VALUES (864502, '柳州');
INSERT INTO `dic_all_area` VALUES (864503, '桂林');
INSERT INTO `dic_all_area` VALUES (864504, '梧州');
INSERT INTO `dic_all_area` VALUES (864505, '北海');
INSERT INTO `dic_all_area` VALUES (864506, '防城港');
INSERT INTO `dic_all_area` VALUES (864507, '钦州');
INSERT INTO `dic_all_area` VALUES (864508, '贵港');
INSERT INTO `dic_all_area` VALUES (864509, '玉林');
INSERT INTO `dic_all_area` VALUES (864510, '百色');
INSERT INTO `dic_all_area` VALUES (864511, '贺州');
INSERT INTO `dic_all_area` VALUES (864512, '河池');
INSERT INTO `dic_all_area` VALUES (864513, '来宾');
INSERT INTO `dic_all_area` VALUES (864514, '崇左');
INSERT INTO `dic_all_area` VALUES (864601, '海口');
INSERT INTO `dic_all_area` VALUES (864602, '三亚');
INSERT INTO `dic_all_area` VALUES (865101, '成都');
INSERT INTO `dic_all_area` VALUES (865102, '自贡');
INSERT INTO `dic_all_area` VALUES (865103, '攀枝花');
INSERT INTO `dic_all_area` VALUES (865104, '泸州');
INSERT INTO `dic_all_area` VALUES (865105, '德阳');
INSERT INTO `dic_all_area` VALUES (865106, '绵阳');
INSERT INTO `dic_all_area` VALUES (865107, '广元');
INSERT INTO `dic_all_area` VALUES (865108, '遂宁');
INSERT INTO `dic_all_area` VALUES (865109, '内江');
INSERT INTO `dic_all_area` VALUES (865110, '乐山');
INSERT INTO `dic_all_area` VALUES (865111, '南充');
INSERT INTO `dic_all_area` VALUES (865112, '宜宾');
INSERT INTO `dic_all_area` VALUES (865113, '眉山');
INSERT INTO `dic_all_area` VALUES (865114, '广安');
INSERT INTO `dic_all_area` VALUES (865115, '达州');
INSERT INTO `dic_all_area` VALUES (865116, '雅安');
INSERT INTO `dic_all_area` VALUES (865117, '巴中');
INSERT INTO `dic_all_area` VALUES (865118, '资阳');
INSERT INTO `dic_all_area` VALUES (865119, '阿坝');
INSERT INTO `dic_all_area` VALUES (865120, '凉山');
INSERT INTO `dic_all_area` VALUES (865121, '甘孜');
INSERT INTO `dic_all_area` VALUES (865201, '贵阳');
INSERT INTO `dic_all_area` VALUES (865202, '六盘水');
INSERT INTO `dic_all_area` VALUES (865203, '遵义');
INSERT INTO `dic_all_area` VALUES (865204, '铜仁');
INSERT INTO `dic_all_area` VALUES (865205, '黔西南');
INSERT INTO `dic_all_area` VALUES (865206, '毕节');
INSERT INTO `dic_all_area` VALUES (865207, '安顺');
INSERT INTO `dic_all_area` VALUES (865208, '黔东南');
INSERT INTO `dic_all_area` VALUES (865209, '黔南');
INSERT INTO `dic_all_area` VALUES (865301, '昆明');
INSERT INTO `dic_all_area` VALUES (865302, '曲靖');
INSERT INTO `dic_all_area` VALUES (865303, '玉溪');
INSERT INTO `dic_all_area` VALUES (865304, '保山');
INSERT INTO `dic_all_area` VALUES (865305, '昭通');
INSERT INTO `dic_all_area` VALUES (865306, '丽江');
INSERT INTO `dic_all_area` VALUES (865307, '普洱');
INSERT INTO `dic_all_area` VALUES (865308, '临沧');
INSERT INTO `dic_all_area` VALUES (865309, '楚雄');
INSERT INTO `dic_all_area` VALUES (865310, '大理');
INSERT INTO `dic_all_area` VALUES (865311, '红河');
INSERT INTO `dic_all_area` VALUES (865312, '文山');
INSERT INTO `dic_all_area` VALUES (865313, '西双版纳');
INSERT INTO `dic_all_area` VALUES (865314, '德宏');
INSERT INTO `dic_all_area` VALUES (865315, '怒江');
INSERT INTO `dic_all_area` VALUES (865316, '迪庆');
INSERT INTO `dic_all_area` VALUES (865401, '拉萨');
INSERT INTO `dic_all_area` VALUES (865402, '昌都');
INSERT INTO `dic_all_area` VALUES (865403, '林芝');
INSERT INTO `dic_all_area` VALUES (865404, '山南');
INSERT INTO `dic_all_area` VALUES (865405, '日喀则');
INSERT INTO `dic_all_area` VALUES (865406, '那曲');
INSERT INTO `dic_all_area` VALUES (865407, '阿里');
INSERT INTO `dic_all_area` VALUES (866101, '西安');
INSERT INTO `dic_all_area` VALUES (866102, '宝鸡');
INSERT INTO `dic_all_area` VALUES (866103, '咸阳');
INSERT INTO `dic_all_area` VALUES (866104, '渭南');
INSERT INTO `dic_all_area` VALUES (866105, '铜川');
INSERT INTO `dic_all_area` VALUES (866106, '延安');
INSERT INTO `dic_all_area` VALUES (866107, '榆林');
INSERT INTO `dic_all_area` VALUES (866108, '安康');
INSERT INTO `dic_all_area` VALUES (866109, '汉中');
INSERT INTO `dic_all_area` VALUES (866110, '商洛');
INSERT INTO `dic_all_area` VALUES (866111, '杨凌');
INSERT INTO `dic_all_area` VALUES (866201, '兰州');
INSERT INTO `dic_all_area` VALUES (866202, '嘉峪关');
INSERT INTO `dic_all_area` VALUES (866203, '金昌');
INSERT INTO `dic_all_area` VALUES (866204, '白银');
INSERT INTO `dic_all_area` VALUES (866205, '天水');
INSERT INTO `dic_all_area` VALUES (866206, '武威');
INSERT INTO `dic_all_area` VALUES (866207, '张掖');
INSERT INTO `dic_all_area` VALUES (866208, '酒泉');
INSERT INTO `dic_all_area` VALUES (866209, '平凉');
INSERT INTO `dic_all_area` VALUES (866210, '庆阳');
INSERT INTO `dic_all_area` VALUES (866211, '定西');
INSERT INTO `dic_all_area` VALUES (866212, '陇南');
INSERT INTO `dic_all_area` VALUES (866213, '临夏');
INSERT INTO `dic_all_area` VALUES (866214, '甘南');
INSERT INTO `dic_all_area` VALUES (866215, '酒泉嘉峪关');
INSERT INTO `dic_all_area` VALUES (866216, '金昌武威');
INSERT INTO `dic_all_area` VALUES (866301, '西宁');
INSERT INTO `dic_all_area` VALUES (866302, '海东');
INSERT INTO `dic_all_area` VALUES (866303, '海北');
INSERT INTO `dic_all_area` VALUES (866304, '黄南');
INSERT INTO `dic_all_area` VALUES (866305, '海南');
INSERT INTO `dic_all_area` VALUES (866306, '果洛');
INSERT INTO `dic_all_area` VALUES (866307, '玉树');
INSERT INTO `dic_all_area` VALUES (866308, '海西');
INSERT INTO `dic_all_area` VALUES (866401, '银川');
INSERT INTO `dic_all_area` VALUES (866402, '石嘴山');
INSERT INTO `dic_all_area` VALUES (866403, '吴忠');
INSERT INTO `dic_all_area` VALUES (866404, '固原');
INSERT INTO `dic_all_area` VALUES (866405, '中卫');
INSERT INTO `dic_all_area` VALUES (866501, '乌鲁木齐');
INSERT INTO `dic_all_area` VALUES (866502, '克拉玛依');
INSERT INTO `dic_all_area` VALUES (866503, '吐鲁番');
INSERT INTO `dic_all_area` VALUES (866504, '哈密');
INSERT INTO `dic_all_area` VALUES (866505, '昌吉');
INSERT INTO `dic_all_area` VALUES (866506, '博尔塔拉');
INSERT INTO `dic_all_area` VALUES (866507, '巴音郭楞');
INSERT INTO `dic_all_area` VALUES (866508, '阿克苏');
INSERT INTO `dic_all_area` VALUES (866509, '克孜勒苏柯尔克孜');
INSERT INTO `dic_all_area` VALUES (866510, '喀什');
INSERT INTO `dic_all_area` VALUES (866511, '和田');
INSERT INTO `dic_all_area` VALUES (866512, '伊犁');
INSERT INTO `dic_all_area` VALUES (866513, '塔城');
INSERT INTO `dic_all_area` VALUES (866514, '阿勒泰');
INSERT INTO `dic_all_area` VALUES (866515, '石河子');
INSERT INTO `dic_all_area` VALUES (866516, '阿拉尔');
INSERT INTO `dic_all_area` VALUES (866517, '图木舒克');
INSERT INTO `dic_all_area` VALUES (866518, '五家渠');
INSERT INTO `dic_all_area` VALUES (866519, '北屯');
INSERT INTO `dic_all_area` VALUES (866520, '铁门关');
INSERT INTO `dic_all_area` VALUES (866521, '双河');
INSERT INTO `dic_all_area` VALUES (866522, '可克达拉');

-- ----------------------------
-- Table structure for dic_bj_area
-- ----------------------------
DROP TABLE IF EXISTS `dic_bj_area`;
CREATE TABLE `dic_bj_area`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `area_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域名称',
  `p_area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级区域ID',
  `p_area_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级区域名称',
  `area_level` int(2) NULL DEFAULT NULL COMMENT 'LEVEL',
  PRIMARY KEY (`area_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dic_bj_area
-- ----------------------------
INSERT INTO `dic_bj_area` VALUES ('110101', '东城区', '110', '北京', 3);
INSERT INTO `dic_bj_area` VALUES ('110101001', '东华门街道', '110101', '东城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110101002', '景山街道', '110101', '东城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110101003', '交道口街道', '110101', '东城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110101004', '安定门街道', '110101', '东城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110101005', '北新桥街道', '110101', '东城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110101006', '东四街道', '110101', '东城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110101007', '朝阳门街道', '110101', '东城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110101008', '建国门街道', '110101', '东城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110101009', '东直门街道', '110101', '东城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110101010', '和平里街道', '110101', '东城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110101011', '前门街道', '110101', '东城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110101012', '崇文门外街道', '110101', '东城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110101013', '东花市街道', '110101', '东城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110101014', '龙潭街道', '110101', '东城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110101015', '体育馆路街道', '110101', '东城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110101016', '天坛街道', '110101', '东城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110101017', '永定门外街道', '110101', '东城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110102', '西城区', '110', '北京', 3);
INSERT INTO `dic_bj_area` VALUES ('110102001', '西长安街街道', '110102', '西城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110102003', '新街口街道', '110102', '西城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110102007', '月坛街道', '110102', '西城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110102009', '展览路街道', '110102', '西城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110102010', '德胜街道', '110102', '西城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110102011', '金融街街道', '110102', '西城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110102012', '什刹海街道', '110102', '西城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110102013', '大栅栏街道', '110102', '西城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110102014', '天桥街道', '110102', '西城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110102015', '椿树街道', '110102', '西城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110102016', '陶然亭街道', '110102', '西城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110102017', '广安门内街道', '110102', '西城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110102018', '牛街街道', '110102', '西城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110102019', '白纸坊街道', '110102', '西城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110102020', '广安门外街道', '110102', '西城区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105', '朝阳区', '110', '北京', 3);
INSERT INTO `dic_bj_area` VALUES ('110105001', '建外街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105002', '朝外街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105003', '呼家楼街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105004', '三里屯街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105005', '左家庄街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105006', '香河园街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105007', '和平街街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105008', '安贞街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105009', '亚运村街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105010', '小关街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105011', '酒仙桥街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105012', '麦子店街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105013', '团结湖街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105014', '六里屯街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105015', '八里庄街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105016', '双井街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105017', '劲松街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105018', '潘家园街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105019', '垡头街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105021', '南磨房乡', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105022', '高碑店乡', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105023', '将台乡', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105024', '太阳宫乡', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105025', '大屯街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105026', '望京街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105027', '小红门乡', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105028', '十八里店乡', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105029', '平房乡', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105030', '东风乡', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105031', '奥运村街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105032', '来广营乡', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105033', '常营民族乡', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105034', '三间房乡', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105035', '管庄乡', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105036', '金盏乡', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105037', '孙河乡', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105038', '崔各庄乡', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105039', '东坝乡', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105040', '黑庄户乡', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105041', '豆各庄乡', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105042', '王四营乡', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105043', '东湖街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110105400', '首都机场街道', '110105', '朝阳区', 4);
INSERT INTO `dic_bj_area` VALUES ('110106', '丰台区', '110', '北京', 3);
INSERT INTO `dic_bj_area` VALUES ('110106001', '右安门街道', '110106', '丰台区', 4);
INSERT INTO `dic_bj_area` VALUES ('110106002', '太平桥街道', '110106', '丰台区', 4);
INSERT INTO `dic_bj_area` VALUES ('110106003', '西罗园街道', '110106', '丰台区', 4);
INSERT INTO `dic_bj_area` VALUES ('110106004', '大红门街道', '110106', '丰台区', 4);
INSERT INTO `dic_bj_area` VALUES ('110106005', '南苑街道', '110106', '丰台区', 4);
INSERT INTO `dic_bj_area` VALUES ('110106006', '东高地街道', '110106', '丰台区', 4);
INSERT INTO `dic_bj_area` VALUES ('110106007', '东铁匠营街道', '110106', '丰台区', 4);
INSERT INTO `dic_bj_area` VALUES ('110106008', '卢沟桥街道', '110106', '丰台区', 4);
INSERT INTO `dic_bj_area` VALUES ('110106009', '丰台街道', '110106', '丰台区', 4);
INSERT INTO `dic_bj_area` VALUES ('110106010', '新村街道', '110106', '丰台区', 4);
INSERT INTO `dic_bj_area` VALUES ('110106011', '长辛店街道', '110106', '丰台区', 4);
INSERT INTO `dic_bj_area` VALUES ('110106012', '云岗街道', '110106', '丰台区', 4);
INSERT INTO `dic_bj_area` VALUES ('110106013', '方庄地区', '110106', '丰台区', 4);
INSERT INTO `dic_bj_area` VALUES ('110106014', '宛平城地区', '110106', '丰台区', 4);
INSERT INTO `dic_bj_area` VALUES ('110106015', '马家堡街道', '110106', '丰台区', 4);
INSERT INTO `dic_bj_area` VALUES ('110106016', '和义街道', '110106', '丰台区', 4);
INSERT INTO `dic_bj_area` VALUES ('110106101', '王佐镇', '110106', '丰台区', 4);
INSERT INTO `dic_bj_area` VALUES ('110107', '石景山区', '110', '北京', 3);
INSERT INTO `dic_bj_area` VALUES ('110107001', '八宝山街道', '110107', '石景山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110107002', '老山街道', '110107', '石景山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110107003', '八角街道', '110107', '石景山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110107004', '古城街道', '110107', '石景山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110107005', '苹果园街道', '110107', '石景山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110107006', '金顶街街道', '110107', '石景山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110107009', '广宁街道', '110107', '石景山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110107010', '五里坨街道', '110107', '石景山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110107011', '鲁谷街道', '110107', '石景山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108', '海淀区', '110', '北京', 3);
INSERT INTO `dic_bj_area` VALUES ('110108001', '万寿路街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108002', '永定路街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108003', '羊坊店街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108004', '甘家口街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108005', '八里庄街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108006', '紫竹院街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108007', '北下关街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108008', '北太平庄街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108010', '学院路街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108011', '中关村街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108012', '海淀街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108013', '青龙桥街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108014', '清华园街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108015', '燕园街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108016', '香山街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108017', '清河街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108018', '花园路街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108019', '西三旗街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108020', '马连洼街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108021', '田村路街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108022', '上地街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108023', '海淀镇', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108024', '东升镇', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108025', '曙光街道', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108026', '温泉镇', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108027', '四季青镇', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108028', '西北旺镇', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108029', '苏家坨镇', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110108030', '上庄镇', '110108', '海淀区', 4);
INSERT INTO `dic_bj_area` VALUES ('110109', '门头沟区', '110', '北京', 3);
INSERT INTO `dic_bj_area` VALUES ('110109001', '大峪街道', '110109', '门头沟区', 4);
INSERT INTO `dic_bj_area` VALUES ('110109002', '城子街道', '110109', '门头沟区', 4);
INSERT INTO `dic_bj_area` VALUES ('110109003', '东辛房街道', '110109', '门头沟区', 4);
INSERT INTO `dic_bj_area` VALUES ('110109004', '大台街道', '110109', '门头沟区', 4);
INSERT INTO `dic_bj_area` VALUES ('110109005', '王平镇', '110109', '门头沟区', 4);
INSERT INTO `dic_bj_area` VALUES ('110109006', '永定镇', '110109', '门头沟区', 4);
INSERT INTO `dic_bj_area` VALUES ('110109007', '龙泉镇', '110109', '门头沟区', 4);
INSERT INTO `dic_bj_area` VALUES ('110109101', '潭柘寺镇', '110109', '门头沟区', 4);
INSERT INTO `dic_bj_area` VALUES ('110109104', '军庄镇', '110109', '门头沟区', 4);
INSERT INTO `dic_bj_area` VALUES ('110109105', '雁翅镇', '110109', '门头沟区', 4);
INSERT INTO `dic_bj_area` VALUES ('110109106', '斋堂镇', '110109', '门头沟区', 4);
INSERT INTO `dic_bj_area` VALUES ('110109107', '清水镇', '110109', '门头沟区', 4);
INSERT INTO `dic_bj_area` VALUES ('110109108', '妙峰山镇', '110109', '门头沟区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111', '房山区', '110', '北京', 3);
INSERT INTO `dic_bj_area` VALUES ('110111001', '城关街道', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111002', '新镇街道', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111004', '向阳街道', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111005', '东风街道', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111006', '迎风街道', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111007', '星城街道', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111008', '良乡镇', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111009', '周口店镇', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111010', '琉璃河镇', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111011', '拱辰街道', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111012', '西潞街道', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111101', '阎村镇', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111103', '窦店镇', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111104', '石楼镇', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111105', '长阳镇', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111107', '河北镇', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111108', '长沟镇', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111109', '大石窝镇', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111110', '张坊镇', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111111', '十渡镇', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111112', '青龙湖镇', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111115', '韩村河镇', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111208', '霞云岭乡', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111209', '南窖乡', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111210', '佛子庄乡', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111211', '大安山乡', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111212', '史家营乡', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110111213', '蒲洼乡', '110111', '房山区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112', '通州区', '110', '北京', 3);
INSERT INTO `dic_bj_area` VALUES ('110112001', '中仓街道', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112002', '新华街道', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112003', '北苑街道', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112004', '玉桥街道', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112005', '永顺镇', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112006', '梨园镇', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112007', '潞源街道', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112008', '通运街道', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112009', '文景街道', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112010', '九棵树街道', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112011', '临河里街道', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112012', '杨庄街道', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112013', '潞邑街道', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112104', '宋庄镇', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112105', '张家湾镇', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112106', '漷县镇', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112109', '马驹桥镇', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112110', '西集镇', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112114', '台湖镇', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112117', '永乐店镇', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112119', '潞城镇', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110112209', '于家务回族乡', '110112', '通州区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113', '顺义区', '110', '北京', 3);
INSERT INTO `dic_bj_area` VALUES ('110113001', '胜利街道', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113002', '光明街道', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113003', '仁和镇', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113004', '后沙峪镇', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113005', '天竺镇', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113006', '杨镇地区', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113007', '牛栏山镇', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113008', '南法信镇', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113009', '马坡镇', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113010', '石园街道', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113011', '空港街道', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113012', '双丰街道', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113013', '旺泉街道', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113101', '高丽营镇', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113104', '李桥镇', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113105', '李遂镇', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113106', '南彩镇', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113108', '北务镇', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113109', '大孙各庄镇', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113110', '张镇', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113111', '龙湾屯镇', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113112', '木林镇', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113113', '北小营镇', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113115', '北石槽镇', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110113116', '赵全营镇', '110113', '顺义区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114', '昌平区', '110', '北京', 3);
INSERT INTO `dic_bj_area` VALUES ('110114001', '城北街道', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114002', '南口镇', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114003', '马池口镇', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114004', '沙河镇', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114005', '城南街道', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114007', '东小口镇', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114008', '天通苑北街道', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114009', '天通苑南街道', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114010', '霍营街道', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114011', '回龙观街道', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114012', '龙泽园街道', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114013', '史各庄街道', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114104', '阳坊镇', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114110', '小汤山镇', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114111', '南邵镇', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114112', '崔村镇', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114113', '百善镇', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114115', '北七家镇', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114116', '兴寿镇', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114118', '流村镇', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114119', '十三陵镇', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110114120', '延寿镇', '110114', '昌平区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115', '大兴区', '110', '北京', 3);
INSERT INTO `dic_bj_area` VALUES ('110115001', '兴丰街道', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115002', '林校路街道', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115003', '清源街道', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115004', '亦庄地区（镇）', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115005', '黄村镇', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115006', '旧宫镇', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115007', '西红门镇', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115008', '瀛海地区', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115009', '观音寺街道', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115010', '天宫院街道', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115011', '高米店街道', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115012', '荣华街道', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115013', '博兴街道', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115103', '青云店镇', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115104', '采育镇', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115105', '安定镇', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115106', '礼贤镇', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115107', '榆垡镇', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115108', '庞各庄镇', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115109', '北臧村镇', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115110', '魏善庄镇', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110115111', '长子营镇', '110115', '大兴区', 4);
INSERT INTO `dic_bj_area` VALUES ('110116', '怀柔区', '110', '北京', 3);
INSERT INTO `dic_bj_area` VALUES ('110116001', '泉河街道', '110116', '怀柔区', 4);
INSERT INTO `dic_bj_area` VALUES ('110116002', '龙山街道', '110116', '怀柔区', 4);
INSERT INTO `dic_bj_area` VALUES ('110116003', '怀柔镇', '110116', '怀柔区', 4);
INSERT INTO `dic_bj_area` VALUES ('110116004', '雁栖镇', '110116', '怀柔区', 4);
INSERT INTO `dic_bj_area` VALUES ('110116005', '庙城镇', '110116', '怀柔区', 4);
INSERT INTO `dic_bj_area` VALUES ('110116102', '北房镇', '110116', '怀柔区', 4);
INSERT INTO `dic_bj_area` VALUES ('110116103', '杨宋镇', '110116', '怀柔区', 4);
INSERT INTO `dic_bj_area` VALUES ('110116105', '桥梓镇', '110116', '怀柔区', 4);
INSERT INTO `dic_bj_area` VALUES ('110116106', '怀北镇', '110116', '怀柔区', 4);
INSERT INTO `dic_bj_area` VALUES ('110116107', '汤河口镇', '110116', '怀柔区', 4);
INSERT INTO `dic_bj_area` VALUES ('110116108', '渤海镇', '110116', '怀柔区', 4);
INSERT INTO `dic_bj_area` VALUES ('110116109', '九渡河镇', '110116', '怀柔区', 4);
INSERT INTO `dic_bj_area` VALUES ('110116110', '琉璃庙镇', '110116', '怀柔区', 4);
INSERT INTO `dic_bj_area` VALUES ('110116111', '宝山镇', '110116', '怀柔区', 4);
INSERT INTO `dic_bj_area` VALUES ('110116211', '长哨营满族乡', '110116', '怀柔区', 4);
INSERT INTO `dic_bj_area` VALUES ('110116213', '喇叭沟门满族乡', '110116', '怀柔区', 4);
INSERT INTO `dic_bj_area` VALUES ('110117', '平谷区', '110', '北京', 3);
INSERT INTO `dic_bj_area` VALUES ('110117001', '滨河街道', '110117', '平谷区', 4);
INSERT INTO `dic_bj_area` VALUES ('110117002', '兴谷街道', '110117', '平谷区', 4);
INSERT INTO `dic_bj_area` VALUES ('110117003', '平谷镇', '110117', '平谷区', 4);
INSERT INTO `dic_bj_area` VALUES ('110117004', '峪口镇', '110117', '平谷区', 4);
INSERT INTO `dic_bj_area` VALUES ('110117005', '马坊镇', '110117', '平谷区', 4);
INSERT INTO `dic_bj_area` VALUES ('110117006', '金海湖镇', '110117', '平谷区', 4);
INSERT INTO `dic_bj_area` VALUES ('110117101', '东高村镇', '110117', '平谷区', 4);
INSERT INTO `dic_bj_area` VALUES ('110117102', '山东庄镇', '110117', '平谷区', 4);
INSERT INTO `dic_bj_area` VALUES ('110117104', '南独乐河镇', '110117', '平谷区', 4);
INSERT INTO `dic_bj_area` VALUES ('110117105', '大华山镇', '110117', '平谷区', 4);
INSERT INTO `dic_bj_area` VALUES ('110117106', '夏各庄镇', '110117', '平谷区', 4);
INSERT INTO `dic_bj_area` VALUES ('110117108', '马昌营镇', '110117', '平谷区', 4);
INSERT INTO `dic_bj_area` VALUES ('110117110', '王辛庄镇', '110117', '平谷区', 4);
INSERT INTO `dic_bj_area` VALUES ('110117111', '大兴庄镇', '110117', '平谷区', 4);
INSERT INTO `dic_bj_area` VALUES ('110117112', '刘家店镇', '110117', '平谷区', 4);
INSERT INTO `dic_bj_area` VALUES ('110117114', '镇罗营镇', '110117', '平谷区', 4);
INSERT INTO `dic_bj_area` VALUES ('110117213', '黄松峪乡', '110117', '平谷区', 4);
INSERT INTO `dic_bj_area` VALUES ('110117214', '熊儿寨乡', '110117', '平谷区', 4);
INSERT INTO `dic_bj_area` VALUES ('110118', '密云区', '110', '北京', 3);
INSERT INTO `dic_bj_area` VALUES ('110118001', '鼓楼街道', '110118', '密云区', 4);
INSERT INTO `dic_bj_area` VALUES ('110118002', '果园街道', '110118', '密云区', 4);
INSERT INTO `dic_bj_area` VALUES ('110118003', '檀营满族蒙族乡', '110118', '密云区', 4);
INSERT INTO `dic_bj_area` VALUES ('110118100', '密云镇', '110118', '密云区', 4);
INSERT INTO `dic_bj_area` VALUES ('110118101', '溪翁庄镇', '110118', '密云区', 4);
INSERT INTO `dic_bj_area` VALUES ('110118102', '西田各庄镇', '110118', '密云区', 4);
INSERT INTO `dic_bj_area` VALUES ('110118103', '十里堡镇', '110118', '密云区', 4);
INSERT INTO `dic_bj_area` VALUES ('110118104', '河南寨镇', '110118', '密云区', 4);
INSERT INTO `dic_bj_area` VALUES ('110118105', '巨各庄镇', '110118', '密云区', 4);
INSERT INTO `dic_bj_area` VALUES ('110118106', '穆家峪镇', '110118', '密云区', 4);
INSERT INTO `dic_bj_area` VALUES ('110118107', '太师屯镇', '110118', '密云区', 4);
INSERT INTO `dic_bj_area` VALUES ('110118108', '高岭镇', '110118', '密云区', 4);
INSERT INTO `dic_bj_area` VALUES ('110118109', '不老屯镇', '110118', '密云区', 4);
INSERT INTO `dic_bj_area` VALUES ('110118110', '冯家峪镇', '110118', '密云区', 4);
INSERT INTO `dic_bj_area` VALUES ('110118111', '古北口镇', '110118', '密云区', 4);
INSERT INTO `dic_bj_area` VALUES ('110118112', '大城子镇', '110118', '密云区', 4);
INSERT INTO `dic_bj_area` VALUES ('110118113', '东邵渠镇', '110118', '密云区', 4);
INSERT INTO `dic_bj_area` VALUES ('110118114', '北庄镇', '110118', '密云区', 4);
INSERT INTO `dic_bj_area` VALUES ('110118115', '新城子镇', '110118', '密云区', 4);
INSERT INTO `dic_bj_area` VALUES ('110118116', '石城镇', '110118', '密云区', 4);
INSERT INTO `dic_bj_area` VALUES ('110119', '延庆区', '110', '北京', 3);
INSERT INTO `dic_bj_area` VALUES ('110119001', '百泉街道', '110119', '延庆区', 4);
INSERT INTO `dic_bj_area` VALUES ('110119002', '香水园街道', '110119', '延庆区', 4);
INSERT INTO `dic_bj_area` VALUES ('110119003', '儒林街道', '110119', '延庆区', 4);
INSERT INTO `dic_bj_area` VALUES ('110119100', '延庆镇', '110119', '延庆区', 4);
INSERT INTO `dic_bj_area` VALUES ('110119101', '康庄镇', '110119', '延庆区', 4);
INSERT INTO `dic_bj_area` VALUES ('110119102', '八达岭镇', '110119', '延庆区', 4);
INSERT INTO `dic_bj_area` VALUES ('110119103', '永宁镇', '110119', '延庆区', 4);
INSERT INTO `dic_bj_area` VALUES ('110119104', '旧县镇', '110119', '延庆区', 4);
INSERT INTO `dic_bj_area` VALUES ('110119105', '张山营镇', '110119', '延庆区', 4);
INSERT INTO `dic_bj_area` VALUES ('110119106', '四海镇', '110119', '延庆区', 4);
INSERT INTO `dic_bj_area` VALUES ('110119107', '千家店镇', '110119', '延庆区', 4);
INSERT INTO `dic_bj_area` VALUES ('110119108', '沈家营镇', '110119', '延庆区', 4);
INSERT INTO `dic_bj_area` VALUES ('110119109', '大榆树镇', '110119', '延庆区', 4);
INSERT INTO `dic_bj_area` VALUES ('110119110', '井庄镇', '110119', '延庆区', 4);
INSERT INTO `dic_bj_area` VALUES ('110119200', '大庄科乡', '110119', '延庆区', 4);
INSERT INTO `dic_bj_area` VALUES ('110119201', '刘斌堡乡', '110119', '延庆区', 4);
INSERT INTO `dic_bj_area` VALUES ('110119202', '香营乡', '110119', '延庆区', 4);
INSERT INTO `dic_bj_area` VALUES ('110119203', '珍珠泉乡', '110119', '延庆区', 4);

-- ----------------------------
-- Table structure for instant_inout_flow
-- ----------------------------
DROP TABLE IF EXISTS `instant_inout_flow`;
CREATE TABLE `instant_inout_flow`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount` int(11) NULL DEFAULT NULL COMMENT '人数',
  `inout` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流入流出'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for instant_people_flow
-- ----------------------------
DROP TABLE IF EXISTS `instant_people_flow`;
CREATE TABLE `instant_people_flow`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID\r\n',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount` int(11) NULL DEFAULT NULL COMMENT '人数'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for instant_people_flow_age
-- ----------------------------
DROP TABLE IF EXISTS `instant_people_flow_age`;
CREATE TABLE `instant_people_flow_age`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount5` int(11) NULL DEFAULT NULL COMMENT '1-5岁人数',
  `amount10` int(11) NULL DEFAULT NULL COMMENT '6-10岁人数',
  `amount15` int(11) NULL DEFAULT NULL COMMENT '11-15岁人数',
  `amount20` int(11) NULL DEFAULT NULL COMMENT '16-20岁人数',
  `amount25` int(11) NULL DEFAULT NULL COMMENT '21-25岁人数',
  `amount30` int(11) NULL DEFAULT NULL COMMENT '26-30岁人数',
  `amount35` int(11) NULL DEFAULT NULL COMMENT '31-35岁人数',
  `amount40` int(11) NULL DEFAULT NULL COMMENT '36-40岁人数',
  `amount45` int(11) NULL DEFAULT NULL COMMENT '41-45岁人数',
  `amount50` int(11) NULL DEFAULT NULL COMMENT '46-50岁人数',
  `amount55` int(11) NULL DEFAULT NULL COMMENT '51-55岁人数',
  `amount60` int(11) NULL DEFAULT NULL COMMENT '56-60岁人数',
  `amount65` int(11) NULL DEFAULT NULL COMMENT '61-65岁人数',
  `amount70` int(11) NULL DEFAULT NULL COMMENT '66-70岁人数',
  `amount_over` int(11) NULL DEFAULT NULL COMMENT '70+岁'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for instant_people_flow_attr
-- ----------------------------
DROP TABLE IF EXISTS `instant_people_flow_attr`;
CREATE TABLE `instant_people_flow_attr`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount` int(11) NULL DEFAULT NULL COMMENT '人数',
  `city_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属城市ID'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for instant_people_flow_home
-- ----------------------------
DROP TABLE IF EXISTS `instant_people_flow_home`;
CREATE TABLE `instant_people_flow_home`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount` int(11) NULL DEFAULT NULL COMMENT '人数',
  `city_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '户籍城市ID'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for instant_people_flow_sex
-- ----------------------------
DROP TABLE IF EXISTS `instant_people_flow_sex`;
CREATE TABLE `instant_people_flow_sex`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount_male` int(11) NULL DEFAULT NULL COMMENT '男性人数',
  `amount_female` int(11) NULL DEFAULT NULL COMMENT '女性人数'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tourist_appear
-- ----------------------------
DROP TABLE IF EXISTS `tourist_appear`;
CREATE TABLE `tourist_appear`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount` int(11) NULL DEFAULT NULL COMMENT '人数'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tourist_appear_attr
-- ----------------------------
DROP TABLE IF EXISTS `tourist_appear_attr`;
CREATE TABLE `tourist_appear_attr`  (
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID',
  `time` datetime(0) NOT NULL COMMENT '时间',
  `amount` int(11) NULL DEFAULT NULL COMMENT '人数',
  `city_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属城市ID'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
