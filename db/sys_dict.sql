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

 Date: 26/06/2019 21:20:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` int(64) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据值',
  `label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签名',
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  `sort` int(10) NOT NULL COMMENT '排序（升序）',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_dict_value`(`value`) USING BTREE,
  INDEX `sys_dict_label`(`label`) USING BTREE,
  INDEX `sys_dict_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1, '9', '异常', 'log_type', '日志异常', 1, '2018-07-09 06:16:14', '2018-11-24 07:25:11', '日志异常', '0');
INSERT INTO `sys_dict` VALUES (2, '0', '正常', 'log_type', '正常', 0, '2018-07-09 06:15:40', '2018-11-24 07:25:14', '正常', '0');
INSERT INTO `sys_dict` VALUES (3, '1', '出油', 'y_type', '进出类型', 0, NULL, NULL, '1', '0');
INSERT INTO `sys_dict` VALUES (4, '0', '进油', 'y_type', '下拉框', 0, NULL, NULL, '0', '0');
INSERT INTO `sys_dict` VALUES (5, '1', '未结算', 'm_type', '金额结算状态', 0, NULL, NULL, '0', '0');
INSERT INTO `sys_dict` VALUES (6, '0', '已结算', 'm_type', '金额结算状态', 0, NULL, NULL, '0', '0');
INSERT INTO `sys_dict` VALUES (7, '明常市政', '明常市政', 'gs', '明常市政', 0, NULL, NULL, '', '0');
INSERT INTO `sys_dict` VALUES (8, '白沙三路', '白沙三路', 'gs', '白沙三路', 0, NULL, NULL, '', '0');
INSERT INTO `sys_dict` VALUES (9, '朱传录', '朱传录', 'kpr', '朱传录', 0, NULL, NULL, '', '0');
INSERT INTO `sys_dict` VALUES (10, '朱正新', '朱正新', 'kpr', '朱正新', 0, NULL, NULL, '', '0');
INSERT INTO `sys_dict` VALUES (11, '朱传佳', '朱传佳', 'kpr', '朱传佳', 0, NULL, NULL, '朱传佳', '0');
INSERT INTO `sys_dict` VALUES (12, '小何', '小何', 'kpr', '小何', 0, NULL, NULL, '', '0');
INSERT INTO `sys_dict` VALUES (13, '送油小何', '送油小何', 'gs', '送油小何', 0, NULL, NULL, '', '0');
INSERT INTO `sys_dict` VALUES (14, '6.25', '6.25', 'dj', '6.25', 0, NULL, NULL, '', '0');
INSERT INTO `sys_dict` VALUES (15, '6.6', '6.6', 'dj', '6.6', 0, NULL, NULL, '', '0');
INSERT INTO `sys_dict` VALUES (16, '6', '6', 'dj', '6', 0, NULL, NULL, '', '0');
INSERT INTO `sys_dict` VALUES (17, '6.15', '6.15', 'dj', '6.15', 0, NULL, NULL, '', '0');
INSERT INTO `sys_dict` VALUES (18, '6.3', '6.3', 'dj', '6.3', 0, NULL, NULL, '', '0');
INSERT INTO `sys_dict` VALUES (19, '6.2', '6.2', 'dj', '6.2', 0, NULL, NULL, '', '0');
INSERT INTO `sys_dict` VALUES (20, '黄家湖', '黄家湖', 'gs', '黄家湖', 0, NULL, NULL, '', '0');

SET FOREIGN_KEY_CHECKS = 1;
