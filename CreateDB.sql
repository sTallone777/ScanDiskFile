-- --------------------------------------------------------
-- 主机:                           192.168.10.100
-- 服务器版本:                        8.0.17 - Source distribution
-- 服务器操作系统:                      Linux
-- HeidiSQL 版本:                  10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出  表 FILECTLSYS.M_DRIVER 结构
CREATE TABLE IF NOT EXISTS `M_DRIVER` (
  `DRIVER_ID` varchar(20) NOT NULL,
  `DRIVER_NAME` varchar(20) NOT NULL,
  `SORT_KEY` int(10) NOT NULL,
  `CREATE_NAME` varchar(20) NOT NULL,
  `CREATE_IP` varchar(20) DEFAULT NULL,
  `CREATE_DATETIME` datetime(6) NOT NULL,
  `UPDATE_NAME` varchar(20) NOT NULL,
  `UPDATE_IP` varchar(20) DEFAULT NULL,
  `UPDATE_DATETIME` datetime(6) NOT NULL,
  PRIMARY KEY (`DRIVER_ID`,`DRIVER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  FILECTLSYS.M_DRIVER 的数据：~0 rows (大约)
DELETE FROM `M_DRIVER`;
/*!40000 ALTER TABLE `M_DRIVER` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_DRIVER` ENABLE KEYS */;

-- 导出  表 FILECTLSYS.M_FILECATEGORY 结构
CREATE TABLE IF NOT EXISTS `M_FILECATEGORY` (
  `CATEGORY_ID` varchar(20) NOT NULL,
  `CATEGORY_NAME` varchar(20) NOT NULL,
  `SORT_KEY` int(10) NOT NULL,
  `CREATE_NAME` varchar(20) NOT NULL,
  `CREATE_IP` varchar(20) DEFAULT NULL,
  `CREATE_DATETIME` datetime(6) NOT NULL,
  `UPDATE_NAME` varchar(20) NOT NULL,
  `UPDATE_IP` varchar(20) DEFAULT NULL,
  `UPDATE_DATETIME` datetime(6) NOT NULL,
  PRIMARY KEY (`CATEGORY_ID`,`CATEGORY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  FILECTLSYS.M_FILECATEGORY 的数据：~0 rows (大约)
DELETE FROM `M_FILECATEGORY`;
/*!40000 ALTER TABLE `M_FILECATEGORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_FILECATEGORY` ENABLE KEYS */;

-- 导出  表 FILECTLSYS.M_FILETYPE 结构
CREATE TABLE IF NOT EXISTS `M_FILETYPE` (
  `TYPE_ID` varchar(20) NOT NULL,
  `TYPE_NAME` varchar(20) NOT NULL,
  `SORT_KEY` int(10) NOT NULL,
  `CATEGORY_ID` varchar(20) NOT NULL,
  `THUMB_PATH` varchar(100) DEFAULT NULL,
  `CREATE_NAME` varchar(20) NOT NULL,
  `CREATE_IP` varchar(20) DEFAULT NULL,
  `CREATE_DATETIME` datetime(6) NOT NULL,
  `UPDATE_NAME` varchar(20) NOT NULL,
  `UPDATE_IP` varchar(20) DEFAULT NULL,
  `UPDATE_DATETIME` datetime(6) NOT NULL,
  PRIMARY KEY (`TYPE_ID`,`TYPE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  FILECTLSYS.M_FILETYPE 的数据：~0 rows (大约)
DELETE FROM `M_FILETYPE`;
/*!40000 ALTER TABLE `M_FILETYPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_FILETYPE` ENABLE KEYS */;

-- 导出  表 FILECTLSYS.M_FOLDER 结构
CREATE TABLE IF NOT EXISTS `M_FOLDER` (
  `FOLDER_ID` varchar(20) NOT NULL,
  `FOLDER_NAME` varchar(20) NOT NULL,
  `FOLDER_LEVEL` tinyint(3) NOT NULL,
  `PARENT_ID` varchar(20) NOT NULL,
  `SORT_KEY` int(10) NOT NULL,
  `CREATE_NAME` varchar(20) NOT NULL,
  `CREATE_IP` varchar(20) DEFAULT NULL,
  `CREATE_DATETIME` datetime(6) NOT NULL,
  `UPDATE_NAME` varchar(20) NOT NULL,
  `UPDATE_IP` varchar(20) DEFAULT NULL,
  `UPDATE_DATETIME` datetime(6) NOT NULL,
  PRIMARY KEY (`FOLDER_ID`,`FOLDER_NAME`,`FOLDER_LEVEL`,`PARENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  FILECTLSYS.M_FOLDER 的数据：~0 rows (大约)
DELETE FROM `M_FOLDER`;
/*!40000 ALTER TABLE `M_FOLDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_FOLDER` ENABLE KEYS */;

-- 导出  表 FILECTLSYS.T_FILEINFO 结构
CREATE TABLE IF NOT EXISTS `T_FILEINFO` (
  `FILE_ID` varchar(20) NOT NULL,
  `FILE_NAME` varchar(100) NOT NULL,
  `CATEGORY_ID` varchar(20) NOT NULL,
  `TYPE_ID` varchar(20) NOT NULL,
  `FILE_PATH` varchar(200) DEFAULT NULL,
  `CREATE_NAME` varchar(20) NOT NULL,
  `CREATE_IP` varchar(20) DEFAULT NULL,
  `CREATE_DATETIME` datetime(6) NOT NULL,
  `UPDATE_NAME` varchar(20) NOT NULL,
  `UPDATE_IP` varchar(20) DEFAULT NULL,
  `UPDATE_DATETIME` datetime(6) NOT NULL,
  PRIMARY KEY (`FILE_ID`,`FILE_NAME`,`CATEGORY_ID`,`TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  FILECTLSYS.T_FILEINFO 的数据：~0 rows (大约)
DELETE FROM `T_FILEINFO`;
/*!40000 ALTER TABLE `T_FILEINFO` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_FILEINFO` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
