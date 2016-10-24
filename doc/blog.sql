/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.10-MariaDB-log : Database - blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blog` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `blog`;

/*Table structure for table `articles` */

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` bigint(30) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文章标题',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章内容',
  `background` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '根据随机图片和文章内容随机生成的图片',
  `user_id` bigint(30) unsigned NOT NULL DEFAULT '1' COMMENT '用户id,因为写博客的人必须为注册用户,所以每个用户都应该有一个user_id',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish' COMMENT '文章的状态,publish,draft,private',
  `password` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文章的密码,默认为空',
  `sticky` int(10) NOT NULL DEFAULT '0' COMMENT '文章有时候需要置顶',
  `rating` tinyint(1) NOT NULL DEFAULT '0' COMMENT '文章的星级,可以被用户评价',
  `parent` bigint(30) NOT NULL DEFAULT '0' COMMENT '文章的父ID',
  `comment_status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open' COMMENT '是否开放评论,默认为open,可以设置为closed',
  `comment_count` int(10) NOT NULL DEFAULT '0' COMMENT '文章的评论数,后台会在特定的时间去刷新',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '文章的创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `articles` */

insert  into `articles`(`id`,`title`,`content`,`background`,`user_id`,`status`,`password`,`sticky`,`rating`,`parent`,`comment_status`,`comment_count`,`created_at`,`updated_at`) values (1,'A article title 01','Quis incidunt iusto dolorem minima, non odit ipsum ab, ratione veniam eaque natus modi eius. Laudantium saepe enim, deserunt non aspernatur veritatis.','',1,'publish','',0,0,0,'open',0,'2016-06-05 00:00:10','2016-06-05 00:00:10'),(2,'A article title 02','Officia accusamus sunt illum cupiditate laboriosam expedita, iste ea, corrupti et ratione sed. Excepturi quibusdam vero aperiam, quia sit voluptas laudantium voluptatibus!','',2,'publish','',1,0,0,'open',0,'2016-06-05 01:01:21','2016-06-05 01:01:21'),(3,'A article title 03','Porro, dolorum, reiciendis. Officiis nulla adipisci sed nesciunt error sit sint eaque pariatur, officia reprehenderit eius fugit hic enim beatae obcaecati repudiandae?','',3,'publish','',0,0,0,'open',0,'2016-06-05 02:02:32','2016-06-05 02:02:32'),(4,'A article title 04','Temporibus, odit. A facere expedita ab non esse rerum ipsa, ut cumque neque eos et placeat deserunt. Harum mollitia non voluptatibus nisi!','',4,'publish','',0,0,0,'open',0,'2016-06-05 03:03:43','2016-06-05 03:03:43'),(5,'A article title 05','Quo, tempore perspiciatis quasi, explicabo molestias libero natus esse possimus, totam placeat molestiae animi similique minus deleniti. Illum odit quod, laboriosam voluptas!','',5,'publish','',10,0,0,'open',0,'2016-06-05 04:04:54','2016-06-05 04:04:54'),(6,'A article title 06','Dolorem, eum, harum expedita iste nihil iure vel laboriosam quaerat sed quam est necessitatibus eius, magnam id blanditiis voluptatibus cupiditate, inventore quia!','',6,'publish','',0,0,0,'open',0,'2016-06-05 05:05:01','2016-06-05 05:05:01'),(7,'A article title 07','Perspiciatis suscipit temporibus minus laboriosam, obcaecati ducimus eaque consequatur ex, neque distinctio necessitatibus ratione nostrum magni facilis enim doloremque repellendus at cumque?','',7,'publish','',0,0,0,'open',0,'2016-06-05 06:06:02','2016-06-05 06:06:02'),(8,'A article title 08','Minus, fugiat, quo. Iure rem doloribus praesentium, error quam adipisci excepturi dolor impedit tempore incidunt veniam quaerat itaque minus aliquid, odio provident?','',8,'publish','',0,0,0,'open',0,'2016-06-05 07:07:03','2016-06-05 07:07:03'),(9,'A article title 09','Vel eligendi inventore itaque libero sit, dolor, unde provident ullam blanditiis dignissimos, labore. Enim officiis repudiandae magni corporis incidunt soluta itaque dolorem.','',9,'publish','',0,0,0,'open',0,'2016-06-05 08:08:04','2016-06-05 08:08:04'),(10,'A article title 10','Maiores laudantium quas adipisci, perferendis quasi. In dicta quidem suscipit ad perspiciatis, voluptatum rerum, iste laborum dolor quisquam officia, magnam, doloremque dolores.','',10,'publish','',0,0,0,'open',0,'2016-06-05 09:09:19','2016-06-05 09:09:19'),(11,'A article title 11','Illo in, eius neque corporis eaque, consequatur quibusdam? Perferendis accusantium quo, suscipit, odio cupiditate ex inventore debitis quibusdam assumenda neque ut, fugit?','',11,'publish','',0,0,0,'open',0,'2016-06-05 10:10:10','2016-06-05 10:10:10'),(12,'A article title 12','Eveniet reprehenderit consectetur sed sequi voluptatibus, nemo hic. Hic impedit unde nesciunt quis eos obcaecati, aperiam, nam possimus quos necessitatibus voluptates ipsam.','',12,'publish','',0,0,0,'open',0,'2016-06-05 11:11:11','2016-06-05 11:11:11'),(13,'A article title 13','Ipsam est ipsum, totam nesciunt velit officiis tenetur sit qui, ut. Non cum nisi, saepe maxime molestiae architecto vel ducimus tenetur necessitatibus.','',13,'publish','',0,0,0,'open',0,'2016-06-05 12:12:12','2016-06-05 12:12:12'),(14,'A article title 14','Dolorum, animi, minima! Pariatur, repudiandae consequatur vitae reiciendis ipsa, odit nesciunt rem, nobis blanditiis minima cumque magni aperiam! Praesentium dolores, enim perferendis.','',14,'publish','',0,0,0,'open',0,'2016-06-05 13:13:13','2016-06-05 13:13:13'),(15,'A article title 15','Libero impedit saepe esse aliquam et reprehenderit fugiat nesciunt error optio possimus, quis, officiis, necessitatibus at commodi perspiciatis veritatis autem magnam provident.','',15,'publish','',0,0,0,'open',0,'2016-06-05 14:14:14','2016-06-05 14:14:14'),(16,'A article title 16','Incidunt minima corporis, enim, reprehenderit sit magni temporibus quaerat sunt delectus, ut aliquam magnam error. Minus, molestias, quaerat. Ipsa voluptate a explicabo!','',16,'publish','',0,0,0,'open',0,'2016-06-05 15:15:15','2016-06-05 15:15:15'),(17,'A article title 17','Earum consequatur ut recusandae maiores, placeat magni beatae perferendis repudiandae ullam reprehenderit, perspiciatis illum, sit cupiditate modi quisquam, id! Facere, a, inventore!','',17,'publish','',0,0,0,'open',0,'2016-06-05 16:16:16','2016-06-05 16:16:16'),(18,'A article title 18','Vitae omnis modi delectus odit incidunt voluptatum accusantium voluptatibus, dolor deserunt sapiente magni corporis, recusandae iusto sunt eveniet maxime libero adipisci doloribus!','',18,'publish','',0,0,0,'open',0,'2016-06-05 17:17:17','2016-06-05 17:17:17'),(19,'A article title 19','Impedit recusandae veritatis ipsum praesentium, asperiores modi sapiente mollitia fugiat aperiam, quidem, laudantium qui. Iusto minus officiis eum modi non totam voluptates!','',19,'publish','',0,0,0,'open',0,'2016-06-05 18:18:18','2016-06-05 18:18:18'),(20,'A article title 20','Molestiae temporibus veniam velit quas voluptatibus odit esse consequuntur exercitationem necessitatibus, optio rerum. Quisquam voluptatum autem eum nam consequatur ex ducimus, iste!','',20,'publish','',0,0,0,'open',0,'2016-06-05 19:19:19','2016-06-05 19:19:19'),(21,'A article title 21','Saepe sequi fugiat atque officiis asperiores est esse at laboriosam dignissimos quos, velit corporis quas enim repudiandae illum. Quia tempore soluta consectetur.','',21,'publish','',0,0,0,'open',0,'2016-06-05 20:20:20','2016-06-05 20:20:20'),(22,'A article title 22','Est voluptatibus enim animi atque, ea autem illo nihil consequuntur placeat nemo earum assumenda, magnam at. Assumenda libero, commodi earum quis harum.','',22,'publish','',0,0,0,'open',0,'2016-06-05 21:21:21','2016-06-05 21:21:21'),(23,'A article title 23','Assumenda vitae labore soluta similique sunt libero quos natus dolorem explicabo distinctio, sit dolor harum perferendis fuga molestiae inventore cumque vero. Soluta!','',23,'publish','',0,0,0,'open',0,'2016-06-05 22:22:22','2016-06-05 22:22:22'),(24,'A article title 24','Voluptatum quam, et corrupti delectus soluta voluptatibus minus beatae, obcaecati ad ullam eius repudiandae excepturi neque quos molestiae, modi. Nobis, illo, natus.','',24,'publish','',0,0,0,'open',0,'2016-06-05 23:23:23','2016-06-05 23:23:23'),(25,'A article title 25','Vitae, architecto pariatur a excepturi enim perspiciatis, expedita sequi nihil repudiandae nulla consequuntur molestiae natus quo corporis fuga aliquid laborum ipsa repellendus.','',25,'publish','',0,0,0,'open',0,'2016-06-05 00:24:24','2016-06-05 00:24:24'),(26,'A article title 26','Quaerat, voluptate quos ea eum illo laborum, omnis quo nesciunt debitis asperiores sint. Sit magnam dolores cumque ut ullam explicabo soluta accusamus.','',26,'publish','',0,0,0,'open',0,'2016-06-05 01:25:25','2016-06-05 01:25:25'),(27,'A article title 27','Enim alias cum praesentium a cupiditate soluta laborum recusandae? Dolorem dolorum ipsum similique autem! Molestiae earum sequi, a. Iste ab, nostrum corporis?','',27,'publish','',0,0,0,'open',0,'2016-06-05 02:26:26','2016-06-05 02:26:26'),(28,'test','test1','storage/5aa9b514-f062-4d95-b67b-bb2d051a641b.jpg',3,'public','',0,0,0,'open',0,'2016-10-17 15:41:29','2016-10-17 15:41:29');

/*Table structure for table `articles_metadata` */

DROP TABLE IF EXISTS `articles_metadata`;

CREATE TABLE `articles_metadata` (
  `id` bigint(30) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` bigint(30) unsigned NOT NULL DEFAULT '0',
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_articles_metadata` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `articles_metadata` */

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` bigint(30) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(30) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(30) unsigned NOT NULL DEFAULT '0',
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `article_id` bigint(30) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `comments` */

insert  into `comments`(`id`,`parent_id`,`title`,`content`,`user_id`,`status`,`rating`,`article_id`,`ip_address`,`email`,`create_at`,`update_at`) values (1,0,'task comment 1','/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;\r\n/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;\r\n/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;\r\n/*!40101 SET NAMES utf8 */;\r\n/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;\r\n/*!40103 SET TIME_ZONE=\'+00:00\' */;\r\n/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;\r\n/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;\r\n/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE=\'NO_AUTO_VALUE_ON_ZERO\' */;\r\n/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;\r\n\r\n...........',1,'publish',0,1,'','','2016-06-05 00:41:59','2016-06-05 00:41:59'),(2,1,'task comment 1 - 1','fff',1,'publish',0,1,'','','2016-06-18 11:57:59','2016-06-18 11:57:59');

/*Table structure for table `comments_metadata` */

DROP TABLE IF EXISTS `comments_metadata`;

CREATE TABLE `comments_metadata` (
  `id` bigint(30) unsigned NOT NULL AUTO_INCREMENT,
  `commentId` bigint(30) unsigned NOT NULL DEFAULT '1',
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `comments_metadata` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2016_10_13_135549_create_sessions_table',1);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`description`,`status`,`create_at`,`update_at`) values (1,'admin','admin','1','2016-06-05 00:39:41','2016-06-05 00:39:41'),(2,'user','my wife','1','2016-06-20 02:31:51','2016-06-20 02:31:51');

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sessions` */

/*Table structure for table `user_meta` */

DROP TABLE IF EXISTS `user_meta`;

CREATE TABLE `user_meta` (
  `id` bigint(30) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(30) NOT NULL DEFAULT '0',
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_meta` */

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(30) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_role` */

insert  into `user_role`(`id`,`user_id`,`role_id`) values (1,1,1),(2,1,2);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(100) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user.png',
  `nickname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `activation_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `online_status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'online',
  `feeling` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`password`,`email`,`avatar`,`nickname`,`url`,`remember_token`,`activation_key`,`status`,`online_status`,`feeling`,`created_at`,`updated_at`) values (1,'liujun','111','','user.png','Jim','','','','1','online','','2016-06-05 10:42:38','2016-06-05 10:42:38'),(2,'liqing','222','','user.png','Sunny','','','','1','online','','2016-06-05 00:42:38','2016-06-05 00:42:38'),(3,'liujun','$2y$10$OxQzfUmOivSzaQ.rAuaP8uLMDYVhnbDmo1Q0EGXz7CpqX5Mj42AUm','liu1084@163.com','user.png','Jim','','Pcv0rKMk9kqeUhbUBas2pe4ODaaN2Z7j1PLvdd0wA8au0jD1cLv44OdZQ1Ik','mqauP2xiV8MRv8bRA6ENn9KryGngeXZto694CtdaH32jU2I9GjdFYJP7Efhh','1','online','','2016-09-18 10:42:14','2016-10-17 14:36:28');

/*Table structure for table `users_metadata` */

DROP TABLE IF EXISTS `users_metadata`;

CREATE TABLE `users_metadata` (
  `id` bigint(30) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(30) unsigned NOT NULL DEFAULT '1',
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users_metadata` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
