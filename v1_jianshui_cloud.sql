-- MySQL dump 10.13  Distrib 5.7.43, for Linux (x86_64)
--
-- Host: localhost    Database: v1_jianshui
-- ------------------------------------------------------
-- Server version	5.7.43-log

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
-- Table structure for table `app_advert`
--

DROP TABLE IF EXISTS `app_advert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_advert` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) DEFAULT NULL,
  `real_title` varchar(32) DEFAULT NULL,
  `href` varchar(200) NOT NULL,
  `img` varchar(200) DEFAULT NULL,
  `is_show` tinyint(1) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_advert`
--

LOCK TABLES `app_advert` WRITE;
/*!40000 ALTER TABLE `app_advert` DISABLE KEYS */;
INSERT INTO `app_advert` VALUES (1,'游云南','一部手机游云南','https://yyn.ybsjyyn.com/','https://vcg00.cfp.cn/creative/vcg/800/new/VCG211359041978.jpg',1);
/*!40000 ALTER TABLE `app_advert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_articles`
--

DROP TABLE IF EXISTS `app_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_articles` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) DEFAULT NULL,
  `abstract` varchar(128) DEFAULT NULL,
  `content` longtext,
  `create_date` datetime(6) DEFAULT NULL,
  `change_date` datetime(6) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `recommend` tinyint(1) NOT NULL,
  `look_count` int(11) NOT NULL,
  `digg_count` int(11) NOT NULL,
  `collects_count` int(11) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `author` varchar(16) DEFAULT NULL,
  `source` varchar(32) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `cover_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`nid`),
  KEY `app_articles_cover_id_207033ec_fk_app_cover_nid` (`cover_id`),
  CONSTRAINT `app_articles_cover_id_207033ec_fk_app_cover_nid` FOREIGN KEY (`cover_id`) REFERENCES `app_cover` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_articles`
--

LOCK TABLES `app_articles` WRITE;
/*!40000 ALTER TABLE `app_articles` DISABLE KEYS */;
INSERT INTO `app_articles` VALUES (1,'用心铺筑民生幸福路 跑出乡村振兴“加速度”','乡村振兴，道路先行。近年来，建水县聚焦群众所急所盼，把“30户以上自然村通村道路硬化”建设作为推动乡村振兴的有力抓手，加快自然村道路硬化建设工作，让昔日村民的“烦心路”变身成“幸福路”，让乡村振兴愿景成为村民看得见、摸得着的真实福祉。','**![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNtyIeticHQv0ApYjhprpBfmh6W8qeDkYJbdde9LDHYIb0Y2amBKCMYXgTg01R2byOjSBBsL0lF1lg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)**\n\n乡村振兴，道路先行。近年来，建水县聚焦群众所急所盼，把“30户以上自然村通村道路硬化”建设作为推动乡村振兴的有力抓手，加快自然村道路硬化建设工作，让昔日村民的“烦心路”变身成“幸福路”，让乡村振兴愿景成为村民看得见、摸得着的真实福祉。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYWosfibfoTE2OYaJ23csD21jPryiaicPgErN38GrnuC3wfZthLeBib1spfA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n曲江镇曲江大河沿线有龙街、闫家坡、桥头等3个村委会，村民的出行和蔬菜运输都要依靠大河两旁的道路通行。但随着大河两岸来往的人流、车流不断增加，时常出现堵车的问题，扩宽道路成为了群众盼望已久的心头事。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYzLqULuQUF93ibcoPHvpG54GDIIuSeYNa6bsg6NRbY53zgwDycOERZTw/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYWjEQUxgiayVeTknZ5sjqLO9cnq80ACibPI96YRPP1odydonhFroqlPZg/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n为进一步改善群众的道路交通出行问题，提升群众的幸福指数，自2022年以来，建水县交通运输局与曲江镇党委政府通力合作，扎实推进曲江大河道路改造升级工程，将曲江大河道路有效路面由原来的5.5米扩建至12米来进行提升改造，并进行配套设施建设，以实际行动增进民生福祉。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYzv1YyK90T4QAgQu2dYKfrmvF7L2Pg5fsYbCGejHYGYARfLFDxqGfBQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYl5j5sA7HbiamhNcWaudKjbiaxjiaYAaRtgOZokmCE7ooicwXdyObfb6qbw/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n如今，走在曲江大河河滨大道上，柏油马路平坦宽敞，人行道上绿树成荫、花团锦簇，一盏盏太阳能路灯排列整齐，运送蔬菜的各种车辆来往穿梭。昔日的扬尘路、颠簸路成为了历史，变成了一条通向幸福美好生活的“民心路、致富路”。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYDyGwQG60lTjNVt9QZo3azQUjNHbPRbiaOwNlPAczRS4bLoBkXWneSEg/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBY8YicAyFKuzZL7CXc2EdcCkn4gyDNnaJkBVTwG1E5NwxGBtCCbzc4paA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n经常驾车出行的欧营村村民周全说“这条路没修之前，下雨就坑坑洼洼，不好走。现在路修好了，不扬灰了，出行方便了，老百姓卖菜路上也不堵车了，百姓的安全出行得到保障，下午休闲娱乐的地方也有了。”  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYfYoQn61NhCCcaVicscLfLyhLk3KH2ZS659GJCW0V9BYbZnYEp9lVY8Q/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYgWZjqjhESrSHVzOMHGL5rPiaNu43KpbcGXDG8HICru2toPcXW3Oj0Hw/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n同时，曲江大河河滨大道也是曲江镇第二届“多彩曲江·美丽乡村”文化节半程马拉松比赛赛道。为确保赛事的按时举办，施工建设方克服重重困难，垫付项目资金，加快推进项目建设，并在文化节开幕前完成了路面的铺筑工作，确保了赛事的成功举办。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNMatm72B4llt9qoC5wHpJBYZdwLeoU8pbxqcsHeBerGQIXQO2uhGY5AXibjz6OhibEPEiaTIqEib2aoQA/640?wx_fmt=png&from=appmsg)\n\n  \n\n乡村公路既是连接城乡的纽带，更是乡村振兴的基础，是乡村地区覆盖范围最广、服务人口最多、公益性最强的交通基础设施。近年来，建水县大力开展通村道路硬化工程，推进乡村公路主路网建设，认真落实“30户以上自然村通村硬化”建设要求，结合全县自然村道路实际情况，投资1.6亿元，推进全县8个乡镇47个自然村进村道路项目建设。项目采用EPC设计施工总承包的方式进行建设，建设里程136.526公里。通过各参建单位的不懈努力，目前完成路基工程39条，路面铺装工程11.1公里，累计完成投资约6020万元。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYnNLWjMOcI7jytoVX9RUHwicKpZnj5E1viauicgZ9GiccnwQKcV0KFBl6xg/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYia0WUz2Dyib8ShQvlem8m3s75HDuvibickQBco2Z8tFO64pppy6x3v0JUg/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n建水县交通运输局副局长吴永俊表示，30户以上自然村同村道路硬化是群众的所需所盼，也是建水县交通运输局当前的主要任务之一。首先，结合项目实际建设情况，多次组织设计单位对设计内容进行了认真的分析研究，优化调整了设计方案，为项目顺利实施提供了设计支持。其次，做好了项目资金的筹集，积极地支持承建单位做好项目建设资金的筹集，为项目建设提供资金支持，并且强化项目建设的质量和安全监管，确保项目按质按量的完成。在县委、县政府的坚强领导下，在项目所在地乡镇党委的大力支持下，建水县交通运输局有信心切实完成好群众对交通出行的所期所盼。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYtkVRNssCMhTq0ezpnicpBVVlMz4ATJ5XSeJYqwSOjaVtny81gGfktUA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBY0T7Ctic7iamYTGhM7eTnSQBxGclRlSc03JyqEHFlnbseeYia7O89UGApg/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n下一步，建水县将继续扎实开展通村公路建设工作，建立完善统分结合、分级负责的农村公路建设推进机制，积极与承建单位认真开展研究，详细评估承建单位的履行合同情况和垫资能力，做好项目沿线群众的引导工作，打造乡村振兴“新引擎”，助力乡村振兴全面提速。让蜿蜒交织的美丽公路，连通千家万户，串起乡村与城市，通向幸福与美好的未来。  \n\n  \n\n记者：赵继兵 张诗晗 \n\n编辑：张诗晗 \n\n审核：陶咏梅\n\n法律顾问：云南毛荣芳律师事务所 毛荣芳律师 13808775229\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOsFhqaIh9RticlHrC0m4pRaOb5LU6r4109MiaI9usIPiaFPhkCos0NucKaTpv5RfDbumVblPJPdvS4A/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOf969xBibjOgY7B72BzXUjttwOB31yib9tnZOjTgiaOcHVISzQVQDq9Mp0ibCuYvEfrsN7VF0iaYCQs2Q/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOGtYrKHvEhlYNzSD59NGjbKLVE5dTj8yTGtGyibKhNceiaibC9NBicXpSyiaviaBNc1q2EvKoffGMSrkDg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)  \n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWiaeyKwdxm7jFK5mpnLTiaBc2m0xjiaibl3BNNJZFEBcicp1MGFPR5bL7ZlmPPbjfQ4z2P8abnwrtTX3UQ/640?wx_fmt=gif&tp=webp&wxfrom=5&wx_lazy=1)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNMec31M4gv0avWq3D6MYkZOyLcj5EibchXQfLibLOZMOK0nbvRQzObzsynQRXaVJspOndaqhvV9RDbQ/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNMec31M4gv0avWq3D6MYkZOibfKARHNVyzl7buTCLp8fKRdlUamQt4nuiadyCfDhPq4j2aXUSzlm6Lg/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n本文转自 [https://mp.weixin.qq.com/s/S9mN8fq3\\_\\_kVPkj9e7-2Dw](https://mp.weixin.qq.com/s/S9mN8fq3__kVPkj9e7-2Dw)，如有侵权，请联系删除。','2024-08-14 15:28:14.473905','2024-08-14 15:28:14.473938',1,1,0,1,1,1,'建水县融媒体中心',' 古城建水','https://mp.weixin.qq.com/s/S9mN8fq3__kVPkj9e7-2Dw',4),(2,'文化中国行丨让红河记忆在“留旧”中“呈新”','为反映新时代人民群众高品质文化生活和美好精神追求，挖掘中华优秀文化，报道各地各部门推动文化传承发展的生动实践和创新经验','**![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNtyIeticHQv0ApYjhprpBfmh6W8qeDkYJbdde9LDHYIb0Y2amBKCMYXgTg01R2byOjSBBsL0lF1lg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)**\n\n乡村振兴，道路先行。近年来，建水县聚焦群众所急所盼，把“30户以上自然村通村道路硬化”建设作为推动乡村振兴的有力抓手，加快自然村道路硬化建设工作，让昔日村民的“烦心路”变身成“幸福路”，让乡村振兴愿景成为村民看得见、摸得着的真实福祉。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYWosfibfoTE2OYaJ23csD21jPryiaicPgErN38GrnuC3wfZthLeBib1spfA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n曲江镇曲江大河沿线有龙街、闫家坡、桥头等3个村委会，村民的出行和蔬菜运输都要依靠大河两旁的道路通行。但随着大河两岸来往的人流、车流不断增加，时常出现堵车的问题，扩宽道路成为了群众盼望已久的心头事。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYzLqULuQUF93ibcoPHvpG54GDIIuSeYNa6bsg6NRbY53zgwDycOERZTw/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYWjEQUxgiayVeTknZ5sjqLO9cnq80ACibPI96YRPP1odydonhFroqlPZg/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n为进一步改善群众的道路交通出行问题，提升群众的幸福指数，自2022年以来，建水县交通运输局与曲江镇党委政府通力合作，扎实推进曲江大河道路改造升级工程，将曲江大河道路有效路面由原来的5.5米扩建至12米来进行提升改造，并进行配套设施建设，以实际行动增进民生福祉。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYzv1YyK90T4QAgQu2dYKfrmvF7L2Pg5fsYbCGejHYGYARfLFDxqGfBQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYl5j5sA7HbiamhNcWaudKjbiaxjiaYAaRtgOZokmCE7ooicwXdyObfb6qbw/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n如今，走在曲江大河河滨大道上，柏油马路平坦宽敞，人行道上绿树成荫、花团锦簇，一盏盏太阳能路灯排列整齐，运送蔬菜的各种车辆来往穿梭。昔日的扬尘路、颠簸路成为了历史，变成了一条通向幸福美好生活的“民心路、致富路”。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYDyGwQG60lTjNVt9QZo3azQUjNHbPRbiaOwNlPAczRS4bLoBkXWneSEg/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBY8YicAyFKuzZL7CXc2EdcCkn4gyDNnaJkBVTwG1E5NwxGBtCCbzc4paA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n经常驾车出行的欧营村村民周全说“这条路没修之前，下雨就坑坑洼洼，不好走。现在路修好了，不扬灰了，出行方便了，老百姓卖菜路上也不堵车了，百姓的安全出行得到保障，下午休闲娱乐的地方也有了。”  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYfYoQn61NhCCcaVicscLfLyhLk3KH2ZS659GJCW0V9BYbZnYEp9lVY8Q/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYgWZjqjhESrSHVzOMHGL5rPiaNu43KpbcGXDG8HICru2toPcXW3Oj0Hw/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n同时，曲江大河河滨大道也是曲江镇第二届“多彩曲江·美丽乡村”文化节半程马拉松比赛赛道。为确保赛事的按时举办，施工建设方克服重重困难，垫付项目资金，加快推进项目建设，并在文化节开幕前完成了路面的铺筑工作，确保了赛事的成功举办。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNMatm72B4llt9qoC5wHpJBYZdwLeoU8pbxqcsHeBerGQIXQO2uhGY5AXibjz6OhibEPEiaTIqEib2aoQA/640?wx_fmt=png&from=appmsg)\n\n  \n\n乡村公路既是连接城乡的纽带，更是乡村振兴的基础，是乡村地区覆盖范围最广、服务人口最多、公益性最强的交通基础设施。近年来，建水县大力开展通村道路硬化工程，推进乡村公路主路网建设，认真落实“30户以上自然村通村硬化”建设要求，结合全县自然村道路实际情况，投资1.6亿元，推进全县8个乡镇47个自然村进村道路项目建设。项目采用EPC设计施工总承包的方式进行建设，建设里程136.526公里。通过各参建单位的不懈努力，目前完成路基工程39条，路面铺装工程11.1公里，累计完成投资约6020万元。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYnNLWjMOcI7jytoVX9RUHwicKpZnj5E1viauicgZ9GiccnwQKcV0KFBl6xg/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYia0WUz2Dyib8ShQvlem8m3s75HDuvibickQBco2Z8tFO64pppy6x3v0JUg/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n建水县交通运输局副局长吴永俊表示，30户以上自然村同村道路硬化是群众的所需所盼，也是建水县交通运输局当前的主要任务之一。首先，结合项目实际建设情况，多次组织设计单位对设计内容进行了认真的分析研究，优化调整了设计方案，为项目顺利实施提供了设计支持。其次，做好了项目资金的筹集，积极地支持承建单位做好项目建设资金的筹集，为项目建设提供资金支持，并且强化项目建设的质量和安全监管，确保项目按质按量的完成。在县委、县政府的坚强领导下，在项目所在地乡镇党委的大力支持下，建水县交通运输局有信心切实完成好群众对交通出行的所期所盼。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBYtkVRNssCMhTq0ezpnicpBVVlMz4ATJ5XSeJYqwSOjaVtny81gGfktUA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMatm72B4llt9qoC5wHpJBY0T7Ctic7iamYTGhM7eTnSQBxGclRlSc03JyqEHFlnbseeYia7O89UGApg/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n下一步，建水县将继续扎实开展通村公路建设工作，建立完善统分结合、分级负责的农村公路建设推进机制，积极与承建单位认真开展研究，详细评估承建单位的履行合同情况和垫资能力，做好项目沿线群众的引导工作，打造乡村振兴“新引擎”，助力乡村振兴全面提速。让蜿蜒交织的美丽公路，连通千家万户，串起乡村与城市，通向幸福与美好的未来。  \n\n  \n\n记者：赵继兵 张诗晗 \n\n编辑：张诗晗 \n\n审核：陶咏梅\n\n法律顾问：云南毛荣芳律师事务所 毛荣芳律师 13808775229\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOsFhqaIh9RticlHrC0m4pRaOb5LU6r4109MiaI9usIPiaFPhkCos0NucKaTpv5RfDbumVblPJPdvS4A/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOf969xBibjOgY7B72BzXUjttwOB31yib9tnZOjTgiaOcHVISzQVQDq9Mp0ibCuYvEfrsN7VF0iaYCQs2Q/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOGtYrKHvEhlYNzSD59NGjbKLVE5dTj8yTGtGyibKhNceiaibC9NBicXpSyiaviaBNc1q2EvKoffGMSrkDg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)  \n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWiaeyKwdxm7jFK5mpnLTiaBc2m0xjiaibl3BNNJZFEBcicp1MGFPR5bL7ZlmPPbjfQ4z2P8abnwrtTX3UQ/640?wx_fmt=gif&tp=webp&wxfrom=5&wx_lazy=1)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNMec31M4gv0avWq3D6MYkZOyLcj5EibchXQfLibLOZMOK0nbvRQzObzsynQRXaVJspOndaqhvV9RDbQ/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNMec31M4gv0avWq3D6MYkZOibfKARHNVyzl7buTCLp8fKRdlUamQt4nuiadyCfDhPq4j2aXUSzlm6Lg/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n本文转自 [https://mp.weixin.qq.com/s/S9mN8fq3\\_\\_kVPkj9e7-2Dw](https://mp.weixin.qq.com/s/S9mN8fq3__kVPkj9e7-2Dw)，如有侵权，请联系删除。','2024-08-14 15:37:13.916292','2024-08-14 15:37:13.916331',1,1,0,0,0,1,'古城建水','古城建水','https://mp.weixin.qq.com/s/S9mN8fq3__kVPkj9e7-2Dw',4),(3,'双龙桥周边道路实行交通管制','我县将于8月10日在双龙桥稻田公园举办文艺活动，为确保活动顺利进行和周边交通安全，届时交警部门将对双龙桥稻田公园周边道路进行交通管制。','****![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNtyIeticHQv0ApYjhprpBfmh6W8qeDkYJbdde9LDHYIb0Y2amBKCMYXgTg01R2byOjSBBsL0lF1lg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)****\n\n我县将于8月10日在双龙桥稻田公园举办文艺活动，为确保活动顺利进行和周边交通安全，届时交警部门将对双龙桥稻田公园周边道路进行交通管制。\n\n**一、管制时间**\n\n**2024年8月10日8时至24时**\n\n**二、管制区域**\n\n紫陶大道与老323线信号灯路口至323线与张家营水厂路口，紫陶大道延长线与白团公路信号灯路口，西至双龙食府与白团公路交叉口。\n\n![](https://mmbiz.qpic.cn/mmbiz_png/HibKAkyjlSic68LRQgd8Gia5lcbIaTIZtgmywdp5v0597G05v0ibK9NvlkveyiaNLhyic1Q2OOBZqiakJyPFnKv8dWdibQ/640?wx_fmt=png)\n\n 标红的点和道路为管制路段  \n\n双龙桥稻田公园周边道路视交通流量进行交通管制，管制期间将限制公交以外的所有机动车、非机动车通行。\n\n**三、公交车接驳点**\n\n城区公交车接驳点为：建水县花鸟文化综合市场内\n\n![](https://mmbiz.qpic.cn/mmbiz_png/HibKAkyjlSic68LRQgd8Gia5lcbIaTIZtgmBk8ibibL1rgpmylyUslwvppWb63icEVUtr4vgEW55iaBqOkXlnGDXFKMicA/640?wx_fmt=png)\n\n![](https://mmbiz.qpic.cn/mmbiz_jpg/HibKAkyjlSic68LRQgd8Gia5lcbIaTIZtgmSt6icGYIz7AansoHGRUIe9DOGp56BSyCJc93XpCPqgiaViapmhmd8fVVw/640?wx_fmt=jpeg)\n\n前往游玩的群众，可将车辆停放至建水县花鸟文化综合市场内，换乘专线公交车前往双龙桥，周六（8月10日）当天8时至24时，该专线线路公交车免费乘坐。  \n\n管制期间，双龙桥周边道路两侧禁止停放车辆，请广大市民和机动车驾驶人提前安排好出行路线，服从现场交警指挥。\n\n  \n\n特此通告。\n\n建水县公安局交警大队\n\n2024年8月6日\n\n来源：建水交警\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOsFhqaIh9RticlHrC0m4pRaOb5LU6r4109MiaI9usIPiaFPhkCos0NucKaTpv5RfDbumVblPJPdvS4A/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOf969xBibjOgY7B72BzXUjttwOB31yib9tnZOjTgiaOcHVISzQVQDq9Mp0ibCuYvEfrsN7VF0iaYCQs2Q/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOGtYrKHvEhlYNzSD59NGjbKLVE5dTj8yTGtGyibKhNceiaibC9NBicXpSyiaviaBNc1q2EvKoffGMSrkDg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)  \n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWiaeyKwdxm7jFK5mpnLTiaBc2m0xjiaibl3BNNJZFEBcicp1MGFPR5bL7ZlmPPbjfQ4z2P8abnwrtTX3UQ/640?wx_fmt=gif&tp=webp&wxfrom=5&wx_lazy=1)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNMec31M4gv0avWq3D6MYkZOyLcj5EibchXQfLibLOZMOK0nbvRQzObzsynQRXaVJspOndaqhvV9RDbQ/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNMec31M4gv0avWq3D6MYkZOibfKARHNVyzl7buTCLp8fKRdlUamQt4nuiadyCfDhPq4j2aXUSzlm6Lg/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n  \n\n本文转自 [https://mp.weixin.qq.com/s/pU\\_j9COXjHcSXr9lTk9wXw](https://mp.weixin.qq.com/s/pU_j9COXjHcSXr9lTk9wXw)，如有侵权，请联系删除。','2024-08-14 15:38:49.905269','2024-08-14 15:38:49.905303',1,1,0,0,0,1,'古城建水','古城建水','https://mp.weixin.qq.com/s/pU_j9COXjHcSXr9lTk9wXw',4),(4,'今日立秋','今天是2024年8月7日\n\n星期三（农历七月初四）\n\n小古君邀您一起\n\n新闻速览60秒\n\n每天悦读天下事','![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNtyIeticHQv0ApYjhprpBfmh6W8qeDkYJbdde9LDHYIb0Y2amBKCMYXgTg01R2byOjSBBsL0lF1lg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n  \n\n今天是2024年8月7日\n\n星期三（农历七月初四）\n\n小古君邀您一起\n\n新闻速览60秒\n\n每天悦读天下事\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAGwjf2tBicA05XR06qgia9pEPy8SNXHbfMbgkVBKJ6CEpPvvR7bMWj0Iw/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNNpVqWjjUXORKO88gvokMCNw3r35IibwtkP76AGEjAe6xKF9u2IIhtjlT0k1BlriazRnVNRJXfrkRgw/640?wx_fmt=png&from=appmsg&wx_)\n\n**今日立秋**\n\n今天，我们迎来秋天的第一个节气——立秋。不过，立秋虽然到了，但还尚处于“三伏天”期间，暑气一时难以消散气温降低仍需时日。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/xrFYciaHL08BRV2TVDDugNgx08dIE9zI95bNOWsSM8rypbxJCC6mic1Legl4iaMRSgpcIujvlrLJMict1sRSfI36TA/640?wx_fmt=jpeg&from=appmsg&wx_)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNNpVqWjjUXORKO88gvokMCNnTjMUibOEZKQgic5A3dEjIjVfOnmicEu507U71NIayw8AF78ldypakklw/640?wx_fmt=png&from=appmsg&wx_)\n\n**建水法院发出“关爱未成年人提示”**\n\n近日，在建水县人民法院的家事法庭，法官向达成离婚调解协议的当事人发出《关爱未成年人提示书》，提示双方应当履行好父母对未成年子女的抚养、教育、保护义务，关心关爱子女身心健康。\n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_jpg/XiaCqLEibzD08THary2JbllNTW9zAalrHsNiaKicSVpFs8iaqpmdr33XApnicpDtovR7TG7JDkibkKXBjO2xsg1Jepicmw/640?wx_fmt=jpeg&wx_)\n\n  \n\n**建水县举办艾滋病快速检测实验室人员技术培训**\n\n近日，建水县举办艾滋病快速检测实验室人员技术培训。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNN9riaI4mn1KPKFibxqedhxjARfF8G8mcExfQNiclRudc3bDH9OkOgjtm07Oy1phJbMRo2UXCjvNdibXQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n通过此次培训，医务人员熟悉了艾滋病实验室检测相关知识，掌握了相关理论知识和专业技能，规范了艾滋病检测工作流程，增强了艾滋病快速检测服务能力。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNNpVqWjjUXORKO88gvokMCNgibmQBdnNngtmJVmDriaFia6mQ233uFa9F0C6uH5l0qvicMzicHfaJQZib8Q/640?wx_fmt=png&from=appmsg&wx_)\n\n  \n\n**昆明公积金最新通知！**\n\n云南昆明印发通知，生育二孩、三孩的家庭购买首套自住住房，满足住房公积金贷款条件的，住房公积金贷款最高额度分别上浮20%、30%。\n\n  \n\n**吉祥物“蜀宝”“锦仔”亮相**\n\n第12届世界运动会口号“运动无限，气象万千”在京发布，吉祥物“蜀宝”“锦仔”亮相。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/xrFYciaHL08Ba9WKaFYGoPWFia76NlvicjrsBnT0eRUDw8AF7zR7HgXzaJ4tWCccBOcLJuy0k3gvMLsAPyia5Z6pGw/640?wx_fmt=png&from=appmsg&wx_)\n\n  \n\n**75人被抓！追赃153.83万元！**\n\n厦门警方“全链条”打掉一个在电商平台利用恶意刷单来骗取佣金的诈骗团伙，共抓获犯罪嫌疑人75名，追回赃款153.83万。\n\n  \n\n**日本樱岛火山喷发，烟柱高达3000米**\n\n日本广播协会（NHK）报道，当地时间8月6日0时37分许，位于日本鹿儿岛市的樱岛火山喷发，从南岳火山口喷出的烟柱最高达3000米。伴随此次喷发，大量巨石从火山口飞出约1300米到1700米左右。同时，喷出的烟尘往西南方向飘散，福冈管区气象台呼吁附近民众注意火山灰沉降。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAdBl9T7YNEGGEvUhp6eyPwH1XibrEdegjdBy5HoBvOd6diadgPNHEY6ibw/640?wx_fmt=png&from=appmsg)\n\n**每天带您了解一个建水地名！**\n\n建水县融媒体中心与建水县民政局联合推出“识地名”专栏，小古君每天带您了解一个建水地名。今天为您介绍的是“临安镇扎营山”。\n\n  \n\n临安镇扎营山位于临安镇庄子河村民委员会东面。以清代在此驻扎兵营得名。呈锥形，海拔1474米。东至石塘山，南至大扁山，西至庄子河，北至东山。土石山，土质为红壤，植被较少，为灌木林。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNNpVqWjjUXORKO88gvokMCNBTwvAAsw0XhqdCia81CUHDmBeiaZVs8O32yBpia1jGniamLz4Bic3xuzvXA/640?wx_fmt=png&from=appmsg&wx_)\n\n预计建水县8月7日受偏南气流影响，多云间晴，偏南风1级。8—9日晴间多云有分散阵雨。各乡镇预报如下：  \n\n  \n\n临安镇，多云间晴，19—29℃  \n\n曲江镇，多云间晴，19—30℃  \n\n南庄镇，多云间晴，19—30℃  \n\n西庄镇，多云间晴，19—30℃  \n\n官厅镇，多云间晴，18—27℃  \n\n面甸镇，多云间晴，19—31℃  \n\n青龙镇，多云间晴，19—30℃  \n\n岔科镇，多云间晴，19—31℃  \n\n普雄乡，多云间晴，15—25℃  \n\n坡头乡，多云间晴，17—26℃  \n\n李浩寨，多云间晴，17—28℃  \n\n盘江乡，多云间晴，20—33℃  \n\n利民乡，多云间晴，17—26℃  \n\n甸尾乡，多云间晴，18—29℃  \n\n  \n\n注：以上预报时限为当日20时至次日20时。\n\n  \n\n欢迎大家在评论区分享\n\n#您与古城建水的故事#\n\n我们帮您上头条！\n\n相伴同行，一起向未来❤️\n\n  \n\n  \n\n来源：人民日报、新华社、云南网建水县人民法院、建水县卫生健康局、建水县气象局等\n\n海报：罗淇 张腊\n\n编辑：赵一锦\n\n审核：陶咏梅\n\n法律顾问：云南毛荣芳律师事务所 毛荣芳律师 13808775229\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOsFhqaIh9RticlHrC0m4pRauAz2KcbN73UQibtyGVcEYazIaPbGx3dTTwAzdENElfLr8bfgDqteXoA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOf969xBibjOgY7B72BzXUjtQYY89poYVxLfuaVLUnt0qaTbdUZLWhnb2J0ic2Q1o1hp5no8bPBy1KA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOGtYrKHvEhlYNzSD59NGjbKLVE5dTj8yTGtGyibKhNceiaibC9NBicXpSyiaviaBNc1q2EvKoffGMSrkDg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWiaeyKwdxm7jFK5mpnLTiaBc2m0xjiaibl3BNNJZFEBcicp1MGFPR5bL7ZlmPPbjfQ4z2P8abnwrtTX3UQ/640?wx_fmt=gif)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAkQ18gSEnMmAibF1iaEbDgPngQ8aG1BFLcI9BQFsVPeKjccreYtw0saSQ/640?wx_fmt=png&from=appmsg)  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjANm4ibQxia61kiaCvPkIcMmvLpTWN9AqF3oKn1KlVz4LaNRaPdP53Ngb0A/640?wx_fmt=png&from=appmsg)\n\n  \n\n本文转自 [https://mp.weixin.qq.com/s/Xr5Q8EEi9BYSwsZYsfAZqg](https://mp.weixin.qq.com/s/Xr5Q8EEi9BYSwsZYsfAZqg)，如有侵权，请联系删除。','2024-08-14 15:40:15.037135','2024-08-14 15:40:15.037172',1,1,0,1,1,1,'古城建水','古城建水','https://mp.weixin.qq.com/s/Xr5Q8EEi9BYSwsZYsfAZqg',4),(5,'高温天，切勿让这些物品成为“车载炸弹”！','炎炎夏日，暴晒后的车辆犹如蒸笼，车内放置的物品也在经受“烤”验，随时可能成为“车载炸弹”。作为夏日“标配”的防晒喷雾、防蚊水就暗藏“杀机”，稍有不慎，就会“引火上身”。','![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNtyIeticHQv0ApYjhprpBfmh6W8qeDkYJbdde9LDHYIb0Y2amBKCMYXgTg01R2byOjSBBsL0lF1lg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)  \n\n  \n\n  \n\n炎炎夏日，暴晒后的车辆犹如蒸笼，**车内放置的物品也在经受“烤”验，随时可能成为“车载炸弹”。**作为夏日“标配”的防晒喷雾、防蚊水就暗藏“杀机”，稍有不慎，就会“引火上身”。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/tFtpeXHpyPGV3ulJrWYHnj3ialeTr2p7ch4BbhmibWQhRSE9Mp8jOZLo7TU47wR16sBSPJibOicvXE9LQG0zOkomcw/640?wx_fmt=jpeg)\n\n图片源自网络\n\n  \n\n近日，消防人员做了几组实验，告诉你这些物品放在车内的风险有多大。\n\n  \n\n**0****1**\n\n**暴晒后车内温度接近70℃**\n\n  \n\n实验现场，消防员用热成像仪对地面测量时，显示温度在52℃左右，黑色车辆外部温度达到70℃左右，打开车门后，发现经过短时间的暴晒，车内温度已经达到69℃。\n\n  \n\n**消防提醒：****家长切勿将孩子单独留在车内，高温下，车内迅速升温，儿童易中暑、脱水甚至危及生命。**\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_gif/Bcnwtg51vpVoKupahl1iavkItUibGGkc9EldSM4F2JT5f4Zxu3nnLS3bQgmLAwf7pficCEoC98iczReXGSQ1eQQUTg/640?wx_fmt=gif&from=appmsg)\n\n短时间暴晒后车内温度达69℃\n\n（央广网发 南京消防供图）\n\n  \n\n**02**\n\n**打火机摆放在前挡风玻璃下**\n\n  \n\n实验现场，消防员将2个打火机摆放在前挡风玻璃下，一直被阳光强烈照射，仅仅12分钟后，其中1个打火机发生了膨胀爆炸。\n\n  \n\n**消防提醒：****不在车内放置打火机、充电宝、罐装喷雾、香水等受热易发生爆炸的物品，防止受到高温暴晒发生爆炸从而引起火灾。**\n\n  \n\n**03**\n\n**防晒喷雾遇明火**\n\n  \n\n实验现场，消防员点燃打火机，再拿起一款防晒喷雾，对着空中进行喷洒，防晒喷雾靠近明火时，瞬间变成了“喷火枪”。\n\n  \n\n**消防提醒：****防晒喷雾里含有易燃物质，具有一定的挥发性，使用时要多加注意，避开火源。**\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_gif/Bcnwtg51vpVoKupahl1iavkItUibGGkc9EO9jLeYz5TeFZV8Dc1wecJbjEr5J6utzQeiauMsNw9EAcP7CHEiaYrPhw/640?wx_fmt=gif&from=appmsg)\n\n防晒喷雾遇明火易燃\n\n（央广网发 南京消防供图）\n\n  \n\n**04**\n\n**防蚊水遇明火**\n\n  \n\n实验现场，消防员将防蚊水倒在碗里，随后使用打火机成功将其点燃，防蚊水迅速燃烧。  \n\n  \n\n**消防提醒：****防蚊水中含有变性乙醇、丁烷、异丁烷等可燃物，遇到明火便会燃烧，喷洒涂抹皮肤后不要立刻靠近明火或进入厨房，以免防蚊水未挥发引发意外。**\n\n  \n\n  \n\n  \n\n**消防表示**\n\n  \n\n  \n\n像打火机等能够因太阳照射引发火灾的物品不要放置在车内，也不要将儿童单独留在车内，使用防晒喷雾、防蚊水时一定要远离火源，大家日常使用这些物品时需要提高警惕。\n\n  \n\n来源：央广网、南京消防、云南疾控\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAevrIxOCkCTFRkvQ5TBzyJlE84zCYeaYfJgaerHt4TrlxoGibCMHz0zQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOsFhqaIh9RticlHrC0m4pRauAz2KcbN73UQibtyGVcEYazIaPbGx3dTTwAzdENElfLr8bfgDqteXoA/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOf969xBibjOgY7B72BzXUjtQYY89poYVxLfuaVLUnt0qaTbdUZLWhnb2J0ic2Q1o1hp5no8bPBy1KA/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOGtYrKHvEhlYNzSD59NGjbKLVE5dTj8yTGtGyibKhNceiaibC9NBicXpSyiaviaBNc1q2EvKoffGMSrkDg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWiaeyKwdxm7jFK5mpnLTiaBc2m0xjiaibl3BNNJZFEBcicp1MGFPR5bL7ZlmPPbjfQ4z2P8abnwrtTX3UQ/640?wx_fmt=gif&tp=webp&wxfrom=5&wx_lazy=1)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAkQ18gSEnMmAibF1iaEbDgPngQ8aG1BFLcI9BQFsVPeKjccreYtw0saSQ/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjANm4ibQxia61kiaCvPkIcMmvLpTWN9AqF3oKn1KlVz4LaNRaPdP53Ngb0A/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n  \n\n本文转自 [https://mp.weixin.qq.com/s/ZV-kHcinkDLDlqXy94WzEg](https://mp.weixin.qq.com/s/ZV-kHcinkDLDlqXy94WzEg)，如有侵权，请联系删除。','2024-08-14 15:41:21.044223','2024-08-14 15:41:21.044257',1,1,0,0,1,1,'古城建水','古城建水','https://mp.weixin.qq.com/s/ZV-kHcinkDLDlqXy94WzEg',3),(6,'非遗传承人黄倩：用互联网“拥抱”建水紫陶','建水县积极寻求紫陶产业发展之路，抢抓直播经济发展机遇，以电商平台拓展紫陶销售渠道，助力紫陶产业蓬勃发展。\n\n\n\n在建水，就有一位名叫黄倩的90后建水紫陶非遗传承人，她用情怀碰撞五色泥，用互联网“拥抱”建水紫陶。','![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNtyIeticHQv0ApYjhprpBfmh6W8qeDkYJbdde9LDHYIb0Y2amBKCMYXgTg01R2byOjSBBsL0lF1lg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n近年来，建水县积极寻求紫陶产业发展之路，抢抓直播经济发展机遇，以电商平台拓展紫陶销售渠道，助力紫陶产业蓬勃发展。\n\n  \n\n在建水，就有一位名叫黄倩的90后建水紫陶非遗传承人，她用情怀碰撞五色泥，用互联网“拥抱”建水紫陶。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAnJ1Q0ldSG1Sue9tXNtAxcFD5WYz5BGtC0CmXfkGxZRk9JDPUJoNB7g/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAYdxq4ZtjORMicIs1b93qDKG97IVVEJ8sEs3toW9nxhWPb4Lic4icy9eQA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n碗窑村是建水紫陶的发祥地，从宋代开始，村民们就大规模地烧制陶瓷。出生于1994年的黄倩，就是土生土长的碗窑村人。黄家世代制作陶器，而黄倩已是家族的第七代传承人，2018年12月，她被认定为县级第六批非物质文化遗产项目代表性传承人。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAdabxmOWDsVotWEkF3K9cqqgZdIDgT9kzyianjqvuvzCb679AZuMaTuw/640?wx_fmt=png&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNN9riaI4mn1KPKFibxqedhxjARVrBicdyUt3tCPF2rMVTGgnmJwj23s9MTCNA8oKcf7k0gkt5oluue7A/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n据黄倩回忆，从她记事开始就跟随父母制作紫陶，年幼的她常常在父母的带领下用泥巴捏出各种各样的小动物。每当回忆起这段时光都会令她很开心，黄倩认为制陶就是她们一家独特的生活方式。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNN9riaI4mn1KPKFibxqedhxjA1S7sN43sNMCbqz1WCaCedy8mh2lOsg2Ta7UVdYaI8KKzegdLdASrKg/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNN9riaI4mn1KPKFibxqedhxjATAn6wlq1FDjHArNuj8DtN8SmPQflJp2D5Bn0xqP8eK4YkiaFzFgX41Q/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n黄倩本科就读于云南艺术学院，学业期间系统地学习并掌握了素描、色彩、造型设计、书法、手工制作等技术技巧，每逢假期就会回到家乡运用自己所学的专业知识来帮父亲打理陶坊。通过理论与实践的学习积累，毕业不久，黄倩便成立了自己的紫陶工作室。黄倩工作室于2017年创立，创立初衷是想要创作出迎合现代审美和当下生活的紫陶作品，让这种非遗真正“活”在生活当中。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNN9riaI4mn1KPKFibxqedhxjA144ibyCaHcjBibWa2cr5vX6JEYlqs5iblKP9jneibHianMtpYPGrDBmlWnQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n黄倩作为建水陶艺界较为年轻的非遗传承人，她认为，不能像祖辈一样只做紫陶生产，而是要紧跟时代脉搏，通过电商直播在宣传推介好建水紫陶传统烧制技艺的同时去了解市场需求，找到新的创新创业突破点。凭借着自己网络直播的一技之长以及紫陶文化素养，黄倩在直播间与粉丝们侃侃而谈、互动自如，不仅向大家充分展示了新一代非遗传承人的专业能力和工匠精神，更把建水紫陶这部物化的历史、活着的文化较好地展现给了更多人。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjASzSY0Wds9miaXiaFMMpGGft0ktnns4Wzy9T0jibvHyqbSEDy2Jia0icsDtw/640?wx_fmt=png&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAQkNuQNfcQ6SsZLU4VXrm9p33icMkVuDgKrWJRPkXsBX8WRujgX5snmA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n  \n\n2020年，黄倩刚开始做直播时，建水县委、县政府给了像黄倩一样的商户很多学习机会和发展平台，对他们进行系统培训，并提供政策扶持。经过四年多的努力，黄倩已经成为建水紫陶直播行业的头部主播，抖音平台的粉丝量已突破9万，抖音直播已成为黄倩解锁非遗文化创造性转化、创新性发展的有效途径。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAhZrLAaNCkZqxfEBiaKYYLKHK4vAXu3O7Y7LxCGFnO2LwBQLR593NnSw/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n黄倩团队从最初的3个人发展至今已有16个小伙伴，把有一点点紫陶基础并对电商感兴趣的小伙伴凝聚在一起，共同发光发热，让建水紫陶走向更高更远的地方，现在黄倩直播间的紫陶每月销售额稳定在60万元以上。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAbGOUU6GGCDhNnG6iaNhxibvXFkPB3OicTFl1tAicVJnGJHcFbszlJYv43g/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAAFNXqxng0QZ75PJlZUHT29ibOia6fQ3LakibiaBJz8raf4rOBIACgG3p0A/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n黄倩说，非遗铭刻着中华传统文化的“根”与“魂”。非遗要活态化传承，还得依托于非遗传承人自身的可持续发展，才能让非遗成为“遗产”的同时还能变为“财产”。非遗传承人要从手艺人的身份到非遗受益者，不仅要做好手艺的传承，更要做好文化的传承，让建水紫陶这份宝贵的文化瑰宝成为日常生活的一部分，在生活中大放光彩。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAiaZx2ZYzPNWA0R3F1R1OiamULtvXTVxaL6EH7iaOX3tRqEfiaOZtic5Z9Rw/640?wx_fmt=png&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAzn2eFnicYjLZsoaqYt2eia0leLLFV4LKEcarr0zhbgMS3yDDy9NK5xPg/640?wx_fmt=png&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAPqJLOBLphEu1RpNdBDTCdVxu721012hFsmQbFA4741hg7W8oRbFmtw/640?wx_fmt=png&from=appmsg)\n\n  \n\n保护非遗、传承非遗，不光要靠情怀和热爱，更要靠激励和回报。只有把非遗的经济价值激活，才能让更多人特别是年轻人加入到非遗传承保护的行列中来，让非遗的多重价值得到充分显现和不断放大。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNN9riaI4mn1KPKFibxqedhxjATcnpdnCic91dKJiaQiaYIge6nkYibiag5SNU4uAnKjBbiasMDOsibcZTxVSlw/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNN9riaI4mn1KPKFibxqedhxjA7uhpaGHrWCqVCKTV4SR1kJoL4ziaUlP9LMssiacqzkrAUuhqA9uaPsXg/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n当下，短视频和直播俨然成为全民文化消费与信息接受的重要介质，也成为非遗的天然传播场。在短视频、直播的助力下，非遗和生活同步。短视频和电商直播为非遗技艺做了“品牌广告”，不仅将其打动人心的美感呈现无遗，还打开了建水紫陶新的销售市场。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjACfNs4zSWq85kCxgJlnKIOaoicvYpD3QzPw7icDtbQiaaCrvpUSDiaacb1Q/640?wx_fmt=png&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAfEekN2oteFuuPzTec3NGRMWHkbHj1f2uz9ZibPicvpRGWxfFFhGFcdibA/640?wx_fmt=png&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAFFORPJiae6HrhIG1ia4ia9uobEC01ibKnDeAeyastqsTGe84XTmiaWbjt8A/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n如今在建水，像黄倩这样的创业者还有很多，电商直播不断丰富建水紫陶的业态，大大小小的创业团队正用自己手中的镜头让建水紫陶“出圈”，把紫陶作品销往全国各地，也让外界重新认识建水。\n\n  \n\n记者：王菊梅 吴俊松 宗毅  实习记者：胡雅婷\n\n实习编辑：胡雅婷\n\n审核：陶咏梅\n\n法律顾问：云南毛荣芳律师事务所 毛荣芳律师 13808775229\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAevrIxOCkCTFRkvQ5TBzyJlE84zCYeaYfJgaerHt4TrlxoGibCMHz0zQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOsFhqaIh9RticlHrC0m4pRauAz2KcbN73UQibtyGVcEYazIaPbGx3dTTwAzdENElfLr8bfgDqteXoA/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOf969xBibjOgY7B72BzXUjtQYY89poYVxLfuaVLUnt0qaTbdUZLWhnb2J0ic2Q1o1hp5no8bPBy1KA/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOGtYrKHvEhlYNzSD59NGjbKLVE5dTj8yTGtGyibKhNceiaibC9NBicXpSyiaviaBNc1q2EvKoffGMSrkDg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWiaeyKwdxm7jFK5mpnLTiaBc2m0xjiaibl3BNNJZFEBcicp1MGFPR5bL7ZlmPPbjfQ4z2P8abnwrtTX3UQ/640?wx_fmt=gif&tp=webp&wxfrom=5&wx_lazy=1)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAkQ18gSEnMmAibF1iaEbDgPngQ8aG1BFLcI9BQFsVPeKjccreYtw0saSQ/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjANm4ibQxia61kiaCvPkIcMmvLpTWN9AqF3oKn1KlVz4LaNRaPdP53Ngb0A/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n本文转自 [https://mp.weixin.qq.com/s/zJZ-jIrq4PUJ0mDIQgfiDQ](https://mp.weixin.qq.com/s/zJZ-jIrq4PUJ0mDIQgfiDQ)，如有侵权，请联系删除。','2024-08-14 15:42:29.854565','2024-08-14 15:42:29.854614',1,1,0,0,0,2,'建水县融媒体中心','古城建水','https://mp.weixin.qq.com/s/zJZ-jIrq4PUJ0mDIQgfiDQ',1),(7,'假如骗子也来直播间“带货”~','家人们，快看呀“高薪工作的机会”“轻轻松松日赚300”仅需2部手机，只需要拨打电话.....月赚万元不是梦！','![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNtyIeticHQv0ApYjhprpBfmh6W8qeDkYJbdde9LDHYIb0Y2amBKCMYXgTg01R2byOjSBBsL0lF1lg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n家人们，快看呀\n\n“高薪工作的机会”\n\n“轻轻松松日赚300”\n\n仅需2部手机，\n\n只需要拨打电话.....\n\n月赚万元不是梦！\n\n  \n\n  \n\n今天，小编为大家揭穿一种\n\n用两台手机架设“手机口”\n\n进行诈骗的作案手法\n\n  \n\n这种诈骗方式\n\n只需“兼职工具人”提供两台手机\n\n同时打开两台手机的免提功能\n\n一台拨打电话\n\n一台播放诈骗音频  \n\n实现让诈骗分子对受害人\n\n播放录音进行“洗脑”的目的\n\n???\n\n  \n\n诈骗分子通常将“手机口 ”业务\n\n包装成“高薪”兼职\n\n“高回报 一小时300元”\n\n“轻松兼职 无需经验”\n\n  \n\n这些诈骗分子招揽“工具人”的常见话术\n\n瞄准了急需用钱的网友 \n\n一旦你参与其中\n\n虽然全程没有说一句话\n\n但诈骗全过程你都是明知的\n\n这其实就是知法犯法\n\n你作为“沟通的桥梁”参与了诈骗\n\n沦为诈骗分子的“工具人”\n\n  \n\n**警方提示：** \n\n**明知他人实施电信网络诈骗犯罪**\n\n**仍帮助诈骗团伙架设呼转设备**\n\n**批量拨打诈骗电话**\n\n**或是提供手机卡、通信工具予以帮助**\n\n**无论是否获得报酬**\n\n**这些行为都涉嫌违法犯罪**\n\n**将被依法追究相应责任**\n\n来源：建水警方  \n\n  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAevrIxOCkCTFRkvQ5TBzyJlE84zCYeaYfJgaerHt4TrlxoGibCMHz0zQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOsFhqaIh9RticlHrC0m4pRauAz2KcbN73UQibtyGVcEYazIaPbGx3dTTwAzdENElfLr8bfgDqteXoA/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOf969xBibjOgY7B72BzXUjtQYY89poYVxLfuaVLUnt0qaTbdUZLWhnb2J0ic2Q1o1hp5no8bPBy1KA/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOGtYrKHvEhlYNzSD59NGjbKLVE5dTj8yTGtGyibKhNceiaibC9NBicXpSyiaviaBNc1q2EvKoffGMSrkDg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWiaeyKwdxm7jFK5mpnLTiaBc2m0xjiaibl3BNNJZFEBcicp1MGFPR5bL7ZlmPPbjfQ4z2P8abnwrtTX3UQ/640?wx_fmt=gif&tp=webp&wxfrom=5&wx_lazy=1)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAkQ18gSEnMmAibF1iaEbDgPngQ8aG1BFLcI9BQFsVPeKjccreYtw0saSQ/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjANm4ibQxia61kiaCvPkIcMmvLpTWN9AqF3oKn1KlVz4LaNRaPdP53Ngb0A/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n本文转自 [https://mp.weixin.qq.com/s/pW8m57z3-qa5qlK--x8wXw](https://mp.weixin.qq.com/s/pW8m57z3-qa5qlK--x8wXw)，如有侵权，请联系删除。','2024-08-14 15:44:04.453051','2024-08-14 15:44:04.453088',1,1,0,0,0,2,'古城建水','古城建水','https://mp.weixin.qq.com/s/pW8m57z3-qa5qlK--x8wXw',2),(8,'立秋 | 告别当夏，奔赴秋约','今日立秋，期待一场酝酿已久的成熟','![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNtyIeticHQv0ApYjhprpBfmh6W8qeDkYJbdde9LDHYIb0Y2amBKCMYXgTg01R2byOjSBBsL0lF1lg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n![](https://mmbiz.qpic.cn/mmbiz_gif/MPS72cibJRUBPPianphVqeYYIpIpT0PtUQ2F7tRC4RmuC8LX2P8y1x4H09UkAiblDoRfDWw0Jtg7GBTjzOhciaCMyQ/640?wx_fmt=gif)\n\n**立秋**\n\n夏色收\n\n秋声动\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjA1E4dt3covEBLvAjtZHs1JjsFcEwOCPMs6rnwwEe22fibHTlicwYLP6xw/640?wx_fmt=png&from=appmsg)\n\n  \n\n万物\n\n与盛夏告别\n\n美好\n\n向成熟迸发  \n\n今日立秋\n\n期待一场酝酿已久的成熟\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAcEEFTzibyyfkz649ZGxAcRjW3fGklLZbpECj0tVaChxUFVpWs4aROcA/640?wx_fmt=png&from=appmsg)  \n\n  \n\n“立”，意为开始\n\n“秋”，表示禾谷成熟\n\n立秋之后\n\n暑热寒凉交替\n\n阴阳互转\n\n自然界万物随着阳气的下沉而收敛\n\n从繁茂趋向成熟\n\n逐渐步入收获的序曲\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjA0aGTF91jLib9wvUuaMQ5Hibv5sLcXhK0LytSqib39tmvBfFqHicKe5YCbQ/640?wx_fmt=png&from=appmsg)  \n\n  \n\n立秋后\n\n暑气一时难消\n\n此时仍处于“三伏天”期间\n\n这时的暑热被戏称为“秋老虎”\n\n正如民谚所说\n\n“立秋反比大暑热，中午前后似烤火”\n\n秋天的第一个节气\n\n养生的好时机\n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWjSeu56S1Oe6loVursgxzubZItTwIhJJWpPOG59cpW6AbUSBTC4INrsaWC0pwsLiaFNWsODtrq3VcQ/640?wx_fmt=gif&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAqGj7FibBiamh1790d8FSicjGmo0fCkSXzwRzP29bfrEGiaMWEmPjp9icKKw/640?wx_fmt=png&from=appmsg)  \n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWiaVApYvfVr55A89WJmumiaQ7NNZpmAm8LlLZkDejpBg6echUtIppbrXw7CHaibqoAKmcWdicoxzYDFsg/640?wx_fmt=gif)\n\n**立秋养生正当时**\n\n![](https://mmbiz.qpic.cn/mmbiz_png/Ljib4So7yuWiaVApYvfVr55A89WJmumiaQ7Rsrm692ibef0XRIpOJwTXK49nC12xwpRSLB0Xm7LDZIovuburQpAibcQ/640?wx_fmt=png)\n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWg7QSOmy9j7k66ypFibHSrHn9ES7KJDibXz9nmQ3BM82N1ViaASkoic5fthg5QGZDXXaQZqb2BnnST1jA/640?wx_fmt=gif)\n\n**《饮膳正要》说：「秋气燥，宜食麻以润其燥，禁寒饮」**\n\n  \n\n立秋后一段时间内暑气仍盛，湿度也很大，人们会有闷热潮湿的感觉，再加上夏季因为苦夏或过食冷饮，多有脾胃功能减弱的现象，因此初秋进补宜清补而不宜过于油腻，宜食清热健脾、利湿润燥、滋阴润肺的食物，如银耳、百合、香蕉、梨等。  \n\n![](https://mmbiz.qpic.cn/mmbiz_gif/bL2iaicTYdZn7iavFfHxfE3uOGEUl2wrouFl7yM2ibqD3bib5crjPx1zTjjy5vlSwNLFceib1KGUabGppNN085LYAoww/640?wx_fmt=gif)\n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWg7QSOmy9j7k66ypFibHSrHn9ES7KJDibXz9nmQ3BM82N1ViaASkoic5fthg5QGZDXXaQZqb2BnnST1jA/640?wx_fmt=gif)\n\n**《黄帝内经》说：「早卧早起，与鸡俱兴」**\n\n  \n\n  \n\n进入立秋后，夜渐长昼日短，应增加晚上的睡眠时间，避免秋乏。早睡可以养阴气，收敛阳气，早起可以调畅肺气，符合秋季滋阴养肺的养生之道。同时，也可以通过运动增强身体的适应能力，顺应气候的变化，可以选择一些适合自己的运动，如散步、慢跑、太极拳等，既能锻炼身体，又能舒缓心情。\n\n![](https://mmbiz.qpic.cn/mmbiz_gif/bL2iaicTYdZn7iavFfHxfE3uOGEUl2wrouFl7yM2ibqD3bib5crjPx1zTjjy5vlSwNLFceib1KGUabGppNN085LYAoww/640?wx_fmt=gif)\n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWg7QSOmy9j7k66ypFibHSrHn9ES7KJDibXz9nmQ3BM82N1ViaASkoic5fthg5QGZDXXaQZqb2BnnST1jA/640?wx_fmt=gif)\n\n**昼夜温差大，防病于未然**\n\n  \n\n立秋时节，早晚温差较大，容易受凉感冒。应根据天气变化适时增减衣物，保持身体的温暖。\n\n  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjASEx4Y6FvB28Mh09NcXh4px3rdpzLh5xkzZjBVTHVictSbM8QldgNXWQ/640?wx_fmt=png&from=appmsg)\n\n  \n\n暑去凉来\n\n秋意浓\n\n一年亦已过半\n\n春种秋收\n\n应时而动\n\n愿夏天所有的遗憾\n\n都是秋天惊喜的铺垫\n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_jpg/ULhiclwUibBScKo7a4TS0vRb2ePgU1RuGX2mWguq4qgS0ZDTfbGEsGy52iaL6MsrNQbHl51xueeH0JNN5YibZNFClQ/640?wx_fmt=jpeg&from=appmsg)\n\n部分内容整理：人民网、新华网、健康中国\n\n见习编辑：李海霞\n\n审核：陶咏梅\n\n法律顾问：云南毛荣芳律师事务所 毛荣芳律师 13808775229\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAevrIxOCkCTFRkvQ5TBzyJlE84zCYeaYfJgaerHt4TrlxoGibCMHz0zQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOsFhqaIh9RticlHrC0m4pRauAz2KcbN73UQibtyGVcEYazIaPbGx3dTTwAzdENElfLr8bfgDqteXoA/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOf969xBibjOgY7B72BzXUjtQYY89poYVxLfuaVLUnt0qaTbdUZLWhnb2J0ic2Q1o1hp5no8bPBy1KA/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOGtYrKHvEhlYNzSD59NGjbKLVE5dTj8yTGtGyibKhNceiaibC9NBicXpSyiaviaBNc1q2EvKoffGMSrkDg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWiaeyKwdxm7jFK5mpnLTiaBc2m0xjiaibl3BNNJZFEBcicp1MGFPR5bL7ZlmPPbjfQ4z2P8abnwrtTX3UQ/640?wx_fmt=gif&tp=webp&wxfrom=5&wx_lazy=1)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjAkQ18gSEnMmAibF1iaEbDgPngQ8aG1BFLcI9BQFsVPeKjccreYtw0saSQ/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNN9riaI4mn1KPKFibxqedhxjANm4ibQxia61kiaCvPkIcMmvLpTWN9AqF3oKn1KlVz4LaNRaPdP53Ngb0A/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n本文转自 [https://mp.weixin.qq.com/s/7i4ie1ME5425Lkz975d-lg](https://mp.weixin.qq.com/s/7i4ie1ME5425Lkz975d-lg)，如有侵权，请联系删除。','2024-08-14 15:45:34.508904','2024-08-14 15:45:34.508939',1,1,0,0,0,2,'建水县融媒体中心','古城建水','https://mp.weixin.qq.com/s/7i4ie1ME5425Lkz975d-lg',4),(9,'红河州2024年中小学正高级教师职称申报人员名单公示','红河州2024年中小学正高级教师职称申报人员名单公示','![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNtyIeticHQv0ApYjhprpBfmh6W8qeDkYJbdde9LDHYIb0Y2amBKCMYXgTg01R2byOjSBBsL0lF1lg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n今天是2024年8月13日\n\n星期二（农历七月初十）\n\n小古君邀您一起\n\n新闻速览60秒\n\n每天悦读天下事\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyoWvcpA6a8a43JFRjvpN6H0H2uWFic9RBq5RxhDjo7yLib1ST8yVQjAVA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNNpVqWjjUXORKO88gvokMCNw3r35IibwtkP76AGEjAe6xKF9u2IIhtjlT0k1BlriazRnVNRJXfrkRgw/640?wx_fmt=png&from=appmsg&wx_)\n\n****红河州2024年中小学正高级教师职称申报人员名单公示****\n\n**红河州2024年中小学正高级教师职称申报人员名单公示**\n\n  \n\n根据《云南省教育厅关于做好2024年度中小学正高级教师职称评审工作的通知》要求，现将2024年申报中小学正高级教师职称36名人员名单予以公示，公示期为2024年8月12日-16日（节假日除外）。\n\n公示期间，对申报人员存在弄虚作假等不符合申报情形，可向州纪委州监察委派驻州教育体育局纪检监察组或红河州教育体育局人事科反映。\n\n联系电话：\n\n州纪委州监察委派驻纪检监察组：3745024\n\n州教育体育局人事科：3732149、3732150\n\n  \n\n附件：红河州2024年申报中小学正高级教师职称人员名单\n\n![](https://mmbiz.qpic.cn/mmbiz_jpg/LfjEUQ4fJ4gLXhzVcZyjibXOeqgDL0zRGDJw0gzVnvqZLjxp3QMgAqPiaKjX0NdMDHo39X3EJpX5foMvapXIbEKQ/640?wx_fmt=jpeg&from=appmsg&wxfrom=13&tp=wxpic)\n\n![](https://mmbiz.qpic.cn/mmbiz_jpg/LfjEUQ4fJ4gLXhzVcZyjibXOeqgDL0zRGx02AcHTYSHvUUHYVBn67DjuzT4anUDnmtkqLL05jZhCEianp6ICUgKQ/640?wx_fmt=jpeg&from=appmsg&tp=wxpic&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n红河州教育体育局\n\n2024年8月12日\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNNpVqWjjUXORKO88gvokMCNnTjMUibOEZKQgic5A3dEjIjVfOnmicEu507U71NIayw8AF78ldypakklw/640?wx_fmt=png&from=appmsg&wx_)\n\n**这群小朋友们的暑假，有不一样的过“法”**\n\n为丰富未成年人的暑期生活，拓展法治教育新途径，近日，建水县人民法院举办“童心筑梦 法护成长”法治夏令营活动。85名小朋友伴着晨光迈入建水法院的大门，激动之余他们满是好奇，稚嫩的话语和笑声，给庄重威严的审判机关带来了浓浓的青春与活力。  \n\n  \n\n追光而行，明法于心；司法守护，少年逐梦。建水法院将不断创新普法形式，积极开展“法治夏令营”“开学第一课”“法治副校长”等普法活动，线上线下普及未成年人保护、校园欺凌、《家庭教育促进法》等法律知识，推动司法保护与家庭保护、学校保护、社会保护的有机衔接，为未成年人健康成长撑起一片朗朗晴空。\n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_jpg/XiaCqLEibzD0ibz4YSorCGVicT1xUofCwU9QgibUkmCcJFQPXmhHwGJv5LB9tF6liazoicD7SrTjzQtRQ7P1wcX1xOfhw/640?wx_fmt=jpeg&tp=wxpic&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n**建水交警开展夏夜治安巡查宣防第二次集中统一行动**\n\n为全力推进夏季治安巡查宣防纵深开展，建水交警按照上级公安机关工作部署，在8月9日至11日每晚至凌晨开展第二次夏夜治安巡查宣防集中统一行动，全面筑牢夜间道路交通安全防线。\n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_jpg/HibKAkyjlSic4uBamU0Zl1E26CrOnBic4TNvicnREVOCZ8alibmO4QN8huGaqeyJleJsbtboDp4ibc1ibhymwic2myicEkA/640?wx_fmt=jpeg&from=appmsg&tp=wxpic&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNNpVqWjjUXORKO88gvokMCNgibmQBdnNngtmJVmDriaFia6mQ233uFa9F0C6uH5l0qvicMzicHfaJQZib8Q/640?wx_fmt=png&from=appmsg&wx_)\n\n  \n\n****中国首次将收容救助野象成功放归自然****\n\n一头逛过城市的中国野象“阿宝”，被收容救助后历经数年行为矫正、野化训练，最终放归自然。目前，阿宝已回到野外近三个月，基本适应了野外生活，健康状况良好。\n\n  \n\n这是中国首次将收容救助野象成功放归自然。8月12日是世界大象日。专家认为，这对于探索将救助象野化训练后放归自然具有里程碑意义。\n\n  \n\n******破163万！磨憨边检站验放旅客已超2023年******\n\n8月12日，记者从磨憨出入境边防检查站获悉，截至8月11日，该站今年共计验放出入境旅客突破163万人次，已超过2023年全年。\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/p5SNgicTibiaCibvDS2ef4vgjIDVFfsYoFBrAPU9IrFl7iay8Y3GERnUE2Iia9GMckSL6KxszPXOWBjnDCclkM1eoyrw/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n****中国成为全球品牌咖啡店最多国家****\n\n2023年中国超过美国成为世界上品牌咖啡店最多的国家，中国人均咖啡消费量在2010年至2022年间增长了三倍。\n\n  \n\n****打造自行车赛事特色IP 茶园里也能办比赛****\n\n茶园绿意浓，骑行正酣时。“七彩云南·运动德宏”2024年云南·梁河万亩茶园自行车越野赛8月11日在云南德宏傣族景颇族自治州梁河县开赛，比赛共吸引了全国各地210余名运动员参赛。据介绍，本次比赛设置男子精英组、男子大师组、女子公开组3个组别。比赛赛道单圈长度约为6公里，贯穿茶园风光和古镇老街。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/p5SNgicTibiaCibvDS2ef4vgjIDVFfsYoFBrbaZZMmQegC1egqSC0Xoww19Eb1b37x0RER4fF87jcBguCkWvkc4vYA/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNMsy8Lhf1vSwNgTTzv9icyVqSYPFtlplv0pQOU72owRibalAftnHGw0XnoEKpeS16G863iaFwCkvlwhA/640?wx_fmt=png&from=appmsg)\n\n**每天带您了解一个建水地名！**\n\n建水县融媒体中心与建水县民政局联合推出“识地名”专栏，小古君每天带您了解一个建水地名。今天为您介绍的是“小黑山”。\n\n  \n\n小黑山位于临安镇杨家庄村民委员会东面。因山石呈黑色得名。长2千米，宽1千米，东至鸡石高速，西北至815地质队，北至牛屎坡。面积1平方千米，海拔1450米，南北走向，属明哨大山山脉，荒石山，主要为针叶林。\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNNpVqWjjUXORKO88gvokMCNBTwvAAsw0XhqdCia81CUHDmBeiaZVs8O32yBpia1jGniamLz4Bic3xuzvXA/640?wx_fmt=png&from=appmsg&wx_)\n\n预计建水县8月13日受辐合区影响，多云间阴有小雨，偏北风1级。14日阴有小到中雨，15日多云有分散阵雨。各乡镇预报如下：\n\n  \n\n临安镇，多云间阴有小雨，18—26℃\n\n曲江镇，多云间阴有小雨，19—28℃\n\n南庄镇，多云间阴有小雨，19—27℃\n\n西庄镇，多云间阴有小雨，18—28℃\n\n官厅镇，多云间阴有小雨，17—24℃\n\n面甸镇，多云间阴有小雨，19—28℃\n\n青龙镇，多云间阴有小雨，19—26℃\n\n岔科镇，多云间阴有小雨，20—27℃\n\n普雄乡，多云间阴有小雨，15—21℃\n\n坡头乡，多云间阴有小雨，17—24℃\n\n李浩寨，多云间阴有小雨，17—26℃\n\n盘江乡，多云间阴有小雨，20—29℃\n\n利民乡，多云间阴有小雨，18—25℃\n\n甸尾乡，多云间阴有小雨，18—26℃\n\n  \n\n注：以上预报时限为当日20时至次日20时。\n\n  \n\n欢迎大家在评论区分享\n\n#您与古城建水的故事#\n\n我们帮您上头条！\n\n相伴同行，一起向未来❤️\n\n  \n\n来源：新华社、人民日报、云南网、红河教体、建水警方、建水县人民法院、建水县气象局等\n\n海报：罗淇 周伶钰\n\n编辑：高铭睎\n\n审核：苏浩伦\n\n法律顾问：云南毛荣芳律师事务所 毛荣芳律师 13808775229\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOsFhqaIh9RticlHrC0m4pRaWCPpEbTkHPIGNGWibuYuiaH5Ag2sLIg4LMtgFtJicdhGkLV5ny5Eeib8oQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOf969xBibjOgY7B72BzXUjtZRSOfCngLnv3JejdCwicVHfLcEw3w9Mtub6KCliaXTQibFfByxNCUAoEA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOGtYrKHvEhlYNzSD59NGjbKLVE5dTj8yTGtGyibKhNceiaibC9NBicXpSyiaviaBNc1q2EvKoffGMSrkDg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWiaeyKwdxm7jFK5mpnLTiaBc2m0xjiaibl3BNNJZFEBcicp1MGFPR5bL7ZlmPPbjfQ4z2P8abnwrtTX3UQ/640?wx_fmt=gif)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNMsy8Lhf1vSwNgTTzv9icyVqjwBVmJMt93dXwYjxQfYIRamsAVm1oQCjzJC0dXgV6xsjstDCticVclA/640?wx_fmt=png&from=appmsg)  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNMsy8Lhf1vSwNgTTzv9icyVqXXffVR4sp1AXHqia1baTxY2VMV8qNib7cVod1FQfFEuoAZ7yJRhwwATA/640?wx_fmt=png&from=appmsg)\n\n  \n\n本文转自 [https://mp.weixin.qq.com/s/xOqnDxn2rFBJULF9\\_rSh3g](https://mp.weixin.qq.com/s/xOqnDxn2rFBJULF9_rSh3g)，如有侵权，请联系删除。','2024-08-14 15:47:33.232534','2024-08-14 15:47:33.232567',1,1,0,0,1,1,'建水县融媒体中心','古城建水','https://mp.weixin.qq.com/s/xOqnDxn2rFBJULF9_rSh3g',5),(11,'十全十美×4！TEAM CHINA奥运“纪念封”来了','巴黎奥运会，中国体育代表团40金27银24铜收官，转存中国队十全十美x4合集','![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNtyIeticHQv0ApYjhprpBfmh6W8qeDkYJbdde9LDHYIb0Y2amBKCMYXgTg01R2byOjSBBsL0lF1lg/640?wx_fmt=jpeg&wx_)\n\n巴黎奥运会\n\n中国体育代表团40金27银24铜收官\n\n**转存中国队十全十美x4合集**\n\n**一起致敬拼搏和奋斗**\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/xrFYciaHL08DLOyj38DDp37sqw1ZwK18tdWgH1BQ8u6QlMvr2ic5wjqQY5rARzibLKEpD1vtMwnribDTxmo70NN3icQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/xrFYciaHL08DLOyj38DDp37sqw1ZwK18t8Ovib5sCQibsAr858hXgmu6bINrCk5ZgWEwpI74sMvO3ibX9kACOStaxw/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/xrFYciaHL08DLOyj38DDp37sqw1ZwK18tGHRlkbpdfdFpywxgZbRf4UDV1KbRDdcIw2yu5QZ1n68fD7xBRugIng/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/xrFYciaHL08DLOyj38DDp37sqw1ZwK18tbxFw4APGGwO4n2mgatOWyXcHfRkdvOssJPBjLs9kdAWH1fn9etzVAQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/xrFYciaHL08DLOyj38DDp37sqw1ZwK18tZr21GhTECPM8x1TsrolRQfIIxI2wBtMTYicZpicRHCEoo1F80YkXSuzg/640?wx_fmt=jpeg&from=appmsg)\n\n**TEAM CHINA，加油！**\n\n**我们下个赛场见！**\n\n来源：人民日报\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOsFhqaIh9RticlHrC0m4pRaWCPpEbTkHPIGNGWibuYuiaH5Ag2sLIg4LMtgFtJicdhGkLV5ny5Eeib8oQ/640?wx_fmt=other&from=appmsg&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOf969xBibjOgY7B72BzXUjtZRSOfCngLnv3JejdCwicVHfLcEw3w9Mtub6KCliaXTQibFfByxNCUAoEA/640?wx_fmt=other&from=appmsg&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOGtYrKHvEhlYNzSD59NGjbKLVE5dTj8yTGtGyibKhNceiaibC9NBicXpSyiaviaBNc1q2EvKoffGMSrkDg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWiaeyKwdxm7jFK5mpnLTiaBc2m0xjiaibl3BNNJZFEBcicp1MGFPR5bL7ZlmPPbjfQ4z2P8abnwrtTX3UQ/640?wx_fmt=gif&tp=webp&wxfrom=5&wx_lazy=1)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyibJkNuAmkYFoG9iajsrfDxE55hKibNAyciad2GjbibibC3IEHyJwXibJC8VWA/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyAhQlFjCroMyMHOmolqQ84r6viahvhJvId2xPkzibpr2ZYOqSqWDgOvww/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n本文转自 [https://mp.weixin.qq.com/s/0iCI-\\_zx3AJy3L33ZK02wg](https://mp.weixin.qq.com/s/0iCI-_zx3AJy3L33ZK02wg)，如有侵权，请联系删除。','2024-08-14 15:48:56.484374','2024-08-14 15:48:56.484407',1,1,0,0,0,2,'古城建水','古城建水','https://mp.weixin.qq.com/s/0iCI-_zx3AJy3L33ZK02wg',4),(12,'吃豆腐把玉米数，这就很云南','烤豆腐是云南常见的一道街边小吃其中以建水烤豆腐较为出名建水烤豆腐历史悠久、味道绝美','![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNtyIeticHQv0ApYjhprpBfmh6W8qeDkYJbdde9LDHYIb0Y2amBKCMYXgTg01R2byOjSBBsL0lF1lg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n**编者按**\n\n  \n\n一言不合就打跳，一年四季在过节，我们云南很可爱；红嘴鸥每年准时光顾，大象在这里愉快逛吃，我们云南很好在；高铁联接国内外，144个小时过境免签，我们云南来了还想来……这些动人的片段，都是“有一种叫云南的生活”的精彩呈现，是我们献给新中国最好的生日礼物。\n\n  \n\n为献礼中华人民共和国成立75周年，云南网联合云南发布、“学习强国”云南学习平台共同策划推出“喜迎新中国成立75周年 75个镜头带你看云南”融媒专栏，在7月18日至9月30日期间，一天一推，连续推出75条短视频，聚焦最具云南味儿的山、水、风、物、人，用细腻镜头、新颖表达、明快节奏、酷炫画面，再现最奇特的山水风光、最地道的民族风情、最深厚的文化底蕴、最绚丽的民间艺术、最原汁原味的美食，全方位展现“有一种叫云南的生活”。今天，请看第二十期——《吃豆腐把玉米数，这就很云南》。\n\n  \n\n  \n\n**吃豆腐把玉米数，这就很云南！**\n\n烤豆腐\n\n是云南常见的一道街边小吃\n\n其中以建水烤豆腐较为出名\n\n建水烤豆腐历史悠久、味道绝美\n\n在县城街边随处可见\n\n食客每拣食一个烤豆腐\n\n老板便置一粒玉米于铁盘中\n\n这是古老的计数法\n\n按量计算付账，独具人文底蕴\n\n  \n\n在炭火的烤制下，小小豆腐块\n\n由白色慢慢变得焦黄可人\n\n手握筷子夹一块品尝\n\n香味萦绕在舌尖之上，久久不散\n\n……\n\n城乡之际、市井之隅\n\n吃烤豆腐已成为云南寻常百姓\n\n不可或缺的生活\n\n  \n\n一双筷子，一方围炉\n\n一阵炊烟，满嘴鲜香\n\n小小的烤豆腐\n\n抚慰着四方食客的胃\n\n诉说着一份割舍不断的“味觉情缘”\n\n  \n\n**#今日话题#**\n\n**你觉得云南哪里的烤豆腐最好吃？**\n\n**欢迎来评论区聊聊~**\n\n  \n\n来源：云南发布\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOsFhqaIh9RticlHrC0m4pRaWCPpEbTkHPIGNGWibuYuiaH5Ag2sLIg4LMtgFtJicdhGkLV5ny5Eeib8oQ/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOf969xBibjOgY7B72BzXUjtZRSOfCngLnv3JejdCwicVHfLcEw3w9Mtub6KCliaXTQibFfByxNCUAoEA/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOGtYrKHvEhlYNzSD59NGjbKLVE5dTj8yTGtGyibKhNceiaibC9NBicXpSyiaviaBNc1q2EvKoffGMSrkDg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWiaeyKwdxm7jFK5mpnLTiaBc2m0xjiaibl3BNNJZFEBcicp1MGFPR5bL7ZlmPPbjfQ4z2P8abnwrtTX3UQ/640?wx_fmt=gif)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyibJkNuAmkYFoG9iajsrfDxE55hKibNAyciad2GjbibibC3IEHyJwXibJC8VWA/640?wx_fmt=png&from=appmsg)  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyAhQlFjCroMyMHOmolqQ84r6viahvhJvId2xPkzibpr2ZYOqSqWDgOvww/640?wx_fmt=png&from=appmsg)\n\n  \n\n本文转自 [https://mp.weixin.qq.com/s/1M0ynfpK16eZK1-StVJ6Ng](https://mp.weixin.qq.com/s/1M0ynfpK16eZK1-StVJ6Ng)，如有侵权，请联系删除。','2024-08-14 15:57:52.999661','2024-08-14 15:57:52.999696',1,1,0,0,0,2,'古城建水','古城建水','https://mp.weixin.qq.com/s/1M0ynfpK16eZK1-StVJ6Ng',3),(13,'来这里，能带走的不止有回忆……','文创产品成为新的消费热潮，日前，建水县团山景区结合团山民居百忍家风文化及荷塘特色，将传统文化与现代元素巧妙融合，推出了一系列富有创意和实用性的文创产品。','![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNtyIeticHQv0ApYjhprpBfmh6W8qeDkYJbdde9LDHYIb0Y2amBKCMYXgTg01R2byOjSBBsL0lF1lg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n**来到建水**\n\n**我们除了回忆**\n\n**还能带走什么？**\n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWgwLuSE1ibqicOtiaQYicGJTw3K6y1WgD1Xc5L0qXBdXKg2ZwvpVkNj7t41HfUbaa1CAFK0I4GfqlW5GQ/640?wx_fmt=gif&from=appmsg)\n\n近年来，文创产品成为新的消费热潮，日前，建水县团山景区结合团山民居百忍家风文化及荷塘特色，将传统文化与现代元素巧妙融合，推出了一系列富有创意和实用性的文创产品。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyHD8cOGNR2hGXicMn5ibAl2iaksic6Elnn55yJAIH8cIrgpNf0Y4sictVPAQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyaJ4Mnnr0lDDWhSzCbJDib26Hk4kGt0Wwq3WmoILHZdX3Exzd2vLR3Ew/640?wx_fmt=jpeg&from=appmsg)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqy7B3F13KQ5tc9apLOEomiaenY7vOVbBXz8ib5VGF4TJmMKictNAIf2b8aA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqySNzOKeQzbuY32UaAlH9Aeuia8ic3yCuMNUjUz6bc2TenBH5byrsXuEDQ/640?wx_fmt=jpeg&from=appmsg)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyS1lvpGWFJZBObpibM2ibUww6KQgafotDaaGLwOv1iczfRDwTW7XynPtyQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n走进团山景区团窝窝文创店，精致的钥匙扣、冰箱贴，实用的茶具、杯垫，还有充满团山特色的文化摆件等陈列在货架上，吸引着游客的目光。景区以团山张氏家族百忍家风文化为载体，创作了团小团IP形象，并以此为依托，推出了百忍家风文创系列产品；结合景区荷塘特色，推出了清风荷韵文创系列产品，包括小夜灯、茶具、冰箱贴、摆件、饰品等多个种类。除此之外，店内还有当地草编工艺品、建水特色冰箱贴、集章册等丰富多样的文创产品，满足游客多样化需求。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyXFjzAiayOvdM9ZlbGqf4DeDD8ER7NKRuVMruYAg0FObjA8yXia3kBTrQ/640?wx_fmt=png&from=appmsg)\n\n团小团IP形象  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqynoPjXsyJfibmxoxQj0nyicKS7gHhsKiaMPseHica2hNGS7GJdZYQgVha8g/640?wx_fmt=jpeg&from=appmsg)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyfmXZMjv9SfcDgwvuPHQ5C3MjwxowqYsIoWThdckovCFxj4b1lrZgMg/640?wx_fmt=jpeg&from=appmsg)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyDnOq7bEqXIkzuwyh8nR0q9j3gqfJ2ficVgz0Wia3M7WDX4RIacBJeMLQ/640?wx_fmt=jpeg&from=appmsg)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyrzJArzRdTRO9ujBXg4oNW8ZO1Deibsw9icbv5KMWYO96PVkFgpBWkDew/640?wx_fmt=jpeg&from=appmsg)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyXo243QkwkOE1Fvic2icag9eXya69b9icYNSRGRyMViabMx7zuXNmA1ibxAg/640?wx_fmt=jpeg&from=appmsg)\n\n![](https://mmbiz.qpic.cn/mmbiz_gif/bL2iaicTYdZn7Jfhms6QY4JAKPDDpb9mxl8sFB25hTFcdGok8cfKrl8eAuJZiaoy7asuURGlLHAsoh8EcMnhicVmUw/640?wx_fmt=gif)\n\n百忍家风系列\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyU2WsAhE6xk3ghia8tIYkOQy3CE6YXsiaiahibw8CFnNNueL3KicUAk1KmnQ/640?wx_fmt=jpeg&from=appmsg)\n\n清风荷韵系列\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqy288RPH3F0ObvBdyMnMkjvc292kJVYZiamTK06pHhYlL6jT215n45o8g/640?wx_fmt=jpeg&from=appmsg)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyG6tDloazQ3t8ZPtSP6bHYlUlvbicMMdbZI1woicGVEIvHld2k3dZGmicg/640?wx_fmt=jpeg&from=appmsg)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyQ8bRUmpXtL7sRtbIFnO8YgIrlcygoDbF6KKjMlZh3AXBiclVWicdicRbQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyjWlPdNZlfDVu9n33HiaVzP2s4PX5KIO8sTYb7YMqkVKxUFYGJJSzOSA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n建水团山景区管理有限公司总经理张黎介绍道：“团山景区团窝窝文创店从今年7月份开始营业，自营业以来，吸引了大量游客，我们坚持以品质为基石，以产品为载体，以文化为灵魂，让游客可以通过这些文创产品更好地了解团山景区的优秀文化。”  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqy2WGQktpvWGjPevkxm0KVYxIAlpCCfiadBa2d7ORj7ZGSPuoMjoFnGoQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyuxuib9lTocibF8ewyqQB0XicuVIV76nyBlkBl5vFFT05NuPrhPnTRnicsg/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n目前，团窝窝文创店已成为团山景区一个新的经济增长点和拍照打卡点。优秀的文旅IP和文创产品不仅能够为景区赋能，成为文化传播的载体，带动更多的人们去了解和关注当地的历史文化，更能够引爆市场，让文旅产业更加生机勃勃。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyc07Zdiab7NvOT5IkB1p2Vgwt4utn3aLMSHxpyPia1xKEpDXJUVxQmGJw/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyOqVJ2xiadmaS5GRJw6VDBdSaNFDtaOb4wSXEiaibV3kufkqluP1dyvLzg/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n我们也期待  \n\n建水能够推出更多  \n\n融合本地特色文化内涵和市场需求的  \n\n优质文创产品  \n\n让游客带走的不只是回忆\n\n  \n\n记者：李梦宇 吴俊松\n\n编辑：李梦宇\n\n审核：苏浩伦\n\n法律顾问：云南毛荣芳律师事务所 毛荣芳律师 13808775229\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOsFhqaIh9RticlHrC0m4pRaWCPpEbTkHPIGNGWibuYuiaH5Ag2sLIg4LMtgFtJicdhGkLV5ny5Eeib8oQ/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOf969xBibjOgY7B72BzXUjtZRSOfCngLnv3JejdCwicVHfLcEw3w9Mtub6KCliaXTQibFfByxNCUAoEA/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOGtYrKHvEhlYNzSD59NGjbKLVE5dTj8yTGtGyibKhNceiaibC9NBicXpSyiaviaBNc1q2EvKoffGMSrkDg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWiaeyKwdxm7jFK5mpnLTiaBc2m0xjiaibl3BNNJZFEBcicp1MGFPR5bL7ZlmPPbjfQ4z2P8abnwrtTX3UQ/640?wx_fmt=gif)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyibJkNuAmkYFoG9iajsrfDxE55hKibNAyciad2GjbibibC3IEHyJwXibJC8VWA/640?wx_fmt=png&from=appmsg)  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyAhQlFjCroMyMHOmolqQ84r6viahvhJvId2xPkzibpr2ZYOqSqWDgOvww/640?wx_fmt=png&from=appmsg)\n\n  \n\n本文转自 [https://mp.weixin.qq.com/s/ZFDYX\\_Phpv8JPp5owMgX7g](https://mp.weixin.qq.com/s/ZFDYX_Phpv8JPp5owMgX7g)，如有侵权，请联系删除。','2024-08-14 16:00:14.301603','2024-08-14 16:00:14.301641',1,1,0,0,0,2,'建水县融媒体中心','建水县融媒体中心','https://mp.weixin.qq.com/s/ZFDYX_Phpv8JPp5owMgX7g',8),(14,'我国民族识别的基本原则是什么','中华人民共和国成立后，为改变旧中国民族成份和族称混乱的状况，保障少数民族的平等权利，中央和有关地方组织包括专家学者和民族工作者在内的科研队伍，在大量调研工作基础上，对全国提出的400多个民族名称进行了科学辨识。','![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNtyIeticHQv0ApYjhprpBfmh6W8qeDkYJbdde9LDHYIb0Y2amBKCMYXgTg01R2byOjSBBsL0lF1lg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n**来到建水**\n\n**我们除了回忆**\n\n**还能带走什么？**\n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWgwLuSE1ibqicOtiaQYicGJTw3K6y1WgD1Xc5L0qXBdXKg2ZwvpVkNj7t41HfUbaa1CAFK0I4GfqlW5GQ/640?wx_fmt=gif&from=appmsg)\n\n近年来，文创产品成为新的消费热潮，日前，建水县团山景区结合团山民居百忍家风文化及荷塘特色，将传统文化与现代元素巧妙融合，推出了一系列富有创意和实用性的文创产品。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyHD8cOGNR2hGXicMn5ibAl2iaksic6Elnn55yJAIH8cIrgpNf0Y4sictVPAQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyaJ4Mnnr0lDDWhSzCbJDib26Hk4kGt0Wwq3WmoILHZdX3Exzd2vLR3Ew/640?wx_fmt=jpeg&from=appmsg)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqy7B3F13KQ5tc9apLOEomiaenY7vOVbBXz8ib5VGF4TJmMKictNAIf2b8aA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqySNzOKeQzbuY32UaAlH9Aeuia8ic3yCuMNUjUz6bc2TenBH5byrsXuEDQ/640?wx_fmt=jpeg&from=appmsg)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyS1lvpGWFJZBObpibM2ibUww6KQgafotDaaGLwOv1iczfRDwTW7XynPtyQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n走进团山景区团窝窝文创店，精致的钥匙扣、冰箱贴，实用的茶具、杯垫，还有充满团山特色的文化摆件等陈列在货架上，吸引着游客的目光。景区以团山张氏家族百忍家风文化为载体，创作了团小团IP形象，并以此为依托，推出了百忍家风文创系列产品；结合景区荷塘特色，推出了清风荷韵文创系列产品，包括小夜灯、茶具、冰箱贴、摆件、饰品等多个种类。除此之外，店内还有当地草编工艺品、建水特色冰箱贴、集章册等丰富多样的文创产品，满足游客多样化需求。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyXFjzAiayOvdM9ZlbGqf4DeDD8ER7NKRuVMruYAg0FObjA8yXia3kBTrQ/640?wx_fmt=png&from=appmsg)\n\n团小团IP形象  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqynoPjXsyJfibmxoxQj0nyicKS7gHhsKiaMPseHica2hNGS7GJdZYQgVha8g/640?wx_fmt=jpeg&from=appmsg)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyfmXZMjv9SfcDgwvuPHQ5C3MjwxowqYsIoWThdckovCFxj4b1lrZgMg/640?wx_fmt=jpeg&from=appmsg)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyDnOq7bEqXIkzuwyh8nR0q9j3gqfJ2ficVgz0Wia3M7WDX4RIacBJeMLQ/640?wx_fmt=jpeg&from=appmsg)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyrzJArzRdTRO9ujBXg4oNW8ZO1Deibsw9icbv5KMWYO96PVkFgpBWkDew/640?wx_fmt=jpeg&from=appmsg)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyXo243QkwkOE1Fvic2icag9eXya69b9icYNSRGRyMViabMx7zuXNmA1ibxAg/640?wx_fmt=jpeg&from=appmsg)\n\n![](https://mmbiz.qpic.cn/mmbiz_gif/bL2iaicTYdZn7Jfhms6QY4JAKPDDpb9mxl8sFB25hTFcdGok8cfKrl8eAuJZiaoy7asuURGlLHAsoh8EcMnhicVmUw/640?wx_fmt=gif)\n\n百忍家风系列\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyU2WsAhE6xk3ghia8tIYkOQy3CE6YXsiaiahibw8CFnNNueL3KicUAk1KmnQ/640?wx_fmt=jpeg&from=appmsg)\n\n清风荷韵系列\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqy288RPH3F0ObvBdyMnMkjvc292kJVYZiamTK06pHhYlL6jT215n45o8g/640?wx_fmt=jpeg&from=appmsg)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyG6tDloazQ3t8ZPtSP6bHYlUlvbicMMdbZI1woicGVEIvHld2k3dZGmicg/640?wx_fmt=jpeg&from=appmsg)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyQ8bRUmpXtL7sRtbIFnO8YgIrlcygoDbF6KKjMlZh3AXBiclVWicdicRbQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyjWlPdNZlfDVu9n33HiaVzP2s4PX5KIO8sTYb7YMqkVKxUFYGJJSzOSA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n建水团山景区管理有限公司总经理张黎介绍道：“团山景区团窝窝文创店从今年7月份开始营业，自营业以来，吸引了大量游客，我们坚持以品质为基石，以产品为载体，以文化为灵魂，让游客可以通过这些文创产品更好地了解团山景区的优秀文化。”  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqy2WGQktpvWGjPevkxm0KVYxIAlpCCfiadBa2d7ORj7ZGSPuoMjoFnGoQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyuxuib9lTocibF8ewyqQB0XicuVIV76nyBlkBl5vFFT05NuPrhPnTRnicsg/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n目前，团窝窝文创店已成为团山景区一个新的经济增长点和拍照打卡点。优秀的文旅IP和文创产品不仅能够为景区赋能，成为文化传播的载体，带动更多的人们去了解和关注当地的历史文化，更能够引爆市场，让文旅产业更加生机勃勃。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyc07Zdiab7NvOT5IkB1p2Vgwt4utn3aLMSHxpyPia1xKEpDXJUVxQmGJw/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyOqVJ2xiadmaS5GRJw6VDBdSaNFDtaOb4wSXEiaibV3kufkqluP1dyvLzg/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n我们也期待  \n\n建水能够推出更多  \n\n融合本地特色文化内涵和市场需求的  \n\n优质文创产品  \n\n让游客带走的不只是回忆\n\n  \n\n记者：李梦宇 吴俊松\n\n编辑：李梦宇\n\n审核：苏浩伦\n\n法律顾问：云南毛荣芳律师事务所 毛荣芳律师 13808775229\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOsFhqaIh9RticlHrC0m4pRaWCPpEbTkHPIGNGWibuYuiaH5Ag2sLIg4LMtgFtJicdhGkLV5ny5Eeib8oQ/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOf969xBibjOgY7B72BzXUjtZRSOfCngLnv3JejdCwicVHfLcEw3w9Mtub6KCliaXTQibFfByxNCUAoEA/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOGtYrKHvEhlYNzSD59NGjbKLVE5dTj8yTGtGyibKhNceiaibC9NBicXpSyiaviaBNc1q2EvKoffGMSrkDg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWiaeyKwdxm7jFK5mpnLTiaBc2m0xjiaibl3BNNJZFEBcicp1MGFPR5bL7ZlmPPbjfQ4z2P8abnwrtTX3UQ/640?wx_fmt=gif)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyibJkNuAmkYFoG9iajsrfDxE55hKibNAyciad2GjbibibC3IEHyJwXibJC8VWA/640?wx_fmt=png&from=appmsg)  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyAhQlFjCroMyMHOmolqQ84r6viahvhJvId2xPkzibpr2ZYOqSqWDgOvww/640?wx_fmt=png&from=appmsg)\n\n  \n\n本文转自 [https://mp.weixin.qq.com/s/ZFDYX\\_Phpv8JPp5owMgX7g](https://mp.weixin.qq.com/s/ZFDYX_Phpv8JPp5owMgX7g)，如有侵权，请联系删除。','2024-08-14 16:01:16.968098','2024-08-14 16:01:16.968133',1,1,0,0,0,1,'建水县融媒体中心','建水县融媒体中心','https://mp.weixin.qq.com/s/A_2Ddpge0ZbaulWnK8stUQ',5),(15,'建水选手，第一！！！','建水县棋手姜灏霖在中学男子组中过关斩将，勇夺第一。','![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNtyIeticHQv0ApYjhprpBfmh6W8qeDkYJbdde9LDHYIb0Y2amBKCMYXgTg01R2byOjSBBsL0lF1lg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n8月10日至11日，2024年云南省第29届象棋棋王赛在石屏县举行。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNP3iaBXwcJHEe2j3yVw5DNCd5KFWDt6NZLYQxzjrJic2jmlOqFuHFSeFosBSw1ibgnibicMibYUdx4nafmQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n建水县棋手姜灏霖在中学男子组中过关斩将，勇夺第一。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNP3iaBXwcJHEe2j3yVw5DNCdWaANm61lLLYfyOkibCq9ZPBENxCZymo9CnDQIcg5eQfzawFboibrUtzA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n2021年，建水县青少年校外活动中心象棋公益培训班开班，吸引许多爱好象棋的同学加入。截至目前，培训班共完成5期培训，培训学员达100余人。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNP3iaBXwcJHEe2j3yVw5DNCdNHwCfss6re6gsdK03IrquibslBRKMo5lg1nYt4L8ub81Pfspcd7jenA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n建水县积极推进象棋文化进校园，大力传承和弘扬象棋文化，建水县各中小学也将象棋纳入学校兴趣班，不仅丰富了学生的课余文化生活，还开启学生心智，达到提质增效减负的效果。\n\n  \n\n通讯员：吴红章\n\n编辑：卢慧\n\n审核：苏浩伦\n\n法律顾问：云南毛荣芳律师事务所 毛荣芳律师 13808775229\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOsFhqaIh9RticlHrC0m4pRaOb5LU6r4109MiaI9usIPiaFPhkCos0NucKaTpv5RfDbumVblPJPdvS4A/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOf969xBibjOgY7B72BzXUjtLYSRpRI05a9r5Lk2Ap2sZDZtLXc0PeBSuk9ry4ficGX4u2UlR2CKy6A/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOGtYrKHvEhlYNzSD59NGjbKLVE5dTj8yTGtGyibKhNceiaibC9NBicXpSyiaviaBNc1q2EvKoffGMSrkDg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWiaeyKwdxm7jFK5mpnLTiaBc2m0xjiaibl3BNNJZFEBcicp1MGFPR5bL7ZlmPPbjfQ4z2P8abnwrtTX3UQ/640?wx_fmt=gif)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNP3iaBXwcJHEe2j3yVw5DNCdpG5kx7QZElibNOfPaGJwa7d4XjXZUlicV2yAOo6iabjHzUD1h6vGic9cWg/640?wx_fmt=png&from=appmsg)  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNP3iaBXwcJHEe2j3yVw5DNCdegeA81Cib5JxvH542v0ndcibF8ZFlxzWKd6dxicGGaIEdI8nAnCTxnnUw/640?wx_fmt=png&from=appmsg)\n\n  \n\n本文转自 [https://mp.weixin.qq.com/s/8NkiNaWavFARB0u\\_SnOnUQ](https://mp.weixin.qq.com/s/8NkiNaWavFARB0u_SnOnUQ)，如有侵权，请联系删除。','2024-08-14 16:03:07.081816','2024-08-14 16:03:07.081861',1,1,0,0,0,1,'建水县融媒体中心','古城建水','https://mp.weixin.qq.com/s/8NkiNaWavFARB0u_SnOnUQ',8),(21,'中元节文明祭祀倡议书','中元节文明祭祀倡议书','![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNtyIeticHQv0ApYjhprpBfmh6W8qeDkYJbdde9LDHYIb0Y2amBKCMYXgTg01R2byOjSBBsL0lF1lg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n**中元节文明祭祀倡议书**\n\n  \n\n全县广大人民群众：\n\n2024年8月18日（农历七月十五）中元节即将到来，现向全县人民发出如下倡议：\n\n让我们共同树立文明祭祀新风尚，为营造碧水蓝天、秩序井然的生活环境，不在县城道路、广场、河边、树林、草坪等公共场所焚烧香烛纸钱、拋撒冥币或设置污染公共环境的祭祀用品。\n\n让我们共同践行文明祭祀新理念，采用鲜花祭祀、网上祭祀、家庭追思等现代祭祀活动，以精神传承代替传统实物祭祀，以肃穆、环保、节约、低碳的方式缅怀逝者。\n\n让我们共同培养文明祭祀新意识，从我做起，从现在做起，每个居民、每个家庭、每个院落、每个小区共同行动起来，以文明祭祀的实际行动，积极参与生态文明建设。\n\n移风易俗、传承文明是全社会的共同责任，希望全县广大人民群众，积极践行文明祭祀新理念，用更加绿色环保的方式表达对故人的思念之情，让建水的天更蓝、景更美。 \n\n  \n\n建水县民政局\n\n2024年8月14日\n\n  \n\n来源：建水县民政局\n\n编辑：卢慧\n\n审核：苏浩伦\n\n法律顾问：云南毛荣芳律师事务所 毛荣芳律师 13808775229\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOsFhqaIh9RticlHrC0m4pRaOb5LU6r4109MiaI9usIPiaFPhkCos0NucKaTpv5RfDbumVblPJPdvS4A/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOf969xBibjOgY7B72BzXUjtLYSRpRI05a9r5Lk2Ap2sZDZtLXc0PeBSuk9ry4ficGX4u2UlR2CKy6A/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOGtYrKHvEhlYNzSD59NGjbKLVE5dTj8yTGtGyibKhNceiaibC9NBicXpSyiaviaBNc1q2EvKoffGMSrkDg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWiaeyKwdxm7jFK5mpnLTiaBc2m0xjiaibl3BNNJZFEBcicp1MGFPR5bL7ZlmPPbjfQ4z2P8abnwrtTX3UQ/640?wx_fmt=gif)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNP3iaBXwcJHEe2j3yVw5DNCdpG5kx7QZElibNOfPaGJwa7d4XjXZUlicV2yAOo6iabjHzUD1h6vGic9cWg/640?wx_fmt=png&from=appmsg)  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNP3iaBXwcJHEe2j3yVw5DNCdegeA81Cib5JxvH542v0ndcibF8ZFlxzWKd6dxicGGaIEdI8nAnCTxnnUw/640?wx_fmt=png&from=appmsg)\n\n  \n\n本文转自 [https://mp.weixin.qq.com/s/4Dxva\\_2XB3KC\\_0UKx-FAIw](https://mp.weixin.qq.com/s/4Dxva_2XB3KC_0UKx-FAIw)，如有侵权，请联系删除。','2024-08-14 16:05:03.229113','2024-08-14 16:05:03.229161',1,1,0,0,0,1,'建水县融媒体中心','古城建水','https://mp.weixin.qq.com/s/4Dxva_2XB3KC_0UKx-FAIw',5),(22,'建水县“县树、县花”已确定！','建水县人大常委会关于批准建水县“县树、县花”的决定','![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNtyIeticHQv0ApYjhprpBfmh6W8qeDkYJbdde9LDHYIb0Y2amBKCMYXgTg01R2byOjSBBsL0lF1lg/640?wx_fmt=jpeg&from=appmsg&wx_&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n_**建水县人大常委会**_\n\n_**关于批准建水县“县树、县花”的决定**_\n\n![](https://mmbiz.qpic.cn/mmbiz_png/bL2iaicTYdZn7ONoPMZ0t7ldIWRlwGN9lOhMZ7wKtsIGSZy87HOtrbghqQptZEVaa1kymfCrfAh9qRnQxmhUQ9DQ/640?wx_fmt=png&from=appmsg)\n\n  \n\n  \n\n  \n\n（2024年7月30日建水县第十六届人大常委会第二十三次会议通过）  \n\n  \n\n建水县第十六届人大常委会第二十三次会议，听取和审议了《建水县人民政府关于提请审议建水县“县树、县花”的议案》。会议决定：清香木为建水县“县树”，凤凰花为建水县“县花”。\n\n  \n\n来源：建水县人大常委会\n\n编辑：赵一锦\n\n审核：张垒\n\n法律顾问：云南毛荣芳律师事务所 毛荣芳律师 13808775229\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOsFhqaIh9RticlHrC0m4pRaXWEH3N2LiabYN6uHbcVx4Y0xhhlOFTTN6cxwRziasqy8r2ibibXpTxicyIg/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOf969xBibjOgY7B72BzXUjtjOcBKAyMpyibrSSaeianPoAWZQxp8CajmicpIxrlMPcKcrrYRCQVZdfew/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOGtYrKHvEhlYNzSD59NGjbKLVE5dTj8yTGtGyibKhNceiaibC9NBicXpSyiaviaBNc1q2EvKoffGMSrkDg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWiaeyKwdxm7jFK5mpnLTiaBc2m0xjiaibl3BNNJZFEBcicp1MGFPR5bL7ZlmPPbjfQ4z2P8abnwrtTX3UQ/640?wx_fmt=gif)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNPeBDzqHqsFoQXShZq0ue65mEtNWk1kXMfQdFuojXBficuYUFz4W2t7M08xdaCjIAVVwzVWeiagFjnw/640?wx_fmt=png&from=appmsg)  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNPeBDzqHqsFoQXShZq0ue65o66oMwQMzW2ib7X2KfAZaEWjeiaTvu5KaMKaZnFaa0dXQribJbFAQ0IYA/640?wx_fmt=png&from=appmsg)\n\n\n\n\n-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\n\n  \n\n本文转自 [https://mp.weixin.qq.com/s/HeEiqFv2BwYl8vK-UTfQjQ](https://mp.weixin.qq.com/s/HeEiqFv2BwYl8vK-UTfQjQ)，如有侵权，请联系删除。','2024-08-14 16:06:11.169783','2024-08-14 16:06:11.169817',1,1,0,0,0,1,'古城建水','古城建水','https://mp.weixin.qq.com/s/HeEiqFv2BwYl8vK-UTfQjQ',5),(23,'海拔1314米上的婚礼，建水太会了！','8月10日正值“七夕”传统佳节空气中弥漫着“甜蜜”的味道来到建水县民政局\n这里停放着两辆公交车只见车窗上贴着巨大的“囍”字把氛围装点得格外喜庆\n原来这便是“七夕”号集体婚礼公交大巴','![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNtyIeticHQv0ApYjhprpBfmh6W8qeDkYJbdde9LDHYIb0Y2amBKCMYXgTg01R2byOjSBBsL0lF1lg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n8月10日  \n\n正值“七夕”传统佳节  \n\n空气中弥漫着“甜蜜”的味道  \n\n来到建水县民政局  \n\n这里停放着两辆公交车\n\n只见车窗上贴着巨大的“囍”字  \n\n把氛围装点得格外喜庆\n\n原来这便是“七夕”号集体婚礼公交大巴  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3RrW5tjCElIPeIoO7jubUlnerlMOQH9w6r4iaibWiaM6husziaT8FyzuJkVw/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3RLt2MH2u6LGWTkeRiaMic5Jo95SIcBJNib2MSBc2EgKrMhibJCJnuribt8TA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n11对新人齐聚于此  \n\n乘车前往建水古城小火车临安站  \n\n开启他们的幸福之旅  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_gif/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3R7z7FqFTZMxg4iceicssxh7j9SJPFic82merh2NanZVSMDRHAUqqu2bKVg/640?wx_fmt=gif&from=appmsg)\n\n  \n\n为弘扬“风雨同舟、相濡以沫、责任共担、互敬互爱”的婚姻理念，全力营造“移风易俗、人人参与、培育新风、家家受益”的社会氛围，建水县在位于西庄镇的稻田公园特别设立了婚姻登记服务点，并于七夕节当天举办2024年集体婚礼系列活动，融合传统婚俗与现代创新，让爱情与自然的韵律同频共振，是一次打造地方婚俗文化品牌的探索。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3RiaXSHUl70iaGj9VueQsjV0rhDyCaAZveznlfC1icjibdpKvnFbJzVcGETg/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n接下来  \n\n让我们一起见证  \n\n这些新人的  \n\n爱情高光时刻吧！  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3RfZne6oBrbjFYUReWuTAhfbAkSgu4pWES0ibhFVal2K7NicUcLwoXZtAw/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n临安站内，伴随着一声小火车的轰鸣声，11对新人坐上了“七夕爱情专列”，向着稻田公园出发，他们满心欢喜，激动的心情溢于言表。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3RSLp3pibeNyfxtefZjjM8B1ATXuGN42OMJww9OjZYAuHcdwJOKhQWq9g/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3RAdeE0W4iabcAeFt4ru8sFmGMQIibiaX2aNLTsqXQMD9JvvOAzvib1bIHOw/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3R8FGYcKMKzGcoJ8cE58bxhaDUKmI5P6lucWkxBuUia3UktYhLc5nPDibA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3RsXicS4yjnMZR6RoHI8TMRpoLgHTd0kIxt0gBMlxnk6j8IoPcFRPAeQw/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n到达稻田公园婚姻登记服务点，精致的甜点、喜庆的装饰，把整个现场的氛围感拉满了！  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3RibcOYiceukBat32V9WNc71lsgcBCvK3P75mO8hUvabmRCXgMLhq87beQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3RI5h9dBKicDmBqQDUjQkNKLoSHSibBvoIGMJAAGYROibskValbSYM0PGFQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3RibunW2IT7Qc1xcwaH53KLPu53U9dd4lwuAt5HD3qOhBk5aAw6rzzIBA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3ROFTpVk0mnJRlK60IBzrGfMwpHLHVDcQGV4RibQNO50GVtvdBkIicib9ow/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n新娘们戴上了充满仪式感的头纱，随后与新郎手挽手，前往签名墙签名后便准备参加集体婚礼。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3RG5rrYGduJxgqFT3Z0ibPqdvDDicOLCKdVdnnBZ4Goz8ricK5ALtOzYaIg/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3RvqIAFziaDDicxr4VZhrTqjicJYrEicpVDW3gukTH4ibzk3eibEicVOzLGXS0A/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3RhP0sJA9TvNj3W0v8vF3PFngU2QeblbUCiciamlOJ3O0jOntbPYpbD8rg/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3RFLIx3FTxT6icRAtZTQicTXo1ZCcjld7MXMPeia8Gsso6eiaUYMfpxfLgcA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n活动伊始，县委书记赵雄致辞并代表县委、县政府向新人送上新婚祝福。他在致辞中说，婚姻是人生的重要驿站，而婚姻登记作为婚姻关系合法化的正式手续，是在爱情扉页上留下的最美丽、最灿烂、最真诚的印记。稻田公园婚姻登记服务点建设是县委、县政府回应人民群众对美好幸福生活期盼的有力民生举措，希望通过婚姻登记服务点的创新提质，为群众提供更加温馨、浪漫、个性化的婚姻登记体验，让领证结婚不再只是一个单调的固定程序，而是成为弘扬新风尚的载体、成为幸福生活的映照。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3RVeGSv2EQMcOALBBhqkkKTDjWkt6VYvP0YBElVWyTOQkrh2VdXAtc2A/640?wx_fmt=jpeg&from=appmsg)\n\n县委书记赵雄致辞\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3R2nXnX5c4vt5KWtkLRptIn9JJwTpDMCojIK4QWYom9Z3OOhQDdoLuiaQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n紧接着，新人代表宣读《婚育新风倡议书》，最后，在众多亲朋好友的见证下，新人集体宣读了《结婚誓词》，至此礼成。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3R45kFRgql92YmpQ6wUdIWvIGI0115TQ7hA0klKFRkybvM74UibJJTaVQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3RHHzJRcy3AnRIwGmLc9rpBVI8cACrwyVr8duMT9NNeHgmEUtt5ZQpqA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n活动最后，与会领导、嘉宾为新人颁发《结婚证》并合影留念。  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3Rzib3KabYZ9jzBeGRFZbiagzfEeqzdicCC9pCuPd7ZicMDDRzwe8fcjooXw/640?wx_fmt=jpeg&from=appmsg)\n\n县委书记赵雄为新人颁发《结婚证》  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3RFf48DAClicAw4Z1IqUz6iaHIFb4ZewUDugM8NNuEzSibibYic6ibwWx8SVQA/640?wx_fmt=jpeg&from=appmsg)\n\n县委副书记、县长钟红荘为新人颁发《结婚证》\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3R41tnMV8e9Iye1sxxQfjw2ycoAdYGFvDt0KWIA6GDlUqKD82Plqpgtg/640?wx_fmt=jpeg&from=appmsg)\n\n县人大常委会主任杨建伟为新人颁发《结婚证》\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3R9ZNyiaC6RaEp48tdGsGLd0LHzFMAszhZkKTLLXfmSn2qpE3icArDuHAg/640?wx_fmt=jpeg&from=appmsg)\n\n县政协主席白忠平为新人颁发《结婚证》\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3RqbEZjZ7gxb9je90K0lSV48sZ6ykj8iahTINeeI2kOoI9n2wGxzvSRPw/640?wx_fmt=jpeg&from=appmsg)\n\n州民政局副局长林明伟，州政务服务管理局副局长苏鹏，县委常委、县委宣传部部长王强为新人颁发《结婚证》\n\n  \n\n_**张娟❤️熊家林**_\n\n![](https://mmbiz.qpic.cn/mmbiz_png/bL2iaicTYdZn4Rwt8DwCyyuE0QM2xVibnLnzhdRw3IufFC1ibxPMXRqhbiaODiabnRQJrSkYGCAgs3iczhZGPicYYviaFIw/640?wx_fmt=png&from=appmsg)\n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWgzUKU1kd4KicgWZ8Y39rVznTWeib5V2SpXLBCBDxQ1ckOEt0AwuKNm4UOuaF1KIhsNoMLQ7icDG2wKw/640?wx_fmt=gif&from=appmsg)\n\n今天是中国的传统节日——七夕节，在这个特殊的日子里，我们结婚啦，我特别的开心特别的激动，我们祝愿天下的有情人终成眷属。\n\n  \n\n  \n\n_**史晶晶❤️钟庚**_\n\n![](https://mmbiz.qpic.cn/mmbiz_png/bL2iaicTYdZn4Rwt8DwCyyuE0QM2xVibnLnzhdRw3IufFC1ibxPMXRqhbiaODiabnRQJrSkYGCAgs3iczhZGPicYYviaFIw/640?wx_fmt=png&from=appmsg)\n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWgzUKU1kd4KicgWZ8Y39rVznTWeib5V2SpXLBCBDxQ1ckOEt0AwuKNm4UOuaF1KIhsNoMLQ7icDG2wKw/640?wx_fmt=gif&from=appmsg)\n\n今天我们乘坐爱情专线来到海拔1314米的稻田公园，在广大群众的见证下领取我们的结婚证，相信我们能相濡以沫，白头偕老。\n\n  \n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3Rufke1ukfQPClH0Kcuh4BpibCSGalfB9zVibcjkLFREMGO1GXd8YwBD6A/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3R350G4WZL0Mdnrk3Iv7QyZaYFptv2SsavBpBgZabnSozG9ASn6lk8Cg/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n据了解，建水县稻田公园婚姻登记服务点总投资200余万元，新建登记大厅约100平方米，周边配套浪漫秋千、一生一世爱情主题大道、爱心门、幸福门等基础设施。下一步，建水县将进一步提升婚姻登记服务质量，深度挖掘本土文化，推出更多富有创新精神的文化活动，将其打造成为婚姻登记及纪念的最美打卡点。\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3RG3qbkRyQuCXffQ0KBu3dz7FRBBwicWREIic2QDE2xLYlVvNuXricZ06rA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3RyDHERJLbrYpTT0uaT7bwy17jS6l4fbKToKGiaxR39LFW3TXdCIMHZDw/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNrdQBJiaqAVYgvQ2gXpIB3RKdhPzUgbEwE5qwBvmol9rNvalkiczxdMFcx7cO8fXCxM5FHuALEgk4Q/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n“举办七夕集体婚礼系列活动，目的是倡导全县广大青年树立正确的婚姻价值观，倡导婚育新风，共建文明美丽幸福家庭，在今后的工作当中，我们会继续倡导婚育新风，提升婚姻当事人的幸福感。”建水县民政局副局长鲁慧说道。\n\n![](https://mmbiz.qpic.cn/mmbiz_gif/bL2iaicTYdZn5WIGfiaGfBBmqVpk2icwGibiaK8jtEYE6LbQTDdJG5US2zmm4fEmiaicGlcvLMRrW011FQdTVJqMlpQt1A/640?wx_fmt=gif)\n\n**温馨提示：**目前，在特殊节日期间，市民可在此办理结婚登记，其余时间均在建水县政务服务中心办理。\n\n  \n\n记者：赵继兵 吴俊松 方瑞 陈维娇  见习记者：段姝珩 普新倪\n\n编辑：方瑞\n\n审核：陶咏梅\n\n法律顾问：云南毛荣芳律师事务所 毛荣芳律师 13808775229\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNMsy8Lhf1vSwNgTTzv9icyVqWpZv0yxw4XVvpp7J8jX53humTicQM9eMHfpMWdftDR6SvnmdTltQMEA/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOsFhqaIh9RticlHrC0m4pRaboYt4yLGxXiaXMyW8ybia93qNMyCR3UWYo5u6LwboibmdZkpQT6wUYjcQ/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOf969xBibjOgY7B72BzXUjtLYSRpRI05a9r5Lk2Ap2sZDZtLXc0PeBSuk9ry4ficGX4u2UlR2CKy6A/640?wx_fmt=jpeg&from=appmsg)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOGtYrKHvEhlYNzSD59NGjbKLVE5dTj8yTGtGyibKhNceiaibC9NBicXpSyiaviaBNc1q2EvKoffGMSrkDg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWiaeyKwdxm7jFK5mpnLTiaBc2m0xjiaibl3BNNJZFEBcicp1MGFPR5bL7ZlmPPbjfQ4z2P8abnwrtTX3UQ/640?wx_fmt=gif)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNMsy8Lhf1vSwNgTTzv9icyVqjwBVmJMt93dXwYjxQfYIRamsAVm1oQCjzJC0dXgV6xsjstDCticVclA/640?wx_fmt=png&from=appmsg)  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNMsy8Lhf1vSwNgTTzv9icyVqXXffVR4sp1AXHqia1baTxY2VMV8qNib7cVod1FQfFEuoAZ7yJRhwwATA/640?wx_fmt=png&from=appmsg)\n\n  \n\n本文转自 [https://mp.weixin.qq.com/s/kYr7kOLNkRmgylY6nQKmzg](https://mp.weixin.qq.com/s/kYr7kOLNkRmgylY6nQKmzg)，如有侵权，请联系删除。','2024-08-14 16:07:37.979771','2024-08-14 16:07:37.979808',1,1,0,0,0,3,'建水县融媒体中心','古城建水','https://mp.weixin.qq.com/s/kYr7kOLNkRmgylY6nQKmzg',7),(24,'夏日防溺水','天气炎热，溺水事故也进入高发期。暑假安全问题不容忽视，这些防溺水安全知识要记牢','  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNNtyIeticHQv0ApYjhprpBfmh6W8qeDkYJbdde9LDHYIb0Y2amBKCMYXgTg01R2byOjSBBsL0lF1lg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n**防溺水全攻略**\n\n**谨记“六不准”“四知道**”****\n\n天气炎热，溺水事故也进入高发期。暑假安全问题不容忽视，这些防溺水安全知识要记牢↓↓↓\n\n  \n\n**两类危险水体**\n\n**千万要远离**\n\n夏季是溺水事故的高发期。有的水域看起来清澈、水浅，但可能隐藏各种危险，以下两类危险水体请务必远离：1.自然水域，包括江、河、湖、溪、海等；2.人工开放性水域，如公共场所中的大型蓄水设施、建筑工地的洼地、水库人工湖、不规范的游泳池等。\n\n  \n\n**发现有人溺水**\n\n**千万不要做这些事**\n\n一旦有人溺水，千万不要盲目施救。首先，作为施救者，即使会游泳也不要贸然下水救人，很有可能被溺水者拽入水底。另外，如果现场施救人员较多，也不要通过手拉手的方式下水救援，一旦脱手会导致更多人溺水。\n\n  \n\n**发现有人溺水**\n\n**请记住这五个字**\n\n没有专业救援人员在场的情况下，发现有人溺水怎么办？第一时间的有效救治是避免悲剧发生的关键，选择和掌握正确的施救方式才能在关键时刻挽救生命。一起学习“叫叫伸抛法”↓↓↓\n\n  \n\n  \n\n  \n\n  \n\n来源：教育部政务新媒体“微言教育”\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOsFhqaIh9RticlHrC0m4pRaWCPpEbTkHPIGNGWibuYuiaH5Ag2sLIg4LMtgFtJicdhGkLV5ny5Eeib8oQ/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOf969xBibjOgY7B72BzXUjtZRSOfCngLnv3JejdCwicVHfLcEw3w9Mtub6KCliaXTQibFfByxNCUAoEA/640?wx_fmt=other&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)\n\n  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_jpg/urwAu42yBNOGtYrKHvEhlYNzSD59NGjbKLVE5dTj8yTGtGyibKhNceiaibC9NBicXpSyiaviaBNc1q2EvKoffGMSrkDg/640?wx_fmt=other&wxfrom=5&wx_lazy=1&wx_co=1&tp=webp)\n\n  \n\n![](https://mmbiz.qpic.cn/mmbiz_gif/Ljib4So7yuWiaeyKwdxm7jFK5mpnLTiaBc2m0xjiaibl3BNNJZFEBcicp1MGFPR5bL7ZlmPPbjfQ4z2P8abnwrtTX3UQ/640?wx_fmt=gif)\n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyibJkNuAmkYFoG9iajsrfDxE55hKibNAyciad2GjbibibC3IEHyJwXibJC8VWA/640?wx_fmt=png&from=appmsg)  \n\n![](https://mmbiz.qpic.cn/sz_mmbiz_png/urwAu42yBNPiafxqbiawplAO3BvxhKhpqyAhQlFjCroMyMHOmolqQ84r6viahvhJvId2xPkzibpr2ZYOqSqWDgOvww/640?wx_fmt=png&from=appmsg)\n\n  \n\n本文转自 [https://mp.weixin.qq.com/s/YFKhzok6SI8dCKUqyq7xkQ](https://mp.weixin.qq.com/s/YFKhzok6SI8dCKUqyq7xkQ)，如有侵权，请联系删除。','2024-08-14 16:08:49.631261','2024-08-14 16:08:49.631295',1,1,0,0,0,3,'古城建水','古城建水','https://mp.weixin.qq.com/s/YFKhzok6SI8dCKUqyq7xkQ',7),(25,'2024年下半年云南省高等教育自学考试省际转考','按照教育部安排部署，2024年下半年云南省高等教育自学考试（以下简称自学考试）省际转考工作于9月进行。现将考生须知公布如下：','按照教育部安排部署，2024年下半年云南省高等教育自学考试（以下简称自学考试）省际转考工作于9月进行。现将考生须知公布如下：\n\n![](https://mmbiz.qpic.cn/mmbiz_gif/noUpzfiaw6covNCibPCiaRbCZLdnct0mW4LaYEWP96xdz7sPbmFLAuEWklnjL51PTLW0RAPTt3DQ3f2KicxuTpicjGA/640?wx_fmt=gif&from=appmsg)\n\n![](https://mmbiz.qpic.cn/mmbiz_gif/noUpzfiaw6covNCibPCiaRbCZLdnct0mW4LC7hmT7dvGsBPGuIpOIR236JwEdlbDjRoT4tVPNQxA3Tbvge2FkOdjw/640?wx_fmt=gif&from=appmsg)\n\n**一、云南省考生转出考籍档案到外省（区、市）**\n\n  \n\n云南省考生转出考籍档案到外省（区、市），指云南省自学考试在籍考生，计划将云南省考籍电子档案（即统考课程合格成绩）转移到外省（区、市）继续参加考试并办理毕业证；计划在云南省办理毕业证的无需办理转出，如需要到外省（区、市）取得部分课程合格成绩，建议以外省（区、市）新生身份注册该地准考证号，取得合格成绩后转入云南省办理毕业证。\n\n按转考程序要求，省际转出应当在云南省先办理**转出**手续，再联系外省（区、市）办理**转入**手续，符合下列转出条件的可以申请转出：\n\n（一）转出条件\n\n1．考生在云南省取得一门或者一门以上统考课程合格成绩，并取得转入地考籍后，才能办理转出手续；未在转入地取得考籍的，考生应当在转入地取得一门或者一门以上课程合格成绩后，再办理转出手续。\n\n2．考生在当次转考工作期间只能使用一个准考证号申请一次转出，只能申请转出到一个省（市、区）。\n\n3．考生因违反有关考试管理规定被停考或者延迟毕业期间，不得转出。\n\n4．已经取得某专业全部课程合格成绩的考生，只能在云南省办理该专业毕业手续，不得转出；已办理毕业证的考生成绩不得转出；已经转出的课程，无法重复转出。\n\n5．只能转出**统考**课程合格成绩。免考取得的课程合格成绩不得转出；实践性环节考核成绩不得转出；毕业论文成绩不得转出。\n\n6．不属于国家统一代码的课程合格成绩，不得转出。\n\n7．考生办理转入手续未满一年的，不得转出。\n\n  \n\n（二）转出办理时间\n\n9月1－6日：考生网上转出申请，逾期未申请的本次将不再受理。\n\n9月1－10日：云南省招生考试院审核转出。\n\n  \n\n（三）转出办理流程\n\n1．9月1－6日，考生本人登录“云南省高等教育自学考试管理平台”（以下简称“管理平台”），在“我的首页”板块填写待办事项完成身份认证，在“转考申请”板块线填写转出申请，并下载《云南省高等教育自学考试转考（转出）申请表》，考生本人确认无误后，打印申请表**手写签字**再扫描或拍照上传。具体操作可在“管理平台”首页下载《考生使用手册》查看。\n\n2．审核期间，考生可登录“管理平台”查看实时审核状态，“转出省已受理”代表转出审核通过，不再单独通知，审核通过的考生考籍电子档案由云南省招生考试院通过教育部“高等教育自学考试省际转考数据交换平台”统一转出。\n\n3．9月11日及以后，考生按照转入省（区、市）有关公告或联系其自学考试管理部门办理转入手续。因各省（区、市）办理时限及要求不同，请及时关注转入省（区、市）有关公告或联系其自学考试管理部门。\n\n![](https://mmbiz.qpic.cn/mmbiz_gif/noUpzfiaw6covNCibPCiaRbCZLdnct0mW4LC7hmT7dvGsBPGuIpOIR236JwEdlbDjRoT4tVPNQxA3Tbvge2FkOdjw/640?wx_fmt=gif&from=appmsg)\n\n**二、外省（区、市）考生转入考籍档案到云南省**\n\n  \n\n外省（区、市）考生转入考籍档案到云南省，指外省（区、市）自学考试在籍考生，计划将外省（区、市）考籍电子档案（即统考课程合格成绩）转移到云南省继续参加考试并办理毕业证。外省（区、市）转入的考生，须按云南省的自学考试专业考试计划取得课程合格成绩才能办理毕业手续，原考试合格课程与现考试课程衔接关系按照云南省有关规定执行。\n\n按转考程序要求，省际转入应当在外省（区、市）先办理转出手续，再在“管理平台”完成身份认证等待云南省招生考试院审核接收即可转入。符合下列转入条件的可以申请转入：\n\n（一）转入条件\n\n1．考生须在云南省取得一门或者一门以上课程合格成绩，才能申请转入云南省。\n\n2．考生在因违反有关考试管理规定被停考或者延迟毕业期间，不得转入。\n\n3．已经取得某专业全部课程合格成绩的考生，只能在原报考地办理毕业证，不得转入。\n\n4．只能转入**统考**课程合格成绩。免考取得的课程合格成绩不得转入；实践性环节考核成绩不得转入；毕业论文成绩不得转入。\n\n5．考生应当在云南省取得专科不少于5门、本科不少于4门的合格成绩，方可在云南省申办毕业手续。\n\n6．不属于国家统一代码的课程合格成绩，不得转入。\n\n7．转出省（区、市）考籍基本信息与云南省考籍基本信息不一致的，不得转入。\n\n  \n\n（二）转入办理时间\n\n9月10日前：按转出省要求办理转出手续，并在“管理平台”完成身份认证。\n\n9月11－30日：云南省招生考试院审核接收。\n\n  \n\n（三）转入办理流程\n\n1．9月10日前，考生按照转出省（区、市）有关公告或联系其自学考试管理部门办理转出手续，转出到云南省。\n\n2．9月10日前，考生登录“管理平台”，在“我的首页”板块填写待办事项完成身份认证，等待审核接收即可。\n\n3．10月1日后，考生登录“管理平台”查看实时审核状态，“接收”代表转入审核通过，不再单独通知，可在“我的成绩”板块查询转入成功的成绩。\n\n![](https://mmbiz.qpic.cn/mmbiz_gif/noUpzfiaw6covNCibPCiaRbCZLdnct0mW4LC7hmT7dvGsBPGuIpOIR236JwEdlbDjRoT4tVPNQxA3Tbvge2FkOdjw/640?wx_fmt=gif&from=appmsg)\n\n**三、转考说明**\n\n  \n\n1．转考办理网站：“云南省高等教育自学考试管理平台”（网址：http://zk.ynzs.cn/）或云南政务服务网（网址：https://zwfw.yn.gov.cn/portal/#/home）“省教育厅→对自学考试考生免考课程、跨省转移课程的确认→对自学考试合格课程跨省转移的确认”。\n\n2．考生办理转出，只是转出统考课程合格成绩，与转出省原报考专业没有关联，毕业手续按照转入省报考专业计划要求办理。\n\n3．办理转考，准考证号是电子考籍档案存储的载体，转出省和转入省的准考证号务必对应填写正确，准考证号错误不能成功办理转考。\n\n4．考生办理转考期间请保持通讯畅通，在规定日期内，因故未及时履行转考手续、补充转考材料者，按本人主动放弃转考处理，同时其转考申请信息予以废止。如需再办理转考，须在规定期限内按要求重新履行转考手续。\n\n5．考生提供的转考申请材料须真实有效，凡伪造、涂改或提供假证明材料，一经查出，按照国家有关规定严肃处理。\n\n  \n\n  \n\n  \n\n转考工作咨询电话：0871-65153949\n\n  \n\n  \n\n  \n\n  \n\n  \n\n本文转自 [https://mp.weixin.qq.com/s/ug9fBXSIA-ztIvRvDwBl2A](https://mp.weixin.qq.com/s/ug9fBXSIA-ztIvRvDwBl2A)，如有侵权，请联系删除。','2024-08-14 16:12:41.462979','2024-08-14 16:12:41.463013',1,1,0,0,0,3,'云南招生考试院','云南招生考试院','https://mp.weixin.qq.com/s/ug9fBXSIA-ztIvRvDwBl2A',5),(26,'今日末伏，未来我州天气……','末伏将催中伏休 匆匆送夏又迎秋','按照教育部安排部署，2024年下半年云南省高等教育自学考试（以下简称自学考试）省际转考工作于9月进行。现将考生须知公布如下：\n\n![](https://mmbiz.qpic.cn/mmbiz_gif/noUpzfiaw6covNCibPCiaRbCZLdnct0mW4LaYEWP96xdz7sPbmFLAuEWklnjL51PTLW0RAPTt3DQ3f2KicxuTpicjGA/640?wx_fmt=gif&from=appmsg)\n\n![](https://mmbiz.qpic.cn/mmbiz_gif/noUpzfiaw6covNCibPCiaRbCZLdnct0mW4LC7hmT7dvGsBPGuIpOIR236JwEdlbDjRoT4tVPNQxA3Tbvge2FkOdjw/640?wx_fmt=gif&from=appmsg)\n\n**一、云南省考生转出考籍档案到外省（区、市）**\n\n  \n\n云南省考生转出考籍档案到外省（区、市），指云南省自学考试在籍考生，计划将云南省考籍电子档案（即统考课程合格成绩）转移到外省（区、市）继续参加考试并办理毕业证；计划在云南省办理毕业证的无需办理转出，如需要到外省（区、市）取得部分课程合格成绩，建议以外省（区、市）新生身份注册该地准考证号，取得合格成绩后转入云南省办理毕业证。\n\n按转考程序要求，省际转出应当在云南省先办理**转出**手续，再联系外省（区、市）办理**转入**手续，符合下列转出条件的可以申请转出：\n\n（一）转出条件\n\n1．考生在云南省取得一门或者一门以上统考课程合格成绩，并取得转入地考籍后，才能办理转出手续；未在转入地取得考籍的，考生应当在转入地取得一门或者一门以上课程合格成绩后，再办理转出手续。\n\n2．考生在当次转考工作期间只能使用一个准考证号申请一次转出，只能申请转出到一个省（市、区）。\n\n3．考生因违反有关考试管理规定被停考或者延迟毕业期间，不得转出。\n\n4．已经取得某专业全部课程合格成绩的考生，只能在云南省办理该专业毕业手续，不得转出；已办理毕业证的考生成绩不得转出；已经转出的课程，无法重复转出。\n\n5．只能转出**统考**课程合格成绩。免考取得的课程合格成绩不得转出；实践性环节考核成绩不得转出；毕业论文成绩不得转出。\n\n6．不属于国家统一代码的课程合格成绩，不得转出。\n\n7．考生办理转入手续未满一年的，不得转出。\n\n  \n\n（二）转出办理时间\n\n9月1－6日：考生网上转出申请，逾期未申请的本次将不再受理。\n\n9月1－10日：云南省招生考试院审核转出。\n\n  \n\n（三）转出办理流程\n\n1．9月1－6日，考生本人登录“云南省高等教育自学考试管理平台”（以下简称“管理平台”），在“我的首页”板块填写待办事项完成身份认证，在“转考申请”板块线填写转出申请，并下载《云南省高等教育自学考试转考（转出）申请表》，考生本人确认无误后，打印申请表**手写签字**再扫描或拍照上传。具体操作可在“管理平台”首页下载《考生使用手册》查看。\n\n2．审核期间，考生可登录“管理平台”查看实时审核状态，“转出省已受理”代表转出审核通过，不再单独通知，审核通过的考生考籍电子档案由云南省招生考试院通过教育部“高等教育自学考试省际转考数据交换平台”统一转出。\n\n3．9月11日及以后，考生按照转入省（区、市）有关公告或联系其自学考试管理部门办理转入手续。因各省（区、市）办理时限及要求不同，请及时关注转入省（区、市）有关公告或联系其自学考试管理部门。\n\n![](https://mmbiz.qpic.cn/mmbiz_gif/noUpzfiaw6covNCibPCiaRbCZLdnct0mW4LC7hmT7dvGsBPGuIpOIR236JwEdlbDjRoT4tVPNQxA3Tbvge2FkOdjw/640?wx_fmt=gif&from=appmsg)\n\n**二、外省（区、市）考生转入考籍档案到云南省**\n\n  \n\n外省（区、市）考生转入考籍档案到云南省，指外省（区、市）自学考试在籍考生，计划将外省（区、市）考籍电子档案（即统考课程合格成绩）转移到云南省继续参加考试并办理毕业证。外省（区、市）转入的考生，须按云南省的自学考试专业考试计划取得课程合格成绩才能办理毕业手续，原考试合格课程与现考试课程衔接关系按照云南省有关规定执行。\n\n按转考程序要求，省际转入应当在外省（区、市）先办理转出手续，再在“管理平台”完成身份认证等待云南省招生考试院审核接收即可转入。符合下列转入条件的可以申请转入：\n\n（一）转入条件\n\n1．考生须在云南省取得一门或者一门以上课程合格成绩，才能申请转入云南省。\n\n2．考生在因违反有关考试管理规定被停考或者延迟毕业期间，不得转入。\n\n3．已经取得某专业全部课程合格成绩的考生，只能在原报考地办理毕业证，不得转入。\n\n4．只能转入**统考**课程合格成绩。免考取得的课程合格成绩不得转入；实践性环节考核成绩不得转入；毕业论文成绩不得转入。\n\n5．考生应当在云南省取得专科不少于5门、本科不少于4门的合格成绩，方可在云南省申办毕业手续。\n\n6．不属于国家统一代码的课程合格成绩，不得转入。\n\n7．转出省（区、市）考籍基本信息与云南省考籍基本信息不一致的，不得转入。\n\n  \n\n（二）转入办理时间\n\n9月10日前：按转出省要求办理转出手续，并在“管理平台”完成身份认证。\n\n9月11－30日：云南省招生考试院审核接收。\n\n  \n\n（三）转入办理流程\n\n1．9月10日前，考生按照转出省（区、市）有关公告或联系其自学考试管理部门办理转出手续，转出到云南省。\n\n2．9月10日前，考生登录“管理平台”，在“我的首页”板块填写待办事项完成身份认证，等待审核接收即可。\n\n3．10月1日后，考生登录“管理平台”查看实时审核状态，“接收”代表转入审核通过，不再单独通知，可在“我的成绩”板块查询转入成功的成绩。\n\n![](https://mmbiz.qpic.cn/mmbiz_gif/noUpzfiaw6covNCibPCiaRbCZLdnct0mW4LC7hmT7dvGsBPGuIpOIR236JwEdlbDjRoT4tVPNQxA3Tbvge2FkOdjw/640?wx_fmt=gif&from=appmsg)\n\n**三、转考说明**\n\n  \n\n1．转考办理网站：“云南省高等教育自学考试管理平台”（网址：http://zk.ynzs.cn/）或云南政务服务网（网址：https://zwfw.yn.gov.cn/portal/#/home）“省教育厅→对自学考试考生免考课程、跨省转移课程的确认→对自学考试合格课程跨省转移的确认”。\n\n2．考生办理转出，只是转出统考课程合格成绩，与转出省原报考专业没有关联，毕业手续按照转入省报考专业计划要求办理。\n\n3．办理转考，准考证号是电子考籍档案存储的载体，转出省和转入省的准考证号务必对应填写正确，准考证号错误不能成功办理转考。\n\n4．考生办理转考期间请保持通讯畅通，在规定日期内，因故未及时履行转考手续、补充转考材料者，按本人主动放弃转考处理，同时其转考申请信息予以废止。如需再办理转考，须在规定期限内按要求重新履行转考手续。\n\n5．考生提供的转考申请材料须真实有效，凡伪造、涂改或提供假证明材料，一经查出，按照国家有关规定严肃处理。\n\n  \n\n  \n\n  \n\n转考工作咨询电话：0871-65153949\n\n  \n\n  \n\n  \n\n  \n\n  \n\n本文转自 [https://mp.weixin.qq.com/s/ug9fBXSIA-ztIvRvDwBl2A](https://mp.weixin.qq.com/s/ug9fBXSIA-ztIvRvDwBl2A)，如有侵权，请联系删除。','2024-08-14 16:14:19.986020','2024-08-14 16:14:19.986056',1,1,0,0,0,3,'云南红河发布','云南红河发布','https://mp.weixin.qq.com/s/Dc0Fo9Ffl2eXIEk1gjiBNQ',6);
/*!40000 ALTER TABLE `app_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_articles_tag`
--

DROP TABLE IF EXISTS `app_articles_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_articles_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `articles_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_articles_tag_articles_id_tags_id_7da3db2a_uniq` (`articles_id`,`tags_id`),
  KEY `app_articles_tag_tags_id_f841c971_fk_app_tags_nid` (`tags_id`),
  CONSTRAINT `app_articles_tag_articles_id_dbf27bad_fk_app_articles_nid` FOREIGN KEY (`articles_id`) REFERENCES `app_articles` (`nid`),
  CONSTRAINT `app_articles_tag_tags_id_f841c971_fk_app_tags_nid` FOREIGN KEY (`tags_id`) REFERENCES `app_tags` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_articles_tag`
--

LOCK TABLES `app_articles_tag` WRITE;
/*!40000 ALTER TABLE `app_articles_tag` DISABLE KEYS */;
INSERT INTO `app_articles_tag` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,2),(8,7,3),(11,8,1),(9,8,2),(10,8,3),(12,9,1),(13,9,3),(18,11,1),(17,11,2),(19,11,3),(20,12,2),(22,12,3),(21,12,5),(23,13,2),(24,13,4),(25,14,1),(26,15,1),(32,21,1),(33,22,1),(34,23,2),(35,23,3),(36,24,1),(37,25,1),(38,26,3);
/*!40000 ALTER TABLE `app_articles_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_avatars`
--

DROP TABLE IF EXISTS `app_avatars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_avatars` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_avatars`
--

LOCK TABLES `app_avatars` WRITE;
/*!40000 ALTER TABLE `app_avatars` DISABLE KEYS */;
INSERT INTO `app_avatars` VALUES (1,'avatars/头像_0005_24_0UfUV3w.jpg'),(2,'avatars/头像_0004_17_u5j95Ji.jpg');
/*!40000 ALTER TABLE `app_avatars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_cover`
--

DROP TABLE IF EXISTS `app_cover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_cover` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_cover`
--

LOCK TABLES `app_cover` WRITE;
/*!40000 ALTER TABLE `app_cover` DISABLE KEYS */;
INSERT INTO `app_cover` VALUES (1,'article_img/5-32.jpg'),(2,'article_img/21_vRr54nE.jpg'),(3,'article_img/29.jpg'),(4,'article_img/小汽车.png'),(5,'article_img/微信图片_20240814234559.webp'),(6,'article_img/27.jpg'),(7,'article_img/地球.png'),(8,'article_img/shouhuiyuhangyuan.png');
/*!40000 ALTER TABLE `app_cover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_menu`
--

DROP TABLE IF EXISTS `app_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_menu` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(16) DEFAULT NULL,
  `menu_title_en` varchar(32) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `abstract` longtext,
  `abstract_time` int(11) NOT NULL,
  `rotation` tinyint(1) NOT NULL,
  `menu_time` int(11) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_menu`
--

LOCK TABLES `app_menu` WRITE;
/*!40000 ALTER TABLE `app_menu` DISABLE KEYS */;
INSERT INTO `app_menu` VALUES (1,'网站导航','site','金临安  言其饶也  边儒地城','有着千年百历史文化古的城，古步称头 亦名巴甸',2,1,3),(2,'新闻','new','纵观天下新闻 洞察未来风云','揽建水百年人才；强建水之教育',2,1,3),(3,'首页','index','文献名邦 滇南邹鲁 古城建水','七彩云南；世界花园感受神奇与美丽；体味“有一种叫做云南的生活”；文献名邦 滇南邹鲁 古城建水',2,1,3);
/*!40000 ALTER TABLE `app_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_menu_menu_url`
--

DROP TABLE IF EXISTS `app_menu_menu_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_menu_menu_url` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `menuimg_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_menu_menu_url_menu_id_menuimg_id_b33223da_uniq` (`menu_id`,`menuimg_id`),
  KEY `app_menu_menu_url_menuimg_id_836c9a04_fk_app_menuimg_nid` (`menuimg_id`),
  CONSTRAINT `app_menu_menu_url_menu_id_587b0ac6_fk_app_menu_nid` FOREIGN KEY (`menu_id`) REFERENCES `app_menu` (`nid`),
  CONSTRAINT `app_menu_menu_url_menuimg_id_836c9a04_fk_app_menuimg_nid` FOREIGN KEY (`menuimg_id`) REFERENCES `app_menuimg` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_menu_menu_url`
--

LOCK TABLES `app_menu_menu_url` WRITE;
/*!40000 ALTER TABLE `app_menu_menu_url` DISABLE KEYS */;
INSERT INTO `app_menu_menu_url` VALUES (9,1,1),(11,1,7),(10,1,10),(2,2,4),(12,2,5),(7,2,6),(3,3,1),(8,3,2),(4,3,3),(5,3,11);
/*!40000 ALTER TABLE `app_menu_menu_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_menuimg`
--

DROP TABLE IF EXISTS `app_menuimg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_menuimg` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  `dominant_hue` varchar(16) DEFAULT NULL,
  `is_dark` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_menuimg`
--

LOCK TABLES `app_menuimg` WRITE;
/*!40000 ALTER TABLE `app_menuimg` DISABLE KEYS */;
INSERT INTO `app_menuimg` VALUES (1,'site_bgimg/小火车.jpg',NULL,NULL),(2,'site_bgimg/烧豆腐.webp',NULL,NULL),(3,'site_bgimg/chaoxia.jpg',NULL,NULL),(4,'site_bgimg/40.jpg',NULL,NULL),(5,'site_bgimg/u20545790382306041642fm253fmtautoapp138fJPEG.webp',NULL,NULL),(6,'site_bgimg/17ec122d06bccf8bfd7f4da63f92e9e41252.jpeg',NULL,NULL),(7,'site_bgimg/101558sust8gi88ppfg738.jpg',NULL,NULL),(10,'site_bgimg/u33545314903546891931fm253fmtautoapp138fJPEG.webp',NULL,NULL),(11,'site_bgimg/wKgBZ1k7lBWARV0-AA9kqrbUvCY66.jpeg',NULL,NULL);
/*!40000 ALTER TABLE `app_menuimg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_navtags`
--

DROP TABLE IF EXISTS `app_navtags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_navtags` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `iconText` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_navtags`
--

LOCK TABLES `app_navtags` WRITE;
/*!40000 ALTER TABLE `app_navtags` DISABLE KEYS */;
INSERT INTO `app_navtags` VALUES (1,'教育','fa fa-book'),(2,'服务人民','fa fa-users'),(3,'旅游向导','fa fa-plane'),(4,'科技世界','fa fa-star'),(5,'生活娱乐','fa fa-rocket');
/*!40000 ALTER TABLE `app_navtags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_siteinfo`
--

DROP TABLE IF EXISTS `app_siteinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_siteinfo` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `nameObj` varchar(64) NOT NULL,
  `site_url` varchar(32) NOT NULL,
  `addr` varchar(16) NOT NULL,
  `show` tinyint(1) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_siteinfo`
--

LOCK TABLES `app_siteinfo` WRITE;
/*!40000 ALTER TABLE `app_siteinfo` DISABLE KEYS */;
INSERT INTO `app_siteinfo` VALUES (1,'古城建水','滇南邹鲁 文献名邦','http://123.249.121.115/','云南省红河州建水',1);
/*!40000 ALTER TABLE `app_siteinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_sitenav`
--

DROP TABLE IF EXISTS `app_sitenav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_sitenav` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `abstract` varchar(128) DEFAULT NULL,
  `href` varchar(200) NOT NULL,
  `icon_href` varchar(200) DEFAULT NULL,
  `create_date` datetime(6) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_sitenav`
--

LOCK TABLES `app_sitenav` WRITE;
/*!40000 ALTER TABLE `app_sitenav` DISABLE KEYS */;
INSERT INTO `app_sitenav` VALUES (1,'云南大学','会泽百家，至公天下','https://www.ynu.edu.cn/','https://img0.baidu.com/it/u=1364068953,4050295088&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=450','2024-08-14 14:04:51.887207'),(2,'去哪儿旅行','实时提供上百家旅游预订网站机票报价和航空公司直销机票价格','https://www.qunar.com/','https://pic.rmb.bdstatic.com/bjh/447091b23c51ac048295c1166cbc7b22.png','2024-08-14 14:06:46.879907'),(3,'得物','新一代潮流网购社区','https://www.dewu.com/','https://www.dewu.com/static/favicon.ico','2024-08-14 14:07:09.627093'),(4,'一部手机游云南','游客体验自由自在，政府服务无处不在','https://www.ybsjyyn.com/','https://www.ybsjyyn.com/static/website/static/favicon_a918276.ico','2024-08-14 14:07:36.823917'),(5,'建水实验中学','立德树人,胸怀未来','http://www.jssyzx.com.cn/','https://img0.baidu.com/it/u=3851574195,2593484189&fm=253&fmt=auto&app=138&f=JPEG?w=803&h=800','2024-08-14 14:08:02.417573'),(6,'红河州一中','立德树人，‌止于至善','http://www.hhzdyzx.com/','https://zhengxin-pub.cdn.bcebos.com/mark/32ebeb28bbd0503f4f5088120401a117.jpg','2024-08-14 14:08:26.833140'),(7,'建水一中','砺品树人  励学成才','https://www.baidu.com/s?tn=44004473_8_oem_dg&ie=utf-8&wd=%E5%BB%BA%E6%B0%B4%E4%B8%80%E4%B8%AD','https://5b0988e595225.cdn.sohucs.com/images/20171018/58068b9ce4364bf6b6a9d598f1412f56.jpeg','2024-08-14 16:16:41.215588'),(8,'云南招考频道','招生考试工作，组织，管理','https://www.ynzs.cn/','https://www.ynzs.cn/public/icon-ynzs.ico','2024-08-14 14:09:14.632488'),(9,'天猫','理想生活上天猫','https://www.tmall.com/','https://img2.baidu.com/it/u=62458578,2205004558&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=521','2024-08-14 14:09:41.174138'),(10,'淘宝','淘宝热卖好物，品类众多','https://www.taobao.com/','http://img.alicdn.com/tps/i3/T1OjaVFl4dXXa.JOZB-114-114.png','2024-08-14 14:10:10.242081'),(11,'小红书','您的生活指南','https://www.xiaohongshu.com/','https://fe-video-qc.xhscdn.com/fe-platform/ed8fe781ce9e16c1bfac2cd962f0721edabe2e49.ico','2024-08-14 14:10:35.248621'),(12,'快手','快手，拥抱每一种生活','https://www.kuaishou.com/','https://static.yximgs.com/udata/pkg/WEB-LIVE/kwai_icon.8f6787d8.ico','2024-08-14 14:11:01.193584'),(13,'Element-ui','一套为开发者准备的桌面端组件库','https://element.eleme.cn/#/zh-CN/component/installation','https://element.eleme.cn/favicon.ico','2024-08-14 14:11:27.322504'),(14,'GitHub','开源及私有软件项目的托管平台','https://github.com/','https://img0.baidu.com/it/u=2299561093,1390915375&fm=253&fmt=auto&app=138&f=JPEG?w=714&h=500','2024-08-14 14:11:50.746121'),(15,'csdn','专业开发者社区','https://www.csdn.net/','https://g.csdnimg.cn/static/logo/favicon32.ico','2024-08-14 14:12:13.788937'),(16,'抖音','抖音-记录美好生活','https://www.douyin.com/','https://img.zcool.cn/community/0114935b07d8baa8012181b0222f50.png@1280w_1l_2o_100sh.png','2024-08-14 14:12:42.577198'),(17,'百度','百度一下，你就知道','https://www.baidu.com/','https://www.baidu.com/favicon.ico','2024-08-14 14:13:04.283429'),(18,'git','智能的代码管理助手','https://github.com/','https://git-scm.com/favicon.ico','2024-08-14 14:13:30.831865'),(19,'b站','国内知名的视频弹幕网站','https://www.bilibili.com/','https://i0.hdslb.com/bfs/static/jinkela/long/images/favicon.ico','2024-08-14 14:13:57.325192');
/*!40000 ALTER TABLE `app_sitenav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_sitenav_tag`
--

DROP TABLE IF EXISTS `app_sitenav_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_sitenav_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sitenav_id` int(11) NOT NULL,
  `navtags_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_sitenav_tag_sitenav_id_navtags_id_178f45e1_uniq` (`sitenav_id`,`navtags_id`),
  KEY `app_sitenav_tag_navtags_id_1be4b78a_fk_app_navtags_nid` (`navtags_id`),
  CONSTRAINT `app_sitenav_tag_navtags_id_1be4b78a_fk_app_navtags_nid` FOREIGN KEY (`navtags_id`) REFERENCES `app_navtags` (`nid`),
  CONSTRAINT `app_sitenav_tag_sitenav_id_9822e96f_fk_app_sitenav_nid` FOREIGN KEY (`sitenav_id`) REFERENCES `app_sitenav` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_sitenav_tag`
--

LOCK TABLES `app_sitenav_tag` WRITE;
/*!40000 ALTER TABLE `app_sitenav_tag` DISABLE KEYS */;
INSERT INTO `app_sitenav_tag` VALUES (1,1,1),(2,2,3),(3,3,2),(4,4,3),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,2),(10,10,2),(11,11,5),(12,12,5),(13,13,4),(14,14,4),(15,15,4),(16,16,5),(17,17,2),(18,18,4),(19,19,5);
/*!40000 ALTER TABLE `app_sitenav_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_tags`
--

DROP TABLE IF EXISTS `app_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_tags` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(16) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_tags`
--

LOCK TABLES `app_tags` WRITE;
/*!40000 ALTER TABLE `app_tags` DISABLE KEYS */;
INSERT INTO `app_tags` VALUES (1,'新闻速览'),(2,'游玩'),(3,'尼基点儿'),(4,'克赖尼'),(5,'如嘎嘎'),(6,'沙悠儿'),(7,'皮坨'),(8,'喜儿'),(9,'米有'),(10,'朱家花园'),(11,'孔庙'),(12,'十七孔桥'),(13,'哈尼梯田'),(14,'草芽'),(15,'狮子糕');
/*!40000 ALTER TABLE `app_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_userinfo`
--

DROP TABLE IF EXISTS `app_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `qq_num` longtext,
  `sex` int(11) NOT NULL,
  `account_status` int(11) NOT NULL,
  `avatar_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_userinfo`
--

LOCK TABLES `app_userinfo` WRITE;
/*!40000 ALTER TABLE `app_userinfo` DISABLE KEYS */;
INSERT INTO `app_userinfo` VALUES ('pbkdf2_sha256$390000$VXWDhGbzII32mKSwJQy8nn$3IOFVISBuwPUXheIK926jCUHO00/rKqOdVosGY2fvS8=','2024-08-15 07:53:42.560550',1,'admin','','','',1,1,'2024-08-14 13:44:00.000000',1,'1111111111',1,0,'https://vcg00.cfp.cn/creative/vcg/800/new/VCG211394349551.jpg'),('qq',NULL,0,'qq','','','',0,1,'2024-08-14 15:11:00.000000',2,'11111111111',0,0,'https://img0.baidu.com/it/u=1025674513,2115761948&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=500');
/*!40000 ALTER TABLE `app_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_userinfo_collects`
--

DROP TABLE IF EXISTS `app_userinfo_collects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_userinfo_collects` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userinfo_id` int(11) NOT NULL,
  `articles_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_userinfo_collects_userinfo_id_articles_id_0deac66f_uniq` (`userinfo_id`,`articles_id`),
  KEY `app_userinfo_collects_articles_id_b746b4ce_fk_app_articles_nid` (`articles_id`),
  CONSTRAINT `app_userinfo_collects_articles_id_b746b4ce_fk_app_articles_nid` FOREIGN KEY (`articles_id`) REFERENCES `app_articles` (`nid`),
  CONSTRAINT `app_userinfo_collects_userinfo_id_55723683_fk_app_userinfo_nid` FOREIGN KEY (`userinfo_id`) REFERENCES `app_userinfo` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_userinfo_collects`
--

LOCK TABLES `app_userinfo_collects` WRITE;
/*!40000 ALTER TABLE `app_userinfo_collects` DISABLE KEYS */;
INSERT INTO `app_userinfo_collects` VALUES (1,1,1),(2,1,4),(4,1,5),(3,1,9);
/*!40000 ALTER TABLE `app_userinfo_collects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_userinfo_groups`
--

DROP TABLE IF EXISTS `app_userinfo_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_userinfo_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userinfo_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_userinfo_groups_userinfo_id_group_id_cfea9d11_uniq` (`userinfo_id`,`group_id`),
  KEY `app_userinfo_groups_group_id_ebf31c16_fk_auth_group_id` (`group_id`),
  CONSTRAINT `app_userinfo_groups_group_id_ebf31c16_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `app_userinfo_groups_userinfo_id_a5ded69d_fk_app_userinfo_nid` FOREIGN KEY (`userinfo_id`) REFERENCES `app_userinfo` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_userinfo_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userinfo_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_userinfo_user_permis_userinfo_id_permission_i_30ee8545_uniq` (`userinfo_id`,`permission_id`),
  KEY `app_userinfo_user_pe_permission_id_6facaba5_fk_auth_perm` (`permission_id`),
  CONSTRAINT `app_userinfo_user_pe_permission_id_6facaba5_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `app_userinfo_user_pe_userinfo_id_6ded8150_fk_app_useri` FOREIGN KEY (`userinfo_id`) REFERENCES `app_userinfo` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add advert',6,'add_advert'),(22,'Can change advert',6,'change_advert'),(23,'Can delete advert',6,'delete_advert'),(24,'Can view advert',6,'view_advert'),(25,'Can add avatars',7,'add_avatars'),(26,'Can change avatars',7,'change_avatars'),(27,'Can delete avatars',7,'delete_avatars'),(28,'Can view avatars',7,'view_avatars'),(29,'Can add cover',8,'add_cover'),(30,'Can change cover',8,'change_cover'),(31,'Can delete cover',8,'delete_cover'),(32,'Can view cover',8,'view_cover'),(33,'Can add menu img',9,'add_menuimg'),(34,'Can change menu img',9,'change_menuimg'),(35,'Can delete menu img',9,'delete_menuimg'),(36,'Can view menu img',9,'view_menuimg'),(37,'Can add nav tags',10,'add_navtags'),(38,'Can change nav tags',10,'change_navtags'),(39,'Can delete nav tags',10,'delete_navtags'),(40,'Can view nav tags',10,'view_navtags'),(41,'Can add site info',11,'add_siteinfo'),(42,'Can change site info',11,'change_siteinfo'),(43,'Can delete site info',11,'delete_siteinfo'),(44,'Can view site info',11,'view_siteinfo'),(45,'Can add tags',12,'add_tags'),(46,'Can change tags',12,'change_tags'),(47,'Can delete tags',12,'delete_tags'),(48,'Can view tags',12,'view_tags'),(49,'Can add site nav',13,'add_sitenav'),(50,'Can change site nav',13,'change_sitenav'),(51,'Can delete site nav',13,'delete_sitenav'),(52,'Can view site nav',13,'view_sitenav'),(53,'Can add menu',14,'add_menu'),(54,'Can change menu',14,'change_menu'),(55,'Can delete menu',14,'delete_menu'),(56,'Can view menu',14,'view_menu'),(57,'Can add articles',15,'add_articles'),(58,'Can change articles',15,'change_articles'),(59,'Can delete articles',15,'delete_articles'),(60,'Can view articles',15,'view_articles'),(61,'Can add user info',16,'add_userinfo'),(62,'Can change user info',16,'change_userinfo'),(63,'Can delete user info',16,'delete_userinfo'),(64,'Can view user info',16,'view_userinfo');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_app_userinfo_nid` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_app_userinfo_nid` FOREIGN KEY (`user_id`) REFERENCES `app_userinfo` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-08-14 13:48:27.507110','1','古城建水',1,'[{\"added\": {}}]',11,1),(2,'2024-08-14 13:50:06.747150','1','游云南',1,'[{\"added\": {}}]',6,1),(3,'2024-08-14 13:53:06.685203','1','article_img/5-32.jpg',1,'[{\"added\": {}}]',8,1),(4,'2024-08-14 13:53:20.353892','2','article_img/21_vRr54nE.jpg',1,'[{\"added\": {}}]',8,1),(5,'2024-08-14 13:53:31.424198','3','article_img/29.jpg',1,'[{\"added\": {}}]',8,1),(6,'2024-08-14 13:53:38.876364','4','article_img/小汽车.png',1,'[{\"added\": {}}]',8,1),(7,'2024-08-14 13:54:28.883908','1','新闻速览60s',1,'[{\"added\": {}}]',12,1),(8,'2024-08-14 13:55:19.589174','1','avatars/头像_0005_24_0UfUV3w.jpg',1,'[{\"added\": {}}]',7,1),(9,'2024-08-14 13:56:23.133884','1','site_bgimg/小火车.jpg',1,'[{\"added\": {}}]',9,1),(10,'2024-08-14 13:56:31.163563','2','site_bgimg/烧豆腐.webp',1,'[{\"added\": {}}]',9,1),(11,'2024-08-14 14:00:29.126817','3','site_bgimg/chaoxia.jpg',1,'[{\"added\": {}}]',9,1),(12,'2024-08-14 14:00:43.561111','1','Menu object (1)',1,'[{\"added\": {}}]',14,1),(13,'2024-08-14 14:02:56.689484','4','site_bgimg/40.jpg',1,'[{\"added\": {}}]',9,1),(14,'2024-08-14 14:03:00.665146','2','Menu object (2)',1,'[{\"added\": {}}]',14,1),(15,'2024-08-14 14:03:45.534641','3','Menu object (3)',1,'[{\"added\": {}}]',14,1),(16,'2024-08-14 14:04:49.991257','1','教育',1,'[{\"added\": {}}]',10,1),(17,'2024-08-14 14:04:51.889511','1','云南大学',1,'[{\"added\": {}}]',13,1),(18,'2024-08-14 14:05:09.036102','2','服务人民',1,'[{\"added\": {}}]',10,1),(19,'2024-08-14 14:05:21.576523','3','旅游向导',1,'[{\"added\": {}}]',10,1),(20,'2024-08-14 14:05:52.311433','4','科技世界',1,'[{\"added\": {}}]',10,1),(21,'2024-08-14 14:06:04.034986','1','教育',2,'[{\"changed\": {\"fields\": [\"\\u6807\\u7b7e\\u56fe\\u6807\"]}}]',10,1),(22,'2024-08-14 14:06:15.737606','5','生活娱乐',1,'[{\"added\": {}}]',10,1),(23,'2024-08-14 14:06:46.887532','2','去哪儿旅行',1,'[{\"added\": {}}]',13,1),(24,'2024-08-14 14:07:09.629007','3','得物',1,'[{\"added\": {}}]',13,1),(25,'2024-08-14 14:07:36.829207','4','一部手机游云南',1,'[{\"added\": {}}]',13,1),(26,'2024-08-14 14:08:02.419489','5','建水实验中学',1,'[{\"added\": {}}]',13,1),(27,'2024-08-14 14:08:26.837746','6','红河州一中',1,'[{\"added\": {}}]',13,1),(28,'2024-08-14 14:08:50.331397','7','建水一中',1,'[{\"added\": {}}]',13,1),(29,'2024-08-14 14:09:14.637291','8','云南招考频道',1,'[{\"added\": {}}]',13,1),(30,'2024-08-14 14:09:41.176076','9','天猫',1,'[{\"added\": {}}]',13,1),(31,'2024-08-14 14:10:10.243964','10','淘宝',1,'[{\"added\": {}}]',13,1),(32,'2024-08-14 14:10:35.253283','11','小红书',1,'[{\"added\": {}}]',13,1),(33,'2024-08-14 14:11:01.195526','12','快手',1,'[{\"added\": {}}]',13,1),(34,'2024-08-14 14:11:27.324688','13','Element-ui',1,'[{\"added\": {}}]',13,1),(35,'2024-08-14 14:11:50.754993','14','GitHub',1,'[{\"added\": {}}]',13,1),(36,'2024-08-14 14:12:13.790776','15','csdn',1,'[{\"added\": {}}]',13,1),(37,'2024-08-14 14:12:42.579159','16','抖音',1,'[{\"added\": {}}]',13,1),(38,'2024-08-14 14:13:04.288125','17','百度',1,'[{\"added\": {}}]',13,1),(39,'2024-08-14 14:13:30.834248','18','git',1,'[{\"added\": {}}]',13,1),(40,'2024-08-14 14:13:57.327153','19','b站',1,'[{\"added\": {}}]',13,1),(41,'2024-08-14 14:55:13.854526','1','Menu object (1)',2,'[{\"changed\": {\"fields\": [\"\\u6587\\u5b57\"]}}]',14,1),(42,'2024-08-14 14:56:04.438816','2','Menu object (2)',2,'[{\"changed\": {\"fields\": [\"\\u6587\\u5b57\"]}}]',14,1),(43,'2024-08-14 15:00:08.978101','5','site_bgimg/u20545790382306041642fm253fmtautoapp138fJPEG.webp',1,'[{\"added\": {}}]',9,1),(44,'2024-08-14 15:02:21.277344','6','site_bgimg/17ec122d06bccf8bfd7f4da63f92e9e41252.jpeg',1,'[{\"added\": {}}]',9,1),(45,'2024-08-14 15:02:34.136490','7','site_bgimg/101558sust8gi88ppfg738.jpg',1,'[{\"added\": {}}]',9,1),(46,'2024-08-14 15:02:37.218988','8','site_bgimg/101558sust8gi88ppfg738_NuZGn1E.jpg',1,'[{\"added\": {}}]',9,1),(47,'2024-08-14 15:02:40.716373','9','site_bgimg/101558sust8gi88ppfg738_A23eLFA.jpg',1,'[{\"added\": {}}]',9,1),(48,'2024-08-14 15:02:43.748517','10','site_bgimg/u33545314903546891931fm253fmtautoapp138fJPEG.webp',1,'[{\"added\": {}}]',9,1),(49,'2024-08-14 15:02:51.577078','11','site_bgimg/wKgBZ1k7lBWARV0-AA9kqrbUvCY66.jpeg',1,'[{\"added\": {}}]',9,1),(50,'2024-08-14 15:09:45.576402','2','avatars/头像_0004_17_u5j95Ji.jpg',1,'[{\"added\": {}}]',7,1),(51,'2024-08-14 15:10:22.643077','1','admin',2,'[{\"changed\": {\"fields\": [\"Last login\", \"QQ\\u53f7\\u7801\", \"\\u7528\\u6237\\u6027\\u522b\", \"\\u7528\\u6237\\u5934\\u50cf\"]}}]',16,1),(52,'2024-08-14 15:12:11.156211','2','qq',1,'[{\"added\": {}}]',16,1),(53,'2024-08-14 15:13:20.939110','2','qq',2,'[{\"changed\": {\"fields\": [\"\\u7528\\u6237\\u5934\\u50cf\"]}}]',16,1),(54,'2024-08-14 15:28:42.977424','2','游玩',1,'[{\"added\": {}}]',12,1),(55,'2024-08-14 15:29:31.010032','3','尼基点儿',1,'[{\"added\": {}}]',12,1),(56,'2024-08-14 15:29:56.325925','4','克赖尼',1,'[{\"added\": {}}]',12,1),(57,'2024-08-14 15:30:08.019876','5','如嘎嘎',1,'[{\"added\": {}}]',12,1),(58,'2024-08-14 15:30:29.466039','6','沙悠儿',1,'[{\"added\": {}}]',12,1),(59,'2024-08-14 15:30:43.002520','7','皮坨',1,'[{\"added\": {}}]',12,1),(60,'2024-08-14 15:30:52.349718','8','喜儿',1,'[{\"added\": {}}]',12,1),(61,'2024-08-14 15:31:08.738535','9','米有',1,'[{\"added\": {}}]',12,1),(62,'2024-08-14 15:31:35.790332','10','朱家花园',1,'[{\"added\": {}}]',12,1),(63,'2024-08-14 15:31:43.841684','11','孔庙',1,'[{\"added\": {}}]',12,1),(64,'2024-08-14 15:32:08.782473','12','十七孔桥',1,'[{\"added\": {}}]',12,1),(65,'2024-08-14 15:32:24.129938','13','哈尼梯田',1,'[{\"added\": {}}]',12,1),(66,'2024-08-14 15:33:11.889536','14','草芽',1,'[{\"added\": {}}]',12,1),(67,'2024-08-14 15:33:30.453504','15','狮子糕',1,'[{\"added\": {}}]',12,1),(68,'2024-08-14 15:33:59.351753','1','新闻速览',2,'[{\"changed\": {\"fields\": [\"\\u6807\\u7b7e\\u540d\\u5b57\"]}}]',12,1),(69,'2024-08-14 15:46:18.734047','5','article_img/微信图片_20240814234559.webp',1,'[{\"added\": {}}]',8,1),(70,'2024-08-14 15:52:16.134761','3','Menu object (3)',2,'[{\"changed\": {\"fields\": [\"\\u83dc\\u5355\\u56fe\\u7247\"]}}]',14,1),(71,'2024-08-14 15:52:47.987403','9','site_bgimg/101558sust8gi88ppfg738_A23eLFA.jpg',3,'',9,1),(72,'2024-08-14 15:52:47.992250','8','site_bgimg/101558sust8gi88ppfg738_NuZGn1E.jpg',3,'',9,1),(73,'2024-08-14 15:53:11.219673','2','Menu object (2)',2,'[{\"changed\": {\"fields\": [\"\\u83dc\\u5355\\u56fe\\u7247\"]}}]',14,1),(74,'2024-08-14 15:53:34.219067','3','Menu object (3)',2,'[{\"changed\": {\"fields\": [\"\\u83dc\\u5355\\u56fe\\u7247\"]}}]',14,1),(75,'2024-08-14 15:54:31.055585','1','Menu object (1)',2,'[{\"changed\": {\"fields\": [\"\\u83dc\\u5355\\u56fe\\u7247\"]}}]',14,1),(76,'2024-08-14 15:54:54.527217','2','Menu object (2)',2,'[{\"changed\": {\"fields\": [\"\\u83dc\\u5355\\u56fe\\u7247\"]}}]',14,1),(77,'2024-08-14 15:58:35.505737','6','article_img/27.jpg',1,'[{\"added\": {}}]',8,1),(78,'2024-08-14 15:58:42.911090','7','article_img/地球.png',1,'[{\"added\": {}}]',8,1),(79,'2024-08-14 15:58:50.312276','8','article_img/shouhuiyuhangyuan.png',1,'[{\"added\": {}}]',8,1),(80,'2024-08-14 16:03:48.002010','20','建水选手，第一！！！',3,'',15,1),(81,'2024-08-14 16:03:48.007369','19','建水选手，第一！！！',3,'',15,1),(82,'2024-08-14 16:03:48.011066','18','建水选手，第一！！！',3,'',15,1),(83,'2024-08-14 16:03:48.014815','17','建水选手，第一！！！',3,'',15,1),(84,'2024-08-14 16:03:48.018346','16','建水选手，第一！！！',3,'',15,1),(85,'2024-08-14 16:16:41.217240','7','建水一中',2,'[{\"changed\": {\"fields\": [\"\\u7f51\\u7ad9\\u94fe\\u63a5\"]}}]',13,1),(86,'2024-08-14 16:31:27.775370','1','游云南',2,'[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\\u5730\\u5740\"]}}]',6,1),(87,'2024-08-14 16:32:45.328777','1','游云南',2,'[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\\u5730\\u5740\"]}}]',6,1),(88,'2024-08-14 17:26:56.876424','10','十全十美×4！TEAM CHINA奥运“纪念封”来了',3,'',15,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(6,'app','advert'),(15,'app','articles'),(7,'app','avatars'),(8,'app','cover'),(14,'app','menu'),(9,'app','menuimg'),(10,'app','navtags'),(11,'app','siteinfo'),(13,'app','sitenav'),(12,'app','tags'),(16,'app','userinfo'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-08-14 12:46:58.201753'),(2,'contenttypes','0002_remove_content_type_name','2024-08-14 12:46:58.274315'),(3,'auth','0001_initial','2024-08-14 12:46:58.457186'),(4,'auth','0002_alter_permission_name_max_length','2024-08-14 12:46:58.495452'),(5,'auth','0003_alter_user_email_max_length','2024-08-14 12:46:58.503554'),(6,'auth','0004_alter_user_username_opts','2024-08-14 12:46:58.510353'),(7,'auth','0005_alter_user_last_login_null','2024-08-14 12:46:58.517276'),(8,'auth','0006_require_contenttypes_0002','2024-08-14 12:46:58.526232'),(9,'auth','0007_alter_validators_add_error_messages','2024-08-14 12:46:58.533600'),(10,'auth','0008_alter_user_username_max_length','2024-08-14 12:46:58.541582'),(11,'auth','0009_alter_user_last_name_max_length','2024-08-14 12:46:58.548705'),(12,'auth','0010_alter_group_name_max_length','2024-08-14 12:46:58.562652'),(13,'auth','0011_update_proxy_permissions','2024-08-14 12:46:58.569604'),(14,'auth','0012_alter_user_first_name_max_length','2024-08-14 12:46:58.575934'),(15,'app','0001_initial','2024-08-14 12:46:59.412828'),(16,'admin','0001_initial','2024-08-14 12:46:59.506971'),(17,'admin','0002_logentry_remove_auto_add','2024-08-14 12:46:59.524387'),(18,'admin','0003_logentry_add_action_flag_choices','2024-08-14 12:46:59.535861'),(19,'sessions','0001_initial','2024-08-14 12:46:59.579330'),(20,'app','0002_remove_menuimg_dominant_hue_remove_menuimg_is_dark','2024-08-14 15:04:09.292083'),(21,'app','0003_menuimg_dominant_hue_menuimg_is_dark','2024-08-14 15:07:56.128269');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0bt30s1k5orw7ycxcwz1nddjiwlk5vrz','.eJxVjDkOwjAQRe_iGlkzWewxJX3OEM3ikACKpSwV4u4oUgpo_3vvv13P-zb2-5qXfjJ3deguv5uwPvN8AHvwfC9ey7wtk_hD8SddfVcsv26n-3cw8joedZSqrS0RVwAgLUUzpFCLIg8SshIF4AEwUgN1BEztgIE5p9igKrnPF9V9N2o:1seVIk:y1iTQWE0M37azMUCRjx5ARGRuMFDk70LD0FBj5F8mls','2024-08-29 07:53:42.564947'),('1mkj841uuj26y80zvx9wf2wzywai31ou','.eJzFl8mS2jAQhl-F8plF8iLJc0vuOeYUT1GtxeAE25QXLlO8e9TAzGQcg4wHmFMb9-9f6q-FLL94S2ib9bKtTbXMtPfkUW_67z0J6o8pMKF_Q7Eq56osmiqTc5TMT9l6_qPUZvP9pP1gsIZ6jU9z6UeBjgX4hBAZCa41FSyQikIqmVFCMAIpoVyEJOCExlFKGYCJeUiVEmiam6Ktrdevl8QrIDeJ9zRJvG_bbeJN7UVmp3a8lUI1SWGmskptzDGZ4wRrTH98OknaiHJmQ2g0BhapCIMJxDDnttoccwvQeVYsYLu1VztTNYujALT-eV5jsyedrAxoVbW57Jmney776eSGle2fMW0yjVlKiN9jz2wXbeBgyFhOVZNZQe0g9aq6J6vhxXTRBA432wdFqA0xZ_5IUKq0i-UypaPkUYiuKaoLLHR6M0EOvyQ3I4E1sHKsqoPicbiGl9TFFfV488gXaOoHfCQg3JyzIi0vQ3pT3RPU8GK6aJjDza7SOAgxEJWO3aN20EDl2qJOokdhuqawLjTe5w06xkAkBkGUwpEYGwsNX9WXiR0Ud8U1sqQuLnGVt-0IS8duWsgky1ducCj6GnaD6usijPuGSCP6PlLEU8Bf9vCHB5bUYI6R0euvzhrj3t3eVHdleZNCO0gpcY8kU-ya8H34BMQCdm6GKHogwsGFdaHRq7xvcQyxZNwnkVfR1yD8xNGE-t1_eh9hISE8BIUziEJx2EwCcXiZ8TD4f8wax6zXmdnoGWwa5xccNyo844IHmHqmytWZHtnv1MWqKtvthRa9awZ26DZF93VxUKHdLoXdG8H-2dv_Bfsn96s:1seGfO:8_xuN5FLGHKJVyUBheZQU_BJeP9JNOA4XkzlMgvQ7GQ','2024-08-28 16:16:06.027017'),('o1aavnsjomjkz9aicrda3iejzz1xyewv','.eJxVjDkOwjAQRe_iGlkzWewxJX3OEM3ikACKpSwV4u4oUgpo_3vvv13P-zb2-5qXfjJ3deguv5uwPvN8AHvwfC9ey7wtk_hD8SddfVcsv26n-3cw8joedZSqrS0RVwAgLUUzpFCLIg8SshIF4AEwUgN1BEztgIE5p9igKrnPF9V9N2o:1seF7m:bBBsG6qxnceddeFGV9QAyLzxhy7y038W_RSaO5-otA0','2024-08-28 14:37:18.994962'),('p5bxyq1qdt09e3pkbed51530oqx7bbjg','.eJxVjDkOwjAQRe_iGlkzWewxJX3OEM3ikACKpSwV4u4oUgpo_3vvv13P-zb2-5qXfjJ3deguv5uwPvN8AHvwfC9ey7wtk_hD8SddfVcsv26n-3cw8joedZSqrS0RVwAgLUUzpFCLIg8SshIF4AEwUgN1BEztgIE5p9igKrnPF9V9N2o:1seFAq:F4_ULvlBTtZWqd4e2ardP3dCrCDNhoBP1zBfJnKmTX8','2024-08-28 14:40:28.910236'),('t1bdqzyb19cuk63llymgpi6vha1fmdjb','.eJzFl8mS2jAQhl-F8plF8iLJc0vuOeYUT1GtxeAE25QXLlO8e9TAzGQcg4wHmFMb9-9f6q-FLL94S2ib9bKtTbXMtPfkUW_67z0J6o8pMKF_Q7Eq56osmiqTc5TMT9l6_qPUZvP9pP1gsIZ6jU9z6UeBjgX4hBAZCa41FSyQikIqmVFCMAIpoVyEJOCExlFKGYCJeUiVEmiam6Ktrdevl8QrIDeJ9zRJvG_bbeJN7UVmp3a8lUI1SWGmskptzDGZ4wRrTH98OknaiHJmQ2g0BhapCIMJxDDnttoccwvQeVYsYLu1VztTNYujALT-eV5jsyedrAxoVbW57Jmney776eSGle2fMW0yjVlKiN9jz2wXbeBgyFhOVZNZQe0g9aq6J6vhxXTRBA432wdFqA0xZ_5IUKq0i-UypaPkUYiuKaoLLHR6M0EOvyQ3I4E1sHKsqoPicbiGl9TFFfV488gXaOoHfCQg3JyzIi0vQ3pT3RPU8GK6aJjDza7SOAgxEJWO3aN20EDl2qJOokdhuqawLjTe5w06xkAkBkGUwpEYGwsNX9WXiR0Ud8U1sqQuLnGVt-0IS8duWsgky1ducCj6GnaD6usijPuGSCP6PlLEU8Bf9vCHB5bUYI6R0euvzhrj3t3eVHdleZNCO0gpcY8kU-ya8H34BMQCdm6GKHogwsGFdaHRq7xvcQyxZNwnkVfR1yD8xNGE-t1_eh9hISE8BIUziEJx2EwCcXiZ8TD4f8wax6zXmdnoGWwa5xccNyo844IHmHqmytWZHtnv1MWqKtvthRa9awZ26DZF93VxUKHdLoXdG8H-2dv_Bfsn96s:1seHmZ:g70dpbrmEBKNhsBtsPdY3Tf3pVX90iiEAxIXGGAtYYg','2024-08-28 17:27:35.800345');
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

-- Dump completed on 2024-09-13  0:32:46
