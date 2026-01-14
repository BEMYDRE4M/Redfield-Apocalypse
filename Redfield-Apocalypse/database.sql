-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 27, 2025 at 07:37 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `ID` int NOT NULL,
  `Username` text NOT NULL,
  `Achievement1` int NOT NULL DEFAULT '0',
  `Achievement2` int NOT NULL DEFAULT '0',
  `Achievement3` int NOT NULL DEFAULT '0',
  `Achievement4` int NOT NULL DEFAULT '0',
  `Achievement5` int NOT NULL DEFAULT '0',
  `Achievement6` int NOT NULL DEFAULT '0',
  `Achievement7` int NOT NULL DEFAULT '0',
  `Achievement8` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `ID` int NOT NULL,
  `Username` text NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Reason` int NOT NULL,
  `STime` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `ID` int NOT NULL,
  `SpawnX` varchar(255) NOT NULL,
  `SpawnY` varchar(255) NOT NULL,
  `SpawnZ` varchar(255) NOT NULL,
  `Owner` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logout`
--

CREATE TABLE `logout` (
  `ID` int NOT NULL,
  `Username` text NOT NULL,
  `Weapons` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `ID` int NOT NULL,
  `Text` longtext NOT NULL,
  `Readed` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offlinemessages`
--

CREATE TABLE `offlinemessages` (
  `ID` int NOT NULL,
  `Username` text NOT NULL,
  `Text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `premium`
--

CREATE TABLE `premium` (
  `ID` int NOT NULL,
  `Username` text NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `STime` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `ID` int NOT NULL,
  `Name` text NOT NULL,
  `Owner` text NOT NULL,
  `Cash` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `ID` int NOT NULL,
  `Username` text NOT NULL,
  `Password` text NOT NULL,
  `Serial` varchar(50) NOT NULL,
  `Level` int NOT NULL DEFAULT '0',
  `ExperiencePoints` int NOT NULL DEFAULT '0',
  `Zombiekills` int NOT NULL DEFAULT '0',
  `Team` int NOT NULL DEFAULT '0',
  `Teamrang` int NOT NULL DEFAULT '0',
  `Deaths` int NOT NULL DEFAULT '0',
  `Playingtime` int NOT NULL DEFAULT '0',
  `Bonuspoints` int NOT NULL DEFAULT '0',
  `Adminlevel` int NOT NULL DEFAULT '0',
  `Chests` int NOT NULL DEFAULT '0',
  `Hearts` int NOT NULL DEFAULT '0',
  `Weeklychest` int NOT NULL DEFAULT '0',
  `Weapondepot` int NOT NULL DEFAULT '0',
  `Coins` int NOT NULL DEFAULT '0',
  `EasterEggs` int NOT NULL DEFAULT '0',
  `Trophys` int NOT NULL DEFAULT '0',
  `LifetimePremium` int NOT NULL DEFAULT '0',
  `Zombieskin` int NOT NULL DEFAULT '0',
  `Skin` int NOT NULL DEFAULT '0',
  `Money` int NOT NULL DEFAULT '0',
  `Posx` varchar(50) NOT NULL DEFAULT '-1963.5256347656',
  `Posy` varchar(50) NOT NULL DEFAULT '127.15285491943',
  `Posz` varchar(50) NOT NULL DEFAULT '27.6875',
  `Presents` int NOT NULL DEFAULT '0',
  `TresorKeys` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `ID` int NOT NULL,
  `Model` int NOT NULL,
  `Spawnx` varchar(255) NOT NULL,
  `Spawny` varchar(255) NOT NULL,
  `Spawnz` varchar(255) NOT NULL,
  `Spawnrotx` varchar(255) NOT NULL,
  `Spawnroty` varchar(255) NOT NULL,
  `Spawnrotz` varchar(255) NOT NULL,
  `Owner` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `weapondepot`
--

CREATE TABLE `weapondepot` (
  `ID` int NOT NULL,
  `Username` int NOT NULL,
  `WeaponID` int NOT NULL,
  `WeaponAmmo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weaponskills`
--

CREATE TABLE `weaponskills` (
  `ID` int NOT NULL,
  `Username` text NOT NULL,
  `Pistol` int NOT NULL DEFAULT '0',
  `Silenced` int NOT NULL DEFAULT '0',
  `Deagle` int NOT NULL DEFAULT '0',
  `Shotgun` int NOT NULL DEFAULT '0',
  `Sawnoff` int NOT NULL DEFAULT '0',
  `Spas12` int NOT NULL DEFAULT '0',
  `Uzi` int NOT NULL DEFAULT '0',
  `Mp5` int NOT NULL DEFAULT '0',
  `AK-47` int NOT NULL DEFAULT '0',
  `M4` int NOT NULL DEFAULT '0',
  `Rifle` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `logout`
--
ALTER TABLE `logout`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `offlinemessages`
--
ALTER TABLE `offlinemessages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `premium`
--
ALTER TABLE `premium`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `weapondepot`
--
ALTER TABLE `weapondepot`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `weaponskills`
--
ALTER TABLE `weaponskills`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logout`
--
ALTER TABLE `logout`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offlinemessages`
--
ALTER TABLE `offlinemessages`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `premium`
--
ALTER TABLE `premium`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `weapondepot`
--
ALTER TABLE `weapondepot`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `weaponskills`
--
ALTER TABLE `weaponskills`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;