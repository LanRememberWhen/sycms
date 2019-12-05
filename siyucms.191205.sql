/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : siyucms

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-12-06 00:45:26
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tp_ad`
-- ----------------------------
DROP TABLE IF EXISTS `tp_ad`;
CREATE TABLE `tp_ad` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `type_id` mediumint(8) NOT NULL COMMENT '类型ID',
  `name` varchar(250) NOT NULL COMMENT '广告名称',
  `image` varchar(250) DEFAULT NULL COMMENT '图片',
  `thumb` varchar(250) DEFAULT NULL COMMENT '缩略图',
  `url` varchar(250) DEFAULT NULL COMMENT '链接地址',
  `description` varchar(250) DEFAULT NULL COMMENT '备注',
  `sort` tinyint(5) DEFAULT NULL COMMENT '排序',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_ad
-- ----------------------------
INSERT INTO `tp_ad` VALUES ('1', '1', 'banner_1 ', '/uploads/20181225/b671c6f234a72c2e6560c63ddd9dc0ff.jpg', '/uploads/20181225/b671c6f234a72c2e6560c63ddd9dc0ff.jpg', '', '免费、开源\r\n快速、简单', '1', '1', '1541128222', '1553154525');
INSERT INTO `tp_ad` VALUES ('4', '1', 'banner_2', '/uploads/20181225/25670f5712b4acfb61c5d2a1bce79225.jpg', '/uploads/20181225/25670f5712b4acfb61c5d2a1bce79225.jpg', '', 'banner_2', '2', '1', '1545719151', '1551937531');

-- ----------------------------
-- Table structure for `tp_ad_type`
-- ----------------------------
DROP TABLE IF EXISTS `tp_ad_type`;
CREATE TABLE `tp_ad_type` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `description` varchar(255) DEFAULT NULL COMMENT '备注',
  `sort` tinyint(5) DEFAULT NULL COMMENT '排序',
  `status` int(1) DEFAULT '0' COMMENT '状态',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_ad_type
-- ----------------------------
INSERT INTO `tp_ad_type` VALUES ('1', '【首页】顶部通栏', '导航下的焦点图', '1', '1', null, '1551936878');
INSERT INTO `tp_ad_type` VALUES ('2', '【内页】顶部通栏', '内页顶部通栏', '2', '1', null, '1551936840');

-- ----------------------------
-- Table structure for `tp_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin`;
CREATE TABLE `tp_admin` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码',
  `logintime` int(10) DEFAULT NULL COMMENT '时间',
  `loginip` char(20) DEFAULT NULL COMMENT 'IP',
  `status` int(1) DEFAULT '0' COMMENT '状态（1 正常，0 锁定）',
  `nickname` char(100) DEFAULT NULL COMMENT '真实姓名',
  `image` varchar(200) DEFAULT NULL COMMENT '头像',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of tp_admin
-- ----------------------------
INSERT INTO `tp_admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1575218084', '127.0.0.1', '1', 'admin', '/uploads/20181228/e5885dc546eb1369482cdf29fb07decd.jpg', '0', '1553846932');

-- ----------------------------
-- Table structure for `tp_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_log`;
CREATE TABLE `tp_admin_log` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) DEFAULT '' COMMENT '管理员',
  `url` varchar(1500) DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) DEFAULT '' COMMENT '日志标题',
  `content` text COMMENT '内容',
  `ip` varchar(50) DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) DEFAULT '' COMMENT 'User-Agent',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=876 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员日志表';

-- ----------------------------
-- Records of tp_admin_log
-- ----------------------------
INSERT INTO `tp_admin_log` VALUES ('390', '1', 'admin', '/admin/index/index.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574738920');
INSERT INTO `tp_admin_log` VALUES ('391', '1', 'admin', '/admin/index/main.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574738921');
INSERT INTO `tp_admin_log` VALUES ('392', '1', 'admin', '/admin/module/index.html', '[模型管理] -> [模型列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574738924');
INSERT INTO `tp_admin_log` VALUES ('393', '1', 'admin', '/admin/module/add.html', '[模型管理] -> [模型列表] -> [操作-添加]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574738930');
INSERT INTO `tp_admin_log` VALUES ('394', '1', 'admin', '/admin/module/addpost.html', '[模型管理] -> [模型列表] -> [操作-添加保存]', '{\"title\":\"\\u76f4\\u64ad\\u6a21\\u578b\",\"name\":\"live\",\"listfields\":\"*\",\"emptytable\":\"1\",\"description\":\"\\u76f4\\u64ad\\u6a21\\u578b\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574738957');
INSERT INTO `tp_admin_log` VALUES ('395', '1', 'admin', '/admin/module/index.html', '[模型管理] -> [模型列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574738960');
INSERT INTO `tp_admin_log` VALUES ('396', '1', 'admin', '/admin/module/field/id/28.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574738966');
INSERT INTO `tp_admin_log` VALUES ('397', '1', 'admin', '/admin/module/fieldstate.html', '', '{\"id\":\"111\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574738977');
INSERT INTO `tp_admin_log` VALUES ('398', '1', 'admin', '/admin/module/field/id/28.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574738978');
INSERT INTO `tp_admin_log` VALUES ('399', '1', 'admin', '/admin/module/fieldadd/moduleid/28.html', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-添加]', '{\"moduleid\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574738989');
INSERT INTO `tp_admin_log` VALUES ('400', '1', 'admin', '/admin/module/fieldaddpost.html?isajax=1&moduleid=28&type=datetime', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-添加保存]', '{\"isajax\":\"1\",\"moduleid\":\"28\",\"type\":\"datetime\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574738994');
INSERT INTO `tp_admin_log` VALUES ('401', '1', 'admin', '/admin/module/fieldaddpost.html', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-添加保存]', '{\"moduleid\":\"28\",\"type\":\"datetime\",\"field\":\"livetime\",\"name\":\"\\u76f4\\u64ad\\u65f6\\u95f4\",\"required\":\"0\",\"minlength\":\"0\",\"maxlength\":\"10\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739017');
INSERT INTO `tp_admin_log` VALUES ('402', '1', 'admin', '/admin/module/field/id/28.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739020');
INSERT INTO `tp_admin_log` VALUES ('403', '1', 'admin', '/admin/module/field/id/28.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739021');
INSERT INTO `tp_admin_log` VALUES ('404', '1', 'admin', '/admin/module/fieldadd/moduleid/28.html', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-添加]', '{\"moduleid\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739029');
INSERT INTO `tp_admin_log` VALUES ('405', '1', 'admin', '/admin/module/fieldaddpost.html?isajax=1&moduleid=28&type=text', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-添加保存]', '{\"isajax\":\"1\",\"moduleid\":\"28\",\"type\":\"text\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739035');
INSERT INTO `tp_admin_log` VALUES ('406', '1', 'admin', '/admin/module/fieldaddpost.html', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-添加保存]', '{\"moduleid\":\"28\",\"type\":\"text\",\"field\":\"livetype\",\"name\":\"\\u76f4\\u64ad\\u7c7b\\u578b\",\"required\":\"0\",\"minlength\":\"0\",\"maxlength\":\"255\",\"setup\":{\"default\":\"\",\"fieldtype\":\"varchar\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739053');
INSERT INTO `tp_admin_log` VALUES ('407', '1', 'admin', '/admin/module/field/id/28.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739056');
INSERT INTO `tp_admin_log` VALUES ('408', '1', 'admin', '/admin/module/fieldadd/moduleid/28.html', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-添加]', '{\"moduleid\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739058');
INSERT INTO `tp_admin_log` VALUES ('409', '1', 'admin', '/admin/module/fieldaddpost.html?isajax=1&moduleid=28&type=textarea', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-添加保存]', '{\"isajax\":\"1\",\"moduleid\":\"28\",\"type\":\"textarea\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739061');
INSERT INTO `tp_admin_log` VALUES ('410', '1', 'admin', '/admin/module/fieldaddpost.html', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-添加保存]', '{\"moduleid\":\"28\",\"type\":\"textarea\",\"field\":\"livelist\",\"name\":\"\\u76f4\\u64ad\\u4fe1\\u53f7\",\"required\":\"0\",\"minlength\":\"0\",\"maxlength\":\"1000\",\"setup\":{\"fieldtype\":\"text\",\"default\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739085');
INSERT INTO `tp_admin_log` VALUES ('411', '1', 'admin', '/admin/module/field/id/28.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739088');
INSERT INTO `tp_admin_log` VALUES ('412', '1', 'admin', '/admin/module/fieldsort.html', '', '{\"id\":\"116\",\"sort\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739133');
INSERT INTO `tp_admin_log` VALUES ('413', '1', 'admin', '/admin/module/fieldsort.html', '', '{\"id\":\"117\",\"sort\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739134');
INSERT INTO `tp_admin_log` VALUES ('414', '1', 'admin', '/admin/module/fieldsort.html', '', '{\"id\":\"118\",\"sort\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739140');
INSERT INTO `tp_admin_log` VALUES ('415', '1', 'admin', '/admin/module/fieldsort.html', '', '{\"id\":\"112\",\"sort\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739141');
INSERT INTO `tp_admin_log` VALUES ('416', '1', 'admin', '/admin/module/fieldsort.html', '', '{\"id\":\"113\",\"sort\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739145');
INSERT INTO `tp_admin_log` VALUES ('417', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739151');
INSERT INTO `tp_admin_log` VALUES ('418', '1', 'admin', '/admin/category/add.html', '[栏目管理] -> [栏目列表] -> [操作-添加]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739155');
INSERT INTO `tp_admin_log` VALUES ('419', '1', 'admin', '/admin/category/addpost.html', '[栏目管理] -> [栏目列表] -> [操作-添加保存]', '{\"moduleid\":\"28\",\"template_list\":\"article_list.html\",\"template_show\":\"article_show.html\",\"parentid\":\"0\",\"catname\":\"\\u7bee\\u7403\",\"enname\":\"lanqiu\",\"catdir\":\"lanqiu\",\"image\":\"\",\"file\":\"\",\"icoimage\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"is_next\":\"0\",\"is_blank\":\"0\",\"pagesize\":\"\",\"url\":\"\",\"sort\":\"50\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739233');
INSERT INTO `tp_admin_log` VALUES ('420', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739237');
INSERT INTO `tp_admin_log` VALUES ('421', '1', 'admin', '/admin/category/add.html', '[栏目管理] -> [栏目列表] -> [操作-添加]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739245');
INSERT INTO `tp_admin_log` VALUES ('422', '1', 'admin', '/admin/category/addpost.html', '[栏目管理] -> [栏目列表] -> [操作-添加保存]', '{\"moduleid\":\"28\",\"template_list\":\"article_list.html\",\"template_show\":\"article_show.html\",\"parentid\":\"20\",\"catname\":\"\\u76f4\\u64ad\",\"enname\":\"live\",\"catdir\":\"live\",\"image\":\"\",\"file\":\"\",\"icoimage\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"is_next\":\"0\",\"is_blank\":\"0\",\"pagesize\":\"\",\"url\":\"\",\"sort\":\"1\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739269');
INSERT INTO `tp_admin_log` VALUES ('423', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739272');
INSERT INTO `tp_admin_log` VALUES ('424', '1', 'admin', '/admin/category/add/id/21/moduleid/28.html', '[栏目管理] -> [栏目列表] -> [操作-添加]', '{\"id\":\"21\",\"moduleid\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739278');
INSERT INTO `tp_admin_log` VALUES ('425', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739285');
INSERT INTO `tp_admin_log` VALUES ('426', '1', 'admin', '/admin/category/add/id/21/moduleid/28.html', '[栏目管理] -> [栏目列表] -> [操作-添加]', '{\"id\":\"21\",\"moduleid\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739294');
INSERT INTO `tp_admin_log` VALUES ('427', '1', 'admin', '/admin/category/addpost.html', '[栏目管理] -> [栏目列表] -> [操作-添加保存]', '{\"moduleid\":\"28\",\"template_list\":\"article_list.html\",\"template_show\":\"article_show.html\",\"parentid\":\"21\",\"catname\":\"NBA\",\"enname\":\"nba\",\"catdir\":\"nba\",\"image\":\"\",\"file\":\"\",\"icoimage\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"is_next\":\"0\",\"is_blank\":\"0\",\"pagesize\":\"\",\"url\":\"\",\"sort\":\"50\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739307');
INSERT INTO `tp_admin_log` VALUES ('428', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739310');
INSERT INTO `tp_admin_log` VALUES ('429', '1', 'admin', '/admin/category/add/id/20/moduleid/28.html', '[栏目管理] -> [栏目列表] -> [操作-添加]', '{\"id\":\"20\",\"moduleid\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739317');
INSERT INTO `tp_admin_log` VALUES ('430', '1', 'admin', '/admin/category/addpost.html', '[栏目管理] -> [栏目列表] -> [操作-添加保存]', '{\"moduleid\":\"28\",\"template_list\":\"article_list.html\",\"template_show\":\"article_show.html\",\"parentid\":\"20\",\"catname\":\"\\u5f55\\u50cf\",\"enname\":\"luxiang\",\"catdir\":\"luxiang\",\"image\":\"\",\"file\":\"\",\"icoimage\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"is_next\":\"0\",\"is_blank\":\"0\",\"pagesize\":\"\",\"url\":\"\",\"sort\":\"50\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739341');
INSERT INTO `tp_admin_log` VALUES ('431', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739344');
INSERT INTO `tp_admin_log` VALUES ('432', '1', 'admin', '/admin/category/add/id/23/moduleid/28.html', '[栏目管理] -> [栏目列表] -> [操作-添加]', '{\"id\":\"23\",\"moduleid\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739348');
INSERT INTO `tp_admin_log` VALUES ('433', '1', 'admin', '/admin/category/addpost.html', '[栏目管理] -> [栏目列表] -> [操作-添加保存]', '{\"moduleid\":\"28\",\"template_list\":\"article_list.html\",\"template_show\":\"article_show.html\",\"parentid\":\"23\",\"catname\":\"NBA\",\"enname\":\"nba\",\"catdir\":\"nba\",\"image\":\"\",\"file\":\"\",\"icoimage\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"is_next\":\"0\",\"is_blank\":\"0\",\"pagesize\":\"\",\"url\":\"\",\"sort\":\"50\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739358');
INSERT INTO `tp_admin_log` VALUES ('434', '1', 'admin', '/admin/category/add/id/23/moduleid/28.html', '[栏目管理] -> [栏目列表] -> [操作-添加]', '{\"id\":\"23\",\"moduleid\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739361');
INSERT INTO `tp_admin_log` VALUES ('435', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739394');
INSERT INTO `tp_admin_log` VALUES ('436', '1', 'admin', '/admin/category/del.html', '[栏目管理] -> [栏目列表] -> [操作-删除]', '{\"id\":\"22\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739398');
INSERT INTO `tp_admin_log` VALUES ('437', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739400');
INSERT INTO `tp_admin_log` VALUES ('438', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739403');
INSERT INTO `tp_admin_log` VALUES ('439', '1', 'admin', '/admin/live/add/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739405');
INSERT INTO `tp_admin_log` VALUES ('440', '1', 'admin', '/admin/module/index.html', '[模型管理] -> [模型列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739421');
INSERT INTO `tp_admin_log` VALUES ('441', '1', 'admin', '/admin/module/field/id/28.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739423');
INSERT INTO `tp_admin_log` VALUES ('442', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739443');
INSERT INTO `tp_admin_log` VALUES ('443', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739445');
INSERT INTO `tp_admin_log` VALUES ('444', '1', 'admin', '/admin/live/add/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739447');
INSERT INTO `tp_admin_log` VALUES ('445', '1', 'admin', '/admin/live/add.html', '', '{\"catid\":\"21\",\"title\":\"11\\u670826\\u65e5 09:30 NBA\\u5e38\\u89c4\\u8d5b \\u6e56\\u4ebavs\\u9a6c\\u523a\",\"keywords\":\"NBA\\u5e38\\u89c4\\u8d5b,\\u6e56\\u4eba,\\u9a6c\\u523a\",\"description\":\"\",\"content\":\"<p><br><\\/p>\",\"livetime\":\"2019-11-26 09:30:00\",\"livetype\":\"NBA\\u5e38\\u89c4\\u8d5b\",\"livelist\":\"QQ\\u76f4\\u64ad|https:\\/\\/sports.qq.com\\/kbsweb\\/game.htm?mid=100000:54431852\",\"create_time\":\"2019-11-26 11:37:27\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"article_show.html\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739543');
INSERT INTO `tp_admin_log` VALUES ('446', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739545');
INSERT INTO `tp_admin_log` VALUES ('447', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739772');
INSERT INTO `tp_admin_log` VALUES ('448', '1', 'admin', '/admin/category/edit/id/21.html', '[栏目管理] -> [栏目列表] -> [操作-修改]', '{\"id\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739776');
INSERT INTO `tp_admin_log` VALUES ('449', '1', 'admin', '/admin/category/editpost.html', '[栏目管理] -> [栏目列表] -> [操作-修改保存]', '{\"id\":\"21\",\"moduleid\":\"28\",\"template_list\":\"live_list.html\",\"template_show\":\"article_show.html\",\"parentid\":\"20\",\"catname\":\"\\u76f4\\u64ad\",\"enname\":\"live\",\"catdir\":\"live\",\"image\":\"\",\"file\":\"\",\"icoimage\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"is_next\":\"0\",\"is_blank\":\"0\",\"pagesize\":\"0\",\"url\":\"\",\"sort\":\"1\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739783');
INSERT INTO `tp_admin_log` VALUES ('450', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739787');
INSERT INTO `tp_admin_log` VALUES ('451', '1', 'admin', '/admin/category/edit/id/21.html', '[栏目管理] -> [栏目列表] -> [操作-修改]', '{\"id\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739823');
INSERT INTO `tp_admin_log` VALUES ('452', '1', 'admin', '/admin/category/editpost.html', '[栏目管理] -> [栏目列表] -> [操作-修改保存]', '{\"id\":\"21\",\"moduleid\":\"28\",\"template_list\":\"live_list.html\",\"template_show\":\"live_show.html\",\"parentid\":\"20\",\"catname\":\"\\u76f4\\u64ad\",\"enname\":\"live\",\"catdir\":\"live\",\"image\":\"\",\"file\":\"\",\"icoimage\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"is_next\":\"0\",\"is_blank\":\"0\",\"pagesize\":\"0\",\"url\":\"\",\"sort\":\"1\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739829');
INSERT INTO `tp_admin_log` VALUES ('453', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739833');
INSERT INTO `tp_admin_log` VALUES ('454', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739840');
INSERT INTO `tp_admin_log` VALUES ('455', '1', 'admin', '/admin/live/edit/catid/21/id/1.html', '', '{\"catid\":\"21\",\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739844');
INSERT INTO `tp_admin_log` VALUES ('456', '1', 'admin', '/admin/live/edit.html', '', '{\"id\":\"1\",\"catid\":\"21\",\"title\":\"11\\u670826\\u65e5 09:30 NBA\\u5e38\\u89c4\\u8d5b \\u6e56\\u4ebavs\\u9a6c\\u523a\",\"keywords\":\"NBA\\u5e38\\u89c4\\u8d5b,\\u6e56\\u4eba,\\u9a6c\\u523a\",\"description\":\"\",\"content\":\"<p><br><\\/p>\",\"livetime\":\"2019-11-26 09:30\",\"livetype\":\"NBA\\u5e38\\u89c4\\u8d5b\",\"livelist\":\"QQ\\u76f4\\u64ad|https:\\/\\/sports.qq.com\\/kbsweb\\/game.htm?mid=100000:54431852\",\"create_time\":\"2019-11-26 11:37\",\"status\":\"1\",\"hits\":\"11\",\"template\":\"live_show.html\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739849');
INSERT INTO `tp_admin_log` VALUES ('457', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739853');
INSERT INTO `tp_admin_log` VALUES ('458', '1', 'admin', '/admin/index/clear.html', '', '{\"del\":\"true\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739926');
INSERT INTO `tp_admin_log` VALUES ('459', '1', 'admin', '/admin/index/index.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739927');
INSERT INTO `tp_admin_log` VALUES ('460', '1', 'admin', '/admin/index/main.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574739927');
INSERT INTO `tp_admin_log` VALUES ('461', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574740064');
INSERT INTO `tp_admin_log` VALUES ('462', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574740065');
INSERT INTO `tp_admin_log` VALUES ('463', '1', 'admin', '/admin/live/edit/catid/21/id/1.html', '', '{\"catid\":\"21\",\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574740068');
INSERT INTO `tp_admin_log` VALUES ('464', '1', 'admin', '/admin/live/edit.html', '', '{\"id\":\"1\",\"catid\":\"21\",\"title\":\"11\\u670826\\u65e5 09:30 NBA\\u5e38\\u89c4\\u8d5b \\u6e56\\u4ebavs\\u9a6c\\u523a\",\"keywords\":\"NBA\\u5e38\\u89c4\\u8d5b,\\u6e56\\u4eba,\\u9a6c\\u523a\",\"description\":\"\",\"content\":\"<p><br><\\/p>\",\"livetime\":\"2019-11-26 09:30\",\"livetype\":\"NBA\\u5e38\\u89c4\\u8d5b\",\"livelist\":\"QQ\\u76f4\\u64ad|https:\\/\\/sports.qq.com\\/kbsweb\\/game.htm?mid=100000:54431852\",\"create_time\":\"2019-11-26 11:37\",\"status\":\"1\",\"hits\":\"28\",\"template\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574740074');
INSERT INTO `tp_admin_log` VALUES ('465', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574740077');
INSERT INTO `tp_admin_log` VALUES ('466', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745167');
INSERT INTO `tp_admin_log` VALUES ('467', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745565');
INSERT INTO `tp_admin_log` VALUES ('468', '1', 'admin', '/admin/live/add/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745567');
INSERT INTO `tp_admin_log` VALUES ('469', '1', 'admin', '/admin/live/add.html', '', '{\"catid\":\"23\",\"title\":\"11\\u670826\\u65e5 NBA\\u5e38\\u89c4\\u8d5b \\u7bee\\u7f51vs\\u9a91\\u58eb \\u5f55\\u50cf\",\"keywords\":\"\",\"description\":\"\",\"content\":\"<p><br><\\/p>\",\"livetime\":\"2019-11-26 13:19:27\",\"livetype\":\"\",\"create_time\":\"2019-11-26 13:19:27\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745660');
INSERT INTO `tp_admin_log` VALUES ('470', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745663');
INSERT INTO `tp_admin_log` VALUES ('471', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745665');
INSERT INTO `tp_admin_log` VALUES ('472', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745711');
INSERT INTO `tp_admin_log` VALUES ('473', '1', 'admin', '/admin/live/edit/catid/23/id/2.html', '', '{\"catid\":\"23\",\"id\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745713');
INSERT INTO `tp_admin_log` VALUES ('474', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745717');
INSERT INTO `tp_admin_log` VALUES ('475', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745720');
INSERT INTO `tp_admin_log` VALUES ('476', '1', 'admin', '/admin/module/index.html', '[模型管理] -> [模型列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745788');
INSERT INTO `tp_admin_log` VALUES ('477', '1', 'admin', '/admin/module/field/id/28.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745791');
INSERT INTO `tp_admin_log` VALUES ('478', '1', 'admin', '/admin/module/fieldadd/moduleid/28.html', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-添加]', '{\"moduleid\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745794');
INSERT INTO `tp_admin_log` VALUES ('479', '1', 'admin', '/admin/module/fieldaddpost.html?isajax=1&moduleid=28&type=image', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-添加保存]', '{\"isajax\":\"1\",\"moduleid\":\"28\",\"type\":\"image\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745798');
INSERT INTO `tp_admin_log` VALUES ('480', '1', 'admin', '/admin/module/fieldaddpost.html', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-添加保存]', '{\"moduleid\":\"28\",\"type\":\"image\",\"field\":\"litpic\",\"name\":\"\\u7f29\\u7565\\u56fe\",\"required\":\"0\",\"minlength\":\"0\",\"maxlength\":\"255\",\"setup\":{\"upload_allowext\":\"jpg|jpeg|gif|png\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745834');
INSERT INTO `tp_admin_log` VALUES ('481', '1', 'admin', '/admin/module/field/id/28.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745837');
INSERT INTO `tp_admin_log` VALUES ('482', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745838');
INSERT INTO `tp_admin_log` VALUES ('483', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745840');
INSERT INTO `tp_admin_log` VALUES ('484', '1', 'admin', '/admin/live/edit/catid/23/id/2.html', '', '{\"catid\":\"23\",\"id\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745842');
INSERT INTO `tp_admin_log` VALUES ('485', '1', 'admin', '/admin/live/edit.html', '', '{\"id\":\"2\",\"catid\":\"23\",\"litpic\":\"http:\\/\\/tu.duoduocdn.com\\/ico\\/video_basketball.png\",\"file\":\"\",\"title\":\"11\\u670826\\u65e5 NBA\\u5e38\\u89c4\\u8d5b \\u7bee\\u7f51vs\\u9a91\\u58eb \\u5f55\\u50cf\",\"keywords\":\"\",\"description\":\"\",\"content\":\"<p><br><\\/p>\",\"livetime\":\"2019-11-26 13:19\",\"livetype\":\"\",\"create_time\":\"2019-11-26 13:19\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745869');
INSERT INTO `tp_admin_log` VALUES ('486', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745872');
INSERT INTO `tp_admin_log` VALUES ('487', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745952');
INSERT INTO `tp_admin_log` VALUES ('488', '1', 'admin', '/admin/category/add/id/20/moduleid/28.html', '[栏目管理] -> [栏目列表] -> [操作-添加]', '{\"id\":\"20\",\"moduleid\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745956');
INSERT INTO `tp_admin_log` VALUES ('489', '1', 'admin', '/admin/category/addpost.html', '[栏目管理] -> [栏目列表] -> [操作-添加保存]', '{\"moduleid\":\"28\",\"template_list\":\"live_list.html\",\"template_show\":\"live_show.html\",\"parentid\":\"20\",\"catname\":\"\\u65b0\\u95fb\",\"enname\":\"xinwen\",\"catdir\":\"xinwen\",\"image\":\"\",\"file\":\"\",\"icoimage\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"is_next\":\"0\",\"is_blank\":\"0\",\"pagesize\":\"\",\"url\":\"\",\"sort\":\"50\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745994');
INSERT INTO `tp_admin_log` VALUES ('490', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574745997');
INSERT INTO `tp_admin_log` VALUES ('491', '1', 'admin', '/admin/system/system.html', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574746116');
INSERT INTO `tp_admin_log` VALUES ('492', '1', 'admin', '/admin/index/index.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574746121');
INSERT INTO `tp_admin_log` VALUES ('493', '1', 'admin', '/admin/index/main.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574746121');
INSERT INTO `tp_admin_log` VALUES ('494', '1', 'admin', '/admin/template/index.html', '[模板管理] -> [模板管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574746626');
INSERT INTO `tp_admin_log` VALUES ('495', '1', 'admin', '/admin/system/system.html', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574746629');
INSERT INTO `tp_admin_log` VALUES ('496', '1', 'admin', '/admin/system/systempost.html', '[系统设置] -> [系统设置] -> [操作-修改保存]', '{\"name\":\"SIYUCMS\",\"logo\":\"\\/uploads\\/20181226\\/a3a4245ec095da4903c6c81123fd480d.png\",\"file\":\"\",\"url\":\"www.xxx.com\",\"bah\":\"\\u8fbdICP\\u590712345678\\u53f7-1\",\"copyright\":\"Copyright \\u00a9 SIYUCMS 2019.All right reserved.Powered by SIYUCMS\",\"address\":\"\\u8fbd\\u5b81\\u7701\\u6c88\\u9633\\u5e02\\u94c1\\u897f\\u533a\\u91cd\\u5de5\\u8857XX\\u8defXX\\u53f71-1-1\",\"contacts\":\"X\\u5148\\u751f\",\"tel\":\"010-8888 7777\",\"mobile_phone\":\"158 4018 8888\",\"fax\":\"010-8888 9999\",\"email\":\"407593529@qq.com\",\"qq\":\"407593529\",\"qrcode\":\"\\/uploads\\/20181226\\/cb7a4c21d6443bc5e7a8d16ac2cbe242.png\",\"title\":\"SIYUCMS \\u5b98\\u7f51\",\"key\":\"SIYUCMS\\uff0cSIYUCMS\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0cphp\\uff0cThinkPHP CMS\\uff0cThinkPHP\\u5efa\\u7ad9\\u7cfb\\u7edf\",\"des\":\"SIYUCMS \\u662f\\u4e00\\u6b3e\\u57fa\\u4e8e ThinkPHP5 + AdminLTE \\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\u3002\\u540e\\u53f0\\u754c\\u9762\\u91c7\\u7528\\u54cd\\u5e94\\u5f0f\\u5e03\\u5c40\\uff0c\\u6e05\\u723d\\u3001\\u6781\\u7b80\\u3001\\u7b80\\u5355\\u3001\\u6613\\u7528\\uff0c\\u662f\\u505a\\u5f00\\u53d1\\u7684\\u6700\\u4f73\\u9009\\u62e9\\u3002\",\"mobile\":\"0\",\"code\":\"0\",\"message_code\":\"1\",\"message_send_mail\":\"0\",\"template\":\"live\",\"html\":\"html\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574746634');
INSERT INTO `tp_admin_log` VALUES ('497', '1', 'admin', '/admin/system/system.html', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574746638');
INSERT INTO `tp_admin_log` VALUES ('498', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574746947');
INSERT INTO `tp_admin_log` VALUES ('499', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574746951');
INSERT INTO `tp_admin_log` VALUES ('500', '1', 'admin', '/admin/live/edit/catid/23/id/2.html', '', '{\"catid\":\"23\",\"id\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574746953');
INSERT INTO `tp_admin_log` VALUES ('501', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574747042');
INSERT INTO `tp_admin_log` VALUES ('502', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574747044');
INSERT INTO `tp_admin_log` VALUES ('503', '1', 'admin', '/admin/live/edit/catid/23/id/2.html', '', '{\"catid\":\"23\",\"id\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574747045');
INSERT INTO `tp_admin_log` VALUES ('504', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574747213');
INSERT INTO `tp_admin_log` VALUES ('505', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574747214');
INSERT INTO `tp_admin_log` VALUES ('506', '1', 'admin', '/admin/live/edit/catid/23/id/2.html', '', '{\"catid\":\"23\",\"id\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574747216');
INSERT INTO `tp_admin_log` VALUES ('507', '1', 'admin', '/admin/index/upload.html', '', '{\"id\":\"WU_FILE_0\",\"name\":\"201911260951278529.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Tue Nov 26 2019 13:46:49 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"49206\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574747227');
INSERT INTO `tp_admin_log` VALUES ('508', '1', 'admin', '/admin/live/edit.html', '', '{\"id\":\"2\",\"catid\":\"23\",\"litpic\":\"\\/uploads\\/20191126\\/848b8983aad45dc1167bd7ac8ffbd4f7.jpg\",\"file\":\"\",\"title\":\"11\\u670826\\u65e5 NBA\\u5e38\\u89c4\\u8d5b \\u7bee\\u7f51vs\\u9a91\\u58eb \\u5f55\\u50cf\",\"keywords\":\"\",\"description\":\"\",\"content\":\"<p><br><\\/p>\",\"livetime\":\"2019-11-26 13:19\",\"livetype\":\"\",\"create_time\":\"2019-11-26 13:19\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574747232');
INSERT INTO `tp_admin_log` VALUES ('509', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574747235');
INSERT INTO `tp_admin_log` VALUES ('510', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574747295');
INSERT INTO `tp_admin_log` VALUES ('511', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574747297');
INSERT INTO `tp_admin_log` VALUES ('512', '1', 'admin', '/admin/live/add/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574747299');
INSERT INTO `tp_admin_log` VALUES ('513', '1', 'admin', '/admin/index/upload.html', '', '{\"id\":\"WU_FILE_0\",\"name\":\"201911260941077876.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Tue Nov 26 2019 13:48:33 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"148737\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574747333');
INSERT INTO `tp_admin_log` VALUES ('514', '1', 'admin', '/admin/live/add.html', '', '{\"catid\":\"23\",\"litpic\":\"\\/uploads\\/20191126\\/d85aa08f9de2d0ca076fb99b898bfe42.jpg\",\"file\":\"\",\"title\":\"11\\u670826\\u65e5 NBA\\u5e38\\u89c4\\u8d5b \\u7070\\u718avs\\u6b65\\u884c\\u8005 \\u5f55\\u50cf\",\"keywords\":\"\",\"description\":\"\",\"content\":\"<p><br><\\/p>\",\"livetime\":\"2019-11-26 13:48:19\",\"livetype\":\"\",\"livelist\":\"\",\"create_time\":\"2019-11-26 13:48:19\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574747348');
INSERT INTO `tp_admin_log` VALUES ('515', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574747351');
INSERT INTO `tp_admin_log` VALUES ('516', '1', 'admin', '/admin/index/index.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788188');
INSERT INTO `tp_admin_log` VALUES ('517', '1', 'admin', '/admin/index/main.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788188');
INSERT INTO `tp_admin_log` VALUES ('518', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788190');
INSERT INTO `tp_admin_log` VALUES ('519', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788192');
INSERT INTO `tp_admin_log` VALUES ('520', '1', 'admin', '/admin/live/add/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788194');
INSERT INTO `tp_admin_log` VALUES ('521', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788209');
INSERT INTO `tp_admin_log` VALUES ('522', '1', 'admin', '/admin/live/add/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788211');
INSERT INTO `tp_admin_log` VALUES ('523', '1', 'admin', '/admin/live/add.html', '', '{\"catid\":\"21\",\"litpic\":\"\",\"file\":\"\",\"title\":\"11\\u670827\\u65e5 09:30 NBA\\u5e38\\u89c4\\u8d5b \\u5feb\\u8239vs\\u72ec\\u884c\\u4fa0\",\"keywords\":\"\",\"description\":\"\",\"content\":\"<p><br><\\/p>\",\"livetime\":\"2019-11-27 09:30:00\",\"livetype\":\"\",\"livelist\":\"\",\"create_time\":\"2019-11-27 01:10:11\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788245');
INSERT INTO `tp_admin_log` VALUES ('524', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788249');
INSERT INTO `tp_admin_log` VALUES ('525', '1', 'admin', '/admin/live/add/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788382');
INSERT INTO `tp_admin_log` VALUES ('526', '1', 'admin', '/admin/live/add.html', '', '{\"catid\":\"21\",\"litpic\":\"\",\"file\":\"\",\"title\":\"11\\u670828\\u65e5 08:00 NBA\\u5e38\\u89c4\\u8d5b \\u7bee\\u7f51vs\\u51ef\\u5c14\\u7279\\u4eba\",\"keywords\":\"\",\"description\":\"\",\"content\":\"<p><br><\\/p>\",\"livetime\":\"2019-11-28 08:00:02\",\"livetype\":\"NBA\\u5e38\\u89c4\\u8d5b\",\"livelist\":\"\",\"create_time\":\"2019-11-27 01:13:02\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788408');
INSERT INTO `tp_admin_log` VALUES ('527', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788412');
INSERT INTO `tp_admin_log` VALUES ('528', '1', 'admin', '/admin/live/add/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788440');
INSERT INTO `tp_admin_log` VALUES ('529', '1', 'admin', '/admin/live/add.html', '', '{\"catid\":\"21\",\"litpic\":\"\",\"file\":\"\",\"title\":\"11\\u670829\\u65e5 19:35 CBA\\u5e38\\u89c4\\u8d5b \\u56db\\u5dddvs\\u8fbd\\u5b81\",\"keywords\":\"\",\"description\":\"\",\"content\":\"<p><br><\\/p>\",\"livetime\":\"2019-11-29 19:35:00\",\"livetype\":\"CBA\\u5e38\\u89c4\\u8d5b\",\"livelist\":\"\",\"create_time\":\"2019-11-27 01:14:00\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788462');
INSERT INTO `tp_admin_log` VALUES ('530', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788465');
INSERT INTO `tp_admin_log` VALUES ('531', '1', 'admin', '/admin/live/add/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788497');
INSERT INTO `tp_admin_log` VALUES ('532', '1', 'admin', '/admin/module/index.html', '[模型管理] -> [模型列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788511');
INSERT INTO `tp_admin_log` VALUES ('533', '1', 'admin', '/admin/module/field/id/28.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788513');
INSERT INTO `tp_admin_log` VALUES ('534', '1', 'admin', '/admin/module/fieldsort.html', '', '{\"id\":\"119\",\"sort\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788524');
INSERT INTO `tp_admin_log` VALUES ('535', '1', 'admin', '/admin/module/fieldadd/moduleid/28.html', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-添加]', '{\"moduleid\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788526');
INSERT INTO `tp_admin_log` VALUES ('536', '1', 'admin', '/admin/module/fieldaddpost.html?isajax=1&moduleid=28&type=text', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-添加保存]', '{\"isajax\":\"1\",\"moduleid\":\"28\",\"type\":\"text\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788530');
INSERT INTO `tp_admin_log` VALUES ('537', '1', 'admin', '/admin/module/fieldaddpost.html', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-添加保存]', '{\"moduleid\":\"28\",\"type\":\"text\",\"field\":\"\\u77ed\\u6807\\u9898\",\"name\":\"shorttitle\",\"required\":\"0\",\"minlength\":\"0\",\"maxlength\":\"255\",\"setup\":{\"default\":\"\",\"fieldtype\":\"varchar\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788566');
INSERT INTO `tp_admin_log` VALUES ('538', '1', 'admin', '/admin/module/field/id/28.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788569');
INSERT INTO `tp_admin_log` VALUES ('539', '1', 'admin', '/admin/module/fieldsort.html', '', '{\"id\":\"120\",\"sort\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788574');
INSERT INTO `tp_admin_log` VALUES ('540', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788579');
INSERT INTO `tp_admin_log` VALUES ('541', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788581');
INSERT INTO `tp_admin_log` VALUES ('542', '1', 'admin', '/admin/live/edit/catid/21/id/1.html', '', '{\"catid\":\"21\",\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788585');
INSERT INTO `tp_admin_log` VALUES ('543', '1', 'admin', '/admin/module/index.html', '[模型管理] -> [模型列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788598');
INSERT INTO `tp_admin_log` VALUES ('544', '1', 'admin', '/admin/module/field/id/28.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788599');
INSERT INTO `tp_admin_log` VALUES ('545', '1', 'admin', '/admin/module/fieldedit/moduleid/28/id/120.html', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-修改]', '{\"moduleid\":\"28\",\"id\":\"120\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788603');
INSERT INTO `tp_admin_log` VALUES ('546', '1', 'admin', '/admin/module/fieldaddpost.html?isajax=1&moduleid=28&type=text&name=%E7%9F%AD%E6%A0%87%E9%A2%98', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-添加保存]', '{\"isajax\":\"1\",\"moduleid\":\"28\",\"type\":\"text\",\"name\":\"\\u77ed\\u6807\\u9898\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788603');
INSERT INTO `tp_admin_log` VALUES ('547', '1', 'admin', '/admin/module/fieldeditpost.html', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-修改保存]', '{\"id\":\"120\",\"oldfield\":\"\\u77ed\\u6807\\u9898\",\"type\":\"text\",\"moduleid\":\"28\",\"field\":\"shorttitle\",\"name\":\"\\u77ed\\u6807\\u9898\",\"required\":\"0\",\"minlength\":\"0\",\"maxlength\":\"255\",\"setup\":{\"default\":\"\",\"fieldtype\":\"varchar\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788612');
INSERT INTO `tp_admin_log` VALUES ('548', '1', 'admin', '/admin/module/field/id/28.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788615');
INSERT INTO `tp_admin_log` VALUES ('549', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788621');
INSERT INTO `tp_admin_log` VALUES ('550', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788623');
INSERT INTO `tp_admin_log` VALUES ('551', '1', 'admin', '/admin/live/edit/catid/21/id/1.html', '', '{\"catid\":\"21\",\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788625');
INSERT INTO `tp_admin_log` VALUES ('552', '1', 'admin', '/admin/live/edit.html', '', '{\"id\":\"1\",\"catid\":\"21\",\"title\":\"11\\u670826\\u65e5 09:30 NBA\\u5e38\\u89c4\\u8d5b \\u6e56\\u4ebavs\\u9a6c\\u523a\",\"shorttitle\":\"\\u6e56\\u4ebavs\\u9a6c\\u523a\",\"keywords\":\"NBA\\u5e38\\u89c4\\u8d5b,\\u6e56\\u4eba,\\u9a6c\\u523a\",\"description\":\"\",\"content\":\"<p><br><\\/p>\",\"livetime\":\"2019-11-26 09:30\",\"livetype\":\"NBA\\u5e38\\u89c4\\u8d5b\",\"livelist\":\"QQ\\u76f4\\u64ad|https:\\/\\/sports.qq.com\\/kbsweb\\/game.htm?mid=100000:54431852\",\"create_time\":\"2019-11-26 11:37\",\"litpic\":\"\",\"file\":\"\",\"status\":\"1\",\"hits\":\"34\",\"template\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788633');
INSERT INTO `tp_admin_log` VALUES ('553', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788634');
INSERT INTO `tp_admin_log` VALUES ('554', '1', 'admin', '/admin/live/edit/catid/21/id/4.html', '', '{\"catid\":\"21\",\"id\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788636');
INSERT INTO `tp_admin_log` VALUES ('555', '1', 'admin', '/admin/live/edit.html', '', '{\"id\":\"4\",\"catid\":\"21\",\"title\":\"11\\u670827\\u65e5 09:30 NBA\\u5e38\\u89c4\\u8d5b \\u5feb\\u8239vs\\u72ec\\u884c\\u4fa0\",\"shorttitle\":\"\\u5feb\\u8239vs\\u72ec\\u884c\\u4fa0\",\"keywords\":\"\",\"description\":\"\",\"content\":\"<p><br><\\/p>\",\"livetime\":\"2019-11-27 09:30\",\"livetype\":\"\",\"livelist\":\"\",\"create_time\":\"2019-11-27 01:10\",\"litpic\":\"\",\"file\":\"\",\"status\":\"1\",\"hits\":\"1\",\"template\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788640');
INSERT INTO `tp_admin_log` VALUES ('556', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788641');
INSERT INTO `tp_admin_log` VALUES ('557', '1', 'admin', '/admin/live/edit/catid/21/id/5.html', '', '{\"catid\":\"21\",\"id\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788642');
INSERT INTO `tp_admin_log` VALUES ('558', '1', 'admin', '/admin/live/edit.html', '', '{\"id\":\"5\",\"catid\":\"21\",\"title\":\"11\\u670828\\u65e5 08:00 NBA\\u5e38\\u89c4\\u8d5b \\u7bee\\u7f51vs\\u51ef\\u5c14\\u7279\\u4eba\",\"shorttitle\":\"\\u7bee\\u7f51vs\\u51ef\\u5c14\\u7279\\u4eba\",\"keywords\":\"\",\"description\":\"\",\"content\":\"<p><br><\\/p>\",\"livetime\":\"2019-11-28 08:00\",\"livetype\":\"NBA\\u5e38\\u89c4\\u8d5b\",\"livelist\":\"\",\"create_time\":\"2019-11-27 01:13\",\"litpic\":\"\",\"file\":\"\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788646');
INSERT INTO `tp_admin_log` VALUES ('559', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788647');
INSERT INTO `tp_admin_log` VALUES ('560', '1', 'admin', '/admin/live/edit/catid/21/id/6.html', '', '{\"catid\":\"21\",\"id\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788649');
INSERT INTO `tp_admin_log` VALUES ('561', '1', 'admin', '/admin/live/edit.html', '', '{\"id\":\"6\",\"catid\":\"21\",\"title\":\"11\\u670829\\u65e5 19:35 CBA\\u5e38\\u89c4\\u8d5b \\u56db\\u5dddvs\\u8fbd\\u5b81\",\"shorttitle\":\"\\u56db\\u5dddvs\\u8fbd\\u5b81\",\"keywords\":\"\",\"description\":\"\",\"content\":\"<p><br><\\/p>\",\"livetime\":\"2019-11-29 19:35\",\"livetype\":\"CBA\\u5e38\\u89c4\\u8d5b\",\"livelist\":\"\",\"create_time\":\"2019-11-27 01:14\",\"litpic\":\"\",\"file\":\"\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788653');
INSERT INTO `tp_admin_log` VALUES ('562', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788655');
INSERT INTO `tp_admin_log` VALUES ('563', '1', 'admin', '/admin/live/edit/catid/21/id/4.html', '', '{\"catid\":\"21\",\"id\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788658');
INSERT INTO `tp_admin_log` VALUES ('564', '1', 'admin', '/admin/live/edit.html', '', '{\"id\":\"4\",\"catid\":\"21\",\"title\":\"11\\u670827\\u65e5 09:30 NBA\\u5e38\\u89c4\\u8d5b \\u5feb\\u8239vs\\u72ec\\u884c\\u4fa0\",\"shorttitle\":\"\\u5feb\\u8239vs\\u72ec\\u884c\\u4fa0\",\"keywords\":\"\",\"description\":\"\",\"content\":\"<p><br><\\/p>\",\"livetime\":\"2019-11-27 09:30\",\"livetype\":\"NBA\\u5e38\\u89c4\\u8d5b\",\"livelist\":\"\",\"create_time\":\"2019-11-27 01:10\",\"litpic\":\"\",\"file\":\"\",\"status\":\"1\",\"hits\":\"1\",\"template\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788663');
INSERT INTO `tp_admin_log` VALUES ('565', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788666');
INSERT INTO `tp_admin_log` VALUES ('566', '1', 'admin', '/admin/module/index.html', '[模型管理] -> [模型列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788672');
INSERT INTO `tp_admin_log` VALUES ('567', '1', 'admin', '/admin/module/field/id/28.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788674');
INSERT INTO `tp_admin_log` VALUES ('568', '1', 'admin', '/admin/module/fieldsort.html', '', '{\"id\":\"111\",\"sort\":\"15\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788694');
INSERT INTO `tp_admin_log` VALUES ('569', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788695');
INSERT INTO `tp_admin_log` VALUES ('570', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788697');
INSERT INTO `tp_admin_log` VALUES ('571', '1', 'admin', '/admin/live/edit/catid/21/id/6.html', '', '{\"catid\":\"21\",\"id\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788698');
INSERT INTO `tp_admin_log` VALUES ('572', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788706');
INSERT INTO `tp_admin_log` VALUES ('573', '1', 'admin', '/admin/live/edit/catid/21/id/4.html', '', '{\"catid\":\"21\",\"id\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788845');
INSERT INTO `tp_admin_log` VALUES ('574', '1', 'admin', '/admin/live/edit.html', '', '{\"id\":\"4\",\"catid\":\"21\",\"title\":\"11\\u670827\\u65e5 09:30 NBA\\u5e38\\u89c4\\u8d5b \\u5feb\\u8239vs\\u72ec\\u884c\\u4fa0\",\"shorttitle\":\"\\u5feb\\u8239 - \\u72ec\\u884c\\u4fa0\",\"keywords\":\"\",\"description\":\"\",\"livetime\":\"2019-11-27 09:30\",\"livetype\":\"NBA\\u5e38\\u89c4\\u8d5b\",\"livelist\":\"\",\"create_time\":\"2019-11-27 01:10\",\"litpic\":\"\",\"file\":\"\",\"status\":\"1\",\"hits\":\"1\",\"template\":\"\",\"content\":\"<p><br><\\/p>\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788852');
INSERT INTO `tp_admin_log` VALUES ('575', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788856');
INSERT INTO `tp_admin_log` VALUES ('576', '1', 'admin', '/admin/live/edit/catid/21/id/5.html', '', '{\"catid\":\"21\",\"id\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788867');
INSERT INTO `tp_admin_log` VALUES ('577', '1', 'admin', '/admin/live/edit.html', '', '{\"id\":\"5\",\"catid\":\"21\",\"title\":\"11\\u670828\\u65e5 08:00 NBA\\u5e38\\u89c4\\u8d5b \\u7bee\\u7f51vs\\u51ef\\u5c14\\u7279\\u4eba\",\"shorttitle\":\"\\u7bee\\u7f51 - \\u51ef\\u5c14\\u7279\\u4eba\",\"keywords\":\"\",\"description\":\"\",\"livetime\":\"2019-11-28 08:00\",\"livetype\":\"NBA\\u5e38\\u89c4\\u8d5b\",\"livelist\":\"\",\"create_time\":\"2019-11-27 01:13\",\"litpic\":\"\",\"file\":\"\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\",\"content\":\"<p><br><\\/p>\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788873');
INSERT INTO `tp_admin_log` VALUES ('578', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788876');
INSERT INTO `tp_admin_log` VALUES ('579', '1', 'admin', '/admin/live/edit/catid/21/id/6.html', '', '{\"catid\":\"21\",\"id\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788878');
INSERT INTO `tp_admin_log` VALUES ('580', '1', 'admin', '/admin/live/edit.html', '', '{\"id\":\"6\",\"catid\":\"21\",\"title\":\"11\\u670829\\u65e5 19:35 CBA\\u5e38\\u89c4\\u8d5b \\u56db\\u5dddvs\\u8fbd\\u5b81\",\"shorttitle\":\"\\u56db\\u5ddd - \\u8fbd\\u5b81\",\"keywords\":\"\",\"description\":\"\",\"livetime\":\"2019-11-29 19:35\",\"livetype\":\"CBA\\u5e38\\u89c4\\u8d5b\",\"livelist\":\"\",\"create_time\":\"2019-11-27 01:14\",\"litpic\":\"\",\"file\":\"\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\",\"content\":\"<p><br><\\/p>\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788885');
INSERT INTO `tp_admin_log` VALUES ('581', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574788888');
INSERT INTO `tp_admin_log` VALUES ('582', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789238');
INSERT INTO `tp_admin_log` VALUES ('583', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789240');
INSERT INTO `tp_admin_log` VALUES ('584', '1', 'admin', '/admin/live/add/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789246');
INSERT INTO `tp_admin_log` VALUES ('585', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789316');
INSERT INTO `tp_admin_log` VALUES ('586', '1', 'admin', '/admin/live/add/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789319');
INSERT INTO `tp_admin_log` VALUES ('587', '1', 'admin', '/admin/index/upload.html', '', '{\"id\":\"WU_FILE_0\",\"name\":\"281960_03083238621.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Wed Nov 27 2019 01:29:23 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"34820\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789371');
INSERT INTO `tp_admin_log` VALUES ('588', '1', 'admin', '/admin/live/add.html', '', '{\"catid\":\"23\",\"title\":\"11\\u670826\\u65e5 NBA\\u5e38\\u89c4\\u8d5b \\u9b54\\u672fvs\\u6d3b\\u585e \\u5f55\\u50cf\",\"shorttitle\":\"\",\"keywords\":\"\",\"description\":\"\",\"livetime\":\"2019-11-27 01:28:39\",\"livetype\":\"\",\"livelist\":\"\",\"create_time\":\"2019-11-27 01:28:39\",\"litpic\":\"\\/uploads\\/20191127\\/bdfb487b5f6ac5114c693f5ee17241fc.jpg\",\"file\":\"\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\",\"content\":\"<p><br><\\/p>\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789374');
INSERT INTO `tp_admin_log` VALUES ('589', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789377');
INSERT INTO `tp_admin_log` VALUES ('590', '1', 'admin', '/admin/live/add/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789379');
INSERT INTO `tp_admin_log` VALUES ('591', '1', 'admin', '/admin/index/upload.html', '', '{\"id\":\"WU_FILE_0\",\"name\":\"201911261032133920.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Wed Nov 27 2019 01:30:01 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"27123\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789405');
INSERT INTO `tp_admin_log` VALUES ('592', '1', 'admin', '/admin/live/add.html', '', '{\"catid\":\"23\",\"title\":\"11\\u670826\\u65e5 NBA\\u5e38\\u89c4\\u8d5b \\u9ec4\\u8702vs\\u70ed\\u706b \\u5168\\u573a\\u5f55\\u50cf\",\"shorttitle\":\"\",\"keywords\":\"\",\"description\":\"\",\"livetime\":\"2019-11-27 01:29:39\",\"livetype\":\"\",\"livelist\":\"\",\"create_time\":\"2019-11-27 01:29:39\",\"litpic\":\"\\/uploads\\/20191127\\/d4c5246a3655ae40f1935ae98a1210f8.jpg\",\"file\":\"\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\",\"content\":\"<p><br><\\/p>\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789408');
INSERT INTO `tp_admin_log` VALUES ('593', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789409');
INSERT INTO `tp_admin_log` VALUES ('594', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789436');
INSERT INTO `tp_admin_log` VALUES ('595', '1', 'admin', '/admin/live/index/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789437');
INSERT INTO `tp_admin_log` VALUES ('596', '1', 'admin', '/admin/live/add/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789439');
INSERT INTO `tp_admin_log` VALUES ('597', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789451');
INSERT INTO `tp_admin_log` VALUES ('598', '1', 'admin', '/admin/category/edit/id/24.html', '[栏目管理] -> [栏目列表] -> [操作-修改]', '{\"id\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789457');
INSERT INTO `tp_admin_log` VALUES ('599', '1', 'admin', '/admin/category/editpost.html', '[栏目管理] -> [栏目列表] -> [操作-修改保存]', '{\"id\":\"24\",\"moduleid\":\"26\",\"template_list\":\"live_list.html\",\"template_show\":\"live_show.html\",\"parentid\":\"20\",\"catname\":\"\\u65b0\\u95fb\",\"enname\":\"xinwen\",\"catdir\":\"xinwen\",\"image\":\"\",\"file\":\"\",\"icoimage\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"is_next\":\"0\",\"is_blank\":\"0\",\"pagesize\":\"0\",\"url\":\"\",\"sort\":\"50\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789466');
INSERT INTO `tp_admin_log` VALUES ('600', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789468');
INSERT INTO `tp_admin_log` VALUES ('601', '1', 'admin', '/admin/article/index/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789470');
INSERT INTO `tp_admin_log` VALUES ('602', '1', 'admin', '/admin/article/add/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789471');
INSERT INTO `tp_admin_log` VALUES ('603', '1', 'admin', '/admin/module/index.html', '[模型管理] -> [模型列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789485');
INSERT INTO `tp_admin_log` VALUES ('604', '1', 'admin', '/admin/module/field/id/26.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"26\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789488');
INSERT INTO `tp_admin_log` VALUES ('605', '1', 'admin', '/admin/module/fieldedit/moduleid/26/id/2.html', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-修改]', '{\"moduleid\":\"26\",\"id\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789491');
INSERT INTO `tp_admin_log` VALUES ('606', '1', 'admin', '/admin/module/fieldaddpost.html?isajax=1&moduleid=26&type=title&name=title', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-添加保存]', '{\"isajax\":\"1\",\"moduleid\":\"26\",\"type\":\"title\",\"name\":\"title\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789491');
INSERT INTO `tp_admin_log` VALUES ('607', '1', 'admin', '/admin/module/fieldeditpost.html', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-修改保存]', '{\"id\":\"2\",\"oldfield\":\"title\",\"type\":\"title\",\"moduleid\":\"26\",\"field\":\"title\",\"name\":\"\\u6807\\u9898\",\"required\":\"1\",\"minlength\":\"1\",\"maxlength\":\"255\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789500');
INSERT INTO `tp_admin_log` VALUES ('608', '1', 'admin', '/admin/module/field/id/26.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"26\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789501');
INSERT INTO `tp_admin_log` VALUES ('609', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789504');
INSERT INTO `tp_admin_log` VALUES ('610', '1', 'admin', '/admin/article/index/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789508');
INSERT INTO `tp_admin_log` VALUES ('611', '1', 'admin', '/admin/article/add/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789509');
INSERT INTO `tp_admin_log` VALUES ('612', '1', 'admin', '/admin/article/add.html', '', '{\"catid\":\"24\",\"title\":\"\\u963f\\u5fb7\\u5df4\\u7ea621+13+5 \\u5df4\\u7279\\u52d221+7 \\u7f57\\u9f50\\u5c1419+9 \\u70ed\\u706b\\u9001\\u9ec4\\u8702\\u4e94\\u8fde\\u8d25\",\"author\":\"\",\"source\":\"\",\"summary\":\"\",\"image\":\"\",\"file\":\"\",\"download\":\"\",\"create_time\":\"2019-11-27 01:31:49\",\"status\":\"1\",\"hits\":\"\",\"sort\":\"100\",\"template\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789585');
INSERT INTO `tp_admin_log` VALUES ('613', '1', 'admin', '/admin/article/index/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789586');
INSERT INTO `tp_admin_log` VALUES ('614', '1', 'admin', '/admin/article/add/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789589');
INSERT INTO `tp_admin_log` VALUES ('615', '1', 'admin', '/admin/article/add.html', '', '{\"catid\":\"24\",\"title\":\"\\u4e01\\u5a01\\u8fea\\u7edd\\u6740 \\u963f\\u4f2622+21 \\u5357\\u65af20+13 \\u7bee\\u7f51\\u9669\\u80dc\\u9a91\\u58eb\\u53d6\\u56db\\u8fde\\u80dc\",\"author\":\"\",\"source\":\"\",\"summary\":\"\",\"image\":\"\",\"file\":\"\",\"download\":\"\",\"create_time\":\"2019-11-27 01:33:09\",\"status\":\"1\",\"hits\":\"\",\"sort\":\"100\",\"template\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789611');
INSERT INTO `tp_admin_log` VALUES ('616', '1', 'admin', '/admin/article/index/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789612');
INSERT INTO `tp_admin_log` VALUES ('617', '1', 'admin', '/admin/article/add/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789621');
INSERT INTO `tp_admin_log` VALUES ('618', '1', 'admin', '/admin/article/add.html', '', '{\"catid\":\"24\",\"title\":\"\\u80af\\u7eb3\\u5fb720+7 \\u683c\\u91cc\\u82ac17+5 \\u5bcc\\u5c14\\u832816+4 \\u6d3b\\u585e\\u4e3b\\u573a\\u51fb\\u9000\\u9b54\\u672f\",\"author\":\"\",\"source\":\"\",\"summary\":\"\",\"image\":\"\",\"file\":\"\",\"download\":\"\",\"create_time\":\"2019-11-27 01:33:41\",\"status\":\"1\",\"hits\":\"\",\"sort\":\"100\",\"template\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789631');
INSERT INTO `tp_admin_log` VALUES ('619', '1', 'admin', '/admin/article/index/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789635');
INSERT INTO `tp_admin_log` VALUES ('620', '1', 'admin', '/admin/article/add/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789651');
INSERT INTO `tp_admin_log` VALUES ('621', '1', 'admin', '/admin/article/add.html', '', '{\"catid\":\"24\",\"title\":\"\\u6c83\\u4f2626\\u5206 \\u6770\\u514b\\u900a28\\u5206 \\u6b65\\u884c\\u80056\\u4eba\\u4e0a\\u53cc\\u8f7b\\u53d6\\u7070\\u718a\\u8fce3\\u8fde\\u80dc\",\"author\":\"\",\"source\":\"\",\"summary\":\"\",\"image\":\"\",\"file\":\"\",\"download\":\"\",\"create_time\":\"2019-11-27 01:34:11\",\"status\":\"1\",\"hits\":\"\",\"sort\":\"100\",\"template\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789661');
INSERT INTO `tp_admin_log` VALUES ('622', '1', 'admin', '/admin/article/index/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789665');
INSERT INTO `tp_admin_log` VALUES ('623', '1', 'admin', '/admin/article/add/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789679');
INSERT INTO `tp_admin_log` VALUES ('624', '1', 'admin', '/admin/article/add.html', '', '{\"catid\":\"24\",\"title\":\"\\u5854\\u56fe\\u59c620+6 \\u5e0c\\u5c14\\u5fb711\\u8bb0\\u4e09\\u5206\\u780d41\\u5206 \\u7eff\\u519b\\u9669\\u80dc\\u56fd\\u738b\\u7ed3\\u675f\\u8fde\\u8d25\",\"author\":\"\",\"source\":\"\",\"summary\":\"\",\"image\":\"\",\"file\":\"\",\"download\":\"\",\"create_time\":\"2019-11-27 01:34:39\",\"status\":\"1\",\"hits\":\"\",\"sort\":\"100\",\"template\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789688');
INSERT INTO `tp_admin_log` VALUES ('625', '1', 'admin', '/admin/article/index/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789692');
INSERT INTO `tp_admin_log` VALUES ('626', '1', 'admin', '/admin/article/add/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789698');
INSERT INTO `tp_admin_log` VALUES ('627', '1', 'admin', '/admin/article/add.html', '', '{\"catid\":\"24\",\"title\":\"\\u897f\\u4e9a\\u5361\\u59c625+7 \\u8303\\u5f17\\u91cc\\u727924+8 \\u6069\\u6bd4\\u5fb711\\u6295\\u5168\\u5931 \\u731b\\u9f99\\u9669\\u80dc76\\u4eba\",\"author\":\"\",\"source\":\"\",\"summary\":\"\",\"image\":\"\",\"file\":\"\",\"download\":\"\",\"create_time\":\"2019-11-27 01:34:58\",\"status\":\"1\",\"hits\":\"\",\"sort\":\"100\",\"template\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789708');
INSERT INTO `tp_admin_log` VALUES ('628', '1', 'admin', '/admin/article/index/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789712');
INSERT INTO `tp_admin_log` VALUES ('629', '1', 'admin', '/admin/article/add/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789719');
INSERT INTO `tp_admin_log` VALUES ('630', '1', 'admin', '/admin/article/add.html', '', '{\"catid\":\"24\",\"title\":\"\\u5510\\u65af28+13+8 \\u5a01\\u91d1\\u65af25\\u5206 \\u676837+9 \\u68ee\\u6797\\u72fc\\u9001\\u8001\\u9e707\\u8fde\\u8d25\",\"author\":\"\",\"source\":\"\",\"summary\":\"\",\"image\":\"\",\"file\":\"\",\"download\":\"\",\"create_time\":\"2019-11-27 01:35:19\",\"status\":\"1\",\"hits\":\"\",\"sort\":\"100\",\"template\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789728');
INSERT INTO `tp_admin_log` VALUES ('631', '1', 'admin', '/admin/article/index/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789732');
INSERT INTO `tp_admin_log` VALUES ('632', '1', 'admin', '/admin/article/add/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789745');
INSERT INTO `tp_admin_log` VALUES ('633', '1', 'admin', '/admin/article/add.html', '', '{\"catid\":\"24\",\"title\":\"\\u5b89\\u4e1c\\u5c3c25+8 \\u5229\\u62c9\\u5fb713+12 \\u5f00\\u62d3\\u8005\\u5927\\u80dc\\u516c\\u725b\\u7ed3\\u675f4\\u8fde\\u8d25\",\"author\":\"\",\"source\":\"\",\"summary\":\"\",\"image\":\"\",\"file\":\"\",\"download\":\"\",\"create_time\":\"2019-11-27 01:35:45\",\"status\":\"1\",\"hits\":\"\",\"sort\":\"100\",\"template\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789771');
INSERT INTO `tp_admin_log` VALUES ('634', '1', 'admin', '/admin/article/index/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789775');
INSERT INTO `tp_admin_log` VALUES ('635', '1', 'admin', '/admin/article/add/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789781');
INSERT INTO `tp_admin_log` VALUES ('636', '1', 'admin', '/admin/article/add.html', '', '{\"catid\":\"24\",\"title\":\"\\u5b57\\u6bcd\\u54e550+14+6 \\u535a\\u626c24\\u5206 \\u96c4\\u9e7f\\u4e3b\\u573a\\u529b\\u514b\\u7235\\u58eb\\u53d6\\u5f97\\u516b\\u8fde\\u80dc\",\"author\":\"\",\"source\":\"\",\"summary\":\"\",\"image\":\"\",\"file\":\"\",\"download\":\"\",\"create_time\":\"2019-11-27 01:36:21\",\"status\":\"1\",\"hits\":\"\",\"sort\":\"100\",\"template\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789791');
INSERT INTO `tp_admin_log` VALUES ('637', '1', 'admin', '/admin/article/index/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789795');
INSERT INTO `tp_admin_log` VALUES ('638', '1', 'admin', '/admin/article/add/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789811');
INSERT INTO `tp_admin_log` VALUES ('639', '1', 'admin', '/admin/article/add.html', '', '{\"catid\":\"24\",\"title\":\"\\u8a79\\u59c6\\u65af33+14 \\u6234\\u7ef4\\u65af19+12+6 \\u963f\\u5fb730+5 \\u6e56\\u4eba\\u529b\\u514b\\u9a6c\\u523a\\u8fce\\u516b\\u8fde\\u80dc\",\"author\":\"\",\"source\":\"\",\"summary\":\"\",\"image\":\"\",\"file\":\"\",\"download\":\"\",\"create_time\":\"2019-11-27 01:36:51\",\"status\":\"1\",\"hits\":\"\",\"sort\":\"100\",\"template\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789820');
INSERT INTO `tp_admin_log` VALUES ('640', '1', 'admin', '/admin/article/index/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789824');
INSERT INTO `tp_admin_log` VALUES ('641', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574789884');
INSERT INTO `tp_admin_log` VALUES ('642', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574790252');
INSERT INTO `tp_admin_log` VALUES ('643', '1', 'admin', '/admin/live/add/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574790253');
INSERT INTO `tp_admin_log` VALUES ('644', '1', 'admin', '/admin/live/add.html', '', '{\"catid\":\"21\",\"title\":\"11\\u670827\\u65e5 10:00 NBA\\u5e38\\u89c4\\u8d5b \\u5947\\u624dvs\\u6398\\u91d1\",\"shorttitle\":\"\\u5947\\u624d - \\u6398\\u91d1\",\"keywords\":\"\",\"description\":\"\",\"livetime\":\"2019-11-27 10:00:13\",\"livetype\":\"NBA\\u5e38\\u89c4\\u8d5b\",\"livelist\":\"\",\"create_time\":\"2019-11-27 01:44:13\",\"litpic\":\"\",\"file\":\"\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\",\"content\":\"<p><br><\\/p>\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574790282');
INSERT INTO `tp_admin_log` VALUES ('645', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574790283');
INSERT INTO `tp_admin_log` VALUES ('646', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574871393');
INSERT INTO `tp_admin_log` VALUES ('647', '1', 'admin', '/admin/index/index.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574871396');
INSERT INTO `tp_admin_log` VALUES ('648', '1', 'admin', '/admin/index/main.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574871396');
INSERT INTO `tp_admin_log` VALUES ('649', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574871398');
INSERT INTO `tp_admin_log` VALUES ('650', '1', 'admin', '/admin/category/edit/id/20.html', '[栏目管理] -> [栏目列表] -> [操作-修改]', '{\"id\":\"20\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574871405');
INSERT INTO `tp_admin_log` VALUES ('651', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574871410');
INSERT INTO `tp_admin_log` VALUES ('652', '1', 'admin', '/admin/category/edit/id/21.html', '[栏目管理] -> [栏目列表] -> [操作-修改]', '{\"id\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574871689');
INSERT INTO `tp_admin_log` VALUES ('653', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574871692');
INSERT INTO `tp_admin_log` VALUES ('654', '1', 'admin', '/admin/category/edit/id/23.html', '[栏目管理] -> [栏目列表] -> [操作-修改]', '{\"id\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574873175');
INSERT INTO `tp_admin_log` VALUES ('655', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574873182');
INSERT INTO `tp_admin_log` VALUES ('656', '1', 'admin', '/admin/category/edit/id/23.html', '[栏目管理] -> [栏目列表] -> [操作-修改]', '{\"id\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574873185');
INSERT INTO `tp_admin_log` VALUES ('657', '1', 'admin', '/admin/category/editpost.html', '[栏目管理] -> [栏目列表] -> [操作-修改保存]', '{\"id\":\"23\",\"moduleid\":\"28\",\"template_list\":\"video_list.html\",\"template_show\":\"live_show.html\",\"parentid\":\"20\",\"catname\":\"\\u5f55\\u50cf\",\"enname\":\"luxiang\",\"catdir\":\"luxiang\",\"image\":\"\",\"file\":\"\",\"icoimage\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"is_next\":\"0\",\"is_blank\":\"0\",\"pagesize\":\"0\",\"url\":\"\",\"sort\":\"50\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574873215');
INSERT INTO `tp_admin_log` VALUES ('658', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574873218');
INSERT INTO `tp_admin_log` VALUES ('659', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574873224');
INSERT INTO `tp_admin_log` VALUES ('660', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574873226');
INSERT INTO `tp_admin_log` VALUES ('661', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574873342');
INSERT INTO `tp_admin_log` VALUES ('662', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574873364');
INSERT INTO `tp_admin_log` VALUES ('663', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574873365');
INSERT INTO `tp_admin_log` VALUES ('664', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574873913');
INSERT INTO `tp_admin_log` VALUES ('665', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574873915');
INSERT INTO `tp_admin_log` VALUES ('666', '1', 'admin', '/admin/category/edit/id/23.html', '[栏目管理] -> [栏目列表] -> [操作-修改]', '{\"id\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574873919');
INSERT INTO `tp_admin_log` VALUES ('667', '1', 'admin', '/admin/category/editpost.html', '[栏目管理] -> [栏目列表] -> [操作-修改保存]', '{\"id\":\"23\",\"moduleid\":\"28\",\"template_list\":\"video_list.html\",\"template_show\":\"live_show.html\",\"parentid\":\"20\",\"catname\":\"\\u5f55\\u50cf\",\"enname\":\"luxiang\",\"catdir\":\"luxiang\",\"image\":\"\",\"file\":\"\",\"icoimage\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"is_next\":\"0\",\"is_blank\":\"0\",\"pagesize\":\"2\",\"url\":\"\",\"sort\":\"50\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574873926');
INSERT INTO `tp_admin_log` VALUES ('668', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574873930');
INSERT INTO `tp_admin_log` VALUES ('669', '1', 'admin', '/admin/category/edit/id/23.html', '[栏目管理] -> [栏目列表] -> [操作-修改]', '{\"id\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874040');
INSERT INTO `tp_admin_log` VALUES ('670', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874043');
INSERT INTO `tp_admin_log` VALUES ('671', '1', 'admin', '/admin/module/index.html', '[模型管理] -> [模型列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874190');
INSERT INTO `tp_admin_log` VALUES ('672', '1', 'admin', '/admin/module/field/id/28.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874192');
INSERT INTO `tp_admin_log` VALUES ('673', '1', 'admin', '/admin/module/index.html', '[模型管理] -> [模型列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874195');
INSERT INTO `tp_admin_log` VALUES ('674', '1', 'admin', '/admin/module/field/id/28.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874201');
INSERT INTO `tp_admin_log` VALUES ('675', '1', 'admin', '/admin/module/fieldadd/moduleid/28.html', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-添加]', '{\"moduleid\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874203');
INSERT INTO `tp_admin_log` VALUES ('676', '1', 'admin', '/admin/module/fieldaddpost.html?isajax=1&moduleid=28&type=select', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-添加保存]', '{\"isajax\":\"1\",\"moduleid\":\"28\",\"type\":\"select\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874235');
INSERT INTO `tp_admin_log` VALUES ('677', '1', 'admin', '/admin/module/fieldaddpost.html', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-添加保存]', '{\"moduleid\":\"28\",\"type\":\"select\",\"field\":\"live_status\",\"name\":\"\\u76f4\\u64ad\\u72b6\\u6001\",\"required\":\"0\",\"minlength\":\"0\",\"maxlength\":\"10\",\"setup\":{\"options\":\"\\u672a\\u5f00\\u59cb|0\\r\\n\\u76f4\\u64ad\\u4e2d|1\\r\\n\\u5df2\\u7ed3\\u675f|2\",\"fieldtype\":\"varchar\",\"default\":\"0\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874321');
INSERT INTO `tp_admin_log` VALUES ('678', '1', 'admin', '/admin/module/field/id/28.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874322');
INSERT INTO `tp_admin_log` VALUES ('679', '1', 'admin', '/admin/module/fieldsort.html', '', '{\"id\":\"121\",\"sort\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874332');
INSERT INTO `tp_admin_log` VALUES ('680', '1', 'admin', '/admin/module/index.html', '[模型管理] -> [模型列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874333');
INSERT INTO `tp_admin_log` VALUES ('681', '1', 'admin', '/admin/module/field/id/28.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874335');
INSERT INTO `tp_admin_log` VALUES ('682', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874344');
INSERT INTO `tp_admin_log` VALUES ('683', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874347');
INSERT INTO `tp_admin_log` VALUES ('684', '1', 'admin', '/admin/live/edit/catid/21/id/1.html', '', '{\"catid\":\"21\",\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874351');
INSERT INTO `tp_admin_log` VALUES ('685', '1', 'admin', '/admin/live/edit.html', '', '{\"id\":\"1\",\"catid\":\"21\",\"title\":\"11\\u670826\\u65e5 09:30 NBA\\u5e38\\u89c4\\u8d5b \\u6e56\\u4ebavs\\u9a6c\\u523a\",\"shorttitle\":\"\\u6e56\\u4ebavs\\u9a6c\\u523a\",\"keywords\":\"NBA\\u5e38\\u89c4\\u8d5b,\\u6e56\\u4eba,\\u9a6c\\u523a\",\"description\":\"\",\"livetime\":\"2019-11-26 09:30\",\"livetype\":\"NBA\\u5e38\\u89c4\\u8d5b\",\"livelist\":\"QQ\\u76f4\\u64ad|https:\\/\\/sports.qq.com\\/kbsweb\\/game.htm?mid=100000:54431852\",\"live_status\":\"2\",\"create_time\":\"2019-11-26 11:37\",\"litpic\":\"\",\"file\":\"\",\"status\":\"1\",\"hits\":\"34\",\"template\":\"\",\"content\":\"<p><br><\\/p>\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874362');
INSERT INTO `tp_admin_log` VALUES ('686', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874364');
INSERT INTO `tp_admin_log` VALUES ('687', '1', 'admin', '/admin/live/edit/catid/21/id/4.html', '', '{\"catid\":\"21\",\"id\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874366');
INSERT INTO `tp_admin_log` VALUES ('688', '1', 'admin', '/admin/live/edit.html', '', '{\"id\":\"4\",\"catid\":\"21\",\"title\":\"11\\u670827\\u65e5 09:30 NBA\\u5e38\\u89c4\\u8d5b \\u5feb\\u8239vs\\u72ec\\u884c\\u4fa0\",\"shorttitle\":\"\\u5feb\\u8239 - \\u72ec\\u884c\\u4fa0\",\"keywords\":\"\",\"description\":\"\",\"livetime\":\"2019-11-27 09:30\",\"livetype\":\"NBA\\u5e38\\u89c4\\u8d5b\",\"livelist\":\"\",\"live_status\":\"2\",\"create_time\":\"2019-11-27 01:10\",\"litpic\":\"\",\"file\":\"\",\"status\":\"1\",\"hits\":\"2\",\"template\":\"\",\"content\":\"<p><br><\\/p>\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874371');
INSERT INTO `tp_admin_log` VALUES ('689', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874372');
INSERT INTO `tp_admin_log` VALUES ('690', '1', 'admin', '/admin/live/edit/catid/21/id/5.html', '', '{\"catid\":\"21\",\"id\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874375');
INSERT INTO `tp_admin_log` VALUES ('691', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574874973');
INSERT INTO `tp_admin_log` VALUES ('692', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876569');
INSERT INTO `tp_admin_log` VALUES ('693', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876572');
INSERT INTO `tp_admin_log` VALUES ('694', '1', 'admin', '/admin/category/edit/id/23.html', '[栏目管理] -> [栏目列表] -> [操作-修改]', '{\"id\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876574');
INSERT INTO `tp_admin_log` VALUES ('695', '1', 'admin', '/admin/category/editpost.html', '[栏目管理] -> [栏目列表] -> [操作-修改保存]', '{\"id\":\"23\",\"moduleid\":\"28\",\"template_list\":\"video_list.html\",\"template_show\":\"video_show.html\",\"parentid\":\"20\",\"catname\":\"\\u5f55\\u50cf\",\"enname\":\"luxiang\",\"catdir\":\"luxiang\",\"image\":\"\",\"file\":\"\",\"icoimage\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"is_next\":\"0\",\"is_blank\":\"0\",\"pagesize\":\"2\",\"url\":\"\",\"sort\":\"50\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876578');
INSERT INTO `tp_admin_log` VALUES ('696', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876580');
INSERT INTO `tp_admin_log` VALUES ('697', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876884');
INSERT INTO `tp_admin_log` VALUES ('698', '1', 'admin', '/admin/live/edit/catid/23/id/2.html', '', '{\"catid\":\"23\",\"id\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876902');
INSERT INTO `tp_admin_log` VALUES ('699', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876908');
INSERT INTO `tp_admin_log` VALUES ('700', '1', 'admin', '/admin/live/add/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876910');
INSERT INTO `tp_admin_log` VALUES ('701', '1', 'admin', '/admin/live/add.html', '', '{\"catid\":\"23\",\"title\":\"11\\u670827\\u65e5 NBA\\u5e38\\u89c4\\u8d5b \\u5feb\\u8239vs\\u72ec\\u884c\\u4fa0 \\u5f55\\u50cf\",\"shorttitle\":\"\",\"keywords\":\"\",\"description\":\"\",\"livetime\":\"2019-11-28 01:48:30\",\"livetype\":\"\",\"livelist\":\"\",\"live_status\":\"0\",\"create_time\":\"2019-11-28 01:48:30\",\"litpic\":\"\",\"file\":\"\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\",\"content\":\"<p><br><\\/p>\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876917');
INSERT INTO `tp_admin_log` VALUES ('702', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876918');
INSERT INTO `tp_admin_log` VALUES ('703', '1', 'admin', '/admin/live/add/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876920');
INSERT INTO `tp_admin_log` VALUES ('704', '1', 'admin', '/admin/live/add.html', '', '{\"catid\":\"23\",\"title\":\"11\\u670827\\u65e5 NBA\\u5e38\\u89c4\\u8d5b \\u5947\\u624dvs\\u6398\\u91d1 \\u5f55\\u50cf\",\"shorttitle\":\"\",\"keywords\":\"\",\"description\":\"\",\"livetime\":\"2019-11-28 01:48:40\",\"livetype\":\"\",\"livelist\":\"\",\"live_status\":\"0\",\"create_time\":\"2019-11-28 01:48:40\",\"litpic\":\"\",\"file\":\"\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\",\"content\":\"<p><br><\\/p>\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876932');
INSERT INTO `tp_admin_log` VALUES ('705', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876936');
INSERT INTO `tp_admin_log` VALUES ('706', '1', 'admin', '/admin/live/edit/catid/23/id/10.html', '', '{\"catid\":\"23\",\"id\":\"10\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876942');
INSERT INTO `tp_admin_log` VALUES ('707', '1', 'admin', '/admin/index/upload.html', '', '{\"id\":\"WU_FILE_0\",\"name\":\"809890369444642847.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Thu Nov 28 2019 01:49:11 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"216779\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876976');
INSERT INTO `tp_admin_log` VALUES ('708', '1', 'admin', '/admin/live/edit.html', '', '{\"id\":\"10\",\"catid\":\"23\",\"title\":\"11\\u670827\\u65e5 NBA\\u5e38\\u89c4\\u8d5b \\u5feb\\u8239vs\\u72ec\\u884c\\u4fa0 \\u5f55\\u50cf\",\"shorttitle\":\"\",\"keywords\":\"\",\"description\":\"\",\"livetime\":\"2019-11-28 01:48\",\"livetype\":\"\",\"livelist\":\"\",\"live_status\":\"0\",\"create_time\":\"2019-11-28 01:48\",\"litpic\":\"\\/uploads\\/20191128\\/08d49048a1b93ee0857d46992c7afd36.jpg\",\"file\":\"\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\",\"content\":\"<p><br><\\/p>\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876980');
INSERT INTO `tp_admin_log` VALUES ('709', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876981');
INSERT INTO `tp_admin_log` VALUES ('710', '1', 'admin', '/admin/live/edit/catid/23/id/11.html', '', '{\"catid\":\"23\",\"id\":\"11\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876984');
INSERT INTO `tp_admin_log` VALUES ('711', '1', 'admin', '/admin/index/upload.html', '', '{\"id\":\"WU_FILE_0\",\"name\":\"201911271150217033.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Thu Nov 28 2019 01:49:18 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"125216\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876987');
INSERT INTO `tp_admin_log` VALUES ('712', '1', 'admin', '/admin/live/edit.html', '', '{\"id\":\"11\",\"catid\":\"23\",\"title\":\"11\\u670827\\u65e5 NBA\\u5e38\\u89c4\\u8d5b \\u5947\\u624dvs\\u6398\\u91d1 \\u5f55\\u50cf\",\"shorttitle\":\"\",\"keywords\":\"\",\"description\":\"\",\"livetime\":\"2019-11-28 01:48\",\"livetype\":\"\",\"livelist\":\"\",\"live_status\":\"0\",\"create_time\":\"2019-11-28 01:48\",\"litpic\":\"\\/uploads\\/20191128\\/324632104f3a8482f9f99a4a60dcb392.jpg\",\"file\":\"\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\",\"content\":\"<p><br><\\/p>\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876990');
INSERT INTO `tp_admin_log` VALUES ('713', '1', 'admin', '/admin/live/index/catid/23.html', '', '{\"catid\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574876994');
INSERT INTO `tp_admin_log` VALUES ('714', '1', 'admin', '/admin/index/index.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574999872');
INSERT INTO `tp_admin_log` VALUES ('715', '1', 'admin', '/admin/index/main.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574999872');
INSERT INTO `tp_admin_log` VALUES ('716', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574999874');
INSERT INTO `tp_admin_log` VALUES ('717', '1', 'admin', '/admin/category/edit/id/20.html', '[栏目管理] -> [栏目列表] -> [操作-修改]', '{\"id\":\"20\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574999880');
INSERT INTO `tp_admin_log` VALUES ('718', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574999907');
INSERT INTO `tp_admin_log` VALUES ('719', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574999911');
INSERT INTO `tp_admin_log` VALUES ('720', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574999913');
INSERT INTO `tp_admin_log` VALUES ('721', '1', 'admin', '/admin/live/index/catid/20.html', '', '{\"catid\":\"20\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574999915');
INSERT INTO `tp_admin_log` VALUES ('722', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574999917');
INSERT INTO `tp_admin_log` VALUES ('723', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574999919');
INSERT INTO `tp_admin_log` VALUES ('724', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574999921');
INSERT INTO `tp_admin_log` VALUES ('725', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574999934');
INSERT INTO `tp_admin_log` VALUES ('726', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574999935');
INSERT INTO `tp_admin_log` VALUES ('727', '1', 'admin', '/admin/category/edit/id/21.html', '[栏目管理] -> [栏目列表] -> [操作-修改]', '{\"id\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1574999937');
INSERT INTO `tp_admin_log` VALUES ('728', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575000175');
INSERT INTO `tp_admin_log` VALUES ('729', '1', 'admin', '/admin/category/edit/id/23.html', '[栏目管理] -> [栏目列表] -> [操作-修改]', '{\"id\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575000178');
INSERT INTO `tp_admin_log` VALUES ('730', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575000196');
INSERT INTO `tp_admin_log` VALUES ('731', '1', 'admin', '/admin/index/index.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575122860');
INSERT INTO `tp_admin_log` VALUES ('732', '1', 'admin', '/admin/index/main.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575122860');
INSERT INTO `tp_admin_log` VALUES ('733', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575122862');
INSERT INTO `tp_admin_log` VALUES ('734', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575122865');
INSERT INTO `tp_admin_log` VALUES ('735', '1', 'admin', '/admin/live/edit/catid/21/id/9.html', '', '{\"catid\":\"21\",\"id\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575122867');
INSERT INTO `tp_admin_log` VALUES ('736', '1', 'admin', '/admin/live/edit.html', '', '{\"id\":\"9\",\"catid\":\"21\",\"title\":\"11\\u670827\\u65e5 10:00 NBA\\u5e38\\u89c4\\u8d5b \\u5947\\u624dvs\\u6398\\u91d1\",\"shorttitle\":\"\\u5947\\u624d - \\u6398\\u91d1\",\"keywords\":\"\",\"description\":\"\",\"livetime\":\"2019-11-27 10:00\",\"livetype\":\"NBA\\u5e38\\u89c4\\u8d5b\",\"livelist\":\"\",\"live_status\":\"2\",\"create_time\":\"2019-11-27 01:44\",\"litpic\":\"\",\"file\":\"\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\",\"content\":\"<p><br><\\/p>\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575122875');
INSERT INTO `tp_admin_log` VALUES ('737', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575122878');
INSERT INTO `tp_admin_log` VALUES ('738', '1', 'admin', '/admin/live/edit/catid/21/id/6.html', '', '{\"catid\":\"21\",\"id\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575122881');
INSERT INTO `tp_admin_log` VALUES ('739', '1', 'admin', '/admin/live/edit.html', '', '{\"id\":\"6\",\"catid\":\"21\",\"title\":\"11\\u670829\\u65e5 19:35 CBA\\u5e38\\u89c4\\u8d5b \\u56db\\u5dddvs\\u8fbd\\u5b81\",\"shorttitle\":\"\\u56db\\u5ddd - \\u8fbd\\u5b81\",\"keywords\":\"\",\"description\":\"\",\"livetime\":\"2019-11-29 19:35\",\"livetype\":\"CBA\\u5e38\\u89c4\\u8d5b\",\"livelist\":\"\",\"live_status\":\"2\",\"create_time\":\"2019-11-27 01:14\",\"litpic\":\"\",\"file\":\"\",\"status\":\"1\",\"hits\":\"2\",\"template\":\"\",\"content\":\"<p><br><\\/p>\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575122885');
INSERT INTO `tp_admin_log` VALUES ('740', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575122888');
INSERT INTO `tp_admin_log` VALUES ('741', '1', 'admin', '/admin/live/add/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575122953');
INSERT INTO `tp_admin_log` VALUES ('742', '1', 'admin', '/admin/live/add.html', '', '{\"catid\":\"21\",\"title\":\"12\\u670801\\u65e5 06:00 NBA\\u5e38\\u89c4\\u8d5b \\u6398\\u91d1vs\\u56fd\\u738b\",\"shorttitle\":\"\\u6398\\u91d1vs\\u56fd\\u738b\",\"keywords\":\"\",\"description\":\"\",\"livetime\":\"2019-12-01 06:00:13\",\"livetype\":\"NBA\\u5e38\\u89c4\\u8d5b\",\"livelist\":\"\",\"live_status\":\"0\",\"create_time\":\"2019-11-30 22:09:13\",\"litpic\":\"\",\"file\":\"\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\",\"content\":\"<p><br><\\/p>\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575122980');
INSERT INTO `tp_admin_log` VALUES ('743', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575122983');
INSERT INTO `tp_admin_log` VALUES ('744', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123047');
INSERT INTO `tp_admin_log` VALUES ('745', '1', 'admin', '/admin/article/index/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123050');
INSERT INTO `tp_admin_log` VALUES ('746', '1', 'admin', '/admin/article/edit/catid/24/id/30.html', '', '{\"catid\":\"24\",\"id\":\"30\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123053');
INSERT INTO `tp_admin_log` VALUES ('747', '1', 'admin', '/admin/article/index/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123059');
INSERT INTO `tp_admin_log` VALUES ('748', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123061');
INSERT INTO `tp_admin_log` VALUES ('749', '1', 'admin', '/admin/category/edit/id/24.html', '[栏目管理] -> [栏目列表] -> [操作-修改]', '{\"id\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123063');
INSERT INTO `tp_admin_log` VALUES ('750', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123103');
INSERT INTO `tp_admin_log` VALUES ('751', '1', 'admin', '/admin/category/edit/id/24.html', '[栏目管理] -> [栏目列表] -> [操作-修改]', '{\"id\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123104');
INSERT INTO `tp_admin_log` VALUES ('752', '1', 'admin', '/admin/category/editpost.html', '[栏目管理] -> [栏目列表] -> [操作-修改保存]', '{\"id\":\"24\",\"moduleid\":\"26\",\"template_list\":\"article_list.html\",\"template_show\":\"article_show.html\",\"parentid\":\"20\",\"catname\":\"\\u65b0\\u95fb\",\"enname\":\"xinwen\",\"catdir\":\"xinwen\",\"image\":\"\",\"file\":\"\",\"icoimage\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"is_next\":\"0\",\"is_blank\":\"0\",\"pagesize\":\"0\",\"url\":\"\",\"sort\":\"50\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123113');
INSERT INTO `tp_admin_log` VALUES ('753', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123117');
INSERT INTO `tp_admin_log` VALUES ('754', '1', 'admin', '/admin/article/index/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123118');
INSERT INTO `tp_admin_log` VALUES ('755', '1', 'admin', '/admin/article/edit/catid/24/id/30.html', '', '{\"catid\":\"24\",\"id\":\"30\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123147');
INSERT INTO `tp_admin_log` VALUES ('756', '1', 'admin', '/admin/module/index.html', '[模型管理] -> [模型列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123166');
INSERT INTO `tp_admin_log` VALUES ('757', '1', 'admin', '/admin/module/field/id/26.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"26\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123169');
INSERT INTO `tp_admin_log` VALUES ('758', '1', 'admin', '/admin/module/fieldedit/moduleid/26/id/14.html', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-修改]', '{\"moduleid\":\"26\",\"id\":\"14\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123175');
INSERT INTO `tp_admin_log` VALUES ('759', '1', 'admin', '/admin/module/fieldaddpost.html?isajax=1&moduleid=26&type=images&name=images', '[模型管理] -> [模型列表] -> [模型字段] -> [操作-添加保存]', '{\"isajax\":\"1\",\"moduleid\":\"26\",\"type\":\"images\",\"name\":\"images\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123176');
INSERT INTO `tp_admin_log` VALUES ('760', '1', 'admin', '/admin/module/field/id/26.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"26\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123178');
INSERT INTO `tp_admin_log` VALUES ('761', '1', 'admin', '/admin/module/fieldstate.html', '', '{\"id\":\"14\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123195');
INSERT INTO `tp_admin_log` VALUES ('762', '1', 'admin', '/admin/module/field/id/26.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"26\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123197');
INSERT INTO `tp_admin_log` VALUES ('763', '1', 'admin', '/admin/module/fieldstate.html', '', '{\"id\":\"15\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123205');
INSERT INTO `tp_admin_log` VALUES ('764', '1', 'admin', '/admin/module/field/id/26.html', '[模型管理] -> [模型列表] -> [模型字段]', '{\"id\":\"26\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123209');
INSERT INTO `tp_admin_log` VALUES ('765', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123215');
INSERT INTO `tp_admin_log` VALUES ('766', '1', 'admin', '/admin/article/index/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123217');
INSERT INTO `tp_admin_log` VALUES ('767', '1', 'admin', '/admin/article/edit/catid/24/id/30.html', '', '{\"catid\":\"24\",\"id\":\"30\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123220');
INSERT INTO `tp_admin_log` VALUES ('768', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123232');
INSERT INTO `tp_admin_log` VALUES ('769', '1', 'admin', '/admin/index/clear.html', '', '{\"del\":\"true\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123241');
INSERT INTO `tp_admin_log` VALUES ('770', '1', 'admin', '/admin/index/index.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123242');
INSERT INTO `tp_admin_log` VALUES ('771', '1', 'admin', '/admin/index/main.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123242');
INSERT INTO `tp_admin_log` VALUES ('772', '1', 'admin', '/admin/template/index.html', '[模板管理] -> [模板管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123245');
INSERT INTO `tp_admin_log` VALUES ('773', '1', 'admin', '/admin/template/index/type/css.html', '[模板管理] -> [模板管理]', '{\"type\":\"css\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123252');
INSERT INTO `tp_admin_log` VALUES ('774', '1', 'admin', '/admin/template/index/type/js.html', '[模板管理] -> [模板管理]', '{\"type\":\"js\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123253');
INSERT INTO `tp_admin_log` VALUES ('775', '1', 'admin', '/admin/template/img/type/img.html', '[模板管理] -> [模板管理] -> [媒体文件-列表]', '{\"type\":\"img\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123253');
INSERT INTO `tp_admin_log` VALUES ('776', '1', 'admin', '/admin/template/index/type/html.html', '[模板管理] -> [模板管理]', '{\"type\":\"html\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123255');
INSERT INTO `tp_admin_log` VALUES ('777', '1', 'admin', '/admin/addons/index.html', '[插件管理] -> [插件管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123259');
INSERT INTO `tp_admin_log` VALUES ('778', '1', 'admin', '/admin/addons/config/name/test.html', '[插件管理] -> [插件管理] -> [操作-配置]', '{\"name\":\"test\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123263');
INSERT INTO `tp_admin_log` VALUES ('779', '1', 'admin', '/admin/addons/index.html', '[插件管理] -> [插件管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123265');
INSERT INTO `tp_admin_log` VALUES ('780', '1', 'admin', '/admin/hooks/index.html', '[插件管理] -> [钩子管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123266');
INSERT INTO `tp_admin_log` VALUES ('781', '1', 'admin', '/admin/hooks/edit/id/6.html', '[插件管理] -> [钩子管理] -> [操作-修改]', '{\"id\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123269');
INSERT INTO `tp_admin_log` VALUES ('782', '1', 'admin', '/admin/hooks/index.html', '[插件管理] -> [钩子管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123273');
INSERT INTO `tp_admin_log` VALUES ('783', '1', 'admin', '/admin/template/index.html', '[模板管理] -> [模板管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123275');
INSERT INTO `tp_admin_log` VALUES ('784', '1', 'admin', '/admin/template/edit/file/article_list.html/type/html.html', '[模板管理] -> [模板管理] -> [操作-修改]', '{\"file\":\"article_list.html\",\"type\":\"html\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123277');
INSERT INTO `tp_admin_log` VALUES ('785', '1', 'admin', '/admin/template/index.html', '[模板管理] -> [模板管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123280');
INSERT INTO `tp_admin_log` VALUES ('786', '1', 'admin', '/admin/users/index.html', '[会员管理] -> [会员列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123285');
INSERT INTO `tp_admin_log` VALUES ('787', '1', 'admin', '/admin/users/edit/id/1.html', '[会员管理] -> [会员列表] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123293');
INSERT INTO `tp_admin_log` VALUES ('788', '1', 'admin', '/admin/users/index.html', '[会员管理] -> [会员列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123296');
INSERT INTO `tp_admin_log` VALUES ('789', '1', 'admin', '/admin/users/edit/id/2.html', '[会员管理] -> [会员列表] -> [操作-修改]', '{\"id\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123298');
INSERT INTO `tp_admin_log` VALUES ('790', '1', 'admin', '/admin/users/index.html', '[会员管理] -> [会员列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575123300');
INSERT INTO `tp_admin_log` VALUES ('791', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575124331');
INSERT INTO `tp_admin_log` VALUES ('792', '1', 'admin', '/admin/article/index/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575124334');
INSERT INTO `tp_admin_log` VALUES ('793', '1', 'admin', '/admin/article/edit/catid/24/id/30.html', '', '{\"catid\":\"24\",\"id\":\"30\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575124336');
INSERT INTO `tp_admin_log` VALUES ('794', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575124463');
INSERT INTO `tp_admin_log` VALUES ('795', '1', 'admin', '/admin/article/index/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575124487');
INSERT INTO `tp_admin_log` VALUES ('796', '1', 'admin', '/admin/article/edit/catid/24/id/30.html', '', '{\"catid\":\"24\",\"id\":\"30\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575124493');
INSERT INTO `tp_admin_log` VALUES ('797', '1', 'admin', '/admin/index/upload.html', '', '{\"id\":\"WU_FILE_0\",\"name\":\"201911271150217033.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Thu Nov 28 2019 01:49:18 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"125216\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575124518');
INSERT INTO `tp_admin_log` VALUES ('798', '1', 'admin', '/admin/article/edit.html', '', '{\"id\":\"30\",\"catid\":\"24\",\"title\":\"\\u8a79\\u59c6\\u65af33+14 \\u6234\\u7ef4\\u65af19+12+6 \\u963f\\u5fb730+5 \\u6e56\\u4eba\\u529b\\u514b\\u9a6c\\u523a\\u8fce\\u516b\\u8fde\\u80dc\",\"author\":\"\",\"source\":\"\",\"summary\":\"\",\"image\":\"\\/uploads\\/20191130\\/d503d8179e6de3395078ee93ce149794.jpg\",\"file\":\"\",\"download\":\"\",\"create_time\":\"2019-11-27 01:36\",\"status\":\"1\",\"hits\":\"10\",\"sort\":\"100\",\"template\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575124520');
INSERT INTO `tp_admin_log` VALUES ('799', '1', 'admin', '/admin/article/index/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575124523');
INSERT INTO `tp_admin_log` VALUES ('800', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575125008');
INSERT INTO `tp_admin_log` VALUES ('801', '1', 'admin', '/admin/category/edit/id/20.html', '[栏目管理] -> [栏目列表] -> [操作-修改]', '{\"id\":\"20\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575125029');
INSERT INTO `tp_admin_log` VALUES ('802', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575125720');
INSERT INTO `tp_admin_log` VALUES ('803', '1', 'admin', '/admin/category/edit/id/20.html', '[栏目管理] -> [栏目列表] -> [操作-修改]', '{\"id\":\"20\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575125722');
INSERT INTO `tp_admin_log` VALUES ('804', '1', 'admin', '/admin/category/editpost.html', '[栏目管理] -> [栏目列表] -> [操作-修改保存]', '{\"id\":\"20\",\"moduleid\":\"28\",\"template_list\":\"index_list.html\",\"template_show\":\"article_show.html\",\"parentid\":\"0\",\"catname\":\"\\u7bee\\u7403\",\"enname\":\"lanqiu\",\"catdir\":\"lanqiu\",\"image\":\"\",\"file\":\"\",\"icoimage\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"is_next\":\"0\",\"is_blank\":\"0\",\"pagesize\":\"0\",\"url\":\"\",\"sort\":\"50\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575125728');
INSERT INTO `tp_admin_log` VALUES ('805', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575125732');
INSERT INTO `tp_admin_log` VALUES ('806', '1', 'admin', '/admin/category/edit/id/20.html', '[栏目管理] -> [栏目列表] -> [操作-修改]', '{\"id\":\"20\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575125736');
INSERT INTO `tp_admin_log` VALUES ('807', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575125836');
INSERT INTO `tp_admin_log` VALUES ('808', '1', 'admin', '/admin/debris/index.html', '[网站功能] -> [碎片管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575133004');
INSERT INTO `tp_admin_log` VALUES ('809', '1', 'admin', '/admin/debris/edit/id/1.html', '[网站功能] -> [碎片管理] -> [  操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575133007');
INSERT INTO `tp_admin_log` VALUES ('810', '1', 'admin', '/admin/index/clear.html', '', '{\"del\":\"true\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575133016');
INSERT INTO `tp_admin_log` VALUES ('811', '1', 'admin', '/admin/index/index.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575133017');
INSERT INTO `tp_admin_log` VALUES ('812', '1', 'admin', '/admin/index/main.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575133018');
INSERT INTO `tp_admin_log` VALUES ('813', '1', 'admin', '/admin/ad/index.html', '[网站功能] -> [ 广告管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575133056');
INSERT INTO `tp_admin_log` VALUES ('814', '1', 'admin', '/admin/ad/edit/id/1.html', '[网站功能] -> [ 广告管理] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575133060');
INSERT INTO `tp_admin_log` VALUES ('815', '1', 'admin', '/admin/ad/index.html', '[网站功能] -> [ 广告管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575133074');
INSERT INTO `tp_admin_log` VALUES ('816', '1', 'admin', '/admin/ad/add.html', '[网站功能] -> [ 广告管理] -> [操作-添加]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575133076');
INSERT INTO `tp_admin_log` VALUES ('817', '1', 'admin', '/admin/ad/index.html', '[网站功能] -> [ 广告管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575133079');
INSERT INTO `tp_admin_log` VALUES ('818', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575133609');
INSERT INTO `tp_admin_log` VALUES ('819', '1', 'admin', '/admin/system/system.html', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575133995');
INSERT INTO `tp_admin_log` VALUES ('820', '1', 'admin', '/admin/system/systempost.html', '[系统设置] -> [系统设置] -> [操作-修改保存]', '{\"name\":\"SIYUCMS\",\"logo\":\"\\/uploads\\/20181226\\/a3a4245ec095da4903c6c81123fd480d.png\",\"file\":\"\",\"url\":\"www.xxx.com\",\"bah\":\"\\u8fbdICP\\u590712345678\\u53f7-1\",\"copyright\":\"Copyright \\u00a9 SIYUCMS 2019.All right reserved.Powered by SIYUCMS\",\"address\":\"\\u8fbd\\u5b81\\u7701\\u6c88\\u9633\\u5e02\\u94c1\\u897f\\u533a\\u91cd\\u5de5\\u8857XX\\u8defXX\\u53f71-1-1\",\"contacts\":\"X\\u5148\\u751f\",\"tel\":\"010-8888 7777\",\"mobile_phone\":\"158 4018 8888\",\"fax\":\"010-8888 9999\",\"email\":\"407593529@qq.com\",\"qq\":\"407593529\",\"qrcode\":\"\\/uploads\\/20181226\\/cb7a4c21d6443bc5e7a8d16ac2cbe242.png\",\"title\":\"SIYUCMS \\u5b98\\u7f51\",\"key\":\"SIYUCMS\\uff0cSIYUCMS\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0cphp\\uff0cThinkPHP CMS\\uff0cThinkPHP\\u5efa\\u7ad9\\u7cfb\\u7edf\",\"des\":\"SIYUCMS \\u662f\\u4e00\\u6b3e\\u57fa\\u4e8e ThinkPHP5 + AdminLTE \\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\u3002\\u540e\\u53f0\\u754c\\u9762\\u91c7\\u7528\\u54cd\\u5e94\\u5f0f\\u5e03\\u5c40\\uff0c\\u6e05\\u723d\\u3001\\u6781\\u7b80\\u3001\\u7b80\\u5355\\u3001\\u6613\\u7528\\uff0c\\u662f\\u505a\\u5f00\\u53d1\\u7684\\u6700\\u4f73\\u9009\\u62e9\\u3002\",\"mobile\":\"1\",\"code\":\"0\",\"message_code\":\"1\",\"message_send_mail\":\"0\",\"template\":\"live\",\"html\":\"html\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575134001');
INSERT INTO `tp_admin_log` VALUES ('821', '1', 'admin', '/admin/system/system.html', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575134003');
INSERT INTO `tp_admin_log` VALUES ('822', '1', 'admin', '/admin/index/index.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575218084');
INSERT INTO `tp_admin_log` VALUES ('823', '1', 'admin', '/admin/index/main.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575218084');
INSERT INTO `tp_admin_log` VALUES ('824', '1', 'admin', '/admin/users/index.html', '[会员管理] -> [会员列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575218088');
INSERT INTO `tp_admin_log` VALUES ('825', '1', 'admin', '/admin/users/edit/id/7.html', '[会员管理] -> [会员列表] -> [操作-修改]', '{\"id\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575218092');
INSERT INTO `tp_admin_log` VALUES ('826', '1', 'admin', '/admin/users/index.html', '[会员管理] -> [会员列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575218099');
INSERT INTO `tp_admin_log` VALUES ('827', '1', 'admin', '/admin/users/edit/id/6.html', '[会员管理] -> [会员列表] -> [操作-修改]', '{\"id\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575218101');
INSERT INTO `tp_admin_log` VALUES ('828', '1', 'admin', '/admin/users/index.html', '[会员管理] -> [会员列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575218102');
INSERT INTO `tp_admin_log` VALUES ('829', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575218104');
INSERT INTO `tp_admin_log` VALUES ('830', '1', 'admin', '/admin/download/index/catid/17.html', '', '{\"catid\":\"17\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575218109');
INSERT INTO `tp_admin_log` VALUES ('831', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575218111');
INSERT INTO `tp_admin_log` VALUES ('832', '1', 'admin', '/admin/message/index/catid/19.html', '', '{\"catid\":\"19\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575218112');
INSERT INTO `tp_admin_log` VALUES ('833', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575218113');
INSERT INTO `tp_admin_log` VALUES ('834', '1', 'admin', '/admin/product/index/catid/14.html', '', '{\"catid\":\"14\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575218115');
INSERT INTO `tp_admin_log` VALUES ('835', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575218116');
INSERT INTO `tp_admin_log` VALUES ('836', '1', 'admin', '/admin/article/index/catid/8.html', '', '{\"catid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575218118');
INSERT INTO `tp_admin_log` VALUES ('837', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575218119');
INSERT INTO `tp_admin_log` VALUES ('838', '1', 'admin', '/admin/system/system.html', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575218138');
INSERT INTO `tp_admin_log` VALUES ('839', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575218156');
INSERT INTO `tp_admin_log` VALUES ('840', '1', 'admin', '/admin/index/clear.html', '', '{\"del\":\"true\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575218165');
INSERT INTO `tp_admin_log` VALUES ('841', '1', 'admin', '/admin/index/index.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575218166');
INSERT INTO `tp_admin_log` VALUES ('842', '1', 'admin', '/admin/index/main.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575218166');
INSERT INTO `tp_admin_log` VALUES ('843', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575424690');
INSERT INTO `tp_admin_log` VALUES ('844', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575424692');
INSERT INTO `tp_admin_log` VALUES ('845', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575424697');
INSERT INTO `tp_admin_log` VALUES ('846', '1', 'admin', '/admin/article/index/catid/24.html', '', '{\"catid\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575424699');
INSERT INTO `tp_admin_log` VALUES ('847', '1', 'admin', '/admin/article/edit/catid/24/id/30.html', '', '{\"catid\":\"24\",\"id\":\"30\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575425748');
INSERT INTO `tp_admin_log` VALUES ('848', '1', 'admin', '/admin/hooks/index.html', '[插件管理] -> [钩子管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575425761');
INSERT INTO `tp_admin_log` VALUES ('849', '1', 'admin', '/admin/hooks/edit/id/6.html', '[插件管理] -> [钩子管理] -> [操作-修改]', '{\"id\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575425764');
INSERT INTO `tp_admin_log` VALUES ('850', '1', 'admin', '/admin/hooks/index.html', '[插件管理] -> [钩子管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575425768');
INSERT INTO `tp_admin_log` VALUES ('851', '1', 'admin', '/admin/users/index.html', '[会员管理] -> [会员列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575425775');
INSERT INTO `tp_admin_log` VALUES ('852', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575426027');
INSERT INTO `tp_admin_log` VALUES ('853', '1', 'admin', '/admin/download/index/catid/17.html', '', '{\"catid\":\"17\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575426035');
INSERT INTO `tp_admin_log` VALUES ('854', '1', 'admin', '/admin/download/edit/catid/17/id/12.html', '', '{\"catid\":\"17\",\"id\":\"12\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575426037');
INSERT INTO `tp_admin_log` VALUES ('855', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575426061');
INSERT INTO `tp_admin_log` VALUES ('856', '1', 'admin', '/admin/article/index/catid/9.html', '', '{\"catid\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575426063');
INSERT INTO `tp_admin_log` VALUES ('857', '1', 'admin', '/admin/article/edit/catid/9/id/8.html', '', '{\"catid\":\"9\",\"id\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575426067');
INSERT INTO `tp_admin_log` VALUES ('858', '1', 'admin', '/admin/article/index/catid/9.html', '', '{\"catid\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575426090');
INSERT INTO `tp_admin_log` VALUES ('859', '1', 'admin', '/admin/article/index/catid/9.html?page=2', '', '{\"page\":\"2\",\"catid\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575426096');
INSERT INTO `tp_admin_log` VALUES ('860', '1', 'admin', '/admin/article/edit/catid/9/id/5.html', '', '{\"catid\":\"9\",\"id\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575426099');
INSERT INTO `tp_admin_log` VALUES ('861', '1', 'admin', '/admin/article/index/catid/9.html?page=2', '', '{\"page\":\"2\",\"catid\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575426118');
INSERT INTO `tp_admin_log` VALUES ('862', '1', 'admin', '/admin/article/edit/catid/9/id/6.html', '', '{\"catid\":\"9\",\"id\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575426122');
INSERT INTO `tp_admin_log` VALUES ('863', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575426226');
INSERT INTO `tp_admin_log` VALUES ('864', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575426228');
INSERT INTO `tp_admin_log` VALUES ('865', '1', 'admin', '/admin/live/add/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575426232');
INSERT INTO `tp_admin_log` VALUES ('866', '1', 'admin', '/admin/live/add.html', '', '{\"catid\":\"21\",\"title\":\"12\\u670804\\u65e5 08:00 NBA\\u5e38\\u89c4\\u8d5b \\u6d3b\\u585evs\\u9a91\\u58eb\",\"shorttitle\":\"\\u6d3b\\u585evs\\u9a91\\u58eb\",\"keywords\":\"\",\"description\":\"\",\"livetime\":\"2019-12-04 08:00:52\",\"livetype\":\"NBA\\u5e38\\u89c4\\u8d5b\",\"livelist\":\"\",\"live_status\":\"0\",\"create_time\":\"2019-12-04 10:23:52\",\"litpic\":\"\",\"file\":\"\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\",\"content\":\"<p><br><\\/p>\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575426276');
INSERT INTO `tp_admin_log` VALUES ('867', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575426280');
INSERT INTO `tp_admin_log` VALUES ('868', '1', 'admin', '/admin/live/add/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575561537');
INSERT INTO `tp_admin_log` VALUES ('869', '1', 'admin', '/admin/live/add.html', '', '{\"catid\":\"21\",\"title\":\"12\\u670806\\u65e5 08:00 NBA\\u5e38\\u89c4\\u8d5b 76\\u4ebavs\\u5947\\u624d\",\"shorttitle\":\"76\\u4ebavs\\u5947\\u624d\",\"keywords\":\"\",\"description\":\"\",\"livetime\":\"2019-12-06 08:00:57\",\"livetype\":\"NBA\\u5e38\\u89c4\\u8d5b\",\"livelist\":\"\",\"live_status\":\"0\",\"create_time\":\"2019-12-05 23:58:57\",\"litpic\":\"\",\"file\":\"\",\"status\":\"1\",\"hits\":\"0\",\"template\":\"\",\"content\":\"<p><br><\\/p>\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575561573');
INSERT INTO `tp_admin_log` VALUES ('870', '1', 'admin', '/admin/live/index/catid/21.html', '', '{\"catid\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575561574');
INSERT INTO `tp_admin_log` VALUES ('871', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575562346');
INSERT INTO `tp_admin_log` VALUES ('872', '1', 'admin', '/admin/index/index.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575562348');
INSERT INTO `tp_admin_log` VALUES ('873', '1', 'admin', '/admin/index/main.html', '', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575562349');
INSERT INTO `tp_admin_log` VALUES ('874', '1', 'admin', '/admin/category/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575562350');
INSERT INTO `tp_admin_log` VALUES ('875', '1', 'admin', '/admin/category/edit/id/20.html', '[栏目管理] -> [栏目列表] -> [操作-修改]', '{\"id\":\"20\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1575562355');

-- ----------------------------
-- Table structure for `tp_article`
-- ----------------------------
DROP TABLE IF EXISTS `tp_article`;
CREATE TABLE `tp_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `title_style` varchar(225) NOT NULL DEFAULT '' COMMENT '标题样式',
  `thumb` varchar(225) NOT NULL DEFAULT '' COMMENT '缩略图',
  `keywords` varchar(80) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` mediumtext NOT NULL COMMENT 'SEO简介',
  `content` text NOT NULL COMMENT '内容',
  `template` varchar(80) NOT NULL DEFAULT '' COMMENT '模板',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `sort` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `image` varchar(80) NOT NULL DEFAULT '' COMMENT '缩略图',
  `images` mediumtext NOT NULL COMMENT '图片集',
  `download` varchar(80) NOT NULL DEFAULT '' COMMENT '文件下载',
  `author` varchar(50) NOT NULL DEFAULT 'Admin' COMMENT '作者',
  `source` varchar(255) NOT NULL DEFAULT '' COMMENT '来源',
  `summary` text NOT NULL COMMENT '摘要',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`sort`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `sort` (`id`,`catid`,`status`,`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_article
-- ----------------------------
INSERT INTO `tp_article` VALUES ('5', '9', 'PHP是什么', '', '', '', '', '<p>PHP（外文名:PHP: Hypertext Preprocessor，中文名：“超文本预处理器”）是一种通用开源脚本语言。语法吸收了C语言、Java和Perl的特点，利于学习，使用广泛，主要适用于Web开发领域。</p><p>用PHP做出的动态页面与其他的编程语言相比，PHP是将程序嵌入到HTML（标准通用标记语言下的一个应用）文档中去执行，执行效率比完全生成HTML标记的CGI要高许多；PHP还可以执行编译后代码，编译可以达到加密和优化代码运行，使代码运行更快。</p><p>全球市场分析</p><p>目前PHP在全球网页市场、手机网页市场还有为手机提供API（程序接口）排名第一。</p><p>在中国微信开发大量使用PHP来进行开发。</p><p>北京、上海的用人需求</p><p style=\"text-align: center;\">上海2016年11月份中某一天用人低峰的招聘量：</p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20181224/1545620471.png\" title=\"1545620471.png\" alt=\"2.png\"/></p><p><br/></p><p style=\"text-align: center;\">北京2016年11月份中某一天用人低峰的招聘量：</p><p><br/></p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20181224/1545620478.png\" title=\"1545620478.png\" alt=\"1.png\"/></p>', '', '1', '100', '52', '1540451280', '0', '/uploads/20181224/fc3112ab0fab9f255726674dc1fd0d17.jpg', '[{\"image\":\"\\/uploads\\/20181025\\/0138d7987d3e56758ab4d49c57002401.jpg\",\"title\":\"3.jpg\"}]', '', '未知', 'php中文网', 'PHP（外文名:PHP: Hypertext Preprocessor，中文名：“超文本预处理器”）是一种通用开源脚本语言。语法吸收了C语言、Java和Perl的特点，利于学习，使用广泛，主要适用于Web开发领域。');
INSERT INTO `tp_article` VALUES ('4', '9', '为什么学习PHP？', '', '', '', '', '<p>回答本书的几个问题吧。你到底，为什么要学习PHP？</p><p>全国都缺PHP人才，非常好就业，PHP现在的工资水平很高，刚毕业可以拿到5000-9000每个月，特别优秀还可以破万。并且有非常多的就业机会。</p><p>PHP入门简单，学习入门易入手。</p><p>很多人反馈上完大学的C语言课程、java课程不会写任何东西。<br/>诚然，中国的大学都以C语言作为主要的入门语言。但是，我们认为PHP是最简单入门，也是最合适入门的语言。</p><p>你将学习到编程的思路，更加程序化的去处理问题。处理问题，将会更加规范化。</p><p>如果你要创业，如果你要与互联网人沟通。未来互联网、移动互联网、信息化将会进一步围绕在你身边。你需要与人沟通，与人打交道。</p><p>还有机会进入BAT（百度、阿里、腾讯），BAT这些企业他们在用PHP。国内和国外超一线的互联网公司，在超过90%在使用PHP来做手机API或者是网站。连微信等开放平台中的公众号的服务端也可以使用到PHP。</p><p>大并发，还能免费。一天1个亿的访问量怎么办？PHP拥有大量优秀的开发者，在一定数据量的情况下完全能满足你的需求。国内外一线的互联网公司，很多将自己的大并发方案进行开源了。你可以免费获得很多成熟的、免费的、开源的大并发解决方案。</p><p>开源更加节约成本也更加安全。windows很多都要收取授权费用，而使用linux的LAMP架构或者LNMP架构会更加安全。全球的黑客在帮你找漏洞。全球的工程师在帮忙修复漏洞。你发现一个他人已经消灭10个。</p>', '', '1', '100', '0', '1539850020', '0', '/uploads/20181224/168eb2135c7abbc3f2efcad91c7106e3.jpg', '', '', '未知', 'php中文网', '回答本书的几个问题吧。你到底，为什么要学习PHP？\r\n全国都缺PHP人才，非常好就业，PHP现在的工资水平很高，刚毕业可以拿到5000-9000每个月，特别优秀还可以破万。并且有非常多的就业机会。');
INSERT INTO `tp_article` VALUES ('6', '9', '零基础也能学习', '', '', '', '', '<p>学习PHP前很多人担心PHP是不是能真的学会。</p><p>学习PHP学历要求不高，数学水平要求也不高，只需要会下面这些，你就可以跟着PHP中文网，开始愉快、高薪的PHP学习之旅：</p><p>有一台电脑</p><p>初中及以上文化水平</p><p>必须会打字（五笔、拼音均可）</p><p>会word（微软的office办公软件中的文字编辑软件）</p><p>会上网（QQ，写邮件，玩微信，看小说，看电影，注册网站帐号，网上购物等）</p><p>有一颗坚持的心</p><p>如果会一点html就更好了.学习HTML可以去看我们开源的另外一本HTML入门书籍。</p><p>不会HTML怎么办？也可以学习我们免费的HTML入门视频。</p>', '', '1', '100', '0', '1540452240', '0', '/uploads/20181224/894485902f96b13551b5450c7ddca081.jpg', '', '', '未知', 'php中文网', '学习PHP前很多人担心PHP是不是能真的学会。\r\n\r\n学习PHP学历要求不高，数学水平要求也不高，只需要会下面这些，你就可以跟着PHP中文网，开始愉快、高薪的PHP学习之旅：\r\n有一台电脑');
INSERT INTO `tp_article` VALUES ('7', '9', '为什么有些人学不会', '', '', '', '', '<p>互联网进入到人们生活中的方方面面了，世界首富比尔盖茨多次提到青少年编程，而编程是一种思维习惯的转化。</p><p>作为写了10几年程序的人，我听到过一些说编程不好学的抱怨。</p><p>从目前见到的数据统计，主要是因为在大学学习时遇到了C语言，学完后还不知道能干什么。很多人大学上完也就这么糊涂、恐惧的就过来了。</p><p>只有很少的不到1%的人学不会，这部份往往是专业的艺术家，在艺术家里面极少一部份人外，他们的思维模式和我们遇到的大多数人不太一样，并且不进行编程思维的训练，所以学不会。</p><p>而造成这个原因主要是因为社会、文化、背景、生活圈子多方面造成的。而不是因为笨。</p><p>那我们绝大多数的人是哪些原因学不会的呢？</p><p>1. 不相信自己能学会</p><p>这一块很多人可能不相信，涉及到很深的心理学知识。与心理暗示、诅咒的原理一样。</p><p>如果不相信自己能够学好，心里潜意识的念头里如果总是：PHP很难，我学不会。那么这个人肯定很难学会。</p><p>把不相信自己能学会的负面情绪和观念给抛掉。</p><p>只要你每天练习代码并相信自己。你肯定能学会，并且能学得很好，代码写的很成功，成为大牛！</p><p>2. 懒</p><p>人的天性有善有恶，而学不好程序的人，身上的一个通病，只有一个字就是————懒！<br/>基本语法，需要去背<br/>函数需要去默写</p><p>3. 自以为是</p><p>一看就会，一写就错。以为自己是神童。</p><p>4. 英文单词</p><p>计算机里面常用的英文单词就那么一些。</p><p>不要找英语的借口。本书会把英语单词都会跟你标注出来。看到不会的，就去翻一翻。</p><p>5. 不坚持</p><p>学着学着就放弃了。</p><p>6. 不去提问，不会提问，不去思考</p><p>解决问题前，先去搜索</p><p>搜索解决不了再去提问</p><p>PHP学院为大家准备了视频，也为大家准备了问答中心。</p><p>大多数的人，不把问题详述清楚，不把错误代码贴完整。</p><p>张嘴就来提问。我想神仙也不知道你的问题是什么吧？问题发出来前。换位思考一下自己看不看得懂这个问题。</p><p>7. 你还需要自我鼓励</p><p>在学习过程中，你会否定自己。其实任何人都会。大多数人都会遇到跟你一样的困难。只不过他们在克服困难，而一些人在逃避困难。</p><p>学累的时候，放松一会儿。再去多读几遍。不断的告诉自己，你就是最棒的！</p><p>学会交流和倾诉而非抱怨，并且不断的自我鼓励</p>', '', '1', '100', '25', '1540452720', '0', '/uploads/20181224/b640f82ccf862c3b34e11f792220a1f5.jpg', '', '', '未知', 'php中文网', '互联网进入到人们生活中的方方面面了，世界首富比尔盖茨多次提到青少年编程，而编程是一种思维习惯的转化。\r\n作为写了10几年程序的人，我听到过一些说编程不好学的抱怨。');
INSERT INTO `tp_article` VALUES ('8', '9', '开发环境是什么？', '', '', '', '', '<p>PHP是一门开发语言。而开发语言写出来的代码，通常需要在指定的软件下才能运行。因此，我们写好的代码需要（运行）显示出来看到，就需要安装这几个软件来运行代码。</p><p>我们把运行我们写代码的几个软件和运行代码的软件统一都可称为开发环境。</p><p>新手学习前常遇到的环境问题</p><p>很多朋友最开始学习的时候，听说某个环境好就安装某些软件。由于缺乏相关知识，所以没有主见。陷入人云即云的怪圈里。今天换这个，明天换那个。</p><p>当前验证真理的唯一标准，请始终保证一点：</p><p>环境能满足你的学习需求。不要在环境上面反复纠结，耽误宝贵的学习时间。</p><p>我们认为环境只要能满足学习要求即可。等学会了后，再去着磨一些更加复杂的互联网线上的、生产环境中的具体配置。</p>', '', '1', '100', '210', '1540605000', '0', '/uploads/20181224/a11e9ab3e8dc289dca70a105a7f177ee.jpg', '[{\"image\":\"\\/uploads\\/20181026\\/c90a371acbfc377a3ebb781b9e6c22af.jpg\",\"title\":\"4.jpg\"},{\"image\":\"\\/uploads\\/20181026\\/02afd01ca8661ce5ec14d60abd48673d.jpg\",\"title\":\"3.jpg\"}]', '', '未知', 'php中文网', 'PHP是一门开发语言。而开发语言写出来的代码，通常需要在指定的软件下才能运行。因此，我们写好的代码需要（运行）显示出来看到，就需要安装这几个软件来运行代码。');
INSERT INTO `tp_article` VALUES ('9', '9', 'windows环境安装', '', '', '', '', '<p>所谓服务器：不要把它想的太过于高深，不过就是提供一项特殊功能（服务）的电脑而已。</p><p>显示网页的叫网页(web)服务器（server）。</p><p>帮我们代为收发电子邮件(Email)的服务器叫邮件服务器。</p><p>帮我们把各个游戏玩家连接在一起的叫游戏服务器。</p><p>帮我们存储数据的叫数据库服务器</p><p>... ...等等</p><p>我们现在使用的一部手机的性能比10年前的一台电脑和服务器的性能还要强劲、给力。</p><p>而我们的学习过程当中完全可以把自己使用的这一台windows电脑作为服务器来使用。</p><p>原来如此，一讲就通了吧？</p><p>我们大多数人使用的电脑通常是windows操作系统的电脑。而我们的讲解主要在windows电脑上进行。</p><p>你不需要去理解所谓高深的电脑知识、操作系统原型等。在这一章节当中，你只需要会安装QQ、杀毒软件一样，点击：下一步、下一步即可完成本章的学习。</p><p>在最开始学习时，我们强烈建议初学者使用集成环境包进行安装。</p><p>什么是集成环境包？</p><p>我们学习PHP要安装的东西有很多。例如：网页服务器、数据库服务器和PHP语言核心的解释器。</p><p>我们可以分开安装各部份，也可以合在一起安装一个集成好的软件。</p><p>将这些合在一起的一个软件我们就叫作：集成环境包。</p><p>这个过程需要修改很多配置文件才能完成。并且每个人的电脑情况，权限，经常容易操作出错。</p><p>很容易因为环境问题影响到心情，我们的学习计划在初期非常绝对化：</p><p>请使用集成环境包完成最开始的学习。</p><p>等你学好PHP NB后，你爱用啥用啥，网上成堆的文章教你配置各种环境。</p><p>选用什么样的集成环境包？</p><p>集成环境包比较多。以下的这些全是各种英文名。只不过代表的是不同集成环境包的名字，不用去深纠。如下所示：</p><p>AppServ</p><p>PHPStudy</p><p>APMserv</p><p>XAMPP</p><p>WAMPServer<br/>... ...等等</p><p>对于我们才入门的学习者来说，选择集成环境包的原则：</p><p>更新快，版本比较新</p><p>操作简单易于上手</p><p>选择项不要过多</p><p>因此，我们下面使用的集成环境包是：PHPstudy。当然，如果你对此块很熟悉了，也可以自行选择选择集成环境包。</p><p>可以以在官方网址下载：<br/>http://www.phpstudy.net/&nbsp;</p><p>也可以在百度中搜索：*PHPstudy *&nbsp;&nbsp;这个5个字文字母进行下载。</p><p>对学习PHP的新手来说，WINDOWS下PHP环境配置是一件很困难的事，就是老手也是一件烦琐的事。因此，无论你是新手还是老手，phpStudy 2016都是一个不错的选择，该程序集成Apache+PHP+MySQL+phpMyAdmin+ZendOptimizer，最新版本已集成最新的&nbsp;PHP7。</p>', '', '1', '100', '22', '1544593260', '0', '/uploads/20181224/f5421f965b0f46d9c1b8f1a927df7894.jpg', '', '', '未知', 'php中文网', '所谓服务器：不要把它想的太过于高深，不过就是提供一项特殊功能（服务）的电脑而已。\r\n显示网页的叫网页(web)服务器（server）。');
INSERT INTO `tp_article` VALUES ('13', '9', 'php中的变量－读过初中你就会变量', '', '', '', '', '<p>大家在读初中的时候呀。老师经常会这么教大家。</p><p>请问，李磊和韩梅梅同学，假如：</p><p>x&nbsp;=&nbsp;5<br/>y&nbsp;=&nbsp;6<br/></p><p>那么x + y 等于多少呢？大家会义无反顾的回答。x + y 等于11。</p><p>接下来我们看下面的初中的数学知识，请问x + y 的结果是多少？</p><p>x&nbsp;=&nbsp;5<br/>y&nbsp;=&nbsp;6<br/>x&nbsp;＝&nbsp;8<br/></p><p>我估计大家也会义无反顾的回答：x + y 的结果为14。</p><p>这就是变量！</p><p>变量的几个特点：</p><p>1.x = 5 将右边值5，赋值给左边的x</p><p>2.第二段x ＝ 8，最后x + y 的结果等于14，说明x在从上到下的运算（执行）中，可以被重新赋值。</p><p>我们在PHP中的变量也是如此。不过有几个特点：</p><p>1.必须要以$开始。如变量x必须要写成$x</p><p>2.变量的首字母不能以数字开始</p><p>3.变量的名字区分大小写</p><p>4.变量不要用特殊符号、中文，_不算特殊符号</p><p>5.变量命名要有意义（别写xxx，aaa，ccc这种 变量名）</p><p>错误举列：</p><p>错误：变量以数字开始</p><p>&lt;?php<br/>$123&nbsp;=&nbsp;345;<br/>?&gt;<br/></p><p>错误：变量中有特殊字符，中文</p><p>&lt;?php<br/>//$a*d&nbsp;=&nbsp;345;<br/><br/>//$中国&nbsp;=&nbsp;123;<br/>?&gt;<br/></p><p>错误：变量命名没有意义aaa容易数错，也没有含意</p><p>&lt;?php<br/>$aaaaaaa&nbsp;=&nbsp;345;<br/>?&gt;<br/></p><p>错误：变量严格区分大小写 $dog 和 $Dog是PHP学院的变量,尝试将$dog的值改为8.结果D写成了大写。</p><p>&lt;?php<br/>$dog&nbsp;=&nbsp;5;<br/>//重新修改$dog的值，将$dog改为8<br/>$Dog&nbsp;=&nbsp;8;<br/>?&gt;<br/></p><p>正确举例：</p><p>正确：变量不能以数字开始,但是数字可以夹在变量名中间和结尾</p><p>&lt;?php<br/>$iphone6&nbsp;=&nbsp;5880;<br/>$iphone6plus&nbsp;=&nbsp;6088;<br/>?&gt;<br/></p><p>正确：变量不能有特殊符号，但是_(下划线不算特殊符号)</p><p>&lt;?php<br/>$_cup&nbsp;=&nbsp;123;<br/>?&gt;<br/></p><p>注：你会发现代码是从上向下执行的。</p><p>$ 叫作美元符，英文单词：dollar。PHP的变量必须以美元符开始。说明搞PHP有“钱”途。</p><p>dollar<br/>读音：[&#39;dɒlə(r)]<br/>解释：美元</p><p><br/></p>', '', '1', '100', '6', '1545620940', '0', '', '', '', '未知', 'php中文网', '大家在读初中的时候呀。老师经常会这么教大家。\r\n请问，李磊和韩梅梅同学，假如：');
INSERT INTO `tp_article` VALUES ('10', '9', 'Linux环境安装', '', '', '', '', '<p>这一个章节是本书中永远不会写的一个章节，很多人被一些市面上的书籍误导，认为学习PHP前要学习Linux。结果，一看Linux，就对人生和学习失去了希望。我们作为有过10年以上开发经验和内部训经验的专业人士告戒各位：</p><p>Linux学习与PHP学习没有必然的联系，这是两个不同的知识体系。</p><p>作为有多年开发经验和教学经验的我们。</p><p>我们强烈不建议没有接触过Linux的学生，为了学习PHP而去安装Linux环境</p><p>如果您有经验，我们相信你一定能解决，如果解决不了。</p><p>请加QQ群和访问官网：PHP中文网&nbsp;学习视频和提问。</p>', '', '1', '100', '0', '1545620820', '0', '/uploads/20181224/5cd61fb68c8bc8fe6d24be4229ec0ca5.jpg', '', '', '未知', 'php中文网', '这一个章节是本书中永远不会写的一个章节，很多人被一些市面上的书籍误导，认为学习PHP前要学习Linux。结果，一看Linux，就对人生和学习失去了希望。我们作为有过10年以上开发经验和内部训经验的专业人士告戒各位：');
INSERT INTO `tp_article` VALUES ('11', '9', '其他开发环境', '', '', '', '', '<p>对本章不感兴趣，可以略过，只是介绍和说明。</p><p>其他开发环境有很多：</p><p>1，比如 苹果电脑的系统 Mac os</p><p>2，比如 &nbsp;在线环境（你使用了百度、新浪、阿里等云计算环境）</p><p>3，其他更多... ...</p><p>当然，你甚至可以使用安卓手机和苹果手机来部署你的开发环境。就像有些人可以在各种复杂的环境，甚至U衣酷的试衣间里M..L。我想，这应该不是正常人类该进行的尝试吧。</p><p>如果你在使用这些环境遇到了问题，相信你已经有过一定的开发经验和处理问题的经验了，这不是刚开始学习编程该掌握的内容。</p><p>但是，如果你真遇到了这些问题。你可以上PHP中文网来提问。</p>', '', '1', '100', '0', '1545620880', '0', '', '', '', '未知', 'php中文网', '对本章不感兴趣，可以略过，只是介绍和说明。\r\n其他开发环境有很多：\r\n1，比如 苹果电脑的系统 Mac os\r\n2，比如  在线环境（你使用了百度、新浪、阿里等云计算环境）\r\n3，其他更多... ...');
INSERT INTO `tp_article` VALUES ('12', '9', '写代码的工具选择', '', '', '', '', '<p>写代码的工具有很多。对于刚开始学习PHP的朋友来说。选择工具有几个原则：</p><p>1，不要使用带自动提示的工具（例如eclipse、zend studio等PHP开发工具集）</p><p>2，写完的代码必须要有颜色高亮显示。（不能使用：txt文本编辑器等无代码颜色显示的编辑器）</p><p>你可能想问，为什么呀？</p><p>我们发现电视、电影和现实生活中的编程高手，噼里哗啦就写一堆代码，一点都不报错，点击就能运行。而我们对着他们的代码抄袭反倒抄错。这种感觉特别不好！！！</p><p>——传说中的这些高手，他们都曾经在基础代码上反复练习过，所以他们不会写错。</p><p>而我们需要高手之境界，在学习初期就不能使用先进的工具。这样会浪费我们保贵的练习代码的机会、调试错误的机会。</p><p>因为先进的编辑器通常有很多先进的功能，例如：</p><p>代码自动显示错误</p><p>代码自动换行</p><p>这些先进的工具，对于开始入门学习的你，不利于新手产生独立解决问题的能力！</p><p>推荐的开发工具</p><p>1. NotePad++&nbsp;</p><p>https://notepad-plus-plus.org/&nbsp;由于某些不可抗的原因，请使用百度搜索NotePad++&nbsp;</p><p>2.phpstorm（强烈推荐）</p><p>https://www.jetbrains.com/phpstorm/&nbsp;</p><p>这些工具，你只需要下载下来，一直点击下一步，安装到你的电脑上即可。</p>', '', '1', '100', '2', '1545620880', '0', '', '', '', '未知', 'php中文网', '写代码的工具有很多。对于刚开始学习PHP的朋友来说。选择工具有几个原则：\r\n1，不要使用带自动提示的工具（例如eclipse、zend studio等PHP开发工具集）\r\n2，写完的代码必须要有颜色高亮显示。（不能使用：txt文本编辑器等无代码颜色显示的编辑器）');
INSERT INTO `tp_article` VALUES ('14', '9', 'echo 显示命令', '', '', '', '', '<p>echo 是在PHP里面最常用的一个输出、显示功能的命令。</p><p>我们可以让他显示任何可见的字符。</p><p>&lt;?php<br/><br/>echo&nbsp;123;<br/><br/>?&gt;<br/>&lt;?php<br/><br/>$iphone&nbsp;=&nbsp;6088;<br/><br/>echo&nbsp;$iphone;<br/><br/>?&gt;<br/></p><p>你可以对着做做实验。等下一章，我们讲数据类型的时候，我教大家输出中文和用PHP显示网页内容。</p><p>单词：</p><p>*echo *&nbsp;读音： [&#39;ekoʊ]<br/>解释：发出回声；回响。<br/>功能解释：输出、显示</p>', '', '1', '100', '0', '1545621000', '0', '', '', '', '未知', 'php中文网', 'echo 是在PHP里面最常用的一个输出、显示功能的命令。\r\n我们可以让他显示任何可见的字符。');
INSERT INTO `tp_article` VALUES ('15', '9', 'php注释的学习', '', '', '', '', '<p>注释的功能很强大</p><p>所谓注释，汉语解释可以为：注解。更为准确一些。<br/>因为代码是英文的、并且代码很长，时间长了人会忘。<br/>所以我们会加上注释。</p><p>注释的功能有很多：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;1.对重点进行标注</p><p>&nbsp;&nbsp;&nbsp;&nbsp;2.时间长了容易忘快速回忆，方便查找</p><p>&nbsp;&nbsp;&nbsp;&nbsp;3.让其他人看的时候快速看懂</p><p>&nbsp;&nbsp;&nbsp;&nbsp;4.还可以生成文档，代码写完相关的文档就写完了，提高工作效率</p><p>&nbsp;&nbsp;&nbsp;&nbsp;5.注释、空行、回车之后的代码看起来更优美</p><p>&nbsp;&nbsp;&nbsp;&nbsp;6.注释可用来排错。不确定代码中哪一块写错了，可以将一大段注释，确定错误区间</p><p>&nbsp;&nbsp;&nbsp;&nbsp;7.注释中间的部份的内容，电脑不会执行它</p><p>先给大家看看我们觉得优美的代码，整齐、规范、说明清楚、一看就懂。（不需要理解代码的含义）：</p><p><br/></p><p>再看看我们眼中觉得丑陋的代码，对齐丑陋不说，并且没有功能说明（不需要理解代码的含义）：</p><p><br/></p><p>我们了解了注释的好处，接下来我们来说PHP的注释，注释分别：</p><p>单行注释（只注释一行）</p><p>多行注释（注释多行）</p><p>单行注释</p><p>//&nbsp;&nbsp;&nbsp;表示单行注释<br/>#&nbsp;&nbsp;&nbsp;&nbsp;#号也表示单行注释，用的比较少<br/></p><p>多行注释</p><p>/*&nbsp;<br/>多行注释&nbsp;这里是注释区域代码<br/>&nbsp;*/<br/></p><p>单行注释举例：</p><p>&lt;?php<br/><br/>//声明一部iphone6手机的价格变量<br/>$iphone6_price&nbsp;=&nbsp;6088;<br/><br/>//显示输出手机价格<br/>echo&nbsp;$iphone6_price;<br/>?&gt;<br/></p><p>注：通过上例我们知道，注释通常写代码上面。</p><p>多行注释举例：</p><p>&lt;?php<br/>/*<br/>作者：PHP中文网<br/>时间：2048.12.23<br/>功能：这是一个假的多行注释的例子<br/>*/<br/><br/>/*<br/>&nbsp;&nbsp;声明一个爱情变量<br/>&nbsp;&nbsp;$love&nbsp;是指爱情<br/>&nbsp;&nbsp;爱情是一个变量，因为人的爱总是在发生变化<br/>&nbsp;&nbsp;所以，爱情变量的值为250<br/>*/<br/>$love&nbsp;=&nbsp;250;<br/><br/>?&gt;<br/></p><p>注：通过上面的例子我们发现，我们要写上很多注释的时候，释用多行注释。</p><p>注：暂进不讲解如何通过专门的工具生成注释</p><p><br/></p>', '', '1', '100', '3', '1545621060', '0', '/uploads/20181224/2d208c7893a9981a6216b83ef9fcb11f.jpg', '', '', '', '', '注释的功能很强大\r\n所谓注释，汉语解释可以为：注解。更为准确一些。\r\n因为代码是英文的、并且代码很长，时间长了人会忘。');
INSERT INTO `tp_article` VALUES ('16', '9', 'php整型就是整数', '', '', '', '', '<p>我&nbsp; &nbsp;一直在讲，不要被名词的含义所吓唬住。</p><p>到底什么是整型呀？</p><p>所谓整型，就是大家数学中所学的整数。</p><p>整型——整数也，英文称之:integer。英文简写：int</p><p>整型分为：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;1.10进行</p><p>&nbsp;&nbsp;&nbsp;&nbsp;2.8进制 （了解，基本不用）</p><p>&nbsp;&nbsp;&nbsp;&nbsp;3.16进制（了解，基本不用）</p><p>整型（整数）在计算机里面是有最大值和最小值范围的。</p><p>【了解知识点，开发中不常用】大家经常听说32位计算机，也就是32位计算机一次运算处理的最大范围为-232至232-1。<br>64位计算机呢？——</p><p>10 进制声明：</p><p>&lt;?php<br>//为了方便大家记忆和前期学习，英文不好的朋友也可用拼音来声明变量。以后再用英文来声明变量也无所谓<br>//声明变量&nbsp;整数，英文&nbsp;int<br>//$int&nbsp;=&nbsp;1000;<br>$zhengshu&nbsp;=&nbsp;1000;<br>echo&nbsp;$zhengshu;<br>?&gt;<br></p><p>8进制声明：&nbsp;以0开始，后面跟0-7的整数（了解知识点）</p><p>&lt;?php<br>//8进制的取值范围最大为0-7,即0,1,2,3,4,5,6,7<br><br>$bajingzhi&nbsp;=&nbsp;&nbsp;033145;<br>echo&nbsp;$bajingzhi;<br><br>?&gt;<br></p><p>16进制声明：&nbsp;以0x开始，后面跟0-f的，0x的abcdef不区分大小写。（了解知识点）</p><p>&lt;?php<br>//16进制的取值范围最大为0-f,即0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f<br>$shiliu&nbsp;=&nbsp;&nbsp;0x6ff;<br>echo&nbsp;$shiliu;<br>?&gt;<br></p><p>本章学习重点，学会如何声明10制制整数即可。了解8制制和16进制的声明，实在不会也不要紧。</p><p>思维误区：容易去考虑8进制和16进制到底是怎么产生的。</p><p><br></p>', '', '1', '100', '5', '1545621120', '0', '/uploads/20181224/588ac2b0eca6de73b61c125db692e020.jpg', '', '', '未知', 'php中文网', '我一直在讲，不要被名词的含义所吓唬住。\r\n到底什么是整型呀？\r\n所谓整型，就是大家数学中所学的整数。');
INSERT INTO `tp_article` VALUES ('17', '13', 'PHP中的流程控制', '', '', '', '', '<p>流程控制就是人类社会的做事和思考和处理问题的方式和方法。通过本章，你将会发现采用计算机的思维去考虑问题，我们在做事的过程当中会更加严谨。</p><p>我们通过一个一个的场景来去推理流程：</p><p>有一个高富帅，他姓王。他的名字叫——王。王同学计划要投资一个项目。如果这个项目计划开始，为了这个投资项目每周往返一次北京和大连。什么时候王思总同学不再往返呢？项目失败后或者万（da）集团临时除知除外，他就可以不再这么每周往返了。</p><p>王同学呢，有一个好习惯，就是每次往返的时候，害怕自己到底一年往返了多少次。王同学都会在自己的记事本上记上往返的次数，第一次就写上一，第2次就写上2... ...直至最后项目停止。</p><p>王同学家里头特别有钱，所以他的行程方式和正常人的又有些不同。不仅有更多的方式，而且王同学还迷信。</p><p>他的出行方式呢有6种，如下：</p><p>1，司机开车<br/>2，民航<br/>3，自己家的专机<br/>4，火车动车<br/>5，骑马<br/>6，游轮</p><p>每次王同学，都自己会在骰子上写上1，2，3，4，5，6。摇到哪种方式，王同学就会采用哪种方式进行往返两地。</p><p>并且呢，王同学是生活极度充满娱乐化和享受生活的人。他抵达北京或者大连的时候不同，他抵达后做的事情都不同，如下：</p><p>半夜到达，先去夜店参加假面舞会<br/>早上抵达，爱在酒店泡个澡<br/>中午到达，会吃上一份神户牛肉<br/>晚上到达，总爱去找朋友去述说一下心中的寂寞</p><p>王同学在出行和项目中也是极度有计划性。他给自己的生活秘书和工作秘书分别指派了出差的行程：</p><p>生活上：<br/>先查天气，下雨带雨具和毛巾。不下雨要带防晒霜<br/>雨具、毛巾和防晒霜的情况要提前检查，如果没有要及时买</p><p>工作上：<br/>要提前沟通去大连前的工作计划，准备好了要及时检查，检查合格，要提前打印现来。<br/>及时没有及时准备好的情况下，要列出主要的项目沟通议题。</p>', '', '1', '100', '0', '1545628260', '0', '', '', '', '未知', 'php中文网', '流程控制就是人类社会的做事和思考和处理问题的方式和方法。通过本章，你将会发现采用计算机的思维去考虑问题，我们在做事的过程当中会更加严谨。我们通过一个一个的场景来去推理流程：');
INSERT INTO `tp_article` VALUES ('18', '13', 'php流程控制之if条件结构流程', '', '', '', '', '<p>if条件结构流程</p><p>if和else 语句，在之前的3.2.5章节中已经做了说明。我们配合王思总同学的例子，再次进行说明，方便大家对此章节的理解。</p><p>本章的知识点为：【默写级】</p><p>基本语法，不能有半点马乎，完全是语法规范规定的，不这么写就错！</p><p>&lt;?php&nbsp;<br/>$week=date(&quot;4&quot;);<br/>//判断星期小于6，则输出：还没到周末，继续上班.....<br/>if&nbsp;($week&lt;&quot;6&quot;)&nbsp;{<br/>&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;&quot;还没到周末，继续上班.....&quot;;<br/>}&nbsp;<br/>?&gt;<br/></p><p>在之前我们也讲过，因此if的结构可以根据人类思维推理出来两种结构：</p><p>//if单行判断<br/>if(布尔值判断)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;只写一句话;<br/>后续代码<br/>//if多行判断<br/>if(布尔值判断){<br/>&nbsp;&nbsp;&nbsp;&nbsp;可以写多句话;<br/>}<br/>后续代码<br/></p><p><br/></p>', '', '1', '100', '0', '1545628260', '0', '', '', '', '未知', 'php中文网', 'if条件结构流程\r\nif和else 语句，在之前的3.2.5章节中已经做了说明。我们配合王思总同学的例子，再次进行说明，方便大家对此章节的理解。\r\n本章的知识点为：【默写级】');
INSERT INTO `tp_article` VALUES ('19', '13', 'PHP流程控制之if语句', '', '', '', '', '<p>我们为了加强大家对代码的理解，我们串了一个故事恶搞了一个王思总同学。</p><p>在4.1和3.2.5这两个章节中我们都介绍到了if和if...else结构。并且我们讲解的很清楚。</p><p>我们现在来用if...else结构来写一个小东西，加强大家对逻辑的理解。</p><p>我们配合之前的知识点来写一个计算器：</p><p>&lt;form&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;text&quot;&nbsp;name=&quot;num1&quot;&gt;<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&lt;select&nbsp;name=&quot;fh&quot;&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;option&nbsp;value=&quot;jia&quot;&gt;&nbsp;+&nbsp;&lt;/option&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;option&nbsp;value=&quot;jian&quot;&gt;&nbsp;-&nbsp;&lt;/option&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;option&nbsp;value=&quot;c&quot;&gt;&nbsp;x&nbsp;&lt;/option&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;option&nbsp;value=&quot;chu&quot;&gt;&nbsp;/&nbsp;&lt;/option&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;option&nbsp;value=&quot;qy&quot;&gt;&nbsp;%&nbsp;&lt;/option&gt;<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&lt;/select&gt;<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;text&quot;&nbsp;name=&quot;num2&quot;&gt;<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;submit&quot;&nbsp;value=&quot;运算&quot;&nbsp;/&gt;<br/><br/><br/>&lt;/form&gt;<br/><br/>&lt;?php<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;$num1&nbsp;=&nbsp;$_GET[&#39;num1&#39;];<br/>&nbsp;&nbsp;&nbsp;&nbsp;$num2&nbsp;=&nbsp;$_GET[&#39;num2&#39;];<br/>&nbsp;&nbsp;&nbsp;&nbsp;$fh&nbsp;=&nbsp;$_GET[&#39;fh&#39;];<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;if(!is_numeric($num1)&nbsp;||&nbsp;!is_numeric($num2)){<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;&#39;请输入数值类型&#39;;<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;if($fh&nbsp;==&nbsp;&#39;jia&#39;){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$num1&nbsp;.&nbsp;&#39;+&#39;&nbsp;.&nbsp;$num2&nbsp;.&nbsp;&#39;=&#39;&nbsp;.&nbsp;($num1+$num2);<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;if($fh==&#39;jian&#39;){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$num1&nbsp;.&nbsp;&#39;-&#39;&nbsp;.&nbsp;$num2&nbsp;.&nbsp;&#39;=&#39;&nbsp;.&nbsp;($num1-$num2);<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;if($fh==&#39;c&#39;){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$num1&nbsp;.&nbsp;&#39;x&#39;&nbsp;.&nbsp;$num2&nbsp;.&nbsp;&#39;=&#39;&nbsp;.&nbsp;($num1*$num2);<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;if($fh==&#39;chu&#39;){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$num1&nbsp;.&nbsp;&#39;/&#39;&nbsp;.&nbsp;$num2&nbsp;.&nbsp;&#39;=&#39;&nbsp;.&nbsp;($num1/$num2);<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;if($fh==&#39;qy&#39;){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$num1&nbsp;.&nbsp;&#39;%&#39;&nbsp;.&nbsp;$num2&nbsp;.&nbsp;&#39;=&#39;&nbsp;.&nbsp;($num1%$num2);<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/><br/>?&gt;<br/></p><p>作业：<br/>写一个平年、闰年计算器。写一个form表单，通过get将年份给传来过来，判断传进来的年份是否为数值类型。并且要求，如果是闰年就提示这是闰年，如果是平年就提示这一年是平年。</p><p>平年闰年规则：年份能被4整除，但是不能被100整除。 &nbsp;或者能被400整除，即为闰年，其他情况全为平年</p>', '', '1', '100', '11', '1545628320', '0', '', '', '', '未知', 'php中文网', '我们为了加强大家对代码的理解，我们串了一个故事恶搞了一个王思总同学。\r\n在4.1和3.2.5这两个章节中我们都介绍到了if和if...else结构。并且我们讲解的很清楚。\r\n我们现在来用if...else结构来写一个小东西，加强大家对逻辑的理解。');
INSERT INTO `tp_article` VALUES ('20', '13', 'PHP流程控制之嵌套if...else...elseif结构', '', '', '', '', '<p>还记得本章开篇我们讲了一个王思总同学的例子：</p><p>王同学是生活极度充满娱乐化和享受生活的人。他抵达北京或者大连的时候做的事，他抵达后做的事情，如下：</p><p>半夜到达，先去夜店参加假面舞会<br/>&nbsp;早上抵达，爱在酒店泡个澡<br/>&nbsp;中午到达，会吃上一份神户牛肉<br/>&nbsp;晚上到达，总爱去找朋友去述说一下心中的寂寞</p><p>我们来了解一下他的语法规则【知识点要求：默写】</p><p>&lt;?php<br/>if（判断语句1）{<br/>&nbsp;&nbsp;&nbsp;&nbsp;执行语句体1<br/>}elseif(判断语句2){<br/>&nbsp;&nbsp;&nbsp;&nbsp;执行语句体2<br/>}else&nbsp;if(判断语句n){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;执行语句体n<br/>}else{<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;最后的else语句可选<br/>}<br/><br/>//后续代码<br/>?&gt;<br/></p><p>上述结构表示：<br/>如果判断语句1的值为真，则执行语句体 1。执行完成后进入后续代码段。<br/>否则转入后面的判断语句2（elsif），判断语句2若为真，则执行语句体 2。<br/>否则转入后面的判断语句n（elsif），判断语句2若为真，则执行语句体 n。<br/>如果均不匹配则执行else语句。这种循环嵌套可以不含else语句，即只含有if、elseif语句。</p><p>注：elseif()也可以写成else if()</p><p>我们把上面的代码用流程图的形式表示清楚就如下图了：<br/></p><p>我们可以把王思总同学的例子通过PHP代码表示出来，代码表示结果如下：</p><p>&lt;?php<br/>//定义一个随机变量，抵达时间,随机0点至23点<br/>$dida&nbsp;=&nbsp;rand(0,23);<br/><br/>if($dida&nbsp;&gt;&nbsp;6&nbsp;&amp;&amp;&nbsp;$dida&nbsp;&lt;&nbsp;10){<br/>&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;&#39;我爱泡澡&#39;;<br/>}else&nbsp;if($dida&nbsp;&gt;10&nbsp;&amp;&amp;&nbsp;$dida&nbsp;&lt;&nbsp;14){<br/>&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;&#39;吃神户牛肉&#39;;<br/>}else&nbsp;if($dida&nbsp;&gt;=19&nbsp;&amp;&amp;&nbsp;$dida&nbsp;&lt;&nbsp;22){<br/>&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;&#39;找一个朋友聊聊内心的寂寞&#39;;<br/>}elseif($dida&nbsp;&gt;&nbsp;22&nbsp;&amp;&amp;&nbsp;$dida&nbsp;&lt;=&nbsp;23){<br/>&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;&#39;泡澡&#39;;<br/><br/>}elseif($dida&nbsp;&gt;=&nbsp;1&nbsp;&amp;&amp;&nbsp;$dida&nbsp;&lt;3){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;&#39;泡澡&#39;;<br/>}else{<br/>&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;&#39;睡觉或者工作&#39;;<br/>}<br/><br/><br/>?&gt;<br/></p><p>作业：<br/>写一个网页cj.html，向panduan.php页面以post方式提交分数段。分数段和显示的结果如下，要求如下：</p><p>0----60以下，不及格</p><p>60---70及格了，要努力</p><p>70---80 &nbsp;还不错</p><p>80---90 &nbsp; 上清华有希望</p><p>90---100 &nbsp; 你这辈子没希望了</p><p>100 &nbsp; &nbsp; &nbsp; &nbsp; 更没希望了</p><p>100分以上 &nbsp; &nbsp;爱因斯坦转世啊，思密达！</p><p>不是一个数值类型或者小于0 &nbsp;请输入正确的分数。</p>', '', '1', '100', '5', '1545628380', '0', '', '', '', '未知', 'php中文网', '还记得本章开篇我们讲了一个王思总同学的例子：\r\n王同学是生活极度充满娱乐化和享受生活的人。他抵达北京或者大连的时候做的事，他抵达后做的事情，如下：\r\n半夜到达，先去夜店参加假面舞会');
INSERT INTO `tp_article` VALUES ('21', '24', '阿德巴约21+13+5 巴特勒21+7 罗齐尔19+9 热火送黄蜂五连败', '', '', '', '', '<p>11月26日讯 NBA常规赛，黄蜂今日前往客场挑战热火，客队目前遭遇四连败，上场比赛更是成就了拉文的三分绝杀，而主队虽然上场比赛同样遭遇失利，但仍高居东部第三，此役温斯洛继续因伤缺战。比赛上来黄蜂迅速反客为主一波7-0开局，但热火及时调整反超比分，次节热火外线手感全开，逐渐将分差拉大到两位数结束半场。易边再战，黄蜂依旧没能找到限制对手的办法，场上分差被继续扩大，比赛也早早失去悬念，最终热火在主场大胜黄蜂，送给后者五连败。  <br></p>', '', '1', '100', '0', '1574789509', '0', '', '', '', '', '', '');
INSERT INTO `tp_article` VALUES ('22', '24', '丁威迪绝杀 阿伦22+21 南斯20+13 篮网险胜骑士取四连胜', '', '', '', '', '<p>11月26日讯 NBA常规赛继续进行，三连胜的篮网队来到客场挑战骑士，篮网这边依旧是多员大将缺席，双方来全场比赛中都较为胶着，篮网几次将分差拉开都被骑士追上，时间来到比赛最后一分钟，克拉克森三分命中，分差来到一分，篮网进攻不中，最后25.1秒骑士球权制造犯规塞克斯顿两罚一中两队打平但篮板球出界给到骑士球权，阿伦送出大帽，8.9秒暂停回来丁威迪送出大帽，24秒违例，6.2秒留给篮网，丁威迪罚球线跳投入网留给骑士1.6秒，骑士后场发球三分不中，最终凭借丁威迪的绝杀，篮网客场险胜骑士取得四连胜。&nbsp;&nbsp;<br></p>', '', '1', '100', '0', '1574789589', '0', '', '', '', '', '', '');
INSERT INTO `tp_article` VALUES ('23', '24', '肯纳德20+7 格里芬17+5 富尔茨16+4 活塞主场击退魔术', '', '', '', '', '<p>11月26日讯&nbsp;活塞今日坐镇主场迎来魔术的挑战，首节对攻双方状态相当一直僵持，活塞凭借出色的三分手感在节中一度拿到5分的领先，但魔术贯彻冲击篮下的战术在后半节收到效果，他们依靠着连续篮下的进球打出16-3的攻势反超活塞8分。次节魔术继续掌控局面维持着7分左右的优势，不过格里芬最后的关键三分帮助活塞及时追回分差，半场战罢，魔术55-53领先活塞。下半场的活塞在对攻战中扭转局势，他们凭借三记三分一举反超比分，末节米哈柳克两记三分为活塞确立起14分的领先奠定胜局，魔术则在末段遭遇3分钟的哑火直接导致最后的输球。最终，活塞103-88击退魔术拿下比赛。&nbsp;&nbsp;<br></p>', '', '1', '100', '0', '1574789621', '0', '', '', '', '', '', '');
INSERT INTO `tp_article` VALUES ('24', '24', '沃伦26分 杰克逊28分 步行者6人上双轻取灰熊迎3连胜', '', '', '', '', '<p>11月26日讯 NBA常规赛步行者主场对阵灰熊，主场作战的步行者最近2连胜，而灰熊则是遭遇3连败。刚开场阶段两队陷入僵持，在霍勒迪兄弟和沃伦的努力下步行者逐渐取得领先，第二节虽然灰熊三分雨下缩小分差，但莫兰特一度受伤离场，步行者发挥稳定上半场以67-56领先灰熊。下半场莫兰特回来带领灰熊继续追分，但步行者攻防两端全面压制灰熊，分差一度被拉大到29分，虽然灰熊略微缩小分差但无力回天，最终步行者126-111轻松拿下灰熊取得3连胜，灰熊遭遇4连败。&nbsp;&nbsp;<br></p>', '', '1', '100', '0', '1574789651', '0', '', '', '', '', '', '');
INSERT INTO `tp_article` VALUES ('25', '24', '塔图姆20+6 希尔德11记三分砍41分 绿军险胜国王结束连败', '', '', '', '', '<p>11月26日讯 凯尔特人坐镇主场迎战国王，此役沃克因颈部扭伤缺阵。两队在上半场打得相当胶着，绿军凭借杰伦<span times=\"\" new=\"\" roman=\"\">-</span>布朗、斯玛特等人在次节连中三分，以<span times=\"\" new=\"\" roman=\"\">53-46</span>领先结束半场。易边再战，国王的希尔德突然爆发，他射入<span times=\"\" new=\"\" roman=\"\">5</span>记三分，单节独砍<span times=\"\" new=\"\" roman=\"\">21</span>分，帮助国王扳平比分。末节希尔德延续火热手感帮助国王一度完成反超，不过斯玛特在关键时刻连续杀进内线得分，最终帮助绿军以103-102险胜国王，结束<span times=\"\" new=\"\" roman=\"\">2</span>连败。&nbsp;&nbsp;<br></p>', '', '1', '100', '0', '1574789679', '0', '', '', '', '', '', '');
INSERT INTO `tp_article` VALUES ('26', '24', '西亚卡姆25+7 范弗里特24+8 恩比德11投全失 猛龙险胜76人', '', '', '', '', '<p>11月26日讯&nbsp;两支东部豪强球队76人和猛龙在多伦多迎来了遭遇战，76人近期取得4连胜状态正盛，猛龙也以一波3连胜的势头打出了卫冕冠军的风采。首节比赛猛龙在取得8-0的完美开局下未能守住优势，76人在节中迅速追上比分，并在节末以一波7-0的攻势取得6分领先。不过卫冕冠军很快就在第二节扭转局面，范弗里特和杰弗森联手拿下10分帮助球队反超比分，而在随后的拉锯战中，76人几度哑火导致局面相当被动，单节仅得15分也让76人丢失领先并落后对手2分进入下半场。下半场76人核心恩比德仍然找不到手感，三节9投0中一分未得，但76人整体表现一直紧咬比分伺机反扑，末节猛龙长达3分钟的哑火给了76人机会，后者送出7-0的攻势成功拉开比分。末段猛龙两记三分及时止住颓势，表现糟糕的恩比德连续出现失误和被盖，猛龙依靠西亚卡姆的致命2+1和关键抢断反超比分奠定胜局。最终，猛龙101-96力克76人拿下比赛。&nbsp;&nbsp;<br></p>', '', '1', '100', '0', '1574789698', '0', '', '', '', '', '', '');
INSERT INTO `tp_article` VALUES ('27', '24', '唐斯28+13+8 威金斯25分 杨37+9 森林狼送老鹰7连败', '', '', '', '', '<p>11月26日讯 NBA常规赛森林狼客场挑战老鹰，两队最近状态都比较差，森林狼已经2连败，老鹰更是遭遇6连败。刚开始双方你来我往比分交替上升，森林狼强攻内线取得领先，第二节特雷-杨突然爆发帮助老鹰追上并反超比分，上半场结束，老鹰64-54反超10分。下半场唐斯和威金斯两人带领森林狼找回节奏夺回领先，加上其他角色球员也发挥出色，森林狼最终125-113战胜老鹰结束2连败，而老鹰遭遇7连败。&nbsp;&nbsp;<br></p>', '', '1', '100', '0', '1574789719', '0', '', '', '', '', '', '');
INSERT INTO `tp_article` VALUES ('28', '24', '安东尼25+8 利拉德13+12 开拓者大胜公牛结束4连败', '', '', '', '', '<p>11月26日讯 公牛坐镇主场迎战开拓者，两队上半场打得相当胶着，开拓者凭借利拉德在次节末的发挥以<span times=\"\" new=\"\" roman=\"\">62-54</span>领先结束半场。易边再战，公牛命中率暴跌，开拓者则多点开花，利拉德、麦科勒姆和安东尼等连续得分，帮助球队建立起<span times=\"\" new=\"\" roman=\"\">20</span>分以上的领先。最终，6人得分上双的开拓者在客场以117-94大胜公牛，结束<span times=\"\" new=\"\" roman=\"\">4</span>连败的颓势。</p><p><br></p>', '', '1', '100', '1', '1574789745', '0', '', '', '', '', '', '');
INSERT INTO `tp_article` VALUES ('29', '24', '字母哥50+14+6 博扬24分 雄鹿主场力克爵士取得八连胜', '', '', '', '', '<p>11月26日讯 NBA常规赛继续进行，东部第一的雄鹿主场对阵爵士，半场比赛中爵士占据优势，雄鹿这边字母哥站出来连续砍分，而爵士外线开火稳住阵脚，半场结束，爵士57-48领先雄鹿。易边再战，第三节雄鹿状态火热，在字母哥的带领下单节拿下42分助雄鹿反超，三节战罢，雄鹿90-83领先爵士。最终双方胶着之中比赛来到最后两分钟雄鹿领先3分，字母哥自投自抢补扣得手，接着制造犯规两罚全中拿到个人50分，而爵士三分命中，米切尔突破也有，雄鹿领先两分进攻不中，最后12秒米切尔上篮被大洛佩兹钉板大帽，康诺顿稳住两罚，还剩3.4秒爵士暂停回来爵士三分不中，最终全场比赛结束，雄鹿主场力克爵士取得八连胜。&nbsp;&nbsp;<br></p>', '', '1', '100', '1', '1574789781', '0', '', '', '', '', '', '');
INSERT INTO `tp_article` VALUES ('30', '24', '詹姆斯33+14 戴维斯19+12+6 阿德30+5 湖人力克马刺迎八连胜', '', '', '', '', '<p>11月26日讯&nbsp;NBA常规赛，马刺今日坐镇主场迎战湖人，客队目前七连胜状态正盛，而主队在上次交锋不敌湖人后情况急转直下，遭遇了一波八连败，直到上场比赛才止住颓势，此役势必寻求复仇，本场卡鲁索迎来复出。比赛上来两队表现慢热，阿尔德里奇首节拿下12分帮助马刺紧咬比分，次节马刺逐渐在进攻端找到手感，成功在半场结束时反超比分。易边再战两队继续陷入拉锯，末节詹姆斯连中三分帮助湖人迅速将分差拉大到两位数，马刺没能再获得机会，最终湖人在客场力克马刺，迎来八连胜。&nbsp;&nbsp;<br></p><p><br></p>', '', '1', '100', '15', '1574789760', '0', '/uploads/20191130/d503d8179e6de3395078ee93ce149794.jpg', '', '', '', '', '');

-- ----------------------------
-- Table structure for `tp_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `tp_auth_group`;
CREATE TABLE `tp_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` text NOT NULL,
  `create_time` int(11) DEFAULT NULL COMMENT '时间',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_auth_group
-- ----------------------------
INSERT INTO `tp_auth_group` VALUES ('1', '超级管理员', '1', '0,1,4,5,38,6,7,10,11,12,14,13,8,15,16,17,18,19,20,21,9,22,23,24,25,28,27,26,29,3', '0', '1537944508');
INSERT INTO `tp_auth_group` VALUES ('5', '测试组', '1', '0,1,4,5,107,6,152,153,154,155,29,30,34,32,33,31,35,36,39,40,41,42,44,45,46,47,48,49,51,52,53,54,57,58,59,60,61,62,63,64,67,68,70,71,74,73,69,76,77,137,80,95,96,97,131,132,109,138,139,140,141,143,110,111,113,117,118,100,101,102,103,105,81,82,84,85,88,94,83,89,91,120,121,', '1536304526', '1553848122');

-- ----------------------------
-- Table structure for `tp_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `tp_auth_group_access`;
CREATE TABLE `tp_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_auth_group_access
-- ----------------------------
INSERT INTO `tp_auth_group_access` VALUES ('1', '1', '0', '1553846932');
INSERT INTO `tp_auth_group_access` VALUES ('12', '1', '1536456218', '1536467724');
INSERT INTO `tp_auth_group_access` VALUES ('13', '1', '1536467738', '1536468155');
INSERT INTO `tp_auth_group_access` VALUES ('14', '1', '1536468227', '1536468284');

-- ----------------------------
-- Table structure for `tp_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `tp_auth_rule`;
CREATE TABLE `tp_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pid` mediumint(8) NOT NULL DEFAULT '0' COMMENT '父栏目ID',
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `sort` mediumint(8) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `auth_open` tinyint(2) DEFAULT '1',
  `icon` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_auth_rule
-- ----------------------------
INSERT INTO `tp_auth_rule` VALUES ('1', '0', 'System', '系统设置', '1', '1', '', '1', '0', '1536819134', '1', 'fa fa-cogs');
INSERT INTO `tp_auth_rule` VALUES ('4', '1', 'System/system', '系统设置', '1', '1', '', '11', '1536327129', '1547520976', '1', 'fa fa-cog');
INSERT INTO `tp_auth_rule` VALUES ('5', '1', 'System/email', '邮箱配置', '1', '1', '', '12', '1536327444', '1536327838', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('6', '0', 'Auth', '权限管理', '1', '1', '', '2', '1536327468', '1547520856', '1', 'fa fa-group');
INSERT INTO `tp_auth_rule` VALUES ('7', '6', 'Auth/adminList', '管理员列表', '1', '1', '', '21', '1536327753', '1547523425', '1', 'fa fa-user');
INSERT INTO `tp_auth_rule` VALUES ('8', '6', 'Auth/adminGroup', '用户组列表', '1', '1', '', '22', '1536327787', '1547520881', '1', 'fa fa-group');
INSERT INTO `tp_auth_rule` VALUES ('9', '6', 'Auth/adminRule', '菜单规则', '1', '1', '', '23', '1536327826', '1547520923', '1', 'fa fa-bars');
INSERT INTO `tp_auth_rule` VALUES ('10', '7', 'Auth/adminAdd', '操作-添加', '1', '1', '', '211', '1536327882', '1536327952', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('11', '7', 'Auth/adminEdit', '操作-修改', '1', '1', '', '212', '1536327906', '1536327955', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('12', '7', 'Auth/adminDel', '操作-删除', '1', '1', '', '213', '1536327924', '1536327959', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('13', '7', 'Auth/adminState', '操作-状态', '1', '1', '', '215', '1536327944', '1536328025', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('14', '7', 'Auth/adminSelectDel', '操作-批量删除', '1', '1', '', '214', '1536328014', '1536328028', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('15', '8', 'Auth/groupAdd', '操作-添加', '1', '1', '', '221', '1536329901', '1536329910', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('16', '8', 'Auth/groupEdit', '操作-修改', '1', '1', '', '222', '1536329944', '1536329944', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('17', '8', 'Auth/groupDel', ' 操作-删除', '1', '1', '', '223', '1536329962', '1536329986', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('18', '8', 'Auth/groupSelectDel', '操作-批量删除', '1', '1', '', '224', '1536330024', '1536330033', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('19', '8', 'Auth/groupState', '操作-状态', '1', '1', '', '225', '1536330069', '1536330069', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('20', '8', 'Auth/groupAccess', '操作-权限', '1', '1', '', '226', '1536330111', '1536330111', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('21', '8', 'Auth/groupRunaccess', '操作-保存权限', '1', '1', '', '227', '1536330174', '1536330179', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('22', '9', 'Auth/ruleAdd', '操作-添加', '1', '1', '', '231', '1536330209', '1536330455', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('23', '9', 'Auth/ruleEdit', '操作-修改', '1', '1', '', '232', '1536330222', '1536330462', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('24', '9', 'Auth/ruleDel', '操作-删除', '1', '1', '', '233', '1536330236', '1536330463', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('25', '9', 'Auth/ruleSelectDel', '操作-批量删除', '1', '1', '', '234', '1536330261', '1536330465', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('26', '9', 'Auth/ruleState', '操作-菜单状态', '1', '1', '', '237', '1536330275', '1536330933', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('27', '9', 'Auth/ruleOpen', ' 操作-是否验证', '1', '1', '', '236', '1536330318', '1536330480', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('28', '9', 'Auth/ruleSort', '操作-排序', '1', '1', '', '235', '1536330434', '1536330478', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('29', '0', 'Database', '数据库管理', '1', '1', '', '3', '1536635655', '1536636028', '1', 'fa fa-database');
INSERT INTO `tp_auth_rule` VALUES ('30', '29', 'Database/database', '数据库备份', '1', '1', '', '31', '1536635724', '1536635724', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('31', '29', 'Database/restore', '还原数据库', '1', '1', '', '32', '1536635740', '1536635740', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('32', '30', 'Database/repair', '操作-修复', '1', '1', '', '311', '1536635767', '1536635767', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('33', '30', 'Database/optimize', '操作-优化', '1', '1', '', '312', '1536635780', '1536635780', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('34', '30', 'Database/backup', '操作-备份', '1', '1', '', '50', '1536635798', '1553763716', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('35', '31', 'Database/import', '操作-还原', '1', '1', '', '321', '1536635831', '1536635831', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('36', '31', 'Database/downFile', '操作-下载', '1', '1', '', '322', '1536635860', '1536635860', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('37', '31', 'Database/delSqlFiles', '操作-删除', '1', '1', '', '323', '1536635871', '1536635871', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('38', '5', 'System/trySend', '操作-测试邮件发送', '1', '1', '', '122', '1536653622', '1551863852', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('39', '0', 'Module', '模型管理', '1', '1', '', '4', '1536806647', '1536807712', '1', 'fa fa-th-list');
INSERT INTO `tp_auth_rule` VALUES ('40', '39', 'Module/index', '模型列表', '1', '1', '', '41', '1536806669', '1536806669', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('41', '40', 'Module/add', '操作-添加', '1', '1', '', '411', '1536806738', '1536806738', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('42', '40', 'Module/edit', '操作-修改', '1', '1', '', '413', '1536806774', '1553760852', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('43', '40', 'Module/del', '操作-删除', '1', '1', '', '415', '1536806788', '1553760858', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('44', '40', 'Module/moduleState', '操作-状态', '1', '1', '', '416', '1536806809', '1553760862', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('45', '40', 'Module/field', '模型字段', '1', '1', '', '417', '1536806827', '1553760866', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('46', '45', 'Module/fieldAdd', '操作-添加', '1', '1', '', '4171', '1536806876', '1553761041', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('47', '45', 'Module/fieldEdit', '操作-修改', '1', '1', '', '4173', '1536806894', '1553761048', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('48', '45', 'Module/listOrder', '操作-排序', '1', '1', '', '4175', '1536806907', '1553761056', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('49', '45', 'Module/fieldStatus', '操作-状态', '1', '1', '', '4176', '1536806921', '1553761059', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('50', '45', 'Module/fieldDel', '操作-删除', '1', '1', '', '4177', '1536806938', '1553761061', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('51', '0', 'Category', '栏目管理', '1', '1', '', '5', '1537932344', '1537932720', '1', 'fa fa-th');
INSERT INTO `tp_auth_rule` VALUES ('52', '51', 'Category/index', '栏目列表', '1', '1', '', '51', '1537932760', '1537932760', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('53', '52', 'Category/add', '操作-添加', '1', '1', '', '511', '1537932869', '1537932869', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('54', '52', 'Category/edit', '操作-修改', '1', '1', '', '513', '1537932909', '1553760586', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('55', '52', 'Category/del', '操作-删除', '1', '1', '', '515', '1537932950', '1553760595', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('56', '52', 'Category/selectDel', '操作-批量删除', '1', '1', '', '516', '1537932981', '1553760597', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('57', '52', 'Category/sort', '操作-排序', '1', '1', '', '517', '1537933010', '1553760598', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('58', '52', 'Category/isMenu', '操作-导航显示', '1', '1', '', '518', '1537933076', '1553760602', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('59', '52', 'Category/isNext', '操作-跳转下级', '1', '1', '', '519', '1537933111', '1553760603', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('60', '0', 'Function', '网站功能', '1', '1', '', '6', '1540965627', '1540966350', '1', 'fa fa-gear');
INSERT INTO `tp_auth_rule` VALUES ('61', '60', 'Link/index', '友情链接', '1', '1', '', '61', '1540966407', '1540966418', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('62', '61', 'Link/add', '操作-添加', '1', '1', '', '611', '1540966465', '1540966465', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('63', '61', 'Link/edit', '操作-修改', '1', '1', '', '613', '1540966488', '1551929946', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('64', '61', 'Link/state', '操作-状态', '1', '1', '', '615', '1540966534', '1551930026', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('65', '61', 'Link/del', '操作-删除', '1', '1', '', '616', '1540966564', '1551930029', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('66', '61', 'Link/selectDel', '操作-批量删除', '1', '1', '', '617', '1540966605', '1551930033', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('67', '61', 'Link/sort', '操作-排序', '1', '1', '', '616', '1540967631', '1540967631', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('68', '60', 'Ad/index', ' 广告管理', '1', '1', '', '62', '1541120280', '1551936480', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('69', '60', 'AdType/index', '广告位管理', '1', '1', '', '63', '1541120316', '1551936598', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('70', '68', 'Ad/add', '操作-添加', '1', '1', '', '621', '1541120344', '1551936492', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('71', '68', 'Ad/edit', '操作-修改', '1', '1', '', '623', '1541120377', '1551936511', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('72', '68', 'Ad/del', '操作-删除', '1', '1', '', '625', '1541120423', '1551936530', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('73', '68', 'Ad/sort', '操作-排序', '1', '1', '', '628', '1541120532', '1551936356', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('74', '68', 'Ad/state', '操作-状态', '1', '1', '', '627', '1541120573', '1551936544', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('75', '68', 'Ad/selectDel', '操作-批量删除', '1', '1', '', '626', '1541120586', '1551936538', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('76', '69', 'AdType/add', '操作-添加', '1', '1', '', '631', '1541120670', '1551936612', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('77', '69', 'AdType/edit', '操作-修改', '1', '1', '', '633', '1541120703', '1551936647', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('78', '69', 'AdType/del', '操作-删除', '1', '1', '', '635', '1541120724', '1551936721', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('79', '69', 'AdType/selectDel', '操作-批量删除', '1', '1', '', '636', '1541120754', '1551936734', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('80', '69', 'AdType/sort', '操作-排序', '1', '1', '', '638', '1541120809', '1551936816', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('81', '0', 'Users', '会员管理', '1', '1', '', '9', '1541399456', '1551774271', '1', 'fa fa-user');
INSERT INTO `tp_auth_rule` VALUES ('82', '81', 'Users/index', '会员列表', '1', '1', '', '91', '1541399506', '1551774272', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('83', '81', 'UsersType/index', '会员组', '1', '1', '', '92', '1541399529', '1551835915', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('84', '82', 'Users/add', '操作-添加', '1', '1', '', '911', '1541399593', '1551774275', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('85', '82', 'Users/edit', '操作-修改', '1', '1', '', '913', '1541399618', '1551849024', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('86', '82', 'Users/del', '操作-删除', '1', '1', '', '915', '1541399639', '1551849072', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('87', '82', 'Users/selectDel', '操作-批量删除', '1', '1', '', '916', '1541399652', '1551849077', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('88', '82', 'Users/state', '操作-状态', '1', '1', '', '915', '1541399712', '1551774281', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('89', '83', 'UsersType/add	', '操作-添加', '1', '1', '', '921', '1541399760', '1551835957', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('90', '83', 'UsersType/addPost', '操作-添加保存', '1', '1', '', '922', '1541399771', '1551835996', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('91', '83', 'UsersType/edit', '操作-修改', '1', '1', '', '923', '1541399787', '1551836024', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('92', '83', 'UsersType/editPost', '操作-修改保存', '1', '1', '', '924', '1541399799', '1551836049', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('93', '83', 'UsersType/del', '操作-删除', '1', '1', '', '925', '1541399809', '1551836070', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('94', '82', 'Users/download', '操作-下载', '1', '1', '', '917', '1541482111', '1551849111', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('95', '60', 'Debris/index', '碎片管理', '1', '1', '', '64', '1545728477', '1545728477', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('96', '95', 'Debris/add', '操作-添加', '1', '1', '', '641', '1545728513', '1545728513', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('97', '95', 'Debris/edit', '  操作-修改', '1', '1', '', '643', '1545728548', '1551930413', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('98', '95', 'Debris/del', '操作-删除', '1', '1', '', '645', '1545728564', '1551930402', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('99', '95', 'Debris/selectDel', '操作-批量删除', '1', '1', '', '646', '1545728706', '1551930405', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('100', '0', 'Template', '模板管理', '1', '1', '', '8', '1545898118', '1551774253', '1', 'fa fa-code');
INSERT INTO `tp_auth_rule` VALUES ('101', '100', 'Template/index', '模板管理', '1', '1', '', '81', '1545898150', '1551774256', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('102', '101', 'Template/add', '  操作-添加', '1', '1', '', '811', '1545898173', '1553760044', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('103', '101', 'Template/edit', '操作-修改', '1', '1', '', '813', '1545898195', '1553760052', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('104', '101', 'Template/delete', '操作-删除', '1', '1', '', '815', '1545898234', '1553760059', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('105', '101', 'Template/img', '媒体文件-列表', '1', '1', '', '816', '1545962259', '1553760061', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('106', '101', 'Template/imgDel', '媒体文件-删除', '1', '1', '', '817', '1545962287', '1553760065', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('107', '1', 'System/sms', '短信配置', '1', '1', '', '13', '1548400960', '1548400980', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('108', '107', 'System/trySms', '操作-测试短信发送', '1', '1', '', '132', '1548401007', '1551864103', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('109', '0', 'Addons', '插件管理', '1', '1', '', '7', '1551774339', '1551774539', '1', 'fa fa-plug');
INSERT INTO `tp_auth_rule` VALUES ('110', '109', 'Hooks/index', '钩子管理', '1', '1', '', '72', '1551774594', '1551774594', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('111', '110', 'Hooks/add', '操作-添加', '1', '1', '', '721', '1551774664', '1551774664', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('112', '110', 'Hooks/addPost', '操作-添加保存', '1', '1', '', '722', '1551774677', '1551774677', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('113', '110', 'Hooks/edit', '操作-修改', '1', '1', '', '723', '1551774690', '1551774690', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('114', '110', 'Hooks/editPost', '操作-修改保存', '1', '1', '', '724', '1551774707', '1551774707', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('115', '110', 'Hooks/del', '操作-删除', '1', '1', '', '725', '1551774721', '1551774721', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('116', '110', 'Hooks/selectDel', '操作-批量删除', '1', '1', '', '726', '1551774734', '1551774734', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('117', '110', 'Hooks/sort', '操作-排序', '1', '1', '', '727', '1551774749', '1551774749', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('118', '110', 'Hooks/state', '操作-状态', '1', '1', '', '728', '1551774814', '1551774814', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('119', '83', 'UsersType/selectDel', '操作-批量删除', '1', '1', '', '926', '1551836092', '1551836092', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('120', '83', 'UsersType/sort', '操作-排序', '1', '1', '', '927', '1551836104', '1551836104', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('121', '83', 'UsersType/state', '操作-状态', '1', '1', '', '928', '1551836132', '1551836132', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('122', '82', 'Users/addPost', '操作-添加保存', '1', '1', '', '912', '1551848993', '1551848993', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('123', '82', 'Users/editPost', '操作-修改保存', '1', '1', '', '914', '1551849010', '1551849040', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('124', '4', 'System/systemPost', '操作-修改保存', '1', '1', '', '111', '1551863272', '1551863272', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('125', '5', 'System/emailPost', '操作-修改保存', '1', '1', '', '121', '1551863826', '1551863826', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('126', '107', 'System/smsPost', '操作-修改保存', '1', '1', '', '131', '1551864090', '1551864090', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('127', '61', 'Link/addPost', '操作-添加保存', '1', '1', '', '612', '1551929778', '1551929778', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('128', '61', 'Link/editPost', '操作-修改保存', '1', '1', '', '614', '1551930004', '1551930017', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('129', '95', 'Debris/addPost', '操作-添加保存', '1', '1', '', '642', '1551930385', '1551930385', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('130', '95', 'Debris/editPost', '操作-修改保存', '1', '1', '', '644', '1551930435', '1551930435', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('131', '95', 'Debris/sort', '操作-排序', '1', '1', '', '647', '1551930477', '1551930477', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('132', '95', 'Debris/state', '操作-状态', '1', '1', '', '648', '1551930531', '1551930531', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('133', '68', 'Ad/addPost', '操作-添加保存', '1', '1', '', '622', '1551936291', '1551936504', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('134', '68', 'Ad/editPost', '操作-修改保存', '1', '1', '', '624', '1551936330', '1551936518', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('135', '69', 'AdType/addPost', '操作-添加保存', '1', '1', '', '632', '1551936630', '1551936630', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('136', '69', 'AdType/editPost', '操作-修改保存', '1', '1', '', '634', '1551936663', '1551936663', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('137', '69', 'AdType/state', '操作-状态', '1', '1', '', '637', '1551936803', '1551936814', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('138', '109', 'Addons/index', '插件管理', '1', '1', '', '71', '1552455295', '1552455295', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('139', '138', 'Addons/install', '操作-安装', '1', '1', '', '711', '1552455347', '1552455347', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('140', '138', 'Addons/uninstall', '操作-卸载', '1', '1', '', '712', '1552455359', '1552455359', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('141', '138', 'Addons/config', '操作-配置', '1', '1', '', '713', '1552455388', '1552455388', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('142', '138', 'Addons/configPost', '操作-配置保存', '1', '1', '', '714', '1552455400', '1552455400', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('143', '138', 'Addons/state', '操作-状态', '1', '1', '', '715', '1552455414', '1552455414', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('144', '101', 'Template/addPost', '操作-添加保存', '1', '1', '', '812', '1553759995', '1553760047', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('145', '101', 'Template/editPost', '操作-修改保存', '1', '1', '', '814', '1553760016', '1553760056', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('146', '52', 'Category/addPost', '操作-添加保存', '1', '1', '', '512', '1553760556', '1553760556', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('147', '52', 'Category/editPost', '操作-修改保存', '1', '1', '', '514', '1553760573', '1553760589', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('148', '40', 'Module/addPost', '操作-添加保存', '1', '1', '', '412', '1553760823', '1553760823', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('149', '40', 'Module/editPost', '操作-修改保存', '1', '1', '', '414', '1553760841', '1553760855', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('150', '45', 'Module/fieldAddPost', '操作-添加保存', '1', '1', '', '4172', '1553761010', '1553761046', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('151', '45', 'Module/fieldEditPost', '操作-修改保存', '1', '1', '', '4174', '1553761029', '1553761053', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('152', '6', 'AdminLog/index', '管理员日志', '1', '1', '', '24', '1553845141', '1553845141', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('153', '152', 'AdminLog/del', '操作-删除', '1', '1', '', '241', '1553845181', '1553845181', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('154', '152', 'AdminLog/selectDel', '操作-批量删除', '1', '1', '', '242', '1553845204', '1553845204', '1', '');
INSERT INTO `tp_auth_rule` VALUES ('155', '152', 'AdminLog/edit', '操作-查看', '1', '1', '', '243', '1553848110', '1553848110', '1', '');

-- ----------------------------
-- Table structure for `tp_cate`
-- ----------------------------
DROP TABLE IF EXISTS `tp_cate`;
CREATE TABLE `tp_cate` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `catname` char(100) NOT NULL COMMENT '栏目名称',
  `enname` char(100) DEFAULT NULL COMMENT '栏目英文名称',
  `catdir` char(100) DEFAULT NULL COMMENT '目录',
  `parentid` int(20) NOT NULL DEFAULT '0' COMMENT '父栏目ID',
  `moduleid` int(20) DEFAULT '1' COMMENT '类型',
  `sort` int(20) NOT NULL DEFAULT '50' COMMENT '排序',
  `url` varchar(255) DEFAULT NULL COMMENT '跳转链接',
  `content` text COMMENT '内容',
  `image` char(255) DEFAULT NULL COMMENT '图片',
  `icoimage` char(255) DEFAULT NULL COMMENT '小图片',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键词',
  `description` varchar(800) DEFAULT NULL COMMENT '描述',
  `summary` varchar(800) DEFAULT NULL COMMENT '简介',
  `template_list` char(100) DEFAULT NULL,
  `template_show` char(100) DEFAULT NULL,
  `pagesize` int(4) DEFAULT '20' COMMENT '分页显示数量',
  `is_menu` int(2) NOT NULL DEFAULT '1' COMMENT '是否导航显示',
  `is_next` int(2) NOT NULL DEFAULT '0' COMMENT '是否跳转到下级栏目',
  `is_blank` int(2) DEFAULT '0' COMMENT '是否新窗口打开',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '状态（前后台状态）',
  PRIMARY KEY (`id`),
  KEY `pid` (`parentid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of tp_cate
-- ----------------------------
INSERT INTO `tp_cate` VALUES ('6', '关于我们', 'About Us', 'about', '0', '1', '1', '', null, '/uploads/20181224/65ea8dcb1cbd16c8dc46144069afeaf5.jpg', '', '', '', '', '', 'page_list.html', '', '0', '1', '0', '0', '1');
INSERT INTO `tp_cate` VALUES ('7', '公司介绍', 'Company Introduction', 'introduction', '6', '1', '11', '', null, '', '', '', '', '', '', 'page_list.html', '', '0', '1', '0', '0', '1');
INSERT INTO `tp_cate` VALUES ('8', '新闻中心', 'News Center', 'news', '0', '26', '2', '', null, '/uploads/20181224/65ea8dcb1cbd16c8dc46144069afeaf5.jpg', '', '', '', '', '', '', '', '0', '1', '0', '0', '1');
INSERT INTO `tp_cate` VALUES ('9', '公司新闻', '', '', '8', '26', '21', '', null, '', '', '', '', '', '', null, null, '0', '1', '0', '0', '1');
INSERT INTO `tp_cate` VALUES ('10', '公司文化', '', 'culture', '6', '1', '12', '', null, '', '', '', '', '', '', null, null, '0', '1', '0', '0', '1');
INSERT INTO `tp_cate` VALUES ('11', '资质荣誉', 'Qualifications & Honours', 'honours', '0', '3', '3', '', null, '/uploads/20181224/bf913edfcd8dcdeeec910860f12a0542.jpg', '', '', '', '', '', '', '', '0', '1', '0', '0', '1');
INSERT INTO `tp_cate` VALUES ('13', '行业资讯', 'Industry Information', 'information', '8', '26', '22', '', null, '', '', '', '', '', '', 'article_list.html', 'article_show.html', '0', '1', '0', '0', '1');
INSERT INTO `tp_cate` VALUES ('14', '产品中心', 'Pdoduct  Center', 'product', '0', '4', '4', '', null, '/uploads/20181224/643f5b9e297a0bd3accd79981ce347a1.jpg', '', '', '', '', '', 'product_list.html', 'product_show.html', '0', '1', '0', '0', '1');
INSERT INTO `tp_cate` VALUES ('15', '精选产品', '', '', '14', '4', '41', '', null, '', '', '', '', '', '', 'product_list.html', 'product_show.html', '0', '1', '0', '0', '1');
INSERT INTO `tp_cate` VALUES ('16', '热销产品', '', '', '14', '4', '42', '', null, '', '', '', '', '', '', 'product_list.html', 'product_show.html', '0', '1', '0', '0', '1');
INSERT INTO `tp_cate` VALUES ('17', '资料下载', 'Download', '', '0', '5', '5', '', null, '/uploads/20181224/f4ef6f5df6abac86e8c685b2f2549079.jpg', '', '', '', '', '', 'download_list.html', 'download_show.html', '0', '1', '0', '0', '1');
INSERT INTO `tp_cate` VALUES ('18', '优秀团队', 'Team', 'team', '0', '6', '6', '', null, '/uploads/20181224/bf3d6e8ff8f21760572ac25dd216daf9.jpg', '', '', '', '', '', 'team_list.html', 'team_show.html', '0', '1', '0', '0', '1');
INSERT INTO `tp_cate` VALUES ('19', '联系我们', 'Contact Us', 'contact', '0', '27', '7', '', null, '/uploads/20181224/65ea8dcb1cbd16c8dc46144069afeaf5.jpg', '', '', '', '', '', 'message_list.html', '', '0', '1', '0', '0', '1');
INSERT INTO `tp_cate` VALUES ('20', '篮球', 'lanqiu', 'lanqiu', '0', '28', '50', '', null, '', '', '', '', '', '', 'index_list.html', 'article_show.html', '0', '1', '0', '0', '1');
INSERT INTO `tp_cate` VALUES ('21', '直播', 'live', 'live', '20', '28', '1', '', null, '', '', '', '', '', '', 'live_list.html', 'live_show.html', '0', '1', '0', '0', '1');
INSERT INTO `tp_cate` VALUES ('23', '录像', 'luxiang', 'luxiang', '20', '28', '50', '', null, '', '', '', '', '', '', 'video_list.html', 'video_show.html', '2', '1', '0', '0', '1');
INSERT INTO `tp_cate` VALUES ('24', '新闻', 'xinwen', 'xinwen', '20', '26', '50', '', null, '', '', '', '', '', '', 'article_list.html', 'article_show.html', '0', '1', '0', '0', '1');

-- ----------------------------
-- Table structure for `tp_config`
-- ----------------------------
DROP TABLE IF EXISTS `tp_config`;
CREATE TABLE `tp_config` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(50) DEFAULT NULL COMMENT '配置的key键名',
  `value` varchar(512) DEFAULT NULL COMMENT '配置的val值',
  `inc_type` varchar(64) DEFAULT NULL COMMENT '配置分组',
  `desc` varchar(50) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_config
-- ----------------------------
INSERT INTO `tp_config` VALUES ('60', 'smtp_server', 'smtp.qq.com', 'smtp', '0');
INSERT INTO `tp_config` VALUES ('61', 'smtp_port', '465', 'smtp', '0');
INSERT INTO `tp_config` VALUES ('62', 'smtp_user', '407593529@qq.com', 'smtp', '0');
INSERT INTO `tp_config` VALUES ('63', 'smtp_pwd', '', 'smtp', '0');
INSERT INTO `tp_config` VALUES ('64', 'regis_smtp_enable', '1', 'smtp', '0');
INSERT INTO `tp_config` VALUES ('65', 'test_eamil', '', 'smtp', '0');
INSERT INTO `tp_config` VALUES ('94', 'test_mobile', '', 'sms', null);
INSERT INTO `tp_config` VALUES ('93', 'signName', '', 'sms', null);
INSERT INTO `tp_config` VALUES ('92', 'templateCode', '', 'sms', null);
INSERT INTO `tp_config` VALUES ('91', 'accessKeySecret', '', 'sms', null);
INSERT INTO `tp_config` VALUES ('90', 'accessKeyId', 'LTAIqinwPNwEawUK', 'sms', null);
INSERT INTO `tp_config` VALUES ('88', 'email_id', 'SIYUCMS', 'smtp', '0');
INSERT INTO `tp_config` VALUES ('89', 'test_eamil_info', ' 您好！这是一封来自SIYUCMS的测试邮件！', 'smtp', '0');

-- ----------------------------
-- Table structure for `tp_debris`
-- ----------------------------
DROP TABLE IF EXISTS `tp_debris`;
CREATE TABLE `tp_debris` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `name` varchar(255) DEFAULT NULL COMMENT '调用',
  `content` text COMMENT '内容',
  `url` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort` mediumint(8) DEFAULT '50' COMMENT '排序',
  `status` int(1) DEFAULT '0' COMMENT '状态（1 正常，0 锁定）',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_debris
-- ----------------------------
INSERT INTO `tp_debris` VALUES ('1', '关于我们', 'AboutUs', '<p>SIYUCMS内容管理系统，包含系统设置，权限管理，模型管理，数据库管理，栏目管理，会员管理，网站功能，模版管理，微信管理等相关模块。<br>SIYUCMS内容管理系统，包含系统设置，权限管理，模型管理，数据库管理，栏目管理，会员管理，网站功能，模版管理，微信管理等相关模块。&nbsp;&nbsp;</p><p><br></p>', '12', '', '3', '1', '1', '1545729604', '1551930573');

-- ----------------------------
-- Table structure for `tp_download`
-- ----------------------------
DROP TABLE IF EXISTS `tp_download`;
CREATE TABLE `tp_download` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目',
  `title` varchar(70) NOT NULL DEFAULT '' COMMENT '标题',
  `title_style` varchar(225) NOT NULL DEFAULT '' COMMENT '标题样式',
  `thumb` varchar(225) NOT NULL DEFAULT '' COMMENT '缩略图',
  `keywords` varchar(80) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` mediumtext NOT NULL COMMENT 'SEO简介',
  `content` text NOT NULL COMMENT '内容',
  `template` varchar(80) NOT NULL DEFAULT '' COMMENT '模板',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `sort` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `image` varchar(80) NOT NULL DEFAULT '' COMMENT '缩略图',
  `images` mediumtext NOT NULL COMMENT '图片集',
  `download` varchar(80) NOT NULL DEFAULT '' COMMENT '文件下载',
  `author` varchar(50) NOT NULL DEFAULT 'Admin' COMMENT '作者',
  `source` varchar(255) NOT NULL DEFAULT '' COMMENT '来源',
  `summary` text NOT NULL COMMENT '摘要',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`sort`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `sort` (`id`,`catid`,`status`,`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_download
-- ----------------------------
INSERT INTO `tp_download` VALUES ('10', '17', '招聘表格下载', '', '', '', '', '', '', '1', '100', '0', '1545633670', '0', '/uploads/20181224/6b449574a2358edd20c10f10f64bd09c.jpg', '', '/uploads/20181224/06d08f008e54d9ac4eae3d0a6d53cff7.rar', '管理员', '本站', '');
INSERT INTO `tp_download` VALUES ('11', '17', '报名表格下载', '', '', '', '', '', '', '1', '100', '0', '1545635098', '0', '/uploads/20181224/d6df5528408d8974777ae29280428ad6.jpg', '', '/uploads/20181224/4d3569541beb373334582df5aaaa126b.rar', '管理员', '本站', '');
INSERT INTO `tp_download` VALUES ('12', '17', '供应商表格下载', '', '', '', '', '', '', '1', '100', '0', '1545635131', '0', '/uploads/20181224/363944f333897882e4424bacb186e693.jpg', '', '/uploads/20181224/d21fb51f503d487d67a4c8c10577c458.rar', '管理员', '本站', '');

-- ----------------------------
-- Table structure for `tp_field`
-- ----------------------------
DROP TABLE IF EXISTS `tp_field`;
CREATE TABLE `tp_field` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `tips` varchar(150) NOT NULL DEFAULT '',
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL DEFAULT '',
  `errormsg` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `setup` text,
  `ispost` tinyint(1) NOT NULL DEFAULT '0',
  `unpostgroup` varchar(60) NOT NULL DEFAULT '',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_field
-- ----------------------------
INSERT INTO `tp_field` VALUES ('1', '26', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '1', '1', '1');
INSERT INTO `tp_field` VALUES ('2', '26', 'title', '标题', '', '1', '1', '255', '', '标题必须为1-80个字符', '', 'title', '', '1', '', '2', '1', '1');
INSERT INTO `tp_field` VALUES ('3', '26', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '15', '1', '1');
INSERT INTO `tp_field` VALUES ('4', '26', 'description', 'SEO简介', '', '0', '0', '1200', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'default\' => \'发3\',\n)', '1', '', '16', '1', '1');
INSERT INTO `tp_field` VALUES ('5', '26', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'edittype\' => \'wangEditor\',\n)', '1', '', '5', '1', '1');
INSERT INTO `tp_field` VALUES ('6', '26', 'create_time', '发布时间', '', '1', '0', '0', 'date', '', 'createtime', 'datetime', '', '1', '', '10', '1', '1');
INSERT INTO `tp_field` VALUES ('7', '26', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '', '11', '1', '1');
INSERT INTO `tp_field` VALUES ('8', '26', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)', '1', '', '12', '1', '1');
INSERT INTO `tp_field` VALUES ('10', '26', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '14', '1', '1');
INSERT INTO `tp_field` VALUES ('13', '26', 'image', '缩略图', '', '0', '0', '120', '', '', '', 'image', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '7', '1', '0');
INSERT INTO `tp_field` VALUES ('14', '26', 'images', '图片集', '', '0', '0', '0', '', '', '', 'images', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '8', '0', '0');
INSERT INTO `tp_field` VALUES ('15', '26', 'download', '文件下载', '', '0', '0', '0', '', '', '', 'file', 'array (\n  \'upload_allowext\' => \'zip|rar|doc|ppt\',\n)', '0', '', '9', '0', '0');
INSERT INTO `tp_field` VALUES ('29', '26', 'source', '来源', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '4', '1', '0');
INSERT INTO `tp_field` VALUES ('28', '26', 'author', '作者', '', '0', '0', '50', '', '', '', 'text', 'array (\n  \'default\' => \'Admin\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '3', '1', '0');
INSERT INTO `tp_field` VALUES ('21', '26', 'sort', '排序', '', '1', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'100\',\n)', '0', '', '13', '1', '1');
INSERT INTO `tp_field` VALUES ('22', '1', 'catid', '栏目', '', '1', '0', '0', '', '', '', 'catid', null, '0', '', '0', '1', '0');
INSERT INTO `tp_field` VALUES ('23', '1', 'title', '标题', '', '1', '0', '0', '', '', '', 'title', null, '0', '', '0', '1', '0');
INSERT INTO `tp_field` VALUES ('24', '1', 'keywords', '关键词', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '1', '0');
INSERT INTO `tp_field` VALUES ('25', '1', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'text\',\n  \'default\' => \'\',\n)', '0', '', '0', '1', '0');
INSERT INTO `tp_field` VALUES ('26', '1', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'edittype\' => \'UEditor\',\n)', '0', '', '0', '1', '0');
INSERT INTO `tp_field` VALUES ('27', '1', 'hits', '点击次数', '', '1', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'100\',\n)', '0', '', '0', '1', '0');
INSERT INTO `tp_field` VALUES ('30', '3', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '1', '1', '1');
INSERT INTO `tp_field` VALUES ('31', '3', 'title', '标题', '', '1', '1', '70', '', '标题必须为1-80个字符', '', 'title', '', '1', '', '2', '1', '1');
INSERT INTO `tp_field` VALUES ('32', '3', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '15', '1', '1');
INSERT INTO `tp_field` VALUES ('33', '3', 'description', 'SEO简介', '', '0', '0', '1200', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'default\' => \'发3\',\n)', '1', '', '16', '1', '1');
INSERT INTO `tp_field` VALUES ('34', '3', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'edittype\' => \'UEditor\',\n)', '1', '', '5', '1', '1');
INSERT INTO `tp_field` VALUES ('35', '3', 'create_time', '发布时间', '', '1', '0', '0', 'date', '', 'createtime', 'datetime', '', '1', '', '10', '1', '1');
INSERT INTO `tp_field` VALUES ('36', '3', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '', '11', '1', '1');
INSERT INTO `tp_field` VALUES ('37', '3', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)', '1', '', '12', '1', '1');
INSERT INTO `tp_field` VALUES ('38', '3', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '14', '1', '1');
INSERT INTO `tp_field` VALUES ('39', '3', 'image', '缩略图', '', '0', '0', '120', '', '', '', 'image', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '7', '1', '0');
INSERT INTO `tp_field` VALUES ('40', '3', 'images', '图片集', '', '0', '0', '0', '', '', '', 'images', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '8', '1', '0');
INSERT INTO `tp_field` VALUES ('41', '3', 'download', '文件下载', '', '0', '0', '0', '', '', '', 'file', 'array (\n  \'upload_allowext\' => \'zip|rar|doc|ppt\',\n)', '0', '', '9', '1', '0');
INSERT INTO `tp_field` VALUES ('42', '3', 'source', '来源', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '4', '1', '0');
INSERT INTO `tp_field` VALUES ('43', '3', 'author', '作者', '', '0', '0', '50', '', '', '', 'text', 'array (\n  \'default\' => \'Admin\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '3', '1', '0');
INSERT INTO `tp_field` VALUES ('44', '3', 'sort', '排序', '', '1', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'100\',\n)', '0', '', '13', '1', '1');
INSERT INTO `tp_field` VALUES ('45', '4', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '1', '1', '1');
INSERT INTO `tp_field` VALUES ('46', '4', 'title', '标题', '', '1', '1', '70', '', '标题必须为1-80个字符', '', 'title', '', '1', '', '2', '1', '1');
INSERT INTO `tp_field` VALUES ('47', '4', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '15', '1', '1');
INSERT INTO `tp_field` VALUES ('48', '4', 'description', 'SEO简介', '', '0', '0', '1200', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'default\' => \'发3\',\n)', '1', '', '16', '1', '1');
INSERT INTO `tp_field` VALUES ('49', '4', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'edittype\' => \'UEditor\',\n)', '1', '', '5', '1', '1');
INSERT INTO `tp_field` VALUES ('50', '4', 'create_time', '发布时间', '', '1', '0', '0', 'date', '', 'createtime', 'datetime', '', '1', '', '10', '1', '1');
INSERT INTO `tp_field` VALUES ('51', '4', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '', '11', '1', '1');
INSERT INTO `tp_field` VALUES ('52', '4', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)', '1', '', '12', '1', '1');
INSERT INTO `tp_field` VALUES ('53', '4', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '14', '1', '1');
INSERT INTO `tp_field` VALUES ('54', '4', 'image', '缩略图', '', '0', '0', '120', '', '', '', 'image', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '7', '1', '0');
INSERT INTO `tp_field` VALUES ('55', '4', 'images', '图片集', '', '0', '0', '0', '', '', '', 'images', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '8', '1', '0');
INSERT INTO `tp_field` VALUES ('56', '4', 'download', '文件下载', '', '0', '0', '0', '', '', '', 'file', 'array (\n  \'upload_allowext\' => \'zip|rar|doc|ppt\',\n)', '0', '', '9', '1', '0');
INSERT INTO `tp_field` VALUES ('57', '4', 'source', '来源', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '4', '1', '0');
INSERT INTO `tp_field` VALUES ('58', '4', 'author', '作者', '', '0', '0', '50', '', '', '', 'text', 'array (\n  \'default\' => \'Admin\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '3', '1', '0');
INSERT INTO `tp_field` VALUES ('59', '4', 'sort', '排序', '', '1', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'100\',\n)', '0', '', '13', '1', '1');
INSERT INTO `tp_field` VALUES ('60', '5', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '1', '1', '1');
INSERT INTO `tp_field` VALUES ('61', '5', 'title', '标题', '', '1', '1', '70', '', '标题必须为1-80个字符', '', 'title', '', '1', '', '2', '1', '1');
INSERT INTO `tp_field` VALUES ('62', '5', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '15', '1', '1');
INSERT INTO `tp_field` VALUES ('63', '5', 'description', 'SEO简介', '', '0', '0', '1200', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'default\' => \'发3\',\n)', '1', '', '16', '1', '1');
INSERT INTO `tp_field` VALUES ('64', '5', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'edittype\' => \'UEditor\',\n)', '1', '', '5', '1', '1');
INSERT INTO `tp_field` VALUES ('65', '5', 'create_time', '发布时间', '', '1', '0', '0', 'date', '', 'createtime', 'datetime', '', '1', '', '10', '1', '1');
INSERT INTO `tp_field` VALUES ('66', '5', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '', '11', '1', '1');
INSERT INTO `tp_field` VALUES ('67', '5', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)', '1', '', '12', '1', '1');
INSERT INTO `tp_field` VALUES ('68', '5', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '14', '1', '1');
INSERT INTO `tp_field` VALUES ('69', '5', 'image', '缩略图', '', '0', '0', '120', '', '', '', 'image', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '7', '1', '0');
INSERT INTO `tp_field` VALUES ('70', '5', 'images', '图片集', '', '0', '0', '0', '', '', '', 'images', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '8', '1', '0');
INSERT INTO `tp_field` VALUES ('71', '5', 'download', '文件下载', '', '0', '0', '0', '', '', '', 'file', 'array (\n  \'upload_allowext\' => \'zip|rar|doc|ppt\',\n)', '0', '', '9', '1', '0');
INSERT INTO `tp_field` VALUES ('72', '5', 'source', '来源', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '4', '1', '0');
INSERT INTO `tp_field` VALUES ('73', '5', 'author', '作者', '', '0', '0', '50', '', '', '', 'text', 'array (\n  \'default\' => \'Admin\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '3', '1', '0');
INSERT INTO `tp_field` VALUES ('74', '5', 'sort', '排序', '', '1', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'100\',\n)', '0', '', '13', '1', '1');
INSERT INTO `tp_field` VALUES ('75', '6', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '1', '1', '1');
INSERT INTO `tp_field` VALUES ('76', '6', 'title', '标题', '', '1', '1', '70', '', '标题必须为1-80个字符', '', 'title', '', '1', '', '2', '1', '1');
INSERT INTO `tp_field` VALUES ('77', '6', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '15', '1', '1');
INSERT INTO `tp_field` VALUES ('78', '6', 'description', 'SEO简介', '', '0', '0', '1200', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'default\' => \'发3\',\n)', '1', '', '16', '1', '1');
INSERT INTO `tp_field` VALUES ('79', '6', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'edittype\' => \'UEditor\',\n)', '1', '', '5', '1', '1');
INSERT INTO `tp_field` VALUES ('80', '6', 'create_time', '发布时间', '', '1', '0', '0', 'date', '', 'createtime', 'datetime', '', '1', '', '10', '1', '1');
INSERT INTO `tp_field` VALUES ('81', '6', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '', '11', '1', '1');
INSERT INTO `tp_field` VALUES ('82', '6', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)', '1', '', '12', '1', '1');
INSERT INTO `tp_field` VALUES ('83', '6', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '14', '1', '1');
INSERT INTO `tp_field` VALUES ('84', '6', 'image', '缩略图', '', '0', '0', '120', '', '', '', 'image', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '7', '1', '0');
INSERT INTO `tp_field` VALUES ('85', '6', 'images', '图片集', '', '0', '0', '0', '', '', '', 'images', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '8', '1', '0');
INSERT INTO `tp_field` VALUES ('86', '6', 'download', '文件下载', '', '0', '0', '0', '', '', '', 'file', 'array (\n  \'upload_allowext\' => \'zip|rar|doc|ppt\',\n)', '0', '', '9', '1', '0');
INSERT INTO `tp_field` VALUES ('87', '6', 'source', '来源', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '4', '1', '0');
INSERT INTO `tp_field` VALUES ('88', '6', 'author', '作者', '', '0', '0', '50', '', '', '', 'text', 'array (\n  \'default\' => \'Admin\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '3', '1', '0');
INSERT INTO `tp_field` VALUES ('89', '6', 'sort', '排序', '', '1', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'100\',\n)', '0', '', '13', '1', '1');
INSERT INTO `tp_field` VALUES ('90', '26', 'summary', '摘要', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'text\',\n  \'default\' => \'\',\n)', '0', '', '6', '1', '0');
INSERT INTO `tp_field` VALUES ('91', '3', 'summary', '摘要', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'text\',\n  \'default\' => \'\',\n)', '0', '', '6', '1', '0');
INSERT INTO `tp_field` VALUES ('92', '4', 'summary', '摘要', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'text\',\n  \'default\' => \'\',\n)', '0', '', '6', '1', '0');
INSERT INTO `tp_field` VALUES ('93', '5', 'summary', '摘要', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'text\',\n  \'default\' => \'\',\n)', '0', '', '6', '1', '0');
INSERT INTO `tp_field` VALUES ('94', '6', 'summary', '摘要', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'text\',\n  \'default\' => \'\',\n)', '0', '', '6', '1', '0');
INSERT INTO `tp_field` VALUES ('95', '27', 'catid', '栏目', '', '0', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '1', '1', '1');
INSERT INTO `tp_field` VALUES ('96', '27', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', '', '1', '', '2', '1', '1');
INSERT INTO `tp_field` VALUES ('106', '27', 'contact', '联系方式', '', '1', '0', '0', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '9', '1', '0');
INSERT INTO `tp_field` VALUES ('99', '27', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'edittype\' => \'UEditor\',\n)', '1', '', '3', '1', '1');
INSERT INTO `tp_field` VALUES ('100', '27', 'create_time', '添加时间', '', '1', '0', '0', 'date', '', 'createtime', 'datetime', '', '1', '', '4', '1', '1');
INSERT INTO `tp_field` VALUES ('101', '27', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'已处理|1\r\n未处理|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'default\' => \'1\',\n)', '1', '', '5', '1', '1');
INSERT INTO `tp_field` VALUES ('104', '27', 'name', '姓名', '', '1', '0', '0', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '8', '1', '0');
INSERT INTO `tp_field` VALUES ('105', '27', 'hits', '点击次数', '', '0', '0', '0', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)', '0', '', '7', '1', '0');
INSERT INTO `tp_field` VALUES ('103', '27', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '6', '1', '1');
INSERT INTO `tp_field` VALUES ('107', '28', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '1', '1', '1');
INSERT INTO `tp_field` VALUES ('108', '28', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', '', '1', '', '2', '1', '1');
INSERT INTO `tp_field` VALUES ('109', '28', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '3', '1', '1');
INSERT INTO `tp_field` VALUES ('110', '28', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '4', '1', '1');
INSERT INTO `tp_field` VALUES ('111', '28', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'edittype\' => \'wangEditor\',\n)', '1', '', '15', '0', '1');
INSERT INTO `tp_field` VALUES ('112', '28', 'create_time', '发布时间', '', '1', '0', '0', 'date', '', 'createtime', 'datetime', '', '1', '', '8', '1', '1');
INSERT INTO `tp_field` VALUES ('113', '28', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '', '9', '1', '1');
INSERT INTO `tp_field` VALUES ('114', '28', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '10', '1', '1');
INSERT INTO `tp_field` VALUES ('115', '28', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '13', '1', '1');
INSERT INTO `tp_field` VALUES ('116', '28', 'livetime', '直播时间', '', '0', '0', '10', '', '', '', 'datetime', null, '0', '', '5', '1', '0');
INSERT INTO `tp_field` VALUES ('117', '28', 'livetype', '直播类型', '', '0', '0', '255', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '6', '1', '0');
INSERT INTO `tp_field` VALUES ('118', '28', 'livelist', '直播信号', '', '0', '0', '1000', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'text\',\n  \'default\' => \'\',\n)', '0', '', '7', '1', '0');
INSERT INTO `tp_field` VALUES ('119', '28', 'litpic', '缩略图', '', '0', '0', '255', '', '', '', 'image', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '8', '1', '0');
INSERT INTO `tp_field` VALUES ('120', '28', 'shorttitle', '短标题', '', '0', '0', '255', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '2', '1', '0');
INSERT INTO `tp_field` VALUES ('121', '28', 'live_status', '直播状态', '', '0', '0', '10', '', '', '', 'select', 'array (\n  \'options\' => \'未开始|0\r\n直播中|1\r\n已结束|2\',\n  \'fieldtype\' => \'varchar\',\n  \'default\' => \'0\',\n)', '0', '', '7', '1', '0');

-- ----------------------------
-- Table structure for `tp_hooks`
-- ----------------------------
DROP TABLE IF EXISTS `tp_hooks`;
CREATE TABLE `tp_hooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '钩子名称',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '钩子描述',
  `addons` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '钩子挂载的插件 ''，''分割',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` mediumint(8) NOT NULL DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='钩子列表';

-- ----------------------------
-- Records of tp_hooks
-- ----------------------------
INSERT INTO `tp_hooks` VALUES ('6', 'test', '测试钩子', '', '1552010627', '1552281504', '1', '1');

-- ----------------------------
-- Table structure for `tp_link`
-- ----------------------------
DROP TABLE IF EXISTS `tp_link`;
CREATE TABLE `tp_link` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '网站名称',
  `url` varchar(255) NOT NULL COMMENT '网站地址',
  `logo` varchar(255) DEFAULT NULL COMMENT '网站logo',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort` mediumint(8) DEFAULT '50' COMMENT '排序',
  `status` int(1) DEFAULT '0' COMMENT '状态（1 正常，0 锁定）',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_link
-- ----------------------------
INSERT INTO `tp_link` VALUES ('2', '百度', 'http://www.baidu.com', '', '联系人：XXX', '1', '1', null, '1553837737');
INSERT INTO `tp_link` VALUES ('5', 'SIYUCMS', 'http://www.siyucms.com', '', '', '2', '1', '1548727536', '1551930738');

-- ----------------------------
-- Table structure for `tp_live`
-- ----------------------------
DROP TABLE IF EXISTS `tp_live`;
CREATE TABLE `tp_live` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `title` varchar(120) NOT NULL DEFAULT '' COMMENT '标题',
  `title_style` varchar(225) NOT NULL DEFAULT '' COMMENT '标题样式',
  `thumb` varchar(225) NOT NULL DEFAULT '' COMMENT '缩略图',
  `keywords` varchar(120) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` mediumtext NOT NULL COMMENT '描述',
  `content` mediumtext NOT NULL COMMENT '内容',
  `template` varchar(40) NOT NULL DEFAULT '' COMMENT '模板',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `hits` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `livetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '直播时间',
  `livetype` varchar(255) NOT NULL DEFAULT '' COMMENT '直播类型',
  `livelist` text NOT NULL COMMENT '直播信号',
  `litpic` varchar(80) NOT NULL DEFAULT '' COMMENT '缩略图',
  `shorttitle` varchar(255) NOT NULL DEFAULT '' COMMENT '短标题',
  `live_status` varchar(10) NOT NULL DEFAULT '0' COMMENT '直播状态',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`sort`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `sort` (`id`,`catid`,`status`,`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_live
-- ----------------------------
INSERT INTO `tp_live` VALUES ('1', '21', '11月26日 09:30 NBA常规赛 湖人vs马刺', '', '', 'NBA常规赛,湖人,马刺', '', '<p><br></p>', '', '1', '0', '34', '1574739420', '0', '1574731800', 'NBA常规赛', 'QQ直播|https://sports.qq.com/kbsweb/game.htm?mid=100000:54431852', '', '湖人vs马刺', '2');
INSERT INTO `tp_live` VALUES ('2', '23', '11月26日 NBA常规赛 篮网vs骑士 录像', '', '', '', '', '<p><br></p>', '', '1', '0', '1', '1574745540', '0', '1574745540', '', '第一节|https://v.qq.com/x/cover/mzc00200gqqswxy/t0032muoa10.html\r\n第二节|https://v.qq.com/x/cover/mzc00200gqqswxy/m0032346c8h.html\r\n第三节|https://v.qq.com/x/cover/mzc00200gqqswxy/c0032fp4guf.html\r\n第四节|https://v.qq.com/x/cover/mzc00200gqqswxy/v00328vsl6l.html', '/uploads/20191126/848b8983aad45dc1167bd7ac8ffbd4f7.jpg', '', '0');
INSERT INTO `tp_live` VALUES ('3', '23', '11月26日 NBA常规赛 灰熊vs步行者 录像', '', '', '', '', '<p><br></p>', '', '1', '0', '0', '1574747299', '0', '1574747299', '', '', '/uploads/20191126/d85aa08f9de2d0ca076fb99b898bfe42.jpg', '', '0');
INSERT INTO `tp_live` VALUES ('4', '21', '11月27日 09:30 NBA常规赛 快船vs独行侠', '', '', '', '', '<p><br></p>', '', '1', '0', '2', '1574788200', '0', '1574818200', 'NBA常规赛', '', '', '快船 - 独行侠', '2');
INSERT INTO `tp_live` VALUES ('5', '21', '11月28日 08:00 NBA常规赛 篮网vs凯尔特人', '', '', '', '', '<p><br></p>', '', '1', '0', '13', '1574788380', '0', '1574899200', 'NBA常规赛', '', '', '篮网 - 凯尔特人', '0');
INSERT INTO `tp_live` VALUES ('6', '21', '11月29日 19:35 CBA常规赛 四川vs辽宁', '', '', '', '', '<p><br></p>', '', '1', '0', '3', '1574788440', '0', '1575027300', 'CBA常规赛', '', '', '四川 - 辽宁', '2');
INSERT INTO `tp_live` VALUES ('7', '23', '11月26日 NBA常规赛 魔术vs活塞 录像', '', '', '', '', '<p><br></p>', '', '1', '0', '34', '1574789319', '0', '1574789319', '', '', '/uploads/20191127/bdfb487b5f6ac5114c693f5ee17241fc.jpg', '', '0');
INSERT INTO `tp_live` VALUES ('8', '23', '11月26日 NBA常规赛 黄蜂vs热火 全场录像', '', '', '', '', '<p><br></p>', '', '1', '0', '30', '1574789379', '0', '1574789379', '', '', '/uploads/20191127/d4c5246a3655ae40f1935ae98a1210f8.jpg', '', '0');
INSERT INTO `tp_live` VALUES ('9', '21', '11月27日 10:00 NBA常规赛 奇才vs掘金', '', '', '', '', '<p><br></p>', '', '1', '0', '0', '1574790240', '0', '1574820000', 'NBA常规赛', '', '', '奇才 - 掘金', '2');
INSERT INTO `tp_live` VALUES ('10', '23', '11月27日 NBA常规赛 快船vs独行侠 录像', '', '', '', '', '<p><br></p>', '', '1', '0', '10', '1574876880', '0', '1574876880', '', '', '/uploads/20191128/08d49048a1b93ee0857d46992c7afd36.jpg', '', '0');
INSERT INTO `tp_live` VALUES ('11', '23', '11月27日 NBA常规赛 奇才vs掘金 录像', '', '', '', '', '<p><br></p>', '', '1', '0', '42', '1574876880', '0', '1574876880', '', '', '/uploads/20191128/324632104f3a8482f9f99a4a60dcb392.jpg', '', '0');
INSERT INTO `tp_live` VALUES ('12', '21', '12月01日 06:00 NBA常规赛 掘金vs国王', '', '', '', '', '<p><br></p>', '', '1', '0', '2', '1575122953', '0', '1575151213', 'NBA常规赛', '', '', '掘金vs国王', '0');
INSERT INTO `tp_live` VALUES ('13', '21', '12月04日 08:00 NBA常规赛 活塞vs骑士', '', '', '', '', '<p><br></p>', '', '1', '0', '0', '1575426232', '0', '1575417652', 'NBA常规赛', '', '', '活塞vs骑士', '0');
INSERT INTO `tp_live` VALUES ('14', '21', '12月06日 08:00 NBA常规赛 76人vs奇才', '', '', '', '', '<p><br></p>', '', '1', '0', '1', '1575561537', '0', '1575590457', 'NBA常规赛', '', '', '76人vs奇才', '0');

-- ----------------------------
-- Table structure for `tp_message`
-- ----------------------------
DROP TABLE IF EXISTS `tp_message`;
CREATE TABLE `tp_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目',
  `title` varchar(120) NOT NULL DEFAULT '' COMMENT '标题',
  `title_style` varchar(225) NOT NULL DEFAULT '' COMMENT '标题样式',
  `thumb` varchar(225) NOT NULL DEFAULT '' COMMENT '缩略图',
  `content` text NOT NULL COMMENT '内容',
  `template` varchar(40) NOT NULL DEFAULT '' COMMENT '模板',
  `status` tinyint(3) NOT NULL DEFAULT '1' COMMENT '状态',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '姓名',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `contact` varchar(255) NOT NULL DEFAULT '' COMMENT '联系方式',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`sort`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `sort` (`id`,`catid`,`status`,`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_message
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_module`
-- ----------------------------
DROP TABLE IF EXISTS `tp_module`;
CREATE TABLE `tp_module` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '模型名称',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '表名',
  `description` varchar(200) NOT NULL DEFAULT '' COMMENT '描述',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listfields` varchar(255) NOT NULL DEFAULT '' COMMENT '列表页字段',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_module
-- ----------------------------
INSERT INTO `tp_module` VALUES ('1', '单页模型', 'page', '单页面', '1', '0', '*', '0', '1');
INSERT INTO `tp_module` VALUES ('26', '文章模型', 'article', '新闻文章', '1', '0', '*', '0', '1');
INSERT INTO `tp_module` VALUES ('3', '图片模型', 'picture', '图片展示', '1', '0', '*', '0', '1');
INSERT INTO `tp_module` VALUES ('4', '产品模型', 'product', '产品展示', '1', '0', '*', '0', '1');
INSERT INTO `tp_module` VALUES ('5', '下载模型', 'download', '文件下载', '1', '0', '*', '0', '1');
INSERT INTO `tp_module` VALUES ('6', '团队模型', 'team', '员工展示', '1', '0', '*', '0', '1');
INSERT INTO `tp_module` VALUES ('27', '在线留言', 'message', '在线留言', '1', '0', '*', '0', '1');
INSERT INTO `tp_module` VALUES ('28', '直播模型', 'live', '直播模型', '1', '0', '*', '0', '1');

-- ----------------------------
-- Table structure for `tp_page`
-- ----------------------------
DROP TABLE IF EXISTS `tp_page`;
CREATE TABLE `tp_page` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `keywords` varchar(255) DEFAULT '' COMMENT '关键词',
  `description` text COMMENT 'SEO简介',
  `content` text COMMENT '内容',
  `hits` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_page
-- ----------------------------
INSERT INTO `tp_page` VALUES ('1', '7', '公司介绍', 'asdf ', '', '', '100');
INSERT INTO `tp_page` VALUES ('2', '6', '关于我们', '', '', '<p>ThinkPHP是一个免费开源的，快速、简单的面向对象的轻量级PHP开发框架，是为了敏捷WEB应用开发和简化企业应用开发而诞生的。ThinkPHP从诞生以来一直秉承简洁实用的设计原则，在保持出色的性能和至简的代码的同时，也注重易用性。遵循Apache2开源许可协议发布，意味着你可以免费使用ThinkPHP，甚至允许把你基于ThinkPHP开发的应用开源或商业产品发布/销售。</p><p>ThinkPHP5.1在5.0的基础上对底层架构做了进一步的改进，引入新特性，并提升版本要求。另外一个事实是，5.1版本看起来对开发者更加友好，表现在目录结构更直观、调试输出更直观和代码提示更直观。</p><p>ThinkPHP5.1运行环境要求PHP5.6+，虽然不支持5.0的无缝升级，但升级过程并不复杂（请参考升级指导），5.1.*版本基本上可以支持无缝升级。</p><p><br/></p>', '100');
INSERT INTO `tp_page` VALUES ('3', '10', '公司文化', '', '', '', '100');

-- ----------------------------
-- Table structure for `tp_picture`
-- ----------------------------
DROP TABLE IF EXISTS `tp_picture`;
CREATE TABLE `tp_picture` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目',
  `title` varchar(70) NOT NULL DEFAULT '' COMMENT '标题',
  `title_style` varchar(225) NOT NULL DEFAULT '' COMMENT '标题样式',
  `thumb` varchar(225) NOT NULL DEFAULT '' COMMENT '缩略图',
  `keywords` varchar(80) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` mediumtext NOT NULL COMMENT 'SEO简介',
  `content` text NOT NULL COMMENT '内容',
  `template` varchar(80) NOT NULL DEFAULT '' COMMENT '模板',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `sort` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `image` varchar(80) NOT NULL DEFAULT '' COMMENT '缩略图',
  `images` mediumtext NOT NULL COMMENT '图片集',
  `download` varchar(80) NOT NULL DEFAULT '' COMMENT '文件下载',
  `author` varchar(50) NOT NULL DEFAULT 'Admin' COMMENT '作者',
  `source` varchar(255) NOT NULL DEFAULT '' COMMENT '来源',
  `summary` text NOT NULL COMMENT '摘要',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`sort`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `sort` (`id`,`catid`,`status`,`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_picture
-- ----------------------------
INSERT INTO `tp_picture` VALUES ('10', '11', '资质荣誉一', '', '', '', '', '<p style=\"text-indent: 2em;\">2017年7月12日，国资委正式发布2016年度中央企业负责人经营业绩考核结果。51家央企位列2016年度考核Ａ级，占全部中央企业的50%。集团公司2016年度经营业绩考核综合得分为135.26分，考核结果为A级，在51家A级企业中排名第25位，排名较上年提高8个位次，这是XX集团公司第六次被评为年度经营业绩考核A级企业。</p>', '', '1', '100', '2', '1545628800', '0', '/uploads/20181224/df4a0aaf70da70634efb8c682c50a8df.jpg', '', '', '管理员', '本站', '2017年7月12日，国资委正式发布2016年度中央企业负责人经营业绩考核结果。51家央企位列2016年度考核Ａ级，占全部中央企业的50%。集团公司2016年度经营业绩考核综合得分为135.26分，考核结果为A级，在51家A级企业中排名第25位，排名较上年提高8个位次，这是XX集团公司第六次被评为年度经营业绩考核A级企业。');
INSERT INTO `tp_picture` VALUES ('11', '11', '资质荣誉二', '', '', '', '', '<p style=\"text-indent: 2em;\">2017年7月12日，国资委正式发布2016年度中央企业负责人经营业绩考核结果。51家央企位列2016年度考核Ａ级，占全部中央企业的50%。集团公司2016年度经营业绩考核综合得分为135.26分，考核结果为A级，在51家A级企业中排名第25位，排名较上年提高8个位次，这是XX集团公司第六次被评为年度经营业绩考核A级企业。</p>', '', '1', '100', '0', '1545629302', '0', '/uploads/20181224/acb269b78bf5a08dda27ae155768e688.jpg', '', '', '管理员', '本站', '2017年7月12日，国资委正式发布2016年度中央企业负责人经营业绩考核结果。51家央企位列2016年度考核Ａ级，占全部中央企业的50%。集团公司2016年度经营业绩考核综合得分为135.26分，考核结果为A级，在51家A级企业中排名第25位，排名较上年提高8个位次，这是XX集团公司第六次被评为年度经营业绩考核A级企业。');
INSERT INTO `tp_picture` VALUES ('12', '11', '资质荣誉三', '', '', '', '', '<p style=\"text-indent: 2em;\">2017年7月12日，国资委正式发布2016年度中央企业负责人经营业绩考核结果。51家央企位列2016年度考核Ａ级，占全部中央企业的50%。集团公司2016年度经营业绩考核综合得分为135.26分，考核结果为A级，在51家A级企业中排名第25位，排名较上年提高8个位次，这是XX集团公司第六次被评为年度经营业绩考核A级企业。</p>', '', '1', '100', '1', '1545629346', '0', '/uploads/20181224/dd30ed06a39d73f8bbc8012741a3010a.jpg', '', '', '管理员', '本站', '2017年7月12日，国资委正式发布2016年度中央企业负责人经营业绩考核结果。51家央企位列2016年度考核Ａ级，占全部中央企业的50%。集团公司2016年度经营业绩考核综合得分为135.26分，考核结果为A级，在51家A级企业中排名第25位，排名较上年提高8个位次，这是XX集团公司第六次被评为年度经营业绩考核A级企业。');
INSERT INTO `tp_picture` VALUES ('13', '11', '资质荣誉四', '', '', '', '', '<p><span style=\"text-indent: 32px;\">2017年7月12日，国资委正式发布2016年度中央企业负责人经营业绩考核结果。51家央企位列2016年度考核Ａ级，占全部中央企业的50%。集团公司2016年度经营业绩考核综合得分为135.26分，考核结果为A级，在51家A级企业中排名第25位，排名较上年提高8个位次，这是XX集团公司第六次被评为年度经营业绩考核A级企业。</span></p>', '', '1', '100', '4', '1545629373', '0', '/uploads/20181224/10ba9f34431727269dbeadae6dc786f8.jpg', '', '', '管理员', '本站', '2017年7月12日，国资委正式发布2016年度中央企业负责人经营业绩考核结果。51家央企位列2016年度考核Ａ级，占全部中央企业的50%。集团公司2016年度经营业绩考核综合得分为135.26分，考核结果为A级，在51家A级企业中排名第25位，排名较上年提高8个位次，这是XX集团公司第六次被评为年度经营业绩考核A级企业。');
INSERT INTO `tp_picture` VALUES ('14', '11', '资质荣誉五', '', '', '', '', '2017年7月12日，国资委正式发布2016年度中央企业负责人经营业绩考核结果。51家央企位列2016年度考核Ａ级，占全部中央企业的50%。集团公司2016年度经营业绩考核综合得分为135.26分，考核结果为A级，在51家A级企业中排名第25位，排名较上年提高8个位次，这是XX集团公司第六次被评为年度经营业绩考核A级企业。', '', '1', '100', '3', '1545629405', '0', '/uploads/20181224/1806bd7cc4c2beaf6be64833a891671b.jpg', '', '', '管理员', '本站', '2017年7月12日，国资委正式发布2016年度中央企业负责人经营业绩考核结果。51家央企位列2016年度考核Ａ级，占全部中央企业的50%。集团公司2016年度经营业绩考核综合得分为135.26分，考核结果为A级，在51家A级企业中排名第25位，排名较上年提高8个位次，这是XX集团公司第六次被评为年度经营业绩考核A级企业。');
INSERT INTO `tp_picture` VALUES ('15', '11', '资质荣誉六', '', '', '', '', '<p><span style=\"text-indent: 32px;\">2017年7月12日，国资委正式发布2016年度中央企业负责人经营业绩考核结果。51家央企位列2016年度考核Ａ级，占全部中央企业的50%。集团公司2016年度经营业绩考核综合得分为135.26分，考核结果为A级，在51家A级企业中排名第25位，排名较上年提高8个位次，这是XX集团公司第六次被评为年度经营业绩考核A级企业。</span></p>', '', '1', '100', '3', '1545629485', '0', '/uploads/20181224/97e072ae3a03895617e6b8ef6dc73529.jpg', '', '', '管理员', '本站', '2017年7月12日，国资委正式发布2016年度中央企业负责人经营业绩考核结果。51家央企位列2016年度考核Ａ级，占全部中央企业的50%。集团公司2016年度经营业绩考核综合得分为135.26分，考核结果为A级，在51家A级企业中排名第25位，排名较上年提高8个位次，这是XX集团公司第六次被评为年度经营业绩考核A级企业。');

-- ----------------------------
-- Table structure for `tp_product`
-- ----------------------------
DROP TABLE IF EXISTS `tp_product`;
CREATE TABLE `tp_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目',
  `title` varchar(70) NOT NULL DEFAULT '' COMMENT '标题',
  `title_style` varchar(225) NOT NULL DEFAULT '' COMMENT '标题样式',
  `thumb` varchar(225) NOT NULL DEFAULT '' COMMENT '缩略图',
  `keywords` varchar(80) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` mediumtext NOT NULL COMMENT 'SEO简介',
  `content` text NOT NULL COMMENT '内容',
  `template` varchar(80) NOT NULL DEFAULT '' COMMENT '模板',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `sort` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `image` varchar(80) NOT NULL DEFAULT '' COMMENT '缩略图',
  `images` mediumtext NOT NULL COMMENT '图片集',
  `download` varchar(80) NOT NULL DEFAULT '' COMMENT '文件下载',
  `author` varchar(50) NOT NULL DEFAULT 'Admin' COMMENT '作者',
  `source` varchar(255) NOT NULL DEFAULT '' COMMENT '来源',
  `summary` text NOT NULL COMMENT '摘要',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`sort`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `sort` (`id`,`catid`,`status`,`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product
-- ----------------------------
INSERT INTO `tp_product` VALUES ('10', '15', '一本书', '', '', '', '', '', '', '1', '100', '0', '1545631116', '0', '/uploads/20181224/065928f94ebe13ab1fbdc09cdd28a18b.jpg', '', '', '管理员', '本站', '');
INSERT INTO `tp_product` VALUES ('11', '15', '一支笔', '', '', '', '', '', '', '1', '100', '0', '1545631526', '0', '/uploads/20181224/f05f564a79e650d566251152fa4fa75e.jpg', '', '', '管理员', '本站', '');
INSERT INTO `tp_product` VALUES ('12', '15', '一支铅笔', '', '', '', '', '', '', '1', '100', '0', '1545631559', '0', '/uploads/20181224/d5e07bd3fdd9f3cbb0bdc798ccdba178.jpg', '', '', '管理员', '本站', '');
INSERT INTO `tp_product` VALUES ('13', '15', '背包', '', '', '', '', '', '', '1', '100', '0', '1545631583', '0', '/uploads/20181224/8852280b4dc3365af4855c779e4239c6.jpg', '', '', '管理员', '本站', '');
INSERT INTO `tp_product` VALUES ('14', '15', '笔记本', '', '', '', '', '', '', '1', '100', '2', '1545631621', '0', '/uploads/20181224/d42552c77b14805f6d48e00b7a38f2e8.jpg', '', '', '管理员', '本站', '');
INSERT INTO `tp_product` VALUES ('15', '15', '一支笔', '', '', '', '', '', '', '1', '100', '8', '1545631658', '0', '/uploads/20181224/47f793345aa44161161aeaa4409a52f8.jpg', '', '', '管理员', '本站', '');
INSERT INTO `tp_product` VALUES ('16', '15', '铅笔盒', '', '', '', '', '', '', '1', '100', '2', '1545631695', '0', '/uploads/20181224/c89c7634f5bcd3b60884da427bc0b384.jpg', '', '', '管理员', '本站', '');
INSERT INTO `tp_product` VALUES ('17', '15', '钢笔', '', '', '', '', '<p>钢笔</p>', '', '1', '100', '7', '1545631680', '0', '/uploads/20181224/0e9e92ee9cab513ff99f0189fea24a2e.jpg', '', '', '管理员', '本站', '');

-- ----------------------------
-- Table structure for `tp_system`
-- ----------------------------
DROP TABLE IF EXISTS `tp_system`;
CREATE TABLE `tp_system` (
  `id` int(8) unsigned NOT NULL,
  `name` char(100) NOT NULL DEFAULT '' COMMENT '网站名称',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '网址',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `key` varchar(200) NOT NULL COMMENT '关键字',
  `des` varchar(200) NOT NULL COMMENT '描述',
  `bah` varchar(100) DEFAULT NULL COMMENT '备案号',
  `copyright` varchar(200) DEFAULT NULL COMMENT 'copyright',
  `address` varchar(120) DEFAULT NULL COMMENT '公司地址',
  `contacts` varchar(255) DEFAULT NULL COMMENT '联系人',
  `mobile_phone` varchar(100) DEFAULT NULL COMMENT '手机',
  `fax` varchar(100) DEFAULT NULL COMMENT '传真',
  `tel` varchar(100) DEFAULT NULL COMMENT '公司电话',
  `email` varchar(50) DEFAULT NULL COMMENT '公司邮箱',
  `qq` varchar(255) DEFAULT NULL COMMENT 'qq',
  `logo` varchar(120) DEFAULT NULL COMMENT 'logo',
  `qrcode` varchar(255) DEFAULT NULL COMMENT '二维码',
  `mobile` tinyint(2) DEFAULT '0' COMMENT '是否开启手机端 1 开启0 关闭',
  `code` tinyint(2) DEFAULT '0' COMMENT '是否开启后台验证码 1 开启 0 关闭',
  `message_code` tinyint(2) DEFAULT '0' COMMENT '是否开启前台验证码 1 开启 0 关闭',
  `message_send_mail` tinyint(2) DEFAULT '0' COMMENT '留言是否发送邮件',
  `template` varchar(200) DEFAULT NULL COMMENT '模版选择',
  `html` varchar(200) DEFAULT NULL COMMENT 'Html目录',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_system
-- ----------------------------
INSERT INTO `tp_system` VALUES ('1', 'SIYUCMS', 'www.xxx.com', 'SIYUCMS 官网', 'SIYUCMS，SIYUCMS内容管理系统，php，ThinkPHP CMS，ThinkPHP建站系统', 'SIYUCMS 是一款基于 ThinkPHP5 + AdminLTE 的内容管理系统。后台界面采用响应式布局，清爽、极简、简单、易用，是做开发的最佳选择。', '辽ICP备12345678号-1', 'Copyright © SIYUCMS 2019.All right reserved.Powered by SIYUCMS', '辽宁省沈阳市铁西区重工街XX路XX号1-1-1', 'X先生', '158 4018 8888', '010-8888 9999', '010-8888 7777', '407593529@qq.com', '407593529', '/uploads/20181226/a3a4245ec095da4903c6c81123fd480d.png', '/uploads/20181226/cb7a4c21d6443bc5e7a8d16ac2cbe242.png', '1', '0', '1', '0', 'live', 'html');

-- ----------------------------
-- Table structure for `tp_team`
-- ----------------------------
DROP TABLE IF EXISTS `tp_team`;
CREATE TABLE `tp_team` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目',
  `title` varchar(70) NOT NULL DEFAULT '' COMMENT '标题',
  `title_style` varchar(225) NOT NULL DEFAULT '' COMMENT '标题样式',
  `thumb` varchar(225) NOT NULL DEFAULT '' COMMENT '缩略图',
  `keywords` varchar(80) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` mediumtext NOT NULL COMMENT 'SEO简介',
  `content` text NOT NULL COMMENT '内容',
  `template` varchar(80) NOT NULL DEFAULT '' COMMENT '模板',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `sort` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `image` varchar(80) NOT NULL DEFAULT '' COMMENT '缩略图',
  `images` mediumtext NOT NULL COMMENT '图片集',
  `download` varchar(80) NOT NULL DEFAULT '' COMMENT '文件下载',
  `author` varchar(50) NOT NULL DEFAULT 'Admin' COMMENT '作者',
  `source` varchar(255) NOT NULL DEFAULT '' COMMENT '来源',
  `summary` text NOT NULL COMMENT '摘要',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`sort`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `sort` (`id`,`catid`,`status`,`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_team
-- ----------------------------
INSERT INTO `tp_team` VALUES ('10', '18', '总设计师', '', '', '', '', '', '', '1', '100', '4', '1545635580', '0', '/uploads/20181224/6d003cbc391614dda73fbb2ab2bb109c.jpg', '', '', '管理员', '本站', '多年从业经验，精益求精，客户至上，您的满意是我们不懈的追求！');
INSERT INTO `tp_team` VALUES ('11', '18', '销售总监', '', '', '', '', '', '', '1', '100', '2', '1545636240', '0', '/uploads/20181224/02e41d74e1ec2531fede0b3196ae953b.jpg', '', '', '管理员', '本站', '多年从业经验，精益求精，客户至上，您的满意是我们不懈的追求！');
INSERT INTO `tp_team` VALUES ('12', '18', '技术总监', '', '', '', '', '', '', '1', '100', '1', '1545636300', '0', '/uploads/20181224/7ea6c84dc1454ab28a4d54c90655e6e0.jpg', '', '', '管理员', '本站', '多年从业经验，精益求精，客户至上，您的满意是我们不懈的追求！');
INSERT INTO `tp_team` VALUES ('13', '18', '网络总监', '', '', '', '', '', '', '1', '100', '2', '1545636300', '0', '/uploads/20181224/afd088573e24003aadddb5744649dda9.jpg', '', '', '管理员', '本站', '多年从业经验，精益求精，客户至上，您的满意是我们不懈的追求！');

-- ----------------------------
-- Table structure for `tp_users`
-- ----------------------------
DROP TABLE IF EXISTS `tp_users`;
CREATE TABLE `tp_users` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL COMMENT '邮箱帐号',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `sex` tinyint(1) NOT NULL COMMENT '1男 0女',
  `create_time` int(10) DEFAULT NULL COMMENT '注册时间',
  `update_time` int(10) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL COMMENT '注册IP',
  `last_login_time` int(10) DEFAULT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录IP',
  `qq` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机',
  `mobile_validated` tinyint(3) DEFAULT '0' COMMENT '是否验证手机 1 验证 0 未验证',
  `email_validated` tinyint(3) DEFAULT '0' COMMENT '是否验证手机 1 验证 0 未验证',
  `type_id` tinyint(3) DEFAULT NULL COMMENT '类型',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_users
-- ----------------------------
INSERT INTO `tp_users` VALUES ('1', 'test001@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1541405155', null, '127.0.0.1', '1553138106', '127.0.0.1', '407593529', '15840189268', '0', '0', '1', '1');
INSERT INTO `tp_users` VALUES ('2', 'test002@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '0', '1541405185', null, '127.0.0.1', '1541405185', '127.0.0.1', '407593529', '15840189627', '0', '0', '2', '1');
INSERT INTO `tp_users` VALUES ('3', 'test003@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1546060654', null, '127.0.0.1', '1546060654', '127.0.0.1', '', '', '0', '0', '1', '1');
INSERT INTO `tp_users` VALUES ('4', 'test004@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1546060666', null, '127.0.0.1', '1546060666', '127.0.0.1', '', '', '0', '0', '1', '1');
INSERT INTO `tp_users` VALUES ('5', 'test005@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1546060680', null, '127.0.0.1', '1546060680', '127.0.0.1', '', '15840189625', '0', '0', '1', '1');
INSERT INTO `tp_users` VALUES ('6', 'test007@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '0', '1546061841', null, '127.0.0.1', '1546061841', '127.0.0.1', null, null, '0', '0', '1', '1');
INSERT INTO `tp_users` VALUES ('7', 'test008@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '0', '1546061953', '1551844614', '127.0.0.1', '1546062123', '127.0.0.1', '123', '', '0', '0', '1', '1');

-- ----------------------------
-- Table structure for `tp_users_type`
-- ----------------------------
DROP TABLE IF EXISTS `tp_users_type`;
CREATE TABLE `tp_users_type` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '会员组名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort` int(3) DEFAULT NULL COMMENT '排序',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `create_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(10) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_users_type
-- ----------------------------
INSERT INTO `tp_users_type` VALUES ('1', '注册会员', '注册会员', '1', '1', null, null);
INSERT INTO `tp_users_type` VALUES ('2', 'VIP会员', 'VIP会员', '2', '1', null, null);
