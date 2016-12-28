-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 28, 2016 at 11:51 AM
-- Server version: 5.5.53-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yii`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `nominate` enum('0','1') NOT NULL DEFAULT '0',
  `event_date` datetime NOT NULL,
  `display_image` varchar(255) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `is_upcoming` enum('0','1') NOT NULL DEFAULT '0',
  `status` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `content`, `nominate`, `event_date`, `display_image`, `created_date`, `is_upcoming`, `status`) VALUES
(1, 'sdsdsdssd', 'sdsd', '1', '2016-12-22 00:00:00', '/uploads/2016/12/event1-120x80.png', '2016-12-22 13:34:23', '0', '1'),
(2, 'dffdfd', 'dfdf', '1', '2016-12-22 00:00:00', '/uploads/2016/12/event2-120x80.png', '2016-12-22 15:12:02', '0', '1'),
(3, 'Third One', 'Third One Third One Third One Third One Third One Third One Third One Third One Third One Third One Third One Third One Third One Third One Third One ', '1', '2016-12-29 00:00:00', '/uploads/2016/12/event3-120x80.png', '2016-12-28 10:09:01', '1', '1'),
(4, 'Fourth One', 'Fourth One Fourth One Fourth One Fourth One Fourth One Fourth One Fourth One Fourth One Fourth One Fourth One Fourth One Fourth One Fourth One ', '1', '2016-12-29 00:00:00', '/uploads/2016/12/14334721975466459247457342578424163860480n-120x80.jpg', '2016-12-28 10:09:35', '0', '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
