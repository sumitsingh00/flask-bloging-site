-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2022 at 03:41 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_num` varchar(15) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'sumit', '9135348657', 'hello this ', '0000-00-00 00:00:00', 'sumit00134@'),
(2, 'amit', '8226993540', 'this is amit', '2022-05-15 18:46:12', 'shidhartraj1@gmail.c'),
(3, 'rohan', '1122334455', 'this is rohan', '2022-05-15 19:12:13', 'rohandas@gmail.com'),
(4, 'rohan', '1122334455', 'tnis is peter', '2022-05-15 19:13:20', 'sumit00134@gmail.com'),
(7, 'harry', '9274319', 'hi this is harry', '2022-05-15 21:23:13', 'harry@gmail.com'),
(8, 'harry', '9274319', 'hi this is harry', '2022-05-15 21:26:05', 'harry@gmail.com'),
(9, 'harry', '9274319', 'this is harry', '2022-05-15 21:32:05', 'rohandas@gmail.com'),
(10, 'rohan', '1122334455', 'sdnmfabfd', '2022-05-15 21:35:05', 'rohandas@gmail.com'),
(11, 'jerry', '9274319', 'hi this is jerry', '2022-05-16 10:43:00', 'harry@gmail.com'),
(12, 'amit singh ', '8226993540', 'hi sumit this is amit ur brother', '2022-05-16 20:15:54', 'shidhartraj1@gmail.com'),
(13, 'amit singh ', '8226993540', 'hi  this is amit ', '2022-05-16 20:32:32', 'shidhartraj1@gmail.com'),
(14, 'amit singh ', '8226993540', 'hi  this is amit ', '2022-05-16 20:36:38', 'shidhartraj1@gmail.com'),
(15, 'amit singh ', '8226993540', 'hi  this is amit ', '2022-05-16 20:38:18', 'shidhartraj1@gmail.com'),
(16, 'rohan', '1122334455', 'hi ', '2022-05-16 20:46:24', 'rohandas@gmail.com'),
(17, 'rohan', '9274319', 'hi sumit 2101', '2022-05-17 21:02:03', 'sumit00134@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` varchar(40) NOT NULL,
  `slug` varchar(40) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'this is my first post', 'hui hui first post', 'first-post', 'Abdul Rashid Salim Salman Khan (Hindi: [səlˈmɑːn xɑːn]; 27 December 1965)[2] is an Indian actor, film producer, and television personality who works in Hindi films. In a film career spanning over thirty years, Khan has received numerous awards, including two National Film Awards as a film producer, and two Filmfare Awards for acting.[3] He is cited in the media as one of the most commercially successful actors of Indian cinema.[4][5] Forbes included him in their 2015 list of Top-Paid 100 Celebrity Entertainers in the world; Khan tied with Amitabh Bachchan for No. 71 on the list, both with earnings of $33.5 million.[6][7] According to the Forbes 2018 list of Top-Paid 100 Celebrity Entertainers in world, Khan was the highest-ranked Indian with 82nd rank with earnings of $37.7 million.[8][9] He is also known as the host of the reality show, Bigg Boss since 2010.[10]', 'about-bg.jpg', '2022-05-17 18:50:21'),
(2, 'this is second post', 'hui hui second post', 'second-post', 'In this blog we are going to put for loop in our home page which will automatically display some blogs depending on a value\r\nstored in a variable. So, if we write ‘5’ in that variable, it will automatically put 5 blogs on home page. Let’s start!\r\nIn the previous blog we have already fetched the data from the database so only putting the data in for loop is left. Read this\r\nblog if you want to learn to fetch data:', 'home-bg.jpg', '2022-05-18 19:18:00'),
(3, 'For loop in HTML', 'about for loop in', 'third-post', 'data in “user”. For example if there is a URL in “user” and we want it in some HTML element, we can get it by writing “{{ user.url\r\n}}”. Similarly we can get other items.\r\nWe can make a div which has everything coded that how one blog listing should look then we just have to repeat that code and\r\nsimultaneously change the data in every repetition which for loop will do, that div would be like a template in which we just insert\r\nthe data and rest of the code remains same.', 'home-bg.jpg', '2022-05-18 19:27:11'),
(4, 'In this blog we are going to put for loop i', 'about for loop in', 'fourth-post', 'data in “user”. For example if there is a URL in “user” and we want it in some HTML element, we can get it by writing “{{ user.url\r\n}}”. Similarly we can get other items.\r\nWe can make a div which has everything coded that how one blog listing should look then we just have to repeat that code and\r\nsimultaneously change the data in every repetition which for loop will do, that div would be like a template in which we just insert\r\nthe data and rest of the code remains same.', 'home-bg.jpg', '2022-05-18 19:28:04'),
(5, 'data in “user”. For example if there is a \\.', 'about for loop in', 'fifth-post', 'In this blog we are going to put for loop in our home page which will automatically display some blogs depending on a value\r\nstored in a variable. So, if we write ‘5’ in that variable, it will automatically put 5 blogs on home page. Let’s start!\r\nIn the previous blog we have already fetched the data from the database so only putting the data in for loop is left. Read this\r\nblog if you want to learn to fetch data:', 'home-bg.jpg', '2022-05-18 19:28:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
