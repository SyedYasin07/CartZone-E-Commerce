-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: flip
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int DEFAULT '1',
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (6,1,6,2),(16,1,4,3),(17,1,10,1),(18,1,6,2),(19,1,9,2),(22,1,8,5),(23,1,5,1),(25,1,11,1),(29,1,16,1),(30,1,6,2),(31,1,12,1),(32,1,8,5),(34,1,6,2),(42,1,3,2),(43,1,1,4),(48,1,19,1),(49,1,18,1),(50,1,2,1),(51,1,21,1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_care`
--

DROP TABLE IF EXISTS `customer_care`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_care` (
  `ticket_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` text,
  `status` varchar(20) DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_care`
--

LOCK TABLES `customer_care` WRITE;
/*!40000 ALTER TABLE `customer_care` DISABLE KEYS */;
INSERT INTO `customer_care` VALUES (1,1,'delivery issues','i orderd for today 03/06/2026 but product not came why delay happens?','Pending','2026-06-03 15:35:10'),(2,1,'issues','checking','Pending','2026-06-03 15:38:17'),(3,1,'wfef','fe','Pending','2026-06-03 15:42:22'),(4,1,'thty','thth','Pending','2026-06-04 16:08:26'),(5,1,'fef','fef','Pending','2026-06-05 15:35:01'),(6,1,'grge','geg','Pending','2026-06-06 15:12:23');
/*!40000 ALTER TABLE `customer_care` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_tickets`
--

DROP TABLE IF EXISTS `help_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_tickets` (
  `ticket_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `issue_type` varchar(100) DEFAULT NULL,
  `description` text,
  `status` varchar(20) DEFAULT 'Open',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_tickets`
--

LOCK TABLES `help_tickets` WRITE;
/*!40000 ALTER TABLE `help_tickets` DISABLE KEYS */;
INSERT INTO `help_tickets` VALUES (1,1,'Refund Issue','i applied for refund from 2days back but i not get my money back','Open','2026-06-05 15:21:46'),(2,1,'Refund Issue','i applied for refund from 2days back but i not get my money back','Open','2026-06-05 15:24:14'),(3,1,'Order Not Delivered','till not delivered','Open','2026-06-05 15:27:08'),(4,1,'Order Not Delivered','why?','Open','2026-06-06 14:55:53'),(5,1,'Wrong Product Received','gge','Open','2026-06-06 15:12:09');
/*!40000 ALTER TABLE `help_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,'Welcome to Flipkart Clone','2026-06-03 13:53:40'),(2,'Flat 20% Off on Electronics','2026-06-03 13:53:40'),(3,'Big Billion Days Sale Starts Tomorrow','2026-06-03 13:53:40'),(4,'Free Delivery Above ₹499','2026-06-03 13:53:40');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `payment_mode` varchar(50) DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `order_status` varchar(30) DEFAULT 'PLACED',
  `Address` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `ram` varchar(50) DEFAULT NULL,
  `storage` varchar(50) DEFAULT NULL,
  `screen_size` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,'Online','2026-01-13 08:46:30','PLACED','Naidupeta, Garidi Street, 524126',NULL,NULL,NULL,NULL,NULL),(2,1,2,'COD','2026-01-13 08:46:30','PLACED','Tirupati, Nawabpeta, 517501',NULL,NULL,NULL,NULL,NULL),(3,1,3,'Online','2026-01-13 08:46:30','PLACED','Hyderabad, SR Nagar, 500081',NULL,NULL,NULL,NULL,NULL),(4,1,4,'COD','2026-01-13 08:46:30','PLACED','Bangalore, Residency Road, 560001',NULL,NULL,NULL,NULL,NULL),(5,1,4,'Online','2026-01-13 08:46:30','PLACED','Nellore, Balaji Nagar Road, 524001',NULL,NULL,NULL,NULL,NULL),(6,1,4,'COD','2026-01-13 08:46:30','PLACED','Vishakapatnam, Dwaraka Nagar Main Road, 530016',NULL,NULL,NULL,NULL,NULL),(22,1,1,'COD','2026-01-26 07:23:01','PLACED','tirupathi',NULL,NULL,NULL,NULL,NULL),(23,1,1,'COD','2026-01-27 16:22:01','PLACED','naidupet',NULL,NULL,NULL,NULL,NULL),(31,1,9,'COD','2026-06-05 15:07:26','PLACED','hyderabad',NULL,NULL,NULL,NULL,NULL),(45,1,2,'COD','2026-06-10 03:27:19','PLACED','gws',NULL,NULL,NULL,NULL,NULL),(46,1,2,'COD','2026-06-10 04:06:09','PLACED','fefwe','','','','',''),(47,1,4,'COD','2026-06-10 04:14:00','PLACED','r3r',NULL,NULL,NULL,NULL,NULL),(48,1,6,'COD','2026-06-10 04:15:51','PLACED','efe',NULL,NULL,NULL,NULL,NULL),(49,1,10,'COD','2026-06-10 04:21:14','PLACED','efef','Black',NULL,'6 GB','128 GB',NULL),(50,1,8,'COD','2026-06-10 05:41:58','PLACED','ete','Black',NULL,NULL,NULL,'43 Inch');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `seller_id` int DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `material` varchar(100) DEFAULT NULL,
  `processor` varchar(100) DEFAULT NULL,
  `ram` varchar(50) DEFAULT NULL,
  `storage` varchar(50) DEFAULT NULL,
  `battery` varchar(50) DEFAULT NULL,
  `display_size` varchar(50) DEFAULT NULL,
  `connectivity` varchar(100) DEFAULT NULL,
  `warranty` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Printed Round Neck',999,'https://rukminim1.flixcart.com/image/312/312/l4rd0280/t-shirt/l/n/s/s-402a-austiz-original-imagfh4fmsjbsy69.jpeg?q=70','Shirts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Printed Round Neck T-shirt',899,'https://rukminim1.flixcart.com/image/312/312/l4rd0280/t-shirt/c/y/x/m-408a-austiz-original-imagfh43wzj6hvyv.jpeg?q=70','Shirts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Allen Solly Men\'s Printed Slim Fit Shirt',763,'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQXbSgPQdhSMlrxUBc-1dIxciPpuYP_bdcwiMpVC_iue2-8N4FPXDE3oc3cRg5mPpVY7cKtV8AnMlz1kQXoSvk-2v1s6rN8BHAAkoNtU5dc3dcjtOsbY68eSw','Shirts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Printed Round Neck',549,'https://rukminim1.flixcart.com/image/312/312/xif0q/t-shirt/e/r/9/xl-st-smartees-pocket-black-smartees-original-imagh8ctwfczgdcx.jpeg?q=70','Shirts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Samsung Crystal iSmart 4K Ultra HD Smart LED TV',47990,'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTmYfe28EaNPZRTAJYIpI7c4Y_tYC5hi5G2eckbE854PLqnGB48SaFtBOuMogFYf3vMgTEifeEbHAZqWGfQcYA09lMMyTcZlsUAQZq4yx0mWTbuhUN2SCrD','TV',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Realme Techlife Cinesonic 80 Cm 32 Inch Qled Hd Ready Smart Google Tv',8999,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQUo7RwJgye6ppHR1zoCAcsBW9H8I5LLRehQDcsUclyie4FmvnyGCO8D4IeJMpCzYo8EncHanTgASH18FdiRUq_NCJoEuyT_8ojKJYdCY4','TV',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'LG UR75 Series 4K Ultra HD Smart LED TV',29990,'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSFEBqbuXPFzz_agMhAmtW7o1BAGw96ssc5B6_6tVe5B_gtCfC2rb6WEi5Mm-yZsYzAPInmCKHnX-SXTqCgTdG_JKpoiyaI8TyeMYIV8k6UnUyI_Tl8j1T','TV',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Sony Bravia KD-50X64L 4k Ultra HD Smart LED',35590,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSVo2WpA8BWpZKfQnEfgnpwTJi43FH1-hrS-Sl2Vmlecm2CysSdewdR4OkoVq7MzVFT9rrrfEs8ICrzfCY8NlTwfQrcpIcs8VZ-hp4VC9PtLyEKQ38ZPskceA','TV',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Realme P3x 5G',11999,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQfUjIJKZggue3C2k4dNNgcaymyDkqVn70sxiYgCGt9AGPhBLt3jJGs6-saYcB9E1jt9h7Kvxiy6bm9BNKkPG0vdSUa1GCEcKa7YSZb-Tju','Mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Poco F6 5g',23999,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRrPnf2VYkna34m_JY4eNgJc-NF_NyeZOfAUft3_1Y5CusQpPXGx0dB8bnR0tA9mk-oGIImG18_BznCmV_xke8V0Yvqy-ZC_RQ4VAkiLUAj','Mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Vivo T4 5G',21999,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSFuAft-aY4CjM0kE-ljn4thbRo30WNHbSI64GDfx_C2cDvLBah9WvPl90FuRx-Jg8vcqFmhCUfh6XeR7vps_dT2-M3CrsZgjZe8N3l6Y4','Mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Apple iPhone 16 plus',84900,'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSzIKShfxmasLUcJ7xgJ7gm5Qu0Rhjz5t1MqEx-VwlnUaAt6G96fJdBW_d-09OfMjXWKhSBU8bvQeTec2R6Y8m8u1vefAiobx6LPaGxSms','Mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Rolex Overfly Silver Gold Quartz Chain',3064,'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcS8nUCu3VSungzgsycwziq0NWTrvlqx6NJIfeY_Rpw13kYq5hIQEscyVFU_RJ7Np3avxt2_N3R4gjx_cZTANlxmOcm1MC1GIZAbwNZrCKWb','Watches',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Titan Men\'s Neo Splash Analog Watch',7295,'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTuAbZgsdc3eKhncWpqlj3tiqSJCP5FLlZ5ZV81cUmYR9cZCVufguLgtflIoK1gfx9MH5zKD3t1w6qxeXv7v4HAhUUP-_qxx3LhOEcC-EI-G0UjnlOeSCel','Watches',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Timex Men\'s Analog Black Dial Watch',1399,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSRcjD5BAZVZ7-yCfn7TBZkUoCqFg5P28ekHC2AbcfyECe8brhRAq9_n8yCxjZRxjxZDslhn3yuTHRKkzmEH-maYDVmIJHZhkt97HoeOTksn0RkgQgmJZ5r','Watches',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'Fastrack Optimus 2 Pro Smartwatch',2499,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQ3syisQYZC53GlcFnjLRK2I_thUhcPuGPAldJdhhcn4vS_b3o8v6bMTEwDJohYqgMhTS6clAoDL90gjipoVfLTP3XemroOM0e72tvqUDU','Watches',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'Apple Airpods',8999,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTcW5UYSj3Da2J9FuNwFZH_w7nMubkNGL498tYWXSJBCC75XgHx3vAhHgdgn5XlqA6j96QqrLfGTPDNhUayMAyQugQuDhM42606Iz4dCoOTJs6sCjeMWwUa','Buds',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Boult Audio Mustang Torq',1799,'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSJMqfLjPN-kwdtnt4KTVGO2gv_1YOb7qMJkvjFgHdep_GO5XJdjegr7kvCtnPmOGjCbnFOayUM8IHz3hNYhJsfq2roRpn6jma6h3BjTgrdM-cRV-WRDqq14A','Buds',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'Realme Buds T310',2199,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcS6z32ixOHBGZ3QuTirltE8IFvwaT83eZECh22c9LUGVk3Qa3HgWfIp06TqomNOOA9S9ZRQD1JhpD3jKYp2p48QVrnmbcd6_QdOO-YB95g','Buds',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'OnePlus Buds Pro',6488,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQVGijlUW_qkarCe5rot3RJ-8Ez9c04g8EijfWgaA6lmK_W8t1Y7fcA3CorXPG9yw3L6QH_7e80nz_5RC2aMQPDNNJ5J3Rm6LqafY0Yrpo','Buds',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'AZ Online Shop',2699,'https://assets.myntassets.com/w_412,q_50,,dpr_3,fl_progressive,f_webp/assets/images/26270364/2023/12/6/27a41687-a813-450f-b1fb-336dd347a9d21701855204053SofaCovers1.jpg','Furnitures',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'Electronics',34000,'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTh0gU4-DkSyD29dFcki4kv6__1Mdzay_z3A2LrBPgSKstuaZRjycnTNmXpGuGUGOnUKiywqR1joSn1dEPFec-JRtHOUy_QIpBQSssNNdrgqtxO-1-uneJ9','Television',5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `review_text` varchar(500) DEFAULT NULL,
  `review_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sellers` (
  `seller_id` int NOT NULL AUTO_INCREMENT,
  `seller_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `business_name` varchar(100) DEFAULT NULL,
  `gst_number` varchar(50) DEFAULT NULL,
  `address` text,
  PRIMARY KEY (`seller_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
INSERT INTO `sellers` VALUES (1,'yasin','syedyasin075@gmail.com','6303834758','Mobiles','873737335','Naidupeta tpt district'),(2,'chetan','chetan134@gmail.com','988798433','Vehicles','545695633','Kadapa '),(3,'Chaitanya','chaitanya345@gmail.com','9489438342','Laptop','22546965','Hyderabad'),(4,'wfflgje','ewgta@gmail.com','rrtwe','tete','eteT','EGT'),(5,'syed','msyed3581@gmail.com','658985669','AutoMobiles','6488965655','Nellore'),(6,'','','','','',''),(7,'','','','','',''),(8,'yas','hdy@gmail.com','5652','erwr','22r2r','fwf'),(9,'subbayya','subbayya423@gmail.com','559683596','fashion ','649754562','Hyderabad sr nagar');
/*!40000 ALTER TABLE `sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `track`
--

DROP TABLE IF EXISTS `track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `track` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `order_status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track`
--

LOCK TABLES `track` WRITE;
/*!40000 ALTER TABLE `track` DISABLE KEYS */;
INSERT INTO `track` VALUES (1,1,101,2,1999,'2026-06-04 16:28:36','Order Placed'),(2,1,102,1,5999,'2026-06-04 16:28:36','Packed'),(3,1,103,1,14999,'2026-06-04 16:28:36','Shipped'),(4,1,104,1,29999,'2026-06-04 16:28:36','Out For Delivery'),(5,1,105,1,49999,'2026-06-04 16:28:36','Delivered');
/*!40000 ALTER TABLE `track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `wishlist_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `added_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`wishlist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (11,1,42,'2026-05-31 07:35:54'),(12,1,61,'2026-05-31 07:36:07'),(13,1,39,'2026-05-31 07:41:20'),(14,1,48,'2026-05-31 07:41:32'),(15,1,54,'2026-05-31 07:41:59'),(16,1,51,'2026-05-31 07:43:32'),(17,1,19,'2026-05-31 07:53:29'),(29,1,8,'2026-06-06 15:16:13');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'flip'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-10 17:50:46
