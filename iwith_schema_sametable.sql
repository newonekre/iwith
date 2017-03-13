/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  black
 * Created: 2017/2/19
 */
DROP DATABASE IF EXISTS `iwith`;
CREATE DATABASE `iwith` DEFAULT CHARSET=utf8;

USE `iwith`;



DROP TABLE IF EXISTS `iwith`.`customers`;
CREATE TABLE  `iwith`.`customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` char(1) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `points` int(10) unsigned DEFAULT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  `interest` text,
  `birthday` date DEFAULT NULL,
  `height` int(3) unsigned DEFAULT NULL,
  `weight` int(3) unsigned DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `age` int(3) unsigned DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `rating_good` int(3) unsigned DEFAULT NULL,
  `rating_bad` int(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index_Unique_Email` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `iwith`.`customers`
(`name`, `password`,`email`,`gender`,`type`,`price`,`location`,`birthday`)
VALUES('王土水', '123', 'Wang@gmail.com','M',' ',0,' ','1989-03-01'),
      ('周星星', '123456', 'star@gmail.com','M',' ',0,' ','1980-10-11'),
      ('張三豐', '123456', 'Fong@gmail.com','M', 'Seller',800,'高雄','2000-01-09'),
      ('李莫愁', '147258', 'Lee@gmail.com', 'F', 'Seller',700,'台北','1988-11-05'),
      ('楊過',  '123085', 'Yong@gmail.com', 'M', 'Seller',600,'彰化','1989-05-11'),
      ('黃蓉',  '374048', 'Hung@gmail.com', 'F', 'Seller',500,'桃園','1999-12-10'),
      ('歐陽鋒', '739686', 'OOO@gmail.com', 'M', 'Seller',750,'台東','1985-04-07'),
      ('周芷若', '797472', 'Ch@gmail.com', 'F', 'Seller',1000,'台中','1996-10-12');

