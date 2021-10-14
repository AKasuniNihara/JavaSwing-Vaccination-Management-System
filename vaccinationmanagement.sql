-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 14, 2021 at 08:07 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vaccinationmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`) VALUES
(1, 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `personaldetails`
--

DROP TABLE IF EXISTS `personaldetails`;
CREATE TABLE IF NOT EXISTS `personaldetails` (
  `id_no` varchar(12) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `house_no` varchar(25) NOT NULL,
  `street` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `phone` int(10) NOT NULL,
  `vaccine_name` varchar(25) NOT NULL DEFAULT '',
  `dose_01` date DEFAULT NULL,
  `dose_02` date NOT NULL,
  PRIMARY KEY (`id_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personaldetails`
--

INSERT INTO `personaldetails` (`id_no`, `first_name`, `last_name`, `house_no`, `street`, `city`, `phone`, `vaccine_name`, `dose_01`, `dose_02`) VALUES
('996490494v', 'Nihara', 'Bamunusinghe', '198', 'Thalavitiya', 'Parakaduwa', 719037264, 'Cynopharm', '2021-01-09', '2021-10-01'),
('102030405v', 'Thevinu', 'Anusara', '56', 'Main street', 'Eheliyagoda', 111234567, 'Cynopharm', '2021-10-01', '2021-10-02'),
('102030406v', 'Thevinu', 'Anusara', '56', 'Main street', 'Eheliyagoda', 111234567, '', '2021-09-09', '2021-10-01');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
