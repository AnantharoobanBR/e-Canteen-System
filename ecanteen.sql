-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2020 at 04:01 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecanteen`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` char(6) NOT NULL,
  `admin_name` varchar(30) NOT NULL,
  `admin_password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_password`) VALUES
('EC1001', 'ADMIN', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `canteen`
--

CREATE TABLE `canteen` (
  `canteen_id` char(2) NOT NULL,
  `canteen_name` varchar(15) DEFAULT NULL,
  `canteen_status` tinyint(1) DEFAULT NULL,
  `canteen_start_time` time DEFAULT NULL,
  `canteen_end_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `canteen`
--

INSERT INTO `canteen` (`canteen_id`, `canteen_name`, `canteen_status`, `canteen_start_time`, `canteen_end_time`) VALUES
('C1', 'F-BLOCK CANTEEN', 1, '07:00:00', '17:30:00'),
('C2', 'J-BLOCK CANTEEN', 0, '09:00:00', '17:00:00'),
('C3', 'A-BLOCK CANTEEN', 0, '09:00:00', '17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` char(6) NOT NULL,
  `emp_name` varchar(30) NOT NULL,
  `canteen_id` char(2) DEFAULT NULL,
  `emp_password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `canteen_id`, `emp_password`) VALUES
('EC1001', 'MALLIKA', 'C1', 'POORI'),
('EC1003', 'RAMASAMY', 'C2', '12345'),
('EC1020', 'SUNDAR', 'C1', 'PICHAI');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `food_id` char(2) NOT NULL,
  `food_name` varchar(150) NOT NULL,
  `food_price` tinyint(3) DEFAULT NULL,
  `initial_qty` tinyint(3) DEFAULT NULL,
  `food_qty` tinyint(3) DEFAULT 0,
  `food_img` varchar(60) DEFAULT NULL,
  `food_status` tinyint(1) DEFAULT 0,
  `session` char(2) NOT NULL,
  `canteen_id` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`food_id`, `food_name`, `food_price`, `initial_qty`, `food_qty`, `food_img`, `food_status`, `session`, `canteen_id`) VALUES
('01', 'IDLY', 10, 50, 48, '/food_img/idli.jpg', 0, 'FN', 'C1'),
('02', 'DOSA', 35, 50, 50, '/food_img/dosa.jpg', 1, 'FN', 'C1'),
('03', 'VEN PONGAL', 30, 50, 49, '/food_img/pongal.jpg', 1, 'FN', 'C1'),
('04', 'POORI', 40, 50, 49, '/food_img/poori.jpg', 1, 'FN', 'C1'),
('05', 'TOMATO RICE', 20, 50, 47, '/food_img/tomato-rice.jpg', 0, 'AF', 'C1'),
('06', 'TAMARIND RICE', 20, 50, 50, '/food_img/tamarind.jpg', 1, 'AF', 'C1'),
('07', 'MALLI RICE', 20, 50, 49, '/food_img/malli.jpg', 1, 'AF', 'C1'),
('07', 'MALLI RICE', 20, 50, 49, '/food_img/malli.jpg', 1, 'AF', 'C2'),
('08', 'COCONUT RICE', 20, 50, 50, '/food_img/coconut.jpg', 1, 'AF', 'C1'),
('08', 'COCONUT RICE', 20, 50, 50, '/food_img/coconut.jpg', 1, 'AF', 'C2'),
('09', 'CURD RICE', 20, 50, 47, '/food_img/curd-rice.jpg', 1, 'AF', 'C1'),
('09', 'CURD RICE', 20, 50, 47, '/food_img/curd-rice.jpg', 1, 'AF', 'C2'),
('10', 'CURD SEMIYA', 20, 50, 50, '/food_img/curdsemiya.jpg', 1, 'AF', 'C1'),
('10', 'CURD SEMIYA', 20, 50, 50, '/food_img/curdsemiya.jpg', 1, 'AF', 'C2'),
('11', 'CHAPATI', 30, 50, 50, '/food_img/chapathi.jpg', 1, 'AF', 'C1'),
('11', 'CHAPATI', 30, 50, 50, '/food_img/chapathi.jpg', 1, 'AF', 'C2'),
('12', 'FRIED RICE', 50, 50, 49, '/food_img/vegetable-fried-rice.jpg', 1, 'AF', 'C1'),
('12', 'FRIED RICE', 45, 50, 49, '/food_img/vegetable-fried-rice.jpg', 1, 'AF', 'C2'),
('13', 'CHILLI PAROTTA', 40, 30, 28, '/food_img/chilliparotta.jpg', 1, 'AF', 'C1'),
('14', 'PAROTTA', 35, 50, 50, '/food_img/parotta.jpg', 1, 'AF', 'C1'),
('14', 'PAROTTA', 35, 50, 50, '/food_img/parotta.jpg', 1, 'AF', 'C2'),
('15', 'MUSHROOM BIRYANI', 30, 50, 50, '/food_img/mushroom briyani.jpg', 1, 'AF', 'C1'),
('15', 'MUSHROOM BIRYANI', 30, 50, 50, '/food_img/mushroom briyani.jpg', 1, 'AF', 'C2'),
('16', 'VEGETABLE BIRYANI', 30, 50, 50, '/food_img/veg biryani.jpg', 1, 'AF', 'C1'),
('16', 'VEGETABLE BIRYANI', 30, 50, 50, '/food_img/veg biryani.jpg', 1, 'AF', 'C2'),
('17', 'BISIBELABATH', 35, 50, 50, '/food_img/bisibelabath.jpg', 1, 'AF', 'C1'),
('17', 'BISIBELABATH', 35, 50, 50, '/food_img/bisibelabath.jpg', 1, 'AF', 'C2'),
('18', 'MASALA DOSA', 35, 43, 43, '/food_img/masala.jpg', 0, 'EV', 'C1'),
('18', 'MASALA DOSA', 10, 43, 43, '/food_img/masala.jpg', 1, 'FN', 'C1'),
('19', 'ONION DOSA', 35, 47, 47, '/food_img/onion.jpg', 1, 'EV', 'C1'),
('19', 'ONION DOSA', 35, 47, 47, '/food_img/onion.jpg', 1, 'FN', 'C1'),
('20', 'ONION UTHAPPAM', 35, 50, 50, '/food_img/uthappam.jpg', 1, 'EV', 'C1'),
('20', 'ONION UTHAPPAM', 35, 50, 50, '/food_img/uthappam.jpg', 1, 'FN', 'C1'),
('20', 'ONION UTHAPPAM', 35, 50, 20, '/food_img/uthappam.jpg', 1, 'FN', 'C2'),
('21', 'GHEE ROAST', 40, 49, 49, '/food_img/gheeroast.jpg', 1, 'EV', 'C1'),
('21', 'GHEE ROAST', 40, 49, 49, '/food_img/gheeroast.jpg', 1, 'FN', 'C1'),
('22', 'PLAIN ROAST', 30, 50, 46, '/food_img/plain.jpg', 1, 'EV', 'C1'),
('22', 'PLAIN ROAST', 30, 50, 46, '/food_img/plain.jpg', 1, 'FN', 'C1'),
('24', 'PHEL POORI', 35, 49, 48, '/food_img/phel.jpg', 1, 'EV', 'C1'),
('24', 'PHEL POORI', 35, 49, 48, '/food_img/phel.jpg', 1, 'FN', 'C1'),
('31', 'VEGETABLE SANDWICH', 20, 50, 50, '/food_img/vegsan.jpg', 1, 'AF', 'C1'),
('31', 'VEGETABLE SANDWICH', 20, 50, 20, '/food_img/vegsan.jpg', 1, 'AF', 'C3'),
('31', 'VEGETABLE SANDWICH', 20, 50, 50, '/food_img/vegsan.jpg', 1, 'EV', 'C1'),
('31', 'VEGETABLE SANDWICH', 20, 50, 50, '/food_img/vegsan.jpg', 1, 'FN', 'C1'),
('32', 'CLASSIC PEPPER SANDWICH', 35, 20, 20, '/food_img/pannersandwich.jpg', 1, 'AF', 'C1'),
('32', 'CLASSIC PEPPER SANDWICH', 35, 20, 20, '/food_img/pannersandwich.jpg', 1, 'AF', 'C3'),
('32', 'CLASSIC PEPPER SANDWICH', 35, 20, 20, '/food_img/pannersandwich.jpg', 1, 'EV', 'C1'),
('32', 'CLASSIC PEPPER SANDWICH', 35, 20, 20, '/food_img/pannersandwich.jpg', 1, 'FN', 'C1'),
('33', 'CHILLI PANEER SANDWICH', 35, 19, 12, '/food_img/peppersan.jpg', 1, 'AF', 'C1'),
('33', 'CHILLI PANEER SANDWICH', 35, 20, 12, '/food_img/peppersan.jpg', 1, 'AF', 'C3'),
('33', 'CHILLI PANEER SANDWICH', 35, 19, 12, '/food_img/peppersan.jpg', 1, 'EV', 'C1'),
('33', 'CHILLI PANEER SANDWICH', 35, 19, 12, '/food_img/peppersan.jpg', 1, 'FN', 'C1'),
('35', 'TEA', 10, 60, 43, '/food_img/tea.jpg', 1, 'AF', 'C2'),
('35', 'TEA', 10, 53, 43, '/food_img/tea.jpg', 1, 'EV', 'C1'),
('35', 'TEA', 10, 60, 43, '/food_img/tea.jpg', 1, 'EV', 'C2'),
('35', 'TEA', 10, 53, 43, '/food_img/tea.jpg', 1, 'FN', 'C1'),
('35', 'TEA', 10, 60, 43, '/food_img/tea.jpg', 1, 'FN', 'C2'),
('36', 'COFFEE', 15, 60, 60, '/food_img/coffee.jpg', 1, 'AF', 'C2'),
('36', 'COFFEE', 15, 59, 59, '/food_img/coffee.jpg', 1, 'EV', 'C1'),
('36', 'COFFEE', 15, 60, 60, '/food_img/coffee.jpg', 1, 'EV', 'C2'),
('36', 'COFFEE', 15, 59, 59, '/food_img/coffee.jpg', 1, 'FN', 'C1'),
('36', 'COFFEE', 15, 60, 60, '/food_img/coffee.jpg', 1, 'FN', 'C2'),
('37', 'HORLICKS/BOOST', 15, 60, 60, '/food_img/horlicks.jpg', 1, 'AF', 'C2'),
('37', 'HORLICKS/BOOST', 15, 60, 60, '/food_img/horlicks.jpg', 1, 'EV', 'C1'),
('37', 'HORLICKS/BOOST', 15, 60, 60, '/food_img/horlicks.jpg', 0, 'EV', 'C2'),
('37', 'HORLICKS/BOOST', 15, 60, 60, '/food_img/horlicks.jpg', 1, 'FN', 'C1'),
('37', 'HORLICKS/BOOST', 15, 60, 60, '/food_img/horlicks.jpg', 1, 'FN', 'C2'),
('38', 'CAVINS MILKSHAKE', 25, 20, 18, '/food_img/cavins.png', 1, 'AF', 'C1'),
('38', 'CAVINS MILKSHAKE', 25, 20, 18, '/food_img/cavins.png', 1, 'AF', 'C2'),
('38', 'CAVINS MILKSHAKE', 25, 20, 18, '/food_img/cavins.png', 1, 'AF', 'C3'),
('38', 'CAVINS MILKSHAKE', 25, 20, 18, '/food_img/cavins.png', 1, 'EV', 'C1'),
('38', 'CAVINS MILKSHAKE', 25, 20, 18, '/food_img/cavins.png', 1, 'EV', 'C2'),
('38', 'CAVINS MILKSHAKE', 25, 20, 18, '/food_img/cavins.png', 1, 'FN', 'C1'),
('38', 'CAVINS MILKSHAKE', 25, 20, 18, '/food_img/cavins.png', 1, 'FN', 'C2'),
('39', 'ROSE MILK', 20, 20, 20, '/food_img/Rose-Milk.jpg', 1, 'AF', 'C1'),
('39', 'ROSE MILK', 20, 20, 20, '/food_img/Rose-Milk.jpg', 0, 'AF', 'C3'),
('39', 'ROSE MILK', 20, 20, 20, '/food_img/Rose-Milk.jpg', 1, 'EV', 'C1'),
('39', 'ROSE MILK', 20, 20, 20, '/food_img/Rose-Milk.jpg', 1, 'FN', 'C1'),
('40', 'TROPICANA', 35, 20, 20, '/food_img/Tropicana Juice.jpg', 1, 'AF', 'C1'),
('40', 'TROPICANA', 35, 20, 20, '/food_img/Tropicana Juice.jpg', 1, 'AF', 'C2'),
('40', 'TROPICANA', 35, 20, 50, '/food_img/Tropicana Juice.jpg', 1, 'AF', 'C3'),
('40', 'TROPICANA', 35, 20, 20, '/food_img/Tropicana Juice.jpg', 1, 'EV', 'C1'),
('40', 'TROPICANA', 35, 20, 20, '/food_img/Tropicana Juice.jpg', 1, 'EV', 'C2'),
('40', 'TROPICANA', 35, 20, 20, '/food_img/Tropicana Juice.jpg', 1, 'FN', 'C1'),
('40', 'TROPICANA', 35, 20, 20, '/food_img/Tropicana Juice.jpg', 1, 'FN', 'C2'),
('41', 'FRESH APPLE JUICE', 35, 20, 20, '/food_img/apple.jpg', 1, 'AF', 'C1'),
('41', 'FRESH APPLE JUICE', 35, 20, 20, '/food_img/apple.jpg', 1, 'AF', 'C3'),
('41', 'FRESH APPLE JUICE', 35, 20, 20, '/food_img/apple.jpg', 1, 'EV', 'C1'),
('41', 'FRESH APPLE JUICE', 35, 20, 20, '/food_img/apple.jpg', 1, 'FN', 'C1'),
('42', 'WATERMELON', 20, 20, 19, '/food_img/watermelon.jpg', 1, 'AF', 'C1'),
('42', 'WATERMELON', 20, 20, 19, '/food_img/watermelon.jpg', 1, 'AF', 'C3'),
('42', 'WATERMELON', 20, 20, 19, '/food_img/watermelon.jpg', 1, 'EV', 'C1'),
('42', 'WATERMELON', 20, 20, 19, '/food_img/watermelon.jpg', 1, 'FN', 'C1'),
('43', 'POMEGRANATE JUICE', 50, 20, 20, '/food_img/pomegranate.jpg', 1, 'AF', 'C1'),
('43', 'POMEGRANATE JUICE', 50, 20, 20, '/food_img/pomegranate.jpg', 1, 'AF', 'C3'),
('43', 'POMEGRANATE JUICE', 50, 20, 20, '/food_img/pomegranate.jpg', 1, 'EV', 'C1'),
('43', 'POMEGRANATE JUICE', 50, 20, 20, '/food_img/pomegranate.jpg', 1, 'FN', 'C1'),
('44', 'FRESH CARROT JUICE', 25, 20, 20, '/food_img/carrot.jpg', 1, 'AF', 'C1'),
('44', 'FRESH CARROT JUICE', 25, 20, 20, '/food_img/carrot.jpg', 1, 'AF', 'C3'),
('44', 'FRESH CARROT JUICE', 25, 20, 20, '/food_img/carrot.jpg', 1, 'EV', 'C1'),
('44', 'FRESH CARROT JUICE', 25, 20, 20, '/food_img/carrot.jpg', 1, 'FN', 'C1'),
('45', 'FRESH MULAM JUICE', 20, 20, 20, '/food_img/mulam.jpg', 1, 'AF', 'C1'),
('45', 'FRESH MULAM JUICE', 20, 20, 20, '/food_img/mulam.jpg', 1, 'AF', 'C3'),
('45', 'FRESH MULAM JUICE', 20, 20, 20, '/food_img/mulam.jpg', 1, 'EV', 'C1'),
('45', 'FRESH MULAM JUICE', 20, 20, 20, '/food_img/mulam.jpg', 1, 'FN', 'C1'),
('46', 'FRESH ORANGE JUICE', 30, 20, 17, '/food_img/orange.jpg', 1, 'AF', 'C1'),
('46', 'FRESH ORANGE JUICE', 30, 20, 17, '/food_img/orange.jpg', 1, 'AF', 'C3'),
('46', 'FRESH ORANGE JUICE', 30, 20, 17, '/food_img/orange.jpg', 1, 'EV', 'C1'),
('46', 'FRESH ORANGE JUICE', 30, 20, 17, '/food_img/orange.jpg', 1, 'FN', 'C1'),
('47', 'FRESH MUSKMELON JUICE', 30, 20, 20, '/food_img/muskmelon.jpg', 1, 'AF', 'C1'),
('47', 'FRESH MUSKMELON JUICE', 30, 20, 20, '/food_img/muskmelon.jpg', 1, 'AF', 'C3'),
('47', 'FRESH MUSKMELON JUICE', 30, 20, 20, '/food_img/muskmelon.jpg', 1, 'EV', 'C1'),
('47', 'FRESH MUSKMELON JUICE', 30, 20, 20, '/food_img/muskmelon.jpg', 1, 'FN', 'C1'),
('48', 'FRESH LEMON JUICE', 25, 20, 20, '/food_img/lemon.jpg', 1, 'AF', 'C1'),
('48', 'FRESH LEMON JUICE', 25, 20, 20, '/food_img/lemon.jpg', 1, 'AF', 'C3'),
('48', 'FRESH LEMON JUICE', 25, 20, 20, '/food_img/lemon.jpg', 1, 'EV', 'C1'),
('48', 'FRESH LEMON JUICE', 25, 20, 20, '/food_img/lemon.jpg', 1, 'FN', 'C1'),
('51', 'ROUND CAKE(CREAM)', 20, 20, 17, '/food_img/roundcake.jpg', 1, 'AF', 'C1'),
('51', 'ROUND CAKE(CREAM)', 20, 20, 17, '/food_img/roundcake.jpg', 1, 'AF', 'C2'),
('51', 'ROUND CAKE(CREAM)', 20, 20, 17, '/food_img/roundcake.jpg', 1, 'AF', 'C3'),
('51', 'ROUND CAKE(CREAM)', 20, 20, 17, '/food_img/roundcake.jpg', 1, 'EV', 'C1'),
('51', 'ROUND CAKE(CREAM)', 20, 20, 17, '/food_img/roundcake.jpg', 1, 'EV', 'C2'),
('51', 'ROUND CAKE(CREAM)', 20, 20, 17, '/food_img/roundcake.jpg', 1, 'FN', 'C1'),
('51', 'ROUND CAKE(CREAM)', 20, 20, 17, '/food_img/roundcake.jpg', 1, 'FN', 'C2'),
('53', 'VANILLA ICE CREAM', 25, 20, 20, '/food_img/vanilla.jpg', 1, 'AF', 'C1'),
('53', 'VANILLA ICE CREAM', 25, 20, 20, '/food_img/vanilla.jpg', 1, 'AF', 'C2'),
('53', 'VANILLA ICE CREAM', 25, 20, 20, '/food_img/vanilla.jpg', 1, 'AF', 'C3'),
('53', 'VANILLA ICE CREAM', 25, 20, 20, '/food_img/vanilla.jpg', 1, 'EV', 'C1'),
('53', 'VANILLA ICE CREAM', 25, 20, 20, '/food_img/vanilla.jpg', 1, 'EV', 'C2'),
('53', 'VANILLA ICE CREAM', 25, 20, 20, '/food_img/vanilla.jpg', 1, 'FN', 'C1'),
('53', 'VANILLA ICE CREAM', 25, 20, 20, '/food_img/vanilla.jpg', 1, 'FN', 'C2'),
('54', 'BUTTERSCOTCH ICE CREAM', 25, 20, 20, '/food_img/buttorscotch.jpg', 1, 'AF', 'C1'),
('54', 'BUTTERSCOTCH ICE CREAM', 25, 20, 20, '/food_img/buttorscotch.jpg', 1, 'AF', 'C2'),
('54', 'BUTTERSCOTCH ICE CREAM', 25, 20, 20, '/food_img/buttorscotch.jpg', 1, 'AF', 'C3'),
('54', 'BUTTERSCOTCH ICE CREAM', 25, 20, 20, '/food_img/buttorscotch.jpg', 1, 'EV', 'C1'),
('54', 'BUTTERSCOTCH ICE CREAM', 25, 20, 20, '/food_img/buttorscotch.jpg', 1, 'EV', 'C2'),
('54', 'BUTTERSCOTCH ICE CREAM', 25, 20, 20, '/food_img/buttorscotch.jpg', 1, 'FN', 'C1'),
('54', 'BUTTERSCOTCH ICE CREAM', 25, 20, 20, '/food_img/buttorscotch.jpg', 1, 'FN', 'C2'),
('55', 'CHOCOLATE ICE CREAM', 30, 20, 20, '/food_img/chocolate.jpg', 1, 'AF', 'C1'),
('55', 'CHOCOLATE ICE CREAM', 30, 20, 20, '/food_img/chocolate.jpg', 1, 'AF', 'C2'),
('55', 'CHOCOLATE ICE CREAM', 30, 20, 20, '/food_img/chocolate.jpg', 1, 'AF', 'C3'),
('55', 'CHOCOLATE ICE CREAM', 30, 20, 20, '/food_img/chocolate.jpg', 1, 'EV', 'C1'),
('55', 'CHOCOLATE ICE CREAM', 30, 20, 20, '/food_img/chocolate.jpg', 1, 'EV', 'C2'),
('55', 'CHOCOLATE ICE CREAM', 30, 20, 20, '/food_img/chocolate.jpg', 1, 'FN', 'C1'),
('55', 'CHOCOLATE ICE CREAM', 30, 20, 20, '/food_img/chocolate.jpg', 1, 'FN', 'C2'),
('57', 'MINI PUFF', 5, 20, 20, '/food_img/puff.jpg', 1, 'AF', 'C1'),
('57', 'MINI PUFF', 5, 20, 20, '/food_img/puff.jpg', 1, 'AF', 'C2'),
('57', 'MINI PUFF', 5, 20, 20, '/food_img/puff.jpg', 1, 'AF', 'C3'),
('57', 'MINI PUFF', 5, 20, 20, '/food_img/puff.jpg', 1, 'EV', 'C1'),
('57', 'MINI PUFF', 5, 20, 20, '/food_img/puff.jpg', 1, 'EV', 'C2'),
('57', 'MINI PUFF', 5, 20, 20, '/food_img/puff.jpg', 1, 'FN', 'C1'),
('57', 'MINI PUFF', 5, 20, 20, '/food_img/puff.jpg', 1, 'FN', 'C2'),
('58', 'MUSHROOM PUFF', 15, 20, 20, '/food_img/mushroompuff.jpg', 1, 'AF', 'C1'),
('58', 'MUSHROOM PUFF', 15, 20, 20, '/food_img/mushroompuff.jpg', 1, 'AF', 'C2'),
('58', 'MUSHROOM PUFF', 15, 20, 20, '/food_img/mushroompuff.jpg', 1, 'AF', 'C3'),
('58', 'MUSHROOM PUFF', 15, 20, 20, '/food_img/mushroompuff.jpg', 1, 'EV', 'C1'),
('58', 'MUSHROOM PUFF', 15, 20, 20, '/food_img/mushroompuff.jpg', 1, 'EV', 'C2'),
('58', 'MUSHROOM PUFF', 15, 20, 20, '/food_img/mushroompuff.jpg', 1, 'FN', 'C1'),
('58', 'MUSHROOM PUFF', 15, 20, 20, '/food_img/mushroompuff.jpg', 1, 'FN', 'C2'),
('59', 'VEG PUFF', 10, 20, 20, '/food_img/vegpuff.jpg', 1, 'AF', 'C1'),
('59', 'VEG PUFF', 10, 20, 20, '/food_img/vegpuff.jpg', 1, 'AF', 'C2'),
('59', 'VEG PUFF', 10, 20, 20, '/food_img/vegpuff.jpg', 1, 'AF', 'C3'),
('59', 'VEG PUFF', 10, 20, 20, '/food_img/vegpuff.jpg', 1, 'EV', 'C1'),
('59', 'VEG PUFF', 10, 20, 20, '/food_img/vegpuff.jpg', 1, 'EV', 'C2'),
('59', 'VEG PUFF', 10, 20, 20, '/food_img/vegpuff.jpg', 1, 'FN', 'C1'),
('59', 'VEG PUFF', 10, 20, 20, '/food_img/vegpuff.jpg', 1, 'FN', 'C2'),
('60', 'PALKOVA', 20, 20, 20, '/food_img/palkova.jpg', 1, 'AF', 'C1'),
('60', 'PALKOVA', 20, 20, 20, '/food_img/palkova.jpg', 1, 'AF', 'C2'),
('60', 'PALKOVA', 20, 20, 20, '/food_img/palkova.jpg', 1, 'AF', 'C3'),
('60', 'PALKOVA', 20, 20, 20, '/food_img/palkova.jpg', 1, 'EV', 'C1'),
('60', 'PALKOVA', 20, 20, 20, '/food_img/palkova.jpg', 1, 'EV', 'C2'),
('60', 'PALKOVA', 20, 20, 20, '/food_img/palkova.jpg', 1, 'FN', 'C1'),
('60', 'PALKOVA', 20, 20, 20, '/food_img/palkova.jpg', 1, 'FN', 'C2'),
('61', 'UNIBIC Rs.10', 10, 20, 20, '/food_img/unibic10.jpg', 1, 'AF', 'C1'),
('61', 'UNIBIC Rs.10', 10, 20, 20, '/food_img/unibic10.jpg', 1, 'AF', 'C2'),
('61', 'UNIBIC Rs.10', 10, 20, 20, '/food_img/unibic10.jpg', 1, 'AF', 'C3'),
('61', 'UNIBIC Rs.10', 10, 20, 20, '/food_img/unibic10.jpg', 1, 'EV', 'C1'),
('61', 'UNIBIC Rs.10', 10, 20, 20, '/food_img/unibic10.jpg', 1, 'EV', 'C2'),
('61', 'UNIBIC Rs.10', 10, 20, 20, '/food_img/unibic10.jpg', 1, 'FN', 'C1'),
('61', 'UNIBIC Rs.10', 10, 20, 20, '/food_img/unibic10.jpg', 1, 'FN', 'C2'),
('62', 'UNIBIC Rs.5', 5, 20, 20, '/food_img/unibic5.jpg', 1, 'AF', 'C1'),
('62', 'UNIBIC Rs.5', 5, 20, 20, '/food_img/unibic5.jpg', 1, 'AF', 'C2'),
('62', 'UNIBIC Rs.5', 5, 20, 20, '/food_img/unibic5.jpg', 1, 'AF', 'C3'),
('62', 'UNIBIC Rs.5', 5, 20, 20, '/food_img/unibic5.jpg', 1, 'EV', 'C1'),
('62', 'UNIBIC Rs.5', 5, 20, 20, '/food_img/unibic5.jpg', 1, 'EV', 'C2'),
('62', 'UNIBIC Rs.5', 5, 20, 20, '/food_img/unibic5.jpg', 1, 'FN', 'C1'),
('62', 'UNIBIC Rs.5', 5, 20, 20, '/food_img/unibic5.jpg', 1, 'FN', 'C2'),
('63', 'GOODAY Rs.20', 20, 20, 20, '/food_img/goodday.jpg', 1, 'AF', 'C1'),
('63', 'GOODAY Rs.20', 20, 20, 20, '/food_img/goodday.jpg', 1, 'AF', 'C3'),
('63', 'GOODAY Rs.20', 20, 20, 20, '/food_img/goodday.jpg', 1, 'EV', 'C1'),
('63', 'GOODAY Rs.20', 20, 20, 20, '/food_img/goodday.jpg', 1, 'EV', 'C2'),
('63', 'GOODAY Rs.20', 20, 20, 20, '/food_img/goodday.jpg', 1, 'FN', 'C1'),
('63', 'GOODAY Rs.20', 20, 20, 20, '/food_img/goodday.jpg', 1, 'FN', 'C2'),
('64', 'BAJJI/BONDA/VADA', 5, 20, 20, '/food_img/bajji.jpg', 1, 'AF', 'C1'),
('64', 'BAJJI/BONDA/VADA', 5, 20, 20, '/food_img/bajji.jpg', 1, 'AF', 'C2'),
('64', 'BAJJI/BONDA/VADA', 5, 20, 20, '/food_img/bajji.jpg', 1, 'AF', 'C3'),
('64', 'BAJJI/BONDA/VADA', 5, 20, 20, '/food_img/bajji.jpg', 1, 'EV', 'C1'),
('64', 'BAJJI/BONDA/VADA', 5, 20, 20, '/food_img/bajji.jpg', 1, 'EV', 'C2'),
('64', 'BAJJI/BONDA/VADA', 5, 20, 20, '/food_img/bajji.jpg', 1, 'FN', 'C1'),
('64', 'BAJJI/BONDA/VADA', 5, 20, 20, '/food_img/bajji.jpg', 1, 'FN', 'C2'),
('65', 'CHILLI GOBI', 20, 20, 20, '/food_img/chilligobi.jpg', 1, 'AF', 'C1'),
('65', 'CHILLI GOBI', 20, 20, 20, '/food_img/chilligobi.jpg', 1, 'AF', 'C2'),
('65', 'CHILLI GOBI', 20, 20, 20, '/food_img/chilligobi.jpg', 1, 'AF', 'C3'),
('65', 'CHILLI GOBI', 20, 20, 20, '/food_img/chilligobi.jpg', 1, 'EV', 'C1'),
('65', 'CHILLI GOBI', 20, 20, 20, '/food_img/chilligobi.jpg', 1, 'EV', 'C2'),
('65', 'CHILLI GOBI', 20, 20, 20, '/food_img/chilligobi.jpg', 1, 'FN', 'C1'),
('65', 'CHILLI GOBI', 20, 20, 20, '/food_img/chilligobi.jpg', 1, 'FN', 'C2'),
('66', 'SAMOSA Rs.15', 5, 20, 20, '/food_img/samosa.jpg', 1, 'AF', 'C1'),
('66', 'SAMOSA Rs.15', 5, 20, 20, '/food_img/samosa.jpg', 1, 'AF', 'C2'),
('66', 'SAMOSA Rs.15', 5, 20, 20, '/food_img/samosa.jpg', 1, 'AF', 'C3'),
('66', 'SAMOSA Rs.15', 5, 20, 20, '/food_img/samosa.jpg', 1, 'EV', 'C1'),
('66', 'SAMOSA Rs.15', 5, 20, 20, '/food_img/samosa.jpg', 1, 'EV', 'C2'),
('66', 'SAMOSA Rs.15', 5, 20, 20, '/food_img/samosa.jpg', 1, 'FN', 'C1'),
('66', 'SAMOSA Rs.15', 5, 20, 20, '/food_img/samosa.jpg', 1, 'FN', 'C2'),
('68', 'RAGI PAKODA', 12, 20, 20, '/food_img/ragipakoda.jpg', 1, 'AF', 'C1'),
('68', 'RAGI PAKODA', 12, 20, 20, '/food_img/ragipakoda.jpg', 1, 'AF', 'C3'),
('68', 'RAGI PAKODA', 12, 20, 20, '/food_img/ragipakoda.jpg', 1, 'EV', 'C1'),
('68', 'RAGI PAKODA', 12, 20, 20, '/food_img/ragipakoda.jpg', 1, 'FN', 'C1'),
('99', 'ABCD', 45, 20, 20, '/food_img/IMG0.jpg', 1, 'FN', 'C1');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `stud_id` char(6) NOT NULL,
  `food1` char(2) DEFAULT NULL,
  `Quantity1` tinyint(3) DEFAULT NULL,
  `food2` char(2) DEFAULT NULL,
  `Quantity2` tinyint(3) DEFAULT NULL,
  `food3` char(2) DEFAULT NULL,
  `Quantity3` tinyint(3) DEFAULT NULL,
  `food4` char(2) DEFAULT NULL,
  `Quantity4` tinyint(3) DEFAULT NULL,
  `food5` char(2) DEFAULT NULL,
  `Quantity5` tinyint(3) DEFAULT NULL,
  `order_total_price` smallint(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`stud_id`, `food1`, `Quantity1`, `food2`, `Quantity2`, `food3`, `Quantity3`, `food4`, `Quantity4`, `food5`, `Quantity5`, `order_total_price`) VALUES
('18Z223', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `otp_details`
--

CREATE TABLE `otp_details` (
  `stud_id` char(6) NOT NULL,
  `otp` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `otp_details`
--

INSERT INTO `otp_details` (`stud_id`, `otp`) VALUES
('18Z260', '80892'),
('18Z260', '46207'),
('18Z260', '21816');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stud_id` char(6) NOT NULL,
  `stud_name` varchar(30) NOT NULL,
  `balance_amt` int(11) DEFAULT NULL,
  `stud_password` varchar(10) DEFAULT NULL,
  `stud_mobile_no` char(10) DEFAULT NULL,
  `orders` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stud_id`, `stud_name`, `balance_amt`, `stud_password`, `stud_mobile_no`, `orders`) VALUES
('18Z205', 'ANANTHAROOBAN B R', 500, 'GURU', NULL, 0),
('18Z212', 'BALASARATH B S', 500, 'MATH', NULL, 0),
('18Z221', 'JAYABHARATHI A', 500, 'CODE', NULL, 0),
('18Z222', 'JEFFREY NICHOLAS', 485, 'PULSAR', NULL, 0),
('18Z241', 'RIDHI K C', 500, 'COMICS', NULL, 0),
('18Z260', 'THARANI GANESH M', 100, 'IETE', '9488686111', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transacted`
--

CREATE TABLE `transacted` (
  `order_id` char(26) NOT NULL,
  `stud_id` char(6) NOT NULL,
  `food1` char(2) DEFAULT NULL,
  `Quantity1` char(2) DEFAULT NULL,
  `food2` char(2) DEFAULT NULL,
  `Quantity2` char(2) DEFAULT NULL,
  `food3` char(2) DEFAULT NULL,
  `Quantity3` char(2) DEFAULT NULL,
  `food4` char(2) DEFAULT NULL,
  `Quantity4` char(2) DEFAULT NULL,
  `food5` char(2) DEFAULT NULL,
  `Quantity5` char(2) DEFAULT NULL,
  `order_total_price` tinyint(3) DEFAULT 0,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transacted`
--

INSERT INTO `transacted` (`order_id`, `stud_id`, `food1`, `Quantity1`, `food2`, `Quantity2`, `food3`, `Quantity3`, `food4`, `Quantity4`, `food5`, `Quantity5`, `order_total_price`, `time`) VALUES
('Y0622106Zu180>2g0X21810325', '18Z260', '09', '1', '12', '1', NULL, NULL, NULL, NULL, NULL, NULL, 70, '2020-06-25 12:33:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `canteen`
--
ALTER TABLE `canteen`
  ADD PRIMARY KEY (`canteen_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`,`session`,`canteen_id`),
  ADD KEY `canteen_id` (`canteen_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`stud_id`),
  ADD KEY `stud_id` (`stud_id`),
  ADD KEY `food1` (`food1`),
  ADD KEY `food2` (`food2`),
  ADD KEY `food3` (`food3`),
  ADD KEY `food4` (`food4`);

--
-- Indexes for table `otp_details`
--
ALTER TABLE `otp_details`
  ADD KEY `stud_id` (`stud_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `transacted`
--
ALTER TABLE `transacted`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `stud_id` (`stud_id`),
  ADD KEY `food1` (`food1`,`food2`,`food3`,`food4`,`food5`),
  ADD KEY `time` (`time`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_canteen_fk` FOREIGN KEY (`canteen_id`) REFERENCES `canteen` (`canteen_id`);

--
-- Constraints for table `otp_details`
--
ALTER TABLE `otp_details`
  ADD CONSTRAINT `otp_student_fk` FOREIGN KEY (`stud_id`) REFERENCES `student` (`stud_id`);

--
-- Constraints for table `transacted`
--
ALTER TABLE `transacted`
  ADD CONSTRAINT `transacted_student_fk` FOREIGN KEY (`stud_id`) REFERENCES `student` (`stud_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
