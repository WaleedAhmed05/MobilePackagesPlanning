-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2017 at 06:21 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobilepackage`
--

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `Cl_id` int(5) NOT NULL,
  `Company_Name` varchar(25) NOT NULL,
  `Package_Name` varchar(50) NOT NULL,
  `Validity` int(3) NOT NULL,
  `Timee` varchar(50) NOT NULL,
  `On_net_minutes` int(10) NOT NULL,
  `Off_net_minutes` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Activation_code` varchar(50) NOT NULL,
  `C_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calls`
--

INSERT INTO `calls` (`Cl_id`, `Company_Name`, `Package_Name`, `Validity`, `Timee`, `On_net_minutes`, `Off_net_minutes`, `Price`, `Activation_code`, `C_id`) VALUES
(1, 'Telenor', 'Full day Offer', 1, '24 hours', 1440, 0, 12, '*5*250#', 1),
(2, 'Telenor', '24 hr Poora Pakistan Offer', 1, '24 hours', 1440, 0, 17, '*345*24#', 1),
(3, 'Telenor', 'Haftawaar Chaappar phar', 7, '', 700, 0, 74, '*5*700#', 1),
(4, 'Warid', 'Pakistan Offer', 1, '2 hours From 6pm to 8pm', 1440, 1440, 12, 'SMS PK to 4337', 2),
(5, 'Warid', 'SMS PK to 4337', 7, '', 700, 70, 110, '*99*7#', 2),
(6, 'Mobilink', 'Super Bundle', 1, '24 hours', 250, 0, 13, '*212#', 3),
(7, 'Ufone', 'Super Call Offer', 1, '1 hour any hour', 60, 0, 4, '*45#', 4),
(8, 'Ufone', '24 Ghanty Offer', 1, '24 hours', 1440, 0, 12, '*2424#', 4),
(9, 'Ufone', 'Monthly Offer', 30, '', 1000000, 0, 418, '*8888#', 4),
(10, 'Zong', 'Daily Zong to Zong', 1, '24 hours', 1440, 0, 12, '*522#', 5),
(11, 'Zong', 'Weekly offer', 7, '', 100000, 0, 63, 'Send “PK7” to 522', 5),
(12, 'Zong', 'Zong Monthly', 30, '', 1000000, 0, 255, 'Send “PK30” to 522', 5);

-- --------------------------------------------------------

--
-- Table structure for table `combo`
--

CREATE TABLE `combo` (
  `Com_id` int(5) NOT NULL,
  `Company_Name` varchar(25) NOT NULL,
  `Package_Name` varchar(50) NOT NULL,
  `Validity` int(3) NOT NULL,
  `Sms_Volume` int(10) NOT NULL,
  `Internet_Volume` int(10) NOT NULL,
  `Calls_On_Minutes` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Activation_code` varchar(50) NOT NULL,
  `C_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `combo`
--

INSERT INTO `combo` (`Com_id`, `Company_Name`, `Package_Name`, `Validity`, `Sms_Volume`, `Internet_Volume`, `Calls_On_Minutes`, `Price`, `Activation_code`, `C_id`) VALUES
(1, 'Ufone', 'Super Mini Card', 15, 500, 500, 500, 299, 'Mini Card', 4),
(2, 'Ufone', 'Super Card Plus', 30, 1200, 1200, 1200, 599, 'Super Card plus', 4),
(3, 'Ufone', 'Super Card', 30, 1000, 1000, 1000, 499, 'Super Card', 4),
(4, 'Mobilink', 'Jazz Hafta', 7, 700, 70, 700, 75, '*407#', 3),
(5, 'Mobilink', '3G Hybrid', 30, 1000, 2000, 1000, 478, '*117*40#', 3),
(6, 'Telenor', 'Mahanna Offer', 30, 3000, 300, 3000, 418, '*345*30#', 1),
(7, 'Mobilink', 'Hybrid Bundle', 30, 6000, 600, 6000, 360, '*430#', 3),
(8, 'Mobilink', 'All Network package', 30, 1200, 1000, 1200, 380, '**7000#', 3),
(9, 'Warid', 'Power Pack', 1, 100, 5, 5, 5, 'SMS P to 7777', 2),
(10, 'Warid', 'Daily Bundle', 1, 300, 30, 200, 30, '*99*11#', 2),
(11, 'Warid', '7 Day Offer', 7, 700, 700, 700, 110, '*99*7#', 2),
(12, 'Warid', 'Poora Hafta ', 7, 1000, 250, 100, 80, 'SMS WO to 3333', 2),
(13, 'Warid', 'Mahana Offer', 30, 1500, 1500, 1500, 520, ' *99*33#', 2),
(14, 'Ufone', 'Daily Pakistan ', 1, 0, 10, 100, 18, '*888#', 4),
(15, 'Ufone', 'Daily Pakistan ', 1, 0, 10, 100, 18, '*888#', 4),
(16, 'Ufone', 'Power Pack', 7, 100, 1000, 100, 80, '*5050#', 4),
(17, 'Ufone', 'Weekly Pakistan ', 7, 0, 100, 700, 100, '*8888#', 4),
(18, 'Telenor', 'Daily Onnet', 1, 0, 10, 50, 10, '*345*700#', 1),
(19, 'Zong', 'All-in-1 Daily', 1, 400, 40, 40, 20, '*6464#', 5),
(20, 'Zong', 'All-in-1 Weekly', 7, 350, 150, 350, 100, '*6464#', 5),
(21, 'Zong', 'All-in-1 Monthly', 30, 700, 700, 700, 250, '*6464#', 5);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `C_id` int(5) NOT NULL,
  `C_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`C_id`, `C_name`) VALUES
(3, 'Mobilink'),
(1, 'Telenor'),
(4, 'Ufone'),
(2, 'Warid'),
(5, 'Zong');

-- --------------------------------------------------------

--
-- Table structure for table `internet`
--

CREATE TABLE `internet` (
  `I_id` int(5) NOT NULL,
  `Company_Name` varchar(25) NOT NULL,
  `Package_Name` varchar(50) NOT NULL,
  `Validity` int(3) NOT NULL,
  `Volume` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Activation_code` varchar(50) NOT NULL,
  `C_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `internet`
--

INSERT INTO `internet` (`I_id`, `Company_Name`, `Package_Name`, `Validity`, `Volume`, `Price`, `Activation_code`, `C_id`) VALUES
(1, 'Telenor', 'Telenor Daily 3G Lite Bundle', 1, 50, 12, '*345*141#', 1),
(2, 'Telenor', 'Telenor Daily 3G Bundle', 1, 75, 15, '*345*131#', 1),
(4, 'Telenor', 'Telenor 3-Day 3G Bundle', 3, 200, 35, '*345*133#', 1),
(5, 'Telenor', 'Telenor Weekly 3G Bundle', 7, 1000, 75, '*345*134#', 1),
(6, 'Telenor', 'Telenor Weekly 3G Plus Bundle', 7, 1200, 100, '*345*164#', 1),
(8, 'Telenor', 'Telenor Monthly 3G Starter Bundle', 30, 2250, 300, '*345*935#', 1),
(9, 'Telenor', 'Telenor Monthly 3G Bundle', 30, 4000, 478, '*345*135#', 1),
(10, 'Telenor', 'Telenor Monthly Plus 3G Bundle', 30, 10500, 1195, '*345*136#', 1),
(11, 'Telenor', 'Djuice Mini 3G Bundle', 1, 5, 6, '*345*931#', 1),
(12, 'Warid', 'Daily 3G', 1, 50, 12, '*443#', 2),
(13, 'Warid', '3-Day', 3, 100, 20, '*443#', 2),
(14, 'Warid', 'Weekly', 7, 300, 50, '*443#', 2),
(15, 'Warid', 'Weekly', 7, 1000, 110, '*443#', 2),
(16, 'Warid', 'Monthly', 30, 1500, 160, '*443#', 2),
(17, 'Warid', 'Monthly', 30, 2000, 300, '*443#', 2),
(18, 'Warid', 'Monthly', 30, 5000, 500, '*443#', 2),
(19, 'Warid', 'Monthly', 30, 8000, 800, '*443#', 2),
(20, 'Mobilink', 'Mobilink Daily 3G Package', 1, 100, 18, '*117*1', 3),
(21, 'Mobilink', 'Super Daily 3G', 1, 200, 30, '*117*4#', 3),
(22, 'Mobilink', 'Mobilink 3G 3-Day Package', 3, 300, 42, '*117*3#', 3),
(23, 'Mobilink', 'Mobilink 3G Weekly Package', 7, 1500, 72, '117*7#', 3),
(24, 'Mobilink', '3G Weekly Package', 7, 2500, 120, '*117*77#', 3),
(25, 'Mobilink', 'Mobilink 3G Monthly Lite Package', 30, 2000, 239, '*117*31#', 3),
(26, 'Mobilink', 'Mobilink 3G Monthly Heavy Package', 30, 4500, 478, '*117*30#', 3),
(27, 'Mobilink', 'Mobilink 3G Monthly Super Package', 30, 12000, 1195, '*117*32#', 3),
(28, 'Ufone', 'Daily Light Bucket', 1, 40, 10, '*804#', 4),
(29, 'Ufone', 'Daily Heavy Bucket', 1, 75, 15, '*8042#', 4),
(30, 'Ufone', 'Ufone 3-Day 3G Bucket', 3, 100, 25, '*3350#', 4),
(31, 'Ufone', 'Weekly Light Bucket', 7, 250, 50, '*7811#', 4),
(32, 'Ufone', 'Weekly Heavy Bucket', 7, 500, 125, '*7815#', 4),
(33, 'ufone', 'Monthly 1GB Bucket', 30, 1000, 250, '*7807#', 4),
(34, 'Ufone', 'Monthly 3GB Bucket', 30, 3000, 500, '*803#', 4),
(35, 'Ufone', 'Monthly 10GB Bucket', 30, 10000, 1000, '*5100#', 4),
(36, 'Zong', 'Daily Mini 3G Package', 1, 20, 5, 'Send "db" to 6464', 5),
(37, 'Zong', 'Zong Daily Basic 3G, 4G', 1, 100, 15, 'Sms "db" to 6464', 5),
(38, 'Zong', 'Zond Daily Premium 3G, 4G', 1, 200, 25, 'Sms "dp" to 6464', 5),
(39, 'Zong', 'Zong Weekly 3G, 4G', 7, 700, 70, 'Sms "weekly" to 6464', 5),
(40, 'Zong', 'Monthly Mini 4G', 30, 500, 150, 'Sms "m500MB" to 6464', 5),
(41, 'Zong', 'Zong monthly Premium 1-GB', 30, 1000, 250, 'Sms "m1GB" to 6464', 5),
(42, 'Zong', 'Zong monthly Premium 2-GB', 30, 2000, 300, 'Sms "m4GB" to 6464', 5),
(43, 'Zong', 'Zong monthly Premium 4-GB', 30, 4000, 650, 'Sms "m10GB" to 6464', 5),
(44, 'Zong', 'Zong monthly Premium 10-GB', 30, 10000, 1500, 'Send "m10GB" to 6464', 5),
(45, 'Zong', 'Zong monthly Premium 20-GB', 30, 20000, 2500, 'Sms "m20GB" to 6464', 5),
(46, 'Zong', 'Monthly Premium 30-GB', 30, 30000, 3500, 'Sms "m30GB"  to 6464', 5);

-- --------------------------------------------------------

--
-- Table structure for table `signals_strength`
--

CREATE TABLE `signals_strength` (
  `SS_id` int(5) NOT NULL,
  `Company_Name` varchar(25) NOT NULL,
  `Location` varchar(25) NOT NULL,
  `City` varchar(25) NOT NULL,
  `Signals` varchar(5) NOT NULL,
  `Rating` varchar(25) NOT NULL,
  `C_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signals_strength`
--

INSERT INTO `signals_strength` (`SS_id`, `Company_Name`, `Location`, `City`, `Signals`, `Rating`, `C_id`) VALUES
(1, 'Telenor', 'Kohsar', 'Hyderabad', '**', 'BAD', 1),
(2, 'Ufone', 'Kohsar', 'Hyderabad', '**', 'BAD', 4),
(3, 'Telenor', 'Latifabad', 'Hyderabad', '****', 'Good', 1),
(4, 'Ufone', 'Qasimabad', 'Hyderabad', '****', 'Good', 4),
(5, 'Zong', 'Qasimabad', 'Hyderabad', '*****', 'Excellent', 5),
(6, 'Telenor', 'Qasimabad', 'Hyderabad', '*****', 'Excellent', 1),
(7, 'Warid', 'Qasimabad', 'Hyderabad', '***', 'Fair', 2),
(8, 'Mobilink', 'Qasimabad', 'Hyderabad', '****', 'Excellent', 3),
(9, 'Warid', 'Kohsar', 'Hyderabad', '**', 'Bad', 2),
(10, 'Mobilink', 'Kohsar', 'Hyderabad', '*****', 'Excellent', 3),
(11, 'Zong', 'Kohsar', 'Hyderabad', '*****', 'Excellent', 5),
(12, 'Warid', 'Latifabad', 'Hyderabad', '*****', 'Excellent', 2),
(13, 'Mobilink', 'Latifabad', 'Hyderabad', '*****', 'Excellent', 3),
(14, 'Ufone', 'Latifabad', 'Hyderabad', '****', 'Good', 4),
(15, 'Zong', 'Latifabad', 'Hyderabad', '****', 'Good', 5),
(16, 'Mobilink', 'Zeal Pak', 'Hyderabad', '*****', 'Excellent', 3),
(17, 'Warid', 'Zeal Pak', 'Hyderabad', '***', 'Fair', 2),
(18, 'Telenor', 'Zeal Pak', 'Hyderabad', '****', 'Good', 1),
(19, 'Ufone', 'Zeal Pak', 'Hyderabad', '****', 'Good', 4),
(20, 'Zong', 'Zeal Pak', 'Hyderabad', '****', 'Good', 5),
(21, 'Mobilink', 'Site Area', 'Hyderabad', '*****', 'Excellent', 3),
(22, 'Warid', 'Site Area', 'Hyderabad', '***', 'Fair', 2),
(23, 'Telenor', 'Site Area', 'Hyderabad', '*****', 'Excellent', 1),
(24, 'Ufone', 'Site Area', 'Hyderabad', '****', 'Good', 4),
(25, 'Zong', 'Site Area', 'Hyderabad', '***', 'Fair', 5),
(26, 'Mobilink', 'Clifton', 'Karachi', '*****', 'Excellent', 3),
(27, 'Warid', 'Clifton', 'Karachi', '***', 'Fair', 2),
(28, 'Telenor', 'Clifton', 'Karachi', '*****', 'Excellent', 1),
(29, 'Ufone', 'Clifton', 'Karachi', '*****', 'Excellent', 4),
(30, 'Zong', 'Clifton', 'Karachi', '****', 'Good', 5);

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `S_id` int(5) NOT NULL,
  `Company_Name` varchar(25) NOT NULL,
  `Package_Name` varchar(50) NOT NULL,
  `Validity` int(3) NOT NULL,
  `Volume` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Activation_code` varchar(50) NOT NULL,
  `C_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms`
--

INSERT INTO `sms` (`S_id`, `Company_Name`, `Package_Name`, `Validity`, `Volume`, `Price`, `Activation_code`, `C_id`) VALUES
(1, 'Telenor', 'Daily_Messaging', 1, 300, 2, '*2*2*1#', 1),
(2, 'Ufone', 'Daily Package', 1, 1500, 4, 'SMS ''Sub'' to ''605''', 4),
(3, 'Telenor', 'Telenor Weekly SMS Package', 7, 1200, 10, '*2*2*2#', 1),
(4, 'Telenor', 'Weekly Sms bundle', 7, 1200, 8, '*2*2*#', 1),
(5, 'Telenor', 'Telenor Monthly Sms Package', 15, 10000, 40, '*2*2*3#', 1),
(6, 'Telenor', '12 Telenor Minutes', 7, 700, 12, '*345*105#', 1),
(7, 'Telenor', 'Telenor Daily Sms Package', 1, 200, 4, '*345*116#', 1),
(8, 'Telenor', 'Telenor Weekly Sms Package', 7, 1000, 11, '*345*117#', 1),
(9, 'Telenor', 'Telenor 15 Dat Economy Sms Package', 15, 600, 14, '*345*112#', 1),
(10, 'Telenor', 'Telenor 5 Day SMS Package', 5, 300, 7, '*345*015#', 1),
(11, 'Warid', 'Daily Sms', 1, 500, 3, '*200*2#', 2),
(12, 'Warid', '3 Day Sms', 3, 500, 5, '*200*526#', 2),
(15, 'Warid', 'Weekly Sms', 7, 1300, 10, 'Sms "WS" to 3333', 2),
(16, 'Warid', 'Monthly Sms', 30, 10000, 70, '*200*767#', 2),
(17, 'Mobilink', 'Mobilink SMS Plus', 1, 150, 2, '*106*1#', 3),
(18, 'Mobilink', 'Mobilink SMS plus- Jazba', 1, 300, 2, '*106*90#', 3),
(19, 'Mobilink', 'Mobilink Daily Unlimited Sms Bundle', 1, 1200, 4, '*101*1*01#', 3),
(20, 'Mobilink', 'Weekly Sms Bundle', 7, 2000, 9, '*101*1*02#', 3),
(21, 'Mobilink', 'Mobilinbk Monthly Sms Bundle', 30, 8000, 80, '*101*1*02#', 3),
(22, 'Mobilink', 'Monthly Sms Bundle-Jazba', 30, 8000, 50, '*101*1*02#', 3),
(23, 'Ufone', 'Fortnightly Package', 14, 10000, 30, 'SMS ''Sub'' to ''603''', 4),
(24, 'Ufone', 'Unlimited Package', 30, 20000, 80, 'SMS ''Sub'' to ''607''', 4),
(25, 'Ufone', 'Yearly SMS Package', 365, 100000, 666, 'SMS ''Sub'' to ''601''', 4),
(27, 'Ufone', 'Weekly Sms Bucket', 7, 1200, 10, 'SMS ''Sub'' to ''608''', 4),
(28, 'Ufone', 'Daily On-Net Sms Package', 1, 500, 2, 'SMS ''Sub'' to ''611''', 4),
(29, 'Ufone', '45 Days Sms Bucket', 45, 30000, 99, 'SMS ''Sub'' to ''614''', 4),
(30, 'Telenor', 'Monthly Sms Pack', 30, 10000, 40, '*2*2*3#', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`Cl_id`);

--
-- Indexes for table `combo`
--
ALTER TABLE `combo`
  ADD PRIMARY KEY (`Com_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`C_id`),
  ADD UNIQUE KEY `C_name` (`C_name`);

--
-- Indexes for table `internet`
--
ALTER TABLE `internet`
  ADD PRIMARY KEY (`I_id`);

--
-- Indexes for table `signals_strength`
--
ALTER TABLE `signals_strength`
  ADD PRIMARY KEY (`SS_id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`S_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calls`
--
ALTER TABLE `calls`
  MODIFY `Cl_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `combo`
--
ALTER TABLE `combo`
  MODIFY `Com_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `internet`
--
ALTER TABLE `internet`
  MODIFY `I_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `signals_strength`
--
ALTER TABLE `signals_strength`
  MODIFY `SS_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `S_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
