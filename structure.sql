/*
 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 17/12/2025 09:21:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for actors_films
-- ----------------------------
DROP TABLE IF EXISTS `actors_films`;
CREATE TABLE `actors_films`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `person_id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `publisher_id`(`person_id`) USING BTREE,
  INDEX `book_id`(`film_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50512 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for albums
-- ----------------------------
DROP TABLE IF EXISTS `albums`;
CREATE TABLE `albums`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alt_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `year` int(4) UNSIGNED NULL DEFAULT NULL,
  `verified` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `created_at`(`created_at`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `year`(`year`) USING BTREE,
  INDEX `verified`(`verified`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3320 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for albums_tracks
-- ----------------------------
DROP TABLE IF EXISTS `albums_tracks`;
CREATE TABLE `albums_tracks`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `track_id` int(10) UNSIGNED NOT NULL,
  `album_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `album_id`(`album_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18733 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for bands
-- ----------------------------
DROP TABLE IF EXISTS `bands`;
CREATE TABLE `bands`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alt_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5844 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for bands_albums
-- ----------------------------
DROP TABLE IF EXISTS `bands_albums`;
CREATE TABLE `bands_albums`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `band_id` int(10) UNSIGNED NOT NULL,
  `album_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `publisher_id`(`band_id`) USING BTREE,
  INDEX `book_id`(`album_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4208 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for bands_persons
-- ----------------------------
DROP TABLE IF EXISTS `bands_persons`;
CREATE TABLE `bands_persons`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `band_id` int(10) UNSIGNED NOT NULL,
  `person_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `publisher_id`(`band_id`) USING BTREE,
  INDEX `book_id`(`person_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alt_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `year` int(4) UNSIGNED NULL DEFAULT NULL,
  `verified` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `created_at`(`created_at`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `year`(`year`) USING BTREE,
  INDEX `verified`(`verified`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19887 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for collections
-- ----------------------------
DROP TABLE IF EXISTS `collections`;
CREATE TABLE `collections`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for companies
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alt_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2128 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for countries_films
-- ----------------------------
DROP TABLE IF EXISTS `countries_films`;
CREATE TABLE `countries_films`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `country_id`(`country_id`) USING BTREE,
  INDEX `film_id`(`film_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21573 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for developers_games
-- ----------------------------
DROP TABLE IF EXISTS `developers_games`;
CREATE TABLE `developers_games`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `company_id` int(10) UNSIGNED NOT NULL,
  `game_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `publisher_id`(`company_id`) USING BTREE,
  INDEX `book_id`(`game_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6478 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for directors_films
-- ----------------------------
DROP TABLE IF EXISTS `directors_films`;
CREATE TABLE `directors_films`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `person_id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `publisher_id`(`person_id`) USING BTREE,
  INDEX `book_id`(`film_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19083 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for elements_collections
-- ----------------------------
DROP TABLE IF EXISTS `elements_collections`;
CREATE TABLE `elements_collections`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `collection_id` int(10) UNSIGNED NOT NULL,
  `element_id` int(10) NOT NULL,
  `element_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `art_form_id`(`element_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5606 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for elements_genres
-- ----------------------------
DROP TABLE IF EXISTS `elements_genres`;
CREATE TABLE `elements_genres`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_id` int(10) UNSIGNED NOT NULL,
  `element_id` int(10) UNSIGNED NOT NULL,
  `element_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `genre_id`(`genre_id`) USING BTREE,
  INDEX `element_id`(`element_id`) USING BTREE,
  INDEX `element_type`(`element_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 142375 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for elements_relations
-- ----------------------------
DROP TABLE IF EXISTS `elements_relations`;
CREATE TABLE `elements_relations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `element_id` int(10) UNSIGNED NOT NULL,
  `element_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `relation_id` int(10) UNSIGNED NOT NULL,
  `to_id` int(10) UNSIGNED NOT NULL,
  `to_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `relation_id`(`relation_id`) USING BTREE,
  CONSTRAINT `elements_relations_ibfk_1` FOREIGN KEY (`relation_id`) REFERENCES `relations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 34605 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci;

-- ----------------------------
-- Table structure for films
-- ----------------------------
DROP TABLE IF EXISTS `films`;
CREATE TABLE `films`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alt_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `year` int(4) UNSIGNED NULL DEFAULT NULL,
  `length` int(5) UNSIGNED NULL DEFAULT 0,
  `verified` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `created_at`(`created_at`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `alt_name`(`alt_name`) USING BTREE,
  INDEX `year`(`year`) USING BTREE,
  INDEX `verified`(`verified`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10359 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for games
-- ----------------------------
DROP TABLE IF EXISTS `games`;
CREATE TABLE `games`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alt_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `year` int(4) UNSIGNED NULL DEFAULT NULL,
  `verified` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `created_at`(`created_at`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `year`(`year`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23176 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for genres
-- ----------------------------
DROP TABLE IF EXISTS `genres`;
CREATE TABLE `genres`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alt_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `element_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Game',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 174 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for persons
-- ----------------------------
DROP TABLE IF EXISTS `persons`;
CREATE TABLE `persons`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alt_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36771 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for platforms
-- ----------------------------
DROP TABLE IF EXISTS `platforms`;
CREATE TABLE `platforms`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for platforms_games
-- ----------------------------
DROP TABLE IF EXISTS `platforms_games`;
CREATE TABLE `platforms_games`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `platform_id` int(10) UNSIGNED NOT NULL,
  `game_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `genre_id`(`platform_id`) USING BTREE,
  INDEX `book_id`(`game_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31303 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for producers_films
-- ----------------------------
DROP TABLE IF EXISTS `producers_films`;
CREATE TABLE `producers_films`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `person_id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `publisher_id`(`person_id`) USING BTREE,
  INDEX `book_id`(`film_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24059 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for publishers_books
-- ----------------------------
DROP TABLE IF EXISTS `publishers_books`;
CREATE TABLE `publishers_books`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `company_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `publisher_id`(`company_id`) USING BTREE,
  INDEX `book_id`(`book_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5793 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for publishers_games
-- ----------------------------
DROP TABLE IF EXISTS `publishers_games`;
CREATE TABLE `publishers_games`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `company_id` int(10) UNSIGNED NOT NULL,
  `game_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `publisher_id`(`company_id`) USING BTREE,
  INDEX `book_id`(`game_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7422 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for relations
-- ----------------------------
DROP TABLE IF EXISTS `relations`;
CREATE TABLE `relations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alt_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci;

-- ----------------------------
-- Table structure for screenwriters_films
-- ----------------------------
DROP TABLE IF EXISTS `screenwriters_films`;
CREATE TABLE `screenwriters_films`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `person_id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `publisher_id`(`person_id`) USING BTREE,
  INDEX `book_id`(`film_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28121 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for sections
-- ----------------------------
DROP TABLE IF EXISTS `sections`;
CREATE TABLE `sections`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alt_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `route` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for tracks
-- ----------------------------
DROP TABLE IF EXISTS `tracks`;
CREATE TABLE `tracks`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `length` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `album_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `order` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `album_id`(`album_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11901 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for writers_books
-- ----------------------------
DROP TABLE IF EXISTS `writers_books`;
CREATE TABLE `writers_books`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `person_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `writer_id`(`person_id`) USING BTREE,
  INDEX `book_id`(`book_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20595 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for writers_genres
-- ----------------------------
DROP TABLE IF EXISTS `writers_genres`;
CREATE TABLE `writers_genres`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `person_id` int(10) UNSIGNED NOT NULL,
  `genre_id` int(10) UNSIGNED NOT NULL,
  `weight` double NOT NULL,
  `element_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `person_id`(`person_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5235 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

SET FOREIGN_KEY_CHECKS = 1;
