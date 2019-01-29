-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 29, 2019 at 08:28 AM
-- Server version: 5.7.25-0ubuntu0.16.04.2
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `favorite`
--

-- --------------------------------------------------------

--
-- Table structure for table `my_favorites`
--

CREATE TABLE `my_favorites` (
  `MyFavouriteId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `name` varchar(900) NOT NULL,
  `height` varchar(900) NOT NULL,
  `mass` varchar(900) NOT NULL,
  `gender` varchar(900) NOT NULL,
  `url` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `my_favorites`
--

INSERT INTO `my_favorites` (`MyFavouriteId`, `UserId`, `name`, `height`, `mass`, `gender`, `url`) VALUES
(24, 1, 'R2-D2', '96', '32', 'n/a', 'https://swapi.co/api/people/3/'),
(25, 1, 'Owen Lars', '178', '120', 'male', 'https://swapi.co/api/people/6/'),
(26, 1, 'R5-D4', '97', '32', 'n/a', 'https://swapi.co/api/people/8/'),
(27, 1, 'Leia Organa', '150', '49', 'female', 'https://swapi.co/api/people/5/'),
(28, 1, 'R5-D4', '97', '32', 'n/a', 'https://swapi.co/api/people/8/');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(11) NOT NULL,
  `UserName` varchar(900) NOT NULL,
  `EncryptedPassword` varchar(9000) NOT NULL,
  `Salt` varchar(9000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `UserName`, `EncryptedPassword`, `Salt`) VALUES
(1, 'silas', '829f6f1e93a315dedae92eea52dd9220d966c7746303700b24da1fe1882820613f74d2db53f5b78756621b34c68964942b093a3cd13854ffb165b61ff01ed859', 'FvMCFWeVBMl3khPozPmZh+XTrt4I8tyvTKzoSlV3j+HI83XUAMNfIAZkx52IkVRZDlTGXerNqC3JdLu6Di4hWku+HcR5Jj0qQc8wz0vyXU+QzQoIT9xgqRd9bJePy9beYbZkFP7qkjyw5D8X2FLrxd4sX196Y/R6M7QhLbo7u9w=');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `my_favorites`
--
ALTER TABLE `my_favorites`
  ADD PRIMARY KEY (`MyFavouriteId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `my_favorites`
--
ALTER TABLE `my_favorites`
  MODIFY `MyFavouriteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `my_favorites`
--
ALTER TABLE `my_favorites`
  ADD CONSTRAINT `my_favorites_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
