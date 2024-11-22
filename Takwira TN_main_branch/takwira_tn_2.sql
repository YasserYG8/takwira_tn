-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2024 at 12:12 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `takwira_tn_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `field_id` int(11) NOT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `max_teams` int(11) DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `player_id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `player_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`player_id`, `team_id`, `player_name`) VALUES
(1, 1, 'mehdi'),
(2, 1, 'yessir'),
(3, 1, 'aziz'),
(4, 1, 'rayen'),
(5, 2, 'sadok'),
(6, 2, 'mohamed'),
(7, 2, 'rami'),
(8, 3, 'yoyoyoyo'),
(9, 3, 'hhh'),
(10, 3, 'hhh'),
(11, 4, 'yoyoyoyo'),
(12, 4, 'hhh'),
(13, 4, 'hhh'),
(14, 5, 'nourdine'),
(15, 5, 'dali'),
(16, 5, 'beha'),
(17, 5, 'meriem'),
(18, 5, 'ilef'),
(19, 6, 'kab'),
(20, 6, 'naj'),
(21, 6, 'bab'),
(22, 7, 'mk'),
(23, 7, 'lcdo'),
(24, 7, 'laya'),
(25, 8, 'ka'),
(26, 8, 'fl'),
(27, 8, 'fkl'),
(28, 9, 'lm'),
(29, 9, 'hgi'),
(30, 9, 'bv'),
(31, 10, 'kj'),
(32, 10, 'jg'),
(33, 10, 'bn'),
(34, 11, 'okopk'),
(35, 11, 'ojpiojo'),
(36, 12, 'kk'),
(37, 12, 'nb'),
(38, 12, 'll'),
(39, 13, 'mm'),
(40, 13, 'pp'),
(41, 14, 'kl'),
(42, 14, 'nc'),
(43, 15, 'kl'),
(44, 15, 'nc'),
(45, 16, 'kl'),
(46, 16, 'nc'),
(47, 17, 'kl'),
(48, 17, 'nc'),
(49, 18, 'cb'),
(50, 18, 'nd'),
(51, 19, 'rayen'),
(52, 19, 'mehfi......'),
(53, 20, 'mehdi'),
(54, 20, 'yessir'),
(55, 20, 'aziz'),
(56, 20, 'rayen'),
(57, 21, 'kl'),
(58, 21, 'nc');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(11) NOT NULL,
  `field_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `reservation_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reservation_id`, `field_id`, `team_id`, `reservation_datetime`) VALUES
(1, NULL, 1, '2024-11-29 23:23:00'),
(2, NULL, 3, '2024-12-18 05:28:00'),
(3, NULL, 8, '2024-12-24 04:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(100) NOT NULL,
  `captain_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`team_id`, `team_name`, `captain_name`, `created_at`) VALUES
(1, 'kartoush', NULL, '2024-11-14 17:12:39'),
(2, 'magrouna', NULL, '2024-11-14 17:14:38'),
(3, 'kartoush', NULL, '2024-11-14 17:26:38'),
(4, 'kartoush', NULL, '2024-11-14 17:28:38'),
(5, 'iset', NULL, '2024-11-14 21:47:01'),
(6, 'dille3', NULL, '2024-11-14 23:51:56'),
(7, 'fseg', NULL, '2024-11-14 23:56:44'),
(8, 'bkp,pefo', NULL, '2024-11-14 23:58:22'),
(9, 'kpojo^^', NULL, '2024-11-15 00:05:49'),
(10, 'jôp^k^pk', NULL, '2024-11-15 00:07:44'),
(11, 'jjjjjj', NULL, '2024-11-15 00:12:55'),
(12, 'kkkkkk', NULL, '2024-11-15 00:19:58'),
(13, 'mmmm', NULL, '2024-11-15 00:21:59'),
(14, 'manna', NULL, '2024-11-15 16:19:36'),
(15, 'manna', NULL, '2024-11-15 16:20:14'),
(16, 'kfk', NULL, '2024-11-15 16:26:52'),
(17, 'kfk', NULL, '2024-11-15 16:27:11'),
(18, 'mamamd', NULL, '2024-11-15 16:28:46'),
(19, 'team1', NULL, '2024-11-15 17:46:10'),
(20, 'kartoush', NULL, '2024-11-20 22:07:20'),
(21, 'magrouna', NULL, '2024-11-20 22:07:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`),
  ADD UNIQUE KEY `field_id` (`field_id`,`reservation_datetime`),
  ADD UNIQUE KEY `team_id` (`team_id`,`reservation_datetime`),
  ADD UNIQUE KEY `field_id_2` (`field_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`);

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`field_id`) REFERENCES `fields` (`field_id`),
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
