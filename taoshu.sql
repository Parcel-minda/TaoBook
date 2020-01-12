/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.25-log : Database - food
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`food` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `food`;

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `bookid` int(11) NOT NULL,
  `img` varchar(300) NOT NULL,
  `bookname` varchar(20) NOT NULL,
  `booktype` varchar(20) NOT NULL,
  `note` varchar(20) NOT NULL,
  `author` varchar(25) NOT NULL,
  `press` varchar(25) NOT NULL,
  `oriprice` double NOT NULL,
  `price` double NOT NULL,
  `customerid` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `book` */

insert  into `book`(`bookid`,`img`,`bookname`,`booktype`,`note`,`author`,`press`,`oriprice`,`price`,`customerid`) values (1,'image/hot.png','yaoo','理工类','几乎全新','骆斌','机械工业出版社',39,18,1);

/*Table structure for table `t_customer` */

DROP TABLE IF EXISTS `t_customer`;

CREATE TABLE `t_customer` (
  `customerid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `password` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_customer` */

insert  into `t_customer`(`customerid`,`name`,`address`,`password`) values (1,'admin','1234','12345'),(2,'huangwenxing','18181761706','123'),(3,'yaya','18181761706','123');

/*Table structure for table `t_food` */

DROP TABLE IF EXISTS `t_food`;

CREATE TABLE `t_food` (
  `foodid` int(11) NOT NULL,
  `foodname` varchar(40) DEFAULT NULL,
  `uintprice` double DEFAULT NULL COMMENT '单价',
  `filepath` varchar(80) DEFAULT NULL,
  `unitprice` double DEFAULT NULL,
  PRIMARY KEY (`foodid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_food` */

/*Table structure for table `t_order` */

DROP TABLE IF EXISTS `t_order`;

CREATE TABLE `t_order` (
  `t_order` int(30) NOT NULL AUTO_INCREMENT,
  `food` int(11) NOT NULL,
  `foodnum` int(2) DEFAULT NULL,
  `customer` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`t_order`),
  UNIQUE KEY `orderid` (`orderid`),
  KEY `FKA0C0C3C3972E5A4` (`food`),
  KEY `FKA0C0C3C3BFD518A4` (`customer`),
  CONSTRAINT `FKA0C0C3C3972E5A4` FOREIGN KEY (`food`) REFERENCES `t_food` (`foodid`),
  CONSTRAINT `FKA0C0C3C3BFD518A4` FOREIGN KEY (`customer`) REFERENCES `t_customer` (`customerid`),
  CONSTRAINT `FK_t_order` FOREIGN KEY (`food`) REFERENCES `t_food` (`foodid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_t_orders` FOREIGN KEY (`customer`) REFERENCES `t_customer` (`customerid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_order` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
