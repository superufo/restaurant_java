/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : restraurant

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-07-10 15:38:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `address_id` varchar(32) NOT NULL,
  `uid` varchar(32) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `detail` varchar(400) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL COMMENT '1 是缺省地址 0 非缺省地址',
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `uid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `salt` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `unique_username` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1e67f167d99c43f897ec6566043ad6ec', 'flyshy', 'c5941c5f3bc693a75e6e863bd2c55ce3', '1', '1ab6d62faa91ae7deec76d6f13ef1600', '0', '2016-12-07 13:24:17', '2017-11-02 09:27:37');
INSERT INTO `admin` VALUES ('ad313d38fe9447ce863fe8584743a010', 'admin', 'c5941c5f3bc693a75e6e863bd2c55ce3', '1', '1ab6d62faa91ae7deec76d6f13ef1600', '1', '2016-12-06 11:16:51', '2017-05-11 13:59:25');
INSERT INTO `admin` VALUES ('f1cd448163d14a5f81a20ccac35d4ecd', 'test001', '69a85b09020c4cadec6f87c1560cd723', '1', '92d525bfbac70d17c547b89a5eb9fa47', '0', '2019-07-08 22:53:24', '2019-07-08 22:53:24');

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role` (
  `admin_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`admin_id`,`role_id`),
  KEY `admin_role_foreign` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES ('1e67f167d99c43f897ec6566043ad6ec', 'cbe8356d64a8433cb5dad5c7fccf8dce');
INSERT INTO `admin_role` VALUES ('f1cd448163d14a5f81a20ccac35d4ecd', 'cbe8356d64a8433cb5dad5c7fccf8dce');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `log_id` varchar(32) NOT NULL,
  `log_user` varchar(32) DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `log_ip` varchar(15) DEFAULT NULL,
  `log_action` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('004086d67a284ed3ac29751c3cc03d56', 'admin', '2019-07-08 22:53:24', '127.0.0.1', '');
INSERT INTO `log` VALUES ('0165d85a678543c9beac5960e2be9a02', 'admin', '2018-06-14 15:54:55', '127.0.0.1', '');
INSERT INTO `log` VALUES ('017ecb106f2b429586c3cd387cd8e243', 'admin', '2019-07-10 08:35:55', '127.0.0.1', '');
INSERT INTO `log` VALUES ('01921bb741694a179d92a76cf9df8dfe', 'admin', '2019-07-10 15:33:44', '127.0.0.1', '');
INSERT INTO `log` VALUES ('02305d9b25214197b9e12bb8f2cd6cc5', 'admin', '2017-11-13 10:47:27', '127.0.0.1', '');
INSERT INTO `log` VALUES ('024021f259444cbfbee7b40a2384d43b', 'admin', '2017-03-09 17:23:54', '127.0.0.1', '');
INSERT INTO `log` VALUES ('027919b2ab1f411f98da6e4446979889', 'admin', '2019-07-10 12:15:13', '127.0.0.1', '');
INSERT INTO `log` VALUES ('027c83db42674536b6ffeb5f511d1600', 'admin', '2019-07-09 20:00:51', '127.0.0.1', '');
INSERT INTO `log` VALUES ('029e43271bfd4d6bac5f744c2531b727', 'admin', '2019-07-10 12:41:27', '127.0.0.1', '');
INSERT INTO `log` VALUES ('0431788d8b4245e7bd8ba998d2e20727', 'admin', '2019-07-10 12:27:33', '127.0.0.1', '');
INSERT INTO `log` VALUES ('0593f2c42d4a4ee7a9f50112a00ef8ea', 'admin', '2019-07-09 23:04:40', '127.0.0.1', '');
INSERT INTO `log` VALUES ('06029742aa1145e88d5fb2f37072de52', 'admin', '2019-07-10 08:41:26', '127.0.0.1', '');
INSERT INTO `log` VALUES ('06297cbd46aa462486b508b6d2f891f4', 'admin', '2019-07-07 20:57:12', '127.0.0.1', '');
INSERT INTO `log` VALUES ('0861b8425af54117b36a7a44bdfdfe60', 'admin', '2019-07-10 11:33:17', '127.0.0.1', '');
INSERT INTO `log` VALUES ('0aca390060e3447189b3cd65785f4d29', 'admin', '2019-07-10 13:27:42', '127.0.0.1', '');
INSERT INTO `log` VALUES ('0b4b051baea24e00b65f158e62d58951', 'admin', '2019-07-10 13:24:24', '127.0.0.1', '');
INSERT INTO `log` VALUES ('0c8aa0c8193f4d3f8cd834856803dc5f', 'admin', '2019-07-10 10:46:40', '127.0.0.1', '');
INSERT INTO `log` VALUES ('0cebcba9480449d18ed0b522a406fa6e', 'admin', '2019-07-09 23:32:49', '127.0.0.1', '');
INSERT INTO `log` VALUES ('0d9f8cc738a449caa195671ce28f84f9', 'admin', '2019-07-10 09:28:01', '127.0.0.1', '');
INSERT INTO `log` VALUES ('0e8190d773674b40a193362788a6ae6f', 'admin', '2019-07-09 18:17:25', '127.0.0.1', '');
INSERT INTO `log` VALUES ('1136a89fd6014d809ef84ef31136d9af', 'admin', '2019-07-08 10:53:52', '127.0.0.1', '');
INSERT INTO `log` VALUES ('137ffed127d54ad59fedb6ff51f16b1a', 'admin', '2019-07-10 09:20:08', '127.0.0.1', '');
INSERT INTO `log` VALUES ('16bedfd67e1c49c6a661c32fe0a3ed34', 'admin', '2019-07-10 12:09:05', '127.0.0.1', '');
INSERT INTO `log` VALUES ('17bd09b23ce94d4a9b9bf96de04ae740', 'admin', '2019-07-10 08:50:26', '127.0.0.1', '');
INSERT INTO `log` VALUES ('190e8082699f4be5a45b03223a46607b', 'admin', '2019-07-10 12:34:07', '127.0.0.1', '');
INSERT INTO `log` VALUES ('19304d5eaeb0452a916b21e4f7054079', 'admin', '2019-07-10 12:38:00', '127.0.0.1', '');
INSERT INTO `log` VALUES ('1b099f3d32cf4cb299ec46b27f34bedb', 'admin', '2019-07-10 12:51:57', '127.0.0.1', '');
INSERT INTO `log` VALUES ('1f454ea831b6458194b0ce88f1240ecc', 'admin', '2019-07-10 13:02:41', '127.0.0.1', '');
INSERT INTO `log` VALUES ('2079766cdfad4f90907c1dd11c37033b', 'admin', '2019-07-09 18:24:55', '127.0.0.1', '');
INSERT INTO `log` VALUES ('212969520e404c27b54b88c98c9f437e', 'admin', '2019-07-10 08:35:55', '127.0.0.1', '');
INSERT INTO `log` VALUES ('2192ceba1480453bbb3efc85a488facc', 'admin', '2019-07-10 12:02:51', '127.0.0.1', '');
INSERT INTO `log` VALUES ('220151c4e5a74094a4acd50f7834d520', 'admin', '2019-07-09 18:17:25', '127.0.0.1', '');
INSERT INTO `log` VALUES ('228a7313878044f082b41af97f988e6b', 'admin', '2019-07-10 10:33:07', '127.0.0.1', '');
INSERT INTO `log` VALUES ('228baa2779ce4383a6a9f3117dec21eb', 'admin', '2019-07-08 10:53:52', '127.0.0.1', '');
INSERT INTO `log` VALUES ('239181fd49e44dd9b1a8c78c24ce27f5', 'admin', '2019-07-10 09:49:07', '127.0.0.1', '');
INSERT INTO `log` VALUES ('243c7867911c4f84b23d15801427ddfd', 'admin', '2019-07-10 08:39:06', '127.0.0.1', '');
INSERT INTO `log` VALUES ('25a9d2c18fc44c8abbbbea3563152cc9', 'admin', '2019-07-10 11:48:52', '127.0.0.1', '');
INSERT INTO `log` VALUES ('2982cfa75b8041cea63c40fd1dfe8583', 'admin', '2019-07-09 18:41:52', '127.0.0.1', '');
INSERT INTO `log` VALUES ('2efbbac36244435fa667f76d20abdfbe', 'admin', '2019-07-10 11:35:10', '127.0.0.1', '');
INSERT INTO `log` VALUES ('30df9f1004fe4a20a4a02d6e816d996a', 'admin', '2019-07-10 09:25:22', '127.0.0.1', '');
INSERT INTO `log` VALUES ('32201a2b7fc94ec1ac0925759bd15794', 'admin', '2019-07-10 11:45:38', '127.0.0.1', '');
INSERT INTO `log` VALUES ('33feac2b69784ad6abc8d2ff1c2f518a', 'admin', '2019-07-08 10:53:52', '127.0.0.1', '');
INSERT INTO `log` VALUES ('37b053969f9c46a8b19ba511a10b24a4', 'admin', '2019-07-10 12:39:41', '127.0.0.1', '');
INSERT INTO `log` VALUES ('37ca4b5150b6493db7a82dd0d6fa8498', 'admin', '2019-07-10 09:39:38', '127.0.0.1', '');
INSERT INTO `log` VALUES ('38a375e91b924f4a9a4c3d9fb36f2d5d', 'admin', '2019-07-09 18:22:12', '127.0.0.1', '');
INSERT INTO `log` VALUES ('3a3510a0390e491fae6c9e6eb9e1674d', 'admin', '2019-07-10 11:43:53', '127.0.0.1', '');
INSERT INTO `log` VALUES ('4011b5c31a9e4840a494624e8c93904d', 'admin', '2019-07-10 10:41:38', '127.0.0.1', '');
INSERT INTO `log` VALUES ('402a8d0cba9d494c923c388038e55d83', 'test001', '2019-07-09 20:43:57', '127.0.0.1', '');
INSERT INTO `log` VALUES ('40e29c94ada940cdb749717f133337d6', 'admin', '2019-07-10 11:52:06', '127.0.0.1', '');
INSERT INTO `log` VALUES ('41b5fddec8bd460699636de9b46a46c9', 'admin', '2019-07-09 22:58:32', '127.0.0.1', '');
INSERT INTO `log` VALUES ('43a723fd2de4415aa98b360b397dac5d', 'admin', '2019-07-09 23:29:44', '127.0.0.1', '');
INSERT INTO `log` VALUES ('43c5b9fab21a49dea5150c50ae5ab6c9', 'admin', '2019-07-09 18:41:52', '127.0.0.1', '');
INSERT INTO `log` VALUES ('449d0878738f49a98c5090c8fd9d10f6', 'admin', '2019-07-10 13:11:11', '127.0.0.1', '');
INSERT INTO `log` VALUES ('4519b5d7952342398332e2539a0f3e3a', 'admin', '2019-07-10 12:58:44', '127.0.0.1', '');
INSERT INTO `log` VALUES ('45b487d3f2cb486898572134430d1002', 'admin', '2019-07-10 08:54:44', '127.0.0.1', '');
INSERT INTO `log` VALUES ('480660c971ea4c238423edea6c27ea9f', 'admin', '2019-07-10 11:32:22', '127.0.0.1', '');
INSERT INTO `log` VALUES ('49fceaabacfc4949b617a35ba96c457b', 'admin', '2019-07-10 13:27:42', '127.0.0.1', '');
INSERT INTO `log` VALUES ('4b27679497844496a2312be402929f33', 'admin', '2019-07-10 13:06:48', '127.0.0.1', '');
INSERT INTO `log` VALUES ('4c06fc824b4d4faab0199e60e734f70d', 'admin', '2019-07-09 23:46:41', '127.0.0.1', '');
INSERT INTO `log` VALUES ('4fcd09cf86d84f1fbe1f988f66b0465c', 'admin', '2019-07-07 19:38:33', '127.0.0.1', '');
INSERT INTO `log` VALUES ('5059645630bb4892aa8868e4c48a4b17', 'admin', '2019-07-10 10:48:44', '127.0.0.1', '');
INSERT INTO `log` VALUES ('53da767fb73a428ba2038efcc0c33aef', 'admin', '2019-07-10 08:48:19', '127.0.0.1', '');
INSERT INTO `log` VALUES ('54afd995634e4debaa11d75f0824d38f', 'admin', '2019-07-09 23:03:44', '127.0.0.1', '');
INSERT INTO `log` VALUES ('54ff6f72f29540748a9bc8816ffde86a', 'admin', '2019-07-10 10:44:12', '127.0.0.1', '');
INSERT INTO `log` VALUES ('57a9cbbe646c45b1a6b700ea35bea3aa', 'admin', '2019-07-10 10:42:36', '127.0.0.1', '');
INSERT INTO `log` VALUES ('5bd5e3cb690d460f9a4a0ad454b94299', 'admin   ', '2019-07-07 01:38:14', '127.0.0.1', '');
INSERT INTO `log` VALUES ('5f6c244df10444e68cb44891969946eb', 'admin', '2019-07-10 13:26:23', '127.0.0.1', '');
INSERT INTO `log` VALUES ('5ffc0532d9714520883d21814a3855d0', 'admin', '2019-07-10 09:35:54', '127.0.0.1', '');
INSERT INTO `log` VALUES ('5ffd2999af724c86ba11f3829a3f3491', 'admin', '2019-07-10 09:55:43', '127.0.0.1', '');
INSERT INTO `log` VALUES ('60596508d3ea4e1d93151a743759b5f4', 'admin', '2019-07-10 12:29:03', '127.0.0.1', '');
INSERT INTO `log` VALUES ('60d5a3c7fa7e4506862b66b0bd8f8d6f', 'admin', '2019-07-07 20:27:31', '127.0.0.1', '');
INSERT INTO `log` VALUES ('62aba219cb684b45b409c5c1309b96f4', 'admin', '2019-07-10 11:41:57', '127.0.0.1', '');
INSERT INTO `log` VALUES ('66638eb615fe4e1faf85af48b9a0aaf9', 'admin', '2019-07-09 23:35:08', '127.0.0.1', '');
INSERT INTO `log` VALUES ('6749317ad136462ab5f7ce26676e12d6', 'admin', '2019-07-09 12:25:22', '127.0.0.1', '');
INSERT INTO `log` VALUES ('68f82c31bda44168b29ef6f8b831100d', 'admin', '2019-07-09 18:24:55', '127.0.0.1', '');
INSERT INTO `log` VALUES ('6b4cdbd6d995419abeb7e8c7ffd6bc8a', 'admin', '2019-07-09 22:59:55', '127.0.0.1', '');
INSERT INTO `log` VALUES ('6c1726672ce5407d8f11f55081249d19', 'admin', '2019-07-10 08:44:47', '127.0.0.1', '');
INSERT INTO `log` VALUES ('6c6ea7c114e542839d5d3a3b727f9b37', 'admin', '2019-07-09 18:36:22', '127.0.0.1', '');
INSERT INTO `log` VALUES ('70186ab034ac47e79e6ee2794ea411ba', 'admin', '2019-07-10 12:23:11', '127.0.0.1', '');
INSERT INTO `log` VALUES ('7066df7464c14960beb5e956a4734ded', 'admin', '2019-07-09 18:24:55', '127.0.0.1', '');
INSERT INTO `log` VALUES ('71b4ac2be18f43b0bf7dc99766b3e06f', 'admin', '2019-07-10 12:18:14', '127.0.0.1', '');
INSERT INTO `log` VALUES ('7393e99bff584495b3ece86359e52bf1', 'admin', '2019-07-09 22:56:30', '127.0.0.1', '');
INSERT INTO `log` VALUES ('73ec5d61a0394897bdb82f897c306ef6', 'admin', '2019-07-10 10:26:08', '127.0.0.1', '');
INSERT INTO `log` VALUES ('7613eac32be84564a101c2d4ab89eed2', 'admin', '2019-07-09 19:52:06', '127.0.0.1', '');
INSERT INTO `log` VALUES ('766caaec10ee4c258421c4dcf738d112', 'admin', '2019-07-10 13:04:59', '127.0.0.1', '');
INSERT INTO `log` VALUES ('7ac90f12ff3249648df268c7f00e8f13', 'admin', '2019-07-10 13:21:31', '127.0.0.1', '');
INSERT INTO `log` VALUES ('7bacd97f8e94410ea65262ea7ffd1d2c', 'admin', '2019-07-10 10:28:01', '127.0.0.1', '');
INSERT INTO `log` VALUES ('7f4dd3a97c8b46c7888e6df5ae215067', 'admin', '2019-07-09 22:53:01', '127.0.0.1', '');
INSERT INTO `log` VALUES ('80607885e91f484c9f09964b00f371e2', 'admin', '2019-07-08 10:53:52', '127.0.0.1', '');
INSERT INTO `log` VALUES ('82071611496c4444add2a52ccbf337d1', 'admin', '2019-07-10 10:12:40', '127.0.0.1', '');
INSERT INTO `log` VALUES ('8cdc6a3db279481a92bef6a9637c432e', 'admin', '2019-07-10 08:29:29', '127.0.0.1', '');
INSERT INTO `log` VALUES ('8df313e71ace4d5fa8147073b90fea9b', 'admin', '2019-07-08 10:36:32', '127.0.0.1', '');
INSERT INTO `log` VALUES ('8efcb7b5b84740ae946514212ae47d1a', 'admin', '2019-07-10 12:12:54', '127.0.0.1', '');
INSERT INTO `log` VALUES ('8f77ecbb7f894eea989ae34155729e02', 'admin', '2019-07-09 18:41:52', '127.0.0.1', '');
INSERT INTO `log` VALUES ('8facb15d04424c4f9201b01c8a5d883d', 'admin', '2019-07-09 23:39:49', '127.0.0.1', '');
INSERT INTO `log` VALUES ('94ce8b0ebbc149548bf1e8065653c00f', 'test001', '2019-07-09 20:43:57', '127.0.0.1', '');
INSERT INTO `log` VALUES ('953a68366772470a829a6a50fbfa9cd7', 'admin', '2019-07-09 18:39:25', '127.0.0.1', '');
INSERT INTO `log` VALUES ('961e31b2765b4aabb31f0c9223265ba2', 'admin', '2019-07-10 08:50:26', '127.0.0.1', '');
INSERT INTO `log` VALUES ('96d66ae98a6f4be6bc3551d0df262a4f', 'admin', '2019-07-07 19:38:33', '127.0.0.1', '');
INSERT INTO `log` VALUES ('975a60f11fdf4bb5b1da4bad67b83e72', 'admin', '2019-07-10 10:40:06', '127.0.0.1', '');
INSERT INTO `log` VALUES ('9847784d5dac4be58fefae3faa2eb482', 'admin', '2019-07-09 18:24:55', '127.0.0.1', '');
INSERT INTO `log` VALUES ('9b07a8e5d5024cfc85acbc997488362e', 'admin', '2019-07-09 23:13:10', '127.0.0.1', '');
INSERT INTO `log` VALUES ('9b667d3b6c144fd18057a6341771a6aa', 'admin', '2019-07-08 10:34:17', '127.0.0.1', '');
INSERT INTO `log` VALUES ('9cbfa88becab47be9b153b9087112b7b', 'admin', '2019-07-10 13:32:11', '127.0.0.1', '');
INSERT INTO `log` VALUES ('a1791ed49ed346e49a04e673290a180a', 'admin', '2019-07-08 14:30:52', '127.0.0.1', '');
INSERT INTO `log` VALUES ('a1c4011bff7b443983682e4800a4daaf', 'admin', '2019-07-10 12:56:43', '127.0.0.1', '');
INSERT INTO `log` VALUES ('a9a4f098951c4c40bc4f85ae18a6b054', 'admin', '2019-07-10 13:08:47', '127.0.0.1', '');
INSERT INTO `log` VALUES ('aa89aa7ac7414af8aeb6028f127344c3', 'admin', '2019-07-09 17:58:22', '127.0.0.1', '');
INSERT INTO `log` VALUES ('adbf61ebf79f4b50a929e06ecd613435', 'admin', '2019-07-10 12:53:29', '127.0.0.1', '');
INSERT INTO `log` VALUES ('ae19f807692c48be84b3a3cfd99656f3', 'admin', '2019-07-10 11:53:53', '127.0.0.1', '');
INSERT INTO `log` VALUES ('af3e81a9c4154f89ba9ed1f97880fbe3', 'admin', '2019-07-09 20:23:44', '127.0.0.1', '');
INSERT INTO `log` VALUES ('b0582058a63a499bad49c8ea94935508', 'admin', '2019-07-10 13:14:54', '127.0.0.1', '');
INSERT INTO `log` VALUES ('b082195ce8b7432ebc5a8b5bd943b191', 'admin', '2019-07-10 13:30:41', '127.0.0.1', '');
INSERT INTO `log` VALUES ('b533bede618e42dd8f0b959a922c07fc', 'admin', '2019-07-10 08:42:42', '127.0.0.1', '');
INSERT INTO `log` VALUES ('b5c8c993635f4599b2ed70d1be80d3be', 'admin', '2019-07-09 18:12:42', '127.0.0.1', '');
INSERT INTO `log` VALUES ('b89e8124dd5041b893a3c09b9247efdb', 'admin', '2019-07-09 23:41:19', '127.0.0.1', '');
INSERT INTO `log` VALUES ('bbbd37f5ba684025b8a8aab1f70a249f', 'admin', '2019-07-10 12:29:03', '127.0.0.1', '');
INSERT INTO `log` VALUES ('be377c56078e4e588d2c2732ca20f983', 'admin', '2019-07-07 22:10:33', '127.0.0.1', '');
INSERT INTO `log` VALUES ('bf7a91b93a8242acbbe14bb971a83202', 'admin', '2019-07-10 09:11:38', '127.0.0.1', '');
INSERT INTO `log` VALUES ('c2f478f84a4846cabae7b036df3070a8', 'admin', '2019-07-09 18:24:55', '127.0.0.1', '');
INSERT INTO `log` VALUES ('c5ab067fcc5f4f3982b058467eacff96', 'admin', '2019-07-10 12:17:01', '127.0.0.1', '');
INSERT INTO `log` VALUES ('cb690e35c2014ea98025ea11f70dea2a', 'admin', '2019-07-08 10:53:52', '127.0.0.1', '');
INSERT INTO `log` VALUES ('d1a636a05060455ead00c7b33f79077f', 'admin', '2019-07-10 12:50:31', '127.0.0.1', '');
INSERT INTO `log` VALUES ('d2dae4f53a454c3ea21585a79b055621', 'admin', '2019-07-10 12:06:52', '127.0.0.1', '');
INSERT INTO `log` VALUES ('d6354fa0e0b646f988c4bb65617f7e81', 'admin', '2019-07-07 21:28:50', '127.0.0.1', '');
INSERT INTO `log` VALUES ('db17003f212648b686f330641c72d5b2', 'admin', '2019-07-10 12:04:53', '127.0.0.1', '');
INSERT INTO `log` VALUES ('dbb33626b60e431bb7388f1af1c15a3e', 'admin', '2019-07-10 12:43:42', '127.0.0.1', '');
INSERT INTO `log` VALUES ('dd8e9927f37e4d64abcc6c0d632ab3c0', 'admin', '2019-07-10 09:30:19', '127.0.0.1', '');
INSERT INTO `log` VALUES ('dfbbbd15b00d46a49033a591fc09f7ee', 'admin', '2019-07-07 22:11:28', '127.0.0.1', '');
INSERT INTO `log` VALUES ('e013a510054f48fbbbc97c8f75855ef8', 'test001', '2019-07-08 22:53:24', '127.0.0.1', '');
INSERT INTO `log` VALUES ('e92505e1bca847c9bd1d240105b387fe', 'admin', '2019-07-07 21:42:36', '127.0.0.1', '');
INSERT INTO `log` VALUES ('eb39af4b3ede4d0aa9b734256bb2dafb', 'admin', '2019-07-07 20:33:12', '127.0.0.1', '');
INSERT INTO `log` VALUES ('eb53cc1b237d426eb6b9e8bf2483afe4', 'admin', '2019-07-10 08:51:56', '127.0.0.1', '');
INSERT INTO `log` VALUES ('ec362fbc944847eaba1b886717db284d', 'admin', '2019-07-10 10:37:34', '127.0.0.1', '');
INSERT INTO `log` VALUES ('eed5b4cfc0f345deb61fde36f3341ae5', 'admin', '2019-07-10 12:00:05', '127.0.0.1', '');
INSERT INTO `log` VALUES ('ef529ceafc1a41bebec1572b9b633e47', 'admin', '2019-07-10 09:34:20', '127.0.0.1', '');
INSERT INTO `log` VALUES ('f0754bf8194c4189961a2b1b9e3cd5da', 'admin', '2019-07-10 10:10:34', '127.0.0.1', '');
INSERT INTO `log` VALUES ('f20e3dc25cfa470fad1d1f793385c76c', 'admin', '2019-07-10 12:33:09', '127.0.0.1', '');
INSERT INTO `log` VALUES ('f43e4ec9e3d6417d9b1ce7ba10e20cc9', 'admin', '2019-07-10 13:00:48', '127.0.0.1', '');
INSERT INTO `log` VALUES ('f68bfa2f8fe54f81891837d298df3c87', 'admin', '2019-07-09 23:13:10', '127.0.0.1', '');
INSERT INTO `log` VALUES ('f73e695b5c3341a1ab00d17a49928042', 'admin', '2019-07-10 12:35:59', '127.0.0.1', '');
INSERT INTO `log` VALUES ('f998cba24392416e847d5e558083583a', 'admin', '2019-07-10 11:52:06', '127.0.0.1', '');
INSERT INTO `log` VALUES ('fb0197cfa8414293a16d0d00d2f3e7ec', 'admin', '2019-07-08 10:53:52', '127.0.0.1', '');
INSERT INTO `log` VALUES ('fc36118577d24a179290832fdc74657b', 'admin', '2019-07-08 10:53:52', '127.0.0.1', '');
INSERT INTO `log` VALUES ('fd3e192c031b42129b215f035073322a', 'admin', '2019-07-10 11:57:22', '127.0.0.1', '');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `uid` varchar(32) NOT NULL,
  `account` varchar(200) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `salt` varchar(200) DEFAULT NULL,
  `useremail` varchar(200) DEFAULT NULL,
  `mobile` varchar(18) DEFAULT NULL COMMENT 'XXX-XXX-XXXX',
  `facebook` varchar(200) DEFAULT NULL,
  `google` varchar(200) DEFAULT NULL COMMENT 'google 账号登录',
  `image` varchar(200) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address_id` varchar(32) DEFAULT NULL,
  `state` tinyint(1) DEFAULT '1',
  `sex` tinyint(1) DEFAULT '0' COMMENT '男 0 女 1 ',
  `nickname` varchar(100) DEFAULT NULL,
  `group_id` int(8) DEFAULT NULL,
  `userpoint` int(11) DEFAULT NULL COMMENT '总的奖赏',
  `last_login_time` datetime DEFAULT NULL,
  `last_login_ip` varchar(24) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('3eb011e6638b4184aef77c3b095883df', 'guest', null, null, '$2a$10$MPclaL4uacoMimw3Ia4xfefaRKUTrT.j7FyF4SnpuDZf3ugicOv9K', null, null, null, null, null, null, null, null, null, '1', '0', null, null, null, null, null, '2017-03-14 09:44:35', '2017-03-14 09:44:35');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `menu_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `menu_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '资源类型，菜单或都按钮(menu,button)',
  `menu_url` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `menu_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `parent_ids` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child_num` int(10) NOT NULL DEFAULT '0',
  `listorder` int(10) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('00dc5c51e4824f49a30013385f680b0c', '日志管理', 'auth', '/console/log/index', 'log:index', 'e5f52fe2115e46229c60803e478d2e9a', null, '0', '1', '2017-01-06 14:11:23', '2017-05-08 14:55:21');
INSERT INTO `menu` VALUES ('1cc3d9ad04e4424db1bb086d1678925e', '菜单删除', 'auth', '/console/menu/delete', 'menu:delete', '736bdf0b9aec4c59928a530e34bd9aad', null, '0', '0', '2017-05-10 16:45:30', '2017-05-10 16:45:30');
INSERT INTO `menu` VALUES ('2191c9efc2fa431bb427b81ad938e8aa', '角色保存', 'auth', '/console/role/save', 'role:save', '6cda978dc9404ba2bf5854b74735b0bc', null, '0', '0', '2017-05-10 16:41:21', '2017-05-10 16:41:21');
INSERT INTO `menu` VALUES ('362923d31e064f84adb8c23ba91e54d8', '管理员编辑', 'auth', '/console/admin/from', 'admin:edit', 'e0dde3b9227c471eb3bd2ba0a7fab131', null, '0', '0', '2017-05-08 14:57:39', '2017-05-10 16:40:47');
INSERT INTO `menu` VALUES ('3ac96215e82f40b5bfe442e6828641df', '系统管理', 'menu', '/console/system/admin', 'system:admin', '0', null, '3', '1', '2016-12-07 16:00:00', '2017-05-10 16:46:27');
INSERT INTO `menu` VALUES ('6580896645d046a0acf3c1194d7bbf8e', '管理员删除', 'menu', '/console/admin/delete', 'admin:delete', 'e0dde3b9227c471eb3bd2ba0a7fab131', null, '0', '0', '2017-05-10 16:39:44', '2017-05-10 16:39:44');
INSERT INTO `menu` VALUES ('6cda978dc9404ba2bf5854b74735b0bc', '角色管理', 'auth', '/console/role/index', 'role:index', '3ac96215e82f40b5bfe442e6828641df', null, '4', '2', '2016-12-07 16:47:40', '2016-12-07 16:47:40');
INSERT INTO `menu` VALUES ('736bdf0b9aec4c59928a530e34bd9aad', '菜单管理', 'auth', '/console/menu/index', 'menu:index', '3ac96215e82f40b5bfe442e6828641df', null, '3', '3', '2016-12-07 16:50:17', '2016-12-07 16:50:17');
INSERT INTO `menu` VALUES ('85dad2bd9023451fab632dcfc4357d3b', '管理员保存', 'auth', '/console/admin/save', 'admin:save', 'e0dde3b9227c471eb3bd2ba0a7fab131', null, '0', '0', '2017-05-10 16:38:07', '2017-05-10 16:41:00');
INSERT INTO `menu` VALUES ('8a653e3fb15642d9be6aad13b02009fb', '角色授权', 'auth', '/console/role/grant', 'role:grant', '6cda978dc9404ba2bf5854b74735b0bc', null, '0', '0', '2017-05-10 16:42:37', '2017-05-10 16:42:37');
INSERT INTO `menu` VALUES ('984909260a06410d9be37c300e3df09d', '会员管理', 'menu', '/console/member/default', 'member:default', '0', null, '1', '0', '2017-05-10 16:50:16', '2018-06-13 14:36:46');
INSERT INTO `menu` VALUES ('9f41af1454d046b596023a2822c5078c', '角色编辑', 'auth', '/console/role/from', 'role:edit', '6cda978dc9404ba2bf5854b74735b0bc', null, '0', '0', '2017-05-08 14:59:25', '2017-05-08 14:59:25');
INSERT INTO `menu` VALUES ('aab7966c97db4643a36cb5afa24be38b', '角色删除', 'menu', '/console/role/delete', 'role:delete', '6cda978dc9404ba2bf5854b74735b0bc', null, '0', '0', '2017-05-10 16:43:37', '2017-05-10 16:43:37');
INSERT INTO `menu` VALUES ('c5cca135ee534bfeb482fb04b9311982', '菜单编辑', 'auth', '/console/menu/from', 'menu:from', '736bdf0b9aec4c59928a530e34bd9aad', null, '0', '0', '2016-12-07 16:51:31', '2017-05-08 15:00:02');
INSERT INTO `menu` VALUES ('e0dde3b9227c471eb3bd2ba0a7fab131', '管理员管理', 'auth', '/console/admin/index', 'admin:index', '3ac96215e82f40b5bfe442e6828641df', null, '3', '1', '2016-12-07 16:45:47', '2017-05-10 16:39:08');
INSERT INTO `menu` VALUES ('e5f52fe2115e46229c60803e478d2e9a', '扩展设置', 'menu', '/console/system/setting', 'system:setting', '0', null, '1', '3', '2016-12-07 16:36:42', '2017-05-10 16:50:00');
INSERT INTO `menu` VALUES ('e85b2fb3e6ee4d0a9711c577bc842821', '会员管理', 'auth', '/console/member/index', 'member:index', '984909260a06410d9be37c300e3df09d', null, '0', '0', '2017-05-10 16:51:20', '2017-05-10 16:51:20');
INSERT INTO `menu` VALUES ('f4237d06c0c94906bdc04f5ed19cbaeb', '菜单保存', 'auth', '/console/menu/save', 'menu:save', '736bdf0b9aec4c59928a530e34bd9aad', null, '0', '0', '2017-05-10 16:44:51', '2017-05-10 16:44:51');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `role_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `role_desc` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name_unique` (`role_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('36f1dd1296674fc08484c5abf6a5806b', '系统管理员', '系统管理员', '1', '2016-12-07 08:53:57', '2017-05-11 13:59:03');
INSERT INTO `role` VALUES ('cbe8356d64a8433cb5dad5c7fccf8dce', '普通管理员', '普通管理员', '1', '2016-12-07 13:21:21', '2017-05-05 12:58:38');
INSERT INTO `role` VALUES ('e7fe74161016486d896f5f853f4bc6fc', '前台', '前台', '1', '2019-07-08 10:53:52', '2019-07-08 10:53:52');

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `role_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `menu_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`),
  KEY `role_menu_foreign` (`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('cbe8356d64a8433cb5dad5c7fccf8dce', '00dc5c51e4824f49a30013385f680b0c');
INSERT INTO `role_menu` VALUES ('cbe8356d64a8433cb5dad5c7fccf8dce', '984909260a06410d9be37c300e3df09d');
INSERT INTO `role_menu` VALUES ('cbe8356d64a8433cb5dad5c7fccf8dce', 'e5f52fe2115e46229c60803e478d2e9a');
INSERT INTO `role_menu` VALUES ('cbe8356d64a8433cb5dad5c7fccf8dce', 'e85b2fb3e6ee4d0a9711c577bc842821');
