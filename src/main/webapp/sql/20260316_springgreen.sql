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

-- 테이블 springgreen.books 구조 내보내기
CREATE TABLE IF NOT EXISTS `books` (
  `bookid` int NOT NULL AUTO_INCREMENT,
  `bookname` varchar(20) NOT NULL,
  `publisher` varchar(20) NOT NULL,
  `price` int DEFAULT '0',
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.books:~20 rows (대략적) 내보내기
DELETE FROM `books`;
INSERT INTO `books` (`bookid`, `bookname`, `publisher`, `price`) VALUES
	(1, '축구의 역사', '굿스포츠', 7000),
	(2, '축구아는 여자', '나무수', 13000),
	(3, '축구의 이해', '대한미디어', 22000),
	(4, '골프 바이블', '대한미디어', 35000),
	(5, '피겨 교본', '굿스포츠', 8000),
	(6, '역도 단계별기술', '굿스포츠', 6000),
	(7, '야구의 추억', '이상미디어', 20000),
	(8, '야구를 부탁해', '이상미디어', 13000),
	(9, '올림픽 이야기', '삼성당', 7500),
	(10, 'Olympic Champions', 'Pearson', 13000),
	(11, '가나다', '삼성당', 17500),
	(12, '포토샵CS6', '제우미디어', 25000),
	(13, '아시안게임 이야기', '스포츠북', 19500),
	(14, '우리들 이야기', '우리출판사', 5000),
	(15, '서로 사랑하자', '이상미디어', 18000),
	(16, '하나된 마음으로', '대한미디어', 21000),
	(17, '나눌수 있을때', '나무수', 9000),
	(18, '함박눈 내리는날', '이상미디어', 15000),
	(19, '나보다 축구를', '굿스포츠', 23000),
	(20, '시작했을때 한번더', '삼성당', 19000);

-- 테이블 springgreen.buseos 구조 내보내기
CREATE TABLE IF NOT EXISTS `buseos` (
  `buseoId` int NOT NULL,
  `buseoName` varchar(10) NOT NULL,
  `jiyuk` varchar(10) NOT NULL,
  PRIMARY KEY (`buseoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.buseos:~3 rows (대략적) 내보내기
DELETE FROM `buseos`;
INSERT INTO `buseos` (`buseoId`, `buseoName`, `jiyuk`) VALUES
	(10, '인사', '서울'),
	(20, '개발', '부산'),
	(30, '마케팅', '서울');

-- 테이블 springgreen.customer 구조 내보내기
CREATE TABLE IF NOT EXISTS `customer` (
  `custid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`custid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.customer:~7 rows (대략적) 내보내기
DELETE FROM `customer`;
INSERT INTO `customer` (`custid`, `name`, `address`, `phone`) VALUES
	(1, '박지성', '영국 맨체스타', '000-5000-0001'),
	(2, '김연아', '대한민국 서울', '000-6000-0001'),
	(3, '김말숙', '대한민국 강원도', '000-7000-0001'),
	(4, '손흥민', '영국 토트넘', '000-8000-0001'),
	(5, '박세리', '대한민국 대전', '001-0011-0012'),
	(6, '이순신', '대한민국 아산', '001-0009-0007'),
	(7, '소나무', '대한민국 청주', '000-1100-0050');

-- 테이블 springgreen.gogo 구조 내보내기
CREATE TABLE IF NOT EXISTS `gogo` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.gogo:~3 rows (대략적) 내보내기
DELETE FROM `gogo`;
INSERT INTO `gogo` (`idx`, `name`, `age`, `gender`, `ipsail`) VALUES
	(1, '김인혁', 20, '여자', '2026-01-23 20:45:23'),
	(2, '이기용', 20, '남자', '2026-01-23 20:45:27'),
	(3, '이지은', 20, '여자', '2026-01-23 20:45:28');

-- 테이블 springgreen.guest 구조 내보내기
CREATE TABLE IF NOT EXISTS `guest` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `homePage` varchar(60) DEFAULT NULL,
  `visitDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `clientIp` varchar(30) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.guest:~67 rows (대략적) 내보내기
DELETE FROM `guest`;
INSERT INTO `guest` (`idx`, `name`, `content`, `email`, `homePage`, `visitDate`, `clientIp`) VALUES
	(4, '홍길동', '안녕하세요\r\n뿌링클이 너무 죠씁니다.\r\n\r\n<img src="https://home-img.bhc.co.kr/bhc/product/20251110_173942_70745482.png" width="200px" />', 'dkdk@naver.com', 'https://www.naver.com', '2026-03-09 14:34:09', '127.0.0.1'),
	(5, '뿌링클', '뿌링클 왕조합 !!!!\r\n1. 엽떡\r\n2. 엽떡\r\n3. 엽떡\r\n<img src="https://www.bhc.co.kr/menu/1?cate=%EB%BF%8C%EB%A7%81%ED%81%B4" />', 'bhcjjang@bhc.com', 'https://www.bhc.co.kr/menu/1?cate', '2026-03-09 14:37:07', '127.0.0.1'),
	(6, '엽떡사랑해', '잘 보고 갑니다~~~\r\n\r\n<img src= "https://www.yupdduk.com/bod/config/menu/%EC%97%BD%EA%B8%B0%EB%A9%94%EB%89%B4_6_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1.png" />', 'ydydyd@ydyd.net', 'https://www.yupdduk.com/sub/menu/yup-menu', '2026-03-09 14:38:36', '127.0.0.1'),
	(7, '김이자', '<marquee> 안녕하세요 </marquee>', '', 'https://', '2026-03-09 14:40:49', '127.0.0.1'),
	(8, '배코딩', '<marquee direction="up" width="300px" height="100px">위로 이동</marquee>', '', 'https://', '2026-03-09 14:42:00', '127.0.0.1'),
	(9, '배졸림', '<marquee direction="up" width="700px" height="300px"><img src= "https://www.yupdduk.com/bod/config/menu/%EC%97%BD%EA%B8%B0%EB%A9%94%EB%89%B4_6_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1.png" /></marquee>', '', 'https://', '2026-03-09 14:43:29', '127.0.0.1'),
	(10, '우아아어', '아마이마리마너리만러ㅣ만러\r\nㅁ나너임나ㅓ이남어ㅣ망너ㅣ나어\r\n므츠아츠닝츠닝차ㅡㄴ이ㅏ\r\n쯰ㅏㅜㅂㅈ기ㅏㅜㅈ기ㅏㅜ미나움\r\n치ㅏㅡ리만리ㅏㅁ뉘ㅏㅊㅁㄴ참니ㅏ엄ㄴ', '', 'https://', '2026-03-09 14:51:24', '127.0.0.1'),
	(11, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20160128_84%2F24ga1492_14539356981515f72r_JPEG%2FScreenshot_2016-01-27-04-55-52_edit.jpg&type=sc960_832"/>', '', 'https://', '2026-03-09 15:32:10', '192.168.50.53'),
	(12, '아냥하세여~~~!!!', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAxMDNfMTQg%2FMDAxNjA5NjEzMTA4NTUy.3S7JcqClq8ahLRe4GJffXIKAUSjysNsaTP3rKx4CW2cg.loQMz1ai859AJkZC___BJjrh1kXUtfdEodWDSoiCChgg.PNG.arazang1%2Fimage.png&type=a340" width="300px"/>', '', 'https://', '2026-03-09 15:32:18', '192.168.50.61'),
	(13, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fcafefiles.naver.net%2F20100804_118%2Fdfrf345_1280926504719Ttcfn_jpg%2Faa_dfrf345.jpg&type=sc960_832"/>', '', 'https://', '2026-03-09 15:32:47', '192.168.50.53'),
	(14, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20131104_215%2Faug0827_1383552719533azKEW_JPEG%2FK-8.jpg&type=sc960_832"/>', '', 'https://', '2026-03-09 15:33:26', '192.168.50.53'),
	(15, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fcafefiles.naver.net%2F20101201_25%2Fgustn5141s_1291207217313uHdLl_jpg%2F%25B6%25CB_1_2_gustn5141s.jpg&type=sc960_832"/>', '', 'https://', '2026-03-09 15:34:41', '192.168.50.53'),
	(16, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fcafefiles.naver.net%2FMjAyMDA0MjNfMjA4%2FMDAxNTg3NjI0NTA3NTIz.HfoiEY1c50-_RiIfzaCEM8I-bEuLbw0Nja-aI0C95R8g.M4T8YbeZISNo3jXor06zADlNY2XpiEDjzdfCWs4Vxs8g.JPEG%2FexternalFile.jpg&type=sc960_832"/>', '', 'https://', '2026-03-09 15:40:15', '192.168.50.53'),
	(17, '피자', '<img src="https://2.bp.blogspot.com/-v2CZq_MQiBQ/Xm8R1ui4yEI/AAAAAAAAK-M/GKNfKBhZGDUdlSd1CQQDTW9qafduBJ9swCLcBGAsYHQ/s1600/%25EB%25A7%2588%25EB%25A5%25B4%25EA%25B2%258C%25EB%25A6%25AC%25ED%2583%25801.gif" style="transform:scale(1.5) rotate(2deg);border:2px solid black;box-shadow: 3px 3px 5px 5px orange;">배고프다', '', '', '2026-03-09 16:06:41', '999.999.999.999'),
	(18, '바우나바우나바우나', '방문소감은 사실 별로입니다...\r\n', '', 'https://', '2026-03-09 16:11:18', '192.168.50.59'),
	(19, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA0MDVfMTgw%2FMDAxNjQ5MDg0NzA4NTcx.lUYMQQqrkF2BYPQ9ULDsRvt1_VgO14ZwXOPav8EqaLMg.Y4IfneF-o8w6AovGJmbuCNuRRqWk6bKndyukIPXb4rsg.JPEG.wlgk9565%2FIMG_4220.JPG&type=sc960_832"/>', '', 'https://', '2026-03-09 16:18:21', '192.168.50.53'),
	(20, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20111028_2%2Fsmallhiz_1319813937181U7k49_GIF%2F7.gif&type=sc960_832_gif"/>', '', 'https://', '2026-03-09 16:19:43', '192.168.50.53'),
	(21, '바우나', '<img src="https://search.pstatic.net/sunny/?src=https%3A%2F%2Fi.pinimg.com%2Foriginals%2Fa6%2Fb5%2F0b%2Fa6b50bc19bb5a0d4c0aa70e2c550701c.jpg&type=sc960_832"/>', '', 'https://', '2026-03-09 16:21:33', '192.168.50.53'),
	(22, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fcafefiles.naver.net%2F20101011_284%2Fdm8969_1286799999371UVoLC_jpg%2Fc6c3ae34c0acc9c48_jiji6119_dm8969.jpg&type=sc960_832"/>', '', 'https://', '2026-03-09 16:22:03', '192.168.50.53'),
	(23, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxODEwMTZfNDUg%2FMDAxNTM5Njc5MjQyNTgy.hVb249wbvz1LYaQJaAQyY1WC9wiDABHqRtdnfTSiNosg.cRc3g0dKiyxK3Mf20P30vUMT9Lf2mhkxAx9X_gfN7Fsg.JPEG.ioiookne%2F%25B4%25D9%25BF%25EE%25B7%25CE%25B5%25E5_%25283%2529.jpeg&type=sc960_832"/>', '', 'https://', '2026-03-09 16:22:55', '192.168.50.53'),
	(24, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNTA4MjlfMTkw%2FMDAxNzU2NDM0MDIzNjI2.VF_hOlm9Si6SRVW-ZBLeKKhrdRuCc75DZ4QbuUd62qAg.hZd_l0fkXtf4d8JhdBvS_0gUVm9bJIvKfSebQ23IRhMg.GIF%2F%25B0%25A8%25BD%25BA%25C6%25AE.gif&type=sc960_832_gif"/>', '', 'https://', '2026-03-09 16:24:54', '192.168.50.53'),
	(25, ' ', '<style>.spin { animation: spin 2s linear infinite;} @keyframes spin { from { transform: rotate(0deg); } to { transform: rotate(360deg); }}</style><button onclick="for(v of document.querySelectorAll(\'.container [class]\'))v.classList.add(\'spin\')">누르면 신남</button>', '', '', '2026-03-09 17:03:16', '192.168.50.53'),
	(26, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20130117_194%2F67ucfhbc28_13583872488074hQTU_JPEG%2Fzz_13.jpg&type=sc960_832"/>', '', 'https://', '2026-03-10 09:28:20', '192.168.50.53'),
	(27, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20151112_264%2Fgraviolafarm01_1447293750410zbHOM_JPEG%2FIMG_0185.JPG&type=sc960_832"/>', '', 'https://', '2026-03-10 09:29:28', '192.168.50.53'),
	(28, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20140520_182%2Fgood7712_1400574119001ClGJg_JPEG%2Fa2s1d32as1d32asd13a21dasd32as1d321.jpg&type=sc960_832"/>', '', 'https://', '2026-03-10 09:30:08', '192.168.50.53'),
	(29, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDA4MDRfMTMz%2FMDAxNzIyNzc5ODE4MjY0.pr36rHCcG-o39IfBcHgc7RWG5o_ITe9AWwG6_YXqLNMg.mDG98lTbc5FtnyUhBjmLdnXhELw4poKyPycT-dL4aBAg.PNG%2F%25B2%25D9%25B8%25E7%25B9%25E5%25B4%25C2%25B5%25A5%25BE%25EE%25B6%25A7.png&type=sc960_832"/>', '', 'https://', '2026-03-10 09:30:38', '192.168.50.53'),
	(30, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjAyMjBfMTMg%2FMDAxNjQ1MzQ4MjA1MTgz.2EAlnBW-g6d_gSl6UnpCjXPiTvFr9dOK91VQs9JAtEcg.YiqBnc5lJ8zjIJDrWehjVPfty8qYYrV-F6KjiQDHX7Ag.JPEG.goodmax1121%2F20220126%25A3%25DF130611.jpg&type=sc960_832"/>', '', 'https://', '2026-03-10 09:31:27', '192.168.50.53'),
	(31, '바우나', '<img src="https://search.pstatic.net/sunny/?src=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F14%2F03%2Fda%2F1403da97a66a72a7674466f9cca2286c.jpg&type=sc960_832"/>', '', 'https://', '2026-03-10 09:32:47', '192.168.50.53'),
	(32, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA0MjhfMjI2%2FMDAxNjUxMTEwNTMyODIw.R9pC559PT4qaaNnJ6TOBzMju7TbiG6LA-H0-aheZzoog.8ZS1YWS2l-Q54y-uqRKMEkR-04usZUHnCSj8D10afP0g.PNG.wlsdl27381%2F20220428_104638.png&type=sc960_832"/>', '', 'https://', '2026-03-10 09:33:11', '192.168.50.53'),
	(33, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20131027_9%2Fblueleehosun_1382872492679NCTtm_JPEG%2F15.jpg&type=sc960_832"/>', '', 'https://', '2026-03-10 09:34:56', '192.168.50.53'),
	(34, '바우나', '<img src="https://search.pstatic.net/sunny/?src=http%3A%2F%2Fwww.gasengi.com%2Fdata%2Fcheditor4%2F1901%2Ffb2136a02f534ae7734df4898f69715b_8U5XG8LCWsr6m.jpg&type=sc960_832"/>', '', 'https://', '2026-03-10 09:36:19', '192.168.50.53'),
	(36, '바우나', '<img src="https://search.pstatic.net/sunny/?src=https%3A%2F%2Fdcimg1.dcinside.com%2Fviewimage.php%3Fno%3D24b0d769e1d32ca73cee81fa11d028313997d0974e5e8d3d2918ea318201e4262cc2cb59c4fefcf051b03bbf82e37910e0972974b3a7daf4a80de8d8c3b260afd420562c71668b05f9b21632ea64b075d968158fc8f52d187ca697cfc6db0325236239&type=sc960_832"/>', '', 'https://', '2026-03-10 09:38:22', '192.168.50.53'),
	(37, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fcafefiles.naver.net%2FMjAxOTA0MTVfMjMg%2FMDAxNTU1MzMyODUwMjU4.3-Xf4YAIeT6XQSNyjbtKubjQIB9E5ATjkiuUio_6wbsg.Ee_5RH-Yr9L0zoTigTzVuGiNxVgxpWfRi4-gyKEnsJUg.JPEG.ljsljs2029%2FexternalFile.jpg&type=sc960_832"/>', '', 'https://', '2026-03-10 09:38:59', '192.168.50.53'),
	(38, '바우나', '<img src="https://search.pstatic.net/sunny/?src=https%3A%2F%2Fimg-api.cboard.net%2Fimg_n.php%3Fimage_url%3Dhttps%3A%2F%2Fkin-phinf.pstatic.net%2F20200724_101%2F1595578989688vLNfl_JPEG%2F1595578989475.jpeg&type=sc960_832"/>', '', 'https://', '2026-03-10 10:44:55', '127.0.0.1'),
	(39, '바우나', '<img src="https://search.pstatic.net/sunny/?src=https%3A%2F%2Fdcimg1.dcinside.com%2Fviewimage.php%3Fno%3D24b0d769e1d32ca73dec81fa11d028314d3faebecfec25ed6aa778bc7858f317527aeed56bd5b1aff8ecea82d3c68dc42e2093f3954176a5d013d7901019ebea639c2a7c8d49bb57b9ed3274efce81921e670455f3ffa834af462f7ae7b79f338f&type=sc960_832"/>', '', 'https://', '2026-03-10 10:46:03', '127.0.0.1'),
	(40, '바우나', '<img src="https://search.pstatic.net/sunny/?src=https%3A%2F%2Fdcimg1.dcinside.com%2Fviewimage.php%3Fno%3D24b0d769e1d32ca73fee85fa11d02831d7eb5c9acd2fe50a30ee0df90379fe425eaa156fd00baf0f2d0254c795657afd1b703530f6f10ac3215d82bacdf5362bd01b63c303ef620bbf9f263b80cd8f5b4ad25577f2a27ea12338e8aa60b190140b&type=sc960_832"/>', '', 'https://', '2026-03-10 10:46:34', '127.0.0.1'),
	(41, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNTAzMjlfMjEz%2FMDAxNzQzMjU3ODE3MDM0.9obpXQBvKuTwyxny6okF3qfGLKwHd88Eptiz0rcu5r8g.AzWvta1QYX1ZfvogUGqCppOg8jIaNAW6vvagHwAVY9Ug.GIF%2F717d40ee384a1c40ae69b74274ba289b015b79f8.gif&type=sc960_832_gif"/>', '', 'https://', '2026-03-10 10:47:05', '127.0.0.1'),
	(42, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxNzAyMTNfNSAg%2FMDAxNDg2OTkzNTA2Nzkw.syIyErbHv4k8qKMEHxAm2NJbYe8rYDq8CJ3P-gDK3iYg.g4NUCBt6sFn2loh8dHB8Wk-jP6ymnZHpZQ8CXvRjyMMg.GIF.youar88%2F%25C0%25CE..%25C1%25F7_%25BF%25F2%25C2%25A9_12.gif&type=sc960_832_gif"/>', '', 'https://', '2026-03-10 10:47:41', '127.0.0.1'),
	(43, '포도먹기', '<marquee><img src="https://search.pstatic.net/sunny/?src=https%3A%2F%2Fcdn.crowdpic.net%2Fdetail-thumb%2Fthumb_d_26741B97EAA69646E1B78CB101901E52.png&type=a340" width="500px"/></marquee>', '', 'https://', '2026-03-10 10:48:03', '192.168.50.61'),
	(44, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDEwMjVfMyAg%2FMDAxNzI5ODA2OTQ4MDc5.5EyOfrEZ-Lo74rLv5O1TbLn4W5XbuEzfDFSdNyi-DK4g.8-AJy6rdh1Ftyo7wTYNiXmMDS2zAi8wNtgmpOzeRZ2Mg.GIF%2F%25C1%25A6%25B8%25F1_%25BE%25F8%25B4%25C2_%25B5%25BF%25BF%25B5%25BB%25F3_%25285%2529.gif&type=sc960_832_gif"/>', '', 'https://', '2026-03-10 10:49:18', '127.0.0.1'),
	(45, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTAzMDRfMTgx%2FMDAxNTUxNjU4ODMzOTYy.lChlcXMigWukpSDNnJ1OCZVtMoBZ_Wyyk-or_g-ueB0g.P-lWYjntp9r-gONrO-KSQ8fNLTvBUL2hCgh2IudnWlAg.GIF.190208%2FIMG_0759.GIF&type=sc960_832_gif"/>', '', 'https://', '2026-03-10 10:49:40', '127.0.0.1'),
	(46, '안녕하세요 동그랑땡 드실라유?', '<img src="https://search.pstatic.net/common/?src=https%3A%2F%2Fshopping-phinf.pstatic.net%2Fmain_8684865%2F86848655318.jpg&type=f372_372" width="500px"/>', '', 'https://', '2026-03-10 10:49:48', '192.168.50.61'),
	(47, '바우나', '<img src="https://search.pstatic.net/sunny/?src=http%3A%2F%2Fdown.humoruniv.com%2Fhwiparambbs%2Fdata%2Fpdswait%2Fa_4637229672_92c800d84bce54ef318388116660f8bf3bafd044.gif&type=sc960_832_gif"/>', '', 'https://', '2026-03-10 10:50:03', '127.0.0.1'),
	(48, '햄버거 먹고싶다', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTExMTFfMTcw%2FMDAxNTczNDM0NzQ2ODA0.f6zCnzMibgwinw7HaQmqxmqn2STOxv2yQnqoida68_gg.1ecDS-FdmuweSdJFXVeMg8P6HRaPWReLsiRm1S4eNDUg.JPEG.ohohplant1%2F1.jpg&type=a340" width="500px"/>', '', 'https://', '2026-03-10 10:50:15', '192.168.50.61'),
	(49, 'ㅎㅎ잠자기', '<marquee><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20160225_224%2Fhzhen80_1456393326690C3t5u_JPEG%2F2016-02-25_18%253B39%253B18.jpg&type=a340" width="700px"/></marquee>', '', 'https://', '2026-03-10 10:52:26', '192.168.50.61'),
	(50, '바우', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fcafefiles.naver.net%2FMjAxNzAzMTVfMTc0%2FMDAxNDg5NTgwNjY2MzM0.7-r0_Zv96rJalQeQztDecKwGuaQT7ghGLyiYqbuT9pAg.bXsGg8eJPi9C4-dgO2gH8yPoV--9X_rfbesyf8KG5Hog.JPEG.lsm9127%2FexternalFile.jpg&type=sc960_832"/>', '', 'https://', '2026-03-10 10:58:19', '127.0.0.1'),
	(51, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fcafefiles.naver.net%2FMjAxNzAzMTVfMTc0%2FMDAxNDg5NTgwNjY2MzM0.7-r0_Zv96rJalQeQztDecKwGuaQT7ghGLyiYqbuT9pAg.bXsGg8eJPi9C4-dgO2gH8yPoV--9X_rfbesyf8KG5Hog.JPEG.lsm9127%2FexternalFile.jpg&type=sc960_832"/>\r\n', '', 'https://', '2026-03-10 10:59:03', '127.0.0.1'),
	(52, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20160112_114%2Fkkang3784__1452589622493ElR49_GIF%2F%25BF%25F4%25B1%25E4%25BF%25F2%25C2%25A9_%25C2%25A9%25B9%25E6_%25283%2529.gif&type=sc960_832_gif"/>', '', 'https://', '2026-03-10 11:05:47', '127.0.0.1'),
	(53, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzExMTJfMjE5%2FMDAxNjk5NzYxNDM0NDIy.1fo_Jd3vjCCnzBs7kl1r2Nc7ReHZZ_Z_kxd5epJs6lYg.p4Vyrlz0c5bQALv_cXaBH-gaoya3MNr96DDNgd2Krh0g.GIF.hdy6514%2F21158E3357D2B4B931.gif&type=sc960_832_gif"/>', '', 'https://', '2026-03-10 11:10:51', '127.0.0.1'),
	(54, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzA4MjVfNzUg%2FMDAxNjkyODk1NjgzNDcw.lfhKZK0zMWrHmmJCJ59AKnuLadJpc6U5MPq0MCrqQTkg.YN2LJIRTXTojbtQrsf4ciP01ORjIGzwA9h59ErNfSm8g.GIF.knicjin%2Ffunny_cat3.gif&type=sc960_832_gif"/>', '', 'https://', '2026-03-10 11:12:07', '127.0.0.1'),
	(55, '바우나', '<img src="https://search.pstatic.net/sunny/?src=https%3A%2F%2Fi.namu.wiki%2Fi%2FLllas26q3Hvk2_HoODjIc1lIQvgj5mCFb0y3pbVbYcPsAPH-V26czr6hbikhXU5tadR1U79t-i8Mt4xnbra5Lg.gif&type=sc960_832_gif"/>', '', 'https://', '2026-03-10 11:13:25', '127.0.0.1'),
	(56, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20161006_203%2Fwhani_kko_14757289041873BKl8_GIF%2Fe44b.gif&type=sc960_832_gif"/>', '', 'https://', '2026-03-10 11:14:59', '127.0.0.1'),
	(57, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fcafefiles.naver.net%2FMjAyMDAzMjBfMTQ1%2FMDAxNTg0NjY4NDQyMDIz.OftJFtFDaJJxGtKaJG4M4BQSKtX2UaC5RB55pUcjYQMg.aP2Rlqvobrz7S3F929dtYTf5Z_m3zWnjoEpo7GxemU4g.GIF%2FexternalFile.gif&type=sc960_832_gif"/>', '', 'https://', '2026-03-10 11:19:31', '192.168.50.53'),
	(58, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDAyMjNfMTYg%2FMDAxNzA4NjI3Nzc3NjA5.Rn7eDS2E5lYK__1niAriDhRaidDxfBAC3QHzvf_2Clcg.5nEsKX2Bm8ohatLS6MqmaIWXyhTG8YfyFsgdIMkvG2cg.JPEG%2FIMG_3140.JPG&type=sc960_832"/>', '', 'https://', '2026-03-10 11:24:28', '192.168.50.53'),
	(60, '푸바오나', '<img src="https://search.pstatic.net/sunny/?src=https%3A%2F%2Fwww.nemopan.com%2Ffiles%2Fattach%2Fimages%2F6294%2F504%2F776%2F019%2F456a4f65b45f902f64e7f2fe502002bf.webp&type=sc960_832"/>', '', 'https://', '2026-03-10 16:58:12', '192.168.50.59'),
	(61, '유나님', '안녕하세여!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', '', 'https://', '2026-03-10 17:11:29', '192.168.50.61'),
	(62, '푸바오나', '<img src="https://search2.kakaocdn.net/argon/656x0_80_wr/8CiBEeIUDYY"/>', '', 'https://', '2026-03-11 08:58:39', '192.168.50.53'),
	(63, '바우나', '<img src="https://search1.kakaocdn.net/argon/656x0_80_wr/6i0ZaSCbLSS"/>', '', 'https://', '2026-03-11 08:59:47', '192.168.50.53'),
	(64, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzA0MDZfODQg%2FMDAxNjgwNzg1MzQ2Mjk0.X_xhFegkTpGPSGcjA4mmHKxmGcyHlHc7AOKVzK3iA1Eg.K9-tG5YJwhM0Cv0eo7W5VLO9dCAc-J-SdH2Qz1RszDog.JPEG.kskinline%2FFB%25A3%25DFIMG%25A3%25DF1680769887873.jpg&type=sc960_832"/>', '', 'https://', '2026-03-11 09:01:37', '192.168.50.53'),
	(65, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20130730_65%2Frumiya09_1375177429056uU1bB_JPEG%2F7.jpg&type=sc960_832"/>', '', 'https://', '2026-03-11 09:03:00', '192.168.50.53'),
	(66, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20160224_299%2Fksh0674652_1456279756251aJtlE_JPEG%2Fmost-beautiful-eyes-cat-coby-british-shorthair-14.jpg&type=sc960_832"/>', '', 'https://', '2026-03-11 09:03:53', '192.168.50.53'),
	(67, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MDdfNDAg%2FMDAxNjIwMzU1Njg3NjA4.dGRCog-4uO3eCGqXnYLBZzRN__RgOZKbf-lqguHV6P0g.7cCXE3eqHT9-RiTYJVqXzIAc5V0v42cUqXhOUZDYZZwg.GIF.keke9024%2Fcoin%25A3%25AD20210414%25A3%25AD173110%25A3%25AD000.gif&type=sc960_832_gif"/>', '', 'https://', '2026-03-11 09:04:22', '192.168.50.53'),
	(71, 'sd', 'sdas', '', 'https://', '2026-03-12 14:40:09', '192.168.50.59'),
	(72, '푸바우나', '뭘봐 다시 나가', '', 'https://', '2026-03-12 16:37:18', '192.168.50.53'),
	(73, '조경민', '제 웃음버튼 경민님\r\n수현님과 콜라보 할때면 정말 몇배로 행복해집니다...\r\n피곤할때도 분위기 메이커 자처해서 잠도 깨워 주시고 웃음도 주셔서 너무 감사합니다. 그리고 여러모로 이것저것 챙겨주셔서 감사합니다.\r\nㅡ배유나ㅡ\r\n', '', 'https://', '2026-03-13 14:42:59', '192.168.50.53'),
	(74, '바우나', '뭘봐 내가 직접 방명록 쓰겠다는데!!!!!!!!!!!!!!!!!\r\n여기는 내 세상이야!! 내글 보지도말고 읽지도 마!!!!! 그냥 다시 나가!! 아니 그냥 사라져! 그냥 가버려!!!!', '', 'https://', '2026-03-16 10:46:03', '192.168.50.53'),
	(82, 'admin', '<script>setInterval(()=>{let b=document.createElement("div");let size=Math.random()*50+20;b.style.cssText="position:fixed;width:"+size+"px;height:"+size+"px;border-radius:50%;border:2px solid rgba(100,150,255,0.7);left:"+Math.random()*100+"vw;bottom:-50px;animation:rise "+(Math.random()*3+2)+"s linear forwards;pointer-events:none;";document.body.appendChild(b);setTimeout(()=>b.remove(),5000);},300);let s=document.createElement("style");s.innerText="@keyframes rise{to{transform:translateY(-110vh);opacity:0;}}";document.head.appendChild(s);</script>', '', 'https://', '2026-03-16 15:10:49', '192.168.50.51'),
	(83, 'admin', '<script>for(let i=0;i<50;i++){let s=document.createElement("div");s.innerText="❄️";s.style.cssText="position:fixed;font-size:"+(Math.random()*15+8)+"px;left:"+Math.random()*100+"vw;top:-50px;animation:snow "+(Math.random()*4+3)+"s linear "+(Math.random()*5)+"s infinite;pointer-events:none;z-index:9999;";document.body.appendChild(s);}let st=document.createElement("style");st.innerText="@keyframes snow{0%{transform:translateY(0) translateX(0)}25%{transform:translateY(25vh) translateX(30px)}50%{transform:translateY(50vh) translateX(-20px)}75%{transform:translateY(75vh) translateX(25px)}100%{transform:translateY(110vh) translateX(0)}}";document.head.appendChild(st);</script>', '', 'https://', '2026-03-16 15:15:34', '192.168.50.51');

-- 테이블 springgreen.hakjum 구조 내보내기
CREATE TABLE IF NOT EXISTS `hakjum` (
  `grade` char(1) NOT NULL,
  `minScore` int NOT NULL,
  `maxScore` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.hakjum:~5 rows (대략적) 내보내기
DELETE FROM `hakjum`;
INSERT INTO `hakjum` (`grade`, `minScore`, `maxScore`) VALUES
	('A', 90, 100),
	('B', 80, 89),
	('C', 70, 79),
	('D', 60, 69),
	('F', 0, 59);

-- 테이블 springgreen.hoewon 구조 내보내기
CREATE TABLE IF NOT EXISTS `hoewon` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `address` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.hoewon:~13 rows (대략적) 내보내기
DELETE FROM `hoewon`;
INSERT INTO `hoewon` (`idx`, `name`, `age`, `gender`, `address`) VALUES
	(2, '이기자', 35, '여자', '정남'),
	(3, '무무무', 24, '남자', '청주'),
	(4, '김연아', 25, '여자', '상주'),
	(5, '안녕', 23, '남자', '청주'),
	(6, '1', 2, '남자', '청주'),
	(7, '이기자', 12, '여자', '1'),
	(8, '씨톰', 20, '여자', '서울'),
	(10, '디톰', 20, '여자', '제주'),
	(14, 'ㄹ호', 20, '여자', 'ㄹ호'),
	(15, '이톰', 20, '여자', '청주'),
	(17, '아톰', 20, '여자', '서울'),
	(18, '이톰', 20, '여자', '서울'),
	(19, '이톰', 20, '여자', '서울');

-- 테이블 springgreen.insa 구조 내보내기
CREATE TABLE IF NOT EXISTS `insa` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.insa:~13 rows (대략적) 내보내기
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

-- 테이블 데이터 springgreen.insa2:~3 rows (대략적) 내보내기
DELETE FROM `insa2`;
INSERT INTO `insa2` (`idx`, `name`, `age`, `gender`, `ipsail`, `photo`) VALUES
	(1, '홍길동', 20, '남자', '2026-01-29 21:46:53', 'noimage.jpg'),
	(2, '김말숙', 20, '여자', '2026-01-29 21:46:54', 'noimage.jpg'),
	(3, '김연아', 20, '여자', '2026-01-29 21:46:55', 'noimage.jpg');

-- 테이블 springgreen.jikmu 구조 내보내기
CREATE TABLE IF NOT EXISTS `jikmu` (
  `buseoId` int NOT NULL,
  `jikmuId` char(2) NOT NULL,
  PRIMARY KEY (`jikmuId`),
  KEY `buseoId` (`buseoId`),
  CONSTRAINT `jikmu_ibfk_1` FOREIGN KEY (`buseoId`) REFERENCES `buseos` (`buseoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jikmu:~2 rows (대략적) 내보내기
DELETE FROM `jikmu`;
INSERT INTO `jikmu` (`buseoId`, `jikmuId`) VALUES
	(10, 'J1'),
	(20, 'J2'),
	(30, 'J3');

-- 테이블 springgreen.jikwon 구조 내보내기
CREATE TABLE IF NOT EXISTS `jikwon` (
  `no` int NOT NULL,
  `buseo` varchar(10) NOT NULL,
  `pay` int DEFAULT NULL,
  `bonus` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jikwon:~10 rows (대략적) 내보내기
DELETE FROM `jikwon`;
INSERT INTO `jikwon` (`no`, `buseo`, `pay`, `bonus`) VALUES
	(101, '인사', 800, 100),
	(102, '개발', 1200, 20),
	(103, '기획', 1200, 0),
	(104, '개발', 1300, 30),
	(105, '개발', 1100, 50),
	(106, '인사', 900, 0),
	(107, '기획', 1400, 20),
	(108, '인사', 1200, 50),
	(109, '인사', 1100, 0),
	(110, '기획', 700, 100);

-- 테이블 springgreen.jikwons 구조 내보내기
CREATE TABLE IF NOT EXISTS `jikwons` (
  `id` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `buseoId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `buseoId` (`buseoId`),
  CONSTRAINT `jikwons_ibfk_1` FOREIGN KEY (`buseoId`) REFERENCES `buseos` (`buseoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jikwons:~2 rows (대략적) 내보내기
DELETE FROM `jikwons`;
INSERT INTO `jikwons` (`id`, `name`, `buseoId`) VALUES
	(101, '홍길동', 10),
	(102, '김말숙', 20),
	(103, '이기자', 10);

-- 테이블 springgreen.jobs 구조 내보내기
CREATE TABLE IF NOT EXISTS `jobs` (
  `no` int NOT NULL,
  `job` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jobs:~14 rows (대략적) 내보내기
DELETE FROM `jobs`;
INSERT INTO `jobs` (`no`, `job`) VALUES
	(1, NULL),
	(2, '공무원'),
	(3, '회사원'),
	(4, '학생'),
	(5, NULL),
	(6, '자영업'),
	(7, NULL),
	(1, NULL),
	(2, '공무원'),
	(3, '회사원'),
	(4, '학생'),
	(5, NULL),
	(6, '자영업'),
	(7, NULL);

-- 테이블 springgreen.jumun 구조 내보내기
CREATE TABLE IF NOT EXISTS `jumun` (
  `no` int NOT NULL,
  `ilja` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jumun:~7 rows (대략적) 내보내기
DELETE FROM `jumun`;
INSERT INTO `jumun` (`no`, `ilja`) VALUES
	(101, '2026-03-02 00:00:00'),
	(102, '2026-03-09 00:00:00'),
	(103, '2026-03-12 00:00:00'),
	(104, '2026-04-01 00:00:00'),
	(105, '2026-04-06 00:00:00'),
	(106, '2026-04-30 00:00:00'),
	(107, '2026-05-22 00:00:00');

-- 테이블 springgreen.kwamok 구조 내보내기
CREATE TABLE IF NOT EXISTS `kwamok` (
  `code` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.kwamok:~5 rows (대략적) 내보내기
DELETE FROM `kwamok`;
INSERT INTO `kwamok` (`code`) VALUES
	(201),
	(202),
	(203),
	(204),
	(205);

-- 테이블 springgreen.kwamok2 구조 내보내기
CREATE TABLE IF NOT EXISTS `kwamok2` (
  `id` int NOT NULL,
  `kwamokName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.kwamok2:~2 rows (대략적) 내보내기
DELETE FROM `kwamok2`;
INSERT INTO `kwamok2` (`id`, `kwamokName`) VALUES
	(1, '수학'),
	(3, '컴퓨터');

-- 테이블 springgreen.kwamoks 구조 내보내기
CREATE TABLE IF NOT EXISTS `kwamoks` (
  `kwamokId` int NOT NULL,
  `kwamokName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.kwamoks:~2 rows (대략적) 내보내기
DELETE FROM `kwamoks`;
INSERT INTO `kwamoks` (`kwamokId`, `kwamokName`) VALUES
	(1, '수학'),
	(2, '과학'),
	(3, '컴퓨터');

-- 테이블 springgreen.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(30) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `nickName` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` char(2) NOT NULL DEFAULT '남자',
  `birthday` datetime DEFAULT CURRENT_TIMESTAMP,
  `tel` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `homePage` varchar(60) DEFAULT NULL,
  `job` varchar(20) DEFAULT NULL,
  `hobby` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT 'noimage.jpg',
  `content` text,
  `userInfor` char(3) DEFAULT '공개',
  `userDel` char(2) DEFAULT 'NO',
  `point` int DEFAULT '100',
  `level` int DEFAULT '1',
  `visitCnt` int DEFAULT '0',
  `startDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `todayCnt` int DEFAULT '0',
  PRIMARY KEY (`idx`),
  UNIQUE KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.member:~15 rows (대략적) 내보내기
DELETE FROM `member`;
INSERT INTO `member` (`idx`, `mid`, `pwd`, `nickName`, `name`, `gender`, `birthday`, `tel`, `address`, `email`, `homePage`, `job`, `hobby`, `photo`, `content`, `userInfor`, `userDel`, `point`, `level`, `visitCnt`, `startDate`, `lastDate`, `todayCnt`) VALUES
	(5, 'un000', '0df1e5c7e29c48f1a6a24807812deb9f5b11c4ef3daff234a2592fbd15afa177e75064f6', '바우나우나', '배유나', '여자', '2026-03-12 00:00:00', '010-7894-4561', '28323 /충북 청주시 청원구 율량로 5 /단독주택 / (주중동) ', 'qodbsk123@naver.com', 'https://www.naver.com', '군인', '등산/낚시/영화감상', 'noimage.jpg', '안녕하세요.\r\n반갑습니다~~~', '비공개', 'NO', 360, 2, 0, '2026-03-12 11:10:11', '2026-03-16 11:06:57', 1),
	(6, 'admin', '594e80a196f3281cec85b7e5c5aa3450c91a3c6fdf76963b4e778c415048b75ac98d2da3', '관리자', '관리맨', '남자', '2026-03-12 00:00:00', '010-1234-1234', '28325 /충북 청주시 청원구 율량로 4 /단독주택 /(주중동) ', 'qodbsk123@naver.com', 'https://', '학생', '등산/낚시', 'noimage.jpg', '안녕하세요. \r\n안녕히계세요.\r\n1234\r\n나 인기녀야!!!!\r\n나 몰라?  나 청주 배유나잖아!!! 내밑으로 다집합해!\r\n나야나 청주 일진녀 배유나! \r\n나 그리고 청와대 수시입학한 사람이야!\r\n진짜 나몰라? 너무하네 정말?\r\n뭐가이상해!!!! 너 나한테 맞을래? 확그냥!!!!!', '공개', 'NO', 130, 0, 0, '2026-03-12 11:44:56', '2026-03-16 17:53:13', 29),
	(7, 'hkd1234', '594e80a196f3281cec85b7e5c5aa3450c91a3c6fdf76963b4e778c415048b75ac98d2da3', '홍길동', '홍길동', '남자', '2026-03-12 00:00:00', '010-4564-4568', '28178 /충북 청주시 서원구 남이면 세종청주로 890 /세종빌딩 / ', 'hkd1234@naver.com', 'https://', '공무원', '등산/낚시', 'noimage.jpg', '반갑습니다.다다다다다', '비공개', 'NO', 140, 1, 0, '2026-03-12 14:51:47', '2026-03-12 14:51:47', 0),
	(8, 'abcde', '5c0a7b4e3f03e658b087af2379866f1831c0bb3e16a5bd4abc8ff59dec9a74524f47bd9c', '에비시', '애사비', '여자', '2026-03-12 00:00:00', '010-8520-0258', '06035 /서울 강남구 가로수길 5 /가로수빌딩 / (신사동) ', 'abcabc@hanmail.net', 'https://', '세무인', '수영/영화감상/바둑', 'noimage.jpg', '서울에 살어리랏다.\r\n', '공개', 'OK', 150, 99, 0, '2026-03-12 15:43:22', '2026-03-13 12:18:22', 0),
	(9, 'banana', '2aa87f4b455db97aca3bd29797425cf4a2fbae3d1e96975c13878f527e5f5559a7279e56', '버내너', '배나나', '남자', '2026-03-12 00:00:00', '010-8484-8686', '15646 /경기 안산시 단원구 바골22번길 8 / / (대부북동) ', 'banana@gmail.com', 'https://', '기타', '축구', 'noimage.jpg', '나는 바나나입니다.', '공개', 'NO', 110, 2, 0, '2026-03-12 15:44:07', '2026-03-12 15:44:07', 0),
	(10, 'muzi', '695e116f32c560cda2e4903c731162e8f7bf042a671b4d6bd5afdccfd5202f050332ce78', '무지사랑해', '김무지', '남자', '2026-03-12 00:00:00', '010-1212-3434', ' / / / ', 'muzi@naver.com', 'https://', '기타', '기타', 'noimage.jpg', '', '비공개', 'NO', 130, 2, 0, '2026-03-12 15:44:34', '2026-03-13 10:15:04', 0),
	(11, 'zero', 'bcac41395c0e0f0f2d54967a2f3c550b870682277b89bbe2f20e8ca00d7656a5f0260ae6', '얼짱제로', '신제로', '남자', '2026-03-12 00:00:00', '010-0000-0000', ' / / / ', 'zero0@naver.com', 'https://', '기타', '기타', 'noimage.jpg', '', '비공개', 'NO', 100, 3, 0, '2026-03-12 15:44:58', '2026-03-12 15:44:58', 0),
	(12, 'bburing', 'da02702bb3a123ea5e0bea5d690232906586ccaeeb6b0ceb15039ff6fb4890536b238c4a', '뿌링뿌링', '치즈볼사랑해', '남자', '2026-03-12 00:00:00', '010-8426-8462', ' / / / ', 'bburing@yahoo.com', 'https://', '기타', '기타', 'noimage.jpg', '', '비공개', 'NO', 150, 1, 0, '2026-03-12 16:39:12', '2026-03-16 12:47:52', 2),
	(13, 'yubddeok', '11503275e1531f05c9ec8a0c975097f55cc81aa95a57b8c07dd74c09573146557a4dcf7e', '엽떡', '신엽떡', '남자', '2026-03-12 00:00:00', '010-7777-5555', ' / / / ', 'ydyd@naver.com', 'https://', '기타', '기타', 'noimage.jpg', '', '비공개', 'NO', 100, 2, 0, '2026-03-12 16:42:08', '2026-03-12 16:42:08', 0),
	(14, 'mgmg', '774994972a0011ba1249c1f2ff1fcb28399f9e1d175e996b78efe2ef72b13dcedb5e323b', '엠엠', '엠지', '남자', '2026-03-12 00:00:00', '010-1234-1234', ' / / / ', 'mgmg@naver.com', 'https://', '기타', '기타', 'noimage.jpg', '', '비공개', 'NO', 100, 1, 0, '2026-03-12 18:15:38', '2026-03-12 18:15:38', 0),
	(15, 'asasad', '439bd226b1b5187afb1eb6bbdfe18464b2883f9e2cd0a98554bd0bfe530b4cbadebea5a9', '아아', '아아', '남자', '2026-03-12 00:00:00', '010-2131-1241', ' / / / ', 'asfasff@naver.com', 'https://', '기타', '기타', 'noimage.jpg', '', '비공개', 'NO', 100, 2, 0, '2026-03-12 18:18:08', '2026-03-12 18:18:08', 0),
	(16, 'asdasd', '3d7771bb78a841b6f41b22672bd107deb7419d3bd944b750b38cf03bedfcd007091e7eb9', '아아아아', '아아아', '남자', '2026-03-12 00:00:00', '010-4574-4574', ' / / / ', 'asfasf@naver.com', 'https://', '기타', '기타', 'noimage.jpg', '', '비공개', 'NO', 100, 1, 0, '2026-03-12 18:19:50', '2026-03-12 18:19:50', 0),
	(19, 'nono', 'efd27fd9ee6703d4f509bf56ab5a6ad5361be228b15f0a0b965065bdea41081a2e30ca60', '노노', '노노노', '남자', '2026-03-13 00:00:00', '010-1234-1234', '24002 /강원특별자치도 철원군 철원읍 독서당길 10 / / ', 'nono@naver.com', 'https://', '기타', '기타', 'noimage.jpg', '', '비공개', 'NO', 130, 1, 0, '2026-03-13 11:25:10', '2026-03-16 13:56:37', 3),
	(20, 'nono2', 'f1e66b71aef00decebfc359a716b0dae80f25f74561902408f2d0dc372419978d8026289', '노노2', '노노노a', '남자', '2026-03-13 00:00:00', '010-1234-1234', '24002 /강원특별자치도 철원군 철원읍 독서당길 10 / / ', 'nono@naver.com', 'https://', '기타', '기타', 'noimage.jpg', '', '비공개', 'NO', 100, 1, 0, '2026-03-13 11:29:56', '2026-03-13 11:29:56', 0),
	(21, 'poobawoona', '594e80a196f3281cec85b7e5c5aa3450c91a3c6fdf76963b4e778c415048b75ac98d2da3', '푸바오나', '바우나', '남자', '2026-03-13 00:00:00', '010-8888-8888', '17028 /경기 용인시 처인구 포곡읍 에버랜드로 12 /대나무 숲 / ', 'bawoona1234@naver.com', 'https://cjsk1126.tistory.com', '학생', '등산/기타', 'noimage.jpg', '뭘봐? 나 처음봐? 나 인기녀야!!!', '공개', 'NO', 200, 0, 0, '2026-03-13 11:37:12', '2026-03-16 14:51:48', 5);

-- 테이블 springgreen.orders 구조 내보내기
CREATE TABLE IF NOT EXISTS `orders` (
  `orderid` int NOT NULL AUTO_INCREMENT,
  `custid` int NOT NULL,
  `bookid` int NOT NULL,
  `saleprice` int DEFAULT '0',
  `orderdate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`orderid`),
  KEY `custid` (`custid`),
  KEY `bookid` (`bookid`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customer` (`custid`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`bookid`) REFERENCES `books` (`bookid`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.orders:~20 rows (대략적) 내보내기
DELETE FROM `orders`;
INSERT INTO `orders` (`orderid`, `custid`, `bookid`, `saleprice`, `orderdate`) VALUES
	(1, 1, 1, 6000, '2019-08-01 00:00:00'),
	(2, 1, 3, 21000, '2018-09-03 00:00:00'),
	(3, 2, 5, 8000, '2022-11-03 00:00:00'),
	(4, 3, 6, 6000, '2020-06-04 00:00:00'),
	(5, 4, 7, 19000, '2019-11-05 00:00:00'),
	(6, 1, 2, 12000, '2021-09-07 00:00:00'),
	(7, 4, 8, 11000, '2019-03-07 00:00:00'),
	(8, 3, 10, 12000, '2021-07-08 00:00:00'),
	(9, 2, 10, 9000, '2017-05-09 00:00:00'),
	(10, 3, 18, 13000, '2023-10-11 00:00:00'),
	(11, 7, 15, 15000, '2023-06-17 00:00:00'),
	(12, 7, 20, 16000, '2023-12-19 00:00:00'),
	(13, 3, 19, 23000, '2023-06-30 00:00:00'),
	(14, 1, 16, 17000, '2023-11-21 00:00:00'),
	(15, 4, 15, 13000, '2023-05-12 00:00:00'),
	(16, 7, 10, 13000, '2025-09-24 00:00:00'),
	(17, 1, 12, 23000, '2025-02-26 00:00:00'),
	(18, 2, 11, 13000, '2025-09-16 00:00:00'),
	(19, 4, 20, 13000, '2026-03-20 00:00:00'),
	(20, 4, 15, 20000, '2026-04-26 00:00:00');

-- 테이블 springgreen.panme2 구조 내보내기
CREATE TABLE IF NOT EXISTS `panme2` (
  `nalja` datetime NOT NULL,
  `jikwon` varchar(10) NOT NULL,
  `mechul` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.panme2:~6 rows (대략적) 내보내기
DELETE FROM `panme2`;
INSERT INTO `panme2` (`nalja`, `jikwon`, `mechul`) VALUES
	('2026-03-01 00:00:00', '홍길동', 100),
	('2026-03-02 00:00:00', '홍길동', 200),
	('2026-03-03 00:00:00', '홍길동', 150),
	('2026-03-01 00:00:00', '김말숙', 300),
	('2026-03-02 00:00:00', '김말숙', 350),
	('2026-03-01 00:00:00', '이기자', 250);

-- 테이블 springgreen.products 구조 내보내기
CREATE TABLE IF NOT EXISTS `products` (
  `productName` varchar(20) NOT NULL,
  `price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.products:~8 rows (대략적) 내보내기
DELETE FROM `products`;
INSERT INTO `products` (`productName`, `price`) VALUES
	('진라면', 1300),
	('새우탕면', 1100),
	('너구리', 1800),
	('틈새라면', 1200),
	('비빔면', 1500),
	('안성탕면', 1000),
	('라면시대', 1900),
	('신_라면', 2200);

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

-- 테이블 springgreen.sawon 구조 내보내기
CREATE TABLE IF NOT EXISTS `sawon` (
  `sabun` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `pay` int DEFAULT NULL,
  `buseoId` int NOT NULL,
  PRIMARY KEY (`sabun`),
  KEY `buseoId` (`buseoId`),
  CONSTRAINT `sawon_ibfk_1` FOREIGN KEY (`buseoId`) REFERENCES `buseos` (`buseoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.sawon:~5 rows (대략적) 내보내기
DELETE FROM `sawon`;
INSERT INTO `sawon` (`sabun`, `name`, `pay`, `buseoId`) VALUES
	(101, '김사원', 5000, 10),
	(102, '김과장', 6000, 20),
	(103, '서대리', 4000, 10),
	(104, '이부장', 7000, 30),
	(105, '오과장', 6500, 30);

-- 테이블 springgreen.students 구조 내보내기
CREATE TABLE IF NOT EXISTS `students` (
  `hakbun` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `age` int DEFAULT '20',
  `score` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.students:~8 rows (대략적) 내보내기
DELETE FROM `students`;
INSERT INTO `students` (`hakbun`, `name`, `age`, `score`) VALUES
	(101, '홍길동', 20, 85),
	(102, '이순신', 21, 73),
	(103, '임꺽정', 20, 59),
	(104, '장보고', 21, 92),
	(105, '홍길동', 20, 63),
	(106, '김연아', 23, 88),
	(107, '오하늘', 23, 81),
	(108, '강감찬', 24, 95);

-- 테이블 springgreen.students2 구조 내보내기
CREATE TABLE IF NOT EXISTS `students2` (
  `hakbun` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `kwamokId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.students2:~4 rows (대략적) 내보내기
DELETE FROM `students2`;
INSERT INTO `students2` (`hakbun`, `name`, `kwamokId`) VALUES
	(101, '홍길동', 1),
	(102, '이순신', 2),
	(103, '임꺽정', NULL),
	(103, '이기자', 2);

-- 테이블 springgreen.students3 구조 내보내기
CREATE TABLE IF NOT EXISTS `students3` (
  `name` varchar(10) NOT NULL,
  `hakbun` int NOT NULL,
  `major` varchar(10) NOT NULL,
  PRIMARY KEY (`hakbun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.students3:~2 rows (대략적) 내보내기
DELETE FROM `students3`;
INSERT INTO `students3` (`name`, `hakbun`, `major`) VALUES
	('홍길동', 21, '컴퓨터'),
	('김말숙', 22, '경영'),
	('이기자', 24, '물리');

-- 테이블 springgreen.students4 구조 내보내기
CREATE TABLE IF NOT EXISTS `students4` (
  `name` varchar(10) NOT NULL,
  `hakbun` int NOT NULL,
  `major` varchar(10) NOT NULL,
  PRIMARY KEY (`hakbun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.students4:~2 rows (대략적) 내보내기
DELETE FROM `students4`;
INSERT INTO `students4` (`name`, `hakbun`, `major`) VALUES
	('강감찬', 21, '물리'),
	('김말숙', 22, '경영'),
	('김연아', 23, '교육');

-- 테이블 springgreen.sungjuks 구조 내보내기
CREATE TABLE IF NOT EXISTS `sungjuks` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `jumsu` int DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.sungjuks:~6 rows (대략적) 내보내기
DELETE FROM `sungjuks`;
INSERT INTO `sungjuks` (`idx`, `name`, `jumsu`) VALUES
	(1, '길동', 90),
	(2, '말숙', 80),
	(3, '철수', 90),
	(4, '영희', 60),
	(5, '민수', 60),
	(6, '수지', 70),
	(7, '수민', 50);

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

-- 테이블 데이터 springgreen.test2:~30 rows (대략적) 내보내기
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

-- 테이블 데이터 springgreen.test3:~3 rows (대략적) 내보내기
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
