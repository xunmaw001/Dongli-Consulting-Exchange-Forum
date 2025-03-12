-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm40124
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614668056013 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-03-02 06:31:57',1,1,'提问1','回复1',1),(62,'2021-03-02 06:31:57',2,2,'提问2','回复2',2),(63,'2021-03-02 06:31:57',3,3,'提问3','回复3',3),(64,'2021-03-02 06:31:57',4,4,'提问4','回复4',4),(65,'2021-03-02 06:31:57',5,5,'提问5','回复5',5),(66,'2021-03-02 06:31:57',6,6,'提问6','回复6',6),(1614668056012,'2021-03-02 06:54:15',1614667891824,NULL,'‍1\r\n','2\r\n',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm40124/upload/1614667764750.jpg'),(2,'picture2','http://localhost:8080/jspm40124/upload/1614667237718.jpg'),(3,'picture3','http://localhost:8080/jspm40124/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshizililiang`
--

DROP TABLE IF EXISTS `discussshizililiang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshizililiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='师资力量评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshizililiang`
--

LOCK TABLES `discussshizililiang` WRITE;
/*!40000 ALTER TABLE `discussshizililiang` DISABLE KEYS */;
INSERT INTO `discussshizililiang` VALUES (111,'2021-03-02 06:31:58',1,1,'评论内容1','回复内容1'),(112,'2021-03-02 06:31:58',2,2,'评论内容2','回复内容2'),(113,'2021-03-02 06:31:58',3,3,'评论内容3','回复内容3'),(114,'2021-03-02 06:31:58',4,4,'评论内容4','回复内容4'),(115,'2021-03-02 06:31:58',5,5,'评论内容5','回复内容5'),(116,'2021-03-02 06:31:58',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshizililiang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstougaoxinxi`
--

DROP TABLE IF EXISTS `discusstougaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstougaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='投稿信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstougaoxinxi`
--

LOCK TABLES `discusstougaoxinxi` WRITE;
/*!40000 ALTER TABLE `discusstougaoxinxi` DISABLE KEYS */;
INSERT INTO `discusstougaoxinxi` VALUES (121,'2021-03-02 06:31:58',1,1,'评论内容1','回复内容1'),(122,'2021-03-02 06:31:58',2,2,'评论内容2','回复内容2'),(123,'2021-03-02 06:31:58',3,3,'评论内容3','回复内容3'),(124,'2021-03-02 06:31:58',4,4,'评论内容4','回复内容4'),(125,'2021-03-02 06:31:58',5,5,'评论内容5','回复内容5'),(126,'2021-03-02 06:31:58',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusstougaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxuexiaofengcai`
--

DROP TABLE IF EXISTS `discussxuexiaofengcai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxuexiaofengcai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614667918833 DEFAULT CHARSET=utf8 COMMENT='学校风采评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxuexiaofengcai`
--

LOCK TABLES `discussxuexiaofengcai` WRITE;
/*!40000 ALTER TABLE `discussxuexiaofengcai` DISABLE KEYS */;
INSERT INTO `discussxuexiaofengcai` VALUES (101,'2021-03-02 06:31:58',1,1,'评论内容1','回复内容1'),(102,'2021-03-02 06:31:58',2,2,'评论内容2','回复内容2'),(103,'2021-03-02 06:31:58',3,3,'评论内容3','回复内容3'),(104,'2021-03-02 06:31:58',4,4,'评论内容4','回复内容4'),(105,'2021-03-02 06:31:58',5,5,'评论内容5','回复内容5'),(106,'2021-03-02 06:31:58',6,6,'评论内容6','回复内容6'),(1614667918832,'2021-03-02 06:51:58',1614667638708,1614667891824,'不错',NULL);
/*!40000 ALTER TABLE `discussxuexiaofengcai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614668034814 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (71,'2021-03-02 06:31:58','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(72,'2021-03-02 06:31:58','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(73,'2021-03-02 06:31:58','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(74,'2021-03-02 06:31:58','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(75,'2021-03-02 06:31:58','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(76,'2021-03-02 06:31:58','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1614667997829,'2021-03-02 06:53:17','关于如何学习理工知识','<p>1，HJDFHDJGFG</p>\n<p>2,HFGJDGJGF</p>',0,1614667891824,'1','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614667860987 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-03-02 06:31:58','标题1','简介1','http://localhost:8080/jspm40124/upload/1614666950126.jpg','内容1\r\n'),(92,'2021-03-02 06:31:58','标题2','简介2','http://localhost:8080/jspm40124/upload/1614666969954.jpg','内容2\r\n'),(93,'2021-03-02 06:31:58','标题3','简介3','http://localhost:8080/jspm40124/upload/1614666963594.jpg','内容3\r\n'),(94,'2021-03-02 06:31:58','标题4','简介4','http://localhost:8080/jspm40124/upload/1614666976150.jpg','内容4\r\n'),(95,'2021-03-02 06:31:58','标题5','简介5','http://localhost:8080/jspm40124/upload/1614666982152.jpg','内容5\r\n'),(96,'2021-03-02 06:31:58','标题6','简介6','http://localhost:8080/jspm40124/upload/1614666988696.jpg','内容6\r\n'),(1614667860986,'2021-03-02 06:51:00','关于2021年东华理工人才招聘通知','人才招聘','http://localhost:8080/jspm40124/upload/1614667846647.jpg','人才招聘通知\r\n<img src=\"http://localhost:8080/jspm40124/upload/1614667859087.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm40124/upload/1614667859087.jpg\">\r\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shizililiang`
--

DROP TABLE IF EXISTS `shizililiang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shizililiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614667673585 DEFAULT CHARSET=utf8 COMMENT='师资力量';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shizililiang`
--

LOCK TABLES `shizililiang` WRITE;
/*!40000 ALTER TABLE `shizililiang` DISABLE KEYS */;
INSERT INTO `shizililiang` VALUES (31,'2021-03-02 06:31:57','标题1','http://localhost:8080/jspm40124/upload/1614667488340.jpg','内容1\r\n','2021-03-02'),(32,'2021-03-02 06:31:57','标题2','http://localhost:8080/jspm40124/upload/1614667493997.jpg','内容2\r\n','2021-03-02'),(33,'2021-03-02 06:31:57','标题3','http://localhost:8080/jspm40124/upload/1614667501107.jpg','内容3\r\n','2021-03-02'),(34,'2021-03-02 06:31:57','标题4','http://localhost:8080/jspm40124/upload/1614667508005.jpg','内容4\r\n','2021-03-02'),(35,'2021-03-02 06:31:57','标题5','http://localhost:8080/jspm40124/upload/1614667517488.jpg','内容5\r\n','2021-03-02'),(36,'2021-03-02 06:31:57','标题6','http://localhost:8080/jspm40124/upload/1614667535388.jpg','内容6\r\n','2021-03-02'),(1614667673584,'2021-03-02 06:47:52','甲骨文研究团队','http://localhost:8080/jspm40124/upload/1614667658876.jpg','甲骨文研究团队\r\n<img src=\"http://localhost:8080/jspm40124/upload/1614667671259.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm40124/upload/1614667671259.jpg\">\r\n','2021-03-02');
/*!40000 ALTER TABLE `shizililiang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614667934146 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1614667928240,'2021-03-02 06:52:07',1614667891824,1614667673584,'shizililiang','甲骨文研究团队','http://localhost:8080/jspm40124/upload/1614667658876.jpg'),(1614667934145,'2021-03-02 06:52:13',1614667891824,1614667746717,'tougaoxinxi','关于电脑类知识的投稿','http://localhost:8080/jspm40124/upload/1614667729061.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'用户1','yonghu','用户','i255uzibqdjthoi8oe0am78kbutr0c8s','2021-03-02 06:32:23','2021-03-02 07:33:02'),(2,1,'abo','users','管理员','b1dyrun5qkj6jfybivommrj8133hjycl','2021-03-02 06:33:34','2021-03-02 07:54:26'),(3,1614667891824,'1','yonghu','用户','o6yuz58r3babui32tofwnn8xl8kdnlkh','2021-03-02 06:51:36','2021-03-02 07:55:33');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tougaoxinxi`
--

DROP TABLE IF EXISTS `tougaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tougaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `fengmiantu` varchar(200) DEFAULT NULL COMMENT '封面图',
  `tougaozhuti` longtext COMMENT '投稿主题',
  `tougaoshijian` varchar(200) DEFAULT NULL COMMENT '投稿时间',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614667746718 DEFAULT CHARSET=utf8 COMMENT='投稿信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tougaoxinxi`
--

LOCK TABLES `tougaoxinxi` WRITE;
/*!40000 ALTER TABLE `tougaoxinxi` DISABLE KEYS */;
INSERT INTO `tougaoxinxi` VALUES (41,'2021-03-02 06:31:57','标题1','类型1','http://localhost:8080/jspm40124/upload/1614666887349.jpg','投稿主题1','投稿时间1','2021-03-02','2021-03-02 14:34:45',3),(42,'2021-03-02 06:31:57','标题2','类型2','http://localhost:8080/jspm40124/upload/1614666893599.jpg','投稿主题2','投稿时间2','2021-03-02','2021-03-02 14:34:51',4),(43,'2021-03-02 06:31:57','标题3','类型3','http://localhost:8080/jspm40124/upload/1614666899284.jpg','投稿主题3','投稿时间3','2021-03-02','2021-03-02 14:34:57',5),(44,'2021-03-02 06:31:57','标题4','类型4','http://localhost:8080/jspm40124/upload/1614666905135.jpg','投稿主题4','投稿时间4','2021-03-02','2021-03-02 14:35:03',6),(45,'2021-03-02 06:31:57','标题5','类型5','http://localhost:8080/jspm40124/upload/1614666911807.jpg','投稿主题5','投稿时间5','2021-03-02','2021-03-02 14:35:09',7),(46,'2021-03-02 06:31:57','标题6','类型6','http://localhost:8080/jspm40124/upload/1614666917660.jpg','投稿主题6','投稿时间6','2021-03-02','2021-03-02 14:35:15',9),(1614667746717,'2021-03-02 06:49:05','关于电脑类知识的投稿','电脑类','http://localhost:8080/jspm40124/upload/1614667729061.jpg','电脑类知识','5.2-5.7','2021-03-18','2021-03-02 14:52:43',2);
/*!40000 ALTER TABLE `tougaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-02 06:31:58');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexiaofengcai`
--

DROP TABLE IF EXISTS `xuexiaofengcai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexiaofengcai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614667638709 DEFAULT CHARSET=utf8 COMMENT='学校风采';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexiaofengcai`
--

LOCK TABLES `xuexiaofengcai` WRITE;
/*!40000 ALTER TABLE `xuexiaofengcai` DISABLE KEYS */;
INSERT INTO `xuexiaofengcai` VALUES (21,'2021-03-02 06:31:57','标题1','类型1','http://localhost:8080/jspm40124/upload/1614666830506.jpg','内容1\r\n','2021-03-02'),(22,'2021-03-02 06:31:57','标题2','类型2','http://localhost:8080/jspm40124/upload/1614666836772.jpg','内容2\r\n','2021-03-02'),(23,'2021-03-02 06:31:57','标题3','类型3','http://localhost:8080/jspm40124/upload/1614666843728.jpg','内容3\r\n','2021-03-02'),(24,'2021-03-02 06:31:57','标题4','类型4','http://localhost:8080/jspm40124/upload/1614666850793.jpg','内容4\r\n','2021-03-02'),(25,'2021-03-02 06:31:57','标题5','类型5','http://localhost:8080/jspm40124/upload/1614666857367.jpg','内容5\r\n','2021-03-02'),(26,'2021-03-02 06:31:57','标题6','类型6','http://localhost:8080/jspm40124/upload/1614666863983.jpg','内容6\r\n','2021-03-02'),(1614667638708,'2021-03-02 06:47:18','学校风采','校运会','http://localhost:8080/jspm40124/upload/1614667628261.jpg','校运会\r\n<img src=\"http://localhost:8080/jspm40124/upload/1614667636560.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm40124/upload/1614667636560.jpg\">\r\n','2021-03-02');
/*!40000 ALTER TABLE `xuexiaofengcai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yijiantougao`
--

DROP TABLE IF EXISTS `yijiantougao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yijiantougao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` varchar(200) DEFAULT NULL COMMENT '内容',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `tougaoriqi` date DEFAULT NULL COMMENT '投稿日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614667961234 DEFAULT CHARSET=utf8 COMMENT='意见投稿';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yijiantougao`
--

LOCK TABLES `yijiantougao` WRITE;
/*!40000 ALTER TABLE `yijiantougao` DISABLE KEYS */;
INSERT INTO `yijiantougao` VALUES (51,'2021-03-02 06:31:57','标题1','类型1','内容1','','2021-03-02','用户名1','姓名1','联系电话1','是',''),(52,'2021-03-02 06:31:57','标题2','类型2','内容2','','2021-03-02','用户名2','姓名2','联系电话2','是',''),(53,'2021-03-02 06:31:57','标题3','类型3','内容3','','2021-03-02','用户名3','姓名3','联系电话3','是',''),(54,'2021-03-02 06:31:57','标题4','类型4','内容4','','2021-03-02','用户名4','姓名4','联系电话4','是',''),(55,'2021-03-02 06:31:57','标题5','类型5','内容5','','2021-03-02','用户名5','姓名5','联系电话5','是',''),(56,'2021-03-02 06:31:57','标题6','类型6','内容6','','2021-03-02','用户名6','姓名6','联系电话6','是',''),(1614667961233,'2021-03-02 06:52:40','关于电脑类知识的投稿','电脑类','电脑类知识','http://localhost:8080/jspm40124/upload/1614667956870.docx','2021-03-02','1','陈一','12312312312','是','ok');
/*!40000 ALTER TABLE `yijiantougao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1614667891825 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-02 06:31:57','用户1','123456','姓名1','http://localhost:8080/jspm40124/upload/yonghu_touxiang1.jpg','男','13823888881'),(12,'2021-03-02 06:31:57','用户2','123456','姓名2','http://localhost:8080/jspm40124/upload/yonghu_touxiang2.jpg','男','13823888882'),(13,'2021-03-02 06:31:57','用户3','123456','姓名3','http://localhost:8080/jspm40124/upload/yonghu_touxiang3.jpg','男','13823888883'),(14,'2021-03-02 06:31:57','用户4','123456','姓名4','http://localhost:8080/jspm40124/upload/yonghu_touxiang4.jpg','男','13823888884'),(15,'2021-03-02 06:31:57','用户5','123456','姓名5','http://localhost:8080/jspm40124/upload/yonghu_touxiang5.jpg','男','13823888885'),(16,'2021-03-02 06:31:57','用户6','123456','姓名6','http://localhost:8080/jspm40124/upload/yonghu_touxiang6.jpg','男','13823888886'),(1614667891824,'2021-03-02 06:51:31','1','1','陈一','http://localhost:8080/jspm40124/upload/1614667908024.jpg','女','12312312312');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-03  9:37:04
