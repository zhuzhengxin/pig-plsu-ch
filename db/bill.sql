/*
 Navicat Premium Data Transfer

 Source Server         : zhu
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : pig

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 24/08/2019 14:36:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill`  (
  `id` int(64) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `company` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '所属公司',
  `person` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经手人',
  `buyer` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '买主',
  `bus_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '车牌号',
  `time` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '日期',
  `type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '0: 进油 1：出油',
  `money_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '0:结算 1：未结算',
  `money` double(150, 0) NULL DEFAULT NULL COMMENT '金额',
  `ah` double(150, 0) NULL DEFAULT NULL COMMENT '容量',
  `unit_price` double(150, 2) NULL DEFAULT NULL COMMENT '单价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 280 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO `bill` VALUES (8, '明常市政', '朱传录', '盛大虎', '株友船挖', '2019-06-13', '1', '1', 18427, 2792, 6.60);
INSERT INTO `bill` VALUES (9, '明常市政', '朱传录', '盛大虎', '株友船挖', '2019-06-13', '1', '1', 3094, 495, 6.25);
INSERT INTO `bill` VALUES (10, '明常市政', '朱传录', '杜红海', '株友挖机', '2019-06-13', '1', '1', 25285, 3831, 6.60);
INSERT INTO `bill` VALUES (11, '明常市政', '朱传录', '杜红海', '株友挖机', '2019-06-13', '1', '1', 1756, 281, 6.25);
INSERT INTO `bill` VALUES (12, '明常市政', '朱传录', '李顺', '神刚4号', '2019-06-13', '1', '1', 8764, 1328, 6.60);
INSERT INTO `bill` VALUES (13, '明常市政', '朱传录', '李顺', '神刚4号', '2019-06-13', '1', '1', 1719, 275, 6.25);
INSERT INTO `bill` VALUES (14, '明常市政', '朱传录', '陈帆', '徐工船挖13号', '2019-06-11', '1', '1', 17100, 2591, 6.60);
INSERT INTO `bill` VALUES (15, '明常市政', '朱传录', '田超', '加腾3号', '2019-06-11', '1', '1', 8521, 1291, 6.60);
INSERT INTO `bill` VALUES (16, '明常市政', '朱传录', '王耀兵', '小松挖机', '2019-06-13', '1', '1', 23852, 3614, 6.60);
INSERT INTO `bill` VALUES (17, '明常市政', '朱传录', '王耀兵', '小松挖机', '2019-06-13', '1', '1', 1794, 287, 6.25);
INSERT INTO `bill` VALUES (18, '明常市政', '朱传录', '魏小波', 'JCM船挖', '2019-06-13', '1', '1', 22427, 3398, 6.60);
INSERT INTO `bill` VALUES (19, '明常市政', '朱传录', '魏小波', 'JCM船挖', '2019-06-13', '1', '1', 1981, 317, 6.25);
INSERT INTO `bill` VALUES (20, '明常市政', '朱传录', '王建', '徐工船挖', '2019-06-13', '1', '1', 12619, 1912, 6.60);
INSERT INTO `bill` VALUES (21, '明常市政', '朱传录', '王建', '徐工船挖', '2019-06-13', '1', '1', 4025, 644, 6.25);
INSERT INTO `bill` VALUES (22, '明常市政', '朱传录', '付斌', '斗三船挖', '2019-06-13', '1', '1', 7524, 1140, 6.60);
INSERT INTO `bill` VALUES (23, '明常市政', '朱传录', '付斌', '斗三船挖', '2019-06-13', '1', '1', 2737, 438, 6.25);
INSERT INTO `bill` VALUES (24, '明常市政', '朱传录', '陈文安', '神刚1号', '2019-06-16', '1', '1', 20229, 3065, 6.60);
INSERT INTO `bill` VALUES (25, '明常市政', '朱传录', '陈文安', '神刚1号', '2019-06-16', '1', '1', 3287, 526, 6.25);
INSERT INTO `bill` VALUES (26, '明常市政', '朱传录', '彭为红', '斗三船挖7号', '2019-06-16', '1', '1', 11299, 1712, 6.60);
INSERT INTO `bill` VALUES (27, '明常市政', '朱传录', '彭为红', '斗三船挖7号', '2019-06-16', '1', '1', 3425, 548, 6.25);
INSERT INTO `bill` VALUES (28, '明常市政', '朱传录', '袁志伟', '奇瑞挖机', '2019-06-11', '1', '1', 11009, 1668, 6.60);
INSERT INTO `bill` VALUES (29, '明常市政', '朱传录', '吴俊', '加腾2号', '2019-06-09', '1', '1', 17774, 2693, 6.60);
INSERT INTO `bill` VALUES (30, '明常市政', '朱传录', '应勇', '加腾1号', '2019-06-13', '1', '1', 19562, 2964, 6.60);
INSERT INTO `bill` VALUES (31, '明常市政', '朱传录', '应勇', '加腾1号', '2019-06-13', '1', '1', 1594, 255, 6.25);
INSERT INTO `bill` VALUES (32, '明常市政', '朱传录', '石强', '日立2号', '2019-06-11', '1', '1', 33568, 5086, 6.60);
INSERT INTO `bill` VALUES (33, '明常市政', '朱传录', '李仁红', '徐工船挖29号', '2019-06-11', '1', '1', 7366, 1116, 6.60);
INSERT INTO `bill` VALUES (34, '明常市政', '朱传录', '梁杰', '神刚3号', '2019-06-11', '1', '1', 11873, 1799, 6.60);
INSERT INTO `bill` VALUES (35, '明常市政', '朱传录', '戴俊', '三一挖机', '2019-06-11', '1', '1', 27172, 4117, 6.60);
INSERT INTO `bill` VALUES (36, '明常市政', '朱传录', '方润波', '日立1号', '2019-06-11', '1', '1', 32241, 4885, 6.60);
INSERT INTO `bill` VALUES (37, '明常市政', '朱传录', '袁庆', '龙吸水', '2019-06-09', '1', '1', 97165, 14722, 6.60);
INSERT INTO `bill` VALUES (38, '明常市政', '朱传录', '周涛', '徐工船挖', '2019-06-11', '1', '1', 16071, 2435, 6.60);
INSERT INTO `bill` VALUES (39, '明常市政', '朱传录', '夏其喜', '日立3号', '2019-06-11', '1', '1', 27476, 4163, 6.60);
INSERT INTO `bill` VALUES (40, '明常市政', '朱传录', '李强', '柳工挖机', '2019-06-11', '1', '1', 34452, 5220, 6.60);
INSERT INTO `bill` VALUES (41, '明常市政', '朱传录', '王猛', '神刚2号', '2019-06-11', '1', '1', 19945, 3022, 6.60);
INSERT INTO `bill` VALUES (42, '明常市政', '朱传录', '王高成', '徐工挖机', '2019-06-11', '1', '1', 9457, 1433, 6.60);
INSERT INTO `bill` VALUES (43, '明常市政', '朱传录', '张正', '大于船挖1号', '2019-06-11', '1', '1', 16341, 2476, 6.60);
INSERT INTO `bill` VALUES (44, '明常市政', '朱传录', '鲁腾/鲍德军', '徐工船挖7号', '2019-06-11', '1', '1', 9655, 1463, 6.60);
INSERT INTO `bill` VALUES (45, '明常市政', '朱传录', '陈威', '徐工船挖2号', '2019-06-11', '1', '1', 16434, 2490, 6.60);
INSERT INTO `bill` VALUES (46, '明常市政', '朱传录', '范伟李程', '新三一船挖', '2019-06-11', '1', '1', 16771, 2541, 6.60);
INSERT INTO `bill` VALUES (47, '明常市政', '朱传录', '夏小兵', '小挖机', '2019-05-13', '1', '1', 3385, 513, 6.60);
INSERT INTO `bill` VALUES (48, '明常市政', '朱传录', '张岩', '徐工船挖5号', '2019-06-11', '1', '1', 14975, 2269, 6.60);
INSERT INTO `bill` VALUES (49, '明常市政', '朱传录', '黄自兵', '神刚6号', '2019-06-11', '1', '1', 4455, 675, 6.60);
INSERT INTO `bill` VALUES (50, '明常市政', '朱传录', '盛晓虎', '斗三船挖14号', '2019-06-11', '1', '1', 12309, 1865, 6.60);
INSERT INTO `bill` VALUES (51, '明常市政', '朱传录', '占显峰', '神刚5号', '2019-06-11', '1', '1', 9055, 1372, 6.60);
INSERT INTO `bill` VALUES (52, '明常市政', '朱传录', '乔志刚', '三一船挖', '2019-06-11', '1', '1', 13167, 1995, 6.60);
INSERT INTO `bill` VALUES (53, '明常市政', '朱传录', '李顺', '神刚4号', '2019-06-16', '1', '1', 1037, 166, 6.25);
INSERT INTO `bill` VALUES (54, '明常市政', '朱传录', '占显峰', '神刚5号', '2019-06-13', '1', '1', 1631, 261, 6.25);
INSERT INTO `bill` VALUES (55, '明常市政', '朱传录', '盛晓虎', '斗三船挖14号', '2019-06-16', '1', '1', 1437, 230, 6.25);
INSERT INTO `bill` VALUES (56, '明常市政', '朱传录', '盛晓虎', '斗三船挖14号', '2019-06-13', '1', '1', 2025, 324, 6.25);
INSERT INTO `bill` VALUES (57, '明常市政', '朱传录', '鲁腾/鲍德军', '徐工船挖7号', '2019-06-16', '1', '1', 2075, 332, 6.25);
INSERT INTO `bill` VALUES (58, '明常市政', '朱传录', '黄神光', '徐工挖机', '2019-06-16', '1', '1', 1725, 276, 6.25);
INSERT INTO `bill` VALUES (59, '明常市政', '朱传录', '王耀兵', '小松挖机', '2019-06-16', '1', '1', 1131, 181, 6.25);
INSERT INTO `bill` VALUES (62, '明常市政', '朱传录', '梁杰', '神刚3号', '2019-06-16', '1', '1', 1406, 225, 6.25);
INSERT INTO `bill` VALUES (63, '明常市政', '朱传录', '陈威', '徐工船挖2号', '2019-06-15', '1', '1', 2244, 359, 6.25);
INSERT INTO `bill` VALUES (64, '明常市政', '朱传录', '陈帆', '徐工船挖13号', '2019-06-16', '1', '1', 3437, 550, 6.25);
INSERT INTO `bill` VALUES (65, '明常市政', '朱传录', '张正', '大于船挖1号', '2019-06-16', '1', '1', 2106, 337, 6.25);
INSERT INTO `bill` VALUES (66, '明常市政', '朱传录', '石强', '日立2号', '2019-06-16', '1', '1', 1456, 233, 6.25);
INSERT INTO `bill` VALUES (67, '明常市政', '朱传录', '方润波', '日立1号', '2019-06-16', '1', '1', 1500, 240, 6.25);
INSERT INTO `bill` VALUES (68, '明常市政', '朱传录', '汪得乐', '柳工挖机', '2019-06-16', '1', '1', 1456, 233, 6.25);
INSERT INTO `bill` VALUES (69, '明常市政', '朱传录', '陈茂平', '日立3号', '2019-06-16', '1', '1', 1425, 228, 6.25);
INSERT INTO `bill` VALUES (70, '明常市政', '朱传录', '袁志伟', '奇瑞挖机', '2019-06-16', '1', '1', 1493, 239, 6.25);
INSERT INTO `bill` VALUES (71, '明常市政', '朱传录', '袁庆', '龙吸水', '2019-06-16', '1', '1', 7375, 1180, 6.25);
INSERT INTO `bill` VALUES (72, '明常市政', '朱传录', '李仁红', '徐工船挖29号', '2019-06-16', '1', '1', 1862, 298, 6.25);
INSERT INTO `bill` VALUES (73, '明常市政', '朱传录', '魏小波', 'JCM船挖', '2019-06-16', '1', '1', 1375, 220, 6.25);
INSERT INTO `bill` VALUES (74, '明常市政', '朱传录', '乔志刚', '三一船挖', '2019-06-16', '1', '1', 2375, 380, 6.25);
INSERT INTO `bill` VALUES (75, '明常市政', '朱传录', '戴俊', '三一挖机', '2019-06-16', '1', '1', 1862, 298, 6.25);
INSERT INTO `bill` VALUES (76, '明常市政', '朱传录', '张岩', '徐工船挖5号', '2019-06-16', '1', '1', 3125, 500, 6.25);
INSERT INTO `bill` VALUES (77, '明常市政', '朱传录', '周涛', '徐工船挖1号', '2019-06-16', '1', '1', 2500, 400, 6.25);
INSERT INTO `bill` VALUES (78, '明常市政', '朱传录', '张岩', '徐工船挖5号', '2019-06-13', '1', '1', 4150, 664, 6.25);
INSERT INTO `bill` VALUES (79, '明常市政', '朱传录', '刘少军', '三一挖机', '2019-06-13', '1', '1', 1693, 271, 6.25);
INSERT INTO `bill` VALUES (80, '明常市政', '朱传录', '乔志刚', '三一船挖', '2019-06-13', '1', '1', 2500, 400, 6.25);
INSERT INTO `bill` VALUES (81, '明常市政', '朱传录', '汪得乐', '柳工挖机', '2019-06-13', '1', '1', 1981, 317, 6.25);
INSERT INTO `bill` VALUES (82, '明常市政', '朱传录', '陈茂平', '日立3号', '2019-06-13', '1', '1', 1725, 276, 6.25);
INSERT INTO `bill` VALUES (83, '明常市政', '朱传录', '黄神光', '徐工挖机', '2019-06-13', '1', '1', 2381, 381, 6.25);
INSERT INTO `bill` VALUES (84, '明常市政', '朱传录', '袁志伟', '奇瑞挖机', '2019-06-13', '1', '1', 1875, 300, 6.25);
INSERT INTO `bill` VALUES (85, '明常市政', '朱传录', '陈帆', '徐工船挖13号', '2019-06-13', '1', '1', 3937, 630, 6.25);
INSERT INTO `bill` VALUES (86, '明常市政', '朱传录', '方润波', '日立1号', '2019-06-13', '1', '1', 1875, 300, 6.25);
INSERT INTO `bill` VALUES (87, '明常市政', '朱传录', '占显峰', '神刚5号', '2019-06-15', '1', '1', 1293, 207, 6.25);
INSERT INTO `bill` VALUES (88, '明常市政', '朱传录', '梁杰', '神刚3号', '2019-06-13', '1', '1', 1743, 279, 6.25);
INSERT INTO `bill` VALUES (89, '明常市政', '朱传录', '袁志伟', '奇瑞挖机', '2019-06-16', '1', '1', 1500, 240, 6.25);
INSERT INTO `bill` VALUES (90, '明常市政', '朱传录', '汪得乐', '柳工挖机', '2019-06-15', '1', '1', 1625, 260, 6.25);
INSERT INTO `bill` VALUES (91, '明常市政', '朱传录', '陈茂平', '日立3号', '2019-06-15', '1', '1', 1600, 256, 6.25);
INSERT INTO `bill` VALUES (92, '明常市政', '朱传录', '石强', '日立2号', '2019-06-15', '1', '1', 1475, 236, 6.25);
INSERT INTO `bill` VALUES (93, '明常市政', '朱传录', '王建', '徐工船挖', '2019-06-15', '1', '1', 2393, 383, 6.25);
INSERT INTO `bill` VALUES (94, '明常市政', '朱传录', '彭为红', '斗三船挖7号', '2019-06-15', '1', '1', 1562, 250, 6.25);
INSERT INTO `bill` VALUES (95, '明常市政', '朱传录', '周涛', '徐工船挖1号', '2019-06-13', '1', '1', 2762, 442, 6.25);
INSERT INTO `bill` VALUES (96, '明常市政', '朱传录', '鲁腾/鲍德军', '徐工船挖7号', '2019-06-13', '1', '1', 1750, 280, 6.25);
INSERT INTO `bill` VALUES (97, '明常市政', '朱传录', '石强', '日立2号', '2019-06-13', '1', '1', 1937, 310, 6.25);
INSERT INTO `bill` VALUES (98, '明常市政', '朱传录', '李顺', '神刚4号', '2019-06-15', '1', '1', 1625, 260, 6.25);
INSERT INTO `bill` VALUES (99, '明常市政', '朱传录', '张正', '大于船挖1号', '2019-06-13', '1', '1', 1125, 180, 6.25);
INSERT INTO `bill` VALUES (100, '明常市政', '朱传录', '李仁红', '徐工船挖29号', '2019-06-13', '1', '1', 1812, 290, 6.25);
INSERT INTO `bill` VALUES (101, '明常市政', '朱传录', '黄自兵', '神刚6号', '2019-06-13', '1', '1', 1275, 204, 6.25);
INSERT INTO `bill` VALUES (102, '明常市政', '朱传录', '夏其喜', '小挖机', '2019-06-13', '1', '1', 600, 96, 6.25);
INSERT INTO `bill` VALUES (103, '明常市政', '朱传录', '陈威', '徐工船挖2号', '2019-06-13', '1', '1', 2162, 346, 6.25);
INSERT INTO `bill` VALUES (104, '明常市政', '朱传录', '黄神光', '徐工挖机', '2019-06-15', '1', '1', 1462, 234, 6.25);
INSERT INTO `bill` VALUES (105, '明常市政', '朱传录', '张正', '大于船挖1号', '2019-06-15', '1', '1', 1812, 290, 6.25);
INSERT INTO `bill` VALUES (107, '明常市政', '朱传录', '鲁腾/鲍德军', '徐工船挖7号', '2019-06-15', '1', '1', 1693, 271, 6.25);
INSERT INTO `bill` VALUES (108, '明常市政', '朱传录', '梁杰', '神刚3号', '2019-06-15', '1', '1', 1462, 234, 6.25);
INSERT INTO `bill` VALUES (109, '明常市政', '朱传录', '陈威', '徐工船挖2号', '2019-06-15', '1', '1', 2062, 330, 6.25);
INSERT INTO `bill` VALUES (110, '明常市政', '朱传录', '陈帆', '徐工船挖13号', '2019-06-15', '1', '1', 1875, 300, 6.25);
INSERT INTO `bill` VALUES (111, '明常市政', '朱传录', '周涛', '徐工船挖1号', '2019-06-15', '1', '1', 2937, 470, 6.25);
INSERT INTO `bill` VALUES (112, '明常市政', '朱传录', '戴俊', '三一挖机', '2019-06-15', '1', '1', 1387, 222, 6.25);
INSERT INTO `bill` VALUES (113, '明常市政', '朱传录', '范伟李程', '新三一船挖', '2019-06-15', '1', '1', 4687, 750, 6.25);
INSERT INTO `bill` VALUES (114, '明常市政', '朱传录', '乔志刚', '三一船挖', '2019-06-15', '1', '1', 1875, 300, 6.25);
INSERT INTO `bill` VALUES (115, '明常市政', '朱传录', '盛晓虎', '斗三船挖14号', '2019-06-15', '1', '1', 2062, 330, 6.25);
INSERT INTO `bill` VALUES (116, '明常市政', '朱传录', '魏小波', 'JCM船挖', '2019-06-15', '1', '1', 1431, 229, 6.25);
INSERT INTO `bill` VALUES (117, '明常市政', '朱传录', '李仁红', '徐工船挖29号', '2019-06-15', '1', '1', 2500, 400, 6.25);
INSERT INTO `bill` VALUES (118, '明常市政', '朱传录', '黄自兵', '神刚6号', '2019-06-15', '1', '1', 1756, 281, 6.25);
INSERT INTO `bill` VALUES (119, '明常市政', '朱传录', '黄自兵', '神刚6号', '2019-06-20', '1', '1', 2025, 324, 6.25);
INSERT INTO `bill` VALUES (120, '明常市政', '朱传录', '戴俊', '三一挖机', '2019-06-19', '1', '1', 762, 122, 6.25);
INSERT INTO `bill` VALUES (121, '明常市政', '朱传录', '魏小波', 'JCM船挖', '2019-06-20', '1', '1', 2375, 380, 6.25);
INSERT INTO `bill` VALUES (122, '明常市政', '朱传录', '陈文安', '加腾3号', '2019-06-20', '1', '1', 1162, 186, 6.25);
INSERT INTO `bill` VALUES (123, '明常市政', '朱传录', '乔志刚', '三一船挖', '2019-06-20', '1', '1', 1250, 200, 6.25);
INSERT INTO `bill` VALUES (124, '明常市政', '朱传录', '李仁红', '徐工船挖29号', '2019-06-20', '1', '1', 2281, 365, 6.25);
INSERT INTO `bill` VALUES (125, '明常市政', '朱传录', '周涛', '徐工船挖1号', '2019-06-20', '1', '1', 1750, 280, 6.25);
INSERT INTO `bill` VALUES (126, '明常市政', '朱传录', '范伟李程', '新三一船挖', '2019-06-20', '1', '1', 1250, 200, 6.25);
INSERT INTO `bill` VALUES (127, '明常市政', '朱传录', '张岩', '徐工船挖5号', '2019-06-20', '1', '1', 1875, 300, 6.25);
INSERT INTO `bill` VALUES (128, '明常市政', '朱传录', '陈威', '徐工船挖2号', '2019-06-20', '1', '1', 2050, 328, 6.25);
INSERT INTO `bill` VALUES (129, '明常市政', '朱传录', '陈帆', '徐工船挖13号', '2019-06-20', '1', '1', 1250, 200, 6.25);
INSERT INTO `bill` VALUES (130, '明常市政', '朱传录', '鲁腾/鲍德军', '徐工船挖7号', '2019-06-20', '1', '1', 2281, 365, 6.25);
INSERT INTO `bill` VALUES (131, '明常市政', '朱传录', '张正', '大于船挖1号', '2019-06-20', '1', '1', 1818, 291, 6.25);
INSERT INTO `bill` VALUES (132, '明常市政', '朱传录', '方润波', '日立1号', '2019-06-20', '1', '1', 1093, 175, 6.25);
INSERT INTO `bill` VALUES (133, '明常市政', '朱传录', '袁志伟', '奇瑞挖机', '2019-06-20', '1', '1', 1262, 202, 6.25);
INSERT INTO `bill` VALUES (134, '明常市政', '朱传录', '石强', '日立2号', '2019-06-20', '1', '1', 1643, 263, 6.25);
INSERT INTO `bill` VALUES (135, '明常市政', '朱传录', '陈茂平', '日立3号', '2019-06-20', '1', '1', 1156, 185, 6.25);
INSERT INTO `bill` VALUES (136, '明常市政', '朱传录', '汪得乐', '柳工挖机', '2019-06-20', '1', '1', 1518, 243, 6.25);
INSERT INTO `bill` VALUES (137, '白沙三路', '朱传录', '吴怀文', '日立1号', '2019-02-25', '1', '1', 4956, 826, 6.00);
INSERT INTO `bill` VALUES (138, '白沙三路', '朱传录', '吴怀文', '日立1号', '2019-05-18', '1', '1', 10558, 1676, 6.30);
INSERT INTO `bill` VALUES (139, '白沙三路', '朱传录', '吴怀文', '日立1号', '2019-03-06', '1', '1', 14247, 2298, 6.20);
INSERT INTO `bill` VALUES (140, '白沙三路', '朱传录', ' 吴怀文', '日立1号', '2019-05-18', '1', '1', 7177, 1167, 6.15);
INSERT INTO `bill` VALUES (141, '白沙三路', '朱传录', '吴怀文', '日立1号', '2019-04-25', '1', '1', 11550, 1750, 6.60);
INSERT INTO `bill` VALUES (142, '白沙三路', '朱传录', '石强', '日立2号', '2019-05-18', '1', '1', 5537, 879, 6.30);
INSERT INTO `bill` VALUES (143, '白沙三路', '朱传录', '石强', '日立2号', '2019-05-18', '1', '1', 5102, 823, 6.20);
INSERT INTO `bill` VALUES (144, '白沙三路', '朱传录', '乐朋', '日立210', '2019-02-24', '1', '1', 3900, 650, 6.00);
INSERT INTO `bill` VALUES (145, '白沙三路', '朱传录', '乐朋', '日立210', '2019-03-06', '1', '1', 6365, 1035, 6.15);
INSERT INTO `bill` VALUES (146, '白沙三路', '朱传录', '乐朋', '日立210', '2019-03-15', '1', '1', 11699, 1887, 6.20);
INSERT INTO `bill` VALUES (147, '白沙三路', '朱传录', '乐朋', '日立210', '2019-03-18', '1', '1', 10773, 1710, 6.30);
INSERT INTO `bill` VALUES (148, '白沙三路', '朱传录', '陈红山/李辉', '现代挖机', '2019-02-23', '1', '1', 6078, 1013, 6.00);
INSERT INTO `bill` VALUES (149, '白沙三路', '朱传录', '陈红山/李辉', '现代挖机', '2019-06-10', '1', '1', 18457, 2977, 6.20);
INSERT INTO `bill` VALUES (150, '白沙三路', '朱传录', '陈红山/李辉', '现代挖机', '2019-06-10', '1', '1', 17482, 2775, 6.30);
INSERT INTO `bill` VALUES (151, '白沙三路', '朱传录', '陈红山/李辉', '现代挖机', '2019-04-16', '1', '1', 36346, 5507, 6.60);
INSERT INTO `bill` VALUES (152, '白沙三路', '朱传录', '陈红山/李辉', '现代挖机', '2019-04-02', '1', '1', 13646, 2219, 6.15);
INSERT INTO `bill` VALUES (153, '白沙三路', '朱传录', '陈红山/李辉', '正铲', '2019-05-01', '1', '1', 20862, 3161, 6.60);
INSERT INTO `bill` VALUES (154, '白沙三路', '朱传录', '陈红山/李辉', '正铲', '2019-06-10', '1', '1', 7389, 1173, 6.30);
INSERT INTO `bill` VALUES (155, '白沙三路', '朱传录', '陈红山/李辉', '正铲', '2019-04-02', '1', '1', 2785, 453, 6.15);
INSERT INTO `bill` VALUES (156, '白沙三路', '朱传录', '陈红山/李辉', '正铲', '2019-04-14', '1', '1', 9814, 1583, 6.20);
INSERT INTO `bill` VALUES (157, '白沙三路', '朱传录', '陈红山/李辉', '压路机', '2019-04-26', '1', '1', 4989, 756, 6.60);
INSERT INTO `bill` VALUES (158, '白沙三路', '朱传录', '陈红山/李辉', '压路机', '2019-03-18', '1', '1', 2394, 380, 6.30);
INSERT INTO `bill` VALUES (159, '白沙三路', '朱传录', '陈红山/李辉', '压路机', '2019-03-12', '1', '1', 2263, 365, 6.20);
INSERT INTO `bill` VALUES (160, '白沙三路', '朱传录', '陈红山/李辉', '压路机', '2019-04-08', '1', '1', 2583, 420, 6.15);
INSERT INTO `bill` VALUES (161, '白沙三路', '朱传录', '陈红山/李辉', '压路机', '2019-02-24', '1', '1', 624, 104, 6.00);
INSERT INTO `bill` VALUES (162, '白沙三路', '朱传录', '陈红山/李辉', '小挖机', '2019-05-13', '1', '1', 4177, 633, 6.60);
INSERT INTO `bill` VALUES (163, '白沙三路', '朱传录', '陈红山/李辉', '小挖机', '2019-03-23', '1', '1', 863, 137, 6.30);
INSERT INTO `bill` VALUES (164, '白沙三路', '朱传录', '陈红山/李辉', '长城', '2019-03-17', '1', '1', 396, 63, 6.30);
INSERT INTO `bill` VALUES (165, '白沙三路', '朱传录', '陈红山/李辉', '长城', '2019-05-19', '1', '1', 765, 116, 6.60);
INSERT INTO `bill` VALUES (166, '明常市政', '朱传录', '彭推机', '移山', '2019-05-20', '1', '1', 10078, 1527, 6.60);
INSERT INTO `bill` VALUES (167, '明常市政', '朱传录', '彭推机', '山推', '2019-05-09', '1', '1', 8520, 1291, 6.60);
INSERT INTO `bill` VALUES (168, '明常市政', '朱传录', '魏推机', '移山2号', '2019-05-22', '1', '1', 7873, 1193, 6.60);
INSERT INTO `bill` VALUES (169, '明常市政', '朱传录', '谢山推', '山推', '2019-05-12', '1', '1', 1194, 181, 6.60);
INSERT INTO `bill` VALUES (170, '明常市政', '朱传录', '肖国平', '吊车', '2019-06-01', '1', '1', 7933, 1202, 6.60);
INSERT INTO `bill` VALUES (171, '明常市政', '朱传录', '肖国平', '吊车', '2019-03-14', '1', '1', 3726, 601, 6.20);
INSERT INTO `bill` VALUES (172, '明常市政', '朱传录', '肖国平', '吊车', '2019-03-31', '1', '1', 4788, 760, 6.30);
INSERT INTO `bill` VALUES (173, '明常市政', '朱传录', '肖国平', '吊车', '2019-02-21', '1', '1', 2052, 342, 6.00);
INSERT INTO `bill` VALUES (174, '明常市政', '朱传录', '肖国平', '吊车', '2019-05-28', '1', '1', 5821, 882, 6.60);
INSERT INTO `bill` VALUES (175, '明常市政', '朱传录', '肖国平', '发电机', '2019-04-16', '1', '1', 3892, 633, 6.15);
INSERT INTO `bill` VALUES (176, '明常市政', '朱传录', '肖国平', '吊车', '2019-06-19', '1', '1', 1425, 228, 6.25);
INSERT INTO `bill` VALUES (177, '白沙三路', '朱传录', '陈红山/李辉', '现代挖机', '2019-06-19', '1', '1', 799, 121, 6.60);
INSERT INTO `bill` VALUES (178, '白沙三路', '朱传录', '陈红山/李辉', '正铲', '2019-06-13', '1', '1', 2303, 349, 6.60);
INSERT INTO `bill` VALUES (179, '白沙三路', '朱传录', '陈红山/李辉', '正铲', '2019-06-19', '1', '1', 925, 148, 6.25);
INSERT INTO `bill` VALUES (180, '白沙三路', '朱传录', '陈红山/李辉', '小挖机', '2019-06-13', '1', '1', 646, 98, 6.60);
INSERT INTO `bill` VALUES (181, '白沙三路', '朱传录', '陈红山/李辉', '小挖机', '2019-06-19', '1', '1', 531, 85, 6.25);
INSERT INTO `bill` VALUES (182, '明常市政', '朱传录', '夏小兵', '小挖机', '2019-04-22', '1', '1', 1155, 175, 6.60);
INSERT INTO `bill` VALUES (183, '明常市政', '朱传录', '夏小兵', '小挖机', '2019-04-08', '1', '1', 615, 100, 6.15);
INSERT INTO `bill` VALUES (184, '明常市政', '朱传录', '夏小兵', '小挖机', '2019-03-31', '1', '1', 667, 106, 6.30);
INSERT INTO `bill` VALUES (185, '明常市政', '朱传录', '夏其喜', '小挖机', '2019-03-03', '1', '1', 576, 93, 6.20);
INSERT INTO `bill` VALUES (186, '明常市政', '朱传录', '钟明华', '明华小挖', '2019-06-09', '1', '1', 2389, 362, 6.60);
INSERT INTO `bill` VALUES (187, '明常市政', '朱传录', '钟明华', '明华小挖', '2019-06-15', '1', '1', 1706, 273, 6.25);
INSERT INTO `bill` VALUES (188, '白沙三路', '朱传录', '乐朋', '日立210', '2019-06-02', '1', '1', 25654, 3887, 6.60);
INSERT INTO `bill` VALUES (189, '白沙三路', '朱传录', '乐朋', '日立210', '2019-06-19', '1', '1', 2393, 383, 6.25);
INSERT INTO `bill` VALUES (190, '明常市政', '朱传录', '袁庆', '龙吸水', '2019-06-21', '1', '1', 6281, 1005, 6.25);
INSERT INTO `bill` VALUES (191, '明常市政', '朱传录', '袁庆', '龙吸水', '2019-06-23', '1', '1', 5506, 881, 6.25);
INSERT INTO `bill` VALUES (192, '黄家湖', '朱传录', '乐朋', '日立210', '2019-06-22', '1', '1', 1950, 312, 6.25);
INSERT INTO `bill` VALUES (193, '黄家湖', '朱传录', '盛晓虎', '斗山215-9', '2019-06-22', '1', '1', 2175, 348, 6.25);
INSERT INTO `bill` VALUES (194, '黄家湖', '朱传录', '钟明华', '明华小挖', '2019-06-22', '1', '1', 1050, 168, 6.25);
INSERT INTO `bill` VALUES (195, '明常市政', '朱传录', '夏其喜/夏聪', '小挖机', '2019-06-11', '1', '1', 375, 60, 6.25);
INSERT INTO `bill` VALUES (196, '白沙三路', '朱传录', '陈红山/李辉', '小挖', '2019-06-23', '1', '1', 400, 64, 6.25);
INSERT INTO `bill` VALUES (197, '白沙三路', '朱传录', '陈红山/李辉', '现代挖机', '2019-06-23', '1', '1', 1931, 309, 6.25);
INSERT INTO `bill` VALUES (198, '白沙三路', '朱传录', '陈红山/李辉', '正铲', '2019-06-23', '1', '1', 1325, 212, 6.25);
INSERT INTO `bill` VALUES (199, '白沙三路', '朱传录', '陈红山/李辉', '正铲', '2019-06-23', '1', '1', 506, 81, 6.25);
INSERT INTO `bill` VALUES (200, '明常市政', '朱传录', '陈威', '徐工船挖2号', '2019-06-24', '1', '1', 1987, 318, 6.25);
INSERT INTO `bill` VALUES (201, '明常市政', '朱传录', '陈帆', '徐工船挖13号', '2019-06-24', '1', '1', 1250, 200, 6.25);
INSERT INTO `bill` VALUES (202, '明常市政', '朱传录', '周涛', '徐工船挖1号', '2019-06-24', '1', '1', 1700, 272, 6.25);
INSERT INTO `bill` VALUES (203, '明常市政', '朱传录', '李仁红', '徐工船挖29号', '2019-06-24', '1', '1', 1562, 250, 6.25);
INSERT INTO `bill` VALUES (204, '明常市政', '朱传录', '袁庆', '龙吸水', '2019-06-24', '1', '1', 5781, 925, 6.25);
INSERT INTO `bill` VALUES (205, '明常市政', '朱传录', '方润波', '日立1号', '2019-06-24', '1', '1', 1006, 161, 6.25);
INSERT INTO `bill` VALUES (206, '明常市政', '朱传录', '袁志伟', '奇瑞挖机', '2019-06-24', '1', '1', 1100, 176, 6.25);
INSERT INTO `bill` VALUES (207, '明常市政', '朱传录', '夏聪', '日立3号', '2019-06-24', '1', '1', 631, 101, 6.25);
INSERT INTO `bill` VALUES (208, '明常市政', '朱传录', '乔志刚', '三一船挖', '2019-06-24', '1', '1', 2312, 370, 6.25);
INSERT INTO `bill` VALUES (209, '明常市政', '朱传录', '张正', '大于船挖1号', '2019-06-24', '1', '1', 1812, 290, 6.25);
INSERT INTO `bill` VALUES (210, '明常市政', '朱传录', '陈茂平', '日立3号', '2019-06-24', '1', '1', 2131, 341, 6.25);
INSERT INTO `bill` VALUES (211, '明常市政', '朱传录', '汪得乐', '柳工挖机', '2019-06-24', '1', '1', 2375, 380, 6.25);
INSERT INTO `bill` VALUES (212, '明常市政', '朱传录', '石强', '日立2号', '2019-06-24', '1', '1', 1412, 226, 6.25);
INSERT INTO `bill` VALUES (213, '明常市政', '朱传录', '黄自兵', '神刚6号', '2019-06-24', '1', '1', 893, 143, 6.25);
INSERT INTO `bill` VALUES (214, '明常市政', '朱传录', '田超/陈文安', '加腾3号', '2019-06-24', '1', '1', 937, 150, 6.25);
INSERT INTO `bill` VALUES (215, '明常市政', '朱传录', '夏聪', '日立3号', '2019-06-26', '1', '1', 768, 125, 6.15);
INSERT INTO `bill` VALUES (216, '明常市政', '朱传录', '方润波', '日立1号', '2019-06-26', '1', '1', 842, 137, 6.15);
INSERT INTO `bill` VALUES (217, '明常市政', '朱传录', '汪得乐', '柳工挖机', '2019-06-26', '1', '1', 387, 63, 6.15);
INSERT INTO `bill` VALUES (218, '明常市政', '朱传录', '李仁红', '徐工船挖29号', '2019-06-26', '1', '1', 2232, 363, 6.15);
INSERT INTO `bill` VALUES (219, '明常市政', '朱传录', '周涛', '徐工船挖1号', '2019-06-26', '1', '1', 1586, 258, 6.15);
INSERT INTO `bill` VALUES (220, '明常市政', '朱传录', '陈威', '徐工船挖2号', '2019-06-26', '1', '1', 2091, 340, 6.15);
INSERT INTO `bill` VALUES (221, '明常市政', '朱传录', '陈帆', '徐工船挖13号', '2019-06-26', '1', '1', 2460, 400, 6.15);
INSERT INTO `bill` VALUES (222, '明常市政', '朱传录', '袁庆', '龙吸水', '2019-06-26', '1', '1', 6150, 1000, 6.15);
INSERT INTO `bill` VALUES (223, '明常市政', '朱传录', '鲁腾/鲍德军', '徐工船挖7号', '2019-06-26', '1', '1', 3075, 500, 6.15);
INSERT INTO `bill` VALUES (224, '明常市政', '朱传录', '张岩', '徐工船挖5号', '2019-06-26', '1', '1', 3075, 500, 6.15);
INSERT INTO `bill` VALUES (225, '白沙三路', '朱传录', '陈红山/李辉', '小挖', '2019-06-26', '1', '1', 518, 83, 6.25);
INSERT INTO `bill` VALUES (226, '白沙三路', '朱传录', '陈红山/李辉', '正铲', '2019-06-26', '1', '1', 781, 125, 6.25);
INSERT INTO `bill` VALUES (227, '白沙三路', '朱传录', '陈红山/李辉', '现代挖机', '2019-06-26', '1', '1', 1943, 311, 6.25);
INSERT INTO `bill` VALUES (228, '白沙三路', '朱传录', '陈红山/李辉', '正铲', '2019-06-26', '1', '1', 793, 127, 6.25);
INSERT INTO `bill` VALUES (229, '明常市政', '朱传录', '肖国平', '吊车', '2019-06-26', '1', '1', 1734, 282, 6.15);
INSERT INTO `bill` VALUES (230, '明常市政', '朱传录', '夏聪', '小挖', '2019-06-28', '1', '1', 344, 56, 6.15);
INSERT INTO `bill` VALUES (231, '明常市政', '朱传录', '石强', '日立2号', '2019-06-28', '1', '1', 2484, 404, 6.15);
INSERT INTO `bill` VALUES (232, '明常市政', '朱传录', '夏聪/其喜喜', '日立3号', '2019-06-28', '1', '1', 1555, 253, 6.15);
INSERT INTO `bill` VALUES (233, '明常市政', '朱传录', '汪得乐', '柳工挖机', '2019-06-28', '1', '1', 1531, 249, 6.15);
INSERT INTO `bill` VALUES (234, '明常市政', '朱传录', '方润波', '日立1号', '2019-06-28', '1', '1', 1592, 259, 6.15);
INSERT INTO `bill` VALUES (235, '明常市政', '朱传录', '袁志伟', '奇瑞挖机', '2019-06-28', '1', '1', 1722, 280, 6.15);
INSERT INTO `bill` VALUES (236, '明常市政', '朱传录', '张正', '大于船挖1号', '2019-06-28', '1', '1', 3075, 500, 6.15);
INSERT INTO `bill` VALUES (237, '明常市政', '朱传录', '乔志刚', '三一船挖', '2019-06-28', '1', '1', 1691, 275, 6.15);
INSERT INTO `bill` VALUES (239, '明常市政', '朱传录', '陈威', '徐工船挖2号', '2019-06-28', '1', '1', 2460, 400, 6.15);
INSERT INTO `bill` VALUES (240, '明常市政', '朱传录', '陈文安', '加腾3号', '2019-06-28', '1', '1', 1845, 300, 6.15);
INSERT INTO `bill` VALUES (241, '明常市政', '朱传录', '黄自兵', '神刚6号', '2019-06-28', '1', '1', 1599, 260, 6.15);
INSERT INTO `bill` VALUES (242, '明常市政', '朱传录', '李仁红', '徐工船挖29号', '2019-06-28', '1', '1', 2521, 410, 6.15);
INSERT INTO `bill` VALUES (243, '明常市政', '朱传录', '汪得乐', '柳工挖机', '2019-06-30', '1', '1', 799, 130, 6.15);
INSERT INTO `bill` VALUES (244, '明常市政', '朱传录', '方润波', '日立1号', '2019-06-30', '1', '1', 867, 141, 6.15);
INSERT INTO `bill` VALUES (245, '明常市政', '朱传录', '石强', '日立2号', '2019-06-30', '1', '1', 935, 152, 6.15);
INSERT INTO `bill` VALUES (246, '明常市政', '朱传录', '陈茂平', '日立3号', '2019-06-30', '1', '1', 1913, 311, 6.15);
INSERT INTO `bill` VALUES (247, '明常市政', '朱传录', '袁志伟', '奇瑞挖机', '2019-06-30', '1', '1', 861, 140, 6.15);
INSERT INTO `bill` VALUES (248, '明常市政', '朱传录', '袁志伟', '奇瑞挖机', '2019-07-02', '1', '1', 1144, 183, 6.25);
INSERT INTO `bill` VALUES (249, '明常市政', '朱传录', '汪得乐', '柳工挖机', '2019-07-02', '1', '1', 1706, 273, 6.25);
INSERT INTO `bill` VALUES (250, '明常市政', '朱传录', '方润波', '日立1号', '2019-07-02', '1', '1', 1475, 236, 6.25);
INSERT INTO `bill` VALUES (251, '明常市政', '朱传录', '陈茂平', '日立3号', '2019-07-02', '1', '1', 1575, 252, 6.25);
INSERT INTO `bill` VALUES (252, '明常市政', '朱传录', '夏其喜', '小挖机', '2019-07-02', '1', '1', 519, 83, 6.25);
INSERT INTO `bill` VALUES (253, '明常市政', '朱传录', '肖国平', '吊车', '2019-06-30', '1', '1', 1027, 167, 6.15);
INSERT INTO `bill` VALUES (254, '白沙三路', '朱传录', '陈红山/李辉', '正铲', '2019-07-02', '1', '1', 1335, 217, 6.15);
INSERT INTO `bill` VALUES (255, '白沙三路', '朱传录', '陈红山/李辉', '现代挖机', '2019-07-02', '1', '1', 1242, 202, 6.15);
INSERT INTO `bill` VALUES (256, '白沙三路', '朱传录', '陈红山/李辉', '压路机', '2019-06-28', '1', '1', 627, 102, 6.15);
INSERT INTO `bill` VALUES (257, '白沙三路', '朱传录', '陈红山/李辉', '小挖机', '2019-06-28', '1', '1', 277, 45, 6.15);
INSERT INTO `bill` VALUES (258, '白沙三路', '朱传录', '陈红山/李辉', '正铲', '2019-06-28', '1', '1', 430, 70, 6.15);
INSERT INTO `bill` VALUES (259, '白沙三路', '朱传录', '陈红山/李辉', '现代挖机', '2019-06-28', '1', '1', 1470, 239, 6.15);
INSERT INTO `bill` VALUES (260, '明常市政', '朱传录', '方润波', '日立1号', '2019-06-15', '1', '1', 1269, 203, 6.25);
INSERT INTO `bill` VALUES (261, '黄家湖', '朱传录', '乐朋', '日立210', '2019-07-10', '1', '1', 2050, 328, 6.25);
INSERT INTO `bill` VALUES (262, '黄家湖', '朱传录', '方润波', '日立1号', '2019-07-10', '1', '1', 987, 158, 6.25);
INSERT INTO `bill` VALUES (263, '黄家湖', '朱传录', '方润波', '日立1号', '2019-07-06', '1', '1', 1900, 309, 6.15);
INSERT INTO `bill` VALUES (264, '白沙三路', '朱传录', '陈红山', '新铲车', '2019-07-06', '1', '1', 584, 95, 6.15);
INSERT INTO `bill` VALUES (265, '白沙三路', '朱传录', '陈红山', '铲车', '2019-07-06', '1', '1', 553, 90, 6.15);
INSERT INTO `bill` VALUES (266, '白沙三路', '朱传录', '陈红山', '小挖机', '2019-07-06', '1', '1', 498, 81, 6.15);
INSERT INTO `bill` VALUES (267, '白沙三路', '朱传录', '陈红山', '现代挖机', '2019-07-06', '1', '1', 1722, 280, 6.15);
INSERT INTO `bill` VALUES (268, '白沙三路', '朱传录', '陈红山/李辉', '挖机', '2019-07-08', '1', '1', 1740, 283, 6.15);
INSERT INTO `bill` VALUES (269, '白沙三路', '朱传录', '陈红山/李辉', '铲车', '2019-07-08', '1', '1', 646, 105, 6.15);
INSERT INTO `bill` VALUES (270, '白沙三路', '朱传录', '陈红山/李辉', '新铲车', '2019-07-08', '1', '1', 553, 90, 6.15);
INSERT INTO `bill` VALUES (271, '白沙三路', '朱传录', '陈红山/李辉/杨', '小挖机', '2019-07-08', '1', '1', 326, 53, 6.15);
INSERT INTO `bill` VALUES (272, '黄家湖', '朱传录', '方润波', '日立1号', '2019-07-08', '1', '1', 1476, 240, 6.15);
INSERT INTO `bill` VALUES (273, '黄家湖', '朱传录', '乐朋', '日立210', '2019-07-08', '1', '1', 799, 130, 6.15);
INSERT INTO `bill` VALUES (274, '黄家湖', '朱传录', '明华', '微挖', '2019-07-08', '1', '1', 184, 30, 6.15);
INSERT INTO `bill` VALUES (275, '白沙三路', '朱传录', '陈红山', '现代挖机', '2019-07-04', '1', '1', 1150, 187, 6.15);
INSERT INTO `bill` VALUES (276, '白沙三路', '朱传录', '陈红山', '新铲车', '2019-07-04', '1', '1', 646, 105, 6.15);
INSERT INTO `bill` VALUES (277, '白沙三路', '朱传录', '陈红山', '铲车', '2019-07-04', '1', '1', 695, 113, 6.15);
INSERT INTO `bill` VALUES (278, '明常市政', '朱传录', '乐朋', '日立210', '2019-07-04', '1', '1', 1384, 225, 6.15);
INSERT INTO `bill` VALUES (279, '明常市政', '朱传录', '盛晓虎', '斗三船挖14号', '2019-07-04', '1', '1', 2681, 436, 6.15);

SET FOREIGN_KEY_CHECKS = 1;
