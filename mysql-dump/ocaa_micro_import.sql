# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: ocaa-micro.cxkgeapmyuo9.us-east-1.rds.amazonaws.com (MySQL 5.7.22-log)
# Database: ocaa_micro
# Generation Time: 2021-04-13 19:33:02 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Days
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Days`;

CREATE TABLE `Days` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `display` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

LOCK TABLES `Days` WRITE;
/*!40000 ALTER TABLE `Days` DISABLE KEYS */;

INSERT INTO `Days` (`id`, `code`, `display`, `createdAt`, `updatedAt`)
VALUES
	(1,'sun','Sunday','2019-04-18 01:31:35','2019-04-18 01:31:35'),
	(2,'mon','Monday','2019-04-18 01:31:43','2019-04-18 01:31:43'),
	(3,'tue','Tuesday','2019-04-18 01:31:49','2019-04-18 01:31:49'),
	(4,'wed','Wednesday','2019-04-18 01:31:56','2019-04-18 01:31:56'),
	(5,'thu','Thursday','2019-04-18 01:32:03','2019-04-18 01:32:03'),
	(6,'fri','Friday','2019-04-18 01:32:08','2019-04-18 01:32:08'),
	(7,'sat','Saturday','2019-04-18 01:32:13','2019-04-18 01:32:13');

/*!40000 ALTER TABLE `Days` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Formats
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Formats`;

CREATE TABLE `Formats` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `display` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

LOCK TABLES `Formats` WRITE;
/*!40000 ALTER TABLE `Formats` DISABLE KEYS */;

INSERT INTO `Formats` (`id`, `code`, `display`, `createdAt`, `updatedAt`)
VALUES
	(1,'b','Beginners Meeting','2019-04-18 01:30:09','2019-04-18 01:30:09'),
	(2,'bb','Big Book Meeting','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(3,'anniv','Anniversary Meeting','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(4,'st','Step Meeting','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(5,'ls','Living Sober Meeting','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(6,'t','Traditions Meeting','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(7,'ctb','Came To Believe Meeting','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(8,'gra','Grapevine','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(9,'dr','Daily Reflections Meeting','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(10,'absi','As Bill Sees It Meeting','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(11,'c','Closed Meeting','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(12,'o','Open Meeting','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(13,'w','Women Only Meeting','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(14,'m','Men Only Meeting','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(15,'sp','Speaker Meeting','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(16,'span','Spanish Speaking Meeting','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(17,'od','Open Discussion Meeting','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(18,'cd','Closed Discussion Meeting','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(19,'os','Open Speaker Meeting','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(20,'yp','Young People Meeting','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(21,'gay','Gay Meeting','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(22,'rep','Relapse Prevention','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(23,'3711','Big Book Steps 3, 7 & 11 Meeting','2019-04-18 01:34:51','2019-04-18 01:34:51'),
	(24,'s','Open Speaker’s Meeting','2019-04-27 16:28:37','2019-04-27 16:28:37'),
	(25,'rp','Relapse Prevention','2019-04-27 16:28:37','2019-04-27 16:28:37'),
	(26,'on','Online','2020-09-15 22:00:36','2020-09-15 22:00:36'),
	(27,'ip','In Person Meeting','2020-09-15 22:01:03','2020-09-15 22:01:03');

/*!40000 ALTER TABLE `Formats` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table group_ids
# ------------------------------------------------------------

DROP TABLE IF EXISTS `group_ids`;

CREATE TABLE `group_ids` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `MeetingId` int(11) NOT NULL DEFAULT '0',
  `GroupId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`MeetingId`,`GroupId`),
  KEY `GroupId` (`GroupId`),
  CONSTRAINT `group_ids_ibfk_1` FOREIGN KEY (`MeetingId`) REFERENCES `Meetings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `group_ids_ibfk_2` FOREIGN KEY (`GroupId`) REFERENCES `Groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf32;



# Dump of table Groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Groups`;

CREATE TABLE `Groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `is_wheelchair_accessible` tinyint(1) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `administrative_area_level_1` varchar(255) DEFAULT NULL,
  `administrative_area_level_2` varchar(255) DEFAULT NULL,
  `administrative_area_level_3` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `lat` decimal(10,6) DEFAULT NULL,
  `lng` decimal(10,6) DEFAULT NULL,
  `locality` varchar(255) DEFAULT NULL,
  `neighborhood` varchar(255) DEFAULT NULL,
  `postal_code` int(11) DEFAULT NULL,
  `postal_code_suffix` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `street_number` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

LOCK TABLES `Groups` WRITE;
/*!40000 ALTER TABLE `Groups` DISABLE KEYS */;

INSERT INTO `Groups` (`id`, `name`, `is_wheelchair_accessible`, `location`, `administrative_area_level_1`, `administrative_area_level_2`, `administrative_area_level_3`, `country`, `lat`, `lng`, `locality`, `neighborhood`, `postal_code`, `postal_code_suffix`, `route`, `street_number`, `createdAt`, `updatedAt`)
VALUES
	(5,'BEACON',1,'Castle Point VA Hospital','New York','Dutchess County','Fishkill','United States',41.540102,-73.959981,'Wappingers Falls',NULL,12590,NULL,'Castle Point Road',41,'2019-04-18 23:44:22','2019-11-30 17:13:34'),
	(6,'BLOOMINGBURG',1,'Our Lady of Assumption; Parish House','New York','Sullivan County','Mamakating','United States',41.557672,-74.442664,'Bloomingburg',NULL,12721,3032,'High Street',17,'2019-04-18 23:47:24','2019-04-18 23:47:24'),
	(7,'Sharing & Caring',1,'St. Paul’s Church','New York','Orange County','Crawford','United States',41.541744,-74.354452,'Middletown',NULL,10941,NULL,'New York 17K',2800,'2019-04-18 23:50:24','2020-03-17 22:17:03'),
	(8,'Any Lengths',NULL,'Hamptonburgh Presbyterian Church','New York','Orange County','Hamptonburgh','United States',41.454385,-74.261170,'Campbell Hall',NULL,10916,NULL,'New York 207',2815,'2019-04-19 00:09:42','2020-03-17 22:21:21'),
	(9,'Journey to Sobriety',NULL,'Gather Inn Farm','New York','Orange County','Hamptonburgh','United States',41.418820,-74.269116,'Campbell Hall',NULL,10916,NULL,'Purgatory Road',225,'2019-04-19 00:10:58','2020-03-17 22:21:23'),
	(10,'There Is a Solution',NULL,'Gather Inn Farm','New York','Orange County','Hamptonburgh','United States',41.418820,-74.269116,'Campbell Hall',NULL,10916,NULL,'Purgatory Road',225,'2019-04-19 00:11:59','2019-04-19 00:11:59'),
	(11,'Chester',NULL,NULL,'New York','Orange County','Chester','United States',41.363663,-74.272722,'Chester',NULL,10918,NULL,'High Street',27,'2019-04-19 00:12:40','2020-09-16 02:19:28'),
	(12,'CANTERBURY TALES',1,'Munger Cottage; (behind Cornwall Library)','New York','Orange County','Cornwall','United States',41.441858,-74.025866,'Cornwall',NULL,12518,1562,'Hudson Street',395,'2019-04-19 00:16:40','2021-04-01 22:58:50'),
	(13,'Serenity Sunday',1,'St. Thomas Church','New York','Orange County','Cornwall','United States',41.443614,-74.023021,'Cornwall-on-Hudson',NULL,12520,1332,'Hudson Street',336,'2019-04-19 00:18:01','2020-11-09 02:19:57'),
	(14,'S.T.A.R.',NULL,'St. John’s Church','New York','Orange County','Cornwall','United States',41.436525,-74.030160,'Cornwall',NULL,12518,NULL,'Clinton Street',58,'2019-04-19 00:20:09','2019-04-19 00:20:09'),
	(15,'“WING IT” GROUP',1,'Cornwall Hospita','New York','Orange County','Cornwall','United States',41.435485,-74.041180,'Cornwall',NULL,12518,NULL,'Laurel Avenue',17,'2019-04-19 00:20:55','2019-04-19 00:20:55'),
	(16,'CORNWALL',NULL,'St. John’s Church','New York','Orange County','Cornwall','United States',41.436493,-74.029691,'Cornwall',NULL,12518,NULL,'Clinton Street',66,'2019-04-19 00:22:14','2019-04-19 00:22:14'),
	(17,'JUGGERNAUT GROUP',NULL,'United Methodist Church','New York','Orange County','Cornwall','United States',41.438401,-74.030577,'Cornwall',NULL,12518,NULL,'Main Street',198,'2019-04-19 00:23:19','2019-05-12 13:32:08'),
	(18,'S.H.I.P. GROUP',1,'Cornwall Hospital','New York','Orange County','Cornwall','United States',41.435404,-74.042349,'Cornwall',NULL,12518,NULL,'Laurel Avenue',19,'2019-04-19 00:24:41','2019-04-19 00:24:41'),
	(19,'FOUNDATION GROUP',1,'Reformed Church; Junction Rts. 209 & 211','New York','Orange County','Deerpark','United States',41.464836,-74.592697,'Cuddebackville',NULL,12729,NULL,'RR 209',NULL,'2019-04-19 00:27:20','2019-04-19 00:27:20'),
	(20,'NEW BEGINNINGS',NULL,'St. Anthony’s Church','New York','Sullivan County','Highland','United States',41.523383,-74.937161,'Yulan',NULL,12792,5109,'Beaver Brook Road',25,'2019-04-19 00:28:56','2019-04-19 00:28:56'),
	(21,'GARDINER',NULL,'St. Charles Rectory: Rt. 44 & 55, off Rt. 208','New York','Ulster County','Gardiner','United States',41.674668,-74.134319,'Gardiner',NULL,12525,5318,'U.S. 44',2212,'2019-04-19 00:30:29','2019-04-19 00:30:29'),
	(22,'SOBER SUNDAYS',NULL,'St. John\'s Church','New York','Orange County','Goshen','United States',41.405618,-74.326027,'Goshen',NULL,10924,NULL,'Murray Avenue',71,'2019-04-19 00:31:16','2019-04-19 00:31:16'),
	(23,'CUP AND SAUCER',NULL,'St. James Church','New York','Orange County','Goshen','United States',41.400687,-74.321896,'Goshen',NULL,10924,2013,'Saint James Place',1,'2019-04-19 00:32:06','2021-03-04 22:57:17'),
	(24,'GOOD MORNING SOBRIETY',NULL,'1st Presbyterian Church','New York','Orange County','Goshen','United States',41.402126,-74.321675,'Goshen',NULL,10924,2108,'Park Place',33,'2019-04-19 00:34:32','2020-03-19 17:21:47'),
	(25,'SOBER, GAY & FREE',NULL,'1st Presbyterian Church','New York','Orange County','Goshen','United States',41.402126,-74.321675,'Goshen',NULL,10924,2108,'Park Place',33,'2019-04-19 00:35:28','2019-04-19 00:35:28'),
	(26,'GOSHEN',NULL,'1st Presbyterian Church','New York','Orange County','Goshen','United States',41.402126,-74.321675,'Goshen',NULL,10924,2108,'Park Place',33,'2019-04-19 00:36:16','2019-04-19 00:36:16'),
	(27,'VICTORY THROUGH SURRENDER',NULL,'1st Presbyterian Church','New York','Orange County','Goshen','United States',41.402126,-74.321675,'Goshen',NULL,10924,2108,'Park Place',33,'2019-04-19 00:37:22','2019-04-19 00:37:22'),
	(28,'OUR PRIMARY PURPOSE',NULL,'King of Kings Church','New York','Orange County','New Windsor','United States',41.483000,-74.061498,'New Windsor',NULL,12553,6140,'Union Avenue',543,'2019-04-19 00:38:44','2020-11-14 02:50:59'),
	(29,'GREENWOOD LAKE GROUP OF AA',NULL,'Holy Rosary Church','New York','Orange County','Warwick','United States',41.221300,-74.295733,'Greenwood Lake',NULL,10925,NULL,'Windermere Avenue',41,'2019-04-24 23:56:37','2020-09-16 02:17:20'),
	(30,'GREENWOOD LAKE',NULL,'Good Sheph. Epis. Church','New York','Orange County','Warwick','United States',41.222587,-74.293778,'Greenwood Lake',NULL,10925,9103,'Windermere Avenue',62,'2019-04-24 23:57:34','2019-04-24 23:57:34'),
	(31,'LAST CHANCE GROUP',NULL,'Good Sheph. Epis. Church','New York','Orange County','Warwick','United States',41.222587,-74.293778,'Greenwood Lake',NULL,10925,NULL,'Windermere Avenue',62,'2019-04-24 23:58:19','2020-09-16 14:28:36'),
	(32,'GREENWOOD LAKE',NULL,'Good Sheph. Epis. Church','New York','Orange County','Warwick','United States',41.222587,-74.293778,'Greenwood Lake',NULL,10925,NULL,'Windermere Avenue',62,'2019-04-24 23:59:35','2020-03-17 22:19:46'),
	(33,'GREENWOOD LAKE',NULL,'Holy Rosary Church','New York','Orange County','Warwick','United States',41.221300,-74.295733,'Greenwood Lake',NULL,10925,NULL,'Windermere Avenue',41,'2019-04-25 00:01:03','2020-09-16 02:17:35'),
	(34,'MID-DAY SOBRIETY',1,'The Shrine Church @ St. Anastasia’s; This meeting has resumed in person, indoor meetings. 20 minimum capacity. Masks Mandatory.','New York','Orange County','Monroe','United States',41.310177,-74.153845,'Harriman',NULL,10926,NULL,'North Main Street',21,'2019-04-25 00:02:59','2020-08-09 06:11:35'),
	(35,'JOY OF THE JOURNEY',1,'The Shrine Church @ St. Anastasia\'s','New York','Orange County','Monroe','United States',41.310177,-74.153845,'Harriman',NULL,10926,NULL,'North Main Street',21,'2019-04-25 00:05:34','2020-03-17 22:21:56'),
	(36,'THE ODD LOT',NULL,'Ground Floor','New York','Orange County','Monroe','United States',41.309537,-74.150733,'Harriman',NULL,10926,3300,'Church Street',2,'2019-04-25 00:06:51','2020-03-19 19:23:48'),
	(37,'HIGHLAND FALLS',1,NULL,'New York','Orange County','Highlands','United States',41.372977,-73.964097,'Highland Falls',NULL,10928,1102,'Main Street',401,'2019-04-25 00:08:23','2019-04-25 00:08:23'),
	(38,'BACK TO BASICS',1,'Senior Citizens’ Center','New York','Orange County','Woodbury','United States',41.346805,-74.127975,'Woodbury','Highland Mills',10930,3318,'County Route 105',16,'2019-04-25 00:09:35','2019-04-25 00:09:35'),
	(39,'THE CENTRAL VALLEY GROUP',1,'St. Patrick’s Church','New York','Orange County','Woodbury','United States',41.343665,-74.125877,'Woodbury','Highland Mills',10930,3307,'Hunter Street',26,'2019-04-25 00:10:58','2020-09-16 02:29:13'),
	(40,'THE CENTRAL VALLEY GROUP',NULL,'United Methodist Church','New York','Orange County','Woodbury','United States',41.355382,-74.119546,'Woodbury','Highland Mills',10930,NULL,'New York 32',654,'2019-04-25 00:12:31','2020-09-16 02:29:38'),
	(41,'MARLBORO GROUP',NULL,'St. Mary’s Rectory','New York','Ulster County','Marlborough','United States',41.602345,-73.974509,'Marlboro',NULL,12542,NULL,'Grand Street',71,'2019-04-25 00:13:55','2019-04-25 00:13:55'),
	(42,'THE WAY OUT',1,'United Meth. Church','New York','Orange County','Montgomery','United States',41.484278,-74.217528,'Maybrook',NULL,12543,1023,'Broadway',100,'2019-04-25 00:15:04','2021-03-04 23:03:01'),
	(43,'A NEW BEGINNING',NULL,'Advent House','New York','Orange County',NULL,'United States',41.450712,-74.417151,'Middletown',NULL,10940,NULL,'North Street',208,'2019-04-25 00:15:55','2019-04-25 00:15:55'),
	(44,'A NEW BEGINNING',NULL,'St. Joseph’s','New York','Orange County',NULL,'United States',41.452839,-74.411011,'Middletown','East Rock',10940,3704,'Cottage Street',133,'2019-04-25 00:16:53','2019-04-25 00:16:53'),
	(45,'TRES LEGADOS',NULL,NULL,'New York','Orange County',NULL,'United States',41.446461,-74.429913,'Middletown',NULL,10940,6235,'Monhagen Avenue',77,'2019-04-25 00:19:04','2019-04-25 00:19:04'),
	(46,'TOP OF THE HILL',1,'1st Presbyterian Church','New York','Orange County',NULL,'United States',41.447029,-74.418747,'Middletown',NULL,10940,5004,'Orchard Street',25,'2019-04-25 00:21:14','2019-04-25 00:21:14'),
	(47,'ONE DAY AT A TIME',1,'1st Congregational Church','New York','Orange County',NULL,'United States',41.445790,-74.418899,'Middletown',NULL,10940,NULL,'East Main Street',35,'2019-04-25 00:22:10','2020-03-17 22:17:12'),
	(48,'MIDDLETOWN GROUP',NULL,'St. Paul’s Methodist Church','New York','Orange County',NULL,'United States',41.445094,-74.422426,'Middletown',NULL,10940,5732,'West Main Street',58,'2019-04-25 00:22:57','2020-03-17 22:17:19'),
	(49,'MIRACLE GROUP',NULL,'St. Paul’s Methodist Church','New York','Orange County',NULL,'United States',41.445094,-74.422426,'Middletown',NULL,10940,5732,'West Main Street',58,'2019-04-25 00:23:37','2020-03-17 22:17:20'),
	(50,'ROOM AT THE TOP',NULL,'United Methodist Church','New York','Orange County','Monroe','United States',41.325851,-74.185300,'Monroe',NULL,10950,3505,'Maple Avenue',47,'2019-04-25 00:24:46','2021-01-22 19:26:27'),
	(51,'WOMEN’S 12 STEPS OF LIVING',NULL,'St. Paul’s Lutheran Church','New York','Orange County','Monroe','United States',41.318204,-74.179398,'Monroe',NULL,10950,4107,'Still Road',21,'2019-04-25 00:25:56','2019-04-25 00:25:56'),
	(52,'SUNRISE',NULL,'United Methodist Church','New York','Orange County','Monroe','United States',41.325846,-74.185296,'Monroe',NULL,10950,3505,'Maple Avenue',47,'2019-04-25 00:26:41','2020-03-17 22:17:23'),
	(53,'Monroe Mens',1,NULL,'New York','Orange County','Monroe','United States',41.325928,-74.187029,'Monroe',NULL,10950,NULL,'Stage Road',137,'2019-04-25 00:27:15','2019-04-25 00:27:15'),
	(54,'JUST FOR TODAY',1,'Sacred Heart Chapel','New York','Orange County','Monroe','United States',41.325928,-74.187029,'Monroe',NULL,10950,NULL,'Stage Road',137,'2019-04-25 23:52:09','2021-03-13 03:49:35'),
	(55,'SIOGA',1,'Sacred Heart Chapel','New York','Orange County','Monroe','United States',41.325928,-74.187029,'Monroe',NULL,10950,NULL,'Stage Road',137,'2019-04-25 23:53:15','2021-02-14 01:56:50'),
	(56,'SIOGA',1,'1st Presbyterian Church','New York','Orange County','Monroe','United States',41.326041,-74.186893,'Monroe',NULL,10950,NULL,'Stage Road',136,'2019-04-25 23:55:29','2020-03-17 22:17:47'),
	(57,'STEPS TO SOBRIETY',1,'1st Presbyterian Church','New York','Orange County','Monroe','United States',41.326041,-74.186893,'Monroe',NULL,10950,NULL,'Stage Road',136,'2019-04-25 23:58:59','2019-04-25 23:58:59'),
	(58,'STAIRWAY TO SOBRIETY',NULL,'St. Francis of Assisi; (St. Andrew’s Hall)','New York','Orange County','Montgomery','United States',41.523796,-74.237756,'Montgomery',NULL,12549,NULL,'Wallkill Avenue',74,'2019-04-26 00:03:22','2019-04-26 00:03:22'),
	(59,'THE MONTGOMERY GROUP',NULL,'1st Presbyterian Church','New York','Orange County','Montgomery','United States',41.525972,-74.236450,'Montgomery',NULL,12549,NULL,'Clinton Street',137,'2019-04-26 00:05:49','2020-11-14 02:55:23'),
	(60,'MONTGOMERY',NULL,'Brick Reformed Church','New York','Orange County','Montgomery','United States',41.532261,-74.246875,'Montgomery',NULL,12549,NULL,'New York 17K',1588,'2019-04-26 00:06:20','2019-05-15 01:41:44'),
	(61,'CHAPEL HILL 2',NULL,'King of Kings Church','New York','Orange County','New Windsor','United States',41.482994,-74.061260,'New Windsor',NULL,12553,6140,'Union Avenue',543,'2019-04-26 00:07:55','2020-09-16 14:33:46'),
	(62,'FORGE HILL GROUP',1,'St Joseph’s Church','New York','Orange County','New Windsor','United States',41.474652,-74.018878,'New Windsor',NULL,12553,7555,'Saint Joseph Place',4,'2019-04-26 00:08:44','2020-09-16 02:30:02'),
	(63,'ONE DAY AT A TIME',NULL,'United Methodist Church','New York','Orange County','New Windsor','United States',41.482357,-74.032457,'New Windsor',NULL,12553,7011,'Mac Arthur Avenue',214,'2019-04-26 00:10:52','2021-02-18 03:00:03'),
	(64,'SATURDAY MORNING MIRACLES',NULL,'Bethlehem Presby.Church','New York','Orange County','Cornwall','United States',41.438705,-74.095589,'New Windsor',NULL,12553,5938,'New York 94',1520,'2019-04-26 00:11:43','2020-09-16 14:30:31'),
	(65,'NEWBURGH',NULL,'October until Spring: 172 Liberty Street;  Spring through September: Ferry Boat Landing','New York','Orange County',NULL,'United States',41.501525,-74.010411,'Newburgh',NULL,12550,4912,'Liberty Street',172,'2019-04-26 00:12:58','2019-04-26 00:12:58'),
	(66,'OASIS',NULL,'Grace United Methodist Church','New York','Orange County',NULL,'United States',41.501808,-74.029229,'Newburgh',NULL,12550,5333,'Broadway',468,'2019-04-26 00:13:55','2019-05-15 01:42:25'),
	(67,'EL NUEVO AMANECER',NULL,NULL,'New York','Orange County',NULL,'United States',41.500255,-74.017963,'Newburgh',NULL,12550,NULL,'Broadway',237,'2019-04-26 00:16:03','2019-05-15 01:43:31'),
	(68,'NEW LIFE GROUP',NULL,'Trinity United Meth Church','New York','Orange County','Newburgh','United States',41.553482,-74.044959,'Newburgh',NULL,12550,8732,'Owens Road',1,'2019-04-26 00:18:11','2019-04-26 00:18:11'),
	(69,'LA OPORTUNIDAD',NULL,NULL,'New York','Orange County',NULL,'United States',41.500003,-74.021796,'Newburgh',NULL,12550,5335,'Ann Street',345,'2019-04-26 00:20:18','2019-04-26 00:20:18'),
	(70,'FOCUS ON RECOVERY',NULL,'St. Patrick’s School; Basement','New York','Orange County',NULL,'United States',41.500807,-74.010457,'Newburgh',NULL,12550,4912,'Liberty Street',156,'2019-04-26 00:21:38','2020-03-17 22:17:25'),
	(71,'SOMOS UN MILAGRO',NULL,'St. Patrick’s School','New York','Orange County',NULL,'United States',41.500807,-74.010457,'Newburgh',NULL,12550,4912,'Liberty Street',156,'2019-04-26 00:22:21','2019-04-26 00:22:21'),
	(72,'HAPPY HOUR AA',NULL,'Baptist Temple','New York','Orange County',NULL,'United States',41.499715,-74.015369,'Newburgh',NULL,12550,5502,'William Street',7,'2019-04-26 00:25:00','2019-04-26 00:25:00'),
	(73,'NEWBURGH GROUP',NULL,'Grace Methodist Church','New York','Orange County',NULL,'United States',41.501808,-74.029229,'Newburgh',NULL,12550,5333,'Broadway',468,'2019-04-26 00:26:00','2020-09-16 14:30:01'),
	(74,'SAFE ’N SOUND GROUP',1,'Rick\'s Place','New York','Orange County','Newburgh','United States',41.553274,-74.026662,'Newburgh',NULL,12550,1256,'Frozen Ridge Road',74,'2019-04-26 00:28:02','2020-09-16 14:21:40'),
	(75,'BALMVILLE FELLOWSHIP GROUP',1,'Union Presb. Church, (Opp. Powelton Club)','New York','Orange County','Newburgh','United States',41.525570,-74.013735,'Newburgh',NULL,12550,NULL,'Old Balmville Road',44,'2019-04-26 00:28:51','2020-09-16 14:25:09'),
	(76,'FRIENDS OF BILL W',1,'','New York','Orange County','Blooming Grove','United States',41.403413,-74.197969,'Blooming Grove',NULL,10914,NULL,'Old Dominion Road',2,'2019-04-27 12:33:12','2021-01-15 20:53:45'),
	(77,'WURTSBORO',NULL,'Community Church Hall','New York','Sullivan County','Mamakating','United States',41.576575,-74.485647,'Wurtsboro',NULL,12790,NULL,'Sullivan Street',134,'2019-04-27 12:34:39','2019-04-27 12:34:39'),
	(78,'THE MOUNTAIN',NULL,'Otisville Presb. Church','New York','Orange County','Mount Hope','United States',41.473566,-74.540019,'Otisville',NULL,10963,2306,'Main Street',25,'2019-04-27 12:37:28','2019-04-27 12:37:28'),
	(79,'GARAGE GROUP',1,'Across from Infant Saviour Church','New York','Orange County','Crawford','United States',41.606923,-74.304827,'Pine Bush',NULL,12566,7128,'New York 302',15,'2019-04-27 12:38:56','2021-04-13 02:15:45'),
	(80,'PINE ISLAND',NULL,'St. Stanislaus Rectory','New York','Orange County','Warwick','United States',41.296981,-74.461518,'Pine Island',NULL,10969,1332,'Pulaski Highway',17,'2019-04-27 12:39:38','2019-12-10 14:44:48'),
	(81,'NEVER ALONE',NULL,'Drew United Methodist Church','New York','Orange County',NULL,'United States',41.376092,-74.690133,'Port Jervis',NULL,12771,1929,'Sussex Street',49,'2019-04-27 12:41:13','2020-02-23 13:41:29'),
	(84,'SCOTCHTOWN 3-7-11 Step Meeting',NULL,'Scotchtown Presby Church','New York','Orange County','Wallkill','United States',41.481066,-74.360626,'Middletown',NULL,10941,1150,'Blumel Road',367,'2019-04-27 12:43:49','2020-03-19 19:24:56'),
	(85,'SHAWANGUNK',1,'Shawangunk Reform Church','New York','Ulster County','Shawangunk','United States',41.653501,-74.214493,'Wallkill',NULL,12589,3408,'Hoagerburgh Road',1166,'2019-04-27 12:44:40','2020-03-17 22:17:13'),
	(87,'THE “JUST FOR TODAY” GROUP',1,'Faith Reformed Church','New York','Orange County','Wawayanda','United States',41.385475,-74.522220,'Middletown',NULL,10940,NULL,'South Centerville Road',11,'2019-04-27 12:46:54','2019-04-27 12:46:54'),
	(88,'WALDEN',1,'1st Reformed Church','New York','Orange County','Montgomery','United States',41.557999,-74.187241,'Walden',NULL,12586,NULL,'Scofield Street',70,'2019-04-27 12:48:55','2019-04-27 12:48:55'),
	(89,'WALLKILL',NULL,'New Hurley Church','New York','Ulster County','Plattekill','United States',41.638147,-74.143985,'Wallkill',NULL,12589,3714,'New York 208',1145,'2019-04-27 12:50:10','2019-04-27 12:50:10'),
	(90,'ROUND ROBIN',NULL,'Reformed Church','New York','Orange County','Warwick','United States',41.260708,-74.356512,'Warwick',NULL,10990,1027,'Maple Avenue',16,'2019-04-27 12:51:49','2019-04-27 12:51:49'),
	(91,'Keep It Simple Sundays',NULL,'St. Stephen’s Parish Church','New York','Orange County','Warwick','United States',41.257390,-74.387787,'Warwick',NULL,10990,2843,'Sanfordville Road',75,'2019-04-27 12:52:32','2020-03-05 15:45:51'),
	(92,'AMAZING GRACE',NULL,'Warwick Episcopal Church','New York','Orange County','Warwick','United States',41.254974,-74.358498,'Warwick',NULL,10990,1638,'South Street',50,'2019-04-27 12:55:00','2019-04-27 12:55:00'),
	(93,'WARWICK',NULL,'Warwick Episcopal Church','New York','Orange County','Warwick','United States',41.254974,-74.358498,'Warwick',NULL,10990,1638,'South Street',50,'2019-04-27 12:55:58','2019-04-27 12:55:58'),
	(94,'WARWICK',NULL,'Warwick Episcopal Church','New York','Orange County','Warwick','United States',41.254974,-74.358498,'Warwick',NULL,10990,1638,'South Street',50,'2019-04-27 12:57:15','2019-04-27 12:57:15'),
	(95,'BIG BOOK GROUP',NULL,'United Methodist Church','New York','Orange County','Warwick','United States',41.251311,-74.350026,'Warwick',NULL,10990,1104,'Forester Avenue',135,'2019-04-27 12:58:20','2020-03-17 22:24:03'),
	(96,'COMPLETE ABANDON',NULL,'Reformed Church','New York','Orange County','Warwick','United States',41.260708,-74.356512,'Warwick',NULL,10990,1027,'Maple Avenue',16,'2019-04-27 13:00:03','2019-04-27 13:00:03'),
	(98,'EYE OPENER',NULL,'Reformed Church','New York','Orange County','Warwick','United States',41.260708,-74.356512,'Warwick',NULL,10990,1027,'Maple Avenue',16,'2019-04-27 13:01:30','2019-04-27 13:01:30'),
	(99,'SUNDAY SERENITY',NULL,'VFW','New York','Orange County','Warwick','United States',41.255802,-74.353043,'Warwick',NULL,10990,1107,'Forester Avenue',71,'2019-04-27 13:02:16','2020-12-21 15:42:21'),
	(100,'WOODCHUCKS',1,'1st Presby. Church','New York','Orange County','Blooming Grove','United States',41.428943,-74.168941,'Washingtonville',NULL,10992,1115,'Goshen Avenue',30,'2019-04-27 13:03:28','2020-09-16 02:23:02'),
	(101,'DR. BOB’S BACK 2 BASICS',1,'1st Presby. Church','New York','Orange County','Blooming Grove','United States',41.428943,-74.168941,'Washingtonville',NULL,10992,1115,'Goshen Avenue',30,'2019-04-27 13:04:47','2020-03-19 17:23:02'),
	(102,'THE “JUST FOR TODAY” GROUP',NULL,'Holy Cross Church; South Centerville','New York','Orange County','Wawayanda','United States',41.384455,-74.522932,'Middletown',NULL,10940,NULL,'County Road 22',626,'2019-05-09 22:37:24','2020-03-19 17:28:45'),
	(103,'Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-30 07:19:16','2019-11-30 07:19:16'),
	(104,'The Group',NULL,'UP BY THE T-BALL FIELD BEHIND MUNGER COTTAGE','New York','Orange County','Cornwall','United States',41.439421,-74.029785,'Cornwall',NULL,12518,1567,'Main Street',183,'2020-09-16 02:32:35','2020-11-09 02:19:00'),
	(105,'BULLVILLE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-09-16 14:28:01','2020-09-16 14:28:01'),
	(106,'Amazing Grace',0,'Christ Episcopal Church','New York','Orange County','Warwick','United States',41.254974,-74.358498,'Warwick',NULL,10990,1638,'South Street',50,'2020-10-06 21:04:02','2020-11-09 02:14:20'),
	(107,'A New Beginning Group',NULL,'St Joseph\'s Church','New York','Orange County',NULL,'United States',41.452839,-74.411011,'Middletown',NULL,10940,3704,'Cottage Street',133,'2020-10-29 13:37:12','2020-10-29 13:37:12'),
	(108,'Top of the Mountain Group',NULL,'Otisville Presbyterian Church','New York','Orange County','Mount Hope','United States',41.473566,-74.540019,'Otisville',NULL,10963,2306,'Main Street',25,'2020-11-01 20:49:03','2020-11-27 23:20:04'),
	(109,'Complete Abandon Group',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-11-09 02:17:33','2020-11-09 02:17:33'),
	(110,'Good Morning Sobriety',NULL,'Online Only','New York','Orange County','Goshen',NULL,41.402038,-74.324319,'Goshen',NULL,10924,NULL,NULL,NULL,'2020-11-25 15:16:46','2020-11-25 15:20:26'),
	(111,'Keep It Simple Sunday Group',NULL,'Saint Stephens Church','New York','Orange County','Warwick','United States',41.255794,-74.387162,'Warwick',NULL,10990,2843,'Sanfordville Road',75,'2020-12-21 15:45:49','2020-12-21 15:45:49'),
	(112,'Montgomery',NULL,'Brick Reformed Church','New York','Orange County','Montgomery','United States',41.532261,-74.246875,'Montgomery',NULL,12549,NULL,'New York 17K',1588,'2021-01-02 13:55:52','2021-01-03 13:58:08'),
	(113,'The Green Church',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-28 19:54:01','2021-01-28 19:54:01'),
	(114,'You’re getting better group',NULL,'St. Columba church','New York','Orange County','Chester','United States',41.363663,-74.272722,'Chester',NULL,10918,1228,'High Street',27,'2021-02-10 22:57:14','2021-02-10 22:57:14'),
	(115,'Cornwall; United Methodist Church',NULL,'United Methodist Church; Enter rear parking lot via South Street','New York','Orange County','Cornwall','United States',41.438401,-74.030577,'Cornwall',NULL,12518,NULL,'Main Street',198,'2021-02-18 03:03:50','2021-02-18 03:03:50'),
	(116,'Joy Of The Journey',NULL,NULL,'New York','Orange County','Monroe','United States',41.309227,-74.154102,'Harriman',NULL,10926,NULL,'North Main Street',21,'2021-04-09 03:34:06','2021-04-09 13:22:59');

/*!40000 ALTER TABLE `Groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Meetings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Meetings`;

CREATE TABLE `Meetings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `format` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `start` time DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `meetings_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `Groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

LOCK TABLES `Meetings` WRITE;
/*!40000 ALTER TABLE `Meetings` DISABLE KEYS */;

INSERT INTO `Meetings` (`id`, `group_id`, `format`, `day`, `start`, `notes`, `createdAt`, `updatedAt`)
VALUES
	(211,6,'st','sun','15:00:00',NULL,'2019-04-18 23:47:24','2019-04-18 23:47:24'),
	(215,10,'cd','tue','19:30:00',NULL,'2019-04-19 00:11:59','2019-04-19 00:11:59'),
	(222,14,'w,cd','tue','18:30:00','[Wk 1=ST]','2019-04-19 00:20:09','2019-04-19 00:20:09'),
	(223,15,'cd','tue','19:00:00',NULL,'2019-04-19 00:20:55','2019-04-19 00:20:55'),
	(224,16,'cd','tue','20:00:00','[Wk 1=ST, Last Week=Anniv]','2019-04-19 00:22:14','2019-04-19 00:22:14'),
	(227,18,'cd','sat','12:00:00',NULL,'2019-04-19 00:24:41','2019-04-19 00:24:41'),
	(228,19,'c,d','mon','20:00:00',NULL,'2019-04-19 00:27:20','2019-04-19 00:27:20'),
	(229,19,'c,d','thu','20:00:00',NULL,'2019-04-19 00:27:20','2019-04-19 00:27:20'),
	(230,20,'od','thu','20:00:00',NULL,'2019-04-19 00:28:56','2019-04-19 00:28:56'),
	(231,21,'od','fri','20:30:00','[Wk 2 =Trad]','2019-04-19 00:30:29','2019-04-19 00:30:29'),
	(232,22,'c,bb','sun','14:00:00',NULL,'2019-04-19 00:31:16','2019-04-19 00:31:16'),
	(240,25,'sp,bb,gay','mon','19:30:00',NULL,'2019-04-19 00:35:28','2019-04-19 00:35:28'),
	(241,26,'d,b','sat','13:00:00',NULL,'2019-04-19 00:36:16','2019-04-19 00:36:16'),
	(242,27,'od','sat','20:30:00',NULL,'2019-04-19 00:37:22','2019-04-19 00:37:22'),
	(245,30,'bb','mon','19:30:00',NULL,'2019-04-24 23:57:34','2019-04-24 23:57:34'),
	(262,37,'b','mon','19:30:00',NULL,'2019-04-25 00:08:23','2019-04-25 00:08:23'),
	(263,37,'od','tue','19:30:00','[Wk2=OS]','2019-04-25 00:08:23','2019-04-25 00:08:23'),
	(264,37,'cd,st','thu','19:30:00','[LAST=T]','2019-04-25 00:08:23','2019-04-25 00:08:23'),
	(265,37,'bb','sat','08:30:00',NULL,'2019-04-25 00:08:23','2019-04-25 00:08:23'),
	(266,38,'cd','sun','20:00:00',NULL,'2019-04-25 00:09:35','2019-04-25 00:09:35'),
	(272,41,'od','wed','20:00:00','[Wk1=ST]','2019-04-25 00:13:55','2019-04-25 00:13:55'),
	(275,43,'b','sun','12:30:00',NULL,'2019-04-25 00:15:55','2019-04-25 00:15:55'),
	(276,44,'od','wed','19:00:00',NULL,'2019-04-25 00:16:53','2019-04-25 00:16:53'),
	(277,45,'od','sun','18:00:00','[Spanish]','2019-04-25 00:19:04','2019-04-25 00:19:04'),
	(278,45,'od','mon','19:30:00','[Spanish]','2019-04-25 00:19:04','2019-04-25 00:19:04'),
	(279,45,'od','tue','19:30:00','[Spanish]','2019-04-25 00:19:04','2019-04-25 00:19:04'),
	(280,45,'od','wed','19:30:00','[Spanish]','2019-04-25 00:19:04','2019-04-25 00:19:04'),
	(281,45,'od','thu','19:30:00','[Spanish]','2019-04-25 00:19:04','2019-04-25 00:19:04'),
	(282,45,'od','fri','19:30:00','[Spanish]','2019-04-25 00:19:04','2019-04-25 00:19:04'),
	(283,45,'od','sat','18:00:00','[Spanish]','2019-04-25 00:19:04','2019-04-25 00:19:04'),
	(284,46,'od','mon','12:00:00',NULL,'2019-04-25 00:21:14','2019-04-25 00:21:14'),
	(285,46,'st','tue','12:00:00',NULL,'2019-04-25 00:21:14','2019-04-25 00:21:14'),
	(286,46,'bb','wed','12:00:00',NULL,'2019-04-25 00:21:14','2019-04-25 00:21:14'),
	(287,46,'st','thu','12:00:00',NULL,'2019-04-25 00:21:14','2019-04-25 00:21:14'),
	(288,46,'od','fri','12:00:00','[Wk1=T]','2019-04-25 00:21:14','2019-04-25 00:21:14'),
	(294,51,'w,st,bb,od,s','tue','19:30:00','[1st=ST/2nd=BB/3rd=OD/4th=S]','2019-04-25 00:25:56','2019-04-25 00:25:56'),
	(296,53,'cd','sun','19:00:00','Sacred Heart Chapel','2019-04-25 00:27:15','2019-04-25 00:27:15'),
	(303,57,'dr','mon','09:30:00',NULL,'2019-04-25 23:58:59','2019-04-25 23:58:59'),
	(304,57,'st','tue','09:30:00',NULL,'2019-04-25 23:58:59','2019-04-25 23:58:59'),
	(305,57,'ls,os','wed','09:30:00','[Wk1=OS]','2019-04-25 23:58:59','2019-04-25 23:58:59'),
	(306,57,'b','thu','09:30:00',NULL,'2019-04-25 23:58:59','2019-04-25 23:58:59'),
	(307,57,'bb','fri','09:30:00','[Last Wk= Anniv.]','2019-04-25 23:58:59','2019-04-25 23:58:59'),
	(308,58,'o,b','sun','18:30:00',NULL,'2019-04-26 00:03:22','2019-04-26 00:03:22'),
	(309,58,'od','mon','12:15:00',NULL,'2019-04-26 00:03:22','2019-04-26 00:03:22'),
	(310,58,'st','tue','12:15:00','[Wk4=T]','2019-04-26 00:03:22','2019-04-26 00:03:22'),
	(311,58,'b','tue','18:30:00',NULL,'2019-04-26 00:03:22','2019-04-26 00:03:22'),
	(312,58,'o,bb','wed','12:15:00',NULL,'2019-04-26 00:03:22','2019-04-26 00:03:22'),
	(313,58,'st,w','thu','09:30:00','[Women\'s]','2019-04-26 00:03:22','2019-04-26 00:03:22'),
	(314,58,'od','thu','12:15:00',NULL,'2019-04-26 00:03:22','2019-04-26 00:03:22'),
	(315,58,'o,absi,ls','fri','12:15:00',NULL,'2019-04-26 00:03:22','2019-04-26 00:03:22'),
	(316,58,'b','fri','09:30:00',NULL,'2019-04-26 00:03:22','2019-04-26 00:03:22'),
	(317,58,'absi,w','sat','10:00:00','[Women\'s]','2019-04-26 00:03:22','2019-04-26 00:03:22'),
	(318,58,'od','sat','13:00:00',NULL,'2019-04-26 00:03:22','2019-04-26 00:03:22'),
	(329,65,'dr','sun','09:00:00',NULL,'2019-04-26 00:12:58','2019-04-26 00:12:58'),
	(339,68,'cd,st,od','sun','20:00:00','[Wk 1=ST/Last=OD or Anniv.]','2019-04-26 00:18:11','2019-04-26 00:18:11'),
	(340,69,'od','sun','22:00:00','[Spanish]','2019-04-26 00:20:18','2019-04-26 00:20:18'),
	(341,69,'od','mon','18:00:00','[Spanish]','2019-04-26 00:20:18','2019-04-26 00:20:18'),
	(342,69,'od','tue','18:00:00','[Spanish]','2019-04-26 00:20:18','2019-04-26 00:20:18'),
	(343,69,'od','wed','18:00:00','[Spanish]','2019-04-26 00:20:18','2019-04-26 00:20:18'),
	(344,69,'od','thu','18:00:00','[Spanish]','2019-04-26 00:20:18','2019-04-26 00:20:18'),
	(345,69,'od','fri','18:00:00','[Spanish]','2019-04-26 00:20:18','2019-04-26 00:20:18'),
	(346,69,'od','sat','18:00:00','[Spanish]','2019-04-26 00:20:18','2019-04-26 00:20:18'),
	(350,71,'b','wed','19:30:00','[Spanish]','2019-04-26 00:22:21','2019-04-26 00:22:21'),
	(351,72,'bb','mon','19:00:00',NULL,'2019-04-26 00:25:00','2019-04-26 00:25:00'),
	(352,72,'st','tue','19:00:00',NULL,'2019-04-26 00:25:00','2019-04-26 00:25:00'),
	(353,72,'od','wed','19:00:00',NULL,'2019-04-26 00:25:00','2019-04-26 00:25:00'),
	(354,72,'od','thu','19:00:00',NULL,'2019-04-26 00:25:00','2019-04-26 00:25:00'),
	(355,72,'m','fri','19:00:00',NULL,'2019-04-26 00:25:00','2019-04-26 00:25:00'),
	(356,72,'od','sat','19:00:00',NULL,'2019-04-26 00:25:00','2019-04-26 00:25:00'),
	(368,77,'b,bb,t','tue','19:30:00','[Wk1=T/Wk2=BB/Wk3=T/Wk4=Anniv.]','2019-04-27 12:34:39','2019-04-27 12:34:39'),
	(369,78,'od','wed','19:30:00',NULL,'2019-04-27 12:37:28','2019-04-27 12:37:28'),
	(370,78,'sp,st','fri','19:00:00','Wk 1=SP, Wk 2,3=ST, Wk 4=Anniv/OD','2019-04-27 12:37:28','2019-04-27 12:37:28'),
	(382,87,'cd','sat','08:00:00','[4th Wk= Anniv; Open]','2019-04-27 12:46:54','2019-04-27 12:46:54'),
	(383,88,'cd','sun','14:00:00','','2019-04-27 12:48:55','2019-04-27 12:48:55'),
	(384,88,'cd','fri','19:00:00','[Last Wk= Anniv, Open]','2019-04-27 12:48:55','2019-04-27 12:48:55'),
	(385,89,'bb','tue','19:30:00',NULL,'2019-04-27 12:50:10','2019-04-27 12:50:10'),
	(386,89,'st','thu','19:30:00',NULL,'2019-04-27 12:50:10','2019-04-27 12:50:10'),
	(387,90,'cd','mon','08:00:00',NULL,'2019-04-27 12:51:49','2019-04-27 12:51:49'),
	(388,90,'cd','tue','08:00:00',NULL,'2019-04-27 12:51:49','2019-04-27 12:51:49'),
	(389,90,'cd','thu','08:00:00',NULL,'2019-04-27 12:51:49','2019-04-27 12:51:49'),
	(390,90,'cd','wed','08:00:00',NULL,'2019-04-27 12:51:49','2019-04-27 12:51:49'),
	(391,90,'od','fri','08:00:00',NULL,'2019-04-27 12:51:49','2019-04-27 12:51:49'),
	(393,92,'b','mon','12:30:00',NULL,'2019-04-27 12:55:00','2019-04-27 12:55:00'),
	(394,92,'c,st','wed','12:30:00',NULL,'2019-04-27 12:55:00','2019-04-27 12:55:00'),
	(395,92,'cd','fri','12:30:00','Last=Anniv','2019-04-27 12:55:00','2019-04-27 12:55:00'),
	(396,93,'w','tue','12:30:00','Womens','2019-04-27 12:55:58','2019-04-27 12:55:58'),
	(397,94,'cd,st,bb,sp,w','thu','19:30:00','[Wk1=SP/2=ST/3=BB], Women\'s','2019-04-27 12:57:15','2019-04-27 12:57:15'),
	(400,96,'od','tue','12:30:00',NULL,'2019-04-27 13:00:03','2019-04-27 13:00:03'),
	(401,96,'bb','thu','12:30:00',NULL,'2019-04-27 13:00:03','2019-04-27 13:00:03'),
	(403,98,'st,t','sat','08:00:00','Wk1=T','2019-04-27 13:01:30','2019-04-27 13:01:30'),
	(415,17,'dr','wed','19:45:00',NULL,'2019-05-12 13:32:08','2019-05-12 13:32:08'),
	(420,60,'st,bb','fri','20:00:00',NULL,'2019-05-15 01:41:44','2019-05-15 01:41:44'),
	(421,66,'ls','mon','12:00:00',NULL,'2019-05-15 01:42:25','2019-05-15 01:42:25'),
	(422,66,'cd,dr','tue','12:00:00',NULL,'2019-05-15 01:42:25','2019-05-15 01:42:25'),
	(423,67,'od','mon','22:00:00','Spanish','2019-05-15 01:43:31','2019-05-15 01:43:31'),
	(424,67,'od','tue','18:00:00','Spanish','2019-05-15 01:43:31','2019-05-15 01:43:31'),
	(425,67,'od','wed','18:00:00','Spanish','2019-05-15 01:43:31','2019-05-15 01:43:31'),
	(426,67,'cd','thu','18:00:00','Spanish','2019-05-15 01:43:31','2019-05-15 01:43:31'),
	(427,67,'od','fri','18:00:00','Spanish','2019-05-15 01:43:31','2019-05-15 01:43:31'),
	(428,67,'od','sun','18:00:00','Spanish','2019-05-15 01:43:31','2019-05-15 01:43:31'),
	(443,5,'cd','sun','09:30:00',NULL,'2019-11-30 17:13:34','2019-11-30 17:13:34'),
	(444,80,'od','fri','19:30:00',NULL,'2019-12-10 14:44:48','2019-12-10 14:44:48'),
	(452,81,'od','fri','20:00:00','W1,3=LS/2=S/4=Cele','2020-02-23 13:41:29','2020-02-23 13:41:29'),
	(453,81,'lit,bb','sat','19:00:00','W1,3=LS/2=S/4=Cele','2020-02-23 13:41:29','2020-02-23 13:41:29'),
	(455,91,'bb','sun','19:30:00',NULL,'2020-03-05 15:45:51','2020-03-05 15:45:51'),
	(456,7,'absi,od,b,st','thu','19:00:00',NULL,'2020-03-17 22:17:03','2020-03-17 22:17:03'),
	(458,47,'st,od,t','tue','18:00:00','ST/OD/OD/T','2020-03-17 22:17:12','2020-03-17 22:17:12'),
	(459,85,'b','wed','19:30:00',NULL,'2020-03-17 22:17:13','2020-03-17 22:17:13'),
	(460,85,'od','sat','20:00:00',NULL,'2020-03-17 22:17:13','2020-03-17 22:17:13'),
	(465,48,'st,b','mon','20:00:00',NULL,'2020-03-17 22:17:19','2020-03-17 22:17:19'),
	(466,48,'os','sat','20:00:00',NULL,'2020-03-17 22:17:19','2020-03-17 22:17:19'),
	(467,49,'od','tue','19:30:00',NULL,'2020-03-17 22:17:20','2020-03-17 22:17:20'),
	(468,52,'cd','sat','08:00:00','LAST Wk=ANNIV','2020-03-17 22:17:23','2020-03-17 22:17:23'),
	(469,70,'st','mon','18:00:00',NULL,'2020-03-17 22:17:25','2020-03-17 22:17:25'),
	(470,70,'bb','tue','18:00:00',NULL,'2020-03-17 22:17:25','2020-03-17 22:17:25'),
	(471,70,'o,b','thu','17:30:00',NULL,'2020-03-17 22:17:25','2020-03-17 22:17:25'),
	(472,56,'os','thu','19:30:00',NULL,'2020-03-17 22:17:47','2020-03-17 22:17:47'),
	(473,56,'b,c','thu','20:45:00',NULL,'2020-03-17 22:17:47','2020-03-17 22:17:47'),
	(474,32,'dr','sat','10:00:00','Wk 1 = Step','2020-03-17 22:19:46','2020-03-17 22:19:46'),
	(480,8,'st','mon','19:30:00','Wk 2 = T; Last Wk = Anniv','2020-03-17 22:21:21','2020-03-17 22:21:21'),
	(481,9,'w','wed','19:30:00','Wk 1,2 = Literature; Wk 3,5=CD; Wk 4=Anniv','2020-03-17 22:21:23','2020-03-17 22:21:23'),
	(487,35,'st','mon','17:30:00','LAST=T','2020-03-17 22:21:56','2020-03-17 22:21:56'),
	(488,35,'cd','tue','17:30:00','LAST=ANNIV','2020-03-17 22:21:56','2020-03-17 22:21:56'),
	(489,35,'bb','wed','17:30:00',NULL,'2020-03-17 22:21:56','2020-03-17 22:21:56'),
	(490,35,'rp','thu','17:30:00',NULL,'2020-03-17 22:21:56','2020-03-17 22:21:56'),
	(491,35,'cd','fri','17:30:00',NULL,'2020-03-17 22:21:56','2020-03-17 22:21:56'),
	(492,95,'bb,cd','mon','19:30:00',NULL,'2020-03-17 22:24:03','2020-03-17 22:24:03'),
	(493,95,'bb,o','wed','19:30:00',NULL,'2020-03-17 22:24:03','2020-03-17 22:24:03'),
	(497,24,'o,st,t','mon','09:30:00',NULL,'2020-03-19 17:21:47','2020-03-19 17:21:47'),
	(498,24,'o,bb','tue','09:30:00',NULL,'2020-03-19 17:21:47','2020-03-19 17:21:47'),
	(499,24,'o,ctb','wed','09:30:00',NULL,'2020-03-19 17:21:47','2020-03-19 17:21:47'),
	(500,24,'o,ls','thu','09:30:00',NULL,'2020-03-19 17:21:47','2020-03-19 17:21:47'),
	(501,24,'o,b','fri','09:30:00',NULL,'2020-03-19 17:21:47','2020-03-19 17:21:47'),
	(502,24,'o,d','sat','09:30:00',NULL,'2020-03-19 17:21:47','2020-03-19 17:21:47'),
	(505,101,'c,bb,t','mon','19:30:00',NULL,'2020-03-19 17:23:02','2020-03-19 17:23:02'),
	(506,101,'od','sat','19:00:00',NULL,'2020-03-19 17:23:02','2020-03-19 17:23:02'),
	(510,102,'st','thu','19:30:00','Last Wk= Anniv','2020-03-19 17:28:45','2020-03-19 17:28:45'),
	(511,36,'cd,gv','sat','21:00:00',NULL,'2020-03-19 19:23:48','2020-03-19 19:23:48'),
	(512,84,'st','sat','19:00:00',NULL,'2020-03-19 19:24:56','2020-03-19 19:24:56'),
	(532,34,'ls,12','mon','13:30:00','Indoor meetings.  20 minimum capacity. Masks will be required you will be turned down if you do not have a mask.  No communal coffee or food, you cam bring your own drink.  No tables will be set up. Chairs will be placed at 6 feet apart and disinfected be','2020-08-09 06:11:35','2020-08-09 06:11:35'),
	(533,34,'bb','tue','13:30:00','Indoor meetings.  20 minimum capacity. Masks will be required you will be turned down if you do not have a mask.  No communal coffee or food, you cam bring your own drink.  No tables will be set up. Chairs will be placed at 6 feet apart and disinfected be','2020-08-09 06:11:35','2020-08-09 06:11:35'),
	(534,34,'dr','wed','13:30:00','Indoor meetings.  20 minimum capacity. Masks will be required you will be turned down if you do not have a mask.  No communal coffee or food, you cam bring your own drink.  No tables will be set up. Chairs will be placed at 6 feet apart and disinfected be','2020-08-09 06:11:35','2020-08-09 06:11:35'),
	(535,34,'od','thu','13:30:00','Indoor meetings.  20 minimum capacity. Masks will be required you will be turned down if you do not have a mask.  No communal coffee or food, you cam bring your own drink.  No tables will be set up. Chairs will be placed at 6 feet apart and disinfected be','2020-08-09 06:11:35','2020-08-09 06:11:35'),
	(536,34,'od','fri','13:30:00','Indoor meetings.  20 minimum capacity. Masks will be required you will be turned down if you do not have a mask.  No communal coffee or food, you cam bring your own drink.  No tables will be set up. Chairs will be placed at 6 feet apart and disinfected be','2020-08-09 06:11:35','2020-08-09 06:11:35'),
	(539,29,'cd,w,ip','sun','18:00:00','Womens','2020-09-16 02:17:20','2020-09-16 02:17:20'),
	(540,33,'ls,b,ip','tue','19:30:00',NULL,'2020-09-16 02:17:35','2020-09-16 02:17:35'),
	(541,33,'st,ip','wed','19:00:00','LAST WEDNESDAY= T','2020-09-16 02:17:35','2020-09-16 02:17:35'),
	(542,33,'cd,ip','fri','19:30:00','LAST FRIDAY= O/Anniv','2020-09-16 02:17:35','2020-09-16 02:17:35'),
	(549,11,'cd,ip','fri','20:30:00',NULL,'2020-09-16 02:19:28','2020-09-16 02:19:28'),
	(558,100,'cd','sun','20:00:00','Last=OS/Anniv','2020-09-16 02:23:02','2020-09-16 02:23:02'),
	(559,100,'st,ls,bb,b,ip','wed','20:00:00',NULL,'2020-09-16 02:23:02','2020-09-16 02:23:02'),
	(560,100,'ip','mon','19:30:00',NULL,'2020-09-16 02:23:02','2020-09-16 02:23:02'),
	(561,100,'ip','sat','19:00:00',NULL,'2020-09-16 02:23:02','2020-09-16 02:23:02'),
	(562,100,'ip','sun','20:00:00',NULL,'2020-09-16 02:23:02','2020-09-16 02:23:02'),
	(570,39,'b,ip','mon','18:30:00',NULL,'2020-09-16 02:29:13','2020-09-16 02:29:13'),
	(571,39,'os,ip','wed','18:30:00',NULL,'2020-09-16 02:29:13','2020-09-16 02:29:13'),
	(572,39,'bb,ip','wed','19:45:00',NULL,'2020-09-16 02:29:13','2020-09-16 02:29:13'),
	(573,40,'st','fri','19:30:00',NULL,'2020-09-16 02:29:38','2020-09-16 02:29:38'),
	(574,40,'od,ip','sat','17:00:00',NULL,'2020-09-16 02:29:38','2020-09-16 02:29:38'),
	(575,62,'b,od,ip','mon','19:30:00',NULL,'2020-09-16 02:30:02','2020-09-16 02:30:02'),
	(587,74,'cd,m,ip','mon','18:30:00','Mens','2020-09-16 14:21:40','2020-09-16 14:21:40'),
	(588,74,'cd,asbi,ip,on','wed','12:00:00','Meeting ID: 253870919 Password: 871458','2020-09-16 14:21:40','2020-09-16 14:21:40'),
	(589,74,'cd,bb','thu','18:30:00','','2020-09-16 14:21:40','2020-09-16 14:21:40'),
	(590,74,'od,b,ip,on','thu','12:00:00','Meeting ID: 253870919 Password: 871458','2020-09-16 14:21:40','2020-09-16 14:21:40'),
	(591,74,'cd,dr,ip,on','fri','12:00:00','Meeting ID: 253870919 Password: 871458','2020-09-16 14:21:40','2020-09-16 14:21:40'),
	(592,74,'cd','fri','18:30:00',NULL,'2020-09-16 14:21:40','2020-09-16 14:21:40'),
	(593,74,'on','mon','12:00:00','Meeting ID: 253870919 Password: 871458','2020-09-16 14:21:40','2020-09-16 14:21:40'),
	(594,74,'on','tue','19:00:00','Meeting ID: 253870919 Password: 871458','2020-09-16 14:21:40','2020-09-16 14:21:40'),
	(604,75,'cd,on','wed','20:00:00','Meeting ID: 592 812 4501 Password: 0954562','2020-09-16 14:25:09','2020-09-16 14:25:09'),
	(612,105,'on','thu','19:00:00','Meeting ID: 804 096 2731 Password: 223991','2020-09-16 14:28:01','2020-09-16 14:28:01'),
	(613,31,'on','thu','19:00:00','Meeting ID: 222 054 869 Password: 257446','2020-09-16 14:28:36','2020-09-16 14:28:36'),
	(617,73,'o,b,on','mon','19:30:00','Meeting ID: 315 020 684 Password: 076714','2020-09-16 14:30:01','2020-09-16 14:30:01'),
	(618,73,'cd,os,on','fri','20:00:00','Meeting ID: 124 310 066 Password: 052833 : Wk2=OS','2020-09-16 14:30:01','2020-09-16 14:30:01'),
	(619,64,'od,ip,on','sat','08:30:00','Meeting ID: 195 405 704','2020-09-16 14:30:31','2020-09-16 14:30:31'),
	(634,61,'cd,ip,on','sun','18:00:00','IN CASE OF BAD WEATHER : Meeting ID: 854 047 813 Password: 321321','2020-09-16 14:33:46','2020-09-16 14:33:46'),
	(635,61,'st,ip,on','wed','19:00:00','IN CASE OF BAD WEATHER : Meeting ID: 306 113 312 Password: 321321','2020-09-16 14:33:46','2020-09-16 14:33:46'),
	(638,107,'od,ip','wed','19:00:00',NULL,'2020-10-29 13:37:12','2020-10-29 13:37:12'),
	(650,106,'b,cd,ip,on','mon','12:30:00','Meeting ID 98196194119 Password 140241','2020-11-09 02:14:20','2020-11-09 02:14:20'),
	(651,106,'ip,on,od','fri','12:30:00','Meeting ID 98196194119 Password 140241','2020-11-09 02:14:20','2020-11-09 02:14:20'),
	(652,106,'o,an,on','fri','12:30:00','LAST FRIDAY of the month: Anniversary Meeting: Meeting ID 98196194119 Password 140241','2020-11-09 02:14:20','2020-11-09 02:14:20'),
	(653,106,'cd,st,on','wed','12:30:00','Meeting ID 98196194119 Password 140241','2020-11-09 02:14:20','2020-11-09 02:14:20'),
	(654,109,'on,s,od','tue','12:30:00','Meeting ID 98196194119 Password 140241','2020-11-09 02:17:33','2020-11-09 02:17:33'),
	(655,109,'on,bb,c','thu','12:30:00','Meeting ID 98196194119 Password 140241','2020-11-09 02:17:33','2020-11-09 02:17:33'),
	(656,104,'od','sun','11:30:00',NULL,'2020-11-09 02:19:00','2020-11-09 02:19:00'),
	(657,13,'cd,ip','sun','19:00:00','No food or beverages and Mask mandatory','2020-11-09 02:19:57','2020-11-09 02:19:57'),
	(666,28,'od,bb,yp,ip','fri','19:00:00','Wk4=Anniv','2020-11-14 02:50:59','2020-11-14 02:50:59'),
	(667,59,'os,on,an','sun','19:00:00','Zoom ID - 711 6355 2820 Password - 3c4WDU - Open Speakers Mtg. is a Hybrid.The last Sunday is a Anniversary meeting','2020-11-14 02:55:23','2020-11-14 02:55:23'),
	(668,59,'cd,bb,t,st,on','wed','20:00:00','Zoom ID - 711 6355 2820 Password - 3c4WDU - First Wed is CD, Second Wed is Tradition, Thrid Wed is a Step, & 4th Wed is a Big Book','2020-11-14 02:55:23','2020-11-14 02:55:23'),
	(675,110,'cd,on,dr','tue','09:30:00','Meeting ID 692 006 701 Password 952629','2020-11-25 15:20:26','2020-11-25 15:20:26'),
	(676,110,'cd,on,dr','thu','09:30:00','Meeting ID 692 006 701 Password 952629','2020-11-25 15:20:26','2020-11-25 15:20:26'),
	(677,110,'on,od','sat','09:30:00','Meeting ID 692 006 701 Password 952629','2020-11-25 15:20:26','2020-11-25 15:20:26'),
	(678,108,'od,ip','wed','19:30:00','Masks required. 25 person capacity','2020-11-27 23:20:04','2020-11-27 23:20:04'),
	(694,99,'cd,ip','sun','09:30:00','VFW','2020-12-21 15:42:21','2020-12-21 15:42:21'),
	(695,111,'cd,ip','sun','19:30:00',NULL,'2020-12-21 15:45:49','2020-12-21 15:45:49'),
	(701,112,'cd,st,bb,ip','fri','19:00:00',NULL,'2021-01-03 13:58:08','2021-01-03 13:58:08'),
	(706,76,'ip,b,cd','tue','19:30:00',NULL,'2021-01-15 20:53:45','2021-01-15 20:53:45'),
	(707,76,'b,ip,cd','fri','20:00:00','2nd Fri=SP','2021-01-15 20:53:45','2021-01-15 20:53:45'),
	(714,50,'cd,ip,m,st','mon','19:00:00','Week 1 Step all other CD','2021-01-22 19:26:27','2021-01-22 19:26:27'),
	(715,50,'cd,b,m,ip','thu','19:00:00',NULL,'2021-01-22 19:26:27','2021-01-22 19:26:27'),
	(716,113,'cd,on','fri','09:30:00','547-033-3775','2021-01-28 19:54:01','2021-01-28 19:54:01'),
	(717,114,'cd,sp,ip','fri','20:30:00','Speaker','2021-02-10 22:57:14','2021-02-10 22:57:14'),
	(718,114,'cd,st,ip','sat','20:30:00',NULL,'2021-02-10 22:57:14','2021-02-10 22:57:14'),
	(734,55,'cd,st,ip,on','tue','19:30:00','ID 868 1471 5545 Password 489501','2021-02-14 01:56:50','2021-02-14 01:56:50'),
	(735,55,'ip,on,od','thu','19:30:00','ID 829 0697 3066 Password 489501','2021-02-14 01:56:50','2021-02-14 01:56:50'),
	(736,55,'cd,ip,b,tp','fri','20:00:00','ID 867 3761 8579 Password 489501','2021-02-14 01:56:50','2021-02-14 01:56:50'),
	(737,55,'cd,bb,on,ip','sat','19:00:00','ID 840 1197 4005 Password 489501','2021-02-14 01:56:50','2021-02-14 01:56:50'),
	(738,63,'c,bb,t,on','tue','19:30:00','Wk 1= T : Meeting ID: 880 3706 9789 Password: 072910','2021-02-18 03:00:03','2021-02-18 03:00:03'),
	(739,63,'cd,st,3/7/11,on','thu','19:30:00','Meeting ID: 895 8278 7582 Password: 072910 : Wk 1= ST;  2 = 3/7/11','2021-02-18 03:00:03','2021-02-18 03:00:03'),
	(740,63,'o,b,ip,on','sat','19:00:00','IN CASE OF RAIN: Meeting ID: 829 7515 5909 Password: 072910','2021-02-18 03:00:03','2021-02-18 03:00:03'),
	(741,115,'cd,ip','fri','19:00:00','Masks required; Social distancing; No food or drinks. Enter rear parking lot via South Street','2021-02-18 03:03:50','2021-02-18 03:03:50'),
	(744,23,'st,on,od','wed','19:00:00','Zoom meeting ID: 835-2674-9685 Password: coffee','2021-03-04 22:57:17','2021-03-04 22:57:17'),
	(746,42,'od,ip,st','wed','18:30:00','1st Wednesday of the month is a step meeting','2021-03-04 23:03:01','2021-03-04 23:03:01'),
	(747,54,'ip,od','sun','15:00:00',NULL,'2021-03-13 03:49:35','2021-03-13 03:49:35'),
	(748,12,'c,absi,on,ip','sun','08:00:00','Meeting ID: 912 143 625 Password: 105175','2021-04-01 22:58:50','2021-04-01 22:58:50'),
	(749,12,'cd,b,st,1-3,on,ip','sun','10:00:00','Meeting ID: 912 143 625 Password: 105175','2021-04-01 22:58:50','2021-04-01 22:58:50'),
	(750,12,'c,st,on,ip','thu','18:30:00','Last Wk = T : Meeting ID: 912 143 625 Password: 105175','2021-04-01 22:58:50','2021-04-01 22:58:50'),
	(751,12,'od,c,on,ip','sat','18:30:00','Meeting ID: 912 143 625 Password: 105175 : Wk 2=Sp, Last Wk = Anniv','2021-04-01 22:58:50','2021-04-01 22:58:50'),
	(755,116,'cd,ip','tue','17:30:00',NULL,'2021-04-09 13:22:59','2021-04-09 13:22:59'),
	(756,116,'ip,rp','thu','17:30:00',NULL,'2021-04-09 13:22:59','2021-04-09 13:22:59'),
	(757,116,'ip,b','fri','17:30:00',NULL,'2021-04-09 13:22:59','2021-04-09 13:22:59'),
	(758,79,'ip,b','mon','18:30:00','Masks and sign in is required.','2021-04-13 02:15:45','2021-04-13 02:15:45'),
	(759,79,'ip,od','fri','19:00:00','Masks and sign in is required.','2021-04-13 02:15:45','2021-04-13 02:15:45');

/*!40000 ALTER TABLE `Meetings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SequelizeMeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SequelizeMeta`;

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `SequelizeMeta` WRITE;
/*!40000 ALTER TABLE `SequelizeMeta` DISABLE KEYS */;

INSERT INTO `SequelizeMeta` (`name`)
VALUES
	('20190418003341-create-day.js'),
	('20190418003347-create-format.js'),
	('20190418003353-create-meeting.js'),
	('20190418003437-create-group.js'),
	('20190418003646-create-group.js'),
	('20190418003652-create-meeting.js'),
	('20190418003815-create-meeting.js'),
	('20190418003853-create-group.js'),
	('20190418003928-create-group.js'),
	('20190418004019-create-group.js'),
	('20190418004024-create-meeting.js'),
	('20190418004028-create-group.js'),
	('20190418004028-create-meeting.js');

/*!40000 ALTER TABLE `SequelizeMeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Users`;

CREATE TABLE `Users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;

INSERT INTO `Users` (`id`, `email`, `password`, `createdAt`, `updatedAt`)
VALUES
	(1,'jcrosenthal@gmail.com','TgYJn*hQsfimiUt9hRqH','0000-00-00 00:00:00','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
