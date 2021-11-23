-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2021 at 07:37 PM
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
-- Table structure for table `divisiondetails`
--

DROP TABLE IF EXISTS `divisiondetails`;
CREATE TABLE IF NOT EXISTS `divisiondetails` (
  `divisionID` int(10) NOT NULL AUTO_INCREMENT,
  `divisionName` varchar(255) NOT NULL,
  `vaccine` varchar(255) NOT NULL,
  `dose` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`divisionID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisiondetails`
--

INSERT INTO `divisiondetails` (`divisionID`, `divisionName`, `vaccine`, `dose`, `quantity`, `date`) VALUES
(1, 'division2', 'Synopharm', 2, 100, '2021-10-10');

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
  PRIMARY KEY (`id_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personaldetails`
--

INSERT INTO `personaldetails` (`id_no`, `first_name`, `last_name`, `house_no`, `street`, `city`, `phone`) VALUES
('991234567v', 'Nihara', 'Bamunusinghe', '100', 'Main Street', 'Eheliyagoda', 771234567),
('981234567v', 'Madara', 'Senewirathne', '200', 'School lane', 'Panadura', 711234567),
('971234567v', 'Geethma', 'Rajapaksha', '300', 'AB place', 'Galle', 741234567),
('981111111v', 'Niroshan', 'Dikwella', '111', 'Sooriyaweva', 'Hambantota', 701111111);

-- --------------------------------------------------------

--
-- Table structure for table `person_vaccine`
--

DROP TABLE IF EXISTS `person_vaccine`;
CREATE TABLE IF NOT EXISTS `person_vaccine` (
  `id` varchar(12) NOT NULL,
  `vaccine_name` varchar(255) NOT NULL,
  `dose_1` date NOT NULL,
  `dose_2` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person_vaccine`
--

INSERT INTO `person_vaccine` (`id`, `vaccine_name`, `dose_1`, `dose_2`) VALUES
('981234567v', 'Cynopharm', '2021-10-10', '2021-10-10'),
('971234567v', 'Phizer', '2021-01-09', '2021-02-10'),
('981111111v', 'Moderna', '2021-01-10', '2021-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_details`
--

DROP TABLE IF EXISTS `vaccine_details`;
CREATE TABLE IF NOT EXISTS `vaccine_details` (
  `vaccineID` varchar(11) NOT NULL,
  `vaccineName` varchar(255) NOT NULL,
  `numOfDose` int(11) NOT NULL,
  PRIMARY KEY (`vaccineID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vaccine_details`
--

INSERT INTO `vaccine_details` (`vaccineID`, `vaccineName`, `numOfDose`) VALUES
('v1', 'Synopharm', 2),
('v2', 'Phizer', 2),
('v3', 'Moderna', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
