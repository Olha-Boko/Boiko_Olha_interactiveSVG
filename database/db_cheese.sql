-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 30, 2019 at 02:33 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cheese`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cheese`
--

DROP TABLE IF EXISTS `tbl_cheese`;
CREATE TABLE IF NOT EXISTS `tbl_cheese` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Taste` text NOT NULL,
  `EatWith` text NOT NULL,
  `DrinkWith` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cheese`
--

INSERT INTO `tbl_cheese` (`ID`, `Name`, `Taste`, `EatWith`, `DrinkWith`) VALUES
(1, 'Cheddar', 'Mild-pungent, Soft and Smooth to Crumbly.', 'Oysters, Eggs, Walnuts, Salami, Apples.', 'Zinfandel, Cava, Merlot.'),
(2, 'Parmesan', 'Mild and Strong, Hard, Crumbly, Granular.', 'Red meat, Potatoes, Walnuts, Tomatoes, Apricots.   ', 'Chardonnay, Sauvignon, Prosecco.'),
(3, 'Swiss', 'Mild and Strong, Hard, Firm, Dense and Creamy.', 'Red meat, Potatoes, Pecans, Salami, Pears.', 'Pino Noir, Zweigelt, Gamay.'),
(4, 'Gouda', 'Mild and Strong, Semi-hard to Hard, Firm.', 'Fish, White meat, Cashews, Raisins, Apples.', 'Sauvignon, Pino Gris, Riesling.'),
(5, 'Feta', 'Mild and Salty, Creamy to Crumbly.', 'Olives, Flatbread, Pine nuts, Tomatoes, Figs. ', 'Pino Noir, Zinfandel, Madeira.'),
(6, 'Blue', 'Strong, Tangy, Semi-hard, Crumbly.', 'Red meat, Potatos, Walnuts, Desserts, Dates. ', 'Bordeaux, Merlot, Sherry, Port.'),
(7, 'Mozzarella', 'Mild and Soft, Chewy,  Moist and Creamy.', 'Pasta, White meat, Pine nuts, Tomatoes, Grapes.', 'Champagne, Sauvignon, Riesling.'),
(8, 'Bre', 'Mild, Soft, Creamy, Pungent.', 'Spicy food, Curries, Almonds, Desserts, Pears. ', 'Cabernet, Moscato, Riesling.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
