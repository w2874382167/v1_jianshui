-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: v1_jianshui
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_advert`
--

DROP TABLE IF EXISTS `app_advert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_advert` (
  `nid` int NOT NULL AUTO_INCREMENT,
  `title` varchar(32) DEFAULT NULL,
  `href` varchar(200) NOT NULL,
  `img` varchar(200) DEFAULT NULL,
  `is_show` tinyint(1) NOT NULL,
  `real_title` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_advert`
--

LOCK TABLES `app_advert` WRITE;
/*!40000 ALTER TABLE `app_advert` DISABLE KEYS */;
INSERT INTO `app_advert` VALUES (1,'娓镐簯鍗?,'https://yyn.ybsjyyn.com/','https://vcg04.cfp.cn/creative/vcg/800/new/VCG211360225844.jpg',1,'涓€閮ㄦ墜鏈烘父浜戝崡');
/*!40000 ALTER TABLE `app_advert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_articles`
--

DROP TABLE IF EXISTS `app_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_articles` (
  `nid` int NOT NULL AUTO_INCREMENT,
  `title` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abstract` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `create_date` datetime(6) DEFAULT NULL,
  `change_date` datetime(6) DEFAULT NULL,
  `status` int NOT NULL,
  `recommend` tinyint(1) NOT NULL,
  `look_count` int NOT NULL,
  `digg_count` int NOT NULL,
  `collects_count` int NOT NULL,
  `category` int DEFAULT NULL,
  `author` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_id` int DEFAULT NULL,
  PRIMARY KEY (`nid`),
  KEY `app_articles_cover_id_207033ec_fk_app_cover_nid` (`cover_id`),
  CONSTRAINT `app_articles_cover_id_207033ec_fk_app_cover_nid` FOREIGN KEY (`cover_id`) REFERENCES `app_cover` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_articles`
--

LOCK TABLES `app_articles` WRITE;
/*!40000 ALTER TABLE `app_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_articles_tag`
--

DROP TABLE IF EXISTS `app_articles_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_articles_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `articles_id` int NOT NULL,
  `tags_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_articles_tag_articles_id_tags_id_7da3db2a_uniq` (`articles_id`,`tags_id`),
  KEY `app_articles_tag_tags_id_f841c971_fk_app_tags_nid` (`tags_id`),
  CONSTRAINT `app_articles_tag_articles_id_dbf27bad_fk_app_articles_nid` FOREIGN KEY (`articles_id`) REFERENCES `app_articles` (`nid`),
  CONSTRAINT `app_articles_tag_tags_id_f841c971_fk_app_tags_nid` FOREIGN KEY (`tags_id`) REFERENCES `app_tags` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_articles_tag`
--

LOCK TABLES `app_articles_tag` WRITE;
/*!40000 ALTER TABLE `app_articles_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_articles_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_avatars`
--

DROP TABLE IF EXISTS `app_avatars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_avatars` (
  `nid` int NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_avatars`
--

LOCK TABLES `app_avatars` WRITE;
/*!40000 ALTER TABLE `app_avatars` DISABLE KEYS */;
INSERT INTO `app_avatars` VALUES (1,'avatars/澶村儚_0005_24.jpg'),(2,'avatars/澶村儚_0004_17.jpg');
/*!40000 ALTER TABLE `app_avatars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_cover`
--

DROP TABLE IF EXISTS `app_cover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_cover` (
  `nid` int NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_cover`
--

LOCK TABLES `app_cover` WRITE;
/*!40000 ALTER TABLE `app_cover` DISABLE KEYS */;
INSERT INTO `app_cover` VALUES (6,'article_img/21.jpg'),(7,'article_img/22.jpg'),(8,'article_img/28.jpg'),(9,'article_img/31.jpg'),(10,'article_img/33.jpg'),(11,'article_img/40.jpg');
/*!40000 ALTER TABLE `app_cover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_menu`
--

DROP TABLE IF EXISTS `app_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_menu` (
  `nid` int NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(16) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `abstract` longtext,
  `abstract_time` int NOT NULL,
  `rotation` tinyint(1) NOT NULL,
  `menu_time` int NOT NULL,
  `menu_title_en` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_menu`
--

LOCK TABLES `app_menu` WRITE;
/*!40000 ALTER TABLE `app_menu` DISABLE KEYS */;
INSERT INTO `app_menu` VALUES (3,'棣栭〉','鏂囩尞鍚嶉偊 婊囧崡閭归瞾 鍙ゅ煄寤烘按','涓冨僵浜戝崡锛涗笘鐣岃姳鍥劅鍙楃濂囦笌缇庝附锛涗綋鍛斥€滄湁涓€绉嶅彨鍋氫簯鍗楃殑鐢熸椿鈥濓紱鏂囩尞鍚嶉偊 婊囧崡閭归瞾 鍙ゅ煄寤烘按\r\n涓冨僵浜戝崡锛屼笘鐣岃姳鍥劅鍙楃濂囦笌缇庝附',2,1,4,'index'),(4,'鏂伴椈','绾佃澶╀笅鏂伴椈','鏂伴椈闈炲父鐨勫鍟婏紒锛涙垜瑕佹€庝箞鍔烇紱绾佃澶╀笅鏂伴椈',4,1,8,'new'),(5,'缃戠珯瀵艰埅','鍔犱笂涔嬪悗锛屽浘鐗囪矾寰勫氨鑳芥纭嬁鍒颁簡','杩欓噷鏄痬y_tag閲岄潰鐨勪唬鐮?\r\n鎶婃垜瀹崇殑鐗瑰埆鎯?\r\n涓婇潰杩欎釜锛屽湪鏂伴椈鐣岄潰鎷垮埌鍥剧墖璺緞鏄?,2,1,4,'site');
/*!40000 ALTER TABLE `app_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_menu_menu_url`
--

DROP TABLE IF EXISTS `app_menu_menu_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_menu_menu_url` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `menu_id` int NOT NULL,
  `menuimg_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_menu_menu_url_menu_id_menuimg_id_b33223da_uniq` (`menu_id`,`menuimg_id`),
  KEY `app_menu_menu_url_menuimg_id_836c9a04_fk_app_menuimg_nid` (`menuimg_id`),
  CONSTRAINT `app_menu_menu_url_menu_id_587b0ac6_fk_app_menu_nid` FOREIGN KEY (`menu_id`) REFERENCES `app_menu` (`nid`),
  CONSTRAINT `app_menu_menu_url_menuimg_id_836c9a04_fk_app_menuimg_nid` FOREIGN KEY (`menuimg_id`) REFERENCES `app_menuimg` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_menu_menu_url`
--

LOCK TABLES `app_menu_menu_url` WRITE;
/*!40000 ALTER TABLE `app_menu_menu_url` DISABLE KEYS */;
INSERT INTO `app_menu_menu_url` VALUES (9,3,4),(10,3,5),(11,4,4),(12,4,5),(13,5,5),(14,5,6);
/*!40000 ALTER TABLE `app_menu_menu_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_menuimg`
--

DROP TABLE IF EXISTS `app_menuimg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_menuimg` (
  `nid` int NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  `dominant_hue` varchar(16) DEFAULT NULL,
  `is_dark` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_menuimg`
--

LOCK TABLES `app_menuimg` WRITE;
/*!40000 ALTER TABLE `app_menuimg` DISABLE KEYS */;
INSERT INTO `app_menuimg` VALUES (4,'media/site_bgimg/img_10.jpg',NULL,NULL),(5,'media/site_bgimg/28.jpg',NULL,NULL),(6,'site_bgimg/31.jpg',NULL,NULL);
/*!40000 ALTER TABLE `app_menuimg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_navtags`
--

DROP TABLE IF EXISTS `app_navtags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_navtags` (
  `nid` int NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `iconText` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_navtags`
--

LOCK TABLES `app_navtags` WRITE;
/*!40000 ALTER TABLE `app_navtags` DISABLE KEYS */;
INSERT INTO `app_navtags` VALUES (1,'鐢熸椿濞变箰','fa fa-rocket'),(2,'鏁欒偛','fa fa-book'),(3,'浠ｇ爜杈句汉','fa fa-star'),(4,'鏃呮父鍚戝','fa fa-plane'),(5,'鏈嶅姟浜烘皯','fa fa-users');
/*!40000 ALTER TABLE `app_navtags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_siteinfo`
--

DROP TABLE IF EXISTS `app_siteinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_siteinfo` (
  `nid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `site_url` varchar(32) NOT NULL,
  `addr` varchar(16) NOT NULL,
  `show` tinyint(1) NOT NULL,
  `nameObj` varchar(64) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_siteinfo`
--

LOCK TABLES `app_siteinfo` WRITE;
/*!40000 ALTER TABLE `app_siteinfo` DISABLE KEYS */;
INSERT INTO `app_siteinfo` VALUES (1,'鍙ゅ煄寤烘按','https://jianshuigc.com','浜戝崡鐪佺孩娌冲窞寤烘按',1,'');
/*!40000 ALTER TABLE `app_siteinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_sitenav`
--

DROP TABLE IF EXISTS `app_sitenav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_sitenav` (
  `nid` int NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `abstract` varchar(128) DEFAULT NULL,
  `href` varchar(200) NOT NULL,
  `icon_href` varchar(200) DEFAULT NULL,
  `create_date` datetime(6) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_sitenav`
--

LOCK TABLES `app_sitenav` WRITE;
/*!40000 ALTER TABLE `app_sitenav` DISABLE KEYS */;
INSERT INTO `app_sitenav` VALUES (1,'b绔?,'鍥藉唴鐭ュ悕鐨勮棰戝脊骞曠綉绔?,'https://www.bilibili.com/','https://i0.hdslb.com/bfs/static/jinkela/long/images/favicon.ico','2024-08-13 12:35:36.009221'),(2,'git','鏅鸿兘鐨勪唬鐮佺鐞嗗姪鎵?,'https://github.com/','https://git-scm.com/favicon.ico','2024-08-13 11:59:19.306531'),(3,'鐧惧害','鐧惧害涓€涓嬶紝浣犲氨鐭ラ亾','https://www.baidu.com/','https://www.baidu.com/favicon.ico','2024-08-13 12:06:08.209210'),(4,'鎶栭煶','鎶栭煶-璁板綍缇庡ソ鐢熸椿','https://www.douyin.com/','https://img.zcool.cn/community/0114935b07d8baa8012181b0222f50.png@1280w_1l_2o_100sh.png','2024-08-11 05:48:46.116279'),(5,'csdn','涓撲笟寮€鍙戣€呯ぞ鍖?,'https://www.csdn.net/','https://g.csdnimg.cn/static/logo/favicon32.ico','2024-08-13 11:57:11.146312'),(6,'GitHub','寮€婧愬強绉佹湁杞欢椤圭洰鐨勬墭绠″钩鍙?,'https://github.com/','https://img0.baidu.com/it/u=2299561093,1390915375&fm=253&fmt=auto&app=138&f=JPEG?w=714&h=500','2024-08-13 12:02:04.365039'),(7,'Element-ui','涓€濂椾负寮€鍙戣€呭噯澶囩殑妗岄潰绔粍浠跺簱','https://element.eleme.cn/#/zh-CN/component/installation','https://element.eleme.cn/favicon.ico','2024-08-13 12:05:01.324386'),(8,'蹇墜','蹇墜锛屾嫢鎶辨瘡涓€绉嶇敓娲?,'https://www.kuaishou.com/','https://static.yximgs.com/udata/pkg/WEB-LIVE/kwai_icon.8f6787d8.ico','2024-08-13 12:09:08.570197'),(9,'灏忕孩涔?,'鎮ㄧ殑鐢熸椿鎸囧崡','https://www.xiaohongshu.com/','https://fe-video-qc.xhscdn.com/fe-platform/ed8fe781ce9e16c1bfac2cd962f0721edabe2e49.ico','2024-08-13 12:10:45.072713'),(10,'娣樺疂','娣樺疂鐑崠濂界墿锛屽搧绫讳紬澶?,'https://www.taobao.com/','http://img.alicdn.com/tps/i3/T1OjaVFl4dXXa.JOZB-114-114.png','2024-08-13 12:14:10.980431'),(11,'澶╃尗','鐞嗘兂鐢熸椿涓婂ぉ鐚?,'https://www.tmall.com/','https://img2.baidu.com/it/u=62458578,2205004558&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=521','2024-08-13 12:17:15.448259'),(12,'浜戝崡鎷涜€冮閬?,'鎷涚敓鑰冭瘯宸ヤ綔锛岀粍缁囷紝绠＄悊','https://www.ynzs.cn/','https://www.ynzs.cn/public/icon-ynzs.ico','2024-08-13 12:19:31.554546'),(13,'寤烘按涓€涓?,'鐮哄搧鏍戜汉  鍔卞鎴愭墠','https://mp.weixin.qq.com/s?__biz=MzIzMDAyNDQ4OQ==&mid=2649967983&idx=1&sn=ff8dab8cdf4f6385a3f0070685f12ef0&chksm=f1cea2242207f55099a225c3bf8aa2138273d4c0ce90135b2e178171175f5e312e3b7858a63d&scene=27','https://5b0988e595225.cdn.sohucs.com/images/20171018/58068b9ce4364bf6b6a9d598f1412f56.jpeg','2024-08-13 12:24:13.019308'),(14,'绾㈡渤宸炰竴涓?,'绔嬪痉鏍戜汉锛屸€屾浜庤嚦鍠?,'http://www.hhzdyzx.com/','https://zhengxin-pub.cdn.bcebos.com/mark/32ebeb28bbd0503f4f5088120401a117.jpg','2024-08-13 12:26:31.265590'),(15,'寤烘按瀹為獙涓','绔嬪痉鏍戜汉,鑳告€€鏈潵','http://www.jssyzx.com.cn/','https://img0.baidu.com/it/u=3851574195,2593484189&fm=253&fmt=auto&app=138&f=JPEG?w=803&h=800','2024-08-13 12:27:38.649409'),(16,'涓€閮ㄦ墜鏈烘父浜戝崡','娓稿浣撻獙鑷敱鑷湪锛屾斂搴滄湇鍔℃棤澶勪笉鍦?,'https://www.ybsjyyn.com/','https://www.ybsjyyn.com/static/website/static/favicon_a918276.ico','2024-08-13 12:34:42.103819'),(17,'寰楃墿','鏂颁竴浠ｆ疆娴佺綉璐ぞ鍖?,'https://www.dewu.com/','https://www.dewu.com/static/favicon.ico','2024-08-13 12:38:02.456871'),(18,'鍘诲摢鍎挎梾琛?,'瀹炴椂鎻愪緵涓婄櫨瀹舵梾娓搁璁㈢綉绔欐満绁ㄦ姤浠峰拰鑸┖鍏徃鐩撮攢鏈虹エ浠锋牸','https://www.qunar.com/','https://pic.rmb.bdstatic.com/bjh/447091b23c51ac048295c1166cbc7b22.png','2024-08-13 12:40:50.169477'),(19,'浜戝崡澶у','浼氭辰鐧惧锛岃嚦鍏ぉ涓?,'https://www.ynu.edu.cn/','https://img0.baidu.com/it/u=1364068953,4050295088&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=450','2024-08-13 12:45:23.043522');
/*!40000 ALTER TABLE `app_sitenav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_sitenav_tag`
--

DROP TABLE IF EXISTS `app_sitenav_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_sitenav_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sitenav_id` int NOT NULL,
  `navtags_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_sitenav_tag_sitenav_id_navtags_id_178f45e1_uniq` (`sitenav_id`,`navtags_id`),
  KEY `app_sitenav_tag_navtags_id_1be4b78a_fk_app_navtags_nid` (`navtags_id`),
  CONSTRAINT `app_sitenav_tag_navtags_id_1be4b78a_fk_app_navtags_nid` FOREIGN KEY (`navtags_id`) REFERENCES `app_navtags` (`nid`),
  CONSTRAINT `app_sitenav_tag_sitenav_id_9822e96f_fk_app_sitenav_nid` FOREIGN KEY (`sitenav_id`) REFERENCES `app_sitenav` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_sitenav_tag`
--

LOCK TABLES `app_sitenav_tag` WRITE;
/*!40000 ALTER TABLE `app_sitenav_tag` DISABLE KEYS */;
INSERT INTO `app_sitenav_tag` VALUES (1,1,1),(8,2,3),(7,3,5),(4,4,1),(6,5,3),(9,6,3),(10,7,3),(11,8,1),(12,9,1),(13,10,5),(14,11,5),(15,12,2),(16,13,2),(17,14,2),(18,15,2),(19,16,4),(20,17,5),(21,18,4),(22,19,2);
/*!40000 ALTER TABLE `app_sitenav_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_tags`
--

DROP TABLE IF EXISTS `app_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_tags` (
  `nid` int NOT NULL AUTO_INCREMENT,
  `title` varchar(16) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_tags`
--

LOCK TABLES `app_tags` WRITE;
/*!40000 ALTER TABLE `app_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_userinfo`
--

DROP TABLE IF EXISTS `app_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_userinfo` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nid` int NOT NULL AUTO_INCREMENT,
  `account_status` int NOT NULL,
  `avatar_url` varchar(200) DEFAULT NULL,
  `qq_num` longtext,
  `sex` int NOT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_userinfo`
--

LOCK TABLES `app_userinfo` WRITE;
/*!40000 ALTER TABLE `app_userinfo` DISABLE KEYS */;
INSERT INTO `app_userinfo` VALUES ('pbkdf2_sha256$600000$I4odVC5cPeGg63VkLVVgNC$TvXiwUNIR8AL8ky7oKsAAJuoVY+/sA178jOSg8gtWmQ=','2024-08-13 07:28:51.476996',1,'admin','','','',1,1,'2024-07-29 01:39:00.000000',1,0,'https://vcg01.cfp.cn/creative/vcg/800/new/VCG211394349551.jpg','123',1);
/*!40000 ALTER TABLE `app_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_userinfo_collects`
--

DROP TABLE IF EXISTS `app_userinfo_collects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_userinfo_collects` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userinfo_id` int NOT NULL,
  `articles_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_userinfo_collects_userinfo_id_articles_id_0deac66f_uniq` (`userinfo_id`,`articles_id`),
  KEY `app_userinfo_collects_articles_id_b746b4ce_fk_app_articles_nid` (`articles_id`),
  CONSTRAINT `app_userinfo_collects_articles_id_b746b4ce_fk_app_articles_nid` FOREIGN KEY (`articles_id`) REFERENCES `app_articles` (`nid`),
  CONSTRAINT `app_userinfo_collects_userinfo_id_55723683_fk_app_userinfo_nid` FOREIGN KEY (`userinfo_id`) REFERENCES `app_userinfo` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_userinfo_collects`
--

LOCK TABLES `app_userinfo_collects` WRITE;
/*!40000 ALTER TABLE `app_userinfo_collects` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_userinfo_collects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_userinfo_groups`
--

DROP TABLE IF EXISTS `app_userinfo_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_userinfo_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userinfo_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_userinfo_groups_userinfo_id_group_id_cfea9d11_uniq` (`userinfo_id`,`group_id`),
  KEY `app_userinfo_groups_group_id_ebf31c16_fk_auth_group_id` (`group_id`),
  CONSTRAINT `app_userinfo_groups_group_id_ebf31c16_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `app_userinfo_groups_userinfo_id_a5ded69d_fk_app_userinfo_nid` FOREIGN KEY (`userinfo_id`) REFERENCES `app_userinfo` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_userinfo_groups`
--

LOCK TABLES `app_userinfo_groups` WRITE;
/*!40000 ALTER TABLE `app_userinfo_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_userinfo_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_userinfo_user_permissions`
--

DROP TABLE IF EXISTS `app_userinfo_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_userinfo_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userinfo_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_userinfo_user_permis_userinfo_id_permission_i_30ee8545_uniq` (`userinfo_id`,`permission_id`),
  KEY `app_userinfo_user_pe_permission_id_6facaba5_fk_auth_perm` (`permission_id`),
  CONSTRAINT `app_userinfo_user_pe_permission_id_6facaba5_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `app_userinfo_user_pe_userinfo_id_6ded8150_fk_app_useri` FOREIGN KEY (`userinfo_id`) REFERENCES `app_userinfo` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_userinfo_user_permissions`
--

LOCK TABLES `app_userinfo_user_permissions` WRITE;
/*!40000 ALTER TABLE `app_userinfo_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_userinfo_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add avatars',6,'add_avatars'),(22,'Can change avatars',6,'change_avatars'),(23,'Can delete avatars',6,'delete_avatars'),(24,'Can view avatars',6,'view_avatars'),(25,'Can add cover',7,'add_cover'),(26,'Can change cover',7,'change_cover'),(27,'Can delete cover',7,'delete_cover'),(28,'Can view cover',7,'view_cover'),(29,'Can add tags',8,'add_tags'),(30,'Can change tags',8,'change_tags'),(31,'Can delete tags',8,'delete_tags'),(32,'Can view tags',8,'view_tags'),(33,'Can add articles',9,'add_articles'),(34,'Can change articles',9,'change_articles'),(35,'Can delete articles',9,'delete_articles'),(36,'Can view articles',9,'view_articles'),(37,'Can add user info',10,'add_userinfo'),(38,'Can change user info',10,'change_userinfo'),(39,'Can delete user info',10,'delete_userinfo'),(40,'Can view user info',10,'view_userinfo'),(41,'Can add site info',11,'add_siteinfo'),(42,'Can change site info',11,'change_siteinfo'),(43,'Can delete site info',11,'delete_siteinfo'),(44,'Can view site info',11,'view_siteinfo'),(45,'Can add advert',12,'add_advert'),(46,'Can change advert',12,'change_advert'),(47,'Can delete advert',12,'delete_advert'),(48,'Can view advert',12,'view_advert'),(49,'Can add menu',13,'add_menu'),(50,'Can change menu',13,'change_menu'),(51,'Can delete menu',13,'delete_menu'),(52,'Can view menu',13,'view_menu'),(53,'Can add menu img',14,'add_menuimg'),(54,'Can change menu img',14,'change_menuimg'),(55,'Can delete menu img',14,'delete_menuimg'),(56,'Can view menu img',14,'view_menuimg'),(57,'Can add nav tags',15,'add_navtags'),(58,'Can change nav tags',15,'change_navtags'),(59,'Can delete nav tags',15,'delete_navtags'),(60,'Can view nav tags',15,'view_navtags'),(61,'Can add site nav',16,'add_sitenav'),(62,'Can change site nav',16,'change_sitenav'),(63,'Can delete site nav',16,'delete_sitenav'),(64,'Can view site nav',16,'view_sitenav');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_app_userinfo_nid` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_app_userinfo_nid` FOREIGN KEY (`user_id`) REFERENCES `app_userinfo` (`nid`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-07-29 11:43:11.027808','1','python',1,'[{\"added\": {}}]',8,1),(2,'2024-07-29 11:43:45.373500','2','椋庡厜',1,'[{\"added\": {}}]',8,1),(3,'2024-07-29 11:43:57.168638','3','c++',1,'[{\"added\": {}}]',8,1),(4,'2024-07-29 11:45:08.538431','1','article_img/瀹樺巺鍥?webp',1,'[{\"added\": {}}]',7,1),(5,'2024-07-29 11:45:22.046546','2','article_img/chaoxia.jpg',1,'[{\"added\": {}}]',7,1),(6,'2024-07-29 11:45:30.362720','3','article_img/寤烘按绱櫠閲?jpg',1,'[{\"added\": {}}]',7,1),(7,'2024-07-29 11:45:41.156480','4','article_img/鐑ц眴鑵?webp',1,'[{\"added\": {}}]',7,1),(8,'2024-07-29 11:45:50.784520','5','article_img/灏忕伀杞?jpg',1,'[{\"added\": {}}]',7,1),(9,'2024-07-29 11:49:39.383753','1','浜戣吹楂樺師',1,'[{\"added\": {}}]',9,1),(10,'2024-07-29 11:53:38.797928','4','涓浗',1,'[{\"added\": {}}]',8,1),(11,'2024-07-29 11:53:48.860013','2','鍗椾含',1,'[{\"added\": {}}]',9,1),(12,'2024-07-29 12:10:16.333735','1','浜戣吹楂樺師',2,'[]',9,1),(13,'2024-07-29 12:28:36.464822','5','article_img/21.jpg',3,'',7,1),(14,'2024-07-29 12:28:41.226032','4','article_img/22.jpg',3,'',7,1),(15,'2024-07-29 12:28:44.148400','3','article_img/24.jpg',3,'',7,1),(16,'2024-07-29 12:28:46.925832','2','article_img/27.jpg',3,'',7,1),(17,'2024-07-29 12:28:49.675998','1','article_img/28.jpg',3,'',7,1),(18,'2024-07-29 12:33:02.597128','6','article_img/21.jpg',1,'[{\"added\": {}}]',7,1),(19,'2024-07-29 12:33:09.578245','7','article_img/22.jpg',1,'[{\"added\": {}}]',7,1),(20,'2024-07-29 12:33:14.813476','8','article_img/28.jpg',1,'[{\"added\": {}}]',7,1),(21,'2024-07-29 12:33:20.256307','9','article_img/31.jpg',1,'[{\"added\": {}}]',7,1),(22,'2024-07-29 12:33:27.126728','10','article_img/33.jpg',1,'[{\"added\": {}}]',7,1),(23,'2024-07-29 12:33:35.021271','11','article_img/40.jpg',1,'[{\"added\": {}}]',7,1),(24,'2024-07-29 12:33:50.931944','1','浜戣吹楂樺師',2,'[{\"changed\": {\"fields\": [\"\\u6587\\u7ae0\\u5c01\\u9762\"]}}]',9,1),(25,'2024-07-29 12:33:58.232132','2','鍗椾含',2,'[{\"changed\": {\"fields\": [\"\\u6587\\u7ae0\\u5c01\\u9762\"]}}]',9,1),(26,'2024-07-30 03:58:32.211983','3','test',1,'[{\"added\": {}}]',9,1),(27,'2024-07-30 03:59:41.988625','3','test',2,'[{\"changed\": {\"fields\": [\"\\u6587\\u7ae0\\u4fdd\\u5b58\\u72b6\\u6001\", \"\\u6587\\u7ae0\\u5c01\\u9762\", \"\\u4f5c\\u8005\", \"\\u6765\\u6e90\"]}}]',9,1),(28,'2024-07-30 04:17:09.921146','3','test',2,'[{\"changed\": {\"fields\": [\"\\u6587\\u7ae0\\u5185\\u5bb9\"]}}]',9,1),(29,'2024-08-05 23:32:55.919733','1','SiteInfo object (1)',1,'[{\"added\": {}}]',11,1),(30,'2024-08-06 00:11:35.583807','1','SiteInfo object (1)',2,'[{\"changed\": {\"fields\": [\"\\u662f\\u5426\\u5c55\\u793a\"]}}]',11,1),(31,'2024-08-06 00:19:33.897124','1','Advert object (1)',1,'[{\"added\": {}}]',12,1),(32,'2024-08-06 01:05:16.343489','1','娓镐簯鍗?,2,'[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\\u5730\\u5740\"]}}]',12,1),(33,'2024-08-06 01:10:09.213064','1','娓镐簯鍗?,2,'[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\\u5730\\u5740\"]}}]',12,1),(34,'2024-08-06 01:11:15.016480','1','娓镐簯鍗?,2,'[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\\u5730\\u5740\"]}}]',12,1),(35,'2024-08-10 08:51:46.211995','1','admin',2,'[{\"changed\": {\"fields\": [\"Last login\", \"\\u7528\\u6237\\u5934\\u50cf\"]}}]',10,1),(36,'2024-08-10 09:58:15.108606','1','avatars/澶村儚_0005_24.jpg',1,'[{\"added\": {}}]',6,1),(37,'2024-08-10 09:58:23.905554','2','avatars/澶村儚_0004_17.jpg',1,'[{\"added\": {}}]',6,1),(38,'2024-08-10 12:24:52.489272','1','admin',2,'[{\"changed\": {\"fields\": [\"\\u7528\\u6237\\u5934\\u50cf\", \"\\u6536\\u85cf\\u7684\\u6587\\u7ae0\"]}}]',10,1),(39,'2024-08-10 14:05:31.505382','1','site_bgimg/28.jpg',1,'[{\"added\": {}}]',14,1),(40,'2024-08-10 14:05:42.996726','2','site_bgimg/img_10.jpg',1,'[{\"added\": {}}]',14,1),(41,'2024-08-10 14:05:54.493424','3','site_bgimg/椋炴満.png',1,'[{\"added\": {}}]',14,1),(42,'2024-08-10 14:24:43.009106','1','Menu object (1)',1,'[{\"added\": {}}]',13,1),(43,'2024-08-10 14:29:31.826431','1','Menu object (1)',2,'[{\"changed\": {\"fields\": [\"\\u83dc\\u5355\\u82f1\\u6587\\u540d\\u79f0\"]}}]',13,1),(44,'2024-08-10 14:35:43.214020','3','site_bgimg/椋炴満.png',3,'',14,1),(45,'2024-08-10 14:35:43.214020','2','site_bgimg/img_10.jpg',3,'',14,1),(46,'2024-08-10 14:35:43.224265','1','site_bgimg/28.jpg',3,'',14,1),(47,'2024-08-10 14:35:51.473224','4','media/site_bgimg/img_10.jpg',1,'[{\"added\": {}}]',14,1),(48,'2024-08-10 14:36:02.586662','5','media/site_bgimg/28.jpg',1,'[{\"added\": {}}]',14,1),(49,'2024-08-10 14:37:38.101866','6','site_bgimg/31.jpg',1,'[{\"added\": {}}]',14,1),(50,'2024-08-10 14:37:49.645317','1','Menu object (1)',2,'[{\"changed\": {\"fields\": [\"\\u83dc\\u5355\\u56fe\\u7247\"]}}]',13,1),(51,'2024-08-10 14:38:26.612088','1','Menu object (1)',2,'[{\"changed\": {\"fields\": [\"\\u83dc\\u5355\\u56fe\\u7247\"]}}]',13,1),(52,'2024-08-10 15:13:41.830078','2','Menu object (2)',1,'[{\"added\": {}}]',13,1),(53,'2024-08-10 15:55:50.843674','2','Menu object (2)',3,'',13,1),(54,'2024-08-10 15:55:50.846342','1','Menu object (1)',3,'',13,1),(55,'2024-08-10 15:56:34.123502','3','Menu object (3)',1,'[{\"added\": {}}]',13,1),(56,'2024-08-10 15:57:52.462744','4','Menu object (4)',1,'[{\"added\": {}}]',13,1),(57,'2024-08-10 16:30:26.886058','4','Menu object (4)',2,'[{\"changed\": {\"fields\": [\"\\u6587\\u5b57\\u4ecb\\u7ecd\"]}}]',13,1),(58,'2024-08-10 16:30:54.623159','3','Menu object (3)',2,'[{\"changed\": {\"fields\": [\"\\u6587\\u5b57\\u4ecb\\u7ecd\"]}}]',13,1),(59,'2024-08-11 00:56:49.192764','5','Menu object (5)',1,'[{\"added\": {}}]',13,1),(60,'2024-08-11 02:10:41.167419','1','鐢熸椿濞变箰',1,'[{\"added\": {}}]',15,1),(61,'2024-08-11 02:11:16.258940','2','鏁欒偛',1,'[{\"added\": {}}]',15,1),(62,'2024-08-11 02:12:41.210484','1','b绔?,1,'[{\"added\": {}}]',16,1),(63,'2024-08-11 02:14:11.016005','2','git',1,'[{\"added\": {}}]',16,1),(64,'2024-08-11 02:28:40.138226','3','鐧惧害',1,'[{\"added\": {}}]',16,1),(65,'2024-08-13 01:30:37.261899','1','娓镐簯鍗?,2,'[{\"changed\": {\"fields\": [\"\\u7f51\\u7ad9\\u540d\\u5b57\"]}}]',12,1),(66,'2024-08-13 10:59:10.911603','3','Menu object (3)',2,'[{\"changed\": {\"fields\": [\"\\u6587\\u5b57\\u5207\\u6362\\u65f6\\u95f4\", \"\\u80cc\\u666f\\u56fe\\u5207\\u6362\\u65f6\\u95f4\"]}}]',13,1),(67,'2024-08-13 11:44:35.719999','2','鏁欒偛',2,'[{\"changed\": {\"fields\": [\"\\u6807\\u7b7e\\u56fe\\u6807\"]}}]',15,1),(68,'2024-08-13 11:47:04.037000','2','鏁欒偛',2,'[{\"changed\": {\"fields\": [\"\\u6807\\u7b7e\\u56fe\\u6807\"]}}]',15,1),(69,'2024-08-13 11:47:28.601414','2','鏁欒偛',2,'[{\"changed\": {\"fields\": [\"\\u6807\\u7b7e\\u56fe\\u6807\"]}}]',15,1),(70,'2024-08-13 11:50:09.485148','2','鏁欒偛',2,'[{\"changed\": {\"fields\": [\"\\u6807\\u7b7e\\u56fe\\u6807\"]}}]',15,1),(71,'2024-08-13 11:51:26.180487','1','鐢熸椿濞变箰',2,'[{\"changed\": {\"fields\": [\"\\u6807\\u7b7e\\u56fe\\u6807\"]}}]',15,1),(72,'2024-08-13 11:52:47.243562','3','浠ｇ爜杈句汉',1,'[{\"added\": {}}]',15,1),(73,'2024-08-13 11:54:05.840686','4','鏃呮父鍚戝',1,'[{\"added\": {}}]',15,1),(74,'2024-08-13 11:56:06.810270','5','鏈嶅姟浜烘皯',1,'[{\"added\": {}}]',15,1),(75,'2024-08-13 11:57:11.152824','5','csdn',2,'[{\"changed\": {\"fields\": [\"\\u7f51\\u7ad9\\u6807\\u7b7e\"]}}]',16,1),(76,'2024-08-13 11:57:23.018323','3','鐧惧害',2,'[{\"changed\": {\"fields\": [\"\\u7f51\\u7ad9\\u6807\\u7b7e\"]}}]',16,1),(77,'2024-08-13 11:59:19.311514','2','git',2,'[{\"changed\": {\"fields\": [\"\\u7f51\\u7ad9\\u7b80\\u4ecb\", \"\\u56fe\\u6807\\u94fe\\u63a5\", \"\\u7f51\\u7ad9\\u6807\\u7b7e\"]}}]',16,1),(78,'2024-08-13 12:02:04.367065','6','GitHub',1,'[{\"added\": {}}]',16,1),(79,'2024-08-13 12:05:01.328400','7','Element-ui',1,'[{\"added\": {}}]',16,1),(80,'2024-08-13 12:06:08.210899','3','鐧惧害',2,'[{\"changed\": {\"fields\": [\"\\u7f51\\u7ad9\\u7b80\\u4ecb\"]}}]',16,1),(81,'2024-08-13 12:09:08.572739','8','蹇墜',1,'[{\"added\": {}}]',16,1),(82,'2024-08-13 12:10:45.075713','9','灏忕孩涔?,1,'[{\"added\": {}}]',16,1),(83,'2024-08-13 12:14:10.982429','10','娣樺疂',1,'[{\"added\": {}}]',16,1),(84,'2024-08-13 12:17:15.452242','11','澶╃尗',1,'[{\"added\": {}}]',16,1),(85,'2024-08-13 12:19:31.557561','12','浜戝崡鎷涜€冮閬?,1,'[{\"added\": {}}]',16,1),(86,'2024-08-13 12:24:13.022312','13','寤烘按涓€涓?,1,'[{\"added\": {}}]',16,1),(87,'2024-08-13 12:26:31.268592','14','绾㈡渤宸炰竴涓?,1,'[{\"added\": {}}]',16,1),(88,'2024-08-13 12:27:38.652388','15','寤烘按瀹為獙涓',1,'[{\"added\": {}}]',16,1),(89,'2024-08-13 12:30:06.922017','5','鏈嶅姟浜烘皯',2,'[{\"changed\": {\"fields\": [\"\\u6807\\u7b7e\\u56fe\\u6807\"]}}]',15,1),(90,'2024-08-13 12:35:36.016864','1','b绔?,2,'[{\"changed\": {\"fields\": [\"\\u7f51\\u7ad9\\u7b80\\u4ecb\"]}}]',16,1),(91,'2024-08-13 12:46:13.333176','4','ww',3,'',10,1),(92,'2024-08-13 12:46:13.333176','3','鐜嬩簲',3,'',10,1),(93,'2024-08-13 12:46:13.343731','2','qq',3,'',10,1),(94,'2024-08-13 12:48:18.186932','9','鍚冭繖浠朵簨涓婏紝浜戝崡浜哄湪椤剁',3,'',9,1),(95,'2024-08-13 12:48:18.190088','8','鍦ㄥ悆杩欎欢浜嬩笂锛屼簯鍗楀湪椤剁鐨?,3,'',9,1),(96,'2024-08-13 12:48:18.197889','7','鍦ㄥ悆杩欎欢浜嬩笂锛屼簯鍗椾汉鑲畾鏄珯鍦ㄩ鐗╅摼椤剁鍣?,3,'',9,1),(97,'2024-08-13 12:48:18.200269','3','test',3,'',9,1),(98,'2024-08-13 12:48:18.209042','2','鍗椾含',3,'',9,1),(99,'2024-08-13 12:48:18.210680','1','浜戣吹楂樺師',3,'',9,1),(100,'2024-08-13 12:48:18.214368','6','1',3,'',9,1),(101,'2024-08-13 12:48:18.214368','5','1',3,'',9,1),(102,'2024-08-13 12:48:18.220562','4','1',3,'',9,1),(103,'2024-08-13 12:48:58.723296','4','涓浗',3,'',8,1),(104,'2024-08-13 12:48:58.733742','3','c++',3,'',8,1),(105,'2024-08-13 12:48:58.733742','2','椋庡厜',3,'',8,1),(106,'2024-08-13 12:48:58.742204','1','python',3,'',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(12,'app','advert'),(9,'app','articles'),(6,'app','avatars'),(7,'app','cover'),(13,'app','menu'),(14,'app','menuimg'),(15,'app','navtags'),(11,'app','siteinfo'),(16,'app','sitenav'),(8,'app','tags'),(10,'app','userinfo'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-07-29 01:35:11.312874'),(2,'contenttypes','0002_remove_content_type_name','2024-07-29 01:35:11.397594'),(3,'auth','0001_initial','2024-07-29 01:35:11.716964'),(4,'auth','0002_alter_permission_name_max_length','2024-07-29 01:35:11.795961'),(5,'auth','0003_alter_user_email_max_length','2024-07-29 01:35:11.804966'),(6,'auth','0004_alter_user_username_opts','2024-07-29 01:35:11.814731'),(7,'auth','0005_alter_user_last_login_null','2024-07-29 01:35:11.821736'),(8,'auth','0006_require_contenttypes_0002','2024-07-29 01:35:11.828000'),(9,'auth','0007_alter_validators_add_error_messages','2024-07-29 01:35:11.838003'),(10,'auth','0008_alter_user_username_max_length','2024-07-29 01:35:11.864187'),(11,'auth','0009_alter_user_last_name_max_length','2024-07-29 01:35:11.872157'),(12,'auth','0010_alter_group_name_max_length','2024-07-29 01:35:11.888155'),(13,'auth','0011_update_proxy_permissions','2024-07-29 01:35:11.898134'),(14,'auth','0012_alter_user_first_name_max_length','2024-07-29 01:35:11.906155'),(15,'app','0001_initial','2024-07-29 01:35:12.929999'),(16,'admin','0001_initial','2024-07-29 01:35:13.119164'),(17,'admin','0002_logentry_remove_auto_add','2024-07-29 01:35:13.131156'),(18,'admin','0003_logentry_add_action_flag_choices','2024-07-29 01:35:13.141157'),(19,'sessions','0001_initial','2024-07-29 01:35:13.197161'),(20,'app','0002_alter_cover_url','2024-08-05 23:29:08.387996'),(21,'app','0003_siteinfo_alter_articles_category_alter_cover_url','2024-08-05 23:29:08.447990'),(22,'app','0004_remove_articles_comment_count_remove_articles_word','2024-08-05 23:29:38.736011'),(23,'app','0005_siteinfo_show','2024-08-06 00:11:18.083714'),(24,'app','0006_advert','2024-08-06 00:14:14.625440'),(25,'app','0007_remove_advert_img_list_alter_advert_img','2024-08-06 00:59:53.442704'),(26,'app','0008_remove_userinfo_nick_name_userinfo_addr_userinfo_ip_and_more','2024-08-10 05:54:43.333766'),(27,'app','0009_remove_userinfo_avatar_alter_userinfo_sex','2024-08-10 11:37:08.271404'),(28,'app','0010_menuimg_menu','2024-08-10 13:46:09.622246'),(29,'app','0011_remove_menu_menu_rotation_remove_menu_menu_title_en_and_more','2024-08-10 14:24:38.000573'),(30,'app','0012_menu_menu_title_en','2024-08-10 14:29:18.978286'),(31,'app','0013_navtags_alter_menu_rotation_sitenav','2024-08-11 00:25:58.231596'),(32,'app','0014_alter_navtags_options_navtags_icontext_and_more','2024-08-11 02:09:55.607859'),(33,'app','0015_remove_siteinfo_email_siteinfo_nameobj','2024-08-11 14:41:39.102099'),(34,'app','0016_remove_userinfo_addr_remove_userinfo_ip','2024-08-11 16:42:06.003775'),(35,'app','0017_advert_real_title','2024-08-13 01:29:57.042151'),(36,'app','0018_alter_navtags_icontext_alter_navtags_title','2024-08-13 11:46:54.587100');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('4urxqhil9gsln280rufm6fuodoglvf34','.eJzFl02TojAQhv-KxdmPJCQkzG33vsc9LVNWSIKyK2Dx4WXK_75pdWZ2smiQUefUSL-8ST8dQ3gJlrJr18uuMfUy18FTgIPpv_dSqf6YEhL6tyxX1VxVZVvn6Rwk81O2mf-otNl8P2k_GKxls7ZPG2OoRIworijiOgop1SnBBmlmGI-NiDMiOOeEY0a1IISKDCNDMGc0ZpiCaWHKrrFev16SoJSFSYKnSRJ8226TYGovcju1461M1pNMzlReq405JguYYAPpj08nSccwj2ygRkOImGIQTCiGOXf15phbSF3k5UJut_ZqZ-p2cRRIrX-e19jsSZfWRmpVd0XaM0__XPbTyQ0r2z9D2uQashgh0mMfMcFt4NKgsZzqNreCxkPqVXVPVsOLcdGEHjfbB4WwDTGPyEhQqrKL5TKlo-RRiK4pygVGvd6RQIdfKTcjgbVy5VlVB8XjcA0vycXFerw5IwJMSchHAoLNOS-z6jKkN9U9QQ0vxkUTedzsKo1DCgGpbOwetZOtrH1b1En0KEzXFOZC433eUscQUApBIKVgpCgaCw1e1ZeJHRR3xTWyJBeXuMrbdiTKxm5awCQvVn5wIPoadoPqcxHGfUNkDL-PxHgm4ZegsFfSzEAuQqPXX5O3xr-7vanuyvImhTpIMfKPlGbQNXuUlp-AWMqdnyGIHohwcGEuNHyV9y2OIZaM_yTyKvoahJ84mmDi_tP7CItU0kNQMANGxWEzCcXhZcZp-P-YDYzZrHOz0TO5ab1fcNwoesYFDjDNTFWrMz2y36mLVV112wstetcM7NBtiu7r4qBC3S5R90a4fw72fwEOAPbT:1sdtxM:l49mMmgn7E1keq2mRjK3lqMk-X9Kol9xnvZsAkdcmKw','2024-08-27 16:01:08.632802'),('b4riy53an6zunl1gg0pxmzncq0mi2i7i','.eJzFl02TojAQhv-KxdmPJCQkzG33vsc9LVNWSIKyK2Dx4WXK_75pdWZ2smiQUefUSL-8ST8dQ3gJlrJr18uuMfUy18FTgIPpv_dSqf6YEhL6tyxX1VxVZVvn6Rwk81O2mf-otNl8P2k_GKxls7ZPG2OoRIworijiOgop1SnBBmlmGI-NiDMiOOeEY0a1IISKDCNDMGc0ZpiCaWHKrrFev16SoJSFSYKnSRJ8226TYGovcju1461M1pNMzlReq405JguYYAPpj08nSccwj2ygRkOImGIQTCiGOXf15phbSF3k5UJut_ZqZ-p2cRRIrX-e19jsSZfWRmpVd0XaM0__XPbTyQ0r2z9D2uQashgh0mMfMcFt4NKgsZzqNreCxkPqVXVPVsOLcdGEHjfbB4WwDTGPyEhQqrKL5TKlo-RRiK4pygVGvd6RQIdfKTcjgbVy5VlVB8XjcA0vycXFerw5IwJMSchHAoLNOS-z6jKkN9U9QQ0vxkUTedzsKo1DCgGpbOwetZOtrH1b1En0KEzXFOZC433eUscQUApBIKVgpCgaCw1e1ZeJHRR3xTWyJBeXuMrbdiTKxm5awCQvVn5wIPoadoPqcxHGfUNkDL-PxHgm4ZegsFfSzEAuQqPXX5O3xr-7vanuyvImhTpIMfKPlGbQNXuUlp-AWMqdnyGIHohwcGEuNHyV9y2OIZaM_yTyKvoahJ84mmDi_tP7CItU0kNQMANGxWEzCcXhZcZp-P-YDYzZrHOz0TO5ab1fcNwoesYFDjDNTFWrMz2y36mLVV112wstetcM7NBtiu7r4qBC3S5R90a4fw72fwEOAPbT:1sdj88:F-oJRbuVOm0wA-FjfkYsEdiWGxNolOjuvUUy4mWZhy0','2024-08-27 04:27:32.832299'),('kpdikq6a2i869w91woobnaqyqs4kwvx2','.eJxVjEEOwiAQRe_C2hAYBwdcuvcMBJipVA1NSrsy3l2bdKHb_977LxXTutS4dpnjyOqsrDr8bjmVh7QN8D2126TL1JZ5zHpT9E67vk4sz8vu_h3U1Ou3FhFMxkGhgob4dETkDFYMO3EUxIcBPBEBWYfsAdAP1ghYchicRfX-ANSKNpI:1sd5yU:OsYXJlzUPWMNkwLgTMmYBfo-hpItpJ0tQ-1yXvMPeb0','2024-08-25 10:38:58.085975'),('n8u05mp8veqecjo0cn64wn7aht7fxql7','.eJxVjEEOwiAQRe_C2hAYBwdcuvcMBJipVA1NSrsy3l2bdKHb_977LxXTutS4dpnjyOqsrDr8bjmVh7QN8D2126TL1JZ5zHpT9E67vk4sz8vu_h3U1Ou3FhFMxkGhgob4dETkDFYMO3EUxIcBPBEBWYfsAdAP1ghYchicRfX-ANSKNpI:1sdlxb:s1jJz7yyKbQ-tb0FEJHk4OBZKsA0VReGneGMoYEVFhk','2024-08-27 07:28:51.482033'),('oiy98aehk79h0wwcyo8vp8gn98svn1bl','.eJxVjEEOwiAQRe_C2hAYBwdcuvcMBJipVA1NSrsy3l2bdKHb_977LxXTutS4dpnjyOqsrDr8bjmVh7QN8D2126TL1JZ5zHpT9E67vk4sz8vu_h3U1Ou3FhFMxkGhgob4dETkDFYMO3EUxIcBPBEBWYfsAdAP1ghYchicRfX-ANSKNpI:1sacgq:Xgbf60SN0YIJbpXz_rHuQP_IFF3S9mHagY0tXUuBEhw','2024-08-18 14:58:32.988698');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-14  1:24:17
