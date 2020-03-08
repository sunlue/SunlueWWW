/*
SQLyog Ultimate v11.25 (64 bit)
MySQL - 8.0.12 : Database - sunlue_www
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sunlue_www` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `sunlue_www`;

/*Table structure for table `basis_link` */

DROP TABLE IF EXISTS `basis_link`;

CREATE TABLE `basis_link` (
  `uniqid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'zh-cn' COMMENT '语言',
  `target` tinyint(1) NOT NULL DEFAULT '1' COMMENT '链接打开方式(1:''_self'',2:''_blank'',3:''_parent'',4:''_top'')',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '链接名称',
  `link` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '链接地址',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '连接图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`uniqid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='站点友情链接';

/*Data for the table `basis_link` */

/*Table structure for table `basis_site` */

DROP TABLE IF EXISTS `basis_site`;

CREATE TABLE `basis_site` (
  `uniqid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'zh-cn' COMMENT '语言',
  `type` enum('setting','upload') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`uniqid`),
  UNIQUE KEY `unique` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `basis_site` */

insert  into `basis_site`(`uniqid`,`lang`,`type`,`content`) values ('SITE-5D3829A1D8405','zh-cn','upload','{\"file_upload_type\":\"rar,zip,doc,xls,txt,pdf,mp3,mp4,jpg,gif,png,jpeg,docx,doc\",\"file_upload_size\":\"2048\",\"audio_upload_type\":\"flv,mp3,mp4,avi\",\"audio_upload_size\":\"10240\",\"video_upload_type\":\"flv,mp3,mp4,avi\",\"video_upload_size\":\"20480\",\"image_upload_type\":\"gif,jpg,png,bmp,jpeg\",\"image_upload_size\":\"2048\",\"image_max_width\":\"600\",\"image_max_height\":\"400\",\"image_crop_x\":0,\"image_crop_y\":0,\"watermark_type\":\"1\",\"watermark_location\":\"9\",\"watermark_text\":\"\",\"watermark_style\":\"\",\"watermark_size\":\"\",\"watermark_opacity\":\"0.5\",\"thumb_max_width\":\"0\",\"thumb_max_height\":\"0\",\"thumb_core_type\":\"2\",\"thumb_quality\":\"80\"}'),('SITE-5E64E7618FD63','zh-cn','setting','{\"seo_title\":\"\\u56db\\u5ddd\\u4e0a\\u7565\\u4e92\\u52a8\\u7f51\\u7edc\\u6280\\u672f\\u6709\\u9650\\u516c\\u53f8\",\"seo_keywords\":\"\\u56db\\u5ddd\\u4e0a\\u7565\\u4e92\\u52a8\\u7f51\\u7edc\\u6280\\u672f\\u6709\\u9650\\u516c\\u53f8\",\"seo_description\":\"\\u56db\\u5ddd\\u4e0a\\u7565\\u4e92\\u52a8\\u7f51\\u7edc\\u6280\\u672f\\u6709\\u9650\\u516c\\u53f8\",\"icp_copyright\":\"\\u8700ICP\\u590709004152\",\"police_copyright\":\"\",\"master_email\":\"\",\"site_state\":\"0\",\"site_close_why\":\"\\u7ad9\\u70b9\\u5347\\u7ea7\\u4e2d... ...\"}');

/*Table structure for table `common_nation` */

DROP TABLE IF EXISTS `common_nation`;

CREATE TABLE `common_nation` (
  `uniqid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `label` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `value` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uniqid`),
  KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='民族表';

/*Data for the table `common_nation` */

insert  into `common_nation`(`uniqid`,`label`,`value`) values ('NATION-5DC0E96F4D00B','汉族','1'),('NATION-5DC0E96F4D012','满族','2'),('NATION-5DC0E96F4D014','蒙古族','3'),('NATION-5DC0E96F4D016','回族','4'),('NATION-5DC0E96F4D017','藏族','5'),('NATION-5DC0E96F4D019','维吾尔族','6'),('NATION-5DC0E96F4D01B','苗族','7'),('NATION-5DC0E96F4D01D','彝族','8'),('NATION-5DC0E96F4D01F','壮族','9'),('NATION-5DC0E96F4D021','布依族','10'),('NATION-5DC0E96F4D023','侗族','11'),('NATION-5DC0E96F4D024','瑶族','12'),('NATION-5DC0E96F4D026','白族','13'),('NATION-5DC0E96F4D027','土家族','14'),('NATION-5DC0E96F4D029','哈尼族','15'),('NATION-5DC0E96F4D02A','哈萨克族','16'),('NATION-5DC0E96F4D02C','傣族','17'),('NATION-5DC0E96F4D02E','黎族','18'),('NATION-5DC0E96F4D02F','傈僳族','19'),('NATION-5DC0E96F4D031','佤族','20'),('NATION-5DC0E96F4D032','畲族','21'),('NATION-5DC0E96F4D033','高山族','22'),('NATION-5DC0E96F4D035','拉祜族','23'),('NATION-5DC0E96F4D036','水族','24'),('NATION-5DC0E96F4D038','东乡族','25'),('NATION-5DC0E96F4D039','纳西族','26'),('NATION-5DC0E96F4D03B','景颇族','27'),('NATION-5DC0E96F4D03C','柯尔克孜族','28'),('NATION-5DC0E96F4D03D','土族','29'),('NATION-5DC0E96F4D03F','达斡尔族','30'),('NATION-5DC0E96F4D041','仫佬族','31'),('NATION-5DC0E96F4D043','羌族','32'),('NATION-5DC0E96F4D044','布朗族','33'),('NATION-5DC0E96F4D046','撒拉族','34'),('NATION-5DC0E96F4D048','毛南族','35'),('NATION-5DC0E96F4D049','仡佬族','36'),('NATION-5DC0E96F4D04B','锡伯族','37'),('NATION-5DC0E96F4D04D','阿昌族','38'),('NATION-5DC0E96F4D04F','普米族','39'),('NATION-5DC0E96F4D050','朝鲜族','40'),('NATION-5DC0E96F4D052','塔吉克族','41'),('NATION-5DC0E96F4D053','怒族','42'),('NATION-5DC0E96F4D055','乌孜别克族','43'),('NATION-5DC0E96F4D056','俄罗斯族','44'),('NATION-5DC0E96F4D058','鄂温克族','45'),('NATION-5DC0E96F4D059','德昂族','46'),('NATION-5DC0E96F4D05B','保安族','47'),('NATION-5DC0E96F4D05C','裕固族','48'),('NATION-5DC0E96F4D05E','京族','49'),('NATION-5DC0E96F4D05F','塔塔尔族','50'),('NATION-5DC0E96F4D061','独龙族','51'),('NATION-5DC0E96F4D062','鄂伦春族','52'),('NATION-5DC0E96F4D064','赫哲族','53'),('NATION-5DC0E96F4D065','门巴族','54'),('NATION-5DC0E96F4D067','珞巴族','55'),('NATION-5DC0E96F4D068','基诺族','56');

/*Table structure for table `common_region` */

DROP TABLE IF EXISTS `common_region`;

CREATE TABLE `common_region` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '上级行政区划代码',
  `value` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '行政区划代码',
  `label` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '所辖行政区',
  `type` int(3) DEFAULT NULL COMMENT '城乡分类',
  PRIMARY KEY (`id`),
  KEY `pid` (`parent`),
  KEY `value` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=284 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='省市区（地区）表';

/*Data for the table `common_region` */

insert  into `common_region`(`id`,`parent`,`value`,`label`,`type`) values (1,'','510000000000','四川省',0),(2,'510000000000','510700000000','绵阳市',0),(3,'510700000000','510703000000','涪城区',0),(4,'510703000000','510703001000','城厢街道',0),(5,'510703000000','510703002000','城北街道',0),(6,'510703000000','510703003000','工区街道',0),(7,'510703000000','510703004000','南山街道',0),(8,'510703000000','510703005000','朝阳街道',0),(9,'510703000000','510703006000','普明街道办事处',0),(10,'510703000000','510703007000','城南街道',0),(11,'510703000000','510703008000','金家林街道',0),(12,'510703000000','510703009000','科创园街道',0),(13,'510703000000','510703011000','石塘街道办事处',0),(14,'510703000000','510703012000','城郊街道办事处',0),(15,'510703000000','510703013000','石桥街道办事处',0),(16,'510703000000','510703100000','丰谷镇',0),(17,'510703000000','510703101000','关帝镇',0),(18,'510703000000','510703102000','塘汛镇',0),(19,'510703000000','510703103000','青义镇',0),(20,'510703000000','510703104000','龙门镇',0),(21,'510703000000','510703106000','吴家镇',0),(22,'510703000000','510703107000','杨家镇',0),(23,'510703000000','510703108000','金峰镇',0),(24,'510703000000','510703109000','玉皇镇',0),(25,'510703000000','510703110000','新皂镇',0),(26,'510703000000','510703111000','河边镇',0),(27,'510703000000','510703112000','磨家镇',0),(28,'510703000000','510703113000','永兴镇',0),(29,'510703000000','510703201000','石洞乡',0),(30,'510703001000','510703001001','顺河街社区',111),(31,'510703001000','510703001002','北街社区',111),(32,'510703001000','510703001003','警钟街社区',111),(33,'510703001000','510703001004','涪城路社区',111),(34,'510703001000','510703001005','红星街社区',111),(35,'510703001000','510703001006','南河路社区',111),(36,'510703001000','510703001007','体运村路社区',111),(37,'510703001000','510703001008','解放街社区',111),(38,'510703001000','510703001009','钟鼓楼社区',111),(39,'510703001000','510703001010','滨江社区',111),(40,'510703002000','510703002001','建国门社区',111),(41,'510703002000','510703002002','铁牛街社区',111),(42,'510703002000','510703002003','安昌路社区',111),(43,'510703002000','510703002004','会仙路社区',111),(44,'510703002000','510703002005','临园路中段社区',111),(45,'510703002000','510703002006','安昌路西段社区',111),(46,'510703002000','510703002007','绵州中路社区',111),(47,'510703002000','510703002008','剑南路第三社区',111),(48,'510703002000','510703002009','剑南路第二社区',111),(49,'510703002000','510703002010','剑南路第一社区',111),(50,'510703002000','510703002011','成绵路社区',111),(51,'510703002000','510703002012','临园路东段社区',111),(52,'510703002000','510703002013','绵兴路社区',111),(53,'510703003000','510703003001','绵州社区',111),(54,'510703003000','510703003002','跃北社区',111),(55,'510703003000','510703003003','涪西社区',111),(56,'510703003000','510703003004','绵江社区',111),(57,'510703003000','510703003005','先锋社区',111),(58,'510703003000','510703003006','迎宾社区',111),(59,'510703003000','510703003007','子云亭社区',111),(60,'510703003000','510703003008','西山社区',111),(61,'510703003000','510703003009','滨涪社区',111),(62,'510703003000','510703003010','灵通社区',111),(63,'510703003000','510703003011','华丰社区',111),(64,'510703004000','510703004001','御营社区一',111),(65,'510703004000','510703004002','御营社区二',111),(66,'510703004000','510703004003','御营社区三',111),(67,'510703004000','510703004004','御营社区四',111),(68,'510703004000','510703004005','西河路社区',111),(69,'510703004000','510703004006','石塘路社区',111),(70,'510703004000','510703004007','小浮桥社区',111),(71,'510703004000','510703004008','南塔路区',111),(72,'510703005000','510703005001','金菊街社区',111),(73,'510703005000','510703005002','花园南街社区',111),(74,'510703005000','510703005003','临园路西段社区',111),(75,'510703005000','510703005004','剑门路西段社区',111),(76,'510703005000','510703005005','新华社区',111),(77,'510703006000','510703006001','普明寺社区',111),(78,'510703006000','510703006002','三河堰社区',111),(79,'510703006000','510703006003','黄家祠社区',111),(80,'510703006000','510703006004','凝祥寺社区',111),(81,'510703006000','510703006007','火炬东街社区',111),(82,'510703006000','510703006008','普明北路东段社区居民委员',111),(83,'510703006000','510703006009','三五三六工厂社区',111),(84,'510703006000','510703006010','虹苑路社区',111),(85,'510703006000','510703006011','双碑社区',111),(86,'510703006000','510703006012','菩提寺社区',111),(87,'510703006000','510703006014','普明北路西段社区',111),(88,'510703006000','510703006201','松林山村',112),(89,'510703007000','510703007001','南塔社区',112),(90,'510703007000','510703007002','板桥社区',111),(91,'510703007000','510703007003','群文社区',111),(92,'510703007000','510703007201','跃进村',112),(93,'510703007000','510703007202','文武村',112),(94,'510703008000','510703008498','金家林街道虚拟社区',111),(95,'510703009000','510703009001','上马社区',111),(96,'510703009000','510703009002','八角社区',111),(97,'510703009000','510703009003','西园社区',111),(98,'510703009000','510703009004','科园社区',111),(99,'510703009000','510703009005','元通社区',111),(100,'510703009000','510703009006','兴隆社区',111),(101,'510703009000','510703009007','科虹社区',111),(102,'510703009000','510703009008','华奥社区',111),(103,'510703009000','510703009009','阳光社区',111),(104,'510703011000','510703011001','御营社区',111),(105,'510703011000','510703011002','东岳社区',112),(106,'510703011000','510703011003','红星社区',112),(107,'510703011000','510703011004','古井社区',111),(108,'510703011000','510703011202','蟠龙村',220),(109,'510703011000','510703011203','楼房村',112),(110,'510703011000','510703011204','瓦店村',112),(111,'510703011000','510703011205','范家村',112),(112,'510703011000','510703011206','浸水村',112),(113,'510703012000','510703012001','花园路一社区',111),(114,'510703012000','510703012002','花园路二社区',111),(115,'510703012000','510703012003','武引后街社区',111),(116,'510703012000','510703012004','芙蓉社区',111),(117,'510703012000','510703012005','城郊社区',111),(118,'510703012000','510703012006','三里社区',111),(119,'510703012000','510703012007','沿江社区',111),(120,'510703012000','510703012008','平政社区',111),(121,'510703012000','510703012009','高水社区',111),(122,'510703012000','510703012010','圣水社区',111),(123,'510703012000','510703012011','南河社区',111),(124,'510703012000','510703012012','牌坊社区',111),(125,'510703012000','510703012013','新新庙社区',112),(126,'510703012000','510703012201','大包梁村',112),(127,'510703012000','510703012202','新观寺村',112),(128,'510703012000','510703012203','金家林村',112),(129,'510703012000','510703012204','戈家庙村',112),(130,'510703012000','510703012205','鼓楼山村',112),(131,'510703012000','510703012206','奓口庙村',112),(132,'510703012000','510703012208','白土村',112),(133,'510703012000','510703012209','西园村',112),(134,'510703012000','510703012210','下龙溪村',112),(135,'510703013000','510703013005','石桥社区',111),(136,'510703013000','510703013006','古泉社区',111),(137,'510703013000','510703013202','梨园村',112),(138,'510703013000','510703013203','石桥铺村',112),(139,'510703100000','510703100006','第一社区',121),(140,'510703100000','510703100007','第二社区',121),(141,'510703100000','510703100008','第三社区',121),(142,'510703100000','510703100201','团结村',121),(143,'510703100000','510703100202','胜利村',220),(144,'510703100000','510703100203','工农村',122),(145,'510703100000','510703100204','新建村',220),(146,'510703100000','510703100205','和平村',220),(147,'510703100000','510703100206','民杨村',220),(148,'510703100000','510703100207','致富村',220),(149,'510703100000','510703100208','建设村',220),(150,'510703100000','510703100209','李家桥村',220),(151,'510703100000','510703100210','回龙沟村',220),(152,'510703100000','510703100211','兴隆沟村',220),(153,'510703101000','510703101001','场镇社区',121),(154,'510703101000','510703101201','猫林村',220),(155,'510703101000','510703101202','大树村',220),(156,'510703101000','510703101203','拱桥村',220),(157,'510703101000','510703101204','齐心村',220),(158,'510703101000','510703101205','清水村',220),(159,'510703101000','510703101206','字库村',220),(160,'510703101000','510703101207','水塘村',220),(161,'510703101000','510703101208','龙坝村',220),(162,'510703101000','510703101209','大坪村',220),(163,'510703101000','510703101210','三联村',220),(164,'510703102000','510703102001','中街社区',112),(165,'510703102000','510703102002','中兴社区',112),(166,'510703102000','510703102003','三元社区',112),(167,'510703102000','510703102004','涪沿社区',111),(168,'510703102000','510703102201','洪恩村',112),(169,'510703102000','510703102202','三河村',112),(170,'510703102000','510703102203','红五村',220),(171,'510703102000','510703102204','金广村',220),(172,'510703102000','510703102205','友谊村',112),(173,'510703102000','510703102206','群丰村',220),(174,'510703102000','510703102207','桃园村',220),(175,'510703103000','510703103001','青漪社区',111),(176,'510703103000','510703103002','灯塔社区',111),(177,'510703103000','510703103201','龙溪村',112),(178,'510703103000','510703103202','龙中村',220),(179,'510703103000','510703103203','大龙村',220),(180,'510703103000','510703103204','中龙村',220),(181,'510703103000','510703103205','长梁村',220),(182,'510703103000','510703103206','兴龙村',112),(183,'510703103000','510703103207','绵江村',220),(184,'510703103000','510703103208','青羊村',112),(185,'510703104000','510703104001','场镇社区',121),(186,'510703104000','510703104002','迴龙社区',220),(187,'510703104000','510703104201','小桥村',220),(188,'510703104000','510703104202','黄木村',220),(189,'510703104000','510703104203','尖峰村',220),(190,'510703104000','510703104204','九龙村',220),(191,'510703104000','510703104205','九岭村',220),(192,'510703104000','510703104206','青霞村',220),(193,'510703104000','510703104207','香社村',122),(194,'510703104000','510703104208','中脊村',220),(195,'510703106000','510703106001','场镇社区',121),(196,'510703106000','510703106201','兴顺村',122),(197,'510703106000','510703106202','广福村',220),(198,'510703106000','510703106203','凤凰村',220),(199,'510703106000','510703106204','凉水村',122),(200,'510703106000','510703106205','中心桥村',220),(201,'510703106000','510703106206','五龙村',220),(202,'510703106000','510703106207','孔雀村',220),(203,'510703106000','510703106208','高桥村',220),(204,'510703106000','510703106209','幸福村',220),(205,'510703106000','510703106210','涌泉村',220),(206,'510703106000','510703106211','长林村',220),(207,'510703107000','510703107001','场镇社区',121),(208,'510703107000','510703107201','罗汉寺村',220),(209,'510703107000','510703107202','王家桥村',220),(210,'510703107000','510703107203','高山寺村',220),(211,'510703107000','510703107204','柏林湾村',220),(212,'510703107000','510703107205','回龙寺村',220),(213,'510703107000','510703107206','云林村',220),(214,'510703107000','510703107207','万和村',220),(215,'510703107000','510703107208','川主庙村',220),(216,'510703107000','510703107209','朵朵树村',220),(217,'510703107000','510703107210','团阳寺村',220),(218,'510703107000','510703107211','高碑垭村',220),(219,'510703107000','510703107212','兴隆村',122),(220,'510703108000','510703108001','场镇社区',121),(221,'510703108000','510703108201','穿山洞村',122),(222,'510703108000','510703108202','八庙子村',220),(223,'510703108000','510703108203','新丰村',220),(224,'510703108000','510703108204','分水村',220),(225,'510703108000','510703108205','五福寺村',122),(226,'510703108000','510703108206','大石桥村',220),(227,'510703108000','510703108207','白果林村',220),(228,'510703108000','510703108208','莲花池村',220),(229,'510703109000','510703109001','玉皇社区',121),(230,'510703109000','510703109201','新埝村',220),(231,'510703109000','510703109202','草堂村',220),(232,'510703109000','510703109203','团鱼村',220),(233,'510703109000','510703109204','斑竹村',220),(234,'510703109000','510703109205','坚堡梁村',220),(235,'510703109000','510703109206','任家村',220),(236,'510703109000','510703109207','鲜家坝村',220),(237,'510703109000','510703109208','老君村',220),(238,'510703110000','510703110001','皂角铺社区',111),(239,'510703110000','510703110201','石梯子村',112),(240,'510703110000','510703110202','麒龙庙村',220),(241,'510703110000','510703110203','邱家庙村',220),(242,'510703110000','510703110204','赵家花园村',220),(243,'510703110000','510703110205','清凉寺村',220),(244,'510703110000','510703110206','梅家沟村',220),(245,'510703110000','510703110207','九根树村',220),(246,'510703110000','510703110208','刘家坪村',220),(247,'510703110000','510703110209','五角堆村',220),(248,'510703111000','510703111201','项家庙村',111),(249,'510703111000','510703111202','海峰村',220),(250,'510703111000','510703111203','穿心店村',220),(251,'510703111000','510703111204','大郎庙村',220),(252,'510703111000','510703111205','玉皇庙村',220),(253,'510703111000','510703111206','上游村',220),(254,'510703111000','510703111207','湖山村',220),(255,'510703112000','510703112001','飞云社区',111),(256,'510703112000','510703112201','茅针寺村',111),(257,'510703112000','510703112202','冯家湾村',220),(258,'510703112000','510703112203','观音堂村',111),(259,'510703112000','510703112204','接龙寺村',112),(260,'510703112000','510703112205','七星包村',220),(261,'510703112000','510703112206','双凤坪村',220),(262,'510703113000','510703113001','金祥路社区',111),(263,'510703113000','510703113002','华裕路社区',111),(264,'510703113000','510703113003','龙家碾社区',111),(265,'510703113000','510703113004','兴业路社区',111),(266,'510703113000','510703113005','金祥寺社区',111),(267,'510703113000','510703113201','张家营村',111),(268,'510703113000','510703113202','狮子山村',112),(269,'510703113000','510703113203','玉龙院村',111),(270,'510703113000','510703113204','黎家院村',111),(271,'510703113000','510703113205','方登寺村',220),(272,'510703113000','510703113206','三官庙村',220),(273,'510703113000','510703113207','飞牛坝村',112),(274,'510703113000','510703113208','双土地村',220),(275,'510703113000','510703113209','松山寺村',111),(276,'510703201000','510703201001','文景社区',210),(277,'510703201000','510703201201','观音碑村',210),(278,'510703201000','510703201202','天池山村',210),(279,'510703201000','510703201203','文昌宫村',210),(280,'510703201000','510703201204','爱民村',220),(281,'510703201000','510703201205','泡桐树村',220),(282,'510703201000','510703201206','戴家林村',220),(283,'510703201000','510703201207','三清观村',220);

/*Table structure for table `log_user_login` */

DROP TABLE IF EXISTS `log_user_login`;

CREATE TABLE `log_user_login` (
  `uniqid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `userid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户识别号',
  `ip` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录IP',
  `login_time` int(10) DEFAULT NULL COMMENT '登录时间',
  `exit_time` int(10) DEFAULT NULL COMMENT '登出时间',
  PRIMARY KEY (`uniqid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='登录日志';

/*Data for the table `log_user_login` */

/*Table structure for table `plugin_access` */

DROP TABLE IF EXISTS `plugin_access`;

CREATE TABLE `plugin_access` (
  `uniqid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` enum('pc','wap') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ip` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '访问ip',
  `referer` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '访问来源',
  `domain` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '访问域名',
  `date` date NOT NULL COMMENT '访问日期',
  `time` time NOT NULL COMMENT '访问时间',
  `cookie` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '访问标识',
  `engine` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '搜索引擎',
  `keyword` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '搜索关键词',
  PRIMARY KEY (`uniqid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='访问统计';

/*Data for the table `plugin_access` */

/*Table structure for table `plugin_capacity` */

DROP TABLE IF EXISTS `plugin_capacity`;

CREATE TABLE `plugin_capacity` (
  `uniqid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `date` int(10) NOT NULL,
  `number` int(10) unsigned NOT NULL,
  PRIMARY KEY (`uniqid`),
  UNIQUE KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='单日游客最大接待量';

/*Data for the table `plugin_capacity` */

/*Table structure for table `plugin_config` */

DROP TABLE IF EXISTS `plugin_config`;

CREATE TABLE `plugin_config` (
  `uniqid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `unique` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '应用标识',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '应用类型',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '应用名称',
  `enable` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1已启用2未启用',
  `install` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1已安装2未安装',
  `pages` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '应用目录或页面',
  `version` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '支持的版本',
  `config` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '应用配置项',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '应用描述',
  `appid` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '应用授权id',
  `appkey` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '应用授权密钥',
  PRIMARY KEY (`uniqid`),
  UNIQUE KEY `unique` (`unique`),
  KEY `type` (`type`),
  KEY `enable` (`enable`),
  KEY `install` (`install`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='应用列表';

/*Data for the table `plugin_config` */

insert  into `plugin_config`(`uniqid`,`unique`,`type`,`name`,`enable`,`install`,`pages`,`version`,`config`,`content`,`appid`,`appkey`) values ('CONFIG-5D4CD1AA24953','capacity',1,'未来游客接待量',1,1,'capacity','','[]','','123','123');

/*Table structure for table `portal_article_attr` */

DROP TABLE IF EXISTS `portal_article_attr`;

CREATE TABLE `portal_article_attr` (
  `uniqid` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unique` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '1文章列表2文章页面',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `link` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '链接地址',
  `size` int(100) unsigned NOT NULL DEFAULT '0' COMMENT '大小',
  `mime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件mime类型',
  `dirname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '保存路径',
  `basename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件名称',
  `extension` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件后缀',
  `filename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件名',
  PRIMARY KEY (`uniqid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='文章附件表';

/*Data for the table `portal_article_attr` */

/*Table structure for table `portal_article_data` */

DROP TABLE IF EXISTS `portal_article_data`;

CREATE TABLE `portal_article_data` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniqid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'zh-cn' COMMENT '语言',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `type` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '类型',
  `excerpt` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '摘要',
  `source` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '来源',
  `link` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '外部链接',
  `audio` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '音频',
  `video` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '视频',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章内容',
  `quality` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否精品;1:精品;0:非精品',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示;1:显示;0:不显示',
  `comment` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否热门;1:热门;0:不热门',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `like` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `favorites` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数',
  `comment_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `thumbnail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '缩略图',
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '标签',
  `target` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '_blank' COMMENT '打开方式',
  `seo_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'seo title',
  `seo_keywords` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT 'seo keywords',
  `seo_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT 'seo description',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`,`uniqid`),
  UNIQUE KEY `uniqid` (`uniqid`),
  KEY `type` (`type`),
  KEY `show` (`show`),
  KEY `comment` (`comment`),
  KEY `is_top` (`is_top`),
  KEY `recommended` (`recommended`),
  KEY `hot` (`hot`),
  KEY `sort` (`sort`),
  KEY `hits` (`hits`),
  KEY `like` (`like`),
  KEY `favorites` (`favorites`),
  KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='portal文章表';

/*Data for the table `portal_article_data` */

/*Table structure for table `portal_article_image` */

DROP TABLE IF EXISTS `portal_article_image`;

CREATE TABLE `portal_article_image` (
  `uniqid` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unique` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '1文章列表2文章页面',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `link` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '链接地址',
  `size` int(100) unsigned NOT NULL DEFAULT '0' COMMENT '大小',
  `mime` varbinary(100) NOT NULL DEFAULT '' COMMENT '文件mime类型',
  `dirname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '保存路径',
  `basename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件名称',
  `extension` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件后缀',
  `filename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `core` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '裁剪图',
  `thumb` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '缩略图',
  PRIMARY KEY (`uniqid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='图片集合表';

/*Data for the table `portal_article_image` */

/*Table structure for table `portal_article_page` */

DROP TABLE IF EXISTS `portal_article_page`;

CREATE TABLE `portal_article_page` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniqid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'zh-cn' COMMENT '语言',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `excerpt` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '摘要',
  `source` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '来源',
  `link` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '外部链接',
  `audio` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '音频',
  `video` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '视频',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章内容',
  `quality` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否精品;1:精品;0:非精品',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示;1:显示;0:不显示',
  `comment` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否热门;1:热门;0:不热门',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `like` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `favorites` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数',
  `comment_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `thumbnail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '缩略图',
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '标签',
  `target` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '_blank' COMMENT '打开方式',
  `seo_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'seo title',
  `seo_keywords` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT 'seo keywords',
  `seo_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT 'seo description',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`,`uniqid`),
  UNIQUE KEY `uniqid` (`uniqid`),
  KEY `show` (`show`),
  KEY `comment` (`comment`),
  KEY `is_top` (`is_top`),
  KEY `recommended` (`recommended`),
  KEY `hot` (`hot`),
  KEY `sort` (`sort`),
  KEY `hits` (`hits`),
  KEY `like` (`like`),
  KEY `favorites` (`favorites`),
  KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='portal文章页面表';

/*Data for the table `portal_article_page` */

/*Table structure for table `portal_article_type` */

DROP TABLE IF EXISTS `portal_article_type`;

CREATE TABLE `portal_article_type` (
  `uniqid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'zh-cn' COMMENT '语言',
  `pid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'root' COMMENT '父类型',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型名称',
  `sign` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '类型标记',
  `sort` int(10) unsigned DEFAULT '0' COMMENT '类型排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注',
  `create_time` int(10) unsigned DEFAULT '0',
  `delete_time` int(10) unsigned DEFAULT '0',
  `update_time` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`uniqid`),
  KEY `pid` (`pid`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='文章类型表';

/*Data for the table `portal_article_type` */

/*Table structure for table `portal_message` */

DROP TABLE IF EXISTS `portal_message`;

CREATE TABLE `portal_message` (
  `uniqid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `lang` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'zh-cn' COMMENT '语言',
  `group` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '留言/咨询组',
  `type` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '留言/咨询类型',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '留言/咨询内容',
  `by_time` int(10) NOT NULL DEFAULT '0' COMMENT '留言/咨询时间',
  `name` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '留言/咨询人',
  `mobile_tel` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '留言/咨询人手机号',
  `by_ip` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '留言人IP',
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '留言人地址',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '留言人邮箱',
  `reply` enum('true','false') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'false' COMMENT '是否回复',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uniqid`),
  KEY `group` (`group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='留言板';

/*Data for the table `portal_message` */

/*Table structure for table `portal_nav` */

DROP TABLE IF EXISTS `portal_nav`;

CREATE TABLE `portal_nav` (
  `uniqid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'zh-cn' COMMENT '语言',
  `pid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'root' COMMENT '父类型',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型名称',
  `sign` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '类型标记',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '链接类型，1外链2内链',
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '链接',
  `target` enum('self','blank') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'self' COMMENT '打开方式',
  `show` tinyint(1) DEFAULT '1' COMMENT '是否显示',
  `sort` int(10) unsigned DEFAULT '0' COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注',
  `create_time` int(10) unsigned DEFAULT '0',
  `delete_time` int(10) unsigned DEFAULT '0',
  `update_time` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`uniqid`),
  UNIQUE KEY `pid` (`pid`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='导航表';

/*Data for the table `portal_nav` */

/*Table structure for table `portal_notice` */

DROP TABLE IF EXISTS `portal_notice`;

CREATE TABLE `portal_notice` (
  `uniqid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `lang` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'zh-cn' COMMENT '语言',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `thumb` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内容',
  `by_time` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '发布时间',
  `release` tinyint(1) DEFAULT '1' COMMENT '是否发布（1、是2否）',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uniqid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='通知公告';

/*Data for the table `portal_notice` */

/*Table structure for table `portal_slide` */

DROP TABLE IF EXISTS `portal_slide`;

CREATE TABLE `portal_slide` (
  `uniqid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'zh-cn' COMMENT '语言',
  `nav` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `sign` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '标记',
  `sort` int(10) unsigned DEFAULT '0' COMMENT '排序',
  `link` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '外部链接',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片地址',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注',
  `create_time` int(10) unsigned DEFAULT '0',
  `delete_time` int(10) unsigned DEFAULT '0',
  `update_time` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`uniqid`),
  KEY `name` (`name`),
  KEY `nav` (`nav`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='幻灯片类型表';

/*Data for the table `portal_slide` */

/*Table structure for table `temp_number` */

DROP TABLE IF EXISTS `temp_number`;

CREATE TABLE `temp_number` (
  `number` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `temp_number` */

insert  into `temp_number`(`number`) values (0),(1),(2),(3),(4),(5),(6),(7),(8),(9);

/*Table structure for table `user_account` */

DROP TABLE IF EXISTS `user_account`;

CREATE TABLE `user_account` (
  `uniqid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `account` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录账号',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录密码',
  `userkey` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '验证密钥',
  `mobile` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `is_login` enum('yes','no') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'yes' COMMENT '是否允许登录',
  `is_mobile` enum('yes','no') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'yes' COMMENT '是否允许手机登录',
  `login_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`uniqid`),
  UNIQUE KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户账号';

/*Data for the table `user_account` */

insert  into `user_account`(`uniqid`,`account`,`password`,`userkey`,`mobile`,`is_login`,`is_mobile`,`login_count`,`create_time`,`update_time`,`delete_time`) values ('USER-ACCOUNT-5D70B893BDB7E','manage','46DDC4D651BCA79D5E9A35BD1A53DD18','SXHY24WNPBCFQNGNR3LHNMEMFP6KJY-JS92OOYN2OT-9OYPQHQELDG','','yes','yes',5,1567668371,1567668371,0),('USER-ADMIN-5D09FCE09638E','admin','DB5F6D5DFC576F0F49D056CA3E83D745','SXHY24WNPBCFQNGNR3L2N8EQPKV-KIPRSRQVA4OJKN-ZE4QYKSQHDG','','yes','yes',406,0,0,0);

/*Table structure for table `user_auth` */

DROP TABLE IF EXISTS `user_auth`;

CREATE TABLE `user_auth` (
  `uniqid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `userid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `rights` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `role` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uniqid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户授权';

/*Data for the table `user_auth` */

insert  into `user_auth`(`uniqid`,`userid`,`rights`,`role`) values ('USER-AUTH-5D70B995B6240','USER-ACCOUNT-5D70B893BDB7E','','USER-ROLE-5D394ECFF3468');

/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `uniqid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `userid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `nickname` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户姓名',
  `mobile` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '手机号码',
  `weixin` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `qq` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户信息表';

/*Data for the table `user_info` */

insert  into `user_info`(`uniqid`,`userid`,`nickname`,`name`,`mobile`,`weixin`,`qq`,`email`,`create_time`,`update_time`,`delete_time`) values ('USER-ACCOUNT-5D70B893BDB7E','USER-INFO-5D70B893C1A6F','系统管理员','manage','0','','','0',1567668371,1567668371,0);

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `uniqid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pid` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'root' COMMENT '父角色',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `sign` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '角色标记',
  `sort` int(10) unsigned DEFAULT '0' COMMENT '角色排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注',
  `rights` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '权限列表',
  `create_time` int(10) unsigned DEFAULT '0',
  `update_time` int(10) unsigned DEFAULT '0',
  `delete_time` int(10) unsigned DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`uniqid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户角色表';

/*Data for the table `user_role` */

insert  into `user_role`(`uniqid`,`pid`,`name`,`sign`,`sort`,`remark`,`rights`,`create_time`,`update_time`,`delete_time`) values ('USER-ROLE-5D394ECFF3468','root','系统管理员','',0,'','[\"system_index\"]',1564036815,1574945320,0);

/*Table structure for table `user_list_view` */

DROP TABLE IF EXISTS `user_list_view`;

/*!50001 DROP VIEW IF EXISTS `user_list_view` */;
/*!50001 DROP TABLE IF EXISTS `user_list_view` */;

/*!50001 CREATE TABLE  `user_list_view`(
 `uniqid` char(50) ,
 `userid` char(50) ,
 `name` varchar(50) ,
 `nickname` varchar(80) ,
 `weixin` char(50) ,
 `qq` char(15) ,
 `email` varchar(50) ,
 `account` char(50) ,
 `mobile` char(15) ,
 `is_login` enum('yes','no') ,
 `is_mobile` enum('yes','no') ,
 `login_count` int(10) unsigned 
)*/;

/*View structure for view user_list_view */

/*!50001 DROP TABLE IF EXISTS `user_list_view` */;
/*!50001 DROP VIEW IF EXISTS `user_list_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_list_view` AS select `a`.`uniqid` AS `uniqid`,`a`.`userid` AS `userid`,`a`.`name` AS `name`,`a`.`nickname` AS `nickname`,`a`.`weixin` AS `weixin`,`a`.`qq` AS `qq`,`a`.`email` AS `email`,`b`.`account` AS `account`,`b`.`mobile` AS `mobile`,`b`.`is_login` AS `is_login`,`b`.`is_mobile` AS `is_mobile`,`b`.`login_count` AS `login_count` from (`user_info` `a` left join `user_account` `b` on((`a`.`uniqid` = `b`.`uniqid`))) where (`a`.`delete_time` = 0) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
