-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2023 at 06:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_film`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `nama_film` varchar(200) NOT NULL,
  `id_genre` int(200) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `cover` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `nama_film`, `id_genre`, `duration`, `cover`, `created_at`, `updated_at`) VALUES
(1, 'Howls Moving Castle', 1, '1 j 59 m', 'hw.jpg', '2023-06-21 05:41:34', '2023-06-21 05:41:34'),
(2, 'Arriety', 1, '1 j 34 m', 'ar.jpg', '2023-06-21 05:44:24', '2023-06-21 05:44:24'),
(3, '5 CM', 2, '2 j 6m', '5cm.jpg', '2023-06-21 06:02:11', '2023-06-21 06:02:11'),
(4, 'The Little Mermaid', 5, '2 j 15 m', 'n.jpeg', '2023-06-21 06:02:11', '2023-06-21 06:02:11'),
(5, 'Dr Cha', 4, '1 j  60 m', 'dr.jpeg', '2023-06-21 06:05:30', '2023-06-21 06:05:30'),
(6, 'Spongebob Squerpants Movie', 3, '1 j 23 m', 'sp.png', '2023-06-21 06:15:34', '2023-06-21 06:15:34'),
(7, 'Beauty and The Beast', 5, '2 j 19 m', 'bb.jpg', '2023-06-21 06:16:46', '2023-06-21 06:16:46'),
(8, 'From Up On Poppy Hill', 6, ' 1 j 31 m', 'fr.jpg', '2023-06-21 06:22:55', '2023-06-21 06:22:55'),
(9, 'Princess Mononoke', 2, '2 j 13 m', 'pr.jpg', '2023-06-21 06:25:32', '2023-06-21 06:25:32'),
(10, 'Sprited Away', 1, '2 j 5 m', 'spr.jpg', '2023-06-21 06:25:32', '2023-06-21 06:25:32');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id_genre` int(11) NOT NULL,
  `nama_genre` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatet_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id_genre`, `nama_genre`, `created_at`, `updatet_at`) VALUES
(1, 'Fantasi', '2023-06-21 08:18:30', '2023-06-21 08:18:30'),
(2, 'adventure', '2023-06-21 08:18:59', '2023-06-21 08:18:59'),
(3, 'Komedi', '2023-06-21 08:20:10', '2023-06-21 08:20:10'),
(4, 'Family', '2023-06-21 08:20:10', '2023-06-21 08:20:10'),
(5, 'Musikal', '2023-06-21 08:20:37', '2023-06-21 08:20:37'),
(6, 'Romance', '2023-06-21 08:20:37', '2023-06-21 08:20:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_genre` (`id_genre`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
