-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: PBNYC
-- ------------------------------------------------------
-- Server version	5.7.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'1S4u7lJzehk62xDm3DgYgXXYWtbHE6gSP',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agency`
--

DROP TABLE IF EXISTS `agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agency` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recordid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agency_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `projects` text COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contacts` text COLLATE utf8mb4_unicode_ci,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agency`
--

LOCK TABLES `agency` WRITE;
/*!40000 ALTER TABLE `agency` DISABLE KEYS */;
INSERT INTO `agency` VALUES (1,'recL9mJS2TzjxlBQL','BBB',NULL,'recfnpgGUmiMPErbr',NULL,NULL,NULL),(2,'recic3Cxgv0glkdUm','AAA',NULL,'recshfxxam6ozGf9h,recqwplGRjeJnB6TM',NULL,NULL,NULL);
/*!40000 ALTER TABLE `agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airtable`
--

DROP TABLE IF EXISTS `airtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airtable` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `records` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `syncdate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airtable`
--

LOCK TABLES `airtable` WRITE;
/*!40000 ALTER TABLE `airtable` DISABLE KEYS */;
INSERT INTO `airtable` VALUES (1,'Projects','1854','2018/02/06 14:15:17'),(2,'Processes_Annual','8','2018/02/06 14:16:25'),(3,'District-Ward','36','2018/02/06 02:04:30'),(4,'Contacts','2','2018/02/06 14:16:34'),(5,'Agency','2','2018/02/06 02:05:00');
/*!40000 ALTER TABLE `airtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recordid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_ward_name` text COLLATE utf8mb4_unicode_ci,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'recA0OZPML4UUDEHE',NULL,NULL,NULL,NULL,NULL,NULL,'recvBLQXjxDigwHON,rec4ijDGxwK0xwZJh',NULL),(2,'recvFXj4OfgnqxRPJ','District 1 Contact','d1@nycc.org',NULL,'District Representative',NULL,NULL,'rec2nPxDLYQIVAGH0',NULL);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recordid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `projects` text COLLATE utf8mb4_unicode_ci,
  `active_pb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processes_annual` text COLLATE utf8mb4_unicode_ci,
  `contact_district` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES (1,'rec0g64fFOPw65tLu','40','recceEPzMgCoBcHDt,rec3XoCX8R6T855vV,recR4xLOelucakNZT,recixWbxzeHMzZLIb,recCwa1foUIci4cUO,recaHYw7r0rFt4lPN,recGz0OqAzAMFekBv,reczr0R1T94sC6I4f,recq6iqkOkgLfIZcB,recAQsFJcfb1Dbi7m,recEHOgs74RiTwB0X,recgiDXmqZdJwCsqd,recv4GYFKaHrNVRI8,recQqJm1H0rYGInhT,recUSZnGfu5ZTcV2b,recv4kgdPwNAB1rvT,recv1so9H8Z1iLyXm,recWhqc3IMyaZ4tXr,recOe8RUidPvcrpWm,rechTPF2qiWRNb50i,recDYbwcBIEkOLIMM,rec1pS7vM5HzoiYvD,recaUyU6PcqshzEKe,recc2HBi2vUUKtxLG','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(2,'rec2nPxDLYQIVAGH0','1',NULL,NULL,NULL,'recvFXj4OfgnqxRPJ',NULL),(3,'rec3ekBCjzPPMXFWy','27','rec4NHCeQDStE76Hs,recf4PR80Hkg8g33M,recOOFNkZjPjhElhu,rec9TYxcBumjAqrl4,recycTMNWpLx7n8D0,rec1RndH27smu4V8M,recDBxx99apQLiLVI,recCN5siDbxSsTdX7,reczsdLYz1wpjNMGO,recMSgdwc3OFCl1vu,recINnnOTBldFbx1p,rec8reJ10NuAQrdVo,recJ3cy6JbCA1Yvlp,rec0Jc62mcg1tbgx9,recoHJqGDNvFVW1Qv,recxqIHEgfHon5VOm,reclUyJU1ZTXsz0ou,recWulDGIooDdm2Bh,recGmp00Xeyaj0XnD,recx37BgMroSlBFkD,recPA0J7rv5R51YEb,recQnVV0Yp17t9eMA,recjSy1Q6fNOGvB96,rectA29Ay44wdzihE,reckbTOyWW3WMJHof,recUym6Pq4BOfGrDN,recrxftSSnwHSvpLS,recdzaYd6Wtr9i7Ua,recsXWFQAVk9NbLg4,rec0y18VZshpQUUKB,recWh9oUuIrdZ5XBI,recKp0kIfmFHZUUBW,recLmgPpLSj2jVI3C,rect8tloFiaK2qwK4,recDv16vIXze34e1Y,recnpzMiNcYvXicj4,recfKTQgmrpe3tx6Q,rec5cZRuExGfLE6Zz,rec19CkZszmRpXjrz,recWZMlbDWykgGNuZ,recy5RWlIyTKkEbKi,recwM19wNUyhJOOme,recjxa2eL6xUljxHY,recNSN9BVROVfz6NN,rectPoTMl5K7VNUaf,recbUeSxkeK6YM61V,recmMCaxgpJSE2eMq,recJZWh78ILCG10ib,rec1tgQB88YtnV6LZ,recPBLcYxe3XrFcS0,recMoehS5mlYaYoWs,recBIKQgevVUw2FTP,recDcINH83E6JvTTC,recSlYi3cZzVXVdjM,recIZCiG27Eft4HXY,recMnfDTKNK3QWNBJ,recLCVNqtlRkui1Jz,recjwiQZ0O6WKrD9U,recNn9r2uEA3tFLjP,recCQD6r1wcxjG7Oa,recaFKQqjONJtOWm3,recXEK0NRreDgUc1Q,recXHXrpE4dobMg38,rec2J78VUUNp8Zkt9,recpK3zJGDdA6gNzb,recnQ5C0h3bJ4pYql,reccJTQhJvc0k4Qdw','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(4,'rec4ijDGxwK0xwZJh','47','recenTyfLcHRk4vzm,recYz1Xm50IfnHnah,recOXl7I8nWzFS4A5,rec5rWS2hDIFOHoaC,recOKWIpc6WaH9RiT,recbJALmJEOX1KbLf,recFnlS7pZ2q0LhfX,recj1U43CsC1mfDFQ,recS7fQeIlL3PL7xB,recpAbscrOebYqk5S,recLr8vgPe2Ir5D6d,recBSBhsSP8maVTgF,recPGu5iz4o2HKJBf,recptUMlbYYdMIiAt,recVfwPOyRrtcG2ZG,rec75PVRTE1B3ZO4Y,recdm5mp06fVX3oxz,recjiYrsfv8walymS,recOhMOc1SsfUEWpB,recSDteu5J3N3dHLm,rec4ZwwI83NmNxqPq,recxbWVVOcn4yHyLi,recPzsNZ0xt9mw0k1,recfq2fHFYRXVNrwS,recAgHqX9BzQqNilC,recXtPc8X9AxEyT7d,rec9sdPuebAuapF18,recn6GvqMSqbSsREM,recYJdBmNYmgQOpdG,recjihKWvxkn6vofu,recQEgYlS0mvkYIwN,rec1HCqr7d9DGHCsA,recS1uIu4RWba9Ami,rec7JYVXDDpOHrOSI,recVM6iRDqpDq4nSD,recvt25AyNBQFaZrr,reclFLYEDLxA9MgpA,recHVG8majvD8ymGy','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv','recA0OZPML4UUDEHE',NULL),(5,'rec5KBiZmxivJUENy','8','recshfxxam6ozGf9h,recqwplGRjeJnB6TM,recfnpgGUmiMPErbr,rec0yosdtL577Ta0T,recQfmxZMSgWr8Mgj,recSoJayh0iDMU7ne,recsG7Et4DiWDFS9x,recNx1rsMsuA1hFYj,rec90hZzc7A2ywG5f,recNh3vzPCFOUuSSk,recvy6avKRynghcnL,recEAh4H9FUu7oVMX,recB0mZmyyitvbfec,recJkt4r2ip5r211f,recy8bvUL7hUL4AIl,recBzOLex8GFz6YJs,recjSGjnIM7PoUSgT,reche6g2m1zvYi1L4,recKegQQlHciXHF5q,recJqLFsFWwpWJvJ9,recWufA9Maeot5DxQ,recVomI9ZI56hhR6l,rec0NCjYR1DaIDhdg,recLbAAS9VxyfzzLy,recjhO5589nHA13oc,recqqFQtouoxtd6or,recPt7MORJ2rGIzII,recQWnDmV8FkkiTiX,reclnTGIZPh2cBjot,recklhPvIdyjuGA2u,reciHaMbmyF25qdjS,recMIomNFm0Kqlrfo,recHDML65ouXPRNcl,recKtZkuaYJyXhTCs,recX6e3tjtzvlgh2W,recvnmHbCE63TIW9m,reczLrBuSoCuPbkc4,recZrqqMp0nPeYI27,recpWJQEmJr5UFK3E,recY0ysm6a1tgyWAh,recssge1XAOXEWA9s,recWIHsgSSfREyTAP,reciNoXUEWxjYogO8,recDV2CfP0FZuKmuE,recaVR7HWWBEjmNDJ,recpSzQAY36yAlsY1,recbd1Hf4MJtxQRdE,recDTrLVxK268ji7J,recfg7awrxjcjfXin,recOH8uOoEe5R0vpA,recz6VfjfEm8KoltZ,rec9hH3vSAlZNdslG,rectcS6ptJbVZ6LkI,recQPQUun4D7VXhj6,recbpTTZgXu2DSD6a,recaKpToiAOSyR1s6,rec1iPP2yfglZKKki,recYSdAp0LtKCPCHX,recw5bTbFrwTuHjoA,recatK3qBTHQkV71v,rec5HE8oUvMOVc6Im,reczfWHPaxS2Q17C4,recANdKKxEzpo9yNu,recKBXYCfmoOHbbM8,recCAy467TV0gkD2r,recofQZRBa402kGS6,rec94jfmxdZTiBGSw,rec4qIfWImNRR8wTk,recbgbRTjFxAq5T1C,reclvuPZ5gtuWfaIO,rec96SmF9MUA79vqZ,recCICCtq9bhcOy36,recn5VKvbnyfrisxk,rec1wPymoPPJ9vij4,recU9aWKpTITWHjca,reckJsolcDiDY0V3Z,rec1lhEMahB4RlQQE,recmdcdv31V2TVXGe,recGABS6rn9OZ2Tm8,recusiFGkptc54XNR,recEyV4d01vg3Tbpo,reccj0fLXsQtNMGDn,reca37mQo7rx6UMxf,recH3Ay4u6AAKYdLW,rec3Dw019b6AtAtRp,recYpSNlce6OhDEOs,recjClEzXa6i7nmvv,recmMQxixefhe42rr,recimTtys58DNoqge,recAYjLvrNII2fm9W,recMpQMWKHR1HkgOt,reck2EZ07Cr9l7jGm,rec8Kv4IW43gLJjKq,recD52A5FVpUz0ngA,recelW6rzzwHhzqOx,recMpBdRZMIhSqNW0,recpjdaLdlTDhjhVY,recoKF2tWvElMUDPQ,recSM7pCzYditLj0M,recgctdjqT3HM9NPs,recxdbNjp6QmAQwhg,rec2F8WptvV1y2fXE,recZBA1jHc4eIqdua,rec7H5gLQGHDk5my7,recAIk1b18h86XK7l,recperIyGBneAs4OJ,recI0Zm4tcNYeNMXQ,rec4YhY9fMbF7L54l,recBLTEjt7ttrRz8S,recr35W43423lHGgq,recRQi2VNEFpYtL0R,recAxmD3sCgXvWCP2,rectBWDbJHXnmnjeV,rechTUZ6BQW2uEfvD,recsFMtd09PUY9uvP,recgU6k2Ku6MqfxiG,recEv3He4dznZpyhj,recydCPMKaz4NuWgy,recz9DlDXaif3vRuA,recF5rEfVB6imVJGT,recz8MWpx28YOOmPI,recThg95OfxbdEdsa,recRFy9bDpuH2sa3e,recCAAe14mIYJrq76,recgnYLWqzVU2MGcn,rec5JX9WDBRzPAHrm,rec9QAW5O8KSXS2L4,rectUIHRoGw8I8Mo2,recmyDoCYoDfXWEdY,recztLUOO0lyA5hZu,rec4Xwl4KtiCnOesp,recx22hNSoLCgUgCi,recbHYGoKkXJ9gsmS,recZcvRMIUSV1eqaS,recUuF9d0LJzneVFu,rec7Kxj3wPjafPlM6,recw2Udd2S1p01iJI,recvdqYac2xxQbItH,reciuW5tdu9PLDLsU,recHh36DBZBg5HEdK,recVDRDMO7L1lR3tx,recPiJfaMJ1i7l7qo,rechenZ85SN4DN986,reclPAS93r8Uy4QTl,recGuhKU6PL5ou2QP,recAg5P0iREP5et3B,recWQtPTwjGYPsOy2,rec0PamjUZOU7eM7R,recBm9dW4o36Hq8OO,recBj9K5UDketOs3c,recqSdjw5H2ih59tK,recHiuHY1SLmdBp5K,recEdYoOlbC06NsrH,recZZRvrP6SH3uVDh,recPlSQ8VI1Fbo3mH,recsAs1dV9IBmW5fF,rectBbM3jISYA3KEv,recMOMYmaJUnTVtIa,recfUYRHojjBQ6yez,rec92JeYtnijJ2gsF,recXeTMVg8bpwDczr,rec2Q5L6vXvM64kcG,recesx36Pi5a0H7DV,recGIpPfbRo295caX,recD2EroFhjceXYf9,rec9XEs2NSp6PSsHl,recKR2NX2KstkxjuX,recrs3PHrES1XbUY8,reckPYyGRZWjgp8cU,recI4PpkGf1J4NbcA,recLDWdMLI7SvXdXV,recDg2XcMqGI85SUA,rec0gdZiq6XEJfmMG,recIk5rbYDcp4xRMq,recooSXlchKzw7Jek,recEMKwqkhQdeKaw8,rec0Qc76IfGRvn2Zh,recRt8TA23NOrToHh,recm6rh5rtBjzFnIj,recAyC7dmxrZjT8Ui,rech0wGeD8APNM5rO,recCfFzojs1BU4idb,recE3sBdQIZzud9ev,recaARWjo26HaDiTX,recm7JnIUizydx7Ll,recMSfJTFIn9bbC2c,recJKSNEXtXkMHm1N,recyOUd7Rc9MvmWeq,receS0iW6IPJqoc3C,recdqarvwuaAlOMI4','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(6,'rec5UyOkppA4nZTzZ','31','recqo30pNtdi2WszL,recpu0JVtIs6XgpMO,reczoTdqywXHxMubG,recKzCxuDhQ92ECyI,recYEgfMJGT0YE0XY,recBXiI3MbxjzEwTP,rectcHPXJgXWoNY2b,recDIxdXlf1e47duu,rec17dSoei8eYSS9r,rec11jYpu6Qnm7YC1,recw18A5QKM2FADBu,recZ2rq9EVwC1PYEB,rec6DTVd3qwtkvs5P,recQg2vdkOhT9vHkb,reciMPsyDTZBnyj7G,recAjmXFeVlfvzvfP,recoHwiTyqztpu6LU,recLLytVn3gLd741e,rec4xTMUT1KYFQ4KQ,recrhhzuli2ebw6ws,rec3OfRw15E2DgzeQ,recSQrvjfTuAmaJ3K,recXlH4Ti4kmASuoQ,recy94gNt0l1YRmi2,recu0o5h1sRI4cDjV,recBz8KBEQwXYMenJ,recuFDAAyUQhxRBas,recHfWGTXEbtNVhkV,recbAiNWBDoc0cHFI,recdSOFBaJfOROMIP,rech21K6AknYyPxcD,rec4Uxz9tPhXq9cZA,rechWTteeyRCQTNXt,rechoxpQBSyTVycYt,recDBinMOXU3fQgnl,recIOKEAafnMr0zL4,rec7ncXsZxPOGADkt,recaNW2KazZ2QoWNK,rec16S21M8Lu3zte3,recihkXnydIdsDpF6,recsljPfoEXJkxNQX,recbDsTzUIZaVUUmd,recZzbc68DJMHvmYm,reczaD8lQDHRD9iYq,reci0FCLlZLt3Q2vV,recyeWj5M2TkmfpXi,recJxOJkUZMCLPdeh,recUVZNSp8NSSmtQb,recOUn6iUGze6NJLJ,recXJqWEjUpgTksc8,rec715nJ2Akv5CtPY,recum0pkzAAEp0RUb','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(7,'rec6CFpp0ohmlSlAR','39 Expense','rec2ie1KDuePDE2Xb,recilMdOsmSg36eYa,recVZY0tWqIDgez5b,recLExSKgc3kUFw3R,recBCzI3H2iqdxPeT,reczuFAjR2e0Es2KL,rect0Ic09BNLaqnUB,recPYxgnGB4pyATGd',NULL,'recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(8,'rec8JkCPnzKsvJxkR','38','recF4SYscUCHcgvG9,receckgx6BgUiAPXo,rec9MAuKPVkSeKwxv,reccbuc5DpApDfFGY,reciPc9I8W6wNeDTu,rec1Q2jyh0qZcbaOL,recWhP9FGYL2asC8Z,recbDYxV86iyO1Rlm,recAk8WVSU6nGv2NE,rec1NEm8BpLtdVZMc,recwgqujDJ7roCgzN,rec1CXFjySk7ifrZM,rec6gmFiQB9zO64VN,recjCGoaks2PcWVDL,recc55mAYmfRptJHq,recwSWcOXcwK44l3X,recTo3UUHJKe69MDD,recqjXK7Yel6RuJqL,recvbZgycMQ55tZbF,rec4DEka8RWR8a8Rl,recVsigeGOfGPEnen,recRbR6ZsB0AhvjK5,recOqN2qDMd7zbvs8,recmzLxKwewApTdWT,recxYRaewCbZydkEC,rechs2L8FcHNiX1iN,recxrY8Zo6MRG4WtM,recGZZxYxfl6JUwRi,recOklIEhNRgHYqu2,recRbvT1AyRa3vYrC,recLxblA79jH3yikQ,recYSocbIU5JuJwme,recMYoHt1ZVWGNinO,recABppIRyaRAf9hT,recF2qiRrbhEigtGc,recSVQxTC5EQWD4G1,recjqONppEEex1Sj2,recxoAnbBdSUQhI1N,recgRXSU8LYFnobT1,recJFlmgvg1wseJGV,recDEx2ljXX1U3Zah,reciXZDAsrOZsZWR6,recmu6uclKDKyfPOC,recnpd1CfL1wF5Ovr,rec5N4wffy29K1ozD,recb6sraqKCI3Gwm7,recVXmKJn4LX7BSlN,recCQhMLhwZZrmNbJ,recw9DBsv8OzwjDHt,recaMN4svnzam5UVA,recfPcWL66qU3dtv8,rec6P1nzH4Rwa9iK5,recmzUsjZd90iII5m,reczn7ZWwcEZpP8IR,recG3FDlvB0rib5Kn,recHOR1kpqKqiegUw,recaoVvqJhAmDWFSp,recTiYAlq4iL867vi,rec9mbVc48HZyI5zl,recNOoQE9wwMRMYsK,rec7GFmesgaHwjlZR,reckuz1AARhpdleso,recg7gj38n055dcW6,rec4PicEOsTpnKWYX,recMUiOQt0QabkI4W,rec65ThWifdWzGgz1,rechBVoieFIAIVFFu,rec1TxLHxyNtdfOcl,recI4D5MupOosJxKy,recjFfJilwg992khj,reckpliA3SFsSGY0J,recKXCDmYVJ6EBME5,recAWwAjSkb8TZXoH,recuq1sx3ZFq3giMg,recTEHGE0IXE3isvB','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(9,'rec8JlZG2RSgmKQ70','32 S','rectiu0gVgMDdLSa3,recLnFQWWgoP0aILs,recokjjZuK87NxHYG,recBDigA1phTve8do,recauUCsAzwTAH8Lq,recunujkzPEPD3kGP,recJwofuIqcaZekVq,recQZG4174VYfQknl,recfhIVffIrxnQvWd,reck1ZPP11ogcfU8G,recVoonyDYIpDhbZv,reciqsDl6BcJtMLmX,recghIfFYi324Lv9w,recF9fjXaRy9xkMQw',NULL,'recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(10,'rec9xxnk10OBhlAjl','17','rec9nDsniSFZmrwSi,recHNT3TurMkDToD3,rec2ds2m1P8PEHpFo,recG3s0cojbq0yVrQ,rec5geEl2Qas4HH8K,recegGBIQq6ir3fEF,rectOfkZNPtsEZuFo,recVfNo8AMj4O3VSM,recZ0d9cHBUsDvL2d,recXtQtUV2KFqgAW7,recllcATVSA0hYYov,recYwt2kArq1zYoUD,recm7UokFWZk4WnSw,rec3jmyudd9jVltPe','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(11,'recERyzSK2yEa17EO','11','recbzOKV6gaIFDXbN,reclJrBU1B2yZ5LUv,recKFABBZlndFjPDQ,recja73qmou1UwUhy,recqI2sYM9AL3hlwH,recQwJZX9p9Zc3N3w,rec8a6WoKq7sls4Tw,recQtMmdvi30UDCGk,recxyjvHygEjasiLg,recyigxUML3OiNnYe,recaJVUySvj1uIOmc,recSCtOE6u2n2VWqz,rec7wHY9ELWU2cF2f,recIKeJA4QVX9KrLK,recIvftMwBYRx1oES,rec3ympKari3UwiTy,recivFLoKn6wmDEYt,recWoDAL5Jsxlp6KT,recRULxihrrfJz7Pr,recgVY5ejoMWopfC0,recWkjWw2ChFGBZXI,recl6TVoFA8tWQEdW,recFo0uEquFOccf5l,rec38eldxzfrGRLwu,recmMkqSao4vnqe9r,recQCl9Akx5X6quBl,recPOqQYnwrFdzolM,rectQ5OgyZpKLiSEl,rect29TmJbeEAI0eN,rec4KlzhqW2oAi88v,recowtYvy6Hblgm9F,recQLzDAE1qZpswFd,recqgdCglzJOoZiA5,recE4pWsigwUWts2O,recDOPAkLLJQd6Nxv,recoFlewd5W8Qq4kY,recxE89UOgBbYiKF3,rectdRskbULZbSW2r','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(12,'recEX8Oo613kgehPq','10','recULNgK8TB7lQfj8,recPU0uj2jUDB441W,recdLXM9fXyCsywB7,recx64byjLPNMVbOM,recxtakU0kWz3cuQn,recwJbU0ryo3r6lVK,recnIuCsRWDTpxRWM,recZnczzz6e5Y8TiA,rechoOQmXmrFWbViO,recU9BSpzSNBGCiQP,recxro5yGmN2vorou,recvRYM1gcOspEZGb,recQkKgWORlrz8Bqx,recGbY3TcDI7Uj2Gm,recWsVUIGvOl3oT6L,recW0vZmCMhm15Nkg,recTStuEOR2vXER2v,recA60x7cNrAxP9bb,recqgHdxDN8Z2oEkN,recz6Ps1PzF2NGPol,recpIgNmTNBaGlZa2,recXEY9RZGBh4xDGG,rec3u5GlDPBLmItAk,recVR0HlNlbpRSc9R,recepU5ez9C9Aiyl0,recahBPQPfANKrgEs,receMtDHAnuTqdGZJ,recGtjok6z4kLEIer,rec16fNJJ8i5BQ0FK,rec6mFnPydoTq6Ghr,recWRELnrBSA7lr6f,recsbxp1qiDbWkB1R,recPBA2004m5QU3Eq,recP2G3U3M8zq20qr,receexj9RJAERFa6f,reccKMaqC8UxLo6OV,recGuBneTSPFpNMuz,rec8KAOJyOAvuxfpG,recOPuKDOmvmYMwsV,recRBFs1ovgEEXKNN,reclLP9og4PQlAU3s,reclbYaBQsjaxb5M5','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(13,'recMwNvXCpG9cOvUs','34','recZ8ReAV4gQObZlJ,rec8mXIMAXU4JJVHc,reccUIBh1YFy30ayk,recb1KHlgMIvEb356,recsHbp2DvNM9XBQE,reckLwcM6y4YoMC0F,recgdqxV6DPnVRiiV,recP03BSNf55BR9YO,reccZfw1g87l2VrVK,recnInWyrq5M6adLZ,reckGc1ML51gkokgm,recmKlHmlhOGOCzIN,recaVfOgGUXqpRhFq,recNqVnSzkuA6GuiY,recbk59bo5JvXO3vq,rec2jn6AWwtKWctR5,recxzvsP0KRYEBH6f,rec4dg091SiOYMdt5,recSAINWtujZDr92D,reck4ObFmQMHJrdmD,reci3HQVAE0WZHOWN,recL38CWDNfjnSDWn,recnDr5mRl9TChM4a,recUhRSzzGtmaCz13,rec4rryuLiLe5xfIs,rec3s8a4rpHgAk1Ie,rech3NDqD2XjMT72I,recHcM4eNyQGzrzrK,recuXq3t47r1uc99y,reccGu3BA1xCZtltC,reclnFW32u9kYdKlB,recTFqm8bxakYwCqJ,recc7UeA0Z0Y4xL7l,recmWgcAqjgnuMtAC,recrZf8J3KekbM4cp,recx0J4w65VKaQ8FF,recJBr7a7pE3BiCIZ,rec4PD9A0wi5a1JB0,recLS9FsmmR7wfVRg,reckKZevdZWjZ6pdS,recwONybnRHdjwaiJ,recFFaX5BurbSo05j,recTeERo4QH0QnuAz,recKH9HG8TWehcEJI,rec4RGX2gIeWZK2BH,recLwGCy4yqfxmUb1,recdrXQfQ5GvgklF4','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(14,'recOUDSsvvxTqGyW1','15','recuKDCFbumAcwVzK,rechJa3rHxAZUZcmL,rec3dgIh9WIloxK9F,recJTFeuCqwCpPY5P,recmtHySknNg6yb8z,recs8D7hR7xzeHV23,recS1LUpXUzBhINGq,recrpe7DHieeuGpA7,recFFM6YYOaZWRq5L,rec3QDeMzTLzVzsr9,reci0en1f9sbLlMat,rec7ZltVScoW5n1Qt,recaDXccgfKYxZFkB,recLUh98gj1loAa7u,recJuCv90cZVEnmM0,recES4uEWW8RTygiQ,recJKx1l9chtRvrSd,recpfm5YYEfHVrwiS,recK9km6lCjhm6A2v,recOm78gYM7nGbWh5,recgRFjyrj5yrIIXq,recjBWEBqG73xEwjM,recRtvYTJ3aq4N1f9,recM2gF2pPTTdf6Im,recqbpTNMxO6YLzsr,recEbLUtNO6JKVn2T,reclLmtqzsJyAy7zb,recdAdenrwTUM0SOU,recLugoxc0sNqH2eV,recq2lTITPRbfPV0v,rechKMzb2tJ8MdVCR,recdRcbBUwZ6KPeJE,recLbXnmpoLzs3plE,recw4pNkurgD5lSlQ,rect2PaUrrLyBlp7C,recUnOBXZiyuicMoP,recVItS87syPxfoUn,reclQQAgp9WXuyp6D,recXFsk73lI6cCocW,rec9dwDPqi1Ln7UQq,rece7yh3TEhmwtKsI,rec7A2Ok7Kd148S9p,recHUUFBBrtgi40ry,recSuPqOrWl0xKDj0,rec55PM9QtYNSObKT,recu4zlQZwEiTHdjj,reczvzv2snWf6DfYV,rec4MqcYHFP8OD7Uy,recxhCuxI4S4JrCkS,recNbuN3LIgfcV43v,rec4F6Jm2bO04Btri,recWFcC99LCVIV9m7,recfuTJaICFj3UazX,recABFcw5GYL9RJnr,rec0LG9W7cLAoCo6o','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(15,'recPd05aq1p1cMqYR','22','recsHWkHOA3e0c0Zu,recdrcyryXaPuPAJC,recUprjzN0M3sJ3J4,recYeOYJxQ5QufKH1,recedYozSNzc4Irb0,rec3TLTD8YWRjxO79,reczSMNv9Ft6l9tK9,recqGCAt8yf3y1Qmq,recYaFsf6ULPHtE6N,recwD4cKMCefBAO9q,recRtiXRwXbPOrz5Z,recV1DsKmZvlIbCnS,recAV4SSZX6hUtT7r,recTHPPyYUuKpdZoL,recaNy2xBFwWYvaOO,recuzKNrvrvFij7Og,recvyDHYwzigsIXvP,rec7VThuCkBqqj3Sf,recPza6olmJTUjJiw,recQEf8y41FeGgnJ8,recGbXioCbBl2RN4l,rec7AwwAdaTm4593q,rec0EYDyTbNhahVje,recawSbKBWxg0ucw7,recpxB5FVTtsfWhq8,rec4sQbbm07nyYkO2,recwbPeEwmQSWXt5g,reccSIchWH1wb8QmS,rec04KDbM9xMzwty9,recqf3qOEEkT9cNGV,rect5ROaljkPVerQa,recuCOXW1Z3BVIxlB,rec87hs3v13x9ZRPc,rechWwjkRCGgZE3LX,recIvpnib68vmsXLV,recdxWhJYrBp9lmZy,recSPGZGF7BSoWPOu,rec12gR1K9xUSObhy,recLeA5XHgOQW8MeT,recZNAHIGivPxTEoX,rec0YCQfOS8bK2Mc0,recJLwVPknRPdJYxk,recKm1dxqHEHeY4QQ,recmqHGRhehLXvz0O,rec1gkEsRJ5DYuYhe,recndc7eBeg1HY9RN,recbc3Xjo13nw1n8N,rec0qMHAQUkEKA3Sm,recE2L9EXRfwOPBdR,recnhrVmySMlUx7w2,rec8HcXB9gkUluD7L,receHnfxxiYxk4pEH,recORC8Z8KTWxEXvm,recPCzSp4qJGRNSlW,recL78KYpMkKKO0CT,recaNcU0ZLHorrXPW,recMWxJaELz11SuzF,recDUCpIM3n8ATEpq,rec6WahRGgZK8o5Ry,recdpg0nMdJBPBLhc,recb6YM3fVBl20TIh,recw5Jw1kTupeOVBf,rech96eex8Tf5wmXC,recyeUq2G7kPMYyk4,recK7D0XFhbsX09kv,rec4soXVrnS1hKloF,rec5ScbMwbLQGeeEW,rec74nQnQ86SmW5HU,recbmN8MiIjJa4LXO,rec1R1BIwSN2xoN1r','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(16,'recRQV0p4xTINBsPj','7','recQNUqMVpE5SOfRI,rect21Mo3fJpseYyY,rec5cS15XgDnGaJDZ,recpJSUyCOndMLDGy,recqiTCSbO8rLVqBX,recCPPQsx783xdbjw,rec18OhFCnGYNwMC4,recR7e44Y3O2u09ZZ,recphI8yRDt7ReMYT,recQXkD9rQcFXQaKE,recKsojAhtUPRDgzF,recDvzc43IzGXGVeE,recTJaIFcFz5LqFcB,recyVT2UL5mM4ehWs,rec2R77vU3BUZBf5y,recxvlrZqraiKBHTN,recl4BUtwVlyxGhgu,recuZzCJWSYeBR91L,recB9LzPAmhLFuz7C,recrtf6I8oxFjLTpP,recat6AGqZ2TJDkiu,recmzydxXyHd3iEq0,recyFGSys2jeyWu2b,recTHKA2pluEjUUV1,recEVIaRiM0BZUISi,rechz3GNftEA1CQi2,recyaWUbHlPL4fQlj,recaR9rAYliUsjVRE,recO3c5744wcNuBf4,recFYmRUVxVnGuUZv,reckDzh8YbZiC23mF,rec2TiCOP17iRb623,recxIrFYIZSGaveBJ,rec0nYpvIWrH2duzS,recPAwlHCnwim0aMJ,recxX6DIxylEmxa8w,recGnFQfagBxrbFNU,reczxLUrOYEIUoVja,recliwN33baPHCo3g,recEUniBIpBxrQKc1,recg9XMKH06op2GNP,reccLfvQFh5jy63Wx,reco2xNQQq0z9mRt5,rec294pPcMVo1K7VC,recy8wraWLtAyrZSX,recbL88hMxEtvRBv9,recBA96h25H7TVfZV,recWAbdzMFX1ZyYCZ','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(17,'recUcvLTghrfy9Byd','35','recGLTmwa5CCsC9Fd,recmSDbOxwVmWdZDm,recYa2wesBf6gMxpg,rec5pXQB7azlTp36w,recn55DxuF4bdJeXw,recBV2nvBOHU8zUke,recAcECGElz8xskqb,rec15Td2SE8e5jOf7,rec9iYAPyZPcDX319,recnyotplLFxLmaZo,recfpiVngUpPDPaBF,recp5qUfbSnmqhjde,recZn697OEL5BEdh7,recE5WovMiFeBbmTQ,recIK33Nd7md5M97c,reczqa6wPTHAhpeCy,recgDbBFcVrPA8V6n,reckrMcQMHSrZNeNq,recYDoFgZlKmurOvq,recyg9dFMm6VCcowH,recNAXZ2gCvi3rWq7,rec03agE35sNavg8Q,rechfERoAwM10MlRJ,reccqnpFAvi36bFEu,recZP3HnHc7ULYbHN,rec7QrR1DcsozVcSp,recJb223yqIiRhNdg,recG5lmkUJZoUO0f4,recp7OswlZ7bPX5gP','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(18,'recVQfnGFWy6pi19C','6','recodbWPh2C4WcIX7,recvDz2EVuadeu7kY,recUOzxcUw2ov4aqO,rec5aDXnMAL9VKaUI,rechL0ql1GfKicxjF,recejtJUeFXCjAAMY,recg30te1X4bcTuYo,recL8YwUtxlACwZev,rec7F3GNggD4XEO45,recBStCCm4Ke3mnvW,recu9sXenKHYFfgtk,recNpZj1PB3USRfMS,recwxfhomL5261OZb,reck6df1KwjpIhN9d,reck96lg4XOxVQumK,recDjxNLBjvC4O5XQ,recSH4A9A1LycLBzl,recMio0CMU57SgsQd,recGTIszFuMFVb1ZO,recTe841tsBk4ta0v,recvhmRM7B6RxAasi,recQWsU1lsLI5Kvxf,recHAT0aiAm2K5Zam,recTbEZDwNQ43BNVO,recsmuUG9tVeysvBw,recRxboovvQ41LHDe,recwWWgVsLefj9ifS,recho27gix1GvTs9i,recc64jhmQVbUN2Ey,recnK46wwsvkl9gZL,rec4NTj4hBmBhJKyV,recFS3HAKo27NaQzp,recZMzbHeO3BAghtt,recD38UbqkPwwLYyb,rec7p7Q96T4bAEAB9,rech4Z0AzVP5KI0Hg,recdw2912NR3NZ7uc,recrThIvhal4TVnWr,recfs3BZVNp48ZJBp,recbVbZoxA6jrkpfA','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(19,'recbZKpUiE82URNiX','32 N','recYirSspHQJKqGhH,rec1mMd3orgAtDkqP,recsBdPmwDkDB1lnP,recqRShJubnIJoPTY,rec7pMxr8WC7ovqSw,recB1KRWrtEcENYUw,recniHH2Bl0qK6JL1,recDcG7XiN04E05f2,recWSIGPfIUycgJoq,recaJ1Y5SxwKEL2Yx,recBD5OEpum1H9WJ3',NULL,'recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(20,'recdf2wSAWEgFo6Ti','16','recAGrvpFla8wMCMV,recZMz05a2vTSTzZZ,rechXi4RiO8DqwPM1,recdlk6Wqliw0kd41,recEQwgsJvYkcgFMR,recwYbjQeh5ENG2wN,reclQHrt3qVJz3u2Z,recRbJBKHeW8IoQuj,recJG58RDWlWLtttA,recBH5m0IOFgjkllm,recikeOYeL1NoG8Up,recvvlet95lIy2k9R,recibosOOUhaK6ryg,recU2mv0hcLUmJTC5,rec9Ns33L6dgA0M83,rec9M6coWxxmckPDP,reclGlFPLwFxV0ONA,recSeyNqXysFZHaCn,recxn3QXwN8cBAuBh,recsOHS6UZJoCwnrM,recFOxPypoEIz5lGO','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(21,'receCMr5j9Nislh6T','3','recVZWfm89SmWRi0p,recSGkxBXxCz58M7N,rec1O2inomI1Dyn8Y,reczxeeB9PT4arhr9,recsJkhLzz91UGpmQ,recQOVLeB4ixGunGw,reccpX8ZbfObEdPYx,recUCqfgK1nEFq04w,recel7bYYR5ARQAXd,recacEDhVz0K9ad4T,rec1hDQhJH2uuC9Ny,recuZpQiph5rr9PA7,rec22U8WELV0MCcBV,recK7TJ5s1j9TpjNU,recSH5aoCJvj2virp,recRiGb1VJenoPJn3,recCNljiUx2zq69Xg,rechvEJ40oFDphrUd,recp01rjglTdKeQfv,recs8TyaEeIKBGOuu,recwY4r5hjf3IEw0R,recuxZ6cfKTbgXE4T,recWf19BUNHClXLjl,rec0AcnqoNteHcLYr,recfSUFofWq1stoLO,recXkLRazeTPvcEeK,recZRvYXiJcEjJNNZ,recI7shfxXDEkyQzE,recZGYZfjnzMS0MAt,recrxP1zOD6NaMpM5,rec5W7n8F3hksoYyZ,recAPY9JJMD1FoIYG,rec9uLNxYv78yX0Db,rec5JvdCxgqWdbqra,recj8AVPIpTnd1tRc,recrWksEU4mxw0TtR,receGgk0qu6iWkLIc,recu9CO8nx14IBZsP,recbA3AWpgXYTfyA9,reculdMwyS87xuAhB,rec1M4iNI6Mz60Yid,recKiGGSN1hZdbKLl,reciQkUhTJHF4kNWT,recUmzXA6Ng9H0ubq,recsIQTMtazTMEijS,rec0Q4YAJbAbhaeUs,recCS4Oo8Z5gc3bux','1','recn6Lc6meN5ZaEA5,rec6wZs7SYJevpQ5N,recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(22,'recefj8cv008zbN3W','30','rec8MR3RBf0JVmndK,recRsGftzLWbpOpRx,rec3x5XAmRgfhuLNe,recFRPOA6NH7HfX51,recHc0Lgv1g556OKZ,recif0itnPFWu99o4,recpRgiF61QR0cLlh,recYw3ZGFbWWh5Wvj,recb0SZ3X2TxWd1Ii,recSJPKwRjWj11ZSU,recuvHJPRx49H8QNo,recMskwL0pKFbGFwO,recOK5cUkzXg8sI91,recrZItWRZXKvrRwW,recBBoqtzfI4MaDh4,recvt09y6egJnFr9s,rec9UOfaFNe4uKrvb,recVUs78nQT0jtNL5,recrqtM0NL5DdAPmL,recAy2Gzg54VX1RfC,rec0QqWJsNtJ4c0Cc,recu5t51grAwR6BmX,recGhiHKrG9DsjpxW,rec66yFnvRkp6Xbws,recfkMoT3Kj40LQSy,receNTM1Ob0xt7qaf,rec9cwuWbVWVUuiPh,recmQvmZCeT9Lb1Od,recMLbmK7Q5tAKjHG,recnLzVJZmeUZyzvr,recjiiVvk4buzODZJ,rec6C7D6sfy5GUsGA,rec9VAA6j6jCfLQe2,recBpinqAqkbNEtsG','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(23,'recjcshYtok2v0e5i','26','reco7KckJXRH4uzBo,recWk1ggCT3iF6vSK,rec1NE0mNUxCqkbJL,rec1f5Xw4Zkq1E2Ij,rec9FyBhNLgbUvNnE,recIuPNnVltHNCFsS,recZTFkRNc9NK25bv,recESRRTfpwH96tLL,recndweeAjf9iYkXM,recUGv0gNisw0GcHS,recJOK6aZG3pEIGcx,recxF7FR7SEr4Rckt,reczKI9flxxXklsoU,recjq0NheaY82iEuD,recoK6axbKz9Zj0je,rec6c4r8kJHnwS4gb,rec94MN6gnPpInr7y,recyAgSdKQ1qfWunS,recooVLO2EEi5CRVx,recs82WlcrYOjCu6E,recXPsSzgMo4Selke,recU6I3o3cSNoLvWl,recyFTbZt9mYw1mO1,recRGQ0XEhboUrBiY,recYJka5yeaJxpXY9,recuKlgQNxeSufQwC,rec5FlyFyoOUOaQTr,recS6QHFX8iWB64e7,recsGVcpyDgyDM4Xl,recytqA7Qrze7KrSy,rec5rZyoVlfYDNaVs,recePyPM5kwKKCPOI,recqV8eTM7JYTetM7,rec8NDPeYOl048pHf,rectRuxmu3KoEDUMw,rece5hYZ7FasRgG6z,reccOBKXM6ktgzrPb,recEwNJoGd5WtgUsv,recnHXOn7PquBgCTQ,recJIDxrzVe4YFtja,recDxqfD7AC2iEJ3X,rec1z2ZObnLPq6ce3,rec6Xn50IPDmFp76m,recZyniuPPVSDn688,recCOCpWickKoN9H7,rec018x0B5IZht1JQ,recsMCvaWLU2LDCMF,rect44TDBiIKyh6Jg,rec2a9oiZpJIcvnPa,recWSi3gWIQDa76fY,recTdm7oEToP7kNDz,recMfbQqVzWtbYQJm,recUsLyvwtvBWDJkg,recY9ieaNRcAcGOKW,recTOzlT9EsrJb5hZ,recpobRGItXpLC8xR,recL3dDk2ijFL3uoi,reczOj69l0MEwUzLY,recypL7xzJ0baWONL,recWS7zm8AguVJzY9,recpTvAIO8LvGI1d9,rec1t5yZCqiGlGA7O,recuQOE9ubmxgzdws,recr6o8hgrVrIFhkm,rec3hGpsJR0iIloEM,recj9pq4PrQ20EMtQ,recmoAfO4RVQwywP9,recPwDyILiGqmJUDF,reclvVzyDR7tM0t4f,rec1PiVInPBbMlOqk,recFe6I785PYzQZxL,recAEArSD0cuDb8iO,recn6Q0GzuKKmWEge,rec2h2M19nHC4hEfD,recF0yznMWhgY5qfq,rec5T8B0O4IcSnSg3,recZLT5JBM1oMNpHa,rec50pntF7wmGLPjc,recminCyb71NGSPgs','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(24,'recjvMPYzey3foR9M','39','recUpQdIab8DWay7g,recr55QsJPKOnwwsg,recUkPoQCbsla9g3D,recL9zcd0mOvjgy4j,recWUkv1I167XvdgR,recxFt0dXuxKYcqd7,recJSiATJ9A0mO4tf,recnrKGx60qO6oIO4,recXA90l94Ocefb88,rec4bfAsK4f406BlE,recrJZqiYdJM0daQp,recdsYIGhU2eVHGp5,recYYFz74aTjKOLrK,recQ3GoPIf58WsuiT,recZFrU0AkYMDeBLL,rec9aFLConxkJyXf9,recoCH9gMVksQW6gS,rec9YR7ZX1vwkemey,rec1yknwVtOh35jM7,reccNoTSo0xtIJrG6,recMaewfVK8AuT6aI,recwjQiTpfOYRmjns,recH9hxGjfKwLiJ3d,reccWMD0GBFaToW5L,rec6wVy7BgWT7aytI,reciOIRPzYn9DbbKT,rec6YVWOE4dGoxKyp,recsTGw7zUpxpilkd,rec3RtVYkH0pSdqU7,recj463vzCABXeVBX,rec8FnVK7XRaCsKsK,recPqlUOYXeWKhqGb,recZaz9PSk8W7sDtb,recWunAapPe294lPy,recnDt0OULog7u7w5,rec9dF0wVNCWqXUqg,recpCcjIiLBLNbZ98,recgZiRLLNkMQWqLD,recdBJkzrg5VzwNrN,recMvDxmzLmTdQtgG,recx5cD5VqK3XfNIv,reciS013k3tg6JIik,recIF3Az5PGI00Pxp,recr7WMwxMrndVQYv,recexCt5eEhjAwecN,rec7xh3DTm9qldU11,recuy6YPGTw4pVqma,recFzuVl6r7MnTmKA,recKxI4eQdOzyOBT8,recZWWBTu9nTaRdEL,recH75uXytVe5n3Pb,rec0F3OCOCh7ujDKG,receJ1029Q3x8Zvg6,reccSoqRAvm6Ox275,recY5Bfp6tMOfJPyQ,recuTQG1C1hboYFtg,recXJ2MtNaCBbWf2i,rec2mgIciDSbSR38t,recjJDeXCFwQxwRC4,recDakPBWoPpRrERz,recXhyzCC3yRSi9yy,recRlRnupfu41P1e1,rec8mvj8FHQrgyf8b,recwj92cS7JLI7R1N,recBJ3rgaHc1pPwhW,recfoQFwvFGtHwDET,recWux3cubwK3i35z,recXwQnuGsb6ou8Lm,recMbCxezgQVePGxw,recuqBd5oYBlYOzC7,recUb853NokE6fDWx,reclzmNAq1zMbGLGZ,recXJ0QQiryy8LjX9,recUFxOcB5GJH9DPN,recnq3wMNrxD5bsfR,recmy9E6t4KzPEEE4,rechKgzxlv7mysK9w,rec6palQ7ybRCqGZU,recVd3IWyPf8hP7mE,recDj7oNP128MpHyQ,rec4zDegZQEXGR64w,recqH5VwKGgj2McJx,recdFbOCpAmcuJo21,recoVEAqzGQ6xTJGh,rec8E1pVTTbx5VsQy,recu2jpdNJ0caiW83,rec8LWtMj9gNHtM0q,reczR2aQjTXfb8Daz,recja0nXblR9I08WC,recnbyFDu58aqgBpB,reccoXlSJMrjgdWnc,rec8edGXSUv7299j9,recUs7k2hDirK6WlW,rectapN34pjfEbIka,recPgCZo7vTALxuJy,recartSVlPX832nRP,rec9gi2zwa5a7VcJO,recldAjP3rGwpEhvF,recoFdgXAyJJeF2u8,recA74U4LVEeFhJGy,recY5zeQhTvNOFacT','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(25,'reclrDGVJScfzPUF2','36','recTzAEgBV61AQR3X,recJTftCB6RkI9Tia,receSV4i9IHx9zZ3H,recnjUUQmX8IN9yAp,recqJtd1fehlmsyWG,recnURFZDpLanOgzo,recsaW7X5qLFJQx1b,reczVDkvDtaqEm9zi,rectjXvNgP7wyXOO8,recnjw4qP6FKNopam,recLRHo2ldX5jPks7,recUJWZjCOdzmX3qC,recFnaNPDUXS5OdxG,recOKv8JY8y3UpvAc,recYDMrzAbYLwtond,rectQg4RtdBHP70Px,recxhkMm3SHwZ1BTT,recMRTRGTHNvzrgSn,recPwTt7sKNn4ZjUI,recpajZRo6XxLZ26S,recVBba3daP8jDWeC,recamwSlRuZ02LGRl,rec6STjvQeuKPtyPq,recpg35cVz3OPueXS,recZdBdvFryo8VaLM,reclkbmd7G3PnHnzM,recR2wd8Y0ZvhYKko,recjRP7GkN2K85uTi,reckbZnncKAic4H9s','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(26,'recqd2WCuw9V37Edu','5','rec38SUCTFdGvCXBC,recNKc8eo9fa7o5Hn,recdE5SDwzCKflYFL,recJdXTIAT7uB3AOP,recYFpRZHWlJkDUB4,recGiFFl1MsFtBnhZ,recEqpd9Vjl1RrRgb,rec4u6wwko6tYVQUi,rec57OcOIc0zweISA,recQsUGgq2a5bNxAe,recQTBuSRxzJKDTVr,recHGorcOqeNd0kmP,recWVDoMjbzkq3250,recnz1qQcyv8jYYXR,rec7vRJpxqUeT4ecG,recWRKoDvoX4KGssA,reclMr7LlpGSf7fyX,recjWWXjB58dq9QGg,recdG9YhMBYrQ393C,recVMHKnkYlweToy5,recJNqHOyc22QDTRF,recttvxRfbPXqfcYi,recxNDBhFuMiIMVny,recAw6NcaIeVEyOTN,reckP7QVwF5Er50rv,recRY4QtCr6IM6SPe,recuONvRnPgJyi63f,recUK2utYNJhuLIn3,recUjZpmLRgEqSabC,recjUV85rLUXWgWV4,rec7Q5NXnNnuoneAR,recxk4iFKWu3G8lva,rec3r9tHyE6S9ztWW,recuXHEg8zoNpnvCy,recD5TxXjri20XQOW,rectdTj4lmy1yVjoR,recTC9LDxVEoGFXYK,recCFowzCcBdLURJH,reckCn7Kb9mdIiVaQ,recorq68mH0D25h6n,rec1roFsZ9i2QMqLH,rectrfLxCfErJZLEF,recsP5VfiWMBs9ZRw,recfNLhyp9kxSvDrW,recGBiygEwcIUE3e8,recEu8kdumG2PPpmo,recFrDUWvXbeGLEwq,rec1woQ5weIt2ou5L,recVU3kOHUS902ZEe,recz7ceGQzK6kUjDo,recp3DJtyHMPxLrsl,recH8OHj2Zj6Nxkq0,recEcwCGWXkfDmXVS,recFHmqTwEIgxC7rl,recVqK8ORJ4J5EOOU,rec03WGpqNrxmWkVq,rec7tgwwNch7zkx9q,recNBqL77liScxbaA,rech3obNVpn1hWa10,recdhkkXbNWUkpn5T,recExatW5TGT5Lls6,recCZrP8jE4qxsn70,recqLMypuBUBegNgJ,receuMpCQ1NmIcKsf,rec7QSc89sW1V3Llh,recM0LuCteqaUUPA7,recP0sUGgoZvlfrV3,recnoeFLJJqElBe47,recWe9vMOf6MFd1E5,rec2EClj2TlJOhQBu,recgA6qfUNkLjdcop,recyurT2cjrUubqSw,recGU6JAjNUdPpgGN,recTawj5iOk5JGAmJ,recVYDB7WJibxpnDh,reccmT4qzNaZj7q71','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(27,'recs84RoejXinu5OP','32','reciigXTK3K0QLSO0,recydn4y74lNI3QdI,recRNEsaO3rRYVmyR,reciMcZ92jAtj9nlD,recXmiHbYMnHc5pCn,recpZjxDDrtZwQYsd,rec53W8QGV8rddPie,rec4vh5XYCAbQegL5,recTCtF6qt7dSAHGH,reci9M01lbhkY1hyH,recoCP4HFWW7zxAGA,recp7QGE8jkeLsMyo,rec62j0pY9e7lSX4p,recYFx3NF0dM8CRJn,recOcbUAa43GRuXGn,recMFibfCWRAUcenP,recFJ4hzhtpCwvkAC,recDtmJfzYL4QDEQY,rec7PMzF4wG3bj95Q,recQbFtd570Ot5nwK,recsRPu6GfG5jyeVq,rec8grXJQimz9aSbg,recI4Z0CjHLPBF04A,rectfaqJJSks2atMf,rec1GQg3nWgMdlk3d,rec5jCgfhGLtz1XMz,rec6cOBokfPTXpB31,recT9mzdSafo3Hf6L,recYeFwQdPCiesIYf,recVDGqz8YNep9tmG,recYUVd6U4DMsHhCj,recX93JFAy5KlZjis,recYaWWaBAljQwspg,recKEZWQtkTb5AI6F,recD6DiyKzLK9trPh,recmDR5cC9NGONZHa,recUGEGcJtd72mfXL,recXDZTRbquV0MPrw,recgKfttSTDkYLMD9,recpo4Iyfgdep9Ke3,reck9uGYnAB9u2zui,recv9SRehGgLl7qNg,reczqgsHcyt4y6cTL,recunA3lclYLIVMFK,reclUpt6CyKKr80B2,recWeVJIGYyspDbuZ,recHDk1ekiJ4jv0uy,rec9KzUhNm2eCla01,rec06GuuY9kZQl6jB,reclnA5Jv22seALVV,reclwmB5GhghYTcYQ,reclH76qrWxzgIiXZ,rec19o7HQWAQWgi8a,recSqLzrNcO6oXg2K,rec3zKFnm27zbyBEu,recJAUEdagFmTcysX,recXniy5XzbBVzkOL,recRVf5cyTbJN4HbT,recvVXJN0vNLPeidA,recrpQJFBX11UQhIO,recrZuoLyGUTNHc6H,recNo0UJh4zEAdoLP,recMbQK7MwgrBvTx5,reccbKm818doGKkZ0,recGOsADMNTEX4wzd,rece5iKDqfsHhtuoQ,receXz5WvGZ2j3XRI','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(28,'recsgTjxrgE9NlnAz','33','recxT0P12G6pBBWcY,recFXGaeD0mrr2q3M,recxl5Y3wvmWWBIWd,receLxtIbTmJbIsNh,rec9swJcxnmp1281t,rect7NSDuYEHNxHJc,recmybRBsY3zUIift,recVpwBg3uMx17Wfc,recYAWQXDOFlIXRC6,recIBDmYgRmbrToFL,rec6OR4QntZmlSVw1,recn4V5my5bZeFZQQ,recn98bprt4bKk2Wn,recZHlLIXp4gvj8Hs,recpTtqeMOU65QPzT,recwu1RbAKbUdrTPn,recdZ72rbCziQwye1,recvE42FUkFy2gG8k,rec4hxCKLNbgcFWZA,recX3w0GngUOfymor,rec2s9I2Kassj3TYX,recetSuiSIX8uIZVA,rec0i4cOIP53YS9fG,recvSEvDabZ2JniDt,recl8L7aryHThh6a8,recLJj9TJpImibb4r,recbIzZGzUwQawbP1,rec3cs0Ltl6o4ViMk,rec3SJrskvUZryqe3,rech6Se9FGFZ3PRww,recvdMPW5PIncKyKw,rec0O2aMRnEc2z5N7,recHITsNQ8S2cOOk9,rec9ZAMaz4XkyOVNP,rechF6xqGVhEBw9Vp,rec8zh4NhS0S43sYn,recDa8k5Aol474Toq,recmXx7KrvgIsWln7,recAN6JLPjEhjXozF,rec6oTE0zaWsADgmi,recR2cBXrOkqnMiSz,recJU4fPpNcP0pryX,recRbPer8KR3vv9WR,recEhD46SZaeo2mZy,recwTEPJEUfA5JoHQ,rec5WEx9GdDR43Sgi,reckgkSoe5oFUJpUS,rec25LugveKxbGBNJ,recqYGCbXA20aYX21,recQvYe8AcMjomWc9,recLPmL7nOnnJFm9u,rec4fkfTRaLMWwFlX,rec3Jx4FzqW8jbkJ9,recNnQLUbzG81grXK,rectJCsqYSrEWRmAH,recehcnduZHXa6ziz,rec1aKn9OZMu4k1VE,rec0mUK5CXiGbeQE0,recQfqyUKA8w29gUm,recLz8cCCyuAZKpfc,reccW8AyYXmN58Ci0,rece8NnecKYrxLtr3,recK0qUmovywB5RzX,recuRK1ORpiM9rHPY,rec43GB7iP1UpWWls,rec05gbLQTePRX2DF,rec2Ux7NTFlSt7M2J,recesdOiTg9qUCILC,recwjQEpanCaHGOnm,recYUvJ7Q1RHzERYi,rec8ENtxOIjC66N53,recB5TeGN5IXX5imr,reciU4ip78vmgjwOX,recPXLnfwDPloAR6O,recspxxGiGGJSTu9t,rec3JgL4nqeRWrKo4,recpHd2PpiK0jiYD3,recjeewCy7HjAy253,rec2auUTKrxuAOogf,recFhO9o3aElfAzwz,recxlE0dYElTNFjxS,reca6SPDLu6zw3CVn,recv7dMUIh6EwDCA5,receeae0FfdfJa4Pv,recMwO1WkQ5UiswjP,rec2iYU0n8KcjYaL6','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(29,'rect61ig2wCIo0psi','19','recerg4fd9WA4bTfo,rechBXdNcfXSq02o4,recO7lupAWudLx6LS,receMSPllVMCTX895,recgUQVJiG6vILNty,reca6E1YRNxjcbBeA,recVy6sOyQd9dvSFZ,recz5YaEXxUig5Z3R,recNMc2od5jUt3jqz,recVr7TYLswQAXU4E,recdQMrkr7VNxfAIO,recJpVytKflxKJRpm,recjJbVnodHlBuRvx,recZ95RwBEvdcSnQG,recmHNV1krCLebaUz,recsDuV0r966ADjSm,rec62W00gZCqTbwKz,recTTcWnzMeZ1wtie,recYbXtJ5JqnDcXsW,recSPAN0JNB5pemsl,recOanQRdVXVoa4BY,recJqirrQ9zjWWx5l,reczhuBs45YQW4cor,reczpFdoNGbD5EEmS,recSRx7LYROkpXI1E,recDMH1pxyBk35z8y,recKI9EUgTBsIS4JX,recliaZIFkja7W24s,recqC9lLygrxADl3I,rec0wrdMvBbaRwrHZ,rec6gAjzecV8GVbre,recP2lAuOs6uiN2c4,rec7mhBettJV8ut17,recW4IobbfAwiyNqK,recd3me0unORevNL8,recuxRhdhKjqjBSpm,recDkHafaV6ruDC20,recjvHKoWUhaRvYdn,recZrm5FRWXTlcdbC,receBUU9JF7ufBc7y,recM1ua4pO1QVy6gt,recqKdayFiG54yVPL,recZZBbNDY6VhPoxc,recbZODYzlS0qHHlD,recmwJnTHCBtKBPzh,rect75buotObYsURx,rec99KeOigIG6TYat,recYHYqOwAcV2s6nI,recwdEwbZPIHIOwPZ,recB6dKjPKH87V9Sa,recnhDrMpTzv3ZvZF,recDckZgiFMECShyz,recOgZnXoGyRUfGT4,rec1n3JUniin5rmAw,rectXCwKl2KgzlmTo,recNsX67rzlOk6Fck,rec9Os04y2Yw209sl,recH8ciZDpMoPA5fr,recXN8aIRCajVnSb2,recfhpmxuA1H5A6zr,recPgLfypF9RpKPe1,recYaaF1MIXU2Ids3,recxlGRjojAe5sMeV,reclrBn4scQdoaZxS,recfaql6JR2fGL6XY,recTiZZxspAMJs1Fg,reclakccWAXEhLxhF,rec4Wv8OiUCvSZl6c,recvnd2lVJD6fk6F4,recDSPRL4brr2IO4k,recx48QtkHw7ZJ4Zi,recqPV76BRz6d9fgY,recWGy7Vlfz1QtsTt,recv05mf49xH7wlmv,recMcDsk2BOqMJIk6,recokbmdk32PUI9GO,recrusS3Ec6LXAZZB,recqjAkIcoFHbMcD0,recw0Yr7iQGCqkHHo,rec4YT4ZcbS7Ji3fh,recEjLAj5MWHWjvSv,rec1lIll0r0FXKUeo','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(30,'rectP3EQ8qxH2ZKvU','45','recFzMpkApb0utW2f,recBHWIDJhJlZiF4L,rec6eYXP9IGY4Hqsc,recbV5UGsMHyF9g59,receJnFXIH8ebBUBJ,recoL2Ae7oIqLACwP,recGHsZYdLXMOYKYJ,rec8lmjGcLmECgRHM,recWACBBTwim23lLi,recjGtabseHtukk0J,recGQ0jx2qy7HtcuU,rec9v35rQVR1D4Nz4,recoEnKEAbvTOM8dj,rec1L51GpvYU1In3E,recHL642aeuTwas0m,recpKgwSmMlgiUCIt,recaPF1yKuziT7kK1,recXbuYjuUwZPq14d,rec0m1evX3zGbhl0N,recspNZxztm1ELd7c,recLeWPOMV5dnX7Oc,recCaawQ5YzORNUaA,rec66AikX6Qam41zt,reclty1GHog87k6B1,rec8pW9RV3cGIYPIm,recwYCxqlMzWIXdlE,rec0vjaJQNmN5dP7k,recENPbD1cjNF7yI4,recDRcIuKxSuIGMq2,rec4wK4c43xUW6jb8,recAUmFSZHQ4pmwL6,recMzleBwsT7dDAIK,recN7na8rlU8Om6iq,recDLISDltSeFps6R,recmtWhDMvoRiWsVO,recZrCm7UFXdpPvEn,recw2ciziDQZcpisY,recNTkufLvfGYSoyL,recI9exWITdjSO67T,rec19MQTU1yHjE7VV,recSTZ02Yepnpu3K6,reccWpaLTlnhhioa8,recgfMVDuyuo67BL9,recLyRQSlNNTc1L3H,rechTJBXM9jFuZwOG,recVjndseWfHJKh7q,recSFW9pYQRpW5L1x,rec7f74ccOc5n4iZF,recAnHF3erAFpGUaP,recYMdVAWFofctjNk,recNjL7x70anZMlI2,rec2YtGL87L8WYVlI,recBQKC7b9hGyEwH3,recs1XgzVztntibue,recWjVXxDK0lMCepc,recdaVfNFCT0p9gdl,recNRol2khAea8oMQ,rec2ybbfvlrZULcxi,recG7DMkPXEIiTwlW,recj3jPvSbHlZ45kc,rec2EeuEVS3swEvX1,recMXHfRDtuG8P9AB,recqCh9Qe5u4QsVUX,recpDGs3KW4DArk2e,reccUNnMIHP02fHHs,recz0NJ9fHiIeEYRK,recLEUS79QvhBszgp,recppIaFQA6v2z2vp,rec4Nj0Jipgq8L1RY,rec58nOyYdbFrxstj,recrgpuugMK9kopvR,recs50w1F5TLyXn1Z,recuzjS1Zl5tpec06,rec5EVIgpcEGOyuVV,recDlFJ4QYwePR54V,recKpWAHUNlL55unS,recd0SQ7A6r5Qgwh4,recfnhDDNS6MhpTnL,rec0g4iJqj4ST0pim,recSJX2FbT37MspGL,rec9Dlq7LFvtJjWgt','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(31,'rectU6Re3af3FYV64','44','recw7cwuglVfs6Pzi,recRsMzy8rWLiLYsl,recqw7uCpyFkmDwRm,recckeB2QeuXNK3rq,recj0DyQKMzn0Szmc,recfPOAJ5wsvD2ay5,rec0EW81wWu27BUsT,recGtcuSgWte70ppc,recDS7iudYsPmtwHV,recpKTLi5PoyjIlNC,recmn9XlMVrTDFMuV,recxWut1C93ym6Ucf,recmdyYuLIHCNIYaa,reclJOPxaxYUKVpcA,recMtYVDRlyO4Iif0,reco2uDrinYFmDxyg,rec9RWbjfbu1Hs0rl,recOlC0f6y3WTnyxM,recrkOM8FzQFOP2Ff,recLl46XKgNr70xDy,recr2DvJc35b5aW7Z,rectZ3LJaFweTYrMX,rechpf0xUrd5VaycU,rec14SmSJms2WP0lK,recvzrAxDhU76EkAd,rec3Rnj2vjH5wVjfC,recOqFBREqFdjJGFH,recWq5tNA4Gjbltki,recqN899Jn68dGCt2,recA7OT2wmRzs0RBT,recw8Gu4JdiMiHtiI,recWchHvXSUlpf0D1,recFj05Zlj8rU9YhV,recWdzCe8vS7zKyho,recvqsa5Sd4pWt5RA,receXQgRmWZSStep4,rec4fLRhwKZirFTth,rec8G8WRv0bRUkVFG,recHskvheyKxBjA7J,recgAUXaWmKgABTEk,recalY4JpagZtfsum,rec64gOsiK9HkmQEe,recvkVD2Xb7NpHl3M,rec0SSenco8sdww2N,recx0wQup8m7MNJ0e,recLjsIQI9a8vlpZl,recLPqcDRBdPZok95,rec8nNRXke49EQ7oA,recPegYY6ydgAeSXI,rec3anYaxRLj00mBH,reczIrrfyDAldwjIh,recDApkficE3GolnD,recgZKv9OzpSCVaE2,recjKOu6ZI8GNaNYh,recTivcXAvOteIUUn,recJrySAGmZl07eFj,recLyrNdB2zZv85qM,rec4ooxh2Vljv44oq,recnLZ2JlnG8Rsm1l,recF0UslMLrZUhCFi,recCNIqTzvFsLBwsa,recJqakFJOKpxHX8W,recPqtbmrqluucZne,recYVUchYtplZybPC,rec5bTuQiGTf6J6jf','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(32,'recvBLQXjxDigwHON','50',NULL,NULL,NULL,'recA0OZPML4UUDEHE',NULL),(33,'recvGGgNn51RFfzsJ','23','recEUqNbfskDweElf,reclaC4NYdLxRj60l,rec8T6pLJsaS01XoA,recaDnxmqj29v9sMy,recJqHltm1Jmuzikx,recXsaQNu9K8OfdZt,recUixarGL3xZELIQ,recJzmrIOYCm322dy,recKTKovLxoS2wjPN,recjSofKTNoeSwog8,recOkJqhkVmh75WZo,recAnqcmwUVL3tZQJ,recYIG5viadxDndmp,recOmEDo5hm57hPEa,rec0n4A0azvQCk5Yf,recKcpPK3VwpmR90w,rectl1zQJozXSjM29,recJdULLbcuwFzROH,reccvF2dReCpQSivY,recXJFCYLGVBObgVZ,recKIiiXVcv8svDbw,recBMLgvsS3ArADcO,reckpAt6wBovgiOLu,recH7xezyZLklEMea,recE9dJwcZzqZuntk,recvenQPZ2KRhzmMc,recm27aXlWVkyRc2A,recJ4HXfe3KBE6map,rec2R01SVVPv3QTYg,recorQbOrZtznraRw,recNbVnJQSlBcIWpG,reclE9RzBBl3JaKIG,recrPNHIDFwGJ6foS,recwC1ECQGQ4b83dO,recHaWKA8MAhwEoxR,recpBZbvwLFF0jdR1,rec3U8T18ihdNr7sh,recQamuZM82NdkiSj,recvK43IpZi11e3di,recFpzCSmuhMbHF6C,reczWoyoRWtcUOFiG,recGZ11FGjo4ulo7a,rec1KAjSTTDAmaGRC,reclv0UR8S4DmEN12,recLD3JEE0Q1134nI,rec4BX7fGco05bsEu,reczKo4HcAjpt0PpA,recu7izYGQWpZO9fi,recQoHrL7gLzpfAyH,recxOaURe7lH4dwmD,recLbTUActLuaqDyx,recZPY7KCovomXvSt,recT3iGXIaRfMhHEz,recnS2yrJRjRE0D1A,reckvhcIGyit1v5Ar,rece0A8JAISklxby2,recO63oIXry7Z1ruU,recvOfUmvff2tVfvv,rec1aVmptPcuS6yA0,rec5Cs0YD9ccAjuIS,recCBFyhB7M2vF6lp,rec4M5JeYB70HqRAP,recIlz3kSvqs4FsIB,recnMRvuBpRNJZH6o,recXcLobEWTutTvDB,rece6imO2PeVuezJ9,rect2Mgbh3K0mFrgU,recFJVKCa38moAiC5,recjbz0kUzBy0gFoo,rechuA2MnVzVHqLtZ,recwZ2hWh49Qfgy69,recgSCRoEZhOQ3PqA,recvReO2VOURE1mod,rechatbYQ61RIkewN,recmcCcM9SL42OE4x,recjGCHJlChxRtkqs,recd3Q1OdSQdPdWmN,recWRhUuTMk2i23ih,recx4I1AFTBcjoSbu,recHXSTqyuslE3hWE,rec7SniIOsOte8YUT,recVvRNmZCWPvSJXq,recqfi1t1USECwTPn,recdNqjNMnVKGA1Gm,recUiuK4SOlIVgA7V,recZUhWHneHKCMOFT,recHWiimR6TSMkYQv,recwYwP0UDIZmFxCC,recYmYDuLI9lj52Fl,rec4pJToU8f2tzvof,recIwKj52zPQsizzo,recxCIBIEkNxVVDQK,recuLorCY73f6ic4S,recwGDu5gkm14YMEa,recFhrTQmoBi9UJgI,recexpo5H9puxsTRO,reclcNeVTApdn39F5,recuiGhhieRSmPpMb,rec8B3iWx8Wz49kX9,recVAg3Hq08FuQoLB,recC5b1eYkxPnl9uU','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(34,'recw7cK3iCNMBeajU','49','recuVYeNMk6UjW4pX,reckpOE0EAk0vTX0T,recUUlbrZS9LzrWHR,recFHPsvNsIZUGdsv,recMeymSp7uwyD6S6,rechZXq6CgeihN6Xl,rec4xdzl3r8hr7CiW,recCFR3DKbN2AoLO9,recR9V3mEhg1d0Fl1,rec0s1ZSjBYmCgTDI,recbd3CZeBxae1gqo,rectmklJKec146qv9,recYviNONUndp61gU','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(35,'reczRMBqmFYro9Qap','29','recu2gG2Ec7euR8YP,recrKqyvX1NqjbqCD,reca0sXKQ3YL11n20,rec81wnPEZGusgSPd,recmRyqc0izGphOSk,recfjVy9sg6hpfnCB,recKog52EtfhPQv88,recOl0NqH6ExKNFc3,recuNMnI9rHFaOEpF,rec5Vfo5SReErmx4C,recRaUl7uCPSJpJt9,recx0QTgLv7bwa8VY,recsOzcJBDAWkhHVE,recGfAXKCrz7cySKI,recd9SI9Neq5KtmX7,recifen9zXfdKxpth,rec4VSBkpCHBoj9Wt,recb0vCaEMdz69iyi,recA8inRnubKbZLvb,reccXgyDQ1vH0CmAo,recsuKN318xm0r1yH,recePHqX9an0W6Vw8,recna4RcVRKdRevaL,recrR9Yyh2G0knM1K,recYDfU9Mvyj2sqCH,recQYHX3UG6WyP204,reccj7Pj8J0ikGdwn,rectEHnuQbdIVdVrU,recUeBybI5Dm77FUO,recFKgnaE38iMJsLp,reclvZBH0cKBNGZ42,recnNLrVJOMJxHz15,recBEXNBptaRKuBz6,rec1JHQybrKuoSSe6,rec7NG8znXqBdmAra,recw8ImyObT9DV1IG,recKqM2ZqCt505qex,recrJGi25RPKyXXK9,recJKAfcQX5UCeLxh,recqwtgjRIpXVE7Mw,recS5J8HSbxoKQNvB,recIRMGzR88UxyRHw,recQm2x56MQhUEaHz,recy6IAkOLEwgEpeo,recosUc3TH131Au3L,recDV35y3Rj1jP5lF,recWT9Figdj3VobyZ,recrWHntF3A0Erunr,recRtxBxAt5IwtROt,recvW2w5yCncS5f4X,rec6cCDnDq3NWcXFz,rec5WrTTI0UmNcUrf,recUEMfeC1jiGcdEZ,rec3Ey97NEyBN1qlH,rec1yVwSUeSgbimBr,recMAzr35Kiuz6Vns,recUI7WdY2NO64kMP,recqYJw6s6y4p3evr,recrOuNQgRKkw6NwN,reckDMDGgERRtWFuH,recOG0sx0ykxxnw2s,recL8xnSArEYEhjxh,recWspJusGpzK7eAE,rectMmMPZdbtqvCVI,rec6COknIM1asD8je,receW8U5d9vheL7r3,recQW7QbePdXJNrHA,recyHzTCoow2tW6LM,recygGTwugYrpIRIU,recn4l6oCppYWAm1F,recVK5MMesABkm9YC,recNVhfGg9SMejMrh,recNl9GsrYEccHewY,rec1j16munhISkyss,recflYmKLnrikxU4r','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL),(36,'reczpnuwZZn81IcSv','21','recov8trs3GnKwaTO,recXrVQk78kWAPU3E,recFxeBrY1BHOdTSJ,recZ82p0HrhE9Qce4,recTFeqyqVvf6Ggsy,recmv0MskzP5axLOP,recqZirvk1ZLS81gO,recZvslESTiVEDLhF,recEoINksPdPbVVza,recwXSvX9W1E1oI1N,recxyfL1H8YpOqrnk,recIy3INDKDO0Q4S9,reclXZqhfYTTvdNBL,recMM51WeXupUg2DP,recZZFCDTqTDhOM3Z,recz7Lsix4PjZJcr8,recImA8PZlwlGauwn,recVzG4oZnRtWkZna,recsrKTkniTrwmWhP,recq12bCt74D7AoQa,recJgDXPWHwIQ1SMU,reccS9MAIshCOyacO,rec0gz9mC419dnBmg,reciEDlPjCVXAgN3S,recwjPRL9zUUuZKka,rec5J2HK5h3tUAlBK,rec8a0lGBbd3t7n9l,recHbKOcxBObh047l,recxoBt6PXVeJv59R,reccn6rSBN5Zko3nL,recTxNbxCQ4eQ1W80,recnQTDdOqNFrFdIv,rechGl9RIfK1FWr3W,recGN661Iog98MLkq,rec93yIm0HtNJD9qe','1','recWqHCBgPv0FjtYn,recI66nIud18Wyehv',NULL,NULL);
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_07_02_230147_migration_cartalyst_sentinel',1),(2,'2017_05_05_084634_PasswordReset',1),(3,'2018_02_02_130209_create_pages_table',1),(4,'2018_02_03_102651_create_projects_table',1),(5,'2018_02_03_103145_create_processes_table',1),(6,'2018_02_03_103207_create_disctricts_table',1),(7,'2018_02_03_103220_create_contacts_table',1),(8,'2018_02_03_103229_create_agencies_table',1),(9,'2018_02_06_002332_create_airtable_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','This is Home','<p>We\'ve compiled NYC government open data sets to make it easier to understand what city agencies are doing and how they\'re spending money.<br></p>','2018-02-06 17:21:03','2018-02-06 17:21:03',NULL),(2,'About','This is About Page','<p>This website uses data from a variety of publicly accessible sources including:&lt;br&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;* &lt;a href=\"https://data.cityofnewyork.us/City-Government/Greenbook/mdcw-n682\" target=\"_blank\"&gt;Greenbook&lt;/a&gt;&lt;/p&gt;&lt;p&gt;* &lt;a href=\"https://github.com/chriswhong/nyc-capital-commitment-scrape\" target=\"_blank\"&gt;Capital Commitment Scrape&lt;/a&gt;&lt;/p&gt;&lt;p&gt;* &lt;a href=\"https://data.cityofnewyork.us/City-Government/Expense-Budget/mwzb-yiwb\" target=\"_blank\"&gt;NYC Expenses&lt;/a&gt;&lt;/p&gt;&lt;p&gt;* &lt;a href=\"http://www1.nyc.gov/nyc-resources/agencies.page\" target=\"_blank\"&gt;NYC.gov/agencies&lt;/a&gt;&lt;/p&gt;&lt;p&gt;It is a&amp;nbsp; project of&amp;nbsp;&lt;a href=\"http://sarapis.org/\" target=\"_blank\" style=\"\"&gt;Sarapis&lt;/a&gt;, a nonprofit that advances free and open source solutions to common challenges. You can support this project financially by making a &lt;a href=\"http://sarapis.org/donate\" target=\"_blank\"&gt;donation&lt;/a&gt; to Sarapis.&amp;nbsp;&lt;br&gt;&lt;/p&gt;<br></p>','2018-02-06 17:21:54','2018-02-06 17:23:12',NULL);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persistences`
--

DROP TABLE IF EXISTS `persistences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persistences`
--

LOCK TABLES `persistences` WRITE;
/*!40000 ALTER TABLE `persistences` DISABLE KEYS */;
INSERT INTO `persistences` VALUES (1,1,'sm8g89Gcn7ny8B6v60QVRbydUaVx57fv','2018-02-06 04:06:54','2018-02-06 04:06:54'),(2,1,'ml15Aqcl3qWML4w2SBt0rLU0wMiGXZQL','2018-02-06 06:13:11','2018-02-06 06:13:11'),(3,1,'GUUmwrZvTOsKlUY51TyFDrMvTokt4wET','2018-02-06 11:50:49','2018-02-06 11:50:49');
/*!40000 ALTER TABLE `persistences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process`
--

DROP TABLE IF EXISTS `process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `process` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recordid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_process_annual` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `projects` text COLLATE utf8mb4_unicode_ci,
  `vote_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `process_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_ward_name` text COLLATE utf8mb4_unicode_ci,
  `voters` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process`
--

LOCK TABLES `process` WRITE;
/*!40000 ALTER TABLE `process` DISABLE KEYS */;
INSERT INTO `process` VALUES (1,'rec6wZs7SYJevpQ5N','PBNYC-2012','recshfxxam6ozGf9h,recqwplGRjeJnB6TM,recfnpgGUmiMPErbr,rec0yosdtL577Ta0T,recQfmxZMSgWr8Mgj,recSoJayh0iDMU7ne,recsG7Et4DiWDFS9x,recNx1rsMsuA1hFYj,rec90hZzc7A2ywG5f,recNh3vzPCFOUuSSk,recvy6avKRynghcnL,recEAh4H9FUu7oVMX,recB0mZmyyitvbfec,recJkt4r2ip5r211f,recy8bvUL7hUL4AIl,recBzOLex8GFz6YJs,recjSGjnIM7PoUSgT,reche6g2m1zvYi1L4,recKegQQlHciXHF5q,recJqLFsFWwpWJvJ9,recWufA9Maeot5DxQ,recVomI9ZI56hhR6l,rec0NCjYR1DaIDhdg,recLbAAS9VxyfzzLy,recjhO5589nHA13oc,recqqFQtouoxtd6or,recPt7MORJ2rGIzII,recQWnDmV8FkkiTiX,reclnTGIZPh2cBjot,recklhPvIdyjuGA2u,reciHaMbmyF25qdjS,recMIomNFm0Kqlrfo,recHDML65ouXPRNcl,recKtZkuaYJyXhTCs,recX6e3tjtzvlgh2W,recvnmHbCE63TIW9m,reczLrBuSoCuPbkc4,reciigXTK3K0QLSO0,recydn4y74lNI3QdI,recRNEsaO3rRYVmyR,reciMcZ92jAtj9nlD,recXmiHbYMnHc5pCn,recpZjxDDrtZwQYsd,rec53W8QGV8rddPie,rec4vh5XYCAbQegL5,recTCtF6qt7dSAHGH,reci9M01lbhkY1hyH,recoCP4HFWW7zxAGA,recp7QGE8jkeLsMyo,rec62j0pY9e7lSX4p,recYFx3NF0dM8CRJn,recOcbUAa43GRuXGn,recMFibfCWRAUcenP,recFJ4hzhtpCwvkAC,recDtmJfzYL4QDEQY,rec7PMzF4wG3bj95Q,recUpQdIab8DWay7g,recr55QsJPKOnwwsg,recUkPoQCbsla9g3D,recL9zcd0mOvjgy4j,recWUkv1I167XvdgR,recxFt0dXuxKYcqd7,recJSiATJ9A0mO4tf,recnrKGx60qO6oIO4,recXA90l94Ocefb88,rec4bfAsK4f406BlE,recrJZqiYdJM0daQp,recdsYIGhU2eVHGp5,recYYFz74aTjKOLrK,recQ3GoPIf58WsuiT,recZFrU0AkYMDeBLL,rec9aFLConxkJyXf9,recoCH9gMVksQW6gS,rec9YR7ZX1vwkemey,rec1yknwVtOh35jM7,reccNoTSo0xtIJrG6,recMaewfVK8AuT6aI,recwjQiTpfOYRmjns,recFzMpkApb0utW2f,recBHWIDJhJlZiF4L,rec6eYXP9IGY4Hqsc,recbV5UGsMHyF9g59,receJnFXIH8ebBUBJ,recoL2Ae7oIqLACwP,recGHsZYdLXMOYKYJ,rec8lmjGcLmECgRHM,recWACBBTwim23lLi,recjGtabseHtukk0J,recGQ0jx2qy7HtcuU,rec9v35rQVR1D4Nz4,recoEnKEAbvTOM8dj,rec1L51GpvYU1In3E,recHL642aeuTwas0m,recpKgwSmMlgiUCIt,recaPF1yKuziT7kK1,recXbuYjuUwZPq14d,rec0m1evX3zGbhl0N,recspNZxztm1ELd7c,recLeWPOMV5dnX7Oc,recCaawQ5YzORNUaA,rec66AikX6Qam41zt,reclty1GHog87k6B1,rec8pW9RV3cGIYPIm','2012','PBNYC','receCMr5j9Nislh6T',NULL,NULL,NULL),(2,'recDfnkxpYXztTgHy','PBNYC-2015','recVZWfm89SmWRi0p,recSGkxBXxCz58M7N,rec1O2inomI1Dyn8Y,reczxeeB9PT4arhr9,recsJkhLzz91UGpmQ,recQOVLeB4ixGunGw,reccpX8ZbfObEdPYx,recUCqfgK1nEFq04w,recel7bYYR5ARQAXd,recacEDhVz0K9ad4T,rec1hDQhJH2uuC9Ny,recuZpQiph5rr9PA7,rec22U8WELV0MCcBV,recK7TJ5s1j9TpjNU,recSH5aoCJvj2virp,recRiGb1VJenoPJn3,recCNljiUx2zq69Xg,recRY4QtCr6IM6SPe,recuONvRnPgJyi63f,recUK2utYNJhuLIn3,recUjZpmLRgEqSabC,recjUV85rLUXWgWV4,rec7Q5NXnNnuoneAR,recxk4iFKWu3G8lva,rec3r9tHyE6S9ztWW,recuXHEg8zoNpnvCy,recD5TxXjri20XQOW,rectdTj4lmy1yVjoR,recTC9LDxVEoGFXYK,recCFowzCcBdLURJH,reckCn7Kb9mdIiVaQ,recorq68mH0D25h6n,rec1roFsZ9i2QMqLH,rectrfLxCfErJZLEF,recodbWPh2C4WcIX7,recvDz2EVuadeu7kY,recUOzxcUw2ov4aqO,rec5aDXnMAL9VKaUI,rechL0ql1GfKicxjF,recejtJUeFXCjAAMY,recg30te1X4bcTuYo,recL8YwUtxlACwZev,rec7F3GNggD4XEO45,recBStCCm4Ke3mnvW,recu9sXenKHYFfgtk,recNpZj1PB3USRfMS,recwxfhomL5261OZb,reck6df1KwjpIhN9d,reck96lg4XOxVQumK,recQNUqMVpE5SOfRI,rect21Mo3fJpseYyY,rec5cS15XgDnGaJDZ,recpJSUyCOndMLDGy,recqiTCSbO8rLVqBX,recCPPQsx783xdbjw,rec18OhFCnGYNwMC4,recR7e44Y3O2u09ZZ,recphI8yRDt7ReMYT,recQXkD9rQcFXQaKE,recKsojAhtUPRDgzF,recDvzc43IzGXGVeE,recTJaIFcFz5LqFcB,recyVT2UL5mM4ehWs,rec2R77vU3BUZBf5y,recxvlrZqraiKBHTN,rec7H5gLQGHDk5my7,recAIk1b18h86XK7l,recperIyGBneAs4OJ,recI0Zm4tcNYeNMXQ,rec4YhY9fMbF7L54l,recBLTEjt7ttrRz8S,recr35W43423lHGgq,recRQi2VNEFpYtL0R,recAxmD3sCgXvWCP2,rectBWDbJHXnmnjeV,rechTUZ6BQW2uEfvD,recsFMtd09PUY9uvP,recgU6k2Ku6MqfxiG,recEv3He4dznZpyhj,recydCPMKaz4NuWgy,recz9DlDXaif3vRuA,recF5rEfVB6imVJGT,recz8MWpx28YOOmPI,recThg95OfxbdEdsa,recRFy9bDpuH2sa3e,recCAAe14mIYJrq76,recgnYLWqzVU2MGcn,rec5JX9WDBRzPAHrm,rec9QAW5O8KSXS2L4,rectUIHRoGw8I8Mo2,recmyDoCYoDfXWEdY,recztLUOO0lyA5hZu,rec4Xwl4KtiCnOesp,recx22hNSoLCgUgCi,recbHYGoKkXJ9gsmS,recZcvRMIUSV1eqaS,recUuF9d0LJzneVFu,rec7Kxj3wPjafPlM6,recw2Udd2S1p01iJI,recULNgK8TB7lQfj8,recPU0uj2jUDB441W,recdLXM9fXyCsywB7,recx64byjLPNMVbOM,recxtakU0kWz3cuQn,recwJbU0ryo3r6lVK,recnIuCsRWDTpxRWM,recZnczzz6e5Y8TiA,rechoOQmXmrFWbViO,recU9BSpzSNBGCiQP,recxro5yGmN2vorou,recvRYM1gcOspEZGb,recQkKgWORlrz8Bqx,recbzOKV6gaIFDXbN,reclJrBU1B2yZ5LUv,recKFABBZlndFjPDQ,recja73qmou1UwUhy,recqI2sYM9AL3hlwH,recQwJZX9p9Zc3N3w,rec8a6WoKq7sls4Tw,recQtMmdvi30UDCGk,recxyjvHygEjasiLg,recyigxUML3OiNnYe,recaJVUySvj1uIOmc,recuKDCFbumAcwVzK,rechJa3rHxAZUZcmL,rec3dgIh9WIloxK9F,recJTFeuCqwCpPY5P,recmtHySknNg6yb8z,recs8D7hR7xzeHV23,recS1LUpXUzBhINGq,recrpe7DHieeuGpA7,recFFM6YYOaZWRq5L,rec3QDeMzTLzVzsr9,reci0en1f9sbLlMat,rec7ZltVScoW5n1Qt,recaDXccgfKYxZFkB,recLUh98gj1loAa7u,recJuCv90cZVEnmM0,recES4uEWW8RTygiQ,recDkHafaV6ruDC20,recjvHKoWUhaRvYdn,recZrm5FRWXTlcdbC,receBUU9JF7ufBc7y,recM1ua4pO1QVy6gt,recqKdayFiG54yVPL,recZZBbNDY6VhPoxc,recbZODYzlS0qHHlD,recmwJnTHCBtKBPzh,rect75buotObYsURx,recov8trs3GnKwaTO,recXrVQk78kWAPU3E,recFxeBrY1BHOdTSJ,recZ82p0HrhE9Qce4,recTFeqyqVvf6Ggsy,recmv0MskzP5axLOP,recsHWkHOA3e0c0Zu,recdrcyryXaPuPAJC,recUprjzN0M3sJ3J4,recYeOYJxQ5QufKH1,recedYozSNzc4Irb0,rec3TLTD8YWRjxO79,reczSMNv9Ft6l9tK9,recqGCAt8yf3y1Qmq,recYaFsf6ULPHtE6N,recwD4cKMCefBAO9q,recRtiXRwXbPOrz5Z,recV1DsKmZvlIbCnS,recAV4SSZX6hUtT7r,recTHPPyYUuKpdZoL,recaNy2xBFwWYvaOO,recuzKNrvrvFij7Og,recvyDHYwzigsIXvP,rec7VThuCkBqqj3Sf,recPza6olmJTUjJiw,recQEf8y41FeGgnJ8,recGbXioCbBl2RN4l,rec7AwwAdaTm4593q,rec0EYDyTbNhahVje,recawSbKBWxg0ucw7,recpBZbvwLFF0jdR1,rec3U8T18ihdNr7sh,recQamuZM82NdkiSj,recvK43IpZi11e3di,recFpzCSmuhMbHF6C,reczWoyoRWtcUOFiG,recGZ11FGjo4ulo7a,rec1KAjSTTDAmaGRC,reclv0UR8S4DmEN12,recLD3JEE0Q1134nI,rec4BX7fGco05bsEu,reczKo4HcAjpt0PpA,recu7izYGQWpZO9fi,recQoHrL7gLzpfAyH,recxOaURe7lH4dwmD,recLbTUActLuaqDyx,recZPY7KCovomXvSt,recT3iGXIaRfMhHEz,recnS2yrJRjRE0D1A,reckvhcIGyit1v5Ar,rece0A8JAISklxby2,recO63oIXry7Z1ruU,recvOfUmvff2tVfvv,rec1aVmptPcuS6yA0,reco7KckJXRH4uzBo,recWk1ggCT3iF6vSK,rec1NE0mNUxCqkbJL,rec1f5Xw4Zkq1E2Ij,rec9FyBhNLgbUvNnE,recIuPNnVltHNCFsS,recZTFkRNc9NK25bv,recESRRTfpwH96tLL,recndweeAjf9iYkXM,recUGv0gNisw0GcHS,recJOK6aZG3pEIGcx,recxF7FR7SEr4Rckt,reczKI9flxxXklsoU,recjq0NheaY82iEuD,recoK6axbKz9Zj0je,rec6c4r8kJHnwS4gb,rec94MN6gnPpInr7y,recyAgSdKQ1qfWunS,recooVLO2EEi5CRVx,recs82WlcrYOjCu6E,recXPsSzgMo4Selke,recU6I3o3cSNoLvWl,recyFTbZt9mYw1mO1,recRGQ0XEhboUrBiY,recYJka5yeaJxpXY9,recuKlgQNxeSufQwC,rec5FlyFyoOUOaQTr,recS6QHFX8iWB64e7,rec4NHCeQDStE76Hs,recf4PR80Hkg8g33M,recOOFNkZjPjhElhu,rec9TYxcBumjAqrl4,recycTMNWpLx7n8D0,rec1RndH27smu4V8M,recDBxx99apQLiLVI,recCN5siDbxSsTdX7,reczsdLYz1wpjNMGO,recMSgdwc3OFCl1vu,recINnnOTBldFbx1p,rec8reJ10NuAQrdVo,recJ3cy6JbCA1Yvlp,rec0Jc62mcg1tbgx9,recoHJqGDNvFVW1Qv,recxqIHEgfHon5VOm,reclUyJU1ZTXsz0ou,recWulDGIooDdm2Bh,recGmp00Xeyaj0XnD,recx37BgMroSlBFkD,recPA0J7rv5R51YEb,recQnVV0Yp17t9eMA,recjSy1Q6fNOGvB96,recu2gG2Ec7euR8YP,recrKqyvX1NqjbqCD,reca0sXKQ3YL11n20,rec81wnPEZGusgSPd,recmRyqc0izGphOSk,recfjVy9sg6hpfnCB,recKog52EtfhPQv88,recOl0NqH6ExKNFc3,recuNMnI9rHFaOEpF,rec5Vfo5SReErmx4C,recRaUl7uCPSJpJt9,recx0QTgLv7bwa8VY,recsOzcJBDAWkhHVE,recGfAXKCrz7cySKI,recd9SI9Neq5KtmX7,recifen9zXfdKxpth,rec4VSBkpCHBoj9Wt,recb0vCaEMdz69iyi,recA8inRnubKbZLvb,reccXgyDQ1vH0CmAo,rec11jYpu6Qnm7YC1,recw18A5QKM2FADBu,recZ2rq9EVwC1PYEB,rec6DTVd3qwtkvs5P,recQg2vdkOhT9vHkb,reciMPsyDTZBnyj7G,recAjmXFeVlfvzvfP,recoHwiTyqztpu6LU,recLLytVn3gLd741e,recmXx7KrvgIsWln7,recAN6JLPjEhjXozF,rec6oTE0zaWsADgmi,recR2cBXrOkqnMiSz,recJU4fPpNcP0pryX,recRbPer8KR3vv9WR,recEhD46SZaeo2mZy,recwTEPJEUfA5JoHQ,rec5WEx9GdDR43Sgi,reckgkSoe5oFUJpUS,rec25LugveKxbGBNJ,recqYGCbXA20aYX21,recQvYe8AcMjomWc9,recLPmL7nOnnJFm9u,rec4fkfTRaLMWwFlX,rec3Jx4FzqW8jbkJ9,recZ8ReAV4gQObZlJ,rec8mXIMAXU4JJVHc,reccUIBh1YFy30ayk,recb1KHlgMIvEb356,recsHbp2DvNM9XBQE,reckLwcM6y4YoMC0F,recgdqxV6DPnVRiiV,recP03BSNf55BR9YO,reccZfw1g87l2VrVK,recnInWyrq5M6adLZ,reckGc1ML51gkokgm,recmKlHmlhOGOCzIN,recaVfOgGUXqpRhFq,recNqVnSzkuA6GuiY,recbk59bo5JvXO3vq,rec2jn6AWwtKWctR5,recxzvsP0KRYEBH6f,recmzLxKwewApTdWT,recxYRaewCbZydkEC,rechs2L8FcHNiX1iN,recxrY8Zo6MRG4WtM,recGZZxYxfl6JUwRi,recOklIEhNRgHYqu2,recRbvT1AyRa3vYrC,recLxblA79jH3yikQ,recYSocbIU5JuJwme,recMYoHt1ZVWGNinO,recABppIRyaRAf9hT,recF2qiRrbhEigtGc,recSVQxTC5EQWD4G1,recjqONppEEex1Sj2,recxoAnbBdSUQhI1N,recgRXSU8LYFnobT1,recJFlmgvg1wseJGV,recDEx2ljXX1U3Zah,reciXZDAsrOZsZWR6,recmu6uclKDKyfPOC,recnpd1CfL1wF5Ovr,rec5N4wffy29K1ozD,recwj92cS7JLI7R1N,recBJ3rgaHc1pPwhW,recfoQFwvFGtHwDET,recWux3cubwK3i35z,recXwQnuGsb6ou8Lm,recMbCxezgQVePGxw,recuqBd5oYBlYOzC7,recUb853NokE6fDWx,reclzmNAq1zMbGLGZ,recXJ0QQiryy8LjX9,recUFxOcB5GJH9DPN,recnq3wMNrxD5bsfR,recmy9E6t4KzPEEE4,rechKgzxlv7mysK9w,rec6palQ7ybRCqGZU,recWq5tNA4Gjbltki,recqN899Jn68dGCt2,recA7OT2wmRzs0RBT,recw8Gu4JdiMiHtiI,recWchHvXSUlpf0D1,recFj05Zlj8rU9YhV,recWdzCe8vS7zKyho,recvqsa5Sd4pWt5RA,receXQgRmWZSStep4,rec4fLRhwKZirFTth,rec8G8WRv0bRUkVFG,recHskvheyKxBjA7J,recgAUXaWmKgABTEk,recalY4JpagZtfsum,recBQKC7b9hGyEwH3,recs1XgzVztntibue,recWjVXxDK0lMCepc,recdaVfNFCT0p9gdl,recNRol2khAea8oMQ,rec2ybbfvlrZULcxi,recG7DMkPXEIiTwlW,recj3jPvSbHlZ45kc,rec2EeuEVS3swEvX1,recenTyfLcHRk4vzm,recYz1Xm50IfnHnah,recOXl7I8nWzFS4A5,rec5rWS2hDIFOHoaC,recOKWIpc6WaH9RiT,recbJALmJEOX1KbLf,recFnlS7pZ2q0LhfX,recj1U43CsC1mfDFQ,recS7fQeIlL3PL7xB,recpAbscrOebYqk5S,recLr8vgPe2Ir5D6d,recYirSspHQJKqGhH,rec1mMd3orgAtDkqP,recsBdPmwDkDB1lnP,recqRShJubnIJoPTY,rec7pMxr8WC7ovqSw,recB1KRWrtEcENYUw,recniHH2Bl0qK6JL1,recDcG7XiN04E05f2,recWSIGPfIUycgJoq,recaJ1Y5SxwKEL2Yx,recBD5OEpum1H9WJ3,rectiu0gVgMDdLSa3,recLnFQWWgoP0aILs,recokjjZuK87NxHYG,recBDigA1phTve8do,recauUCsAzwTAH8Lq,recunujkzPEPD3kGP,recJwofuIqcaZekVq,recQZG4174VYfQknl,recfhIVffIrxnQvWd,reck1ZPP11ogcfU8G,recVoonyDYIpDhbZv,reciqsDl6BcJtMLmX,recghIfFYi324Lv9w,recF9fjXaRy9xkMQw','2015','PBNYC',NULL,NULL,NULL,NULL),(3,'recI66nIud18Wyehv','PBNYC_2018',NULL,'2018','PBNYC','receCMr5j9Nislh6T,recqd2WCuw9V37Edu,recVQfnGFWy6pi19C,recRQV0p4xTINBsPj,recEX8Oo613kgehPq,rec5KBiZmxivJUENy,recERyzSK2yEa17EO,recOUDSsvvxTqGyW1,recdf2wSAWEgFo6Ti,rec9xxnk10OBhlAjl,rect61ig2wCIo0psi,reczpnuwZZn81IcSv,recPd05aq1p1cMqYR,recvGGgNn51RFfzsJ,recjcshYtok2v0e5i,rec3ekBCjzPPMXFWy,reczRMBqmFYro9Qap,recefj8cv008zbN3W,rec5UyOkppA4nZTzZ,recs84RoejXinu5OP,recbZKpUiE82URNiX,rec8JlZG2RSgmKQ70,recsgTjxrgE9NlnAz,recMwNvXCpG9cOvUs,recUcvLTghrfy9Byd,reclrDGVJScfzPUF2,rec8JkCPnzKsvJxkR,recjvMPYzey3foR9M,rec6CFpp0ohmlSlAR,rec0g64fFOPw65tLu,rectU6Re3af3FYV64,rectP3EQ8qxH2ZKvU,rec4ijDGxwK0xwZJh,recw7cK3iCNMBeajU',NULL,NULL,NULL),(4,'recWqHCBgPv0FjtYn','PBNYC-2017','recTivcXAvOteIUUn,rec9uLNxYv78yX0Db,rec5JvdCxgqWdbqra,recj8AVPIpTnd1tRc,recrWksEU4mxw0TtR,receGgk0qu6iWkLIc,recu9CO8nx14IBZsP,recbA3AWpgXYTfyA9,reculdMwyS87xuAhB,recnK46wwsvkl9gZL,rec1M4iNI6Mz60Yid,recKiGGSN1hZdbKLl,reciQkUhTJHF4kNWT,recUmzXA6Ng9H0ubq,recsIQTMtazTMEijS,rec0Q4YAJbAbhaeUs,recCS4Oo8Z5gc3bux,recM0LuCteqaUUPA7,recP0sUGgoZvlfrV3,recnoeFLJJqElBe47,recWe9vMOf6MFd1E5,rec2EClj2TlJOhQBu,recgA6qfUNkLjdcop,recyurT2cjrUubqSw,recGU6JAjNUdPpgGN,recTawj5iOk5JGAmJ,recVYDB7WJibxpnDh,reccmT4qzNaZj7q71,rec4NTj4hBmBhJKyV,recFS3HAKo27NaQzp,recZMzbHeO3BAghtt,recD38UbqkPwwLYyb,rec7p7Q96T4bAEAB9,rech4Z0AzVP5KI0Hg,recdw2912NR3NZ7uc,recrThIvhal4TVnWr,recfs3BZVNp48ZJBp,recbVbZoxA6jrkpfA,reczxLUrOYEIUoVja,recliwN33baPHCo3g,recEUniBIpBxrQKc1,recg9XMKH06op2GNP,reccLfvQFh5jy63Wx,reco2xNQQq0z9mRt5,rec294pPcMVo1K7VC,recy8wraWLtAyrZSX,recbL88hMxEtvRBv9,recBA96h25H7TVfZV,recWAbdzMFX1ZyYCZ,recGIpPfbRo295caX,recD2EroFhjceXYf9,rec9XEs2NSp6PSsHl,recKR2NX2KstkxjuX,recrs3PHrES1XbUY8,reckPYyGRZWjgp8cU,recI4PpkGf1J4NbcA,recLDWdMLI7SvXdXV,recDg2XcMqGI85SUA,rec0gdZiq6XEJfmMG,recIk5rbYDcp4xRMq,recooSXlchKzw7Jek,recEMKwqkhQdeKaw8,rec0Qc76IfGRvn2Zh,recRt8TA23NOrToHh,recm6rh5rtBjzFnIj,recAyC7dmxrZjT8Ui,rech0wGeD8APNM5rO,recCfFzojs1BU4idb,recE3sBdQIZzud9ev,recaARWjo26HaDiTX,recm7JnIUizydx7Ll,recMSfJTFIn9bbC2c,recJKSNEXtXkMHm1N,recyOUd7Rc9MvmWeq,receS0iW6IPJqoc3C,recdqarvwuaAlOMI4,receMtDHAnuTqdGZJ,recGtjok6z4kLEIer,rec16fNJJ8i5BQ0FK,rec6mFnPydoTq6Ghr,recWRELnrBSA7lr6f,recsbxp1qiDbWkB1R,recPBA2004m5QU3Eq,recP2G3U3M8zq20qr,receexj9RJAERFa6f,reccKMaqC8UxLo6OV,recGuBneTSPFpNMuz,rec8KAOJyOAvuxfpG,recOPuKDOmvmYMwsV,recRBFs1ovgEEXKNN,reclLP9og4PQlAU3s,reclbYaBQsjaxb5M5,rect29TmJbeEAI0eN,rec4KlzhqW2oAi88v,recowtYvy6Hblgm9F,recQLzDAE1qZpswFd,recqgdCglzJOoZiA5,recE4pWsigwUWts2O,recDOPAkLLJQd6Nxv,recoFlewd5W8Qq4kY,recxE89UOgBbYiKF3,rectdRskbULZbSW2r,recq2lTITPRbfPV0v,rechKMzb2tJ8MdVCR,recdRcbBUwZ6KPeJE,recLbXnmpoLzs3plE,recw4pNkurgD5lSlQ,rect2PaUrrLyBlp7C,recUnOBXZiyuicMoP,recVItS87syPxfoUn,reclQQAgp9WXuyp6D,recXFsk73lI6cCocW,rec9dwDPqi1Ln7UQq,rece7yh3TEhmwtKsI,rec7A2Ok7Kd148S9p,recHUUFBBrtgi40ry,recSuPqOrWl0xKDj0,rec55PM9QtYNSObKT,recu4zlQZwEiTHdjj,reczvzv2snWf6DfYV,rec4MqcYHFP8OD7Uy,recAGrvpFla8wMCMV,recxhCuxI4S4JrCkS,recNbuN3LIgfcV43v,rec4F6Jm2bO04Btri,recWFcC99LCVIV9m7,recfuTJaICFj3UazX,recABFcw5GYL9RJnr,rec0LG9W7cLAoCo6o,recZMz05a2vTSTzZZ,rechXi4RiO8DqwPM1,recdlk6Wqliw0kd41,recEQwgsJvYkcgFMR,recwYbjQeh5ENG2wN,reclQHrt3qVJz3u2Z,recRbJBKHeW8IoQuj,recJG58RDWlWLtttA,recBH5m0IOFgjkllm,recikeOYeL1NoG8Up,recvvlet95lIy2k9R,recibosOOUhaK6ryg,recU2mv0hcLUmJTC5,rec9Ns33L6dgA0M83,rec9M6coWxxmckPDP,reclGlFPLwFxV0ONA,recSeyNqXysFZHaCn,recxn3QXwN8cBAuBh,recsOHS6UZJoCwnrM,recFOxPypoEIz5lGO,rec9nDsniSFZmrwSi,recHNT3TurMkDToD3,rec2ds2m1P8PEHpFo,recG3s0cojbq0yVrQ,rec5geEl2Qas4HH8K,recegGBIQq6ir3fEF,rectOfkZNPtsEZuFo,recVfNo8AMj4O3VSM,recZ0d9cHBUsDvL2d,recXtQtUV2KFqgAW7,recllcATVSA0hYYov,recYwt2kArq1zYoUD,recm7UokFWZk4WnSw,rec3jmyudd9jVltPe,reclrBn4scQdoaZxS,recfaql6JR2fGL6XY,recTiZZxspAMJs1Fg,reclakccWAXEhLxhF,rec4Wv8OiUCvSZl6c,recvnd2lVJD6fk6F4,recDSPRL4brr2IO4k,recx48QtkHw7ZJ4Zi,recqPV76BRz6d9fgY,recWGy7Vlfz1QtsTt,recv05mf49xH7wlmv,recMcDsk2BOqMJIk6,recokbmdk32PUI9GO,recrusS3Ec6LXAZZB,recqjAkIcoFHbMcD0,recw0Yr7iQGCqkHHo,rec4YT4ZcbS7Ji3fh,recEjLAj5MWHWjvSv,rec1lIll0r0FXKUeo,recImA8PZlwlGauwn,recVzG4oZnRtWkZna,recsrKTkniTrwmWhP,recq12bCt74D7AoQa,recJgDXPWHwIQ1SMU,reccS9MAIshCOyacO,rec0gz9mC419dnBmg,reciEDlPjCVXAgN3S,recwjPRL9zUUuZKka,rec5J2HK5h3tUAlBK,rec8a0lGBbd3t7n9l,recHbKOcxBObh047l,recxoBt6PXVeJv59R,reccn6rSBN5Zko3nL,recTxNbxCQ4eQ1W80,recnQTDdOqNFrFdIv,rechGl9RIfK1FWr3W,recGN661Iog98MLkq,rec93yIm0HtNJD9qe,recE2L9EXRfwOPBdR,recnhrVmySMlUx7w2,rec8HcXB9gkUluD7L,receHnfxxiYxk4pEH,recORC8Z8KTWxEXvm,recPCzSp4qJGRNSlW,recL78KYpMkKKO0CT,recaNcU0ZLHorrXPW,recMWxJaELz11SuzF,recDUCpIM3n8ATEpq,rec6WahRGgZK8o5Ry,recdpg0nMdJBPBLhc,recb6YM3fVBl20TIh,recw5Jw1kTupeOVBf,rech96eex8Tf5wmXC,recyeUq2G7kPMYyk4,recK7D0XFhbsX09kv,rec4soXVrnS1hKloF,rec5ScbMwbLQGeeEW,rec74nQnQ86SmW5HU,recbmN8MiIjJa4LXO,rec1R1BIwSN2xoN1r,recd3Q1OdSQdPdWmN,recWRhUuTMk2i23ih,recx4I1AFTBcjoSbu,recHXSTqyuslE3hWE,rec7SniIOsOte8YUT,recVvRNmZCWPvSJXq,recqfi1t1USECwTPn,recdNqjNMnVKGA1Gm,recUiuK4SOlIVgA7V,recZUhWHneHKCMOFT,recHWiimR6TSMkYQv,recwYwP0UDIZmFxCC,recYmYDuLI9lj52Fl,rec4pJToU8f2tzvof,recIwKj52zPQsizzo,recxCIBIEkNxVVDQK,recuLorCY73f6ic4S,recwGDu5gkm14YMEa,recFhrTQmoBi9UJgI,recexpo5H9puxsTRO,reclcNeVTApdn39F5,recuiGhhieRSmPpMb,rec8B3iWx8Wz49kX9,recVAg3Hq08FuQoLB,recC5b1eYkxPnl9uU,recMfbQqVzWtbYQJm,recUsLyvwtvBWDJkg,recY9ieaNRcAcGOKW,recTOzlT9EsrJb5hZ,recpobRGItXpLC8xR,recL3dDk2ijFL3uoi,reczOj69l0MEwUzLY,recypL7xzJ0baWONL,recWS7zm8AguVJzY9,recpTvAIO8LvGI1d9,rec1t5yZCqiGlGA7O,recuQOE9ubmxgzdws,recr6o8hgrVrIFhkm,rec3hGpsJR0iIloEM,recj9pq4PrQ20EMtQ,recmoAfO4RVQwywP9,recPwDyILiGqmJUDF,reclvVzyDR7tM0t4f,rec1PiVInPBbMlOqk,recFe6I785PYzQZxL,recAEArSD0cuDb8iO,recn6Q0GzuKKmWEge,rec2h2M19nHC4hEfD,recF0yznMWhgY5qfq,rec5T8B0O4IcSnSg3,recZLT5JBM1oMNpHa,rec50pntF7wmGLPjc,recminCyb71NGSPgs,rec1tgQB88YtnV6LZ,recPBLcYxe3XrFcS0,recMoehS5mlYaYoWs,recBIKQgevVUw2FTP,recDcINH83E6JvTTC,recSlYi3cZzVXVdjM,recIZCiG27Eft4HXY,recMnfDTKNK3QWNBJ,recLCVNqtlRkui1Jz,recjwiQZ0O6WKrD9U,recNn9r2uEA3tFLjP,recCQD6r1wcxjG7Oa,recaFKQqjONJtOWm3,recXEK0NRreDgUc1Q,recXHXrpE4dobMg38,rec2J78VUUNp8Zkt9,recpK3zJGDdA6gNzb,recnQ5C0h3bJ4pYql,reccJTQhJvc0k4Qdw,recJKAfcQX5UCeLxh,recqwtgjRIpXVE7Mw,recS5J8HSbxoKQNvB,recIRMGzR88UxyRHw,recQm2x56MQhUEaHz,recy6IAkOLEwgEpeo,recosUc3TH131Au3L,recDV35y3Rj1jP5lF,recWT9Figdj3VobyZ,recrWHntF3A0Erunr,recRtxBxAt5IwtROt,recvW2w5yCncS5f4X,rec6cCDnDq3NWcXFz,rec5WrTTI0UmNcUrf,recUEMfeC1jiGcdEZ,rec3Ey97NEyBN1qlH,rec1yVwSUeSgbimBr,recMAzr35Kiuz6Vns,recUI7WdY2NO64kMP,recqYJw6s6y4p3evr,recrOuNQgRKkw6NwN,reckDMDGgERRtWFuH,recOG0sx0ykxxnw2s,recL8xnSArEYEhjxh,recWspJusGpzK7eAE,rectMmMPZdbtqvCVI,rec6COknIM1asD8je,receW8U5d9vheL7r3,recQW7QbePdXJNrHA,recyHzTCoow2tW6LM,recygGTwugYrpIRIU,recn4l6oCppYWAm1F,recVK5MMesABkm9YC,recNVhfGg9SMejMrh,recNl9GsrYEccHewY,rec1j16munhISkyss,recflYmKLnrikxU4r,recVUs78nQT0jtNL5,recrqtM0NL5DdAPmL,recAy2Gzg54VX1RfC,rec0QqWJsNtJ4c0Cc,recu5t51grAwR6BmX,recGhiHKrG9DsjpxW,rec66yFnvRkp6Xbws,recfkMoT3Kj40LQSy,receNTM1Ob0xt7qaf,rec9cwuWbVWVUuiPh,recmQvmZCeT9Lb1Od,recMLbmK7Q5tAKjHG,recnLzVJZmeUZyzvr,recjiiVvk4buzODZJ,rec6C7D6sfy5GUsGA,rec9VAA6j6jCfLQe2,recBpinqAqkbNEtsG,rechWTteeyRCQTNXt,rechoxpQBSyTVycYt,recDBinMOXU3fQgnl,recIOKEAafnMr0zL4,rec7ncXsZxPOGADkt,recaNW2KazZ2QoWNK,rec16S21M8Lu3zte3,recihkXnydIdsDpF6,recsljPfoEXJkxNQX,recbDsTzUIZaVUUmd,recZzbc68DJMHvmYm,reczaD8lQDHRD9iYq,reci0FCLlZLt3Q2vV,recyeWj5M2TkmfpXi,recJxOJkUZMCLPdeh,recUVZNSp8NSSmtQb,recOUn6iUGze6NJLJ,recXJqWEjUpgTksc8,rec715nJ2Akv5CtPY,recum0pkzAAEp0RUb,recrZuoLyGUTNHc6H,recNo0UJh4zEAdoLP,recMbQK7MwgrBvTx5,reccbKm818doGKkZ0,recGOsADMNTEX4wzd,rece5iKDqfsHhtuoQ,receXz5WvGZ2j3XRI,rec8ENtxOIjC66N53,recB5TeGN5IXX5imr,reciU4ip78vmgjwOX,recPXLnfwDPloAR6O,recspxxGiGGJSTu9t,rec3JgL4nqeRWrKo4,recpHd2PpiK0jiYD3,recjeewCy7HjAy253,rec2auUTKrxuAOogf,recFhO9o3aElfAzwz,recxlE0dYElTNFjxS,reca6SPDLu6zw3CVn,recv7dMUIh6EwDCA5,receeae0FfdfJa4Pv,recMwO1WkQ5UiswjP,rec2iYU0n8KcjYaL6,recx0J4w65VKaQ8FF,recJBr7a7pE3BiCIZ,rec4PD9A0wi5a1JB0,recLS9FsmmR7wfVRg,reckKZevdZWjZ6pdS,recwONybnRHdjwaiJ,recFFaX5BurbSo05j,recxhkMm3SHwZ1BTT,recTeERo4QH0QnuAz,recKH9HG8TWehcEJI,rec4RGX2gIeWZK2BH,recLwGCy4yqfxmUb1,recdrXQfQ5GvgklF4,rec03agE35sNavg8Q,rechfERoAwM10MlRJ,reccqnpFAvi36bFEu,recZP3HnHc7ULYbHN,rec7QrR1DcsozVcSp,recJb223yqIiRhNdg,recG5lmkUJZoUO0f4,recp7OswlZ7bPX5gP,recMRTRGTHNvzrgSn,recPwTt7sKNn4ZjUI,recpajZRo6XxLZ26S,recVBba3daP8jDWeC,recamwSlRuZ02LGRl,rec6STjvQeuKPtyPq,recpg35cVz3OPueXS,recZdBdvFryo8VaLM,reclkbmd7G3PnHnzM,recR2wd8Y0ZvhYKko,recjRP7GkN2K85uTi,reckbZnncKAic4H9s,rec4PicEOsTpnKWYX,recMUiOQt0QabkI4W,rec65ThWifdWzGgz1,rechBVoieFIAIVFFu,rec1TxLHxyNtdfOcl,recI4D5MupOosJxKy,recjFfJilwg992khj,reckpliA3SFsSGY0J,recKXCDmYVJ6EBME5,recAWwAjSkb8TZXoH,recuq1sx3ZFq3giMg,recTEHGE0IXE3isvB,rec8edGXSUv7299j9,recUs7k2hDirK6WlW,rectapN34pjfEbIka,recPgCZo7vTALxuJy,recartSVlPX832nRP,rec9gi2zwa5a7VcJO,recldAjP3rGwpEhvF,recoFdgXAyJJeF2u8,recA74U4LVEeFhJGy,recY5zeQhTvNOFacT,recUSZnGfu5ZTcV2b,recv4kgdPwNAB1rvT,recv1so9H8Z1iLyXm,recWhqc3IMyaZ4tXr,recOe8RUidPvcrpWm,rechTPF2qiWRNb50i,recDYbwcBIEkOLIMM,rec1pS7vM5HzoiYvD,recaUyU6PcqshzEKe,recc2HBi2vUUKtxLG,recJrySAGmZl07eFj,recLyrNdB2zZv85qM,rec4ooxh2Vljv44oq,recnLZ2JlnG8Rsm1l,recF0UslMLrZUhCFi,recCNIqTzvFsLBwsa,recJqakFJOKpxHX8W,recPqtbmrqluucZne,recYVUchYtplZybPC,rec5bTuQiGTf6J6jf,recDlFJ4QYwePR54V,recKpWAHUNlL55unS,recd0SQ7A6r5Qgwh4,recfnhDDNS6MhpTnL,rec0g4iJqj4ST0pim,recSJX2FbT37MspGL,rec9Dlq7LFvtJjWgt,rec9sdPuebAuapF18,recn6GvqMSqbSsREM,recYJdBmNYmgQOpdG,recjihKWvxkn6vofu,recQEgYlS0mvkYIwN,rec1HCqr7d9DGHCsA,recS1uIu4RWba9Ami,rec7JYVXDDpOHrOSI,recVM6iRDqpDq4nSD,recvt25AyNBQFaZrr,reclFLYEDLxA9MgpA,recHVG8majvD8ymGy,recuVYeNMk6UjW4pX,reckpOE0EAk0vTX0T,recUUlbrZS9LzrWHR,recFHPsvNsIZUGdsv,recMeymSp7uwyD6S6,rechZXq6CgeihN6Xl,rec4xdzl3r8hr7CiW,recCFR3DKbN2AoLO9,recR9V3mEhg1d0Fl1,rec0s1ZSjBYmCgTDI,recbd3CZeBxae1gqo,rectmklJKec146qv9,recYviNONUndp61gU,rec2ie1KDuePDE2Xb,recilMdOsmSg36eYa,recVZY0tWqIDgez5b,recLExSKgc3kUFw3R,recBCzI3H2iqdxPeT,reczuFAjR2e0Es2KL,rect0Ic09BNLaqnUB,recPYxgnGB4pyATGd','2017','PBNYC','receCMr5j9Nislh6T,recqd2WCuw9V37Edu,recVQfnGFWy6pi19C,recRQV0p4xTINBsPj,recEX8Oo613kgehPq,rec5KBiZmxivJUENy,recERyzSK2yEa17EO,recOUDSsvvxTqGyW1,recdf2wSAWEgFo6Ti,rec9xxnk10OBhlAjl,rect61ig2wCIo0psi,reczpnuwZZn81IcSv,recPd05aq1p1cMqYR,recvGGgNn51RFfzsJ,recjcshYtok2v0e5i,rec3ekBCjzPPMXFWy,reczRMBqmFYro9Qap,recefj8cv008zbN3W,rec5UyOkppA4nZTzZ,recs84RoejXinu5OP,recbZKpUiE82URNiX,rec8JlZG2RSgmKQ70,recsgTjxrgE9NlnAz,recMwNvXCpG9cOvUs,recUcvLTghrfy9Byd,reclrDGVJScfzPUF2,rec8JkCPnzKsvJxkR,recjvMPYzey3foR9M,rec6CFpp0ohmlSlAR,rec0g64fFOPw65tLu,rectU6Re3af3FYV64,rectP3EQ8qxH2ZKvU,rec4ijDGxwK0xwZJh,recw7cK3iCNMBeajU',NULL,NULL,NULL),(5,'recakALaxxPXuqTL4','Other_Placeholder',NULL,NULL,NULL,NULL,NULL,'Other_MyCityIsNotHere',NULL),(6,'recdqKhJwD73Wa8BN','PBNYC-2013','recZrqqMp0nPeYI27,recpWJQEmJr5UFK3E,recY0ysm6a1tgyWAh,recssge1XAOXEWA9s,recWIHsgSSfREyTAP,reciNoXUEWxjYogO8,recDV2CfP0FZuKmuE,recaVR7HWWBEjmNDJ,recpSzQAY36yAlsY1,recbd1Hf4MJtxQRdE,recDTrLVxK268ji7J,recfg7awrxjcjfXin,recOH8uOoEe5R0vpA,recz6VfjfEm8KoltZ,rec9hH3vSAlZNdslG,rectcS6ptJbVZ6LkI,recQPQUun4D7VXhj6,recbpTTZgXu2DSD6a,recaKpToiAOSyR1s6,rec1iPP2yfglZKKki,recYSdAp0LtKCPCHX,recw5bTbFrwTuHjoA,recatK3qBTHQkV71v,rec5HE8oUvMOVc6Im,reczfWHPaxS2Q17C4,recANdKKxEzpo9yNu,recKBXYCfmoOHbbM8,recCAy467TV0gkD2r,recofQZRBa402kGS6,rec94jfmxdZTiBGSw,rec4qIfWImNRR8wTk,recbgbRTjFxAq5T1C,reclvuPZ5gtuWfaIO,rec96SmF9MUA79vqZ,recCICCtq9bhcOy36,recn5VKvbnyfrisxk,rec1wPymoPPJ9vij4,recU9aWKpTITWHjca,reckJsolcDiDY0V3Z,recerg4fd9WA4bTfo,rechBXdNcfXSq02o4,recO7lupAWudLx6LS,receMSPllVMCTX895,recgUQVJiG6vILNty,reca6E1YRNxjcbBeA,recVy6sOyQd9dvSFZ,recz5YaEXxUig5Z3R,recNMc2od5jUt3jqz,recVr7TYLswQAXU4E,recdQMrkr7VNxfAIO,recJpVytKflxKJRpm,recjJbVnodHlBuRvx,recZ95RwBEvdcSnQG,recmHNV1krCLebaUz,recsDuV0r966ADjSm,rec62W00gZCqTbwKz,recTTcWnzMeZ1wtie,recYbXtJ5JqnDcXsW,recSPAN0JNB5pemsl,recOanQRdVXVoa4BY,recJqirrQ9zjWWx5l,reczhuBs45YQW4cor,reczpFdoNGbD5EEmS,recSRx7LYROkpXI1E,recDMH1pxyBk35z8y,recKI9EUgTBsIS4JX,recliaZIFkja7W24s,recqC9lLygrxADl3I,rec0wrdMvBbaRwrHZ,rec6gAjzecV8GVbre,recP2lAuOs6uiN2c4,rec7mhBettJV8ut17,recW4IobbfAwiyNqK,recd3me0unORevNL8,recuxRhdhKjqjBSpm,recEUqNbfskDweElf,reclaC4NYdLxRj60l,rec8T6pLJsaS01XoA,recaDnxmqj29v9sMy,recJqHltm1Jmuzikx,recXsaQNu9K8OfdZt,recUixarGL3xZELIQ,recJzmrIOYCm322dy,recKTKovLxoS2wjPN,recjSofKTNoeSwog8,recOkJqhkVmh75WZo,recAnqcmwUVL3tZQJ,recYIG5viadxDndmp,recQbFtd570Ot5nwK,recsRPu6GfG5jyeVq,rec8grXJQimz9aSbg,recI4Z0CjHLPBF04A,rectfaqJJSks2atMf,rec1GQg3nWgMdlk3d,rec5jCgfhGLtz1XMz,rec6cOBokfPTXpB31,recT9mzdSafo3Hf6L,recYeFwQdPCiesIYf,recVDGqz8YNep9tmG,recYUVd6U4DMsHhCj,recX93JFAy5KlZjis,recYaWWaBAljQwspg,recKEZWQtkTb5AI6F,recD6DiyKzLK9trPh,recxT0P12G6pBBWcY,recFXGaeD0mrr2q3M,recxl5Y3wvmWWBIWd,receLxtIbTmJbIsNh,rec9swJcxnmp1281t,rect7NSDuYEHNxHJc,recmybRBsY3zUIift,recVpwBg3uMx17Wfc,recYAWQXDOFlIXRC6,recIBDmYgRmbrToFL,rec6OR4QntZmlSVw1,recn4V5my5bZeFZQQ,recn98bprt4bKk2Wn,recZHlLIXp4gvj8Hs,recpTtqeMOU65QPzT,recwu1RbAKbUdrTPn,recdZ72rbCziQwye1,recvE42FUkFy2gG8k,rec4hxCKLNbgcFWZA,recX3w0GngUOfymor,rec2s9I2Kassj3TYX,recetSuiSIX8uIZVA,recH9hxGjfKwLiJ3d,reccWMD0GBFaToW5L,rec6wVy7BgWT7aytI,reciOIRPzYn9DbbKT,rec6YVWOE4dGoxKyp,recsTGw7zUpxpilkd,rec3RtVYkH0pSdqU7,recj463vzCABXeVBX,rec8FnVK7XRaCsKsK,recPqlUOYXeWKhqGb,recZaz9PSk8W7sDtb,recWunAapPe294lPy,recnDt0OULog7u7w5,rec9dF0wVNCWqXUqg,recpCcjIiLBLNbZ98,recgZiRLLNkMQWqLD,recdBJkzrg5VzwNrN,recMvDxmzLmTdQtgG,recx5cD5VqK3XfNIv,reciS013k3tg6JIik,recIF3Az5PGI00Pxp,recr7WMwxMrndVQYv,recexCt5eEhjAwecN,rec7xh3DTm9qldU11,recuy6YPGTw4pVqma,recw7cwuglVfs6Pzi,recRsMzy8rWLiLYsl,recqw7uCpyFkmDwRm,recckeB2QeuXNK3rq,recj0DyQKMzn0Szmc,recfPOAJ5wsvD2ay5,rec0EW81wWu27BUsT,recGtcuSgWte70ppc,recDS7iudYsPmtwHV,recpKTLi5PoyjIlNC,recmn9XlMVrTDFMuV,recwYCxqlMzWIXdlE,rec0vjaJQNmN5dP7k,recENPbD1cjNF7yI4,recDRcIuKxSuIGMq2,rec4wK4c43xUW6jb8,recAUmFSZHQ4pmwL6,recMzleBwsT7dDAIK,recN7na8rlU8Om6iq,recDLISDltSeFps6R,recmtWhDMvoRiWsVO,recZrCm7UFXdpPvEn,recw2ciziDQZcpisY,recNTkufLvfGYSoyL,recI9exWITdjSO67T,rec19MQTU1yHjE7VV,recSTZ02Yepnpu3K6,reccWpaLTlnhhioa8,recgfMVDuyuo67BL9,recLyRQSlNNTc1L3H,rechTJBXM9jFuZwOG,recVjndseWfHJKh7q','2013','PBNYC',NULL,NULL,NULL,NULL),(7,'recn6Lc6meN5ZaEA5','PBNYC-2016','recGbY3TcDI7Uj2Gm,recWsVUIGvOl3oT6L,recW0vZmCMhm15Nkg,rechvEJ40oFDphrUd,recp01rjglTdKeQfv,recs8TyaEeIKBGOuu,recwY4r5hjf3IEw0R,recuxZ6cfKTbgXE4T,recWf19BUNHClXLjl,rec0AcnqoNteHcLYr,recfSUFofWq1stoLO,recXkLRazeTPvcEeK,recZRvYXiJcEjJNNZ,recI7shfxXDEkyQzE,recZGYZfjnzMS0MAt,recrxP1zOD6NaMpM5,rec5W7n8F3hksoYyZ,recAPY9JJMD1FoIYG,recsP5VfiWMBs9ZRw,recvdqYac2xxQbItH,recfNLhyp9kxSvDrW,recGBiygEwcIUE3e8,recEu8kdumG2PPpmo,recFrDUWvXbeGLEwq,rec1woQ5weIt2ou5L,recVU3kOHUS902ZEe,recz7ceGQzK6kUjDo,recp3DJtyHMPxLrsl,recH8OHj2Zj6Nxkq0,recEcwCGWXkfDmXVS,recFHmqTwEIgxC7rl,recVqK8ORJ4J5EOOU,rec03WGpqNrxmWkVq,rec7tgwwNch7zkx9q,recNBqL77liScxbaA,rech3obNVpn1hWa10,recdhkkXbNWUkpn5T,recExatW5TGT5Lls6,recCZrP8jE4qxsn70,recqLMypuBUBegNgJ,receuMpCQ1NmIcKsf,rec7QSc89sW1V3Llh,recDjxNLBjvC4O5XQ,recSH4A9A1LycLBzl,recMio0CMU57SgsQd,recTStuEOR2vXER2v,recGTIszFuMFVb1ZO,recTe841tsBk4ta0v,recvhmRM7B6RxAasi,recQWsU1lsLI5Kvxf,recHAT0aiAm2K5Zam,recTbEZDwNQ43BNVO,recsmuUG9tVeysvBw,recRxboovvQ41LHDe,recwWWgVsLefj9ifS,recho27gix1GvTs9i,recc64jhmQVbUN2Ey,recl4BUtwVlyxGhgu,recuZzCJWSYeBR91L,recB9LzPAmhLFuz7C,recrtf6I8oxFjLTpP,recat6AGqZ2TJDkiu,recmzydxXyHd3iEq0,recA60x7cNrAxP9bb,recyFGSys2jeyWu2b,recTHKA2pluEjUUV1,recEVIaRiM0BZUISi,rechz3GNftEA1CQi2,recyaWUbHlPL4fQlj,recaR9rAYliUsjVRE,recO3c5744wcNuBf4,recFYmRUVxVnGuUZv,reckDzh8YbZiC23mF,rec2TiCOP17iRb623,recxIrFYIZSGaveBJ,rec0nYpvIWrH2duzS,recPAwlHCnwim0aMJ,recxX6DIxylEmxa8w,recGnFQfagBxrbFNU,reciuW5tdu9PLDLsU,recHh36DBZBg5HEdK,recVDRDMO7L1lR3tx,recPiJfaMJ1i7l7qo,rechenZ85SN4DN986,reclPAS93r8Uy4QTl,recGuhKU6PL5ou2QP,recAg5P0iREP5et3B,recWQtPTwjGYPsOy2,rec0PamjUZOU7eM7R,recBm9dW4o36Hq8OO,recBj9K5UDketOs3c,recqSdjw5H2ih59tK,recHiuHY1SLmdBp5K,recEdYoOlbC06NsrH,recZZRvrP6SH3uVDh,recPlSQ8VI1Fbo3mH,recsAs1dV9IBmW5fF,rectBbM3jISYA3KEv,recMOMYmaJUnTVtIa,recfUYRHojjBQ6yez,rec92JeYtnijJ2gsF,recXeTMVg8bpwDczr,rec2Q5L6vXvM64kcG,recesx36Pi5a0H7DV,recqgHdxDN8Z2oEkN,recz6Ps1PzF2NGPol,recpIgNmTNBaGlZa2,recXEY9RZGBh4xDGG,rec3u5GlDPBLmItAk,recVR0HlNlbpRSc9R,recepU5ez9C9Aiyl0,recahBPQPfANKrgEs,recSCtOE6u2n2VWqz,rec7wHY9ELWU2cF2f,recIKeJA4QVX9KrLK,recIvftMwBYRx1oES,rec3ympKari3UwiTy,recivFLoKn6wmDEYt,recWoDAL5Jsxlp6KT,recRULxihrrfJz7Pr,recgVY5ejoMWopfC0,recWkjWw2ChFGBZXI,recl6TVoFA8tWQEdW,recFo0uEquFOccf5l,rec38eldxzfrGRLwu,recmMkqSao4vnqe9r,recQCl9Akx5X6quBl,recPOqQYnwrFdzolM,rectQ5OgyZpKLiSEl,recJKx1l9chtRvrSd,recpfm5YYEfHVrwiS,recK9km6lCjhm6A2v,recOm78gYM7nGbWh5,recgRFjyrj5yrIIXq,recjBWEBqG73xEwjM,recRtvYTJ3aq4N1f9,recM2gF2pPTTdf6Im,recqbpTNMxO6YLzsr,recEbLUtNO6JKVn2T,reclLmtqzsJyAy7zb,recdAdenrwTUM0SOU,recLugoxc0sNqH2eV,rec99KeOigIG6TYat,recYHYqOwAcV2s6nI,recwdEwbZPIHIOwPZ,recB6dKjPKH87V9Sa,recnhDrMpTzv3ZvZF,recDckZgiFMECShyz,recOgZnXoGyRUfGT4,rec1n3JUniin5rmAw,rectXCwKl2KgzlmTo,recNsX67rzlOk6Fck,rec9Os04y2Yw209sl,recH8ciZDpMoPA5fr,recXN8aIRCajVnSb2,recfhpmxuA1H5A6zr,recPgLfypF9RpKPe1,recYaaF1MIXU2Ids3,rec64gOsiK9HkmQEe,recxlGRjojAe5sMeV,recqZirvk1ZLS81gO,recZvslESTiVEDLhF,recEoINksPdPbVVza,recwXSvX9W1E1oI1N,recxyfL1H8YpOqrnk,recIy3INDKDO0Q4S9,reclXZqhfYTTvdNBL,recMM51WeXupUg2DP,recZZFCDTqTDhOM3Z,recz7Lsix4PjZJcr8,recpxB5FVTtsfWhq8,rec4sQbbm07nyYkO2,recwbPeEwmQSWXt5g,reccSIchWH1wb8QmS,rec04KDbM9xMzwty9,recqf3qOEEkT9cNGV,rect5ROaljkPVerQa,recuCOXW1Z3BVIxlB,rec87hs3v13x9ZRPc,rechWwjkRCGgZE3LX,recIvpnib68vmsXLV,recdxWhJYrBp9lmZy,recSPGZGF7BSoWPOu,rec12gR1K9xUSObhy,recLeA5XHgOQW8MeT,recZNAHIGivPxTEoX,rec0YCQfOS8bK2Mc0,recJLwVPknRPdJYxk,recKm1dxqHEHeY4QQ,recmqHGRhehLXvz0O,rec1gkEsRJ5DYuYhe,recndc7eBeg1HY9RN,recbc3Xjo13nw1n8N,rec0qMHAQUkEKA3Sm,rec5Cs0YD9ccAjuIS,recCBFyhB7M2vF6lp,rec4M5JeYB70HqRAP,recIlz3kSvqs4FsIB,recnMRvuBpRNJZH6o,recXcLobEWTutTvDB,rece6imO2PeVuezJ9,rect2Mgbh3K0mFrgU,recFJVKCa38moAiC5,recjbz0kUzBy0gFoo,rechuA2MnVzVHqLtZ,recwZ2hWh49Qfgy69,recgSCRoEZhOQ3PqA,recvReO2VOURE1mod,rechatbYQ61RIkewN,recmcCcM9SL42OE4x,recjGCHJlChxRtkqs,recsGVcpyDgyDM4Xl,recytqA7Qrze7KrSy,rec5rZyoVlfYDNaVs,recePyPM5kwKKCPOI,recqV8eTM7JYTetM7,rec8NDPeYOl048pHf,rectRuxmu3KoEDUMw,rece5hYZ7FasRgG6z,reccOBKXM6ktgzrPb,recEwNJoGd5WtgUsv,recnHXOn7PquBgCTQ,recJIDxrzVe4YFtja,recDxqfD7AC2iEJ3X,rec1z2ZObnLPq6ce3,rec6Xn50IPDmFp76m,recZyniuPPVSDn688,recCOCpWickKoN9H7,rec018x0B5IZht1JQ,recsMCvaWLU2LDCMF,rect44TDBiIKyh6Jg,rec2a9oiZpJIcvnPa,recWSi3gWIQDa76fY,recTdm7oEToP7kNDz,rectA29Ay44wdzihE,reckbTOyWW3WMJHof,recUym6Pq4BOfGrDN,recrxftSSnwHSvpLS,recdzaYd6Wtr9i7Ua,recsXWFQAVk9NbLg4,rec0y18VZshpQUUKB,recWh9oUuIrdZ5XBI,recKp0kIfmFHZUUBW,recLmgPpLSj2jVI3C,rect8tloFiaK2qwK4,recDv16vIXze34e1Y,recnpzMiNcYvXicj4,recfKTQgmrpe3tx6Q,rec5cZRuExGfLE6Zz,rec19CkZszmRpXjrz,recWZMlbDWykgGNuZ,recy5RWlIyTKkEbKi,recwM19wNUyhJOOme,recjxa2eL6xUljxHY,recNSN9BVROVfz6NN,rectPoTMl5K7VNUaf,recbUeSxkeK6YM61V,recmMCaxgpJSE2eMq,recJZWh78ILCG10ib,recsuKN318xm0r1yH,recePHqX9an0W6Vw8,recna4RcVRKdRevaL,recrR9Yyh2G0knM1K,recYDfU9Mvyj2sqCH,recQYHX3UG6WyP204,reccj7Pj8J0ikGdwn,rectEHnuQbdIVdVrU,recUeBybI5Dm77FUO,recFKgnaE38iMJsLp,reclvZBH0cKBNGZ42,recnNLrVJOMJxHz15,recBEXNBptaRKuBz6,rec1JHQybrKuoSSe6,rec7NG8znXqBdmAra,recw8ImyObT9DV1IG,recKqM2ZqCt505qex,recvkVD2Xb7NpHl3M,recrJGi25RPKyXXK9,rec8MR3RBf0JVmndK,recRsGftzLWbpOpRx,rec3x5XAmRgfhuLNe,recFRPOA6NH7HfX51,recHc0Lgv1g556OKZ,recif0itnPFWu99o4,recpRgiF61QR0cLlh,recYw3ZGFbWWh5Wvj,recb0SZ3X2TxWd1Ii,recSJPKwRjWj11ZSU,recuvHJPRx49H8QNo,recMskwL0pKFbGFwO,recOK5cUkzXg8sI91,recrZItWRZXKvrRwW,recBBoqtzfI4MaDh4,recvt09y6egJnFr9s,rec9UOfaFNe4uKrvb,rec4xTMUT1KYFQ4KQ,recrhhzuli2ebw6ws,rec3OfRw15E2DgzeQ,recSQrvjfTuAmaJ3K,recXlH4Ti4kmASuoQ,recy94gNt0l1YRmi2,recu0o5h1sRI4cDjV,recBz8KBEQwXYMenJ,recuFDAAyUQhxRBas,recHfWGTXEbtNVhkV,recbAiNWBDoc0cHFI,recdSOFBaJfOROMIP,rech21K6AknYyPxcD,rec4Uxz9tPhXq9cZA,rec9KzUhNm2eCla01,rec06GuuY9kZQl6jB,reclnA5Jv22seALVV,reclwmB5GhghYTcYQ,reclH76qrWxzgIiXZ,rec19o7HQWAQWgi8a,recSqLzrNcO6oXg2K,rec3zKFnm27zbyBEu,recJAUEdagFmTcysX,recXniy5XzbBVzkOL,recRVf5cyTbJN4HbT,recvVXJN0vNLPeidA,recrpQJFBX11UQhIO,recNnQLUbzG81grXK,rectJCsqYSrEWRmAH,recehcnduZHXa6ziz,rec1aKn9OZMu4k1VE,rec0mUK5CXiGbeQE0,rec4dg091SiOYMdt5,recSAINWtujZDr92D,recQfqyUKA8w29gUm,recLz8cCCyuAZKpfc,reccW8AyYXmN58Ci0,rece8NnecKYrxLtr3,recK0qUmovywB5RzX,recuRK1ORpiM9rHPY,rec43GB7iP1UpWWls,rec05gbLQTePRX2DF,rec2Ux7NTFlSt7M2J,recesdOiTg9qUCILC,recwjQEpanCaHGOnm,recYUvJ7Q1RHzERYi,reck4ObFmQMHJrdmD,reci3HQVAE0WZHOWN,recL38CWDNfjnSDWn,recnDr5mRl9TChM4a,recUhRSzzGtmaCz13,rec4rryuLiLe5xfIs,rec3s8a4rpHgAk1Ie,rech3NDqD2XjMT72I,recHcM4eNyQGzrzrK,recuXq3t47r1uc99y,reccGu3BA1xCZtltC,rec0SSenco8sdww2N,reclnFW32u9kYdKlB,recTFqm8bxakYwCqJ,recc7UeA0Z0Y4xL7l,recmWgcAqjgnuMtAC,recrZf8J3KekbM4cp,recGLTmwa5CCsC9Fd,recmSDbOxwVmWdZDm,recYa2wesBf6gMxpg,rec5pXQB7azlTp36w,recn55DxuF4bdJeXw,recBV2nvBOHU8zUke,recAcECGElz8xskqb,rec15Td2SE8e5jOf7,rec9iYAPyZPcDX319,recnyotplLFxLmaZo,recfpiVngUpPDPaBF,recp5qUfbSnmqhjde,recZn697OEL5BEdh7,recE5WovMiFeBbmTQ,recIK33Nd7md5M97c,reczqa6wPTHAhpeCy,recx0wQup8m7MNJ0e,recgDbBFcVrPA8V6n,reckrMcQMHSrZNeNq,recYDoFgZlKmurOvq,recyg9dFMm6VCcowH,recNAXZ2gCvi3rWq7,recTzAEgBV61AQR3X,recJTftCB6RkI9Tia,receSV4i9IHx9zZ3H,recnjUUQmX8IN9yAp,recqJtd1fehlmsyWG,recnURFZDpLanOgzo,recsaW7X5qLFJQx1b,reczVDkvDtaqEm9zi,rectjXvNgP7wyXOO8,recnjw4qP6FKNopam,recLRHo2ldX5jPks7,recUJWZjCOdzmX3qC,recFnaNPDUXS5OdxG,recOKv8JY8y3UpvAc,recYDMrzAbYLwtond,rectQg4RtdBHP70Px,recb6sraqKCI3Gwm7,recVXmKJn4LX7BSlN,recCQhMLhwZZrmNbJ,recw9DBsv8OzwjDHt,recaMN4svnzam5UVA,recfPcWL66qU3dtv8,rec6P1nzH4Rwa9iK5,recmzUsjZd90iII5m,reczn7ZWwcEZpP8IR,recG3FDlvB0rib5Kn,recLjsIQI9a8vlpZl,recHOR1kpqKqiegUw,recaoVvqJhAmDWFSp,recTiYAlq4iL867vi,rec9mbVc48HZyI5zl,recNOoQE9wwMRMYsK,rec7GFmesgaHwjlZR,reckuz1AARhpdleso,recg7gj38n055dcW6,recVd3IWyPf8hP7mE,recDj7oNP128MpHyQ,rec4zDegZQEXGR64w,recqH5VwKGgj2McJx,recdFbOCpAmcuJo21,recoVEAqzGQ6xTJGh,rec8E1pVTTbx5VsQy,recu2jpdNJ0caiW83,rec8LWtMj9gNHtM0q,reczR2aQjTXfb8Daz,recja0nXblR9I08WC,recnbyFDu58aqgBpB,reccoXlSJMrjgdWnc,recceEPzMgCoBcHDt,rec3XoCX8R6T855vV,recR4xLOelucakNZT,recixWbxzeHMzZLIb,recCwa1foUIci4cUO,recaHYw7r0rFt4lPN,recGz0OqAzAMFekBv,reczr0R1T94sC6I4f,recq6iqkOkgLfIZcB,recAQsFJcfb1Dbi7m,recEHOgs74RiTwB0X,recgiDXmqZdJwCsqd,recv4GYFKaHrNVRI8,recQqJm1H0rYGInhT,recLPqcDRBdPZok95,rec8nNRXke49EQ7oA,recPegYY6ydgAeSXI,rec3anYaxRLj00mBH,reczIrrfyDAldwjIh,recDApkficE3GolnD,recgZKv9OzpSCVaE2,recjKOu6ZI8GNaNYh,recMXHfRDtuG8P9AB,recqCh9Qe5u4QsVUX,recpDGs3KW4DArk2e,reccUNnMIHP02fHHs,recz0NJ9fHiIeEYRK,recLEUS79QvhBszgp,recppIaFQA6v2z2vp,rec4Nj0Jipgq8L1RY,rec58nOyYdbFrxstj,recrgpuugMK9kopvR,recs50w1F5TLyXn1Z,recuzjS1Zl5tpec06,rec5EVIgpcEGOyuVV,recBSBhsSP8maVTgF,recPGu5iz4o2HKJBf,recptUMlbYYdMIiAt,recVfwPOyRrtcG2ZG,rec75PVRTE1B3ZO4Y,recdm5mp06fVX3oxz,recjiYrsfv8walymS,recOhMOc1SsfUEWpB,recSDteu5J3N3dHLm,rec4ZwwI83NmNxqPq,recxbWVVOcn4yHyLi,recPzsNZ0xt9mw0k1,recfq2fHFYRXVNrwS,recAgHqX9BzQqNilC,recXtPc8X9AxEyT7d','2016','PBNYC','receCMr5j9Nislh6T',NULL,NULL,NULL),(8,'reczD0uHg9z3QIfzY','PBNYC-2014','rec38SUCTFdGvCXBC,recNKc8eo9fa7o5Hn,recdE5SDwzCKflYFL,recJdXTIAT7uB3AOP,recYFpRZHWlJkDUB4,recGiFFl1MsFtBnhZ,recEqpd9Vjl1RrRgb,rec4u6wwko6tYVQUi,rec57OcOIc0zweISA,recQsUGgq2a5bNxAe,recQTBuSRxzJKDTVr,recHGorcOqeNd0kmP,recWVDoMjbzkq3250,recnz1qQcyv8jYYXR,rec7vRJpxqUeT4ecG,recWRKoDvoX4KGssA,reclMr7LlpGSf7fyX,recjWWXjB58dq9QGg,recdG9YhMBYrQ393C,recVMHKnkYlweToy5,recJNqHOyc22QDTRF,recttvxRfbPXqfcYi,recxNDBhFuMiIMVny,recAw6NcaIeVEyOTN,reckP7QVwF5Er50rv,rec1lhEMahB4RlQQE,recmdcdv31V2TVXGe,recGABS6rn9OZ2Tm8,recusiFGkptc54XNR,recEyV4d01vg3Tbpo,reccj0fLXsQtNMGDn,reca37mQo7rx6UMxf,recH3Ay4u6AAKYdLW,rec3Dw019b6AtAtRp,recYpSNlce6OhDEOs,recjClEzXa6i7nmvv,recmMQxixefhe42rr,recimTtys58DNoqge,recAYjLvrNII2fm9W,recMpQMWKHR1HkgOt,reck2EZ07Cr9l7jGm,rec8Kv4IW43gLJjKq,recD52A5FVpUz0ngA,recelW6rzzwHhzqOx,recMpBdRZMIhSqNW0,recpjdaLdlTDhjhVY,recoKF2tWvElMUDPQ,recSM7pCzYditLj0M,recgctdjqT3HM9NPs,recxdbNjp6QmAQwhg,rec2F8WptvV1y2fXE,recZBA1jHc4eIqdua,recOmEDo5hm57hPEa,rec0n4A0azvQCk5Yf,recKcpPK3VwpmR90w,rectl1zQJozXSjM29,recJdULLbcuwFzROH,reccvF2dReCpQSivY,recXJFCYLGVBObgVZ,recKIiiXVcv8svDbw,recBMLgvsS3ArADcO,reckpAt6wBovgiOLu,recH7xezyZLklEMea,recE9dJwcZzqZuntk,recvenQPZ2KRhzmMc,recm27aXlWVkyRc2A,recJ4HXfe3KBE6map,rec2R01SVVPv3QTYg,recorQbOrZtznraRw,recNbVnJQSlBcIWpG,reclE9RzBBl3JaKIG,recrPNHIDFwGJ6foS,recwC1ECQGQ4b83dO,recHaWKA8MAhwEoxR,recqo30pNtdi2WszL,recpu0JVtIs6XgpMO,reczoTdqywXHxMubG,recKzCxuDhQ92ECyI,recYEgfMJGT0YE0XY,recBXiI3MbxjzEwTP,rectcHPXJgXWoNY2b,recDIxdXlf1e47duu,rec17dSoei8eYSS9r,recmDR5cC9NGONZHa,recUGEGcJtd72mfXL,recXDZTRbquV0MPrw,recgKfttSTDkYLMD9,recpo4Iyfgdep9Ke3,reck9uGYnAB9u2zui,recv9SRehGgLl7qNg,reczqgsHcyt4y6cTL,recunA3lclYLIVMFK,reclUpt6CyKKr80B2,recWeVJIGYyspDbuZ,recHDk1ekiJ4jv0uy,rec0i4cOIP53YS9fG,recvSEvDabZ2JniDt,recl8L7aryHThh6a8,recLJj9TJpImibb4r,recbIzZGzUwQawbP1,rec3cs0Ltl6o4ViMk,rec3SJrskvUZryqe3,rech6Se9FGFZ3PRww,recvdMPW5PIncKyKw,rec0O2aMRnEc2z5N7,recHITsNQ8S2cOOk9,rec9ZAMaz4XkyOVNP,rechF6xqGVhEBw9Vp,rec8zh4NhS0S43sYn,recDa8k5Aol474Toq,recF4SYscUCHcgvG9,receckgx6BgUiAPXo,rec9MAuKPVkSeKwxv,reccbuc5DpApDfFGY,reciPc9I8W6wNeDTu,rec1Q2jyh0qZcbaOL,recWhP9FGYL2asC8Z,recbDYxV86iyO1Rlm,recAk8WVSU6nGv2NE,rec1NEm8BpLtdVZMc,recwgqujDJ7roCgzN,rec1CXFjySk7ifrZM,rec6gmFiQB9zO64VN,recjCGoaks2PcWVDL,recc55mAYmfRptJHq,recwSWcOXcwK44l3X,recTo3UUHJKe69MDD,recqjXK7Yel6RuJqL,recvbZgycMQ55tZbF,rec4DEka8RWR8a8Rl,recVsigeGOfGPEnen,recRbR6ZsB0AhvjK5,recOqN2qDMd7zbvs8,recFzuVl6r7MnTmKA,recKxI4eQdOzyOBT8,recZWWBTu9nTaRdEL,recH75uXytVe5n3Pb,rec0F3OCOCh7ujDKG,receJ1029Q3x8Zvg6,reccSoqRAvm6Ox275,recY5Bfp6tMOfJPyQ,recuTQG1C1hboYFtg,recXJ2MtNaCBbWf2i,rec2mgIciDSbSR38t,recjJDeXCFwQxwRC4,recDakPBWoPpRrERz,recXhyzCC3yRSi9yy,recRlRnupfu41P1e1,rec8mvj8FHQrgyf8b,recxWut1C93ym6Ucf,recmdyYuLIHCNIYaa,reclJOPxaxYUKVpcA,recMtYVDRlyO4Iif0,reco2uDrinYFmDxyg,rec9RWbjfbu1Hs0rl,recOlC0f6y3WTnyxM,recrkOM8FzQFOP2Ff,recLl46XKgNr70xDy,recr2DvJc35b5aW7Z,rectZ3LJaFweTYrMX,rechpf0xUrd5VaycU,rec14SmSJms2WP0lK,recvzrAxDhU76EkAd,rec3Rnj2vjH5wVjfC,recOqFBREqFdjJGFH,recSFW9pYQRpW5L1x,rec7f74ccOc5n4iZF,recAnHF3erAFpGUaP,recYMdVAWFofctjNk,recNjL7x70anZMlI2,rec2YtGL87L8WYVlI','2014','PBNYC',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recordid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_description` text COLLATE utf8mb4_unicode_ci,
  `project_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_date_updated` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `process_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_ballot_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_ward_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `win_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `win_calculate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `votes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vote_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pb_cycle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_num` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_topic_committee_raw` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_type_topic_standardize` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_location_raw` text COLLATE utf8mb4_unicode_ci,
  `project_address_clean` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neighborhood` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `census_tract_or_local_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `borough_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_dept_agency_cbo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agency_project_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1855 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
INSERT INTO `role_users` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"password.request\":true,\"password.email\":true,\"password.reset\":true,\"home.dashboard\":true,\"user.index\":true,\"user.create\":true,\"user.store\":true,\"user.show\":true,\"user.edit\":true,\"user.update\":true,\"user.destroy\":true,\"user.permissions\":true,\"user.save\":true,\"user.activate\":true,\"user.deactivate\":true,\"role.index\":true,\"role.create\":true,\"role.store\":true,\"role.show\":true,\"role.edit\":true,\"role.update\":true,\"role.destroy\":true,\"role.permissions\":true,\"role.save\":true}',NULL,NULL),(2,'client','client','{\"home.dashboard\":true}',NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `throttle`
--

DROP TABLE IF EXISTS `throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `throttle`
--

LOCK TABLES `throttle` WRITE;
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;
/*!40000 ALTER TABLE `throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@admin.com','$2y$10$W2P0LGVEnSEIle65y3Ki..zXCJHc1svC.ZtMQkWRT5alwMh66nI7S','{\"password.request\":true,\"password.email\":true,\"password.reset\":true,\"home.dashboard\":true,\"pages.index\":true,\"pages.create\":true,\"pages.store\":true,\"pages.show\":true,\"pages.edit\":true,\"pages.update\":true,\"pages.destroy\":true,\"user.index\":true,\"user.create\":true,\"user.store\":true,\"user.show\":true,\"user.edit\":true,\"user.update\":true,\"user.destroy\":true,\"user.permissions\":true,\"user.save\":true,\"user.activate\":true,\"user.deactivate\":true,\"role.index\":true,\"role.create\":true,\"role.store\":true,\"role.show\":true,\"role.edit\":true,\"role.update\":true,\"role.destroy\":true,\"role.permissions\":true,\"role.save\":true,\"log-viewer::logs.list\":true,\"log-viewer::logs.delete\":true,\"log-viewer::logs.show\":true,\"log-viewer::logs.download\":true,\"log-viewer::logs.filter\":true,\"log-viewer::logs.search\":true}','2018-02-06 11:50:49','John','Doe','CHNWidiGHT0WUhInw4zlg2W9na7wjl1yjjYsHlJWLM6Q6EDxz2B0xbkdht7Y',NULL,NULL,'2018-02-06 17:20:08');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-06 16:09:49