-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2024 at 11:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be22_exam6_bigeventsnavidjafartash`
--
CREATE DATABASE IF NOT EXISTS `be22_exam6_bigeventsnavidjafartash` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be22_exam6_bigeventsnavidjafartash`;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240816091550', '2024-08-16 11:16:01', 38),
('DoctrineMigrations\\Version20240816093015', '2024-08-16 11:30:25', 7);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `date` datetime NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `capacity` int(11) NOT NULL,
  `contact_email` varchar(50) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `address` varchar(150) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `date`, `description`, `image`, `capacity`, `contact_email`, `contact_phone`, `address`, `url`, `type`) VALUES
(6, 'Rock Concert', '2024-08-20 19:00:00', 'A rock concert featuring popular bands.', 'https://media.istockphoto.com/id/1330424071/es/foto/gran-grupo-de-personas-en-una-fiesta-de-concierto.jpg?s=612x612&w=0&k=20&c=D-c2OQ-qk7g7CXHDWXz_qLWLffiJYSYb6lj1hYGQxGw=', 500, 'info@rockconcert.com', '123-456-7890', '123 Main St, Rock City', 'https://rockconcert.com', 'music'),
(7, 'Charity Marathon', '2024-09-05 08:00:00', 'Join us for a marathon to support local charities.', 'https://img.freepik.com/premium-photo/poster-marathon-with-woman-running-front-sunset-background_950347-5226.jpg', 1000, 'contact@marathoncharity.com', '987-654-3210', '456 Park Ave, Marathon Town', 'https://marathoncharity.com', 'sport'),
(8, 'Film Festival', '2024-10-10 15:00:00', 'A festival showcasing indie films from around the world.', 'https://img.freepik.com/free-vector/cinema-movie-film-festival-background_1017-23458.jpg', 300, 'films@filmfest.com', '555-555-5555', '789 Elm St, Movie City', 'https://filmfest.com', 'movie'),
(9, 'Theater Play', '2024-11-15 18:00:00', 'A classical theater performance by renowned actors.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXnV3SKvK4yF3q109q_pwnVnmTuMYUhG-QTw&s', 150, 'tickets@theater.com', '444-444-4444', '321 Broadway St, Theater Town', 'https://theater.com', 'theater'),
(10, 'Jazz Night', '2024-08-25 20:00:00', 'An evening of smooth jazz and good vibes.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpB_s_J4YPlMTIF-3p3ZLQIB83UJTBrKcfHQ&s', 200, 'events@jazznight.com', '333-333-3333', '987 Jazz St, Music City', 'https://jazznight.com', 'music'),
(11, 'Football Match', '2024-09-15 17:00:00', 'A thrilling football match between top teams.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQbnSl6n0QRvyW47XJUVWywAlE9esIiffLIg&s', 750, 'tickets@footballmatch.com', '222-222-2222', '123 Stadium Rd, Sport Town', 'https://footballmatch.com', 'sport'),
(12, 'Movie Premiere', '2024-11-01 20:00:00', 'Premiere of the latest blockbuster movie.', 'https://people.com/thmb/L1TGUhdrSDur9GDQm7uqw15C23A=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(999x0:1001x2)/cast-barbie-premiere-071023-e5f33c8c6c6c4266b9696e6ce5599503.jpg', 400, 'info@moviepremiere.com', '111-111-1111', '456 Cinema St, Movie City', 'https://moviepremiere.com', 'movie'),
(13, 'Broadway Musical', '2024-12-05 19:30:00', 'A spectacular Broadway musical performance.', 'https://www.hollywoodreporter.com/wp-content/uploads/2023/07/newyorknewyork.jpg', 250, 'tickets@broadwaymusical.com', '666-666-6666', '789 Theater St, Broadway City', 'https://broadwaymusical.com', 'theater'),
(14, 'Classical Music Concert', '2024-10-20 18:00:00', 'A concert featuring classical music by famous composers.', 'https://i.ytimg.com/vi/4rgSzQwe5DQ/hq720.jpg?sqp=-oaymwEXCK4FEIIDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLD08iCk10agWUgmZTJ3JSPEVbXGiQ', 350, 'contact@classicalmusic.com', '777-777-7777', '321 Music Hall, Classic Town', 'https://classicalmusic.com', 'music'),
(15, 'Basketball Championship', '2024-11-25 19:00:00', 'The final match of the basketball championship.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNOBYpfu5aRpqpOKHKpIoIKt6E6HFwBMRvjQ&s', 800, 'info@basketballchampionship.com', '888-888-8888', '456 Arena Rd, Sport City', 'https://basketballchampionship.com', 'sport');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
