SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `actors_films`
-- ----------------------------
DROP TABLE IF EXISTS `actors_films`;
CREATE TABLE `actors_films` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`person_id`  int(10) UNSIGNED NOT NULL ,
`film_id`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `publisher_id` (`person_id`) USING BTREE ,
INDEX `book_id` (`film_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=44691

;

-- ----------------------------
-- Table structure for `albums`
-- ----------------------------
DROP TABLE IF EXISTS `albums`;
CREATE TABLE `albums` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`alt_name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`description`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`year`  int(4) UNSIGNED NULL DEFAULT NULL ,
`verified`  tinyint(1) UNSIGNED NOT NULL DEFAULT 1 ,
`created_at`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`updated_at`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
PRIMARY KEY (`id`),
UNIQUE INDEX `id` (`id`) USING BTREE ,
INDEX `created_at` (`created_at`) USING BTREE ,
INDEX `name` (`name`) USING BTREE ,
INDEX `year` (`year`) USING BTREE ,
INDEX `verified` (`verified`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=3320

;

-- ----------------------------
-- Table structure for `albums_tracks`
-- ----------------------------
DROP TABLE IF EXISTS `albums_tracks`;
CREATE TABLE `albums_tracks` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`track_id`  int(10) UNSIGNED NOT NULL ,
`album_id`  int(10) UNSIGNED NOT NULL ,
`created_at`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`updated_at`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
PRIMARY KEY (`id`),
INDEX `album_id` (`album_id`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=18250

;

-- ----------------------------
-- Table structure for `bands`
-- ----------------------------
DROP TABLE IF EXISTS `bands`;
CREATE TABLE `bands` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`alt_name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`photo`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`description`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`created_at`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`updated_at`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
`country`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=5844

;

-- ----------------------------
-- Table structure for `bands_albums`
-- ----------------------------
DROP TABLE IF EXISTS `bands_albums`;
CREATE TABLE `bands_albums` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`band_id`  int(10) UNSIGNED NOT NULL ,
`album_id`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`band_id`) REFERENCES `bands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `publisher_id` (`band_id`) USING BTREE ,
INDEX `book_id` (`album_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=4178

;

-- ----------------------------
-- Table structure for `bands_persons`
-- ----------------------------
DROP TABLE IF EXISTS `bands_persons`;
CREATE TABLE `bands_persons` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`band_id`  int(10) UNSIGNED NOT NULL ,
`person_id`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`band_id`) REFERENCES `bands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `publisher_id` (`band_id`) USING BTREE ,
INDEX `book_id` (`person_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `books`
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`alt_name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`description`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`year`  int(4) UNSIGNED NULL DEFAULT NULL ,
`verified`  tinyint(1) UNSIGNED NOT NULL DEFAULT 1 ,
`created_at`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ,
`updated_at`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
PRIMARY KEY (`id`),
UNIQUE INDEX `id` (`id`) USING BTREE ,
INDEX `created_at` (`created_at`) USING BTREE ,
INDEX `name` (`name`) USING BTREE ,
INDEX `year` (`year`) USING BTREE ,
INDEX `verified` (`verified`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=19747

;

-- ----------------------------
-- Table structure for `companies`
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`alt_name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`description`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1749

;

-- ----------------------------
-- Table structure for `countries`
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`),
UNIQUE INDEX `id` (`id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=66

;

-- ----------------------------
-- Table structure for `countries_films`
-- ----------------------------
DROP TABLE IF EXISTS `countries_films`;
CREATE TABLE `countries_films` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`country_id`  int(10) UNSIGNED NOT NULL ,
`film_id`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `country_id` (`country_id`) USING BTREE ,
INDEX `film_id` (`film_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=20340

;

-- ----------------------------
-- Table structure for `developers_games`
-- ----------------------------
DROP TABLE IF EXISTS `developers_games`;
CREATE TABLE `developers_games` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`company_id`  int(10) UNSIGNED NOT NULL ,
`game_id`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`game_id`) REFERENCES `games` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `publisher_id` (`company_id`) USING BTREE ,
INDEX `book_id` (`game_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=5931

;

-- ----------------------------
-- Table structure for `directors_films`
-- ----------------------------
DROP TABLE IF EXISTS `directors_films`;
CREATE TABLE `directors_films` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`person_id`  int(10) UNSIGNED NOT NULL ,
`film_id`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `publisher_id` (`person_id`) USING BTREE ,
INDEX `book_id` (`film_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=17750

;

-- ----------------------------
-- Table structure for `elements_genres`
-- ----------------------------
DROP TABLE IF EXISTS `elements_genres`;
CREATE TABLE `elements_genres` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`genre_id`  int(10) UNSIGNED NOT NULL ,
`element_id`  int(10) UNSIGNED NOT NULL ,
`element_type`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`created_at`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ,
`updated_at`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
PRIMARY KEY (`id`),
FOREIGN KEY (`element_type`) REFERENCES `sections` (`type`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
UNIQUE INDEX `id` (`id`) USING BTREE ,
INDEX `genre_id` (`genre_id`) USING BTREE ,
INDEX `element_id` (`element_id`) USING BTREE ,
INDEX `element_type` (`element_type`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=136788

;

-- ----------------------------
-- Table structure for `elements_relations`
-- ----------------------------
DROP TABLE IF EXISTS `elements_relations`;
CREATE TABLE `elements_relations` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`element_id`  int(10) UNSIGNED NOT NULL ,
`element_type`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL ,
`relation_id`  int(10) UNSIGNED NOT NULL ,
`to_id`  int(10) UNSIGNED NOT NULL ,
`to_type`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`relation_id`) REFERENCES `relations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `relation_id` (`relation_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci
AUTO_INCREMENT=29701

;

-- ----------------------------
-- Table structure for `films`
-- ----------------------------
DROP TABLE IF EXISTS `films`;
CREATE TABLE `films` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`alt_name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`description`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`year`  int(4) UNSIGNED NULL DEFAULT NULL ,
`length`  int(5) UNSIGNED NULL DEFAULT 0 ,
`verified`  tinyint(1) NOT NULL DEFAULT 1 ,
`created_at`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ,
`updated_at`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
PRIMARY KEY (`id`),
UNIQUE INDEX `id` (`id`) USING BTREE ,
INDEX `created_at` (`created_at`) USING BTREE ,
INDEX `name` (`name`) USING BTREE ,
INDEX `alt_name` (`alt_name`) USING BTREE ,
INDEX `year` (`year`) USING BTREE ,
INDEX `verified` (`verified`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=9469

;

-- ----------------------------
-- Table structure for `games`
-- ----------------------------
DROP TABLE IF EXISTS `games`;
CREATE TABLE `games` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`alt_name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`description`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`year`  int(4) UNSIGNED NULL DEFAULT NULL ,
`verified`  tinyint(1) UNSIGNED NOT NULL DEFAULT 1 ,
`created_at`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ,
`updated_at`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
PRIMARY KEY (`id`),
UNIQUE INDEX `id` (`id`) USING BTREE ,
INDEX `created_at` (`created_at`) USING BTREE ,
INDEX `name` (`name`) USING BTREE ,
INDEX `year` (`year`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=23176

;

-- ----------------------------
-- Table structure for `genres`
-- ----------------------------
DROP TABLE IF EXISTS `genres`;
CREATE TABLE `genres` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`alt_name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`description`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`element_type`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Game' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=174

;

-- ----------------------------
-- Table structure for `persons`
-- ----------------------------
DROP TABLE IF EXISTS `persons`;
CREATE TABLE `persons` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`alt_name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`photo`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`description`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`created_at`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`updated_at`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=32971

;

-- ----------------------------
-- Table structure for `platforms`
-- ----------------------------
DROP TABLE IF EXISTS `platforms`;
CREATE TABLE `platforms` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=42

;

-- ----------------------------
-- Table structure for `platforms_games`
-- ----------------------------
DROP TABLE IF EXISTS `platforms_games`;
CREATE TABLE `platforms_games` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`platform_id`  int(10) UNSIGNED NOT NULL ,
`game_id`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`game_id`) REFERENCES `games` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`platform_id`) REFERENCES `platforms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `genre_id` (`platform_id`) USING BTREE ,
INDEX `book_id` (`game_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=30404

;

-- ----------------------------
-- Table structure for `producers_films`
-- ----------------------------
DROP TABLE IF EXISTS `producers_films`;
CREATE TABLE `producers_films` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`person_id`  int(10) UNSIGNED NOT NULL ,
`film_id`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `publisher_id` (`person_id`) USING BTREE ,
INDEX `book_id` (`film_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=21453

;

-- ----------------------------
-- Table structure for `publishers_books`
-- ----------------------------
DROP TABLE IF EXISTS `publishers_books`;
CREATE TABLE `publishers_books` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`company_id`  int(10) UNSIGNED NOT NULL ,
`book_id`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`id`),
INDEX `publisher_id` (`company_id`) USING BTREE ,
INDEX `book_id` (`book_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=4667

;

-- ----------------------------
-- Table structure for `publishers_games`
-- ----------------------------
DROP TABLE IF EXISTS `publishers_games`;
CREATE TABLE `publishers_games` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`company_id`  int(10) UNSIGNED NOT NULL ,
`game_id`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`game_id`) REFERENCES `games` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `publisher_id` (`company_id`) USING BTREE ,
INDEX `book_id` (`game_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=6844

;

-- ----------------------------
-- Table structure for `relations`
-- ----------------------------
DROP TABLE IF EXISTS `relations`;
CREATE TABLE `relations` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL ,
`alt_name`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci
AUTO_INCREMENT=9

;

-- ----------------------------
-- Table structure for `screenwriters_films`
-- ----------------------------
DROP TABLE IF EXISTS `screenwriters_films`;
CREATE TABLE `screenwriters_films` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`person_id`  int(10) UNSIGNED NOT NULL ,
`film_id`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `publisher_id` (`person_id`) USING BTREE ,
INDEX `book_id` (`film_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=25953

;

-- ----------------------------
-- Table structure for `sections`
-- ----------------------------
DROP TABLE IF EXISTS `sections`;
CREATE TABLE `sections` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`alt_name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`type`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`parent_id`  int(10) UNSIGNED NULL DEFAULT NULL ,
`route`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
INDEX `type` (`type`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=28

;

-- ----------------------------
-- Table structure for `tracks`
-- ----------------------------
DROP TABLE IF EXISTS `tracks`;
CREATE TABLE `tracks` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`length`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' ,
`album_id`  int(10) UNSIGNED NOT NULL ,
`created_at`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`updated_at`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
`order`  int(10) UNSIGNED NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
INDEX `album_id` (`album_id`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=11901

;

-- ----------------------------
-- Table structure for `writers_books`
-- ----------------------------
DROP TABLE IF EXISTS `writers_books`;
CREATE TABLE `writers_books` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`person_id`  int(10) UNSIGNED NOT NULL ,
`book_id`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `writer_id` (`person_id`) USING BTREE ,
INDEX `book_id` (`book_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=19860

;

-- ----------------------------
-- Table structure for `writers_genres`
-- ----------------------------
DROP TABLE IF EXISTS `writers_genres`;
CREATE TABLE `writers_genres` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`person_id`  int(10) UNSIGNED NOT NULL ,
`genre_id`  int(10) UNSIGNED NOT NULL ,
`weight`  double NOT NULL ,
`element_type`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`),
INDEX `person_id` (`person_id`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=5235

;

-- ----------------------------
-- Auto increment value for `actors_films`
-- ----------------------------
ALTER TABLE `actors_films` AUTO_INCREMENT=44691;

-- ----------------------------
-- Auto increment value for `albums`
-- ----------------------------
ALTER TABLE `albums` AUTO_INCREMENT=3320;

-- ----------------------------
-- Auto increment value for `albums_tracks`
-- ----------------------------
ALTER TABLE `albums_tracks` AUTO_INCREMENT=18250;

-- ----------------------------
-- Auto increment value for `bands`
-- ----------------------------
ALTER TABLE `bands` AUTO_INCREMENT=5844;

-- ----------------------------
-- Auto increment value for `bands_albums`
-- ----------------------------
ALTER TABLE `bands_albums` AUTO_INCREMENT=4178;

-- ----------------------------
-- Auto increment value for `bands_persons`
-- ----------------------------
ALTER TABLE `bands_persons` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `books`
-- ----------------------------
ALTER TABLE `books` AUTO_INCREMENT=19747;

-- ----------------------------
-- Auto increment value for `companies`
-- ----------------------------
ALTER TABLE `companies` AUTO_INCREMENT=1749;

-- ----------------------------
-- Auto increment value for `countries`
-- ----------------------------
ALTER TABLE `countries` AUTO_INCREMENT=66;

-- ----------------------------
-- Auto increment value for `countries_films`
-- ----------------------------
ALTER TABLE `countries_films` AUTO_INCREMENT=20340;

-- ----------------------------
-- Auto increment value for `developers_games`
-- ----------------------------
ALTER TABLE `developers_games` AUTO_INCREMENT=5931;

-- ----------------------------
-- Auto increment value for `directors_films`
-- ----------------------------
ALTER TABLE `directors_films` AUTO_INCREMENT=17750;

-- ----------------------------
-- Auto increment value for `elements_genres`
-- ----------------------------
ALTER TABLE `elements_genres` AUTO_INCREMENT=136788;

-- ----------------------------
-- Auto increment value for `elements_relations`
-- ----------------------------
ALTER TABLE `elements_relations` AUTO_INCREMENT=29701;

-- ----------------------------
-- Auto increment value for `films`
-- ----------------------------
ALTER TABLE `films` AUTO_INCREMENT=9469;

-- ----------------------------
-- Auto increment value for `games`
-- ----------------------------
ALTER TABLE `games` AUTO_INCREMENT=23176;

-- ----------------------------
-- Auto increment value for `genres`
-- ----------------------------
ALTER TABLE `genres` AUTO_INCREMENT=174;

-- ----------------------------
-- Auto increment value for `persons`
-- ----------------------------
ALTER TABLE `persons` AUTO_INCREMENT=32971;

-- ----------------------------
-- Auto increment value for `platforms`
-- ----------------------------
ALTER TABLE `platforms` AUTO_INCREMENT=42;

-- ----------------------------
-- Auto increment value for `platforms_games`
-- ----------------------------
ALTER TABLE `platforms_games` AUTO_INCREMENT=30404;

-- ----------------------------
-- Auto increment value for `producers_films`
-- ----------------------------
ALTER TABLE `producers_films` AUTO_INCREMENT=21453;

-- ----------------------------
-- Auto increment value for `publishers_books`
-- ----------------------------
ALTER TABLE `publishers_books` AUTO_INCREMENT=4667;

-- ----------------------------
-- Auto increment value for `publishers_games`
-- ----------------------------
ALTER TABLE `publishers_games` AUTO_INCREMENT=6844;

-- ----------------------------
-- Auto increment value for `relations`
-- ----------------------------
ALTER TABLE `relations` AUTO_INCREMENT=9;

-- ----------------------------
-- Auto increment value for `screenwriters_films`
-- ----------------------------
ALTER TABLE `screenwriters_films` AUTO_INCREMENT=25953;

-- ----------------------------
-- Auto increment value for `sections`
-- ----------------------------
ALTER TABLE `sections` AUTO_INCREMENT=28;

-- ----------------------------
-- Auto increment value for `tracks`
-- ----------------------------
ALTER TABLE `tracks` AUTO_INCREMENT=11901;

-- ----------------------------
-- Auto increment value for `writers_books`
-- ----------------------------
ALTER TABLE `writers_books` AUTO_INCREMENT=19860;

-- ----------------------------
-- Auto increment value for `writers_genres`
-- ----------------------------
ALTER TABLE `writers_genres` AUTO_INCREMENT=5235;
