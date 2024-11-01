-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 01, 2024 at 11:10 AM
-- Server version: 10.11.9-MariaDB-cll-lve
-- PHP Version: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u3449472_wh`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `no` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `uom` varchar(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `item_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`no`, `item_name`, `uom`, `created_at`, `updated_at`, `item_id`) VALUES
(1, 'dummy1', 'crtn', '2024-10-31 13:18:35', '2024-10-31 13:18:35', 'DO01F0001'),
(2, 'dummy2', 'pcs', '2024-10-31 12:59:02', '2024-10-31 12:59:02', 'DO01F0002'),
(3, 'cek', 'mtr', '0000-00-00 00:00:00', '2024-11-01 00:34:50', 'DO01F0003'),
(4, 'dummy 2', 'pack', '2024-11-01 00:49:54', '0000-00-00 00:00:00', 'DO01F0004'),
(5, 'dummy 5', 'pack', '2024-11-01 01:59:41', '0000-00-00 00:00:00', 'DO01F00012');

-- --------------------------------------------------------

--
-- Table structure for table `items_in`
--

CREATE TABLE `items_in` (
  `id` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_history`
--

CREATE TABLE `item_history` (
  `id` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `user` varchar(40) NOT NULL,
  `note` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `item_history`
--

INSERT INTO `item_history` (`id`, `id_item`, `qty`, `created_at`, `updated_at`, `user`, `note`) VALUES
(0, 0, 0, '2024-11-01 01:59:41', '0000-00-00 00:00:00', 'nama User', 'Tambah Nama Barang');

-- --------------------------------------------------------

--
-- Table structure for table `item_out`
--

CREATE TABLE `item_out` (
  `id` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `items_in`
--
ALTER TABLE `items_in`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `items_in`
--
ALTER TABLE `items_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
