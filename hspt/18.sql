/*
SQLyog Ultimate v8.32 
MySQL - 5.0.16 : Database - jdyy
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jdyy` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jdyy`;

/*Table structure for table `assetstransferstatistics` */

DROP TABLE IF EXISTS `assetstransferstatistics`;

CREATE TABLE `assetstransferstatistics` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '序号（自增长）',
  `deviceCoding` varchar(20) default NULL COMMENT '设备编号',
  `deviceName` varchar(20) default NULL COMMENT '设备名称',
  `Specification` varchar(20) default NULL COMMENT '规格型号',
  `Number` int(11) default NULL COMMENT '数量',
  `price` double default NULL COMMENT '单价',
  `sum` double default NULL COMMENT '合计金额',
  `purchaseDate` date default NULL COMMENT '购置日期',
  `elapsedLife` varchar(15) default NULL COMMENT '已用年限',
  `depHaBeMade` varchar(15) default NULL COMMENT '已提折旧',
  `accountCategory` varchar(15) default NULL COMMENT '核算类别',
  `transferDepartment` varchar(15) default NULL COMMENT '调出科室',
  `transferToDepartment` varchar(15) default NULL COMMENT '调入科室',
  `applyTime` date default NULL COMMENT '填报时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `assetstransferstatistics` */

LOCK TABLES `assetstransferstatistics` WRITE;

UNLOCK TABLES;

/*Table structure for table `attendancerecords` */

DROP TABLE IF EXISTS `attendancerecords`;

CREATE TABLE `attendancerecords` (
  `id` int(11) default NULL,
  `time` date default NULL,
  `meetingName` varchar(40) default NULL,
  `place` varchar(20) default NULL,
  `data` varchar(40) default NULL,
  `pPT` varchar(100) default NULL,
  `vedio` varchar(100) default NULL,
  `recording` varchar(100) default NULL,
  `schedule` varchar(100) default NULL,
  KEY `FK_attendancerecords` (`id`),
  CONSTRAINT `FK_attendancerecords` FOREIGN KEY (`id`) REFERENCES `information` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `attendancerecords` */

LOCK TABLES `attendancerecords` WRITE;

insert  into `attendancerecords`(`id`,`time`,`meetingName`,`place`,`data`,`pPT`,`vedio`,`recording`,`schedule`) values (10001,'2018-03-18','教学大会','吉大一院','files\\1521350233263JVM-1.docx','files\\1521350240086win7电脑虚拟蓝牙串口.docx',NULL,NULL,'1天');

UNLOCK TABLES;

/*Table structure for table `award` */

DROP TABLE IF EXISTS `award`;

CREATE TABLE `award` (
  `id` int(11) default NULL,
  `type` varchar(20) default NULL,
  `name` varchar(20) default NULL,
  `grade` varchar(20) default NULL,
  `rank` varchar(20) default NULL,
  `time` date default NULL,
  KEY `FK_award` (`id`),
  CONSTRAINT `FK_award` FOREIGN KEY (`id`) REFERENCES `information` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `award` */

LOCK TABLES `award` WRITE;

insert  into `award`(`id`,`type`,`name`,`grade`,`rank`,`time`) values (10001,'大创','大创','国家级','一等奖','2018-03-18');

UNLOCK TABLES;

/*Table structure for table `baseteach` */

DROP TABLE IF EXISTS `baseteach`;

CREATE TABLE `baseteach` (
  `id` int(11) default NULL,
  `year` varchar(10) default NULL,
  `tourType` varchar(20) default NULL,
  `region` varchar(20) default NULL,
  `time` date default NULL,
  `place` varchar(30) default NULL,
  `partiNumber` int(10) default NULL,
  `courseSave` varchar(100) default NULL,
  `photoSave` varchar(40) default NULL,
  KEY `FK_baseteach` (`id`),
  CONSTRAINT `FK_baseteach` FOREIGN KEY (`id`) REFERENCES `information` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `baseteach` */

LOCK TABLES `baseteach` WRITE;

insert  into `baseteach`(`id`,`year`,`tourType`,`region`,`time`,`place`,`partiNumber`,`courseSave`,`photoSave`) values (10001,'2018','继教项目','长春','2018-03-18','吉大一院',2,'files\\1521349992103功能模块图.docx','files\\15213499964901.jpg');

UNLOCK TABLES;

/*Table structure for table `basice` */

DROP TABLE IF EXISTS `basice`;

CREATE TABLE `basice` (
  `studyFrom` varchar(20) default NULL,
  `name` varchar(20) default NULL,
  `company` varchar(40) default NULL,
  `department` varchar(20) default NULL,
  `post` varchar(30) default NULL,
  `phone` varchar(20) default NULL,
  `studyTime` date default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `basice` */

LOCK TABLES `basice` WRITE;

insert  into `basice`(`studyFrom`,`name`,`company`,`department`,`post`,`phone`,`studyTime`) values ('医务部进修','张三','吉林大学','506','管理员','17678341668','2018-03-15');

UNLOCK TABLES;

/*Table structure for table `card` */

DROP TABLE IF EXISTS `card`;

CREATE TABLE `card` (
  `id` int(20) default NULL,
  `cardName` varchar(30) default NULL,
  `major` varchar(20) default NULL,
  `number` int(20) default NULL,
  `photo` varchar(100) default NULL,
  `startTime` date default NULL,
  `ranges` varchar(30) default NULL,
  `stopTime` date default NULL,
  `gId` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`gId`),
  KEY `FK_card` (`id`),
  CONSTRAINT `FK_card` FOREIGN KEY (`id`) REFERENCES `information` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `card` */

LOCK TABLES `card` WRITE;

insert  into `card`(`id`,`cardName`,`major`,`number`,`photo`,`startTime`,`ranges`,`stopTime`,`gId`) values (10001,'1','生殖学',11000,'files\\15213485893021.jpg','2018-03-18','生殖科','2018-03-18',1);

UNLOCK TABLES;

/*Table structure for table `cardname` */

DROP TABLE IF EXISTS `cardname`;

CREATE TABLE `cardname` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `cardname` */

LOCK TABLES `cardname` WRITE;

insert  into `cardname`(`id`,`name`) values (1,'证书1'),(2,'证书2'),(3,'证书3');

UNLOCK TABLES;

/*Table structure for table `computer` */

DROP TABLE IF EXISTS `computer`;

CREATE TABLE `computer` (
  `name` varchar(10) default NULL,
  `id` bigint(20) NOT NULL auto_increment,
  `price` double default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `computer` */

LOCK TABLES `computer` WRITE;

insert  into `computer`(`name`,`id`,`price`) values ('大',1,123),('东方飒飒',2,12312);

UNLOCK TABLES;

/*Table structure for table `device` */

DROP TABLE IF EXISTS `device`;

CREATE TABLE `device` (
  `sbid` varchar(20) default NULL COMMENT '设备编号',
  `name` varchar(30) default NULL COMMENT '设备名字',
  `zname` varchar(40) default NULL COMMENT '组id',
  `brand` varchar(20) default NULL COMMENT '设备牌子',
  `model` varchar(10) default NULL COMMENT '设备规格',
  `number` int(11) default NULL COMMENT '数量',
  `position` varchar(30) default NULL COMMENT '位置',
  `state` varchar(10) default NULL COMMENT '状态',
  `cname` varchar(50) default NULL COMMENT '设备类别id',
  `text` varchar(50) default NULL COMMENT '备注',
  `id` bigint(20) NOT NULL auto_increment COMMENT '序号（自增长）',
  `cardName` varchar(255) default NULL COMMENT '图片名字',
  PRIMARY KEY  (`id`),
  KEY `index_name` (`sbid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `device` */

LOCK TABLES `device` WRITE;

insert  into `device`(`sbid`,`name`,`zname`,`brand`,`model`,`number`,`position`,`state`,`cname`,`text`,`id`,`cardName`) values ('10001','电脑','生殖妇科组','联想','4000',10,'办公室','完好','电脑','电脑',7,'images\\15213415847211.jpg');

UNLOCK TABLES;

/*Table structure for table `deviceaccessories` */

DROP TABLE IF EXISTS `deviceaccessories`;

CREATE TABLE `deviceaccessories` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '序号(自增长）',
  `saveTime` date default NULL COMMENT '存入时间',
  `deviceCoding` varchar(20) default NULL COMMENT '设备编码',
  `name` varchar(20) default NULL COMMENT '配件名称',
  `number` int(11) default NULL COMMENT '数量',
  `place` varchar(20) default NULL COMMENT '放置位置',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `deviceaccessories` */

LOCK TABLES `deviceaccessories` WRITE;

insert  into `deviceaccessories`(`id`,`saveTime`,`deviceCoding`,`name`,`number`,`place`) values (3,'2017-12-28','10003','配件1',1,'213');

UNLOCK TABLES;

/*Table structure for table `deviceaccessoriesnotes` */

DROP TABLE IF EXISTS `deviceaccessoriesnotes`;

CREATE TABLE `deviceaccessoriesnotes` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '序号（自增长）',
  `pid` bigint(20) default NULL COMMENT '设备配件表id',
  `time` date default NULL COMMENT '使用时间（记录）',
  `user` varchar(10) default NULL COMMENT '使用者（记录）',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `deviceaccessoriesnotes` */

LOCK TABLES `deviceaccessoriesnotes` WRITE;

insert  into `deviceaccessoriesnotes`(`id`,`pid`,`time`,`user`) values (2,3,'2018-01-20','张三');

UNLOCK TABLES;

/*Table structure for table `deviceapply` */

DROP TABLE IF EXISTS `deviceapply`;

CREATE TABLE `deviceapply` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '序号（自增长）',
  `name` varchar(30) default NULL COMMENT '设备名称',
  `number` double default NULL COMMENT '数量',
  `arriveTime` date default NULL COMMENT '申请日期',
  `applicant` varchar(20) default NULL COMMENT '申请人',
  `dId` int(11) default NULL COMMENT '类别',
  `ifYes` varchar(20) default NULL COMMENT '是否审批',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `deviceapply` */

LOCK TABLES `deviceapply` WRITE;

insert  into `deviceapply`(`id`,`name`,`number`,`arriveTime`,`applicant`,`dId`,`ifYes`) values (5,'华硕123',1,'2018-01-20','撒地方',2,'是'),(7,'电脑',10,'2018-03-18','张三',6,'是'),(8,'笔记本',1,'2018-03-18','王五',6,'否');

UNLOCK TABLES;

/*Table structure for table `devicecalibration` */

DROP TABLE IF EXISTS `devicecalibration`;

CREATE TABLE `devicecalibration` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '序号（自增长）',
  `model` varchar(20) default NULL COMMENT '规格型号',
  `exportid` varchar(20) default NULL COMMENT '资产编号',
  `count` varchar(40) default NULL COMMENT '计量情况',
  `text` varchar(64) default NULL COMMENT '备注',
  `time1` date default NULL COMMENT '校准到期时间（一年）',
  `time2` date default NULL COMMENT '当前校准时间',
  `fujian` varchar(255) default NULL COMMENT '附件地址',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `devicecalibration` */

LOCK TABLES `devicecalibration` WRITE;

insert  into `devicecalibration`(`id`,`model`,`exportid`,`count`,`text`,`time1`,`time2`,`fujian`) values (8,'666','10006','撒地方','十大','2018-12-28','2017-12-28','images\\15142770038891234.jpg'),(9,'666','10001','是打发','阿哥','2018-12-27','2017-12-27','images\\1514381649397timg1.jpg'),(10,'666','10003','是打发','阿哥','2018-12-26','2017-12-26','images\\1514381649397timg1.jpg'),(11,'666','10005','是打发','阿哥','2019-12-27','2018-12-27','images\\1514381649397timg1.jpg'),(12,'666','10009','是打发','阿哥','2017-12-27','2016-12-27','images\\1514381649397timg1.jpg'),(13,'232','10001','dsa','sad','2017-12-24','2016-12-27','images\\1514381649397timg1.jpg'),(15,'666','10001','是打发','123','2019-01-24','2018-01-24','images\\1516758361389timg1.jpg'),(16,'撒旦','1002','1','一年年','2019-03-18','2018-03-18',''),(17,'6665','10004','1','一年年','2019-03-18','2018-03-18','');

UNLOCK TABLES;

/*Table structure for table `devicecat` */

DROP TABLE IF EXISTS `devicecat`;

CREATE TABLE `devicecat` (
  `id` int(11) NOT NULL auto_increment COMMENT '设备id(自增长）',
  `type` varchar(20) default NULL COMMENT '类别名',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `devicecat` */

LOCK TABLES `devicecat` WRITE;

insert  into `devicecat`(`id`,`type`) values (1,'类1'),(2,'类2'),(3,'类3'),(4,'类4'),(5,'类5'),(6,'电脑');

UNLOCK TABLES;

/*Table structure for table `devicemaintenance` */

DROP TABLE IF EXISTS `devicemaintenance`;

CREATE TABLE `devicemaintenance` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '序号（自增长）',
  `mid` varchar(20) default NULL COMMENT '设备资产编码',
  `model` varchar(20) default NULL COMMENT '设备型号',
  `time1` date default NULL COMMENT '入保时间',
  `time2` date default NULL COMMENT '到保时间',
  `time3` int(11) default NULL COMMENT '入保几年',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `devicemaintenance` */

LOCK TABLES `devicemaintenance` WRITE;

insert  into `devicemaintenance`(`id`,`mid`,`model`,`time1`,`time2`,`time3`) values (3,'10001','666','2017-12-28','2020-12-28',3),(6,'10003','666','2017-12-28','2020-12-28',3),(8,'10009','666','2017-12-28','2018-12-28',1),(9,'10001','666','2018-01-20','2021-01-20',3),(10,'10001','666','2018-01-20','2021-01-20',3),(11,'10004','6665','2018-03-18','2019-03-18',1),(12,'1002','撒旦','2018-03-18','2019-03-18',1);

UNLOCK TABLES;

/*Table structure for table `devicerecivier` */

DROP TABLE IF EXISTS `devicerecivier`;

CREATE TABLE `devicerecivier` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '序号（自增长）',
  `date` date default NULL COMMENT '日期',
  `receiver` varchar(10) default NULL COMMENT '接收人',
  `deviceName` varchar(10) default NULL COMMENT '设备名称',
  `deviceCoding` varchar(20) default NULL COMMENT '设备编号',
  `number` int(11) default NULL COMMENT '数量',
  `tempSavePolice` varchar(20) default NULL COMMENT '临时存放地点',
  `nowRemain` bigint(20) default NULL COMMENT '目前剩余',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `devicerecivier` */

LOCK TABLES `devicerecivier` WRITE;

UNLOCK TABLES;

/*Table structure for table `devicerepair` */

DROP TABLE IF EXISTS `devicerepair`;

CREATE TABLE `devicerepair` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '序号（自增长）',
  `applyTime` date default NULL COMMENT '申请时间',
  `applicant` varchar(20) default NULL COMMENT '申请人',
  `assetCoding` varchar(20) default NULL COMMENT '资产编码',
  `deviceName` varchar(10) default NULL COMMENT '设备名称',
  `deviceModel` varchar(20) default NULL COMMENT '设备型号',
  `repairMan` varchar(10) default NULL COMMENT '维修人',
  `phone` varchar(11) default NULL COMMENT '联系电话',
  `warrantyTime` int(11) default NULL COMMENT '保修时间',
  `timeOfReturn` date default NULL COMMENT '返回时间',
  `returnStatus` varchar(10) default NULL COMMENT '返回状态',
  `Remarks` varchar(60) default NULL COMMENT '备注',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `devicerepair` */

LOCK TABLES `devicerepair` WRITE;

insert  into `devicerepair`(`id`,`applyTime`,`applicant`,`assetCoding`,`deviceName`,`deviceModel`,`repairMan`,`phone`,`warrantyTime`,`timeOfReturn`,`returnStatus`,`Remarks`) values (8,'2018-01-24','老哥','10001','111','666','老铁','18843107921',3,'2018-01-24','完好','啊'),(9,'2018-03-18','张三','10001','33','666','李四','17678341668',1,NULL,NULL,'设备维修');

UNLOCK TABLES;

/*Table structure for table `devicerepairnotes` */

DROP TABLE IF EXISTS `devicerepairnotes`;

CREATE TABLE `devicerepairnotes` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '序号(自增长）',
  `eid` varchar(20) default NULL COMMENT '设备编号',
  `person` varchar(20) default NULL COMMENT '保修人',
  `time` date default NULL COMMENT '报修时间',
  `repairTime` date default NULL COMMENT '修复时间',
  `repairMan` varchar(20) default NULL COMMENT '维修人',
  `question` varchar(40) default NULL COMMENT '维修原因',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `devicerepairnotes` */

LOCK TABLES `devicerepairnotes` WRITE;

UNLOCK TABLES;

/*Table structure for table `devicescrappedapplyregist` */

DROP TABLE IF EXISTS `devicescrappedapplyregist`;

CREATE TABLE `devicescrappedapplyregist` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '序号（自增长）',
  `deviceCoding` varchar(20) default NULL COMMENT '设备编号',
  `deviceName` varchar(20) default NULL COMMENT '设备名称',
  `Specification` varchar(20) default NULL COMMENT '规格型号',
  `number` int(11) default NULL COMMENT '数量',
  `applyTime` date default NULL COMMENT '填报日期',
  `zname` varchar(50) default NULL COMMENT '报废组别',
  `usedPostion` varchar(20) default NULL COMMENT '曾用位置',
  `scrapApplicants` varchar(10) default NULL COMMENT '报废申请人',
  `Manager` varchar(10) default NULL COMMENT '经手人',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `devicescrappedapplyregist` */

LOCK TABLES `devicescrappedapplyregist` WRITE;

insert  into `devicescrappedapplyregist`(`id`,`deviceCoding`,`deviceName`,`Specification`,`number`,`applyTime`,`zname`,`usedPostion`,`scrapApplicants`,`Manager`) values (4,'10001','111','666',1,'2018-01-24','组4','321','我','他');

UNLOCK TABLES;

/*Table structure for table `ebackground` */

DROP TABLE IF EXISTS `ebackground`;

CREATE TABLE `ebackground` (
  `cardId` int(40) default NULL,
  `eBackround` varchar(20) default NULL,
  `school` varchar(10) default NULL,
  `major` varchar(10) default NULL,
  `bPhotos` varchar(30) default NULL,
  `xPhotos` varchar(30) default NULL,
  KEY `FK_ebackground` (`cardId`),
  CONSTRAINT `FK_ebackground` FOREIGN KEY (`cardId`) REFERENCES `information` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `ebackground` */

LOCK TABLES `ebackground` WRITE;

UNLOCK TABLES;

/*Table structure for table `eexperience` */

DROP TABLE IF EXISTS `eexperience`;

CREATE TABLE `eexperience` (
  `id` int(20) default NULL,
  `workAddress` varchar(40) default NULL,
  `classes` varchar(20) default NULL,
  `technicalText` varchar(100) default NULL,
  `photo` varchar(40) default NULL,
  `eId` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`eId`),
  KEY `FK_eexperience` (`id`),
  CONSTRAINT `FK_eexperience` FOREIGN KEY (`id`) REFERENCES `information` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `eexperience` */

LOCK TABLES `eexperience` WRITE;

insert  into `eexperience`(`id`,`workAddress`,`classes`,`technicalText`,`photo`,`eId`) values (10002,'少管所','二班','呵呵',NULL,1),(10002,'公安局','三班','程序员',NULL,2),(10001,'吉大一院','生殖科','生殖技术','files\\15213464470001.jpg',3);

UNLOCK TABLES;

/*Table structure for table `expertguidance` */

DROP TABLE IF EXISTS `expertguidance`;

CREATE TABLE `expertguidance` (
  `id` int(11) default NULL,
  `time` date default NULL,
  `Type` varchar(20) default NULL,
  `Company` varchar(30) default NULL,
  `department` varchar(20) default NULL,
  `specialist` varchar(20) default NULL,
  `title` varchar(40) default NULL,
  `photoSave` varchar(40) default NULL,
  KEY `FK_expertguidance` (`id`),
  CONSTRAINT `FK_expertguidance` FOREIGN KEY (`id`) REFERENCES `information` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `expertguidance` */

LOCK TABLES `expertguidance` WRITE;

insert  into `expertguidance`(`id`,`time`,`Type`,`Company`,`department`,`specialist`,`title`,`photoSave`) values (10001,'2018-03-18','省内专家','吉大一院','生殖科','生殖科专家','生殖学','files\\15213501306541.jpg');

UNLOCK TABLES;

/*Table structure for table `filecabinet` */

DROP TABLE IF EXISTS `filecabinet`;

CREATE TABLE `filecabinet` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '序号（自增长）',
  `code` varchar(20) default NULL COMMENT '编号',
  `principal` varchar(20) default NULL COMMENT '负责人',
  `type` varchar(20) default NULL COMMENT '柜子类别',
  `number` int(11) default NULL COMMENT '数量（钥匙）',
  `stay` int(11) default NULL COMMENT '自留（钥匙）',
  `ifSpare` varchar(10) default NULL COMMENT '有无备用',
  `floor` varchar(10) default NULL COMMENT '楼层',
  `position` varchar(10) default NULL COMMENT '位置',
  `usage` varchar(10) default NULL COMMENT '使用情况',
  `zid` int(10) default NULL COMMENT '组id',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `filecabinet` */

LOCK TABLES `filecabinet` WRITE;

UNLOCK TABLES;

/*Table structure for table `fwork` */

DROP TABLE IF EXISTS `fwork`;

CREATE TABLE `fwork` (
  `id` int(11) default NULL,
  `bookName` varchar(20) default NULL,
  `grade` varchar(20) default NULL,
  `time` date default NULL,
  `address` varchar(40) default NULL,
  `bz` varchar(20) default NULL,
  `gId` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`gId`),
  KEY `FK_fwork` (`id`),
  CONSTRAINT `FK_fwork` FOREIGN KEY (`id`) REFERENCES `information` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `fwork` */

LOCK TABLES `fwork` WRITE;

insert  into `fwork`(`id`,`bookName`,`grade`,`time`,`address`,`bz`,`gId`) values (10001,'水浒传','主编','2018-03-18','人民出版社','四大名著',1);

UNLOCK TABLES;

/*Table structure for table `gfile` */

DROP TABLE IF EXISTS `gfile`;

CREATE TABLE `gfile` (
  `id` int(11) NOT NULL auto_increment,
  `oName` varchar(60) default NULL,
  `operation` varchar(1000) default NULL,
  `oVersion` varchar(20) default NULL,
  `gId` int(11) default NULL,
  `person` varchar(20) default NULL,
  `time` date default NULL,
  `text` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_gfile` (`gId`),
  CONSTRAINT `FK_gfile` FOREIGN KEY (`gId`) REFERENCES `zu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `gfile` */

LOCK TABLES `gfile` WRITE;

insert  into `gfile`(`id`,`oName`,`operation`,`oVersion`,`gId`,`person`,`time`,`text`) values (4,'管理手册','files\\1521334630649JVM-1.docx','1.0',1,'王五','2018-03-18','JVA'),(5,'管理手册','files\\1521342289286教育背景.txt','1.0',7,'张三','2018-03-18','管理手册');

UNLOCK TABLES;

/*Table structure for table `gname` */

DROP TABLE IF EXISTS `gname`;

CREATE TABLE `gname` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(40) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `gname` */

LOCK TABLES `gname` WRITE;

insert  into `gname`(`id`,`name`) values (1,'管理手册'),(2,'手册2'),(3,'手册3');

UNLOCK TABLES;

/*Table structure for table `gstudent` */

DROP TABLE IF EXISTS `gstudent`;

CREATE TABLE `gstudent` (
  `id` int(11) default NULL,
  `name` varchar(20) default NULL,
  `major` varchar(30) default NULL,
  `grade` varchar(20) default NULL,
  `phone` varchar(20) default NULL,
  `entryTime` date default NULL,
  `leaveTime` date default NULL,
  KEY `FK_gstudent` (`id`),
  CONSTRAINT `FK_gstudent` FOREIGN KEY (`id`) REFERENCES `information` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `gstudent` */

LOCK TABLES `gstudent` WRITE;

UNLOCK TABLES;

/*Table structure for table `information` */

DROP TABLE IF EXISTS `information`;

CREATE TABLE `information` (
  `id` int(40) NOT NULL auto_increment,
  `name` varchar(10) collate utf8_bin NOT NULL default '',
  `sex` varchar(10) character set gb2312 default NULL,
  `nation` varchar(20) character set gb2312 default NULL,
  `idcard` varchar(100) character set gb2312 default NULL,
  `classes` varchar(10) character set gb2312 default NULL COMMENT '类别',
  `phone` varchar(40) character set gb2312 default NULL,
  `chara` varchar(10) character set gb2312 default NULL COMMENT '性质(在编,聘用,临时,科聘)',
  `birth` date default NULL,
  `degree` varchar(10) character set gb2312 default NULL,
  `graduateTime` date default NULL,
  `workTime` date default NULL,
  `party` varchar(20) character set gb2312 default NULL,
  `duty` varchar(20) character set gb2312 default NULL,
  `engageTime` date default NULL COMMENT '聘任时间',
  `technical` varchar(10) character set gb2312 default NULL,
  `technicalTime` date default NULL,
  `teacherPosition` varchar(10) character set gb2312 default NULL,
  `teacherTime` date default NULL,
  `tutor` varchar(20) character set gb2312 default NULL,
  `tutorTime` date default NULL,
  `gId` int(11) default NULL,
  `qx` varchar(10) character set gb2312 default NULL,
  `password` varchar(100) collate utf8_bin default NULL,
  `roleName` varchar(20) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_information` (`gId`),
  CONSTRAINT `FK_information` FOREIGN KEY (`gId`) REFERENCES `position` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `information` */

LOCK TABLES `information` WRITE;

insert  into `information`(`id`,`name`,`sex`,`nation`,`idcard`,`classes`,`phone`,`chara`,`birth`,`degree`,`graduateTime`,`workTime`,`party`,`duty`,`engageTime`,`technical`,`technicalTime`,`teacherPosition`,`teacherTime`,`tutor`,`tutorTime`,`gId`,`qx`,`password`,`roleName`) values (10001,'老王','女','回族','220202188808762134','医生','18843125464','在编','2018-01-08','硕士','2018-09-00','2017-12-00','民主建国会','保安','2017-12-00','主治医师','2018-05-00','副教授','2018-01-00','博士生','2017-12-00',32,'开启','e10adc3949ba59abbe56e057f20f883e','质控员'),(10002,'李四','男','蒙古族','640381199603210619','医技','17678341668','临时','2017-12-19','博士','2016-10-00','2017-03-00','中国国民党革命委员会','保安','2017-03-00','主治医师','2017-03-00','教授','2017-03-00','博士生','2017-03-00',32,'开启','e10adc3949ba59abbe56e057f20f883e','组员'),(10003,'阿道夫','男','壮族','220202188809873218','医生','18843108976','在编','2018-01-25','专科','2018-01-00','2018-01-00','中国共产党','算法','2018-01-00','主治医师 ','2018-01-00','讲师','2018-01-00','博士生','2018-01-00',32,NULL,'e10adc3949ba59abbe56e057f20f883e','组长'),(10004,'张三','男','壮族','220202188809873218','医生','18843108976','在编','2018-01-25','专科','2018-01-00','2018-01-00','中国共产党','网络管理员','2018-01-00','主治医师 ','2018-01-00','讲师','2018-01-00','博士生','2018-01-00',32,NULL,'e10adc3949ba59abbe56e057f20f883e','设备质控员'),(10005,'张三','女','汉族','640381199603120619','医生','17678341668','聘用','2018-03-15','本科','2018-03-00','2018-03-00','中国共产党','管理员','2018-03-00','主任医师 ','2018-03-00','教授','2018-03-00','博士生','2018-03-00',32,NULL,'e10adc3949ba59abbe56e057f20f883e','档案质控员'),(10006,'李四','男','壮族','220202188809873218','医生','18843108976','在编','2018-01-25','专科','2018-01-00','2018-01-00','中国共产党','网络管理员','2018-01-00','主治医师 ','2018-01-00','讲师','2018-01-00','博士生','2018-01-00',32,NULL,'e10adc3949ba59abbe56e057f20f883e','物资质控员'),(10007,'王五','男','壮族','220202188809873218','医生','18843108976','在编','2018-01-25','专科','2018-01-00','2018-01-00','中国共产党','算法','2018-01-00','主治医师 ','2018-01-00','讲师','2018-01-00','博士生','2018-01-00',32,NULL,'e10adc3949ba59abbe56e057f20f883e','管理员'),(10009,'樊洪江','男','汉族','640381199903210421','护理','17678341668','在编','2018-03-13','博士','2018-03-00','2018-03-00','中国共产党','网络管理员','2018-03-00','主任医师 ','2018-03-00','教授','2018-03-00','硕士生','2018-03-00',32,NULL,'e10adc3949ba59abbe56e057f20f883e','组员,组长');

UNLOCK TABLES;

/*Table structure for table `istudent` */

DROP TABLE IF EXISTS `istudent`;

CREATE TABLE `istudent` (
  `id` int(11) default NULL,
  `name` varchar(20) default NULL,
  `major` varchar(20) default NULL,
  `school` varchar(20) default NULL,
  `grade` varchar(30) default NULL,
  `phone` varchar(20) default NULL,
  `entryTime` date default NULL,
  `leaveTime` date default NULL,
  KEY `FK_istudent` (`id`),
  CONSTRAINT `FK_istudent` FOREIGN KEY (`id`) REFERENCES `information` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `istudent` */

LOCK TABLES `istudent` WRITE;

UNLOCK TABLES;

/*Table structure for table `jobtrain` */

DROP TABLE IF EXISTS `jobtrain`;

CREATE TABLE `jobtrain` (
  `id` int(11) NOT NULL auto_increment,
  `pId` int(40) default NULL,
  `trainer` varchar(10) default NULL,
  `time` date default NULL,
  `save` varchar(100) default NULL,
  `gId` int(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_jobtrain` (`gId`),
  CONSTRAINT `FK_jobtrain` FOREIGN KEY (`gId`) REFERENCES `position` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `jobtrain` */

LOCK TABLES `jobtrain` WRITE;

insert  into `jobtrain`(`id`,`pId`,`trainer`,`time`,`save`,`gId`) values (24,10001,'李四','2018-03-18','files\\1521334757128JVM-1.docx',32);

UNLOCK TABLES;

/*Table structure for table `limit` */

DROP TABLE IF EXISTS `limit`;

CREATE TABLE `limit` (
  `name` varchar(20) default NULL,
  `gn` varchar(20) default NULL,
  `lj` varchar(40) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `limit` */

LOCK TABLES `limit` WRITE;

UNLOCK TABLES;

/*Table structure for table `meeting` */

DROP TABLE IF EXISTS `meeting`;

CREATE TABLE `meeting` (
  `year` varchar(20) default NULL,
  `meetingName` varchar(30) default NULL,
  `proNumber` int(20) default NULL,
  `Proleader` varchar(20) default NULL,
  `creditType` varchar(20) default NULL,
  `Credit` int(20) default NULL,
  `startTime` date default NULL,
  `offTime` date default NULL,
  `partiNumber` int(20) default NULL,
  `fileSave` varchar(255) default NULL,
  `filePerson` varchar(10) default NULL,
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `meeting` */

LOCK TABLES `meeting` WRITE;

insert  into `meeting`(`year`,`meetingName`,`proNumber`,`Proleader`,`creditType`,`Credit`,`startTime`,`offTime`,`partiNumber`,`fileSave`,`filePerson`,`id`) values ('2018','教学大会',123,'张三','三分制',3,'2018-03-18','2018-03-20',10,'files\\1521349935325教育背景.txt','李四',2);

UNLOCK TABLES;

/*Table structure for table `meetingspoken` */

DROP TABLE IF EXISTS `meetingspoken`;

CREATE TABLE `meetingspoken` (
  `year` varchar(10) default NULL,
  `meetingName` varchar(30) default NULL,
  `holdTime` date default NULL,
  `place` varchar(40) default NULL,
  `spokeMan` varchar(10) default NULL,
  `title` varchar(20) default NULL,
  `photoSave` varchar(255) default NULL,
  `courseSave` varchar(255) default NULL,
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `meetingspoken` */

LOCK TABLES `meetingspoken` WRITE;

insert  into `meetingspoken`(`year`,`meetingName`,`holdTime`,`place`,`spokeMan`,`title`,`photoSave`,`courseSave`,`id`) values ('2018','教学大会','2018-03-18','吉大一院','张十三','教学大会','files\\15213500643601.jpg',NULL,2);

UNLOCK TABLES;

/*Table structure for table `nation` */

DROP TABLE IF EXISTS `nation`;

CREATE TABLE `nation` (
  `id` int(11) NOT NULL auto_increment,
  `nation` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `nation` */

LOCK TABLES `nation` WRITE;

insert  into `nation`(`id`,`nation`) values (1,'汉族'),(2,'蒙古族'),(3,'回族'),(4,'藏族'),(5,'维吾尔族'),(6,'苗族'),(7,'彝族'),(8,'壮族'),(9,'布依族'),(10,'朝鲜族'),(11,'满族'),(12,'侗族'),(13,'瑶族'),(14,'白族'),(15,'土家族'),(16,'哈尼族'),(17,'哈萨克族'),(18,'傣族'),(19,'黎族'),(20,'傈僳族'),(21,'佤族'),(22,'畲族'),(23,'高山族'),(24,'拉祜族'),(25,'水族'),(26,'东乡族'),(27,'纳西族'),(28,'景颇族'),(29,'柯尔克孜族'),(30,'土族'),(31,'达斡尔族'),(32,'仫佬族'),(33,'羌族'),(34,' 布朗族'),(35,' 撒拉族'),(36,' 毛难族'),(37,' 仡佬族'),(38,' 锡伯族'),(39,' 阿昌族'),(40,' 普米族'),(41,' 塔吉克族'),(42,' 怒族'),(43,' 乌孜别克族'),(44,' 俄罗斯族'),(45,' 鄂温克族'),(46,' 崩龙族'),(47,' 保安族'),(48,' 裕固族'),(49,' 京族'),(50,' 塔塔尔族'),(51,' 独龙族'),(52,' 鄂伦春族'),(53,' 赫哲族'),(54,' 门巴族'),(55,' 珞巴族'),(56,' 基诺族'),(57,' 其他');

UNLOCK TABLES;

/*Table structure for table `parttime` */

DROP TABLE IF EXISTS `parttime`;

CREATE TABLE `parttime` (
  `id` int(20) default NULL,
  `meeting` varchar(40) default NULL,
  `specializedMeet` varchar(20) default NULL,
  `duty` varchar(20) default NULL,
  `time` date default NULL,
  `photo` varchar(255) default NULL,
  KEY `FK_parttime` (`id`),
  CONSTRAINT `FK_parttime` FOREIGN KEY (`id`) REFERENCES `information` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `parttime` */

LOCK TABLES `parttime` WRITE;

insert  into `parttime`(`id`,`meeting`,`specializedMeet`,`duty`,`time`,`photo`) values (10001,'吉大一院','吉大一院','医生','2018-03-18','files\\15213475344001.jpg');

UNLOCK TABLES;

/*Table structure for table `party` */

DROP TABLE IF EXISTS `party`;

CREATE TABLE `party` (
  `id` int(11) NOT NULL auto_increment,
  `party` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `party` */

LOCK TABLES `party` WRITE;

insert  into `party`(`id`,`party`) values (1,'中国共产党'),(2,'中国国民党革命委员会'),(3,'民主同盟'),(4,'民主建国会'),(5,'民主促进会'),(6,'中农工民主党'),(7,'中国致公党'),(8,'九三学社'),(9,'台湾民主自治同盟');

UNLOCK TABLES;

/*Table structure for table `position` */

DROP TABLE IF EXISTS `position`;

CREATE TABLE `position` (
  `id` int(11) NOT NULL auto_increment,
  `position` varchar(20) character set gb2312 default NULL,
  `zId` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `position` */

LOCK TABLES `position` WRITE;

insert  into `position`(`id`,`position`,`zId`) values (0,'',NULL),(1,'门诊岗',1),(2,'造影岗',1),(3,'门诊手术岗',1),(4,'宫腔镜手术岗',1),(5,'移植手术岗',1),(6,'取卵手术岗',1),(7,'门诊岗',2),(8,'手术岗',2),(9,'门诊岗',3),(10,'羊穿手术岗',3),(11,'检测卵泡岗',4),(12,'妇科超声岗',4),(13,'男科超声岗',4),(14,'产科超声岗',4),(15,'预约超声岗',4),(16,'会诊超声岗',4),(17,'录入员岗',4),(18,'采血岗',5),(19,'注射岗',5),(20,'分泌物岗',5),(21,'手术岗',5),(22,'经治医生岗',6),(23,'B超监测岗',6),(24,'常规操作岗',6),(25,'手术岗',6),(26,'急诊会诊岗',6),(27,'医保员岗',6),(28,'带教员岗',6),(29,'夜班岗',6),(30,'建病历岗',7),(31,'超声预约岗',7),(32,'羊水病历岗',7),(33,'随访岗',7),(34,'形态岗',8),(35,'动态岗',8),(36,'激素岗',8),(37,'人授岗',8),(38,'精液处理岗',9),(39,'胚胎移植岗',9),(40,'ICSI受精岗',9),(41,'捡卵岗',9),(42,'胚胎交代岗',9),(43,'胚胎评分岗',9),(44,'配液岗',9),(45,'冷冻解冻岗',9),(46,'随访岗',10),(47,'实验操作岗',10),(49,'阿瑟',2);

UNLOCK TABLES;

/*Table structure for table `rdoctor` */

DROP TABLE IF EXISTS `rdoctor`;

CREATE TABLE `rdoctor` (
  `base` varchar(30) default NULL,
  `name` varchar(20) default NULL,
  `major` varchar(20) default NULL,
  `grade` varchar(20) default NULL,
  `phone` varchar(20) default NULL,
  `entryTime` date default NULL,
  `leaveTime` date default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `rdoctor` */

LOCK TABLES `rdoctor` WRITE;

UNLOCK TABLES;

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(20) default NULL,
  `age` int(11) default NULL,
  `address` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student` */

LOCK TABLES `student` WRITE;

insert  into `student`(`id`,`name`,`age`,`address`) values (1,'张三',32,'吉林'),(2,'李四',12,'是的'),(3,'王五',23,'黑龙江');

UNLOCK TABLES;

/*Table structure for table `technical` */

DROP TABLE IF EXISTS `technical`;

CREATE TABLE `technical` (
  `id` int(11) NOT NULL auto_increment,
  `postition` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `technical` */

LOCK TABLES `technical` WRITE;

insert  into `technical`(`id`,`postition`) values (1,'主任医师'),(2,'副主任医师'),(3,'主治医师'),(4,'医师'),(5,'技师'),(6,'副主任技师'),(7,'主管技师'),(8,'技师'),(9,'技士'),(10,'主任护师'),(11,'主管护师'),(12,'护师'),(13,'护士');

UNLOCK TABLES;

/*Table structure for table `tecourse` */

DROP TABLE IF EXISTS `tecourse`;

CREATE TABLE `tecourse` (
  `id` int(20) default NULL,
  `course` varchar(30) default NULL,
  `cname` varchar(20) default NULL,
  `cyear` varchar(20) default NULL,
  `time` int(10) default NULL,
  `tId` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`tId`),
  KEY `FK_tecourse` (`id`),
  CONSTRAINT `FK_tecourse` FOREIGN KEY (`id`) REFERENCES `information` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `tecourse` */

LOCK TABLES `tecourse` WRITE;

insert  into `tecourse`(`id`,`course`,`cname`,`cyear`,`time`,`tId`) values (10002,'生理健康','设管理健康','1',2015,1),(10002,'语文','必修1','1',2016,2),(10001,'本科生教学-中文','生殖学','2018',10,3);

UNLOCK TABLES;

/*Table structure for table `testudent` */

DROP TABLE IF EXISTS `testudent`;

CREATE TABLE `testudent` (
  `id` int(20) default NULL,
  `teaching` varchar(20) default NULL,
  `cyear` varchar(20) default NULL,
  `tname` varchar(20) default NULL,
  `type` varchar(20) default NULL,
  `major` varchar(20) default NULL,
  `tId` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`tId`),
  KEY `FK_testudent` (`id`),
  CONSTRAINT `FK_testudent` FOREIGN KEY (`id`) REFERENCES `information` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `testudent` */

LOCK TABLES `testudent` WRITE;

UNLOCK TABLES;

/*Table structure for table `wexperience` */

DROP TABLE IF EXISTS `wexperience`;

CREATE TABLE `wexperience` (
  `id` int(20) default NULL,
  `workAddress` varchar(40) default NULL,
  `classes` varchar(20) default NULL,
  `technicalPosition` varchar(20) default NULL,
  `statTime` date default NULL,
  `stopTime` date default NULL,
  `wId` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`wId`),
  KEY `FK_wexperience` (`id`),
  CONSTRAINT `FK_wexperience` FOREIGN KEY (`id`) REFERENCES `information` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `wexperience` */

LOCK TABLES `wexperience` WRITE;

insert  into `wexperience`(`id`,`workAddress`,`classes`,`technicalPosition`,`statTime`,`stopTime`,`wId`) values (10001,'吉大一院','生殖科','医生','2018-03-01','2018-03-02',1);

UNLOCK TABLES;

/*Table structure for table `wzapply` */

DROP TABLE IF EXISTS `wzapply`;

CREATE TABLE `wzapply` (
  `id` int(20) NOT NULL auto_increment COMMENT '序号（自增长）',
  `number` int(100) default NULL COMMENT '数量',
  `applyTime` date default NULL COMMENT '申请日期',
  `wzId` int(11) default NULL COMMENT '物资编号',
  `ifYes` varchar(20) default NULL COMMENT '是否批准',
  `person` varchar(20) default NULL,
  `zId` int(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wzapply` */

LOCK TABLES `wzapply` WRITE;

insert  into `wzapply`(`id`,`number`,`applyTime`,`wzId`,`ifYes`,`person`,`zId`) values (1,12,'2018-03-18',10001,'否','王五',5),(2,10,'2018-03-18',2001,'否','张三',7);

UNLOCK TABLES;

/*Table structure for table `wzcat` */

DROP TABLE IF EXISTS `wzcat`;

CREATE TABLE `wzcat` (
  `id` int(11) NOT NULL auto_increment COMMENT '设备id(自增长）',
  `type` varchar(20) default NULL COMMENT '类别名',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wzcat` */

LOCK TABLES `wzcat` WRITE;

insert  into `wzcat`(`id`,`type`) values (1,'麻醉药类'),(2,'镇定剂类'),(3,'喷雾类'),(4,'机械类'),(5,'电脑');

UNLOCK TABLES;

/*Table structure for table `wznotes` */

DROP TABLE IF EXISTS `wznotes`;

CREATE TABLE `wznotes` (
  `wzId` varchar(11) default NULL COMMENT '物资id',
  `number` int(20) default NULL COMMENT '(正，入库，)',
  `updateTime` date default NULL COMMENT '更新日期',
  `zid` int(11) default NULL COMMENT '组id',
  `person` varchar(20) default NULL COMMENT '办理人',
  `ifYes` varchar(2) default NULL COMMENT '是否审批（是/否）',
  `name` varchar(20) default NULL COMMENT '物资名称',
  `price` double default NULL COMMENT '物资价格',
  `id` int(20) NOT NULL auto_increment COMMENT '序号（记录数）',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wznotes` */

LOCK TABLES `wznotes` WRITE;

insert  into `wznotes`(`wzId`,`number`,`updateTime`,`zid`,`person`,`ifYes`,`name`,`price`,`id`) values ('10001',5,'2018-01-24',2,'0',NULL,'麻醉药',10,4),('10002',5,'2018-01-24',2,'0',NULL,'麻醉药',10,5);

UNLOCK TABLES;

/*Table structure for table `wztype` */

DROP TABLE IF EXISTS `wztype`;

CREATE TABLE `wztype` (
  `wzId` int(20) default NULL,
  `name` varchar(40) default NULL,
  `tId` int(40) default NULL COMMENT '种类ID',
  `price` double default NULL,
  `del` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wztype` */

LOCK TABLES `wztype` WRITE;

insert  into `wztype`(`wzId`,`name`,`tId`,`price`,`del`) values (10001,'云南白药',3,50,'不可用'),(2001,'福尔马林',2,10,NULL);

UNLOCK TABLES;

/*Table structure for table `zu` */

DROP TABLE IF EXISTS `zu`;

CREATE TABLE `zu` (
  `id` int(11) NOT NULL auto_increment,
  `zName` varchar(40) character set gb2312 default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `zu` */

LOCK TABLES `zu` WRITE;

insert  into `zu`(`id`,`zName`) values (1,'生殖妇科组'),(2,'生殖男科组'),(3,'产前门诊组'),(4,'超声组'),(5,'护理组'),(6,'病房组'),(7,'病案咨询组'),(8,'男科实验室'),(9,'胚胎实验组'),(10,'筛查实验组'),(11,'细胞遗传室'),(12,'分子遗传室');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
