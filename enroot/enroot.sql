-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 29, 2018 at 10:55 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enroot`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `name` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `place` varchar(30) NOT NULL,
  `organiser` varchar(30) NOT NULL,
  `fees` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `images` varchar(30) NOT NULL,
  `text` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`name`, `date`, `time`, `place`, `organiser`, `fees`, `status`, `images`, `text`) VALUES
('MACHINE LEARNING', '2018-08-05', '12:30:00', 'IIT BOMBAY', 'XYZ', 1000, 0, 'ml.jpg', 'Advanced Machine Learning training program aimed at incorporating Machine Learning concepts right from data analysis to the automation of decision models.'),
('BIG DATA', '2018-08-29', '10:00:00', 'IIT BOMBAY', 'ABC', 700, 1, 'bigdata.png', 'The Data Science Conference is for you.There are fantastic range of speakers from big companies.last year we brought speakers such as Alessandro Panella of Facebook and David Smith of Microsoft.'),
('INTERNET OF THINGS', '2018-09-27', '11:00:00', 'A P SHAH INST OF TECH', 'ABCXYZ', 500, 1, 'iot.jpg', 'This event centers on enterprise operations, the view of IoT through IT eyes. In other words, this conference is less about robots and more about using IoT to improve efficiencies, drive revenue opportunities, and solve business problems.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `full_name` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `profession` varchar(20) NOT NULL,
  `event` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`full_name`, `email`, `contact`, `age`, `profession`, `event`) VALUES
('Rohan', '17rohan@gmail.com', 789, 78, 'jobless', 'ml'),
('Rohan', '17rohan@gmail.com', 789, 78, 'jobless', 'ml'),
('Rohan', '17rohan@gmail.com', 789, 78, 'jobless', 'ml'),
('Rohan', '17rohan@gmail.com', 789, 78, 'jobless', 'iot');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
