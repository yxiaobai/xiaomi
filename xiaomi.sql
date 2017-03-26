/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 5.7.17 : Database - db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db`;

/*Table structure for table `reply` */

DROP TABLE IF EXISTS `reply`;

CREATE TABLE `reply` (
  `r_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `x_id` int(11) NOT NULL,
  `contents` text,
  `conts` text,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `reply` */

insert  into `reply`(`r_id`,`x_id`,`contents`,`conts`) values (1,1,'<p>大声道 你是十二</p>',NULL),(2,1,'<p>vckxjvjklcxvh 你的的第三方 &nbsp; 给对方</p>',NULL),(3,1,'<p>骨灰盒 画江湖好好</p>',NULL),(4,1,'<p>您还 哦</p>',NULL),(5,1,'<p>真的卡萨 按时【按时</p>',NULL),(6,1,'<p>找人南方人，真的是不会吗</p>',NULL),(7,1,'<p>范甘迪发股份大股东</p>',NULL),(8,1,'<p>与预付</p>',NULL),(9,1,'<p>麦科勒姆了</p>',NULL),(10,1,'<p>肥嘟嘟</p>',NULL),(11,1,'<p>大</p>',NULL),(12,1,'<p>多撒大所</p>',NULL),(13,1,'<p>多撒大所</p>',NULL),(14,1,'<p>骷髅精灵</p>',NULL),(15,1,'<p>你看见看见</p>',NULL),(16,1,'<p>你好纱布</p><p><br/></p>',NULL),(17,1,'<p>蛋蛋 &nbsp;你真傻比</p>',NULL),(18,1,'<p>sadasda</p>',NULL),(19,1,'<p>你说啥 &nbsp;你是啥 &nbsp;你做啥 啊&nbsp;</p>',NULL);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`id`,`NAME`,`address`) values (1,'rose','南阳市');

/*Table structure for table `tb_order` */

DROP TABLE IF EXISTS `tb_order`;

CREATE TABLE `tb_order` (
  `ORDER_ID` varchar(20) NOT NULL COMMENT '订单ID',
  `USER_ID` bigint(20) unsigned NOT NULL COMMENT '用户ID',
  `ORDER_PRICE` double(9,2) unsigned NOT NULL COMMENT '订单价格',
  `ORDER_NAME` varchar(20) NOT NULL COMMENT '订单收货人',
  `ORDER_ADDR` varchar(100) NOT NULL COMMENT '收货地址',
  `ORDER_PHONE` varchar(20) NOT NULL COMMENT '收货人电话',
  `ORDER_TEL` varchar(20) DEFAULT NULL COMMENT '收货人联系电话',
  `ORDER_DESC` varchar(100) DEFAULT NULL COMMENT '订单备注',
  `STATE` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态 1:可用状态  0:删除状态',
  PRIMARY KEY (`ORDER_ID`),
  KEY `IDX_ORDER_USER_ID` (`USER_ID`),
  KEY `IDX_ORDER_STATE` (`STATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

/*Data for the table `tb_order` */

insert  into `tb_order`(`ORDER_ID`,`USER_ID`,`ORDER_PRICE`,`ORDER_NAME`,`ORDER_ADDR`,`ORDER_PHONE`,`ORDER_TEL`,`ORDER_DESC`,`STATE`) values ('1',33,1.00,'1','1','1','1','33',3),('1011',1,100.00,'jack','河南','17777','656','aaa',1),('2',33,41645.00,'33','33','334','33','33',3),('55',45,45.00,'42','424','24','2','44',44);

/*Table structure for table `xm_admin` */

DROP TABLE IF EXISTS `xm_admin`;

CREATE TABLE `xm_admin` (
  `AdminId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Admins` varchar(20) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`AdminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `xm_admin` */

insert  into `xm_admin`(`AdminId`,`Admins`,`Password`) values (1,'admin','123123');

/*Table structure for table `xm_car` */

DROP TABLE IF EXISTS `xm_car`;

CREATE TABLE `xm_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` varchar(20) DEFAULT NULL,
  `goodsID` int(11) DEFAULT NULL,
  `goodsName` varchar(20) DEFAULT NULL,
  `goodsImg` varchar(50) DEFAULT NULL,
  `marketPrice` double DEFAULT NULL,
  `goodsColor` varchar(20) DEFAULT NULL,
  `goodsType` varchar(50) DEFAULT NULL,
  `goodsCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `xm_car` */

insert  into `xm_car`(`id`,`userID`,`goodsID`,`goodsName`,`goodsImg`,`marketPrice`,`goodsColor`,`goodsType`,`goodsCount`) values (10,'ko',301,'小米Note2','xiaomiNOTE2-320-220!160x110.webp.jpg',2799,NULL,NULL,0),(16,'lj',301,'小米Note2','xiaomiNOTE2-320-220!160x110.webp.jpg',2799,NULL,NULL,0),(17,'lj',349,'小米活塞耳机 清新版','20170315101030483.jpg',29,NULL,NULL,0),(18,'lj',388,'小米米家电动滑板车','20170315100645849.jpg',1999,NULL,NULL,0);

/*Table structure for table `xm_carousel` */

DROP TABLE IF EXISTS `xm_carousel`;

CREATE TABLE `xm_carousel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `flag` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `xm_carousel` */

insert  into `xm_carousel`(`id`,`title`,`img`,`url`,`flag`) values (32,'mi','20170324160200868.jpg','300','n'),(33,'mi','20170324160219149.jpg','301','n'),(34,'mi','20170324160229508.jpg','318','n'),(35,'mi','20170324160238833.jpg','303','n'),(36,'mi','20170324160256212.jpg','304','n');

/*Table structure for table `xm_class` */

DROP TABLE IF EXISTS `xm_class`;

CREATE TABLE `xm_class` (
  `class_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `class_name` varchar(50) NOT NULL COMMENT '分类名',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='分类表';

/*Data for the table `xm_class` */

insert  into `xm_class`(`class_id`,`class_name`) values (1,'小米手机'),(2,'红米'),(3,'笔记本'),(4,'平板'),(5,'电视'),(6,'盒子'),(7,'路由器'),(8,'智能硬件'),(9,'移动电源'),(10,'耳机'),(11,'音响'),(12,'保护套'),(13,'贴膜'),(14,'其他配件'),(15,'生活周边'),(16,'小米明星产品');

/*Table structure for table `xm_color` */

DROP TABLE IF EXISTS `xm_color`;

CREATE TABLE `xm_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `GoodsID` int(11) DEFAULT NULL,
  `color` varchar(60) DEFAULT NULL,
  `modelID` int(11) DEFAULT NULL,
  `Number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

/*Data for the table `xm_color` */

insert  into `xm_color`(`id`,`GoodsID`,`color`,`modelID`,`Number`) values (1,300,'黑色',2,87),(2,300,'金色',3,86),(3,300,'玫瑰金',1,66),(4,301,'亮银黑',2,87),(5,301,'亮黑色',3,86),(6,302,'黑金',2,87),(7,302,'皓月白',3,86),(8,302,'黑色',1,66),(9,303,'黑色',1,88),(10,303,'金色',2,87),(11,303,'玫瑰金',3,86),(12,303,'银白',1,66),(13,304,'雅黑色',2,87),(14,304,'玫瑰金',3,86),(15,304,'拉丝深灰',2,87),(16,304,'拉丝金色',3,86),(17,304,'拉丝银白',3,86),(18,305,'白色',2,87),(21,306,'香槟金',2,87),(22,306,'樱花粉',3,86),(23,306,'磨砂黑',3,86),(24,307,'雅黑',2,87),(25,307,'灰色',3,86),(26,307,'幽兰',2,87),(27,307,'金色',3,86),(28,307,'银色',3,86),(29,308,'樱花粉',2,87),(30,308,'磨砂黑',3,86),(31,308,'香槟金',2,87),(32,309,'灰色',2,87),(33,309,'银色',3,86),(34,309,'金色',2,87),(35,310,'银色',2,87),(36,310,'金色',3,86),(37,311,'银色',2,87),(38,311,'金色',3,86),(39,312,'银色',2,87),(40,312,'金色',3,86),(41,313,'香槟金',2,87),(42,313,'太空银',3,86),(43,314,'黑色',2,87),(44,315,'黑色',2,87),(45,316,'黑色',2,87),(46,317,'黑色',2,87),(47,318,'黑色',2,87),(48,319,'黑色',2,87),(49,320,'黑色',2,87),(50,321,'黑色',2,87),(51,322,'黑色',2,87),(52,323,'白色',2,87),(53,323,'白色(礼品装)',2,87),(54,324,'白色',2,87),(55,325,'星空黑',2,87),(56,326,'黑色',2,87),(57,327,'白色',2,87),(58,328,'白色',2,87),(59,329,'黑色',2,87),(60,330,'黑色',2,87),(61,331,'黑色',2,87),(62,332,'黑色',2,87),(63,333,'黑色',2,87),(64,334,'黑色',2,87),(65,335,'黑色',2,87),(66,336,'黑色',2,87),(67,337,'白色',2,87),(68,338,'白色',2,87),(69,339,'白色',2,87),(70,340,'白色',2,87),(71,341,'白色',2,87),(72,342,'白色',2,87),(73,343,'白色',2,87),(74,344,'黑色',2,87),(75,345,'黑色',2,87),(76,346,'黑色',2,87),(77,347,'黑色',2,87),(78,348,'黑色',2,87),(79,349,'黑色',2,87),(80,350,'黑色',2,87),(81,351,'黑色',2,87),(82,352,'黑色',2,87),(83,353,'黑色',2,87),(84,354,'白色',2,87),(85,354,'黑色',2,87),(86,355,'黑色',2,87),(87,356,'白色',2,87),(88,356,'黑色',2,87),(89,357,'黑色',2,87),(90,358,'黑色',2,87),(91,359,'黑色',2,87),(92,360,'黑色',2,87),(93,361,'黑色',2,87),(94,362,'黑色',2,87),(95,363,'黑色',2,87),(96,364,'黑色',2,87),(97,365,'黑色',2,87),(98,366,'黑色',2,87),(99,367,'黑色',2,87),(100,368,'黑色',2,87),(101,369,'黑色',2,87),(102,370,'黑色',2,87),(103,371,'黑色',2,87),(104,372,'黑色',2,87),(105,373,'黑色',2,87),(106,374,'黑色',2,87),(107,375,'黑色',2,87),(108,376,'黑色',2,87),(109,377,'黑色',2,87),(110,378,'黑色',2,87),(111,379,'黑色',2,87),(112,380,'黑色',2,87),(113,381,'黑色',2,87),(114,382,'金色',2,87),(115,382,'银色',2,87),(116,383,'黑色',2,87),(117,384,'黑色',2,87),(118,385,'黑色',2,87),(119,386,'黑色',2,87),(120,387,'黑色',2,87),(121,388,'黑色',2,87),(122,389,'黑色',2,87),(123,390,'黑色',2,87),(124,391,'黑色',2,87),(125,392,'黑色',2,87),(126,393,'黑色',2,87),(127,394,'黑色',2,87),(128,395,'黑色',2,87);

/*Table structure for table `xm_community` */

DROP TABLE IF EXISTS `xm_community`;

CREATE TABLE `xm_community` (
  `c_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `xm_community` */

insert  into `xm_community`(`c_id`,`id`,`title`,`content`) values (6,1,'苦与笑  都要阅历','<p>恩哈会计师的发生暴风科技巴斯克减肥吧上岛咖啡不愧是会计师电话费可接受的付款后说贷款乳房和讲课人好看我JHBRKJBKJSFBJKL额分别为科技bEFKWEBKWEFKJHBJKEHJKL&nbsp;</p>');

/*Table structure for table `xm_discount` */

DROP TABLE IF EXISTS `xm_discount`;

CREATE TABLE `xm_discount` (
  `DiscountId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `GoodsId` int(11) DEFAULT NULL,
  `DiscountTitle` varchar(100) NOT NULL,
  `DiscountCon` varchar(500) DEFAULT NULL,
  `DiscountPrice` double DEFAULT NULL,
  `DiscountStartDate` datetime DEFAULT NULL,
  `DiscountEndDate` datetime DEFAULT NULL,
  PRIMARY KEY (`DiscountId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `xm_discount` */

insert  into `xm_discount`(`DiscountId`,`GoodsId`,`DiscountTitle`,`DiscountCon`,`DiscountPrice`,`DiscountStartDate`,`DiscountEndDate`) values (1,3,'限时优惠8折','活动内容',1519.2,'2017-01-14 00:00:00','2017-04-20 00:00:00');

/*Table structure for table `xm_edition` */

DROP TABLE IF EXISTS `xm_edition`;

CREATE TABLE `xm_edition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `GoodsID` int(11) DEFAULT NULL,
  `edition` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

/*Data for the table `xm_edition` */

insert  into `xm_edition`(`id`,`GoodsID`,`edition`) values (1,300,'3GB内存+64GB容量'),(2,301,'标准版 4GB内存+64GB容量'),(3,301,'高配版 6GB内存+128GB容量'),(4,302,'尊享版 6GB内存+256GB容量'),(5,302,'标准版 4GB内存+128GB容量'),(6,303,'4GB内存+128GB容量'),(7,303,'3GB内存+64GB容量'),(8,304,'高配版 6GB内存+128GB容量'),(9,304,'标准版 4GB内存+64GB容量'),(10,305,'高配版 3GB内存+64GB容量'),(11,306,'全网通 3GB内存+32GB容量'),(12,307,'4GB内存+64GB容量'),(13,307,'3GB内存+32GB容量'),(14,307,'3GB内存+64GB容量'),(15,308,'3GB内存+32GB容量'),(16,308,'2GB内存+16GB容量'),(17,309,'高配版 3GB内存+32GB容量'),(18,309,'标准版版 2GB内存+16GB容量'),(19,310,'12.5\' 集成显卡'),(20,310,'13.3\' 独立显卡 标准版'),(21,310,'13.3\' 独立显卡 尊享版'),(22,311,'12.5\' 集成显卡'),(23,311,'13.3\' 独立显卡 标准版'),(24,311,'13.3\' 独立显卡 尊享版'),(25,312,'12.5\' 集成显卡'),(26,312,'13.3\' 独立显卡 标准版'),(27,312,'13.3\' 独立显卡 尊享版'),(28,313,'16GB'),(29,314,'标准版'),(30,315,'标准版'),(31,316,'标准版'),(32,316,'人工智能语音版'),(33,317,'标准版'),(34,317,'人工智能语音版'),(35,318,'标准版'),(36,319,'标准版'),(37,320,'标准版'),(38,321,'标准版'),(39,322,'标准版'),(40,323,'标准版'),(41,323,'标准版'),(42,324,'标准版'),(43,325,'标准版'),(44,326,'标准版'),(45,327,'标准版'),(46,328,'标准版'),(47,329,'标准版'),(48,330,'标准版'),(49,331,'标准版'),(50,332,'标准版'),(51,333,'标准版'),(52,334,'标准版'),(53,335,'标准版'),(54,336,'标准版'),(55,337,'标准版'),(56,338,'标准版'),(57,339,'标准版'),(58,340,'标准版'),(59,341,'标准版'),(60,342,'标准版'),(61,343,'标准版'),(62,344,'标准版'),(63,345,'标准版'),(64,346,'标准版'),(65,347,'标准版'),(66,348,'标准版'),(67,349,'标准版'),(68,350,'标准版'),(69,351,'标准版'),(70,352,'标准版'),(71,353,'标准版'),(72,354,'标准版'),(73,355,'标准版'),(74,356,'标准版'),(75,357,'标准版'),(76,358,'标准版'),(77,359,'标准版'),(78,360,'标准版'),(79,361,'标准版'),(80,362,'标准版'),(81,363,'标准版'),(82,364,'标准版'),(83,365,'标准版'),(84,366,'标准版'),(85,367,'标准版'),(86,368,'标准版'),(87,369,'标准版'),(88,370,'标准版'),(89,371,'标准版'),(90,372,'标准版'),(91,373,'标准版'),(92,374,'标准版'),(93,375,'标准版'),(94,376,'标准版'),(95,377,'标准版'),(96,378,'标准版'),(97,379,'标准版'),(98,380,'标准版'),(99,381,'标准版'),(100,382,'标准版'),(101,383,'标准版'),(102,384,'标准版'),(103,385,'标准版'),(104,386,'标准版'),(105,387,'标准版'),(106,388,'标准版'),(107,389,'标准版'),(108,390,'标准版'),(109,391,'标准版'),(110,392,'标准版'),(111,393,'标准版'),(112,394,'标准版'),(113,395,'标准版');

/*Table structure for table `xm_goodsinfo` */

DROP TABLE IF EXISTS `xm_goodsinfo`;

CREATE TABLE `xm_goodsinfo` (
  `GOODSID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `C_ID` int(11) DEFAULT NULL COMMENT '商品分类id',
  `GOODSNAME` varchar(50) DEFAULT NULL COMMENT '商品名',
  `GoodsIntroduce` varchar(100) DEFAULT NULL COMMENT '商品介绍',
  `SERVICE` varchar(200) DEFAULT NULL COMMENT '服务',
  `GOODSIMG` varchar(200) DEFAULT NULL COMMENT '图片',
  `GOODSURL` varchar(50) DEFAULT NULL COMMENT '图片链接',
  `MARKETPRICE` double DEFAULT NULL COMMENT '市场价',
  `ISNEW` tinyint(1) DEFAULT NULL COMMENT '是否新品',
  `DISCOUNT` tinyint(1) DEFAULT NULL COMMENT '是否优惠商品',
  `FLAG` varchar(2) DEFAULT NULL COMMENT '商品上下架',
  `class_cId` tinyint(4) NOT NULL,
  PRIMARY KEY (`GOODSID`)
) ENGINE=InnoDB AUTO_INCREMENT=396 DEFAULT CHARSET=utf8 COMMENT='商品表';

/*Data for the table `xm_goodsinfo` */

insert  into `xm_goodsinfo`(`GOODSID`,`C_ID`,`GOODSNAME`,`GoodsIntroduce`,`SERVICE`,`GOODSIMG`,`GOODSURL`,`MARKETPRICE`,`ISNEW`,`DISCOUNT`,`FLAG`,`class_cId`) values (300,1,'小米5C','描述','服务','mi5c_320x220.png','#',1999,1,1,'y',2),(301,1,'小米Note2','描述','服务','xiaomiNOTE2-320-220!160x110.webp.jpg','#',2799,1,1,'y',2),(302,1,'小米MIX','描述','服务','MIX-320-220!160x110.webp.jpg','#',3499,1,1,'y',2),(303,1,'小米5S','描述','服务','xiaomi5S-320-220!160x110.jpg','#',1999,1,1,'y',2),(304,1,'小米5S Plus','描述','服务','5spluse320_220!160x110.jpg','#',2299,1,1,'y',2),(305,1,'小米手机5','描述','服务','mi5!160x110.webp.jpg','#',2299,1,1,'y',2),(306,2,'红米Note 4X','描述','SADSADSAD','20170314195042590.jpg','#',999,1,1,'y',2),(307,2,'红米Note 4','描述','服务','hongminote4!160x110.webp.jpg','#',999,1,1,'y',2),(308,2,'红米4X','描述','服务','hm4x320!160x110.webp.jpg','#',699,1,1,'y',2),(309,2,'红米4','描述','服务','320-2202!160x110.webp.jpg','#',799,1,1,'y',2),(310,3,'小米笔记本Air 12.5\"','描述','服务','bijiben32012.5!160x110.jpg','#',3499,1,1,'y',2),(311,3,'小米笔记本Air 13.3\"','描述','服务','bijiben320!160x110.webp.jpg','#',3499,1,1,'y',2),(312,3,'小米笔记本Air尊享版\"','描述','服务','bijiben320!160x110.webp.jpg','#',3499,1,1,'y',2),(313,4,'小米平板2 16GB','描述','服务','mipad2-16!160x110.webp.jpg','#',999,1,1,'y',2),(314,5,'小米电视3s 48英寸','原装液晶屏，金属机身','服务','2017031419530054.jpg','#',2599,1,0,'y',0),(315,5,'小米电视4A 43英寸','描述','服务','320_43.png','#',199,1,0,'y',0),(316,5,'小米电视4A 49英寸','描述','服务','320_49.png','#',299,1,0,'y',0),(317,5,'小米电视4A 55英寸','描述','服务','320_55.png','#',399,1,0,'y',0),(318,5,'小米电视3 70英寸','描述','服务','T1pvL_BjZv1R4cSCrK!200x200.png','#',1999,1,0,'y',0),(319,5,'小米电视4A 43英寸','描述','服务','320_43.png','#',2099,1,1,'y',2),(320,5,'小米电视3s 60英寸','描述','服务','101860xin.png','#',4799,1,1,'y',2),(321,6,'小米盒子3s','描述','服务','mihezi.png','#',299,1,1,'y',2),(322,6,'小米盒子3c','描述','服务','mihezi.png','#',199,1,1,'y',2),(323,6,'小米盒子mini版','描述','服务','hezimini.png','#',199,1,1,'y',2),(324,6,'小米盒子3 增强版','描述','服务','hezi3s!160x110.webp.jpg','#',399,1,1,'y',2),(325,7,'小米路由器 Pro','描述','服务','pro320x220.png','#',499,1,1,'y',2),(326,7,'小米路由器 3','更快更强，不止四天线','服务','lyq3c1.png','#',149,1,1,'y',2),(327,7,'小米路由器 3C','描述','服务','lyq31.png','#',99,1,1,'y',2),(328,7,'小米路由器 HD','描述','服务','lyqhd.png','#',1299,1,1,'y',2),(329,8,'小米体重秤','100克，喝杯水都可感知的精准','服务','20170315092804622.jpg','#',99,1,0,'y',0),(330,8,'米家行车记录仪','晚上能拍清车牌的行车记录仪','服务','20170315100637660.jpg','#',349,1,0,'y',0),(331,8,'小米空气净化器2','高效除霾，10分钟换新房间空气','服务','20170315100645849.jpg','#',699,1,0,'y',0),(332,8,'小米净水器 厨下式','直出纯净水，隐藏式安装','服务','20170315093230113.jpg','#',1999,1,0,'y',0),(333,8,'米家 LED 智能台灯','无可视频闪，亮度色温无级调节','服务','20170315093330668.jpg','#',169,1,0,'y',0),(334,8,'米家iHealth血压计','爸妈上手就会用的智能血压计','服务','20170315093153635.png','#',399,1,0,'y',0),(335,8,'米家压力 IH电饭煲','描述','服务','pms_1478678718.61531371!220x220.jpg','#',399,1,1,'y',2),(336,8,'米家 IH 电饭煲','描述','服务','pms_1478678718.61531371!220x220.jpg','#',399,1,1,'y',2),(337,9,'ZMI随身路由器（全网通版）','双向快充，高密度锂聚合物电芯','服务','T1cod_B5Kv1RXrhCrK!200x200.webp.jpg','#',79,1,0,'y',0),(338,9,'ZMI随身路由器（全网通版）','双向快充，高密度锂聚合物电芯','服务','T1cod_B5Kv1RXrhCrK!200x200.webp.jpg','#',79,1,0,'y',0),(339,9,'ZMI随身路由器（全网通版）','双向快充，高密度锂聚合物电芯','服务','T1cod_B5Kv1RXrhCrK!200x200.webp.jpg','#',79,1,0,'y',0),(340,9,'ZMI随身路由器（全网通版）','双向快充，高密度锂聚合物电芯','服务','T1cod_B5Kv1RXrhCrK!200x200.webp.jpg','#',79,1,0,'y',0),(341,9,'ZMI随身路由器（全网通版）','双向快充，高密度锂聚合物电芯','服务','T1cod_B5Kv1RXrhCrK!200x200.webp.jpg','#',79,1,0,'y',0),(342,9,'ZMI随身路由器（全网通版）','双向快充，高密度锂聚合物电芯','服务','T1cod_B5Kv1RXrhCrK!200x200.webp.jpg','#',79,1,0,'y',0),(343,9,'ZMI随身路由器（全网通版）','双向快充，高密度锂聚合物电芯','服务','T1cod_B5Kv1RXrhCrK!200x200.webp.jpg','#',79,1,0,'y',0),(344,10,'1MORE头戴式耳机','描述','服务','pms_1480385131.13482423!200x200.webp.jpg','#',199,1,0,'y',0),(345,10,'1MORE入耳式耳机','描述','服务','T1T2AjBybv1RXrhCrK!200x200.webp.jpg','#',69,1,0,'y',0),(346,10,'运动音乐蓝牙耳机','描述','服务','pms_1465971824.88567693!200x200.webp.jpg','#',149,1,0,'y',0),(347,10,'1MORE金澈耳机','描述','服务','pms_1477020337.09961854!200x200.jpg','#',29,1,0,'y',0),(348,10,'1MORE三单元圈铁耳机','描述','服务','pms_1464592109.19494450!200x200.webp.jpg','#',59,1,0,'y',0),(349,10,'1MORE好声音入耳式耳机','描述','服务','pms_1478607293.23866401!200x200.webp.jpg','#',29,1,0,'y',0),(350,10,'1MORE好声音入耳式耳机','描述','服务','pms_1478607293.23866401!200x200.webp.jpg','#',149,1,0,'y',0),(351,11,'小米网络音响','描述','服务','20170315101059643.jpg','#',399,1,0,'y',0),(352,11,'小米小钢炮蓝牙音箱2','描述','服务','20170315101136299.jpg','#',129,1,0,'y',0),(353,11,'小米随身蓝牙音箱','描述','服务','20170315101510208.jpg','#',69,1,0,'y',0),(354,11,'小米小钢炮蓝牙音箱2','描述','服务','20170315101519115.jpg','#',129,1,0,'y',0),(355,11,'小米方盒子蓝牙音箱','描述','服务','20170315101536275.jpg','#',99,1,0,'y',0),(356,11,'ROIDMI音乐蓝牙车充','描述','服务','20170315101546332.jpg','#',99,1,0,'y',0),(357,11,'小米蓝牙音箱','描述','服务','20170315101556679.jpg','#',199,1,0,'y',0),(358,12,'红米手机保护套','描述','服务','T1leDjBsET1RXrhCrK!200x200.webp.jpg','#',19,1,0,'y',0),(359,12,'红米手机标准高透贴膜','描述','服务','20170315103723352.jpg','#',19,1,0,'y',0),(360,12,'小米Note2 翻盖保护套','描述','服务','pms_1478247753.15734216!220x220.jpg','#',39,1,0,'y',0),(361,12,'小米5s 智能保护套','描述','服务','pms_1474888072.78155129!220x220.webp.jpg','#',79,1,0,'y',0),(362,12,'红米Note4 超薄保护套','描述','服务','pms_1478790273.61645973!220x220.webp.jpg','#',19,1,0,'y',0),(363,12,'红米4标准版翻盖保护套','描述','服务','pms_1478582939.22254590!220x220.webp.jpg','#',29,1,0,'y',0),(364,12,'红米4高配版 保护套','描述','服务','pms_1478174026.59045943!220x220.webp.jpg','#',29,1,0,'y',0),(365,13,'红米手机贴膜','描述','服务','T1leDjBsET1RXrhCrK!200x200.webp.jpg','#',19,1,0,'y',0),(366,13,'红米4标准版贴膜','描述','服务','pms_1482136232.14896578!220x220.webp.jpg','#',9.9,1,0,'y',0),(367,13,'红米4高配版贴膜','描述','服务','pms_1482136277.01722149!220x220.jpg','#',9.9,1,0,'y',0),(368,13,'小米手机5蓝光贴膜','描述','服务','T1cVLjBX_v1RXrhCrK.webp.jpg','#',49,1,0,'y',0),(369,13,'小米5s标准高透贴膜','描述','服务','pms_1482136306.7944683!220x220.jpg','#',19,1,0,'y',0),(370,13,'红米Note4x标准高透贴膜','描述','服务','pms_1487742227.27595029!220x220.webp.jpg','#',19,1,0,'y',0),(371,13,'小米Max标准高透贴膜','描述','服务','T1y7JQBbCT1RXrhCrK!220x220.webp.jpg','#',19,1,0,'y',0),(372,14,'彩虹5号电池','描述','服务','20170315102425218.jpg','#',9.9,1,0,'y',0),(373,14,'彩虹七号电池','描述','服务','20170315102425218.jpg','#',9.9,1,0,'y',0),(374,14,'SanDisk 32GB高速存储卡','描述','服务','20170315102445531.jpg','#',69.9,1,0,'y',0),(375,14,'小米智能插线板','描述','服务','20170315102007125.jpg','#',69,1,0,'y',0),(376,14,'小米USBZ充电器','客服妹妹快出来，今天收到宝贝才发现很不错的啊','服务','20170315102406475.jpg','#',49,1,0,'y',0),(377,14,'小米手机壳','描述','服务','T1leDjBsET1RXrhCrK!200x200.webp.jpg','#',29,1,0,'y',0),(378,14,'小米指环支架','描述','服务','pms_1482221011.26064844!220x220.webp.jpg','#',19,1,0,'y',0),(379,15,'小米指环支架','描述','服务','pms_1482221011.26064844!220x220.webp.jpg','#',19,1,0,'y',0),(380,15,'小米USB电源适配器','描述','服务','pms_1488437436.38237666!220x220.jpg','#',99,1,0,'y',0),(381,15,'蓝牙语音体感遥控器','描述','服务','T11oW_B4dv1RXrhCrK!220x220.webp.jpg','#',99,1,0,'y',0),(382,15,'小米便携鼠标','描述','服务','pms_1488533926.06453673!220x220.webp.jpg','#',99,1,0,'y',0),(383,15,'多功能转接器','描述','服务','pms_1469523170.25518983!220x220.webp.jpg','#',149,1,0,'y',0),(384,15,'转接头','描述','服务','T1xLxQBgVT1RXrhCrK!220x220.webp.jpg','#',5,1,0,'y',0),(385,15,'小米车载充电器','描述','服务','20170315102503464.jpg','#',49,1,0,'y',0),(386,16,'小米手环 2','OLED 显示屏幕，升级计步算法','服务','20170315093115870.png','#',149,1,0,'y',0),(387,16,'米家骑记电助力折叠自行车','力矩传感电助力，让城市出行轻松有趣','服务','pms_1488275235.31765367!220x220.webp.jpg','#',2999,1,0,'y',0),(388,16,'小米米家电动滑板车','极简几何设计，1 分钟轻松上手','服务','pms_1488272686.62666302!220x220.webp.jpg','#',1999,1,0,'y',0),(389,16,'ROIDMI音乐蓝牙车充','连接简单，音质商可比Cd略差，充电很快','服务','20170315102357901.jpg','#',99,1,0,'y',0),(390,16,'小米自拍杆','描述','服务','pms_1474430362.70018703!200x200.jpg','#',49,1,0,'y',0),(391,16,'小米家庭影院','描述','服务','320x220.png','#',1999,1,1,'y',2),(392,16,'小米家庭音响 标准版','描述','服务','putonban!160x110.webp.jpg','#',699,1,1,'y',2),(393,16,'米家空气净化器 Pro','描述','服务','airpro!600x600.webp.jpg','#',1499,1,1,'y',2),(394,16,'米家 PM2.5 检测仪','描述','服务','pmdetec!600x600.jpg','#',399,1,1,'y',2),(395,16,'九号平衡车','描述','服务','T1_VCgBbET1RXrhCrK.jpg','#',9.9,1,0,'y',0);

/*Table structure for table `xm_img` */

DROP TABLE IF EXISTS `xm_img`;

CREATE TABLE `xm_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `GoodsID` int(11) DEFAULT NULL,
  `img` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

/*Data for the table `xm_img` */

insert  into `xm_img`(`id`,`GoodsID`,`img`) values (1,300,'pms_1490088823.14341375.jpg'),(2,300,'pms_1490088824.05214789.jpg'),(3,300,'pms_1490088825.0042275.jpg'),(4,301,'pms_1490088805.69334485.jpg'),(5,301,'pms_1490088825.9269802.jpg'),(6,302,'pms_1490088811.16427079.jpg'),(7,302,'pms_1490088812.19079238.jpg'),(8,303,'xiaomi5splus-heise!600x600.jpg'),(9,303,'xiaomi5splus-jinse!600x600.jpg'),(10,303,'xiaomi5splus-meiguijin!600x600.jpg'),(11,303,'xiaomi5splus-yinse!600x600.jpg'),(12,304,'pms_1490088801.23224822.jpg'),(13,304,'pms_1490088803.33652016.jpg'),(14,304,'pms_1490088804.61214422.jpg'),(15,304,'pms_1490088818.29645082.jpg'),(16,305,'pms_1490088777.30992078.jpg'),(17,306,'pms_1490088819.36556534.jpg'),(18,306,'pms_1490088820.01089541.jpg'),(19,306,'pms_1490088820.62232838.jpg'),(20,306,'pms_1490088821.2098966.jpg'),(21,306,'pms_1490088821.85728284.jpg'),(22,307,'pms_1490088815.07513879.jpg'),(23,307,'pms_1490088826.58179796.jpg'),(24,307,'pms_1490088827.5169744.jpg'),(25,307,'pms_1490088828.50194555.jpg'),(26,307,'pms_1490088829.16783295.jpg'),(27,308,'pms_1488358345.90823746.jpg'),(28,308,'pms_1488358369.25872886.jpg'),(29,308,'pms_1488360522.32057307.jpg'),(30,309,'pms_1484116189.23328629.jpg'),(31,309,'pms_1484116664.81168932.jpg'),(32,309,'pms_1484116672.62637596.jpg'),(33,310,'mibook-jinse!600x600.webp.jpg'),(34,310,'mibook-yinse!600x600.webp.jpg'),(35,311,'mibook-jinse!600x600.webp.jpg'),(36,311,'mibook-yinse!600x600.webp.jpg'),(37,312,'mibook-jinse!600x600.webp.jpg'),(38,312,'mibook-yinse!600x600.webp.jpg'),(39,313,'T1cyJ_BTdv1RXrhCrK!600x600.jpg'),(40,313,'T1fNh_BXbv1RXrhCrK!600x600.webp.jpg'),(41,313,'T1SGx_BXdv1RXrhCrK!600x600.jpg'),(42,314,'48.webp.jpg'),(43,315,'dianshi4a-43!600x600.jpg'),(44,316,'dianshi4a-49!600x600.webp.jpg'),(45,317,'dianshi4a-55!600x600.jpg'),(46,318,'70.webp.jpg'),(47,319,'dianshi4a-43!600x600.jpg'),(48,320,'3S55.png'),(49,321,'hezi3s!600x600.png'),(50,322,'hezi3c!600x600.png'),(51,323,'hezimini!600x600.webp.jpg'),(52,323,'T1frKgBgDT1R4cSCrK!600x600.png'),(53,324,'T1AaJQBbZT1RXrhCrK!600x600.webp.jpg'),(54,325,'luyouqi-pro!600x600.jpg'),(55,326,'T1cqAgB7hv1RXrhCrK!600x600.webp.jpg'),(56,327,'pms_1470288129.01686992!600x600.png'),(57,328,'luyouqihd!600x600.jpg'),(58,329,'scale-new-old.webp.jpg'),(59,330,'carcorder-01.webp.jpg'),(60,331,'airpro!600x600.webp.jpg'),(61,332,'T1hMK_BjEv1RXrhCrK!600x600.webp.jpg'),(62,333,'20170323201752.png'),(63,334,'xueyaji12.png'),(64,335,'T1OVC_ByY_1RXrhCrK!600x600.jpg'),(65,336,'pms_1478678718.61531371!600x600.webp.jpg'),(66,337,'T1cod_B5Kv1RXrhCrK!482x482.webp.jpg'),(67,338,'T1cod_B5Kv1RXrhCrK!482x482.webp.jpg'),(68,339,'T1cod_B5Kv1RXrhCrK!482x482.webp.jpg'),(69,340,'T1cod_B5Kv1RXrhCrK!482x482.webp.jpg'),(70,341,'T1cod_B5Kv1RXrhCrK!482x482.webp.jpg'),(71,342,'T1cod_B5Kv1RXrhCrK!482x482.webp.jpg'),(72,343,'T1v7__BCCT1RXrhCrK!482x482.webp.jpg'),(73,344,'pms_1480385131.13482423!482x482.webp.jpg'),(74,345,'T1T2AjBybv1RXrhCrK!482x482.jpg'),(75,346,'pms_1465971824.88567693!482x482.jpg'),(76,347,'pms_1477020337.09961854!482x482.jpg'),(77,348,'pms_1464592109.19494450!482x482.jpg'),(78,349,'pms_1478607293.23866401!482x482.webp.jpg'),(79,350,'pms_1478607293.23866401!482x482.webp.jpg'),(80,352,'sound-st-01-02.png'),(81,353,'sslyyx15-1.webp.jpg'),(82,354,'sound-st-01-02.png'),(83,354,'sound-st-01-03.png'),(84,355,'T1q3JgByVv1RXrhCrK!482x482.jpg'),(85,356,'pms_1481098202.44798045!482x482.jpg'),(86,356,'pms_1481098212.65597197!482x482.webp.jpg'),(87,357,'T1yf__BjAT1RXrhCrK.webp.jpg'),(88,358,'pms_1469787920.69869416!482x482.webp.jpg'),(89,359,'pms_1469787833.63814353!482x482.jpg'),(90,360,'pms_1469787992.44385373!482x482.webp.jpg'),(91,361,'pms_1472177415.40899754!482x482.webp.jpg'),(92,362,'pms_1482136232.14896578!482x482.jpg'),(93,363,'pms_1482136277.01722149!482x482.jpg'),(94,364,'pms_1482136306.7944683!482x482.webp.jpg'),(95,365,'pms_1466159470.01381747!482x482.webp.jpg'),(96,366,'pms_1482136232.14896578!482x482.jpg'),(97,367,'pms_1482136277.01722149!482x482.jpg'),(98,368,'T1QGx_BbWv1RXrhCrK!482x482.jpg'),(99,369,'pms_1469787992.44385373!482x482.webp.jpg'),(100,370,'pms_1487742227.27595029!482x482.jpg'),(101,371,'T1y7JQBbCT1RXrhCrK!482x482.webp.jpg'),(102,372,'T1sRhTBsYT1RXrhCrK!482x482.webp.jpg'),(103,373,'T1sRhTBsYT1RXrhCrK!482x482.webp.jpg'),(104,374,'T1xxVTBghv1RXrhCrK!482x482.jpg'),(105,375,'pms_1486438894.70951367!482x482.jpg'),(106,376,'pms_1484034162.02747540!482x482.webp.jpg'),(107,377,'T1leDjBsET1RXrhCrK!482x482.jpg'),(108,378,'pms_1482221011.26064844!482x482.jpg'),(109,379,'pms_1482221011.26064844!482x482.jpg'),(110,380,'pms_1484034162.02747540!482x482.webp.jpg'),(111,381,'T142A_BXEv1RXrhCrK!482x482.webp.jpg'),(112,382,'shubiao-yinse!600x600.webp.jpg'),(113,382,'shubiao-yinse!600x600.webp.jpg'),(114,383,'T1IbxgBgLT1RXrhCrK!482x482.jpg'),(115,384,'T1xLxQBgVT1RXrhCrK!482x482.webp.jpg'),(116,385,'T142A_BXEv1RXrhCrK!482x482.webp.jpg'),(117,386,'sh-01.png'),(118,387,'zixingche-heise!600x600.jpg'),(119,387,'zixingche-baise!600x600.jpg'),(120,388,'pms_1481507050.2285518!600x600.jpg'),(121,388,'pms_1481507050.2285518!600x600.jpg'),(122,389,'pms_1481098212.65597197!482x482.webp.jpg'),(123,390,'pms_1474430362.70018703!482x482.webp.jpg'),(124,391,'jiatingyingyuan!600x600.jpg'),(125,392,'yinxiang-biaozhun.webp.jpg'),(126,392,'yinxiang-jinshu.jpg'),(127,393,'airpro!600x600.webp.jpg'),(128,394,'pmdetec!600x600.jpg'),(129,395,'T1PXhgBbdT1RXrhCrK!600x600.jpg'),(130,395,'T1CCA_B4Zv1RXrhCrK!600x600.webp.jpg');

/*Table structure for table `xm_member` */

DROP TABLE IF EXISTS `xm_member`;

CREATE TABLE `xm_member` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Pass` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Sex` varchar(1) DEFAULT NULL,
  `Face` varchar(20) DEFAULT NULL,
  `TureName` varchar(30) DEFAULT NULL,
  `Phone` varchar(11) DEFAULT NULL,
  `Emails` varchar(20) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `LastTime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xm_member` */

/*Table structure for table `xm_order` */

DROP TABLE IF EXISTS `xm_order`;

CREATE TABLE `xm_order` (
  `ORDER_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `ORDER_SN` varchar(100) NOT NULL COMMENT '订单号',
  `ORDER_DATA` datetime DEFAULT NULL COMMENT '订单添加日期',
  `GOODSID` bigint(20) unsigned NOT NULL COMMENT '商品ID',
  `PRO_NAME` varchar(50) NOT NULL COMMENT '商品名称',
  `PRO_DESC` varchar(200) NOT NULL COMMENT '商品描述',
  `PRO_COLOR` varchar(20) NOT NULL COMMENT '商品颜色',
  `PRO_NUM` int(10) unsigned NOT NULL COMMENT '商品数量',
  `PRO_PRICE` double(9,2) unsigned NOT NULL COMMENT '商品单价',
  `TAL_PRICE` double(9,2) unsigned NOT NULL COMMENT '订单总计',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8 COMMENT='订单明细表';

/*Data for the table `xm_order` */

insert  into `xm_order`(`ORDER_ID`,`ORDER_SN`,`ORDER_DATA`,`GOODSID`,`PRO_NAME`,`PRO_DESC`,`PRO_COLOR`,`PRO_NUM`,`PRO_PRICE`,`TAL_PRICE`) values (1002,'1130201703161603979','2017-03-16 16:54:38',1,'bbb','bb','bb',33,23.00,1.00),(1003,'3555201703161603892','2017-03-16 16:58:51',2,'1','1','1',11,1.00,1.00);

/*Table structure for table `xm_recommend` */

DROP TABLE IF EXISTS `xm_recommend`;

CREATE TABLE `xm_recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `GoodsID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xm_recommend` */

/*Table structure for table `xm_star` */

DROP TABLE IF EXISTS `xm_star`;

CREATE TABLE `xm_star` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `GoodsID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `xm_star` */

insert  into `xm_star`(`id`,`GoodsID`) values (6,386),(7,387),(8,388),(9,389),(10,390),(11,391),(12,392),(13,393),(14,394),(15,395);

/*Table structure for table `xm_user` */

DROP TABLE IF EXISTS `xm_user`;

CREATE TABLE `xm_user` (
  `u_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `u_name` varchar(10) NOT NULL,
  `u_pass` varchar(50) NOT NULL,
  `u_email` varchar(20) NOT NULL,
  `u_phone` bigint(20) NOT NULL,
  `U_tname` varchar(20) NOT NULL,
  `u_sex` varchar(2) NOT NULL,
  `u_address` varchar(100) NOT NULL,
  `u_face` varchar(50) NOT NULL,
  `u_time` datetime DEFAULT NULL,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `u_name` (`u_name`),
  UNIQUE KEY `u_email` (`u_email`),
  UNIQUE KEY `u_phone` (`u_phone`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8;

/*Data for the table `xm_user` */

insert  into `xm_user`(`u_id`,`u_name`,`u_pass`,`u_email`,`u_phone`,`U_tname`,`u_sex`,`u_address`,`u_face`,`u_time`) values (1001,'张三','E10ADC3949BA59ABBE56E057F20F883E','qq@qq.com',123456789,'蛋蛋','女','河南家里蹲','01','2017-03-15 16:02:16'),(1003,'ll','BBB8AAE57C104CDA40C93843AD5E6DB8','ll@qq.com',79674646348,'李四','男','郑州','02','2017-03-16 10:14:13'),(1004,'lj','BF02BEF6435106206B9749C9DDEE98A8','11@qq.com',1213212,'艾利欧','女','北京','01','2017-03-24 10:07:15'),(1005,'ko','343B1C4A3EA721B2D640FC8700DB0F36','23@qq.com',234243,'打几把','女','干活','02','2017-03-23 21:03:27');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
