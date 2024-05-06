/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : manager

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 15/04/2024 21:56:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin', '管理员', 'http://localhost:9090/files/1713092633046-喵.jpg', 'ADMIN', '13666146201', 'admin@qq.com');
INSERT INTO `admin` VALUES (2, 'boos', '123', '梁晟', 'http://localhost:9090/files/1713187401930-touxiang.jpg', 'ADMIN', '13198289959', 'boos@qq.com');

-- ----------------------------
-- Table structure for disk_files
-- ----------------------------
DROP TABLE IF EXISTS `disk_files`;
CREATE TABLE `disk_files`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件名称',
  `folder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否文件夹',
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件路径',
  `user_id` int NULL DEFAULT NULL COMMENT '创建人ID',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件类型',
  `size` double(10, 3) NULL DEFAULT NULL COMMENT '文件大小',
  `crate_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '修改时间',
  `folder_id` int NULL DEFAULT NULL COMMENT '所属文件夹ID',
  `root_folder_id` int NULL DEFAULT NULL COMMENT '最外层文件夹ID',
  `delete` tinyint(1) NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '网盘文件' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of disk_files
-- ----------------------------
INSERT INTO `disk_files` VALUES (1, '测试文件3', '是', NULL, 4, 'folder', NULL, '2024-4-1', '2024-4-10', NULL, NULL, 0);
INSERT INTO `disk_files` VALUES (2, '测1', '是', NULL, 2, 'folder', NULL, '2024-4-1', '2024-4-10', NULL, NULL, 0);
INSERT INTO `disk_files` VALUES (4, '10.jpg', '否', 'http://localhost:9090/diskFiles/download/1712892471015-10.jpg', 2, 'jpg', 3072.442, '2024-04-12 11:27:50', '2024-04-12 11:27:50', NULL, NULL, 0);
INSERT INTO `disk_files` VALUES (5, '123.jpeg', '否', 'http://localhost:9090/diskFiles/download/1712893196183-123.jpeg', 2, 'jpeg', 239.572, '2024-04-12 11:39:56', '2024-04-12 11:39:56', 2, 2, 0);
INSERT INTO `disk_files` VALUES (8, '1111', '是', NULL, 2, 'folder', NULL, '2024-04-12 15:45:27', '2024-04-12 15:45:27', NULL, 8, 0);
INSERT INTO `disk_files` VALUES (9, '111222', '是', NULL, 2, 'folder', NULL, '2024-04-12 15:45:34', '2024-04-12 15:45:34', NULL, 9, 0);
INSERT INTO `disk_files` VALUES (10, '111', '是', NULL, 2, 'folder', NULL, '2024-04-12 15:46:06', '2024-04-12 15:46:06', NULL, 10, 0);
INSERT INTO `disk_files` VALUES (11, '111333444', '是', NULL, 2, 'folder', NULL, '2024-04-12 15:50:37', '2024-04-12 15:50:37', NULL, NULL, 0);
INSERT INTO `disk_files` VALUES (84, '666的儿子', '是', NULL, 2, 'folder', NULL, '2024-04-13 14:40:33', '2024-04-13 14:40:33', 83, 83, 1);
INSERT INTO `disk_files` VALUES (85, '666的小儿子', '是', NULL, 2, 'folder', NULL, '2024-04-13 14:47:11', '2024-04-13 14:47:11', 84, 83, 1);
INSERT INTO `disk_files` VALUES (86, 'iFlyCode-IDEA-2.1.0.zip', '否', 'http://localhost:9090/diskFiles/download/1712997244611-iFlyCode-IDEA-2.1.0.zip', 2, 'zip', 19382.308, '2024-04-13 16:34:04', '2024-04-13 16:34:04', NULL, NULL, 0);
INSERT INTO `disk_files` VALUES (87, '17356FD6503AA6425AE0F3B1CDC30A57.png', '否', 'http://localhost:9090/diskFiles/download/1713007396629-17356FD6503AA6425AE0F3B1CDC30A57.png', 2, 'png', 74.378, '2024-04-13 19:23:16', '2024-04-13 19:23:16', 84, 83, 1);
INSERT INTO `disk_files` VALUES (91, '第2章 网络隐身.pptx', '否', 'http://localhost:9090/diskFiles/download/1713015992199-第2章 网络隐身.pptx', 2, 'pptx', 4208.831, '2024-04-13 21:46:32', '2024-04-13 21:46:32', NULL, NULL, 0);
INSERT INTO `disk_files` VALUES (92, '第2章.pdf', '否', 'http://localhost:9090/diskFiles/download/1713016159299-第2章.pdf', 2, 'pdf', 761.836, '2024-04-13 21:49:19', '2024-04-13 21:49:19', NULL, NULL, 1);
INSERT INTO `disk_files` VALUES (93, 'lzp文件夹', '是', NULL, 2, 'folder', NULL, '2024-04-13 21:49:36', '2024-04-13 21:49:36', NULL, 93, 0);
INSERT INTO `disk_files` VALUES (94, '10-1.奇安信上网行为管理基础.pdf', '否', 'http://localhost:9090/diskFiles/download/1713016247768-10-1.奇安信上网行为管理基础.pdf', 2, 'pdf', 3167.903, '2024-04-13 21:50:47', '2024-04-13 21:50:47', 93, 93, 0);
INSERT INTO `disk_files` VALUES (95, '10-2.奇安信上网行为管理行为分析技术.pdf', '否', 'http://localhost:9090/diskFiles/download/1713016251723-10-2.奇安信上网行为管理行为分析技术.pdf', 2, 'pdf', 3254.573, '2024-04-13 21:50:51', '2024-04-13 21:50:51', 93, 93, 0);
INSERT INTO `disk_files` VALUES (96, 'wallhaven-k7lxxq.jpg', '否', 'http://localhost:9090/diskFiles/download/1713016262051-wallhaven-k7lxxq.jpg', 2, 'jpg', 1011.878, '2024-04-13 21:51:02', '2024-04-13 21:51:02', 93, 93, 0);
INSERT INTO `disk_files` VALUES (97, '李庄.mp4', '否', 'http://localhost:9090/diskFiles/download/1713055087688-李庄.mp4', 2, 'mp4', 2754.504, '2024-04-14 08:38:07', '2024-04-14 08:38:07', NULL, NULL, 0);
INSERT INTO `disk_files` VALUES (98, '01-1.新系统初始化.txt', '否', 'http://localhost:9090/diskFiles/download/1713055875930-01-1.新系统初始化.txt', 2, 'txt', 3.683, '2024-04-14 08:51:15', '2024-04-14 08:51:15', NULL, NULL, 0);
INSERT INTO `disk_files` VALUES (99, '01-1.新系统初始化.txt', '否', 'http://localhost:9090/diskFiles/download/1713056304377-01-1.新系统初始化.txt', 2, 'txt', 3.683, '2024-04-14 08:58:24', '2024-04-14 08:58:24', 93, 93, 0);
INSERT INTO `disk_files` VALUES (100, '李庄.mp4-拷贝', '否', 'http://localhost:9090/diskFiles/download/1713055087688-李庄.mp4', 2, 'mp4', 2754.504, '2024-04-14 09:34:54', '2024-04-14 09:34:54', NULL, NULL, 0);
INSERT INTO `disk_files` VALUES (101, '05.网络通信协议.ppt', '否', 'http://localhost:9090/diskFiles/download/1713058710288-05.网络通信协议.ppt', 2, 'ppt', 532.378, '2024-04-14 09:38:30', '2024-04-14 09:38:30', NULL, NULL, 0);
INSERT INTO `disk_files` VALUES (102, 'index.html', '否', 'http://localhost:9090/diskFiles/download/1713058757232-index.html', 2, 'html', 55.950, '2024-04-14 09:39:17', '2024-04-14 09:39:17', NULL, NULL, 0);
INSERT INTO `disk_files` VALUES (103, 'liangzhip文件夹-拷贝', '是', NULL, 2, 'folder', NULL, '2024-04-14 09:40:45', '2024-04-14 09:40:45', NULL, 93, 0);
INSERT INTO `disk_files` VALUES (104, '10-1.奇安信上网行为管理基础.pdf-拷贝', '否', 'http://localhost:9090/diskFiles/download/1713016247768-10-1.奇安信上网行为管理基础.pdf', 2, 'pdf', 3167.903, '2024-04-14 09:40:45', '2024-04-14 09:40:45', 103, 93, 0);
INSERT INTO `disk_files` VALUES (105, '10-2.奇安信上网行为管理行为分析技术.pdf-拷贝', '否', 'http://localhost:9090/diskFiles/download/1713016251723-10-2.奇安信上网行为管理行为分析技术.pdf', 2, 'pdf', 3254.573, '2024-04-14 09:40:45', '2024-04-14 09:40:45', 103, 93, 0);
INSERT INTO `disk_files` VALUES (106, 'wallhaven-k7lxxq.jpg-拷贝', '否', 'http://localhost:9090/diskFiles/download/1713016262051-wallhaven-k7lxxq.jpg', 2, 'jpg', 1011.878, '2024-04-14 09:40:45', '2024-04-14 09:40:45', 103, 93, 0);
INSERT INTO `disk_files` VALUES (107, '01-1.新系统初始化.txt-拷贝', '否', 'http://localhost:9090/diskFiles/download/1713056304377-01-1.新系统初始化.txt', 2, 'txt', 3.683, '2024-04-14 09:40:45', '2024-04-14 09:40:45', 103, 93, 0);
INSERT INTO `disk_files` VALUES (108, '我独自升级.mp4', '否', 'http://localhost:9090/diskFiles/download/1713096606656-我独自升级.mp4', 2, 'mp4', 6659.129, '2024-04-14 20:10:06', '2024-04-14 20:10:06', NULL, NULL, 0);
INSERT INTO `disk_files` VALUES (109, '我独自升级-拷贝.mp4', '否', 'http://localhost:9090/diskFiles/download/1713096606656-我独自升级.mp4', 2, 'mp4', 6659.129, '2024-04-15 18:56:11', '2024-04-15 18:56:11', NULL, NULL, 0);
INSERT INTO `disk_files` VALUES (110, 'liangzhip文件夹-拷贝-拷贝', '是', NULL, 2, 'folder', NULL, '2024-04-15 18:56:44', '2024-04-15 18:56:44', NULL, 93, 0);
INSERT INTO `disk_files` VALUES (111, '10-1.奇安信上网行为管理基础-拷贝.pdf-拷贝', '否', 'http://localhost:9090/diskFiles/download/1713016247768-10-1.奇安信上网行为管理基础.pdf', 2, 'pdf', 3167.903, '2024-04-15 18:56:44', '2024-04-15 18:56:44', 110, 93, 0);
INSERT INTO `disk_files` VALUES (112, '10-2.奇安信上网行为管理行为分析技术-拷贝.pdf-拷贝', '否', 'http://localhost:9090/diskFiles/download/1713016251723-10-2.奇安信上网行为管理行为分析技术.pdf', 2, 'pdf', 3254.573, '2024-04-15 18:56:44', '2024-04-15 18:56:44', 110, 93, 0);
INSERT INTO `disk_files` VALUES (113, 'wallhaven-k7lxxq-拷贝.jpg-拷贝', '否', 'http://localhost:9090/diskFiles/download/1713016262051-wallhaven-k7lxxq.jpg', 2, 'jpg', 1011.878, '2024-04-15 18:56:44', '2024-04-15 18:56:44', 110, 93, 0);
INSERT INTO `disk_files` VALUES (114, '01-1.新系统初始化-拷贝.txt-拷贝', '否', 'http://localhost:9090/diskFiles/download/1713056304377-01-1.新系统初始化.txt', 2, 'txt', 3.683, '2024-04-15 18:56:44', '2024-04-15 18:56:44', 110, 93, 0);
INSERT INTO `disk_files` VALUES (115, 'beyondcomparev4.4.1.zip', '否', 'http://localhost:9090/diskFiles/download/1713187100820-beyondcomparev4.4.1.zip', 4, 'zip', 14328.873, '2024-04-15 21:18:20', '2024-04-15 21:18:20', NULL, NULL, 0);
INSERT INTO `disk_files` VALUES (116, '我独自升级.mp4', '否', 'http://localhost:9090/diskFiles/download/1713187125397-我独自升级.mp4', 4, 'mp4', 6659.129, '2024-04-15 21:18:45', '2024-04-15 21:18:45', NULL, NULL, 0);
INSERT INTO `disk_files` VALUES (117, 'aaa', '是', NULL, 4, 'folder', NULL, '2024-04-15 21:18:55', '2024-04-15 21:18:55', NULL, 117, 0);
INSERT INTO `disk_files` VALUES (118, 'aaa1', '是', NULL, 4, 'folder', NULL, '2024-04-15 21:19:00', '2024-04-15 21:19:00', 117, 117, 0);
INSERT INTO `disk_files` VALUES (119, 'aaa-拷贝', '是', NULL, 4, 'folder', NULL, '2024-04-15 21:19:04', '2024-04-15 21:19:04', NULL, 117, 0);
INSERT INTO `disk_files` VALUES (120, 'aaa1-拷贝', '是', NULL, 4, 'folder', NULL, '2024-04-15 21:19:04', '2024-04-15 21:19:04', 119, 117, 0);
INSERT INTO `disk_files` VALUES (121, 'aaa-拷贝-拷贝', '是', NULL, 4, 'folder', NULL, '2024-04-15 21:19:05', '2024-04-15 21:19:05', NULL, 117, 1);
INSERT INTO `disk_files` VALUES (122, 'aaa1-拷贝-拷贝', '是', NULL, 4, 'folder', NULL, '2024-04-15 21:19:05', '2024-04-15 21:19:05', 121, 117, 1);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '首测', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容', '2024-4-9', 'admin');
INSERT INTO `notice` VALUES (2, '内测', '系统内测阶段', '2024-4-9', 'admin');
INSERT INTO `notice` VALUES (3, '上线', '系统已上线，欢迎使用', '2024-4-9', 'admin');

-- ----------------------------
-- Table structure for share
-- ----------------------------
DROP TABLE IF EXISTS `share`;
CREATE TABLE `share`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `file_id` int NULL DEFAULT NULL COMMENT '文件ID',
  `share_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分享时间',
  `end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '到期时间',
  `count` int NULL DEFAULT 0 COMMENT '访问次数',
  `user_id` int NULL DEFAULT NULL COMMENT '分享人ID',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '验证码',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of share
-- ----------------------------
INSERT INTO `share` VALUES (3, 'lzp文件夹-拷贝', 103, '2024-04-14 10:33:18', '2024-04-17 10:33:18', 0, 2, '1779337112349945856', NULL);
INSERT INTO `share` VALUES (4, 'lzp文件夹-拷贝', 103, '2024-04-14 10:33:19', '2024-04-17 10:33:19', 0, 2, '1779337114983968768', NULL);
INSERT INTO `share` VALUES (5, 'lzp文件夹-拷贝', 103, '2024-04-14 10:33:19', '2024-04-17 10:33:19', 0, 2, '1779337115768303616', NULL);
INSERT INTO `share` VALUES (6, 'lzp文件夹-拷贝', 103, '2024-04-14 10:33:24', '2024-04-17 10:33:24', 0, 2, '1779337128254746624', NULL);
INSERT INTO `share` VALUES (7, 'lzp文件夹-拷贝', 103, '2024-04-14 10:43:27', '2024-04-17 10:43:27', 0, 2, '1779339662872563712', NULL);
INSERT INTO `share` VALUES (8, 'lzp文件夹-拷贝', 103, '2024-04-14 10:43:28', '2024-04-17 10:43:28', 0, 2, '1779339668966887424', NULL);
INSERT INTO `share` VALUES (9, 'lzp文件夹-拷贝', 103, '2024-04-14 10:43:41', '2024-04-17 10:43:41', 0, 2, '1779339715934703616', NULL);
INSERT INTO `share` VALUES (10, 'lzp文件夹-拷贝', 103, '2024-04-14 11:11:58', '2024-04-17 11:11:58', 0, 2, '1779346834276765696', NULL);
INSERT INTO `share` VALUES (12, 'lzp文件夹-拷贝', 103, '2024-04-14 12:51:21', '2024-04-17 12:51:21', 0, 2, '1779371850548666368', NULL);
INSERT INTO `share` VALUES (13, '01-1.新系统初始化.txt', 98, '2024-04-14 12:56:36', '2024-04-17 12:56:36', 0, 2, '1779373166259888128', NULL);
INSERT INTO `share` VALUES (14, '01-1.新系统初始化.txt', 98, '2024-04-14 13:11:38', '2024-04-14 13:11:38', 0, 2, '1779376954916044800', NULL);
INSERT INTO `share` VALUES (16, '我独自升级.mp4', 108, '2024-04-15 16:00:00', '2024-04-16 8:00:00', 0, 2, '1779790480746745856', 'mp4');
INSERT INTO `share` VALUES (18, '123.jpeg', 5, '2024-04-15 21:13:22', '2024-04-15 23:13:22', 6, 2, '1779860576311758848', 'jpeg');
INSERT INTO `share` VALUES (19, 'beyondcomparev4.4.1.zip', 115, '2024-04-15 21:19:25', '2024-05-15 21:19:25', 1, 4, '1779862090149318656', 'zip');

-- ----------------------------
-- Table structure for trash
-- ----------------------------
DROP TABLE IF EXISTS `trash`;
CREATE TABLE `trash`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `file_id` int NULL DEFAULT NULL COMMENT '文件ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件名称',
  `size` double NULL DEFAULT NULL COMMENT '文件大小',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '删除时间',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '回收站' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of trash
-- ----------------------------
INSERT INTO `trash` VALUES (33, 92, '第2章.pdf', 761.836, '2024-04-14 08:37:38', 2);
INSERT INTO `trash` VALUES (34, 121, 'aaa-拷贝-拷贝', NULL, '2024-04-15 21:19:16', 4);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '普通用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, 'lzp', '111', '梁志鹏', 'http://localhost:9090/files/1713092604718-123.jpeg', 'USER', '13666146201', '2691212702@qq.com');
INSERT INTO `user` VALUES (4, 'aaa', '123', 'aaa', 'http://localhost:9090/files/1713187071832-17356FD6503AA6425AE0F3B1CDC30A57.png', 'USER', '10086', NULL);

SET FOREIGN_KEY_CHECKS = 1;
