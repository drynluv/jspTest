-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.44 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- springgreen 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `springgreen` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `springgreen`;

-- 테이블 springgreen.gogo 구조 내보내기
CREATE TABLE IF NOT EXISTS `gogo` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.gogo:~2 rows (대략적) 내보내기
DELETE FROM `gogo`;
INSERT INTO `gogo` (`idx`, `name`, `age`, `gender`, `ipsail`) VALUES
	(1, '김인혁', 20, '여자', '2026-01-23 20:45:23'),
	(2, '이기용', 20, '남자', '2026-01-23 20:45:27'),
	(3, '이지은', 20, '여자', '2026-01-23 20:45:28');

-- 테이블 springgreen.hoewon 구조 내보내기
CREATE TABLE IF NOT EXISTS `hoewon` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `address` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.hoewon:~12 rows (대략적) 내보내기
DELETE FROM `hoewon`;
INSERT INTO `hoewon` (`idx`, `name`, `age`, `gender`, `address`) VALUES
	(1, '홍길동', 24, '남자', '서울'),
	(2, '이기자', 35, '여자', '정남'),
	(3, '무무무', 24, '남자', '청주'),
	(4, '김연아', 25, '여자', '상주'),
	(5, '안녕', 23, '남자', '청주'),
	(6, '1', 2, '남자', '청주'),
	(7, '이기자', 12, '여자', '1'),
	(8, '씨톰', 20, '여자', '서울'),
	(10, '디톰', 20, '여자', '제주');

-- 테이블 springgreen.insa 구조 내보내기
CREATE TABLE IF NOT EXISTS `insa` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.insa:~11 rows (대략적) 내보내기
DELETE FROM `insa`;
INSERT INTO `insa` (`idx`, `name`, `age`, `gender`, `ipsail`) VALUES
	(2, '김말숙', 20, '여자', '2026-01-23 13:50:20'),
	(3, '김연아', 20, '여자', '2026-01-23 13:50:21'),
	(4, '홍길순', 11, '여자', '2026-01-01 00:00:00'),
	(5, '이무진', 23, '남자', '2024-01-01 00:00:00'),
	(6, '이우진', 50, '남자', '2021-07-16 00:00:00'),
	(7, '박명랑', 20, '여자', '2022-01-01 00:00:00'),
	(8, '김찬미', 25, '여자', '2022-01-01 00:00:00'),
	(9, '박명수', 60, '남자', '2020-06-03 00:00:00'),
	(10, '장지온', 29, '여자', '2015-06-04 00:00:00'),
	(11, '노준식', 29, '여자', '2013-04-20 00:00:00'),
	(12, '박정우', 34, '남자', '2015-09-21 00:00:00'),
	(13, '신채원', 18, '여자', '2023-03-24 00:00:00'),
	(14, '정동일', 65, '남자', '2012-11-10 00:00:00');

-- 테이블 springgreen.insa2 구조 내보내기
CREATE TABLE IF NOT EXISTS `insa2` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  `photo` varchar(50) DEFAULT 'noimage.jpg',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.insa2:~2 rows (대략적) 내보내기
DELETE FROM `insa2`;
INSERT INTO `insa2` (`idx`, `name`, `age`, `gender`, `ipsail`, `photo`) VALUES
	(1, '홍길동', 20, '남자', '2026-01-29 21:46:53', 'noimage.jpg'),
	(2, '김말숙', 20, '여자', '2026-01-29 21:46:54', 'noimage.jpg'),
	(3, '김연아', 20, '여자', '2026-01-29 21:46:55', 'noimage.jpg');

-- 테이블 springgreen.salary 구조 내보내기
CREATE TABLE IF NOT EXISTS `salary` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `code` char(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `department` varchar(10) NOT NULL,
  `position` varchar(10) NOT NULL,
  `overtime` int DEFAULT '0',
  `netpay` int NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.salary:~0 rows (대략적) 내보내기
DELETE FROM `salary`;

-- 테이블 springgreen.test 구조 내보내기
CREATE TABLE IF NOT EXISTS `test` (
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.test:~20 rows (대략적) 내보내기
DELETE FROM `test`;
INSERT INTO `test` (`name`, `age`, `gender`, `ipsail`, `address`) VALUES
	('강감찬', 50, '남자', '2026-01-15 18:02:12', '제주'),
	('가나다', 30, '여자', '2000-10-01 00:00:00', '광주'),
	('소나무', 40, '남자', '2025-02-01 00:00:00', '울산'),
	('이순신', 20, '여자', '2024-05-21 00:00:00', '서울'),
	('오하늘', 10, '남자', '2000-02-01 00:00:00', '청주'),
	('강감찬', 50, '남자', '2026-01-16 09:00:57', '제주'),
	('가나다', 30, '여자', '2000-10-01 00:00:00', '광주'),
	('소나무', 40, '남자', '2025-02-01 00:00:00', '울산'),
	('이순신', 20, '여자', '2024-05-21 00:00:00', '서울'),
	('오하늘', 10, '남자', '2000-02-01 00:00:00', '청주'),
	('강감찬', 50, '남자', '2026-01-16 09:01:01', '제주'),
	('가나다', 30, '여자', '2000-10-01 00:00:00', '광주'),
	('소나무', 40, '남자', '2025-02-01 00:00:00', '울산'),
	('이순신', 20, '여자', '2024-05-21 00:00:00', '서울'),
	('오하늘', 10, '남자', '2000-02-01 00:00:00', '청주'),
	('강감찬', 50, '남자', '2026-01-16 09:01:03', '제주'),
	('가나다', 30, '여자', '2000-10-01 00:00:00', '광주'),
	('소나무', 40, '남자', '2025-02-01 00:00:00', '울산'),
	('이순신', 20, '여자', '2024-05-21 00:00:00', '서울'),
	('오하늘', 10, '남자', '2000-02-01 00:00:00', '청주');

-- 테이블 springgreen.test2 구조 내보내기
CREATE TABLE IF NOT EXISTS `test2` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) NOT NULL DEFAULT '남자',
  `address` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.test2:~29 rows (대략적) 내보내기
DELETE FROM `test2`;
INSERT INTO `test2` (`idx`, `name`, `age`, `gender`, `address`) VALUES
	(1, '홍길동', 20, '남자', NULL),
	(2, '김말숙', 20, '여자', ''),
	(4, '김연아', 29, '남자', '서울'),
	(5, '소나무', 55, '남자', '서울'),
	(6, '오하늘', 39, '여자', '서울'),
	(7, '이전말', 44, '남자', '광주'),
	(8, '가나다', 50, '남자', '제주'),
	(9, '고진감', 85, '남자', '울산'),
	(10, '이지은', 19, '여자', '청주'),
	(13, '김화사', 32, '여자', '진안'),
	(14, '홍길동', 20, '남자', NULL),
	(15, '김말숙', 20, '여자', ''),
	(16, '이기자', 20, '남자', ''),
	(18, '소나무', 55, '남자', '서울'),
	(19, '오하늘', 39, '여자', '서울'),
	(20, '이전말', 44, '남자', '광주'),
	(21, '가나다', 50, '남자', '제주'),
	(22, '고진감', 85, '남자', '울산'),
	(23, '이지은', 19, '여자', '청주'),
	(24, '김화사', 32, '여자', '진안'),
	(25, '김화사', 32, '여자', '진안'),
	(26, '김화사', 32, '여자', '진안'),
	(27, '김화사', 32, '여자', '진안'),
	(28, '김화사', 32, '여자', '진안'),
	(29, '김화사', 32, '여자', '진안'),
	(30, '홍길동', 20, '남자', NULL),
	(31, '홍길동', 25, '남자', NULL),
	(32, '김화사', 32, '여자', '진안'),
	(33, '김화사', 32, '여자', '진안'),
	(34, '연습맨', 20, '남자', NULL);

-- 테이블 springgreen.test3 구조 내보내기
CREATE TABLE IF NOT EXISTS `test3` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`idx`),
  UNIQUE KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.test3:~2 rows (대략적) 내보내기
DELETE FROM `test3`;
INSERT INTO `test3` (`idx`, `mid`, `name`, `age`) VALUES
	(1, 'hkd1234', '홍길동', 25),
	(2, 'hks1234', '홍길순', 22),
	(7, 'lkj1234', '이기자', 12);

-- 테이블 springgreen.test4 구조 내보내기
CREATE TABLE IF NOT EXISTS `test4` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(20) NOT NULL,
  `bookName` varchar(20) NOT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`idx`),
  KEY `mid` (`mid`),
  CONSTRAINT `test4_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `test3` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.test4:~2 rows (대략적) 내보내기
DELETE FROM `test4`;
INSERT INTO `test4` (`idx`, `mid`, `bookName`, `price`) VALUES
	(2, 'hkd1234', '노을저편', 25000),
	(4, 'hkd1234', '노을저편', 25000);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
