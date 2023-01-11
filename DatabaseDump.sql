-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table users.adminuser
CREATE TABLE IF NOT EXISTS `adminuser` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_adminuser_adminuser` (`user_id`),
  CONSTRAINT `FK_adminuser_adminuser` FOREIGN KEY (`user_id`) REFERENCES `adminuser` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table users.adminuser: ~3 rows (approximately)
/*!40000 ALTER TABLE `adminuser` DISABLE KEYS */;
INSERT INTO `adminuser` (`ID`, `username`, `password`, `user_id`) VALUES
	(1, 'Lucas', 'Lucas123', NULL),
	(2, 'Huss', 'Huss123', NULL),
	(3, 'Harry', 'Harry123', NULL);
/*!40000 ALTER TABLE `adminuser` ENABLE KEYS */;

-- Dumping structure for table users.normaluser
CREATE TABLE IF NOT EXISTS `normaluser` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT '0',
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table users.normaluser: ~8 rows (approximately)
/*!40000 ALTER TABLE `normaluser` DISABLE KEYS */;
INSERT INTO `normaluser` (`ID`, `username`, `password`) VALUES
	(1, 'Kelly', 'Kelly123'),
	(2, 'Greg', 'Greg123'),
	(3, 'June', 'June123'),
	(4, 'Dan', 'Dan123'),
	(5, 'Brandon', 'Brandon123'),
	(6, 'Gee', 'Gee123'),
	(7, 'Tom', 'Tom123'),
	(8, 'Ryan', 'Ryan123');
/*!40000 ALTER TABLE `normaluser` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
