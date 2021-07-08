/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.13-MariaDB : Database - green_air
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`green_air` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `green_air`;

/*Table structure for table `account_types` */

DROP TABLE IF EXISTS `account_types`;

CREATE TABLE `account_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `account_types` */

insert  into `account_types`(`id`,`name`,`created_at`,`updated_at`) values (1,'Customer',NULL,NULL),(2,'Supplier',NULL,NULL);

/*Table structure for table `accounts` */

DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `accounts` */

/*Table structure for table `brands` */

DROP TABLE IF EXISTS `brands`;

CREATE TABLE `brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `brands` */

insert  into `brands`(`id`,`name`,`description`,`created_at`,`updated_at`) values (1000000,'Sharp',NULL,'2020-10-04 16:19:54','2020-10-04 16:19:54'),(1000001,'Samsung',NULL,'2020-10-28 05:48:19','2020-10-28 05:48:19'),(1000002,'LG',NULL,'2020-10-28 06:02:11','2020-10-28 06:02:11'),(1000003,'Apple',NULL,'2020-10-28 06:03:27','2020-10-28 06:03:27'),(1000004,'hp',NULL,'2020-11-08 04:54:22','2020-11-08 04:54:22');

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`description`,`created_at`,`updated_at`) values (1000000,'AC',NULL,'2020-10-04 16:20:02','2020-10-04 16:20:02'),(1000001,'TV',NULL,'2020-10-24 15:44:48','2020-10-24 15:44:48'),(1000002,'Mobile',NULL,'2020-10-28 06:06:38','2020-10-28 06:06:38'),(1000003,'Tab',NULL,'2020-10-28 06:07:33','2020-10-28 06:07:33'),(1000004,'Monitor',NULL,'2020-11-08 04:38:32','2020-11-08 04:38:32');

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000011 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `customers` */

insert  into `customers`(`id`,`name`,`address`,`area`,`country`,`primary_contact`,`secondary_contact`,`email`,`customer_type`,`created_at`,`updated_at`) values (1000000,'SHARMISTA KURI',NULL,NULL,'Bangladesh',NULL,NULL,NULL,'1,2','2020-10-04 16:21:26','2020-10-04 16:21:26'),(1000001,'Pranto Jouerder','Sample Address','hello area','Bangladesh','234','687','samplemail@hello.com','1','2020-10-21 18:48:49','2020-10-21 18:48:49'),(1000002,'SHARMISTA KURI',NULL,NULL,'Bangladesh',NULL,NULL,NULL,'1,2','2020-10-24 15:03:11','2020-10-24 15:03:11'),(1000003,'SHARMISTA KURI',NULL,NULL,'Bangladesh',NULL,NULL,NULL,NULL,'2020-10-24 15:05:09','2020-10-24 15:05:09'),(1000004,'SHARMISTA KURI',NULL,NULL,'Bangladesh',NULL,NULL,NULL,NULL,'2020-10-24 15:06:01','2020-10-24 15:06:01'),(1000005,'SHARMISTA KURI',NULL,NULL,'Bangladesh',NULL,NULL,NULL,NULL,'2020-10-24 15:40:03','2020-10-24 15:40:03'),(1000006,'SHARMISTA KURI',NULL,NULL,'Bangladesh',NULL,NULL,NULL,NULL,'2020-10-24 15:42:13','2020-10-24 15:42:13'),(1000007,'SHARMISTA KURI',NULL,NULL,'Bangladesh',NULL,NULL,NULL,NULL,'2020-11-08 05:15:27','2020-11-08 05:15:27'),(1000008,'SHARMISTA KURI',NULL,NULL,'Bangladesh',NULL,NULL,'skuri.cse@gmail.com',NULL,'2020-11-13 11:29:55','2020-11-13 11:29:55'),(1000009,'ড. আবুল কালাম আজাদ',NULL,NULL,'Bangladesh',NULL,NULL,NULL,NULL,'2020-11-19 08:32:22','2020-11-19 08:32:22'),(1000010,'Mueed Hasan Sarzil','Dhaka Bangladesh',NULL,'Bangladesh','467788',NULL,'sarzil31@gmail.com','1','2020-12-03 15:53:52','2020-12-03 15:53:52');

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `employees` */

insert  into `employees`(`id`,`name`,`address`,`phone`,`email`,`created_at`,`updated_at`) values (1,'Kuri',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_09_03_181858_create_sales_table',1),(5,'2020_09_03_185645_create_purchase_cart_details_table',1),(6,'2020_09_03_185714_create_sales_cart_details_table',1),(7,'2020_09_10_161252_create_roles_table',1),(8,'2020_09_10_161538_create_permissions_table',1),(9,'2020_09_10_161624_create_role_user_table',1),(10,'2020_09_12_141405_create_employees_table',1),(11,'2020_09_12_141536_create_customers_table',1),(12,'2020_09_12_141648_create_products_table',1),(13,'2020_09_12_141734_create_suppliers_table',1),(14,'2020_09_12_141829_create_purchases_table',1),(15,'2020_09_12_141920_create_transactions_table',1),(16,'2020_09_12_141958_create_transaction_types_table',1),(17,'2020_09_13_102500_create_accounts_table',1),(18,'2020_09_24_145100_create_categories_table',1),(19,'2020_09_24_150022_create_brands_table',1),(20,'2020_09_30_133758_create_account_types_table',1),(21,'2020_10_04_144024_create_officals_table',1),(22,'2020_10_04_172634_create_officials_table',2);

/*Table structure for table `model_has_permissions` */

DROP TABLE IF EXISTS `model_has_permissions`;

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `model_has_permissions` */

/*Table structure for table `model_has_roles` */

DROP TABLE IF EXISTS `model_has_roles`;

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `model_has_roles` */

insert  into `model_has_roles`(`role_id`,`model_type`,`model_id`) values (1,'App\\Models\\User',2),(2,'App\\Models\\User',1),(3,'App\\Models\\User',3);

/*Table structure for table `officals` */

DROP TABLE IF EXISTS `officals`;

CREATE TABLE `officals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `officals` */

/*Table structure for table `officials` */

DROP TABLE IF EXISTS `officials`;

CREATE TABLE `officials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `officials` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `permission_role` */

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permission_role` */

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`name`,`guard_name`,`created_at`,`updated_at`) values (1,'role-list','web','2020-12-16 16:48:44','2020-12-16 16:48:44'),(2,'role-create','web','2020-12-16 16:48:44','2020-12-16 16:48:44'),(3,'role-edit','web','2020-12-16 16:48:44','2020-12-16 16:48:44'),(4,'role-delete','web','2020-12-16 16:48:44','2020-12-16 16:48:44'),(5,'product-list','web','2020-12-16 16:48:44','2020-12-16 16:48:44'),(6,'product-create','web','2020-12-16 16:48:44','2020-12-16 16:48:44'),(7,'product-edit','web','2020-12-16 16:48:44','2020-12-16 16:48:44'),(8,'product-delete','web','2020-12-16 16:48:44','2020-12-16 16:48:44'),(9,'Sales-sell','web','2020-12-16 16:48:44','2020-12-16 16:48:44'),(10,'Sales-print','web','2020-12-16 16:48:44','2020-12-16 16:48:44'),(11,'Sales-email','web','2020-12-16 16:48:44','2020-12-16 16:48:44'),(12,'Sales-report','web','2020-12-16 16:48:44','2020-12-16 16:48:44'),(13,'User-list','web','2020-12-16 16:48:44','2020-12-16 16:48:44'),(14,'User-create','web','2020-12-16 16:48:44','2020-12-16 16:48:44'),(15,'User-edit','web','2020-12-16 16:48:45','2020-12-16 16:48:45'),(16,'User-delete','web','2020-12-16 16:48:45','2020-12-16 16:48:45'),(17,'Supplier-list','web','2020-12-16 16:48:45','2020-12-16 16:48:45'),(18,'Supplier-create','web','2020-12-16 16:48:45','2020-12-16 16:48:45'),(19,'Supplier-edit','web','2020-12-16 16:48:45','2020-12-16 16:48:45'),(20,'Supplier-report','web','2020-12-16 16:48:45','2020-12-16 16:48:45'),(21,'Customer-list','web','2020-12-16 16:48:45','2020-12-16 16:48:45'),(22,'Customer-create','web','2020-12-16 16:48:45','2020-12-16 16:48:45'),(23,'Customer-edit','web','2020-12-16 16:48:45','2020-12-16 16:48:45'),(24,'Customer-delete','web','2020-12-16 16:48:45','2020-12-16 16:48:45'),(25,'Purchase-list','web','2020-12-16 16:48:45','2020-12-16 16:48:45'),(26,'Purchase-create','web','2020-12-16 16:48:45','2020-12-16 16:48:45'),(27,'Purchase-print','web','2020-12-16 16:48:45','2020-12-16 16:48:45'),(28,'Purchase-report','web','2020-12-16 16:48:45','2020-12-16 16:48:45'),(29,'Price-stock','web','2020-12-18 10:45:15','2020-12-18 10:45:23'),(30,'Category-add','web','2020-12-18 10:50:08','2020-12-18 10:50:13'),(31,'Brand-add','web','2020-12-18 10:50:10','2020-12-18 10:50:15');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_price` double(16,2) NOT NULL,
  `sale_price` double(16,2) NOT NULL,
  `current_stock` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`category_id`,`brand_id`,`description`,`purchase_price`,`sale_price`,`current_stock`,`created_at`,`updated_at`) values (1000000,'Sharp AC',1000000,1000000,'Cool',10000.00,100000.00,94,'2020-10-04 16:20:19','2020-11-22 08:06:54'),(1000001,'Sharp TV',1000001,1000000,NULL,10000.00,100000.00,102,'2020-10-24 15:45:18','2020-11-29 17:45:44'),(1000002,'iPad',1000003,1000003,NULL,0.00,0.00,NULL,'2020-10-28 06:08:02','2020-10-28 06:08:02'),(1000003,'Samsung Tab',1000003,1000001,NULL,0.00,0.00,2,'2020-11-05 04:38:31','2020-11-05 05:17:23'),(1000004,'a',1000003,1000001,NULL,0.00,0.00,NULL,'2020-11-05 04:39:54','2020-11-05 04:39:54'),(1000005,'Samsung Monitor',1000004,1000001,NULL,10000.00,100.00,NULL,'2020-11-08 05:06:05','2020-11-22 06:57:14');

/*Table structure for table `purchase_cart_details` */

DROP TABLE IF EXISTS `purchase_cart_details`;

CREATE TABLE `purchase_cart_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` double(16,2) NOT NULL,
  `amount` double(16,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `purchase_cart_details` */

insert  into `purchase_cart_details`(`id`,`purchase_id`,`product_id`,`quantity`,`rate`,`amount`,`created_at`,`updated_at`) values (1,1,1000000,100,10000.00,1000000.00,'2020-10-04 16:20:56','2020-10-04 16:20:56'),(2,2,1000003,10,10000.00,100000.00,'2020-11-05 04:49:26','2020-11-05 04:49:26'),(3,3,1000003,2,100.00,200.00,'2020-11-05 04:51:03','2020-11-05 04:51:03'),(4,4,1000003,2,10000.00,0.00,'2020-11-05 04:52:35','2020-11-05 04:52:35'),(5,5,1000003,2,1000.00,2000.00,'2020-11-05 05:04:38','2020-11-05 05:04:38'),(6,6,1000003,10,1000.00,10000.00,'2020-11-05 05:06:33','2020-11-05 05:06:33'),(7,7,1000003,1000,100.00,100000.00,'2020-11-05 05:09:46','2020-11-05 05:09:46'),(8,8,1000003,2,1000.00,2000.00,'2020-11-05 05:17:23','2020-11-05 05:17:23'),(9,9,1000001,2,10000.00,20000.00,'2020-11-05 05:20:54','2020-11-05 05:20:54'),(10,10,1000001,2,10000.00,20000.00,'2020-11-11 16:11:29','2020-11-11 16:11:29'),(11,11,1000001,100,10000.00,1000000.00,'2020-11-29 17:45:44','2020-11-29 17:45:44');

/*Table structure for table `purchases` */

DROP TABLE IF EXISTS `purchases`;

CREATE TABLE `purchases` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `purchase_type` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `subtotal` double(16,2) NOT NULL,
  `vat` double(16,2) DEFAULT NULL,
  `transport_labour` double(16,2) DEFAULT NULL,
  `discount` double(16,2) DEFAULT NULL,
  `total` double(16,2) NOT NULL,
  `paid` double(16,2) NOT NULL,
  `due` double(16,2) NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `purchases` */

insert  into `purchases`(`id`,`invoice_no`,`employee_id`,`purchase_date`,`purchase_type`,`supplier_id`,`subtotal`,`vat`,`transport_labour`,`discount`,`total`,`paid`,`due`,`remarks`,`created_at`,`updated_at`) values (1,'12345',1,'2020-10-04',2,1000000,1000000.00,0.00,0.00,0.00,1000000.00,1000000.00,0.00,NULL,'2020-10-04 16:20:56','2020-10-04 16:20:56'),(2,'123456',1,'2020-11-05',2,1000001,100000.00,0.00,0.00,0.00,100000.00,100000.00,0.00,NULL,'2020-11-05 04:49:26','2020-11-05 04:49:26'),(3,'123456',1,'2020-11-05',1,1000001,200.00,0.00,0.00,0.00,200.00,200.00,0.00,NULL,'2020-11-05 04:51:03','2020-11-05 04:51:03'),(4,'123456',1,'2020-11-05',2,1000001,0.00,0.00,0.00,0.00,0.00,0.00,0.00,NULL,'2020-11-05 04:52:35','2020-11-05 04:52:35'),(5,'123456',1,'2020-11-05',2,1000001,2000.00,0.00,0.00,0.00,2000.00,4200.00,0.00,NULL,'2020-11-05 05:04:37','2020-11-05 05:04:37'),(6,'123456',1,'2020-11-05',2,1000001,10000.00,0.00,0.00,0.00,10000.00,10000.00,0.00,NULL,'2020-11-05 05:06:33','2020-11-05 05:06:33'),(7,'123456',1,'2020-11-05',2,1000002,100000.00,0.00,0.00,0.00,100000.00,100000.00,0.00,NULL,'2020-11-05 05:09:46','2020-11-05 05:09:46'),(8,'123456',1,'2020-11-05',1,1000001,2000.00,0.00,0.00,0.00,2000.00,2000.00,0.00,NULL,'2020-11-05 05:17:23','2020-11-05 05:17:23'),(9,'123456',1,'2020-11-05',2,1000001,20000.00,0.00,0.00,0.00,20000.00,20000.00,0.00,NULL,'2020-11-05 05:20:54','2020-11-05 05:20:54'),(10,'SI-2020-11-11-10',1,'2020-11-11',2,1000001,20000.00,0.00,0.00,0.00,20000.00,20000.00,0.00,NULL,'2020-11-11 16:11:29','2020-11-11 16:11:29'),(11,'SI-2020-11-29-11',1,'2020-11-29',1,1000000,1000000.00,0.00,0.00,0.00,1000000.00,1000000.00,0.00,NULL,'2020-11-29 17:45:44','2020-11-29 17:45:44');

/*Table structure for table `ref_role` */

DROP TABLE IF EXISTS `ref_role`;

CREATE TABLE `ref_role` (
  `id` int(10) NOT NULL,
  `name` varchar(28) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ref_role` */

insert  into `ref_role`(`id`,`name`) values (1,'Admin'),(2,'Manager'),(3,'Sales Officer');

/*Table structure for table `role_has_permissions` */

DROP TABLE IF EXISTS `role_has_permissions`;

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `role_has_permissions` */

insert  into `role_has_permissions`(`permission_id`,`role_id`) values (1,1),(1,2),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(9,2),(9,3),(10,1),(10,3),(11,1),(11,3),(12,1),(12,3),(13,1),(13,2),(14,1),(14,2),(15,1),(15,2),(16,1),(17,1),(18,1),(18,2),(19,1),(20,1),(21,1),(21,2),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(29,2),(30,1),(30,2),(31,1);

/*Table structure for table `role_user` */

DROP TABLE IF EXISTS `role_user`;

CREATE TABLE `role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `role_user` */

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`guard_name`,`created_at`,`updated_at`) values (1,'Admin','web','2020-12-16 08:23:43','2020-12-16 08:23:43'),(2,'Manager','web','2020-12-16 08:29:15','2020-12-17 15:50:26'),(3,'Sales Officer','web','2020-12-16 08:34:32','2020-12-18 04:15:40');

/*Table structure for table `sales` */

DROP TABLE IF EXISTS `sales`;

CREATE TABLE `sales` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `sale_date` date NOT NULL,
  `sale_type` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `subtotal` double(16,2) NOT NULL,
  `vat` double(16,2) DEFAULT NULL,
  `transport_labour` double(16,2) DEFAULT NULL,
  `discount` double(16,2) DEFAULT NULL,
  `total` double(16,2) NOT NULL,
  `paid` double(16,2) NOT NULL,
  `due` double(16,2) NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sales` */

insert  into `sales`(`id`,`invoice_no`,`employee_id`,`sale_date`,`sale_type`,`customer_id`,`subtotal`,`vat`,`transport_labour`,`discount`,`total`,`paid`,`due`,`remarks`,`created_at`,`updated_at`) values (1,'1234',1,'2020-10-04',2,1000000,20000.00,0.00,0.00,0.00,20001.01,20000.00,1.00,NULL,'2020-10-04 16:21:40','2020-10-04 16:21:40'),(2,'123456',1,'2020-10-21',1,1000000,40000.00,0.00,0.00,0.00,40000.00,40000.00,0.00,'okay','2020-10-20 06:41:56','2020-10-20 06:41:56'),(3,'SI-2020-11-13-3',1,'2020-11-13',1,1000001,444.00,0.00,0.00,0.00,444.00,444.00,0.00,NULL,'2020-11-13 10:31:59','2020-11-13 10:31:59');

/*Table structure for table `sales_cart_details` */

DROP TABLE IF EXISTS `sales_cart_details`;

CREATE TABLE `sales_cart_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` double(16,2) NOT NULL,
  `amount` double(16,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sales_cart_details` */

insert  into `sales_cart_details`(`id`,`sales_id`,`product_id`,`quantity`,`rate`,`amount`,`created_at`,`updated_at`) values (1,1,1000000,2,10000.00,20000.00,'2020-10-04 16:21:40','2020-10-04 16:21:40'),(3,2,1000000,2,10000.00,20000.00,'2020-10-20 06:41:56','2020-10-20 06:41:56'),(4,2,1000000,2,10000.00,20000.00,'2020-10-20 06:41:56','2020-10-20 06:41:56'),(5,3,1000001,2,222.00,444.00,'2020-11-13 10:31:59','2020-11-13 10:31:59');

/*Table structure for table `suppliers` */

DROP TABLE IF EXISTS `suppliers`;

CREATE TABLE `suppliers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000004 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `suppliers` */

insert  into `suppliers`(`id`,`name`,`address`,`area`,`country`,`primary_contact`,`secondary_contact`,`email`,`supplier_type`,`created_at`,`updated_at`) values (1000000,'SHARMISTA KURI',NULL,NULL,'Bangladesh',NULL,NULL,NULL,'1,2','2020-10-04 16:20:40','2020-10-04 16:20:40'),(1000001,'Sample Supplier',NULL,NULL,'Bangladesh','34',NULL,NULL,'2','2020-10-21 18:51:40','2020-10-21 18:51:40'),(1000002,'sonia',NULL,NULL,'Bangladesh',NULL,NULL,NULL,NULL,'2020-10-24 15:44:18','2020-10-24 15:44:18'),(1000003,'Sonia',NULL,NULL,'Bangladesh',NULL,NULL,NULL,NULL,'2020-10-28 06:25:18','2020-10-28 06:25:18');

/*Table structure for table `transaction_types` */

DROP TABLE IF EXISTS `transaction_types`;

CREATE TABLE `transaction_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `transaction_types` */

insert  into `transaction_types`(`id`,`name`,`created_at`,`updated_at`) values (1,'Cash Receive',NULL,NULL),(2,'Cash Out',NULL,NULL);

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `transaction_type_id` int(11) NOT NULL,
  `account_type_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(16,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `transactions` */

insert  into `transactions`(`id`,`date`,`transaction_type_id`,`account_type_id`,`account_id`,`description`,`amount`,`created_at`,`updated_at`) values (1,'2020-10-04',2,2,1000000,NULL,1000000.00,'2020-10-04 16:20:56','2020-10-04 16:20:56'),(2,'2020-10-04',1,1,1000000,NULL,20000.00,'2020-10-04 16:21:40','2020-10-04 16:21:40'),(3,'2020-10-08',1,1,1000000,'Cash R',1.00,'2020-10-08 05:43:45','2020-10-08 05:43:45'),(4,'2020-10-21',1,1,1000000,'okay',40000.00,'2020-10-20 06:41:57','2020-10-20 06:41:57'),(5,'2020-11-05',2,2,1000001,NULL,100000.00,'2020-11-05 04:49:26','2020-11-05 04:49:26'),(6,'2020-11-05',2,2,1000001,NULL,200.00,'2020-11-05 04:51:03','2020-11-05 04:51:03'),(7,'2020-11-05',2,2,1000001,NULL,2000.00,'2020-11-05 05:17:23','2020-11-05 05:17:23'),(8,'2020-11-05',2,2,1000001,NULL,20000.00,'2020-11-05 05:20:54','2020-11-05 05:20:54'),(9,'2020-11-11',2,2,1000001,NULL,20000.00,'2020-11-11 16:11:29','2020-11-11 16:11:29'),(10,'2020-11-13',1,1,1000001,NULL,444.00,'2020-11-13 10:32:00','2020-11-13 10:32:00'),(11,'2020-11-29',2,2,1000000,NULL,1000000.00,'2020-11-29 17:45:44','2020-11-29 17:45:44');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` int(10) DEFAULT NULL,
  `usr_pic` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`,`role`,`usr_pic`) values (1,'Sarzil','admin@gmail.com',NULL,'$2y$10$/8eXh/SK1UVSDEk180qVs.XRDqQWSEck4ioMmLmBHJmMi3mYTte4u',NULL,'2020-12-16 16:56:59','2020-12-16 16:56:59',NULL,NULL),(2,'Mueed Hasan Sarzil','sarzilaiub@gmail.com',NULL,'$2y$10$s95AbFq8XM0chiCwTqn1V.rB.Vmhu01tnf2GlD//Euch00a0H0tPS',NULL,'2020-12-17 14:50:10','2020-12-17 14:50:10',NULL,NULL),(3,'Sagor','sagor@gmail.com',NULL,'$2y$10$MKTZxuT9Kl1C4P3i3CE1H.h9WNdRhAyw5eZ3qiU8vMcQmd6mthOkK',NULL,'2020-12-18 05:10:02','2020-12-18 05:10:02',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
