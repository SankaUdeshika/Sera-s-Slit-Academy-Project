-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.34 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for digitalapp
CREATE DATABASE IF NOT EXISTS `digitalapp` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `digitalapp`;

-- Dumping structure for table digitalapp.customertbl
CREATE TABLE IF NOT EXISTS `customertbl` (
  `CID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `PhoneNo` varchar(10) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table digitalapp.customertbl: ~0 rows (approximately)

-- Dumping structure for table digitalapp.employeetbl
CREATE TABLE IF NOT EXISTS `employeetbl` (
  `Emp_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `PhoneNo` varchar(10) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Emp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table digitalapp.employeetbl: ~0 rows (approximately)

-- Dumping structure for table digitalapp.inventorytbl
CREATE TABLE IF NOT EXISTS `inventorytbl` (
  `Product_ID` int NOT NULL AUTO_INCREMENT,
  `Product_Name` varchar(45) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `suppliertbl_Supplier_ID` int NOT NULL,
  PRIMARY KEY (`Product_ID`),
  KEY `fk_inventorytbl_suppliertbl_idx` (`suppliertbl_Supplier_ID`),
  CONSTRAINT `fk_inventorytbl_suppliertbl` FOREIGN KEY (`suppliertbl_Supplier_ID`) REFERENCES `suppliertbl` (`Supplier_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table digitalapp.inventorytbl: ~0 rows (approximately)

-- Dumping structure for table digitalapp.suppliertbl
CREATE TABLE IF NOT EXISTS `suppliertbl` (
  `Supplier_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `PhoneNo` varchar(10) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Supplier_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table digitalapp.suppliertbl: ~0 rows (approximately)

-- Dumping structure for table digitalapp.usertbl
CREATE TABLE IF NOT EXISTS `usertbl` (
  `UID` int NOT NULL,
  `Username` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table digitalapp.usertbl: ~1 rows (approximately)
INSERT INTO `usertbl` (`UID`, `Username`, `Password`) VALUES
	(1, 'sanka', '12345');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
