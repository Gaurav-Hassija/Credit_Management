-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2019 at 08:45 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internship`
--

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `trans_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `credit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`trans_id`, `sender_id`, `sender`, `receiver_id`, `receiver`, `credit`) VALUES
(1, 107, 'Ashnil Vazirani', 104, 'Dolly Talreja', 500),
(2, 104, 'Dolly Talreja', 102, 'Gaurav Makhija', 100);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_credit` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_credit`) VALUES
(107, 'Ashnil Vazirani', 'ashnil@gmail.com', '3000'),
(106, 'Hiren Rupchandani', 'hiren@gmail.com', '3100'),
(105, 'Gaurav Hassija', 'gaurav@gmail.com', '3400'),
(104, 'Dolly Talreja', 'dolly@gmail.com', '4100'),
(103, 'Kailash Hassija', 'kailash@gmail.com', '4540'),
(102, 'Gaurav Makhija', 'gmakhija@gmail.com', '4220'),
(101, 'Rahul Makhija', 'rahul@gmail.com', '2345'),
(108, 'Switi Vaswani', 'switi@gmail.com', '2500'),
(109, 'Simran Udasi', 'simran@gmail.com', '2000'),
(110, 'Sweety Rohra', 'sweety@gmail.com', '2100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
