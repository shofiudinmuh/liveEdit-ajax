/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : login

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 29/09/2022 15:44:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for artikel
-- ----------------------------
DROP TABLE IF EXISTS `artikel`;
CREATE TABLE `artikel`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `teks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artikel
-- ----------------------------
INSERT INTO `artikel` VALUES (1, '1da69-img_0162.jpg', 'Photo shooting and image editing services', '<p>\r\n	Kami akan memberikan pelayanan yang sangat memuaskan bagi anda</p>\r\n');
INSERT INTO `artikel` VALUES (2, 'd2333-img_0186.jpg', 'Wedding Documentation', '<p>\r\n	Kami siap mengabadikan momen sakral yang sangat penting dalam hidup anda</p>\r\n');
INSERT INTO `artikel` VALUES (3, 'ac1d6-img_0179.jpg', 'Buffet Reservation', NULL);

-- ----------------------------
-- Table structure for background
-- ----------------------------
DROP TABLE IF EXISTS `background`;
CREATE TABLE `background`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `display` enum('yes','no') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of background
-- ----------------------------
INSERT INTO `background` VALUES (1, '4142d-virtual-background-si-uinsa-x-aws.png', '1', NULL);

-- ----------------------------
-- Table structure for belanja
-- ----------------------------
DROP TABLE IF EXISTS `belanja`;
CREATE TABLE `belanja`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jumlah` int NULL DEFAULT NULL,
  `harga` int NULL DEFAULT NULL,
  `total` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of belanja
-- ----------------------------
INSERT INTO `belanja` VALUES (1, 'Sawi', 3, 5000, 15000);
INSERT INTO `belanja` VALUES (2, 'Beras', 25, 10000, 250000);
INSERT INTO `belanja` VALUES (3, 'Ayam', 5, 25000, 125000);
INSERT INTO `belanja` VALUES (4, 'Daging', 10, 115000, 1150000);
INSERT INTO `belanja` VALUES (5, 'Minyak', 10, 14000, 140000);
INSERT INTO `belanja` VALUES (6, 'Semangka', 3, 4500, 13500);
INSERT INTO `belanja` VALUES (7, 'Anggur', 3, 45000, 135000);
INSERT INTO `belanja` VALUES (8, 'Tepung Terigu', 5, 8000, 40000);
INSERT INTO `belanja` VALUES (9, 'Tepung Tapioka', 3, 9000, 21000);

-- ----------------------------
-- Table structure for laporan
-- ----------------------------
DROP TABLE IF EXISTS `laporan`;
CREATE TABLE `laporan`  (
  `id` int NOT NULL,
  `bulan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pendapatan` bigint NULL DEFAULT NULL,
  `biaya` bigint NULL DEFAULT NULL,
  `laba` bigint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of laporan
-- ----------------------------
INSERT INTO `laporan` VALUES (1, 'Januari', 3000, 205000, -202000);
INSERT INTO `laporan` VALUES (2, 'Februari', 20000, 483000, -463000);
INSERT INTO `laporan` VALUES (3, 'Maret', 356000, 330000, 26000);
INSERT INTO `laporan` VALUES (4, 'April', 583000, 927000, -344000);
INSERT INTO `laporan` VALUES (5, 'Mei', 885000, 643000, 242000);
INSERT INTO `laporan` VALUES (6, 'Juni', 562000, 881000, -319000);
INSERT INTO `laporan` VALUES (7, 'Juli', 718000, 950000, -232000);
INSERT INTO `laporan` VALUES (8, 'Agustus', 597000, 133000, 464000);
INSERT INTO `laporan` VALUES (9, 'September', 875000, 976000, -101000);
INSERT INTO `laporan` VALUES (10, 'Oktober', 258000, 361000, -103000);
INSERT INTO `laporan` VALUES (11, 'Nopember', 31000, 73000, -42000);
INSERT INTO `laporan` VALUES (12, 'Desember', 272000, 140000, 132000);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `harga` int NULL DEFAULT NULL,
  `kategori` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 'Wagyu Bulgogi', 17500, 'Rice Bowl');
INSERT INTO `menu` VALUES (2, 'Wagyu Lada Hitam', 22000, 'Rice Bowl');
INSERT INTO `menu` VALUES (3, 'Aussy Tenderloin', 89000, 'Imported Steak');
INSERT INTO `menu` VALUES (4, 'Aussy Striploin', 99000, 'Imported Steak');
INSERT INTO `menu` VALUES (5, 'Salmon Spinach', 125000, 'Imported Steak');
INSERT INTO `menu` VALUES (6, 'Spaghetti Bolognise', 25000, 'Pasta');
INSERT INTO `menu` VALUES (7, 'Spaghetti Carbonara', 26000, 'Pasta');

-- ----------------------------
-- Table structure for portofolio
-- ----------------------------
DROP TABLE IF EXISTS `portofolio`;
CREATE TABLE `portofolio`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `teks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `approve` enum('yes','no') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kategori` enum('Wedding','Foto Product','Other') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of portofolio
-- ----------------------------
INSERT INTO `portofolio` VALUES (7, '52db7-img_0116.jpg', 'Dekorasi', NULL, 'yes', 'Wedding');
INSERT INTO `portofolio` VALUES (8, 'c685c-img_2512.jpg', 'Olive Eatery Coffe', NULL, 'yes', 'Wedding');
INSERT INTO `portofolio` VALUES (9, '0e0fe-img_2376.jpg', 'Akad', NULL, 'yes', 'Wedding');
INSERT INTO `portofolio` VALUES (10, 'd3b60-dsc04347.jpg', 'Strawberry Mojito', NULL, 'yes', 'Foto Product');
INSERT INTO `portofolio` VALUES (12, '7c6cd-dsc04810.jpg', 'Beef Lasagna', NULL, 'yes', 'Foto Product');
INSERT INTO `portofolio` VALUES (13, '9b819-dsc04716.jpg', 'Beef Wagyu Bulgogi', NULL, 'yes', 'Foto Product');
INSERT INTO `portofolio` VALUES (14, 'a1d91-dsc04810.jpg', 'Beef Lasagna', NULL, 'yes', 'Foto Product');
INSERT INTO `portofolio` VALUES (15, 'bba49-img_0186.jpg', 'Dekorasi', NULL, 'yes', 'Wedding');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_title` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `post_description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `author` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7245 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES (7155, 'Ini adalah judul ke 7155', 'Ini adalah contoh postingan ke 7155', NULL);
INSERT INTO `post` VALUES (7156, 'Ini adalah judul ke 7156', 'Ini adalah contoh postingan ke 7156', NULL);
INSERT INTO `post` VALUES (7157, 'Ini adalah judul ke 7157', 'Ini adalah contoh postingan ke 7157', NULL);
INSERT INTO `post` VALUES (7158, 'Ini adalah judul ke 7158', 'Ini adalah contoh postingan ke 7158', NULL);
INSERT INTO `post` VALUES (7160, 'Ini adalah judul ke 7160', 'Ini adalah contoh postingan ke 7160', NULL);
INSERT INTO `post` VALUES (7161, 'Ini adalah judul ke 7161', 'Ini adalah contoh postingan ke 7161', NULL);
INSERT INTO `post` VALUES (7162, 'Ini adalah judul ke 7162', 'Ini adalah contoh postingan ke 7162', NULL);
INSERT INTO `post` VALUES (7163, 'Ini adalah judul ke 7163', 'Ini adalah contoh postingan ke 7163', NULL);
INSERT INTO `post` VALUES (7167, 'Ini adalah judul ke 7167', 'Ini adalah contoh postingan ke 7167', NULL);
INSERT INTO `post` VALUES (7168, 'Ini adalah judul ke 7168', 'Ini adalah contoh postingan ke 7168', NULL);
INSERT INTO `post` VALUES (7169, 'Ini adalah judul ke 7169', 'Ini adalah contoh postingan ke 7169', NULL);
INSERT INTO `post` VALUES (7170, 'Ini adalah judul ke 7170', 'Ini adalah contoh postingan ke 7170', NULL);
INSERT INTO `post` VALUES (7171, 'Ini adalah judul ke 7171', 'Ini adalah contoh postingan ke 7171', NULL);
INSERT INTO `post` VALUES (7172, 'Ini adalah judul ke 7172', 'Ini adalah contoh postingan ke 7172', NULL);
INSERT INTO `post` VALUES (7173, 'Ini adalah judul ke 7173', 'Ini adalah contoh postingan ke 7173', NULL);
INSERT INTO `post` VALUES (7174, 'Ini adalah judul ke 7174', 'Ini adalah contoh postingan ke 7174', NULL);
INSERT INTO `post` VALUES (7182, 'Ini adalah judul ke 7182', 'Ini adalah contoh postingan ke 7182', NULL);
INSERT INTO `post` VALUES (7183, 'Ini adalah judul ke 7183', 'Ini adalah contoh postingan ke 7183', NULL);
INSERT INTO `post` VALUES (7184, 'Ini adalah judul ke 7184', 'Ini adalah contoh postingan ke 7184', NULL);
INSERT INTO `post` VALUES (7185, 'Ini adalah judul ke 7185', 'Ini adalah contoh postingan ke 7185', NULL);
INSERT INTO `post` VALUES (7186, 'Ini adalah judul ke 7186', 'Ini adalah contoh postingan ke 7186', NULL);
INSERT INTO `post` VALUES (7187, 'Ini adalah judul ke 7187', 'Ini adalah contoh postingan ke 7187', NULL);
INSERT INTO `post` VALUES (7188, 'Ini adalah judul ke 7188', 'Ini adalah contoh postingan ke 7188', NULL);
INSERT INTO `post` VALUES (7189, 'Ini adalah judul ke 7189', 'Ini adalah contoh postingan ke 7189', NULL);
INSERT INTO `post` VALUES (7190, 'Ini adalah judul ke 7190', 'Ini adalah contoh postingan ke 7190', NULL);
INSERT INTO `post` VALUES (7191, 'Ini adalah judul ke 7191', 'Ini adalah contoh postingan ke 7191', NULL);
INSERT INTO `post` VALUES (7192, 'Ini adalah judul ke 7192', 'Ini adalah contoh postingan ke 7192', NULL);
INSERT INTO `post` VALUES (7193, 'Ini adalah judul ke 7193', 'Ini adalah contoh postingan ke 7193', NULL);
INSERT INTO `post` VALUES (7194, 'Ini adalah judul ke 7194', 'Ini adalah contoh postingan ke 7194', NULL);
INSERT INTO `post` VALUES (7195, 'Ini adalah judul ke 7195', 'Ini adalah contoh postingan ke 7195', NULL);
INSERT INTO `post` VALUES (7196, 'Ini adalah judul ke 7196', 'Ini adalah contoh postingan ke 7196', NULL);
INSERT INTO `post` VALUES (7197, 'Ini adalah judul ke 7197', 'Ini adalah contoh postingan ke 7197', NULL);
INSERT INTO `post` VALUES (7213, 'Ini adalah judul ke 7213', 'Ini adalah contoh postingan ke 7213', NULL);
INSERT INTO `post` VALUES (7214, 'Ini adalah judul ke 7214', 'Ini adalah contoh postingan ke 7214', NULL);
INSERT INTO `post` VALUES (7215, 'Ini adalah judul ke 7215', 'Ini adalah contoh postingan ke 7215', NULL);
INSERT INTO `post` VALUES (7216, 'Ini adalah judul ke 7216', 'Ini adalah contoh postingan ke 7216', NULL);
INSERT INTO `post` VALUES (7217, 'Ini adalah judul ke 7217', 'Ini adalah contoh postingan ke 7217', NULL);
INSERT INTO `post` VALUES (7218, 'Ini adalah judul ke 7218', 'Ini adalah contoh postingan ke 7218', NULL);
INSERT INTO `post` VALUES (7219, 'Ini adalah judul ke 7219', 'Ini adalah contoh postingan ke 7219', NULL);
INSERT INTO `post` VALUES (7220, 'Ini adalah judul ke 7220', 'Ini adalah contoh postingan ke 7220', NULL);
INSERT INTO `post` VALUES (7221, 'Ini adalah judul ke 7221', 'Ini adalah contoh postingan ke 7221', NULL);
INSERT INTO `post` VALUES (7222, 'Ini adalah judul ke 7222', 'Ini adalah contoh postingan ke 7222', NULL);
INSERT INTO `post` VALUES (7223, 'Ini adalah judul ke 7223', 'Ini adalah contoh postingan ke 7223', NULL);
INSERT INTO `post` VALUES (7224, 'Ini adalah judul ke 7224', 'Ini adalah contoh postingan ke 7224', NULL);
INSERT INTO `post` VALUES (7225, 'Ini adalah judul ke 7225', 'Ini adalah contoh postingan ke 7225', NULL);
INSERT INTO `post` VALUES (7226, 'Ini adalah judul ke 7226', 'Ini adalah contoh postingan ke 7226', NULL);
INSERT INTO `post` VALUES (7227, 'Ini adalah judul ke 7227', 'Ini adalah contoh postingan ke 7227', NULL);
INSERT INTO `post` VALUES (7228, 'Ini adalah judul ke 7228', 'Ini adalah contoh postingan ke 7228', NULL);
INSERT INTO `post` VALUES (7229, 'Ini adalah judul ke 7229', 'Ini adalah contoh postingan ke 7229', NULL);
INSERT INTO `post` VALUES (7230, 'Ini adalah judul ke 7230', 'Ini adalah contoh postingan ke 7230', NULL);
INSERT INTO `post` VALUES (7231, 'Ini adalah judul ke 7231', 'Ini adalah contoh postingan ke 7231', NULL);
INSERT INTO `post` VALUES (7232, 'Ini adalah judul ke 7232', 'Ini adalah contoh postingan ke 7232', NULL);
INSERT INTO `post` VALUES (7233, 'Ini adalah judul ke 7233', 'Ini adalah contoh postingan ke 7233', NULL);
INSERT INTO `post` VALUES (7234, 'Ini adalah judul ke 7234', 'Ini adalah contoh postingan ke 7234', NULL);
INSERT INTO `post` VALUES (7235, 'Ini adalah judul ke 7235', 'Ini adalah contoh postingan ke 7235', NULL);
INSERT INTO `post` VALUES (7236, 'Ini adalah judul ke 7236', 'Ini adalah contoh postingan ke 7236', NULL);
INSERT INTO `post` VALUES (7237, 'Ini adalah judul ke 7237', 'Ini adalah contoh postingan ke 7237', NULL);
INSERT INTO `post` VALUES (7238, 'Ini adalah judul ke 7238', 'Ini adalah contoh postingan ke 7238', NULL);
INSERT INTO `post` VALUES (7239, 'Ini adalah judul ke 7239', 'Ini adalah contoh postingan ke 7239', NULL);
INSERT INTO `post` VALUES (7240, 'Ini adalah judul ke 7240', 'Ini adalah contoh postingan ke 7240', NULL);
INSERT INTO `post` VALUES (7241, 'Ini adalah judul ke 7241', 'Ini adalah contoh postingan ke 7241', NULL);
INSERT INTO `post` VALUES (7242, 'Ini adalah judul ke 7242', 'Ini adalah contoh postingan ke 7242', NULL);
INSERT INTO `post` VALUES (7243, 'Ini adalah judul ke 7243', 'Ini adalah contoh postingan ke 7243', NULL);
INSERT INTO `post` VALUES (7244, 'Ini adalah judul ke 7244', 'Ini adalah contoh postingan ke 7244', NULL);

-- ----------------------------
-- Table structure for table_comment
-- ----------------------------
DROP TABLE IF EXISTS `table_comment`;
CREATE TABLE `table_comment`  (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `status` int NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `post_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table_comment
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `akses` enum('admin','writer','reviewer') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'shofiudin', 'admin@mailinator.com', '97c01c3621ed5f4e5a3930ca0d2ded3c', 'admin');
INSERT INTO `user` VALUES (2, 'ahmad1', 'ahmad@mail.com', '75600638af31e25be331e95daf8bb130', 'writer');
INSERT INTO `user` VALUES (3, 'yusuf', 'reviewer@mailinator.com', '0b8fd41d0f966825952c403a5b84dee7', 'reviewer');

SET FOREIGN_KEY_CHECKS = 1;
