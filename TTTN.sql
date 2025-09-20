-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: wm_web
-- ------------------------------------------------------
-- Server version	9.3.0

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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'WoodCraft','woodcraft','2025-08-09 15:36:19','2025-08-09 15:36:19',NULL),(2,'OfficePlus','officeplus','2025-08-09 15:36:19','2025-08-09 15:36:19',NULL),(3,'khoa sản phẩm tốt','khoa-san-pham-tot','2025-08-21 11:21:07','2025-08-21 21:13:12',NULL);
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Đồ gỗ decor','do-go-decor','2025-08-09 15:32:44','2025-08-09 15:32:44',NULL),(2,'Phụ kiện văn phòng','phu-kien-van-phong','2025-08-09 15:32:44','2025-08-09 15:32:44',NULL),(5,'khoa danh mục','khoa-danh-muc','2025-08-21 21:36:40','2025-08-21 21:36:40',NULL),(6,'mới','moi','2025-08-21 22:31:34','2025-08-21 22:31:34',NULL),(7,'khoa mới','khoa-moi','2025-08-21 22:47:20','2025-08-21 22:47:20',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `export_receipts`
--

DROP TABLE IF EXISTS `export_receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `export_receipts` (
  `id` varchar(50) NOT NULL,
  `export_code` varchar(50) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `export_code` (`export_code`),
  KEY `created_by` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `export_receipts`
--

LOCK TABLES `export_receipts` WRITE;
/*!40000 ALTER TABLE `export_receipts` DISABLE KEYS */;
INSERT INTO `export_receipts` VALUES ('09f2da95','PXK-1755974968581','a78261c1-4a18-4fee-a577-357507df5f05','2025-08-23 00:00:00','2025-08-29 04:34:56',NULL,''),('56ca8c1c','PXK-1755970093142','a78261c1-4a18-4fee-a577-357507df5f05','2025-08-23 00:00:00','2025-08-29 04:39:03',NULL,''),('5fe571f5','PXK-1755977488446','25c3e752-4126-4894-ad16-a59edd8999ab','2025-08-23 00:00:00','2025-08-29 05:11:20',NULL,''),('9960019b-cfc9-4e26-bf73-810fd5d5d1fc','PXK-1755968737701','1a577621-564a-4de7-8480-7ea61703eb59','2025-09-23 00:00:00','2025-08-31 03:42:22',NULL,''),('db768c8d','PXK-1756414359720','dbd1abe0-c1a7-4a6b-8c25-bbf89d5a2b09','2025-08-28 00:00:00',NULL,NULL,''),('e2101581','PXK-1756565146854','U001','2025-08-30 00:00:00',NULL,NULL,''),('eb9a3bba','PXK-1756046657369','25c3e752-4126-4894-ad16-a59edd8999ab','2025-07-24 00:00:00',NULL,NULL,'phiếu text'),('EXP001','XK001','1a577621-564a-4de7-8480-7ea61703eb59','2025-08-09 15:36:19',NULL,NULL,'Xuất hàng cho khách A'),('EXP002','XK002','U002','2025-11-09 15:36:19',NULL,NULL,'Xuất hàng cho khách B');
/*!40000 ALTER TABLE `export_receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `export_receipts_detail`
--

DROP TABLE IF EXISTS `export_receipts_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `export_receipts_detail` (
  `id` varchar(50) NOT NULL,
  `export_receipt_id` varchar(50) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `unit_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `export_receipt_id` (`export_receipt_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `export_receipts_detail_ibfk_1` FOREIGN KEY (`export_receipt_id`) REFERENCES `export_receipts` (`id`),
  CONSTRAINT `export_receipts_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `export_receipts_detail`
--

LOCK TABLES `export_receipts_detail` WRITE;
/*!40000 ALTER TABLE `export_receipts_detail` DISABLE KEYS */;
INSERT INTO `export_receipts_detail` VALUES ('2476c346','db768c8d','7ee9f866-5d4e-4f78-a338-bb2e318c661d',1,3423432.00,NULL,'PR-4545','LỊCH GỖ','Cái'),('28d1d9ae','5fe571f5','404601ed-a3ac-4b06-bfa8-a33d253f913f',11,45643.00,NULL,'PR-8569','Tên group mới','Cái'),('40fec164-0b2c-4928-add4-95818467f234','9960019b-cfc9-4e26-bf73-810fd5d5d1fc','7ee9f866-5d4e-4f78-a338-bb2e318c661d',1,3423432.00,NULL,'PR-4545','LỊCH GỖ','Cái'),('6a6ba47e','09f2da95','1BP0AE',144,23.00,NULL,'PR-1013','Auto inbox','Cái'),('77ef1f5a','eb9a3bba','7ee9f866-5d4e-4f78-a338-bb2e318c661d',1,6.00,NULL,'PR-4545','LỊCH GỖ','Cái'),('bfed8c0b','56ca8c1c','1BP0AE',77,78686.00,NULL,'PR-1013','Auto inbox','Cái'),('d196d716','eb9a3bba','1BP0AE',56,78686.00,NULL,'PR-1013','Auto inbox','Cái'),('e6a8583c','e2101581','0KNCCP',1,423432.00,NULL,'PR-5102','rtere','Bộ'),('EXPD001','EXP001','P001',10,170000.00,NULL,'PR-1013','Auto inbox','cái'),('EXPD002','EXP002','P002',40,60000.00,NULL,'','',NULL),('f9873888','09f2da95','7ee9f866-5d4e-4f78-a338-bb2e318c661d',22,3423432.00,NULL,'PR-4545','LỊCH GỖ','Cái');
/*!40000 ALTER TABLE `export_receipts_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_logs`
--

DROP TABLE IF EXISTS `history_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history_logs` (
  `id` varchar(50) NOT NULL,
  `action` varchar(255) NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `performed_at` datetime NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `is_read` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_history_user` (`user_id`),
  CONSTRAINT `fk_history_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_logs`
--

LOCK TABLES `history_logs` WRITE;
/*!40000 ALTER TABLE `history_logs` DISABLE KEYS */;
INSERT INTO `history_logs` VALUES ('044ca19b-2e0d-45c7-b1aa-26f0f5041272','Tạo sản phẩm: nhân viên thêm','U002','2025-08-30 21:49:37',NULL,'SUCCESS',0),('1ce58b0e-6225-4c8e-b96f-eb0f7c059cd6','Xóa phiếu xuất PXK-1755977488446','U001','2025-08-29 05:11:20',NULL,'SUCCESS',1),('2c275e36-137c-43cf-abb5-803abe04ecda','Tạo phiếu nhập PNK-1756415527385','25c3e752-4126-4894-ad16-a59edd8999ab','2025-08-29 04:12:07',NULL,'SUCCESS',1),('428860e1-095a-4b58-9a05-ff6644f69539','Xóa phiếu nhập 85891494-6680-499f-8555-fe0a65cb0c09','U001','2025-08-29 04:22:53',NULL,'SUCCESS',1),('6da10206-b9db-4304-8d6a-123d9e88ecd7','Xóa phiếu xuất PXK-1755968737701','U001','2025-08-31 03:42:22',NULL,'SUCCESS',0),('83d7e3fa-4cd0-439b-9804-c6df785f79fc','Xóa (ẩn) sản phẩm: test','U001','2025-08-31 03:45:59',NULL,'SUCCESS',0),('aec4b2f8-8b31-413e-8cab-5d3ee0668ab0','Xóa phiếu nhập NK001','U002','2025-08-30 22:43:17',NULL,'SUCCESS',0),('b7034dbb-f7c1-4583-b156-3e7381280d66','Tạo sản phẩm: rtere','U001','2025-08-30 21:44:09',NULL,'SUCCESS',1),('b8e5154c-836b-403f-9cf0-e8815c58538b','Xóa phiếu nhập 35c344d5-c678-4b2d-b103-1cbd1f0f54f9','U001','2025-09-29 04:17:12',NULL,'SUCCESS',1),('bc1741cf-c118-49c1-bc93-bcb318d1548e','Xóa phiếu xuất 09f2da95','U001','2025-10-29 04:34:56',NULL,'SUCCESS',1),('be1eb1ca-8347-447f-9a8c-4004ec7a9b8c','Xóa phiếu nhập PNK-1755899164965','U002','2025-08-30 22:33:22',NULL,'SUCCESS',0),('c0852d51-6a6d-4182-97d1-982f361ffecf','Cập nhật sản phẩm: LỊCH GỖ mới','U001','2025-08-30 18:50:35',NULL,'SUCCESS',1),('c35abe14-7c03-4f72-a17f-64ff349961d0','Xóa (ẩn) sản phẩm: test','U001','2025-08-31 03:48:16',NULL,'SUCCESS',0),('cd03fefe-25d7-4bcf-8360-a957d7fe2455','Xóa phiếu nhập NK002','U002','2025-08-30 22:34:17',NULL,'SUCCESS',0),('d21ad9c0-3e91-44e4-bb01-2f2fe710cdb4','Cập nhật sản phẩm: admin sửa','U001','2025-08-30 21:50:28',NULL,'SUCCESS',0),('d543762b-6b34-412e-a547-1ca8bf08dd1b','Xóa (ẩn) sản phẩm: Tên group mới','U001','2025-08-29 02:40:35',NULL,'SUCCESS',1),('d9c0dc76-8ee3-4205-aeb9-f6128ff37728','Cập nhật sản phẩm: Auto check','U001','2025-08-29 02:38:28',NULL,'SUCCESS',1),('e61a9e62-1dcb-4042-b6ba-228d872ac0cc','Tạo sản phẩm: test','U001','2025-08-29 02:45:36',NULL,'SUCCESS',1),('e81f2673-b710-4d6d-bfd6-b123c8cfa817','Tạo phiếu xuất PXK-1756565146854','U001','2025-08-30 21:45:47',NULL,'SUCCESS',1),('e8644966-90f5-4ec2-8333-96e824bbe590','Xóa phiếu xuất PXK-1755970093142','U001','2025-08-29 04:39:03',NULL,'SUCCESS',1),('f6238d23-54fa-43d2-a2ea-7ff23dfcb02a','Tạo phiếu xuất PXK-1756414359720','dbd1abe0-c1a7-4a6b-8c25-bbf89d5a2b09','2025-08-29 03:52:40',NULL,'SUCCESS',1),('H001','Thêm sản phẩm Đồng hồ gỗ treo tường','U001','2025-08-09 15:36:19',NULL,'active',1),('H002','Nhập hàng lô đồng hồ gỗ','U001','2025-08-09 15:36:19',NULL,'active',1),('H003','Xuất hàng cho khách A','U001','2025-08-09 15:36:19',NULL,'active',1);
/*!40000 ALTER TABLE `history_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_receipts`
--

DROP TABLE IF EXISTS `import_receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `import_receipts` (
  `id` varchar(50) NOT NULL,
  `import_code` varchar(50) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `import_code` (`import_code`),
  KEY `import_receipts_ibfk_1` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_receipts`
--

LOCK TABLES `import_receipts` WRITE;
/*!40000 ALTER TABLE `import_receipts` DISABLE KEYS */;
INSERT INTO `import_receipts` VALUES ('15699dd9-525b-463e-9902-db4d4676252a','PNK-1755899215170','dbd1abe0-c1a7-4a6b-8c25-bbf89d5a2b09','2025-08-23 04:46:55',NULL,NULL,''),('35c344d5-c678-4b2d-b103-1cbd1f0f54f9','PNK-1755894791961','25c3e752-4126-4894-ad16-a59edd8999ab','2025-08-23 03:33:12',NULL,NULL,''),('85891494-6680-499f-8555-fe0a65cb0c09','PNK-1755899242650','dbd1abe0-c1a7-4a6b-8c25-bbf89d5a2b09','2025-08-23 04:47:23',NULL,NULL,''),('89646635-9ada-4135-9837-2f94a130509f','PNK-1755899164965','dbd1abe0-c1a7-4a6b-8c25-bbf89d5a2b09','2025-08-23 04:46:05',NULL,NULL,''),('df5522b5-a770-45d0-9db9-47fd4e64df09','PNK-1756415527385','25c3e752-4126-4894-ad16-a59edd8999ab','2025-08-29 04:12:07',NULL,NULL,''),('IMP001','NK001','U002','2025-07-09 15:36:19','2025-08-30 22:43:17',NULL,'Nhập lô đồng hồ gỗ đầu tiên'),('IMP002','NK002','25c3e752-4126-4894-ad16-a59edd8999ab','2025-09-09 15:36:19',NULL,NULL,'Nhập sổ tay bìa gỗ');
/*!40000 ALTER TABLE `import_receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_receipts_detail`
--

DROP TABLE IF EXISTS `import_receipts_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `import_receipts_detail` (
  `id` varchar(50) NOT NULL,
  `import_receipt_id` varchar(50) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `quantity` int NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `product_code` varchar(100) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `price_snapshot` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `import_receipt_id` (`import_receipt_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `import_receipts_detail_ibfk_1` FOREIGN KEY (`import_receipt_id`) REFERENCES `import_receipts` (`id`),
  CONSTRAINT `import_receipts_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_receipts_detail`
--

LOCK TABLES `import_receipts_detail` WRITE;
/*!40000 ALTER TABLE `import_receipts_detail` DISABLE KEYS */;
INSERT INTO `import_receipts_detail` VALUES ('0c49fc8c-586a-4d3e-9d6c-79ccf42e5f54','35c344d5-c678-4b2d-b103-1cbd1f0f54f9','P001',1,NULL,145000.00,'PR-1013','Auto inbox',NULL),('3f07b8ec-0350-4840-a123-4e978a1e584a','df5522b5-a770-45d0-9db9-47fd4e64df09','7ee9f866-5d4e-4f78-a338-bb2e318c661d',1,NULL,3423432.00,'PR-4545','LỊCH GỖ',3423432.00),('708c6254-cdf5-4350-8e1e-bb264bdd94dd','15699dd9-525b-463e-9902-db4d4676252a','404601ed-a3ac-4b06-bfa8-a33d253f913f',1,NULL,45643.00,'PR-8569','Tên group mới',45643.00),('9f6130c2-c1a4-46f9-9d6c-b86dbe4ef58b','89646635-9ada-4135-9837-2f94a130509f','P001',1,NULL,145000.00,'DG001','Đồng hồ gỗ treo tường',145000.00),('db177cb8-88af-46bd-9ac2-7dbf55640afd','85891494-6680-499f-8555-fe0a65cb0c09','7ee9f866-5d4e-4f78-a338-bb2e318c661d',20,NULL,3423432.00,'PR-4545','LỊCH GỖ',3423432.00),('IMPD001','IMP001','P001',30,NULL,0.00,'PK002','Hello',45678.00),('IMPD002','IMP002','P002',50,NULL,0.00,NULL,NULL,0.00);
/*!40000 ALTER TABLE `import_receipts_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `code` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Kho A','KHOA','2025-08-09 15:36:19','2025-08-09 15:36:19',NULL),(2,'Kho B','KHOB','2025-08-09 15:36:19','2025-08-09 15:36:19',NULL),(3,'Kho C','KHOC','2025-08-09 15:36:19','2025-08-09 15:36:19',NULL),(4,'Kho D','KHOD','2025-08-09 15:36:19','2025-08-09 15:36:19',NULL),(5,'Kho E','KHOE','2025-08-09 15:36:19','2025-08-09 15:36:19',NULL),(6,'Kho F','KHOF','2025-08-09 15:36:19','2025-08-09 15:36:19',NULL);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` varchar(50) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int NOT NULL,
  `brand_id` int NOT NULL,
  `unit_id` int NOT NULL,
  `location_id` int NOT NULL,
  `import_price` decimal(15,2) NOT NULL,
  `stock` int DEFAULT '0',
  `description` text,
  `image_url` varchar(500) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_code` (`product_code`),
  KEY `category_id` (`category_id`),
  KEY `brand_id` (`brand_id`),
  KEY `unit_id` (`unit_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  CONSTRAINT `products_ibfk_3` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`),
  CONSTRAINT `products_ibfk_4` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('0KNCCP','PR-5102','rtere',5,3,2,4,423432.00,3422,NULL,'/uploads/fb8ede44-143c-4eab-b9ea-37e49051ac57_Untitled-1.png','2025-08-30 21:44:09','2025-08-30 21:45:47',NULL),('1BP0AE','PR-1013','Auto check',2,1,1,2,78686.00,8600,NULL,'/uploads/b6f701b1-e878-4f49-817b-7711155dba01_IMG_cmr sau.png','2025-08-21 22:34:53','2025-08-29 02:38:28',NULL),('1C13KR','PR-0256','Tên group',2,1,1,1,333.00,2,NULL,'/uploads/aaea9a67-0abc-46dc-bb7c-c134def66848_logo wr.png','2025-08-21 11:09:55','2025-08-21 11:10:26','2025-08-21 11:10:26'),('404601ed-a3ac-4b06-bfa8-a33d253f913f','PR-8569','Tên group mới',2,1,1,2,45643.00,22,NULL,'/uploads/820d0914-1815-4c3c-9ab9-92e71a13f014_IMG_1587.jpg','2025-08-21 10:57:41','2025-08-29 02:40:35','2025-08-29 02:40:35'),('7ee9f866-5d4e-4f78-a338-bb2e318c661d','PR-4545','LỊCH GỖ mới',1,1,1,1,3423432.00,40,NULL,'/uploads/63706287-5f75-4fe1-88a0-90e0908be9b5_Untitled design.jpg','2025-08-21 10:56:55','2025-08-30 18:50:35',NULL),('9XMVPR','PR-3618','sửa sản phẩm',2,1,2,2,45343.00,43534,NULL,'/uploads/a983f6b2-df55-4757-a9dd-0cd7e0782ae2_logoden.png','2025-08-24 14:59:09','2025-08-24 17:29:30',NULL),('a345017a-b606-4877-bb95-88dd40b6fa2f','PR-0195','Sổ tay bìa gỗ',1,1,1,2,2121.00,121,NULL,'/uploads/8f19e047-265f-43df-94e6-df78a28901ac_Untitled design.png','2025-08-21 11:02:21','2025-08-21 11:02:21',NULL),('ICOXT9','PR-5129','tuấn',6,3,2,2,123213.00,21111,NULL,'/uploads/f53a6254-b252-4e2b-a823-af5bdd165733_logoden.png','2025-08-24 21:52:21','2025-08-28 23:42:46','2025-08-28 23:42:46'),('P001','DG001','Đồng hồ gỗ treo tường',1,1,1,1,145000.00,102,NULL,'/uploads/6b5e938e-9467-43b5-89d0-092fe4c1a8f5_Untitled design.jpg','2025-08-09 15:36:19','2025-08-29 00:25:17','2025-08-29 00:25:17'),('P002','PK002','Sổ tay bìa gỗ',1,2,1,2,48000.00,200,NULL,'/uploads/b00f5fe6-20a3-4191-849b-a933de654cd2_IMG_1587.jpg','2025-08-09 15:36:19','2025-08-24 17:45:32',NULL),('PK54XA','PR-7135','test',6,2,1,6,231241.00,321,NULL,'/uploads/01f86b6d-b246-4cde-8694-e5376dc1a255_images.png','2025-08-29 02:45:36','2025-08-31 03:48:16','2025-08-31 03:48:16'),('S5Q0I9','PR-2708','test',6,3,2,5,23432.00,433,NULL,'/uploads/e824b0ef-b027-48e8-a044-309021aa48a8_vn-11134231-7ras8-mdv3np9yzvo598@resize_ss400x400!@crop_w1200_h1200_cT.jpg','2025-08-27 23:59:24','2025-08-31 03:45:59','2025-08-31 03:45:59'),('SDO4FG','PR-0762','admin sửa',7,3,2,4,1212.00,213131,NULL,'/uploads/20a33de0-eb99-4228-ae01-15328a7ef691_istockphoto-1464621683-612x612.jpg','2025-08-30 21:49:37','2025-08-30 21:50:28',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revenues`
--

DROP TABLE IF EXISTS `revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revenues` (
  `id` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `total_import` decimal(15,2) DEFAULT '0.00',
  `total_export` decimal(15,2) DEFAULT '0.00',
  `total_profit` decimal(15,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revenues`
--

LOCK TABLES `revenues` WRITE;
/*!40000 ALTER TABLE `revenues` DISABLE KEYS */;
INSERT INTO `revenues` VALUES ('R001','2025-08-09',4350000.00,4300000.00,-50000.00);
/*!40000 ALTER TABLE `revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `units` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (1,'Cái','cai','2025-08-09 15:36:19','2025-08-09 15:36:19',NULL),(2,'Bộ','bo','2025-08-09 15:36:19','2025-08-09 15:36:19',NULL);
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(50) NOT NULL,
  `staff_code` varchar(20) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `staff_code` (`staff_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1a577621-564a-4de7-8480-7ea61703eb59','STF003','admin tên khoa','tv@example.com','0954943943','123','staff','2025-08-27',NULL,'2025-08-06 00:00:00','2025-08-16 14:30:47'),('25c3e752-4126-4894-ad16-a59edd8999ab','STF005','adminkhoa2','htyennhi.work@gmail.com','0947529923','123','staff','2025-08-13',NULL,'2025-08-16 15:34:31','2025-08-16 15:34:31'),('601b7180-9574-46cc-829d-9191591a4653','STF007','Nguyễn Văn Tuấn','ahihidongoctt@gmail.com','0912345657','123','admin','2025-08-21',NULL,'2025-08-24 22:09:52','2025-08-24 22:09:52'),('a78261c1-4a18-4fee-a577-357507df5f05','STF006','khoa','thomockien@gmail.com','0977765672','123','staff','2025-08-20',NULL,'2025-08-18 23:57:52','2025-08-18 23:57:52'),('dbd1abe0-c1a7-4a6b-8c25-bbf89d5a2b09','STF004','khoa trần','trancongkhoa15@gmail.com','0947529988','123','staff','2025-08-28',NULL,'2025-08-16 14:42:18','2025-08-16 14:42:18'),('U001','STF001','admin','admin@example.com','0901000012','123','admin','1990-05-18',NULL,'2025-08-13 00:00:00','2025-08-09 15:30:59'),('U002','STF002','staff1','staff1@example.com','0901000002','123','staff','1995-07-22',NULL,'2025-08-09 15:30:59','2025-08-09 15:30:59');
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

-- Dump completed on 2025-08-31  4:03:53
