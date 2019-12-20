/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.36 : Database - cake
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cake` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cake`;

/*Table structure for table `admins` */

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `admins` */

insert  into `admins`(`id`,`username`,`password`) values (1,'1','yJOXpxCuYkm+zIQrRHPdpQ=='),(2,'admin','admin');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面',
  `image1` varchar(255) DEFAULT NULL COMMENT '细节图片1',
  `image2` varchar(255) DEFAULT NULL COMMENT '细节图片2',
  `price` int(11) DEFAULT NULL COMMENT '价格',
  `intro` varchar(255) DEFAULT NULL COMMENT '介绍',
  `stock` int(11) DEFAULT '0' COMMENT '库存',
  `type_id` int(11) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

insert  into `goods`(`id`,`name`,`cover`,`image1`,`image2`,`price`,`intro`,`stock`,`type_id`) values (1,'玫瑰花园','/picture/1-1.jpg','/picture/1-2.jpg','/picture/1-3.jpg',229,'一层层渐变,充满变幻无穷的神秘浪漫气息 层层口味的变化 完全来自于可可本身 由淡到浓一次叠加 呈现清新爽滑的巧克力慕斯风味 回味无穷',10,5),(2,'浪漫甜心','/picture/2-1.jpg','/picture/2-2.jpg','/picture/2-3.jpg',229,'圣洁的白色玫瑰，烘托着光亮饱满的红艳果实，烂漫的色彩，惹人无比爱怜。新鲜草莓和特调淡奶油混合而成的松软的蛋糕坯，美丽纯净，充满了幸福甜蜜的味道\r\n主口味：草莓口味 主要原料：新西兰乳脂奶油，古巴朗姆酒，韩国幼砂糖，鲜草莓。 甜度： 三星（满五星） 最佳食用温度：6-10摄氏度',10,5),(3,'留恋之恋','/picture/3-1.jpg','/picture/3-2.jpg','/picture/3-3.jpg',229,'主口味:榴莲奶油味(原味蛋糕胚+榴莲酱+乳脂奶油)主要原料：新西兰乳脂奶油，古巴朗姆酒，韩国幼砂糖，鲜草莓。 甜度： 三星（满五星） 最佳食用温度：5-7摄氏度',10,5),(4,'玫瑰物语','/picture/4-1.jpg','/picture/4-2.jpg','/picture/4-3.jpg',299,'一座小小的花园 一场优美的缄默 色彩的冲撞带来幻美的视觉享受 自制的玫瑰酱调配而成的玫瑰慕斯蛋糕 口感丰富 异香诱人 忠贞的爱情充溢了玫瑰的内心,因而更加美丽\r\n主口味:玫瑰慕斯 主要原料:糖渍玫瑰,奶油芝士,乳脂奶油,朗姆酒,白巧克力软糖 甜度:三星（满五星） 最佳食用温度：5-7摄氏度',10,5),(5,'芒果列车','/picture/5-1.jpg','/picture/5-2.jpg','/picture/5-3.jpg',269,'黄橙橙的时光列车,散发出温暖的灯光,连接着过去与未来.这是一款纯慕斯型的蛋糕,芒果慕斯镶嵌芒果果冻丁,不含蛋糕胚体,均匀莫斯体和果冻,口感细腻嫩滑,酸甜适口零脂肪,美容又零脂肪\r\n主口味: 芒果慕斯 主要原料:芒果果溶,芒果果冻,乳脂奶油,法国君度力娇酒  甜度:三星（满五星） 最佳食用温度：5-7摄氏度',10,5),(6,'夜礼服','/picture/6-1.jpg','/picture/6-2.jpg','/picture/6-3.jpg',299,'空气中流动着的厚重巧克力气息,一切在夜色下坡上银装.可可野性的诱惑,加之朗姆酒的浪漫清冽,传递出来自神秘过度的魅惑与力量.\r\n主口味:香浓巧克力 主要原料:黑巧克力,乳脂奶油,大黄油,朗姆酒,巧克力果仁脆,黑巧克力软糖 甜度:四星（满五星） 最佳食用温度：5-7摄氏度',10,5),(7,'爱之玫瑰','/picture/7-1.jpg','/picture/7-2.jpg','/picture/7-3.jpg',299,'爱之魅力,悄然跃于玫瑰之上,包裹时光,翩翩起舞,让这一切置身于梦幻旅途之中邂逅玫瑰,享受梦境一刻.\r\n主口味:玫瑰奶油味 主要原料:云南玫瑰,澳洲奶油芝士,澳洲乳脂奶油,古巴朗姆酒,白巧克力软糖 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,4),(8,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(9,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(10,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(11,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(12,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(13,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(14,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2);

/*Table structure for table `items` */

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) DEFAULT NULL COMMENT '购买时价格',
  `amount` int(11) DEFAULT NULL COMMENT '购买数量',
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `good_id` int(11) DEFAULT NULL COMMENT '蛋糕id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `items` */

insert  into `items`(`id`,`price`,`amount`,`order_id`,`good_id`) values (1,36,1,1,13),(2,269,2,2,5),(3,269,1,3,5),(4,299,1,4,6);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` int(11) DEFAULT NULL COMMENT '总价',
  `amount` int(11) DEFAULT NULL COMMENT '商品总数',
  `status` tinyint(4) DEFAULT '1' COMMENT '订单状态(1未付款/2已付款/3已发货/4已完成)',
  `paytype` tinyint(4) DEFAULT '0' COMMENT '支付方式 (1微信/2支付宝/3货到付款)',
  `name` varchar(255) DEFAULT NULL COMMENT '收货人',
  `phone` varchar(255) DEFAULT NULL COMMENT '收货电话',
  `address` varchar(255) DEFAULT NULL COMMENT '收货地址',
  `systime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '下单时间',
  `user_id` int(11) DEFAULT NULL COMMENT '下单用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`id`,`total`,`amount`,`status`,`paytype`,`name`,`phone`,`address`,`systime`,`user_id`) values (1,36,1,3,1,'哈哈哈','15212986151','安徽省合肥市','2019-10-25 12:28:20',7),(2,538,2,2,2,'华先生','15212986151','安徽省合肥市','2019-11-11 09:20:09',9),(3,269,1,2,1,'华先生','15212986151','安徽省合肥市','2019-11-11 11:00:15',9),(4,299,1,2,2,'哈哈哈','15212986151','安徽省合肥市','2019-11-18 09:43:56',9);

/*Table structure for table `tops` */

DROP TABLE IF EXISTS `tops`;

CREATE TABLE `tops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT NULL COMMENT '推荐类型(1条幅/2大图/3小图)',
  `good_id` int(11) DEFAULT NULL COMMENT '蛋糕id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='首页推荐商品';

/*Data for the table `tops` */

insert  into `tops`(`id`,`type`,`good_id`) values (1,2,1),(2,2,2),(3,2,5),(4,2,3),(5,3,10),(6,3,11),(7,1,7),(8,3,12),(9,3,13),(10,2,9),(11,2,6),(12,1,5),(14,1,12),(15,1,10),(16,1,6);

/*Table structure for table `types` */

DROP TABLE IF EXISTS `types`;

CREATE TABLE `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `types` */

insert  into `types`(`id`,`name`) values (1,'冰淇淋系列'),(2,'零食系列'),(3,'儿童系列'),(4,'法式系列');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `name` varchar(255) DEFAULT NULL COMMENT '收货人',
  `phone` varchar(255) DEFAULT NULL COMMENT '收货电话',
  `address` varchar(255) DEFAULT NULL COMMENT '收货地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`name`,`phone`,`address`) values (2,'阿联','yJOXpxCuYkm+zIQrRHPdpQ==','华先生','15212986151','安徽省合肥市'),(8,'aa','R42Upt30/IRtNJAeyVOykA==',NULL,'15212986151','安徽省合肥市'),(9,'hzc','yJOXpxCuYkm+zIQrRHPdpQ==',NULL,'15212986151','安徽省合肥市');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
