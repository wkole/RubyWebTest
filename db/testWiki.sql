/*
Navicat MySQL Data Transfer

Source Server         : local_mysql
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : testWiki

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2017-03-30 13:44:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ar_internal_metadata
-- ----------------------------
DROP TABLE IF EXISTS `ar_internal_metadata`;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ar_internal_metadata
-- ----------------------------
INSERT INTO `ar_internal_metadata` VALUES ('environment', 'development', '2017-03-28 15:33:45', '2017-03-28 15:33:45');

-- ----------------------------
-- Table structure for schema_migrations
-- ----------------------------
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schema_migrations
-- ----------------------------
INSERT INTO `schema_migrations` VALUES ('20170328152650');
INSERT INTO `schema_migrations` VALUES ('20170328153211');
INSERT INTO `schema_migrations` VALUES ('20170329023632');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'fuquan', '$2a$10$38JPXRNMI3vGVMdvqgdYp.sdjZEV5Rh0CXRtSfRj4imy0TuFOfTd6', '2017-03-29 02:57:32', '2017-03-29 02:57:32');
INSERT INTO `users` VALUES ('2', 'fu', '$2a$10$W18iXe/t.von9nrqVl352OsQfJ8gULsOwMiKsBBHE.IFVWMk1sre.', '2017-03-29 03:37:25', '2017-03-29 03:37:25');
INSERT INTO `users` VALUES ('3', '123', '$2a$10$F71hSNmqx8m7mRc/1ZBGnOD4z18.YtumRfL3vqrOJfCy8MLcThueS', '2017-03-29 03:41:01', '2017-03-29 03:41:01');
INSERT INTO `users` VALUES ('4', '付全', '$2a$10$P4MQk2Z5Y3z4hfEOQJGHju4UnXR9Pj3PRLgDrnGwOK.Wdd3xOobYC', '2017-03-29 06:00:48', '2017-03-29 06:00:48');
INSERT INTO `users` VALUES ('5', 'dd', '$2a$10$f.Yoo6tlrZqOo9/wlaaxbuydzQ9OYZi9zXwNQngNhBC/nrbLxfVE.', '2017-03-29 06:51:49', '2017-03-29 06:51:49');
INSERT INTO `users` VALUES ('6', 'fffffssf', '$2a$10$YjClYtjy4Mp0ngRoYhEAFOGsFZ02zjW9nltYpbu.YRfPWS7kIOOgy', '2017-03-29 07:01:59', '2017-03-29 07:01:59');
INSERT INTO `users` VALUES ('7', 'dd', '$2a$10$zJ94ttljdqP5mdeciEn6gel7UKPg5DHqqP.SbyYLKdg6EIGqS/I.G', '2017-03-29 07:14:17', '2017-03-29 07:14:17');
INSERT INTO `users` VALUES ('8', 'dw', '$2a$10$bkVuwpG8S1eN6Hqy9MosQOcWAX7cQssa0mIPg9ld4tUY6CyIzkNM2', '2017-03-29 07:46:43', '2017-03-29 07:46:43');
INSERT INTO `users` VALUES ('9', 'dd', '$2a$10$PNRE2UBPemhUwyWA7kkTLu8XUjSZd5m8sx8CBAWuSEy0slK188dQC', '2017-03-29 07:47:23', '2017-03-29 07:47:23');
INSERT INTO `users` VALUES ('10', 'fuquan123', '$2a$10$DEXuRdFpeIyGbAytq87BpetPZ8otoLR7VEUn3yo9iqGsQK8HUiTFi', '2017-03-29 09:20:25', '2017-03-29 09:20:25');

-- ----------------------------
-- Table structure for wikis
-- ----------------------------
DROP TABLE IF EXISTS `wikis`;
CREATE TABLE `wikis` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) DEFAULT NULL,
  `info` text,
  `title` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wikis
-- ----------------------------
INSERT INTO `wikis` VALUES ('2', 'dq', 'qfw', 'wqf', 'fw', '2017-03-28 15:38:50', '2017-03-28 15:38:50');
INSERT INTO `wikis` VALUES ('4', 'wdq', 'qwd', 'wdq', 'wdq', '2017-03-29 07:46:34', '2017-03-29 07:46:34');
INSERT INTO `wikis` VALUES ('5', 'fuquan122', 'ddfea11111', 'wfea11', 'fuquan', '2017-03-29 09:53:19', '2017-03-30 05:38:22');
INSERT INTO `wikis` VALUES ('6', 'dwf', 'qdw', 'qd', 'dd', '2017-03-29 10:54:15', '2017-03-29 10:54:15');
INSERT INTO `wikis` VALUES ('8', 'qdw', 'qdw', 'dq', 'qd', '2017-03-29 10:54:49', '2017-03-29 10:54:49');
INSERT INTO `wikis` VALUES ('9', 'w安抚', '无法答复`', '的', 'dd', '2017-03-29 11:09:40', '2017-03-29 11:09:40');
INSERT INTO `wikis` VALUES ('10', 'fuquan', 'd', 'sda', 'fuquan', '2017-03-30 03:16:41', '2017-03-30 03:16:41');
INSERT INTO `wikis` VALUES ('11', 'fuqu', 'df', 'ff', 'fuquan', '2017-03-30 05:37:11', '2017-03-30 05:37:11');
