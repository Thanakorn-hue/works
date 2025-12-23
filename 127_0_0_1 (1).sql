-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2025 at 10:04 AM
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
-- Database: `cvcchaadb`
--
CREATE DATABASE IF NOT EXISTS `cvcchaadb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cvcchaadb`;

-- --------------------------------------------------------

--
-- Table structure for table `build_mater_equip`
--

CREATE TABLE `build_mater_equip` (
  `mat_id` int(7) NOT NULL COMMENT 'รหัสวัสดุ',
  `mat_name` varchar(200) NOT NULL,
  `category_id` int(3) NOT NULL,
  `quantity` int(7) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `min_stock` int(7) NOT NULL DEFAULT 0,
  `max_stock` int(7) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `build_mater_equip`
--

INSERT INTO `build_mater_equip` (`mat_id`, `mat_name`, `category_id`, `quantity`, `unit`, `min_stock`, `max_stock`, `status`) VALUES
(1, 'น้ำยาล้างห้องน้ำ', 2, 100, 'ขวด', 20, 200, 1),
(2, 'ประแจปากตาย', 3, 10, 'อัน', 10, 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `material_categories`
--

CREATE TABLE `material_categories` (
  `category_id` int(3) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material_categories`
--

INSERT INTO `material_categories` (`category_id`, `category_name`) VALUES
(1, 'วัสดุก่อสร้างและซ้อมบำรุง'),
(2, 'วัสดุทำความสะอาด'),
(3, 'เครื่องมือซ้อมบำรุง');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `role` enum('admin','staff','user') DEFAULT 'user',
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `build_mater_equip`
--
ALTER TABLE `build_mater_equip`
  ADD PRIMARY KEY (`mat_id`),
  ADD KEY `buid_mater` (`category_id`);

--
-- Indexes for table `material_categories`
--
ALTER TABLE `material_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `build_mater_equip`
--
ALTER TABLE `build_mater_equip`
  MODIFY `mat_id` int(7) NOT NULL AUTO_INCREMENT COMMENT 'รหัสวัสดุ', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `material_categories`
--
ALTER TABLE `material_categories`
  MODIFY `category_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `build_mater_equip`
--
ALTER TABLE `build_mater_equip`
  ADD CONSTRAINT `buid_mater` FOREIGN KEY (`category_id`) REFERENCES `material_categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
