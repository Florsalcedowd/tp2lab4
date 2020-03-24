/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.1.28-MariaDB : Database - tp2lab4php
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tp2lab4php` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `tp2lab4php`;

/*Table structure for table `pais` */

DROP TABLE IF EXISTS `pais`;

CREATE TABLE `pais` (
  `codigoPais` int(11) NOT NULL,
  `nombrePais` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `capitalPais` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `region` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `poblacion` bigint(20) NOT NULL,
  `latitud` decimal(10,0) NOT NULL,
  `longitud` decimal(10,0) NOT NULL,
  PRIMARY KEY (`codigoPais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pais` */

insert  into `pais`(`codigoPais`,`nombrePais`,`capitalPais`,`region`,`poblacion`,`latitud`,`longitud`) values 
(1,'United States of America','Washington, D.C.','Americas',323947000,38,-97),
(7,'Russian Federation','Moscow','Europe',146599183,60,100),
(20,'Egypt','Cairo','Africa',91290000,27,30),
(27,'South Africa','Pretoria','Africa',55653654,-29,24),
(30,'Greece','Athens','Europe',10858018,39,22),
(31,'Netherlands','Amsterdam','Europe',17019800,53,6),
(32,'Belgium','Brussels','Europe',11319511,51,4),
(33,'France','Paris','Europe',66710000,46,2),
(34,'Spain','Madrid','Europe',46438422,40,-4),
(36,'Hungary','Budapest','Europe',9823000,47,20),
(39,'Italy','Rome','Europe',60665551,43,13),
(40,'Romania','Bucharest','Europe',19861408,46,25),
(41,'Switzerland','Bern','Europe',8341600,47,8),
(43,'Austria','Vienna','Europe',8725931,47,13),
(44,'United Kingdom of Great Britain and Northern Ireland','London','Europe',65110000,54,-2),
(45,'Denmark','Copenhagen','Europe',5717014,56,10),
(46,'Sweden','Stockholm','Europe',9894888,62,15),
(47,'Norway','Oslo','Europe',5223256,62,10),
(48,'Poland','Warsaw','Europe',38437239,52,20),
(49,'Germany','Berlin','Europe',81770900,51,9),
(51,'Peru','Lima','Americas',31488700,-10,-76),
(52,'Mexico','Mexico City','Americas',122273473,23,-102),
(53,'Cuba','Havana','Americas',11239004,22,-80),
(54,'Argentina','Buenos Aires','Americas',43590400,-34,-64),
(55,'Brazil','Brasília','Americas',206135893,-10,-55),
(56,'Chile','Santiago','Americas',18191900,-30,-71),
(57,'Colombia','Bogotá','Americas',48759958,4,-72),
(58,'Venezuela (Bolivarian Republic of)','Caracas','Americas',31028700,8,-66),
(60,'Malaysia','Kuala Lumpur','Asia',31405416,3,113),
(61,'Cocos (Keeling) Islands','West Island','Oceania',550,-13,97),
(62,'Indonesia','Jakarta','Asia',258705000,-5,120),
(63,'Philippines','Manila','Asia',103279800,13,122),
(64,'Pitcairn','Adamstown','Oceania',56,-25,-130),
(65,'Singapore','Singapore','Asia',5535000,1,104),
(66,'Thailand','Bangkok','Asia',65327652,15,100),
(76,'Kazakhstan','Astana','Asia',17753200,48,68),
(77,'Kazakhstan','Astana','Asia',17753200,48,68),
(81,'Japan','Tokyo','Asia',126960000,36,138),
(82,'Korea (Republic of)','Seoul','Asia',50801405,37,128),
(84,'Viet Nam','Hanoi','Asia',92700000,16,108),
(86,'China','Beijing','Asia',1377422166,35,105),
(90,'Turkey','Ankara','Asia',78741053,39,35),
(91,'India','New Delhi','Asia',1295210000,20,77),
(92,'Pakistan','Islamabad','Asia',194125062,30,70),
(93,'Afghanistan','Kabul','Asia',27657145,33,65),
(94,'Sri Lanka','Colombo','Asia',20966000,7,81),
(95,'Myanmar','Naypyidaw','Asia',51419420,22,98),
(98,'Iran (Islamic Republic of)','Tehran','Asia',79369900,32,53),
(211,'South Sudan','Juba','Africa',12131000,7,30),
(212,'Western Sahara','El Aaiún','Africa',510713,25,-13),
(213,'Algeria','Algiers','Africa',40400000,28,3),
(216,'Tunisia','Tunis','Africa',11154400,34,9),
(218,'Libya','Tripoli','Africa',6385000,25,17),
(220,'Gambia','Banjul','Africa',1882450,13,-17),
(221,'Senegal','Dakar','Africa',14799859,14,-14),
(222,'Mauritania','Nouakchott','Africa',3718678,20,-12),
(223,'Mali','Bamako','Africa',18135000,17,-4),
(224,'Guinea','Conakry','Africa',12947000,11,-10),
(225,'Côte d\'Ivoire','Yamoussoukro','Africa',22671331,8,-5),
(226,'Burkina Faso','Ouagadougou','Africa',19034397,13,-2),
(227,'Niger','Niamey','Africa',20715000,16,8),
(228,'Togo','Lomé','Africa',7143000,8,1),
(229,'Benin','Porto-Novo','Africa',10653654,10,2),
(230,'Mauritius','Port Louis','Africa',1262879,-20,58),
(231,'Liberia','Monrovia','Africa',4615000,7,-10),
(232,'Sierra Leone','Freetown','Africa',7075641,9,-12),
(233,'Ghana','Accra','Africa',27670174,8,-2),
(234,'Nigeria','Abuja','Africa',186988000,10,8),
(235,'Chad','N\'Djamena','Africa',14497000,15,19),
(236,'Central African Republic','Bangui','Africa',4998000,7,21),
(237,'Cameroon','Yaoundé','Africa',22709892,6,12),
(238,'Cabo Verde','Praia','Africa',531239,16,-24),
(239,'Sao Tome and Principe','São Tomé','Africa',187356,1,7),
(240,'Equatorial Guinea','Malabo','Africa',1222442,2,10),
(241,'Gabon','Libreville','Africa',1802278,-1,12),
(242,'Congo','Brazzaville','Africa',4741000,-1,15),
(243,'Congo (Democratic Republic of the)','Kinshasa','Africa',85026000,0,25),
(244,'Angola','Luanda','Africa',25868000,-13,19),
(245,'Guinea-Bissau','Bissau','Africa',1547777,12,-15),
(246,'British Indian Ocean Territory','Diego Garcia','Africa',3000,-6,72),
(248,'Seychelles','Victoria','Africa',91400,-5,56),
(249,'Sudan','Khartoum','Africa',39598700,15,30),
(250,'Rwanda','Kigali','Africa',11553188,-2,30),
(251,'Ethiopia','Addis Ababa','Africa',92206005,8,38),
(252,'Somalia','Mogadishu','Africa',11079000,10,49),
(253,'Djibouti','Djibouti','Africa',900000,12,43),
(254,'Kenya','Nairobi','Africa',47251000,1,38),
(255,'Tanzania, United Republic of','Dodoma','Africa',55155000,-6,35),
(256,'Uganda','Kampala','Africa',33860700,1,32),
(257,'Burundi','Bujumbura','Africa',10114505,-4,30),
(258,'Mozambique','Maputo','Africa',26423700,-18,35),
(260,'Zambia','Lusaka','Africa',15933883,-15,30),
(261,'Madagascar','Antananarivo','Africa',22434363,-20,47),
(262,'Réunion','Saint-Denis','Africa',840974,-21,56),
(263,'Zimbabwe','Harare','Africa',14240168,-20,30),
(264,'Namibia','Windhoek','Africa',2324388,-22,17),
(265,'Malawi','Lilongwe','Africa',16832910,-14,34),
(266,'Lesotho','Maseru','Africa',1894194,-30,29),
(267,'Botswana','Gaborone','Africa',2141206,-22,24),
(268,'Swaziland','Lobamba','Africa',1132657,-27,32),
(269,'Comoros','Moroni','Africa',806153,-12,44),
(290,'Saint Helena, Ascension and Tristan da Cunha','Jamestown','Africa',4255,-16,-6),
(291,'Eritrea','Asmara','Africa',5352000,15,39),
(297,'Aruba','Oranjestad','Americas',107394,13,-70),
(298,'Faroe Islands','Tórshavn','Europe',49376,62,-7),
(299,'Greenland','Nuuk','Americas',55847,72,-40);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
