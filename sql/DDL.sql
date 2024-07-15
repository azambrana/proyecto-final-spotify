CREATE DATABASE IF NOT EXISTS spotify;

USE spotify;

-- spotify.album definition

CREATE TABLE `album` (
  `id` varchar(25) NOT NULL,
  `name` longtext,
  `album_group` longtext,
  `album_type` longtext,
  `release_date` varchar(21) DEFAULT NULL,
  `popularity` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- spotify.artist definition

CREATE TABLE `artist` (
  `name` longtext,
  `id` varchar(25) NOT NULL,
  `popularity` int DEFAULT NULL,
  `followers` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- spotify.audio_feature definition

CREATE TABLE `audio_feature` (
  `id` varchar(25) NOT NULL,
  `acousticness` double DEFAULT NULL,
  `analysis_url` longtext,
  `danceability` double DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `energy` double DEFAULT NULL,
  `instrumentalness` double DEFAULT NULL,
  `key` int DEFAULT NULL,
  `liveness` double DEFAULT NULL,
  `loudness` double DEFAULT NULL,
  `mode` int DEFAULT NULL,
  `speechiness` double DEFAULT NULL,
  `tempo` double DEFAULT NULL,
  `time_signature` int DEFAULT NULL,
  `valence` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- spotify.genre definition

CREATE TABLE `genre` (
  `id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- spotify.r_album_artist definition

CREATE TABLE `r_album_artist` (
  `album_id` varchar(25) NOT NULL,
  `artist_id` varchar(25) NOT NULL,
  PRIMARY KEY (`album_id`,`artist_id`),
  KEY `FK_r_album_artist_artist` (`artist_id`),
  CONSTRAINT `FK_r_album_artist_album` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`),
  CONSTRAINT `FK_r_album_artist_artist` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- spotify.r_artist_genre definition

CREATE TABLE `r_artist_genre` (
  `genre_id` varchar(50) NOT NULL,
  `artist_id` varchar(25) NOT NULL,
  PRIMARY KEY (`genre_id`,`artist_id`),
  KEY `FK_r_artist_genre_artist` (`artist_id`),
  CONSTRAINT `FK_r_artist_genre_artist` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`id`),
  CONSTRAINT `FK_r_artist_genre_genre` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- spotify.track definition

CREATE TABLE `track` (
  `id` varchar(25) NOT NULL,
  `disc_number` int DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `explicit` int DEFAULT NULL,
  `audio_feature_id` varchar(25) DEFAULT NULL,
  `name` longtext,
  `preview_url` longtext,
  `track_number` int DEFAULT NULL,
  `popularity` int DEFAULT NULL,
  `is_playable` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_track_audio_feature` (`audio_feature_id`),
  CONSTRAINT `FK_track_audio_feature` FOREIGN KEY (`audio_feature_id`) REFERENCES `audio_feature` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- spotify.charts definition

CREATE TABLE `charts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(191) DEFAULT NULL,
  `chart_rank` bigint DEFAULT NULL,
  `artist` text,
  `url` varchar(53) DEFAULT NULL,
  `region` varchar(7) DEFAULT NULL,
  `chart` varchar(7) DEFAULT NULL,
  `trend` varchar(13) DEFAULT NULL,
  `streams` bigint DEFAULT NULL,
  `track_id` varchar(25) DEFAULT NULL,
  `chart_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_charts_track` (`track_id`),
  CONSTRAINT `FK_charts_track` FOREIGN KEY (`track_id`) REFERENCES `track` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=404514 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- spotify.r_album_track definition

CREATE TABLE `r_album_track` (
  `album_id` varchar(25) NOT NULL,
  `track_id` varchar(25) NOT NULL,
  PRIMARY KEY (`album_id`,`track_id`),
  KEY `FK_r_album_track_track` (`track_id`),
  CONSTRAINT `FK_r_album_track_album` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`),
  CONSTRAINT `FK_r_album_track_track` FOREIGN KEY (`track_id`) REFERENCES `track` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- spotify.r_track_artist definition

CREATE TABLE `r_track_artist` (
  `track_id` varchar(50) NOT NULL,
  `artist_id` varchar(25) NOT NULL,
  PRIMARY KEY (`track_id`,`artist_id`),
  KEY `FK_r_track_artist_artist` (`artist_id`),
  CONSTRAINT `FK_r_track_artist_artist` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`id`),
  CONSTRAINT `FK_r_track_artist_track` FOREIGN KEY (`track_id`) REFERENCES `track` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;