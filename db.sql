/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - nongyeshebeizulin
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`nongyeshebeizulin` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `nongyeshebeizulin`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,3,'收货人1','17703786901','地址1',1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(2,3,'收货人2','17703786902','地址2',1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(3,2,'收货人3','17703786903','地址3',1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(4,3,'收货人4','17703786904','地址4',1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(5,2,'收货人5','17703786905','地址5',1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(6,2,'收货人6','17703786906','地址6',1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(7,2,'收货人7','17703786907','地址7',1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(8,1,'收货人8','17703786908','地址8',1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(9,3,'收货人9','17703786909','地址9',1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(10,3,'收货人10','17703786910','地址10',1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(11,3,'收货人11','17703786911','地址11',1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(12,3,'收货人12','17703786912','地址12',1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(13,3,'收货人13','17703786913','地址13',1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(14,2,'收货人14','17703786914','地址14',1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(15,4,'张三','17788888888','地址111',2,'2023-03-24 13:04:19','2023-03-24 13:04:18','2023-03-24 13:04:19');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图111','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-24 10:47:58'),(2,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-24 10:47:58'),(3,'forum_types','帖子类型',1,'帖子类型1',NULL,NULL,'2023-03-24 10:47:58'),(4,'forum_types','帖子类型',2,'帖子类型2',NULL,NULL,'2023-03-24 10:47:58'),(5,'forum_types','帖子类型',3,'帖子类型3',NULL,NULL,'2023-03-24 10:47:58'),(6,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-24 10:47:58'),(7,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-24 10:47:58'),(8,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-24 10:47:58'),(9,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-24 10:47:58'),(10,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-03-24 10:47:58'),(11,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-03-24 10:47:58'),(12,'shebei_types','设备类型',1,'设备类型1',NULL,NULL,'2023-03-24 10:47:58'),(13,'shebei_types','设备类型',2,'设备类型2',NULL,NULL,'2023-03-24 10:47:58'),(14,'shebei_types','设备类型',3,'设备类型3',NULL,NULL,'2023-03-24 10:47:58'),(15,'shebei_types','设备类型',4,'设备类型4',NULL,NULL,'2023-03-24 10:47:58'),(16,'shebei_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-24 10:47:58'),(17,'shebei_order_types','订单类型',101,'已申请租赁',NULL,NULL,'2023-03-24 10:47:58'),(18,'shebei_order_types','订单类型',102,'已取消申请',NULL,NULL,'2023-03-24 10:47:58'),(19,'shebei_order_types','订单类型',103,'已同意租赁',NULL,NULL,'2023-03-24 10:47:58'),(20,'shebei_order_types','订单类型',104,'已收货',NULL,NULL,'2023-03-24 10:47:58'),(21,'shebei_order_types','订单类型',105,'已评价',NULL,NULL,'2023-03-24 10:47:58'),(22,'shebei_order_types','订单类型',106,'已拒绝租赁',NULL,NULL,'2023-03-24 10:47:58'),(23,'shebei_order_types','订单类型',107,'已归还',NULL,NULL,'2023-03-24 10:47:58'),(24,'shebei_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-03-24 10:47:58'),(25,'shebei_order_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-03-24 10:47:58'),(26,'shebei_order_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-03-24 10:47:58'),(27,'shebei_order_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-03-24 10:47:58'),(28,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-03-24 10:47:58'),(29,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-03-24 10:47:58'),(30,'shebei_types','设备类型',5,'设备类型5',NULL,'','2023-03-24 13:07:22');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,'发布内容1',217,3,1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(2,'帖子标题2',1,NULL,'发布内容2',61,3,1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(3,'帖子标题3',3,NULL,'发布内容3',138,1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(4,'帖子标题4',3,NULL,'发布内容4',72,1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(5,'帖子标题5',1,NULL,'发布内容5',254,2,1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(6,'帖子标题6',3,NULL,'发布内容6',484,1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(7,'帖子标题7',1,NULL,'发布内容7',400,2,1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(8,'帖子标题8',1,NULL,'发布内容8',468,2,1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(9,'帖子标题9',1,NULL,'发布内容9',469,2,1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(10,'帖子标题10',2,NULL,'发布内容10',278,2,1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(11,'帖子标题11',3,NULL,'发布内容11',293,2,1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(12,'帖子标题12',3,NULL,'发布内容12',445,1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(13,'帖子标题13',2,NULL,'发布内容13',203,1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(14,'帖子标题14',3,NULL,'发布内容14',39,1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08','2023-03-24 10:48:08'),(15,'帖子111',4,NULL,'<p>过大个搭嘎第三个</p>',NULL,3,1,'2023-03-24 13:03:20',NULL,'2023-03-24 13:03:20'),(16,NULL,4,NULL,'和京津冀',15,NULL,2,'2023-03-24 13:03:26',NULL,'2023-03-24 13:03:26'),(17,NULL,NULL,1,'9999',15,NULL,2,'2023-03-24 13:07:31',NULL,'2023-03-24 13:07:31');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-03-24 10:48:08','公告详情1','2023-03-24 10:48:08'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-03-24 10:48:08','公告详情2','2023-03-24 10:48:08'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-03-24 10:48:08','公告详情3','2023-03-24 10:48:08'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-03-24 10:48:08','公告详情4','2023-03-24 10:48:08'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-03-24 10:48:08','公告详情5','2023-03-24 10:48:08'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-03-24 10:48:08','公告详情6','2023-03-24 10:48:08'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-03-24 10:48:08','公告详情7','2023-03-24 10:48:08'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-03-24 10:48:08','公告详情8','2023-03-24 10:48:08'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-03-24 10:48:08','公告详情9','2023-03-24 10:48:08'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-03-24 10:48:08','公告详情10','2023-03-24 10:48:08'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-03-24 10:48:08','公告详情11','2023-03-24 10:48:08'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-03-24 10:48:08','公告详情12','2023-03-24 10:48:08'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-03-24 10:48:08','公告详情13','2023-03-24 10:48:08'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-03-24 10:48:08','公告详情14','2023-03-24 10:48:08');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='留言反馈';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,3,'留言标题1','留言内容1','2023-03-24 10:48:08','回复信息1','2023-03-24 10:48:08','2023-03-24 10:48:08'),(2,2,'留言标题2','留言内容2','2023-03-24 10:48:08','回复信息2','2023-03-24 10:48:08','2023-03-24 10:48:08'),(3,3,'留言标题3','留言内容3','2023-03-24 10:48:08','回复信息3','2023-03-24 10:48:08','2023-03-24 10:48:08'),(4,2,'留言标题4','留言内容4','2023-03-24 10:48:08','回复信息4','2023-03-24 10:48:08','2023-03-24 10:48:08'),(5,3,'留言标题5','留言内容5','2023-03-24 10:48:08','回复信息5','2023-03-24 10:48:08','2023-03-24 10:48:08'),(6,1,'留言标题6','留言内容6','2023-03-24 10:48:08','回复信息6','2023-03-24 10:48:08','2023-03-24 10:48:08'),(7,1,'留言标题7','留言内容7','2023-03-24 10:48:08','回复信息7','2023-03-24 10:48:08','2023-03-24 10:48:08'),(8,3,'留言标题8','留言内容8','2023-03-24 10:48:08','回复信息8','2023-03-24 10:48:08','2023-03-24 10:48:08'),(9,2,'留言标题9','留言内容9','2023-03-24 10:48:08','回复信息9','2023-03-24 10:48:08','2023-03-24 10:48:08'),(10,3,'留言标题10','留言内容10','2023-03-24 10:48:08','回复信息10','2023-03-24 10:48:08','2023-03-24 10:48:08'),(11,1,'留言标题11','留言内容11','2023-03-24 10:48:08','回复信息11','2023-03-24 10:48:08','2023-03-24 10:48:08'),(12,2,'留言标题12','留言内容12','2023-03-24 10:48:08','回复信息12','2023-03-24 10:48:08','2023-03-24 10:48:08'),(13,3,'留言标题13','留言内容13','2023-03-24 10:48:08','回复信息13','2023-03-24 10:48:08','2023-03-24 10:48:08'),(14,1,'留言标题14','留言内容14','2023-03-24 10:48:08','回复信息14','2023-03-24 10:48:08','2023-03-24 10:48:08'),(15,4,'标题111','内容1111','2023-03-24 13:03:44','后悔何及','2023-03-24 13:07:43','2023-03-24 13:03:44');

/*Table structure for table `shebei` */

DROP TABLE IF EXISTS `shebei`;

CREATE TABLE `shebei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shebei_name` varchar(200) DEFAULT NULL COMMENT '设备名称  Search111 ',
  `shebei_uuid_number` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebei_photo` varchar(200) DEFAULT NULL COMMENT '设备照片',
  `shebei_types` int(11) DEFAULT NULL COMMENT '设备类型 Search111',
  `shebei_kucun_number` int(11) DEFAULT NULL COMMENT '设备库存',
  `shebei_old_money` decimal(10,2) DEFAULT NULL COMMENT '租赁原价/天',
  `shebei_new_money` decimal(10,2) DEFAULT NULL COMMENT '租赁现价/天 ',
  `shebei_clicknum` int(11) DEFAULT NULL COMMENT '设备热度',
  `shebei_content` longtext COMMENT '设备介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shebei_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='设备';

/*Data for the table `shebei` */

insert  into `shebei`(`id`,`shebei_name`,`shebei_uuid_number`,`shebei_photo`,`shebei_types`,`shebei_kucun_number`,`shebei_old_money`,`shebei_new_money`,`shebei_clicknum`,`shebei_content`,`shangxia_types`,`shebei_delete`,`insert_time`,`create_time`) values (1,'设备名称1','1679626088498','upload/shebei1.jpg',3,101,'722.27','105.93',365,'设备介绍1',1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(2,'设备名称2','1679626088519','upload/shebei2.jpg',4,102,'984.48','220.85',85,'设备介绍2',1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(3,'设备名称3','1679626088505','upload/shebei3.jpg',1,103,'694.28','50.20',365,'设备介绍3',1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(4,'设备名称4','1679626088468','upload/shebei4.jpg',4,104,'845.43','432.99',347,'设备介绍4',1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(5,'设备名称5','1679626088514','upload/shebei5.jpg',1,101,'557.79','361.84',362,'设备介绍5',1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(6,'设备名称6','1679626088528','upload/shebei6.jpg',1,106,'855.18','452.99',139,'设备介绍6',1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(7,'设备名称7','1679626088496','upload/shebei7.jpg',3,106,'935.68','260.58',354,'设备介绍7',1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(8,'设备名称8','1679626088518','upload/shebei8.jpg',3,108,'833.86','490.45',41,'设备介绍8',1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(9,'设备名称9','1679626088508','upload/shebei9.jpg',3,109,'936.37','312.13',39,'设备介绍9',1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(10,'设备名称10','1679626088526','upload/shebei10.jpg',4,1010,'991.72','317.88',114,'设备介绍10',1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(11,'设备名称11','1679626088510','upload/shebei11.jpg',4,1011,'937.03','224.65',256,'设备介绍11',1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(12,'设备名称12','1679626088530','upload/shebei12.jpg',4,1012,'967.49','125.42',72,'设备介绍12',1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(13,'设备名称13','1679626088474','upload/shebei13.jpg',1,1013,'801.10','145.28',176,'设备介绍13',1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(14,'设备名称14','1679626088466','upload/shebei14.jpg',2,1014,'516.53','78.72',168,'设备介绍14',1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08');

/*Table structure for table `shebei_collection` */

DROP TABLE IF EXISTS `shebei_collection`;

CREATE TABLE `shebei_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shebei_id` int(11) DEFAULT NULL COMMENT '设备',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shebei_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='设备收藏';

/*Data for the table `shebei_collection` */

insert  into `shebei_collection`(`id`,`shebei_id`,`yonghu_id`,`shebei_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(2,2,2,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(3,3,3,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(4,4,2,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(5,5,1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(6,6,3,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(7,7,3,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(8,8,3,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(9,9,2,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(10,10,3,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(11,11,3,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(12,12,3,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(13,13,2,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(14,14,1,1,'2023-03-24 10:48:08','2023-03-24 10:48:08'),(15,5,4,1,'2023-03-24 13:06:59','2023-03-24 13:06:59'),(16,6,4,1,'2023-03-24 13:07:01','2023-03-24 13:07:01'),(17,13,4,1,'2023-03-24 13:07:04','2023-03-24 13:07:04');

/*Table structure for table `shebei_commentback` */

DROP TABLE IF EXISTS `shebei_commentback`;

CREATE TABLE `shebei_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shebei_id` int(11) DEFAULT NULL COMMENT '设备',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shebei_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='设备评价';

/*Data for the table `shebei_commentback` */

insert  into `shebei_commentback`(`id`,`shebei_id`,`yonghu_id`,`shebei_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2023-03-24 10:48:08','回复信息1','2023-03-24 10:48:08','2023-03-24 10:48:08'),(2,2,1,'评价内容2','2023-03-24 10:48:08','回复信息2','2023-03-24 10:48:08','2023-03-24 10:48:08'),(3,3,2,'评价内容3','2023-03-24 10:48:08','回复信息3','2023-03-24 10:48:08','2023-03-24 10:48:08'),(4,4,3,'评价内容4','2023-03-24 10:48:08','回复信息4','2023-03-24 10:48:08','2023-03-24 10:48:08'),(5,5,3,'评价内容5','2023-03-24 10:48:08','回复信息5','2023-03-24 10:48:08','2023-03-24 10:48:08'),(6,6,2,'评价内容6','2023-03-24 10:48:08','回复信息6','2023-03-24 10:48:08','2023-03-24 10:48:08'),(7,7,3,'评价内容7','2023-03-24 10:48:08','回复信息7','2023-03-24 10:48:08','2023-03-24 10:48:08'),(8,8,3,'评价内容8','2023-03-24 10:48:08','回复信息8','2023-03-24 10:48:08','2023-03-24 10:48:08'),(9,9,1,'评价内容9','2023-03-24 10:48:08','回复信息9','2023-03-24 10:48:08','2023-03-24 10:48:08'),(10,10,3,'评价内容10','2023-03-24 10:48:08','回复信息10','2023-03-24 10:48:08','2023-03-24 10:48:08'),(11,11,3,'评价内容11','2023-03-24 10:48:08','回复信息11','2023-03-24 10:48:08','2023-03-24 10:48:08'),(12,12,1,'评价内容12','2023-03-24 10:48:08','回复信息12','2023-03-24 10:48:08','2023-03-24 10:48:08'),(13,13,3,'评价内容13','2023-03-24 10:48:08','回复信息13','2023-03-24 10:48:08','2023-03-24 10:48:08'),(14,14,3,'评价内容14','2023-03-24 10:48:08','回复信息14','2023-03-24 10:48:08','2023-03-24 10:48:08'),(15,5,1,'哈哈哈哈','2023-03-24 11:28:39',NULL,NULL,'2023-03-24 11:28:39'),(16,5,4,'很好的设备','2023-03-24 13:06:37',NULL,NULL,'2023-03-24 13:06:37');

/*Table structure for table `shebei_order` */

DROP TABLE IF EXISTS `shebei_order`;

CREATE TABLE `shebei_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shebei_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shebei_id` int(11) DEFAULT NULL COMMENT '设备',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '租赁天数',
  `shebei_order_time` timestamp NULL DEFAULT NULL COMMENT '租赁日期',
  `shebei_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shebei_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `shebei_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `shebei_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shebei_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `shebei_order_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `shebei_order_yesno_text` longtext COMMENT '审核回复',
  `shebei_order_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='设备订单';

/*Data for the table `shebei_order` */

insert  into `shebei_order`(`id`,`shebei_order_uuid_number`,`address_id`,`shebei_id`,`yonghu_id`,`buy_number`,`shebei_order_time`,`shebei_order_true_price`,`shebei_order_courier_name`,`shebei_order_courier_number`,`shebei_order_types`,`shebei_order_payment_types`,`insert_time`,`shebei_order_yesno_types`,`shebei_order_yesno_text`,`shebei_order_shenhe_time`,`create_time`) values (1,'1679626242155',8,5,1,3,'2023-03-24 10:50:30','1085.52',NULL,NULL,102,1,'2023-03-24 10:50:42',NULL,NULL,NULL,'2023-03-24 10:50:42'),(2,'1679628371577',8,5,1,3,'2023-03-24 11:26:06','361.84','顺丰','54351531',107,1,'2023-03-24 11:26:12',2,'个地方高大上','2023-03-24 11:28:00','2023-03-24 11:26:12'),(3,'1679634282808',15,5,4,3,'2023-03-25 13:04:37','361.84',NULL,NULL,102,1,'2023-03-24 13:04:43',NULL,NULL,NULL,'2023-03-24 13:04:43'),(4,'1679634334115',15,7,4,6,'2023-03-24 13:05:32','260.58',NULL,NULL,101,1,'2023-03-24 13:05:34',1,NULL,NULL,'2023-03-24 13:05:34'),(5,'1679634364069',15,5,4,7,'2023-03-24 13:06:01','361.84','申通','53454',107,1,'2023-03-24 13:06:04',2,'同意租赁','2023-03-24 13:06:23','2023-03-24 13:06:04');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','07l1xq3gag7uea3c961twbd6st9h7cjp','2023-03-24 10:50:16','2023-03-24 14:02:14'),(2,1,'admin','users','管理员','c4o55g9w81rl9uwpcajx9bcar1706at3','2023-03-24 10:51:15','2023-03-24 14:10:23'),(3,4,'a5','yonghu','用户','xpp38k9wqvry3xyo75m1npyf2kmpzhef','2023-03-24 13:02:59','2023-03-24 14:02:59');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-24 10:47:58');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','100505.10','2023-03-24 10:48:08'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','974.98','2023-03-24 10:48:08'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','364.04','2023-03-24 10:48:08'),(4,'a5','123456','张5','17788888888','444555666699999999','upload/1679634211820.jpg',2,'5@qq.com','100100.26','2023-03-24 13:02:54');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
