/*
 Navicat Premium Data Transfer

 Source Server         : enb2
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : 192.168.31.50:3306
 Source Schema         : mytestdb

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 21/06/2021 20:11:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for measure
-- ----------------------------
DROP TABLE IF EXISTS `measure`;
CREATE TABLE `measure`  (
  `srcIP` bigint(20) NOT NULL,
  `dstIP` bigint(20) NOT NULL,
  `srcPort` smallint(6) UNSIGNED NOT NULL,
  `dstPort` smallint(6) UNSIGNED NOT NULL,
  `protocol` tinyint(4) UNSIGNED NOT NULL,
  `averBytes` double(20, 1) NULL DEFAULT NULL,
  `averPkts` double(20, 1) NULL DEFAULT NULL,
  `flowType` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`srcIP`, `dstIP`, `srcPort`, `dstPort`, `protocol`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of measure
-- ----------------------------
INSERT INTO `measure` VALUES (167772418, 167772417, 40000, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40001, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40002, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40003, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40004, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40005, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40006, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40007, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40008, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40009, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40010, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40011, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40012, 11111, 6, 21470.0, 14.4, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40013, 11111, 6, 29806.0, 20.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40014, 11111, 6, 25293.2, 17.4, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40100, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40101, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40102, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40103, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40104, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40105, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40106, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40107, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40108, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40109, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40110, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40111, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40112, 11111, 6, 26057.2, 17.6, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40113, 11111, 6, 29806.0, 20.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40114, 11111, 6, 22774.0, 15.6, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40200, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40201, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40202, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40203, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40204, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40205, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40206, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40207, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40208, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40209, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40210, 11111, 6, 0.0, 0.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40211, 11111, 6, 5097.6, 3.4, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40212, 11111, 6, 29518.4, 20.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40213, 11111, 6, 29806.0, 20.0, NULL);
INSERT INTO `measure` VALUES (167772418, 167772417, 40214, 11111, 6, 24412.8, 16.8, NULL);

SET FOREIGN_KEY_CHECKS = 1;
