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

 Date: 19/06/2019 21:50:18
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
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO `bill` VALUES (1, '明常市政', '朱正新', '刘先生', '57T1x', '2019-06-18', '1', '1', 1000, 200, 5.50);
INSERT INTO `bill` VALUES (8, '明常市政', '朱传录', '盛大虎', '株友船挖', '2019-06-13', '1', '1', 18427, 2792, 6.60);
INSERT INTO `bill` VALUES (9, '明常市政', '朱传录', '盛大虎', '株友船挖', '2019-06-13', '1', '1', 3094, 495, 6.25);
INSERT INTO `bill` VALUES (10, '明常市政', '朱传录', '杜红海', '株友挖机', '2019-06-13', '1', '1', 25285, 3831, 6.60);
INSERT INTO `bill` VALUES (11, '明常市政', '朱传录', '杜红海', '株友挖机', '2019-06-13', '1', '1', 1756, 281, 6.25);
INSERT INTO `bill` VALUES (12, '明常市政', '朱传录', '李顺', '神刚4号', '2019-06-13', '1', '1', 8765, 1328, 6.60);
INSERT INTO `bill` VALUES (13, '明常市政', '朱传录', '李顺', '神刚4号', '2019-06-13', '1', '1', 1719, 275, 6.25);
INSERT INTO `bill` VALUES (14, '明常市政', '朱传录', '陈帆', '徐工船挖', '2019-06-11', '1', '1', 17101, 2591, 6.60);
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
INSERT INTO `bill` VALUES (27, '明常市政', '朱传录', '彭为红', '斗三船挖', '2019-06-16', '1', '1', 3425, 548, 6.25);
INSERT INTO `bill` VALUES (28, '明常市政', '朱传录', '袁志伟', '奇瑞挖机', '2019-06-11', '1', '1', 11009, 1668, 6.60);
INSERT INTO `bill` VALUES (29, '明常市政', '朱传录', '吴俊', '加腾2号', '2019-06-09', '1', '1', 17774, 2693, 6.60);
INSERT INTO `bill` VALUES (30, '明常市政', '朱传录', '应勇', '加腾1号', '2019-06-13', '1', '1', 19562, 2964, 6.60);
INSERT INTO `bill` VALUES (31, '明常市政', '朱传录', '应勇', '加腾1号', '2019-06-13', '1', '1', 1594, 255, 6.25);
INSERT INTO `bill` VALUES (32, '明常市政', '朱传录', '石强', '日立2号', '2019-06-11', '1', '1', 33568, 5086, 6.60);
INSERT INTO `bill` VALUES (33, '明常市政', '朱传录', '李红红', '徐工船挖29号', '2019-06-11', '1', '1', 7366, 1116, 6.60);
INSERT INTO `bill` VALUES (34, '明常市政', '朱传录', '梁杰', '神刚3号', '2019-06-11', '1', '1', 11873, 1799, 6.60);
INSERT INTO `bill` VALUES (35, '明常市政', '朱传录', '戴俊', '三一挖机', '2019-06-11', '1', '1', 27172, 4117, 6.60);
INSERT INTO `bill` VALUES (36, '明常市政', '朱传录', '方润波', '日立1号', '2019-06-11', '1', '1', 32241, 4885, 6.60);
INSERT INTO `bill` VALUES (37, '明常市政', '朱传录', '水泵', '水泵', '2019-06-09', '1', '1', 97165, 14722, 6.60);
INSERT INTO `bill` VALUES (38, '明常市政', '朱传录', '周涛', '徐工船挖', '2019-06-11', '1', '1', 16071, 2435, 6.60);
INSERT INTO `bill` VALUES (39, '明常市政', '朱传录', '夏其喜', '日立3号', '2019-06-11', '1', '1', 27476, 4163, 6.60);
INSERT INTO `bill` VALUES (40, '明常市政', '朱传录', '李强', '柳工挖机', '2019-06-11', '1', '1', 34452, 5220, 6.60);
INSERT INTO `bill` VALUES (41, '明常市政', '朱传录', '王猛', '神钢2号', '2019-06-11', '1', '1', 19945, 3022, 6.60);
INSERT INTO `bill` VALUES (42, '明常市政', '朱传录', '王高成', '徐工汗挖', '2019-06-11', '1', '1', 9458, 1433, 6.60);
INSERT INTO `bill` VALUES (43, '明常市政', '朱传录', '张正', '大于船挖', '2019-06-11', '1', '1', 16342, 2476, 6.60);
INSERT INTO `bill` VALUES (44, '明常市政', '朱传录', '鲁腾', '徐工船挖7号', '2019-06-11', '1', '1', 9656, 1463, 6.60);
INSERT INTO `bill` VALUES (45, '明常市政', '朱传录', '陈威', '徐工船挖', '2019-06-11', '1', '1', 16434, 2490, 6.60);
INSERT INTO `bill` VALUES (46, '明常市政', '朱传录', '范伟李程', '新三一船挖', '2019-06-11', '1', '1', 16771, 2541, 6.60);
INSERT INTO `bill` VALUES (47, '明常市政', '朱传录', '夏小兵', '小挖', '2019-05-13', '1', '1', 3386, 513, 6.60);
INSERT INTO `bill` VALUES (48, '明常市政', '朱传录', '张岩', '徐工船挖', '2019-06-11', '1', '1', 14975, 2269, 6.60);
INSERT INTO `bill` VALUES (49, '明常市政', '朱传录', '黄自兵', '神刚6号', '2019-06-11', '1', '1', 4455, 675, 6.60);
INSERT INTO `bill` VALUES (50, '明常市政', '朱传录', '盛晓虎', '徐工船挖', '2019-06-11', '1', '1', 12309, 1865, 6.60);
INSERT INTO `bill` VALUES (51, '明常市政', '朱传录', '占显峰', '神刚5号', '2019-06-11', '1', '1', 9055, 1372, 6.60);
INSERT INTO `bill` VALUES (52, '明常市政', '朱传录', '乔志刚', '三一船挖21号', '2019-06-11', '1', '1', 13167, 1995, 6.60);

SET FOREIGN_KEY_CHECKS = 1;
