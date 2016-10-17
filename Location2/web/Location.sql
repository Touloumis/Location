-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.10-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.5071
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for location
CREATE DATABASE IF NOT EXISTS `location` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `location`;

-- Dumping structure for table location.shop
CREATE TABLE IF NOT EXISTS `shop` (
  `shop_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(70) NOT NULL,
  `address` varchar(70) NOT NULL,
  `longitude` decimal(12,9) NOT NULL,
  `latitude` decimal(12,9) NOT NULL,
  `kind_of_shop` varchar(50) NOT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table location.shop: ~7 rows (approximately)
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` (`shop_id`, `shop_name`, `address`, `longitude`, `latitude`, `kind_of_shop`) VALUES
	(1, 'Τράπεζα Πειραιώς', 'Αγίου Δημητρίου 17, Θεσσαλονίκη', 22.938673000, 40.643004000, 'ΑΤΜ'),
	(2, 'Rich Bar', 'Π.Μελά 26, Κορδελιό Εύοσμος', 22.911410000, 40.667369000, 'ΚΑΦΕ'),
	(3, 'Coffee Island', 'Ερμού 19, Σέρρες', 23.548543000, 41.089907000, 'ΚΑΦΕ'),
	(4, 'Cammeo', 'Εμμανουήλ Ανδρονίκου 34, Σέρρες', 23.548393000, 41.090613000, 'ΚΑΦΕ'),
	(5, 'Anel Fashion', 'Ερμού 44, Σέρρες', 23.548213000, 41.089895000, 'ΡΟΥΧΑ'),
	(6, 'Eurobank', 'Λεωφ. Μεραρχίας 5-23, Σέρρες', 23.549171000, 41.089347000, 'ΑΤΜ'),
	(7, 'Masiseto', 'Π. Τσαλδάρη 2, Σέρρες', 23.548629000, 41.089171000, 'ΦΑΓΗΤΟ');
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;

-- Dumping structure for table location.user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_longitude` decimal(12,9) NOT NULL,
  `user_latitude` decimal(12,9) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table location.user: ~0 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
