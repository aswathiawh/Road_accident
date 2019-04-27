/*
SQLyog Community v13.0.1 (64 bit)
MySQL - 5.1.32-community : Database - accident
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`accident` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `accident`;

/*Table structure for table `case` */

DROP TABLE IF EXISTS `case`;

CREATE TABLE `case` (
  `case_id` int(11) NOT NULL AUTO_INCREMENT,
  `case_type` varchar(50) DEFAULT NULL,
  `o_id` int(11) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `case` */

/*Table structure for table `criminal` */

DROP TABLE IF EXISTS `criminal`;

CREATE TABLE `criminal` (
  `ciminal_id` int(11) NOT NULL AUTO_INCREMENT,
  `case_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ciminal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `criminal` */

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`type`,`username`,`password`) values 
(1,'admin','admin','admin'),
(3,'officer','abcdef','12345'),
(4,'officer','sd1234','0987'),
(6,'officer','lkjh','lkjh'),
(7,'officer','abcd','abcd'),
(8,'officer','zxcv','zxcv'),
(10,'officer','asdfg','asdfg'),
(11,'officer','xcv','xcv'),
(13,'officer','athira','athira123'),
(14,'officer','haritha','hari456'),
(15,'officer','haritha','hari456'),
(16,'officer','anu','anu678'),
(17,'officer','haritha','hari456');

/*Table structure for table `notification` */

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `notification` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `notification` */

insert  into `notification`(`nid`,`lid`,`date`,`notification`) values 
(1,1,'2019-03-21','asertyinnbbbb'),
(3,1,'2019-03-21','asedrtyhu');

/*Table structure for table `officers` */

DROP TABLE IF EXISTS `officers`;

CREATE TABLE `officers` (
  `o_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `qualification` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `post` varchar(50) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `officers` */

insert  into `officers`(`o_id`,`name`,`address`,`dob`,`age`,`gender`,`qualification`,`email`,`phone`,`post`,`photo`,`pid`) values 
(13,'athira','zxcvbm','2019-03-20',25,'Female','btech','xcv@gmail.com','3214569871','si','IMG-20181119-WA0000.jpg',4),
(16,'anu','nbvcxzas','2019-03-20',28,'Female','btech','awert@gmail.com','1234567991','si','images_2.jpg',7),
(17,'haritha','ghjklmnb','2019-02-20',30,'Female','mca','asdg@gmail.com','1236547890','ci','download_3.jpg',8);

/*Table structure for table `policestation` */

DROP TABLE IF EXISTS `policestation`;

CREATE TABLE `policestation` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `district` varchar(50) DEFAULT NULL,
  `subdistrict` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `paddress` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `policestation` */

insert  into `policestation`(`pid`,`district`,`subdistrict`,`location`,`paddress`) values 
(1,'Kozhikode','City','City south','medicalcollege'),
(2,'Kozhikode','City','Ramanattukara','asrhuuj'),
(4,'Kozhikode','Kunnamagalam','Pantheerakave','asdfghj'),
(5,'Kozhikode','City','City south','qwertyuioplkj'),
(7,'Kasarkode','Thamarassery','Thonadayad','nmkljg'),
(8,'Kasarkode','Thamarassery','Thonadayad','uytrewqasd');

/*Table structure for table `public` */

DROP TABLE IF EXISTS `public`;

CREATE TABLE `public` (
  `pubid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pubid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `public` */

/*Table structure for table `vehicle` */

DROP TABLE IF EXISTS `vehicle`;

CREATE TABLE `vehicle` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `vtype` varchar(50) DEFAULT NULL,
  `v_no` varchar(50) DEFAULT NULL,
  `v_photo` varchar(50) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vehicle` */

/*Table structure for table `work` */

DROP TABLE IF EXISTS `work`;

CREATE TABLE `work` (
  `w_id` int(11) NOT NULL AUTO_INCREMENT,
  `o_id` int(11) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`w_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `work` */

insert  into `work`(`w_id`,`o_id`,`start_time`,`end_time`,`location`) values 
(1,8,'00:00:10','00:00:01','kuttikattoor'),
(2,8,'10:08:00','13:08:00','medicalcollege'),
(3,8,'10:00:00','13:00:00','kuttikattoor'),
(4,13,'11:28:00','20:28:00','medicalcollege'),
(5,14,'11:29:00','19:26:00','kuttikattoor'),
(7,16,'11:43:00','20:43:00','mavoor');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
