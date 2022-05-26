-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2019 at 03:28 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `articles`
--
CREATE DATABASE IF NOT EXISTS `articles` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `articles`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'RAHIB P. ABU HALIL', 'abohalilr@gmail.com', NULL, '$2y$10$tNRbkokcsFLTKovq0bgD9umVXc7jERJn2g7H80QZlVYjsm2yEwqN6', NULL, '2019-08-23 06:47:53', '2019-08-23 06:47:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `colab_lights`
--
CREATE DATABASE IF NOT EXISTS `colab_lights` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `colab_lights`;

-- --------------------------------------------------------

--
-- Table structure for table `assigning`
--

CREATE TABLE `assigning` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `courier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assigning`
--

INSERT INTO `assigning` (`id`, `request_id`, `user_id`, `courier`) VALUES
(11, 87, 0, '85'),
(12, 89, 0, '85'),
(13, 90, 0, '86');

-- --------------------------------------------------------

--
-- Table structure for table `bookingcalendar`
--

CREATE TABLE `bookingcalendar` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `item` varchar(20) NOT NULL,
  `start_day` int(11) DEFAULT NULL,
  `end_day` int(11) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `canceled` int(1) DEFAULT NULL,
  `age` varchar(60) NOT NULL,
  `gender` varchar(60) NOT NULL,
  `sAddress` varchar(60) NOT NULL,
  `city` varchar(60) NOT NULL,
  `locAddress` varchar(60) NOT NULL,
  `eventType` varchar(60) NOT NULL,
  `estVisitors` varchar(60) NOT NULL,
  `typeLoc` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingcalendar`
--

INSERT INTO `bookingcalendar` (`id`, `name`, `phone`, `item`, `start_day`, `end_day`, `start_time`, `end_time`, `canceled`, `age`, `gender`, `sAddress`, `city`, `locAddress`, `eventType`, `estVisitors`, `typeLoc`) VALUES
(108, 'miranda, mark brian R', '', 'DIY', 1554501600, NULL, 7200, NULL, NULL, '23', '', '', '8391221', 'Brian Miranda', '111 Taga sulok', '', '8391121');

-- --------------------------------------------------------

--
-- Table structure for table `tblitems`
--

CREATE TABLE `tblitems` (
  `ItemId` bigint(20) NOT NULL,
  `Code` varchar(10) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Unit` varchar(100) DEFAULT NULL,
  `IsActive` smallint(1) DEFAULT NULL,
  `MaxQty` smallint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblitems`
--

INSERT INTO `tblitems` (`ItemId`, `Code`, `Description`, `Unit`, `IsActive`, `MaxQty`) VALUES
(1, 'BL-01', 'Ballpen', 'pcs', 1, 10),
(2, 'BL-02', 'Marker', 'pcs', 1, 5),
(4, 'PR-01', 'Bond Paper (A4)', 'pack', 1, 2),
(5, 'PC-02', 'Mouse', 'pcs', 0, 2),
(6, 'PC-12', 'Monitor', 'pcs', 1, 2),
(7, 'EN-S1', 'Sealed Envelop', 'pcs', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblitemtemp`
--

CREATE TABLE `tblitemtemp` (
  `itemId` varchar(10) DEFAULT NULL,
  `itemQty` varchar(10) DEFAULT NULL,
  `FileType` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblrequestitems`
--

CREATE TABLE `tblrequestitems` (
  `RequestItemId` smallint(100) NOT NULL,
  `RequestId` smallint(100) DEFAULT NULL,
  `ItemId` tinyint(20) DEFAULT NULL,
  `FileTypeId` tinyint(10) DEFAULT NULL,
  `Qty` tinyint(10) DEFAULT NULL,
  `ApprovedDate` datetime DEFAULT NULL,
  `ApprovedBy` tinyint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrequestitems`
--

INSERT INTO `tblrequestitems` (`RequestItemId`, `RequestId`, `ItemId`, `FileTypeId`, `Qty`, `ApprovedDate`, `ApprovedBy`) VALUES
(183, 111, 2, 1, 2, '0000-00-00 00:00:00', 0),
(184, 112, 7, 2, 4, '0000-00-00 00:00:00', 0),
(185, 112, 1, 2, 6, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblrequests`
--

CREATE TABLE `tblrequests` (
  `RequestId` smallint(100) NOT NULL,
  `RecName` varchar(100) DEFAULT NULL,
  `RecContact` varchar(50) DEFAULT NULL,
  `RecAddress` varchar(250) DEFAULT NULL,
  `TransDate` date DEFAULT NULL,
  `DeliveryDate` varchar(255) DEFAULT NULL,
  `DeliveryTime` varchar(255) DEFAULT NULL,
  `ApprovedDate` varchar(255) DEFAULT NULL,
  `ApproveBy` tinyint(10) DEFAULT NULL,
  `RequestById` tinyint(10) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrequests`
--

INSERT INTO `tblrequests` (`RequestId`, `RecName`, `RecContact`, `RecAddress`, `TransDate`, `DeliveryDate`, `DeliveryTime`, `ApprovedDate`, `ApproveBy`, `RequestById`, `Status`) VALUES
(111, 'dsadsa', '432432', 'OSAS', '2019-05-27', '05/29/2019', '15:2400', '', 0, 83, 'Active'),
(112, '2432432dsa', '324324', 'OSAS', '2019-05-27', '05/30/2019', '03:4200', '', 0, 83, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cat`
--

CREATE TABLE `tbl_cat` (
  `cat_id` int(11) NOT NULL,
  `cat_desc` varchar(50) NOT NULL,
  `isActive` smallint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cat`
--

INSERT INTO `tbl_cat` (`cat_id`, `cat_desc`, `isActive`) VALUES
(1, 'Confidential', 1),
(2, 'Non-Confidential', 1),
(3, 'Scraft Document', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_con`
--

CREATE TABLE `tbl_con` (
  `con_id` int(11) NOT NULL,
  `con_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_con`
--

INSERT INTO `tbl_con` (`con_id`, `con_desc`) VALUES
(1, 'Delivered'),
(2, 'Delivering');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `emp_id` int(11) NOT NULL,
  `emp_fname` varchar(100) NOT NULL,
  `emp_mname` varchar(100) NOT NULL,
  `emp_lname` varchar(100) NOT NULL,
  `pos_id` int(11) NOT NULL,
  `off_id` int(11) NOT NULL,
  `emp_un` varchar(100) NOT NULL,
  `emp_pass` varchar(40) NOT NULL,
  `type_id` int(11) NOT NULL,
  `emp_at_deped` tinyint(1) NOT NULL,
  `emp_age` varchar(2) NOT NULL,
  `emp_gender` varchar(4) NOT NULL,
  `emp_sAddress` varchar(55) NOT NULL,
  `emp_barangay` varchar(55) NOT NULL,
  `emp_city` varchar(55) NOT NULL,
  `isActive` smallint(1) DEFAULT NULL,
  `RegisteredDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`emp_id`, `emp_fname`, `emp_mname`, `emp_lname`, `pos_id`, `off_id`, `emp_un`, `emp_pass`, `type_id`, `emp_at_deped`, `emp_age`, `emp_gender`, `emp_sAddress`, `emp_barangay`, `emp_city`, `isActive`, `RegisteredDate`) VALUES
(37, 'Ayen', 'E', 'Barion', 2, 2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 1, 1, '', '1', '', '', '', 2, '2019-04-23 21:49:30'),
(39, 'Samier', 'P', 'Sanday', 1, 1, 'user', '21232f297a57a5a743894a0e4a801fc3', 1, 0, '', '1', '', '', '', 1, '2019-04-16 21:49:36'),
(48, 'Regine', '', 'Sy', 2, 2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 0, '', '0', '', '', '', 1, '2019-04-03 21:49:40'),
(70, 'Admin', '', 'Account', 2, 1, 'admin2', 'YWRtaW4y', 2, 0, '', '1', '', '', '', 1, '2019-04-23 21:56:45'),
(83, 'User ', 'u', 'One', 2, 1, 'user1', 'dXNlcg==', 1, 0, '', '1', '', '', '', 1, NULL),
(84, 'User', 'u', 'Two', 2, 8, 'user2', 'dXNlcg==', 1, 0, '', '1', '', '', '', 1, NULL),
(85, 'courier', 'v', 'One', 2, 1, 'courier1', 'Y291cmllcg==', 3, 0, '', '1', '', '', '', 1, NULL),
(86, 'courier', 'c', 'Two', 2, 1, 'courier2', 'Y291cmllcg==', 3, 0, '', '1', '', '', '', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_emp_type`
--

CREATE TABLE `tbl_emp_type` (
  `type_id` int(11) NOT NULL,
  `type_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_emp_type`
--

INSERT INTO `tbl_emp_type` (`type_id`, `type_desc`) VALUES
(1, 'User'),
(2, 'Admin'),
(3, 'Courier');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item`
--

CREATE TABLE `tbl_item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_serno` varchar(50) NOT NULL,
  `item_modno` varchar(50) NOT NULL,
  `item_brand` varchar(50) NOT NULL,
  `item_amount` double NOT NULL,
  `item_purdate` date NOT NULL,
  `emp_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `con_id` int(11) NOT NULL DEFAULT '4',
  `status_id` int(11) NOT NULL DEFAULT '4'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_item`
--

INSERT INTO `tbl_item` (`item_id`, `item_name`, `item_serno`, `item_modno`, `item_brand`, `item_amount`, `item_purdate`, `emp_id`, `cat_id`, `con_id`, `status_id`) VALUES
(1, 'Registration Form', '01', '1', 'Normal', 0, '2019-02-16', 48, 2, 1, 4),
(2, 'HR Document', '02', '3', 'Confidential', 1, '2019-02-16', 39, 1, 1, 4),
(3, 'Endorsement', ' ', ' 2', ' ', 1, '2019-03-01', 39, 2, 1, 4),
(4, 'OJT Form (1)', ' ', ' ', ' ', 0, '2019-03-01', 39, 2, 1, 4),
(5, 'OJT List Of Requirements', ' ', '3', 'OJT List Of Requirements', 0, '0000-00-00', 39, 1, 1, 4),
(6, 'Design For Nutrition Month', ' ', ' ', ' ', 0, '0000-00-00', 39, 2, 1, 4),
(7, 'Notary', '022', '9', 'DIY', 0, '0000-00-00', 39, 1, 1, 4),
(8, 'Notary 2019', ' ', ' ', ' ', 0, '0000-00-00', 39, 2, 1, 4),
(9, 'Brian', ' 1541941561', ' 7', ' Hfhjfjh', 0, '2019-04-04', 39, 1, 1, 4),
(10, 'Mel', ' ', ' ', ' ', 5000, '2019-04-01', 39, 2, 1, 4),
(11, 'Thesis', '23-32145', ' 1', 'band paper', 0, '2019-04-04', 48, 2, 1, 4),
(12, 'TCU Cerf', ' ', ' ', ' ', 0, '0000-00-00', 39, 2, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_status`
--

CREATE TABLE `tbl_item_status` (
  `status_id` int(11) NOT NULL,
  `status_desc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_item_status`
--

INSERT INTO `tbl_item_status` (`status_id`, `status_desc`) VALUES
(1, 'Return'),
(2, 'For Transfer'),
(3, 'For Delivery'),
(4, 'none');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_off`
--

CREATE TABLE `tbl_off` (
  `off_id` int(11) NOT NULL,
  `off_desc` varchar(50) NOT NULL,
  `off_code` varchar(10) DEFAULT NULL,
  `isActive` smallint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_off`
--

INSERT INTO `tbl_off` (`off_id`, `off_desc`, `off_code`, `isActive`) VALUES
(1, 'OSAS', 'ADM-OSAS', 1),
(2, 'Registrar', 'ADM-REG', 1),
(8, 'MIS', 'ADM-MIS', 1),
(9, 'HR OFFICE', 'HR OFFICE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos`
--

CREATE TABLE `tbl_pos` (
  `pos_id` int(11) NOT NULL,
  `pos_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pos`
--

INSERT INTO `tbl_pos` (`pos_id`, `pos_desc`) VALUES
(1, 'Admin Account'),
(2, 'User Account');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request`
--

CREATE TABLE `tbl_request` (
  `req_id` int(11) NOT NULL,
  `req_date` date NOT NULL,
  `item_id` int(11) NOT NULL,
  `req_type_id` int(11) NOT NULL,
  `req_status_id` int(11) NOT NULL DEFAULT '1',
  `req_is_done` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_req_status`
--

CREATE TABLE `tbl_req_status` (
  `req_status_id` int(11) NOT NULL,
  `req_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_req_status`
--

INSERT INTO `tbl_req_status` (`req_status_id`, `req_status_desc`) VALUES
(1, 'Condemed'),
(2, 'Accepted'),
(3, 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_req_type`
--

CREATE TABLE `tbl_req_type` (
  `req_type_id` int(11) NOT NULL,
  `req_type_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_req_type`
--

INSERT INTO `tbl_req_type` (`req_type_id`, `req_type_desc`) VALUES
(1, 'Repair'),
(2, 'Transfer'),
(3, 'Condemned');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) DEFAULT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `RPassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigning`
--
ALTER TABLE `assigning`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookingcalendar`
--
ALTER TABLE `bookingcalendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblitems`
--
ALTER TABLE `tblitems`
  ADD KEY `ItemId` (`ItemId`);

--
-- Indexes for table `tblrequestitems`
--
ALTER TABLE `tblrequestitems`
  ADD PRIMARY KEY (`RequestItemId`);

--
-- Indexes for table `tblrequests`
--
ALTER TABLE `tblrequests`
  ADD PRIMARY KEY (`RequestId`);

--
-- Indexes for table `tbl_cat`
--
ALTER TABLE `tbl_cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_con`
--
ALTER TABLE `tbl_con`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `pos_id` (`pos_id`),
  ADD KEY `off_id` (`off_id`);

--
-- Indexes for table `tbl_emp_type`
--
ALTER TABLE `tbl_emp_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tbl_item`
--
ALTER TABLE `tbl_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `con_id` (`con_id`);

--
-- Indexes for table `tbl_item_status`
--
ALTER TABLE `tbl_item_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tbl_off`
--
ALTER TABLE `tbl_off`
  ADD PRIMARY KEY (`off_id`);

--
-- Indexes for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD PRIMARY KEY (`req_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `req_type_id` (`req_type_id`),
  ADD KEY `req_status_id` (`req_status_id`);

--
-- Indexes for table `tbl_req_status`
--
ALTER TABLE `tbl_req_status`
  ADD PRIMARY KEY (`req_status_id`);

--
-- Indexes for table `tbl_req_type`
--
ALTER TABLE `tbl_req_type`
  ADD PRIMARY KEY (`req_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigning`
--
ALTER TABLE `assigning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bookingcalendar`
--
ALTER TABLE `bookingcalendar`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `tblitems`
--
ALTER TABLE `tblitems`
  MODIFY `ItemId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblrequestitems`
--
ALTER TABLE `tblrequestitems`
  MODIFY `RequestItemId` smallint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `tblrequests`
--
ALTER TABLE `tblrequests`
  MODIFY `RequestId` smallint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `tbl_cat`
--
ALTER TABLE `tbl_cat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_con`
--
ALTER TABLE `tbl_con`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tbl_emp_type`
--
ALTER TABLE `tbl_emp_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_item`
--
ALTER TABLE `tbl_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_item_status`
--
ALTER TABLE `tbl_item_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_off`
--
ALTER TABLE `tbl_off`
  MODIFY `off_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_request`
--
ALTER TABLE `tbl_request`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_req_status`
--
ALTER TABLE `tbl_req_status`
  MODIFY `req_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_req_type`
--
ALTER TABLE `tbl_req_type`
  MODIFY `req_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD CONSTRAINT `tbl_employee_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `tbl_emp_type` (`type_id`),
  ADD CONSTRAINT `tbl_employee_ibfk_2` FOREIGN KEY (`pos_id`) REFERENCES `tbl_pos` (`pos_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_employee_ibfk_3` FOREIGN KEY (`off_id`) REFERENCES `tbl_off` (`off_id`);

--
-- Constraints for table `tbl_item`
--
ALTER TABLE `tbl_item`
  ADD CONSTRAINT `tbl_item_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`),
  ADD CONSTRAINT `tbl_item_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `tbl_cat` (`cat_id`),
  ADD CONSTRAINT `tbl_item_ibfk_4` FOREIGN KEY (`status_id`) REFERENCES `tbl_item_status` (`status_id`),
  ADD CONSTRAINT `tbl_item_ibfk_5` FOREIGN KEY (`con_id`) REFERENCES `tbl_con` (`con_id`);
--
-- Database: `connections`
--
CREATE DATABASE IF NOT EXISTS `connections` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `connections`;
--
-- Database: `crud_ajax`
--
CREATE DATABASE IF NOT EXISTS `crud_ajax` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `crud_ajax`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(10183, 'Modesta Strosina', 'brown.nathanial@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Z4mZHHOcZh', '2019-01-31 23:49:45', '2019-02-03 19:32:06'),
(10184, 'Benny Crist I', 'wintheiser.guy@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'cSWTAUxnHq', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10185, 'Michale West', 'schuster.shanelle@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ttSvkJQ8rN', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10186, 'Noemy Kunde DVM', 'eino11@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'AVfp9Vc1hZ', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10187, 'Kurtis Grant DDS', 'sanford99@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FgYkct3K4T', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10188, 'Alexandra Steuber', 'orlo87@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'hZF6iqQsZV', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10189, 'Melba Beier', 'alind@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'pc4Avh80vV', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10190, 'Nona Considine', 'trantow.enrico@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zGapaLUsri', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10191, 'Bridie Lesch PhD', 'chadd88@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6GgeeiGAT4', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10192, 'Mr. Gavin Rogahn', 'omante@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YLGqdWhers', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10193, 'Annette Kuvalis', 'imelda.rosenbaum@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Re3wD1kJtu', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10194, 'Howell Durgan', 'andreane.williamson@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'v2dLmqTqya', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10195, 'Arturo Fritsch', 'vandervort.lenore@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'aFjwrfOQ3i', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10196, 'Grayson Dietrich', 'gibson.eli@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'AJYoNEYmSh', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10197, 'Destin Kutch', 'claudia.altenwerth@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'EGBvVz1zED', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10198, 'Devin Miller', 'ycorkery@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Rg4wRsMd4J', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10199, 'Marques Boyer II', 'dangelo.friesen@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'NKq1aFtrQO', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10200, 'Ms. Zetta Jones MD', 'perry61@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UmjmtGw7mF', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10201, 'Miss Vivienne Cassin V', 'zrutherford@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '4mJxR6e81G', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10202, 'Cathrine Breitenberg', 'jerel.carroll@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '91viBee4my', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10203, 'Sadye Lowe', 'prohaska.isabell@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'uGca4BvZYT', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10204, 'Sydnee Turner', 'kub.rae@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ZXa3cm2qUi', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10205, 'Kali Powlowski', 'ahodkiewicz@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'nS4qK8IkMV', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10206, 'Hillard Mraz', 'kub.joey@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dPV1iomq10', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10207, 'Mr. Darryl Stokes', 'roxane.reichert@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Ivs5uYDfYi', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10208, 'Melvin Schamberger', 'aglae.lowe@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8Qs8SZynVV', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10209, 'Electa Trantow', 'zkreiger@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'og1f7IT4YF', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10210, 'Dr. Lilliana Conroy MD', 'nia66@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'JBE5GiM4Nh', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10211, 'Glenna Howell', 'ratke.retta@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'kyaBSNG5Dg', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10212, 'Dorcas Kilback', 'stamm.roel@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'eArVE6e30F', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10213, 'Rogers Goldner III', 'caroline86@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'c5lTkjE9QB', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10214, 'Santino Renner V', 'santino57@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8ptLqxjw6c', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10215, 'Nova Gutmann', 'zbosco@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ifhuGXznGs', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10216, 'Jeremie McKenzie', 'zhagenes@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6ClraHMGoK', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10217, 'Guillermo Lind Sr.', 'rgoodwin@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YWuQnihIQ9', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10218, 'Emile Jacobson', 'jordyn.olson@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UjJhPulB2v', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10219, 'Jo Heller III', 'effertz.scarlett@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'RIzngYEAH7', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10220, 'Mr. Jaden Schroeder', 'connor14@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Xj8mtabEyX', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10221, 'Elmo Schulist', 'fatima29@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'X7DquEOS2C', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10222, 'Maia Crist DVM', 'gretchen.brekke@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'y9RZ2WA8IN', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10223, 'Oda Lebsack', 'kelvin25@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'MBmlzYFtvs', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10224, 'Rudy Wilderman DVM', 'heather.price@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'CSNcsR5UUr', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10225, 'Sidney Wolf', 'ilabadie@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'q2xea6OHtN', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10226, 'Joaquin McCullough', 'kautzer.monte@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QkL5negDLx', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10227, 'Avery Nikolaus', 'jefferey.turner@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'bw1TceQ3kN', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10228, 'Carmen Stamm', 'pheller@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '37n723FQoF', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10229, 'Ian Goyette', 'mheller@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'WnBy9Rl4wP', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10230, 'Dr. Otto Pollich V', 'boris72@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9dqq3aQEFk', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10231, 'Dr. Brooks Hagenes', 'zackary.roob@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'KPp6Ri0nkh', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10232, 'Claudie Franecki', 'norberto53@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'M6H1ufAWlh', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10233, 'Wayne Labadie', 'andrew00@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'uuCyAxVd5Y', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10234, 'Agustina Bayer', 'terrance.bartell@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '2w2VaL97fJ', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10235, 'Gunner Goyette', 'volkman.coleman@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ebV2tnH5qJ', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10236, 'Macy Tremblay Jr.', 'twila.balistreri@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3zGiMAjQcp', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10237, 'Lyric Schroeder', 'piper.mohr@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'nESODQlkiF', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10238, 'Prof. Reva Borer DVM', 'edison.fritsch@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XXuecfPwcX', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10239, 'Ursula Bartoletti', 'buford17@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'DbC7DT6tmo', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10240, 'Rosalinda Steuber', 'aliyah96@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YclSGPN18f', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10241, 'Mr. Tyshawn Braun', 'giovanni.sporer@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wXL5liyZp3', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10242, 'Jada Goodwin', 'hmayer@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Z1itMfbRqz', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10243, 'Dominique Sawayn', 'romaine48@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5u9HoL4xJh', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10244, 'Amber Luettgen', 'cecelia46@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qTrXRZUrkm', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10245, 'Abbigail Olson', 'bwilkinson@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'JrrpxWNaUs', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10246, 'Prof. Emmitt Feest Sr.', 'henriette.weissnat@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'V5RP4HPTFZ', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10247, 'Sage Kemmer', 'swaniawski.gussie@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'naOH3IvIPp', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10248, 'Kathryn Heaney', 'zfunk@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'mIzO8i9xiz', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10249, 'Shaylee Beer', 'upton.maverick@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Z8TsrOKXX1', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10250, 'Dr. Bernardo Bernier Sr.', 'hlynch@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zQX2qoXqG0', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10251, 'Americo Schaden', 'priscilla74@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wMrhSMBNrU', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10252, 'Mr. Bryce Mayert MD', 'vpurdy@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UAupKY4lMX', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10253, 'Tremaine Lynch Jr.', 'kelvin94@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'hgz3Mi33mr', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10254, 'Ms. Zoe Abbott', 'icremin@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'z5nQmlm3py', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10255, 'Vena Wunsch', 'delilah.mayer@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SsHkaFQ4Co', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10256, 'Tressa Schmidt', 'trantow.vidal@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OoHbNHrae8', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10257, 'Demarco Mitchell', 'lambert.durgan@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3KEdXWuY3f', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10258, 'Elmore Nitzsche', 'mohr.dedric@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'yePK9zbuIo', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10259, 'Bethany Wilkinson', 'gene70@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '2Ek0kXtA6P', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10260, 'Pamela Thiel', 'fabiola.ortiz@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'iyMaTTKsV8', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10261, 'Maria Russel V', 'graham.henry@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '7BfFmK3nIg', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10262, 'John Lockman', 'crystel.dooley@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'yqmC499h6e', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10263, 'Moshe Adams', 'aubrey.kozey@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gqxjRynApF', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10264, 'Sydni Padberg', 'hudson.amy@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Uiz9OdD0Nq', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10265, 'Tristin Willms IV', 'lavonne71@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'i4iXnNVtqj', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10266, 'Prof. Taylor Swaniawski', 'mrutherford@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '4tYJjEeJ1a', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10267, 'Mrs. Candida Larkin', 'umuller@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'uesLklODum', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10268, 'Alexzander Barrows', 'pfriesen@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'hl44vDbiir', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10269, 'Georgianna Harris', 'green.christophe@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5dbIAJCp44', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10270, 'Ms. Jennie Kessler', 'uheaney@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ceTy0BLb4T', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10271, 'Mr. Isaac Russel', 'dbaumbach@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jeNdH8EglZ', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10272, 'Dr. Alyson Wuckert MD', 'isom.wilderman@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YnHEhgv1vF', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10273, 'Arch Turcotte', 'hills.camila@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'upugtcyglY', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10274, 'Prof. Lionel Pollich V', 'deondre15@example.net', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6TUuYyeEsb', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10275, 'Miss Lauretta Gislason Jr.', 'ggoodwin@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'GsHM58DMe3', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10276, 'Tyler Bauch', 'jeramie23@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'cUZGnjf0Iw', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10277, 'Tyler Skiles', 'paxton43@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'PvJGUFKdjU', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10278, 'Rico Hudson', 'ywalter@example.org', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'TEMWT38YGO', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10279, 'Lizeth Baumbach I', 'cormier.alva@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'hKdbtdGsJq', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10280, 'Marjolaine Ernser DVM', 'hyman.crist@example.com', '2019-01-31 23:49:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'A21fGxuDMR', '2019-01-31 23:49:45', '2019-01-31 23:49:45'),
(10285, 'Rahib P. Abu Halil', 'abohalilr@gmail.com', NULL, NULL, NULL, '2019-02-03 21:14:54', '2019-02-03 21:14:54'),
(10288, 'sdaad', 'admin@rahib.com', NULL, NULL, NULL, '2019-02-06 00:15:18', '2019-02-06 00:15:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10289;
--
-- Database: `ecom`
--
CREATE DATABASE IF NOT EXISTS `ecom` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ecom`;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_title`, `icon`, `created_at`, `updated_at`) VALUES
(22, 'Samsung', 'samsung.png', NULL, NULL),
(24, 'Oppo', 'oppo.png', NULL, NULL),
(25, 'Cherry Mobile', 'cherry mobile.jpg', NULL, NULL),
(26, 'My Phone', 'my phone.jpg', NULL, NULL),
(28, 'SKK', 'skk.jpg', NULL, NULL),
(29, 'Apple', 'apple.png', NULL, NULL),
(30, 'SOUL', 'soul.jpeg', NULL, NULL),
(31, 'CYS', 'cys.jpg', NULL, NULL),
(34, 'Nokia', 'nokia.png', NULL, NULL),
(35, 'Huawei', 'huawei.png', NULL, NULL),
(36, 'Vivo', 'vivo.png', NULL, NULL),
(37, 'Asus', 'asus.png', NULL, NULL),
(38, 'Universal', 'universal.jpg', NULL, NULL),
(39, 'ZH & K', 'ZH&K.png', NULL, NULL),
(40, 'CKK', 'CKK.png', NULL, NULL),
(41, 'Alcatel', 'Alcatel.jpg', NULL, NULL),
(42, 'Arc Mobile', 'arc mobile.png', NULL, NULL),
(43, 'Star Mobile', 'Star mobile.png', NULL, NULL),
(44, 'Blackberry', 'Blackberry.png', NULL, NULL),
(45, 'v power', 'v-power.jpg', NULL, NULL),
(46, 'HBK', 'hbk.png', NULL, NULL),
(47, 'GUDI', 'gudi.jpg', NULL, NULL),
(48, 'FDT', 'fdt.jpg', NULL, NULL),
(49, 'TYLEX', 'tylex.jpg', NULL, NULL),
(50, 'N POWER', 'npower.jpg', NULL, NULL),
(51, 'LENOVO', 'lenovo.jpg', NULL, NULL),
(52, 'XPERIA', 'sony.png', NULL, NULL),
(53, 'LG', 'lg.png', NULL, NULL),
(54, 'MI', 'mi.jpg', NULL, NULL),
(55, 'QQ', 'qq.jpg', NULL, NULL),
(56, 'CHK99', 'chk.jpg', NULL, NULL),
(57, 'MSM.HK', 'msm.jfif', NULL, NULL),
(58, 'ALIBABA', 'alibaba.jpg', NULL, NULL),
(59, 'BAVIN', 'bavin.png', NULL, NULL),
(60, 'TRANSCEND', 'transcend.jpg', NULL, NULL),
(61, 'Qnet', 'qnet.jpg', NULL, NULL),
(62, 'Sandisk', 'sandisk.png', NULL, NULL),
(63, 'TNT', 'tnt.jpg', NULL, NULL),
(64, 'GLOBE', 'globe.png', NULL, NULL),
(65, 'TM', 'tm.png', NULL, NULL),
(66, 'SMART', 'smart.svg', NULL, NULL),
(67, 'YLIFE', 'ylife.jpg', NULL, NULL),
(68, 'XYX', 'xyx.jpg', NULL, NULL),
(69, 'JBL', 'jbl.png', NULL, NULL),
(70, 'AMG', 'amg.jpg', NULL, NULL),
(71, 'PBA', 'pba.png', NULL, NULL),
(72, 'Kimi', 'kimi.jpg', NULL, NULL),
(73, 'KDS', 'kds.png', NULL, NULL),
(74, 'beats', 'beats.webp', NULL, NULL),
(76, 'POKEMON', 'pokimon.png', NULL, NULL),
(77, 'Stereo headphones', 'headphones stereo.png', NULL, NULL),
(78, 'EAR BUDS', 'EAR BUDS.jpg', NULL, NULL),
(79, 'hello kitty', 'hello_kitty.gif', NULL, NULL),
(80, 'Coby', 'sponsor-coby_logo.png', NULL, NULL),
(81, 'Hyundai', 'Hyundai-logo-download-png.png', NULL, NULL),
(82, 'HDT', 'HDT-Logo.jpg', NULL, NULL),
(83, 'KEYIN', 'keyin.jpg', NULL, NULL),
(84, 'B06', 'B06.png', NULL, NULL),
(85, 'HTM', 'htm.png', NULL, NULL),
(86, 'Monopad', 'monopod.PNG', NULL, NULL),
(87, 'SONY', 'sony.png', NULL, NULL),
(88, 'KUKU', 'kuku.jpg', NULL, NULL),
(89, 'BLUETOOTH', 'bluetooth.png', NULL, NULL),
(90, 'JIATONG', 'JIATONG.PNG', NULL, NULL),
(91, 'REY BAN', '0_ray-ban_logo-thumb.jpg', NULL, NULL),
(92, 'BTS', '59e8c23b314ffb1bfba3d1b2-large.jpg', NULL, NULL),
(93, 'NBA', 's-l300.jpg', NULL, NULL),
(94, 'SHOCKPROOF', 'shockproof-logo-tablet.png', NULL, NULL),
(95, 'INCIPIO', 'incipio_logo-01.png', NULL, NULL),
(96, 'ACER', 'download.png', NULL, NULL),
(97, 'O+', 'opositive.jpg', NULL, NULL),
(98, 'QQ.JDS', 'images.jpg', NULL, NULL),
(99, 'Hp', 'download (1).png', NULL, NULL),
(100, 'WANG', 'Wanglogo.png', NULL, NULL),
(101, 'Q2', 'q2.png', NULL, NULL),
(102, 'Y LIFE', 'm069R4ET.jpg', NULL, NULL),
(103, '360 ring holder', 'rr.jpg', NULL, NULL),
(104, 'titanium', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_title`, `icon`, `created_at`, `updated_at`) VALUES
(37, 'Headset', 'headset.png', NULL, NULL),
(39, 'Cord', 'cord.jpg', NULL, NULL),
(40, 'Adaptor', 'adaptor.jpg', NULL, NULL),
(41, 'Charger', 'charger.jpg', NULL, NULL),
(42, 'Battery', 'battery.png', NULL, NULL),
(43, 'SIM CARD', 'sim.png', NULL, NULL),
(44, 'Tempered Glass', 'tempered.png', NULL, NULL),
(45, 'USB', 'flashdrive.png', NULL, NULL),
(46, 'keypad', 'keypad.png', NULL, NULL),
(47, 'Memory card', 'memorycard.jpg', NULL, NULL),
(48, 'Smartphone', '45457534-smartphone-logo-design-global-theme-vector-template-wireless-mobile-phone-logotype-concept-icon-.jpg', NULL, NULL),
(49, 'CAR Charger', 'carcharger.jpg', NULL, NULL),
(53, 'T-WOLF', 'TWolf.jpg', NULL, NULL),
(55, 'Wireless', 'wireless.jpg', NULL, NULL),
(56, 'Power bank', 'powerbank.png', NULL, NULL),
(57, 'DVD player', 'dvdplayer.png', NULL, NULL),
(60, 'microphone', 'Microphone.png', NULL, NULL),
(61, 'monopad', 'monopod.jpg', NULL, NULL),
(62, 'Remote', 'remote.PNG', NULL, NULL),
(63, 'SPEAKER', 'speaker.png', NULL, NULL),
(64, 'JACK', 'audiojack.PNG', NULL, NULL),
(65, 'SHADES', 'm_57bdf0f25632a0ad710000f4.jpg', NULL, NULL),
(66, 'HAT', 'il_fullxfull.1122069532_huzz.jpg', NULL, NULL),
(67, 'CASE', 'slim-clear-soft-tpu-shockproof-protector-cover-case-for-apple-iphone-7-plus_p20160914143939884.jpg', NULL, NULL),
(68, 'mouse', 'kx0zh54itfqwsu3grd13.png', NULL, NULL),
(69, 'ring stent', 'rr.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2019_03_23_020248_create_products_table', 2),
(6, '2019_03_23_022336_create_categories_table', 3),
(7, '2019_03_23_022354_create_brands_table', 3),
(8, '2019_04_15_085715_create_transactions_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_wholesale_price` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `totalAmountInWholeSale` int(11) NOT NULL,
  `totalAmountInRetail` int(11) NOT NULL,
  `qty_alert` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `product_title`, `product_wholesale_price`, `product_price`, `product_desc`, `product_image`, `quantity`, `totalAmountInWholeSale`, `totalAmountInRetail`, `qty_alert`, `status`, `created_at`, `updated_at`) VALUES
(26, '44', '22', 'J2 Pro', 25, 100, '', 'tempered Glass.jfif', 3, 75, 300, 2, NULL, NULL, NULL),
(27, '44', '22', 'J7 Core', 20, 100, '', 'tempered Glass.jfif', 8, 160, 800, 2, NULL, NULL, NULL),
(28, '44', '22', 'J7 Pro', 25, 100, '', 'tempered Glass.jfif', 0, 0, 0, 2, NULL, NULL, NULL),
(29, '44', '22', 'J7 Plus', 25, 100, '', 'tempered Glass.jfif', 7, 175, 700, 2, NULL, NULL, NULL),
(30, '44', '22', 'J7 Prime', 25, 100, '', 'tempered Glass.jfif', 2, 50, 200, 2, NULL, NULL, NULL),
(31, '44', '22', 'J5 Pro', 25, 100, '', 'tempered Glass.jfif', 5, 125, 500, 2, NULL, NULL, NULL),
(32, '44', '22', 'J1 Mini', 25, 100, '', 'tempered Glass.jfif', 5, 125, 500, 2, NULL, NULL, NULL),
(33, '44', '22', 'J7 Max', 25, 100, '', 'tempered Glass.jfif', 2, 50, 200, 2, NULL, NULL, NULL),
(34, '44', '22', 'J2 Prime', 25, 100, '', 'tempered Glass.jfif', 4, 100, 400, 2, NULL, NULL, NULL),
(35, '44', '22', 'J7 (2017)', 25, 100, '', 'tempered Glass.jfif', 5, 125, 500, 2, NULL, NULL, NULL),
(36, '44', '22', 'J3 Pro', 25, 100, '', 'tempered Glass.jfif', 5, 125, 500, 2, NULL, NULL, NULL),
(37, '44', '22', 'J5 Prime', 25, 100, '', 'tempered Glass.jfif', 6, 150, 600, 2, NULL, NULL, NULL),
(38, '44', '22', 'J3 Prime', 25, 100, '', 'tempered Glass.jfif', 4, 100, 400, 2, NULL, NULL, NULL),
(39, '44', '22', 'On 7', 35, 100, '', 'tempered Glass.jfif', 5, 210, 600, 2, NULL, NULL, NULL),
(40, '44', '22', 'J1 2016', 25, 100, '', 'tempered Glass.jfif', 7, 175, 700, 2, NULL, NULL, NULL),
(41, '44', '22', 'J2 2016', 25, 100, '', 'tempered Glass.jfif', 10, 250, 1000, 2, NULL, NULL, NULL),
(42, '44', '22', 'J5 2016', 25, 100, '', 'tempered Glass.jfif', 3, 75, 300, 2, NULL, NULL, NULL),
(43, '44', '22', 'J3 2016', 20, 100, '', 'tempered Glass.jfif', 4, 80, 400, 2, NULL, NULL, NULL),
(44, '44', '22', 'J1 2015', 25, 100, '', 'tempered Glass.jfif', 3, 75, 300, 2, NULL, NULL, NULL),
(45, '44', '22', 'J3 2015', 25, 100, '', 'tempered Glass.jfif', 4, 100, 400, 2, NULL, NULL, NULL),
(46, '44', '22', 'J2', 25, 100, '', 'tempered Glass.jfif', 7, 175, 700, 2, NULL, NULL, NULL),
(47, '44', '22', 'J5', 25, 100, '', 'tempered Glass.jfif', 3, 75, 300, 2, NULL, NULL, NULL),
(48, '44', '22', 'S3 I9300', 25, 100, '', 'tempered Glass.jfif', 6, 150, 600, 2, NULL, NULL, NULL),
(49, '44', '22', 'S4 I9500', 20, 100, '', 'tempered Glass.jfif', 4, 80, 400, 2, NULL, NULL, NULL),
(50, '44', '22', 'S5 I9600', 20, 100, '', 'tempered Glass.jfif', 5, 100, 500, 2, NULL, NULL, NULL),
(51, '44', '22', 'S7 Edge', 20, 100, '', 'tempered Glass.jfif', 4, 80, 400, 2, NULL, NULL, NULL),
(52, '44', '22', 'S6 Edge', 25, 100, '', 'tempered Glass.jfif', 4, 100, 400, 2, NULL, NULL, NULL),
(53, '44', '22', 'A7 2017', 25, 100, '', 'tempered Glass.jfif', 7, 175, 700, 2, NULL, NULL, NULL),
(54, '44', '22', 'A8', 25, 100, '', 'tempered Glass.jfif', 2, 50, 200, 2, NULL, NULL, NULL),
(55, '44', '22', 'A3', 25, 100, '', 'tempered Glass.jfif', 1, 25, 100, 2, NULL, NULL, NULL),
(56, '44', '22', 'S7', 25, 100, '', 'tempered Glass.jfif', 1, 25, 100, 2, NULL, NULL, NULL),
(57, '44', '22', 'S8', 25, 100, '', 'tempered Glass.jfif', 2, 100, 400, 2, NULL, NULL, NULL),
(58, '44', '22', 'Note 4 N910', 25, 100, '', 'tempered Glass.jfif', 5, 125, 500, 2, NULL, NULL, NULL),
(59, '44', '22', 'Note 5', 25, 100, '', 'tempered Glass.jfif', 4, 100, 400, 2, NULL, NULL, NULL),
(60, '44', '22', 'Note 3 N9005', 25, 100, '', 'tempered Glass.jfif', 4, 100, 400, 2, NULL, NULL, NULL),
(61, '44', '22', 'Note 2 N7100', 25, 100, '', 'tempered Glass.jfif', 3, 75, 300, 2, NULL, NULL, NULL),
(62, '44', '22', 'G360/G3608', 25, 100, '', 'tempered Glass.jfif', 1, 25, 100, 2, NULL, NULL, NULL),
(63, '44', '22', 'Galaxy win I8552', 25, 100, '', 'tempered Glass.jfif', 0, 0, 0, 2, NULL, NULL, NULL),
(64, '44', '35', 'Nova 2i', 25, 100, '', 'tempered Glass Huawei.jpg', 4, 100, 400, 2, NULL, NULL, NULL),
(65, '44', '35', 'Nova 2 Lite', 25, 100, '', 'tempered Glass Huawei.jpg', 6, 150, 600, 2, NULL, NULL, NULL),
(66, '44', '35', 'Y7 Prime', 25, 100, '', 'tempered Glass Huawei.jpg', 3, 75, 300, 2, NULL, NULL, NULL),
(67, '44', '35', 'P20 Lite', 25, 100, '', 'tempered Glass Huawei.jpg', 3, 75, 300, 2, NULL, NULL, NULL),
(68, '44', '35', 'P20 Plus', 25, 100, '', 'tempered Glass Huawei.jpg', 2, 50, 200, 2, NULL, NULL, NULL),
(69, '44', '35', 'P20', 25, 100, '', 'tempered Glass Huawei.jpg', 7, 175, 700, 2, NULL, NULL, NULL),
(70, '44', '35', 'Y6 2018', 20, 100, '', 'tempered Glass Huawei.jpg', 3, 60, 300, 2, NULL, NULL, NULL),
(71, '44', '35', 'GR5 2017', 25, 100, '', 'tempered Glass Huawei.jpg', 2, 50, 200, 2, NULL, NULL, NULL),
(72, '44', '24', 'Neo 3 R831', 25, 100, '', 'tempered Glass OPPO.jpg', 3, 75, 300, 2, NULL, NULL, NULL),
(73, '44', '24', 'A83', 25, 100, '', 'tempered Glass OPPO.jpg', 0, 0, 0, 2, NULL, NULL, NULL),
(74, '44', '24', 'A71', 20, 100, '', 'tempered Glass OPPO.jpg', 7, 140, 700, 2, NULL, NULL, NULL),
(75, '44', '24', 'F1S / A59', 20, 100, '', 'tempered Glass OPPO.jpg', 2, 40, 200, 2, NULL, NULL, NULL),
(76, '44', '24', 'F3', 25, 100, '', 'tempered Glass OPPO.jpg', 5, 125, 500, 2, NULL, NULL, NULL),
(77, '44', '24', 'F7', 20, 100, '', 'tempered Glass OPPO.jpg', 6, 120, 600, 2, NULL, NULL, NULL),
(78, '44', '24', 'A37', 20, 100, '', 'tempered Glass OPPO.jpg', 6, 120, 600, 2, NULL, NULL, NULL),
(79, '44', '24', 'F5', 20, 100, '', 'tempered Glass OPPO.jpg', 7, 140, 700, 2, NULL, NULL, NULL),
(80, '44', '24', 'A57', 20, 100, '', 'tempered Glass OPPO.jpg', 5, 100, 500, 2, NULL, NULL, NULL),
(81, '44', '24', 'F3 Plus', 20, 100, '', 'tempered Glass OPPO.jpg', 5, 100, 500, 2, NULL, NULL, NULL),
(82, '44', '24', 'A39', 20, 100, '', 'tempered Glass OPPO.jpg', 5, 100, 500, 2, NULL, NULL, NULL),
(83, '44', '24', 'A33', 20, 100, '', 'tempered Glass OPPO.jpg', 5, 100, 500, 2, NULL, NULL, NULL),
(84, '44', '36', 'V3', 25, 100, '', 'tempered Glass VIVO.jpg', 2, 50, 200, 2, NULL, NULL, NULL),
(85, '44', '36', 'V3 Max', 25, 100, '', 'tempered Glass VIVO.jpg', 2, 50, 200, 2, NULL, NULL, NULL),
(86, '44', '36', 'V5 S/y67', 25, 100, '', 'tempered Glass VIVO.jpg', 11, 275, 1100, 2, NULL, NULL, NULL),
(87, '44', '36', 'Y69', 25, 100, '', 'tempered Glass VIVO.jpg', 5, 125, 500, 2, NULL, NULL, NULL),
(88, '44', '36', 'V5 Lite', 25, 100, '', 'tempered Glass VIVO.jpg', 4, 100, 400, 2, NULL, NULL, NULL),
(89, '44', '36', 'Y53', 20, 100, '', 'tempered Glass VIVO.jpg', 9, 180, 900, 2, NULL, NULL, NULL),
(90, '44', '36', 'V7 Plus', 25, 100, '', 'tempered Glass VIVO.jpg', 4, 100, 400, 2, NULL, NULL, NULL),
(91, '44', '36', 'V7', 25, 100, '', 'tempered Glass VIVO.jpg', 2, 50, 200, 2, NULL, NULL, NULL),
(92, '44', '36', 'V9', 25, 100, '', 'tempered Glass VIVO.jpg', 1, 25, 100, 2, NULL, NULL, NULL),
(93, '44', '36', 'Y71', 25, 100, '', 'tempered Glass VIVO.jpg', 8, 200, 800, 2, NULL, NULL, NULL),
(94, '44', '37', 'ZenFone Selfie / ZD551KL', 25, 100, '', 'tempered Glass ASUS.jpg', 5, 125, 500, 2, NULL, NULL, NULL),
(95, '44', '37', 'ZenFone 3 Max / ZC553KL', 25, 100, '', 'tempered Glass ASUS.jpg', 4, 100, 400, 2, NULL, NULL, NULL),
(96, '44', '37', 'ZenFone 3 Laser /  ZC551K2', 25, 100, '', 'tempered Glass ASUS.jpg', 3, 75, 300, 2, NULL, NULL, NULL),
(97, '44', '37', 'ZenFone Selfie /Pro/ ZD552KL', 25, 100, '', 'tempered Glass ASUS.jpg', 4, 100, 400, 2, NULL, NULL, NULL),
(98, '44', '37', 'ZenFone Go 4.5 / ZB452KG', 25, 100, '', 'tempered Glass ASUS.jpg', 2, 50, 200, 2, NULL, NULL, NULL),
(99, '44', '37', 'ZenFone 4 Selfie /ZD553KL', 25, 100, '', 'tempered Glass ASUS.jpg', 4, 100, 400, 2, NULL, NULL, NULL),
(100, '44', '37', 'ZenFone 4 2017 / ZC554KL', 25, 100, '', 'tempered Glass ASUS.jpg', 4, 100, 400, 2, NULL, NULL, NULL),
(101, '44', '37', 'ZenFone 4 Max / ZC554KL', 25, 100, '', 'tempered Glass ASUS.jpg', 3, 75, 300, 2, NULL, NULL, NULL),
(102, '44', '37', 'ZenFone 6 / A600CG', 25, 100, '', 'tempered Glass ASUS.jpg', 2, 50, 200, 2, NULL, NULL, NULL),
(103, '44', '37', 'ZenFone C / ZC451CG', 25, 100, '', 'tempered Glass ASUS.jpg', 2, 50, 200, 2, NULL, NULL, NULL),
(104, '44', '38', 'Universal 5.3', 25, 100, '', 'tempered Glass Universal.jpg', 0, 0, 0, 2, NULL, NULL, NULL),
(105, '44', '38', 'Universal 6.0', 25, 100, '', 'tempered Glass Universal.jpg', 7, 175, 700, 2, NULL, NULL, NULL),
(106, '44', '38', 'Universal 4.0', 25, 100, '', 'tempered Glass Universal.jpg', 2, 50, 200, 2, NULL, NULL, NULL),
(107, '44', '38', 'Universal 5.0', 20, 100, '', 'tempered Glass Universal.jpg', 11, 220, 1100, 2, NULL, NULL, NULL),
(108, '44', '38', 'Universal 5.7', 25, 100, '', 'tempered Glass Universal.jpg', 4, 100, 400, 2, NULL, NULL, NULL),
(109, '44', '38', 'Universal 5.5', 25, 100, '', 'tempered Glass Universal.jpg', 2, 50, 200, 2, NULL, NULL, NULL),
(110, '44', '38', 'Universal 4.3', 25, 100, '', 'tempered Glass Universal.jpg', 7, 175, 700, 2, NULL, NULL, NULL),
(111, '44', '38', 'Universal 4.5', 20, 100, '', 'tempered Glass Universal.jpg', 6, 120, 600, 2, NULL, NULL, NULL),
(112, '44', '38', 'Universal 4.7', 20, 100, '', 'tempered Glass Universal.jpg', 5, 100, 500, 2, NULL, NULL, NULL),
(113, '44', '29', 'iPhone 5g', 20, 100, '', 'tempered Glass apple.jpg', 7, 140, 700, 2, NULL, NULL, NULL),
(114, '44', '29', 'iPhone 6G/6S', 20, 100, '', 'tempered Glass apple.jpg', 11, 220, 1100, 2, NULL, NULL, NULL),
(115, '44', '29', 'iPhone 7G', 25, 100, '', 'tempered Glass apple.jpg', 3, 75, 300, 2, NULL, NULL, NULL),
(116, '44', '29', 'iPhone 7G Plus', 25, 100, '', 'tempered Glass apple.jpg', 2, 50, 200, 2, NULL, NULL, NULL),
(117, '44', '29', 'iPhone 8G', 25, 100, '', 'tempered Glass apple.jpg', 3, 75, 300, 2, NULL, NULL, NULL),
(118, '44', '29', 'iPhone 6 Plus', 25, 100, '', 'tempered Glass apple.jpg', 4, 100, 400, 2, NULL, NULL, NULL),
(119, '44', '29', 'iPhone 4S/4G ', 25, 100, '', 'tempered Glass apple.jpg', 1, 25, 100, 2, NULL, NULL, NULL),
(120, '44', '22', 'J7 Pro Full Screen', 65, 200, '', 'tempered Glass.jfif', 2, 130, 400, 2, NULL, NULL, NULL),
(121, '44', '24', 'A37 Full Screen', 65, 200, '', 'tempered Glass OPPO.jpg', 2, 130, 400, 1, NULL, NULL, NULL),
(122, '44', '36', 'Y69 Full Screen', 65, 200, '', 'tempered Glass VIVO.jpg', 1, 65, 200, 2, NULL, NULL, NULL),
(123, '44', '36', 'Y55s Full Screen', 25, 100, '', 'tempered Glass VIVO.jpg', 1, 25, 100, 2, NULL, NULL, NULL),
(124, '44', '24', 'A83 Full Screen', 65, 200, '', 'tempered Glass OPPO.jpg', 0, 0, 0, 2, NULL, NULL, NULL),
(125, '44', '35', 'Nova 2i Full Screen', 65, 200, '', 'tempered Glass Huawei.jpg', 2, 130, 400, 2, NULL, NULL, NULL),
(126, '44', '24', 'A71 Full Screen', 64, 200, '', 'tempered Glass OPPO.jpg', 2, 128, 400, 2, NULL, NULL, NULL),
(127, '44', '24', 'F3 Plus / R9s Full Screen', 65, 200, '', 'tempered Glass OPPO.jpg', 1, 65, 200, 2, NULL, NULL, NULL),
(128, '44', '29', 'iPhone 6G/6S Full Screen / Privacy', 65, 200, '', 'tempered Glass apple.jpg', 2, 130, 400, 1, NULL, NULL, NULL),
(129, '44', '36', 'V7 PLus Full Screen', 65, 200, '', 'tempered Glass VIVO.jpg', 1, 65, 200, 1, NULL, NULL, NULL),
(130, '44', '22', 'J5 prime Full Screen', 65, 200, '', 'tempered Glass.jfif', 1, 65, 200, 2, NULL, NULL, NULL),
(131, '44', '29', 'iPhone 6G/6S 2 in 1  Full Screen', 80, 250, '', 'tempered Glass apple.jpg', 1, 80, 250, 2, NULL, NULL, NULL),
(132, '44', '22', 'J7  Full Screen', 65, 200, '', 'tempered Glass.jfif', 1, 65, 200, 2, NULL, NULL, NULL),
(133, '44', '36', 'V5 Lite Full Screen', 65, 200, '', 'tempered Glass VIVO.jpg', 1, 65, 200, 2, NULL, NULL, NULL),
(134, '44', '37', 'ZenFone 2 / 2E551ML', 25, 100, '', 'tempered Glass ASUS.jpg', 1, 25, 100, 1, NULL, NULL, NULL),
(135, '44', '37', 'ZenFone 3 Deluxe / ZS570KL', 25, 100, '', 'tempered Glass ASUS.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(136, '44', '37', 'ZenFone 3 / ZE552KL', 25, 100, '', 'tempered Glass ASUS.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(137, '44', '37', 'ZenFone 4 / ZE554KL', 25, 100, '', 'tempered Glass ASUS.jpg', 2, 50, 200, 2, NULL, NULL, NULL),
(138, '44', '37', 'ZenFone 5 / ZE620KL', 25, 100, '', 'tempered Glass ASUS.jpg', 6, 150, 600, 1, NULL, NULL, NULL),
(139, '44', '36', 'Y53 Full Screen', 65, 200, '', 'tempered Glass VIVO.jpg', 1, 65, 200, 1, NULL, NULL, NULL),
(140, '44', '22', 'J2 prime Full Screen', 65, 200, '', 'tempered Glass.jfif', 0, 0, 0, 1, NULL, NULL, NULL),
(141, '44', '24', 'F5 Full Screen', 60, 200, '', 'tempered Glass OPPO.jpg', 2, 120, 400, 2, NULL, NULL, NULL),
(142, '44', '22', 'J7 2015  Full Screen', 65, 200, '', 'tempered Glass.jfif', 3, 195, 600, 2, NULL, NULL, NULL),
(143, '44', '36', 'V7 Full Screen', 65, 200, '', 'tempered Glass VIVO.jpg', 1, 65, 200, 2, NULL, NULL, NULL),
(144, '44', '22', 'J7 Prime Full Screen', 60, 200, '', 'tempered Glass.jfif', 0, 0, 0, 2, NULL, NULL, NULL),
(145, '44', '29', 'iPhone 5S Full Screen', 65, 200, '', 'tempered Glass apple.jpg', 1, 65, 200, 2, NULL, NULL, NULL),
(146, '44', '26', 'My 28', 25, 100, '', 'tempered Glass myphone.jpg', 1, 25, 100, 2, NULL, NULL, NULL),
(147, '44', '26', 'My 31', 25, 100, '', 'tempered Glass myphone.jpg', 1, 25, 100, 1, NULL, NULL, NULL),
(148, '44', '26', 'My 87', 25, 100, '', 'tempered Glass myphone.jpg', 3, 75, 300, 2, NULL, NULL, NULL),
(149, '44', '26', 'My 33', 25, 100, '', 'tempered Glass myphone.jpg', 2, 50, 200, 2, NULL, NULL, NULL),
(150, '44', '26', 'My 22', 25, 100, '', 'tempered Glass myphone.jpg', 6, 150, 600, 2, NULL, NULL, NULL),
(151, '44', '26', 'My 92', 25, 100, '', 'tempered Glass myphone.jpg', 6, 150, 600, 2, NULL, NULL, NULL),
(152, '44', '26', 'My A9 DTV', 25, 100, '', 'tempered Glass myphone.jpg', 5, 125, 500, 2, NULL, NULL, NULL),
(153, '44', '26', 'My 93', 25, 100, '', 'tempered Glass myphone.jpg', 5, 125, 500, 2, NULL, NULL, NULL),
(154, '44', '26', 'My 21', 25, 100, '', 'tempered Glass myphone.jpg', 2, 50, 200, 2, NULL, NULL, NULL),
(155, '44', '26', 'My 32', 25, 100, '', 'tempered Glass myphone.jpg', 4, 100, 400, 2, NULL, NULL, NULL),
(156, '44', '26', 'My A5', 25, 100, '', 'tempered Glass myphone.jpg', 4, 100, 400, 2, NULL, NULL, NULL),
(157, '44', '26', 'My A3', 25, 100, '', 'tempered Glass myphone.jpg', 5, 125, 500, 2, NULL, NULL, NULL),
(158, '44', '26', 'My A7', 25, 100, '', 'tempered Glass myphone.jpg', 4, 100, 400, 2, NULL, NULL, NULL),
(159, '44', '26', 'My 77', 25, 100, '', 'tempered Glass myphone.jpg', 4, 100, 400, 2, NULL, NULL, NULL),
(160, '44', '26', 'My 73', 25, 100, '', 'tempered Glass myphone.jpg', 6, 150, 600, 2, NULL, NULL, NULL),
(161, '44', '26', 'My 35', 25, 100, '', 'tempered Glass myphone.jpg', 2, 50, 200, 2, NULL, NULL, NULL),
(162, '44', '26', 'My 71', 25, 100, '', 'tempered Glass myphone.jpg', 3, 75, 300, 2, NULL, NULL, NULL),
(163, '44', '26', 'My 85 DTV', 25, 100, '', 'tempered Glass myphone.jpg', 6, 150, 600, 2, NULL, NULL, NULL),
(164, '44', '26', 'My 82', 25, 100, '', 'tempered Glass myphone.jpg', 2, 50, 200, 2, NULL, NULL, NULL),
(165, '44', '26', 'My 25', 25, 100, '', 'tempered Glass myphone.jpg', 2, 50, 200, 2, NULL, NULL, NULL),
(166, '44', '26', 'My 91 DTV', 25, 100, '', 'tempered Glass myphone.jpg', 1, 25, 100, 2, NULL, NULL, NULL),
(167, '44', '26', 'My 36', 25, 100, '', 'tempered Glass myphone.jpg', 1, 25, 100, 2, NULL, NULL, NULL),
(168, '44', '26', 'My 86', 25, 100, '', 'tempered Glass myphone.jpg', 1, 25, 100, 2, NULL, NULL, NULL),
(170, '42', '26', 'My 82', 170, 380, '', 'battery myPhone.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(171, '42', '26', 'A848 Dou / S8070', 170, 380, '', 'battery myPhone.jpg', 2, 340, 760, 1, NULL, NULL, NULL),
(172, '42', '26', 'My 28', 205, 380, '', 'battery myPhone.jpg', 1, 205, 380, 1, NULL, NULL, NULL),
(173, '42', '26', 'My 73 / My 76', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(174, '42', '26', 'My 32', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(175, '42', '26', 'My 86', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(176, '42', '26', 'My A10', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(177, '42', '26', 'My A5 DTV', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(178, '42', '26', 'My A6', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(179, '42', '26', 'My 27', 170, 380, '', 'battery myPhone.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(180, '42', '26', 'My 93 DTV', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(181, '42', '26', 'My 23 /  V45 / My 26', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(182, '42', '26', 'A919', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(183, '42', '26', 'My 89', 170, 380, '', 'battery myPhone.jpg', 2, 340, 760, 1, NULL, NULL, NULL),
(184, '42', '26', 'My 92', 170, 380, '', 'battery myPhone.jpg', 2, 340, 760, 1, NULL, NULL, NULL),
(185, '42', '26', 'My A9', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(186, '42', '26', 'Agua Rio / S5500', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(187, '42', '26', 'My 81', 210, 380, '', 'battery myPhone.jpg', 1, 210, 380, 1, NULL, NULL, NULL),
(188, '42', '26', 'Agua Rio Lite / S4700', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(189, '42', '26', 'My 91', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(190, '42', '26', 'A888g Duo / s8121', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(191, '42', '26', 'My 87', 150, 380, '', 'battery myPhone.jpg', 1, 150, 380, 1, NULL, NULL, NULL),
(192, '42', '26', 'Agua Storm / S6040', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(193, '42', '26', 'My 33', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(194, '42', '26', 'A888 Duo  / S9091', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(195, '42', '25', 'Ace 2', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(196, '42', '25', 'CM - 15H / S10', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(197, '42', '25', 'Flare S3', 170, 380, '', 'Battery cherry mobile.jpg', 2, 340, 760, 1, NULL, NULL, NULL),
(198, '42', '25', 'Flare S6 Lite DTV', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(199, '42', '25', 'Flare S5 mini / CM 13Y', 170, 380, '', 'Battery cherry mobile.jpg', 2, 340, 760, 1, NULL, NULL, NULL),
(200, '42', '25', 'Flare B1 - 100', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(201, '42', '25', 'Flare J2 mini', 170, 380, '', 'Battery cherry mobile.jpg', 2, 340, 760, 1, NULL, NULL, NULL),
(202, '42', '25', 'Flare J2S/cm-14c', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(203, '42', '25', 'Flare S5', 170, 380, '', 'Battery cherry mobile.jpg', 2, 340, 760, 1, NULL, NULL, NULL),
(204, '42', '25', 'Flare J1 2017', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(205, '42', '25', 'Flare J1S', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(206, '42', '25', 'CM-13F', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(207, '42', '25', 'Flare J2 DTV', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(208, '42', '25', 'Flare J3', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(209, '42', '25', 'Flare S Play', 160, 380, '', 'Battery cherry mobile.jpg', 1, 160, 380, 1, NULL, NULL, NULL),
(210, '42', '25', 'Flare Edge 2', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(211, '42', '25', 'Touch 35', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(212, '42', '25', 'Sonic', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(213, '42', '25', 'Q11', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(214, '42', '25', 'Febble', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(215, '42', '25', 'Jade', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(216, '42', '25', 'Urban', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(217, '42', '25', 'Cosmos 1', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(218, '42', '25', 'Thunder', 170, 380, '', 'Battery cherry mobile.jpg', 2, 340, 760, 1, NULL, NULL, NULL),
(219, '42', '25', 'Flare 3', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(220, '42', '25', 'Coal', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(221, '42', '25', 'B100', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(222, '42', '25', 'Omega ', 170, 380, '', 'Battery cherry mobile.jpg', 3, 510, 1140, 1, NULL, NULL, NULL),
(223, '42', '25', 'BW1', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(224, '42', '25', 'Comet', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(225, '42', '25', 'Cosmos 2', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(226, '42', '25', 'Revel', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(227, '42', '25', 'Axis', 170, 380, '', 'Battery cherry mobile.jpg', 2, 340, 760, 1, NULL, NULL, NULL),
(228, '42', '25', 'Fuze ', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(229, '42', '25', 'Flare S2', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(230, '42', '25', 'Cosmos X', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(231, '42', '25', 'Rave', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(232, '42', '25', 'Spectrum', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(233, '42', '25', 'Hyper', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(234, '42', '25', 'Titan', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(235, '42', '25', 'Blaze', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(236, '42', '25', 'Titan TV', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(237, '42', '22', 'J1 2016', 150, 350, '', 'battery samsung.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(238, '42', '25', 'A3 2016', 170, 350, '', 'battery samsung.jpg', 1, 170, 350, 1, NULL, NULL, NULL),
(239, '42', '22', 'Galaxy W / i8150', 160, 350, '', 'battery samsung.jpg', 1, 160, 350, 1, NULL, NULL, NULL),
(240, '42', '22', 'S5 mini', 170, 380, '', 'battery samsung.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(241, '42', '22', 'G313H / Galaxy V / Galaxy ACE', 150, 300, '', 'battery samsung.jpg', 1, 150, 300, 1, NULL, NULL, NULL),
(242, '42', '22', 'S4 /  I9500', 170, 380, '', 'battery samsung.jpg', 1, 170, 380, 1, NULL, NULL, NULL),
(243, '42', '22', 'S3 / I9300', 170, 380, '', 'battery samsung.jpg', 3, 510, 1140, 1, NULL, NULL, NULL),
(244, '42', '22', 'J7', 290, 490, '', 'battery samsung.jpg', 1, 290, 490, 1, NULL, NULL, NULL),
(245, '42', '22', 'Galaxy Grand / i9082', 220, 450, '', 'battery samsung.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(246, '42', '22', 'Note 4 / N90100', 180, 400, '', 'battery samsung.jpg', 1, 180, 400, 1, NULL, NULL, NULL),
(247, '42', '22', 'S7272 / G313 / S7262 / S7270 / G313F', 185, 390, '', 'battery samsung.jpg', 3, 555, 1170, 1, NULL, NULL, NULL),
(248, '42', '22', 'i8160 / S3 mini / S72562 / J1 mini /<br> J105 / i8190 / S7582', 205, 405, '', 'battery samsung.jpg', 3, 615, 1215, 1, NULL, NULL, NULL),
(249, '42', '22', 'J1 ACE / J110', 180, 380, '', 'battery samsung.jpg', 3, 540, 1140, 1, NULL, NULL, NULL),
(250, '42', '22', 'Note N700 / i9220', 285, 550, '', 'battery samsung.jpg', 1, 285, 550, 0, NULL, NULL, NULL),
(251, '42', '22', 'Galaxy Y / S5360 Wave Y / S5380', 180, 380, '', 'battery samsung.jpg', 3, 540, 1140, 1, NULL, NULL, NULL),
(252, '42', '22', 'S3650/S5630/S5560/C3510/<br>B3410/W559/S5600/S5260/<br>5310/F400/L700/C3222', 180, 350, '', 'battery samsung.jpg', 1, 180, 350, 1, NULL, NULL, NULL),
(253, '42', '22', 'Galaxy Ace Advance/i9070/S6800', 170, 350, '', 'battery samsung.jpg', 1, 170, 350, 1, NULL, NULL, NULL),
(254, '42', '22', 'Galaxy Core / G3518', 180, 380, '', 'battery samsung.jpg', 1, 180, 380, 1, NULL, NULL, NULL),
(255, '42', '22', 'S5 / i9600', 250, 480, '', 'battery samsung.jpg', 1, 250, 480, 0, NULL, NULL, NULL),
(256, '42', '22', 'J5 2016', 220, 450, '', 'battery samsung.jpg', 1, 220, 450, 1, NULL, NULL, NULL),
(257, '42', '22', 'Note 2 / N7100 / Eb595675lu', 280, 550, '', 'battery samsung.jpg', 1, 280, 550, 0, NULL, NULL, NULL),
(258, '42', '22', 'Note 3 N9005', 320, 680, '', 'battery samsung.jpg', 1, 320, 680, 1, NULL, NULL, NULL),
(259, '42', '22', 'Note 4 N910/N9108', 300, 650, '', 'battery samsung.jpg', 1, 300, 650, 0, NULL, NULL, NULL),
(260, '42', '22', 'Galaxy Core 2 / G355H', 150, 350, '', 'battery samsung.jpg', 2, 300, 700, 1, NULL, NULL, NULL),
(261, '42', '22', 'Galaxy Core /i8260/i8262', 150, 350, '', 'battery samsung.jpg', 1, 150, 350, 0, NULL, NULL, NULL),
(262, '42', '22', 'Galaxy Core Plus / B185BC<br>Galaxy Start /G350E', 150, 350, '', 'battery samsung.jpg', 2, 300, 700, 0, NULL, NULL, NULL),
(263, '42', '22', 'F250/X208/0520/E250/D720<br>E500/F900/X120/X300/E870', 150, 350, '', 'battery samsung.jpg', 2, 300, 700, 0, NULL, NULL, NULL),
(264, '42', '22', 'Galaxy S 2 / i9100 Galaxy R/i9103', 150, 350, '', 'battery samsung.jpg', 1, 150, 350, 0, NULL, NULL, NULL),
(265, '42', '22', 'Galaxy mini / S5570 Wave 575/s7233', 170, 350, '', 'battery samsung.jpg', 1, 170, 350, 0, NULL, NULL, NULL),
(266, '42', '34', 'BL 4C Original ', 120, 250, '', 'msm-hk-high-quality-battery-for-nokia-bl-4c-6100-6300-7270-9468-39828392-615561f5576606883360e82c0b5369ff-catalog.jpg_200x200q80.jpg_.webp', 2, 240, 500, 1, NULL, NULL, NULL),
(268, '42', '34', 'BL 5BT Original', 120, 250, '', 'bl 5bt.jpg', 2, 240, 500, 1, NULL, NULL, NULL),
(269, '42', '34', 'BL 3F Original', 120, 250, '', 'msm-hk-battery-for-nokia-bl-5j-1491463975-05545841-4c803eff07b89fcedfceb520ee02fb7c-catalog_233.jpg', 1, 120, 250, 1, NULL, NULL, NULL),
(270, '42', '34', 'BL 5CT Original', 120, 250, '', 'pl.jpg', 3, 360, 750, 1, NULL, NULL, NULL),
(271, '42', '34', 'BL 4B Original', 120, 250, '', '5003004-20170414190932-4940646952564261.jpg', 1, 120, 250, 1, NULL, NULL, NULL),
(272, '42', '34', 'BL 4D Orginal', 120, 250, '', 'nok_batt-01_1024x1024.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(273, '42', '34', 'BL 4L Original ', 120, 250, '', '48700029c749ee619ddce70e85783226.jpg', 3, 360, 750, 1, NULL, NULL, NULL),
(274, '42', '34', 'BL 3L Original', 120, 250, '', '3l.jpg', 2, 240, 500, 1, NULL, NULL, NULL),
(275, '42', '34', 'BL 4J Original', 120, 250, '', '4j.jpg', 2, 240, 500, 1, NULL, NULL, NULL),
(276, '42', '34', 'BL 4U Original', 120, 250, '', '6ce7b42c74c011051eee6580c79f48d8.jpg', 3, 360, 750, 1, NULL, NULL, NULL),
(277, '42', '34', 'BL 5J Original', 120, 250, '', '4j.jpg', 1, 120, 250, 1, NULL, NULL, NULL),
(278, '42', '34', 'BP 5M Original', 120, 250, '', 'f99ab0d5e6e2a86cbb5221532caee288.jpg', 2, 240, 500, 1, NULL, NULL, NULL),
(279, '42', '34', 'BL 6F Original', 120, 250, '', '5003004-20170414190932-4940646952564261.jpg', 1, 120, 250, 0, NULL, NULL, NULL),
(280, '42', '34', 'BL 5B Original', 120, 250, '', '_1_.jpg', 2, 240, 500, 0, NULL, NULL, NULL),
(281, '42', '39', 'ATLAS', 120, 250, '', 'battery ZH&K.jfif', 1, 120, 250, 1, NULL, NULL, NULL),
(282, '42', '39', 'Odyssey Titan/Sacred', 120, 250, '', 'battery ZH&K.jfif', 1, 120, 250, 0, NULL, NULL, NULL),
(283, '42', '39', 'Odyssey Flare', 120, 250, '', 'battery ZH&K.jfif', 1, 120, 250, 1, NULL, NULL, NULL),
(284, '42', '39', 'Pioneer 3', 120, 250, '', 'battery ZH&K.jfif', 2, 240, 500, 1, NULL, NULL, NULL),
(285, '42', '40', 'S13', 120, 250, '', 'battery ckk.jpg', 2, 240, 500, 1, NULL, NULL, NULL),
(286, '42', '40', 'N2', 120, 250, '', 'battery ckk.jpg', 1, 120, 250, 0, NULL, NULL, NULL),
(287, '42', '40', 'Saphire / Snap 2', 120, 250, '', 'battery ckk.jpg', 1, 120, 250, 1, NULL, NULL, NULL),
(288, '42', '40', 'Prime 1', 120, 250, '', 'battery ckk.jpg', 1, 120, 250, 1, NULL, NULL, NULL),
(289, '42', '28', 'Flip', 120, 250, '', 'battery skk.jpg', 2, 240, 500, 0, NULL, NULL, NULL),
(290, '42', '28', 'Steel', 120, 250, '', 'battery skk.jpg', 1, 120, 250, 0, NULL, NULL, NULL),
(291, '42', '28', 'Phoenix G', 120, 250, '', 'battery skk.jpg', 1, 120, 250, 0, NULL, NULL, NULL),
(292, '42', '28', 'Lynx elite', 120, 250, '', 'battery skk.jpg', 2, 240, 500, 0, NULL, NULL, NULL),
(293, '42', '28', 'Aura ', 120, 250, '', 'battery skk.jpg', 1, 120, 250, 0, NULL, NULL, NULL),
(294, '42', '28', 'Lynx Edge', 120, 250, '', 'battery skk.jpg', 1, 120, 250, 0, NULL, NULL, NULL),
(295, '42', '28', 'Mirage S1', 120, 250, '', 'battery skk.jpg', 1, 120, 250, 0, NULL, NULL, NULL),
(296, '42', '28', 'Atom', 120, 250, '', 'battery skk.jpg', 1, 120, 250, 0, NULL, NULL, NULL),
(297, '42', '28', 'Neo Charm', 120, 250, '', 'battery skk.jpg', 2, 240, 500, 0, NULL, NULL, NULL),
(298, '42', '28', 'A15', 120, 250, '', 'battery skk.jpg', 1, 120, 250, 0, NULL, NULL, NULL),
(299, '42', '28', 'LYNX', 120, 250, '', 'battery skk.jpg', 2, 240, 500, 0, NULL, NULL, NULL),
(300, '42', '28', 'Rush Deluxe', 120, 250, '', 'battery skk.jpg', 0, 120, 250, 1, NULL, NULL, NULL),
(301, '42', '41', 'POP C5 / S5036D', 120, 250, '', 'battery alcatel.jpg', 2, 240, 500, 0, NULL, NULL, NULL),
(302, '42', '41', 'Ascend / Y320', 120, 250, '', 'battery alcatel.jpg', 1, 120, 250, 0, NULL, NULL, NULL),
(303, '42', '42', 'Prime 350D <br> Droid 2.0', 120, 250, '', 'battery arc mobile.jpg', 1, 120, 250, 0, NULL, NULL, NULL),
(304, '42', '24', 'BLP51 5', 120, 250, '', 'battery oppo.jfif', 1, 120, 250, 0, NULL, NULL, NULL),
(305, '42', '24', 'BLP55 3', 120, 250, '', 'battery oppo.jfif', 1, 120, 250, 0, NULL, NULL, NULL),
(306, '42', '43', 'SM24C', 120, 250, '', 'battery star mobile.jpg', 1, 120, 250, 0, NULL, NULL, NULL),
(307, '42', '43', 'SM29C', 120, 250, '', 'battery star mobile.jpg', 1, 120, 250, 0, NULL, NULL, NULL),
(308, '42', '43', 'Coffee', 120, 250, '', 'battery star mobile.jpg', 1, 120, 250, 0, NULL, NULL, NULL),
(309, '42', '43', 'SM21C', 120, 250, '', 'battery star mobile.jpg', 1, 120, 250, 0, NULL, NULL, NULL),
(310, '42', '43', 'SM7C', 120, 250, '', 'battery star mobile.jpg', 1, 120, 250, 0, NULL, NULL, NULL),
(311, '42', '44', 'CS2/9300/8520/8700', 120, 250, '', 'battery blackberry.jpeg', 2, 240, 500, 0, NULL, NULL, NULL),
(312, '42', '44', 'U81110/U8500', 120, 250, '', 'battery blackberry.jpeg', 1, 120, 250, 0, NULL, NULL, NULL),
(313, '42', '44', '8100/8110/8220', 120, 250, '', 'battery blackberry.jpeg', 1, 120, 250, 0, NULL, NULL, NULL),
(314, '42', '44', '8800/8820/8830/8350', 120, 250, '', 'battery blackberry.jpeg', 1, 120, 250, 0, NULL, NULL, NULL),
(315, '41', '31', 'CYS ANDROID', 58, 150, '', '38-500x500.jpg', 69, 4002, 10350, 30, NULL, NULL, NULL),
(316, '41', '31', 'CYS  USB TYPE', 50, 150, '', 'no image.jpg', 6, 300, 900, 4, NULL, NULL, NULL),
(317, '41', '45', 'USB 2.1 A', 55, 150, '', 'IMG_20180524_072206.jpg', 47, 2585, 7050, 10, NULL, NULL, NULL),
(318, '41', '46', '2 IN 1/H_170', 55, 150, '', '6b82e23c4845fbdecb853053ca72bd12.jpg', 19, 1045, 2850, 8, NULL, NULL, NULL),
(319, '41', '46', 'HBK 5s', 65, 200, '', '6b82e23c4845fbdecb853053ca72bd12.jpg', 1, 65, 200, 1, NULL, NULL, NULL),
(320, '41', '46', 'HBK 4s', 55, 150, '', '6b82e23c4845fbdecb853053ca72bd12.jpg', 3, 165, 450, 1, NULL, NULL, NULL),
(321, '41', '31', 'CYS 5s', 90, 250, '', '38-500x500.jpg', 2, 180, 500, 1, NULL, NULL, NULL),
(322, '41', '31', 'CYS 4s', 58, 200, '', 'no image.jpg', 2, 116, 400, 1, NULL, NULL, NULL),
(323, '41', '47', 'G-503', 58, 150, '', 'no image.jpg', 9, 522, 1350, 6, NULL, NULL, NULL),
(324, '41', '48', '2 USB', 65, 200, '', 'IMG_20180524_074900[1].jpg', 10, 650, 2000, 6, NULL, NULL, NULL),
(325, '41', '31', '1.5A', 65, 200, '', '61tJzet4w7L._SL1100_.jpg', 1, 65, 200, 5, NULL, NULL, NULL),
(326, '41', '45', '2 USB', 65, 200, '', 'no image.jpg', 1, 65, 200, 5, NULL, NULL, NULL),
(327, '41', '49', 'PORTABLE CHARGER', 55, 150, '', 'download (4).jpg', 7, 385, 1050, 3, NULL, NULL, NULL),
(328, '41', '49', 'TABLET CHARGER', 60, 150, '', '02d6ba40-97b1-44c6-a2d2-d924ab3dce8e_1.cc0858528e76795e5354b1fa633c2349.jpeg', 6, 360, 900, 2, NULL, NULL, NULL),
(329, '41', '50', 'TV PLUS CHARGER', 65, 200, '', '12-volts-tv-plus-chargeradaptor-3169-45344174-995464f9644d0cda516898bd30d6e97b-product.jpg', 6, 390, 1200, 2, NULL, NULL, NULL),
(330, '41', '36', '2IN1 CHARGER', 45, 130, '', 'IMG_20180524_073049.jpg', 27, 1215, 3510, 4, NULL, NULL, NULL),
(331, '41', '51', '2IN1 CHARGER', 45, 130, '', 'IMG_20180524_073043.jpg', 1, 45, 130, 4, NULL, NULL, NULL),
(332, '41', '52', '2IN1 CHARGER', 45, 130, '', 'IMG_20180524_073055.jpg', 4, 180, 520, 4, NULL, NULL, NULL),
(333, '41', '53', '2IN1 CHARGER', 45, 130, '', 'IMG_20180524_073115.jpg', 2, 90, 260, 4, NULL, NULL, NULL),
(334, '41', '54', '2IN1 CHARGER', 45, 130, '', 'IMG_20180524_073105.jpg', 1, 45, 130, 4, NULL, NULL, NULL),
(335, '41', '35', '2IN1 CHARGER', 45, 130, '', 'IMG_20180524_073137.jpg', 1, 45, 130, 4, NULL, NULL, NULL),
(336, '41', '50', 'Universal NP0619', 65, 200, '', 'IMG_20180524_073017.jpg', 5, 325, 1000, 4, NULL, NULL, NULL),
(337, '41', '31', 'UNIVERSAL C0619', 65, 200, '', 'IMG_20180524_072906.jpg', 1, 65, 200, 4, NULL, NULL, NULL),
(338, '41', '55', 'LCD UNIVERSAL CHARGER', 60, 150, '', 'IMG_20180524_072931.jpg', 0, 0, 0, 4, NULL, NULL, NULL),
(339, '41', '48', 'UNIVERSAL FDT', 60, 150, '', 'IMG_20180524_072921.jpg', 2, 120, 300, 1, NULL, NULL, NULL),
(340, '41', '22', 'GALAXY S4', 55, 150, '', '20120323113408067.JPG', 0, 0, 0, 5, NULL, NULL, NULL),
(341, '41', '22', 'GALAXY S7', 55, 150, '', 'd.jpg', 4, 220, 600, 4, NULL, NULL, NULL),
(342, '41', '49', 'LCD UNIVERSAL CHARGER', 55, 150, '', 'universal charger np0619.jpg', 49, 2695, 7350, 18, NULL, NULL, NULL),
(343, '41', '49', 'TY-12', 35, 100, '', '3g-gold-universal-charger-250x250.jpg', 5, 175, 500, 2, NULL, NULL, NULL),
(344, '41', '49', 'TY-2', 42, 100, '', 'sku_55629_1.jpg', 43, 1806, 4300, 18, NULL, NULL, NULL),
(345, '41', '55', 'UNIVERSAL100', 39, 100, '', 'download.jpg', 11, 429, 1100, 5, NULL, NULL, NULL),
(346, '41', '46', 'AC- 3U SMALLPIN', 38, 100, '', 'NOKIA_HOME_CHARGER_SMALL_PIN__93032_zoom.jpg', 5, 190, 500, 4, NULL, NULL, NULL),
(347, '41', '56', 'CHK-6101', 35, 100, '', 'download (1).jpg', 0, 0, 0, 4, NULL, NULL, NULL),
(348, '41', '57', 'MSM.HK ANDROID', 58, 150, '', 'WAP_2315.jpg', 2, 116, 300, 1, NULL, NULL, NULL),
(349, '39', '58', 'L22 5G/5S', 50, 150, '', '5s.jpg', 2, 100, 300, 3, NULL, NULL, NULL),
(350, '39', '58', 'L22 4G', 35, 100, '', 'alibaba-l22-lightning-data-and-charging-cable-for-iphone-ipad-or-itouch-7104-33991748-1576854ff8d076a21c710ad0d4b0e81d-catalog_233.jpg', 0, 0, 0, 3, NULL, NULL, NULL),
(351, '39', '59', 'CB- 071', 65, 200, '', 'cap-iphone-5_nl9f-nw.jpg', 1, 65, 200, 2, NULL, NULL, NULL),
(352, '39', '58', 'L22 V3', 35, 100, '', 's-l300.jpg', 1, 35, 100, 1, NULL, NULL, NULL),
(353, '39', '58', 'L22 i9500', 35, 100, '', '61zRJwOKy9L._SX425_.jpg', 29, 1015, 2900, 10, NULL, NULL, NULL),
(354, '40', '59', 'dl-ac50', 150, 310, '', 'bavin-9882-4628301-1.jpg', 1, 150, 310, 1, NULL, NULL, NULL),
(355, '41', '59', 's5/s6/s7', 190, 421, '', 'bavin-6375-184135-1.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(356, '41', '59', 'i5/i6/i7', 170, 370, '', 's-l1600.jpg', 1, 170, 370, 1, NULL, NULL, NULL),
(357, '40', '58', 'ali-592', 130, 270, '', '2018-01-13-3-348x348.png', 1, 130, 270, 1, NULL, NULL, NULL),
(358, '41', '59', 'auto- idi  5/i6/i7', 190, 390, '', 'bavin-pc727-dual-usb-slot-24a-quick-charger-travel-adapter-for-android-281816060.jpg', 1, 190, 390, 1, NULL, NULL, NULL),
(359, '45', '60', '2GB', 110, 250, '', 'transcend-usb-530x210.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(360, '45', '60', '4GB', 140, 300, '', 'transcend-usb-530x210.jpg', 1, 140, 300, 1, NULL, NULL, NULL),
(361, '45', '60', '8GB', 150, 350, '', 'transcend-usb-530x210.jpg', 2, 300, 700, 1, NULL, NULL, NULL),
(362, '45', '60', '16GB', 210, 450, '', 'transcend-usb-530x210.jpg', 2, 420, 900, 1, NULL, NULL, NULL),
(363, '46', '61', 'B25', 300, 499, '', 'cbe575d71c76966ca0680606c63f1cab.jpg', 1, 300, 499, 1, NULL, NULL, NULL),
(364, '46', '61', 'B23', 300, 499, '', '739a9737d4c58bd5904da3e647454883.jpg', 2, 600, 998, 1, NULL, NULL, NULL),
(365, '46', '61', 'B20', 300, 499, '', 'fb1096025a5ce8e09721d86c09b2362d.jpg', 2, 600, 998, 1, NULL, NULL, NULL),
(366, '46', '61', 'B26', 300, 499, '', '944d18318fc88e29b9597f7bac2520fe.jpg', 2, 600, 998, 1, NULL, NULL, NULL),
(367, '46', '61', 'B19', 300, 499, '', '51430dfdaf34793a82540a9bb1a4786f.jpg', 1, 300, 499, 1, NULL, NULL, NULL),
(368, '46', '61', 'Q1', 520, 999, '', 'd3cedb759610dbf9abe82e4b41b14a8d.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(369, '46', '61', 'POWER1', 520, 999, '', 'bba74db9105db597ad97838020859002.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(370, '46', '61', 'POWER2', 650, 1200, '', '9e8db9802f55496cd07284c331e013ab.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(371, '46', '22', 'V1200', 320, 599, '', '6f5296d7338ec1d0dbb5a64a2728f9b4_tn.jpg', 2, 640, 1198, 1, NULL, NULL, NULL),
(372, '46', '34', '3310 A', 420, 899, '', 'maxresdefault.jpg', 2, 840, 1798, 1, NULL, NULL, NULL),
(373, '46', '34', '3310 B', 280, 550, '', 'maxresdefault.jpg', 4, 1120, 2200, 1, NULL, NULL, NULL),
(374, '46', '25', 'B7', 480, 750, '', 'a4ae0f7d2e7ac6816741e4de190f973c.jpg', 1, 480, 750, 1, NULL, NULL, NULL),
(375, '46', '22', 'B310', 300, 499, '', 'B310_white__97134_zoom.png', 0, 0, 0, 1, NULL, NULL, NULL),
(376, '46', '22', 'B312', 300, 499, '', 'samsung-b312-brio.jpg', 1, 300, 499, 1, NULL, NULL, NULL),
(377, '46', '34', '105', 280, 499, '', '837724802.g_0-w_g.jpg', 2, 560, 998, 1, NULL, NULL, NULL),
(378, '46', '34', 'L800M', 300, 499, '', 'IMG_20180524_072824.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(379, '47', '62', '8GB', 195, 390, '', 'images.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(380, '47', '62', '4GB', 190, 350, '', 'Sandisk-4GB-Memory-Card.jpg', 2, 380, 700, 1, NULL, NULL, NULL),
(381, '37', '36', 'XE680', 150, 350, '', 'VESCA-VESCA-ORIGINAL-VIVO-EARPHONE-SDL849436716-1-6d475.jpg', 1, 150, 350, 1, NULL, NULL, NULL),
(382, '48', '61', 'fusion f1', 1450, 2199, '', 'IMG_20180524_072751.jpg', 1, 1450, 2199, 1, NULL, NULL, NULL),
(383, '48', '61', 'passion P6', 1550, 2600, '', 'qnet-mobile-qnet-passion-p6-280227704.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(385, '48', '24', 'F5', 1850, 2999, '', 'Untitled-5.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(386, '48', '36', 'V7 PLUS', 1850, 2950, '', 'Vivo-V7.jpg', 1, 1850, 2950, 1, NULL, NULL, NULL),
(387, '43', '64', 'LTE SIM', 20, 50, '', 'globe-prepaid1.png', 25, 500, 1250, 2, NULL, NULL, NULL),
(388, '43', '65', 'LTE SIM', 18, 40, '', 'tm lte prepaid sim.jpg', 7, 126, 280, 4, NULL, NULL, NULL),
(389, '43', '63', 'LTE SIM', 21, 40, '', 'logo_fb.png', 6, 126, 240, 3, NULL, NULL, NULL),
(390, '43', '66', 'LTE SIM', 22, 50, '', 'smart.jpg', 7, 154, 350, 3, NULL, NULL, NULL),
(391, '41', '22', 'TYPE C', 53, 200, '', 'USB-C-Cable-Nylon-Braided-Fast-Charger-Data-Sync-Cord-for-Samsung-Galaxy-Note-8-S8-Plus-LG-V30-V20-G5-G6-Google-Pixel-Nexus-5X-6p-Moto-Z2.jpg', 6, 318, 1200, 2, NULL, NULL, NULL),
(392, '41', '46', 'G600', 35, 100, '', '31m2tQ76dEL._SY355_.jpg', 2, 70, 200, 2, NULL, NULL, NULL),
(394, '49', '46', '2.1 A 5s', 65, 200, '', 'lidu-2-1a-car-charger-attached-usb-cable-apple-iphone-5-5s-6-neworldmobile-1605-12-neworldmobile@1.jpg', 3, 195, 600, 1, NULL, NULL, NULL),
(395, '49', '49', '3 in 1 car charger', 65, 180, '', 'Car_Charger__86506.1435352030.500.750.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(396, '49', '46', '5 in 1', 75, 200, '', '41e+8ADM5FL._SX425_.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(397, '49', '45', 'car2.1A', 110, 250, '', '41e+8ADM5FL._SX425_.jpg', 1, 110, 250, 1, NULL, NULL, NULL),
(398, '39', '58', 'ALI-L103 ', 120, 250, '', '51rBybaweWL._SL500_AC_SS350_.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(399, '41', '58', 'ALI-3590', 150, 280, '', '3ae1f6efbba4b0636487dc582c256af3.jpg', 1, 150, 280, 1, NULL, NULL, NULL),
(400, '41', '58', 'ali-3589', 120, 250, '', '3ae1f6efbba4b0636487dc582c256af3.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(401, '41', '58', 'ali-595', 120, 250, '', 'download (1).jpg', 3, 360, 750, 1, NULL, NULL, NULL),
(402, '41', '57', 'pc618 5s', 110, 350, '', '2f046f3d89055a31689823d901911aee.jpg', 1, 110, 350, 1, NULL, NULL, NULL),
(403, '39', '58', 'l68', 60, 180, '', 'IMG_20180524_072703.jpg', 4, 240, 720, 2, NULL, NULL, NULL),
(404, '39', '58', 'ali-L31', 60, 180, '', 'Original-case-Remax-USB-cable-100cm-Charging-Data-Sync-Support-2-1A-Current-for-iPhone4-iPhone.jpg_640x640.jpg', 1, 60, 180, 1, NULL, NULL, NULL),
(405, '39', '58', 'ALI-L88 5s', 120, 250, '', 'alibaba-l88-3m-sync-and-charge-lightning-cable-for-androidsmartphones-and-tablets-white-3353-76378751-b524adf983ebb2aca2dc04649a8c1749-product.jpg', 2, 240, 500, 1, NULL, NULL, NULL),
(406, '39', '41', 'ali-L88', 120, 200, '', 'alibaba-l88-3m-sync-and-charge-lightning-cable-for-androidsmartphones-and-tablets-white-3353-76378751-b524adf983ebb2aca2dc04649a8c1749-product.jpg', 2, 240, 400, 1, NULL, NULL, NULL),
(407, '37', '68', 'XY-1', 40, 150, '', 'headset_xyx_universal_1512671521_f3b121f0.jpg', 36, 1440, 5400, 10, NULL, NULL, NULL),
(408, '37', '24', 'K-117', 35, 100, '', 'no image.jpg', 4, 140, 400, 6, NULL, NULL, NULL),
(409, '37', '22', 'SL-208', 35, 100, '', 'no image.jpg', 19, 665, 1900, 6, NULL, NULL, NULL),
(410, '37', '30', 'SL-89', 30, 100, '', 'sl69-m.jpg', 13, 390, 1300, 6, NULL, NULL, NULL),
(411, '37', '24', '3 IN 1 PERFUME', 35, 100, '', 'no image.jpg', 4, 140, 400, 5, NULL, NULL, NULL),
(412, '37', '69', 'T180A', 45, 100, '', '01_119_165.jpg', 3, 135, 300, 5, NULL, NULL, NULL),
(413, '37', '70', 'SN-04', 45, 100, '', 's-l1600.jpg', 3, 135, 300, 5, NULL, NULL, NULL),
(414, '37', '71', '1OO HEADSET', 35, 100, '', 's-l1600.jpg', 3, 105, 300, 5, NULL, NULL, NULL),
(415, '37', '30', 'SL69-M', 35, 100, '', 'sl69-m.jpg', 3, 105, 300, 5, NULL, NULL, NULL),
(416, '37', '45', 'VP-088', 50, 150, '', '2018-01-03-5-348x348.png', 2, 100, 300, 5, NULL, NULL, NULL),
(417, '37', '45', 'VP-H009', 50, 150, '', '2018-01-03-5-348x348.png', 1, 50, 150, 5, NULL, NULL, NULL),
(418, '37', '72', 'sl-808', 35, 100, '', 's-l1600.jpg', 2, 70, 200, 3, NULL, NULL, NULL),
(419, '37', '36', 'VO-520', 35, 100, '', 'vivo-handsfree-in-ear-headset-with-3-5mm-jack-500x500.jpg', 0, 0, 0, 5, NULL, NULL, NULL),
(420, '37', '22', 'FASHION UNIVERSAL', 35, 100, '', 's-l1600.jpg', 3, 105, 300, 5, NULL, NULL, NULL),
(421, '37', '73', 'K-6425', 35, 100, '', 'avantree-sacool-pro-in-ear-bluetooth-stereo-headset-with-microphoneblackred-with-free-kds-beats-0022-100db-stereo-subwooferover-the-ear-headphones-black-1506147769-94725583-08a4f3b817b2835915', 0, 0, 0, 5, NULL, NULL, NULL),
(422, '37', '74', 'Q-069', 35, 100, '', '41QEHFpFW4L.jpg', 6, 210, 600, 5, NULL, NULL, NULL),
(423, '37', '22', 'S6', 35, 100, '', '51noDSD2J0L._SL1000_.jpg', 3, 105, 300, 5, NULL, NULL, NULL),
(424, '51', '75', 'm316', 90, 200, '', 'main-qimg-fbefe79c959c2ab4dc604e05fa6cc93e-c.jpg', 1, 90, 200, 1, NULL, NULL, NULL),
(425, '52', '75', 'm313', 90, 200, '', 'main-qimg-fbefe79c959c2ab4dc604e05fa6cc93e-c.jpg', 1, 90, 200, 1, NULL, NULL, NULL),
(426, '53', '75', 'Q6', 220, 380, '', 'images.jpg', 1, 220, 380, 1, NULL, NULL, NULL),
(427, '39', '76', 'GO', 65, 150, '', 'pokemon-go-pokeball-micro-usb-cable-2321-0141447-931cdc1868fe772317f1b455c85f5e32-catalog_233.jpg', 1, 65, 150, 1, NULL, NULL, NULL),
(428, '55', '77', 'MS-18', 300, 650, '', 'high-quality-ms-t8-hanging-ear-stereo-portable.jpg', 1, 300, 650, 1, NULL, NULL, NULL),
(429, '55', '77', 'MS-T11', 350, 750, '', 'rBVaSVozeDuAC2ZqAAKhAUHUrSU901.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(430, '55', '45', 'VP-B01', 280, 580, '', '999999-615822003339.jpg', 1, 280, 580, 1, NULL, NULL, NULL),
(431, '55', '22', 'R7', 280, 580, '', 'images (3).jpg', 1, 280, 580, 1, NULL, NULL, NULL),
(432, '55', '22', 'A8', 280, 580, '', 'images (3).jpg', 1, 280, 580, 1, NULL, NULL, NULL),
(433, '55', '54', '4.1 EDR', 120, 350, '', '999999-615822003339.jpg', 1, 120, 350, 1, NULL, NULL, NULL),
(434, '55', '78', 'C300', 280, 550, '', 'images.png', 0, 0, 0, 1, NULL, NULL, NULL),
(435, '55', '24', 'OPPO 380', 150, 350, '', 'IMG_20180524_072310.jpg', 1, 150, 350, 1, NULL, NULL, NULL),
(436, '55', '35', 'huawie 380', 150, 350, '', 'IMG_20180524_072330.jpg', 1, 150, 350, 1, NULL, NULL, NULL),
(437, '55', '36', 'vivo 380', 150, 350, '', 'IMG_20180524_072318.jpg', 1, 150, 350, 1, NULL, NULL, NULL),
(438, '41', '22', '15w', 130, 380, '', '3498090_2751eac7-9d80-40c8-b160-6bdb8c1ff5b6.jpg', 1, 130, 380, 1, NULL, NULL, NULL),
(439, '41', '36', 'vivo 350', 150, 350, '', '514A9ZM7a2L.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(440, '56', '36', '8800mah', 120, 250, '', 'IMG_20180524_072435.jpg', 1, 120, 250, 1, NULL, NULL, NULL),
(441, '39', '59', 'cb-061', 150, 280, '', 'bavin-ba86-2-in-1-charger-and-data-cables-11meter-with-freebampd-super-bass-zipper-in-ear-earphone-color-may-vary-1501080132-75246113-7ce055781903357453a0e1631c5bb449-catalog_233.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(442, '39', '59', 'cb-095', 170, 270, '', 'bavin-ca270-usb-data-cable-silver-100795408.jpg', 1, 170, 270, 1, NULL, NULL, NULL),
(443, '39', '59', 'cb-033', 180, 280, '', 'CABLE-033.jpg', 1, 180, 280, 1, NULL, NULL, NULL),
(444, '39', '59', 'cb-051 5s', 120, 250, '', 'bavin-ca270-usb-data-cable-silver-100795408.jpg', 4, 480, 1000, 1, NULL, NULL, NULL),
(445, '37', '79', 'L-14', 90, 200, '', '2016-hello-kitty-in-ear-girls-kids-gift-storage.jpg', 1, 90, 200, 1, NULL, NULL, NULL),
(446, '37', '58', 'ali-538', 75, 200, '', 'alibaba-a-538-original-samsung-headsetblack-1492992417-64920261-11d926f1dc2bcad8001a5097d61aa301-product.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(447, '57', '80', '15.8', 1500, 1999, '', '9c-mobile-dvd-player-hd-screen-portable-dvd-player-p37314292-10008213-big.jpg', 1, 1500, 1999, 1, NULL, NULL, NULL),
(448, '57', '80', '12.8', 1250, 1799, '', 'images (4).jpg', 1, 1250, 1799, 1, NULL, NULL, NULL),
(449, '60', '81', 'DMD-5500', 220, 480, '', '81e-GnVRhOL._SL1500_.jpg', 1, 220, 480, 1, NULL, NULL, NULL),
(450, '60', '82', 'P-98 PRO', 170, 380, '', '81e-GnVRhOL._SL1500_.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(451, '60', '83', 'KY-8001', 150, 350, '', '81e-GnVRhOL._SL1500_.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(452, '55', '84', 'B06 899', 480, 899, '', '63939_700-w500.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(453, '55', '74', 'B 503', 500, 999, '', 'sports-bluetooth-headset-fm-micro-sd-iphone-samsung-xiaomi-oppo-justbuyonline-1509-03-justbuyonline@2.jpg', 1, 500, 999, 1, NULL, NULL, NULL),
(454, '55', '85', 'Mini-503tf+fm', 280, 580, '', 'sports-bluetooth-headset-fm-micro-sd-iphone-samsung-xiaomi-oppo-justbuyonline-1509-03-justbuyonline@2.jpg', 1, 280, 580, 1, NULL, NULL, NULL),
(455, '61', '86', 'asas 2018', 45, 120, '', '51jSXYZ059L._SY355_.jpg', 1, 45, 120, 1, NULL, NULL, NULL),
(456, '37', '29', 'earpods', 105, 350, '', 'Apple_EarPods_35446297_02.jpg', 1, 105, 350, 1, NULL, NULL, NULL),
(457, '62', '83', 'rm-133e', 45, 100, '', 'images (5).jpg', 4, 180, 400, 5, NULL, NULL, NULL),
(458, '41', '22', '2A', 60, 180, '', 'IMG_20180524_071758.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(459, '41', '36', '2A', 60, 180, '', 'IMG_20180524_071959.jpg', 1, 60, 180, 1, NULL, NULL, NULL),
(460, '41', '29', '2A', 60, 180, '', 'IMG_20180524_071927.jpg', 1, 60, 180, 1, NULL, NULL, NULL),
(461, '41', '24', '2A', 60, 180, '', 'IMG_20180524_071837.jpg', 1, 60, 180, 1, NULL, NULL, NULL),
(462, '41', '35', '2A', 60, 180, '', 'IMG_20180524_071852.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(463, '37', '69', 'XB450BT', 180, 380, '', '500_500_productGfx_2ef092aae6fad6ea328843cca20e6c3b.jpg', 2, 360, 760, 1, NULL, NULL, NULL),
(464, '37', '87', 'MDR-XB450AP', 180, 380, '', 'l_10145514_001.jpg', 1, 180, 380, 1, NULL, NULL, NULL),
(465, '37', '30', 'J-03', 120, 280, '', 'B1089873253.jpg', 1, 120, 280, 1, NULL, NULL, NULL),
(466, '37', '69', 'MS-TV1D', 180, 380, '', '500_500_productGfx_2ef092aae6fad6ea328843cca20e6c3b.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(467, '42', '34', 'BL-5C C/A', 38, 100, '', 'bl5c._nokia-bl-5c-battery.jpg', 5, 190, 500, 2, NULL, NULL, NULL),
(468, '42', '34', 'BL-4C C/A', 28, 100, '', 'bl5c._nokia-bl-5c-battery.jpg', 5, 140, 500, 2, NULL, NULL, NULL),
(469, '42', '34', 'BL-5CB C/A', 38, 100, '', 's-l640.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(470, '42', '34', 'BL-4D C/A', 38, 100, '', 's-l1000.jpg', 6, 228, 600, 2, NULL, NULL, NULL),
(471, '42', '34', 'BL-4U C/A', 38, 100, '', 'nokia-bl-4u-original-imaeaqhzexjayjpk.jpeg', 0, 0, 0, 2, NULL, NULL, NULL),
(472, '42', '34', 'BP-4L C/A', 35, 100, '', 'nokia-bp-4l-original-imaeastrp5thhbmm.jpeg', 2, 70, 200, 2, NULL, NULL, NULL),
(473, '42', '34', 'BL-5B C/A', 38, 100, '', 'rBVaEFb-FguAFdh-AADUep-mo78595.jpg', 2, 76, 200, 2, NULL, NULL, NULL),
(474, '42', '34', 'BL-4B C/B', 38, 100, '', 's-l300 (1).jpg', 2, 76, 200, 1, NULL, NULL, NULL),
(475, '42', '34', 'BL-4S C/A', 38, 100, '', 'nokia-bl-4s-original-imadykh4vwzhkhhh.jpeg', 6, 228, 600, 1, NULL, NULL, NULL),
(476, '42', '34', 'BL-5F', 38, 100, '', '4138lgt+GLL.jpg', 1, 38, 100, 1, NULL, NULL, NULL),
(477, '42', '34', 'BL-5CAC/A', 38, 100, '', 'B1155060214.jpg', 1, 38, 100, 1, NULL, NULL, NULL),
(478, '63', '88', 'AS-006', 109, 250, '', '831272236_1_1000x700.jpg', 12, 1308, 3000, 3, NULL, NULL, NULL),
(479, '63', '88', 'AS-035', 120, 250, '', 'kuku-as035-multimedia-speaker-red-1481597515-7259839-559512d203d86d7258ff49803bc80fb1-product.jpg', 2, 240, 500, 1, NULL, NULL, NULL),
(480, '63', '88', 'AS-021', 220, 450, '', 'kuku-as-021-speaker-multimedia-x-bass-with-usb-amp-auxillary-cable-for-pc-laptop-smartphones-1490919742-59759341-d39cf8a582ce30e8464807a1891dfd70-product.jpg', 2, 440, 900, 1, NULL, NULL, NULL),
(481, '63', '88', 'AS-032', 180, 350, '', 'kuku-as029-multimedia-speaker-green-1506847521-30747914-648f3f5bae89dec5128114d7d1a88f8a-catalog_233.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(482, '63', '88', 'D-02A', 90, 200, '', '876bea_bfc23425bf344c0b9769c3adff996e7a.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(483, '63', '88', 'AS-030', 200, 480, '', 'as-028-double-multimedia-speaker-black-3233-60238701-88b71dbb134f60c7daea2b035c6240ff-catalog_233.jpg', 2, 400, 960, 1, NULL, NULL, NULL),
(484, '63', '88', 'HELLOY KITTY', 180, 400, '', 'no image.jpg', 1, 180, 400, 1, NULL, NULL, NULL);
INSERT INTO `products` (`id`, `category_id`, `brand_id`, `product_title`, `product_wholesale_price`, `product_price`, `product_desc`, `product_image`, `quantity`, `totalAmountInWholeSale`, `totalAmountInRetail`, `qty_alert`, `status`, `created_at`, `updated_at`) VALUES
(485, '63', '89', 'h-966', 180, 380, '', '2017-water-cube-bluetooth-speaker-h-966-outdoor.jpg', 1, 180, 380, 1, NULL, NULL, NULL),
(486, '63', '69', 'm168', 250, 550, '', '954973373_w0_h0_6_7.jpg', 1, 250, 550, 1, NULL, NULL, NULL),
(487, '63', '89', 'HF-Q3', 320, 650, '', 'new-hf-q3-multifunction-mini-bluetooth-speakers.jpg', 1, 320, 650, 1, NULL, NULL, NULL),
(488, '63', '89', 'H-977', 180, 380, '', 'h-977-bluetooth-speaker-new-mini-water-cube.jpg', 1, 180, 380, 1, NULL, NULL, NULL),
(489, '63', '89', 'SLC-055', 210, 450, '', 'hqdefault.jpg', 1, 210, 450, 1, NULL, NULL, NULL),
(490, '63', '89', 'N10', 155, 250, '', 'Hands-Free-Mini-Portable-Sport-Wireless-Speaker.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(491, '63', '89', 'K8', 205, 450, '', '1569_640_SPEAKER-BLUETOOTH-LED-KUKU-K8_596c4366330d3.png', 1, 205, 450, 1, NULL, NULL, NULL),
(492, '63', '88', 'AM-449', 2350, 680, '', '7fd8afaf3614a968a2db0c02cee7db9e.jpg', 1, 2350, 680, 1, NULL, NULL, NULL),
(493, '63', '88', 'AM-161USB', 350, 650, '', 'kuku-amfmsw-3-band-radio-usbsdtf-mp3-music-player-portable-rechargeable-with-bluetooth-speaker-bt666-212349768.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(494, '63', '88', 'AM-270AC', 180, 390, '', 'kuku-am-941ar-3-band-radio-2519-81165428-008b9e82f15278b277d5218958d5184c-catalog_233.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(495, '63', '88', 'TM-501', 130, 250, '', '41eoBltNJzL._SX425_.jpg', 3, 390, 750, 1, NULL, NULL, NULL),
(496, '63', '89', 'FD-1', 180, 380, '', 'kuku-as-105-mini-bluetooth-speaker-red-1463540022-3064964-f16c13a82019e528a7ec41315d56783c-catalog_233.jpg', 1, 180, 380, 1, NULL, NULL, NULL),
(497, '63', '89', 'MHS-002', 250, 580, '', 'Universal-Drum-Style-Portable-Bluetooth-Speaker-with-Strap-MHS002-box.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(498, '64', '90', '711 1.5', 25, 50, '', 'ep1800bk.jpg', 12, 300, 600, 3, NULL, NULL, NULL),
(499, '64', '90', '435S TV PLUS', 28, 85, '', 'images (6).jpg', 0, 0, 0, 3, NULL, NULL, NULL),
(500, '64', '90', '736 DVD', 25, 50, '', 'images (7).jpg', 2, 50, 100, 3, NULL, NULL, NULL),
(501, '64', '90', '735 SPEAKER', 20, 50, '', 'AArUe.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(502, '65', '91', 'SUN GLASS', 28, 50, '', 'Ray-Ban-Cosmo-Sunglasses.jpeg', 160, 4480, 8000, 1, NULL, NULL, NULL),
(503, '39', '70', 'universal 100', 30, 100, '', 'cablecharger.png', 73, 2190, 7300, 1, NULL, NULL, NULL),
(504, '37', '69', 'headset50', 17, 50, '', 'images (1).png', 73, 1241, 3650, 1, NULL, NULL, NULL),
(505, '66', '92', 'CAP 100', 55, 100, '', 'LS865_WINE_800x.progressive.jpg', 26, 1430, 2600, 10, NULL, NULL, NULL),
(506, '66', '93', 'CAP 150', 75, 150, '', 'thumb.jpg', 33, 2475, 4950, 15, NULL, NULL, NULL),
(507, '47', '62', '8.gb C/B', 75, 150, '', '61tJzet4w7L._SL1100_.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(508, '40', '57', 'PC617', 65, 150, '', '719hkv7VEyL._SX425_.jpg', 3, 195, 450, 1, NULL, NULL, NULL),
(509, '67', '94', 'flare s6plus', 30, 100, '', 'slim-clear-soft-tpu-shockproof-protector-cover-case-for-apple-iphone-7-plus_p20160914143939884.jpg', 3, 90, 300, 1, NULL, NULL, NULL),
(510, '67', '94', 'flare s6', 30, 100, '', 'slim-clear-soft-tpu-shockproof-protector-cover-case-for-apple-iphone-7-plus_p20160914143939884.jpg', 1, 30, 100, 1, NULL, NULL, NULL),
(511, '67', '94', 'omegalite3', 30, 100, '', 'slim-clear-soft-tpu-shockproof-protector-cover-case-for-apple-iphone-7-plus_p20160914143939884.jpg', 3, 90, 300, 1, NULL, NULL, NULL),
(512, '67', '94', 'desirer6mini', 30, 100, '', 'slim-clear-soft-tpu-shockproof-protector-cover-case-for-apple-iphone-7-plus_p20160914143939884.jpg', 2, 60, 200, 1, NULL, NULL, NULL),
(513, '67', '94', 'flarej2mini', 30, 100, '', 'slim-clear-soft-tpu-shockproof-protector-cover-case-for-apple-iphone-7-plus_p20160914143939884.jpg', 3, 90, 300, 1, NULL, NULL, NULL),
(514, '67', '94', 'flarej2s', 30, 100, '', 'slim-clear-soft-tpu-shockproof-protector-cover-case-for-apple-iphone-7-plus_p20160914143939884.jpg', 1, 30, 100, 1, NULL, NULL, NULL),
(515, '67', '94', 'flaresplay', 30, 100, '', 'slim-clear-soft-tpu-shockproof-protector-cover-case-for-apple-iphone-7-plus_p20160914143939884.jpg', 1, 30, 100, 1, NULL, NULL, NULL),
(516, '67', '94', 'flares6mini', 30, 100, '', 'slim-clear-soft-tpu-shockproof-protector-cover-case-for-apple-iphone-7-plus_p20160914143939884.jpg', 1, 30, 100, 1, NULL, NULL, NULL),
(517, '67', '94', 'flarelite', 30, 100, '', 'slim-clear-soft-tpu-shockproof-protector-cover-case-for-apple-iphone-7-plus_p20160914143939884.jpg', 1, 30, 100, 1, NULL, NULL, NULL),
(518, '44', '37', 'zenfone4 max 5.2 zc520kl', 25, 100, '', 'Zenfone-GO-5.5-Tempered-Glass-by-ZyForce.jpg', 6, 150, 600, 2, NULL, NULL, NULL),
(519, '44', '37', 'zenfone go 5.5 zb551kl', 25, 100, '', 'Zenfone-GO-5.5-Tempered-Glass-by-ZyForce.jpg', 4, 125, 500, 2, NULL, NULL, NULL),
(520, '44', '37', 'zenfone 5/zs620/e', 25, 100, '', 'Zenfone-GO-5.5-Tempered-Glass-by-ZyForce.jpg', 5, 125, 500, 1, NULL, NULL, NULL),
(521, '44', '37', 'zc554k', 25, 100, '', 'Zenfone-GO-5.5-Tempered-Glass-by-ZyForce.jpg', 1, 25, 100, 1, NULL, NULL, NULL),
(522, '46', '61', 'B22', 300, 499, '', 'b22.jpg', 3, 900, 1497, 1, NULL, NULL, NULL),
(523, '46', '61', 'B21', 300, 499, '', 'b21.jpg', 1, 300, 499, 1, NULL, NULL, NULL),
(524, '46', '61', 'D7', 400, 799, '', 'b22.jpg', 2, 800, 1598, 1, NULL, NULL, NULL),
(525, '55', '22', 'samsung 38', 125, 350, '', 'no image.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(526, '41', '37', 'asus 380', 130, 380, '', 'no image.jpg', 1, 130, 380, 1, NULL, NULL, NULL),
(527, '41', '24', 'OPPO 380', 125, 380, '', 'no image.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(528, '41', '29', '5W USB Power Adaptor', 170, 450, '', '5W USB Power Adaptor.jpg', 1, 170, 450, 1, NULL, NULL, NULL),
(529, '37', '22', 'y9 original', 150, 380, '', 'samsung original headset.jpg', 2, 300, 760, 1, NULL, NULL, NULL),
(530, '39', '38', 'ALL in 1', 38, 180, '', 'allinone.jpeg', 2, 76, 360, 1, NULL, NULL, NULL),
(531, '37', '68', 'XY-3', 45, 150, '', 'xyxearphone.jpg', 21, 945, 3150, 1, NULL, NULL, NULL),
(532, '39', '58', 'l22 TYPE C', 50, 150, '', 'typec.jpg', 1, 50, 150, 1, NULL, NULL, NULL),
(533, '37', '22', 'K-112', 35, 100, '', 'k-112.jpg', 6, 210, 600, 5, NULL, NULL, NULL),
(534, '47', '62', '2GB', 193, 300, '', '2gbmemory.jpg', 2, 386, 600, 1, NULL, NULL, NULL),
(535, '42', '22', 'J5 2015/ Grand Prime/J2 Prime', 230, 480, '', 'battery samsung.jpg', 2, 460, 960, 1, NULL, NULL, NULL),
(536, '42', '22', 'J1 2015', 240, 390, '', 'battery samsung.jpg', 1, 240, 390, 1, NULL, NULL, NULL),
(537, '49', '45', '2.1A', 75, 180, '', 'no image.jpg', 4, 300, 720, 1, NULL, NULL, NULL),
(538, '41', '57', 'pC618 4s', 140, 350, '', 'junction-one-8089-228727-1.jpg', 2, 280, 700, 1, NULL, NULL, NULL),
(539, '41', '57', 'PC618 android', 98, 350, '', 'pc618.jpg', 1, 98, 350, 1, NULL, NULL, NULL),
(540, '41', '38', 'PSP 5V', 70, 180, '', '71RrVFM1GYL._SX342_.jpg', 1, 70, 180, 1, NULL, NULL, NULL),
(541, '44', '35', 'y5 2018', 20, 100, '', '2017-newest-model-2-5D-9H-0.jpg_220x220.jpg', 4, 80, 400, 1, NULL, NULL, NULL),
(542, '44', '22', 'j4', 20, 100, '', '71VI0CkH1+L._SY355_.jpg', 6, 120, 600, 1, NULL, NULL, NULL),
(543, '44', '22', 'j6', 20, 100, '', '71VI0CkH1+L._SY355_.jpg', 6, 120, 600, 1, NULL, NULL, NULL),
(544, '44', '24', 'f1', 20, 100, '', 'b4b9d987-56c1-47bc-c439-ff12bc063fbe.jpg', 4, 80, 400, 1, NULL, NULL, NULL),
(545, '44', '25', 'flare j1', 20, 100, '', 'IMG_20141204_224233_zpse3ea9c95.jpg', 5, 100, 500, 1, NULL, NULL, NULL),
(546, '44', '25', 'flare s5', 20, 100, '', 'IMG_20141204_224233_zpse3ea9c95.jpg', 3, 60, 300, 1, NULL, NULL, NULL),
(547, '44', '25', 'flare j3 lite', 20, 100, '', 'IMG_20141204_224233_zpse3ea9c95.jpg', 3, 60, 300, 1, NULL, NULL, NULL),
(548, '64', '90', '435 1.5m portable', 25, 50, '', '3-5mm-AV-A-V-Audio-Video-TV-Cable-Cord-Lead-For-Audiovox-Portable-DVD-Player.jpg', 10, 250, 500, 1, NULL, NULL, NULL),
(549, '44', '87', 'xa', 30, 100, '', 'sony.jpg', 3, 90, 300, 1, NULL, NULL, NULL),
(550, '44', '87', 'c3', 30, 100, '', 'sony.jpg', 1, 30, 100, 1, NULL, NULL, NULL),
(551, '44', '87', 'c4', 30, 100, '', 'sony.jpg', 1, 30, 100, 1, NULL, NULL, NULL),
(552, '44', '87', 'c5', 30, 100, '', 'sony.jpg', 1, 30, 100, 1, NULL, NULL, NULL),
(553, '44', '87', 'm5', 30, 100, '', 'sony.jpg', 1, 30, 100, 1, NULL, NULL, NULL),
(554, '44', '53', 'G3', 30, 100, '', 'lg.jpg', 1, 30, 100, 1, NULL, NULL, NULL),
(555, '44', '53', 'K5', 30, 100, '', 'lg.jpg', 1, 30, 100, 1, NULL, NULL, NULL),
(556, '44', '53', 'V10', 30, 100, '', 'lg.jpg', 1, 30, 100, 1, NULL, NULL, NULL),
(557, '44', '53', 'G3 STYLUS', 30, 100, '', 'lg.jpg', 2, 60, 200, 1, NULL, NULL, NULL),
(558, '44', '35', 'Y3ii', 25, 100, '', '71vVgneCBmL._SY355_.jpg', 1, 25, 100, 1, NULL, NULL, NULL),
(559, '44', '35', 'p8', 25, 100, '', '71vVgneCBmL._SY355_.jpg', 1, 25, 100, 1, NULL, NULL, NULL),
(560, '44', '35', 'p9', 25, 100, '', '71vVgneCBmL._SY355_.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(561, '44', '35', '4c', 25, 100, '', '71vVgneCBmL._SY355_.jpg', 1, 25, 100, 1, NULL, NULL, NULL),
(562, '44', '35', 'G9lite', 30, 100, '', '71vVgneCBmL._SY355_.jpg', 1, 30, 100, 1, NULL, NULL, NULL),
(563, '44', '51', 'a2020', 25, 100, '', 'lenovo.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(564, '44', '51', 'a2010', 25, 100, '', 'lenovo.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(565, '44', '51', 'a600/p70/a6010/k3', 25, 100, '', 'lenovo.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(566, '44', '51', 'a5000', 25, 100, '', 'lenovo.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(567, '44', '51', 'a6020', 25, 100, '', 'lenovo.jpg', 1, 25, 100, 1, NULL, NULL, NULL),
(568, '44', '51', 's90', 25, 100, '', 'lenovo.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(569, '44', '51', 'vibe x', 25, 100, '', 'lenovo.jpg', 1, 25, 100, 1, NULL, NULL, NULL),
(570, '44', '96', 'Z630', 30, 100, '', 'ACER.jpg', 1, 30, 100, 1, NULL, NULL, NULL),
(571, '44', '96', 'liquid x2', 25, 100, '', 'ACER.jpg', 3, 75, 300, 1, NULL, NULL, NULL),
(572, '44', '97', 'ultra lite', 25, 100, '', 'b4b9d987-56c1-47bc-c439-ff12bc063fbe.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(573, '44', '97', '360alpha plus', 25, 100, '', 'b4b9d987-56c1-47bc-c439-ff12bc063fbe.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(574, '44', '97', 'crunch', 25, 100, '', 'b4b9d987-56c1-47bc-c439-ff12bc063fbe.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(575, '44', '97', 'vent 4G', 25, 100, '', 'b4b9d987-56c1-47bc-c439-ff12bc063fbe.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(576, '44', '97', 'upsized', 25, 100, '', 'b4b9d987-56c1-47bc-c439-ff12bc063fbe.jpg', 1, 25, 100, 1, NULL, NULL, NULL),
(577, '44', '43', 'play click', 30, 100, '', 'starmobile.jpg', 3, 90, 300, 1, NULL, NULL, NULL),
(578, '44', '43', 'play plus', 25, 100, '', 'starmobile.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(579, '40', '98', 'adaptor 50', 18, 50, '', 'app-a1265_01_3.jpg', 10, 180, 500, 3, NULL, NULL, NULL),
(580, '40', '98', 'adaptor 120', 35, 120, '', 'app-a1265_01_3.jpg', 4, 140, 480, 1, NULL, NULL, NULL),
(581, '40', '98', 'car100', 45, 100, '', 'download (2).jpg', 2, 90, 200, 1, NULL, NULL, NULL),
(582, '40', '98', 'samsung adaptor', 25, 100, '', 'item_XL_6293640_3562401.jpg', 4, 100, 400, 1, NULL, NULL, NULL),
(583, '68', '99', 'm316', 100, 200, '', 'c05086013.png', 1, 100, 200, 1, NULL, NULL, NULL),
(584, '56', '59', 'voltron', 175, 380, '', 'BAVIN_VOLTRON_POWER_BANK_1024x1024.jpg', 1, 175, 380, 1, NULL, NULL, NULL),
(585, '56', '58', 'ali-yj215', 160, 370, '', 'd9145074d1f66653e0e468147238c315.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(586, '56', '100', 'PURE 11800mah', 160, 350, '', 'no image.jpg', 1, 160, 350, 1, NULL, NULL, NULL),
(587, '56', '100', 'PURE10800mah', 150, 340, '', 'no image.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(588, '56', '22', '180000mah', 160, 360, '', '10000mAh-3-USB-Port-Portable-External-Battery-Charger-Power-Bank.jpg', 1, 160, 360, 1, NULL, NULL, NULL),
(589, '48', '22', 's9plus', 1750, 2950, '', 'Galaxy-S9-Plus-1.jpeg', 0, 0, 0, 1, NULL, NULL, NULL),
(590, '53', '25', 'flare s6', 20, 100, '', 'bec1642c887a70334a3f024bacef83e7.jpg', 7, 140, 700, 1, NULL, NULL, NULL),
(591, '42', '25', 'flare s6', 155, 355, '', 'images (1).jpg', 1, 155, 355, 1, NULL, NULL, NULL),
(592, '44', '26', 'a10', 20, 4, '', 'bec1642c887a70334a3f024bacef83e7.jpg', 120, 2000, 400, 1, NULL, NULL, NULL),
(593, '44', '29', 'privacy 5s', 60, 200, '', 'privacy.webp', 1, 60, 200, 1, NULL, NULL, NULL),
(594, '44', '29', 'privacy 6s', 60, 200, '', 'privacy.webp', 1, 60, 200, 1, NULL, NULL, NULL),
(595, '68', '101', 'BT MOUSE', 140, 350, '', 'mouse.jpeg', 1, 140, 350, 1, NULL, NULL, NULL),
(596, '63', '88', 'AM 339', 370, 750, '', 'AM399.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(597, '63', '88', 'AM 067', 347, 680, '', '925fc5963a5a26c35c84d57ae0b2ca7a_tn.jpg', 1, 347, 680, 1, NULL, NULL, NULL),
(598, '63', '89', 'C308', 230, 450, '', '51Cr4q0PoYL._SL500_AC_SS350_.jpg', 6, 1380, 2700, 1, NULL, NULL, NULL),
(599, '63', '89', 'chargep+', 390, 890, '', 'bose_digital_bluetooth_1517372206_ad07717d.jpg', 1, 390, 890, 1, NULL, NULL, NULL),
(600, '48', '22', 'J7 Pro', 1700, 2999, '', 'ph-galaxy-j7-2017-sm-j730gzdgxtc-backgold-69641655.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(601, '41', '22', 'samsung c/b', 40, 150, '', 'no image.jpg', 5, 200, 750, 1, NULL, NULL, NULL),
(602, '41', '102', '2IN1 CHARGER', 55, 150, '', 'asus-18w-charger-originalauthentic-w-micro-usb-cable-for-asusmobile-phone-etc-black-4614-33583032-9153904d691fca10d2e47aa04e8fb96e-catalog.jpg_340x340q80.jpg_.webp', 2, 110, 300, 1, NULL, NULL, NULL),
(603, '42', '26', 'rio craze s4010', 140, 350, '', 'download (2).jpg', 1, 140, 350, 1, NULL, NULL, NULL),
(604, '42', '22', 'g360 core prime', 218, 390, '', 'download (6).jpg', 1, 218, 390, 1, NULL, NULL, NULL),
(605, '42', '25', 'cm-2f marble', 135, 350, '', 'cm-2F-img1-1000x1000.jpg', 1, 135, 350, 1, NULL, NULL, NULL),
(606, '42', '40', 'crater', 130, 350, '', '367db65b81404bff99f2ae99f4aee4e7.jpg', 1, 130, 350, 1, NULL, NULL, NULL),
(607, '42', '26', 'my-96dtv', 140, 350, '', 'batery.jpg', 1, 140, 350, 1, NULL, NULL, NULL),
(608, '44', '25', 'flare j7', 25, 100, '', 'bec1642c887a70334a3f024bacef83e7.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(609, '41', '59', '3.4a', 235, 480, '', 'bavin.jpg', 1, 235, 480, 1, NULL, NULL, NULL),
(610, '41', '59', '4.4a', 295, 650, '', 'bavin-44a-4-ports-led-touch-lamp-charger-for-android-micro-8503-98069185-e87c68ba71ada41f89d68f7b36ed408f-catalog_233.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(611, '41', '59', '3a', 165, 390, '', '101360695-ef414f400160303975f304a207a675c3.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(612, '41', '59', '2.4a', 175, 420, '', 'bavin-24a-dual-usb-fast-charger-high-efficiency-quick-chargingtravel-adapter-for-android-2432-53016452-9be388fe86a90a6a0b124dbad0fb54af-catalog_233.jpg', 1, 175, 420, 1, NULL, NULL, NULL),
(613, '42', '45', 'ch-s8china ', 130, 290, '', 'no image.jpg', 1, 130, 290, 1, NULL, NULL, NULL),
(614, '42', '45', 'ch-s7mini/j3mini/j7mini/j27/g5mini', 130, 290, '', 'no image.jpg', 1, 130, 290, 1, NULL, NULL, NULL),
(615, '42', '45', 'ch-x9/v7/v7+/f5/f1s/f3[5.5]', 130, 290, '', 'no image.jpg', 2, 260, 580, 1, NULL, NULL, NULL),
(616, '42', '45', 'ch-f1smini/f3mini', 130, 290, '', 'no image.jpg', 3, 390, 870, 1, NULL, NULL, NULL),
(617, '42', '45', 'ch-a8', 130, 290, '', 'no image.jpg', 1, 130, 290, 1, NULL, NULL, NULL),
(618, '42', '45', 'ch-j7', 130, 290, '', 'no image.jpg', 1, 130, 290, 1, NULL, NULL, NULL),
(619, '42', '45', 'ch-s7pro', 130, 290, '', 'no image.jpg', 1, 130, 290, 1, NULL, NULL, NULL),
(620, '44', '24', 'f5 youth', 20, 100, '', 'images (2).jpg', 5, 100, 500, 2, NULL, NULL, NULL),
(621, '44', '36', 'y83', 20, 100, '', 'images (2).jpg', 5, 100, 500, 2, NULL, NULL, NULL),
(622, '44', '36', 'y85', 20, 100, '', 'images (2).jpg', 5, 100, 500, 2, NULL, NULL, NULL),
(623, '44', '36', 'y81', 20, 100, '', 'images (2).jpg', 2, 40, 200, 2, NULL, NULL, NULL),
(624, '44', '36', 'x21', 20, 100, '', 'images (2).jpg', 5, 100, 500, 2, NULL, NULL, NULL),
(625, '56', '96', '7800mAh', 175, 385, '', 'no image.jpg', 2, 350, 770, 1, NULL, NULL, NULL),
(626, '42', '45', 'ch-note8', 130, 290, '', 'no image.jpg', 1, 130, 290, 1, NULL, NULL, NULL),
(627, '42', '45', 'ch-x9/v7/v7+/f5/f1s/f3[5.0]', 130, 290, '', 'no image.jpg', 2, 260, 580, 1, NULL, NULL, NULL),
(628, '44', '24', 'F7 YOUTH', 20, 100, '', 'no image.jpg', 3, 60, 300, 2, NULL, NULL, NULL),
(629, '41', '45', 'VP-C023', 62, 200, '', 'no image.jpg', 11, 682, 2200, 4, NULL, NULL, NULL),
(630, '37', '24', 'Q-111', 35, 100, '', 'no image.jpg', 20, 700, 2000, 8, NULL, NULL, NULL),
(631, '37', '22', 'GALAXY S6', 35, 100, '', 'no image.jpg', 9, 315, 900, 41, NULL, NULL, NULL),
(632, '48', '22', 'j7 pro mini', 1200, 2350, '', 'no image.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(633, '48', '22', 'a6+', 1200, 2350, '', 'no image.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(634, '69', '103', 'oppo /samsung/vivo', 10, 35, '', 'no image.jpg', 50, 500, 1750, 20, NULL, NULL, NULL),
(635, '39', '59', 'cb-037', 75, 220, '', 'ss.jpg', 5, 375, 1100, 5, NULL, NULL, NULL),
(636, '39', '59', 'cb-037 android', 70, 210, '', 'ss.jpg', 19, 1330, 3990, 5, NULL, NULL, NULL),
(637, '67', '29', 'mobius 5g/5s', 70, 180, '', 'mobius.jpg', 2, 140, 360, 1, NULL, NULL, NULL),
(638, '67', '29', 'mobius 6g/6s', 70, 180, '', 'mobius.jpg', 4, 280, 720, 1, NULL, NULL, NULL),
(639, '67', '29', 'mobius 6g+/6s+', 70, 180, '', 'mobius.jpg', 1, 70, 180, 1, NULL, NULL, NULL),
(640, '67', '24', 'mobius a71', 70, 180, '', 'mobius.jpg', 2, 140, 360, 1, NULL, NULL, NULL),
(641, '67', '24', 'mobius f5', 70, 180, '', 'mobius.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(642, '67', '24', 'mobius a37', 70, 180, '', 'mobius.jpg', 3, 210, 540, 1, NULL, NULL, NULL),
(643, '67', '24', 'mobius a83', 70, 180, '', 'mobius.jpg', 1, 70, 180, 1, NULL, NULL, NULL),
(644, '67', '24', 'mobius a59/f1s', 70, 180, '', 'mobius.jpg', 1, 70, 180, 1, NULL, NULL, NULL),
(645, '67', '24', 'mobius F7 ', 70, 180, '', 'mobius.jpg', 1, 70, 180, 1, NULL, NULL, NULL),
(646, '67', '24', 'mobius F7 YOUTH', 80, 200, '', 'mobius.jpg', 2, 160, 400, 1, NULL, NULL, NULL),
(647, '67', '36', 'mobius y53', 70, 180, '', 'mobius.jpg', 1, 70, 180, 1, NULL, NULL, NULL),
(648, '67', '22', 'mobius j2 prime', 70, 180, '', 'mobius.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(649, '67', '22', 'mobius j8 2018', 80, 200, '', 'mobius.jpg', 3, 240, 600, 1, NULL, NULL, NULL),
(650, '67', '22', 'mobius j4 2018', 80, 200, '', 'mobius.jpg', 2, 160, 400, 1, NULL, NULL, NULL),
(651, '67', '22', 'mobius j6 2018', 80, 200, '', 'mobius.jpg', 2, 160, 400, 1, NULL, NULL, NULL),
(652, '67', '37', 'mobius zb555kl', 80, 200, '', 'mobius.jpg', 2, 160, 400, 1, NULL, NULL, NULL),
(653, '67', '22', 's7', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 105, 300, 1, NULL, NULL, NULL),
(654, '67', '22', 'note 8', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 4, 140, 400, 1, NULL, NULL, NULL),
(655, '67', '22', 's8', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 105, 300, 1, NULL, NULL, NULL),
(656, '67', '22', 's8+', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 70, 200, 1, NULL, NULL, NULL),
(657, '67', '22', 's6 edge', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 1, 35, 100, 1, NULL, NULL, NULL),
(658, '67', '22', 'S7 Edge', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 1, 35, 100, 1, NULL, NULL, NULL),
(659, '67', '22', 's6', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 1, 35, 100, 1, NULL, NULL, NULL),
(660, '67', '22', 'a5 2017', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 70, 200, 1, NULL, NULL, NULL),
(661, '67', '22', 'note 5', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 70, 200, 1, NULL, NULL, NULL),
(662, '67', '22', 's3', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 105, 300, 1, NULL, NULL, NULL),
(663, '67', '22', 'j2 2016', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 75, 300, 1, NULL, NULL, NULL),
(664, '67', '22', 'j710/2016', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(665, '67', '22', 'j5/2015', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 1, 25, 100, 1, NULL, NULL, NULL),
(666, '67', '22', 'j5 prime', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(667, '67', '22', 'j6 2018', 30, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 90, 300, 1, NULL, NULL, NULL),
(668, '67', '22', 'j4/2018', 30, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 90, 300, 1, NULL, NULL, NULL),
(669, '67', '22', 'j2pr0 2018', 30, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 90, 300, 1, NULL, NULL, NULL),
(670, '67', '22', 'j7 2015/j7 core', 30, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 90, 300, 1, NULL, NULL, NULL),
(671, '67', '22', 'j7 plus', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 75, 300, 1, NULL, NULL, NULL),
(672, '67', '22', 'j7 pro', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 75, 300, 1, NULL, NULL, NULL),
(673, '67', '22', 'j7 prime', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(674, '67', '22', 'j2 prime', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 5, 125, 500, 1, NULL, NULL, NULL),
(675, '67', '22', 'j3 prime', 50, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 1, 50, 100, 1, NULL, NULL, NULL),
(676, '67', '35', 'GR5/2017', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 1, 35, 100, 1, NULL, NULL, NULL),
(677, '67', '35', 'nova 2i/mate 10 lite', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 70, 200, 1, NULL, NULL, NULL),
(678, '67', '35', 'mate 10', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(679, '67', '35', 'nova 2 lite', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(680, '67', '36', 'y6 2018', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(681, '67', '36', 'y53 2017', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(682, '67', '36', 'y69', 30, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 1, 30, 100, 1, NULL, NULL, NULL),
(683, '67', '36', 'v9', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(684, '67', '103', 'v5', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 1, 25, 100, 1, NULL, NULL, NULL),
(685, '67', '24', 'F7 YOUTH', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 75, 300, 1, NULL, NULL, NULL),
(686, '67', '24', 'F7 ', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 1, 25, 100, 1, NULL, NULL, NULL),
(687, '67', '24', 'a59/f1s', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 1, 25, 100, 1, NULL, NULL, NULL),
(688, '67', '24', 'f3 plus', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 75, 300, 1, NULL, NULL, NULL),
(689, '67', '24', 'F5', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 7, 175, 700, 1, NULL, NULL, NULL),
(690, '67', '24', 'a37', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(691, '67', '24', 'a83', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(692, '67', '24', 'a71', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(693, '67', '24', 'a39', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1, NULL, NULL, NULL),
(694, '44', '24', 'a3s', 25, 100, '', 'no image.jpg', 5, 125, 500, 2, NULL, NULL, NULL),
(695, '44', '35', 'nova3i', 25, 100, '', 'no image.jpg', 5, 125, 500, 2, NULL, NULL, NULL),
(696, '37', '104', 'micro-HD902', 45, 150, '', 's-l300.jpg', 17, 765, 2550, 5, NULL, NULL, NULL),
(697, '37', '36', 'HI-FI', 50, 200, '', 's-l300.jpg', 4, 200, 800, 2, NULL, NULL, NULL),
(698, '37', '24', 'HI-FI', 50, 200, '', 's-l300.jpg', 2, 100, 400, 2, NULL, NULL, NULL),
(699, '37', '35', 'HI-FI', 50, 200, '', 's-l300.jpg', 3, 150, 600, 2, NULL, NULL, NULL),
(700, '37', '29', 'HI-FI', 50, 200, '', 's-l300.jpg', 3, 150, 600, 1, NULL, NULL, NULL),
(701, '37', '37', 'HI-FI', 50, 200, '', 's-l300.jpg', 6, 300, 1200, 1, NULL, NULL, NULL),
(702, '63', '89', 'XQ3', 190, 390, '', 'XQ3-Round-Speaker-With-Phone-Holder-Stand10-1000x1000.jpg', 2, 380, 780, 1, NULL, NULL, NULL),
(703, '63', '89', 'WS-888A', 180, 380, '', 'XQ3-Round-Speaker-With-Phone-Holder-Stand10-1000x1000.jpg', 2, 360, 760, 1, NULL, NULL, NULL),
(704, '63', '88', 'as-050', 215, 450, '', 'download.jpg', 1, 215, 450, 1, NULL, NULL, NULL),
(705, '63', '88', 'as-040', 200, 430, '', 'download.jpg', 1, 200, 430, 1, NULL, NULL, NULL),
(706, '63', '88', 'as-033', 215, 480, '', 'images (1).jpg', 1, 215, 480, 1, NULL, NULL, NULL),
(707, '63', '88', 'as-026', 250, 480, '', 'download (3).jpg', 2, 500, 960, 1, NULL, NULL, NULL),
(708, '46', '34', 'ot282', 280, 499, '', 'no image.jpg', 1, 280, 499, 1, NULL, NULL, NULL),
(709, '37', '22', 'HI-FI', 50, 200, '', 'no image.jpg', 3, 150, 600, 1, NULL, NULL, NULL),
(710, '48', '24', 'F7 ', 1850, 2999, '', 'download (5).jpg', 1, 1850, 2999, 1, NULL, NULL, NULL),
(711, '48', '36', 'v9', 1850, 2999, '', 'images (3).jpg', 1, 1850, 2999, 1, NULL, NULL, NULL),
(712, '48', '61', 'GLORY G1', 1650, 1750, '', 'qnet-mobile-glory-g2-261751917.jpg', 1, 1650, 1750, 1, NULL, NULL, NULL),
(713, '48', '61', 'passion p1', 1550, 2650, '', 'download (7).jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(714, '48', '24', 'f5 mini', 1200, 2250, '', 'no image.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(715, '44', '35', 'nova3i full tempered', 60, 200, '', 'no image.jpg', 1, 60, 200, 1, NULL, NULL, NULL),
(716, '44', '24', 'f9 full tempered', 60, 200, '', 'no image.jpg', 1, 60, 200, 1, NULL, NULL, NULL),
(717, '44', '36', 'v9 full screen', 60, 200, '', 'no image.jpg', 1, 60, 200, 1, NULL, NULL, NULL),
(718, '44', '24', 'f7 full cover', 60, 200, '', 'no image.jpg', 1, 60, 200, 1, NULL, NULL, NULL),
(719, '44', '24', 'f7 privacy', 60, 200, '', 'no image.jpg', 1, 60, 200, 1, NULL, NULL, NULL),
(720, '44', '24', 'f5 privacy', 60, 200, '', 'no image.jpg', 1, 60, 200, 1, NULL, NULL, NULL),
(721, '44', '22', 'j8 2018', 25, 100, '', 'no image.jpg', 5, 125, 500, 2, NULL, NULL, NULL),
(722, '44', '24', 'f9', 25, 100, '', 'no image.jpg', 5, 125, 500, 2, NULL, NULL, NULL),
(723, '42', '61', 'lynux', 110, 350, '', 'no image.jpg', 0, 0, 0, 1, NULL, NULL, NULL),
(724, '46', '34', 'ultra m1', 280, 499, '', 'no image.jpg', 1, 280, 499, 1, NULL, NULL, NULL),
(725, '46', '34', 'n105', 280, 499, '', 'no image.jpg', 1, 280, 499, 1, NULL, NULL, NULL),
(726, '46', '22', 'E339/B309i/E3210/E329', 280, 499, '', 'no image.jpg', 4, 1120, 1996, 1, NULL, NULL, NULL),
(727, '44', '24', 'a35', 20, 100, '', 'no image.jpg', 5, 100, 500, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `product_id`, `name`, `price`, `quantity`, `total`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 81, 'dsad', 100, 1, 100, 'dsad', 0, '2019-04-15 01:08:06', '2019-04-15 01:08:06'),
(2, 229, 'RAHIB P. ABU HALIL', 380, 1, 380, 'dsad', 0, '2019-04-15 01:16:10', '2019-04-15 01:16:10'),
(3, 560, 'dsa', 100, 1, 100, 'dsa', 0, '2019-04-15 01:18:16', '2019-04-15 01:18:16'),
(4, 560, 'dsa', 100, 1, 100, 'dsa', 0, '2019-04-15 01:19:05', '2019-04-15 01:19:05'),
(5, 560, 'dsa', 100, 1, 100, 'dsa', 0, '2019-04-15 01:19:31', '2019-04-15 01:19:31'),
(6, 433, 'dsadsa', 350, 1, 350, 'dsa', 0, '2019-04-15 01:20:42', '2019-04-15 01:20:42'),
(7, 681, 'dsadsadsa', 100, 1, 100, 'dsa', 0, '2019-04-15 01:22:03', '2019-04-15 01:22:03'),
(8, 39, 'dsa', 100, 1, 100, 'dsad', 0, '2019-04-15 01:22:22', '2019-04-15 01:22:22'),
(9, 399, 'RAHIB P. ABU HALIL', 280, 1, 280, 'dsa', 0, '2019-04-15 01:24:14', '2019-04-15 01:24:14'),
(10, 225, 'Customer', 380, 1, 380, 'Description', 0, '2019-04-15 01:50:40', '2019-04-15 01:50:40'),
(11, 433, 'Customer', 350, 1, 350, 'Description', 0, '2019-04-15 09:25:08', '2019-04-15 02:25:08'),
(12, 474, 'Customer', 100, 1, 100, 'Description', 0, '2019-04-15 03:29:53', '2019-04-15 03:29:53'),
(15, 666, 'RAHIB P. ABU HALIL', 100, 3, 300, 'pwd nang ibalik', 0, '2019-04-15 17:34:58', '2019-04-15 17:41:34'),
(16, 283, 'Customer', 250, 1, 250, 'Description', 0, '2019-04-15 18:09:35', '2019-04-15 18:09:35'),
(17, 265, 'Customer', 350, 1, 350, 'Description', 0, '2019-04-16 02:12:29', '2019-04-16 02:12:29'),
(18, 592, 'Customer', 4, 2, 8, 'Description', 0, '2019-04-16 02:25:38', '2019-04-16 02:25:38'),
(19, 592, 'Customer', 4, 1, 4, 'Description', 0, '2019-04-16 02:31:57', '2019-04-16 02:31:57'),
(21, 57, 'Customer', 100, 2, 200, 'Description', 0, '2019-04-16 03:18:58', '2019-04-16 03:18:58'),
(22, 57, 'Customer', 100, 1, 100, 'Description', 0, '2019-04-16 03:20:20', '2019-04-16 03:20:20'),
(23, 592, 'Customer', 4, 2, 8, 'Description', 0, '2019-04-16 03:30:27', '2019-04-16 03:30:27'),
(26, 592, 'Customer', 4, 4, 16, 'Description', 0, '2019-04-16 03:36:22', '2019-04-16 03:36:22'),
(27, 300, 'Customer', 250, 1, 250, 'Description', 0, '2019-04-22 06:04:55', '2019-04-22 06:04:55'),
(29, 39, 'Customer', 100, 1, 100, 'Description', 0, '2019-05-14 01:25:56', '2019-05-14 01:25:56'),
(30, 519, 'Customer', 100, 1, 100, 'Description', 0, '2019-05-22 08:04:12', '2019-05-22 08:04:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'RAHIB P. ABU HALIL', 'abohalilr@gmail.com', NULL, '$2y$10$W0bg9viK4mp/UMKV6sC3ku5.uFBnj6ZzbPJgnI40xZ24FKfDpgvcS', NULL, '2019-03-22 17:32:26', '2019-03-22 17:32:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=728;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `etrans`
--
CREATE DATABASE IF NOT EXISTS `etrans` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `etrans`;

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'one', 'one desc', '2019-02-05 23:17:17', '2019-01-27 17:06:15'),
(2, 'two', 'tow desc', '2019-01-27 22:13:13', '2019-01-28 02:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_20_024210_create_user_equipments_table', 1),
(4, '2019_02_21_024717_create_equipments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'RAHIB P. ABU HALIL', 'admin@rahib.com', NULL, '$2y$10$vKREad5b3aF3y7yYcs54/.JScAfX/XEaW9RNEgaHoGL8nbNMk.INm', '40wMe5Mpx3Bp8BcK8XfM0tDypiJ36J3yxrLhqpf2njUDry431xD0MhtIxNFP', '2019-02-20 18:52:52', '2019-02-20 18:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_equipments`
--

CREATE TABLE `user_equipments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `equipment_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_equipments`
--

INSERT INTO `user_equipments` (`id`, `user_id`, `equipment_id`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'functional', 'sadsadsadsadsadsadsadsad', '2019-02-05 23:17:17', '2019-02-07 19:08:00'),
(2, '1', '2', 'functional', 'sadadsadsadsadsadsadsadsa', '2019-01-27 22:13:13', '2019-01-28 02:25:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_equipments`
--
ALTER TABLE `user_equipments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_equipments`
--
ALTER TABLE `user_equipments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `etransmotion`
--
CREATE DATABASE IF NOT EXISTS `etransmotion` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `etransmotion`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `job_title`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'developerAdmin', 'abohalilr@gmail.com', NULL, 'Dev', '$2y$10$wMG50e9J8/dj5tI19ebIiuUnWz11smsWv/o8MDhMjDZU0BljfcQhy', 'yUIKeKeWYlvwKppUsjOycw50UBjWByz6bY1kgF6Ajx5eXA5JK8jpT7lU7Lka', '2019-01-24 17:27:56', '2019-01-24 17:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_01_24_074023_create_admins_table', 1),
(4, '2019_01_28_051558_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('user@rahib.com', '$2y$10$ADnXQs9kLRDG9fPnsqqOs.cAVMGvh56IcrWWflHYif1tbiBYMgUqO', '2019-01-24 23:28:25'),
('abohalilr@gmail.com', '$2y$10$74AAkCW5QF0lYgMvsXpPgen15gV6CsuLNdngBS4k/lVAG8UbwJf4W', '2019-01-27 17:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(2, 'title one', 'description one body content', '2019-01-21 22:15:16', '2019-01-22 23:23:00'),
(3, 'title two', 'description one body content', '2019-01-27 22:13:13', '2019-01-28 02:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User UI', 'user@rahib.com', NULL, '$2y$10$x9IxveEowxV.DJWvihal5ewiHVliyRtnCRCnqiH5jJClFvZHDl0lK', 'hGE2pCNO0o7JW2gs8cSLz5nrELglbUqsZA85qOqQoDGBtsF8uzzaHU2heNYO', '2019-01-24 00:13:19', '2019-02-08 21:01:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `final`
--
CREATE DATABASE IF NOT EXISTS `final` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `final`;

-- --------------------------------------------------------

--
-- Table structure for table `adoptors`
--

CREATE TABLE `adoptors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci,
  `region_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `scale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adoptors`
--

INSERT INTO `adoptors` (`id`, `name`, `slug`, `address`, `map`, `region_id`, `image`, `mobile`, `telephone`, `fax`, `about`, `facebook`, `twitter`, `instagram`, `website`, `email`, `status`, `scale`, `created_at`, `updated_at`) VALUES
(2, 'NUTRIDENSE FOOD MANUFACTURING CORPORATION', 'nutridense-food-manufacturing-corporation', 'Brgy. Malanay, Sta. Barbara, Pangasinan', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 4, 'nutridense-food-manufacturing-corporation-2019-09-05-5d70b2182ca35.jpg', '639176878611', '09495938992', '09495938992', '<h1 style=\"box-sizing: border-box; font-size: 36px; margin: 20px 0px 10px; font-family: \'Open Sans\', sans-serif; font-weight: 400; line-height: 1.4; color: #666666; background-color: #ffffff; text-align: center;\">NUTRIDENSE FOOD MANUFACTURING CORPORATION</h1>\r\n<h2 style=\"box-sizing: border-box; font-family: \'Open Sans\', sans-serif; font-weight: 400; line-height: 1.4; color: #666666; margin-top: 20px; margin-bottom: 10px; font-size: 30px; background-color: #ffffff; text-align: center;\"><a style=\"box-sizing: border-box; background-color: transparent; color: #111111; text-decoration-line: none; transition: all 0.125s ease-in-out 0s;\" href=\"http://www.nutridensefmc.com/\"><img class=\"size-medium wp-image-323 aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; clear: both; margin: 0px auto;\" src=\"http://www.nutridensefmc.com/wp-content/uploads/2018/09/NFMC-Logo-2018-resize-1-300x85.png\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://www.nutridensefmc.com/wp-content/uploads/2018/09/NFMC-Logo-2018-resize-1-300x85.png 300w, http://www.nutridensefmc.com/wp-content/uploads/2018/09/NFMC-Logo-2018-resize-1-416x118.png 416w, http://www.nutridensefmc.com/wp-content/uploads/2018/09/NFMC-Logo-2018-resize-1-768x218.png 768w, http://www.nutridensefmc.com/wp-content/uploads/2018/09/NFMC-Logo-2018-resize-1-1024x291.png 1024w\" alt=\"Nutridense Food Manufacturing Corporation logo\" width=\"300\" height=\"85\" /></a></h2>\r\n<div style=\"box-sizing: border-box; color: #666666; font-family: \'Open Sans\', sans-serif; font-size: 16px; background-color: #ffffff; text-align: center;\">\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px;\"><strong style=\"box-sizing: border-box;\">Nutridense Food Manufacturing Corporation (NFMC)</strong>&nbsp;is a leading manufacturer of research-based&nbsp;food products in the Philippines. The company inspired by its mission to help reduce malnutrition in the country was registered with the Philippines Stock Exchange Commission (SEC)&nbsp;on&nbsp;September 2014. Its office and plant&nbsp;is&nbsp;located at Brgy. Malanay, Sta. Barbara, Pangasinan</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px;\">NFMC offers food products for nutrition programs using technologies developed by the Food and Nutrition Research Institute &ndash; Department of Science and Technology (FNRI &ndash; DOST) and standards recommended by the Global Partners and Organizations.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px;\">NFMC is currently developing more products with other Research Institutions to serve more clients in our country. The company commits to join and support programs for healthy snacking and the reduction of malnutrition such as stunting, wasting, micronutrient deficiencies, obesity and the care for women at reproductive age (with other stakeholders) thus to elevate the nutritional status of Filipino families by the year 2020.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px;\">Behind Nutridense Food Manufacturing Corporation are all Filipino men and women united in common desire to bring quality and safe products to Filipino children and families.</p>\r\n</div>', 'facebook.com', 'twitter', 'isntagram.com', 'twitter.com', 'nutridensefmc@yahoo.com.ph', 1, 'medium', '2019-03-14 14:21:48', '2019-09-05 06:58:32'),
(3, 'Enrique Zobel Foundation', 'enrique-zobel-foundation', '5th Flr., ENZO Building, 399 Sen. Gil Puyat Avenue, Makati City, Metro Manila, Philippines', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.7343608353817!2d121.03130761483982!3d14.557177489830142!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c901e26692d5%3A0x7f236427b345ea66!2sEnrique+Zobel+Foundation%2C+Inc.+-+Makati+Head+Office!5e0!3m2!1sen!2sph!4v1552872639752\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 3, 'enrique-zobel-foundation-2019-03-18-5c8ef4e46e871.jpg', '09175777046', NULL, NULL, '<p style=\"margin: 0px 0px 10px; padding: 0px; line-height: 18px; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;\">The E. Zobel Foundation, Inc. is a non-stock, non-profit organization registered with the Securities and Exchange Commission in April 1990. Its founder, the late Don Enrique Zobel, firmly believed that &ldquo;through education there is hope for a better life&rdquo;.&nbsp;<br style=\"margin: 0px; padding: 0px;\" /><br style=\"margin: 0px; padding: 0px;\" />Sustaining our founder&rsquo;s sense of purpose, the Foundation has strived to uphold the quality of public education by focusing on five major program areas: school infrastructure development, teacher training, student health and nutrition, learning support, and other related special projects.</p>\r\n<h1 style=\"margin: 0px; padding: 0px 0px 10px; font-family: Arial, Helvetica, sans-serif; font-size: 20.4px; background-color: #ffffff;\">Vision</h1>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; line-height: 18px; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;\">The E. Zobel&nbsp; Foundation commits itself to contribute in the transformation process of the Filipino poor and other disadvantaged sector of society.</p>\r\n<h1 style=\"margin: 0px; padding: 0px 0px 10px; font-family: Arial, Helvetica, sans-serif; font-size: 20.4px; background-color: #ffffff;\">Mission</h1>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; line-height: 18px; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;\">- We are committed to help improve the quality of public education system;<br style=\"margin: 0px; padding: 0px;\" />- We are committed to provide the youth with the opportunity to experience hope that education brings.<br style=\"margin: 0px; padding: 0px;\" />- We are committed to promote the well-being of the people and transform them into healthy, self-sufficient and productive members of society.</p>', NULL, 'http://www.enriquezobelfoundation.org', NULL, NULL, 'info@enriquezobelfoundation.org', 1, 'small', '2019-03-17 09:31:16', '2019-08-29 01:09:00'),
(4, 'Seamaxx Enterprises', 'seamaxx-enterprises', '47 Dragon Street, Midtown Subdivision, San Roque, Marikina City', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7725.776559113009!2d121.05341194702815!3d14.491102332360022!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397cf13a156afc7%3A0x502dc16e7aacd237!2sFood+and+Nutrition+Research+Institute!5e0!3m2!1sen!2sph!4v1557112653873!5m2!1sen!2sph\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 13, 'seamaxx-enterprises-2019-05-06-5ccfc10976650.png', '09277998138', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:07:21', '2019-05-06 05:07:21'),
(5, 'LGU-Valenzuela City', 'lgu-valenzuela-city', 'City Hall MacArthur Highway, Karuhatan, Valenzuela', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 13, 'lgu-valenzuela-city-2019-05-06-5ccfc15f133ee.png', '0900000000', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:08:47', '2019-05-06 05:08:47'),
(6, 'Apayao State University', 'apayao-state-university', 'Luna, Apayao', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.7343608353817!2d121.03130761483982!3d14.557177489830142!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c901e26692d5%3A0x7f236427b345ea66!2sEnrique+Zobel+Foundation%2C+Inc.+-+Makati+Head+Office!5e0!3m2!1sen!2sph!4v1552872639752\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 14, 'apayao-state-university-2019-05-06-5ccfc2a3a6139.png', '09292604129', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:14:11', '2019-05-06 05:14:11'),
(7, 'Cagayan State University-Carig Campus', 'cagayan-state-university-carig-campus', 'Carig Sur, Tuguegarao City, Cagayan', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.7343608353817!2d121.03130761483982!3d14.557177489830142!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c901e26692d5%3A0x7f236427b345ea66!2sEnrique+Zobel+Foundation%2C+Inc.+-+Makati+Head+Office!5e0!3m2!1sen!2sph!4v1552872639752\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 3, 'cagayan-state-university-carig-campus-2019-05-06-5ccfc3071342b.png', '0788467241', '0788467241', NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:15:51', '2019-05-06 05:15:51'),
(8, 'LGU-San Mateo', 'lgu-san-mateo', 'Brgy. San Marcos, San Mateo Isabela', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.7343608353817!2d121.03130761483982!3d14.557177489830142!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c901e26692d5%3A0x7f236427b345ea66!2sEnrique+Zobel+Foundation%2C+Inc.+-+Makati+Head+Office!5e0!3m2!1sen!2sph!4v1552872639752\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 3, 'lgu-san-mateo-2019-05-06-5ccfc38f48be4.png', '09153988835', '0783230892', NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:18:07', '2019-05-06 05:18:07'),
(9, 'LGU-Guiguinto, Bulacan', 'lgu-guiguinto-bulacan', 'Guiguinto, Bulacan', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7725.776559113009!2d121.05341194702815!3d14.491102332360022!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397cf13a156afc7%3A0x502dc16e7aacd237!2sFood+and+Nutrition+Research+Institute!5e0!3m2!1sen!2sph!4v1557112653873!5m2!1sen!2sph\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 4, 'lgu-guiguinto-bulacan-2019-05-06-5ccfc3de96475.png', '09334923158', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'medium', '2019-05-06 05:19:26', '2019-05-06 05:19:26'),
(10, 'JND Manufacturing', 'jnd-manufacturing', 'Unif F Zuñiga, Building, Millex Road, Barangay Manggahan, Rodriguez, Rizal', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.7343608353817!2d121.03130761483982!3d14.557177489830142!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c901e26692d5%3A0x7f236427b345ea66!2sEnrique+Zobel+Foundation%2C+Inc.+-+Makati+Head+Office!5e0!3m2!1sen!2sph!4v1552872639752\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 5, 'jnd-manufacturing-2019-05-06-5ccfc458607d8.png', '09000000000', '027855544', NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:21:28', '2019-05-06 05:21:28'),
(11, 'Enrique Zobel Foundation, Inc.', 'enrique-zobel-foundation-inc', 'EZ Mart Compound, National Highway, Calatagan, Batangas', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 5, 'enrique-zobel-foundation-inc-2019-05-06-5ccfc4a15a1fd.png', '09175777044', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'medium', '2019-05-06 05:22:41', '2019-08-29 00:46:12'),
(12, 'LGU-Calauag Quezon', 'lgu-calauag-quezon', 'Calauag Quezon', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 5, 'lgu-calauag-quezon-2019-05-06-5ccfc4df086d9.png', '09255114308', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:23:43', '2019-05-06 05:23:43'),
(13, 'Provincial Government of Quezon', 'provincial-government-of-quezon', 'Quezon Food & Herbal Processing Center, Brgy. Talipan, Pagbilao, Quezon', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 5, 'provincial-government-of-quezon-2019-05-06-5ccfc512a960b.png', '09255114308', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:24:34', '2019-05-06 05:24:34'),
(14, 'LGU-Mulanay', 'lgu-mulanay', 'Egualidad Street, Poblacion 1, Mulanay, Quezon', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 5, 'lgu-mulanay-2019-05-06-5ccfc53f13a63.png', '09255114308', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'medium', '2019-05-06 05:25:19', '2019-05-06 05:25:19'),
(15, 'Atimonan Quezon Barangay Nutrition Scholars Association', 'atimonan-quezon-barangay-nutrition-scholars-association', 'Joemix Building, Barangay Zone 1, Atimonan Quezon', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 5, 'atimonan-quezon-barangay-nutrition-scholars-association-2019-05-06-5ccfc5782824d.png', '09255114308', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:26:16', '2019-05-06 05:26:16'),
(16, 'LGU-Bulalacao', 'lgu-bulalacao', 'Brgy. Poblacion, Bulalacao, Oriental Mindoro', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 15, 'lgu-bulalacao-2019-05-06-5ccfc5a6d88c9.png', '09192755981', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:27:03', '2019-05-06 05:27:03'),
(17, 'Barangay Nutrition Scholars Association, Odiongan', 'barangay-nutrition-scholars-association-odiongan', 'Liwayway, Odiongan, Romblon', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 15, 'barangay-nutrition-scholars-association-odiongan-2019-05-06-5ccfc5cdb4027.png', '09461485537', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:27:41', '2019-05-06 05:27:41'),
(18, 'Barangay Nutrition Scholars Association, San Jose', 'barangay-nutrition-scholars-association-san-jose', 'Acacia Park, Municipal Compound, San Jose, Occidental Mindoro', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 15, 'barangay-nutrition-scholars-association-san-jose-2019-05-06-5ccfc5fe46d84.png', '09189160902', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:28:30', '2019-05-06 05:28:30'),
(19, 'Social Action Commission', 'social-action-commission', 'Social Action Commission', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.7343608353817!2d121.03130761483982!3d14.557177489830142!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c901e26692d5%3A0x7f236427b345ea66!2sEnrique+Zobel+Foundation%2C+Inc.+-+Makati+Head+Office!5e0!3m2!1sen!2sph!4v1552872639752\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 15, 'social-action-commission-2019-05-06-5ccfc650e7331.png', '0900000000', '0423321513', NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:29:53', '2019-05-06 05:29:53'),
(20, 'LGU-Brooke\'s Point', 'lgu-brookes-point', 'Sitio Suring, Brgy. Pangobilian', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 15, 'lgu-brookes-point-2019-05-06-5ccfc6798931f.png', '09195975956', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:30:33', '2019-05-06 05:30:33'),
(21, 'LGU-San Lorenzo Ruiz', 'lgu-san-lorenzo-ruiz', 'Municipal Hall, San Lorenzo Ruiz, Camarines Norte', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.7343608353817!2d121.03130761483982!3d14.557177489830142!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c901e26692d5%3A0x7f236427b345ea66!2sEnrique+Zobel+Foundation%2C+Inc.+-+Makati+Head+Office!5e0!3m2!1sen!2sph!4v1552872639752\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 6, 'lgu-san-lorenzo-ruiz-2019-05-06-5ccfc6cf71b82.png', '09399305810', NULL, NULL, '<p>temporayry empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:31:59', '2019-05-06 05:31:59'),
(22, 'LGU-Iriga', 'lgu-iriga', 'New City Hall of Iriga City, Camarines Sur', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 6, 'lgu-iriga-2019-05-06-5ccfc6f7a7c54.png', '09399305810', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:32:39', '2019-05-06 05:32:39'),
(23, 'LGU-Aroroy', 'lgu-aroroy', 'Aroroy, Masbate', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7725.776559113009!2d121.05341194702815!3d14.491102332360022!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397cf13a156afc7%3A0x502dc16e7aacd237!2sFood+and+Nutrition+Research+Institute!5e0!3m2!1sen!2sph!4v1557112653873!5m2!1sen!2sph\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 6, 'lgu-aroroy-2019-05-06-5ccfc72a8f6a2.png', '09399305810', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'medium', '2019-05-06 05:33:30', '2019-05-06 05:33:30'),
(24, 'Central Bicol State University of Agriculture', 'central-bicol-state-university-of-agriculture', 'San Jose, Pili Camarines Sur', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 6, 'central-bicol-state-university-of-agriculture-2019-05-06-5ccfc758b6cd5.png', '09399305810', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:34:16', '2019-05-06 05:34:16'),
(25, 'LGU-Capiz', 'lgu-capiz', 'Huge St., Roxas City', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 7, 'lgu-capiz-2019-05-06-5ccfc7e31f0b3.png', '9162524647', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:36:35', '2019-05-06 05:36:35'),
(26, 'University of Antique', 'university-of-antique', 'Mayor Santiago A. Lotilla St., Sibalom, Antique', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 7, 'university-of-antique-2019-05-06-5ccfc81713a51.png', '09175758653', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:37:27', '2019-05-06 05:37:27'),
(27, 'LGU-Cabatuan, Iloilo', 'lgu-cabatuan-iloilo', 'Brgy. Tigbauan Road, Cabatuan, Iloilo', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7725.776559113009!2d121.05341194702815!3d14.491102332360022!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397cf13a156afc7%3A0x502dc16e7aacd237!2sFood+and+Nutrition+Research+Institute!5e0!3m2!1sen!2sph!4v1557112653873!5m2!1sen!2sph\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 7, 'lgu-cabatuan-iloilo-2019-05-06-5ccfc8ff48cfe.png', '09951954194', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:41:19', '2019-05-06 05:41:19'),
(28, 'Negrense Volunteer for Change Foundation, Inc.', 'negrense-volunteer-for-change-foundation-inc', 'Room 208, VSB Bldg., 6th Lacson St., Bacolod City', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 7, 'negrense-volunteer-for-change-foundation-inc-2019-05-06-5ccfc92d2754c.png', '09997731083', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:42:05', '2019-05-06 05:42:05'),
(29, 'LGU-Bayawan', 'lgu-bayawan', 'Poblacion, Bayawan City, Negros Oriental', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7725.776559113009!2d121.05341194702815!3d14.491102332360022!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397cf13a156afc7%3A0x502dc16e7aacd237!2sFood+and+Nutrition+Research+Institute!5e0!3m2!1sen!2sph!4v1557112653873!5m2!1sen!2sph\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 8, 'lgu-bayawan-2019-05-06-5ccfc9599bfc6.png', '09298836329', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 05:42:49', '2019-05-06 05:42:49'),
(30, 'LGU-Catarman', 'lgu-catarman', 'Municipal Building, Catarman, Northern Samar', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 9, 'lgu-catarman-2019-05-06-5ccfcd9e25cad.png', '09981925126', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 06:01:02', '2019-05-06 06:01:02'),
(31, 'LGU-Palo', 'lgu-palo', 'Brgy. Pawing, Palo, Leyte', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 9, 'lgu-palo-2019-05-06-5ccfcdce95f23.png', '09494291878', NULL, NULL, 'temporary empty', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 06:01:50', '2019-05-06 06:01:50'),
(32, 'LGU-Baybay', 'lgu-baybay', 'Baybay, Leyte', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 9, 'lgu-baybay-2019-05-06-5ccfcdfeaef6c.png', '09178084643', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 06:02:38', '2019-05-06 06:02:38'),
(33, 'LGU-Tungawan', 'lgu-tungawan', 'Poblacion Tungawan, Zamboanga Sibugay', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7725.776559113009!2d121.05341194702815!3d14.491102332360022!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397cf13a156afc7%3A0x502dc16e7aacd237!2sFood+and+Nutrition+Research+Institute!5e0!3m2!1sen!2sph!4v1557112653873!5m2!1sen!2sph\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 10, 'lgu-tungawan-2019-05-06-5ccfce2ca4cc3.png', '09187066762', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 06:03:24', '2019-05-06 06:03:24'),
(34, 'Xavier University', 'xavier-university', 'Cagayan de Oro City', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7725.776559113009!2d121.05341194702815!3d14.491102332360022!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397cf13a156afc7%3A0x502dc16e7aacd237!2sFood+and+Nutrition+Research+Institute!5e0!3m2!1sen!2sph!4v1557112653873!5m2!1sen!2sph\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 11, 'xavier-university-2019-05-06-5ccfce5216225.png', '09293596782', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 06:04:02', '2019-05-06 06:04:02'),
(35, 'Mindanao University of Science and Technology', 'mindanao-university-of-science-and-technology', 'Cagayan de Oro City', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.7343608353817!2d121.03130761483982!3d14.557177489830142!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c901e26692d5%3A0x7f236427b345ea66!2sEnrique+Zobel+Foundation%2C+Inc.+-+Makati+Head+Office!5e0!3m2!1sen!2sph!4v1552872639752\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 11, 'mindanao-university-of-science-and-technology-2019-05-06-5ccfce7db0206.png', '09103379399', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 06:04:45', '2019-05-06 06:04:45'),
(36, 'LGU-Ozamiz', 'lgu-ozamiz', 'Ozamiz City, Misamis Occidental', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 11, 'lgu-ozamiz-2019-05-06-5ccfceab7b8db.png', '09204836768', NULL, NULL, '<p>temporary emtpty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'medium', '2019-05-06 06:05:31', '2019-05-06 06:05:31'),
(37, 'Davao Del Norte State College', 'davao-del-norte-state-college', 'New Visayas, Panabo City, Davao Del Norte', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.7343608353817!2d121.03130761483982!3d14.557177489830142!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c901e26692d5%3A0x7f236427b345ea66!2sEnrique+Zobel+Foundation%2C+Inc.+-+Makati+Head+Office!5e0!3m2!1sen!2sph!4v1552872639752\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 11, 'davao-del-norte-state-college-2019-05-06-5ccfceddd822e.png', '09066318688', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'medium', '2019-05-06 06:06:22', '2019-05-06 06:06:22'),
(38, 'Sultan Kudarat State University, Regional Communal Food Processing Center', 'sultan-kudarat-state-university-regional-communal-food-processing-center', 'Access, EJC Montilla, Tacurong City', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.7343608353817!2d121.03130761483982!3d14.557177489830142!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c901e26692d5%3A0x7f236427b345ea66!2sEnrique+Zobel+Foundation%2C+Inc.+-+Makati+Head+Office!5e0!3m2!1sen!2sph!4v1552872639752\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 17, 'sultan-kudarat-state-university-regional-communal-food-processing-center-2019-05-06-5ccfcf5f90c80.png', '9999999996', '0642013175', NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'medium', '2019-05-06 06:08:31', '2019-05-06 06:08:31'),
(39, 'LGU-Kidapawan', 'lgu-kidapawan', 'Kidapawan City, North Cotabato', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 17, 'lgu-kidapawan-2019-05-06-5ccfcf966b5c9.png', '09228190918', NULL, NULL, 'temporary empty', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'medium', '2019-05-06 06:09:26', '2019-05-06 06:09:26'),
(40, 'LGU-Guigaquit', 'lgu-guigaquit', 'Guigaquit, Surigao de Norte', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7725.776559113009!2d121.05341194702815!3d14.491102332360022!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397cf13a156afc7%3A0x502dc16e7aacd237!2sFood+and+Nutrition+Research+Institute!5e0!3m2!1sen!2sph!4v1557112653873!5m2!1sen!2sph\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 17, 'lgu-guigaquit-2019-05-06-5ccfcfc3c1852.png', '09351388605', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-06 06:10:12', '2019-05-06 06:10:12'),
(41, 'Mamagayon People\'s Organization', 'mamagayon-peoples-organization', 'Brgy. Manungkaling, Mamasapano, Maguindanao', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7725.776559113009!2d121.05341194702815!3d14.491102332360022!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397cf13a156afc7%3A0x502dc16e7aacd237!2sFood+and+Nutrition+Research+Institute!5e0!3m2!1sen!2sph!4v1557112653873!5m2!1sen!2sph\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 12, 'mamagayon-peoples-organization-2019-05-06-5ccfcfee74a00.png', '09328438989', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'medium', '2019-05-06 06:10:54', '2019-05-06 06:10:54'),
(42, 'Food and Nutrition Research Institute', 'food-and-nutrition-research-institute', 'Dost Compound General Santos Ave, Taguig, 1630 Metro Manila', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 13, 'food-and-nutrition-research-institute-2019-09-05-5d70b12e05a38.png', '000000000000', NULL, NULL, '<p><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 16px; text-align: justify; background-color: #f2f2f2;\">he Department of Science and Technology-Food and Nutrition Research Institute (DOST-FNRI) stood proud in this year&rsquo;s gathering of the country&rsquo;s best and brightest scientific minds as the PDRI 2015: Philippine Dietary Reference Intakes bagged the 2019 Outstanding Book Award given by the National Academy of Science and Technology, Philippines (NAST PHL). NAST PHL conferred the award on the second day of the 41st Annual Scientific Meeting (ASM), July 11, 2019, at the EDSA Shangri-La Hotel in Ortigas, Mandaluyong City, in the presence of National Scientists, Academicians, several up-and-coming scientists, and top science administrators and movers in the country.</span></p>', NULL, NULL, NULL, 'www.fnri.dost.gov.ph', 'mas@fnri.dost.gov.p', 1, 'large', '2019-09-05 06:32:58', '2019-09-05 06:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `adoptor_equipment`
--

CREATE TABLE `adoptor_equipment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adoptor_id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `problem` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adoptor_equipment`
--

INSERT INTO `adoptor_equipment` (`id`, `adoptor_id`, `equipment_id`, `problem`, `status`, `created_at`, `updated_at`) VALUES
(12, 4, 12, NULL, 1, '2019-05-06 05:07:21', '2019-05-06 05:07:21'),
(13, 5, 15, NULL, 1, '2019-05-06 05:08:47', '2019-05-06 05:08:47'),
(14, 6, 13, NULL, 1, '2019-05-06 05:14:11', '2019-05-06 05:14:11'),
(15, 7, 12, NULL, 1, '2019-05-06 05:15:51', '2019-05-06 05:15:51'),
(16, 8, 12, NULL, 1, '2019-05-06 05:18:07', '2019-05-06 05:18:07'),
(17, 9, 13, NULL, 1, '2019-05-06 05:19:26', '2019-05-06 05:19:26'),
(18, 10, 13, NULL, 1, '2019-05-06 05:21:28', '2019-05-06 05:21:28'),
(19, 11, 12, NULL, 1, '2019-05-06 05:22:41', '2019-05-06 05:22:41'),
(20, 12, 16, NULL, 1, '2019-05-06 05:23:43', '2019-05-06 05:23:43'),
(21, 13, 13, NULL, 1, '2019-05-06 05:24:34', '2019-05-06 05:24:34'),
(22, 14, 13, NULL, 1, '2019-05-06 05:25:19', '2019-05-06 05:25:19'),
(23, 15, 12, NULL, 1, '2019-05-06 05:26:16', '2019-05-06 05:26:16'),
(24, 16, 12, NULL, 1, '2019-05-06 05:27:03', '2019-05-06 05:27:03'),
(25, 17, 12, NULL, 1, '2019-05-06 05:27:41', '2019-05-06 05:27:41'),
(26, 18, 12, NULL, 1, '2019-05-06 05:28:30', '2019-05-06 05:28:30'),
(27, 19, 12, NULL, 1, '2019-05-06 05:29:53', '2019-05-06 05:29:53'),
(28, 20, 17, NULL, 1, '2019-05-06 05:30:33', '2019-05-06 05:30:33'),
(29, 21, 12, NULL, 1, '2019-05-06 05:31:59', '2019-05-06 05:31:59'),
(30, 22, 16, NULL, 1, '2019-05-06 05:32:39', '2019-05-06 05:32:39'),
(31, 23, 13, NULL, 1, '2019-05-06 05:33:30', '2019-05-06 05:33:30'),
(32, 24, 16, NULL, 1, '2019-05-06 05:34:16', '2019-05-06 05:34:16'),
(33, 25, 13, NULL, 1, '2019-05-06 05:36:35', '2019-05-06 05:36:35'),
(34, 26, 12, NULL, 1, '2019-05-06 05:37:27', '2019-05-06 05:37:27'),
(35, 27, 12, NULL, 1, '2019-05-06 05:41:19', '2019-05-06 05:41:19'),
(36, 28, 13, NULL, 1, '2019-05-06 05:42:05', '2019-05-06 05:42:05'),
(37, 29, 12, NULL, 1, '2019-05-06 05:42:49', '2019-05-06 05:42:49'),
(38, 30, 12, NULL, 1, '2019-05-06 06:01:02', '2019-05-06 06:01:02'),
(39, 31, 12, NULL, 1, '2019-05-06 06:01:50', '2019-05-06 06:01:50'),
(40, 32, 12, NULL, 1, '2019-05-06 06:02:38', '2019-05-06 06:02:38'),
(41, 33, 12, NULL, 1, '2019-05-06 06:03:24', '2019-05-06 06:03:24'),
(42, 34, 12, NULL, 1, '2019-05-06 06:04:02', '2019-05-06 06:04:02'),
(43, 35, 12, NULL, 1, '2019-05-06 06:04:45', '2019-05-06 06:04:45'),
(44, 36, 13, NULL, 1, '2019-05-06 06:05:31', '2019-05-06 06:05:31'),
(45, 37, 12, NULL, 1, '2019-05-06 06:06:22', '2019-05-06 06:06:22'),
(46, 38, 12, NULL, 1, '2019-05-06 06:08:31', '2019-05-06 06:08:31'),
(47, 39, 16, NULL, 1, '2019-05-06 06:09:26', '2019-05-06 06:09:26'),
(48, 40, 16, NULL, 1, '2019-05-06 06:10:12', '2019-05-06 06:10:12'),
(49, 41, 12, NULL, 1, '2019-05-06 06:10:54', '2019-05-06 06:10:54'),
(50, 2, 13, NULL, 1, '2019-05-07 01:20:23', '2019-05-07 01:20:23'),
(54, 3, 12, NULL, 1, '2019-05-08 04:50:50', '2019-05-08 04:50:50'),
(55, 3, 14, NULL, 1, '2019-05-08 04:50:50', '2019-05-08 04:50:50'),
(56, 3, 15, NULL, 1, '2019-05-08 04:50:50', '2019-05-08 04:50:50'),
(57, 3, 21, '\r\n<!-- Modal -->\r\n<div class=\"modal fade\" id=\"exampleModalCenter\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalCenterTitle\" aria-hidden=\"true\">\r\n  <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\r\n    <div class=\"modal-content\">\r\n      <div class=\"modal-header\">\r\n        <h5 class=\"modal-title\" id=\"exampleModalLongTitle\">Modal title</h5>\r\n        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n          <span aria-hidden=\"true\">&times;</span>\r\n        </button>\r\n      </div>\r\n      <div class=\"modal-body\">\r\n        ...\r\n      </div>\r\n      <div class=\"modal-footer\">\r\n        <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>\r\n        <button type=\"button\" class=\"btn btn-primary\">Save changes</button>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>', 0, '2019-05-08 04:50:50', '2019-05-08 04:50:50'),
(58, 2, 14, NULL, 1, '2019-05-29 06:18:56', '2019-05-29 06:18:56'),
(59, 2, 15, 'sadsadsa', 1, '2019-05-29 06:18:56', '2019-05-29 06:18:56'),
(60, 42, 12, NULL, 1, '2019-09-05 06:32:58', '2019-09-05 06:32:58'),
(61, 42, 13, NULL, 1, '2019-09-05 06:32:58', '2019-09-05 06:32:58'),
(62, 42, 14, NULL, 1, '2019-09-05 06:32:58', '2019-09-05 06:32:58'),
(63, 42, 15, NULL, 1, '2019-09-05 06:32:58', '2019-09-05 06:32:58'),
(64, 42, 16, NULL, 1, '2019-09-05 06:32:58', '2019-09-05 06:32:58'),
(65, 42, 17, NULL, 1, '2019-09-05 06:32:58', '2019-09-05 06:32:58');

-- --------------------------------------------------------

--
-- Table structure for table `adoptor_product`
--

CREATE TABLE `adoptor_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adoptor_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adoptor_product`
--

INSERT INTO `adoptor_product` (`id`, `adoptor_id`, `product_id`, `note`, `status`, `created_at`, `updated_at`) VALUES
(5, 4, 10, NULL, 1, '2019-05-06 05:07:21', '2019-05-06 05:07:21'),
(6, 5, 10, NULL, 1, '2019-05-06 05:08:47', '2019-05-06 05:08:47'),
(7, 6, 11, NULL, 1, '2019-05-06 05:14:11', '2019-05-06 05:14:11'),
(8, 7, 10, NULL, 1, '2019-05-06 05:15:51', '2019-05-06 05:15:51'),
(9, 8, 10, NULL, 1, '2019-05-06 05:18:07', '2019-05-06 05:18:07'),
(10, 9, 13, NULL, 1, '2019-05-06 05:19:26', '2019-05-06 05:19:26'),
(11, 10, 14, NULL, 1, '2019-05-06 05:21:28', '2019-05-06 05:21:28'),
(13, 12, 10, NULL, 1, '2019-05-06 05:23:43', '2019-05-06 05:23:43'),
(14, 13, 10, NULL, 1, '2019-05-06 05:24:34', '2019-05-06 05:24:34'),
(15, 14, 15, NULL, 1, '2019-05-06 05:25:19', '2019-05-06 05:25:19'),
(16, 15, 10, NULL, 1, '2019-05-06 05:26:16', '2019-05-06 05:26:16'),
(17, 16, 10, NULL, 1, '2019-05-06 05:27:03', '2019-05-06 05:27:03'),
(18, 17, 14, NULL, 1, '2019-05-06 05:27:41', '2019-05-06 05:27:41'),
(19, 18, 15, NULL, 1, '2019-05-06 05:28:30', '2019-05-06 05:28:30'),
(20, 19, 11, NULL, 1, '2019-05-06 05:29:53', '2019-05-06 05:29:53'),
(21, 20, 10, NULL, 1, '2019-05-06 05:30:33', '2019-05-06 05:30:33'),
(22, 21, 10, NULL, 1, '2019-05-06 05:31:59', '2019-05-06 05:31:59'),
(23, 22, 14, NULL, 1, '2019-05-06 05:32:39', '2019-05-06 05:32:39'),
(24, 23, 10, NULL, 1, '2019-05-06 05:33:30', '2019-05-06 05:33:30'),
(25, 24, 14, NULL, 1, '2019-05-06 05:34:17', '2019-05-06 05:34:17'),
(26, 25, 10, NULL, 1, '2019-05-06 05:36:35', '2019-05-06 05:36:35'),
(27, 26, 10, NULL, 1, '2019-05-06 05:37:27', '2019-05-06 05:37:27'),
(28, 27, 10, NULL, 1, '2019-05-06 05:41:19', '2019-05-06 05:41:19'),
(29, 28, 24, NULL, 1, '2019-05-06 05:42:05', '2019-05-06 05:42:05'),
(30, 29, 10, NULL, 1, '2019-05-06 05:42:49', '2019-05-06 05:42:49'),
(31, 30, 10, NULL, 1, '2019-05-06 06:01:02', '2019-05-06 06:01:02'),
(32, 31, 11, NULL, 1, '2019-05-06 06:01:50', '2019-05-06 06:01:50'),
(33, 32, 11, NULL, 1, '2019-05-06 06:02:38', '2019-05-06 06:02:38'),
(34, 33, 11, NULL, 1, '2019-05-06 06:03:24', '2019-05-06 06:03:24'),
(35, 34, 14, NULL, 1, '2019-05-06 06:04:02', '2019-05-06 06:04:02'),
(36, 35, 16, NULL, 1, '2019-05-06 06:04:45', '2019-05-06 06:04:45'),
(37, 36, 12, NULL, 1, '2019-05-06 06:05:31', '2019-05-06 06:05:31'),
(38, 37, 10, NULL, 1, '2019-05-06 06:06:22', '2019-05-06 06:06:22'),
(39, 38, 10, NULL, 1, '2019-05-06 06:08:31', '2019-05-06 06:08:31'),
(40, 39, 10, NULL, 1, '2019-05-06 06:09:26', '2019-05-06 06:09:26'),
(41, 40, 11, NULL, 1, '2019-05-06 06:10:12', '2019-05-06 06:10:12'),
(42, 41, 10, NULL, 1, '2019-05-06 06:10:54', '2019-05-06 06:10:54'),
(51, 2, 14, NULL, 1, '2019-05-29 06:18:56', '2019-05-29 06:18:56'),
(54, 3, 14, NULL, 1, '2019-05-29 08:30:50', '2019-05-29 08:30:50'),
(55, 3, 15, NULL, 1, '2019-05-29 08:30:50', '2019-05-29 08:30:50'),
(56, 2, 15, 'dsdsad', 1, '2019-08-29 00:45:47', '2019-08-29 00:45:47'),
(57, 2, 16, NULL, 1, '2019-08-29 00:45:47', '2019-08-29 00:45:47'),
(58, 2, 17, NULL, 1, '2019-08-29 00:45:47', '2019-08-29 00:45:47'),
(59, 11, 14, NULL, 1, '2019-08-29 00:46:12', '2019-08-29 00:46:12'),
(60, 11, 15, NULL, 1, '2019-08-29 00:46:12', '2019-08-29 00:46:12'),
(61, 11, 16, NULL, 1, '2019-08-29 00:46:12', '2019-08-29 00:46:12'),
(62, 3, 16, NULL, 1, '2019-08-29 01:09:00', '2019-08-29 01:09:00'),
(63, 3, 17, NULL, 1, '2019-08-29 01:09:00', '2019-08-29 01:09:00'),
(64, 42, 14, NULL, 1, '2019-09-05 06:32:58', '2019-09-05 06:32:58'),
(65, 42, 15, NULL, 1, '2019-09-05 06:32:58', '2019-09-05 06:32:58'),
(66, 42, 16, NULL, 1, '2019-09-05 06:32:58', '2019-09-05 06:32:58'),
(67, 42, 17, NULL, 1, '2019-09-05 06:32:58', '2019-09-05 06:32:58');

-- --------------------------------------------------------

--
-- Table structure for table `adoptor_products`
--

CREATE TABLE `adoptor_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adoptor_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `grams` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `originalPrice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `markUpRate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `markUpPrice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finalPrice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adoptor_products`
--

INSERT INTO `adoptor_products` (`id`, `adoptor_id`, `product_id`, `name`, `image`, `description`, `grams`, `originalPrice`, `markUpRate`, `markUpPrice`, `finalPrice`, `status`, `created_at`, `updated_at`) VALUES
(10, 2, 14, 'Rice', 'rice-2019-08-13-5d526939741fb.png', 'Description here', '324', '10', '1', '10', '8', NULL, '2019-08-13 07:37:02', '2019-08-23 00:36:52'),
(11, 2, 15, 'RIMO', 'rimo-2019-08-20-5d5b5a8c3a39e.png', 'Description here', '32', '7', '77', '539', '8', NULL, '2019-08-20 02:27:24', '2019-08-29 00:46:39'),
(12, 3, 15, 'sample Prod', 'sample-prod-2019-08-28-5d663c6a620e1.png', 'Description here', '324', '7', '1.5', '11', '8', NULL, '2019-08-28 08:33:46', '2019-08-28 08:33:46'),
(13, 2, 16, 'product3', 'product3-2019-08-29-5d6720a9217a2.png', 'Description here', '324', '7', '1.5', '11', '8', NULL, '2019-08-29 00:47:37', '2019-08-29 00:47:37'),
(14, 2, 17, 'product4', 'product4-2019-08-29-5d6720b9e9da9.png', 'Description here', '324', '7', '1.5', '11', '8', NULL, '2019-08-29 00:47:54', '2019-08-29 00:47:54'),
(15, 3, 16, 'produc5', 'produc5-2019-08-29-5d67232eb08e7.png', 'Description here', '2', '7', '11', '77', '8', NULL, '2019-08-29 00:58:22', '2019-08-29 01:09:20'),
(16, 3, 14, 'rice mongo', 'rice-mongo-2019-08-29-5d6725da705fc.png', 'Description here', '324', '7', '1.5', '11', '10', NULL, '2019-08-29 01:09:46', '2019-08-29 01:09:46'),
(17, 3, 17, 'prod4', 'prod4-2019-08-29-5d6725ed6a9e6.jpg', 'Description here', '324', '7', '1.5', '11', '8', NULL, '2019-08-29 01:10:05', '2019-08-29 01:10:05');

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci,
  `new_values` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(301, NULL, NULL, 'created', 'App\\Inquiry', 1, '[]', '{\"user_id\":\"1\",\"name\":\"RAHIB P. ABU HALIL\",\"email\":\"abohalilr@gmail.com\",\"subject\":\"ddsadsa\",\"message\":\"dsadsa\",\"id\":1}', 'http://127.0.0.1:8000/mail/inquery', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-23 06:00:56', '2019-08-23 06:00:56'),
(302, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"remember_token\":\"nkhTIg7GwNDVV2BCKNDxBvz10cunCv88LetLboZzLi4mtfA9w7BFP3h8Mpyd\"}', '{\"remember_token\":\"UdCNRp8YeLimCbeVE1MUnTYHFjI2rAZkoND8BI0zZutPB5p3ClwBPCSizjl9\"}', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 00:40:51', '2019-08-27 00:40:51'),
(303, 'App\\User', 2, 'created', 'App\\Sale', 3, '[]', '{\"adoptor_id\":2,\"production_id\":\"8\",\"description\":\"dsa\",\"quantity\":\"2\",\"total\":14,\"status\":\"1\",\"client_id\":\"1\",\"id\":3}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 01:29:31', '2019-08-27 01:29:31'),
(304, 'App\\User', 2, 'created', 'App\\Sale', 4, '[]', '{\"adoptor_id\":2,\"production_id\":\"9\",\"description\":\"sda\",\"quantity\":\"4\",\"total\":40,\"status\":\"1\",\"client_id\":\"1\",\"id\":4}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 01:29:54', '2019-08-27 01:29:54'),
(305, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"remember_token\":\"UdCNRp8YeLimCbeVE1MUnTYHFjI2rAZkoND8BI0zZutPB5p3ClwBPCSizjl9\"}', '{\"remember_token\":\"DpxvLsfnMtgxuNWGTdQkPsx1bl56vTFDMeJoXf0G1qecPnUbJ6Br1WP0V93t\"}', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-27 01:30:43', '2019-08-27 01:30:43'),
(306, 'App\\User', 2, 'created', 'App\\Sale', 5, '[]', '{\"adoptor_id\":2,\"production_id\":\"6\",\"description\":null,\"quantity\":\"3\",\"total\":30,\"status\":\"1\",\"client_id\":\"1\",\"id\":5}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 00:54:48', '2019-08-28 00:54:48'),
(307, 'App\\User', 2, 'created', 'App\\Sale', 6, '[]', '{\"adoptor_id\":2,\"production_id\":\"6\",\"description\":\"3\",\"quantity\":\"43\",\"total\":430,\"status\":\"1\",\"client_id\":\"1\",\"id\":6}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 00:54:57', '2019-08-28 00:54:57'),
(308, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"remember_token\":\"DpxvLsfnMtgxuNWGTdQkPsx1bl56vTFDMeJoXf0G1qecPnUbJ6Br1WP0V93t\"}', '{\"remember_token\":\"rGslr3S7IZBcBPBPqOYxzj93KJfRxIDlMhnV5UNl7sL4lf6QGodBcRwPvJpA\"}', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 02:05:31', '2019-08-28 02:05:31'),
(309, 'App\\User', 2, 'created', 'App\\Sale', 1, '[]', '{\"adoptor_id\":2,\"production_id\":\"6\",\"product_id\":10,\"description\":null,\"quantity\":\"4\",\"total\":40,\"status\":\"1\",\"client_id\":\"1\",\"id\":1}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 02:55:24', '2019-08-28 02:55:24'),
(310, 'App\\User', 2, 'updated', 'App\\Sale', 1, '{\"product_id\":10}', '{\"product_id\":14}', 'http://127.0.0.1:8000/user/sale/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 02:56:15', '2019-08-28 02:56:15'),
(311, 'App\\User', 2, 'created', 'App\\Sale', 2, '[]', '{\"adoptor_id\":2,\"production_id\":\"6\",\"product_id\":14,\"description\":null,\"quantity\":\"4\",\"total\":40,\"status\":\"1\",\"client_id\":\"1\",\"id\":2}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 06:03:02', '2019-08-28 06:03:02'),
(312, 'App\\User', 2, 'created', 'App\\Sale', 3, '[]', '{\"adoptor_id\":2,\"production_id\":\"7\",\"product_id\":14,\"description\":null,\"quantity\":\"3\",\"total\":21,\"status\":\"1\",\"client_id\":\"1\",\"id\":3}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 06:03:18', '2019-08-28 06:03:18'),
(313, 'App\\User', 2, 'created', 'App\\Sale', 4, '[]', '{\"adoptor_id\":2,\"production_id\":\"7\",\"product_id\":14,\"description\":null,\"quantity\":\"3\",\"total\":21,\"status\":\"1\",\"client_id\":\"1\",\"id\":4}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 06:03:24', '2019-08-28 06:03:24'),
(314, 'App\\User', 2, 'created', 'App\\Sale', 5, '[]', '{\"adoptor_id\":2,\"production_id\":\"7\",\"product_id\":14,\"description\":null,\"quantity\":\"3\",\"total\":21,\"status\":\"1\",\"client_id\":\"1\",\"id\":5}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 06:03:31', '2019-08-28 06:03:31'),
(315, 'App\\User', 2, 'created', 'App\\Sale', 6, '[]', '{\"adoptor_id\":2,\"production_id\":\"6\",\"product_id\":14,\"description\":null,\"quantity\":\"3\",\"total\":30,\"status\":\"1\",\"client_id\":\"1\",\"id\":6}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 06:03:37', '2019-08-28 06:03:37'),
(316, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"remember_token\":\"rGslr3S7IZBcBPBPqOYxzj93KJfRxIDlMhnV5UNl7sL4lf6QGodBcRwPvJpA\"}', '{\"remember_token\":\"jbXL0735Q6JpKI4isSGWT2GWRQ9Togc0BNkpPSvY0D8v7UchaxLdTNCCz8Xs\"}', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 06:17:28', '2019-08-28 06:17:28'),
(317, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"remember_token\":\"jbXL0735Q6JpKI4isSGWT2GWRQ9Togc0BNkpPSvY0D8v7UchaxLdTNCCz8Xs\"}', '{\"remember_token\":\"ZLwTdp7IlWcM0Ax0VmCyxJsBt5Dsfsjutv0XGpA6LilETrT6rcsTczNC6NgO\"}', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 08:33:09', '2019-08-28 08:33:09'),
(318, 'App\\User', 3, 'created', 'App\\RawMaterial', 3, '[]', '{\"adoptor_id\":3,\"name\":\"oil\",\"extension\":\"kg\",\"note\":\"N\\/A\",\"quantity\":\"10\",\"id\":3}', 'http://127.0.0.1:8000/user/rawMaterial', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 08:35:33', '2019-08-28 08:35:33'),
(319, 'App\\User', 3, 'created', 'App\\RawMaterial', 4, '[]', '{\"adoptor_id\":3,\"name\":\"sugar\",\"extension\":\"kg\",\"note\":\"N\\/A\",\"quantity\":\"533\",\"id\":4}', 'http://127.0.0.1:8000/user/rawMaterial', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 08:35:44', '2019-08-28 08:35:44'),
(320, 'App\\User', 3, 'updated', 'App\\RawMaterial', 3, '{\"quantity\":10}', '{\"quantity\":8}', 'http://127.0.0.1:8000/user/RawMaterialUsed', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 08:35:56', '2019-08-28 08:35:56'),
(321, 'App\\User', 3, 'updated', 'App\\RawMaterial', 4, '{\"quantity\":533}', '{\"quantity\":531}', 'http://127.0.0.1:8000/user/RawMaterialUsed', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2019-08-28 08:36:01', '2019-08-28 08:36:01'),
(322, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"remember_token\":\"ZLwTdp7IlWcM0Ax0VmCyxJsBt5Dsfsjutv0XGpA6LilETrT6rcsTczNC6NgO\"}', '{\"remember_token\":\"wchoVgMmUA6GloKbSAWyPBJjbV9DPSmvHIr33SsykZTl2eJI5QpnTkHfwCPr\"}', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:34:15', '2019-08-29 00:34:15'),
(323, 'App\\User', 3, 'updated', 'App\\RawMaterial', 3, '{\"quantity\":8}', '{\"quantity\":4}', 'http://127.0.0.1:8000/user/RawMaterialUsed', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:35:07', '2019-08-29 00:35:07'),
(324, 'App\\User', 3, 'updated', 'App\\RawMaterial', 4, '{\"quantity\":531}', '{\"quantity\":527}', 'http://127.0.0.1:8000/user/RawMaterialUsed', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:35:12', '2019-08-29 00:35:12'),
(325, 'App\\User', 3, 'created', 'App\\Sale', 7, '[]', '{\"adoptor_id\":3,\"production_id\":\"10\",\"product_id\":15,\"description\":\"43\",\"quantity\":\"4\",\"total\":28,\"status\":\"1\",\"client_id\":\"2\",\"id\":7}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:38:15', '2019-08-29 00:38:15'),
(326, 'App\\User', 3, 'created', 'App\\Sale', 8, '[]', '{\"adoptor_id\":3,\"production_id\":\"10\",\"product_id\":15,\"description\":\"sad\",\"quantity\":\"5\",\"total\":35,\"status\":\"0\",\"client_id\":\"2\",\"id\":8}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:38:28', '2019-08-29 00:38:28'),
(327, 'App\\User', 3, 'created', 'App\\Sale', 9, '[]', '{\"adoptor_id\":3,\"production_id\":\"10\",\"product_id\":15,\"description\":null,\"quantity\":\"4\",\"total\":28,\"status\":\"1\",\"client_id\":\"2\",\"id\":9}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:40:39', '2019-08-29 00:40:39'),
(328, 'App\\User', 3, 'created', 'App\\Sale', 10, '[]', '{\"adoptor_id\":3,\"production_id\":\"10\",\"product_id\":15,\"description\":\"4\",\"quantity\":\"4\",\"total\":28,\"status\":\"1\",\"client_id\":\"2\",\"id\":10}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:40:46', '2019-08-29 00:40:46'),
(329, 'App\\User', 3, 'created', 'App\\Sale', 11, '[]', '{\"adoptor_id\":3,\"production_id\":\"10\",\"product_id\":15,\"description\":null,\"quantity\":\"5\",\"total\":35,\"status\":\"1\",\"client_id\":\"2\",\"id\":11}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:40:52', '2019-08-29 00:40:52'),
(330, 'App\\User', 3, 'created', 'App\\Sale', 12, '[]', '{\"adoptor_id\":3,\"production_id\":\"10\",\"product_id\":15,\"description\":null,\"quantity\":\"4\",\"total\":28,\"status\":\"1\",\"client_id\":\"2\",\"id\":12}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:40:58', '2019-08-29 00:40:58'),
(331, 'App\\User', 3, 'created', 'App\\Sale', 13, '[]', '{\"adoptor_id\":3,\"production_id\":\"10\",\"product_id\":15,\"description\":null,\"quantity\":\"5\",\"total\":35,\"status\":\"1\",\"client_id\":\"2\",\"id\":13}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:41:04', '2019-08-29 00:41:04'),
(332, 'App\\User', 3, 'created', 'App\\Sale', 14, '[]', '{\"adoptor_id\":3,\"production_id\":\"10\",\"product_id\":15,\"description\":null,\"quantity\":\"3\",\"total\":21,\"status\":\"1\",\"client_id\":\"2\",\"id\":14}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:41:11', '2019-08-29 00:41:11'),
(333, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"remember_token\":\"wchoVgMmUA6GloKbSAWyPBJjbV9DPSmvHIr33SsykZTl2eJI5QpnTkHfwCPr\"}', '{\"remember_token\":\"PJxaeWR663GUPuc0vBFidju1l13K5dQNd7eMhjrIbXR7L2QsuvO2ap1fUWzG\"}', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:43:50', '2019-08-29 00:43:50'),
(334, 'App\\User', 1, 'updated', 'App\\Adoptor', 2, '{\"twitter\":\"twitter.com\",\"website\":\"twitter\",\"status\":1}', '{\"twitter\":\"twitter\",\"website\":\"twitter.com\",\"status\":true}', 'http://127.0.0.1:8000/admin/adoptor/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:45:47', '2019-08-29 00:45:47'),
(335, 'App\\User', 1, 'updated', 'App\\Adoptor', 11, '{\"status\":1}', '{\"status\":true}', 'http://127.0.0.1:8000/admin/adoptor/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:46:12', '2019-08-29 00:46:12'),
(336, 'App\\User', 2, 'updated', 'App\\RawMaterial', 2, '{\"quantity\":10}', '{\"quantity\":8}', 'http://127.0.0.1:8000/user/RawMaterialUsed', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:48:29', '2019-08-29 00:48:29'),
(337, 'App\\User', 2, 'updated', 'App\\RawMaterial', 2, '{\"quantity\":8}', '{\"quantity\":6}', 'http://127.0.0.1:8000/user/RawMaterialUsed', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:48:36', '2019-08-29 00:48:36'),
(338, 'App\\User', 2, 'created', 'App\\Sale', 15, '[]', '{\"adoptor_id\":2,\"production_id\":\"11\",\"product_id\":16,\"description\":null,\"quantity\":\"23\",\"total\":161,\"status\":\"1\",\"client_id\":\"1\",\"id\":15}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:48:56', '2019-08-29 00:48:56'),
(339, 'App\\User', 2, 'created', 'App\\Sale', 16, '[]', '{\"adoptor_id\":2,\"production_id\":\"12\",\"product_id\":17,\"description\":null,\"quantity\":\"3\",\"total\":21,\"status\":\"1\",\"client_id\":\"1\",\"id\":16}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:49:03', '2019-08-29 00:49:03'),
(340, 'App\\User', 2, 'created', 'App\\Sale', 17, '[]', '{\"adoptor_id\":2,\"production_id\":\"12\",\"product_id\":17,\"description\":null,\"quantity\":\"3\",\"total\":21,\"status\":\"1\",\"client_id\":\"1\",\"id\":17}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:49:03', '2019-08-29 00:49:03'),
(341, 'App\\User', 2, 'created', 'App\\Sale', 18, '[]', '{\"adoptor_id\":2,\"production_id\":\"11\",\"product_id\":16,\"description\":null,\"quantity\":\"23\",\"total\":161,\"status\":\"0\",\"client_id\":\"1\",\"id\":18}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:49:13', '2019-08-29 00:49:13'),
(342, 'App\\User', 2, 'created', 'App\\Sale', 19, '[]', '{\"adoptor_id\":2,\"production_id\":\"12\",\"product_id\":17,\"description\":null,\"quantity\":\"23\",\"total\":161,\"status\":\"1\",\"client_id\":\"1\",\"id\":19}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:49:22', '2019-08-29 00:49:22'),
(343, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"remember_token\":\"PJxaeWR663GUPuc0vBFidju1l13K5dQNd7eMhjrIbXR7L2QsuvO2ap1fUWzG\"}', '{\"remember_token\":\"LPqxh73nLMPZ9d5pb4wKGFDYgz8fN18Wzx4lJmC9evAEJfsWrPlE5qOGWNay\"}', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:49:26', '2019-08-29 00:49:26'),
(344, 'App\\User', 3, 'updated', 'App\\RawMaterial', 4, '{\"quantity\":527}', '{\"quantity\":493}', 'http://127.0.0.1:8000/user/RawMaterialUsed', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:58:46', '2019-08-29 00:58:46'),
(345, 'App\\User', 3, 'created', 'App\\Sale', 20, '[]', '{\"adoptor_id\":3,\"production_id\":\"13\",\"product_id\":15,\"description\":\"ds\",\"quantity\":\"2\",\"total\":14,\"status\":\"1\",\"client_id\":\"2\",\"id\":20}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:58:56', '2019-08-29 00:58:56'),
(346, 'App\\User', 3, 'created', 'App\\Sale', 21, '[]', '{\"adoptor_id\":3,\"production_id\":\"13\",\"product_id\":15,\"description\":null,\"quantity\":\"4\",\"total\":28,\"status\":\"1\",\"client_id\":\"2\",\"id\":21}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 00:59:25', '2019-08-29 00:59:25'),
(347, 'App\\User', 2, 'created', 'App\\Sale', 22, '[]', '{\"adoptor_id\":2,\"production_id\":\"12\",\"product_id\":17,\"description\":null,\"quantity\":\"3\",\"total\":21,\"status\":\"0\",\"client_id\":\"1\",\"id\":22}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 01:00:12', '2019-08-29 01:00:12'),
(348, 'App\\User', 2, 'created', 'App\\Sale', 23, '[]', '{\"adoptor_id\":2,\"production_id\":\"11\",\"product_id\":16,\"description\":null,\"quantity\":\"2\",\"total\":14,\"status\":\"1\",\"client_id\":\"1\",\"id\":23}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 01:00:18', '2019-08-29 01:00:18'),
(349, 'App\\User', 2, 'created', 'App\\Sale', 24, '[]', '{\"adoptor_id\":2,\"production_id\":\"12\",\"product_id\":17,\"description\":null,\"quantity\":\"3\",\"total\":21,\"status\":\"0\",\"client_id\":\"1\",\"id\":24}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 01:02:23', '2019-08-29 01:02:23'),
(350, 'App\\User', 2, 'created', 'App\\Sale', 25, '[]', '{\"adoptor_id\":2,\"production_id\":\"12\",\"product_id\":17,\"description\":null,\"quantity\":\"343\",\"total\":2401,\"status\":\"1\",\"client_id\":\"1\",\"id\":25}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 01:02:54', '2019-08-29 01:02:54'),
(351, 'App\\User', 2, 'created', 'App\\Sale', 26, '[]', '{\"adoptor_id\":2,\"production_id\":\"6\",\"product_id\":14,\"description\":\"ds\",\"quantity\":\"2\",\"total\":20,\"status\":\"0\",\"client_id\":\"1\",\"id\":26}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 01:04:28', '2019-08-29 01:04:28'),
(352, 'App\\User', 2, 'created', 'App\\Sale', 27, '[]', '{\"adoptor_id\":2,\"production_id\":\"7\",\"product_id\":15,\"description\":null,\"quantity\":\"2\",\"total\":14,\"status\":\"1\",\"client_id\":\"1\",\"id\":27}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 01:05:08', '2019-08-29 01:05:08'),
(353, 'App\\User', 2, 'created', 'App\\Sale', 28, '[]', '{\"adoptor_id\":2,\"production_id\":\"11\",\"product_id\":16,\"description\":null,\"quantity\":\"2\",\"total\":14,\"status\":\"1\",\"client_id\":\"1\",\"id\":28}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 01:05:20', '2019-08-29 01:05:20'),
(354, 'App\\User', 2, 'created', 'App\\Sale', 29, '[]', '{\"adoptor_id\":2,\"production_id\":\"12\",\"product_id\":17,\"description\":null,\"quantity\":\"23\",\"total\":161,\"status\":\"1\",\"client_id\":\"1\",\"id\":29}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 01:05:26', '2019-08-29 01:05:26'),
(355, 'App\\User', 2, 'created', 'App\\Sale', 30, '[]', '{\"adoptor_id\":2,\"production_id\":\"6\",\"product_id\":14,\"description\":null,\"quantity\":\"2\",\"total\":20,\"status\":\"1\",\"client_id\":\"1\",\"id\":30}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 01:05:51', '2019-08-29 01:05:51'),
(356, 'App\\User', 2, 'created', 'App\\Sale', 31, '[]', '{\"adoptor_id\":2,\"production_id\":\"7\",\"product_id\":15,\"description\":null,\"quantity\":\"2\",\"total\":14,\"status\":\"1\",\"client_id\":\"1\",\"id\":31}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 01:06:00', '2019-08-29 01:06:00'),
(357, 'App\\User', 2, 'created', 'App\\Sale', 32, '[]', '{\"adoptor_id\":2,\"production_id\":\"11\",\"product_id\":16,\"description\":null,\"quantity\":\"2\",\"total\":14,\"status\":\"1\",\"client_id\":\"1\",\"id\":32}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 01:06:07', '2019-08-29 01:06:07'),
(358, 'App\\User', 2, 'created', 'App\\Sale', 33, '[]', '{\"adoptor_id\":2,\"production_id\":\"12\",\"product_id\":17,\"description\":null,\"quantity\":\"2\",\"total\":14,\"status\":\"1\",\"client_id\":\"1\",\"id\":33}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 01:06:13', '2019-08-29 01:06:13'),
(359, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"remember_token\":\"LPqxh73nLMPZ9d5pb4wKGFDYgz8fN18Wzx4lJmC9evAEJfsWrPlE5qOGWNay\"}', '{\"remember_token\":\"Dmi4bWv5D2Tiz3RmBXKMMygaJNxc3NnvCo9mYc3sNUds4O9iBUWU77YWC0XX\"}', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 01:08:24', '2019-08-29 01:08:24'),
(360, 'App\\User', 1, 'updated', 'App\\Adoptor', 3, '{\"twitter\":null,\"website\":\"http:\\/\\/www.enriquezobelfoundation.org\",\"status\":1}', '{\"twitter\":\"http:\\/\\/www.enriquezobelfoundation.org\",\"website\":null,\"status\":true}', 'http://127.0.0.1:8000/admin/adoptor/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 01:09:00', '2019-08-29 01:09:00'),
(361, 'App\\User', 3, 'updated', 'App\\RawMaterial', 3, '{\"quantity\":4}', '{\"quantity\":2}', 'http://127.0.0.1:8000/user/RawMaterialUsed', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 01:10:30', '2019-08-29 01:10:30'),
(362, 'App\\User', 3, 'updated', 'App\\RawMaterial', 4, '{\"quantity\":493}', '{\"quantity\":470}', 'http://127.0.0.1:8000/user/RawMaterialUsed', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 01:10:46', '2019-08-29 01:10:46'),
(363, 'App\\User', 3, 'created', 'App\\Sale', 34, '[]', '{\"adoptor_id\":3,\"production_id\":\"10\",\"product_id\":15,\"description\":null,\"quantity\":\"23\",\"total\":161,\"status\":\"1\",\"client_id\":\"2\",\"id\":34}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 01:10:58', '2019-08-29 01:10:58'),
(364, 'App\\User', 3, 'created', 'App\\Sale', 35, '[]', '{\"adoptor_id\":3,\"production_id\":\"13\",\"product_id\":16,\"description\":null,\"quantity\":\"2\",\"total\":14,\"status\":\"1\",\"client_id\":\"2\",\"id\":35}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 01:11:05', '2019-08-29 01:11:05'),
(365, 'App\\User', 3, 'created', 'App\\Sale', 36, '[]', '{\"adoptor_id\":3,\"production_id\":\"14\",\"product_id\":14,\"description\":null,\"quantity\":\"23\",\"total\":161,\"status\":\"1\",\"client_id\":\"2\",\"id\":36}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 01:11:11', '2019-08-29 01:11:11'),
(366, 'App\\User', 3, 'created', 'App\\Sale', 37, '[]', '{\"adoptor_id\":3,\"production_id\":\"15\",\"product_id\":17,\"description\":null,\"quantity\":\"23\",\"total\":161,\"status\":\"1\",\"client_id\":\"2\",\"id\":37}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 01:11:17', '2019-08-29 01:11:17'),
(367, 'App\\User', 2, 'updated', 'App\\RawMaterial', 2, '{\"name\":\"RAHIB P. ABU HALIL\"}', '{\"name\":\"salt\"}', 'http://127.0.0.1:8000/user/rawMaterial/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 05:30:59', '2019-08-29 05:30:59'),
(368, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"remember_token\":\"Dmi4bWv5D2Tiz3RmBXKMMygaJNxc3NnvCo9mYc3sNUds4O9iBUWU77YWC0XX\"}', '{\"remember_token\":\"s9So9tm1U229Z11ahviDyMxo4lDMVPb30LWw0KxgadUbnsgUCCGWLFNmHyLC\"}', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 05:53:18', '2019-08-29 05:53:18'),
(369, 'App\\User', 3, 'created', 'App\\Sale', 38, '[]', '{\"adoptor_id\":3,\"production_id\":\"10\",\"product_id\":15,\"description\":null,\"quantity\":\"2\",\"total\":14,\"status\":\"0\",\"client_id\":\"2\",\"id\":38}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 07:07:14', '2019-08-29 07:07:14'),
(370, 'App\\User', 3, 'created', 'App\\Sale', 39, '[]', '{\"adoptor_id\":3,\"production_id\":\"13\",\"product_id\":16,\"description\":null,\"quantity\":\"20\",\"total\":140,\"status\":\"1\",\"client_id\":\"2\",\"id\":39}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 07:07:22', '2019-08-29 07:07:22'),
(371, 'App\\User', 3, 'created', 'App\\Sale', 40, '[]', '{\"adoptor_id\":3,\"production_id\":\"14\",\"product_id\":14,\"description\":null,\"quantity\":\"23\",\"total\":161,\"status\":\"1\",\"client_id\":\"2\",\"id\":40}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 07:07:31', '2019-08-29 07:07:31'),
(372, 'App\\User', 3, 'created', 'App\\Sale', 41, '[]', '{\"adoptor_id\":3,\"production_id\":\"15\",\"product_id\":17,\"description\":null,\"quantity\":\"234\",\"total\":1638,\"status\":\"1\",\"client_id\":\"2\",\"id\":41}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 07:07:41', '2019-08-29 07:07:41'),
(373, 'App\\User', 1, 'updated', 'App\\Product', 14, '{\"name\":\"Rice-mongo instant\",\"slug\":\"rice-mongo-instant\"}', '{\"name\":\"Rice-mongo instant mami\",\"slug\":\"rice-mongo-instant-mami\"}', 'http://127.0.0.1:8000/admin/product/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 07:25:05', '2019-08-29 07:25:05'),
(374, 'App\\User', 1, 'updated', 'App\\Product', 14, '{\"name\":\"Rice-mongo instant mami\",\"slug\":\"rice-mongo-instant-mami\"}', '{\"name\":\"Rice-mongo instant\",\"slug\":\"rice-mongo-instant\"}', 'http://127.0.0.1:8000/admin/product/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-29 07:25:18', '2019-08-29 07:25:18'),
(375, 'App\\User', 2, 'created', 'App\\Comment', 22, '[]', '{\"forum_id\":\"10\",\"user_id\":2,\"comment\":\"dsadsadsa\",\"id\":22}', 'http://127.0.0.1:8000/user/comment', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-08-30 03:16:59', '2019-08-30 03:16:59'),
(376, 'App\\User', 1, 'created', 'App\\Forum', 11, '[]', '{\"user_id\":1,\"title\":\"dsadsadsaddsadsadsadsa\",\"slug\":\"dsadsadsaddsadsadsadsa\",\"body\":\"dasdsadsadsadsadsa\",\"view\":0,\"image\":\"dsadsadsaddsadsadsadsa-2019-09-05-5d70a79229586.png\",\"id\":11}', 'http://127.0.0.1:8000/admin/forum', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 06:13:38', '2019-09-05 06:13:38'),
(377, 'App\\User', 1, 'created', 'App\\Forum', 12, '[]', '{\"user_id\":1,\"title\":\"Odit necessitatibus ea sit dignissimos possimus.sdasa\",\"slug\":\"odit-necessitatibus-ea-sit-dignissimos-possimussdasa\",\"body\":\"ddduse App\\\\Adoptor;\\r\\nvuse App\\\\Adoptor;\\r\\nuse App\\\\Adoptor;\\r\\nuse App\\\\Adoptor;\",\"view\":0,\"image\":\"odit-necessitatibus-ea-sit-dignissimos-possimussdasa-2019-09-05-5d70a7b8c1e1e.png\",\"id\":12}', 'http://127.0.0.1:8000/admin/forum', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 06:14:16', '2019-09-05 06:14:16'),
(378, 'App\\User', 1, 'created', 'App\\Adoptor', 42, '[]', '{\"name\":\"NUTRIDENSE FOOD MANUFACTURING CORPORATION\",\"slug\":\"nutridense-food-manufacturing-corporation\",\"address\":\"Dost Compound General Santos Ave, Taguig, 1630 Metro Manila\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen><\\/iframe>\",\"region_id\":\"13\",\"image\":\"nutridense-food-manufacturing-corporation-2019-09-05-5d70ac1a10bd7.png\",\"mobile\":\"000000000000\",\"telephone\":null,\"fax\":null,\"about\":\"<p><span style=\\\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 16px; text-align: justify; background-color: #f2f2f2;\\\">he Department of Science and Technology-Food and Nutrition Research Institute (DOST-FNRI) stood proud in this year&rsquo;s gathering of the country&rsquo;s best and brightest scientific minds as the PDRI 2015: Philippine Dietary Reference Intakes bagged the 2019 Outstanding Book Award given by the National Academy of Science and Technology, Philippines (NAST PHL). NAST PHL conferred the award on the second day of the 41st Annual Scientific Meeting (ASM), July 11, 2019, at the EDSA Shangri-La Hotel in Ortigas, Mandaluyong City, in the presence of National Scientists, Academicians, several up-and-coming scientists, and top science administrators and movers in the country.<\\/span><\\/p>\",\"facebook\":null,\"twitter\":\"www.fnri.dost.gov.ph\",\"instagram\":null,\"website\":null,\"email\":\"mas@fnri.dost.gov.p\",\"status\":true,\"scale\":\"large\",\"id\":42}', 'http://127.0.0.1:8000/admin/adoptor', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 06:32:58', '2019-09-05 06:32:58'),
(379, 'App\\User', 2, 'created', 'App\\Forum', 13, '[]', '{\"user_id\":2,\"title\":\"requesting for maintenancedsadsad\",\"slug\":\"requesting-for-maintenancedsadsad\",\"body\":\"sadhe Department of Science and Technology-Food and Nutrition Research Institute (DOST-FNRI) stood proud in this year\\u2019s gathering of the country\\u2019s best and brightest scientific minds as the PDRI 2015: Philippine Dietary Reference Intakes bagged the 2019 Outstanding Book Award given by the National Academy of Science and Technology, Philippines (NAST PHL). NAST PHL conferred the award on the second day of the 41st Annual Scientific Meeting (ASM), July 11, 2019, at the EDSA Shangri-La Hotel in Ortigas, Mandaluyong City, in the presence of National Scientists, Academicians, several up-and-coming scientists, and top science administrators and movers in the country.he Department of Science and Technology-Food and Nutrition Research Institute (DOST-FNRI) stood proud in this year\\u2019s gathering of the country\\u2019s best and brightest scientific minds as the PDRI 2015: Philippine Dietary Reference Intakes bagged the 2019 Outstanding Book Award given by the National Academy of Science and Technology, Philippines (NAST PHL). NAST PHL conferred the award on the second day of the 41st Annual Scientific Meeting (ASM), July 11, 2019, at the EDSA Shangri-La Hotel in Ortigas, Mandaluyong City, in the presence of National Scientists, Academicians, several up-and-coming scientists, and top science administrators and movers in the country.\",\"view\":0,\"image\":\"requesting-for-maintenancedsadsad-2019-09-05-5d70ac9a70632.png\",\"id\":13}', 'http://127.0.0.1:8000/user/forum', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 06:35:06', '2019-09-05 06:35:06'),
(380, 'App\\User', 1, 'created', 'App\\Forum', 14, '[]', '{\"user_id\":1,\"title\":\"Odit necessitatibus ea sit dignissimos possimus.sadsadsadsadsa\",\"slug\":\"odit-necessitatibus-ea-sit-dignissimos-possimussadsadsadsadsa\",\"body\":\"dhe Department of Science and Technology-Food and Nutrition Research Institute (DOST-FNRI) stood proud in this year\\u2019s gathering of the country\\u2019s best and brightest scientific minds as the PDRI 2015: Philippine Dietary Reference Intakes bagged the 2019 Outstanding Book Award given by the National Academy of Science and Technology, Philippines (NAST PHL). NAST PHL conferred the award on the second day of the 41st Annual Scientific Meeting (ASM), July 11, 2019, at the EDSA Shangri-La Hotel in Ortigas, Mandaluyong City, in the presence of National Scientists, Academicians, several up-and-coming scientists, and top science administrators and movers in the country.\",\"view\":0,\"image\":\"odit-necessitatibus-ea-sit-dignissimos-possimussadsadsadsadsa-2019-09-05-5d70acb6a7ab0.png\",\"id\":14}', 'http://127.0.0.1:8000/admin/forum', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 06:35:34', '2019-09-05 06:35:34'),
(381, 'App\\User', 1, 'updated', 'App\\Adoptor', 2, '{\"image\":\"nutridense-food-manufacturing-corporation-2019-03-15-5c8b447a9fe05.jpg\",\"twitter\":\"twitter\",\"website\":\"twitter.com\",\"status\":1}', '{\"image\":\"nutridense-food-manufacturing-corporation-2019-09-05-5d70b05e73b0f.png\",\"twitter\":\"twitter.com\",\"website\":\"twitter\",\"status\":true}', 'http://127.0.0.1:8000/admin/adoptor/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 06:51:10', '2019-09-05 06:51:10'),
(382, 'App\\User', 1, 'updated', 'App\\Adoptor', 42, '{\"name\":\"NUTRIDENSE FOOD MANUFACTURING CORPORATION\",\"slug\":\"nutridense-food-manufacturing-corporation\",\"image\":\"nutridense-food-manufacturing-corporation-2019-09-05-5d70ac1a10bd7.png\",\"twitter\":\"www.fnri.dost.gov.ph\",\"website\":null,\"status\":1}', '{\"name\":\"Food and Nutrition Research Institute\",\"slug\":\"food-and-nutrition-research-institute\",\"image\":\"food-and-nutrition-research-institute-2019-09-05-5d70b12e05a38.png\",\"twitter\":null,\"website\":\"www.fnri.dost.gov.ph\",\"status\":true}', 'http://127.0.0.1:8000/admin/adoptor/42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 06:54:38', '2019-09-05 06:54:38'),
(383, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$.00Y8AfXoD1evUthE\\/XQ6eTa6B\\/sTT9KFS3fLPD.Zpq\\/p5j2socu.\",\"adoptor_id\":0}', '{\"password\":\"$2y$10$7R0nFZjPPIKP7KWWuxYxNubmw.tjHmu\\/DXYOa5mnNyaegWr7Uxxr.\",\"adoptor_id\":\"42\"}', 'http://127.0.0.1:8000/admin/user/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 06:55:42', '2019-09-05 06:55:42'),
(384, 'App\\User', 1, 'created', 'App\\Forum', 15, '[]', '{\"user_id\":1,\"title\":\"Odit necessitatibus ea sit dignissimos possimus.jhkjhk\",\"slug\":\"odit-necessitatibus-ea-sit-dignissimos-possimusjhkjhk\",\"body\":\"Food and Nutrition Research InstituteFood and Nutrition Research InstituteFood and Nutrition Research InstituteFood and Nutrition Research Institute\",\"view\":0,\"image\":\"odit-necessitatibus-ea-sit-dignissimos-possimusjhkjhk-2019-09-05-5d70b185deb40.png\",\"id\":15}', 'http://127.0.0.1:8000/admin/forum', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 06:56:06', '2019-09-05 06:56:06'),
(385, 'App\\User', 1, 'updated', 'App\\Adoptor', 2, '{\"image\":\"nutridense-food-manufacturing-corporation-2019-09-05-5d70b05e73b0f.png\",\"twitter\":\"twitter.com\",\"website\":\"twitter\",\"status\":1}', '{\"image\":\"nutridense-food-manufacturing-corporation-2019-09-05-5d70b2182ca35.jpg\",\"twitter\":\"twitter\",\"website\":\"twitter.com\",\"status\":true}', 'http://127.0.0.1:8000/admin/adoptor/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 06:58:32', '2019-09-05 06:58:32'),
(386, 'App\\User', 1, 'created', 'App\\Forum', 16, '[]', '{\"user_id\":1,\"title\":\"Angular jsdsadsa\",\"slug\":\"angular-jsdsadsa\",\"body\":\"use App\\\\Comment;use App\\\\Comment;use App\\\\Comment;use App\\\\Comment;use App\\\\Comment;\",\"view\":0,\"image\":\"angular-jsdsadsa-2019-09-05-5d70b3a73e531.png\",\"id\":16}', 'http://127.0.0.1:8000/admin/forum', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 07:05:11', '2019-09-05 07:05:11'),
(387, 'App\\User', 1, 'created', 'App\\Forum', 17, '[]', '{\"user_id\":1,\"title\":\"Vue js just javascript framework\",\"slug\":\"vue-js-just-javascript-framework\",\"body\":\"Vue js just javascript frameworkVue js just javascript framework nothing more nothing less\",\"view\":0,\"image\":\"vue-js-just-javascript-framework-2019-09-05-5d70b3ed50f2b.png\",\"id\":17}', 'http://127.0.0.1:8000/admin/forum', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 07:06:21', '2019-09-05 07:06:21'),
(388, 'App\\User', 1, 'created', 'App\\Comment', 23, '[]', '{\"forum_id\":\"17\",\"user_id\":1,\"comment\":\"dsadsad\",\"id\":23}', 'http://127.0.0.1:8000/admin/comment', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 07:10:23', '2019-09-05 07:10:23'),
(389, 'App\\User', 1, 'deleted', 'App\\Comment', 23, '{\"id\":23,\"forum_id\":17,\"user_id\":1,\"comment\":\"dsadsad\"}', '[]', 'http://127.0.0.1:8000/admin/comment/23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 07:10:55', '2019-09-05 07:10:55'),
(390, 'App\\User', 1, 'created', 'App\\Comment', 24, '[]', '{\"forum_id\":\"10\",\"user_id\":1,\"comment\":\"dsadsadsa\",\"id\":24}', 'http://127.0.0.1:8000/admin/comment', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 07:14:55', '2019-09-05 07:14:55'),
(391, 'App\\User', 1, 'updated', 'App\\Forum', 17, '{\"body\":\"Vue js just javascript frameworkVue js just javascript framework nothing more nothing less\"}', '{\"body\":\"Vue js just javascript frameworkVue js just javascript framework nothing more nothing lessds\"}', 'http://127.0.0.1:8000/admin/forum/17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 07:20:17', '2019-09-05 07:20:17'),
(392, 'App\\User', 1, 'deleted', 'App\\Forum', 15, '{\"id\":15,\"user_id\":1,\"title\":\"Odit necessitatibus ea sit dignissimos possimus.jhkjhk\",\"slug\":\"odit-necessitatibus-ea-sit-dignissimos-possimusjhkjhk\",\"body\":\"Food and Nutrition Research InstituteFood and Nutrition Research InstituteFood and Nutrition Research InstituteFood and Nutrition Research Institute\",\"image\":\"odit-necessitatibus-ea-sit-dignissimos-possimusjhkjhk-2019-09-05-5d70b185deb40.png\",\"view\":1}', '[]', 'http://127.0.0.1:8000/admin/forum/15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 07:20:27', '2019-09-05 07:20:27'),
(393, 'App\\User', 1, 'deleted', 'App\\Forum', 16, '{\"id\":16,\"user_id\":1,\"title\":\"Angular jsdsadsa\",\"slug\":\"angular-jsdsadsa\",\"body\":\"use App\\\\Comment;use App\\\\Comment;use App\\\\Comment;use App\\\\Comment;use App\\\\Comment;\",\"image\":\"angular-jsdsadsa-2019-09-05-5d70b3a73e531.png\",\"view\":0}', '[]', 'http://127.0.0.1:8000/admin/forum/16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-05 07:20:30', '2019-09-05 07:20:30'),
(394, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"remember_token\":\"s9So9tm1U229Z11ahviDyMxo4lDMVPb30LWw0KxgadUbnsgUCCGWLFNmHyLC\"}', '{\"remember_token\":\"XvUhnjxzuSPq8Pialm5tKv5uH7Fpwdwo1g0yy13nfTNlax2H9NomUegY4Qc8\"}', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-10 01:40:32', '2019-09-10 01:40:32'),
(395, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"remember_token\":\"XvUhnjxzuSPq8Pialm5tKv5uH7Fpwdwo1g0yy13nfTNlax2H9NomUegY4Qc8\"}', '{\"remember_token\":\"AREznYTkAV6zS5guAoqlq1ZFLNHLt31hHvJeLrZcrvjoOoApuxcIjMQDJBpD\"}', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-10 02:04:46', '2019-09-10 02:04:46'),
(396, 'App\\User', 2, 'deleted', 'App\\Comment', 22, '{\"id\":22,\"forum_id\":10,\"user_id\":2,\"comment\":\"dsadsadsa\"}', '[]', 'http://127.0.0.1:8000/user/comment/22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 08:43:41', '2019-09-19 08:43:41'),
(397, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"remember_token\":\"AREznYTkAV6zS5guAoqlq1ZFLNHLt31hHvJeLrZcrvjoOoApuxcIjMQDJBpD\"}', '{\"remember_token\":\"icemK6G085x3qINBg1LmJkWF7Mx9S67CwhaQMEZ3Cqxwrn6jRwGvU3HLatbT\"}', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2019-09-19 09:16:33', '2019-09-19 09:16:33');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adoptor_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `adoptor_id`, `name`, `address`, `contactNumber`, `created_at`, `updated_at`) VALUES
(1, 2, 'sample Elementary School', 'Taguig', '09495938992', '2019-06-11 00:23:23', '2019-08-22 05:58:13'),
(2, 3, 'jonas', 'Hightway 59, ariman, Gubat, Sorsogon', '09495938992', '2019-08-28 08:36:28', '2019-08-28 08:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `forum_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `forum_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(13, 9, 3, 'jsahdkjhsajdsad', '2019-05-27 03:09:08', '2019-05-27 03:09:08'),
(21, 10, 2, 'sada', '2019-06-03 07:53:32', '2019-08-20 08:27:01'),
(24, 10, 1, 'dsadsadsa', '2019-09-05 07:14:55', '2019-09-05 07:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adoptor_id` int(11) NOT NULL,
  `firstName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middleName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `adoptor_id`, `firstName`, `middleName`, `lastName`, `position`, `age`, `gender`, `nationality`, `contactNo`, `email`, `picture`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'ELLA', 'E', 'ASNAG', 'Manager', '25', '0', 'Filipino', '09495938992', 'abohalilr@gmail.com', 'ella=2019-05-30=5cef81cc4a3f7.png', NULL, '2019-05-30 07:10:04', '2019-05-30 07:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `name`, `slug`, `image`, `description`, `created_at`, `updated_at`) VALUES
(12, 'OCTAGONAL MIXER', 'octagonal-mixer', 'octagonal-mixer-2019-05-06-5ccf89e6977d5.png', '<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><em><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Dimensions: Total height = 157 centimeters; Length = 140 centimeters; Diameter (front) = 54 centimeters</span></em></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Description and Use:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">The model above is locally fabricated using food grade stainless steel material. It is powered by 1 Hp (horsepower), Ph1, 220 V induction motor with a speed reducer. Has a capacity of 15 kilograms of grains and 5 kilograms of curls per loading.</span></p>\r\n<p><span lang=\"EN-US\" style=\"font-size: 11.0pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; It is used for coating curls with flavor and/or mixing two or more solid food materials</span></p>\r\n<p>&nbsp;</p>', '2019-05-06 01:12:06', '2019-05-06 01:12:06'),
(13, 'PULVERIZER', 'pulverizer', 'pulverizer-2019-05-06-5ccf8b14c6fe6.png', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Description and Use:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>The equipment above is run by a 60 Hz (Hertz) motor. It can load up to 120 kilograms of sample per hour. The feed is loaded into the hopper connected to a set of two discs (stationary and rotating) that are responsible for the grinding process. The ground end product is then collected from the outlet.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>It is used for grinding low-moisture solid food material such as nuts, corns, coffee, etc.</span></p>', '2019-05-06 01:17:08', '2019-05-06 01:17:08'),
(14, 'HOBART MIXER', 'hobart-mixer', 'hobart-mixer-2019-05-06-5ccf8b3ccc2d2.png', '<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Dimension: Height &ndash; 130cm; Front &ndash; 70cm; Side &ndash; 100cm</span></em></p>\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Description and Use:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>This equipment is powered by a 1Hp, single phase, 220V induction motor. It is multi-speed: 1-slow, 2-moderate and 3-fast. Its bowl has a capacity of about 10kg of food material. There are three (3) stirrers: hook, leaf and wire basket. Hook and leaf can be used for mixing flour and kneading. It has also a drive in front for attaching vegetable dicer and slicer.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>It is used for mixing two or more flours, kneading and slicing and/or dicing fruits and vegetables.</span></p>', '2019-05-06 01:17:48', '2019-05-06 01:17:48'),
(15, 'PEDAL TYPE PLASTIC SEALER', 'pedal-type-plastic-sealer', 'pedal-type-plastic-sealer-2019-05-06-5ccf8be72210a.png', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Use:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>It is used in fusing two thermoplastic surfaces resulting in an airtight seal, e.g. sealing polyethylene (PE) or polypropylene (PP) plastic bags.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Guidelines in Sealing Thermoplastic Bags:</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: justify; text-indent: -18.0pt; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-fareast-font-family: \'Arial Black\'; mso-bidi-font-family: \'Arial Black\';\"><span style=\"mso-list: Ignore;\">A.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp; </span></span></span></strong><!--[endif]--><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Pedal Type Plastic Sealer</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo2;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">1.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Adjust the temperature setting (Table 1) according to the thickness of the plastic bag to be sealed.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo2;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">2.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Plug the sealer and pre-heat the sealing jaws to the desired sealing temperature.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo2;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">3.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Place the plastic bag over the lower sealing jaw and press down the upper sealing jaw with your foot on the pedal (see Table 1 for suggested sealing time).</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo2;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">4.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Release the pedal and remove the plastic bag from the sealing surfaces. Check the seal. If necessary, increase or decrease the temperature sealing, until the lowest setting on the setting timer is found that still makes a good seal.</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo2;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">5.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Should the plastic stick to one or both of the sealing jaws, hold onto the pedal for two (2) to three (3) seconds more before releasing or decrease the sealing temperature. Remove the plastic residue with a dry cloth. Never use water for cleaning.</span></p>', '2019-05-06 01:20:39', '2019-05-06 01:20:39'),
(16, 'IMPULSE PLASTIC SEALER', 'impulse-plastic-sealer', 'impulse-plastic-sealer-2019-05-06-5ccf8c3962677.png', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Guidelines in Sealing Thermoplastic Bags:</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">1.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Adjust the sealer setting according to the thickness of the poly-bag to be sealed (Table 2).</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">2.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Place the plastic bag over the Teflon cloth sealing surface and push down the handle arm completely.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">3.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Firmly hold the arm down through the complete sealing cycle, is the time the sealing indicator illuminates red, and then turns-off quickly.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">4.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Hold in the arm for a second or two after the indicator light turns-off to allow the seal to cool and strengthen under pressure before releasing the arm.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">5.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Check the seal. If necessary, increase or decrease the setting on the sealing timer. Make a seal. Keep experimenting, until the lowest setting on the setting timer is found that still makes a good seal.</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">6.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Should the plastic stick to the white silicone rubber strip in the arm (upper sealing surface) or to the Teflon cloth covering the heating element wire (lower sealing surface), hold down the arm longer at the end of the sealing cycle. Remove the plastic residue with a dry cloth. Never use water for cleaning.</span></p>', '2019-05-06 01:22:01', '2019-05-06 01:22:01'),
(17, 'RICE/CORN GRINDER', 'ricecorn-grinder', 'ricecorn-grinder-2019-05-06-5ccf8c91485d0.png', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Dimensions: Front &ndash; 22 cm; Side - 56cm; Height &ndash; 48cm</span></em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Grinding wheel Diameter: 9cm</span></em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Induction Motor: 2 hp (horsepower), single phase, 220 V</span></em></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Description and Use:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>This is locally fabricated. It has a body that is made of aluminum, has feed hopper (0.125 cu. ft. capacity) and a grinding chamber with a fixed cast-iron disc mounted on the chamber and a rotating cast-iron disc mounted on the shaft. The feed is introduced through the hopper that releases the feed to the opening of the central section of the stationary disc. The rotating disc is mounted on the shaft and its grinding gap with the fixed disc can be adjusted to the desired clearance with the gap adjuster. The ground foodstuff is released through a spout at the lower portion of the grinding chamber.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>It is used for coarse grinding and cracking of low-moisture solid foodstuffs, such as corn, rice and coffee.</span></p>', '2019-05-06 01:23:29', '2019-05-06 01:23:29'),
(18, 'FLOUR MILL', 'flour-mill', 'flour-mill-2019-05-06-5ccf8ce30253d.png', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Dimensions: Total Height &ndash; 104 cm; Inside Diameter (grinding chamber) &ndash; 22 cm; Height of Grinding Chamber &ndash; 15 cm; </span></em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Hopper: Front &ndash; 30 cm; Side &ndash; 38 cm; Height &ndash; 6.5 c; </span></em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Product Spout Diameter &ndash; 11 cm</span></em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Description and Use:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">It is powered by a 1 Hp, 220 V induction motor. It has a capacity about 5 kilograms of 80 mesh flour per hour. It has six horizontally rotating hammers. As the hammer rotates, the food materials dropping from the feed hopper are thrown towards the vertically mounted bladed circular walls. The rotation of the hammers creates swirling air, which make food particles rotate with the hammers around the milling chamber. The very fine powder are blown upwards towards an exit tube and collected in the upper airbag. As the bigger particles are forced to rotate through a screen. When the particle size is slightly smaller than the screen holes, they pass through it and collected in the lower airbag. Most of the particle sizes are determined by this screen.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>It is used for milling grains, dried fruits and vegetables and other food materials.</span></p>', '2019-05-06 01:24:51', '2019-05-06 01:24:51'),
(19, 'CEREAL PUFFING MACHINE (FRICTION  TYPE HEATER)', 'cereal-puffing-machine-friction-type-heater', 'cereal-puffing-machine-friction-type-heater-2019-05-06-5ccf8d2e354b7.png', '<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Dimension (mm) &ndash; 550(W) x 790 (L) x 1350 (H); Weight &ndash; 200 kilograms; Main Drive Motor &ndash; 2 KW, 220 V, 50-60 Hz Single Phase; Capacity &ndash; 5-7 kilograms/hour</span></em></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Description and Use:</span></strong></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">The cereal puffing machine is imported from Korea. This is a friction type extruder. It is used for the extrusion of grains (e.g. rice, corn grits, mongo grits, etc.)</span></p>', '2019-05-06 01:26:06', '2019-05-06 01:26:06'),
(20, 'EXTRUDER COOKER (HIGH PRESSURE HIGH TEMPERATURE)', 'extruder-cooker-high-pressure-high-temperature', 'extruder-cooker-high-pressure-high-temperature-2019-05-06-5ccf8d9f36bd0.png', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Main Drive Motor: 20KW, 220V, Ph3; Cutter Motor: 0.5KW, 220V, Ph3;</span></em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>Agitator Motor: 0.5KW, 220V, Ph3; Band Heater: 10KW; Capacity: 120-150 kg/hr.</span></em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></em></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Description and Use:</span></strong></p>\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>This equipment is imported from China. Its screw is long enough to cook and expand the product in one extrusion zone. </span></p>\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>It is used for extrusion cooking, sterilization and stabilization of foodstuff.</span></p>', '2019-05-06 01:27:59', '2019-05-06 01:27:59'),
(21, 'CABINET DRYER', 'cabinet-dryer', 'cabinet-dryer-2019-05-06-5ccf8dd70db87.png', '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Description and Use:</span></strong></p>\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>This equipment is LPG &ndash; operated and can load up to 80 kilograms of food samples on its 22 stainless aluminum drying trays. It is equipped with three blowers that ensure the uniformity of every drying operation.</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>It is used for dehydration of grains, fruits, vegetables and marine products (e.g. fish, etc.)</span></p>', '2019-05-06 01:28:55', '2019-05-06 01:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `user_id`, `title`, `slug`, `body`, `image`, `view`, `created_at`, `updated_at`) VALUES
(9, 3, 'Odit necessitatibus ea sit dignissimos possimus.', 'odit-necessitatibus-ea-sit-dignissimos-possimus', 'MANILA (UPDATE) - Members of the Cayetano family are leading the mayoral and congressional races in Taguig City, based on partial and unofficial results.\r\n\r\nFormer Foreign Affairs secretary Alan Peter Cayetano got 86,078 votes, while his wife Lani received 108,105 votes based on 94 percent of election returns of clustered precincts, as of 1:19 a.m. Tuesday.\r\n\r\nAlan Peter is running as representative of the first district of Taguig, while Lani is running as second district representative.\r\n\r\nCayetano\'s younger brother Lino, who is running for city mayor, received 165,760 votes.\r\n\r\nThe Cayetano couple’s candidacies in separate legislative districts have been questioned by a Taguig resident before the Comelec over domicile issues. On May 6, however, the poll body junked the petition.\r\n\r\nAside from Lino, Cayetano\'s sister Pia is also running as senator. She is currently in fourth place with 18,502,249 votes.', 'odit-necessitatibus-ea-sit-dignissimos-possimus-2019-05-27-5ceb39901ab9e.png', 16, '2019-05-27 01:12:48', '2019-08-20 08:26:23'),
(10, 2, 'Odit necessitatibus ea sit dignissimos possimus.Odit necessitatibus ea sit dignissimos possimus.', 'odit-necessitatibus-ea-sit-dignissimos-possimusodit-necessitatibus-ea-sit-dignissimos-possimus', 'Odit necessitatibus ea sit dignissimos possimus.Odit necessitatibus ea sit dignissimos possimus.Odit necessitatibus ea sit dignissimos possimus.', 'odit-necessitatibus-ea-sit-dignissimos-possimusodit-necessitatibus-ea-sit-dignissimos-possimus-2019-06-03-5cf4cf68884c1.png', 13, '2019-06-03 07:42:32', '2019-09-19 08:43:37'),
(13, 2, 'requesting for maintenancedsadsad', 'requesting-for-maintenancedsadsad', 'sadhe Department of Science and Technology-Food and Nutrition Research Institute (DOST-FNRI) stood proud in this year’s gathering of the country’s best and brightest scientific minds as the PDRI 2015: Philippine Dietary Reference Intakes bagged the 2019 Outstanding Book Award given by the National Academy of Science and Technology, Philippines (NAST PHL). NAST PHL conferred the award on the second day of the 41st Annual Scientific Meeting (ASM), July 11, 2019, at the EDSA Shangri-La Hotel in Ortigas, Mandaluyong City, in the presence of National Scientists, Academicians, several up-and-coming scientists, and top science administrators and movers in the country.he Department of Science and Technology-Food and Nutrition Research Institute (DOST-FNRI) stood proud in this year’s gathering of the country’s best and brightest scientific minds as the PDRI 2015: Philippine Dietary Reference Intakes bagged the 2019 Outstanding Book Award given by the National Academy of Science and Technology, Philippines (NAST PHL). NAST PHL conferred the award on the second day of the 41st Annual Scientific Meeting (ASM), July 11, 2019, at the EDSA Shangri-La Hotel in Ortigas, Mandaluyong City, in the presence of National Scientists, Academicians, several up-and-coming scientists, and top science administrators and movers in the country.', 'requesting-for-maintenancedsadsad-2019-09-05-5d70ac9a70632.png', 1, '2019-09-05 06:35:06', '2019-09-05 07:14:09'),
(17, 1, 'Vue js just javascript framework', 'vue-js-just-javascript-framework', 'Vue js just javascript frameworkVue js just javascript framework nothing more nothing lessds', 'vue-js-just-javascript-framework-2019-09-05-5d70b3ed50f2b.png', 1, '2019-09-05 07:06:21', '2019-09-05 07:20:17');

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `user_id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'RAHIB P. ABU HALIL', 'abohalilr@gmail.com', 'ddsadsa', 'dsadsa', '2019-08-23 06:00:56', '2019-08-23 06:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_11_070341_create_roles_table', 1),
(4, '2019_03_12_001719_create_regions_table', 1),
(6, '2019_03_12_074244_create_equipment_table', 1),
(7, '2019_03_14_013053_create_products_table', 1),
(10, '2019_03_15_002356_create_adoptors_table', 1),
(11, '2019_03_19_040254_create_jobs_table', 1),
(12, '2019_03_19_052259_create_inquiries_table', 1),
(13, '2019_03_26_014957_create_adoptor_equipment_table', 2),
(14, '2019_03_26_020726_create_adoptor_technology_table', 3),
(18, '2019_03_26_020835_create_adoptor_raw_material_table', 4),
(19, '2019_03_26_021202_create_adoptor_product_table', 4),
(20, '2019_03_26_052056_add_scale_to_adoptors_table', 5),
(22, '2019_03_26_052445_add_scale_to_adoptors_table', 6),
(24, '2019_04_02_063344_create_audits_table', 8),
(25, '2019_04_02_070413_create_audits_table', 9),
(27, '2019_04_03_005210_add_status_to_adoptor_product_table', 10),
(32, '2019_04_03_013810_create_adoptor_products_table', 12),
(33, '2019_04_03_050355_create_adoptor_product_equipment_table', 12),
(34, '2019_04_03_050421_create_adoptor_product_raw_material_table', 12),
(40, '2019_04_04_021811_add_to_adoptor_product_table', 13),
(45, '2019_04_04_050451_create_sales_table', 14),
(50, '2019_05_15_082755_create_forums_table', 17),
(51, '2019_05_22_112254_add_slug_to_forum_table', 18),
(52, '2019_05_24_131450_create_comments_table', 19),
(53, '2019_05_24_135753_create_comments_table', 20),
(54, '2019_05_27_103746_add_to_comment_table', 21),
(56, '2019_05_28_143847_create_employees_table', 22),
(64, '2019_05_30_084532_create_productions_table', 23),
(65, '2019_05_31_084939_create_production_raw_materials_table', 24),
(66, '2019_06_03_141953_create_clients_table', 25),
(67, '2019_06_03_152610_create_suppliers_table', 26),
(69, '2019_06_10_083642_create_adoptor_products_table', 28),
(70, '2019_06_10_142751_create_productions_table', 29),
(71, '2019_06_11_101128_create_raw_materials_table', 30),
(72, '2019_06_11_105643_create_adoptor_raw_materials_table', 31),
(77, '2019_06_11_143930_create_raw_material_useds_table', 32),
(78, '2019_06_14_084021_create_sales_table', 32),
(80, '2019_08_15_090427_create_raw_materials_table', 33),
(81, '2019_08_16_104159_create_production_raw_materials_table', 34),
(82, '2019_08_16_110405_create_raw_material_useds_table', 35),
(84, '2019_08_23_085146_create_sales_table', 36),
(85, '2019_09_09_082630_create_rejects_table', 37);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$xKkemG5iGZQb7pthzEuHku9rUrAdBCBkUbgVgQnlS.hH1kR6ydE7y', '2019-04-04 19:57:53'),
('abohalilr@gmail.com', '$2y$10$rieUKUsvDuH7bUm5.BGyPeOuZrAAg0Tbh7yZ0XE2CxTBprwWbUAIG', '2019-04-17 03:51:29');

-- --------------------------------------------------------

--
-- Table structure for table `productions`
--

CREATE TABLE `productions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adoptor_product_id` int(11) NOT NULL,
  `packs` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateProduced` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productions`
--

INSERT INTO `productions` (`id`, `adoptor_product_id`, `packs`, `dateProduced`, `created_at`, `updated_at`) VALUES
(1, 1, '0', '2019-06-10', '2019-06-11 00:55:06', '2019-06-14 08:55:03'),
(2, 1, '0', '2019-06-11', '2019-06-11 05:56:56', '2019-06-14 08:53:34'),
(3, 3, '20', '2019-06-11', '2019-06-11 06:24:45', '2019-06-11 06:24:45'),
(4, 2, '50', '2019-06-13', '2019-06-14 02:45:00', '2019-06-14 02:45:00'),
(6, 10, '39', '2019-08-14', '2019-08-15 06:03:45', '2019-09-10 01:28:55'),
(7, 11, '27', '2019-08-21', '2019-08-22 01:05:32', '2019-09-10 01:48:58'),
(8, 11, '0', '2019-08-20', '2019-08-22 05:29:44', '2019-08-27 01:29:31'),
(9, 10, '0', '2019-08-14', '2019-08-22 08:23:45', '2019-08-27 01:29:54'),
(10, 12, '18', '2019-08-15', '2019-08-29 00:34:59', '2019-08-29 07:07:14'),
(11, 13, '291', '2019-08-22', '2019-08-29 00:48:11', '2019-08-29 01:06:07'),
(12, 14, '1921', '2019-08-28', '2019-08-29 00:48:20', '2019-08-29 01:06:13'),
(13, 15, '6', '2019-08-22', '2019-08-29 00:58:39', '2019-08-29 07:07:22'),
(14, 16, '188', '2019-08-28', '2019-08-29 01:10:24', '2019-08-29 07:07:31'),
(15, 17, '2067', '2019-08-22', '2019-08-29 01:10:40', '2019-08-29 07:07:41');

-- --------------------------------------------------------

--
-- Table structure for table `production_raw_materials`
--

CREATE TABLE `production_raw_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `production_id` int(11) NOT NULL,
  `raw_material_id` int(11) NOT NULL,
  `Quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `procedure` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `image`, `description`, `procedure`, `created_at`, `updated_at`) VALUES
(14, 'Rice-mongo instant', 'rice-mongo-instant', 'rice-mongo-instant-2019-05-06-5ccf9d4c90aa0.png', '<p style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\"><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; font-weight: bold; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">Rice-mongo instant </span><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">blend is complementary food rich in protein and energy.</span></p>\r\n<p style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\">&nbsp;</p>\r\n<div style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: .38in; text-indent: -.38in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\"><span style=\"font-size: 16.0pt;\"><span style=\"mso-special-format: bullet; font-family: Arial;\">&bull;</span></span><span style=\"font-size: 16pt; font-family: Arial;\">Contains 120 Kcal (energy) and 4 g protein per 30 g, </span><span style=\"font-size: 16pt; font-family: Arial; font-style: italic;\">enough to meet 16.7 % of recommended energy and 28.6 % of recommended protein of 6 months to &lt;10 months old children</span></div>', '<p>empty</p>', '2019-05-06 02:31:07', '2019-08-29 07:25:18'),
(15, 'Ready-to-cook blend', 'ready-to-cook-blend', 'ready-to-cook-blend-2019-05-06-5ccf9cacb8189.png', '<p style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\"><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; font-weight: bold; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">R</span><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; font-weight: bold; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">eady-to-cook </span><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; font-weight: bold; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">blend</span><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\"> of rice, </span><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">mung bean </span><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">and sesame seeds is an ideal complementary food for six months old and young children. </span></p>\r\n<p style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\"><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-PH; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">contains 130 Kcal (energy) and 4 grams protein per 30 grams serving portion, enough to meet 18 % of recommended energy and 28.6 % of recommended protein intake of 6 months to &lt;10 months old children.</span></p>', '<p>empty</p>', '2019-05-06 02:32:12', '2019-05-06 02:32:12'),
(16, 'Rice-Mongo Curls', 'rice-mongo-curls', 'rice-mongo-curls-2019-05-06-5ccf9d3dabd9d.png', '<p>&nbsp;</p>\r\n<div style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: .38in; text-indent: -.38in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\">\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in; direction: ltr; unicode-bidi: embed; word-break: normal;\"><span style=\"font-size: 16pt; font-family: Arial; font-weight: bold;\">Rice-Mongo Curls </span><span style=\"font-size: 16pt; font-family: Arial;\">are nutritious extruded snack made from a blend of rice flour and mongo flour.</span></p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in; direction: ltr; unicode-bidi: embed; word-break: normal;\"><span style=\"font-size: 16pt; font-family: Arial;\">&nbsp;</span></p>\r\n</div>\r\n<div style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: .38in; text-indent: -.38in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\"><span style=\"font-size: 16.0pt;\"><span style=\"mso-special-format: bullet; font-family: Arial;\">&bull;</span></span><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">Rice-Mongo curls contains 130 kcal and 4g protein per 30g </span><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; font-style: italic; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">(enough to meet 14.3 % of recommended protein the recommended protein intake of 1-3 year old children)</span></div>\r\n<div style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: .38in; text-indent: -.38in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\"><!-- [if ppt]--><span style=\"font-size: 16.0pt;\"><span style=\"mso-special-format: bullet; font-family: Arial;\">&bull;</span></span><!--[endif]--></div>\r\n<div style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: .38in; text-indent: -.38in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\"><span style=\"font-size: 16.0pt;\"><span style=\"mso-special-format: bullet; font-family: Arial;\">&bull;</span></span><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">Recommended<span style=\"mso-spacerun: yes;\">&nbsp; </span>serving per day: 1-2 packs</span></div>\r\n<p>&nbsp;</p>', '<p>empty</p>', '2019-05-06 02:34:37', '2019-05-06 02:34:37'),
(17, 'Rice-Mongo Crunchies', 'rice-mongo-crunchies', 'rice-mongo-crunchies-2019-05-06-5ccf9dac07bc6.png', '<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; direction: ltr; unicode-bidi: embed; word-break: normal; text-align: center;\"><span style=\"font-size: 15pt; font-family: Arial;\">31.8% of RENI for energy </span></p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; direction: ltr; unicode-bidi: embed; word-break: normal; text-align: center;\">&nbsp;</p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; direction: ltr; unicode-bidi: embed; word-break: normal; text-align: center;\"><span style=\"font-size: 15pt; font-family: Arial;\">14.3</span><span style=\"font-size: 15pt; font-family: Arial;\">% for </span><span style=\"font-size: 15pt; font-family: Arial;\">protein </span><span style=\"font-size: 15pt; font-family: Arial;\">of 1 to 3 year-old children.</span></p>\r\n<p style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\"><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-GB; font-weight: bold; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">Rice-Mongo Crunchies </span><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-GB; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">are nutritious deep-fried snack made from a blend of rice flour and mongo flour</span></p>\r\n<p style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\">&nbsp;</p>\r\n<div style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: .31in; text-indent: -.31in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\"><span style=\"font-size: 16.0pt;\"><span style=\"mso-special-format: bullet; font-family: Arial;\">&bull;</span></span><span style=\"font-size: 16pt; font-family: Arial;\">Contains 580cal and 8g protein per 100g.</span></div>\r\n<p style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\">&nbsp;</p>\r\n<div style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: .31in; text-indent: -.31in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\"><span style=\"font-size: 16.0pt;\"><span style=\"mso-special-format: bullet; font-family: Arial;\">&bull;</span></span><span style=\"font-size: 16pt; font-family: Arial;\">Two packs (30g per pack) of Rice-Mongo </span><span style=\"font-size: 16pt; font-family: Arial;\">crunchies</span><span style=\"font-size: 16pt; font-family: Arial;\"> will provide:&nbsp;</span></div>\r\n<p>&nbsp;</p>', '<p>empty</p>', '2019-05-06 02:36:28', '2019-05-06 02:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `raw_materials`
--

CREATE TABLE `raw_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adoptor_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `raw_materials`
--

INSERT INTO `raw_materials` (`id`, `adoptor_id`, `name`, `extension`, `note`, `quantity`, `created_at`, `updated_at`) VALUES
(2, 2, 'salt', 'kg', 'N/A', 6, '2019-08-15 05:24:01', '2019-08-29 05:30:59'),
(3, 3, 'oil', 'kg', 'N/A', 2, '2019-08-28 08:35:33', '2019-08-29 01:10:30'),
(4, 3, 'sugar', 'kg', 'N/A', 470, '2019-08-28 08:35:44', '2019-08-29 01:10:46');

-- --------------------------------------------------------

--
-- Table structure for table `raw_material_useds`
--

CREATE TABLE `raw_material_useds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `production_id` int(11) NOT NULL,
  `raw_material_id` int(11) NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `raw_material_useds`
--

INSERT INTO `raw_material_useds` (`id`, `production_id`, `raw_material_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 5, 2, '1', '2019-08-16 03:05:49', '2019-08-20 05:48:39'),
(3, 6, 2, '14', '2019-08-20 00:06:13', '2019-08-20 05:45:10'),
(4, 7, 2, '10', '2019-08-22 01:05:43', '2019-08-22 01:05:43'),
(5, 8, 2, '10', '2019-08-22 05:29:52', '2019-08-22 05:29:52'),
(6, 9, 2, '5', '2019-08-22 08:23:53', '2019-08-22 08:23:53'),
(7, 3, 3, '2', '2019-08-28 08:35:56', '2019-08-28 08:35:56'),
(8, 3, 4, '2', '2019-08-28 08:36:01', '2019-08-28 08:36:01'),
(9, 10, 3, '4', '2019-08-29 00:35:07', '2019-08-29 00:35:07'),
(10, 10, 4, '4', '2019-08-29 00:35:12', '2019-08-29 00:35:12'),
(11, 11, 2, '2', '2019-08-29 00:48:29', '2019-08-29 00:48:29'),
(12, 12, 2, '2', '2019-08-29 00:48:36', '2019-08-29 00:48:36'),
(13, 13, 4, '34', '2019-08-29 00:58:46', '2019-08-29 00:58:46'),
(14, 14, 3, '2', '2019-08-29 01:10:30', '2019-08-29 01:10:30'),
(15, 15, 4, '23', '2019-08-29 01:10:46', '2019-08-29 01:10:46');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Region I', 'region-i', '2019-03-11 09:08:19', '2019-03-11 11:06:41'),
(3, 'Region II', 'region-ii', '2019-03-11 09:24:32', '2019-03-11 09:24:32'),
(4, 'Region III', 'region-iii', '2019-03-11 09:26:34', '2019-03-11 09:26:34'),
(5, 'Region IV-A', 'region-iv-a', '2019-03-11 09:48:26', '2019-05-06 05:19:50'),
(6, 'Region V', 'region-v', '2019-03-11 09:48:32', '2019-03-11 09:48:32'),
(7, 'Region VI', 'region-vi', '2019-03-11 09:48:39', '2019-03-11 09:48:39'),
(8, 'Region VII', 'region-vii', '2019-03-11 09:48:45', '2019-03-11 09:48:45'),
(9, 'Region VIII', 'region-viii', '2019-03-11 09:48:55', '2019-03-11 09:48:55'),
(10, 'Region IX', 'region-ix', '2019-03-11 09:49:08', '2019-03-11 09:49:08'),
(11, 'Region X', 'region-x', '2019-03-11 09:49:13', '2019-03-11 09:49:13'),
(12, 'ARMM', 'armm', '2019-03-11 13:16:10', '2019-03-11 13:16:10'),
(13, 'Nation Capital Region - NCR', 'nation-capital-region-ncr', '2019-03-17 09:26:15', '2019-03-17 09:26:15'),
(14, 'Cordillera Administrative Region (CAR)', 'cordillera-administrative-region-car', '2019-05-06 05:11:47', '2019-05-06 05:11:47'),
(15, 'Region IV-B', 'region-iv-b', '2019-05-06 05:20:05', '2019-05-06 05:20:05'),
(16, 'Region XI', 'region-xi', '2019-05-06 06:06:38', '2019-05-06 06:06:38'),
(17, 'Region XII', 'region-xii', '2019-05-06 06:07:30', '2019-05-06 06:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `rejects`
--

CREATE TABLE `rejects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adoptor_id` int(11) NOT NULL,
  `production_id` int(11) NOT NULL,
  `packs` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rejects`
--

INSERT INTO `rejects` (`id`, `adoptor_id`, `production_id`, `packs`, `note`, `created_at`, `updated_at`) VALUES
(2, 2, 7, 3, 'sadsad', '2019-09-10 01:48:58', '2019-09-10 01:48:58');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'User', 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adoptor_id` int(11) NOT NULL,
  `production_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `adoptor_id`, `production_id`, `product_id`, `client_id`, `description`, `quantity`, `total`, `status`, `created_at`, `updated_at`) VALUES
(26, 2, 6, 14, 1, 'ds', 2, 20, 0, '2019-08-29 01:04:28', '2019-08-29 01:04:28'),
(27, 2, 7, 15, 1, NULL, 2, 14, 1, '2019-08-29 01:05:08', '2019-08-29 01:05:08'),
(28, 2, 11, 16, 1, NULL, 2, 14, 1, '2019-08-29 01:05:20', '2019-08-29 01:05:20'),
(29, 2, 12, 17, 1, NULL, 23, 161, 1, '2019-08-29 01:05:26', '2019-08-29 01:05:26'),
(30, 2, 6, 14, 1, NULL, 2, 20, 1, '2019-07-29 01:05:51', '2019-08-29 01:05:51'),
(31, 2, 7, 15, 1, NULL, 2, 140, 1, '2019-07-29 01:06:00', '2019-08-29 01:06:00'),
(32, 2, 11, 16, 1, NULL, 2, 14, 1, '2019-07-29 01:06:07', '2019-08-29 01:06:07'),
(33, 2, 12, 17, 1, NULL, 2, 14, 1, '2019-07-28 16:00:00', '2019-08-29 01:06:13'),
(34, 3, 10, 15, 2, NULL, 23, 161, 1, '2019-08-29 01:10:58', '2019-08-29 01:10:58'),
(35, 3, 13, 16, 2, NULL, 2, 14, 1, '2019-08-29 01:11:05', '2019-08-29 01:11:05'),
(36, 3, 14, 14, 2, NULL, 23, 161, 1, '2019-08-29 01:11:11', '2019-08-29 01:11:11'),
(37, 3, 15, 17, 2, NULL, 23, 161, 1, '2019-08-29 01:11:17', '2019-08-29 01:11:17'),
(38, 3, 10, 15, 2, NULL, 2, 14, 0, '2019-07-29 07:07:14', '2019-08-29 07:07:14'),
(39, 3, 13, 16, 2, NULL, 20, 140, 1, '2019-07-29 07:07:22', '2019-08-29 07:07:22'),
(40, 3, 14, 14, 2, NULL, 23, 161, 1, '2019-07-29 07:07:31', '2019-08-29 07:07:31');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adoptor_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `adoptor_id`, `name`, `address`, `contactNumber`, `created_at`, `updated_at`) VALUES
(1, 2, 'RAHIB P. ABU HALIL', 'Hightway 59, ariman, Gubat, Sorsogon', '09495938992', '2019-06-11 03:04:33', '2019-06-11 03:04:33'),
(2, 3, 'Lie Santos', 'iceland', '09495938992', '2019-06-11 06:22:44', '2019-06-11 06:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '2',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `status` int(11) NOT NULL DEFAULT '1',
  `adoptor_id` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `email_verified_at`, `password`, `image`, `status`, `adoptor_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'FNRI- Food and Nutrition Research Institute', 'admin', 'abuhalilr@gmail.com', NULL, '$2y$10$7R0nFZjPPIKP7KWWuxYxNubmw.tjHmu/DXYOa5mnNyaegWr7Uxxr.', 'fnri-food-and-nutrition-research-institute=2019-05-30=5cef8e4c1eda2.png', 1, 42, NULL, NULL, '2019-09-05 06:55:42'),
(2, 2, 'eTrans-User', 'usersd', 'abohalilr@gmail.com', NULL, '$2y$10$PzlLX6mD8kxWZOuuISUFx.Aw71Kd8QouBduWAv77LKlUhVoY9ui8m', 'etrans-user=2019-04-15=5cb3f10c45f53.png', 0, 2, 'icemK6G085x3qINBg1LmJkWF7Mx9S67CwhaQMEZ3Cqxwrn6jRwGvU3HLatbT', NULL, '2019-04-17 03:26:44'),
(3, 2, 'smaple user', 'testing', 'offusedev@gmail.com', NULL, '$2y$10$NNnejquyaP74cl3YyNd8muUolmwR89xjjkiW0WLCXttNn4dQv.KyG', 'smaple-user-2019-04-04-5ca566fc5c383.png', 1, 3, NULL, '2019-04-03 18:07:56', '2019-04-03 18:07:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adoptors`
--
ALTER TABLE `adoptors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adoptor_equipment`
--
ALTER TABLE `adoptor_equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adoptor_product`
--
ALTER TABLE `adoptor_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adoptor_products`
--
ALTER TABLE `adoptor_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `productions`
--
ALTER TABLE `productions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production_raw_materials`
--
ALTER TABLE `production_raw_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `raw_materials`
--
ALTER TABLE `raw_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raw_material_useds`
--
ALTER TABLE `raw_material_useds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rejects`
--
ALTER TABLE `rejects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adoptors`
--
ALTER TABLE `adoptors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `adoptor_equipment`
--
ALTER TABLE `adoptor_equipment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `adoptor_product`
--
ALTER TABLE `adoptor_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `adoptor_products`
--
ALTER TABLE `adoptor_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `productions`
--
ALTER TABLE `productions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `production_raw_materials`
--
ALTER TABLE `production_raw_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `raw_materials`
--
ALTER TABLE `raw_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `raw_material_useds`
--
ALTER TABLE `raw_material_useds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rejects`
--
ALTER TABLE `rejects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"false\",\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"full_screen\":\"on\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'chart2', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"connections\",\"crud_ajax\",\"etrans\",\"etransmotion\",\"final\",\"phpmyadmin\",\"prac\",\"store\",\"test\",\"websocket\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"final\",\"table\":\"users\"},{\"db\":\"final\",\"table\":\"adoptor_equipment\"},{\"db\":\"final\",\"table\":\"raw_materials\"},{\"db\":\"final\",\"table\":\"suppliers\"},{\"db\":\"final\",\"table\":\"clients\"},{\"db\":\"final\",\"table\":\"employees\"},{\"db\":\"final\",\"table\":\"adoptor_product\"},{\"db\":\"final\",\"table\":\"adoptors\"},{\"db\":\"final\",\"table\":\"adoptor_products\"},{\"db\":\"final\",\"table\":\"audits\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'colab_lights', 'tbl_employee', '{\"sorted_col\":\"`emp_id`  ASC\"}', '2019-05-23 04:22:17'),
('root', 'colab_lights', 'tblrequests', '{\"sorted_col\":\"`RequestById` ASC\"}', '2019-05-27 00:06:51'),
('root', 'crud_ajax', 'users', '{\"sorted_col\":\"`users`.`id`  DESC\"}', '2019-02-04 01:44:36'),
('root', 'ecom', 'products', '{\"sorted_col\":\"`products`.`id`  ASC\"}', '2019-05-22 07:56:41'),
('root', 'ecom', 'transactions', '{\"sorted_col\":\"`transactions`.`id` ASC\"}', '2019-04-15 10:25:17'),
('root', 'final', 'adoptor_equipment', '{\"sorted_col\":\"`adoptor_equipment`.`problem`  DESC\"}', '2019-09-11 05:23:23'),
('root', 'final', 'adoptor_product', '{\"sorted_col\":\"`adoptor_product`.`status` ASC\"}', '2019-09-10 08:03:25'),
('root', 'final', 'adoptors', '{\"sorted_col\":\"`adoptors`.`id`  ASC\"}', '2019-09-05 06:53:07'),
('root', 'final', 'audits', '{\"sorted_col\":\"`audits`.`user_type` ASC\"}', '2019-09-06 01:24:34'),
('root', 'final', 'migrations', '{\"sorted_col\":\"`migrations`.`migration` ASC\"}', '2019-06-19 05:48:40'),
('root', 'final', 'sales', '{\"sorted_col\":\"`sales`.`id`  DESC\"}', '2019-08-29 07:07:59'),
('root', 'prac', 'posts', '{\"sorted_col\":\"`posts`.`view_count`  DESC\"}', '2019-03-05 07:41:10'),
('root', 'prac', 'users', '[]', '2019-03-07 05:29:09');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-09-20 01:28:36', '{\"Console\\/Mode\":\"show\",\"NavigationWidth\":321,\"Console\\/Height\":2.9792000000000005}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `prac`
--
CREATE DATABASE IF NOT EXISTS `prac` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `prac`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(10, 'Laravel', 'laravel', 'laravel-2019-03-06-5c7f3ca50f849.png', '2019-03-05 19:21:09', '2019-03-05 19:21:09'),
(11, 'Python', 'python', 'python-2019-03-06-5c7f3cb017927.png', '2019-03-05 19:21:20', '2019-03-05 19:21:20'),
(12, 'React Js', 'react-js', 'react-js-2019-03-06-5c7f3cbc82c2d.png', '2019-03-05 19:21:32', '2019-03-05 19:21:32'),
(13, 'Vue Js', 'vue-js', 'vue-js-2019-03-06-5c7f3cc55fcbd.jpg', '2019-03-05 19:21:41', '2019-03-05 19:21:41'),
(14, 'Angular Js', 'angular-js', 'angular-js-2019-03-06-5c7f3cd260972.png', '2019-03-05 19:21:54', '2019-03-05 19:21:54'),
(15, 'CodeIgniter', 'codeigniter', 'codeigniter-2019-03-06-5c7f3cda29d2e.png', '2019-03-05 19:22:03', '2019-03-05 19:22:03'),
(16, 'Ruby and Rails', 'ruby-and-rails', 'ruby-and-rails-2019-03-06-5c7f3ce83b66d.png', '2019-03-05 19:22:16', '2019-03-05 19:22:16'),
(17, 'JavaScript', 'javascript', 'javascript-2019-03-06-5c7f5b4dc8d0e.png', '2019-03-05 21:31:58', '2019-03-05 21:31:58'),
(18, 'Semantic UI', 'semantic-ui', 'semantic-ui-2019-03-07-5c80c2fc916fb.png', '2019-03-06 23:06:37', '2019-03-06 23:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(61, 47, 11, '2019-03-05 19:26:02', '2019-03-05 19:26:02'),
(62, 48, 10, '2019-03-05 19:27:31', '2019-03-05 19:27:31'),
(63, 49, 15, '2019-03-05 19:28:17', '2019-03-05 19:28:17'),
(64, 50, 14, '2019-03-05 19:29:38', '2019-03-05 19:29:38'),
(65, 51, 12, '2019-03-05 19:31:12', '2019-03-05 19:31:12'),
(66, 52, 16, '2019-03-05 19:32:32', '2019-03-05 19:32:32'),
(67, 53, 17, '2019-03-05 21:33:06', '2019-03-05 21:33:06'),
(68, 54, 14, '2019-03-06 17:03:38', '2019-03-06 17:03:38'),
(74, 59, 12, '2019-03-18 16:45:35', '2019-03-18 16:45:35'),
(75, 61, 11, '2019-03-18 16:52:44', '2019-03-18 16:52:44'),
(76, 61, 14, '2019-03-18 16:52:44', '2019-03-18 16:52:44'),
(77, 62, 11, '2019-03-18 16:54:26', '2019-03-18 16:54:26'),
(78, 62, 14, '2019-03-18 16:54:26', '2019-03-18 16:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 53, 1, 'this is First comment for first post in first blog for first time', '2019-03-05 23:42:52', '2019-03-05 23:42:52'),
(2, 53, 1, 'this is the second comment for the first post in first blog for the forst time ;)', '2019-03-05 23:43:52', '2019-03-05 23:43:52'),
(7, 52, 2, 'dsadsa', '2019-03-06 16:46:49', '2019-03-06 16:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_22_005557_create_roles_table', 1),
(4, '2019_02_27_075347_create_tags_table', 2),
(5, '2019_02_28_013343_create_categories_table', 3),
(6, '2019_02_28_043515_create_posts_table', 4),
(7, '2019_02_28_043653_create_category_post_table', 4),
(8, '2019_02_28_043716_create_post_tag_table', 4),
(9, '2019_03_04_050738_create_subscribers_table', 5),
(10, '2019_03_05_015837_create_jobs_table', 6),
(11, '2019_03_06_012544_create_post_user_table', 7),
(12, '2019_03_06_071046_create_comments_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `image`, `body`, `view_count`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(47, 1, 'High-level programming language', 'high-level-programming-language', 'high-level-programming-language-2019-03-06-5c7f3dca989cd.jpg', '<p>Python is an interpreted, high-level, general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python has a design philosophy that emphasizes code readability, notably using significant whitespace. It provides constructs that enable clear programming on both small and large scales.</p>', 4, 1, 1, '2019-03-05 19:26:02', '2019-03-06 20:52:52'),
(48, 1, 'Laravel is a free, open-source PHP', 'laravel-is-a-free-open-source-php', 'laravel-is-a-free-open-source-php-2019-03-06-5c7f3e2390408.png', '<p>Laravel is a free, open-source PHP web framework, created by Taylor Otwell and intended for the development of web applications following the model&ndash;view&ndash;controller architectural pattern and based on Symfony.</p>', 4, 1, 1, '2019-03-05 19:27:31', '2019-03-06 18:07:17'),
(49, 1, 'CodeIgniter Software', 'codeigniter-software', 'codeigniter-software-2019-03-06-5c7f3e5141ad2.png', '<p>CodeIgniter is an open-source software rapid development web framework, for use in building dynamic web sites with PHP.&nbsp;<a class=\"q ruhjFe NJLBac fl\" href=\"https://en.wikipedia.org/wiki/CodeIgniter\" data-ved=\"2ahUKEwjPq56RyezgAhVFMewKHQG9ClcQmhMwHnoECAkQAg\">Wikipedia</a></p>', 4, 1, 1, '2019-03-05 19:28:17', '2019-03-06 17:39:12'),
(50, 2, 'AngularJS is a JavaScript-based', 'angularjs-is-a-javascript-based', 'angularjs-is-a-javascript-based-2019-03-06-5c7f3ea1e85ef.png', '<p>AngularJS is a JavaScript-based open-source front-end web framework mainly maintained by Google and by a community of individuals and corporations to address many of the challenges encountered in developing single-page applications.&nbsp;<a class=\"q ruhjFe NJLBac fl\" href=\"https://en.wikipedia.org/wiki/AngularJS\" data-ved=\"2ahUKEwiCttO7yezgAhWDPXAKHeUWArMQmhMwHnoECAMQAg\">Wikipedia</a></p>', 4, 1, 1, '2019-03-05 19:29:38', '2019-03-07 19:48:51'),
(51, 2, 'JavaScript library', 'javascript-library', 'javascript-library-2019-03-06-5c7f3f000aa02.jpg', '<p>React is a JavaScript library for building user interfaces. It is maintained by Facebook and a community of individual developers and companies. React can be used as a base in the development of single-page or mobile applications.&nbsp;<a class=\"q ruhjFe NJLBac fl\" href=\"https://en.wikipedia.org/wiki/React_(JavaScript_library)\" data-ved=\"2ahUKEwjC3N3pyezgAhXYc94KHa4oA5oQmhMwJHoECAYQAg\">Wikipedia</a></p>', 3, 1, 1, '2019-03-05 19:31:12', '2019-03-06 22:20:35'),
(52, 2, 'Ruby on Rails Software', 'ruby-on-rails-software', 'ruby-on-rails-software-2019-03-06-5c7f3f4fc2239.png', '<p>Ruby on Rails, or Rails, is a server-side web application framework written in Ruby under the MIT License. Rails is a model&ndash;view&ndash;controller framework, providing default structures for a database, a web service, and web pages.&nbsp;<a class=\"q ruhjFe NJLBac fl\" href=\"https://en.wikipedia.org/wiki/Ruby_on_Rails\" data-ved=\"2ahUKEwjbmpX_yezgAhWRA4gKHfkcDEYQmhMwHHoECAUQAg\">Wikipedia</a></p>', 4, 1, 1, '2019-03-05 19:32:32', '2019-03-06 16:36:46'),
(53, 1, 'JavaScript High-level programming language', 'javascript-high-level-programming-language', 'javascript-high-level-programming-language-2019-03-06-5c7f5b91b3b2e.png', '<div class=\"r\">\r\n<div class=\"TbwUpd\"><span style=\"background-color: #ffffff; color: #ff6600;\"><cite class=\"iUh30\">https://www.w3schools.com/js/</cite></span></div>\r\n<div class=\"action-menu ab_ctl\">&nbsp;</div>\r\n</div>\r\n<div class=\"s\">\r\n<div><span class=\"st\"><em>JavaScript</em>&nbsp;to program the behavior of web pages. Web pages are not the only place where&nbsp;<em>JavaScript</em>&nbsp;is used. Many desktop and server programs use&nbsp;<em>JavaScript</em>. Node.js is the best known. Some databases, like MongoDB and CouchDB, also use&nbsp;<em>JavaScript</em>&nbsp;as their programming language.</span>\r\n<div class=\"osl\">&lrm;<a class=\"fl\" href=\"https://www.w3schools.com/js/js_intro.asp\">JavaScript Introduction</a>&nbsp;&middot;&nbsp;&lrm;<a class=\"fl\" href=\"https://www.w3schools.com/js/js_examples.asp\">JavaScript Examples</a>&nbsp;&middot;&nbsp;&lrm;<a class=\"fl\" href=\"https://www.w3schools.com/js/js_exercises.asp\">JavaScript Exercises</a>&nbsp;&middot;&nbsp;&lrm;<a class=\"fl\" href=\"https://www.w3schools.com/js/tryit.asp?filename=tryjs_myfirst\">Try it Yourself</a></div>\r\n</div>\r\n</div>', 9, 1, 1, '2019-03-05 21:33:05', '2019-03-14 00:09:17'),
(54, 2, 'Angular js', 'angular-js', 'angular-js-2019-03-07-5c806de9c90ee.jpeg', '<p>n this video, we will work on show post by category and tag. Get Code :: <a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?q=https%3A%2F%2Fgithub.com%2FCipfahim%2FBlog-System-in-Laravel&amp;event=video_description&amp;v=GSHzCcPsIOY&amp;redir_token=2U-Rsz7HjblWL0Fcl2oQJui8sTZ8MTU1MjAwNjE3OUAxNTUxOTE5Nzc5\" target=\"_blank\" rel=\"nofollow\">https://github.com/Cipfahim/Blog-Syst...</a> Subscribe for New Releases! Our Discussion Group :: <a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?q=https%3A%2F%2Fwww.facebook.com%2Fgroups%2F785477854940138%2F&amp;event=video_description&amp;v=GSHzCcPsIOY&amp;redir_token=2U-Rsz7HjblWL0Fcl2oQJui8sTZ8MTU1MjAwNjE3OUAxNTUxOTE5Nzc5\" target=\"_blank\" rel=\"nofollow\">https://www.facebook.com/groups/78547...</a> Facebook - <a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?q=https%3A%2F%2Fwww.facebook.com%2Fprogrammingkitinfo&amp;event=video_description&amp;v=GSHzCcPsIOY&amp;redir_token=2U-Rsz7HjblWL0Fcl2oQJui8sTZ8MTU1MjAwNjE3OUAxNTUxOTE5Nzc5\" target=\"_blank\" rel=\"nofollow\">https://www.facebook.com/programmingk...</a> Twitter - <a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?q=https%3A%2F%2Ftwitter.com%2FCipFahim&amp;event=video_description&amp;v=GSHzCcPsIOY&amp;redir_token=2U-Rsz7HjblWL0Fcl2oQJui8sTZ8MTU1MjAwNjE3OUAxNTUxOTE5Nzc5\" target=\"_blank\" rel=\"nofollow\">https://twitter.com/CipFahim</a> Github - <a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?q=https%3A%2F%2Fgithub.com%2FCipfahim&amp;event=video_description&amp;v=GSHzCcPsIOY&amp;redir_token=2U-Rsz7HjblWL0Fcl2oQJui8sTZ8MTU1MjAwNjE3OUAxNTUxOTE5Nzc5\" target=\"_blank\" rel=\"nofollow\">https://github.com/Cipfahim</a> Join Our Slack Community - <a class=\"yt-simple-endpoint style-scope yt-formatted-string\" spellcheck=\"false\" href=\"https://www.youtube.com/redirect?q=https%3A%2F%2Fgoo.gl%2F82pjgo&amp;event=video_description&amp;v=GSHzCcPsIOY&amp;redir_token=2U-Rsz7HjblWL0Fcl2oQJui8sTZ8MTU1MjAwNjE3OUAxNTUxOTE5Nzc5\" target=\"_blank\" rel=\"nofollow\">https://goo.gl/82pjgo</a></p>\r\n<p>&nbsp;</p>', 2, 1, 1, '2019-03-06 17:03:38', '2019-03-14 00:09:09'),
(59, 1, 'Odit necessitatibus ea sit dignissimos possimus.', 'odit-necessitatibus-ea-sit-dignissimos-possimus', 'odit-necessitatibus-ea-sit-dignissimos-possimus-2019-03-19-5c903baf3ba4d.png', '<p>dsadsadsadsadsad</p>', 0, 0, 1, '2019-03-18 16:45:35', '2019-03-18 16:45:35'),
(61, 1, 'dsadsadsadsadsadsa', 'dsadsadsadsadsadsa', 'dsadsadsadsadsadsa-2019-03-19-5c903d5c9193f.png', '<p>dsadsadsa</p>', 0, 0, 1, '2019-03-18 16:52:44', '2019-03-18 16:52:44'),
(62, 1, 'last title', 'last-title', 'last-title-2019-03-19-5c903dc1e88ce.png', '<p>dsadsadsa</p>', 0, 0, 1, '2019-03-18 16:54:26', '2019-03-18 16:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(99, 47, 3, '2019-03-05 19:26:02', '2019-03-05 19:26:02'),
(100, 47, 4, '2019-03-05 19:26:02', '2019-03-05 19:26:02'),
(101, 47, 5, '2019-03-05 19:26:02', '2019-03-05 19:26:02'),
(102, 48, 3, '2019-03-05 19:27:31', '2019-03-05 19:27:31'),
(103, 48, 4, '2019-03-05 19:27:31', '2019-03-05 19:27:31'),
(104, 48, 5, '2019-03-05 19:27:31', '2019-03-05 19:27:31'),
(105, 49, 3, '2019-03-05 19:28:17', '2019-03-05 19:28:17'),
(106, 49, 4, '2019-03-05 19:28:17', '2019-03-05 19:28:17'),
(107, 49, 5, '2019-03-05 19:28:17', '2019-03-05 19:28:17'),
(108, 49, 6, '2019-03-05 19:28:17', '2019-03-05 19:28:17'),
(109, 50, 1, '2019-03-05 19:29:38', '2019-03-05 19:29:38'),
(110, 50, 6, '2019-03-05 19:29:38', '2019-03-05 19:29:38'),
(111, 50, 7, '2019-03-05 19:29:38', '2019-03-05 19:29:38'),
(112, 51, 1, '2019-03-05 19:31:12', '2019-03-05 19:31:12'),
(113, 51, 6, '2019-03-05 19:31:12', '2019-03-05 19:31:12'),
(114, 51, 7, '2019-03-05 19:31:12', '2019-03-05 19:31:12'),
(115, 52, 3, '2019-03-05 19:32:32', '2019-03-05 19:32:32'),
(116, 52, 4, '2019-03-05 19:32:32', '2019-03-05 19:32:32'),
(117, 52, 5, '2019-03-05 19:32:32', '2019-03-05 19:32:32'),
(118, 53, 1, '2019-03-05 21:33:06', '2019-03-05 21:33:06'),
(119, 53, 5, '2019-03-05 21:33:06', '2019-03-05 21:33:06'),
(120, 53, 6, '2019-03-05 21:33:06', '2019-03-05 21:33:06'),
(121, 53, 7, '2019-03-05 21:33:06', '2019-03-05 21:33:06'),
(122, 54, 1, '2019-03-06 17:03:38', '2019-03-06 17:03:38'),
(123, 54, 6, '2019-03-06 17:03:38', '2019-03-06 17:03:38'),
(124, 54, 7, '2019-03-06 17:03:38', '2019-03-06 17:03:38'),
(134, 59, 3, '2019-03-18 16:45:35', '2019-03-18 16:45:35'),
(135, 61, 3, '2019-03-18 16:52:44', '2019-03-18 16:52:44'),
(136, 61, 4, '2019-03-18 16:52:44', '2019-03-18 16:52:44'),
(137, 61, 6, '2019-03-18 16:52:44', '2019-03-18 16:52:44'),
(138, 62, 5, '2019-03-18 16:54:26', '2019-03-18 16:54:26'),
(139, 62, 6, '2019-03-18 16:54:26', '2019-03-18 16:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `post_user`
--

CREATE TABLE `post_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_user`
--

INSERT INTO `post_user` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(9, 49, 2, '2019-03-05 19:33:32', '2019-03-05 19:33:32'),
(11, 47, 2, '2019-03-05 19:33:36', '2019-03-05 19:33:36'),
(12, 51, 2, '2019-03-05 19:33:42', '2019-03-05 19:33:42'),
(14, 51, 1, '2019-03-05 19:34:55', '2019-03-05 19:34:55'),
(17, 53, 1, '2019-03-05 21:48:07', '2019-03-05 21:48:07'),
(18, 52, 1, '2019-03-05 21:48:30', '2019-03-05 21:48:30'),
(19, 50, 1, '2019-03-05 21:48:37', '2019-03-05 21:48:37'),
(20, 48, 1, '2019-03-05 22:17:43', '2019-03-05 22:17:43'),
(21, 48, 2, '2019-03-06 18:24:02', '2019-03-06 18:24:02'),
(22, 53, 2, '2019-03-06 22:51:46', '2019-03-06 22:51:46'),
(23, 54, 2, '2019-03-06 22:51:48', '2019-03-06 22:51:48'),
(24, 50, 2, '2019-03-07 00:25:51', '2019-03-07 00:25:51'),
(25, 52, 2, '2019-03-07 00:25:53', '2019-03-07 00:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'Author', 'author', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(5, 'abohalilr@gmail.com', '2019-03-04 23:43:41', '2019-03-04 23:43:41'),
(6, 'abuhalilr@gmail.com', '2019-03-18 16:02:22', '2019-03-18 16:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'laravel', 'laravel', '2019-02-27 00:46:17', '2019-02-27 00:46:17'),
(3, 'Node Js', 'node-js', '2019-02-27 16:45:17', '2019-02-27 16:45:17'),
(4, 'React', 'react', '2019-02-27 23:26:00', '2019-02-27 23:26:00'),
(5, 'Node Js', 'node-js', '2019-02-27 23:26:09', '2019-02-27 23:26:09'),
(6, 'CodeIgniter', 'codeigniter', '2019-02-27 23:26:23', '2019-02-27 23:26:23'),
(7, 'Python', 'python', '2019-02-27 23:26:32', '2019-02-27 23:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '2',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `about` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `email_verified_at`, `password`, `image`, `about`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'RAHIB P. ABU HALIL', 'admin', 'admin@rahib.com', NULL, '$2y$10$dpC.6Inb72b885Am.JzTquV5Q3jT8hDq1Ar53GELeW.UDliQce8s.', 'rahib-p-abu-halil=2019-03-06=5c7f627d3854b.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium, tempore a magnam quia, iure est dicta dolorum rerum quod atque ut necessitatibus eligendi possimus in ex. Tempore doloribus ratione laborum.', 'RbzHnRcZAhrg2JjciicGr2A1FPn67ro7GFMcBN6Gb6frwAuRTY8XeLmAAieJ', '2019-03-26 23:31:28', '2019-03-05 22:02:37'),
(2, 2, 'MD.Author', 'author', 'user@rahib.com', NULL, '$2y$10$PAclL/SbR5BKpQd3r.k7NuNiCm2TvSe6gEn7PjEWlhrlRP94A0hN2', 'mdauthor=2019-03-06=5c7f1f3465fbf.jpg', 'dsadsadsadsa', 'JhZfB37bydQKPcvusGiKJ9lQvBSYZcA1k2YNL53fUkiEke79lsW1oWDJ6iSI', '2019-03-12 20:14:18', '2019-03-05 17:15:32'),
(3, 2, 'sample testing account', 'rahib', 'rahib@gmail.com', NULL, '$2y$10$49UxosfWKDiRes2i0amcAu09Jd6Cgu0hZk/S.ylowX/VWFKK1ux.K', 'sample-testing-account=2019-03-07=5c80ac3f4f197.jpg', NULL, 'Mu466FTcSUmAt7wXJhFvQszmnK3OfTFANOacR4bC5FCCkh4m40ltTjRoTqCv', '2019-03-06 21:29:15', '2019-03-06 21:29:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_user`
--
ALTER TABLE `post_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_user_post_id_foreign` (`post_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `post_user`
--
ALTER TABLE `post_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_user`
--
ALTER TABLE `post_user`
  ADD CONSTRAINT `post_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
--
-- Database: `registration`
--
CREATE DATABASE IF NOT EXISTS `registration` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `registration`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_05_09_082002_create_table_users', 1),
(2, '2019_05_09_082434_create_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `store`
--
CREATE DATABASE IF NOT EXISTS `store` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `store`;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_title`, `icon`) VALUES
(22, 'Samsung', 'samsung.png'),
(24, 'Oppo', 'oppo.png'),
(25, 'Cherry Mobile', 'cherry mobile.jpg'),
(26, 'My Phone', 'my phone.jpg'),
(28, 'SKK', 'skk.jpg'),
(29, 'Apple', 'apple.png'),
(30, 'SOUL', 'soul.jpeg'),
(31, 'CYS', 'cys.jpg'),
(34, 'Nokia', 'nokia.png'),
(35, 'Huawei', 'huawei.png'),
(36, 'Vivo', 'vivo.png'),
(37, 'Asus', 'asus.png'),
(38, 'Universal', 'universal.jpg'),
(39, 'ZH & K', 'ZH&K.png'),
(40, 'CKK', 'CKK.png'),
(41, 'Alcatel', 'Alcatel.jpg'),
(42, 'Arc Mobile', 'arc mobile.png'),
(43, 'Star Mobile', 'Star mobile.png'),
(44, 'Blackberry', 'Blackberry.png'),
(45, 'v power', 'v-power.jpg'),
(46, 'HBK', 'hbk.png'),
(47, 'GUDI', 'gudi.jpg'),
(48, 'FDT', 'fdt.jpg'),
(49, 'TYLEX', 'tylex.jpg'),
(50, 'N POWER', 'npower.jpg'),
(51, 'LENOVO', 'lenovo.jpg'),
(52, 'XPERIA', 'sony.png'),
(53, 'LG', 'lg.png'),
(54, 'MI', 'mi.jpg'),
(55, 'QQ', 'qq.jpg'),
(56, 'CHK99', 'chk.jpg'),
(57, 'MSM.HK', 'msm.jfif'),
(58, 'ALIBABA', 'alibaba.jpg'),
(59, 'BAVIN', 'bavin.png'),
(60, 'TRANSCEND', 'transcend.jpg'),
(61, 'Qnet', 'qnet.jpg'),
(62, 'Sandisk', 'sandisk.png'),
(63, 'TNT', 'tnt.jpg'),
(64, 'GLOBE', 'globe.png'),
(65, 'TM', 'tm.png'),
(66, 'SMART', 'smart.svg'),
(67, 'YLIFE', 'ylife.jpg'),
(68, 'XYX', 'xyx.jpg'),
(69, 'JBL', 'jbl.png'),
(70, 'AMG', 'amg.jpg'),
(71, 'PBA', 'pba.png'),
(72, 'Kimi', 'kimi.jpg'),
(73, 'KDS', 'kds.png'),
(74, 'beats', 'beats.webp'),
(76, 'POKEMON', 'pokimon.png'),
(77, 'Stereo headphones', 'headphones stereo.png'),
(78, 'EAR BUDS', 'EAR BUDS.jpg'),
(79, 'hello kitty', 'hello_kitty.gif'),
(80, 'Coby', 'sponsor-coby_logo.png'),
(81, 'Hyundai', 'Hyundai-logo-download-png.png'),
(82, 'HDT', 'HDT-Logo.jpg'),
(83, 'KEYIN', 'keyin.jpg'),
(84, 'B06', 'B06.png'),
(85, 'HTM', 'htm.png'),
(86, 'Monopad', 'monopod.PNG'),
(87, 'SONY', 'sony.png'),
(88, 'KUKU', 'kuku.jpg'),
(89, 'BLUETOOTH', 'bluetooth.png'),
(90, 'JIATONG', 'JIATONG.PNG'),
(91, 'REY BAN', '0_ray-ban_logo-thumb.jpg'),
(92, 'BTS', '59e8c23b314ffb1bfba3d1b2-large.jpg'),
(93, 'NBA', 's-l300.jpg'),
(94, 'SHOCKPROOF', 'shockproof-logo-tablet.png'),
(95, 'INCIPIO', 'incipio_logo-01.png'),
(96, 'ACER', 'download.png'),
(97, 'O+', 'opositive.jpg'),
(98, 'QQ.JDS', 'images.jpg'),
(99, 'Hp', 'download (1).png'),
(100, 'WANG', 'Wanglogo.png'),
(101, 'Q2', 'q2.png'),
(102, 'Y LIFE', 'm069R4ET.jpg'),
(103, '360 ring holder', 'rr.jpg'),
(104, 'titanium', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_image` text NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `total_amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amount`) VALUES
(5, 3, '', 1, 'bag3', 'b3.jpg', 14, 23, 322),
(6, 1, '', 1, 'bag', 'b1.jpg', 14, 453, 6342),
(7, 2, '', 1, 'bag2', 'b2.jpg', 13, 423, 5499),
(8, 4, '', 1, 'bags4', 'b4.jpg', 1, 432, 432),
(9, 6, '', 1, 'bag6', 'b6.jpg', 1, 324, 324),
(10, 5, '', 1, 'bag5', 'b5.jpg', 1, 344, 344);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `icon`) VALUES
(37, 'Headset', 'headset.png'),
(39, 'Cord', 'cord.jpg'),
(40, 'Adaptor', 'adaptor.jpg'),
(41, 'Charger', 'charger.jpg'),
(42, 'Battery', 'battery.png'),
(43, 'SIM CARD', 'sim.png'),
(44, 'Tempered Glass', 'tempered.png'),
(45, 'USB', 'flashdrive.png'),
(46, 'keypad', 'keypad.png'),
(47, 'Memory card', 'memorycard.jpg'),
(48, 'Smartphone', '45457534-smartphone-logo-design-global-theme-vector-template-wireless-mobile-phone-logotype-concept-icon-.jpg'),
(49, 'CAR Charger', 'carcharger.jpg'),
(53, 'T-WOLF', 'TWolf.jpg'),
(55, 'Wireless', 'wireless.jpg'),
(56, 'Power bank', 'powerbank.png'),
(57, 'DVD player', 'dvdplayer.png'),
(60, 'microphone', 'Microphone.png'),
(61, 'monopad', 'monopod.jpg'),
(62, 'Remote', 'remote.PNG'),
(63, 'SPEAKER', 'speaker.png'),
(64, 'JACK', 'audiojack.PNG'),
(65, 'SHADES', 'm_57bdf0f25632a0ad710000f4.jpg'),
(66, 'HAT', 'il_fullxfull.1122069532_huzz.jpg'),
(67, 'CASE', 'slim-clear-soft-tpu-shockproof-protector-cover-case-for-apple-iphone-7-plus_p20160914143939884.jpg'),
(68, 'mouse', 'kx0zh54itfqwsu3grd13.png'),
(69, 'ring stent', 'rr.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `defected_item`
--

CREATE TABLE `defected_item` (
  `def_id` int(11) NOT NULL,
  `buy_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `date_def` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `defected_item`
--

INSERT INTO `defected_item` (`def_id`, `buy_id`, `prod_id`, `date_def`) VALUES
(0, 226, 443, 'Wednesday 30th  May 06:42 PM'),
(0, 463, 415, 'Saturday 9th  June 04:35 PM'),
(0, 427, 318, 'Sunday 10th  June 06:31 PM'),
(0, 635, 531, 'Thursday 14th  June 12:49 PM'),
(0, 566, 342, 'Saturday 16th  June 02:19 PM'),
(0, 539, 456, 'Monday 18th  June 06:20 PM'),
(0, 766, 407, 'Tuesday 19th  June 10:01 AM'),
(0, 813, 315, 'Wednesday 20th  June 07:51 PM'),
(0, 801, 410, 'Wednesday 20th  June 07:55 PM'),
(0, 911, 495, 'Tuesday 26th  June 06:10 PM'),
(0, 985, 344, 'Wednesday 27th  June 09:56 AM'),
(0, 1001, 461, 'Sunday 8th  July 04:04 PM'),
(0, 1166, 349, 'Sunday 15th  July 11:40 AM'),
(0, 978, 315, 'Sunday 15th  July 01:24 PM'),
(0, 944, 191, 'Sunday 15th  July 06:47 PM'),
(0, 1210, 410, 'Sunday 15th  July 07:00 PM'),
(0, 1870, 385, 'Wednesday 22nd  August 10:36 AM');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_wholesale_price` int(11) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `totalAmountInWholeSale` int(11) NOT NULL,
  `totalAmountInRetail` int(11) NOT NULL,
  `qty_alert` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_wholesale_price`, `product_price`, `product_desc`, `product_image`, `quantity`, `totalAmountInWholeSale`, `totalAmountInRetail`, `qty_alert`) VALUES
(26, 44, 22, 'J2 Pro', 25, 100, '', 'tempered Glass.jfif', 3, 75, 300, 2),
(27, 44, 22, 'J7 Core', 20, 100, '', 'tempered Glass.jfif', 8, 160, 800, 2),
(28, 44, 22, 'J7 Pro', 25, 100, '', 'tempered Glass.jfif', 0, 0, 0, 2),
(29, 44, 22, 'J7 Plus', 25, 100, '', 'tempered Glass.jfif', 7, 175, 700, 2),
(30, 44, 22, 'J7 Prime', 25, 100, '', 'tempered Glass.jfif', 2, 50, 200, 2),
(31, 44, 22, 'J5 Pro', 25, 100, '', 'tempered Glass.jfif', 5, 125, 500, 2),
(32, 44, 22, 'J1 Mini', 25, 100, '', 'tempered Glass.jfif', 5, 125, 500, 2),
(33, 44, 22, 'J7 Max', 25, 100, '', 'tempered Glass.jfif', 2, 50, 200, 2),
(34, 44, 22, 'J2 Prime', 25, 100, '', 'tempered Glass.jfif', 4, 100, 400, 2),
(35, 44, 22, 'J7 (2017)', 25, 100, '', 'tempered Glass.jfif', 5, 125, 500, 2),
(36, 44, 22, 'J3 Pro', 25, 100, '', 'tempered Glass.jfif', 5, 125, 500, 2),
(37, 44, 22, 'J5 Prime', 25, 100, '', 'tempered Glass.jfif', 6, 150, 600, 2),
(38, 44, 22, 'J3 Prime', 25, 100, '', 'tempered Glass.jfif', 4, 100, 400, 2),
(39, 44, 22, 'On 7', 35, 100, '', 'tempered Glass.jfif', 6, 210, 600, 2),
(40, 44, 22, 'J1 2016', 25, 100, '', 'tempered Glass.jfif', 7, 175, 700, 2),
(41, 44, 22, 'J2 2016', 25, 100, '', 'tempered Glass.jfif', 10, 250, 1000, 2),
(42, 44, 22, 'J5 2016', 25, 100, '', 'tempered Glass.jfif', 3, 75, 300, 2),
(43, 44, 22, 'J3 2016', 20, 100, '', 'tempered Glass.jfif', 4, 80, 400, 2),
(44, 44, 22, 'J1 2015', 25, 100, '', 'tempered Glass.jfif', 3, 75, 300, 2),
(45, 44, 22, 'J3 2015', 25, 100, '', 'tempered Glass.jfif', 4, 100, 400, 2),
(46, 44, 22, 'J2', 25, 100, '', 'tempered Glass.jfif', 7, 175, 700, 2),
(47, 44, 22, 'J5', 25, 100, '', 'tempered Glass.jfif', 3, 75, 300, 2),
(48, 44, 22, 'S3 I9300', 25, 100, '', 'tempered Glass.jfif', 6, 150, 600, 2),
(49, 44, 22, 'S4 I9500', 20, 100, '', 'tempered Glass.jfif', 4, 80, 400, 2),
(50, 44, 22, 'S5 I9600', 20, 100, '', 'tempered Glass.jfif', 5, 100, 500, 2),
(51, 44, 22, 'S7 Edge', 20, 100, '', 'tempered Glass.jfif', 4, 80, 400, 2),
(52, 44, 22, 'S6 Edge', 25, 100, '', 'tempered Glass.jfif', 4, 100, 400, 2),
(53, 44, 22, 'A7 2017', 25, 100, '', 'tempered Glass.jfif', 7, 175, 700, 2),
(54, 44, 22, 'A8', 25, 100, '', 'tempered Glass.jfif', 2, 50, 200, 2),
(55, 44, 22, 'A3', 25, 100, '', 'tempered Glass.jfif', 1, 25, 100, 2),
(56, 44, 22, 'S7', 25, 100, '', 'tempered Glass.jfif', 1, 25, 100, 2),
(57, 44, 22, 'S8', 25, 100, '', 'tempered Glass.jfif', 4, 100, 400, 2),
(58, 44, 22, 'Note 4 N910', 25, 100, '', 'tempered Glass.jfif', 5, 125, 500, 2),
(59, 44, 22, 'Note 5', 25, 100, '', 'tempered Glass.jfif', 4, 100, 400, 2),
(60, 44, 22, 'Note 3 N9005', 25, 100, '', 'tempered Glass.jfif', 4, 100, 400, 2),
(61, 44, 22, 'Note 2 N7100', 25, 100, '', 'tempered Glass.jfif', 3, 75, 300, 2),
(62, 44, 22, 'G360/G3608', 25, 100, '', 'tempered Glass.jfif', 1, 25, 100, 2),
(63, 44, 22, 'Galaxy win I8552', 25, 100, '', 'tempered Glass.jfif', 0, 0, 0, 2),
(64, 44, 35, 'Nova 2i', 25, 100, '', 'tempered Glass Huawei.jpg', 4, 100, 400, 2),
(65, 44, 35, 'Nova 2 Lite', 25, 100, '', 'tempered Glass Huawei.jpg', 6, 150, 600, 2),
(66, 44, 35, 'Y7 Prime', 25, 100, '', 'tempered Glass Huawei.jpg', 3, 75, 300, 2),
(67, 44, 35, 'P20 Lite', 25, 100, '', 'tempered Glass Huawei.jpg', 3, 75, 300, 2),
(68, 44, 35, 'P20 Plus', 25, 100, '', 'tempered Glass Huawei.jpg', 2, 50, 200, 2),
(69, 44, 35, 'P20', 25, 100, '', 'tempered Glass Huawei.jpg', 7, 175, 700, 2),
(70, 44, 35, 'Y6 2018', 20, 100, '', 'tempered Glass Huawei.jpg', 3, 60, 300, 2),
(71, 44, 35, 'GR5 2017', 25, 100, '', 'tempered Glass Huawei.jpg', 2, 50, 200, 2),
(72, 44, 24, 'Neo 3 R831', 25, 100, '', 'tempered Glass OPPO.jpg', 3, 75, 300, 2),
(73, 44, 24, 'A83', 25, 100, '', 'tempered Glass OPPO.jpg', 0, 0, 0, 2),
(74, 44, 24, 'A71', 20, 100, '', 'tempered Glass OPPO.jpg', 7, 140, 700, 2),
(75, 44, 24, 'F1S / A59', 20, 100, '', 'tempered Glass OPPO.jpg', 2, 40, 200, 2),
(76, 44, 24, 'F3', 25, 100, '', 'tempered Glass OPPO.jpg', 5, 125, 500, 2),
(77, 44, 24, 'F7', 20, 100, '', 'tempered Glass OPPO.jpg', 6, 120, 600, 2),
(78, 44, 24, 'A37', 20, 100, '', 'tempered Glass OPPO.jpg', 6, 120, 600, 2),
(79, 44, 24, 'F5', 20, 100, '', 'tempered Glass OPPO.jpg', 7, 140, 700, 2),
(80, 44, 24, 'A57', 20, 100, '', 'tempered Glass OPPO.jpg', 5, 100, 500, 2),
(81, 44, 24, 'F3 Plus', 20, 100, '', 'tempered Glass OPPO.jpg', 5, 100, 500, 2),
(82, 44, 24, 'A39', 20, 100, '', 'tempered Glass OPPO.jpg', 5, 100, 500, 2),
(83, 44, 24, 'A33', 20, 100, '', 'tempered Glass OPPO.jpg', 5, 100, 500, 2),
(84, 44, 36, 'V3', 25, 100, '', 'tempered Glass VIVO.jpg', 2, 50, 200, 2),
(85, 44, 36, 'V3 Max', 25, 100, '', 'tempered Glass VIVO.jpg', 2, 50, 200, 2),
(86, 44, 36, 'V5 S/y67', 25, 100, '', 'tempered Glass VIVO.jpg', 11, 275, 1100, 2),
(87, 44, 36, 'Y69', 25, 100, '', 'tempered Glass VIVO.jpg', 5, 125, 500, 2),
(88, 44, 36, 'V5 Lite', 25, 100, '', 'tempered Glass VIVO.jpg', 4, 100, 400, 2),
(89, 44, 36, 'Y53', 20, 100, '', 'tempered Glass VIVO.jpg', 9, 180, 900, 2),
(90, 44, 36, 'V7 Plus', 25, 100, '', 'tempered Glass VIVO.jpg', 4, 100, 400, 2),
(91, 44, 36, 'V7', 25, 100, '', 'tempered Glass VIVO.jpg', 2, 50, 200, 2),
(92, 44, 36, 'V9', 25, 100, '', 'tempered Glass VIVO.jpg', 1, 25, 100, 2),
(93, 44, 36, 'Y71', 25, 100, '', 'tempered Glass VIVO.jpg', 8, 200, 800, 2),
(94, 44, 37, 'ZenFone Selfie / ZD551KL', 25, 100, '', 'tempered Glass ASUS.jpg', 5, 125, 500, 2),
(95, 44, 37, 'ZenFone 3 Max / ZC553KL', 25, 100, '', 'tempered Glass ASUS.jpg', 4, 100, 400, 2),
(96, 44, 37, 'ZenFone 3 Laser /  ZC551K2', 25, 100, '', 'tempered Glass ASUS.jpg', 3, 75, 300, 2),
(97, 44, 37, 'ZenFone Selfie /Pro/ ZD552KL', 25, 100, '', 'tempered Glass ASUS.jpg', 4, 100, 400, 2),
(98, 44, 37, 'ZenFone Go 4.5 / ZB452KG', 25, 100, '', 'tempered Glass ASUS.jpg', 2, 50, 200, 2),
(99, 44, 37, 'ZenFone 4 Selfie /ZD553KL', 25, 100, '', 'tempered Glass ASUS.jpg', 4, 100, 400, 2),
(100, 44, 37, 'ZenFone 4 2017 / ZC554KL', 25, 100, '', 'tempered Glass ASUS.jpg', 4, 100, 400, 2),
(101, 44, 37, 'ZenFone 4 Max / ZC554KL', 25, 100, '', 'tempered Glass ASUS.jpg', 3, 75, 300, 2),
(102, 44, 37, 'ZenFone 6 / A600CG', 25, 100, '', 'tempered Glass ASUS.jpg', 2, 50, 200, 2),
(103, 44, 37, 'ZenFone C / ZC451CG', 25, 100, '', 'tempered Glass ASUS.jpg', 2, 50, 200, 2),
(104, 44, 38, 'Universal 5.3', 25, 100, '', 'tempered Glass Universal.jpg', 0, 0, 0, 2),
(105, 44, 38, 'Universal 6.0', 25, 100, '', 'tempered Glass Universal.jpg', 7, 175, 700, 2),
(106, 44, 38, 'Universal 4.0', 25, 100, '', 'tempered Glass Universal.jpg', 2, 50, 200, 2),
(107, 44, 38, 'Universal 5.0', 20, 100, '', 'tempered Glass Universal.jpg', 11, 220, 1100, 2),
(108, 44, 38, 'Universal 5.7', 25, 100, '', 'tempered Glass Universal.jpg', 4, 100, 400, 2),
(109, 44, 38, 'Universal 5.5', 25, 100, '', 'tempered Glass Universal.jpg', 2, 50, 200, 2),
(110, 44, 38, 'Universal 4.3', 25, 100, '', 'tempered Glass Universal.jpg', 7, 175, 700, 2),
(111, 44, 38, 'Universal 4.5', 20, 100, '', 'tempered Glass Universal.jpg', 6, 120, 600, 2),
(112, 44, 38, 'Universal 4.7', 20, 100, '', 'tempered Glass Universal.jpg', 5, 100, 500, 2),
(113, 44, 29, 'iPhone 5g', 20, 100, '', 'tempered Glass apple.jpg', 7, 140, 700, 2),
(114, 44, 29, 'iPhone 6G/6S', 20, 100, '', 'tempered Glass apple.jpg', 11, 220, 1100, 2),
(115, 44, 29, 'iPhone 7G', 25, 100, '', 'tempered Glass apple.jpg', 3, 75, 300, 2),
(116, 44, 29, 'iPhone 7G Plus', 25, 100, '', 'tempered Glass apple.jpg', 2, 50, 200, 2),
(117, 44, 29, 'iPhone 8G', 25, 100, '', 'tempered Glass apple.jpg', 3, 75, 300, 2),
(118, 44, 29, 'iPhone 6 Plus', 25, 100, '', 'tempered Glass apple.jpg', 4, 100, 400, 2),
(119, 44, 29, 'iPhone 4S/4G ', 25, 100, '', 'tempered Glass apple.jpg', 1, 25, 100, 2),
(120, 44, 22, 'J7 Pro Full Screen', 65, 200, '', 'tempered Glass.jfif', 2, 130, 400, 2),
(121, 44, 24, 'A37 Full Screen', 65, 200, '', 'tempered Glass OPPO.jpg', 2, 130, 400, 1),
(122, 44, 36, 'Y69 Full Screen', 65, 200, '', 'tempered Glass VIVO.jpg', 1, 65, 200, 2),
(123, 44, 36, 'Y55s Full Screen', 25, 100, '', 'tempered Glass VIVO.jpg', 1, 25, 100, 2),
(124, 44, 24, 'A83 Full Screen', 65, 200, '', 'tempered Glass OPPO.jpg', 0, 0, 0, 2),
(125, 44, 35, 'Nova 2i Full Screen', 65, 200, '', 'tempered Glass Huawei.jpg', 2, 130, 400, 2),
(126, 44, 24, 'A71 Full Screen', 64, 200, '', 'tempered Glass OPPO.jpg', 2, 128, 400, 2),
(127, 44, 24, 'F3 Plus / R9s Full Screen', 65, 200, '', 'tempered Glass OPPO.jpg', 1, 65, 200, 2),
(128, 44, 29, 'iPhone 6G/6S Full Screen / Privacy', 65, 200, '', 'tempered Glass apple.jpg', 2, 130, 400, 1),
(129, 44, 36, 'V7 PLus Full Screen', 65, 200, '', 'tempered Glass VIVO.jpg', 1, 65, 200, 1),
(130, 44, 22, 'J5 prime Full Screen', 65, 200, '', 'tempered Glass.jfif', 1, 65, 200, 2),
(131, 44, 29, 'iPhone 6G/6S 2 in 1  Full Screen', 80, 250, '', 'tempered Glass apple.jpg', 1, 80, 250, 2),
(132, 44, 22, 'J7  Full Screen', 65, 200, '', 'tempered Glass.jfif', 1, 65, 200, 2),
(133, 44, 36, 'V5 Lite Full Screen', 65, 200, '', 'tempered Glass VIVO.jpg', 1, 65, 200, 2),
(134, 44, 37, 'ZenFone 2 / 2E551ML', 25, 100, '', 'tempered Glass ASUS.jpg', 1, 25, 100, 1),
(135, 44, 37, 'ZenFone 3 Deluxe / ZS570KL', 25, 100, '', 'tempered Glass ASUS.jpg', 2, 50, 200, 1),
(136, 44, 37, 'ZenFone 3 / ZE552KL', 25, 100, '', 'tempered Glass ASUS.jpg', 2, 50, 200, 1),
(137, 44, 37, 'ZenFone 4 / ZE554KL', 25, 100, '', 'tempered Glass ASUS.jpg', 2, 50, 200, 2),
(138, 44, 37, 'ZenFone 5 / ZE620KL', 25, 100, '', 'tempered Glass ASUS.jpg', 6, 150, 600, 1),
(139, 44, 36, 'Y53 Full Screen', 65, 200, '', 'tempered Glass VIVO.jpg', 1, 65, 200, 1),
(140, 44, 22, 'J2 prime Full Screen', 65, 200, '', 'tempered Glass.jfif', 0, 0, 0, 1),
(141, 44, 24, 'F5 Full Screen', 60, 200, '', 'tempered Glass OPPO.jpg', 2, 120, 400, 2),
(142, 44, 22, 'J7 2015  Full Screen', 65, 200, '', 'tempered Glass.jfif', 3, 195, 600, 2),
(143, 44, 36, 'V7 Full Screen', 65, 200, '', 'tempered Glass VIVO.jpg', 1, 65, 200, 2),
(144, 44, 22, 'J7 Prime Full Screen', 60, 200, '', 'tempered Glass.jfif', 0, 0, 0, 2),
(145, 44, 29, 'iPhone 5S Full Screen', 65, 200, '', 'tempered Glass apple.jpg', 1, 65, 200, 2),
(146, 44, 26, 'My 28', 25, 100, '', 'tempered Glass myphone.jpg', 1, 25, 100, 2),
(147, 44, 26, 'My 31', 25, 100, '', 'tempered Glass myphone.jpg', 1, 25, 100, 1),
(148, 44, 26, 'My 87', 25, 100, '', 'tempered Glass myphone.jpg', 3, 75, 300, 2),
(149, 44, 26, 'My 33', 25, 100, '', 'tempered Glass myphone.jpg', 2, 50, 200, 2),
(150, 44, 26, 'My 22', 25, 100, '', 'tempered Glass myphone.jpg', 6, 150, 600, 2),
(151, 44, 26, 'My 92', 25, 100, '', 'tempered Glass myphone.jpg', 6, 150, 600, 2),
(152, 44, 26, 'My A9 DTV', 25, 100, '', 'tempered Glass myphone.jpg', 5, 125, 500, 2),
(153, 44, 26, 'My 93', 25, 100, '', 'tempered Glass myphone.jpg', 5, 125, 500, 2),
(154, 44, 26, 'My 21', 25, 100, '', 'tempered Glass myphone.jpg', 2, 50, 200, 2),
(155, 44, 26, 'My 32', 25, 100, '', 'tempered Glass myphone.jpg', 4, 100, 400, 2),
(156, 44, 26, 'My A5', 25, 100, '', 'tempered Glass myphone.jpg', 4, 100, 400, 2),
(157, 44, 26, 'My A3', 25, 100, '', 'tempered Glass myphone.jpg', 5, 125, 500, 2),
(158, 44, 26, 'My A7', 25, 100, '', 'tempered Glass myphone.jpg', 4, 100, 400, 2),
(159, 44, 26, 'My 77', 25, 100, '', 'tempered Glass myphone.jpg', 4, 100, 400, 2),
(160, 44, 26, 'My 73', 25, 100, '', 'tempered Glass myphone.jpg', 6, 150, 600, 2),
(161, 44, 26, 'My 35', 25, 100, '', 'tempered Glass myphone.jpg', 2, 50, 200, 2),
(162, 44, 26, 'My 71', 25, 100, '', 'tempered Glass myphone.jpg', 3, 75, 300, 2),
(163, 44, 26, 'My 85 DTV', 25, 100, '', 'tempered Glass myphone.jpg', 6, 150, 600, 2),
(164, 44, 26, 'My 82', 25, 100, '', 'tempered Glass myphone.jpg', 2, 50, 200, 2),
(165, 44, 26, 'My 25', 25, 100, '', 'tempered Glass myphone.jpg', 2, 50, 200, 2),
(166, 44, 26, 'My 91 DTV', 25, 100, '', 'tempered Glass myphone.jpg', 1, 25, 100, 2),
(167, 44, 26, 'My 36', 25, 100, '', 'tempered Glass myphone.jpg', 1, 25, 100, 2),
(168, 44, 26, 'My 86', 25, 100, '', 'tempered Glass myphone.jpg', 1, 25, 100, 2),
(170, 42, 26, 'My 82', 170, 380, '', 'battery myPhone.jpg', 0, 0, 0, 1),
(171, 42, 26, 'A848 Dou / S8070', 170, 380, '', 'battery myPhone.jpg', 2, 340, 760, 1),
(172, 42, 26, 'My 28', 205, 380, '', 'battery myPhone.jpg', 1, 205, 380, 1),
(173, 42, 26, 'My 73 / My 76', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1),
(174, 42, 26, 'My 32', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1),
(175, 42, 26, 'My 86', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1),
(176, 42, 26, 'My A10', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1),
(177, 42, 26, 'My A5 DTV', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1),
(178, 42, 26, 'My A6', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1),
(179, 42, 26, 'My 27', 170, 380, '', 'battery myPhone.jpg', 0, 0, 0, 1),
(180, 42, 26, 'My 93 DTV', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1),
(181, 42, 26, 'My 23 /  V45 / My 26', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1),
(182, 42, 26, 'A919', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1),
(183, 42, 26, 'My 89', 170, 380, '', 'battery myPhone.jpg', 2, 340, 760, 1),
(184, 42, 26, 'My 92', 170, 380, '', 'battery myPhone.jpg', 2, 340, 760, 1),
(185, 42, 26, 'My A9', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1),
(186, 42, 26, 'Agua Rio / S5500', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1),
(187, 42, 26, 'My 81', 210, 380, '', 'battery myPhone.jpg', 1, 210, 380, 1),
(188, 42, 26, 'Agua Rio Lite / S4700', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1),
(189, 42, 26, 'My 91', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1),
(190, 42, 26, 'A888g Duo / s8121', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1),
(191, 42, 26, 'My 87', 150, 380, '', 'battery myPhone.jpg', 1, 150, 380, 1),
(192, 42, 26, 'Agua Storm / S6040', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1),
(193, 42, 26, 'My 33', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1),
(194, 42, 26, 'A888 Duo  / S9091', 170, 380, '', 'battery myPhone.jpg', 1, 170, 380, 1),
(195, 42, 25, 'Ace 2', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(196, 42, 25, 'CM - 15H / S10', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(197, 42, 25, 'Flare S3', 170, 380, '', 'Battery cherry mobile.jpg', 2, 340, 760, 1),
(198, 42, 25, 'Flare S6 Lite DTV', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(199, 42, 25, 'Flare S5 mini / CM 13Y', 170, 380, '', 'Battery cherry mobile.jpg', 2, 340, 760, 1),
(200, 42, 25, 'Flare B1 - 100', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(201, 42, 25, 'Flare J2 mini', 170, 380, '', 'Battery cherry mobile.jpg', 2, 340, 760, 1),
(202, 42, 25, 'Flare J2S/cm-14c', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(203, 42, 25, 'Flare S5', 170, 380, '', 'Battery cherry mobile.jpg', 2, 340, 760, 1),
(204, 42, 25, 'Flare J1 2017', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(205, 42, 25, 'Flare J1S', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(206, 42, 25, 'CM-13F', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(207, 42, 25, 'Flare J2 DTV', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(208, 42, 25, 'Flare J3', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(209, 42, 25, 'Flare S Play', 160, 380, '', 'Battery cherry mobile.jpg', 1, 160, 380, 1),
(210, 42, 25, 'Flare Edge 2', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(211, 42, 25, 'Touch 35', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(212, 42, 25, 'Sonic', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(213, 42, 25, 'Q11', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(214, 42, 25, 'Febble', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(215, 42, 25, 'Jade', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(216, 42, 25, 'Urban', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(217, 42, 25, 'Cosmos 1', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(218, 42, 25, 'Thunder', 170, 380, '', 'Battery cherry mobile.jpg', 2, 340, 760, 1),
(219, 42, 25, 'Flare 3', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(220, 42, 25, 'Coal', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(221, 42, 25, 'B100', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(222, 42, 25, 'Omega ', 170, 380, '', 'Battery cherry mobile.jpg', 3, 510, 1140, 1),
(223, 42, 25, 'BW1', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(224, 42, 25, 'Comet', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(225, 42, 25, 'Cosmos 2', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(226, 42, 25, 'Revel', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(227, 42, 25, 'Axis', 170, 380, '', 'Battery cherry mobile.jpg', 2, 340, 760, 1),
(228, 42, 25, 'Fuze ', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(229, 42, 25, 'Flare S2', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(230, 42, 25, 'Cosmos X', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(231, 42, 25, 'Rave', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(232, 42, 25, 'Spectrum', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(233, 42, 25, 'Hyper', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(234, 42, 25, 'Titan', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(235, 42, 25, 'Blaze', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(236, 42, 25, 'Titan TV', 170, 380, '', 'Battery cherry mobile.jpg', 1, 170, 380, 1),
(237, 42, 22, 'J1 2016', 150, 350, '', 'battery samsung.jpg', 0, 0, 0, 1),
(238, 42, 25, 'A3 2016', 170, 350, '', 'battery samsung.jpg', 1, 170, 350, 1),
(239, 42, 22, 'Galaxy W / i8150', 160, 350, '', 'battery samsung.jpg', 1, 160, 350, 1),
(240, 42, 22, 'S5 mini', 170, 380, '', 'battery samsung.jpg', 1, 170, 380, 1),
(241, 42, 22, 'G313H / Galaxy V / Galaxy ACE', 150, 300, '', 'battery samsung.jpg', 1, 150, 300, 1),
(242, 42, 22, 'S4 /  I9500', 170, 380, '', 'battery samsung.jpg', 1, 170, 380, 1),
(243, 42, 22, 'S3 / I9300', 170, 380, '', 'battery samsung.jpg', 3, 510, 1140, 1),
(244, 42, 22, 'J7', 290, 490, '', 'battery samsung.jpg', 1, 290, 490, 1),
(245, 42, 22, 'Galaxy Grand / i9082', 220, 450, '', 'battery samsung.jpg', 0, 0, 0, 1),
(246, 42, 22, 'Note 4 / N90100', 180, 400, '', 'battery samsung.jpg', 1, 180, 400, 1),
(247, 42, 22, 'S7272 / G313 / S7262 / S7270 / G313F', 185, 390, '', 'battery samsung.jpg', 3, 555, 1170, 1),
(248, 42, 22, 'i8160 / S3 mini / S72562 / J1 mini /<br> J105 / i8190 / S7582', 205, 405, '', 'battery samsung.jpg', 3, 615, 1215, 1),
(249, 42, 22, 'J1 ACE / J110', 180, 380, '', 'battery samsung.jpg', 3, 540, 1140, 1),
(250, 42, 22, 'Note N700 / i9220', 285, 550, '', 'battery samsung.jpg', 1, 285, 550, 0),
(251, 42, 22, 'Galaxy Y / S5360 Wave Y / S5380', 180, 380, '', 'battery samsung.jpg', 3, 540, 1140, 1),
(252, 42, 22, 'S3650/S5630/S5560/C3510/<br>B3410/W559/S5600/S5260/<br>5310/F400/L700/C3222', 180, 350, '', 'battery samsung.jpg', 1, 180, 350, 1),
(253, 42, 22, 'Galaxy Ace Advance/i9070/S6800', 170, 350, '', 'battery samsung.jpg', 1, 170, 350, 1),
(254, 42, 22, 'Galaxy Core / G3518', 180, 380, '', 'battery samsung.jpg', 1, 180, 380, 1),
(255, 42, 22, 'S5 / i9600', 250, 480, '', 'battery samsung.jpg', 1, 250, 480, 0),
(256, 42, 22, 'J5 2016', 220, 450, '', 'battery samsung.jpg', 1, 220, 450, 1),
(257, 42, 22, 'Note 2 / N7100 / Eb595675lu', 280, 550, '', 'battery samsung.jpg', 1, 280, 550, 0),
(258, 42, 22, 'Note 3 N9005', 320, 680, '', 'battery samsung.jpg', 1, 320, 680, 1),
(259, 42, 22, 'Note 4 N910/N9108', 300, 650, '', 'battery samsung.jpg', 1, 300, 650, 0),
(260, 42, 22, 'Galaxy Core 2 / G355H', 150, 350, '', 'battery samsung.jpg', 2, 300, 700, 1),
(261, 42, 22, 'Galaxy Core /i8260/i8262', 150, 350, '', 'battery samsung.jpg', 1, 150, 350, 0),
(262, 42, 22, 'Galaxy Core Plus / B185BC<br>Galaxy Start /G350E', 150, 350, '', 'battery samsung.jpg', 2, 300, 700, 0),
(263, 42, 22, 'F250/X208/0520/E250/D720<br>E500/F900/X120/X300/E870', 150, 350, '', 'battery samsung.jpg', 2, 300, 700, 0),
(264, 42, 22, 'Galaxy S 2 / i9100 Galaxy R/i9103', 150, 350, '', 'battery samsung.jpg', 1, 150, 350, 0),
(265, 42, 22, 'Galaxy mini / S5570 Wave 575/s7233', 170, 350, '', 'battery samsung.jpg', 1, 170, 350, 0),
(266, 42, 34, 'BL 4C Original ', 120, 250, '', 'msm-hk-high-quality-battery-for-nokia-bl-4c-6100-6300-7270-9468-39828392-615561f5576606883360e82c0b5369ff-catalog.jpg_200x200q80.jpg_.webp', 2, 240, 500, 1),
(268, 42, 34, 'BL 5BT Original', 120, 250, '', 'bl 5bt.jpg', 2, 240, 500, 1),
(269, 42, 34, 'BL 3F Original', 120, 250, '', 'msm-hk-battery-for-nokia-bl-5j-1491463975-05545841-4c803eff07b89fcedfceb520ee02fb7c-catalog_233.jpg', 1, 120, 250, 1),
(270, 42, 34, 'BL 5CT Original', 120, 250, '', 'pl.jpg', 3, 360, 750, 1),
(271, 42, 34, 'BL 4B Original', 120, 250, '', '5003004-20170414190932-4940646952564261.jpg', 1, 120, 250, 1),
(272, 42, 34, 'BL 4D Orginal', 120, 250, '', 'nok_batt-01_1024x1024.jpg', 0, 0, 0, 1),
(273, 42, 34, 'BL 4L Original ', 120, 250, '', '48700029c749ee619ddce70e85783226.jpg', 3, 360, 750, 1),
(274, 42, 34, 'BL 3L Original', 120, 250, '', '3l.jpg', 2, 240, 500, 1),
(275, 42, 34, 'BL 4J Original', 120, 250, '', '4j.jpg', 2, 240, 500, 1),
(276, 42, 34, 'BL 4U Original', 120, 250, '', '6ce7b42c74c011051eee6580c79f48d8.jpg', 3, 360, 750, 1),
(277, 42, 34, 'BL 5J Original', 120, 250, '', '4j.jpg', 1, 120, 250, 1),
(278, 42, 34, 'BP 5M Original', 120, 250, '', 'f99ab0d5e6e2a86cbb5221532caee288.jpg', 2, 240, 500, 1),
(279, 42, 34, 'BL 6F Original', 120, 250, '', '5003004-20170414190932-4940646952564261.jpg', 1, 120, 250, 0),
(280, 42, 34, 'BL 5B Original', 120, 250, '', '_1_.jpg', 2, 240, 500, 0),
(281, 42, 39, 'ATLAS', 120, 250, '', 'battery ZH&K.jfif', 1, 120, 250, 1),
(282, 42, 39, 'Odyssey Titan/Sacred', 120, 250, '', 'battery ZH&K.jfif', 1, 120, 250, 0),
(283, 42, 39, 'Odyssey Flare', 120, 250, '', 'battery ZH&K.jfif', 1, 120, 250, 1),
(284, 42, 39, 'Pioneer 3', 120, 250, '', 'battery ZH&K.jfif', 2, 240, 500, 1),
(285, 42, 40, 'S13', 120, 250, '', 'battery ckk.jpg', 2, 240, 500, 1),
(286, 42, 40, 'N2', 120, 250, '', 'battery ckk.jpg', 1, 120, 250, 0),
(287, 42, 40, 'Saphire / Snap 2', 120, 250, '', 'battery ckk.jpg', 1, 120, 250, 1),
(288, 42, 40, 'Prime 1', 120, 250, '', 'battery ckk.jpg', 1, 120, 250, 1),
(289, 42, 28, 'Flip', 120, 250, '', 'battery skk.jpg', 2, 240, 500, 0),
(290, 42, 28, 'Steel', 120, 250, '', 'battery skk.jpg', 1, 120, 250, 0),
(291, 42, 28, 'Phoenix G', 120, 250, '', 'battery skk.jpg', 1, 120, 250, 0),
(292, 42, 28, 'Lynx elite', 120, 250, '', 'battery skk.jpg', 2, 240, 500, 0),
(293, 42, 28, 'Aura ', 120, 250, '', 'battery skk.jpg', 1, 120, 250, 0),
(294, 42, 28, 'Lynx Edge', 120, 250, '', 'battery skk.jpg', 1, 120, 250, 0),
(295, 42, 28, 'Mirage S1', 120, 250, '', 'battery skk.jpg', 1, 120, 250, 0),
(296, 42, 28, 'Atom', 120, 250, '', 'battery skk.jpg', 1, 120, 250, 0),
(297, 42, 28, 'Neo Charm', 120, 250, '', 'battery skk.jpg', 2, 240, 500, 0),
(298, 42, 28, 'A15', 120, 250, '', 'battery skk.jpg', 1, 120, 250, 0),
(299, 42, 28, 'LYNX', 120, 250, '', 'battery skk.jpg', 2, 240, 500, 0),
(300, 42, 28, 'Rush Deluxe', 120, 250, '', 'battery skk.jpg', 1, 120, 250, 1),
(301, 42, 41, 'POP C5 / S5036D', 120, 250, '', 'battery alcatel.jpg', 2, 240, 500, 0),
(302, 42, 41, 'Ascend / Y320', 120, 250, '', 'battery alcatel.jpg', 1, 120, 250, 0),
(303, 42, 42, 'Prime 350D <br> Droid 2.0', 120, 250, '', 'battery arc mobile.jpg', 1, 120, 250, 0),
(304, 42, 24, 'BLP51 5', 120, 250, '', 'battery oppo.jfif', 1, 120, 250, 0),
(305, 42, 24, 'BLP55 3', 120, 250, '', 'battery oppo.jfif', 1, 120, 250, 0),
(306, 42, 43, 'SM24C', 120, 250, '', 'battery star mobile.jpg', 1, 120, 250, 0),
(307, 42, 43, 'SM29C', 120, 250, '', 'battery star mobile.jpg', 1, 120, 250, 0),
(308, 42, 43, 'Coffee', 120, 250, '', 'battery star mobile.jpg', 1, 120, 250, 0),
(309, 42, 43, 'SM21C', 120, 250, '', 'battery star mobile.jpg', 1, 120, 250, 0),
(310, 42, 43, 'SM7C', 120, 250, '', 'battery star mobile.jpg', 1, 120, 250, 0),
(311, 42, 44, 'CS2/9300/8520/8700', 120, 250, '', 'battery blackberry.jpeg', 2, 240, 500, 0),
(312, 42, 44, 'U81110/U8500', 120, 250, '', 'battery blackberry.jpeg', 1, 120, 250, 0),
(313, 42, 44, '8100/8110/8220', 120, 250, '', 'battery blackberry.jpeg', 1, 120, 250, 0),
(314, 42, 44, '8800/8820/8830/8350', 120, 250, '', 'battery blackberry.jpeg', 1, 120, 250, 0),
(315, 41, 31, 'CYS ANDROID', 58, 150, '', '38-500x500.jpg', 69, 4002, 10350, 30),
(316, 41, 31, 'CYS  USB TYPE', 50, 150, '', 'no image.jpg', 6, 300, 900, 4),
(317, 41, 45, 'USB 2.1 A', 55, 150, '', 'IMG_20180524_072206.jpg', 47, 2585, 7050, 10),
(318, 41, 46, '2 IN 1/H_170', 55, 150, '', '6b82e23c4845fbdecb853053ca72bd12.jpg', 19, 1045, 2850, 8),
(319, 41, 46, 'HBK 5s', 65, 200, '', '6b82e23c4845fbdecb853053ca72bd12.jpg', 1, 65, 200, 1),
(320, 41, 46, 'HBK 4s', 55, 150, '', '6b82e23c4845fbdecb853053ca72bd12.jpg', 3, 165, 450, 1),
(321, 41, 31, 'CYS 5s', 90, 250, '', '38-500x500.jpg', 2, 180, 500, 1),
(322, 41, 31, 'CYS 4s', 58, 200, '', 'no image.jpg', 2, 116, 400, 1),
(323, 41, 47, 'G-503', 58, 150, '', 'no image.jpg', 9, 522, 1350, 6),
(324, 41, 48, '2 USB', 65, 200, '', 'IMG_20180524_074900[1].jpg', 10, 650, 2000, 6),
(325, 41, 31, '1.5A', 65, 200, '', '61tJzet4w7L._SL1100_.jpg', 1, 65, 200, 5),
(326, 41, 45, '2 USB', 65, 200, '', 'no image.jpg', 1, 65, 200, 5),
(327, 41, 49, 'PORTABLE CHARGER', 55, 150, '', 'download (4).jpg', 7, 385, 1050, 3),
(328, 41, 49, 'TABLET CHARGER', 60, 150, '', '02d6ba40-97b1-44c6-a2d2-d924ab3dce8e_1.cc0858528e76795e5354b1fa633c2349.jpeg', 6, 360, 900, 2),
(329, 41, 50, 'TV PLUS CHARGER', 65, 200, '', '12-volts-tv-plus-chargeradaptor-3169-45344174-995464f9644d0cda516898bd30d6e97b-product.jpg', 6, 390, 1200, 2),
(330, 41, 36, '2IN1 CHARGER', 45, 130, '', 'IMG_20180524_073049.jpg', 27, 1215, 3510, 4),
(331, 41, 51, '2IN1 CHARGER', 45, 130, '', 'IMG_20180524_073043.jpg', 1, 45, 130, 4),
(332, 41, 52, '2IN1 CHARGER', 45, 130, '', 'IMG_20180524_073055.jpg', 4, 180, 520, 4),
(333, 41, 53, '2IN1 CHARGER', 45, 130, '', 'IMG_20180524_073115.jpg', 2, 90, 260, 4),
(334, 41, 54, '2IN1 CHARGER', 45, 130, '', 'IMG_20180524_073105.jpg', 1, 45, 130, 4),
(335, 41, 35, '2IN1 CHARGER', 45, 130, '', 'IMG_20180524_073137.jpg', 1, 45, 130, 4),
(336, 41, 50, 'Universal NP0619', 65, 200, '', 'IMG_20180524_073017.jpg', 5, 325, 1000, 4),
(337, 41, 31, 'UNIVERSAL C0619', 65, 200, '', 'IMG_20180524_072906.jpg', 1, 65, 200, 4),
(338, 41, 55, 'LCD UNIVERSAL CHARGER', 60, 150, '', 'IMG_20180524_072931.jpg', 0, 0, 0, 4),
(339, 41, 48, 'UNIVERSAL FDT', 60, 150, '', 'IMG_20180524_072921.jpg', 2, 120, 300, 1),
(340, 41, 22, 'GALAXY S4', 55, 150, '', '20120323113408067.JPG', 0, 0, 0, 5),
(341, 41, 22, 'GALAXY S7', 55, 150, '', 'd.jpg', 4, 220, 600, 4),
(342, 41, 49, 'LCD UNIVERSAL CHARGER', 55, 150, '', 'universal charger np0619.jpg', 49, 2695, 7350, 18),
(343, 41, 49, 'TY-12', 35, 100, '', '3g-gold-universal-charger-250x250.jpg', 5, 175, 500, 2),
(344, 41, 49, 'TY-2', 42, 100, '', 'sku_55629_1.jpg', 43, 1806, 4300, 18),
(345, 41, 55, 'UNIVERSAL100', 39, 100, '', 'download.jpg', 11, 429, 1100, 5),
(346, 41, 46, 'AC- 3U SMALLPIN', 38, 100, '', 'NOKIA_HOME_CHARGER_SMALL_PIN__93032_zoom.jpg', 5, 190, 500, 4),
(347, 41, 56, 'CHK-6101', 35, 100, '', 'download (1).jpg', 0, 0, 0, 4),
(348, 41, 57, 'MSM.HK ANDROID', 58, 150, '', 'WAP_2315.jpg', 2, 116, 300, 1),
(349, 39, 58, 'L22 5G/5S', 50, 150, '', '5s.jpg', 2, 100, 300, 3),
(350, 39, 58, 'L22 4G', 35, 100, '', 'alibaba-l22-lightning-data-and-charging-cable-for-iphone-ipad-or-itouch-7104-33991748-1576854ff8d076a21c710ad0d4b0e81d-catalog_233.jpg', 0, 0, 0, 3),
(351, 39, 59, 'CB- 071', 65, 200, '', 'cap-iphone-5_nl9f-nw.jpg', 1, 65, 200, 2),
(352, 39, 58, 'L22 V3', 35, 100, '', 's-l300.jpg', 1, 35, 100, 1),
(353, 39, 58, 'L22 i9500', 35, 100, '', '61zRJwOKy9L._SX425_.jpg', 29, 1015, 2900, 10),
(354, 40, 59, 'dl-ac50', 150, 310, '', 'bavin-9882-4628301-1.jpg', 1, 150, 310, 1),
(355, 41, 59, 's5/s6/s7', 190, 421, '', 'bavin-6375-184135-1.jpg', 0, 0, 0, 1),
(356, 41, 59, 'i5/i6/i7', 170, 370, '', 's-l1600.jpg', 1, 170, 370, 1),
(357, 40, 58, 'ali-592', 130, 270, '', '2018-01-13-3-348x348.png', 1, 130, 270, 1),
(358, 41, 59, 'auto- idi  5/i6/i7', 190, 390, '', 'bavin-pc727-dual-usb-slot-24a-quick-charger-travel-adapter-for-android-281816060.jpg', 1, 190, 390, 1),
(359, 45, 60, '2GB', 110, 250, '', 'transcend-usb-530x210.jpg', 0, 0, 0, 1),
(360, 45, 60, '4GB', 140, 300, '', 'transcend-usb-530x210.jpg', 1, 140, 300, 1),
(361, 45, 60, '8GB', 150, 350, '', 'transcend-usb-530x210.jpg', 2, 300, 700, 1),
(362, 45, 60, '16GB', 210, 450, '', 'transcend-usb-530x210.jpg', 2, 420, 900, 1),
(363, 46, 61, 'B25', 300, 499, '', 'cbe575d71c76966ca0680606c63f1cab.jpg', 1, 300, 499, 1),
(364, 46, 61, 'B23', 300, 499, '', '739a9737d4c58bd5904da3e647454883.jpg', 2, 600, 998, 1),
(365, 46, 61, 'B20', 300, 499, '', 'fb1096025a5ce8e09721d86c09b2362d.jpg', 2, 600, 998, 1),
(366, 46, 61, 'B26', 300, 499, '', '944d18318fc88e29b9597f7bac2520fe.jpg', 2, 600, 998, 1),
(367, 46, 61, 'B19', 300, 499, '', '51430dfdaf34793a82540a9bb1a4786f.jpg', 1, 300, 499, 1),
(368, 46, 61, 'Q1', 520, 999, '', 'd3cedb759610dbf9abe82e4b41b14a8d.jpg', 0, 0, 0, 1),
(369, 46, 61, 'POWER1', 520, 999, '', 'bba74db9105db597ad97838020859002.jpg', 0, 0, 0, 1),
(370, 46, 61, 'POWER2', 650, 1200, '', '9e8db9802f55496cd07284c331e013ab.jpg', 0, 0, 0, 1),
(371, 46, 22, 'V1200', 320, 599, '', '6f5296d7338ec1d0dbb5a64a2728f9b4_tn.jpg', 2, 640, 1198, 1),
(372, 46, 34, '3310 A', 420, 899, '', 'maxresdefault.jpg', 2, 840, 1798, 1),
(373, 46, 34, '3310 B', 280, 550, '', 'maxresdefault.jpg', 4, 1120, 2200, 1),
(374, 46, 25, 'B7', 480, 750, '', 'a4ae0f7d2e7ac6816741e4de190f973c.jpg', 1, 480, 750, 1),
(375, 46, 22, 'B310', 300, 499, '', 'B310_white__97134_zoom.png', 0, 0, 0, 1),
(376, 46, 22, 'B312', 300, 499, '', 'samsung-b312-brio.jpg', 1, 300, 499, 1),
(377, 46, 34, '105', 280, 499, '', '837724802.g_0-w_g.jpg', 2, 560, 998, 1),
(378, 46, 34, 'L800M', 300, 499, '', 'IMG_20180524_072824.jpg', 0, 0, 0, 1),
(379, 47, 62, '8GB', 195, 390, '', 'images.jpg', 0, 0, 0, 1),
(380, 47, 62, '4GB', 190, 350, '', 'Sandisk-4GB-Memory-Card.jpg', 2, 380, 700, 1),
(381, 37, 36, 'XE680', 150, 350, '', 'VESCA-VESCA-ORIGINAL-VIVO-EARPHONE-SDL849436716-1-6d475.jpg', 1, 150, 350, 1),
(382, 48, 61, 'fusion f1', 1450, 2199, '', 'IMG_20180524_072751.jpg', 1, 1450, 2199, 1),
(383, 48, 61, 'passion P6', 1550, 2600, '', 'qnet-mobile-qnet-passion-p6-280227704.jpg', 0, 0, 0, 1),
(385, 48, 24, 'F5', 1850, 2999, '', 'Untitled-5.jpg', 0, 0, 0, 1),
(386, 48, 36, 'V7 PLUS', 1850, 2950, '', 'Vivo-V7.jpg', 1, 1850, 2950, 1),
(387, 43, 64, 'LTE SIM', 20, 50, '', 'globe-prepaid1.png', 25, 500, 1250, 2),
(388, 43, 65, 'LTE SIM', 18, 40, '', 'tm lte prepaid sim.jpg', 7, 126, 280, 4),
(389, 43, 63, 'LTE SIM', 21, 40, '', 'logo_fb.png', 6, 126, 240, 3),
(390, 43, 66, 'LTE SIM', 22, 50, '', 'smart.jpg', 7, 154, 350, 3),
(391, 41, 22, 'TYPE C', 53, 200, '', 'USB-C-Cable-Nylon-Braided-Fast-Charger-Data-Sync-Cord-for-Samsung-Galaxy-Note-8-S8-Plus-LG-V30-V20-G5-G6-Google-Pixel-Nexus-5X-6p-Moto-Z2.jpg', 6, 318, 1200, 2),
(392, 41, 46, 'G600', 35, 100, '', '31m2tQ76dEL._SY355_.jpg', 2, 70, 200, 2),
(394, 49, 46, '2.1 A 5s', 65, 200, '', 'lidu-2-1a-car-charger-attached-usb-cable-apple-iphone-5-5s-6-neworldmobile-1605-12-neworldmobile@1.jpg', 3, 195, 600, 1),
(395, 49, 49, '3 in 1 car charger', 65, 180, '', 'Car_Charger__86506.1435352030.500.750.jpg', 0, 0, 0, 1),
(396, 49, 46, '5 in 1', 75, 200, '', '41e+8ADM5FL._SX425_.jpg', 0, 0, 0, 1),
(397, 49, 45, 'car2.1A', 110, 250, '', '41e+8ADM5FL._SX425_.jpg', 1, 110, 250, 1),
(398, 39, 58, 'ALI-L103 ', 120, 250, '', '51rBybaweWL._SL500_AC_SS350_.jpg', 0, 0, 0, 1),
(399, 41, 58, 'ALI-3590', 150, 280, '', '3ae1f6efbba4b0636487dc582c256af3.jpg', 1, 150, 280, 1),
(400, 41, 58, 'ali-3589', 120, 250, '', '3ae1f6efbba4b0636487dc582c256af3.jpg', 0, 0, 0, 1),
(401, 41, 58, 'ali-595', 120, 250, '', 'download (1).jpg', 3, 360, 750, 1),
(402, 41, 57, 'pc618 5s', 110, 350, '', '2f046f3d89055a31689823d901911aee.jpg', 1, 110, 350, 1),
(403, 39, 58, 'l68', 60, 180, '', 'IMG_20180524_072703.jpg', 4, 240, 720, 2),
(404, 39, 58, 'ali-L31', 60, 180, '', 'Original-case-Remax-USB-cable-100cm-Charging-Data-Sync-Support-2-1A-Current-for-iPhone4-iPhone.jpg_640x640.jpg', 1, 60, 180, 1),
(405, 39, 58, 'ALI-L88 5s', 120, 250, '', 'alibaba-l88-3m-sync-and-charge-lightning-cable-for-androidsmartphones-and-tablets-white-3353-76378751-b524adf983ebb2aca2dc04649a8c1749-product.jpg', 2, 240, 500, 1),
(406, 39, 41, 'ali-L88', 120, 200, '', 'alibaba-l88-3m-sync-and-charge-lightning-cable-for-androidsmartphones-and-tablets-white-3353-76378751-b524adf983ebb2aca2dc04649a8c1749-product.jpg', 2, 240, 400, 1),
(407, 37, 68, 'XY-1', 40, 150, '', 'headset_xyx_universal_1512671521_f3b121f0.jpg', 36, 1440, 5400, 10),
(408, 37, 24, 'K-117', 35, 100, '', 'no image.jpg', 4, 140, 400, 6),
(409, 37, 22, 'SL-208', 35, 100, '', 'no image.jpg', 19, 665, 1900, 6),
(410, 37, 30, 'SL-89', 30, 100, '', 'sl69-m.jpg', 13, 390, 1300, 6),
(411, 37, 24, '3 IN 1 PERFUME', 35, 100, '', 'no image.jpg', 4, 140, 400, 5),
(412, 37, 69, 'T180A', 45, 100, '', '01_119_165.jpg', 3, 135, 300, 5),
(413, 37, 70, 'SN-04', 45, 100, '', 's-l1600.jpg', 3, 135, 300, 5),
(414, 37, 71, '1OO HEADSET', 35, 100, '', 's-l1600.jpg', 3, 105, 300, 5),
(415, 37, 30, 'SL69-M', 35, 100, '', 'sl69-m.jpg', 3, 105, 300, 5),
(416, 37, 45, 'VP-088', 50, 150, '', '2018-01-03-5-348x348.png', 2, 100, 300, 5),
(417, 37, 45, 'VP-H009', 50, 150, '', '2018-01-03-5-348x348.png', 1, 50, 150, 5),
(418, 37, 72, 'sl-808', 35, 100, '', 's-l1600.jpg', 2, 70, 200, 3),
(419, 37, 36, 'VO-520', 35, 100, '', 'vivo-handsfree-in-ear-headset-with-3-5mm-jack-500x500.jpg', 0, 0, 0, 5),
(420, 37, 22, 'FASHION UNIVERSAL', 35, 100, '', 's-l1600.jpg', 3, 105, 300, 5),
(421, 37, 73, 'K-6425', 35, 100, '', 'avantree-sacool-pro-in-ear-bluetooth-stereo-headset-with-microphoneblackred-with-free-kds-beats-0022-100db-stereo-subwooferover-the-ear-headphones-black-1506147769-94725583-08a4f3b817b28359150e651776669e04-product.jpg', 0, 0, 0, 5),
(422, 37, 74, 'Q-069', 35, 100, '', '41QEHFpFW4L.jpg', 6, 210, 600, 5),
(423, 37, 22, 'S6', 35, 100, '', '51noDSD2J0L._SL1000_.jpg', 3, 105, 300, 5),
(424, 51, 75, 'm316', 90, 200, '', 'main-qimg-fbefe79c959c2ab4dc604e05fa6cc93e-c.jpg', 1, 90, 200, 1),
(425, 52, 75, 'm313', 90, 200, '', 'main-qimg-fbefe79c959c2ab4dc604e05fa6cc93e-c.jpg', 1, 90, 200, 1),
(426, 53, 75, 'Q6', 220, 380, '', 'images.jpg', 1, 220, 380, 1),
(427, 39, 76, 'GO', 65, 150, '', 'pokemon-go-pokeball-micro-usb-cable-2321-0141447-931cdc1868fe772317f1b455c85f5e32-catalog_233.jpg', 1, 65, 150, 1),
(428, 55, 77, 'MS-18', 300, 650, '', 'high-quality-ms-t8-hanging-ear-stereo-portable.jpg', 1, 300, 650, 1),
(429, 55, 77, 'MS-T11', 350, 750, '', 'rBVaSVozeDuAC2ZqAAKhAUHUrSU901.jpg', 0, 0, 0, 1),
(430, 55, 45, 'VP-B01', 280, 580, '', '999999-615822003339.jpg', 1, 280, 580, 1),
(431, 55, 22, 'R7', 280, 580, '', 'images (3).jpg', 1, 280, 580, 1),
(432, 55, 22, 'A8', 280, 580, '', 'images (3).jpg', 1, 280, 580, 1),
(433, 55, 54, '4.1 EDR', 120, 350, '', '999999-615822003339.jpg', 1, 120, 350, 1),
(434, 55, 78, 'C300', 280, 550, '', 'images.png', 0, 0, 0, 1),
(435, 55, 24, 'OPPO 380', 150, 350, '', 'IMG_20180524_072310.jpg', 1, 150, 350, 1),
(436, 55, 35, 'huawie 380', 150, 350, '', 'IMG_20180524_072330.jpg', 1, 150, 350, 1),
(437, 55, 36, 'vivo 380', 150, 350, '', 'IMG_20180524_072318.jpg', 1, 150, 350, 1),
(438, 41, 22, '15w', 130, 380, '', '3498090_2751eac7-9d80-40c8-b160-6bdb8c1ff5b6.jpg', 1, 130, 380, 1),
(439, 41, 36, 'vivo 350', 150, 350, '', '514A9ZM7a2L.jpg', 0, 0, 0, 1),
(440, 56, 36, '8800mah', 120, 250, '', 'IMG_20180524_072435.jpg', 1, 120, 250, 1),
(441, 39, 59, 'cb-061', 150, 280, '', 'bavin-ba86-2-in-1-charger-and-data-cables-11meter-with-freebampd-super-bass-zipper-in-ear-earphone-color-may-vary-1501080132-75246113-7ce055781903357453a0e1631c5bb449-catalog_233.jpg', 0, 0, 0, 1),
(442, 39, 59, 'cb-095', 170, 270, '', 'bavin-ca270-usb-data-cable-silver-100795408.jpg', 1, 170, 270, 1),
(443, 39, 59, 'cb-033', 180, 280, '', 'CABLE-033.jpg', 1, 180, 280, 1),
(444, 39, 59, 'cb-051 5s', 120, 250, '', 'bavin-ca270-usb-data-cable-silver-100795408.jpg', 4, 480, 1000, 1),
(445, 37, 79, 'L-14', 90, 200, '', '2016-hello-kitty-in-ear-girls-kids-gift-storage.jpg', 1, 90, 200, 1),
(446, 37, 58, 'ali-538', 75, 200, '', 'alibaba-a-538-original-samsung-headsetblack-1492992417-64920261-11d926f1dc2bcad8001a5097d61aa301-product.jpg', 0, 0, 0, 1),
(447, 57, 80, '15.8', 1500, 1999, '', '9c-mobile-dvd-player-hd-screen-portable-dvd-player-p37314292-10008213-big.jpg', 1, 1500, 1999, 1),
(448, 57, 80, '12.8', 1250, 1799, '', 'images (4).jpg', 1, 1250, 1799, 1),
(449, 60, 81, 'DMD-5500', 220, 480, '', '81e-GnVRhOL._SL1500_.jpg', 1, 220, 480, 1),
(450, 60, 82, 'P-98 PRO', 170, 380, '', '81e-GnVRhOL._SL1500_.jpg', 0, 0, 0, 1),
(451, 60, 83, 'KY-8001', 150, 350, '', '81e-GnVRhOL._SL1500_.jpg', 0, 0, 0, 1),
(452, 55, 84, 'B06 899', 480, 899, '', '63939_700-w500.jpg', 0, 0, 0, 1),
(453, 55, 74, 'B 503', 500, 999, '', 'sports-bluetooth-headset-fm-micro-sd-iphone-samsung-xiaomi-oppo-justbuyonline-1509-03-justbuyonline@2.jpg', 1, 500, 999, 1),
(454, 55, 85, 'Mini-503tf+fm', 280, 580, '', 'sports-bluetooth-headset-fm-micro-sd-iphone-samsung-xiaomi-oppo-justbuyonline-1509-03-justbuyonline@2.jpg', 1, 280, 580, 1),
(455, 61, 86, 'asas 2018', 45, 120, '', '51jSXYZ059L._SY355_.jpg', 1, 45, 120, 1),
(456, 37, 29, 'earpods', 105, 350, '', 'Apple_EarPods_35446297_02.jpg', 1, 105, 350, 1),
(457, 62, 83, 'rm-133e', 45, 100, '', 'images (5).jpg', 4, 180, 400, 5),
(458, 41, 22, '2A', 60, 180, '', 'IMG_20180524_071758.jpg', 0, 0, 0, 1),
(459, 41, 36, '2A', 60, 180, '', 'IMG_20180524_071959.jpg', 1, 60, 180, 1),
(460, 41, 29, '2A', 60, 180, '', 'IMG_20180524_071927.jpg', 1, 60, 180, 1),
(461, 41, 24, '2A', 60, 180, '', 'IMG_20180524_071837.jpg', 1, 60, 180, 1),
(462, 41, 35, '2A', 60, 180, '', 'IMG_20180524_071852.jpg', 0, 0, 0, 1),
(463, 37, 69, 'XB450BT', 180, 380, '', '500_500_productGfx_2ef092aae6fad6ea328843cca20e6c3b.jpg', 2, 360, 760, 1),
(464, 37, 87, 'MDR-XB450AP', 180, 380, '', 'l_10145514_001.jpg', 1, 180, 380, 1),
(465, 37, 30, 'J-03', 120, 280, '', 'B1089873253.jpg', 1, 120, 280, 1),
(466, 37, 69, 'MS-TV1D', 180, 380, '', '500_500_productGfx_2ef092aae6fad6ea328843cca20e6c3b.jpg', 0, 0, 0, 1),
(467, 42, 34, 'BL-5C C/A', 38, 100, '', 'bl5c._nokia-bl-5c-battery.jpg', 5, 190, 500, 2),
(468, 42, 34, 'BL-4C C/A', 28, 100, '', 'bl5c._nokia-bl-5c-battery.jpg', 5, 140, 500, 2),
(469, 42, 34, 'BL-5CB C/A', 38, 100, '', 's-l640.jpg', 0, 0, 0, 1),
(470, 42, 34, 'BL-4D C/A', 38, 100, '', 's-l1000.jpg', 6, 228, 600, 2),
(471, 42, 34, 'BL-4U C/A', 38, 100, '', 'nokia-bl-4u-original-imaeaqhzexjayjpk.jpeg', 0, 0, 0, 2),
(472, 42, 34, 'BP-4L C/A', 35, 100, '', 'nokia-bp-4l-original-imaeastrp5thhbmm.jpeg', 2, 70, 200, 2),
(473, 42, 34, 'BL-5B C/A', 38, 100, '', 'rBVaEFb-FguAFdh-AADUep-mo78595.jpg', 2, 76, 200, 2),
(474, 42, 34, 'BL-4B C/B', 38, 100, '', 's-l300 (1).jpg', 2, 76, 200, 1),
(475, 42, 34, 'BL-4S C/A', 38, 100, '', 'nokia-bl-4s-original-imadykh4vwzhkhhh.jpeg', 6, 228, 600, 1),
(476, 42, 34, 'BL-5F', 38, 100, '', '4138lgt+GLL.jpg', 1, 38, 100, 1),
(477, 42, 34, 'BL-5CAC/A', 38, 100, '', 'B1155060214.jpg', 1, 38, 100, 1),
(478, 63, 88, 'AS-006', 109, 250, '', '831272236_1_1000x700.jpg', 12, 1308, 3000, 3),
(479, 63, 88, 'AS-035', 120, 250, '', 'kuku-as035-multimedia-speaker-red-1481597515-7259839-559512d203d86d7258ff49803bc80fb1-product.jpg', 2, 240, 500, 1),
(480, 63, 88, 'AS-021', 220, 450, '', 'kuku-as-021-speaker-multimedia-x-bass-with-usb-amp-auxillary-cable-for-pc-laptop-smartphones-1490919742-59759341-d39cf8a582ce30e8464807a1891dfd70-product.jpg', 2, 440, 900, 1),
(481, 63, 88, 'AS-032', 180, 350, '', 'kuku-as029-multimedia-speaker-green-1506847521-30747914-648f3f5bae89dec5128114d7d1a88f8a-catalog_233.jpg', 0, 0, 0, 1),
(482, 63, 88, 'D-02A', 90, 200, '', '876bea_bfc23425bf344c0b9769c3adff996e7a.jpg', 0, 0, 0, 1),
(483, 63, 88, 'AS-030', 200, 480, '', 'as-028-double-multimedia-speaker-black-3233-60238701-88b71dbb134f60c7daea2b035c6240ff-catalog_233.jpg', 2, 400, 960, 1),
(484, 63, 88, 'HELLOY KITTY', 180, 400, '', 'no image.jpg', 1, 180, 400, 1),
(485, 63, 89, 'h-966', 180, 380, '', '2017-water-cube-bluetooth-speaker-h-966-outdoor.jpg', 1, 180, 380, 1),
(486, 63, 69, 'm168', 250, 550, '', '954973373_w0_h0_6_7.jpg', 1, 250, 550, 1),
(487, 63, 89, 'HF-Q3', 320, 650, '', 'new-hf-q3-multifunction-mini-bluetooth-speakers.jpg', 1, 320, 650, 1),
(488, 63, 89, 'H-977', 180, 380, '', 'h-977-bluetooth-speaker-new-mini-water-cube.jpg', 1, 180, 380, 1),
(489, 63, 89, 'SLC-055', 210, 450, '', 'hqdefault.jpg', 1, 210, 450, 1),
(490, 63, 89, 'N10', 155, 250, '', 'Hands-Free-Mini-Portable-Sport-Wireless-Speaker.jpg', 0, 0, 0, 1),
(491, 63, 89, 'K8', 205, 450, '', '1569_640_SPEAKER-BLUETOOTH-LED-KUKU-K8_596c4366330d3.png', 1, 205, 450, 1),
(492, 63, 88, 'AM-449', 2350, 680, '', '7fd8afaf3614a968a2db0c02cee7db9e.jpg', 1, 2350, 680, 1),
(493, 63, 88, 'AM-161USB', 350, 650, '', 'kuku-amfmsw-3-band-radio-usbsdtf-mp3-music-player-portable-rechargeable-with-bluetooth-speaker-bt666-212349768.jpg', 0, 0, 0, 1),
(494, 63, 88, 'AM-270AC', 180, 390, '', 'kuku-am-941ar-3-band-radio-2519-81165428-008b9e82f15278b277d5218958d5184c-catalog_233.jpg', 0, 0, 0, 1),
(495, 63, 88, 'TM-501', 130, 250, '', '41eoBltNJzL._SX425_.jpg', 3, 390, 750, 1),
(496, 63, 89, 'FD-1', 180, 380, '', 'kuku-as-105-mini-bluetooth-speaker-red-1463540022-3064964-f16c13a82019e528a7ec41315d56783c-catalog_233.jpg', 1, 180, 380, 1),
(497, 63, 89, 'MHS-002', 250, 580, '', 'Universal-Drum-Style-Portable-Bluetooth-Speaker-with-Strap-MHS002-box.jpg', 0, 0, 0, 1),
(498, 64, 90, '711 1.5', 25, 50, '', 'ep1800bk.jpg', 12, 300, 600, 3),
(499, 64, 90, '435S TV PLUS', 28, 85, '', 'images (6).jpg', 0, 0, 0, 3),
(500, 64, 90, '736 DVD', 25, 50, '', 'images (7).jpg', 2, 50, 100, 3),
(501, 64, 90, '735 SPEAKER', 20, 50, '', 'AArUe.jpg', 0, 0, 0, 1),
(502, 65, 91, 'SUN GLASS', 28, 50, '', 'Ray-Ban-Cosmo-Sunglasses.jpeg', 160, 4480, 8000, 1),
(503, 39, 70, 'universal 100', 30, 100, '', 'cablecharger.png', 73, 2190, 7300, 1),
(504, 37, 69, 'headset50', 17, 50, '', 'images (1).png', 73, 1241, 3650, 1),
(505, 66, 92, 'CAP 100', 55, 100, '', 'LS865_WINE_800x.progressive.jpg', 26, 1430, 2600, 10),
(506, 66, 93, 'CAP 150', 75, 150, '', 'thumb.jpg', 33, 2475, 4950, 15),
(507, 47, 62, '8.gb C/B', 75, 150, '', '61tJzet4w7L._SL1100_.jpg', 0, 0, 0, 1),
(508, 40, 57, 'PC617', 65, 150, '', '719hkv7VEyL._SX425_.jpg', 3, 195, 450, 1),
(509, 67, 94, 'flare s6plus', 30, 100, '', 'slim-clear-soft-tpu-shockproof-protector-cover-case-for-apple-iphone-7-plus_p20160914143939884.jpg', 3, 90, 300, 1),
(510, 67, 94, 'flare s6', 30, 100, '', 'slim-clear-soft-tpu-shockproof-protector-cover-case-for-apple-iphone-7-plus_p20160914143939884.jpg', 1, 30, 100, 1),
(511, 67, 94, 'omegalite3', 30, 100, '', 'slim-clear-soft-tpu-shockproof-protector-cover-case-for-apple-iphone-7-plus_p20160914143939884.jpg', 3, 90, 300, 1),
(512, 67, 94, 'desirer6mini', 30, 100, '', 'slim-clear-soft-tpu-shockproof-protector-cover-case-for-apple-iphone-7-plus_p20160914143939884.jpg', 2, 60, 200, 1),
(513, 67, 94, 'flarej2mini', 30, 100, '', 'slim-clear-soft-tpu-shockproof-protector-cover-case-for-apple-iphone-7-plus_p20160914143939884.jpg', 3, 90, 300, 1),
(514, 67, 94, 'flarej2s', 30, 100, '', 'slim-clear-soft-tpu-shockproof-protector-cover-case-for-apple-iphone-7-plus_p20160914143939884.jpg', 1, 30, 100, 1),
(515, 67, 94, 'flaresplay', 30, 100, '', 'slim-clear-soft-tpu-shockproof-protector-cover-case-for-apple-iphone-7-plus_p20160914143939884.jpg', 1, 30, 100, 1),
(516, 67, 94, 'flares6mini', 30, 100, '', 'slim-clear-soft-tpu-shockproof-protector-cover-case-for-apple-iphone-7-plus_p20160914143939884.jpg', 1, 30, 100, 1),
(517, 67, 94, 'flarelite', 30, 100, '', 'slim-clear-soft-tpu-shockproof-protector-cover-case-for-apple-iphone-7-plus_p20160914143939884.jpg', 1, 30, 100, 1),
(518, 44, 37, 'zenfone4 max 5.2 zc520kl', 25, 100, '', 'Zenfone-GO-5.5-Tempered-Glass-by-ZyForce.jpg', 6, 150, 600, 2),
(519, 44, 37, 'zenfone go 5.5 zb551kl', 25, 100, '', 'Zenfone-GO-5.5-Tempered-Glass-by-ZyForce.jpg', 5, 125, 500, 2),
(520, 44, 37, 'zenfone 5/zs620/e', 25, 100, '', 'Zenfone-GO-5.5-Tempered-Glass-by-ZyForce.jpg', 5, 125, 500, 1),
(521, 44, 37, 'zc554k', 25, 100, '', 'Zenfone-GO-5.5-Tempered-Glass-by-ZyForce.jpg', 1, 25, 100, 1),
(522, 46, 61, 'B22', 300, 499, '', 'b22.jpg', 3, 900, 1497, 1),
(523, 46, 61, 'B21', 300, 499, '', 'b21.jpg', 1, 300, 499, 1),
(524, 46, 61, 'D7', 400, 799, '', 'b22.jpg', 2, 800, 1598, 1),
(525, 55, 22, 'samsung 38', 125, 350, '', 'no image.jpg', 0, 0, 0, 1),
(526, 41, 37, 'asus 380', 130, 380, '', 'no image.jpg', 1, 130, 380, 1),
(527, 41, 24, 'OPPO 380', 125, 380, '', 'no image.jpg', 0, 0, 0, 1),
(528, 41, 29, '5W USB Power Adaptor', 170, 450, '', '5W USB Power Adaptor.jpg', 1, 170, 450, 1),
(529, 37, 22, 'y9 original', 150, 380, '', 'samsung original headset.jpg', 2, 300, 760, 1),
(530, 39, 38, 'ALL in 1', 38, 180, '', 'allinone.jpeg', 2, 76, 360, 1),
(531, 37, 68, 'XY-3', 45, 150, '', 'xyxearphone.jpg', 21, 945, 3150, 1),
(532, 39, 58, 'l22 TYPE C', 50, 150, '', 'typec.jpg', 1, 50, 150, 1),
(533, 37, 22, 'K-112', 35, 100, '', 'k-112.jpg', 6, 210, 600, 5),
(534, 47, 62, '2GB', 193, 300, '', '2gbmemory.jpg', 2, 386, 600, 1),
(535, 42, 22, 'J5 2015/ Grand Prime/J2 Prime', 230, 480, '', 'battery samsung.jpg', 2, 460, 960, 1),
(536, 42, 22, 'J1 2015', 240, 390, '', 'battery samsung.jpg', 1, 240, 390, 1),
(537, 49, 45, '2.1A', 75, 180, '', 'no image.jpg', 4, 300, 720, 1),
(538, 41, 57, 'pC618 4s', 140, 350, '', 'junction-one-8089-228727-1.jpg', 2, 280, 700, 1),
(539, 41, 57, 'PC618 android', 98, 350, '', 'pc618.jpg', 1, 98, 350, 1),
(540, 41, 38, 'PSP 5V', 70, 180, '', '71RrVFM1GYL._SX342_.jpg', 1, 70, 180, 1),
(541, 44, 35, 'y5 2018', 20, 100, '', '2017-newest-model-2-5D-9H-0.jpg_220x220.jpg', 4, 80, 400, 1),
(542, 44, 22, 'j4', 20, 100, '', '71VI0CkH1+L._SY355_.jpg', 6, 120, 600, 1),
(543, 44, 22, 'j6', 20, 100, '', '71VI0CkH1+L._SY355_.jpg', 6, 120, 600, 1),
(544, 44, 24, 'f1', 20, 100, '', 'b4b9d987-56c1-47bc-c439-ff12bc063fbe.jpg', 4, 80, 400, 1),
(545, 44, 25, 'flare j1', 20, 100, '', 'IMG_20141204_224233_zpse3ea9c95.jpg', 5, 100, 500, 1),
(546, 44, 25, 'flare s5', 20, 100, '', 'IMG_20141204_224233_zpse3ea9c95.jpg', 3, 60, 300, 1),
(547, 44, 25, 'flare j3 lite', 20, 100, '', 'IMG_20141204_224233_zpse3ea9c95.jpg', 3, 60, 300, 1),
(548, 64, 90, '435 1.5m portable', 25, 50, '', '3-5mm-AV-A-V-Audio-Video-TV-Cable-Cord-Lead-For-Audiovox-Portable-DVD-Player.jpg', 10, 250, 500, 1),
(549, 44, 87, 'xa', 30, 100, '', 'sony.jpg', 3, 90, 300, 1),
(550, 44, 87, 'c3', 30, 100, '', 'sony.jpg', 1, 30, 100, 1),
(551, 44, 87, 'c4', 30, 100, '', 'sony.jpg', 1, 30, 100, 1),
(552, 44, 87, 'c5', 30, 100, '', 'sony.jpg', 1, 30, 100, 1),
(553, 44, 87, 'm5', 30, 100, '', 'sony.jpg', 1, 30, 100, 1),
(554, 44, 53, 'G3', 30, 100, '', 'lg.jpg', 1, 30, 100, 1),
(555, 44, 53, 'K5', 30, 100, '', 'lg.jpg', 1, 30, 100, 1),
(556, 44, 53, 'V10', 30, 100, '', 'lg.jpg', 1, 30, 100, 1),
(557, 44, 53, 'G3 STYLUS', 30, 100, '', 'lg.jpg', 2, 60, 200, 1),
(558, 44, 35, 'Y3ii', 25, 100, '', '71vVgneCBmL._SY355_.jpg', 1, 25, 100, 1),
(559, 44, 35, 'p8', 25, 100, '', '71vVgneCBmL._SY355_.jpg', 1, 25, 100, 1),
(560, 44, 35, 'p9', 25, 100, '', '71vVgneCBmL._SY355_.jpg', 2, 50, 200, 1),
(561, 44, 35, '4c', 25, 100, '', '71vVgneCBmL._SY355_.jpg', 1, 25, 100, 1),
(562, 44, 35, 'G9lite', 30, 100, '', '71vVgneCBmL._SY355_.jpg', 1, 30, 100, 1),
(563, 44, 51, 'a2020', 25, 100, '', 'lenovo.jpg', 2, 50, 200, 1),
(564, 44, 51, 'a2010', 25, 100, '', 'lenovo.jpg', 2, 50, 200, 1),
(565, 44, 51, 'a600/p70/a6010/k3', 25, 100, '', 'lenovo.jpg', 2, 50, 200, 1),
(566, 44, 51, 'a5000', 25, 100, '', 'lenovo.jpg', 0, 0, 0, 1),
(567, 44, 51, 'a6020', 25, 100, '', 'lenovo.jpg', 1, 25, 100, 1),
(568, 44, 51, 's90', 25, 100, '', 'lenovo.jpg', 2, 50, 200, 1),
(569, 44, 51, 'vibe x', 25, 100, '', 'lenovo.jpg', 1, 25, 100, 1),
(570, 44, 96, 'Z630', 30, 100, '', 'ACER.jpg', 1, 30, 100, 1),
(571, 44, 96, 'liquid x2', 25, 100, '', 'ACER.jpg', 3, 75, 300, 1),
(572, 44, 97, 'ultra lite', 25, 100, '', 'b4b9d987-56c1-47bc-c439-ff12bc063fbe.jpg', 2, 50, 200, 1),
(573, 44, 97, '360alpha plus', 25, 100, '', 'b4b9d987-56c1-47bc-c439-ff12bc063fbe.jpg', 2, 50, 200, 1),
(574, 44, 97, 'crunch', 25, 100, '', 'b4b9d987-56c1-47bc-c439-ff12bc063fbe.jpg', 2, 50, 200, 1),
(575, 44, 97, 'vent 4G', 25, 100, '', 'b4b9d987-56c1-47bc-c439-ff12bc063fbe.jpg', 2, 50, 200, 1),
(576, 44, 97, 'upsized', 25, 100, '', 'b4b9d987-56c1-47bc-c439-ff12bc063fbe.jpg', 1, 25, 100, 1),
(577, 44, 43, 'play click', 30, 100, '', 'starmobile.jpg', 3, 90, 300, 1),
(578, 44, 43, 'play plus', 25, 100, '', 'starmobile.jpg', 2, 50, 200, 1),
(579, 40, 98, 'adaptor 50', 18, 50, '', 'app-a1265_01_3.jpg', 10, 180, 500, 3),
(580, 40, 98, 'adaptor 120', 35, 120, '', 'app-a1265_01_3.jpg', 4, 140, 480, 1),
(581, 40, 98, 'car100', 45, 100, '', 'download (2).jpg', 2, 90, 200, 1),
(582, 40, 98, 'samsung adaptor', 25, 100, '', 'item_XL_6293640_3562401.jpg', 4, 100, 400, 1),
(583, 68, 99, 'm316', 100, 200, '', 'c05086013.png', 1, 100, 200, 1),
(584, 56, 59, 'voltron', 175, 380, '', 'BAVIN_VOLTRON_POWER_BANK_1024x1024.jpg', 1, 175, 380, 1),
(585, 56, 58, 'ali-yj215', 160, 370, '', 'd9145074d1f66653e0e468147238c315.jpg', 0, 0, 0, 1),
(586, 56, 100, 'PURE 11800mah', 160, 350, '', 'no image.jpg', 1, 160, 350, 1),
(587, 56, 100, 'PURE10800mah', 150, 340, '', 'no image.jpg', 0, 0, 0, 1),
(588, 56, 22, '180000mah', 160, 360, '', '10000mAh-3-USB-Port-Portable-External-Battery-Charger-Power-Bank.jpg', 1, 160, 360, 1),
(589, 48, 22, 's9plus', 1750, 2950, '', 'Galaxy-S9-Plus-1.jpeg', 0, 0, 0, 1),
(590, 53, 25, 'flare s6', 20, 100, '', 'bec1642c887a70334a3f024bacef83e7.jpg', 7, 140, 700, 1),
(591, 42, 25, 'flare s6', 155, 355, '', 'images (1).jpg', 1, 155, 355, 1),
(592, 44, 26, 'a10', 20, 4, '', 'bec1642c887a70334a3f024bacef83e7.jpg', 100, 2000, 400, 1),
(593, 44, 29, 'privacy 5s', 60, 200, '', 'privacy.webp', 1, 60, 200, 1),
(594, 44, 29, 'privacy 6s', 60, 200, '', 'privacy.webp', 1, 60, 200, 1),
(595, 68, 101, 'BT MOUSE', 140, 350, '', 'mouse.jpeg', 1, 140, 350, 1),
(596, 63, 88, 'AM 339', 370, 750, '', 'AM399.jpg', 0, 0, 0, 1),
(597, 63, 88, 'AM 067', 347, 680, '', '925fc5963a5a26c35c84d57ae0b2ca7a_tn.jpg', 1, 347, 680, 1),
(598, 63, 89, 'C308', 230, 450, '', '51Cr4q0PoYL._SL500_AC_SS350_.jpg', 6, 1380, 2700, 1);
INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_wholesale_price`, `product_price`, `product_desc`, `product_image`, `quantity`, `totalAmountInWholeSale`, `totalAmountInRetail`, `qty_alert`) VALUES
(599, 63, 89, 'chargep+', 390, 890, '', 'bose_digital_bluetooth_1517372206_ad07717d.jpg', 1, 390, 890, 1),
(600, 48, 22, 'J7 Pro', 1700, 2999, '', 'ph-galaxy-j7-2017-sm-j730gzdgxtc-backgold-69641655.jpg', 0, 0, 0, 1),
(601, 41, 22, 'samsung c/b', 40, 150, '', 'no image.jpg', 5, 200, 750, 1),
(602, 41, 102, '2IN1 CHARGER', 55, 150, '', 'asus-18w-charger-originalauthentic-w-micro-usb-cable-for-asusmobile-phone-etc-black-4614-33583032-9153904d691fca10d2e47aa04e8fb96e-catalog.jpg_340x340q80.jpg_.webp', 2, 110, 300, 1),
(603, 42, 26, 'rio craze s4010', 140, 350, '', 'download (2).jpg', 1, 140, 350, 1),
(604, 42, 22, 'g360 core prime', 218, 390, '', 'download (6).jpg', 1, 218, 390, 1),
(605, 42, 25, 'cm-2f marble', 135, 350, '', 'cm-2F-img1-1000x1000.jpg', 1, 135, 350, 1),
(606, 42, 40, 'crater', 130, 350, '', '367db65b81404bff99f2ae99f4aee4e7.jpg', 1, 130, 350, 1),
(607, 42, 26, 'my-96dtv', 140, 350, '', 'batery.jpg', 1, 140, 350, 1),
(608, 44, 25, 'flare j7', 25, 100, '', 'bec1642c887a70334a3f024bacef83e7.jpg', 2, 50, 200, 1),
(609, 41, 59, '3.4a', 235, 480, '', 'bavin.jpg', 1, 235, 480, 1),
(610, 41, 59, '4.4a', 295, 650, '', 'bavin-44a-4-ports-led-touch-lamp-charger-for-android-micro-8503-98069185-e87c68ba71ada41f89d68f7b36ed408f-catalog_233.jpg', 0, 0, 0, 1),
(611, 41, 59, '3a', 165, 390, '', '101360695-ef414f400160303975f304a207a675c3.jpg', 0, 0, 0, 1),
(612, 41, 59, '2.4a', 175, 420, '', 'bavin-24a-dual-usb-fast-charger-high-efficiency-quick-chargingtravel-adapter-for-android-2432-53016452-9be388fe86a90a6a0b124dbad0fb54af-catalog_233.jpg', 1, 175, 420, 1),
(613, 42, 45, 'ch-s8china ', 130, 290, '', 'no image.jpg', 1, 130, 290, 1),
(614, 42, 45, 'ch-s7mini/j3mini/j7mini/j27/g5mini', 130, 290, '', 'no image.jpg', 1, 130, 290, 1),
(615, 42, 45, 'ch-x9/v7/v7+/f5/f1s/f3[5.5]', 130, 290, '', 'no image.jpg', 2, 260, 580, 1),
(616, 42, 45, 'ch-f1smini/f3mini', 130, 290, '', 'no image.jpg', 3, 390, 870, 1),
(617, 42, 45, 'ch-a8', 130, 290, '', 'no image.jpg', 1, 130, 290, 1),
(618, 42, 45, 'ch-j7', 130, 290, '', 'no image.jpg', 1, 130, 290, 1),
(619, 42, 45, 'ch-s7pro', 130, 290, '', 'no image.jpg', 1, 130, 290, 1),
(620, 44, 24, 'f5 youth', 20, 100, '', 'images (2).jpg', 5, 100, 500, 2),
(621, 44, 36, 'y83', 20, 100, '', 'images (2).jpg', 5, 100, 500, 2),
(622, 44, 36, 'y85', 20, 100, '', 'images (2).jpg', 5, 100, 500, 2),
(623, 44, 36, 'y81', 20, 100, '', 'images (2).jpg', 2, 40, 200, 2),
(624, 44, 36, 'x21', 20, 100, '', 'images (2).jpg', 5, 100, 500, 2),
(625, 56, 96, '7800mAh', 175, 385, '', 'no image.jpg', 2, 350, 770, 1),
(626, 42, 45, 'ch-note8', 130, 290, '', 'no image.jpg', 1, 130, 290, 1),
(627, 42, 45, 'ch-x9/v7/v7+/f5/f1s/f3[5.0]', 130, 290, '', 'no image.jpg', 2, 260, 580, 1),
(628, 44, 24, 'F7 YOUTH', 20, 100, '', 'no image.jpg', 3, 60, 300, 2),
(629, 41, 45, 'VP-C023', 62, 200, '', 'no image.jpg', 11, 682, 2200, 4),
(630, 37, 24, 'Q-111', 35, 100, '', 'no image.jpg', 20, 700, 2000, 8),
(631, 37, 22, 'GALAXY S6', 35, 100, '', 'no image.jpg', 9, 315, 900, 41),
(632, 48, 22, 'j7 pro mini', 1200, 2350, '', 'no image.jpg', 0, 0, 0, 1),
(633, 48, 22, 'a6+', 1200, 2350, '', 'no image.jpg', 0, 0, 0, 1),
(634, 69, 103, 'oppo /samsung/vivo', 10, 35, '', 'no image.jpg', 50, 500, 1750, 20),
(635, 39, 59, 'cb-037', 75, 220, '', 'ss.jpg', 5, 375, 1100, 5),
(636, 39, 59, 'cb-037 android', 70, 210, '', 'ss.jpg', 19, 1330, 3990, 5),
(637, 67, 29, 'mobius 5g/5s', 70, 180, '', 'mobius.jpg', 2, 140, 360, 1),
(638, 67, 29, 'mobius 6g/6s', 70, 180, '', 'mobius.jpg', 4, 280, 720, 1),
(639, 67, 29, 'mobius 6g+/6s+', 70, 180, '', 'mobius.jpg', 1, 70, 180, 1),
(640, 67, 24, 'mobius a71', 70, 180, '', 'mobius.jpg', 2, 140, 360, 1),
(641, 67, 24, 'mobius f5', 70, 180, '', 'mobius.jpg', 0, 0, 0, 1),
(642, 67, 24, 'mobius a37', 70, 180, '', 'mobius.jpg', 3, 210, 540, 1),
(643, 67, 24, 'mobius a83', 70, 180, '', 'mobius.jpg', 1, 70, 180, 1),
(644, 67, 24, 'mobius a59/f1s', 70, 180, '', 'mobius.jpg', 1, 70, 180, 1),
(645, 67, 24, 'mobius F7 ', 70, 180, '', 'mobius.jpg', 1, 70, 180, 1),
(646, 67, 24, 'mobius F7 YOUTH', 80, 200, '', 'mobius.jpg', 2, 160, 400, 1),
(647, 67, 36, 'mobius y53', 70, 180, '', 'mobius.jpg', 1, 70, 180, 1),
(648, 67, 22, 'mobius j2 prime', 70, 180, '', 'mobius.jpg', 0, 0, 0, 1),
(649, 67, 22, 'mobius j8 2018', 80, 200, '', 'mobius.jpg', 3, 240, 600, 1),
(650, 67, 22, 'mobius j4 2018', 80, 200, '', 'mobius.jpg', 2, 160, 400, 1),
(651, 67, 22, 'mobius j6 2018', 80, 200, '', 'mobius.jpg', 2, 160, 400, 1),
(652, 67, 37, 'mobius zb555kl', 80, 200, '', 'mobius.jpg', 2, 160, 400, 1),
(653, 67, 22, 's7', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 105, 300, 1),
(654, 67, 22, 'note 8', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 4, 140, 400, 1),
(655, 67, 22, 's8', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 105, 300, 1),
(656, 67, 22, 's8+', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 70, 200, 1),
(657, 67, 22, 's6 edge', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 1, 35, 100, 1),
(658, 67, 22, 'S7 Edge', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 1, 35, 100, 1),
(659, 67, 22, 's6', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 1, 35, 100, 1),
(660, 67, 22, 'a5 2017', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 70, 200, 1),
(661, 67, 22, 'note 5', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 70, 200, 1),
(662, 67, 22, 's3', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 105, 300, 1),
(663, 67, 22, 'j2 2016', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 75, 300, 1),
(664, 67, 22, 'j710/2016', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1),
(665, 67, 22, 'j5/2015', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 1, 25, 100, 1),
(666, 67, 22, 'j5 prime', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1),
(667, 67, 22, 'j6 2018', 30, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 90, 300, 1),
(668, 67, 22, 'j4/2018', 30, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 90, 300, 1),
(669, 67, 22, 'j2pr0 2018', 30, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 90, 300, 1),
(670, 67, 22, 'j7 2015/j7 core', 30, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 90, 300, 1),
(671, 67, 22, 'j7 plus', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 75, 300, 1),
(672, 67, 22, 'j7 pro', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 75, 300, 1),
(673, 67, 22, 'j7 prime', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1),
(674, 67, 22, 'j2 prime', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 5, 125, 500, 1),
(675, 67, 22, 'j3 prime', 50, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 1, 50, 100, 1),
(676, 67, 35, 'GR5/2017', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 1, 35, 100, 1),
(677, 67, 35, 'nova 2i/mate 10 lite', 35, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 70, 200, 1),
(678, 67, 35, 'mate 10', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1),
(679, 67, 35, 'nova 2 lite', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1),
(680, 67, 36, 'y6 2018', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1),
(681, 67, 36, 'y53 2017', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1),
(682, 67, 36, 'y69', 30, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 1, 30, 100, 1),
(683, 67, 36, 'v9', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 0, 0, 0, 1),
(684, 67, 103, 'v5', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 1, 25, 100, 1),
(685, 67, 24, 'F7 YOUTH', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 75, 300, 1),
(686, 67, 24, 'F7 ', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 1, 25, 100, 1),
(687, 67, 24, 'a59/f1s', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 1, 25, 100, 1),
(688, 67, 24, 'f3 plus', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 3, 75, 300, 1),
(689, 67, 24, 'F5', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 7, 175, 700, 1),
(690, 67, 24, 'a37', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1),
(691, 67, 24, 'a83', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1),
(692, 67, 24, 'a71', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1),
(693, 67, 24, 'a39', 25, 100, '', 'Ultra-slim-soft-shockproof-back-cover-tpu.jpg', 2, 50, 200, 1),
(694, 44, 24, 'a3s', 25, 100, '', 'no image.jpg', 5, 125, 500, 2),
(695, 44, 35, 'nova3i', 25, 100, '', 'no image.jpg', 5, 125, 500, 2),
(696, 37, 104, 'micro-HD902', 45, 150, '', 's-l300.jpg', 17, 765, 2550, 5),
(697, 37, 36, 'HI-FI', 50, 200, '', 's-l300.jpg', 4, 200, 800, 2),
(698, 37, 24, 'HI-FI', 50, 200, '', 's-l300.jpg', 2, 100, 400, 2),
(699, 37, 35, 'HI-FI', 50, 200, '', 's-l300.jpg', 3, 150, 600, 2),
(700, 37, 29, 'HI-FI', 50, 200, '', 's-l300.jpg', 3, 150, 600, 1),
(701, 37, 37, 'HI-FI', 50, 200, '', 's-l300.jpg', 6, 300, 1200, 1),
(702, 63, 89, 'XQ3', 190, 390, '', 'XQ3-Round-Speaker-With-Phone-Holder-Stand10-1000x1000.jpg', 2, 380, 780, 1),
(703, 63, 89, 'WS-888A', 180, 380, '', 'XQ3-Round-Speaker-With-Phone-Holder-Stand10-1000x1000.jpg', 2, 360, 760, 1),
(704, 63, 88, 'as-050', 215, 450, '', 'download.jpg', 1, 215, 450, 1),
(705, 63, 88, 'as-040', 200, 430, '', 'download.jpg', 1, 200, 430, 1),
(706, 63, 88, 'as-033', 215, 480, '', 'images (1).jpg', 1, 215, 480, 1),
(707, 63, 88, 'as-026', 250, 480, '', 'download (3).jpg', 2, 500, 960, 1),
(708, 46, 34, 'ot282', 280, 499, '', 'no image.jpg', 1, 280, 499, 1),
(709, 37, 22, 'HI-FI', 50, 200, '', 'no image.jpg', 3, 150, 600, 1),
(710, 48, 24, 'F7 ', 1850, 2999, '', 'download (5).jpg', 1, 1850, 2999, 1),
(711, 48, 36, 'v9', 1850, 2999, '', 'images (3).jpg', 1, 1850, 2999, 1),
(712, 48, 61, 'GLORY G1', 1650, 1750, '', 'qnet-mobile-glory-g2-261751917.jpg', 1, 1650, 1750, 1),
(713, 48, 61, 'passion p1', 1550, 2650, '', 'download (7).jpg', 0, 0, 0, 1),
(714, 48, 24, 'f5 mini', 1200, 2250, '', 'no image.jpg', 0, 0, 0, 1),
(715, 44, 35, 'nova3i full tempered', 60, 200, '', 'no image.jpg', 1, 60, 200, 1),
(716, 44, 24, 'f9 full tempered', 60, 200, '', 'no image.jpg', 1, 60, 200, 1),
(717, 44, 36, 'v9 full screen', 60, 200, '', 'no image.jpg', 1, 60, 200, 1),
(718, 44, 24, 'f7 full cover', 60, 200, '', 'no image.jpg', 1, 60, 200, 1),
(719, 44, 24, 'f7 privacy', 60, 200, '', 'no image.jpg', 1, 60, 200, 1),
(720, 44, 24, 'f5 privacy', 60, 200, '', 'no image.jpg', 1, 60, 200, 1),
(721, 44, 22, 'j8 2018', 25, 100, '', 'no image.jpg', 5, 125, 500, 2),
(722, 44, 24, 'f9', 25, 100, '', 'no image.jpg', 5, 125, 500, 2),
(723, 42, 61, 'lynux', 110, 350, '', 'no image.jpg', 0, 0, 0, 1),
(724, 46, 34, 'ultra m1', 280, 499, '', 'no image.jpg', 1, 280, 499, 1),
(725, 46, 34, 'n105', 280, 499, '', 'no image.jpg', 1, 280, 499, 1),
(726, 46, 22, 'E339/B309i/E3210/E329', 280, 499, '', 'no image.jpg', 4, 1120, 1996, 1),
(727, 44, 24, 'a35', 20, 100, '', 'no image.jpg', 5, 100, 500, 2);

-- --------------------------------------------------------

--
-- Table structure for table `refunditem`
--

CREATE TABLE `refunditem` (
  `refund_id` int(11) NOT NULL,
  `refund_buy_id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `refund_price` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `refunditem`
--

INSERT INTO `refunditem` (`refund_id`, `refund_buy_id`, `date`, `refund_price`, `reason`) VALUES
(1, 791, 'Wednesday 20th  June 08:12 AM', 499, 'na doble'),
(2, 911, 'Tuesday 26th  June 06:10 PM', 230, 'madaling mALOWBAT'),
(3, 1231, 'Tuesday 17th  July 04:03 PM', 100, 'bbb'),
(4, 1231, 'Tuesday 17th  July 04:03 PM', 100, 'mmmm'),
(5, 1244, 'Wednesday 18th  July 02:20 PM', 120, 'hhh');

-- --------------------------------------------------------

--
-- Table structure for table `replacememt`
--

CREATE TABLE `replacememt` (
  `rep_id` int(11) NOT NULL,
  `bought_id` int(11) NOT NULL,
  `date_replaced` varchar(255) NOT NULL,
  `replace_product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replacememt`
--

INSERT INTO `replacememt` (`rep_id`, `bought_id`, `date_replaced`, `replace_product_id`) VALUES
(1, 200, 'Wednesday 30th  May 07:22 AM', 409),
(2, 226, 'Wednesday 30th  May 06:42 PM', 443),
(3, 240, 'Thursday 31st  May 11:48 AM', 27),
(4, 282, 'Saturday 2nd  June 04:04 PM', 539),
(5, 270, 'Saturday 2nd  June 05:32 PM', 501),
(6, 295, 'Saturday 2nd  June 05:44 PM', 488),
(7, 340, 'Sunday 3rd  June 03:33 PM', 379),
(8, 389, 'Monday 4th  June 01:10 PM', 342),
(9, 463, 'Saturday 9th  June 04:35 PM', 415),
(10, 473, 'Saturday 9th  June 06:42 PM', 353),
(11, 504, 'Sunday 10th  June 10:32 AM', 353),
(12, 427, 'Sunday 10th  June 06:31 PM', 318),
(13, 635, 'Thursday 14th  June 12:49 PM', 531),
(14, 566, 'Saturday 16th  June 02:19 PM', 342),
(15, 649, 'Saturday 16th  June 05:22 PM', 325),
(16, 666, 'Saturday 16th  June 05:25 PM', 315),
(17, 539, 'Monday 18th  June 06:20 PM', 456),
(18, 766, 'Tuesday 19th  June 10:01 AM', 407),
(19, 764, 'Tuesday 19th  June 05:24 PM', 529),
(20, 813, 'Wednesday 20th  June 07:51 PM', 315),
(21, 801, 'Wednesday 20th  June 07:55 PM', 410),
(22, 862, 'Sunday 24th  June 01:32 PM', 315),
(23, 899, 'Sunday 24th  June 05:04 PM', 323),
(24, 985, 'Wednesday 27th  June 09:56 AM', 344),
(25, 1001, 'Sunday 8th  July 04:04 PM', 461),
(26, 1084, 'Tuesday 10th  July 05:54 PM', 531),
(27, 1115, 'Wednesday 11th  July 06:32 PM', 407),
(28, 1166, 'Sunday 15th  July 11:40 AM', 349),
(29, 1136, 'Sunday 15th  July 12:41 PM', 580),
(30, 978, 'Sunday 15th  July 01:24 PM', 315),
(31, 944, 'Sunday 15th  July 06:47 PM', 191),
(32, 1210, 'Sunday 15th  July 07:00 PM', 410),
(33, 1272, 'Saturday 21st  July 11:19 AM', 539),
(34, 1813, 'Sunday 19th  August 10:32 AM', 636),
(35, 1870, 'Wednesday 22nd  August 10:36 AM', 385),
(36, 2009, 'Wednesday 29th  August 10:35 AM', 410);

-- --------------------------------------------------------

--
-- Table structure for table `transactionbuy`
--

CREATE TABLE `transactionbuy` (
  `buy_id` int(11) NOT NULL,
  `buy_product_id` int(11) NOT NULL,
  `buy_price` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `date_time` varchar(200) NOT NULL,
  `description` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `prod_stat` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactionbuy`
--

INSERT INTO `transactionbuy` (`buy_id`, `buy_product_id`, `buy_price`, `name`, `date_time`, `description`, `qty`, `total_price`, `status`, `prod_stat`, `date`) VALUES
(23, 169, 96, 'rahib', 'Thursday 17th  May 10:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 192, 'refunded', 'working', '2018-05-17'),
(25, 169, 100, 'Customer', 'Thursday 17th  May 12:09 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, 'refunded', 'working', '2018-05-17'),
(26, 169, 100, 'Customer', 'Friday 18th  May 07:54 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, 'refunded', '', '2018-05-18'),
(27, 83, 100, 'Customer', 'Saturday 19th  May 09:22 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-19'),
(28, 248, 405, 'Customer', 'Saturday 19th  May 12:08 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 405, '', '', '2018-05-19'),
(29, 244, 470, 'loy', 'Saturday 19th  May 12:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 470, '', '', '2018-05-19'),
(30, 266, 250, 'Customer', 'Saturday 19th  May 03:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-05-19'),
(31, 48, 100, 'Customer', 'Sunday 20th  May 08:42 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-20'),
(32, 78, 100, 'Customer', 'Sunday 20th  May 10:07 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-20'),
(33, 33, 100, 'Customer', 'Sunday 20th  May 01:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-20'),
(34, 111, 100, 'Customer', 'Sunday 20th  May 03:34 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-20'),
(35, 107, 100, 'Customer', 'Sunday 20th  May 03:34 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-20'),
(36, 74, 100, 'Customer', 'Sunday 20th  May 05:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-20'),
(37, 27, 100, 'Customer', 'Sunday 20th  May 05:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-20'),
(38, 28, 100, 'Customer', 'Monday 21st  May 08:32 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-21'),
(39, 44, 100, 'Customer', 'Monday 21st  May 12:09 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-21'),
(40, 349, 130, 'jerby', 'Monday 21st  May 12:33 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-05-21'),
(41, 53, 100, 'Customer', 'Monday 21st  May 01:01 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-21'),
(42, 324, 200, 'estudyante lalake', 'Monday 21st  May 01:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-05-21'),
(43, 324, 200, 'jojo', 'Monday 21st  May 04:11 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-05-21'),
(44, 318, 150, 'micha', 'Monday 21st  May 05:37 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-21'),
(45, 42, 100, 'Customer', 'Monday 21st  May 06:08 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-21'),
(46, 114, 100, 'Customer', 'Tuesday 22nd  May 06:47 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-22'),
(47, 343, 100, 'MAURO', 'Tuesday 22nd  May 07:34 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-22'),
(48, 349, 150, 'Customer', 'Tuesday 22nd  May 08:42 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-22'),
(49, 315, 150, 'RAMONITO', 'Tuesday 22nd  May 10:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-22'),
(50, 315, 150, 'ALEX', 'Tuesday 22nd  May 10:39 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-22'),
(51, 362, 450, 'BOT', 'Tuesday 22nd  May 11:50 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 450, 'replaced', '', '2018-05-22'),
(52, 169, 100, 'Customer', 'Tuesday 22nd  May 11:58 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, 'refunded', 'working', '2018-05-22'),
(53, 44, 100, 'Customer', 'Tuesday 22nd  May 12:15 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-22'),
(54, 27, 100, 'Customer', 'Tuesday 22nd  May 04:14 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-22'),
(55, 172, 380, 'chloe', 'Tuesday 22nd  May 04:32 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 380, '', '', '2018-05-22'),
(56, 380, 350, 'jimar', 'Tuesday 22nd  May 04:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-05-22'),
(57, 83, 100, 'Customer', 'Tuesday 22nd  May 05:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-22'),
(58, 60, 100, 'Customer', 'Tuesday 22nd  May 05:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-22'),
(59, 64, 100, 'Customer', 'Tuesday 22nd  May 05:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-22'),
(60, 350, 100, 'Customer', 'Tuesday 22nd  May 05:49 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-22'),
(61, 114, 100, 'Customer', 'Tuesday 22nd  May 06:04 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-22'),
(62, 350, 100, 'elgen', 'Wednesday 23rd  May 07:26 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-23'),
(63, 418, 100, 'Customer babae at la', 'Wednesday 23rd  May 07:47 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-23'),
(64, 419, 100, 'Customer babae at la', 'Wednesday 23rd  May 07:49 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-23'),
(65, 344, 100, 'Customer bpa nasir', 'Wednesday 23rd  May 08:20 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 6, 600, '', '', '2018-05-23'),
(66, 342, 150, 'Customer bpa nasir', 'Wednesday 23rd  May 08:20 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 6, 900, '', '', '2018-05-23'),
(67, 317, 150, 'Customer', 'Wednesday 23rd  May 08:21 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 300, '', '', '2018-05-23'),
(68, 343, 100, 'Customer', 'Wednesday 23rd  May 08:22 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 200, '', '', '2018-05-23'),
(69, 89, 100, 'Customer', 'Wednesday 23rd  May 08:55 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-23'),
(70, 353, 100, 'Customer', 'Wednesday 23rd  May 08:58 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-23'),
(71, 90, 100, 'Customer', 'Wednesday 23rd  May 09:51 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-23'),
(72, 350, 100, 'justin', 'Wednesday 23rd  May 10:50 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-23'),
(73, 407, 150, 'geziel', 'Wednesday 23rd  May 12:12 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-23'),
(74, 353, 100, 'Customer', 'Wednesday 23rd  May 03:01 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-23'),
(75, 27, 100, 'Customer', 'Wednesday 23rd  May 03:06 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-23'),
(76, 373, 550, 'merlie cajilog', 'Wednesday 23rd  May 04:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 550, '', '', '2018-05-23'),
(77, 324, 200, 'ericka', 'Wednesday 23rd  May 07:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-05-23'),
(78, 342, 150, 'ogie', 'Wednesday 23rd  May 08:15 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-23'),
(79, 408, 100, 'Customer samira', 'Thursday 24th  May 07:10 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-24'),
(80, 340, 130, 'Customer  MARLON', 'Thursday 24th  May 08:20 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-05-24'),
(81, 407, 150, 'Customer', 'Thursday 24th  May 08:32 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-24'),
(82, 107, 100, 'Customer', 'Thursday 24th  May 08:39 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-24'),
(83, 342, 150, 'Customer BIN', 'Thursday 24th  May 09:28 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-24'),
(84, 42, 100, 'Customer', 'Thursday 24th  May 09:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-24'),
(85, 359, 200, 'Customer LOLA', 'Thursday 24th  May 09:37 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-05-24'),
(86, 407, 150, 'Customer rafael', 'Thursday 24th  May 10:32 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-24'),
(87, 315, 150, 'Customer romel', 'Thursday 24th  May 12:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-24'),
(88, 336, 200, 'Customer chelsea', 'Thursday 24th  May 01:04 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-05-24'),
(89, 396, 200, 'geronimo nepal', 'Thursday 24th  May 02:11 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-05-24'),
(90, 375, 499, 'raachel mae ganda', 'Thursday 24th  May 02:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-05-24'),
(91, 410, 100, 'Customer', 'Thursday 24th  May 03:19 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-24'),
(92, 350, 100, 'Customer', 'Thursday 24th  May 05:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-24'),
(93, 39, 100, 'Customer', 'Thursday 24th  May 06:34 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-24'),
(94, 457, 100, 'Customer', 'Saturday 26th  May 07:30 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-26'),
(95, 407, 120, 'Customer HERWIN DEL ', 'Saturday 26th  May 08:16 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-05-26'),
(96, 366, 440, 'Customer  JEFFRY DUC', 'Saturday 26th  May 08:25 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 440, '', '', '2018-05-26'),
(97, 329, 180, 'Customer jeffrey cas', 'Saturday 26th  May 08:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-05-26'),
(98, 455, 120, 'Customer', 'Saturday 26th  May 09:02 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-05-26'),
(99, 362, 450, 'Customer', 'Saturday 26th  May 09:03 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 450, '', '', '2018-05-26'),
(100, 468, 100, 'Customer ASUSINA RAR', 'Saturday 26th  May 11:32 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-26'),
(101, 501, 45, 'Customer BOY/GIRL', 'Saturday 26th  May 11:33 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 45, '', '', '2018-05-26'),
(102, 408, 90, 'Customer henry cujin', 'Saturday 26th  May 11:48 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-05-26'),
(103, 410, 100, 'Customer', 'Saturday 26th  May 12:26 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-26'),
(104, 89, 100, 'Customer', 'Saturday 26th  May 03:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-26'),
(105, 315, 150, 'mommy flor', 'Saturday 26th  May 04:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-26'),
(106, 324, 200, 'Customer', 'Saturday 26th  May 04:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-05-26'),
(107, 498, 50, 'Customer', 'Saturday 26th  May 04:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-26'),
(108, 315, 150, 'Gleen', 'Saturday 26th  May 05:04 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-26'),
(109, 407, 150, 'Customer', 'Saturday 26th  May 05:14 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-26'),
(110, 276, 250, 'kaye', 'Saturday 26th  May 06:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-05-26'),
(111, 315, 150, 'baldo', 'Saturday 26th  May 06:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-26'),
(112, 407, 150, 'Customer', 'Saturday 26th  May 07:12 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-26'),
(113, 353, 90, 'Customer', 'Sunday 27th  May 07:36 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-05-27'),
(114, 409, 120, 'Customer', 'Sunday 27th  May 07:41 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-05-27'),
(115, 500, 50, 'Customer babae', 'Sunday 27th  May 07:46 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-27'),
(116, 501, 50, 'sidecar', 'Sunday 27th  May 08:17 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-27'),
(117, 315, 150, 'Customer', 'Sunday 27th  May 08:46 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-27'),
(118, 342, 140, 'XAVIER ALVARADO', 'Sunday 27th  May 09:07 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, 'refunded', 'working', '2018-05-27'),
(119, 500, 50, 'babae', 'Sunday 27th  May 09:37 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-27'),
(120, 485, 380, 'ARLENE LUBARAIO', 'Sunday 27th  May 09:58 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 380, '', '', '2018-05-27'),
(121, 89, 80, 'muslim maguindanaon ', 'Sunday 27th  May 10:13 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 80, '', '', '2018-05-27'),
(122, 353, 100, 'ADRIAN ESTORIL', 'Sunday 27th  May 10:43 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-27'),
(123, 375, 480, 'ALVIN ALANO', 'Sunday 27th  May 11:37 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 480, '', '', '2018-05-27'),
(124, 398, 230, 'GEN LCENA', 'Sunday 27th  May 12:05 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 230, '', '', '2018-05-27'),
(125, 501, 50, 'Customer', 'Sunday 27th  May 12:26 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-27'),
(126, 30, 100, 'Customer', 'Sunday 27th  May 02:23 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-27'),
(127, 69, 100, 'Customer', 'Sunday 27th  May 02:23 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-27'),
(128, 104, 100, 'Customer', 'Sunday 27th  May 03:49 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-27'),
(129, 37, 100, 'Customer', 'Sunday 27th  May 03:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-27'),
(130, 407, 150, 'Customer', 'Sunday 27th  May 05:37 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-27'),
(131, 78, 100, 'Customer', 'Monday 28th  May 07:57 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-28'),
(132, 502, 50, 'Customer', 'Monday 28th  May 08:37 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-05-28'),
(133, 502, 50, 'Customer', 'Monday 28th  May 08:43 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-28'),
(134, 502, 50, 'Customer', 'Monday 28th  May 08:44 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-28'),
(135, 317, 150, 'Customer  thea', 'Monday 28th  May 08:46 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-28'),
(136, 499, 85, 'Customer coast guard', 'Monday 28th  May 08:50 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 85, '', '', '2018-05-28'),
(137, 503, 100, 'Customer', 'Monday 28th  May 08:57 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-28'),
(138, 502, 50, 'Customer', 'Monday 28th  May 08:57 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-28'),
(139, 502, 50, 'Customer', 'Monday 28th  May 09:06 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-28'),
(140, 389, 40, 'Customer', 'Monday 28th  May 09:09 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-05-28'),
(141, 502, 50, 'Customer', 'Monday 28th  May 09:10 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-28'),
(142, 505, 100, 'Customer', 'Monday 28th  May 09:26 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-28'),
(143, 504, 50, 'Customer', 'Monday 28th  May 09:57 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-28'),
(144, 502, 50, 'Customer', 'Monday 28th  May 10:03 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-28'),
(145, 502, 50, 'Customer', 'Monday 28th  May 10:54 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-28'),
(146, 502, 50, 'Customer', 'Monday 28th  May 11:14 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-28'),
(147, 28, 100, 'Customer', 'Monday 28th  May 11:18 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-28'),
(148, 64, 100, 'Customer', 'Monday 28th  May 11:30 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-28'),
(149, 504, 50, 'Customer', 'Monday 28th  May 11:38 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-28'),
(150, 79, 100, 'Customer', 'Monday 28th  May 11:52 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-28'),
(151, 315, 150, 'Customer liza', 'Monday 28th  May 11:59 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-28'),
(152, 499, 80, 'lalake', 'Monday 28th  May 12:10 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 80, '', '', '2018-05-28'),
(153, 507, 200, 'Customer', 'Monday 28th  May 12:28 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-05-28'),
(154, 502, 50, 'Customer', 'Monday 28th  May 12:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-28'),
(155, 502, 50, 'Customer', 'Monday 28th  May 12:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-28'),
(156, 502, 45, 'Customer', 'Monday 28th  May 12:53 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 45, '', '', '2018-05-28'),
(157, 502, 50, 'Customer', 'Monday 28th  May 12:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-28'),
(158, 34, 100, 'Customer', 'Monday 28th  May 12:55 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-28'),
(159, 349, 290, 'Customer', 'Monday 28th  May 01:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 580, '', '', '2018-05-28'),
(160, 349, 150, 'Customer', 'Monday 28th  May 01:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 300, '', '', '2018-05-28'),
(161, 439, 350, 'Customer', 'Monday 28th  May 01:26 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-05-28'),
(162, 73, 100, 'Customer', 'Monday 28th  May 02:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-28'),
(163, 502, 50, 'Customer', 'Monday 28th  May 02:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-28'),
(164, 364, 480, 'richard talento', 'Monday 28th  May 03:15 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 480, '', '', '2018-05-28'),
(165, 158, 100, 'Customer', 'Monday 28th  May 04:28 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-28'),
(166, 502, 50, 'Customer', 'Monday 28th  May 04:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-28'),
(167, 330, 120, 'Customer', 'Monday 28th  May 04:55 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-05-28'),
(168, 112, 100, 'Customer', 'Monday 28th  May 04:58 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-28'),
(169, 501, 50, 'jun', 'Monday 28th  May 05:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-28'),
(170, 407, 150, 'Customer', 'Monday 28th  May 06:35 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-28'),
(171, 75, 100, 'Customer', 'Monday 28th  May 06:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-28'),
(172, 502, 50, 'Customer', 'Tuesday 29th  May 06:58 AM', '                        <h1>Warranty</h1>\r\n					<h4>1 Week Factory defect Only</h4>\r\n                    ', 1, 50, '', '', '2018-05-29'),
(173, 502, 50, 'Customer', 'Tuesday 29th  May 07:11 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-29'),
(174, 504, 50, 'Customer', 'Tuesday 29th  May 07:40 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-29'),
(175, 407, 150, 'mac mac', 'Tuesday 29th  May 08:06 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-29'),
(176, 353, 100, 'allan', 'Tuesday 29th  May 08:41 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-29'),
(177, 502, 40, 'Customer', 'Tuesday 29th  May 08:48 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-05-29'),
(178, 391, 170, 'tricylce  driver', 'Tuesday 29th  May 08:56 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 170, '', '', '2018-05-29'),
(179, 468, 100, 'LOLO', 'Tuesday 29th  May 09:08 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-29'),
(180, 169, 100, 'sample', 'Tuesday 29th  May 09:14 AM', '<h1>sample bibili ako tapos ippalit ko tingnan mo</h1>\r\n', 1, 100, 'replaced', 'working', '2018-05-29'),
(181, 504, 50, 'Customer', 'Tuesday 29th  May 09:20 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-29'),
(182, 502, 40, 'Customer', 'Tuesday 29th  May 10:32 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-05-29'),
(183, 113, 100, 'Customer', 'Tuesday 29th  May 10:40 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-29'),
(184, 503, 100, 'Customer', 'Tuesday 29th  May 10:41 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-29'),
(185, 353, 100, 'Customer', 'Tuesday 29th  May 10:42 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-29'),
(186, 502, 50, 'Customer', 'Tuesday 29th  May 10:52 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-29'),
(187, 502, 50, 'Customer', 'Tuesday 29th  May 11:20 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-29'),
(188, 101, 100, 'Customer', 'Tuesday 29th  May 11:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-29'),
(189, 30, 100, 'Customer', 'Tuesday 29th  May 11:58 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-29'),
(190, 500, 50, 'Customer', 'Tuesday 29th  May 01:20 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-29'),
(191, 89, 100, 'Customer', 'Tuesday 29th  May 03:29 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-29'),
(192, 318, 140, 'Customer', 'Tuesday 29th  May 03:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-05-29'),
(193, 394, 150, 'LOLO', 'Tuesday 29th  May 03:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-29'),
(194, 502, 50, 'Customer', 'Tuesday 29th  May 04:37 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-29'),
(195, 368, 950, 'joena razote', 'Tuesday 29th  May 05:12 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 950, '', '', '2018-05-29'),
(196, 507, 150, 'joena razote', 'Tuesday 29th  May 05:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-29'),
(197, 347, 100, 'Customer', 'Tuesday 29th  May 05:14 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-29'),
(198, 486, 500, 'Daniel R. Alcantara ', 'Tuesday 29th  May 05:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 500, '', '', '2018-05-29'),
(199, 317, 150, 'allan boy', 'Tuesday 29th  May 06:05 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-29'),
(200, 504, 50, 'Customer', 'Wednesday 30th  May 07:17 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, 'replaced', 'working', '2018-05-30'),
(201, 502, 50, 'Customer', 'Wednesday 30th  May 07:17 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-05-30'),
(202, 502, 50, 'Customer', 'Wednesday 30th  May 07:23 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-30'),
(203, 504, 50, 'Customer', 'Wednesday 30th  May 07:23 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-30'),
(204, 502, 50, 'Customer', 'Wednesday 30th  May 07:26 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-30'),
(205, 504, 50, 'Customer', 'Wednesday 30th  May 07:50 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-30'),
(206, 502, 50, 'Customer', 'Wednesday 30th  May 07:52 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-30'),
(207, 502, 50, 'Customer', 'Wednesday 30th  May 08:59 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-30'),
(208, 502, 50, 'Customer', 'Wednesday 30th  May 09:31 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-30'),
(209, 503, 100, 'Customer', 'Wednesday 30th  May 09:56 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-30'),
(210, 70, 100, 'Customer', 'Wednesday 30th  May 10:28 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-30'),
(211, 119, 100, 'Customer', 'Wednesday 30th  May 11:19 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-30'),
(212, 80, 100, 'Customer', 'Wednesday 30th  May 11:24 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-30'),
(213, 187, 380, 'giovanni', 'Wednesday 30th  May 11:49 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 380, '', '', '2018-05-30'),
(214, 501, 50, 'Customer', 'Wednesday 30th  May 01:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-30'),
(215, 407, 120, 'Customer', 'Wednesday 30th  May 02:29 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-05-30'),
(216, 407, 150, 'Customer', 'Wednesday 30th  May 02:33 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-30'),
(217, 344, 100, 'Customer', 'Wednesday 30th  May 03:59 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-30'),
(218, 506, 150, 'Customer', 'Wednesday 30th  May 04:12 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-30'),
(219, 502, 50, 'Customer', 'Wednesday 30th  May 04:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-30'),
(220, 502, 50, 'Customer', 'Wednesday 30th  May 05:11 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-30'),
(221, 502, 50, 'Customer', 'Wednesday 30th  May 05:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-30'),
(222, 478, 250, 'ben luceÃ±a', 'Wednesday 30th  May 05:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-05-30'),
(223, 350, 100, 'Customer', 'Wednesday 30th  May 05:49 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-30'),
(224, 353, 100, 'Customer', 'Wednesday 30th  May 05:51 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-30'),
(225, 507, 180, 'Customer', 'Wednesday 30th  May 05:58 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-05-30'),
(226, 438, 300, 'shane bustos', 'Wednesday 30th  May 06:16 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 300, 'replaced', 'defected', '2018-05-30'),
(227, 34, 100, 'Customer', 'Wednesday 30th  May 06:19 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-30'),
(228, 34, 100, 'Customer', 'Wednesday 30th  May 06:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-30'),
(229, 502, 50, 'Customer', 'Wednesday 30th  May 06:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-30'),
(230, 361, 350, 'fransisco gale', 'Thursday 31st  May 07:05 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-05-31'),
(231, 497, 500, 'fransisco gale', 'Thursday 31st  May 07:05 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 500, '', '', '2018-05-31'),
(232, 502, 50, 'Customer', 'Thursday 31st  May 07:34 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-31'),
(233, 409, 100, 'april ann balansay', 'Thursday 31st  May 08:02 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-31'),
(234, 502, 50, 'Customer', 'Thursday 31st  May 08:32 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-31'),
(235, 502, 50, 'Customer', 'Thursday 31st  May 08:55 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-31'),
(236, 502, 50, 'Customer', 'Thursday 31st  May 09:06 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-31'),
(237, 407, 140, 'lalake', 'Thursday 31st  May 10:23 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-05-31'),
(238, 502, 50, 'Customer', 'Thursday 31st  May 11:02 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-31'),
(239, 502, 50, 'Customer', 'Thursday 31st  May 11:14 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-31'),
(240, 521, 100, 'rahib', 'Thursday 31st  May 11:47 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, 'replaced', 'working', '2018-05-31'),
(241, 27, 100, 'rahib', 'Thursday 31st  May 11:48 AM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 100, 'refunded', 'working', '2018-05-31'),
(242, 501, 50, 'Customer', 'Thursday 31st  May 12:01 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-31'),
(243, 342, 140, 'Vlademeir villar', 'Thursday 31st  May 01:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-05-31'),
(244, 502, 50, 'Customer', 'Thursday 31st  May 01:50 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-31'),
(245, 502, 50, 'Customer', 'Thursday 31st  May 04:52 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-31'),
(246, 107, 100, 'Customer', 'Thursday 31st  May 04:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-31'),
(247, 353, 100, 'Customer', 'Thursday 31st  May 06:05 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-31'),
(248, 458, 150, 'Customer', 'Thursday 31st  May 06:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-31'),
(249, 501, 50, 'Customer', 'Thursday 31st  May 06:37 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-31'),
(250, 504, 50, 'Customer', 'Thursday 31st  May 07:03 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-31'),
(251, 387, 50, 'Customer', 'Thursday 31st  May 07:04 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-31'),
(252, 79, 100, 'Customer', 'Thursday 31st  May 07:04 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-31'),
(253, 504, 50, 'Customer', 'Thursday 31st  May 07:09 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-31'),
(254, 107, 100, 'Customer', 'Thursday 31st  May 07:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 200, '', '', '2018-05-31'),
(255, 37, 100, 'Customer', 'Thursday 31st  May 07:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-05-31'),
(256, 502, 50, 'Customer', 'Thursday 31st  May 07:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-05-31'),
(257, 495, 250, 'emily', 'Thursday 31st  May 08:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-05-31'),
(258, 407, 150, 'jhon harvey', 'Thursday 31st  May 08:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-05-31'),
(259, 502, 50, 'Customer', 'Friday 1st  June 07:53 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-06-01'),
(260, 501, 50, 'Customer', 'Friday 1st  June 07:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-01'),
(261, 408, 100, 'babae mataba', 'Friday 1st  June 08:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-01'),
(262, 502, 50, 'lalake gangster', 'Friday 1st  June 08:26 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-01'),
(263, 502, 50, 'Customer', 'Saturday 2nd  June 06:56 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-02'),
(264, 502, 50, 'Customer', 'Saturday 2nd  June 08:11 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-02'),
(265, 317, 150, 'micheall obosa', 'Saturday 2nd  June 08:12 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-02'),
(266, 502, 50, 'Customer', 'Saturday 2nd  June 08:15 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-02'),
(267, 502, 50, 'Customer', 'Saturday 2nd  June 08:28 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-02'),
(268, 501, 50, 'Customer', 'Saturday 2nd  June 08:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-06-02'),
(269, 531, 140, 'Customer', 'Saturday 2nd  June 08:40 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-02'),
(270, 548, 50, 'Customer', 'Saturday 2nd  June 08:45 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, 'replaced', 'working', '2018-06-02'),
(271, 502, 50, 'Customer', 'Saturday 2nd  June 08:59 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-02'),
(272, 534, 300, 'dennis padilla', 'Saturday 2nd  June 09:39 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 300, '', '', '2018-06-02'),
(273, 502, 50, 'Customer', 'Saturday 2nd  June 10:03 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-02'),
(274, 504, 50, 'Customer', 'Saturday 2nd  June 10:23 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-02'),
(275, 387, 50, 'Customer', 'Saturday 2nd  June 10:24 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-02'),
(276, 502, 50, 'Customer', 'Saturday 2nd  June 10:27 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-02'),
(277, 407, 150, 'kent', 'Saturday 2nd  June 10:50 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-02'),
(278, 532, 130, 'pablo', 'Saturday 2nd  June 11:05 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-06-02'),
(279, 504, 50, 'Customer', 'Saturday 2nd  June 12:10 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-02'),
(280, 340, 150, 'Customer', 'Saturday 2nd  June 12:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-02'),
(281, 502, 50, 'Customer', 'Saturday 2nd  June 12:50 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-02'),
(282, 438, 330, 'arlene salam', 'Saturday 2nd  June 01:05 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 330, 'replaced', 'working', '2018-06-02'),
(283, 485, 350, 'Louriden rabembi', 'Saturday 2nd  June 02:07 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-06-02'),
(284, 27, 100, 'Customer', 'Saturday 2nd  June 02:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-02'),
(285, 502, 50, 'Customer', 'Saturday 2nd  June 02:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-02'),
(286, 352, 100, 'Customer', 'Saturday 2nd  June 02:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-02'),
(287, 377, 499, 'ALJADE BUBULI', 'Saturday 2nd  June 03:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-06-02'),
(288, 373, 550, 'JOVELYN HIPOLITO', 'Saturday 2nd  June 03:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 550, '', '', '2018-06-02'),
(289, 343, 100, 'Customer', 'Saturday 2nd  June 03:47 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-02'),
(290, 539, 350, 'arlene salam', 'Saturday 2nd  June 04:04 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 350, 'replacement', '282', '2018-06-02'),
(291, 315, 150, 'andrew', 'Saturday 2nd  June 05:01 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-02'),
(292, 26, 100, 'Customer', 'Saturday 2nd  June 05:06 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-02'),
(293, 315, 150, 'ricardo dopino', 'Saturday 2nd  June 05:08 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-02'),
(294, 503, 100, 'Customer', 'Saturday 2nd  June 05:09 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-02'),
(295, 485, 340, 'ronel', 'Saturday 2nd  June 05:28 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 340, 'replaced', 'working', '2018-06-02'),
(296, 501, 50, 'Customer', 'Saturday 2nd  June 05:32 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 50, 'replacement', '270', '2018-06-02'),
(297, 502, 50, 'Customer', 'Saturday 2nd  June 05:33 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-02'),
(298, 488, 340, 'ronel', 'Saturday 2nd  June 05:44 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 340, 'replacement', '295', '2018-06-02'),
(299, 330, 130, 'Customer', 'Saturday 2nd  June 05:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-06-02'),
(300, 315, 140, 'junelyn', 'Saturday 2nd  June 05:56 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-02'),
(301, 503, 100, 'Customer', 'Saturday 2nd  June 06:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-02'),
(302, 407, 140, 'lalake', 'Saturday 2nd  June 06:14 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-02'),
(303, 248, 350, 'joel', 'Saturday 2nd  June 06:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-06-02'),
(304, 353, 100, 'lalake', 'Saturday 2nd  June 06:28 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-02'),
(305, 507, 200, 'LOLO', 'Saturday 2nd  June 06:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-06-02'),
(306, 80, 100, 'Customer', 'Saturday 2nd  June 06:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-02'),
(307, 502, 50, 'Customer', 'Saturday 2nd  June 06:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-02'),
(308, 79, 100, 'Customer', 'Saturday 2nd  June 07:10 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-02'),
(309, 349, 150, 'batang dalaga', 'Saturday 2nd  June 07:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-02'),
(310, 523, 490, 'archei garcia', 'Saturday 2nd  June 07:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 490, '', '', '2018-06-02'),
(311, 315, 150, 'merving mandigma', 'Saturday 2nd  June 07:52 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-02'),
(312, 502, 50, 'Customer', 'Saturday 2nd  June 07:53 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-02'),
(313, 507, 200, 'babae', 'Saturday 2nd  June 07:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-06-02'),
(314, 505, 100, 'Customer', 'Saturday 2nd  June 07:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-02'),
(315, 502, 50, 'Customer', 'Sunday 3rd  June 07:47 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-06-03'),
(316, 422, 100, 'lalake', 'Sunday 3rd  June 07:50 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-03'),
(317, 503, 75, 'lalake', 'Sunday 3rd  June 08:33 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 75, '', '', '2018-06-03'),
(318, 502, 50, 'Customer', 'Sunday 3rd  June 08:33 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-03'),
(319, 502, 50, 'Customer', 'Sunday 3rd  June 08:50 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-03'),
(320, 387, 50, 'Customer', 'Sunday 3rd  June 08:51 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-03'),
(321, 186, 350, 'babae', 'Sunday 3rd  June 09:06 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-06-03'),
(322, 533, 90, 'Customer', 'Sunday 3rd  June 09:07 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-06-03'),
(323, 502, 50, 'Customer', 'Sunday 3rd  June 09:23 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-03'),
(324, 502, 50, 'Customer', 'Sunday 3rd  June 09:25 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-03'),
(325, 502, 50, 'Customer', 'Sunday 3rd  June 09:30 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-03'),
(326, 502, 50, 'Customer', 'Sunday 3rd  June 09:40 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-03'),
(327, 440, 220, 'nerissa', 'Sunday 3rd  June 09:48 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 220, '', '', '2018-06-03'),
(328, 34, 100, 'Customer', 'Sunday 3rd  June 09:58 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-03'),
(329, 533, 100, 'Customer', 'Sunday 3rd  June 10:07 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-03'),
(330, 502, 50, 'Customer', 'Sunday 3rd  June 10:10 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-03'),
(331, 502, 50, 'Customer', 'Sunday 3rd  June 10:18 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-03'),
(332, 502, 50, 'Customer', 'Sunday 3rd  June 10:19 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-03'),
(333, 457, 90, 'laging nagppalit ', 'Sunday 3rd  June 10:23 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-06-03'),
(334, 499, 85, '2 lalake', 'Sunday 3rd  June 11:05 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 85, '', '', '2018-06-03'),
(335, 502, 40, 'Customer', 'Sunday 3rd  June 11:20 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 3, 120, '', '', '2018-06-03'),
(336, 466, 350, 'manuel de leon', 'Sunday 3rd  June 11:39 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-06-03'),
(337, 387, 50, 'Customer', 'Sunday 3rd  June 11:47 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-03'),
(338, 468, 100, 'LOLO nka bike', 'Sunday 3rd  June 11:55 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-03'),
(339, 579, 50, 'mykulay ngbohk', 'Sunday 3rd  June 12:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-03'),
(340, 507, 180, 'dada', 'Sunday 3rd  June 12:30 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, 'replaced', 'working', '2018-06-03'),
(341, 447, 1850, 'kilvin', 'Sunday 3rd  June 01:01 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 1850, '', '', '2018-06-03'),
(342, 362, 450, 'chito lalaki', 'Sunday 3rd  June 01:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 450, '', '', '2018-06-03'),
(343, 364, 490, 'jeans babae', 'Sunday 3rd  June 01:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 490, '', '', '2018-06-03'),
(344, 502, 50, 'Customer', 'Sunday 3rd  June 01:52 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-03'),
(345, 502, 50, 'Customer', 'Sunday 3rd  June 01:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-03'),
(346, 318, 120, 'lalaki', 'Sunday 3rd  June 01:59 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-06-03');
INSERT INTO `transactionbuy` (`buy_id`, `buy_product_id`, `buy_price`, `name`, `date_time`, `description`, `qty`, `total_price`, `status`, `prod_stat`, `date`) VALUES
(347, 502, 50, 'Customer', 'Sunday 3rd  June 02:35 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-03'),
(348, 502, 50, 'Customer', 'Sunday 3rd  June 03:30 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-03'),
(349, 379, 390, 'dada', 'Sunday 3rd  June 03:33 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 390, 'replacement', '340', '2018-06-03'),
(350, 502, 50, 'Customer', 'Sunday 3rd  June 04:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-03'),
(351, 346, 100, 'lalake matanda', 'Sunday 3rd  June 04:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-03'),
(352, 457, 100, 'lalake', 'Sunday 3rd  June 05:08 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-03'),
(353, 502, 50, 'Customer', 'Sunday 3rd  June 05:12 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-03'),
(354, 320, 150, 'lalake', 'Sunday 3rd  June 05:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-03'),
(355, 40, 100, 'babae', 'Sunday 3rd  June 05:52 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-03'),
(356, 140, 200, 'babae', 'Sunday 3rd  June 05:52 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-06-03'),
(357, 349, 140, 'Customer', 'Sunday 3rd  June 06:16 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-03'),
(358, 503, 75, 'Jay ar', 'Sunday 3rd  June 06:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 75, '', '', '2018-06-03'),
(359, 507, 180, 'kienth', 'Sunday 3rd  June 06:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-06-03'),
(360, 411, 100, 'Customer', 'Sunday 3rd  June 06:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-03'),
(361, 75, 100, 'Customer', 'Sunday 3rd  June 06:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-03'),
(362, 124, 180, 'Customer', 'Sunday 3rd  June 06:52 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-06-03'),
(363, 107, 100, 'Customer', 'Sunday 3rd  June 06:53 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-03'),
(364, 503, 90, 'Customer', 'Sunday 3rd  June 06:57 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-06-03'),
(365, 318, 115, 'Customer', 'Sunday 3rd  June 07:15 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 115, '', '', '2018-06-03'),
(366, 318, 115, 'kaibigan', 'Sunday 3rd  June 07:15 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 115, '', '', '2018-06-03'),
(367, 503, 80, 'elmor', 'Sunday 3rd  June 07:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 80, '', '', '2018-06-03'),
(368, 315, 150, 'Customer', 'Sunday 3rd  June 08:12 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-03'),
(369, 502, 50, 'Customer', 'Monday 4th  June 07:55 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-04'),
(370, 389, 40, 'Customer', 'Monday 4th  June 08:00 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-06-04'),
(371, 507, 200, 'danis', 'Monday 4th  June 08:37 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-06-04'),
(372, 502, 50, 'Customer', 'Monday 4th  June 08:43 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-04'),
(373, 408, 100, 'bakla', 'Monday 4th  June 08:53 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-04'),
(374, 502, 50, 'Customer', 'Monday 4th  June 09:23 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-04'),
(375, 506, 120, 'lod', 'Monday 4th  June 09:25 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-06-04'),
(376, 503, 100, 'matabang lalake', 'Monday 4th  June 09:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-04'),
(377, 583, 200, 'pulis n lalake', 'Monday 4th  June 09:39 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-06-04'),
(378, 107, 100, 'Customer', 'Monday 4th  June 09:39 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-04'),
(379, 504, 50, 'Customer', 'Monday 4th  June 09:42 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-04'),
(380, 502, 50, 'Customer', 'Monday 4th  June 09:55 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-04'),
(381, 506, 120, 'Customer', 'Monday 4th  June 10:45 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-06-04'),
(382, 408, 100, 'lalake', 'Monday 4th  June 10:45 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-04'),
(383, 539, 300, 'roger puno', 'Monday 4th  June 11:02 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 300, '', '', '2018-06-04'),
(384, 407, 150, 'roger puno', 'Monday 4th  June 11:02 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-04'),
(385, 502, 50, 'Customer', 'Monday 4th  June 11:31 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-04'),
(386, 502, 50, 'Customer', 'Monday 4th  June 11:38 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-04'),
(387, 502, 50, 'Customer', 'Monday 4th  June 11:39 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-04'),
(388, 350, 100, 'babae', 'Monday 4th  June 12:11 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-04'),
(389, 344, 100, 'maricon', 'Monday 4th  June 12:33 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, 'replaced', 'working', '2018-06-04'),
(390, 107, 100, 'Customer', 'Monday 4th  June 12:50 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-04'),
(391, 502, 50, 'Customer', 'Monday 4th  June 12:53 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-04'),
(392, 342, 140, 'maricon', 'Monday 4th  June 01:10 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 140, 'replacement', '389', '2018-06-04'),
(393, 346, 100, 'matabang babae', 'Monday 4th  June 01:52 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-04'),
(394, 502, 50, 'Customer', 'Monday 4th  June 02:20 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-04'),
(395, 502, 40, 'Customer', 'Monday 4th  June 02:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-06-04'),
(396, 502, 50, 'Customer', 'Monday 4th  June 02:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-04'),
(397, 504, 50, 'Customer', 'Monday 4th  June 02:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-04'),
(398, 317, 150, 'marilyn', 'Monday 4th  June 03:14 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-04'),
(399, 407, 150, 'tricylce  driver', 'Monday 4th  June 04:23 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-04'),
(400, 502, 50, 'Customer', 'Monday 4th  June 04:28 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-04'),
(401, 504, 50, 'Customer', 'Monday 4th  June 04:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-04'),
(402, 506, 120, 'Customer', 'Monday 4th  June 04:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-06-04'),
(403, 503, 100, 'lalake', 'Monday 4th  June 05:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-04'),
(404, 407, 120, 'lalakeng tawad', 'Monday 4th  June 05:23 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-06-04'),
(405, 502, 50, 'Customer', 'Monday 4th  June 05:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-04'),
(406, 494, 350, 'lalake', 'Monday 4th  June 05:51 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-06-04'),
(407, 318, 140, 'maricar', 'Monday 4th  June 06:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-04'),
(408, 408, 100, 'lalake', 'Tuesday 5th  June 08:02 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-05'),
(409, 349, 150, 'binata', 'Tuesday 5th  June 08:10 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-05'),
(410, 502, 50, 'Customer', 'Tuesday 5th  June 09:04 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-05'),
(411, 504, 50, 'Customer', 'Tuesday 5th  June 09:06 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-05'),
(412, 410, 100, 'Customer', 'Tuesday 5th  June 09:24 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-05'),
(413, 502, 95, 'Customer', 'Tuesday 5th  June 10:30 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 190, '', '', '2018-06-05'),
(414, 502, 50, 'Customer', 'Tuesday 5th  June 10:47 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-05'),
(415, 83, 100, 'Customer', 'Tuesday 5th  June 11:09 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-05'),
(416, 89, 100, 'Customer', 'Tuesday 5th  June 11:09 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-05'),
(417, 502, 50, 'Customer', 'Tuesday 5th  June 11:09 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-05'),
(418, 499, 85, 'binata', 'Tuesday 5th  June 11:34 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 85, '', '', '2018-06-05'),
(419, 504, 50, 'Customer', 'Tuesday 5th  June 12:08 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-05'),
(420, 502, 50, 'Customer', 'Tuesday 5th  June 12:16 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-05'),
(421, 531, 50, 'rasmia', 'Tuesday 5th  June 12:37 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-05'),
(422, 499, 80, 'Customer', 'Tuesday 5th  June 01:08 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 80, '', '', '2018-06-05'),
(423, 457, 100, 'teacher', 'Tuesday 5th  June 01:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-05'),
(424, 114, 100, 'Customer', 'Tuesday 5th  June 02:30 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-05'),
(425, 502, 50, 'Customer', 'Tuesday 5th  June 04:11 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-06-05'),
(426, 504, 50, 'Customer', 'Tuesday 5th  June 04:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-05'),
(427, 315, 140, 'oliver', 'Tuesday 5th  June 04:53 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, 'replaced', 'defected', '2018-06-05'),
(428, 579, 50, 'Customer', 'Tuesday 5th  June 05:28 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-05'),
(429, 379, 300, 'Customer', 'Tuesday 5th  June 05:35 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 300, '', '', '2018-06-05'),
(430, 315, 150, 'LOLO', 'Tuesday 5th  June 05:53 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-05'),
(431, 502, 50, 'Customer', 'Tuesday 5th  June 06:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-06-05'),
(432, 472, 100, 'Customer', 'Tuesday 5th  June 06:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-05'),
(433, 342, 150, 'shawnric', 'Tuesday 5th  June 06:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-05'),
(434, 317, 140, 'patrick', 'Tuesday 5th  June 06:59 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-05'),
(435, 342, 150, 'kylie', 'Tuesday 5th  June 07:11 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-05'),
(436, 531, 150, 'lolo', 'Tuesday 5th  June 07:20 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-05'),
(437, 317, 130, 'yna', 'Tuesday 5th  June 07:49 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-06-05'),
(438, 502, 50, 'Customer', 'Tuesday 5th  June 08:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-06-05'),
(439, 506, 120, 'Customer', 'Wednesday 6th  June 07:22 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-06-06'),
(440, 349, 150, 'dalaga', 'Wednesday 6th  June 07:40 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-06'),
(441, 531, 150, 'babaeng nka bag na p', 'Wednesday 6th  June 07:54 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-06'),
(442, 315, 130, 'sidecar', 'Wednesday 6th  June 08:14 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-06-06'),
(443, 585, 350, 'peter peralta', 'Wednesday 6th  June 08:29 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-06-06'),
(444, 502, 50, 'Customer', 'Wednesday 6th  June 08:39 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-06'),
(445, 502, 50, 'Customer', 'Wednesday 6th  June 09:53 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-06'),
(446, 502, 50, 'Customer', 'Wednesday 6th  June 10:02 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-06'),
(447, 502, 50, 'Customer', 'Wednesday 6th  June 10:20 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-06'),
(448, 27, 100, 'Customer', 'Wednesday 6th  June 10:43 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-06'),
(449, 589, 2800, 'keith', 'Wednesday 6th  June 10:59 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 2800, '', '', '2018-06-06'),
(450, 506, 120, 'Customer', 'Wednesday 6th  June 11:00 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-06-06'),
(451, 502, 50, 'Customer', 'Wednesday 6th  June 11:00 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-06'),
(452, 504, 50, 'Customer', 'Wednesday 6th  June 12:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-06'),
(453, 320, 150, 'diane', 'Wednesday 6th  June 01:35 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-06'),
(454, 536, 330, 'nel', 'Wednesday 6th  June 02:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 330, '', '', '2018-06-06'),
(455, 315, 150, 'babae', 'Wednesday 6th  June 03:03 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-06'),
(456, 531, 140, 'babae', 'Wednesday 6th  June 03:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-06'),
(457, 34, 100, 'Customer', 'Wednesday 6th  June 03:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-06'),
(458, 329, 170, 'tomboy', 'Wednesday 6th  June 04:07 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 170, '', '', '2018-06-06'),
(459, 500, 50, 'Customer', 'Wednesday 6th  June 04:52 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-06'),
(460, 518, 100, 'Customer', 'Wednesday 6th  June 05:20 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-06'),
(461, 365, 480, 'junil', 'Wednesday 6th  June 05:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 480, '', '', '2018-06-06'),
(462, 341, 120, 'sidecar', 'Wednesday 6th  June 06:07 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-06-06'),
(463, 407, 150, 'bing tubil', 'Wednesday 6th  June 06:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, 'replaced', 'defected', '2018-06-06'),
(464, 387, 50, 'Customer', 'Wednesday 6th  June 06:29 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-06'),
(465, 107, 100, 'Customer', 'Saturday 9th  June 01:37 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-09'),
(466, 531, 150, 'Customer', 'Saturday 9th  June 01:37 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-09'),
(467, 410, 100, 'Customer', 'Saturday 9th  June 01:38 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 200, '', '', '2018-06-09'),
(468, 502, 50, 'Customer', 'Saturday 9th  June 01:38 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-06-09'),
(469, 505, 100, 'Customer', 'Saturday 9th  June 01:38 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 200, '', '', '2018-06-09'),
(470, 506, 150, 'Customer', 'Saturday 9th  June 01:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-09'),
(471, 506, 140, 'Customer', 'Saturday 9th  June 01:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-09'),
(472, 495, 250, 'Customer', 'Saturday 9th  June 01:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-06-09'),
(473, 503, 90, 'Customer', 'Saturday 9th  June 01:40 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, 'replaced', 'working', '2018-06-09'),
(474, 531, 150, 'Customer', 'Saturday 9th  June 01:40 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-09'),
(475, 499, 75, 'Customer', 'Saturday 9th  June 01:58 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 75, '', '', '2018-06-09'),
(476, 407, 110, 'ateng wlang pamasahe', 'Saturday 9th  June 02:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 110, '', '', '2018-06-09'),
(477, 503, 100, 'Customer', 'Saturday 9th  June 02:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-09'),
(478, 502, 50, 'Customer', 'Saturday 9th  June 03:57 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-09'),
(479, 407, 150, 'lalakeng payat', 'Saturday 9th  June 04:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-09'),
(480, 353, 100, 'bakla', 'Saturday 9th  June 04:19 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-09'),
(481, 506, 150, 'Customer', 'Saturday 9th  June 04:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-09'),
(482, 502, 50, 'Customer', 'Saturday 9th  June 04:29 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-06-09'),
(483, 415, 100, 'bing tubil', 'Saturday 9th  June 04:35 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 100, 'replacement', '463', '2018-06-09'),
(484, 107, 100, 'Customer', 'Saturday 9th  June 04:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-09'),
(485, 503, 100, 'lolo', 'Saturday 9th  June 05:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-09'),
(486, 187, 380, 'rr jude', 'Saturday 9th  June 05:40 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 380, '', '', '2018-06-09'),
(487, 385, 2999, 'virgilio obregon', 'Saturday 9th  June 05:50 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 2999, '', '', '2018-06-09'),
(488, 371, 599, 'richard', 'Saturday 9th  June 06:04 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 599, '', '', '2018-06-09'),
(489, 388, 40, 'Customer', 'Saturday 9th  June 06:06 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-06-09'),
(490, 353, 100, 'caren', 'Saturday 9th  June 06:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-09'),
(491, 353, 90, 'Customer', 'Saturday 9th  June 06:42 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 90, 'replacement', '473', '2018-06-09'),
(492, 503, 100, 'joan', 'Saturday 9th  June 06:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-09'),
(493, 367, 480, 'john karl', 'Saturday 9th  June 07:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 480, '', '', '2018-06-09'),
(494, 336, 200, 'lalaking muslim', 'Saturday 9th  June 07:28 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-06-09'),
(495, 506, 150, 'Customer', 'Saturday 9th  June 07:28 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-09'),
(496, 507, 150, 'bata', 'Saturday 9th  June 07:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-09'),
(497, 366, 499, 'ljane mendiz', 'Saturday 9th  June 07:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-06-09'),
(498, 317, 140, 'marivic', 'Saturday 9th  June 07:52 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-09'),
(499, 378, 499, 'jiar delarna', 'Sunday 10th  June 08:50 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-06-10'),
(500, 409, 100, 'jiar delarna', 'Sunday 10th  June 08:50 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-10'),
(501, 373, 500, 'ame viscara', 'Sunday 10th  June 08:51 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 500, '', '', '2018-06-10'),
(502, 505, 100, 'Customer', 'Sunday 10th  June 08:52 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-10'),
(503, 107, 100, 'Customer', 'Sunday 10th  June 09:21 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-10'),
(504, 330, 120, 'lalake binata', 'Sunday 10th  June 09:22 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, 'replaced', 'working', '2018-06-10'),
(505, 502, 50, 'Customer', 'Sunday 10th  June 09:28 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-10'),
(506, 349, 140, 'r j', 'Sunday 10th  June 10:25 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-10'),
(507, 353, 100, 'lalake binata', 'Sunday 10th  June 10:32 AM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 100, 'replacement', '504', '2018-06-10'),
(508, 409, 100, 'Customer', 'Sunday 10th  June 11:08 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-10'),
(509, 467, 100, 'pilay', 'Sunday 10th  June 11:10 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-10'),
(510, 500, 50, 'LOLO', 'Sunday 10th  June 11:14 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-10'),
(511, 500, 50, 'Customer', 'Sunday 10th  June 12:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-10'),
(512, 506, 130, 'Customer', 'Sunday 10th  June 12:56 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-06-10'),
(513, 502, 50, 'Customer', 'Sunday 10th  June 01:01 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-10'),
(514, 105, 100, 'Customer', 'Sunday 10th  June 01:58 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-10'),
(515, 367, 480, 'abdull silang', 'Sunday 10th  June 02:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 480, '', '', '2018-06-10'),
(516, 507, 180, 'abdull silang', 'Sunday 10th  June 02:23 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-06-10'),
(517, 502, 50, 'Customer', 'Sunday 10th  June 03:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-10'),
(518, 349, 150, 'Customer', 'Sunday 10th  June 04:11 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-10'),
(519, 89, 100, 'Customer', 'Sunday 10th  June 04:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-10'),
(520, 485, 370, 'manuel', 'Sunday 10th  June 05:47 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 370, '', '', '2018-06-10'),
(521, 531, 150, 'Customer', 'Sunday 10th  June 06:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-10'),
(522, 318, 140, 'oliver', 'Sunday 10th  June 06:31 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 140, 'replacement', '427', '2018-06-10'),
(523, 427, 150, 'max', 'Sunday 10th  June 06:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-10'),
(524, 318, 150, 'king canete', 'Sunday 10th  June 07:08 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-10'),
(525, 318, 130, 'rodrigo', 'Sunday 10th  June 07:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-06-10'),
(526, 393, 150, 'jomari', 'Sunday 10th  June 07:26 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-10'),
(527, 342, 130, 'jonjon', 'Sunday 10th  June 07:37 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-06-10'),
(528, 448, 1700, 'saldo udtuhan', 'Sunday 10th  June 08:09 PM', '<h1>Warranty</h1>\r\n\r\n<p>1week replacemnet</p>\r\n\r\n<p>1 month service</p>\r\n', 1, 1700, '', '', '2018-06-10'),
(529, 78, 100, 'Customer', 'Sunday 10th  June 08:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-10'),
(530, 73, 100, 'Customer', 'Sunday 10th  June 08:34 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-10'),
(531, 315, 140, 'lalake', 'Monday 11th  June 07:38 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-11'),
(532, 317, 150, 'eduard', 'Monday 11th  June 07:44 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-11'),
(533, 502, 50, 'Customer', 'Monday 11th  June 08:05 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-11'),
(534, 34, 100, 'Customer', 'Monday 11th  June 09:55 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-11'),
(535, 315, 150, 'babae', 'Monday 11th  June 10:56 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-11'),
(536, 379, 390, 'ernie', 'Monday 11th  June 11:02 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 390, '', '', '2018-06-11'),
(537, 350, 100, 'christine joy', 'Monday 11th  June 11:10 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-11'),
(538, 113, 100, 'Customer', 'Monday 11th  June 11:28 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-11'),
(539, 456, 350, 'weng', 'Monday 11th  June 11:47 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, 'replaced', 'defected', '2018-06-11'),
(540, 472, 100, 'Customer', 'Monday 11th  June 12:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-11'),
(541, 43, 100, 'Customer', 'Monday 11th  June 01:35 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-11'),
(542, 506, 130, 'Customer', 'Monday 11th  June 02:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-06-11'),
(543, 504, 50, 'Customer', 'Monday 11th  June 02:26 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-11'),
(544, 489, 430, 'rafael fuasan', 'Monday 11th  June 02:38 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 430, '', '', '2018-06-11'),
(545, 498, 50, 'Customer', 'Monday 11th  June 03:06 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-11'),
(546, 457, 100, 'Customer', 'Monday 11th  June 04:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-11'),
(547, 502, 50, 'Customer', 'Monday 11th  June 04:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-06-11'),
(548, 272, 230, 'biboy', 'Monday 11th  June 06:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 230, '', '', '2018-06-11'),
(549, 330, 130, 'Customer', 'Monday 11th  June 06:29 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-06-11'),
(550, 319, 180, 'joed', 'Monday 11th  June 06:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-06-11'),
(551, 315, 140, 'justine', 'Monday 11th  June 06:57 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-11'),
(552, 502, 50, 'Customer', 'Monday 11th  June 07:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-11'),
(553, 407, 140, 'lalake', 'Monday 11th  June 07:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-11'),
(554, 88, 100, 'Customer', 'Monday 11th  June 07:30 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-11'),
(555, 505, 100, 'Customer', 'Monday 11th  June 07:58 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-11'),
(556, 502, 50, 'Customer', 'Monday 11th  June 08:08 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-11'),
(557, 73, 100, 'Customer', 'Tuesday 12th  June 08:07 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-12'),
(558, 495, 250, 'Customer', 'Tuesday 12th  June 08:10 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-06-12'),
(559, 504, 50, 'Customer', 'Tuesday 12th  June 08:10 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-12'),
(560, 70, 100, 'Customer', 'Tuesday 12th  June 08:25 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-12'),
(561, 504, 50, 'Customer', 'Tuesday 12th  June 08:29 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-12'),
(562, 533, 100, 'Customer', 'Tuesday 12th  June 08:40 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-12'),
(563, 505, 100, 'Customer', 'Tuesday 12th  June 08:57 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-12'),
(564, 503, 90, 'Customer', 'Tuesday 12th  June 08:59 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-06-12'),
(565, 415, 100, 'Customer', 'Tuesday 12th  June 09:02 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-12'),
(566, 343, 100, 'babae at tomboy', 'Tuesday 12th  June 09:19 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, 'replaced', 'defected', '2018-06-12'),
(567, 315, 140, 'lola pang tablet', 'Tuesday 12th  June 09:46 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-12'),
(568, 359, 250, 'lolo', 'Tuesday 12th  June 10:08 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-06-12'),
(569, 389, 40, 'Customer', 'Tuesday 12th  June 10:42 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-06-12'),
(570, 353, 100, 'binata', 'Tuesday 12th  June 11:47 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-12'),
(571, 502, 50, 'Customer', 'Tuesday 12th  June 11:47 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-12'),
(572, 345, 100, 'lalake', 'Tuesday 12th  June 12:06 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-12'),
(573, 349, 150, 'arnold nakpil', 'Tuesday 12th  June 12:19 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-12'),
(574, 502, 50, 'Customer', 'Tuesday 12th  June 12:20 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-12'),
(575, 371, 500, 'tito ni may', 'Tuesday 12th  June 12:20 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 500, '', '', '2018-06-12'),
(576, 114, 100, 'Customer', 'Tuesday 12th  June 12:34 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-12'),
(577, 327, 150, 'babae', 'Tuesday 12th  June 12:34 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-12'),
(578, 532, 130, 'tropa', 'Tuesday 12th  June 12:40 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-06-12'),
(579, 349, 150, 'Customer', 'Tuesday 12th  June 01:47 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-12'),
(580, 349, 140, 'Customer', 'Tuesday 12th  June 04:19 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-12'),
(581, 502, 50, 'Customer', 'Tuesday 12th  June 04:23 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-12'),
(582, 323, 120, 'Customer', 'Tuesday 12th  June 04:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-06-12'),
(583, 80, 100, 'Customer', 'Tuesday 12th  June 04:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-12'),
(584, 172, 350, 'suzette', 'Tuesday 12th  June 05:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-06-12'),
(585, 318, 130, 'Customer', 'Tuesday 12th  June 06:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-06-12'),
(586, 414, 100, 'lalake binata', 'Tuesday 12th  June 06:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-12'),
(587, 315, 150, 'sally sefil', 'Tuesday 12th  June 07:08 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-12'),
(588, 73, 8, 'ramel', 'Tuesday 12th  June 07:15 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 8, '', '', '2018-06-12'),
(589, 79, 100, 'Customer', 'Tuesday 12th  June 07:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-12'),
(590, 349, 150, 'Customer', 'Tuesday 12th  June 07:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-12'),
(591, 502, 50, 'Customer', 'Tuesday 12th  June 08:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-12'),
(592, 503, 100, 'Customer', 'Tuesday 12th  June 08:07 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-12'),
(593, 502, 50, 'Customer', 'Wednesday 13th  June 07:31 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-13'),
(594, 502, 50, 'Customer', 'Wednesday 13th  June 09:09 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-13'),
(595, 520, 100, 'Customer', 'Wednesday 13th  June 09:17 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-13'),
(596, 315, 140, 'richel', 'Wednesday 13th  June 09:21 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-13'),
(597, 375, 499, 'marilow concepcion', 'Wednesday 13th  June 10:11 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-06-13'),
(598, 502, 50, 'Customer', 'Wednesday 13th  June 10:16 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-13'),
(599, 109, 100, 'Customer', 'Wednesday 13th  June 11:19 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-13'),
(600, 118, 100, 'Customer', 'Wednesday 13th  June 11:51 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-13'),
(601, 390, 50, 'Customer', 'Wednesday 13th  June 11:52 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-13'),
(602, 502, 50, 'Customer', 'Wednesday 13th  June 12:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-13'),
(603, 505, 100, 'Customer', 'Wednesday 13th  June 12:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-13'),
(604, 114, 100, 'Customer', 'Wednesday 13th  June 02:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-13'),
(605, 478, 250, 'babae', 'Wednesday 13th  June 02:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-06-13'),
(606, 502, 50, 'Customer', 'Wednesday 13th  June 02:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-13'),
(607, 330, 130, 'babae', 'Wednesday 13th  June 03:47 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-06-13'),
(608, 359, 200, 'babaeng nsa c6', 'Wednesday 13th  June 04:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-06-13'),
(609, 493, 600, 'babaeng nsa c6', 'Wednesday 13th  June 04:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 600, '', '', '2018-06-13'),
(610, 34, 100, 'Customer', 'Wednesday 13th  June 04:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-13'),
(611, 317, 150, 'edna', 'Wednesday 13th  June 04:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-13'),
(612, 315, 150, 'babae', 'Wednesday 13th  June 05:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-13'),
(613, 502, 50, 'Customer', 'Wednesday 13th  June 05:04 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-13'),
(614, 327, 130, 'bombay', 'Wednesday 13th  June 05:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-06-13'),
(615, 317, 140, 'Customer', 'Wednesday 13th  June 05:50 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-13'),
(616, 363, 450, 'tatay ni benz', 'Wednesday 13th  June 06:09 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 450, '', '', '2018-06-13'),
(617, 353, 100, 'gene vive', 'Wednesday 13th  June 06:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-13'),
(618, 61, 100, 'Customer', 'Wednesday 13th  June 06:26 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-13'),
(619, 409, 100, 'Customer', 'Wednesday 13th  June 06:26 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-13'),
(620, 503, 100, 'Customer', 'Wednesday 13th  June 06:26 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-13'),
(621, 395, 170, 'taxi driver', 'Wednesday 13th  June 06:30 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 170, '', '', '2018-06-13'),
(622, 503, 100, 'gene vive', 'Wednesday 13th  June 06:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-13'),
(623, 387, 50, 'Customer', 'Thursday 14th  June 08:21 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-14'),
(624, 372, 800, 'al saynum', 'Thursday 14th  June 08:34 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 800, '', '', '2018-06-14'),
(625, 389, 40, 'al saynum', 'Thursday 14th  June 08:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-06-14'),
(626, 503, 90, 'lalake', 'Thursday 14th  June 08:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-06-14'),
(627, 420, 100, 'babae', 'Thursday 14th  June 08:45 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-14'),
(628, 387, 50, 'Customer', 'Thursday 14th  June 09:32 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 3, 150, '', '', '2018-06-14'),
(629, 420, 90, 'babae at tomboy', 'Thursday 14th  June 09:36 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-06-14'),
(630, 502, 50, 'Customer', 'Thursday 14th  June 10:07 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-14'),
(631, 70, 100, 'Customer', 'Thursday 14th  June 11:43 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-14'),
(632, 315, 150, 'noel', 'Thursday 14th  June 11:49 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-14'),
(633, 342, 150, 'LOLO', 'Thursday 14th  June 12:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-14'),
(634, 502, 50, 'Customer', 'Thursday 14th  June 12:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-14'),
(635, 531, 150, 'lalake', 'Thursday 14th  June 12:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, 'replaced', 'defected', '2018-06-14'),
(636, 531, 150, 'lalake', 'Thursday 14th  June 12:49 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 150, 'replacement', '635', '2018-06-14'),
(637, 330, 130, 'ian', 'Thursday 14th  June 02:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-06-14'),
(638, 502, 50, 'Customer', 'Thursday 14th  June 03:23 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-14'),
(639, 504, 50, 'Customer', 'Thursday 14th  June 03:55 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-14'),
(640, 503, 80, 'may ari ng puwesto', 'Thursday 14th  June 03:55 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 80, '', '', '2018-06-14'),
(641, 64, 100, 'Customer', 'Thursday 14th  June 05:15 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-14'),
(642, 344, 100, 'virgie', 'Thursday 14th  June 05:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-14'),
(643, 353, 100, 'marnie', 'Thursday 14th  June 06:09 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-14'),
(644, 502, 50, 'Customer', 'Thursday 14th  June 06:10 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-14'),
(645, 343, 100, 'babaeng nka bike', 'Thursday 14th  June 06:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-14'),
(646, 407, 140, 'lalake', 'Thursday 14th  June 06:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-14'),
(647, 503, 100, 'babae', 'Saturday 16th  June 09:13 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-16'),
(648, 533, 100, 'Customer', 'Saturday 16th  June 09:17 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-16'),
(649, 324, 200, 'jonnah flacido', 'Saturday 16th  June 09:26 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, 'replaced', 'working', '2018-06-16'),
(650, 410, 100, 'rhea rojas', 'Saturday 16th  June 09:26 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-16'),
(651, 349, 150, 'russell delgado', 'Saturday 16th  June 10:30 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-16'),
(652, 557, 100, 'Customer', 'Saturday 16th  June 10:39 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-16'),
(653, 531, 150, 'roem nogales', 'Saturday 16th  June 10:39 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-16'),
(654, 276, 250, 'babae', 'Saturday 16th  June 10:40 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-06-16'),
(655, 502, 50, 'Customer', 'Saturday 16th  June 11:46 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-06-16'),
(656, 502, 50, 'Customer', 'Saturday 16th  June 11:50 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-16'),
(657, 371, 550, 'hamsa kusain', 'Saturday 16th  June 12:04 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 550, '', '', '2018-06-16'),
(658, 74, 100, 'Customer', 'Saturday 16th  June 12:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-16'),
(659, 315, 150, 'liza', 'Saturday 16th  June 01:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-16'),
(660, 409, 100, 'liza', 'Saturday 16th  June 01:08 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-16'),
(661, 502, 50, 'Customer', 'Saturday 16th  June 01:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-16'),
(662, 505, 100, 'Customer', 'Saturday 16th  June 01:26 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-16'),
(663, 342, 150, 'babae at tomboy', 'Saturday 16th  June 02:19 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 150, 'replacement', '566', '2018-06-16'),
(664, 502, 50, 'Customer', 'Saturday 16th  June 02:38 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-16'),
(665, 468, 100, 'marebil', 'Saturday 16th  June 02:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-16'),
(666, 330, 130, 'mary jane sarin', 'Saturday 16th  June 03:47 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, 'replaced', 'working', '2018-06-16'),
(667, 502, 50, 'Customer', 'Saturday 16th  June 03:55 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-16'),
(668, 502, 50, 'Customer', 'Saturday 16th  June 04:35 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-16'),
(669, 504, 50, 'Customer', 'Saturday 16th  June 04:35 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-16');
INSERT INTO `transactionbuy` (`buy_id`, `buy_product_id`, `buy_price`, `name`, `date_time`, `description`, `qty`, `total_price`, `status`, `prod_stat`, `date`) VALUES
(670, 325, 200, 'jonnah flacido', 'Saturday 16th  June 05:22 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 200, 'replacement', '649', '2018-06-16'),
(671, 315, 140, 'mary jane sarin', 'Saturday 16th  June 05:25 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 140, 'replacement', '666', '2018-06-16'),
(672, 349, 150, 'cath', 'Saturday 16th  June 06:03 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-16'),
(673, 457, 100, 'beverly', 'Saturday 16th  June 06:06 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-16'),
(674, 350, 100, 'babae at tomboy', 'Saturday 16th  June 06:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-16'),
(675, 457, 100, 'marife', 'Saturday 16th  June 06:23 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-16'),
(676, 114, 100, 'Customer', 'Saturday 16th  June 06:34 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-16'),
(677, 388, 40, 'Customer', 'Saturday 16th  June 06:35 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-06-16'),
(678, 315, 150, 'aira', 'Saturday 16th  June 06:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-16'),
(679, 503, 90, 'dalaga', 'Saturday 16th  June 06:47 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-06-16'),
(680, 478, 250, 'lalake ', 'Saturday 16th  June 06:47 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-06-16'),
(681, 531, 150, 'peter', 'Saturday 16th  June 06:50 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-16'),
(682, 114, 100, 'Customer', 'Saturday 16th  June 07:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-16'),
(683, 506, 140, 'Customer', 'Saturday 16th  June 07:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-16'),
(684, 502, 50, 'Customer', 'Saturday 16th  June 07:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-16'),
(685, 342, 130, 'rene boy', 'Saturday 16th  June 07:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-06-16'),
(686, 366, 450, 'renelda', 'Saturday 16th  June 07:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 450, '', '', '2018-06-16'),
(687, 506, 130, 'Customer', 'Saturday 16th  June 07:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-06-16'),
(688, 531, 140, 'daniel', 'Saturday 16th  June 07:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-16'),
(689, 502, 50, 'Customer', 'Saturday 16th  June 07:50 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-16'),
(690, 50, 100, 'Customer', 'Saturday 16th  June 08:08 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-16'),
(691, 502, 50, 'Customer', 'Sunday 17th  June 08:25 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-17'),
(692, 379, 370, 'marisa', 'Sunday 17th  June 09:07 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 370, '', '', '2018-06-17'),
(693, 329, 180, 'arthuro deocampo', 'Sunday 17th  June 09:09 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-06-17'),
(694, 380, 350, 'PJ lara', 'Sunday 17th  June 09:20 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-06-17'),
(695, 371, 580, 'Customer', 'Sunday 17th  June 09:21 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 580, '', '', '2018-06-17'),
(696, 409, 100, 'dwin palomo', 'Sunday 17th  June 09:46 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-17'),
(697, 79, 100, 'Customer', 'Sunday 17th  June 10:01 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-17'),
(698, 502, 50, 'Customer', 'Sunday 17th  June 10:05 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-17'),
(699, 502, 50, 'Customer', 'Sunday 17th  June 10:27 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-17'),
(700, 315, 150, 'dimple roldan', 'Sunday 17th  June 10:40 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-17'),
(701, 503, 100, 'journey', 'Sunday 17th  June 10:55 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-17'),
(702, 369, 980, 'jhepson ', 'Sunday 17th  June 11:15 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 980, '', '', '2018-06-17'),
(703, 410, 100, 'jhepson', 'Sunday 17th  June 11:20 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-17'),
(704, 266, 230, 'jhepson', 'Sunday 17th  June 11:23 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 230, '', '', '2018-06-17'),
(705, 109, 100, 'Customer', 'Sunday 17th  June 11:34 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-17'),
(706, 37, 100, 'Customer', 'Sunday 17th  June 01:29 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-17'),
(707, 582, 100, 'lalake', 'Sunday 17th  June 02:35 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-17'),
(708, 109, 100, 'Customer', 'Sunday 17th  June 04:32 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-17'),
(709, 407, 130, 'Customer', 'Sunday 17th  June 05:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-06-17'),
(710, 413, 100, 'Customer', 'Sunday 17th  June 05:47 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-17'),
(711, 413, 100, 'Customer', 'Sunday 17th  June 06:29 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-17'),
(712, 29, 0, 'Customer', 'Sunday 17th  June 06:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 0, '', '', '2018-06-17'),
(713, 349, 150, 'Customer', 'Sunday 17th  June 06:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-17'),
(714, 500, 50, 'Customer', 'Sunday 17th  June 07:03 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-17'),
(715, 388, 35, 'Customer', 'Sunday 17th  June 07:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 35, '', '', '2018-06-17'),
(716, 390, 45, 'Customer', 'Sunday 17th  June 07:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 45, '', '', '2018-06-17'),
(717, 315, 150, 'glen', 'Sunday 17th  June 07:49 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-17'),
(718, 407, 150, 'Customer', 'Sunday 17th  June 08:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-17'),
(719, 407, 50, 'saidamer', 'Sunday 17th  June 08:09 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-17'),
(720, 343, 90, 'babae', 'Monday 18th  June 08:05 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-06-18'),
(721, 342, 140, 'lalake', 'Monday 18th  June 08:05 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-18'),
(722, 389, 40, 'Customer', 'Monday 18th  June 08:05 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-06-18'),
(723, 388, 40, 'Customer', 'Monday 18th  June 08:05 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-06-18'),
(724, 502, 50, 'Customer', 'Monday 18th  June 08:06 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-18'),
(725, 79, 100, 'Customer', 'Monday 18th  June 08:11 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-18'),
(726, 379, 370, 'justin giraldeno', 'Monday 18th  June 09:07 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 370, '', '', '2018-06-18'),
(727, 39, 100, 'Customer', 'Monday 18th  June 09:44 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-18'),
(728, 504, 50, 'Customer', 'Monday 18th  June 09:44 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-18'),
(729, 502, 50, 'Customer', 'Monday 18th  June 10:48 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-18'),
(730, 502, 50, 'Customer', 'Monday 18th  June 11:07 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-18'),
(731, 239, 350, 'lani', 'Monday 18th  June 11:29 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-06-18'),
(732, 502, 50, 'Customer', 'Monday 18th  June 12:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-18'),
(733, 504, 50, 'Customer', 'Monday 18th  June 12:40 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-18'),
(734, 389, 40, 'Customer', 'Monday 18th  June 12:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-06-18'),
(735, 455, 100, 'babae', 'Monday 18th  June 12:58 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-18'),
(736, 321, 230, 'evelyn', 'Monday 18th  June 01:04 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 230, '', '', '2018-06-18'),
(737, 324, 180, 'vibal', 'Monday 18th  June 01:07 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-06-18'),
(738, 319, 170, 'evelyn', 'Monday 18th  June 01:09 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 170, '', '', '2018-06-18'),
(739, 503, 80, 'muslim babae', 'Monday 18th  June 01:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 80, '', '', '2018-06-18'),
(740, 504, 50, 'Customer', 'Monday 18th  June 01:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-18'),
(741, 502, 50, 'Customer', 'Monday 18th  June 01:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-18'),
(742, 502, 50, 'Customer', 'Monday 18th  June 02:57 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-18'),
(743, 502, 50, 'Customer', 'Monday 18th  June 03:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-18'),
(744, 535, 450, 'arneil', 'Monday 18th  June 03:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 450, '', '', '2018-06-18'),
(745, 468, 100, 'Customer', 'Monday 18th  June 03:51 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-18'),
(746, 502, 40, 'Customer', 'Monday 18th  June 05:01 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 3, 120, '', '', '2018-06-18'),
(747, 113, 100, 'Customer', 'Monday 18th  June 05:14 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-18'),
(748, 353, 100, 'lalake nka sumbrero', 'Monday 18th  June 05:38 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-18'),
(749, 456, 350, 'weng', 'Monday 18th  June 06:20 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 350, 'replacement', '539', '2018-06-18'),
(750, 107, 100, 'Customer', 'Monday 18th  June 06:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-18'),
(751, 353, 100, 'babaeng maputi', 'Monday 18th  June 06:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-18'),
(752, 315, 150, 'sherly', 'Monday 18th  June 06:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-18'),
(753, 410, 100, 'randy ', 'Monday 18th  June 06:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-18'),
(754, 317, 150, 'maricar', 'Monday 18th  June 06:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-18'),
(755, 502, 50, 'Customer', 'Monday 18th  June 07:12 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-18'),
(756, 342, 150, 'strelia layo', 'Monday 18th  June 07:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-18'),
(757, 499, 75, 'tomboy', 'Monday 18th  June 07:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 150, '', '', '2018-06-18'),
(758, 352, 100, 'babae at lalake', 'Monday 18th  June 07:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-18'),
(759, 266, 200, 'renelda', 'Monday 18th  June 07:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-06-18'),
(760, 455, 100, 'lalake', 'Monday 18th  June 07:52 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-18'),
(761, 34, 100, 'Customer', 'Monday 18th  June 08:03 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-18'),
(762, 266, 230, 'angelo', 'Monday 18th  June 08:14 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 230, '', '', '2018-06-18'),
(763, 412, 100, 'Customer', 'Tuesday 19th  June 08:19 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-19'),
(764, 407, 150, 'michael', 'Tuesday 19th  June 08:34 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, 'replaced', 'working', '2018-06-19'),
(765, 522, 499, 'angelo', 'Tuesday 19th  June 09:41 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-06-19'),
(766, 407, 120, 'BINATA', 'Tuesday 19th  June 10:01 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, 'replaced', 'defected', '2018-06-19'),
(767, 407, 150, 'BINATA', 'Tuesday 19th  June 10:01 AM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 150, 'replacement', '766', '2018-06-19'),
(768, 42, 100, 'Customer', 'Tuesday 19th  June 10:17 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-19'),
(769, 502, 50, 'Customer', 'Tuesday 19th  June 10:21 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-06-19'),
(770, 502, 50, 'Customer', 'Tuesday 19th  June 10:23 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-19'),
(771, 500, 50, 'Customer', 'Tuesday 19th  June 10:37 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-19'),
(772, 342, 140, 'sisil navaro', 'Tuesday 19th  June 10:47 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-19'),
(773, 502, 50, 'Customer', 'Tuesday 19th  June 11:27 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-19'),
(774, 330, 130, 'lolo', 'Tuesday 19th  June 12:09 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-06-19'),
(775, 502, 50, 'Customer', 'Tuesday 19th  June 12:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-19'),
(776, 388, 40, 'Customer', 'Tuesday 19th  June 01:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-06-19'),
(777, 502, 50, 'Customer', 'Tuesday 19th  June 01:57 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-19'),
(778, 114, 100, 'Customer', 'Tuesday 19th  June 02:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-19'),
(779, 387, 50, 'Customer', 'Tuesday 19th  June 04:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-19'),
(780, 529, 380, 'michael', 'Tuesday 19th  June 05:24 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 380, 'replacement', '764', '2018-06-19'),
(781, 350, 100, 'Customer', 'Tuesday 19th  June 05:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-19'),
(782, 315, 150, 'amy ', 'Tuesday 19th  June 05:32 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-19'),
(783, 415, 100, 'amy ', 'Tuesday 19th  June 05:34 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-19'),
(784, 503, 90, 'dino', 'Tuesday 19th  June 05:37 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-06-19'),
(785, 502, 50, 'Customer', 'Tuesday 19th  June 06:47 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-19'),
(786, 457, 100, 'babae may asaw', 'Tuesday 19th  June 07:19 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-19'),
(787, 531, 140, 'june', 'Tuesday 19th  June 07:23 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-19'),
(788, 504, 50, 'Customer', 'Tuesday 19th  June 07:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-19'),
(789, 502, 50, 'Customer', 'Tuesday 19th  June 07:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-19'),
(790, 502, 50, 'Customer', 'Wednesday 20th  June 08:02 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-20'),
(791, 378, 499, 'renel', 'Wednesday 20th  June 08:11 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, 'refunded', '', '2018-06-20'),
(792, 378, 480, 'renel', 'Wednesday 20th  June 08:12 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 480, '', '', '2018-06-20'),
(793, 389, 40, 'Customer', 'Wednesday 20th  June 08:17 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-06-20'),
(794, 502, 45, 'Customer', 'Wednesday 20th  June 08:42 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 90, '', '', '2018-06-20'),
(795, 506, 130, 'Customer', 'Wednesday 20th  June 10:26 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-06-20'),
(796, 413, 100, 'Customer', 'Wednesday 20th  June 10:50 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-20'),
(797, 26, 100, 'Customer', 'Wednesday 20th  June 11:10 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-20'),
(798, 502, 50, 'Customer', 'Wednesday 20th  June 11:20 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-20'),
(799, 387, 50, 'Customer', 'Wednesday 20th  June 11:22 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-20'),
(800, 329, 180, 'romeo', 'Wednesday 20th  June 11:30 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-06-20'),
(801, 410, 100, 'lalake', 'Wednesday 20th  June 11:33 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, 'replaced', 'defected', '2018-06-20'),
(802, 146, 90, 'Customer', 'Wednesday 20th  June 12:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-06-20'),
(803, 349, 150, 'arnold nakpil', 'Wednesday 20th  June 01:14 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-20'),
(804, 502, 50, 'Customer', 'Wednesday 20th  June 01:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-20'),
(805, 158, 100, 'Customer', 'Wednesday 20th  June 02:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-20'),
(806, 502, 50, 'Customer', 'Wednesday 20th  June 02:30 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-20'),
(807, 502, 50, 'Customer', 'Wednesday 20th  June 03:08 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-06-20'),
(808, 353, 100, 'max', 'Wednesday 20th  June 04:35 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-20'),
(809, 407, 150, 'max', 'Wednesday 20th  June 04:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-20'),
(810, 109, 100, 'Customer', 'Wednesday 20th  June 05:19 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-20'),
(811, 500, 50, 'Customer', 'Wednesday 20th  June 05:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-20'),
(812, 457, 100, 'roy', 'Wednesday 20th  June 06:07 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-20'),
(813, 315, 150, 'lani', 'Wednesday 20th  June 06:37 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, 'replaced', 'defected', '2018-06-20'),
(814, 79, 100, 'Customer', 'Wednesday 20th  June 06:37 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-20'),
(815, 409, 100, 'noralyn', 'Wednesday 20th  June 06:55 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-20'),
(816, 359, 200, 'clara', 'Wednesday 20th  June 07:32 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-06-20'),
(817, 481, 350, 'robellyn', 'Wednesday 20th  June 07:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-06-20'),
(818, 315, 150, 'lani', 'Wednesday 20th  June 07:51 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 150, 'replacement', '813', '2018-06-20'),
(819, 410, 100, 'lalake', 'Wednesday 20th  June 07:55 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 100, 'replacement', '801', '2018-06-20'),
(820, 504, 50, 'Customer', 'Wednesday 20th  June 08:11 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-06-20'),
(821, 502, 45, 'Customer', 'Thursday 21st  June 08:43 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 90, '', '', '2018-06-21'),
(822, 502, 50, 'Customer', 'Thursday 21st  June 08:43 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-21'),
(823, 531, 150, 'student', 'Thursday 21st  June 08:43 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-21'),
(824, 462, 160, 'verunque frederick', 'Thursday 21st  June 08:44 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 160, '', '', '2018-06-21'),
(825, 107, 100, 'Customer', 'Thursday 21st  June 08:45 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-21'),
(826, 502, 50, 'Customer', 'Thursday 21st  June 09:34 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-21'),
(827, 502, 50, 'Customer', 'Thursday 21st  June 10:23 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-21'),
(828, 504, 50, 'Customer', 'Thursday 21st  June 10:27 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-21'),
(829, 504, 50, 'Customer', 'Thursday 21st  June 10:34 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-21'),
(830, 387, 50, 'Customer', 'Thursday 21st  June 10:57 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-21'),
(831, 502, 50, 'Customer', 'Thursday 21st  June 11:33 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-21'),
(832, 527, 380, 'raymond', 'Thursday 21st  June 12:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 380, '', '', '2018-06-21'),
(833, 353, 100, 'raymond', 'Thursday 21st  June 12:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-21'),
(834, 502, 50, 'Customer', 'Thursday 21st  June 01:06 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-06-21'),
(835, 209, 350, 'patrick adrean', 'Thursday 21st  June 01:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-06-21'),
(836, 407, 150, 'patrick adrean', 'Thursday 21st  June 01:15 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-21'),
(837, 579, 50, 'kalbo', 'Thursday 21st  June 01:52 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-21'),
(838, 502, 50, 'Customer', 'Thursday 21st  June 01:53 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-21'),
(839, 343, 100, 'patrick adrean', 'Thursday 21st  June 03:20 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-21'),
(840, 502, 50, 'Customer', 'Thursday 21st  June 04:10 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-21'),
(841, 407, 150, 'jevie roldan', 'Thursday 21st  June 04:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-21'),
(842, 478, 250, 'mylen buntesil', 'Thursday 21st  June 05:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-06-21'),
(843, 317, 150, 'mylen buntesil', 'Thursday 21st  June 05:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-21'),
(844, 602, 150, 'eusento razote', 'Thursday 21st  June 05:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-21'),
(845, 318, 150, 'liezel', 'Thursday 21st  June 05:53 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-21'),
(846, 581, 100, 'babae', 'Saturday 23rd  June 07:45 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-23'),
(847, 502, 50, 'Customer', 'Saturday 23rd  June 07:45 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-23'),
(848, 107, 100, 'Customer', 'Saturday 23rd  June 08:06 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-23'),
(849, 410, 100, 'Customer', 'Saturday 23rd  June 08:10 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-23'),
(850, 315, 150, 'allen constanino', 'Saturday 23rd  June 09:27 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-23'),
(851, 532, 140, 'june tolintino', 'Saturday 23rd  June 09:39 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-23'),
(852, 388, 40, 'Customer', 'Saturday 23rd  June 09:47 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-06-23'),
(853, 504, 50, 'Customer', 'Saturday 23rd  June 10:06 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-23'),
(854, 598, 400, 'romel', 'Saturday 23rd  June 10:27 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 400, '', '', '2018-06-23'),
(855, 535, 430, 'rowena', 'Saturday 23rd  June 10:51 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 430, '', '', '2018-06-23'),
(856, 390, 50, 'Customer', 'Saturday 23rd  June 11:07 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-23'),
(857, 502, 50, 'Customer', 'Saturday 23rd  June 11:52 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-06-23'),
(858, 388, 40, 'Customer', 'Saturday 23rd  June 11:53 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-06-23'),
(859, 317, 150, 'babae sa bakery', 'Saturday 23rd  June 11:53 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-23'),
(860, 504, 50, 'Customer', 'Saturday 23rd  June 12:32 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-23'),
(861, 342, 150, 'ruel', 'Saturday 23rd  June 01:04 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-23'),
(862, 340, 150, 'r jay', 'Saturday 23rd  June 01:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, 'replaced', '', '2018-06-23'),
(863, 379, 300, 'babaeng tawad', 'Saturday 23rd  June 01:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 300, '', '', '2018-06-23'),
(864, 490, 250, 'babaeng tawad', 'Saturday 23rd  June 01:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-06-23'),
(865, 472, 100, 'dalaga', 'Saturday 23rd  June 01:47 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-23'),
(866, 353, 100, 'sexy', 'Saturday 23rd  June 02:08 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-23'),
(867, 363, 499, 'randy masangkay', 'Saturday 23rd  June 02:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-06-23'),
(868, 502, 45, 'Customer', 'Saturday 23rd  June 02:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 45, '', '', '2018-06-23'),
(869, 364, 480, 'andres', 'Saturday 23rd  June 02:51 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 480, '', '', '2018-06-23'),
(870, 89, 100, 'Customer', 'Saturday 23rd  June 03:08 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-23'),
(871, 441, 220, 'lory', 'Saturday 23rd  June 03:30 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 220, '', '', '2018-06-23'),
(872, 113, 100, 'Customer', 'Saturday 23rd  June 04:05 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-23'),
(873, 112, 100, 'Customer', 'Saturday 23rd  June 04:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-23'),
(874, 504, 50, 'Customer', 'Saturday 23rd  June 04:47 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-23'),
(875, 346, 100, 'john carlo', 'Saturday 23rd  June 05:51 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-23'),
(876, 579, 50, 'Customer', 'Saturday 23rd  June 06:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-23'),
(877, 51, 100, 'Customer', 'Saturday 23rd  June 06:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-23'),
(878, 503, 100, 'Customer', 'Saturday 23rd  June 06:55 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-23'),
(879, 379, 390, 'zaldy arida', 'Saturday 23rd  June 07:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 390, '', '', '2018-06-23'),
(880, 503, 100, 'zaldy arida', 'Saturday 23rd  June 07:03 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-23'),
(881, 343, 100, 'roland ejada', 'Saturday 23rd  June 07:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-23'),
(882, 367, 499, 'aljie', 'Saturday 23rd  June 07:28 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-06-23'),
(883, 407, 150, 'johnray', 'Saturday 23rd  June 07:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-23'),
(884, 503, 100, 'renato ramos', 'Saturday 23rd  June 07:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-23'),
(885, 407, 150, 'rexie cruz', 'Saturday 23rd  June 07:59 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-23'),
(886, 349, 150, 'joan', 'Saturday 23rd  June 08:14 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-23'),
(887, 537, 170, 'rolando', 'Sunday 24th  June 08:41 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 170, '', '', '2018-06-24'),
(888, 109, 100, 'Customer', 'Sunday 24th  June 08:43 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-24'),
(889, 351, 200, 'Customer', 'Sunday 24th  June 08:43 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-06-24'),
(890, 415, 100, 'Customer', 'Sunday 24th  June 08:44 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-24'),
(891, 503, 100, 'babae', 'Sunday 24th  June 08:51 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-24'),
(892, 410, 100, 'Customer', 'Sunday 24th  June 09:06 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-24'),
(893, 414, 100, 'Customer', 'Sunday 24th  June 09:41 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-24'),
(894, 408, 100, 'Customer', 'Sunday 24th  June 09:41 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-24'),
(895, 346, 100, 'jhepson', 'Sunday 24th  June 10:19 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-24'),
(896, 415, 100, 'lora miguel', 'Sunday 24th  June 10:23 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-24'),
(897, 415, 100, 'Customer', 'Sunday 24th  June 10:40 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-24'),
(898, 353, 100, 'Customer', 'Sunday 24th  June 11:10 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-24'),
(899, 315, 130, 'Customer', 'Sunday 24th  June 11:16 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, 'replaced', 'working', '2018-06-24'),
(900, 407, 150, 'Customer', 'Sunday 24th  June 11:23 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-24'),
(901, 114, 100, 'Customer', 'Sunday 24th  June 11:52 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-24'),
(902, 378, 499, 'lalake', 'Sunday 24th  June 11:58 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-06-24'),
(903, 317, 150, 'Customer', 'Sunday 24th  June 12:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-24'),
(904, 342, 150, 'Customer', 'Sunday 24th  June 12:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-24'),
(905, 457, 100, 'Customer', 'Sunday 24th  June 12:30 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-24'),
(906, 40, 100, 'Customer', 'Sunday 24th  June 12:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-24'),
(907, 315, 150, 'r jay', 'Sunday 24th  June 01:32 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 150, 'replacement', '862', '2018-06-24'),
(908, 502, 50, 'Customer', 'Sunday 24th  June 02:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-24'),
(909, 389, 40, 'Customer', 'Sunday 24th  June 02:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 80, '', '', '2018-06-24'),
(910, 342, 150, 'Customer', 'Sunday 24th  June 02:50 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-24'),
(911, 495, 230, 'Noalisa', 'Sunday 24th  June 03:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 230, 'refunded', 'defected', '2018-06-24'),
(912, 415, 100, 'Customer', 'Sunday 24th  June 03:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-24'),
(913, 107, 100, 'Customer', 'Sunday 24th  June 04:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-24'),
(914, 502, 40, 'Customer', 'Sunday 24th  June 04:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-06-24'),
(915, 438, 330, 'marlyn', 'Sunday 24th  June 04:57 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 330, '', '', '2018-06-24'),
(916, 419, 120, 'Customer', 'Sunday 24th  June 05:03 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-06-24'),
(917, 323, 150, 'Customer', 'Sunday 24th  June 05:04 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 150, 'replacement', '899', '2018-06-24'),
(918, 491, 430, 'ronald', 'Sunday 24th  June 05:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 430, '', '', '2018-06-24'),
(919, 353, 100, 'Customer', 'Sunday 24th  June 05:14 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-24'),
(920, 534, 300, 'Customer', 'Sunday 24th  June 05:35 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 300, '', '', '2018-06-24'),
(921, 532, 150, 'kristian', 'Sunday 24th  June 06:07 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-24'),
(922, 371, 580, 'joel', 'Sunday 24th  June 06:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 580, '', '', '2018-06-24'),
(923, 502, 50, 'Customer', 'Sunday 24th  June 07:19 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-24'),
(924, 503, 100, 'Customer', 'Sunday 24th  June 07:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-24'),
(925, 321, 200, 'vhicky', 'Sunday 24th  June 08:04 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-06-24'),
(926, 502, 50, 'Customer', 'Monday 25th  June 10:38 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-06-25'),
(927, 539, 330, 'Customer', 'Monday 25th  June 10:38 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 330, '', '', '2018-06-25'),
(928, 107, 100, 'Customer', 'Monday 25th  June 11:22 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-25'),
(929, 534, 300, 'Customer', 'Monday 25th  June 12:51 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 300, '', '', '2018-06-25'),
(930, 107, 100, 'Customer', 'Monday 25th  June 12:51 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-25'),
(931, 446, 180, 'martin', 'Monday 25th  June 12:55 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-06-25'),
(932, 502, 50, 'Customer', 'Monday 25th  June 01:12 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 3, 150, '', '', '2018-06-25'),
(933, 502, 50, 'Customer', 'Monday 25th  June 01:20 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-25'),
(934, 502, 50, 'Customer', 'Monday 25th  June 01:29 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-25'),
(935, 503, 90, 'gab', 'Monday 25th  June 01:30 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-06-25'),
(936, 349, 150, 'cha', 'Monday 25th  June 01:49 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-25'),
(937, 316, 150, 'Customer', 'Monday 25th  June 02:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-25'),
(938, 409, 100, 'Customer', 'Monday 25th  June 02:59 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-25'),
(939, 65, 100, 'Customer', 'Monday 25th  June 03:59 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-25'),
(940, 498, 50, 'Customer', 'Monday 25th  June 04:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-25'),
(941, 360, 280, 'erwin', 'Monday 25th  June 05:23 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 280, '', '', '2018-06-25'),
(942, 376, 499, 'alex', 'Monday 25th  June 06:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-06-25'),
(943, 315, 150, 'angelica', 'Monday 25th  June 07:14 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-25'),
(944, 191, 300, 'carlos', 'Monday 25th  June 07:35 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 300, 'replaced', 'defected', '2018-06-25'),
(945, 588, 350, 'judy', 'Monday 25th  June 07:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-06-25'),
(946, 379, 365, 'Nina', 'Monday 25th  June 07:57 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 365, '', '', '2018-06-25'),
(947, 502, 50, 'Customer', 'Monday 25th  June 08:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-25'),
(948, 266, 220, 'Customer', 'Tuesday 26th  June 09:26 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 220, '', '', '2018-06-26'),
(949, 457, 100, 'Customer', 'Tuesday 26th  June 09:27 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-26'),
(950, 503, 80, 'Customer', 'Tuesday 26th  June 09:48 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 80, '', '', '2018-06-26'),
(951, 471, 100, 'Customer', 'Tuesday 26th  June 09:59 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-26'),
(952, 34, 100, 'Customer', 'Tuesday 26th  June 10:00 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-26'),
(953, 363, 490, 'recardo', 'Tuesday 26th  June 10:13 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 490, '', '', '2018-06-26'),
(954, 42, 100, 'Customer', 'Tuesday 26th  June 10:39 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-26'),
(955, 502, 50, 'Customer', 'Tuesday 26th  June 10:40 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-06-26'),
(956, 315, 150, 'Customer', 'Tuesday 26th  June 10:40 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-26'),
(957, 478, 250, 'len', 'Tuesday 26th  June 10:44 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-06-26'),
(958, 276, 220, 'Customer', 'Tuesday 26th  June 11:21 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 220, '', '', '2018-06-26'),
(959, 411, 100, 'Customer', 'Tuesday 26th  June 11:28 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-26'),
(960, 349, 150, 'Customer', 'Tuesday 26th  June 12:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-26'),
(961, 342, 140, 'margie', 'Tuesday 26th  June 01:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-26'),
(962, 346, 100, 'Customer', 'Tuesday 26th  June 02:09 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-26'),
(963, 502, 50, 'Customer', 'Tuesday 26th  June 02:32 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-26'),
(964, 421, 100, 'Customer', 'Tuesday 26th  June 02:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-26'),
(965, 387, 50, 'Customer', 'Tuesday 26th  June 03:16 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-06-26'),
(966, 468, 100, 'matandang babae', 'Tuesday 26th  June 03:33 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-26'),
(967, 317, 140, 'edwin panagniban', 'Tuesday 26th  June 03:49 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-26'),
(968, 114, 100, 'Customer', 'Tuesday 26th  June 04:10 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-26'),
(969, 342, 150, 'Customer', 'Tuesday 26th  June 04:11 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-26'),
(970, 448, 1700, 'sister anna', 'Tuesday 26th  June 05:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 1700, '', '', '2018-06-26'),
(971, 327, 150, 'Customer', 'Tuesday 26th  June 05:51 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-26'),
(972, 457, 100, 'Customer', 'Tuesday 26th  June 06:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-26'),
(973, 331, 140, 'Customer', 'Tuesday 26th  June 06:28 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-06-26'),
(974, 407, 150, 'joshua', 'Tuesday 26th  June 06:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-26'),
(975, 327, 150, 'Customer', 'Tuesday 26th  June 07:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-26'),
(976, 418, 100, 'Customer', 'Tuesday 26th  June 07:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-26'),
(977, 113, 100, 'Customer', 'Tuesday 26th  June 07:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 200, '', '', '2018-06-26'),
(978, 315, 150, 'jomar', 'Tuesday 26th  June 07:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, 'replaced', 'defected', '2018-06-26'),
(979, 408, 100, 'Customer', 'Tuesday 26th  June 07:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-06-26'),
(980, 582, 100, 'binata dalawa', 'Tuesday 26th  June 08:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 200, '', '', '2018-06-26'),
(981, 315, 150, 'Customer', 'Tuesday 26th  June 08:07 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-26'),
(982, 315, 150, 'Customer', 'Wednesday 27th  June 09:06 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-06-27'),
(983, 502, 45, 'Customer', 'Wednesday 27th  June 09:06 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 45, '', '', '2018-06-27'),
(984, 500, 50, 'Customer', 'Wednesday 27th  June 09:07 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-06-27'),
(985, 342, 140, 'anabel', 'Wednesday 27th  June 09:26 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, 'replaced', 'defected', '2018-06-27'),
(986, 587, 340, 'mae', 'Wednesday 27th  June 09:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 340, '', '', '2018-06-27'),
(987, 502, 50, 'Customer', 'Wednesday 27th  June 09:55 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-06-27'),
(988, 344, 140, 'anabel', 'Wednesday 27th  June 09:56 AM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 140, 'replacement', '985', '2018-06-27'),
(989, 539, 350, 'rhea rojas', 'Saturday 7th  July 09:29 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-07-07'),
(990, 502, 50, 'Customer', 'Saturday 7th  July 09:30 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-07'),
(991, 536, 350, 'jose', 'Saturday 7th  July 09:33 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-07-07'),
(992, 388, 40, 'Customer', 'Saturday 7th  July 10:04 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-07-07');
INSERT INTO `transactionbuy` (`buy_id`, `buy_product_id`, `buy_price`, `name`, `date_time`, `description`, `qty`, `total_price`, `status`, `prod_stat`, `date`) VALUES
(993, 353, 100, 'mary rose', 'Saturday 7th  July 10:14 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-07'),
(994, 330, 100, 'sidecar', 'Saturday 7th  July 10:20 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-07'),
(995, 532, 150, 'jhen franco', 'Saturday 7th  July 10:38 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-07'),
(996, 410, 100, 'nichole', 'Saturday 7th  July 11:02 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 200, '', '', '2018-07-07'),
(997, 360, 280, 'angelo firemeja', 'Saturday 7th  July 11:41 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 280, '', '', '2018-07-07'),
(998, 89, 100, 'Customer', 'Saturday 7th  July 12:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-07'),
(999, 37, 100, 'Customer', 'Saturday 7th  July 12:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-07'),
(1000, 441, 220, 'lory', 'Saturday 7th  July 12:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 220, '', '', '2018-07-07'),
(1001, 458, 150, 'lory', 'Saturday 7th  July 12:47 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, 'replaced', 'defected', '2018-07-07'),
(1002, 468, 100, 'Customer', 'Saturday 7th  July 01:07 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-07'),
(1003, 389, 40, 'Customer', 'Saturday 7th  July 01:07 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-07-07'),
(1004, 504, 50, 'Customer', 'Saturday 7th  July 01:32 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-07'),
(1005, 412, 100, 'Customer', 'Saturday 7th  July 04:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-07'),
(1006, 318, 150, 'JAMES', 'Saturday 7th  July 05:19 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-07'),
(1007, 276, 250, 'JOEL QUINIS', 'Saturday 7th  July 05:32 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-07-07'),
(1008, 330, 120, 'sidecar', 'Saturday 7th  July 05:33 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-07-07'),
(1009, 508, 150, 'juanito', 'Saturday 7th  July 05:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-07'),
(1010, 487, 580, 'reymar', 'Saturday 7th  July 06:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 580, '', '', '2018-07-07'),
(1011, 353, 100, 'mark', 'Saturday 7th  July 07:07 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-07'),
(1012, 353, 100, 'babaeng maputi na ma', 'Saturday 7th  July 07:08 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-07'),
(1013, 350, 100, 'reynald', 'Saturday 7th  July 07:16 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-07'),
(1014, 113, 100, 'Customer', 'Saturday 7th  July 07:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-07'),
(1015, 315, 150, 'claire', 'Saturday 7th  July 07:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-07'),
(1016, 73, 100, 'Customer', 'Saturday 7th  July 07:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-07'),
(1017, 490, 250, 'vessie carili', 'Sunday 8th  July 08:23 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-07-08'),
(1018, 375, 499, 'vessie carili', 'Sunday 8th  July 08:26 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-07-08'),
(1019, 506, 150, 'Customer', 'Sunday 8th  July 08:26 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-08'),
(1020, 502, 50, 'Customer', 'Sunday 8th  July 08:26 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-08'),
(1021, 388, 40, 'Customer', 'Sunday 8th  July 08:26 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-07-08'),
(1022, 390, 50, 'Customer', 'Sunday 8th  July 08:27 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-08'),
(1023, 502, 50, 'Customer', 'Sunday 8th  July 08:27 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-08'),
(1024, 490, 250, 'junica', 'Sunday 8th  July 08:57 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-07-08'),
(1025, 502, 50, 'Customer', 'Sunday 8th  July 09:10 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-08'),
(1026, 447, 1800, 'jb gonzales', 'Sunday 8th  July 09:50 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 1800, '', '', '2018-07-08'),
(1027, 110, 100, 'Customer', 'Sunday 8th  July 10:24 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-08'),
(1028, 598, 400, 'jonathan', 'Sunday 8th  July 11:03 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 400, '', '', '2018-07-08'),
(1029, 73, 100, 'Customer', 'Sunday 8th  July 11:16 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-08'),
(1030, 502, 50, 'Customer', 'Sunday 8th  July 11:22 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 3, 150, '', '', '2018-07-08'),
(1031, 330, 130, 'ison', 'Sunday 8th  July 11:23 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-07-08'),
(1032, 502, 50, 'Customer', 'Sunday 8th  July 11:55 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-08'),
(1033, 503, 80, 'matandang lalake', 'Sunday 8th  July 12:11 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 80, '', '', '2018-07-08'),
(1034, 485, 350, 'jismar', 'Sunday 8th  July 01:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-07-08'),
(1035, 380, 350, 'mario', 'Sunday 8th  July 01:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-07-08'),
(1036, 330, 100, 'mario', 'Sunday 8th  July 01:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-08'),
(1037, 315, 140, 'tisa', 'Sunday 8th  July 01:59 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-07-08'),
(1038, 390, 50, 'Customer', 'Sunday 8th  July 02:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-08'),
(1039, 342, 150, 'reymark', 'Sunday 8th  July 02:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-08'),
(1040, 380, 350, 'reymark', 'Sunday 8th  July 02:38 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-07-08'),
(1041, 389, 40, 'reymark', 'Sunday 8th  July 02:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-07-08'),
(1042, 602, 150, 'angelica', 'Sunday 8th  July 02:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-08'),
(1043, 502, 50, 'Customer', 'Sunday 8th  July 02:49 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-08'),
(1044, 407, 150, 'mark valdes', 'Sunday 8th  July 03:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-08'),
(1045, 434, 450, 'joshua', 'Sunday 8th  July 03:09 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 450, '', '', '2018-07-08'),
(1046, 349, 150, 'ela', 'Sunday 8th  July 03:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-08'),
(1047, 523, 499, 'juli paguta', 'Sunday 8th  July 03:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-07-08'),
(1048, 202, 350, 'jheng', 'Sunday 8th  July 03:32 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-07-08'),
(1049, 491, 400, 'arnel', 'Sunday 8th  July 03:49 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 400, '', '', '2018-07-08'),
(1050, 461, 180, 'lory', 'Sunday 8th  July 04:04 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 180, 'replacement', '1001', '2018-07-08'),
(1051, 315, 150, 'albert', 'Sunday 8th  July 04:16 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-08'),
(1052, 502, 50, 'Customer', 'Sunday 8th  July 05:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-07-08'),
(1053, 336, 180, 'mark istastion', 'Sunday 8th  July 05:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-07-08'),
(1054, 89, 100, 'Customer', 'Sunday 8th  July 05:32 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-08'),
(1055, 503, 90, 'Customer', 'Sunday 8th  July 05:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-07-08'),
(1056, 502, 50, 'Customer', 'Sunday 8th  July 05:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-08'),
(1057, 504, 50, 'Customer', 'Sunday 8th  July 05:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-08'),
(1058, 407, 130, 'tricylce  driver', 'Sunday 8th  July 06:12 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-07-08'),
(1059, 504, 50, 'Customer', 'Sunday 8th  July 06:49 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-08'),
(1060, 395, 150, 'bryan', 'Sunday 8th  July 07:28 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-08'),
(1061, 330, 110, 'bryan', 'Sunday 8th  July 07:29 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 110, '', '', '2018-07-08'),
(1062, 502, 50, 'Customer', 'Tuesday 10th  July 08:51 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-10'),
(1063, 324, 190, 'kalbo', 'Tuesday 10th  July 08:58 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 190, '', '', '2018-07-10'),
(1064, 349, 150, 'angela maximo', 'Tuesday 10th  July 09:09 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-10'),
(1065, 407, 150, 'angela maximo', 'Tuesday 10th  July 09:09 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-10'),
(1066, 502, 50, 'Customer', 'Tuesday 10th  July 09:40 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-10'),
(1067, 505, 100, 'Customer', 'Tuesday 10th  July 09:52 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-10'),
(1068, 531, 150, 'aeron', 'Tuesday 10th  July 10:29 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-10'),
(1069, 353, 100, 'angelo canave', 'Tuesday 10th  July 10:33 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-10'),
(1070, 113, 100, 'Customer', 'Tuesday 10th  July 12:38 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-10'),
(1071, 413, 100, 'Customer', 'Tuesday 10th  July 01:52 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-10'),
(1072, 65, 100, 'Customer', 'Tuesday 10th  July 02:08 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-10'),
(1073, 90, 100, 'Customer', 'Tuesday 10th  July 02:09 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-10'),
(1074, 315, 140, 'teacher', 'Tuesday 10th  July 02:26 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-07-10'),
(1075, 392, 90, 'babae', 'Tuesday 10th  July 02:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-07-10'),
(1076, 49, 100, 'Customer', 'Tuesday 10th  July 03:05 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-10'),
(1077, 77, 100, 'Customer', 'Tuesday 10th  July 03:05 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-10'),
(1078, 320, 130, 'lalakeng maliit', 'Tuesday 10th  July 03:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-07-10'),
(1079, 408, 100, 'Customer', 'Tuesday 10th  July 03:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-10'),
(1080, 409, 100, 'Customer', 'Tuesday 10th  July 04:37 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-10'),
(1081, 502, 50, 'Customer', 'Tuesday 10th  July 04:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-10'),
(1082, 502, 50, 'Customer', 'Tuesday 10th  July 04:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-10'),
(1083, 505, 100, 'Customer', 'Tuesday 10th  July 04:50 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-10'),
(1084, 407, 150, 'mackie', 'Tuesday 10th  July 05:52 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, 'replaced', 'working', '2018-07-10'),
(1085, 531, 150, 'mackie', 'Tuesday 10th  July 05:54 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 150, 'replacement', '1084', '2018-07-10'),
(1086, 599, 800, 'magsasaging', 'Tuesday 10th  July 07:03 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 800, '', '', '2018-07-10'),
(1087, 502, 50, 'Customer', 'Tuesday 10th  July 07:04 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-10'),
(1088, 388, 40, 'Customer', 'Tuesday 10th  July 07:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-07-10'),
(1089, 315, 150, 'viadine', 'Tuesday 10th  July 07:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-10'),
(1090, 113, 100, 'Customer', 'Tuesday 10th  July 07:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-10'),
(1091, 505, 100, 'Customer', 'Tuesday 10th  July 07:51 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-10'),
(1092, 502, 50, 'Customer', 'Tuesday 10th  July 07:51 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-10'),
(1093, 502, 50, 'Customer', 'Wednesday 11th  July 08:42 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-11'),
(1094, 502, 45, 'Customer', 'Wednesday 11th  July 08:52 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 90, '', '', '2018-07-11'),
(1095, 359, 230, 'james  atienza', 'Wednesday 11th  July 09:43 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 230, '', '', '2018-07-11'),
(1096, 407, 120, 'enzo', 'Wednesday 11th  July 09:58 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-07-11'),
(1097, 502, 50, 'Customer', 'Wednesday 11th  July 10:22 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-11'),
(1098, 502, 50, 'Customer', 'Wednesday 11th  July 10:42 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-11'),
(1099, 506, 150, 'Customer', 'Wednesday 11th  July 10:42 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-11'),
(1100, 315, 140, 'lalake', 'Wednesday 11th  July 11:28 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-07-11'),
(1101, 503, 90, 'student', 'Wednesday 11th  July 11:29 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-07-11'),
(1102, 505, 100, 'mangga', 'Wednesday 11th  July 11:44 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-11'),
(1103, 506, 150, 'Customer', 'Wednesday 11th  July 11:44 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-11'),
(1104, 37, 100, 'Customer', 'Wednesday 11th  July 11:50 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-11'),
(1105, 342, 130, 'emelita', 'Wednesday 11th  July 11:55 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-07-11'),
(1106, 447, 1800, 'magsasaging', 'Wednesday 11th  July 12:10 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 1800, '', '', '2018-07-11'),
(1107, 502, 50, 'Customer', 'Wednesday 11th  July 12:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-11'),
(1108, 355, 380, 'clementino', 'Wednesday 11th  July 01:20 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 380, '', '', '2018-07-11'),
(1109, 388, 40, 'Customer', 'Wednesday 11th  July 01:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-07-11'),
(1110, 385, 2999, 'kristinegwen padilla', 'Wednesday 11th  July 01:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 2999, '', '', '2018-07-11'),
(1111, 77, 100, 'Customer', 'Wednesday 11th  July 03:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-11'),
(1112, 410, 100, 'lalakeng my ksamang ', 'Wednesday 11th  July 03:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-11'),
(1113, 330, 120, 'ron', 'Wednesday 11th  July 04:05 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-07-11'),
(1114, 502, 50, 'Customer', 'Wednesday 11th  July 04:07 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-07-11'),
(1115, 411, 100, 'Customer', 'Wednesday 11th  July 04:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, 'replaced', 'working', '2018-07-11'),
(1116, 315, 150, 'micheall bitara', 'Wednesday 11th  July 04:53 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-11'),
(1117, 343, 100, 'badong', 'Wednesday 11th  July 05:20 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-11'),
(1118, 502, 50, 'Customer', 'Wednesday 11th  July 05:23 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-07-11'),
(1119, 390, 50, 'Customer', 'Wednesday 11th  July 06:05 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-11'),
(1120, 407, 150, 'Customer', 'Wednesday 11th  July 06:32 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 150, 'replacement', '1115', '2018-07-11'),
(1121, 531, 150, 'Customer', 'Wednesday 11th  July 06:49 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-11'),
(1122, 502, 50, 'Customer', 'Wednesday 11th  July 06:49 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-11'),
(1123, 89, 100, 'Customer', 'Wednesday 11th  July 06:55 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-11'),
(1124, 415, 100, 'Customer', 'Saturday 14th  July 08:57 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-14'),
(1125, 502, 50, 'Customer', 'Saturday 14th  July 08:57 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-14'),
(1126, 504, 50, 'Customer', 'Saturday 14th  July 08:57 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-14'),
(1127, 490, 250, 'patrick', 'Saturday 14th  July 08:58 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-07-14'),
(1128, 392, 100, 'Customer', 'Saturday 14th  July 08:58 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-14'),
(1129, 502, 50, 'Customer', 'Saturday 14th  July 10:00 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 5, 250, '', '', '2018-07-14'),
(1130, 341, 130, 'Customer', 'Saturday 14th  July 10:01 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-07-14'),
(1131, 502, 50, 'Customer', 'Saturday 14th  July 10:25 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-14'),
(1132, 317, 150, 'matandang lalake', 'Saturday 14th  July 10:39 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-14'),
(1133, 531, 140, 'nap', 'Saturday 14th  July 10:48 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-07-14'),
(1134, 392, 100, 'Customer', 'Saturday 14th  July 11:08 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-14'),
(1135, 468, 100, 'johnpaul', 'Saturday 14th  July 12:10 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-14'),
(1136, 319, 190, 'jackie', 'Saturday 14th  July 12:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 190, 'replaced', 'working', '2018-07-14'),
(1137, 395, 150, 'lalake', 'Saturday 14th  July 12:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-14'),
(1138, 502, 50, 'Customer', 'Saturday 14th  July 12:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 3, 150, '', '', '2018-07-14'),
(1139, 118, 100, 'Customer', 'Saturday 14th  July 12:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-14'),
(1140, 407, 130, 'bakla', 'Saturday 14th  July 12:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-07-14'),
(1141, 502, 50, 'Customer', 'Saturday 14th  July 01:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-14'),
(1142, 502, 50, 'Customer', 'Saturday 14th  July 01:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-14'),
(1143, 483, 480, 'micheal', 'Saturday 14th  July 02:03 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 480, '', '', '2018-07-14'),
(1144, 502, 50, 'Customer', 'Saturday 14th  July 03:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-14'),
(1145, 109, 100, 'Customer', 'Saturday 14th  July 03:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-14'),
(1146, 73, 100, 'Customer', 'Saturday 14th  July 03:56 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-14'),
(1147, 248, 380, 'mildred', 'Saturday 14th  July 04:09 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 380, '', '', '2018-07-14'),
(1148, 366, 450, 'kilvin', 'Saturday 14th  July 04:58 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 450, '', '', '2018-07-14'),
(1149, 379, 350, 'kilvin', 'Saturday 14th  July 04:58 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-07-14'),
(1150, 504, 50, 'Customer', 'Saturday 14th  July 05:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-07-14'),
(1151, 505, 100, 'Customer', 'Saturday 14th  July 05:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-14'),
(1152, 502, 50, 'Customer', 'Saturday 14th  July 05:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-14'),
(1153, 615, 270, 'nkahikaw', 'Saturday 14th  July 05:28 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 270, '', '', '2018-07-14'),
(1154, 623, 100, 'Customer', 'Saturday 14th  July 05:49 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-14'),
(1155, 525, 350, 'johnrey', 'Saturday 14th  July 05:58 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-07-14'),
(1156, 44, 100, 'Customer', 'Saturday 14th  July 05:59 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-14'),
(1157, 505, 100, 'Customer', 'Saturday 14th  July 05:59 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-14'),
(1158, 504, 50, 'Customer', 'Saturday 14th  July 06:07 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-14'),
(1159, 566, 100, 'Customer', 'Saturday 14th  July 06:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-14'),
(1160, 504, 50, 'Customer', 'Saturday 14th  July 06:16 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-14'),
(1161, 409, 100, 'Customer', 'Saturday 14th  July 06:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-14'),
(1162, 596, 650, 'maribel', 'Saturday 14th  July 06:50 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 650, '', '', '2018-07-14'),
(1163, 359, 200, 'maribel', 'Saturday 14th  July 06:51 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-07-14'),
(1164, 78, 100, 'Customer', 'Saturday 14th  July 06:55 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-14'),
(1165, 413, 100, 'Customer', 'Saturday 14th  July 07:01 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-14'),
(1166, 482, 150, 'yannah', 'Saturday 14th  July 07:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, 'replaced', 'defected', '2018-07-14'),
(1167, 380, 350, 'marvin', 'Saturday 14th  July 07:26 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-07-14'),
(1168, 379, 390, 'rodne', 'Sunday 15th  July 09:13 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 390, '', '', '2018-07-15'),
(1169, 534, 300, 'jr', 'Sunday 15th  July 09:13 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 300, '', '', '2018-07-15'),
(1170, 502, 50, 'Customer', 'Sunday 15th  July 09:59 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-15'),
(1171, 411, 100, 'Customer', 'Sunday 15th  July 10:30 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-15'),
(1172, 506, 150, 'Customer', 'Sunday 15th  July 10:57 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-15'),
(1173, 502, 50, 'Customer', 'Sunday 15th  July 11:06 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-07-15'),
(1174, 506, 150, 'Customer', 'Sunday 15th  July 11:32 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-15'),
(1175, 502, 50, 'Customer', 'Sunday 15th  July 11:33 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-15'),
(1176, 505, 100, 'Customer', 'Sunday 15th  July 11:36 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-15'),
(1177, 349, 150, 'yannah', 'Sunday 15th  July 11:40 AM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 150, 'replacement', '1166', '2018-07-15'),
(1178, 580, 120, 'jackie', 'Sunday 15th  July 12:41 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 120, 'replacement', '1136', '2018-07-15'),
(1179, 506, 150, 'Customer', 'Sunday 15th  July 12:47 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-15'),
(1180, 107, 100, 'Customer', 'Sunday 15th  July 12:47 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-15'),
(1181, 315, 150, 'jomar', 'Sunday 15th  July 01:24 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 150, 'replacement', '978', '2018-07-15'),
(1182, 78, 100, 'Customer', 'Sunday 15th  July 01:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-15'),
(1183, 487, 500, 'Customer', 'Sunday 15th  July 01:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 500, '', '', '2018-07-15'),
(1184, 531, 150, 'kia', 'Sunday 15th  July 01:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-15'),
(1185, 93, 100, 'Customer', 'Sunday 15th  July 01:34 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-15'),
(1186, 502, 50, 'Customer', 'Sunday 15th  July 01:50 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-15'),
(1187, 611, 350, 'MIL', 'Sunday 15th  July 02:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-07-15'),
(1188, 342, 150, 'Jhellie', 'Sunday 15th  July 02:15 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-15'),
(1189, 448, 1650, 'patricia', 'Sunday 15th  July 02:35 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 1650, '', '', '2018-07-15'),
(1190, 409, 90, 'Customer', 'Sunday 15th  July 02:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-07-15'),
(1191, 328, 150, 'jenifer', 'Sunday 15th  July 02:53 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-15'),
(1192, 452, 830, 'arnel', 'Sunday 15th  July 03:06 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 830, '', '', '2018-07-15'),
(1193, 498, 50, 'Customer', 'Sunday 15th  July 03:11 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-15'),
(1194, 502, 50, 'Customer', 'Sunday 15th  July 03:11 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-15'),
(1195, 330, 120, 'molet', 'Sunday 15th  July 03:29 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-07-15'),
(1196, 506, 120, 'Customer', 'Sunday 15th  July 03:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-07-15'),
(1197, 504, 50, 'Customer', 'Sunday 15th  July 03:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-15'),
(1198, 363, 480, 'ronel ristauro', 'Sunday 15th  July 04:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 480, '', '', '2018-07-15'),
(1199, 266, 250, 'rudy', 'Sunday 15th  July 04:28 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-07-15'),
(1200, 353, 100, 'charlene', 'Sunday 15th  July 04:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-15'),
(1201, 502, 50, 'Customer', 'Sunday 15th  July 04:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-07-15'),
(1202, 75, 100, 'Customer', 'Sunday 15th  July 04:51 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-15'),
(1203, 106, 100, 'Customer', 'Sunday 15th  July 05:07 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 200, '', '', '2018-07-15'),
(1204, 64, 100, 'Customer', 'Sunday 15th  July 05:11 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-15'),
(1205, 258, 500, 'carlo adura', 'Sunday 15th  July 05:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 500, '', '', '2018-07-15'),
(1206, 468, 100, 'Customer', 'Sunday 15th  July 05:28 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-15'),
(1207, 503, 90, 'Customer', 'Sunday 15th  July 05:29 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-07-15'),
(1208, 344, 100, 'jackie', 'Sunday 15th  July 05:29 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-15'),
(1209, 503, 100, 'Customer', 'Sunday 15th  July 05:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-15'),
(1210, 410, 100, 'Customer', 'Sunday 15th  July 05:40 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, 'replaced', 'defected', '2018-07-15'),
(1211, 191, 300, 'carlos', 'Sunday 15th  July 06:47 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 300, 'replacement', '944', '2018-07-15'),
(1212, 533, 100, 'carlos', 'Sunday 15th  July 06:49 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-15'),
(1213, 315, 150, 'carolyn pablo', 'Sunday 15th  July 06:55 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-15'),
(1214, 410, 100, 'Customer', 'Sunday 15th  July 07:00 PM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 100, 'replacement', '1210', '2018-07-15'),
(1215, 502, 50, 'Customer', 'Sunday 15th  July 07:05 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-15'),
(1216, 506, 120, 'Customer', 'Sunday 15th  July 07:58 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-07-15'),
(1217, 409, 100, 'erica bautista', 'Sunday 15th  July 08:14 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-15'),
(1218, 530, 180, 'Customer', 'Tuesday 17th  July 09:05 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-07-17'),
(1219, 504, 50, 'Customer', 'Tuesday 17th  July 09:15 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-17'),
(1220, 276, 230, 'rojely', 'Tuesday 17th  July 09:17 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 230, '', '', '2018-07-17'),
(1221, 113, 100, 'Customer', 'Tuesday 17th  July 10:01 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-17'),
(1222, 315, 140, 'jr', 'Tuesday 17th  July 10:02 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-07-17'),
(1223, 266, 230, 'kilvin', 'Tuesday 17th  July 10:28 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 230, '', '', '2018-07-17'),
(1224, 507, 150, 'Customer', 'Tuesday 17th  July 10:41 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-17'),
(1225, 315, 150, 'erica franco', 'Tuesday 17th  July 10:51 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-17'),
(1226, 330, 130, 'rowena tolosa', 'Tuesday 17th  July 11:15 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-07-17'),
(1227, 505, 100, 'Customer', 'Tuesday 17th  July 11:22 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-17'),
(1228, 327, 150, 'MATABNGKULOT', 'Tuesday 17th  July 11:27 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-17'),
(1229, 263, 280, 'Customer', 'Tuesday 17th  July 11:32 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 280, '', '', '2018-07-17'),
(1230, 471, 100, 'Customer', 'Tuesday 17th  July 01:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-17'),
(1231, 410, 100, 'Customer', 'Tuesday 17th  July 01:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, 'refunded', '', '2018-07-17'),
(1232, 506, 140, 'mabalbas', 'Tuesday 17th  July 02:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-07-17'),
(1233, 361, 350, 'Customer', 'Tuesday 17th  July 03:28 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-07-17'),
(1234, 342, 140, 'Customer', 'Tuesday 17th  July 04:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-07-17'),
(1235, 362, 440, 'Customer', 'Tuesday 17th  July 04:19 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 440, '', '', '2018-07-17'),
(1236, 407, 150, 'alvin', 'Tuesday 17th  July 04:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-17'),
(1237, 350, 100, 'barbie', 'Tuesday 17th  July 04:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-17'),
(1238, 362, 450, 'Customer nerd', 'Tuesday 17th  July 04:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 450, '', '', '2018-07-17'),
(1239, 504, 50, 'Customer', 'Tuesday 17th  July 04:57 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-07-17'),
(1240, 499, 85, 'Customer', 'Tuesday 17th  July 05:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 85, '', '', '2018-07-17'),
(1241, 410, 100, 'Customer', 'Tuesday 17th  July 06:52 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-17'),
(1242, 330, 120, 'Customer', 'Tuesday 17th  July 07:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-07-17'),
(1243, 504, 50, 'Customer', 'Tuesday 17th  July 07:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-17'),
(1244, 330, 120, 'ining', 'Wednesday 18th  July 08:59 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, 'refunded', '', '2018-07-18'),
(1245, 506, 120, 'Customer', 'Wednesday 18th  July 09:01 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-07-18'),
(1246, 502, 50, 'Customer', 'Wednesday 18th  July 09:01 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-18'),
(1247, 349, 100, 'james tropa', 'Wednesday 18th  July 09:01 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-18'),
(1248, 412, 100, 'ching', 'Wednesday 18th  July 09:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-18'),
(1249, 315, 140, 'ching', 'Wednesday 18th  July 09:38 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-07-18'),
(1250, 585, 350, 'marcelo', 'Wednesday 18th  July 09:46 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-07-18'),
(1251, 342, 150, 'Customer', 'Wednesday 18th  July 10:43 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-18'),
(1252, 500, 50, 'Customer', 'Wednesday 18th  July 10:46 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, 'replaced', '', '2018-07-18'),
(1253, 505, 100, 'Customer', 'Wednesday 18th  July 11:21 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-18'),
(1254, 317, 130, 'Customer', 'Wednesday 18th  July 11:41 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-07-18'),
(1255, 407, 150, 'Customer', 'Wednesday 18th  July 12:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-18'),
(1256, 315, 140, 'Customer', 'Wednesday 18th  July 12:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-07-18'),
(1257, 350, 100, 'Customer', 'Wednesday 18th  July 01:05 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-18'),
(1258, 388, 40, 'Customer', 'Wednesday 18th  July 01:07 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-07-18'),
(1259, 503, 100, 'bakla malake mata', 'Wednesday 18th  July 01:38 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-18'),
(1260, 503, 100, 'Customer', 'Wednesday 18th  July 01:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-18'),
(1261, 502, 50, 'Customer', 'Wednesday 18th  July 02:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-18'),
(1262, 503, 80, 'Customer', 'Wednesday 18th  July 04:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 80, '', '', '2018-07-18'),
(1263, 503, 100, 'Customer', 'Wednesday 18th  July 04:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-18'),
(1264, 506, 140, 'Customer', 'Wednesday 18th  July 04:58 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-07-18'),
(1265, 507, 150, 'Customer', 'Wednesday 18th  July 05:50 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-18'),
(1266, 113, 100, 'Customer', 'Wednesday 18th  July 06:14 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-18'),
(1267, 318, 130, 'ANALYN', 'Wednesday 18th  July 06:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-07-18'),
(1268, 504, 50, 'Customer', 'Wednesday 18th  July 06:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-18'),
(1269, 410, 100, 'Customer', 'Wednesday 18th  July 07:23 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-18'),
(1270, 447, 1999, 'Customer', 'Wednesday 18th  July 07:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 1999, '', '', '2018-07-18'),
(1271, 375, 499, 'MATANDA', 'Wednesday 18th  July 08:06 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-07-18'),
(1272, 315, 150, 'Customer', 'Saturday 21st  July 09:11 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, 'replaced', 'working', '2018-07-21'),
(1273, 502, 50, 'Customer', 'Saturday 21st  July 09:11 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-21'),
(1274, 503, 80, 'Customer', 'Saturday 21st  July 09:11 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 80, '', '', '2018-07-21'),
(1275, 342, 130, 'Customer', 'Saturday 21st  July 09:12 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-07-21'),
(1276, 502, 50, 'Customer', 'Saturday 21st  July 09:13 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-21'),
(1277, 485, 380, 'pizza', 'Saturday 21st  July 09:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 380, '', '', '2018-07-21'),
(1278, 503, 100, 'pizza', 'Saturday 21st  July 09:36 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-21'),
(1279, 318, 140, 'gulay', 'Saturday 21st  July 09:36 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-07-21'),
(1280, 480, 350, 'Customer', 'Saturday 21st  July 09:52 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-07-21'),
(1281, 344, 100, 'jenny', 'Saturday 21st  July 10:25 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-21'),
(1282, 412, 100, 'Customer', 'Saturday 21st  July 10:39 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-21'),
(1283, 502, 50, 'Customer', 'Saturday 21st  July 10:56 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-21'),
(1284, 539, 270, 'Customer', 'Saturday 21st  July 11:19 AM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 270, 'replacement', '1272', '2018-07-21'),
(1285, 503, 90, 'eric', 'Saturday 21st  July 11:28 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-07-21'),
(1286, 505, 100, 'Customer', 'Saturday 21st  July 11:28 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-21'),
(1287, 506, 130, 'Customer', 'Saturday 21st  July 11:50 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-07-21'),
(1288, 315, 150, 'rhiza', 'Saturday 21st  July 12:12 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-21'),
(1289, 586, 350, 'Customer', 'Saturday 21st  July 02:32 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-07-21'),
(1290, 502, 50, 'Customer', 'Saturday 21st  July 04:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-21'),
(1291, 505, 100, 'Customer', 'Saturday 21st  July 05:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-21'),
(1292, 407, 120, 'asawa ni jushua', 'Saturday 21st  July 05:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-07-21'),
(1293, 81, 100, 'Customer', 'Saturday 21st  July 06:04 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-21'),
(1294, 407, 140, 'jace campang', 'Saturday 21st  July 06:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-07-21'),
(1295, 503, 100, 'Customer', 'Saturday 21st  July 06:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-21'),
(1296, 465, 250, 'rohelyo', 'Saturday 21st  July 06:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-07-21'),
(1297, 375, 499, 'lalake', 'Saturday 21st  July 07:28 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-07-21'),
(1298, 315, 150, 'angel', 'Saturday 21st  July 07:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-21'),
(1299, 499, 85, 'Customer', 'Sunday 22nd  July 09:33 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 85, '', '', '2018-07-22'),
(1300, 507, 150, 'Customer', 'Sunday 22nd  July 10:17 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-22'),
(1301, 388, 40, 'Customer', 'Sunday 22nd  July 10:18 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-07-22'),
(1302, 382, 2199, 'Customer', 'Sunday 22nd  July 10:50 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 2199, '', '', '2018-07-22'),
(1303, 502, 50, 'Customer', 'Sunday 22nd  July 11:48 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-22'),
(1304, 407, 150, 'Customer', 'Sunday 22nd  July 01:01 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-22'),
(1305, 502, 50, 'Customer', 'Sunday 22nd  July 02:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-22'),
(1306, 497, 580, 'danvir', 'Sunday 22nd  July 02:23 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 580, '', '', '2018-07-22'),
(1307, 361, 350, 'albert', 'Sunday 22nd  July 03:20 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-07-22'),
(1308, 506, 150, 'Customer', 'Sunday 22nd  July 03:58 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-22'),
(1309, 506, 150, 'Customer', 'Sunday 22nd  July 04:04 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-22'),
(1310, 407, 150, 'Customer', 'Sunday 22nd  July 04:12 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-22'),
(1311, 375, 499, 'jenny ebus', 'Sunday 22nd  July 04:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-07-22'),
(1312, 315, 150, 'Customer', 'Sunday 22nd  July 04:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-22'),
(1313, 371, 599, 'Customer', 'Sunday 22nd  July 05:33 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 599, '', '', '2018-07-22');
INSERT INTO `transactionbuy` (`buy_id`, `buy_product_id`, `buy_price`, `name`, `date_time`, `description`, `qty`, `total_price`, `status`, `prod_stat`, `date`) VALUES
(1314, 505, 100, 'Customer', 'Sunday 22nd  July 06:04 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-22'),
(1315, 392, 100, 'vivian mendoza', 'Monday 23rd  July 09:32 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-23'),
(1316, 471, 90, 'vivian mendoza', 'Monday 23rd  July 09:34 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-07-23'),
(1317, 532, 150, 'angelo canave', 'Monday 23rd  July 10:02 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-23'),
(1318, 410, 100, 'taho', 'Monday 23rd  July 10:10 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-23'),
(1319, 502, 50, 'Customer', 'Monday 23rd  July 10:26 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-23'),
(1320, 502, 50, 'Customer', 'Monday 23rd  July 10:52 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-23'),
(1321, 172, 350, 'parida mirafuentes', 'Monday 23rd  July 11:03 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-07-23'),
(1322, 502, 50, 'Customer', 'Monday 23rd  July 11:20 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-23'),
(1323, 37, 100, 'Customer', 'Monday 23rd  July 11:26 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-23'),
(1324, 503, 100, 'Customer', 'Monday 23rd  July 12:20 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-23'),
(1325, 498, 50, 'Customer', 'Monday 23rd  July 12:33 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-23'),
(1326, 407, 130, 'Customer', 'Monday 23rd  July 01:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-07-23'),
(1327, 503, 100, 'Customer', 'Monday 23rd  July 01:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-23'),
(1328, 527, 380, 'jayson', 'Monday 23rd  July 02:58 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 380, '', '', '2018-07-23'),
(1329, 494, 390, 'Customer', 'Monday 23rd  July 03:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 390, '', '', '2018-07-23'),
(1330, 344, 100, 'Customer', 'Monday 23rd  July 03:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-23'),
(1331, 502, 50, 'Customer', 'Monday 23rd  July 03:57 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-23'),
(1332, 272, 250, 'cy araja', 'Monday 23rd  July 04:19 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-07-23'),
(1333, 419, 100, 'Customer', 'Monday 23rd  July 05:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-23'),
(1334, 359, 250, 'karylle', 'Monday 23rd  July 05:26 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-07-23'),
(1335, 467, 100, 'Customer', 'Monday 23rd  July 06:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-23'),
(1336, 349, 150, 'joane', 'Monday 23rd  July 07:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-23'),
(1337, 415, 100, 'Customer', 'Monday 23rd  July 07:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-23'),
(1338, 392, 100, 'coastguard', 'Tuesday 24th  July 08:55 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-24'),
(1339, 502, 50, 'Customer', 'Tuesday 24th  July 08:56 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-24'),
(1340, 318, 150, 'Customer', 'Tuesday 24th  July 09:04 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-24'),
(1341, 531, 150, 'Customer', 'Tuesday 24th  July 10:09 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-24'),
(1342, 502, 50, 'Customer', 'Tuesday 24th  July 10:26 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-24'),
(1343, 505, 100, 'Customer', 'Tuesday 24th  July 11:28 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-24'),
(1344, 350, 100, 'Customer', 'Tuesday 24th  July 11:51 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-24'),
(1345, 634, 35, 'Customer', 'Tuesday 24th  July 12:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 35, '', '', '2018-07-24'),
(1346, 320, 150, 'micheal.', 'Tuesday 24th  July 12:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-24'),
(1347, 502, 50, 'Customer', 'Tuesday 24th  July 01:06 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-24'),
(1348, 634, 35, 'Customer', 'Tuesday 24th  July 01:11 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 35, '', '', '2018-07-24'),
(1349, 408, 100, 'Customer', 'Tuesday 24th  July 02:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-24'),
(1350, 506, 140, 'Customer', 'Tuesday 24th  July 02:19 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-07-24'),
(1351, 317, 150, 'Customer', 'Tuesday 24th  July 02:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-24'),
(1352, 503, 100, 'Customer', 'Tuesday 24th  July 03:32 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-24'),
(1353, 508, 150, 'angeliKA', 'Tuesday 24th  July 04:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-24'),
(1354, 636, 200, 'angeliKA', 'Tuesday 24th  July 04:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-07-24'),
(1355, 504, 50, 'Customer', 'Tuesday 24th  July 04:56 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-24'),
(1356, 505, 100, 'Customer', 'Tuesday 24th  July 05:51 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-24'),
(1357, 407, 150, 'Customer', 'Tuesday 24th  July 06:05 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-24'),
(1358, 631, 100, 'Customer', 'Tuesday 24th  July 06:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-24'),
(1359, 407, 150, 'Customer', 'Tuesday 24th  July 07:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-24'),
(1360, 504, 50, 'Customer', 'Tuesday 24th  July 07:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-24'),
(1361, 371, 599, 'coastguard agustino', 'Tuesday 24th  July 08:03 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 599, '', '', '2018-07-24'),
(1362, 389, 40, 'Customer', 'Tuesday 24th  July 08:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-07-24'),
(1363, 531, 150, 'magiitlog', 'Wednesday 25th  July 09:04 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-25'),
(1364, 315, 150, 'dimplr roldan', 'Wednesday 25th  July 09:34 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-25'),
(1365, 502, 45, 'Customer', 'Wednesday 25th  July 09:45 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 45, '', '', '2018-07-25'),
(1366, 502, 50, 'Customer', 'Wednesday 25th  July 10:11 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-07-25'),
(1367, 502, 50, 'Customer', 'Wednesday 25th  July 11:24 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-07-25'),
(1368, 346, 100, 'engelyn', 'Wednesday 25th  July 11:27 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-25'),
(1369, 317, 150, 'gaudencio capoquian ', 'Wednesday 25th  July 12:40 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-25'),
(1370, 623, 100, 'Customer', 'Wednesday 25th  July 01:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-25'),
(1371, 370, 1100, 'johnrey', 'Wednesday 25th  July 01:58 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 1100, '', '', '2018-07-25'),
(1372, 505, 100, 'Customer', 'Wednesday 25th  July 02:01 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-25'),
(1373, 344, 100, 'babae', 'Wednesday 25th  July 02:12 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-25'),
(1374, 502, 50, 'Customer', 'Wednesday 25th  July 03:20 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-07-25'),
(1375, 641, 180, 'Customer', 'Wednesday 25th  July 03:50 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-07-25'),
(1376, 315, 150, 'NEZ', 'Wednesday 25th  July 04:16 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-25'),
(1377, 410, 100, 'NEZ', 'Wednesday 25th  July 04:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-25'),
(1378, 423, 100, 'Customer', 'Wednesday 25th  July 04:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-25'),
(1379, 63, 100, 'Customer', 'Wednesday 25th  July 05:12 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-25'),
(1380, 502, 50, 'Customer', 'Wednesday 25th  July 05:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-25'),
(1381, 43, 100, 'Customer', 'Wednesday 25th  July 05:29 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-25'),
(1382, 73, 100, 'Customer', 'Wednesday 25th  July 05:29 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-25'),
(1383, 315, 150, 'Customer', 'Wednesday 25th  July 05:29 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-25'),
(1384, 507, 150, 'ANNA MARIE ADRIANO', 'Wednesday 25th  July 05:40 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-25'),
(1385, 107, 100, 'Customer', 'Wednesday 25th  July 06:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-25'),
(1386, 647, 180, 'Customer', 'Wednesday 25th  July 06:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-07-25'),
(1387, 73, 100, 'Customer', 'Wednesday 25th  July 07:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-25'),
(1388, 342, 150, 'Customer', 'Wednesday 25th  July 07:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-25'),
(1389, 342, 150, 'cristina osorio', 'Thursday 26th  July 09:04 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-26'),
(1390, 502, 50, 'Customer', 'Thursday 26th  July 09:09 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-26'),
(1391, 502, 50, 'Customer', 'Thursday 26th  July 09:20 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-26'),
(1392, 421, 100, 'Customer', 'Thursday 26th  July 10:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-26'),
(1393, 487, 650, 'Customer', 'Thursday 26th  July 10:45 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 650, '', '', '2018-07-26'),
(1394, 35, 100, 'Customer', 'Thursday 26th  July 11:18 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-26'),
(1395, 502, 50, 'Customer', 'Thursday 26th  July 01:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-26'),
(1396, 346, 100, 'Customer', 'Thursday 26th  July 03:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-26'),
(1397, 499, 85, 'Customer', 'Thursday 26th  July 04:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 85, '', '', '2018-07-26'),
(1398, 366, 499, 'ante', 'Thursday 26th  July 04:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-07-26'),
(1399, 504, 50, 'Customer', 'Thursday 26th  July 04:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-26'),
(1400, 109, 100, 'Customer', 'Thursday 26th  July 05:07 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-26'),
(1401, 503, 100, 'Customer', 'Thursday 26th  July 05:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-26'),
(1402, 389, 40, 'Customer', 'Thursday 26th  July 05:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-07-26'),
(1403, 344, 100, 'raquel', 'Thursday 26th  July 06:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-26'),
(1404, 645, 180, 'Customer', 'Thursday 26th  July 06:32 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-07-26'),
(1405, 503, 100, 'Customer', 'Thursday 26th  July 06:56 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-26'),
(1406, 318, 150, 'Customer', 'Thursday 26th  July 06:58 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-26'),
(1407, 318, 150, 'Customer', 'Thursday 26th  July 07:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-26'),
(1408, 342, 150, 'malou', 'Thursday 26th  July 07:23 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-26'),
(1409, 318, 150, 'anna .', 'Thursday 26th  July 07:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-26'),
(1410, 315, 130, 'kaibigan ni kuya rah', 'Thursday 26th  July 07:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-07-26'),
(1411, 341, 146, 'Customer', 'Saturday 28th  July 08:39 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 146, '', '', '2018-07-28'),
(1412, 502, 50, 'Customer', 'Saturday 28th  July 08:47 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-28'),
(1413, 502, 50, 'Customer', 'Saturday 28th  July 09:47 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-28'),
(1414, 635, 200, 'tess', 'Saturday 28th  July 09:55 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-07-28'),
(1415, 502, 50, 'Customer', 'Saturday 28th  July 10:55 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-28'),
(1416, 317, 150, 'lota', 'Saturday 28th  July 11:11 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-28'),
(1417, 346, 100, 'lalake nkatali ang b', 'Saturday 28th  July 11:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-28'),
(1418, 502, 50, 'Customer', 'Saturday 28th  July 12:01 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-28'),
(1419, 502, 50, 'Customer', 'Saturday 28th  July 12:20 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-28'),
(1420, 376, 499, 'anding', 'Saturday 28th  July 12:56 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-07-28'),
(1421, 389, 40, 'Customer', 'Saturday 28th  July 12:57 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-07-28'),
(1422, 505, 100, 'Customer', 'Saturday 28th  July 01:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-28'),
(1423, 349, 150, 'Customer', 'Saturday 28th  July 01:50 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-28'),
(1424, 113, 100, 'Customer', 'Saturday 28th  July 03:37 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-28'),
(1425, 502, 50, 'Customer', 'Saturday 28th  July 03:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-28'),
(1426, 504, 50, 'Customer', 'Saturday 28th  July 03:51 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-28'),
(1427, 112, 100, 'Customer', 'Saturday 28th  July 05:34 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-28'),
(1428, 318, 150, 'Customer', 'Saturday 28th  July 06:04 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-28'),
(1429, 410, 100, 'Customer', 'Saturday 28th  July 06:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-28'),
(1430, 379, 390, 'jayson ', 'Saturday 28th  July 06:52 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 390, '', '', '2018-07-28'),
(1431, 531, 150, 'Customer', 'Saturday 28th  July 07:16 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-28'),
(1432, 678, 100, 'Customer', 'Saturday 28th  July 07:30 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-28'),
(1433, 636, 210, 'annie', 'Saturday 28th  July 07:35 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 210, '', '', '2018-07-28'),
(1434, 630, 100, 'Customer', 'Sunday 29th  July 08:51 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-29'),
(1435, 468, 100, 'Customer', 'Sunday 29th  July 09:18 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-29'),
(1436, 389, 40, 'Customer', 'Sunday 29th  July 09:21 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-07-29'),
(1437, 318, 150, 'BRIX', 'Sunday 29th  July 09:25 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-29'),
(1438, 502, 50, 'Customer', 'Sunday 29th  July 09:32 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-29'),
(1439, 502, 50, 'Customer', 'Sunday 29th  July 09:33 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-29'),
(1440, 531, 150, 'Customer', 'Sunday 29th  July 09:52 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-29'),
(1441, 505, 100, 'Customer', 'Sunday 29th  July 10:11 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-29'),
(1442, 502, 50, 'Customer', 'Sunday 29th  July 10:11 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-29'),
(1443, 383, 2600, 'Customer', 'Sunday 29th  July 10:36 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 2600, '', '', '2018-07-29'),
(1444, 389, 40, 'Customer', 'Sunday 29th  July 10:38 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-07-29'),
(1445, 407, 150, 'Customer', 'Sunday 29th  July 10:38 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-29'),
(1446, 502, 50, 'Customer', 'Sunday 29th  July 11:25 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-29'),
(1447, 266, 230, 'Customer', 'Sunday 29th  July 11:53 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 230, '', '', '2018-07-29'),
(1448, 502, 50, 'Customer', 'Sunday 29th  July 01:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-29'),
(1449, 502, 50, 'Customer', 'Sunday 29th  July 01:33 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-29'),
(1450, 630, 100, 'Customer', 'Sunday 29th  July 02:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-29'),
(1451, 344, 100, 'Customer', 'Sunday 29th  July 02:53 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-29'),
(1452, 350, 100, 'Customer', 'Sunday 29th  July 03:40 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-29'),
(1453, 319, 200, 'raven', 'Sunday 29th  July 04:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-07-29'),
(1454, 505, 100, 'Customer', 'Sunday 29th  July 05:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-29'),
(1455, 478, 250, 'Customer', 'Sunday 29th  July 05:53 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-07-29'),
(1456, 478, 250, 'Customer', 'Sunday 29th  July 05:55 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-07-29'),
(1457, 107, 100, 'Customer', 'Sunday 29th  July 06:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-29'),
(1458, 114, 100, 'Customer', 'Sunday 29th  July 06:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-29'),
(1459, 344, 100, 'Customer', 'Sunday 29th  July 06:03 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-29'),
(1460, 344, 90, 'minchie', 'Sunday 29th  July 06:03 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-07-29'),
(1461, 505, 100, 'Customer', 'Sunday 29th  July 06:06 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-29'),
(1462, 344, 90, 'Customer', 'Sunday 29th  July 06:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-07-29'),
(1463, 503, 100, 'Customer', 'Sunday 29th  July 06:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-29'),
(1464, 504, 50, 'Customer', 'Sunday 29th  July 06:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-29'),
(1465, 392, 100, 'Customer', 'Sunday 29th  July 06:57 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-29'),
(1466, 320, 150, 'Customer', 'Sunday 29th  July 06:57 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-29'),
(1467, 389, 40, 'Customer', 'Sunday 29th  July 07:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-07-29'),
(1468, 365, 499, 'Customer', 'Sunday 29th  July 07:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-07-29'),
(1469, 79, 100, 'Customer', 'Tuesday 31st  July 08:48 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-31'),
(1470, 502, 50, 'Customer', 'Tuesday 31st  July 09:08 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-31'),
(1471, 389, 40, 'Customer', 'Tuesday 31st  July 09:22 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-07-31'),
(1472, 533, 100, 'Customer', 'Tuesday 31st  July 09:56 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-31'),
(1473, 497, 580, 'Customer', 'Tuesday 31st  July 10:18 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 580, '', '', '2018-07-31'),
(1474, 467, 100, 'Customer', 'Tuesday 31st  July 10:32 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-31'),
(1475, 502, 50, 'Customer', 'Tuesday 31st  July 10:47 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-31'),
(1476, 389, 40, 'Customer', 'Tuesday 31st  July 10:56 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-07-31'),
(1477, 504, 50, 'Customer', 'Tuesday 31st  July 11:19 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-31'),
(1478, 407, 150, 'Customer', 'Tuesday 31st  July 11:22 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-31'),
(1479, 473, 100, 'Customer', 'Tuesday 31st  July 11:57 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-31'),
(1480, 502, 50, 'Customer', 'Tuesday 31st  July 12:06 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-31'),
(1481, 349, 150, 'Customer', 'Tuesday 31st  July 12:12 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-31'),
(1482, 502, 50, 'Customer', 'Tuesday 31st  July 12:49 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-31'),
(1483, 360, 300, 'Customer', 'Tuesday 31st  July 12:56 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 300, '', '', '2018-07-31'),
(1484, 502, 50, 'Customer', 'Tuesday 31st  July 01:05 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-31'),
(1485, 469, 100, 'Customer', 'Tuesday 31st  July 01:53 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-31'),
(1486, 104, 100, 'Customer', 'Tuesday 31st  July 02:01 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-31'),
(1487, 407, 150, 'Customer', 'Tuesday 31st  July 02:10 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-31'),
(1488, 648, 180, 'Customer', 'Tuesday 31st  July 02:12 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-07-31'),
(1489, 636, 200, 'Customer', 'Tuesday 31st  July 02:20 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-07-31'),
(1490, 635, 210, 'derick', 'Tuesday 31st  July 03:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 210, '', '', '2018-07-31'),
(1491, 507, 150, 'babylyn', 'Tuesday 31st  July 03:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-07-31'),
(1492, 502, 50, 'Customer', 'Tuesday 31st  July 05:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-31'),
(1493, 496, 380, 'Customer', 'Tuesday 31st  July 06:20 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 380, '', '', '2018-07-31'),
(1494, 504, 50, 'Customer', 'Tuesday 31st  July 06:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-07-31'),
(1495, 503, 100, 'Customer', 'Tuesday 31st  July 06:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-31'),
(1496, 415, 100, 'Customer', 'Tuesday 31st  July 07:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-07-31'),
(1497, 409, 100, 'jennifer', 'Wednesday 1st  August 09:10 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-01'),
(1498, 353, 100, 'jaizell buhay', 'Wednesday 1st  August 09:14 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-01'),
(1499, 353, 100, 'winei', 'Wednesday 1st  August 09:19 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-01'),
(1500, 315, 150, 'kit', 'Wednesday 1st  August 09:22 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-01'),
(1501, 346, 100, 'Customer', 'Wednesday 1st  August 10:41 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-01'),
(1502, 502, 50, 'Customer', 'Wednesday 1st  August 10:48 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-01'),
(1503, 323, 150, 'Customer', 'Wednesday 1st  August 11:58 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-01'),
(1504, 504, 50, 'Customer', 'Wednesday 1st  August 12:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-01'),
(1505, 502, 50, 'Customer', 'Wednesday 1st  August 02:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-01'),
(1506, 318, 150, 'alice', 'Wednesday 1st  August 04:49 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-01'),
(1507, 491, 450, 'Customer', 'Wednesday 1st  August 05:05 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 450, '', '', '2018-08-01'),
(1508, 407, 150, 'Customer', 'Wednesday 1st  August 05:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-01'),
(1509, 636, 200, 'gigi', 'Wednesday 1st  August 05:53 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-08-01'),
(1510, 318, 150, 'JERLYN', 'Wednesday 1st  August 07:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-01'),
(1511, 317, 150, 'Customer', 'Wednesday 1st  August 07:07 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-01'),
(1512, 317, 150, 'Customer', 'Wednesday 1st  August 07:08 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-01'),
(1513, 315, 130, 'Customer', 'Saturday 4th  August 08:15 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-08-04'),
(1514, 315, 130, 'nerie', 'Saturday 4th  August 08:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-08-04'),
(1515, 315, 130, 'nerie', 'Saturday 4th  August 08:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-08-04'),
(1516, 502, 50, 'Customer', 'Saturday 4th  August 08:44 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-04'),
(1517, 634, 35, 'Customer', 'Saturday 4th  August 09:15 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 35, '', '', '2018-08-04'),
(1518, 681, 100, 'Customer', 'Saturday 4th  August 09:17 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-04'),
(1519, 502, 50, 'Customer', 'Saturday 4th  August 09:18 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-04'),
(1520, 502, 50, 'Customer', 'Saturday 4th  August 09:27 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-04'),
(1521, 502, 50, 'Customer', 'Saturday 4th  August 09:28 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-04'),
(1522, 505, 100, 'Customer', 'Saturday 4th  August 10:53 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-04'),
(1523, 635, 210, 'danica', 'Saturday 4th  August 11:21 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 210, '', '', '2018-08-04'),
(1524, 315, 150, 'ernesto roldan', 'Saturday 4th  August 11:31 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-04'),
(1525, 502, 50, 'Customer', 'Saturday 4th  August 12:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-04'),
(1526, 635, 210, 'irish', 'Saturday 4th  August 01:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 210, '', '', '2018-08-04'),
(1527, 73, 100, 'Customer', 'Saturday 4th  August 02:40 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-04'),
(1528, 640, 180, 'Customer', 'Saturday 4th  August 05:05 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-08-04'),
(1529, 327, 150, 'Customer', 'Saturday 4th  August 05:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-04'),
(1530, 388, 40, 'Customer', 'Saturday 4th  August 05:32 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-08-04'),
(1531, 531, 150, 'Customer', 'Saturday 4th  August 07:30 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-04'),
(1532, 629, 180, 'reymar', 'Sunday 5th  August 07:37 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-08-05'),
(1533, 532, 130, 'janet de leon', 'Sunday 5th  August 07:43 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-08-05'),
(1534, 502, 50, 'Customer', 'Sunday 5th  August 07:58 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-05'),
(1535, 630, 100, 'Customer', 'Sunday 5th  August 08:00 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-05'),
(1536, 329, 180, 'muhammad', 'Sunday 5th  August 08:02 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-08-05'),
(1537, 377, 480, 'aldrin', 'Sunday 5th  August 08:28 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 480, '', '', '2018-08-05'),
(1538, 365, 499, 'JONY', 'Sunday 5th  August 08:59 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-08-05'),
(1539, 647, 180, 'Customer', 'Sunday 5th  August 10:32 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-08-05'),
(1540, 318, 130, 'rj', 'Sunday 5th  August 10:46 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-08-05'),
(1541, 502, 50, 'Customer', 'Sunday 5th  August 11:22 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-05'),
(1542, 502, 50, 'Customer', 'Sunday 5th  August 11:22 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-05'),
(1543, 502, 50, 'Customer', 'Sunday 5th  August 11:29 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-05'),
(1544, 502, 50, 'Customer', 'Sunday 5th  August 11:43 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-05'),
(1545, 641, 180, 'Customer', 'Sunday 5th  August 12:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-08-05'),
(1546, 634, 30, 'Customer', 'Sunday 5th  August 02:01 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 30, '', '', '2018-08-05'),
(1547, 639, 180, 'Customer', 'Sunday 5th  August 02:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-08-05'),
(1548, 635, 210, 'maylin', 'Sunday 5th  August 03:40 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 210, '', '', '2018-08-05'),
(1549, 502, 50, 'Customer', 'Sunday 5th  August 03:59 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-05'),
(1550, 507, 150, 'Customer', 'Sunday 5th  August 05:37 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-05'),
(1551, 353, 100, 'Customer', 'Sunday 5th  August 06:11 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-05'),
(1552, 318, 150, 'Customer', 'Sunday 5th  August 06:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-05'),
(1553, 318, 150, 'Customer', 'Sunday 5th  August 06:56 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-05'),
(1554, 502, 50, 'Customer', 'Sunday 5th  August 06:57 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-05'),
(1555, 502, 50, 'Customer', 'Sunday 5th  August 07:12 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-05'),
(1556, 256, 400, 'Customer', 'Sunday 5th  August 07:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 400, '', '', '2018-08-05'),
(1557, 502, 50, 'Customer', 'Sunday 5th  August 07:53 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-05'),
(1558, 114, 90, 'Customer', 'Monday 6th  August 08:51 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 180, '', '', '2018-08-06'),
(1559, 365, 499, 'erick', 'Monday 6th  August 09:28 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-08-06'),
(1560, 389, 40, 'erick', 'Monday 6th  August 09:28 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-08-06'),
(1561, 107, 100, 'Customer', 'Monday 6th  August 09:49 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-06'),
(1562, 390, 50, 'Customer', 'Monday 6th  August 10:21 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-06'),
(1563, 531, 150, 'mark', 'Monday 6th  August 11:17 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-06'),
(1564, 107, 100, 'Customer', 'Monday 6th  August 11:37 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-06'),
(1565, 353, 100, 'Customer', 'Monday 6th  August 11:57 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-06'),
(1566, 373, 500, 'x amer awarab', 'Monday 6th  August 12:05 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 500, '', '', '2018-08-06'),
(1567, 579, 50, 'Customer', 'Monday 6th  August 12:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-06'),
(1568, 504, 50, 'Customer', 'Monday 6th  August 12:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-06'),
(1569, 353, 100, 'rose ann', 'Monday 6th  August 01:19 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-06'),
(1570, 502, 50, 'Customer', 'Monday 6th  August 01:20 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-06'),
(1571, 506, 120, 'Customer', 'Monday 6th  August 02:15 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-08-06'),
(1572, 118, 100, 'Customer', 'Monday 6th  August 02:16 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-06'),
(1573, 488, 350, 'john richard alingal', 'Monday 6th  August 03:40 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-08-06'),
(1574, 353, 100, 'judy rie', 'Monday 6th  August 03:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-06'),
(1575, 502, 50, 'Customer', 'Monday 6th  August 03:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-06'),
(1576, 407, 150, 'Customer', 'Monday 6th  August 03:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-06'),
(1577, 696, 150, 'je', 'Monday 6th  August 05:52 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-06'),
(1578, 586, 350, 'edgar santos', 'Monday 6th  August 06:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-08-06'),
(1579, 341, 130, 'LOLO', 'Tuesday 7th  August 08:38 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-08-07'),
(1580, 504, 50, 'Customer', 'Tuesday 7th  August 08:38 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-07'),
(1581, 600, 2900, 'evelyn ranto', 'Tuesday 7th  August 09:11 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 2900, '', '', '2018-08-07'),
(1582, 342, 150, 'john de pablo', 'Tuesday 7th  August 09:13 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-07'),
(1583, 502, 50, 'Customer', 'Tuesday 7th  August 09:32 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-07'),
(1584, 698, 190, 'diony', 'Tuesday 7th  August 10:06 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 190, '', '', '2018-08-07'),
(1585, 502, 50, 'Customer', 'Tuesday 7th  August 10:10 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-07'),
(1586, 502, 50, 'Customer', 'Tuesday 7th  August 10:33 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-07'),
(1587, 503, 90, 'Customer', 'Tuesday 7th  August 11:00 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-08-07'),
(1588, 580, 100, 'joy', 'Tuesday 7th  August 11:09 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-07'),
(1589, 503, 90, 'Customer', 'Tuesday 7th  August 11:52 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 90, '', '', '2018-08-07'),
(1590, 107, 100, 'Customer', 'Tuesday 7th  August 11:56 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-07'),
(1591, 696, 140, 'haimin', 'Tuesday 7th  August 11:59 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-08-07'),
(1592, 330, 130, 'archie', 'Tuesday 7th  August 12:12 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-08-07'),
(1593, 709, 200, 'archie', 'Tuesday 7th  August 12:14 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-08-07'),
(1594, 696, 150, 'jerome', 'Tuesday 7th  August 12:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-07'),
(1595, 502, 50, 'Customer', 'Tuesday 7th  August 12:35 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-07'),
(1596, 350, 100, 'Customer', 'Tuesday 7th  August 02:20 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-07'),
(1597, 636, 200, 'abby', 'Tuesday 7th  August 03:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-08-07'),
(1598, 502, 50, 'Customer', 'Tuesday 7th  August 04:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-07'),
(1599, 387, 50, 'Customer', 'Tuesday 7th  August 04:57 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-07'),
(1600, 636, 200, 'aison', 'Tuesday 7th  August 05:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-08-07'),
(1601, 702, 390, 'bernard', 'Tuesday 7th  August 05:35 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 390, '', '', '2018-08-07'),
(1602, 387, 50, 'Customer', 'Tuesday 7th  August 06:05 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-07'),
(1603, 502, 50, 'Customer', 'Tuesday 7th  August 07:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-07'),
(1604, 346, 100, 'Customer', 'Wednesday 8th  August 08:14 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-08'),
(1605, 377, 499, 'Customer', 'Wednesday 8th  August 09:31 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-08-08'),
(1606, 317, 150, 'enz0 ', 'Wednesday 8th  August 09:58 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-08'),
(1607, 635, 200, 'ate mo girl', 'Wednesday 8th  August 11:05 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-08-08'),
(1608, 502, 40, 'Customer', 'Wednesday 8th  August 12:11 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-08-08'),
(1609, 318, 150, 'Customer', 'Wednesday 8th  August 03:04 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-08'),
(1610, 502, 50, 'Customer', 'Wednesday 8th  August 03:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-08'),
(1611, 502, 50, 'Customer', 'Wednesday 8th  August 03:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-08'),
(1612, 504, 45, 'Customer', 'Wednesday 8th  August 04:10 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 45, '', '', '2018-08-08'),
(1613, 315, 150, 'Customer', 'Wednesday 8th  August 04:35 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-08'),
(1614, 353, 100, 'carlo', 'Wednesday 8th  August 05:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-08'),
(1615, 318, 130, 'alma', 'Wednesday 8th  August 05:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-08-08'),
(1616, 318, 150, 'jobet', 'Wednesday 8th  August 05:26 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-08'),
(1617, 502, 50, 'Customer', 'Wednesday 8th  August 05:32 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-08'),
(1618, 504, 50, 'Customer', 'Wednesday 8th  August 06:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-08'),
(1619, 504, 50, 'Customer', 'Thursday 9th  August 09:09 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-09'),
(1620, 390, 50, 'Customer', 'Thursday 9th  August 09:21 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-09'),
(1621, 508, 150, 'ronald ', 'Thursday 9th  August 09:34 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-09'),
(1622, 502, 50, 'Customer', 'Thursday 9th  August 10:34 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-09'),
(1623, 342, 150, 'jovelyn ', 'Thursday 9th  August 11:03 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-09'),
(1624, 342, 150, 'Customer charlie', 'Thursday 9th  August 11:22 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-09'),
(1625, 390, 50, 'Customer', 'Thursday 9th  August 01:47 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-09'),
(1626, 502, 50, 'Customer', 'Thursday 9th  August 02:32 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-09'),
(1627, 447, 1800, 'joan', 'Thursday 9th  August 03:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 1800, '', '', '2018-08-09'),
(1628, 389, 40, 'Customer', 'Thursday 9th  August 03:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-08-09'),
(1629, 506, 130, 'Customer', 'Thursday 9th  August 04:12 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-08-09'),
(1630, 315, 150, 'Customer', 'Thursday 9th  August 07:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-09'),
(1631, 353, 100, 'prezy', 'Saturday 11th  August 08:17 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-11'),
(1632, 502, 50, 'Customer', 'Saturday 11th  August 08:36 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-11'),
(1633, 702, 310, 'abby', 'Saturday 11th  August 09:54 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 310, '', '', '2018-08-11'),
(1634, 630, 100, 'Customer', 'Saturday 11th  August 10:55 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-11');
INSERT INTO `transactionbuy` (`buy_id`, `buy_product_id`, `buy_price`, `name`, `date_time`, `description`, `qty`, `total_price`, `status`, `prod_stat`, `date`) VALUES
(1635, 353, 100, 'Customer', 'Saturday 11th  August 10:55 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-11'),
(1636, 390, 50, 'Customer', 'Saturday 11th  August 11:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-11'),
(1637, 349, 150, 'Customer', 'Saturday 11th  August 11:50 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-11'),
(1638, 388, 40, 'Customer', 'Saturday 11th  August 01:32 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-08-11'),
(1639, 390, 50, 'Customer', 'Saturday 11th  August 03:26 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-11'),
(1640, 388, 40, 'Customer', 'Saturday 11th  August 04:01 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-08-11'),
(1641, 636, 200, 'Customer', 'Saturday 11th  August 05:10 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-08-11'),
(1642, 633, 2100, 'Customer', 'Saturday 11th  August 07:29 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 2100, '', '', '2018-08-11'),
(1643, 407, 120, 'Customer', 'Sunday 12th  August 08:49 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-08-12'),
(1644, 387, 50, 'vivian mendoza', 'Sunday 12th  August 08:50 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-12'),
(1645, 630, 100, 'jelly anne', 'Sunday 12th  August 09:48 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-12'),
(1646, 367, 499, 'angelo balmes', 'Sunday 12th  August 09:59 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-08-12'),
(1647, 353, 100, 'aiza', 'Sunday 12th  August 10:26 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-12'),
(1648, 353, 100, 'angelica', 'Sunday 12th  August 10:29 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-12'),
(1649, 502, 50, 'Customer', 'Sunday 12th  August 10:31 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-12'),
(1650, 478, 200, 'don don', 'Sunday 12th  August 10:58 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-08-12'),
(1651, 630, 100, 'Customer', 'Sunday 12th  August 11:15 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-12'),
(1652, 407, 150, 'andrei', 'Sunday 12th  August 11:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-12'),
(1653, 502, 50, 'Customer', 'Sunday 12th  August 11:41 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-12'),
(1654, 505, 100, 'joeben romero', 'Sunday 12th  August 11:41 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-12'),
(1655, 371, 599, 'jayson', 'Sunday 12th  August 11:42 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 599, '', '', '2018-08-12'),
(1656, 708, 490, 'jinsith', 'Sunday 12th  August 11:51 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 490, '', '', '2018-08-12'),
(1657, 353, 100, 'palisada', 'Sunday 12th  August 11:54 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-12'),
(1658, 380, 350, 'jinsith', 'Sunday 12th  August 12:05 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-08-12'),
(1659, 364, 499, 'Customer', 'Sunday 12th  August 01:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-08-12'),
(1660, 632, 2200, 'joan ', 'Sunday 12th  August 02:23 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 2200, '', '', '2018-08-12'),
(1661, 380, 350, 'joan ', 'Sunday 12th  August 02:23 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-08-12'),
(1662, 645, 180, 'Customer', 'Sunday 12th  August 03:34 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-08-12'),
(1663, 584, 350, 'Customerlina', 'Sunday 12th  August 03:50 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-08-12'),
(1664, 700, 200, 'Customer john', 'Sunday 12th  August 04:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-08-12'),
(1665, 318, 150, 'Customer', 'Sunday 12th  August 05:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-12'),
(1666, 502, 50, 'Customer', 'Sunday 12th  August 05:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-12'),
(1667, 699, 150, 'Customer', 'Sunday 12th  August 05:10 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-12'),
(1668, 636, 200, 'Customer', 'Sunday 12th  August 07:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-08-12'),
(1669, 708, 499, 'Customer', 'Sunday 12th  August 07:52 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-08-12'),
(1670, 696, 150, 'jeff', 'Monday 13th  August 09:07 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-13'),
(1671, 263, 350, 'alih', 'Monday 13th  August 09:21 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-08-13'),
(1672, 353, 100, 'roger', 'Monday 13th  August 09:30 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-13'),
(1673, 323, 150, 'alberto', 'Monday 13th  August 09:58 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-13'),
(1674, 699, 200, 'andrei', 'Monday 13th  August 10:27 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-08-13'),
(1675, 353, 100, 'joshua', 'Monday 13th  August 10:46 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-13'),
(1676, 504, 50, 'Customer', 'Monday 13th  August 11:13 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-13'),
(1677, 502, 50, 'Customer', 'Monday 13th  August 11:45 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-13'),
(1678, 505, 100, 'Customer', 'Monday 13th  August 11:53 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-13'),
(1679, 415, 100, 'Customer', 'Monday 13th  August 12:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-13'),
(1680, 381, 300, 'lalake', 'Monday 13th  August 12:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 300, '', '', '2018-08-13'),
(1681, 502, 50, 'Customer', 'Monday 13th  August 12:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-13'),
(1682, 643, 180, 'Customer', 'Monday 13th  August 12:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-08-13'),
(1683, 387, 50, 'Customer', 'Monday 13th  August 12:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-13'),
(1684, 506, 130, 'Customer', 'Monday 13th  August 01:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-08-13'),
(1685, 581, 80, 'Customer', 'Monday 13th  August 02:37 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 80, '', '', '2018-08-13'),
(1686, 502, 50, 'Customer', 'Monday 13th  August 02:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-13'),
(1687, 349, 150, 'lyle', 'Monday 13th  August 03:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-13'),
(1688, 350, 100, 'kim', 'Monday 13th  August 03:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-13'),
(1689, 407, 130, 'kim', 'Monday 13th  August 03:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-08-13'),
(1690, 502, 50, 'Customer', 'Monday 13th  August 03:28 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-13'),
(1691, 353, 100, 'Customer', 'Monday 13th  August 04:08 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-13'),
(1692, 502, 50, 'Customer', 'Monday 13th  August 05:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-13'),
(1693, 327, 130, 'Customer', 'Monday 13th  August 05:57 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-08-13'),
(1694, 317, 150, 'Customer', 'Monday 13th  August 06:20 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-13'),
(1695, 363, 499, 'ariel', 'Monday 13th  August 06:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-08-13'),
(1696, 395, 150, 'Customer', 'Monday 13th  August 07:38 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-13'),
(1697, 697, 200, 'Customer', 'Monday 13th  August 08:01 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-08-13'),
(1698, 636, 210, 'Kris Villegas', 'Tuesday 14th  August 08:45 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 210, '', '', '2018-08-14'),
(1699, 671, 100, 'Customer', 'Tuesday 14th  August 08:54 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-14'),
(1700, 506, 120, 'Customer', 'Tuesday 14th  August 09:05 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-08-14'),
(1701, 321, 250, 'arturo', 'Tuesday 14th  August 09:58 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-08-14'),
(1702, 502, 50, 'Customer', 'Tuesday 14th  August 10:21 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-08-14'),
(1703, 173, 380, 'rufo', 'Tuesday 14th  August 10:45 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 380, '', '', '2018-08-14'),
(1704, 502, 50, 'Customer', 'Tuesday 14th  August 10:56 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-14'),
(1705, 95, 100, 'Customer', 'Tuesday 14th  August 11:54 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-14'),
(1706, 451, 300, 'junalyn', 'Tuesday 14th  August 11:59 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 300, '', '', '2018-08-14'),
(1707, 342, 130, 'merly ramos', 'Tuesday 14th  August 12:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-08-14'),
(1708, 502, 50, 'Customer', 'Tuesday 14th  August 01:06 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-14'),
(1709, 34, 100, 'Customer', 'Tuesday 14th  August 01:52 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-14'),
(1710, 674, 100, 'Customer', 'Tuesday 14th  August 01:53 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-14'),
(1711, 505, 100, 'Customer', 'Tuesday 14th  August 01:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-14'),
(1712, 502, 50, 'Customer', 'Tuesday 14th  August 02:52 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-14'),
(1713, 114, 100, 'Customer', 'Tuesday 14th  August 03:11 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-14'),
(1714, 530, 180, 'KING', 'Tuesday 14th  August 03:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-08-14'),
(1715, 415, 100, 'Customer', 'Tuesday 14th  August 05:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-14'),
(1716, 507, 150, 'Customer', 'Tuesday 14th  August 05:28 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-14'),
(1717, 266, 250, 'Customer', 'Tuesday 14th  August 06:14 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-08-14'),
(1718, 636, 200, 'jai', 'Tuesday 14th  August 06:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-08-14'),
(1719, 318, 150, 'Customer', 'Tuesday 14th  August 07:12 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-14'),
(1720, 502, 50, 'Customer', 'Tuesday 14th  August 07:23 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-14'),
(1721, 415, 100, 'Customer', 'Tuesday 14th  August 07:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-14'),
(1722, 410, 100, 'Customer', 'Tuesday 14th  August 08:15 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-14'),
(1723, 534, 280, 'joel ramirez', 'Wednesday 15th  August 09:01 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 280, '', '', '2018-08-15'),
(1724, 359, 230, 'may sakit sa pagiisi', 'Wednesday 15th  August 09:02 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 230, '', '', '2018-08-15'),
(1725, 594, 190, 'Customer', 'Wednesday 15th  August 09:29 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 190, '', '', '2018-08-15'),
(1726, 502, 50, 'Customer', 'Wednesday 15th  August 09:38 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-15'),
(1727, 407, 150, 'rainielle gatchalian', 'Wednesday 15th  August 10:33 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-15'),
(1728, 423, 100, 'Customer', 'Wednesday 15th  August 10:56 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-15'),
(1729, 505, 100, 'Customer', 'Wednesday 15th  August 11:09 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-15'),
(1730, 502, 50, 'Customer', 'Wednesday 15th  August 11:10 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-15'),
(1731, 709, 200, 'fritz', 'Wednesday 15th  August 11:24 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-08-15'),
(1732, 502, 50, 'Customer', 'Wednesday 15th  August 12:30 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-15'),
(1733, 353, 100, 'Customer', 'Wednesday 15th  August 12:38 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-15'),
(1734, 137, 100, 'Customer', 'Wednesday 15th  August 12:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-15'),
(1735, 371, 550, 'sauro jr', 'Wednesday 15th  August 01:08 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 550, '', '', '2018-08-15'),
(1736, 78, 100, 'Customer', 'Wednesday 15th  August 01:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-15'),
(1737, 353, 100, 'tyron', 'Wednesday 15th  August 01:50 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-15'),
(1738, 634, 30, 'Customer', 'Wednesday 15th  August 04:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 30, '', '', '2018-08-15'),
(1739, 504, 50, 'Customer', 'Wednesday 15th  August 04:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-15'),
(1740, 359, 250, 'Customer', 'Wednesday 15th  August 04:30 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-08-15'),
(1741, 636, 200, 'Customer', 'Wednesday 15th  August 04:57 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-08-15'),
(1742, 315, 120, 'Customer', 'Wednesday 15th  August 05:01 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-08-15'),
(1743, 315, 150, 'Customer', 'Wednesday 15th  August 05:14 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-15'),
(1744, 415, 100, 'Customer', 'Wednesday 15th  August 05:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-15'),
(1745, 504, 50, 'Customer', 'Wednesday 15th  August 06:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-15'),
(1746, 344, 100, 'Customer', 'Wednesday 15th  August 07:10 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-15'),
(1747, 505, 100, 'Customer', 'Wednesday 15th  August 07:51 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-15'),
(1748, 329, 190, 'bol', 'Thursday 16th  August 08:47 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 190, '', '', '2018-08-16'),
(1749, 502, 50, 'Customer', 'Thursday 16th  August 08:48 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-08-16'),
(1750, 353, 100, 'raguel ', 'Thursday 16th  August 08:48 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-16'),
(1751, 503, 80, 'Customer', 'Thursday 16th  August 08:49 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 80, '', '', '2018-08-16'),
(1752, 79, 100, 'Customer', 'Thursday 16th  August 09:57 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-16'),
(1753, 505, 100, 'Customer', 'Thursday 16th  August 09:58 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-16'),
(1754, 502, 50, 'Customer', 'Thursday 16th  August 10:38 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-16'),
(1755, 539, 320, 'jenny padilla', 'Thursday 16th  August 11:20 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 320, '', '', '2018-08-16'),
(1756, 635, 210, 'mea', 'Thursday 16th  August 11:45 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 210, '', '', '2018-08-16'),
(1757, 456, 300, 'jefferson operio', 'Thursday 16th  August 11:55 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 300, '', '', '2018-08-16'),
(1758, 504, 50, 'Customer', 'Thursday 16th  August 12:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-16'),
(1759, 523, 499, 'robinson vargas', 'Thursday 16th  August 12:59 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-08-16'),
(1760, 373, 500, 'amelea  de borja', 'Thursday 16th  August 01:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 500, '', '', '2018-08-16'),
(1761, 502, 50, 'Customer', 'Thursday 16th  August 01:01 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-16'),
(1762, 502, 50, 'Customer', 'Thursday 16th  August 01:08 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-16'),
(1763, 349, 150, 'Customer', 'Thursday 16th  August 01:59 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-16'),
(1764, 410, 100, 'Customer', 'Thursday 16th  August 02:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-16'),
(1765, 318, 150, 'marga', 'Thursday 16th  August 04:10 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-16'),
(1766, 353, 100, 'Customer', 'Thursday 16th  August 04:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-16'),
(1767, 502, 50, 'Customer', 'Thursday 16th  August 05:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-16'),
(1768, 315, 150, 'Customer', 'Thursday 16th  August 05:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-16'),
(1769, 344, 100, 'Customer', 'Thursday 16th  August 06:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-16'),
(1770, 533, 100, 'Customer', 'Thursday 16th  August 06:32 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-16'),
(1771, 485, 380, 'Customer', 'Thursday 16th  August 06:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 380, '', '', '2018-08-16'),
(1772, 502, 50, 'Customer', 'Thursday 16th  August 06:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-16'),
(1773, 387, 50, 'Customer', 'Thursday 16th  August 07:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-16'),
(1774, 502, 50, 'Customer', 'Thursday 16th  August 07:29 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-16'),
(1775, 387, 50, 'Customer', 'Saturday 18th  August 08:55 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-18'),
(1776, 502, 50, 'Customer', 'Saturday 18th  August 08:55 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-18'),
(1777, 276, 230, 'gloria', 'Saturday 18th  August 08:59 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 230, '', '', '2018-08-18'),
(1778, 407, 140, 'jace campang', 'Saturday 18th  August 09:05 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-08-18'),
(1779, 502, 50, 'Customer', 'Saturday 18th  August 09:17 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-18'),
(1780, 450, 350, 'babae', 'Saturday 18th  August 09:45 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-08-18'),
(1781, 692, 100, 'Customer', 'Saturday 18th  August 09:46 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-18'),
(1782, 350, 100, 'mario bello', 'Saturday 18th  August 10:03 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-18'),
(1783, 503, 100, 'Customer', 'Saturday 18th  August 10:08 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-18'),
(1784, 353, 100, 'sally bautista', 'Saturday 18th  August 10:27 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-18'),
(1785, 531, 150, 'lalakeng mataba', 'Saturday 18th  August 10:42 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-18'),
(1786, 353, 100, 'analyn cb', 'Saturday 18th  August 11:04 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-18'),
(1787, 691, 100, 'Customer', 'Saturday 18th  August 11:52 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-18'),
(1788, 505, 100, 'Customer', 'Saturday 18th  August 11:53 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-18'),
(1789, 539, 350, 'rhea rojas', 'Saturday 18th  August 12:06 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-08-18'),
(1790, 353, 100, 'rhea rojas', 'Saturday 18th  August 12:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-18'),
(1791, 251, 320, 'janith de lion', 'Saturday 18th  August 12:35 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 320, '', '', '2018-08-18'),
(1792, 502, 50, 'Customer', 'Saturday 18th  August 01:19 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-18'),
(1793, 502, 50, 'Customer', 'Saturday 18th  August 01:19 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-18'),
(1794, 646, 150, 'Customer', 'Saturday 18th  August 01:58 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-18'),
(1795, 315, 150, 'Customer', 'Saturday 18th  August 02:01 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-18'),
(1796, 64, 100, 'Customer', 'Saturday 18th  August 02:19 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-18'),
(1797, 504, 50, 'Customer', 'Saturday 18th  August 03:37 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-18'),
(1798, 387, 50, 'Customer', 'Saturday 18th  August 03:55 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-18'),
(1799, 387, 50, 'Customer', 'Saturday 18th  August 03:56 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-18'),
(1800, 583, 200, 'Customer teddy', 'Saturday 18th  August 04:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-08-18'),
(1801, 502, 50, 'Customer', 'Saturday 18th  August 04:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-18'),
(1802, 502, 50, 'Customer', 'Saturday 18th  August 05:01 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-18'),
(1803, 34, 100, 'Customer', 'Saturday 18th  August 05:19 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-18'),
(1804, 318, 100, 'Customer', 'Saturday 18th  August 05:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-18'),
(1805, 502, 50, 'Customer', 'Saturday 18th  August 05:55 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-18'),
(1806, 638, 150, 'Customer', 'Saturday 18th  August 06:11 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-18'),
(1807, 503, 100, 'Customer', 'Saturday 18th  August 06:14 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-18'),
(1808, 502, 50, 'Customer', 'Saturday 18th  August 06:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-18'),
(1809, 502, 50, 'Customer', 'Saturday 18th  August 06:49 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-18'),
(1810, 502, 50, 'Customer', 'Saturday 18th  August 06:49 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-18'),
(1811, 502, 50, 'Customer', 'Saturday 18th  August 06:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-18'),
(1812, 107, 100, 'Customer', 'Saturday 18th  August 07:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-18'),
(1813, 315, 150, 'Customer', 'Saturday 18th  August 07:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, 'replaced', 'working', '2018-08-18'),
(1814, 505, 100, 'Customer', 'Saturday 18th  August 07:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-18'),
(1815, 346, 100, 'Customer', 'Sunday 19th  August 09:02 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-19'),
(1816, 28, 100, 'Customer', 'Sunday 19th  August 09:04 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-19'),
(1817, 505, 100, 'Customer', 'Sunday 19th  August 09:04 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-19'),
(1818, 506, 150, 'Customer', 'Sunday 19th  August 09:05 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-19'),
(1819, 107, 100, 'Customer', 'Sunday 19th  August 09:05 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-19'),
(1820, 107, 100, 'Customer', 'Sunday 19th  August 09:58 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-19'),
(1821, 107, 100, 'Customer', 'Sunday 19th  August 09:58 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-19'),
(1822, 502, 50, 'Customer', 'Sunday 19th  August 09:59 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-19'),
(1823, 502, 50, 'Customer', 'Sunday 19th  August 10:02 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-19'),
(1824, 636, 200, 'Customer', 'Sunday 19th  August 10:32 AM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 200, 'replacement', '1813', '2018-08-19'),
(1825, 73, 100, 'Customer', 'Sunday 19th  August 10:40 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-19'),
(1826, 315, 150, 'Customer', 'Sunday 19th  August 11:34 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-19'),
(1827, 387, 50, 'Customer', 'Sunday 19th  August 11:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-19'),
(1828, 387, 50, 'Customer', 'Sunday 19th  August 11:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-19'),
(1829, 371, 599, 'rose', 'Sunday 19th  August 11:41 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 599, '', '', '2018-08-19'),
(1830, 505, 100, 'Customer', 'Sunday 19th  August 11:51 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-19'),
(1831, 597, 630, 'jaymar', 'Sunday 19th  August 12:22 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 630, '', '', '2018-08-19'),
(1832, 320, 150, 'darwin', 'Sunday 19th  August 01:56 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-19'),
(1833, 349, 100, 'Customer SALLY', 'Sunday 19th  August 02:52 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-19'),
(1834, 502, 50, 'Customer', 'Sunday 19th  August 02:53 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-19'),
(1835, 487, 650, 'RAYMOND', 'Sunday 19th  August 03:59 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 650, '', '', '2018-08-19'),
(1836, 703, 380, 'VHIN ', 'Sunday 19th  August 04:05 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 380, '', '', '2018-08-19'),
(1837, 502, 40, 'Customer', 'Sunday 19th  August 04:09 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-08-19'),
(1838, 410, 100, 'Customer', 'Sunday 19th  August 04:58 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-19'),
(1839, 408, 80, 'Customer', 'Sunday 19th  August 06:01 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 80, '', '', '2018-08-19'),
(1840, 407, 120, 'Customer', 'Sunday 19th  August 06:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-08-19'),
(1841, 502, 50, 'Customer', 'Sunday 19th  August 06:10 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-19'),
(1842, 388, 40, 'Customer', 'Sunday 19th  August 06:14 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-08-19'),
(1843, 360, 300, 'CustomerPATRICK', 'Sunday 19th  August 06:31 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 300, '', '', '2018-08-19'),
(1844, 350, 100, 'Customer', 'Sunday 19th  August 07:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-19'),
(1845, 506, 130, 'Customer', 'Sunday 19th  August 07:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-08-19'),
(1846, 407, 100, 'Customer', 'Sunday 19th  August 07:51 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-19'),
(1847, 387, 30, 'Customer', 'Sunday 19th  August 08:20 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 30, '', '', '2018-08-19'),
(1848, 362, 420, 'Customer OGIE', 'Sunday 19th  August 08:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 420, '', '', '2018-08-19'),
(1849, 411, 100, 'Customer', 'Monday 20th  August 08:36 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-20'),
(1850, 703, 380, 'arriza', 'Monday 20th  August 10:26 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 380, '', '', '2018-08-20'),
(1851, 502, 50, 'Customer', 'Monday 20th  August 10:34 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-20'),
(1852, 502, 50, 'Customer', 'Monday 20th  August 10:36 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-20'),
(1853, 319, 150, 'Customer', 'Monday 20th  August 11:45 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-20'),
(1854, 111, 100, 'Customer', 'Monday 20th  August 11:54 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-20'),
(1855, 502, 50, 'Customer', 'Monday 20th  August 12:06 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-20'),
(1856, 478, 250, 'Customer', 'Monday 20th  August 01:10 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-08-20'),
(1857, 407, 150, 'Customer', 'Monday 20th  August 01:33 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-20'),
(1858, 353, 100, 'Customer', 'Monday 20th  August 02:32 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-20'),
(1859, 505, 100, 'Customer', 'Monday 20th  August 02:33 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-20'),
(1860, 503, 100, 'Customer', 'Monday 20th  August 02:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-20'),
(1861, 502, 50, 'Customer', 'Monday 20th  August 02:56 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-20'),
(1862, 502, 100, 'Customer', 'Monday 20th  August 02:56 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 200, '', '', '2018-08-20'),
(1863, 506, 150, 'Customer', 'Monday 20th  August 03:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-20'),
(1864, 502, 50, 'Customer', 'Monday 20th  August 03:05 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-20'),
(1865, 502, 50, 'Customer', 'Monday 20th  August 03:06 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-20'),
(1866, 387, 50, 'Customer', 'Monday 20th  August 03:14 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-20'),
(1867, 363, 499, 'ann', 'Monday 20th  August 06:33 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-08-20'),
(1868, 705, 400, 'lita torres', 'Monday 20th  August 06:48 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 400, '', '', '2018-08-20'),
(1869, 320, 150, 'Customer', 'Monday 20th  August 07:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-20'),
(1870, 710, 2999, 'josephine', 'Monday 20th  August 07:53 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 2999, 'replaced', 'defected', '2018-08-20'),
(1871, 630, 100, 'Customer', 'Monday 20th  August 08:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-20'),
(1872, 455, 120, 'Customer', 'Monday 20th  August 08:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-08-20'),
(1873, 330, 130, 'boy', 'Wednesday 22nd  August 08:20 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-08-22'),
(1874, 505, 100, 'Customer', 'Wednesday 22nd  August 08:21 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-22'),
(1875, 502, 50, 'Customer', 'Wednesday 22nd  August 10:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-08-22'),
(1876, 104, 100, 'Customer', 'Wednesday 22nd  August 10:35 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-22'),
(1877, 385, 2999, 'josephine', 'Wednesday 22nd  August 10:36 AM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 2999, 'replacement', '1870', '2018-08-22'),
(1878, 502, 50, 'Customer', 'Wednesday 22nd  August 10:46 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-22'),
(1879, 504, 50, 'Customer', 'Wednesday 22nd  August 11:01 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-22'),
(1880, 315, 150, 'glen', 'Wednesday 22nd  August 12:14 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-22'),
(1881, 502, 50, 'Customer', 'Wednesday 22nd  August 01:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-22'),
(1882, 315, 150, 'Customer', 'Wednesday 22nd  August 01:01 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-22'),
(1883, 34, 100, 'Customer', 'Wednesday 22nd  August 01:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-22'),
(1884, 502, 50, 'Customer', 'Wednesday 22nd  August 01:28 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-22'),
(1885, 649, 180, 'Customer', 'Wednesday 22nd  August 02:10 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 180, '', '', '2018-08-22'),
(1886, 523, 499, 'dong', 'Wednesday 22nd  August 03:52 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-08-22'),
(1887, 344, 100, 'Customer joey', 'Wednesday 22nd  August 04:51 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-22'),
(1888, 504, 50, 'Customer', 'Wednesday 22nd  August 06:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-22'),
(1889, 392, 100, 'Customer', 'Thursday 23rd  August 08:22 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-23'),
(1890, 320, 150, 'alvin tejas', 'Thursday 23rd  August 08:24 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-23'),
(1891, 315, 150, 'babae', 'Thursday 23rd  August 08:53 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-23'),
(1892, 315, 150, 'roth', 'Thursday 23rd  August 09:33 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-23'),
(1893, 373, 500, 'michael ignacio', 'Thursday 23rd  August 10:21 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 500, '', '', '2018-08-23'),
(1894, 390, 50, 'Customer', 'Thursday 23rd  August 11:01 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-23'),
(1895, 390, 50, 'Customer', 'Thursday 23rd  August 11:10 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-23'),
(1896, 388, 40, 'Customer', 'Thursday 23rd  August 11:13 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-08-23'),
(1897, 465, 250, 'analou teves', 'Thursday 23rd  August 11:20 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 500, '', '', '2018-08-23'),
(1898, 502, 50, 'Customer', 'Thursday 23rd  August 11:52 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 2, 100, '', '', '2018-08-23'),
(1899, 502, 50, 'Customer', 'Thursday 23rd  August 11:56 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-23'),
(1900, 696, 150, 'jason', 'Thursday 23rd  August 12:15 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-23'),
(1901, 245, 390, 'taho', 'Thursday 23rd  August 12:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 390, '', '', '2018-08-23'),
(1902, 502, 50, 'Customer', 'Thursday 23rd  August 12:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-23'),
(1903, 315, 150, 'ricric', 'Thursday 23rd  August 01:47 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-23'),
(1904, 315, 130, 'Customer marites', 'Thursday 23rd  August 02:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-08-23'),
(1905, 502, 50, 'Customer', 'Thursday 23rd  August 03:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-23'),
(1906, 317, 150, 'journey', 'Thursday 23rd  August 05:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-23'),
(1907, 179, 370, 'Customer walang pang', 'Thursday 23rd  August 06:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 370, '', '', '2018-08-23'),
(1908, 603, 350, 'Customer cristobal', 'Thursday 23rd  August 06:25 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-08-23'),
(1909, 539, 350, 'Customer jeremy', 'Thursday 23rd  August 07:37 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-08-23'),
(1910, 379, 360, 'john Arck', 'Saturday 25th  August 09:10 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 360, '', '', '2018-08-25'),
(1911, 315, 150, 'ADELL', 'Saturday 25th  August 09:34 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-25'),
(1912, 349, 150, 'chris', 'Saturday 25th  August 09:48 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-25'),
(1913, 371, 599, 'mark anthony', 'Saturday 25th  August 09:58 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 599, '', '', '2018-08-25'),
(1914, 387, 50, 'Customer', 'Saturday 25th  August 09:59 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-25'),
(1915, 531, 150, 'lalakeng nka bike', 'Saturday 25th  August 09:59 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-25'),
(1916, 86, 100, 'Customer', 'Saturday 25th  August 10:13 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-25'),
(1917, 502, 50, 'Customer', 'Saturday 25th  August 10:20 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-25'),
(1918, 353, 100, 'robilyn', 'Saturday 25th  August 10:26 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-25'),
(1919, 504, 50, 'Customer', 'Saturday 25th  August 10:48 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-25'),
(1920, 683, 100, 'Customer', 'Saturday 25th  August 11:39 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-25'),
(1921, 502, 50, 'Customer', 'Saturday 25th  August 11:42 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-25'),
(1922, 502, 50, 'Customer', 'Saturday 25th  August 11:49 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-25'),
(1923, 505, 100, 'Customer', 'Saturday 25th  August 12:15 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-25'),
(1924, 504, 50, 'Customer', 'Saturday 25th  August 12:34 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-25'),
(1925, 504, 50, 'Customer', 'Saturday 25th  August 12:34 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-25'),
(1926, 502, 40, 'Customer', 'Saturday 25th  August 12:35 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-08-25'),
(1927, 342, 150, 'linda', 'Saturday 25th  August 01:06 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-25'),
(1928, 502, 40, 'Customer', 'Saturday 25th  August 01:11 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-08-25'),
(1929, 504, 50, 'Customer', 'Saturday 25th  August 01:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-25'),
(1930, 505, 100, 'Customer', 'Saturday 25th  August 04:51 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-25'),
(1931, 379, 390, 'Customer kris', 'Saturday 25th  August 05:00 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 390, '', '', '2018-08-25'),
(1932, 75, 100, 'Customer', 'Saturday 25th  August 05:07 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-25'),
(1933, 110, 80, 'Customer', 'Saturday 25th  August 05:23 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 80, '', '', '2018-08-25'),
(1934, 237, 350, 'Customer mael', 'Saturday 25th  August 05:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-08-25'),
(1935, 315, 150, 'Customer florie', 'Saturday 25th  August 05:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-25'),
(1936, 315, 130, 'Customer jim', 'Saturday 25th  August 06:45 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-08-25'),
(1937, 636, 190, 'babae', 'Sunday 26th  August 09:02 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 190, '', '', '2018-08-26'),
(1938, 506, 120, 'Customer', 'Sunday 26th  August 09:03 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 120, '', '', '2018-08-26'),
(1939, 502, 50, 'Customer', 'Sunday 26th  August 09:17 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-26'),
(1940, 714, 2250, 'kris', 'Sunday 26th  August 09:44 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 2250, '', '', '2018-08-26'),
(1941, 630, 100, 'Customer', 'Sunday 26th  August 11:00 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-26'),
(1942, 502, 50, 'Customer', 'Sunday 26th  August 11:23 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-26'),
(1943, 387, 50, 'Customer', 'Sunday 26th  August 11:27 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-26'),
(1944, 503, 100, 'Customer', 'Sunday 26th  August 11:51 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-26'),
(1945, 107, 100, 'Customer', 'Sunday 26th  August 11:52 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-26'),
(1946, 349, 150, 'Customer ', 'Sunday 26th  August 12:26 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-26'),
(1947, 713, 2650, 'Customer mark', 'Sunday 26th  August 01:38 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 2650, '', '', '2018-08-26'),
(1948, 502, 50, 'Customer', 'Sunday 26th  August 01:59 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-26'),
(1949, 531, 150, 'Customer jerald', 'Sunday 26th  August 03:53 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-26'),
(1950, 366, 499, 'rose anne', 'Sunday 26th  August 06:18 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 499, '', '', '2018-08-26'),
(1951, 702, 390, 'Customer justine', 'Sunday 26th  August 06:49 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 390, '', '', '2018-08-26');
INSERT INTO `transactionbuy` (`buy_id`, `buy_product_id`, `buy_price`, `name`, `date_time`, `description`, `qty`, `total_price`, `status`, `prod_stat`, `date`) VALUES
(1952, 703, 380, 'Customer justine', 'Sunday 26th  August 06:49 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 380, '', '', '2018-08-26'),
(1953, 409, 100, 'Customer', 'Sunday 26th  August 07:33 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-26'),
(1954, 409, 100, 'Customer', 'Sunday 26th  August 07:33 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-26'),
(1955, 389, 40, 'Customer', 'Monday 27th  August 08:55 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-08-27'),
(1956, 389, 40, 'Customer', 'Monday 27th  August 08:55 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-08-27'),
(1957, 502, 50, 'Customer', 'Monday 27th  August 08:57 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-27'),
(1958, 502, 50, 'Customer', 'Monday 27th  August 08:58 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-27'),
(1959, 353, 100, 'Customer ate', 'Monday 27th  August 09:49 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-27'),
(1960, 122, 200, 'Customer', 'Monday 27th  August 10:00 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-08-27'),
(1961, 505, 100, 'Customer', 'Monday 27th  August 11:21 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-27'),
(1962, 407, 150, 'Customer', 'Monday 27th  August 11:27 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-27'),
(1963, 353, 100, 'Customer', 'Monday 27th  August 12:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-27'),
(1964, 144, 0, 'rahib', 'Monday 27th  August 01:02 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 0, '', '', '2018-08-27'),
(1965, 388, 35, 'Customer', 'Monday 27th  August 02:28 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 35, '', '', '2018-08-27'),
(1966, 409, 100, 'toto', 'Monday 27th  August 02:29 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-27'),
(1967, 371, 580, 'jun', 'Monday 27th  August 02:47 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 580, '', '', '2018-08-27'),
(1968, 531, 130, 'Customer', 'Monday 27th  August 04:14 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-08-27'),
(1969, 387, 50, 'Customer', 'Monday 27th  August 04:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-27'),
(1970, 504, 0, 'ung babaeing laginf ', 'Monday 27th  August 05:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 0, '', '', '2018-08-27'),
(1971, 342, 0, 'ung babaeing laginf ', 'Monday 27th  August 05:17 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 0, '', '', '2018-08-27'),
(1972, 505, 100, 'Customer', 'Monday 27th  August 05:21 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-27'),
(1973, 109, 100, 'Customer', 'Monday 27th  August 05:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-27'),
(1974, 346, 100, 'naneth ', 'Monday 27th  August 05:50 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-27'),
(1975, 315, 150, 'naneth', 'Monday 27th  August 05:51 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-27'),
(1976, 505, 100, 'Customer', 'Monday 27th  August 06:10 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-27'),
(1977, 64, 100, 'Customer', 'Monday 27th  August 06:33 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-27'),
(1978, 583, 200, 'shante dope', 'Monday 27th  August 06:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-08-27'),
(1979, 698, 200, 'mary grace', 'Monday 27th  August 06:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-08-27'),
(1980, 315, 150, 'Customer', 'Monday 27th  August 06:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-27'),
(1981, 504, 50, 'Customer', 'Monday 27th  August 06:55 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-27'),
(1982, 359, 250, 'ayie -wth download n', 'Monday 27th  August 07:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 250, '', '', '2018-08-27'),
(1983, 502, 50, 'Customer', 'Tuesday 28th  August 08:37 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 3, 150, '', '', '2018-08-28'),
(1984, 388, 40, 'Customer', 'Tuesday 28th  August 08:37 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-08-28'),
(1985, 342, 130, 'maria cristina', 'Tuesday 28th  August 09:20 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-08-28'),
(1986, 502, 50, 'Customer', 'Tuesday 28th  August 09:53 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-28'),
(1987, 531, 140, 'pinya', 'Tuesday 28th  August 11:09 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-08-28'),
(1988, 502, 50, 'Customer', 'Tuesday 28th  August 11:40 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-28'),
(1989, 502, 50, 'Customer', 'Tuesday 28th  August 12:13 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-28'),
(1990, 407, 140, 'binata my hikaw', 'Tuesday 28th  August 12:29 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 140, '', '', '2018-08-28'),
(1991, 349, 150, 'Customer', 'Tuesday 28th  August 01:23 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, '', '', '2018-08-28'),
(1992, 502, 40, 'Customer', 'Tuesday 28th  August 01:23 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-08-28'),
(1993, 409, 35, 'Customer bpa nasir', 'Tuesday 28th  August 01:40 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 35, '', '', '2018-08-28'),
(1994, 409, 35, 'Customer bpa nasir', 'Tuesday 28th  August 01:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 35, '', '', '2018-08-28'),
(1995, 698, 50, 'Customer bpa nasir', 'Tuesday 28th  August 01:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-28'),
(1996, 700, 50, 'Customer bpa nasir', 'Tuesday 28th  August 01:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-28'),
(1997, 709, 50, 'Customer bpa nasir', 'Tuesday 28th  August 01:42 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-28'),
(1998, 502, 40, 'Customer', 'Tuesday 28th  August 01:54 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-08-28'),
(1999, 75, 100, 'Customer', 'Tuesday 28th  August 05:44 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-28'),
(2000, 635, 190, 'Customer', 'Tuesday 28th  August 06:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 190, '', '', '2018-08-28'),
(2001, 389, 30, 'Customer', 'Tuesday 28th  August 06:43 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 30, '', '', '2018-08-28'),
(2002, 502, 50, 'Customer', 'Wednesday 29th  August 08:26 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-29'),
(2003, 407, 130, 'Customer', 'Wednesday 29th  August 08:26 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 130, '', '', '2018-08-29'),
(2004, 504, 50, 'Customer', 'Wednesday 29th  August 08:27 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-29'),
(2005, 359, 200, 'Customer', 'Wednesday 29th  August 08:27 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-08-29'),
(2006, 344, 100, 'Customer', 'Wednesday 29th  August 08:52 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-29'),
(2007, 170, 350, 'norberto ', 'Wednesday 29th  August 09:25 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 350, '', '', '2018-08-29'),
(2008, 389, 40, 'Customer', 'Wednesday 29th  August 09:27 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-08-29'),
(2009, 407, 150, 'Customer', 'Wednesday 29th  August 09:47 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 150, 'replaced', 'working', '2018-08-29'),
(2010, 410, 100, 'Customer', 'Wednesday 29th  August 10:35 AM', '<h1>Warranty</h1><p>1 Week Factory defect Only</p>', 1, 100, 'replacement', '2009', '2018-08-29'),
(2011, 387, 50, 'Customer', 'Wednesday 29th  August 10:53 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-29'),
(2012, 504, 50, 'Customer', 'Wednesday 29th  August 11:08 AM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-29'),
(2013, 504, 50, 'Customer', 'Wednesday 29th  August 12:28 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-29'),
(2014, 502, 50, 'Customer', 'Wednesday 29th  August 01:57 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-29'),
(2015, 580, 100, 'Customer haidi', 'Wednesday 29th  August 02:39 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-29'),
(2016, 349, 100, 'Customer', 'Wednesday 29th  August 03:36 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-29'),
(2017, 388, 40, 'Customer', 'Wednesday 29th  August 03:46 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 40, '', '', '2018-08-29'),
(2018, 353, 80, 'Customer', 'Wednesday 29th  August 05:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 80, '', '', '2018-08-29'),
(2019, 635, 200, 'Customer philip', 'Wednesday 29th  August 05:27 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 200, '', '', '2018-08-29'),
(2020, 353, 100, 'Customer allen', 'Wednesday 29th  August 06:32 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-29'),
(2021, 623, 80, 'Customer', 'Wednesday 29th  August 06:37 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 80, '', '', '2018-08-29'),
(2022, 353, 100, 'Customer honey', 'Wednesday 29th  August 06:41 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 100, '', '', '2018-08-29'),
(2023, 390, 50, 'Customer', 'Wednesday 29th  August 07:24 PM', '<h1>Warranty</h1>\r\n\r\n<p>1 Week Factory defect Only</p>\r\n', 1, 50, '', '', '2018-08-29');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(2, 'rahib', 'Abu Halil', 'admin', 'admin', '09495938992', 'blk 176 lt  7 maharlika village taguig city', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `refunditem`
--
ALTER TABLE `refunditem`
  ADD PRIMARY KEY (`refund_id`);

--
-- Indexes for table `replacememt`
--
ALTER TABLE `replacememt`
  ADD PRIMARY KEY (`rep_id`);

--
-- Indexes for table `transactionbuy`
--
ALTER TABLE `transactionbuy`
  ADD PRIMARY KEY (`buy_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=728;

--
-- AUTO_INCREMENT for table `refunditem`
--
ALTER TABLE `refunditem`
  MODIFY `refund_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `replacememt`
--
ALTER TABLE `replacememt`
  MODIFY `rep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `transactionbuy`
--
ALTER TABLE `transactionbuy`
  MODIFY `buy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2024;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_22_013059_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'sadsad', 'sadsadsad', 23135.00, '2019-02-05 23:17:17', '2019-01-27 17:06:15'),
(2, 'dsadsa', 'dsadsadsa', 4324.00, '2019-03-21 18:11:06', '2019-01-28 02:25:25'),
(3, 'rahib', 'rahib', 50.00, '2019-02-05 23:17:17', '2019-01-27 17:06:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `websocket`
--
CREATE DATABASE IF NOT EXISTS `websocket` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `websocket`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`, `updated_at`) VALUES
(16, 1, 10, 'dsadsada', '2019-02-08 00:20:47', '2019-02-08 00:20:47'),
(17, 1, 11, 'dsada', '2019-02-08 00:21:35', '2019-02-08 00:21:35'),
(18, 1, 11, 'dsad', '2019-02-08 00:23:30', '2019-02-08 00:23:30'),
(19, 1, 11, 'd', '2019-02-08 00:23:46', '2019-02-08 00:23:46'),
(20, 1, 11, 'dsada', '2019-02-08 00:34:54', '2019-02-08 00:34:54'),
(21, 1, 11, 'dsasa', '2019-02-08 00:35:55', '2019-02-08 00:35:55'),
(22, 1, 11, 'dsadarewr', '2019-02-08 00:38:17', '2019-02-08 00:38:17'),
(23, 1, 11, 'dsadsa', '2019-02-08 00:40:27', '2019-02-08 00:40:27'),
(24, 1, 11, 'dsad', '2019-02-08 00:41:24', '2019-02-08 00:41:24'),
(25, 1, 11, 'dd', '2019-02-08 00:41:41', '2019-02-08 00:41:41'),
(26, 1, 11, 'dd', '2019-02-08 00:41:55', '2019-02-08 00:41:55'),
(27, 1, 11, '344444444444', '2019-02-08 00:43:35', '2019-02-08 00:43:35'),
(28, 1, 10, 'hello comment realtime ! :)', '2019-02-08 00:44:25', '2019-02-08 00:44:25'),
(29, 1, 10, 'dsadsa', '2019-02-08 00:44:49', '2019-02-08 00:44:49'),
(30, 1, 12, 'HEllo', '2019-02-08 00:45:48', '2019-02-08 00:45:48'),
(31, 1, 13, 'Hello realtime', '2019-02-08 00:46:16', '2019-02-08 00:46:16'),
(32, 1, 13, '545615', '2019-02-08 00:46:34', '2019-02-08 00:46:34'),
(33, 1, 13, 'dsad', '2019-02-08 00:57:44', '2019-02-08 00:57:44'),
(34, 1, 13, 'gffdfdf', '2019-02-08 00:57:53', '2019-02-08 00:57:53'),
(35, 1, 13, 's', '2019-02-08 00:58:00', '2019-02-08 00:58:00'),
(36, 1, 10, 'dsad', '2019-02-14 16:37:16', '2019-02-14 16:37:16'),
(37, 1, 10, 'd', '2019-02-14 16:51:38', '2019-02-14 16:51:38'),
(38, 1, 11, 'd', '2019-02-14 17:05:47', '2019-02-14 17:05:47'),
(39, 1, 11, 'realtime', '2019-02-14 17:05:56', '2019-02-14 17:05:56'),
(40, 1, 15, 'realtime here check', '2019-02-14 17:07:09', '2019-02-14 17:07:09'),
(41, 1, 15, 'ds', '2019-02-14 17:07:17', '2019-02-14 17:07:17'),
(42, 1, 15, 'test', '2019-02-14 17:08:42', '2019-02-14 17:08:42'),
(43, 1, 15, 's', '2019-02-14 17:08:44', '2019-02-14 17:08:44'),
(44, 1, 18, 'rhaib', '2019-02-14 17:27:25', '2019-02-14 17:27:25'),
(45, 1, 18, 'sda', '2019-02-14 17:27:30', '2019-02-14 17:27:30'),
(46, 1, 18, 'dsada', '2019-02-14 17:28:08', '2019-02-14 17:28:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_12_07_213528_create_posts_table', 1),
(4, '2019_02_06_050935_create_comments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `published`, `created_at`, `updated_at`) VALUES
(1, 1, 'Reiciendis ut voluptatem ut natus voluptas illum unde sapiente.', 'Natus voluptatibus eum omnis hic. Sint ipsa aut cum quam alias.\n\nAutem beatae necessitatibus velit eius labore mollitia ut. Adipisci aut eaque nulla iste esse. Mollitia vitae ut voluptates tenetur et quia. Vitae omnis dolor odio ipsam eveniet non voluptate.\n\nSint nam quia enim. Ipsa neque eligendi et illum. Non est porro id beatae. Ut eveniet rerum dolores ea iste.\n\nIure exercitationem perspiciatis maxime sed voluptate aut. Soluta dolor rerum assumenda quam. Necessitatibus veniam cumque vitae cum.\n\nQui veniam deleniti ea perferendis ad repudiandae omnis. Autem illo nulla aut ipsam perferendis quod. Qui aut laboriosam ad iste quia.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(2, 1, 'Tempora reiciendis voluptatum et ad.', 'Voluptatem eos et impedit eveniet. Illo quibusdam quas a inventore doloremque ea exercitationem. Voluptatem numquam distinctio ipsum ut animi. Eos voluptas maxime aspernatur et.\n\nDolor iste tenetur illo aperiam qui sunt. Soluta veritatis ipsa officiis. In eaque nam natus amet perspiciatis occaecati.\n\nFacilis perspiciatis aut incidunt officia dolor. Facere soluta velit qui molestiae quibusdam. Reprehenderit et est nulla quae sed et consequatur.\n\nEnim inventore enim sequi voluptate. Minima animi laudantium voluptatem voluptatem quidem sunt id reiciendis. Pariatur voluptas quis occaecati fugiat eos pariatur.\n\nDolorem error consequuntur accusamus accusamus nulla asperiores quod. In esse nam commodi quia qui ad nisi porro. Consectetur itaque perferendis consequatur ipsum dolorum tempora ea.\n\nEnim aut facilis sed voluptas sit ullam quo. Qui ipsam ducimus doloremque libero. Et non est vel magni perferendis voluptatem iusto iste. Repellat eveniet rerum enim itaque odit sequi.\n\nMagni sit voluptate ratione perspiciatis ea. Veritatis labore veritatis quaerat consequatur alias vel. Totam porro qui sit id quia fugiat dicta. Officiis voluptatem alias officia eos quos culpa.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(3, 1, 'Est eligendi odio consectetur consequuntur.', 'Officia voluptates minus assumenda praesentium ut qui. Eum aperiam sit velit. Rem cupiditate a veniam aspernatur enim sed. Omnis in nemo velit tempora ipsam quisquam.\n\nQuia et qui possimus ipsam cumque et. Adipisci laudantium eum accusantium est aut. Impedit ut harum illum sed voluptatem. Aut rerum debitis cum nesciunt expedita autem ut.\n\nEt qui laudantium at porro. Delectus et aliquid autem quis ut eum quasi. Quis rem dicta fugiat non quia rerum. Sed culpa laboriosam dolore vero dolorem culpa.\n\nNihil quia facilis ea nobis culpa at. Soluta rerum et voluptatem voluptatibus beatae. Voluptatem consequatur impedit autem iure occaecati voluptatem vel. Omnis quaerat eos aut deleniti.\n\nImpedit nemo sint sit sit. Autem veritatis quia omnis quia molestiae et ab. Vitae eius dolor dolore omnis sit possimus mollitia. Laudantium ipsam facere maiores.\n\nCum ullam quia molestias reiciendis assumenda velit est. Quidem eligendi cum neque blanditiis. Error et animi quo in.\n\nRecusandae voluptas impedit voluptatem quasi. Sit pariatur tempora inventore recusandae. Sint et voluptas non sed.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(4, 1, 'Eligendi porro aliquid ea iste ea.', 'Placeat quos quam ad. Qui ut suscipit quia aut voluptatem. Ut vero reprehenderit qui dolor.\n\nSit enim eius expedita. Alias magni doloremque quam distinctio. Vitae quas natus minus iure error ut qui. Recusandae quae autem sint et porro et quasi vero.\n\nEveniet dicta numquam in dolor. Et ut dolorem dolorem at. Corporis consequatur qui id commodi.\n\nCommodi ut quia repudiandae non. Culpa minus eaque temporibus et. Aliquam adipisci officia dicta laborum dolor dolorem. Quo veritatis doloremque earum sint sunt.\n\nSoluta rerum sint aperiam eligendi numquam. Debitis quo quaerat eos voluptas quis aut. Voluptas est cupiditate nulla et.\n\nUt exercitationem aut veniam quia et voluptatem. Delectus tenetur suscipit ipsam blanditiis optio animi animi. Ea saepe natus quo quod quisquam.\n\nQuis vero consequatur illo culpa. Quam eius maxime nam maxime ut. Possimus ea est deleniti ipsum architecto.\n\nCommodi dolores rerum voluptas. Aliquam ab culpa et ut veritatis aperiam voluptas. Dolor et et quidem eveniet accusamus sint labore aut.\n\nSed dolor dolorum eos fugit in est nihil. Dolores error harum ad in perspiciatis. Facilis iure quis nam et et quibusdam eum.\n\nRepudiandae aut aut et animi occaecati reprehenderit. Consectetur sint mollitia odit et iusto.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(5, 2, 'Est ut ratione porro cumque illum dolores culpa nisi.', 'Perferendis deleniti perspiciatis aut. Ea impedit officiis dolorem est animi provident.\n\nInventore natus animi consequatur cupiditate nostrum. Quaerat labore dolores assumenda aut voluptatem. Ut est qui ipsam perferendis quidem ad sed.\n\nCorporis omnis qui culpa voluptatem autem numquam quasi maxime. Officia qui debitis harum architecto voluptatem. Eaque delectus alias natus voluptas officia.\n\nIure explicabo est asperiores est natus amet dolor. Et ut rem mollitia molestiae laborum voluptatem.\n\nVoluptas consequatur quo deleniti ratione. Dolorum voluptatem illum dolorem aut sed. Consequatur deserunt et ut velit. Aperiam labore quos quaerat laboriosam ipsum molestias quam.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(6, 2, 'Facilis minima deserunt aut tempore fugiat quis ab.', 'Eveniet maxime saepe rerum quia ipsa. Saepe delectus nostrum sit eos. Aut enim dolore et natus.\n\nNumquam id ducimus corporis omnis dolore libero architecto. Ut maiores quis quod sunt et. Explicabo modi provident consequatur magni enim qui voluptatem. Qui accusamus molestias minima nihil praesentium distinctio.\n\nDolorum a ipsa est quis eaque sint. Ea a maxime doloribus facilis provident quia harum.\n\nPerferendis explicabo voluptatem saepe quos voluptas. Adipisci id sapiente corporis. Aut possimus ut nihil placeat cumque explicabo non.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(7, 2, 'Exercitationem tempore dignissimos tempore.', 'Voluptas accusamus reprehenderit culpa at. Et sed eos provident ratione perspiciatis. Voluptatem quia quaerat iste ratione ut at sed. Dolorum in aut exercitationem in nisi ratione.\n\nConsectetur dolor quia dolorum saepe vero. Ut facere ipsum atque error eos dolor. Et nihil aut a fugiat. Ut consectetur eaque neque dolores quia sed est ab.\n\nDolore nulla cum tempora dolore. Et minus esse ex ut id voluptatem. Quo amet repellendus sed maiores totam error earum voluptatem.\n\nNon quia ea ea beatae. Tempora animi vitae voluptatem sunt. Possimus ea dolore voluptate impedit sit laborum.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(8, 2, 'Sint ullam non unde officiis dolores cupiditate.', 'Aliquid ut delectus accusantium aut fuga. Molestiae voluptatem ipsa odio adipisci porro quo quia deleniti. Nobis illo quis eveniet sed. Consequuntur modi illo eligendi molestias animi fugit.\n\nDistinctio cupiditate autem ab consequatur. Sed voluptatibus cumque consequatur sit corrupti necessitatibus et dolores. Numquam dolorem omnis similique eos commodi. Itaque veritatis repudiandae possimus rerum voluptate vero.\n\nDelectus ut sunt et. Autem repellat qui sit pariatur est nobis. Accusantium nesciunt consequuntur accusamus eos rem et eveniet. A dolores dicta qui ipsam quo sit.\n\nEnim vitae maxime quis aut. Enim dolor nam qui. Quod laboriosam tempora autem dolores et quod cum ea. Ipsam sit eos non provident qui nemo.\n\nIusto enim est et nisi animi. Minus eligendi et aut incidunt et id dolores mollitia. Culpa et id neque vero consectetur.\n\nAdipisci saepe cumque recusandae eum reiciendis laborum ea facere. Eum suscipit non quisquam nihil quos tenetur. Quo facere sed eos.\n\nQuia ab cumque fugiat voluptatum ea. Possimus optio occaecati cumque voluptatem fuga omnis a. Eum expedita est minus unde. Beatae nesciunt quis atque odit pariatur esse.\n\nQuia in quaerat illo vel recusandae similique consequuntur non. Corporis aperiam iure consequatur.\n\nVoluptatem maxime pariatur recusandae voluptas et repudiandae iure. Sequi veritatis et esse nisi. Alias aliquam hic modi ut labore. Aut molestiae iure temporibus adipisci commodi aut voluptas.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(9, 3, 'Maiores ullam esse architecto deserunt quia.', 'Vero perspiciatis sunt vero et eveniet. Dolores voluptatem quo nostrum vel aut. Eos est perferendis consequatur nam.\n\nDelectus excepturi enim ut harum delectus omnis et repudiandae. Enim illo et recusandae laboriosam. Nihil debitis non cum vero nihil qui velit consectetur.\n\nEt praesentium aliquam minus consequatur. Dicta fugit excepturi ipsam repudiandae eaque eveniet. Est et id sit rerum molestiae molestiae omnis hic.\n\nIn placeat ut minima molestiae sunt fugiat. Laboriosam nemo aliquam velit est sint. Laboriosam consectetur saepe nesciunt adipisci. Voluptatibus similique sit perspiciatis velit id at numquam.\n\nPariatur dicta cupiditate nihil laboriosam non quis id et. Fugiat vel aut placeat nemo. Ex deleniti consequatur rerum maxime facilis autem et.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(10, 3, 'Odit necessitatibus ea sit dignissimos possimus.', 'Adipisci provident quasi impedit doloribus incidunt et consectetur officiis. Quia qui sequi quisquam autem non recusandae optio. Ea sunt ab ad quia voluptatum minus distinctio.\r\n\r\nVero molestias error in cupiditate aut et ut aut. Quia non non maxime. Exercitationem consectetur aut velit error unde qui. Officia in provident aliquam porro.\r\n\r\nDelectus nostrum minima quia quia fugiat dolor quis. Et laudantium laboriosam et ut nam facilis qui quisquam. Neque veritatis neque sunt consequatur et ut.\r\n\r\nVoluptas iure ipsa rerum minima voluptatem earum odio dignissimos. Quasi voluptates veritatis et. Qui quos ipsum non ea illo.\r\n\r\nEst quae eum nobis ducimus omnis aperiam. Consectetur ex quaerat sed error rerum dolore qui. Voluptatibus veritatis sed labore odio non. Harum nostrum tenetur doloribus temporibus et qui qui.', 1, '2019-02-05 19:00:25', '2019-02-05 23:19:47'),
(11, 3, 'Nostrum vero recusandae magni ut.', 'Repellat rerum debitis dolorem dolor. Voluptates et incidunt officia error. Voluptas hic ea ipsa.\n\nEt dolores sit voluptas quisquam. Et laudantium dolores sit est in ut in possimus. Nesciunt sint dignissimos nobis totam expedita explicabo.\n\nVoluptatum dignissimos aliquid qui voluptatem. Perferendis eius omnis illo esse eligendi facilis. Rerum atque deleniti optio quo soluta quia debitis.\n\nEt reprehenderit minus expedita quia. Voluptatem laborum cum sit sint dolores. Tenetur aut recusandae dignissimos quis omnis tenetur sit voluptate.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(12, 3, 'Sint autem et dolorem labore totam ut modi.', 'Earum commodi quia quo provident laborum ea. Provident nostrum et esse adipisci placeat est.\n\nQuidem molestiae omnis consequatur sint aut rem. Ut accusantium eos ex voluptatem est vel. Rerum nobis ipsam laborum mollitia blanditiis eum.\n\nAut ullam culpa perspiciatis tempora rem ut. Quaerat error ducimus nihil porro eum. Facere molestias suscipit itaque et cum ut.\n\nEaque sunt voluptate aut commodi et molestias. Blanditiis labore corrupti laborum. Non quia et est dignissimos iure. Esse fugit aut reprehenderit illum omnis. Dolore dolorem praesentium quis.\n\nNumquam fuga ut modi ut sint earum. Provident nam doloribus facere est accusantium. Culpa sapiente blanditiis ipsam possimus natus nihil doloremque. Eius libero voluptatem explicabo sint.\n\nEt quidem nihil sit odio ut dicta. Hic et a harum voluptas velit. Quia possimus ea in at et totam sapiente aut.\n\nIusto quisquam ea architecto laboriosam. Repellat et dolor et est nemo voluptatem. Saepe suscipit sit provident dicta dolores earum quaerat.\n\nNihil at eligendi at. Nihil vero repellendus possimus minima repudiandae ut. Error deserunt libero architecto dicta modi animi sunt at. Omnis ab nisi earum quasi et.\n\nEst quis odit officia assumenda recusandae voluptatem. Omnis facere dolorem ea. Qui consequatur in et et corrupti dolore dignissimos.\n\nVitae quia dolor quis et facere cum. Porro ipsum distinctio quidem soluta corrupti ab qui. Expedita cupiditate aut eligendi culpa magnam laboriosam.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(13, 4, 'Eum dignissimos impedit aperiam ut dolorum.', 'Aut quo ea numquam. Minima vel inventore error quibusdam corrupti molestiae. Consectetur temporibus nihil velit sit veritatis.\n\nPossimus consequatur ab laboriosam provident suscipit et eius. Porro iusto dolore ducimus harum. Consequatur vel consectetur ut cupiditate dolorem. Perferendis impedit commodi tenetur qui ut expedita. Nisi debitis dignissimos praesentium unde.\n\nQuas veniam veritatis consequatur magnam consequatur. Repellendus est enim in. Tempore omnis cumque sed et laudantium a labore. Ut accusantium rerum qui in.\n\nSuscipit omnis qui vel aut sunt non explicabo veniam. Quia alias sed suscipit similique sint. Qui eius consequatur hic et laudantium officiis. Est aliquid fugiat ratione quibusdam.\n\nSuscipit quis distinctio illo ipsam voluptas nihil aspernatur. Soluta libero impedit soluta harum. Qui unde molestias ea voluptas dolor est ratione. Debitis nobis nulla quia officiis nisi aliquam deserunt labore.\n\nMinima reiciendis exercitationem possimus repudiandae aspernatur. Atque labore quo ea repellendus incidunt. Voluptatem quia ut ut voluptatibus corrupti sit rerum.\n\nNulla nostrum quis voluptatem neque est autem aut. Et nihil eos ut. Quod non eum ab asperiores voluptatem laudantium fuga suscipit.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(14, 4, 'Et distinctio incidunt deserunt quod repellat.', 'Repudiandae mollitia voluptatem est esse maiores. Perferendis aut libero deleniti laborum tempore. Voluptas voluptas dolorum nemo.\n\nMaxime sed aut quia sapiente. Modi dolorem quam quos repellendus necessitatibus delectus iure. Dicta repudiandae itaque corporis.\n\nFacilis ut hic et corrupti debitis magnam. Velit et sed eos mollitia sunt magni. Atque ab veritatis ut eveniet qui nihil odio.\n\nIusto cumque et placeat dicta consectetur quas placeat nemo. Quas minima repudiandae veritatis fuga inventore sint fuga. Qui ea illo iste perspiciatis quis vel. Praesentium voluptates et optio dolorem debitis illum voluptatum.\n\nSed delectus asperiores ab corrupti. Id laborum occaecati ut enim quod tenetur. Quas error tenetur delectus exercitationem. Tempore quia qui velit qui expedita omnis.\n\nExcepturi quia voluptas sunt animi necessitatibus aut. Veniam ea soluta voluptates molestiae nam adipisci repellendus. Eligendi ab quas non itaque est quod.\n\nUt fuga quis dolores deserunt. Est dignissimos non ea. Pariatur cupiditate sunt delectus.\n\nRepudiandae dolor incidunt beatae hic possimus odit totam. Distinctio et quibusdam officiis quia blanditiis eum fuga. Incidunt numquam commodi qui sit laboriosam atque cupiditate.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(15, 4, 'Eum voluptates sit modi labore labore a quo.', 'Sunt alias ea sed possimus est error nobis. Deserunt enim sed non. Dolor vero praesentium et alias laudantium ut tenetur maxime. In modi beatae quo possimus.\n\nQuos et totam deserunt sed. Voluptas magnam in eum consequatur accusantium labore quisquam.\n\nRerum non in saepe non minima. In et sit quidem eaque id repellat facilis omnis. Culpa eos dolores dicta temporibus.\n\nQuis placeat expedita exercitationem rerum ut nemo ut. Nemo libero atque ab et sequi est. Qui omnis aspernatur quidem ipsa.\n\nQui quis et ullam provident praesentium ullam labore. Harum corporis voluptatibus aliquid enim. Vitae consectetur rerum autem tenetur necessitatibus est.\n\nConsequatur ea quos tempora. Eveniet ipsa et cumque. Aut consequuntur consectetur sed nemo sed. Accusantium sapiente et veritatis optio sed voluptates.\n\nNon ea fugit et laborum voluptas laboriosam omnis voluptate. Ut aliquid ipsum ut dolore ea suscipit omnis. Enim doloremque iste aut. Illum sequi magni non ut.\n\nEt perferendis pariatur vitae natus fugit impedit repellendus. Ut eligendi dolorem sed laboriosam in voluptates alias error. Eos fuga hic corporis officia excepturi eum. Rem illum quod odit facere.\n\nItaque quaerat exercitationem facere non eveniet officiis. Molestiae voluptatem enim nihil ut pariatur mollitia excepturi. Possimus eum nesciunt voluptas nostrum.\n\nFugiat sit voluptatem dicta velit ut nulla aliquam doloribus. Velit omnis qui esse ut ipsam iure. Adipisci omnis enim numquam ut. Enim voluptatem eius mollitia consequuntur eum sequi.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(16, 4, 'Laboriosam repudiandae quisquam corrupti ea quo voluptatum et laudantium.', 'Et minima rem autem in eveniet. Est dolor commodi dicta voluptatem alias fugiat consectetur. Explicabo quia velit velit aut. Sapiente molestias rerum eaque vel.\n\nEnim soluta accusantium recusandae ut aut explicabo ea. Eligendi numquam ut ut delectus. Ipsa dolorem distinctio nesciunt enim voluptas sed corporis sunt.\n\nOdio id sit sed consequuntur magni. Et mollitia enim corrupti. Ea rerum quibusdam ipsum necessitatibus veniam explicabo. Nesciunt ut id sint accusamus.\n\nAt et fuga rerum. Adipisci veniam repellendus nulla. Itaque ex saepe fugiat voluptas. Minus eum doloribus quis repudiandae sint.\n\nReprehenderit voluptatem et magnam est illum veniam tenetur ullam. Sapiente assumenda ipsa dolor non. Quos similique aut corporis cumque quasi mollitia rerum. Et vitae et enim repellendus distinctio ut.\n\nQuaerat itaque qui dolorum. Enim ea quas doloremque repellendus quae unde omnis. Numquam et odit officia.\n\nFacere velit odio illum vitae. Quaerat asperiores quo quo ratione quia corporis ipsum est. Voluptas tempora doloremque voluptas sed.\n\nNisi sint dolor velit porro beatae nobis sit. Et necessitatibus culpa nesciunt veniam. Sed dicta excepturi laboriosam quos. Laudantium natus temporibus soluta sed sit doloremque distinctio qui.\n\nNumquam sed ut sed excepturi. Architecto eveniet maxime voluptatibus consequatur. Vitae recusandae molestiae veniam qui recusandae ut. Similique sit culpa omnis iusto non mollitia qui in.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(17, 5, 'Perspiciatis perspiciatis eveniet iure sit.', 'Sint velit iste ut tempore veniam. Soluta sed rerum mollitia. Sit fugit minus magni non et. Deleniti commodi quod aperiam hic eaque. Et aliquid voluptatem maiores asperiores.\n\nQui iure quis delectus quo libero voluptas est et. Nemo provident consequatur alias. Repellendus aut et et necessitatibus et aut sunt. Ut rerum laboriosam aut maxime quia laborum eveniet. Est ut sed repudiandae rerum ullam vero neque.\n\nPossimus sed ullam earum maiores. Enim eaque laboriosam corporis corporis. Officiis quo saepe omnis est ab fugit.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(18, 5, 'Et non nam quos accusamus consectetur velit perferendis quis.', 'Porro repudiandae modi eveniet sit. Fuga eligendi optio laborum. Corrupti beatae maiores distinctio et ut ut.\n\nEsse nam cupiditate et. Velit sed nesciunt dolorum autem. Eos quia pariatur vel quis. Quo id quidem ea sint neque.\n\nNumquam qui vero magnam. Odio dignissimos beatae ea est qui dolorem. Ipsam qui repudiandae enim suscipit. Quos voluptatem nisi ipsum voluptas ut perspiciatis.\n\nTempora ea ea sequi iure exercitationem. Et possimus nostrum ducimus accusamus voluptates et. Temporibus laborum voluptatem dolores totam.\n\nSuscipit libero consequatur ut dolorem consequatur inventore. Quos saepe reprehenderit quo voluptatem nesciunt qui commodi. Debitis ab tempore et non. Non ea rerum quos.\n\nSed quis quia itaque soluta aut tempore sunt dolorem. Impedit minima ipsam dignissimos sapiente quas. Maiores in cum et. Expedita aut veritatis harum necessitatibus quod et aliquid cum.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(19, 5, 'Aspernatur totam rerum dolor sunt placeat.', 'Repudiandae deleniti optio omnis natus. Soluta sequi illum quo explicabo necessitatibus voluptatum ut. Labore adipisci debitis esse possimus ut similique harum.\n\nSunt repellendus aut velit nesciunt autem in. Odit eveniet quia asperiores et facere. Ut sunt sit ipsum provident. Ipsa et et et aut aut et.\n\nAut dolorum molestiae qui maiores dolores quod. Tempora dicta excepturi officia rem inventore ab vitae. Aliquam asperiores dolores iusto quia excepturi totam. Dolorem aut eum at iure rerum dolorem distinctio.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(20, 5, 'Quibusdam mollitia numquam qui esse vel itaque pariatur.', 'Quia recusandae temporibus modi quis omnis sed sequi. Dicta voluptatem voluptate ea commodi quos consectetur quidem. Qui quis enim sed at voluptatem est magnam. Aut iusto molestias rem earum molestias eos est quis.\n\nNesciunt officia voluptatibus et sit unde. Eum aperiam quia vel dolores consequatur. Nostrum repudiandae quasi corporis delectus qui et nihil.\n\nDolorem maxime nemo recusandae vel. Corrupti voluptatem culpa ipsam id placeat. Et maxime dolorem libero dolorem. Quia aut sit laudantium vel a impedit aut.\n\nItaque corporis dolorem aut deserunt est. Consectetur voluptate eos tempora hic aut aliquam rerum. Necessitatibus perferendis cupiditate voluptatem omnis voluptas omnis. Ratione alias nesciunt vel itaque rerum ad.\n\nDolores aut libero exercitationem ad inventore quaerat. Quidem et eaque reprehenderit maxime quis iste.\n\nSint officia impedit facilis laboriosam. Eligendi officiis alias labore. Voluptatem fugiat et eius culpa et laborum.\n\nDignissimos officia ab ab eius alias eius non. Tempora inventore similique consequuntur iure ut. Laborum ducimus iste est nam dolores.\n\nRerum totam porro debitis eveniet. Et et quia exercitationem porro. Sint quod rem in iste esse fugiat. Veniam laudantium impedit cum iste nisi et quo.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(21, 6, 'Fugit totam veniam nesciunt natus rerum ad.', 'Maxime sit dignissimos soluta. Quis est explicabo et itaque qui qui. Id fugit odio et placeat amet deserunt.\n\nQuidem maxime rem aut sint laboriosam eius voluptatem eos. Culpa fugit laboriosam qui sed sed. Et repudiandae a iure quo iste. Dolore iste vero sed.\n\nFugit nulla distinctio aperiam eos porro et. Dolore dignissimos sunt iusto. Est et earum fuga labore et ab vero.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(22, 6, 'Natus aperiam et est iusto nihil enim.', 'Neque voluptatum necessitatibus dignissimos fugiat. Perspiciatis perferendis voluptatum debitis asperiores perferendis nulla est. Id et explicabo corrupti.\n\nIpsa excepturi commodi numquam explicabo ullam ut. Voluptas eos vel totam nesciunt accusamus quo nulla. Omnis asperiores tempora blanditiis adipisci.\n\nEt necessitatibus in molestias odio ab nihil esse ut. Architecto tenetur totam pariatur vero. Ut harum et dignissimos animi. Deserunt earum officia cupiditate accusamus.\n\nSed et sit tenetur libero. Dolorem minus magni aut.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(23, 6, 'Praesentium excepturi impedit maxime.', 'Totam aliquam sapiente nam repellat nemo excepturi et. Qui sint deleniti ut ea quaerat dolorum inventore et. In ut ut est sint odit sint ut et.\n\nSed odio dolore impedit rerum harum dolorem. Ut facere alias aspernatur illum maiores. Beatae modi beatae voluptatem dolores.\n\nVoluptatibus maxime officia quas deleniti. Sint eveniet cumque autem qui tempore earum quis. Praesentium mollitia commodi optio sint impedit qui sit.\n\nIpsam sapiente ut et nemo ut est. Quasi repellendus itaque amet nihil sed. Nisi voluptatem quo ut tempora et.\n\nVero eius asperiores dolores quae voluptatem sapiente. Suscipit possimus dolor asperiores nihil voluptatem et. Inventore commodi dignissimos dolor autem explicabo.\n\nVelit autem accusamus autem ipsum eveniet. Et tempore eaque dolor itaque dolorum.\n\nRerum accusantium in reprehenderit. Quae beatae doloremque ipsa rerum. Neque doloribus placeat nostrum mollitia commodi quaerat.\n\nPossimus tempore molestiae exercitationem quis rerum occaecati. Nostrum tempore facilis consectetur exercitationem. Sunt dolores tempora doloribus ea qui qui sunt.\n\nQuia aut voluptas et. Beatae dolores qui doloribus molestias. Est maxime vel velit omnis.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(24, 6, 'Suscipit dicta sunt hic et.', 'Eos repellendus omnis deleniti omnis ullam et. Ducimus praesentium non recusandae nostrum sed consequatur rem. Libero vel id sed. Explicabo ipsa omnis voluptatum quis.\n\nFuga qui at impedit labore maxime autem. Soluta eum laudantium omnis magni. Deleniti quia deleniti asperiores debitis molestiae ipsum natus.\n\nAut consequuntur commodi corrupti exercitationem nulla aspernatur. Tempora repellendus nesciunt et consequatur. Sunt est dolorem itaque assumenda quo voluptatem nobis. Cupiditate et ducimus quibusdam modi blanditiis mollitia ipsum.\n\nQuidem temporibus occaecati placeat repellat vel. Repellendus vero tempora atque esse veritatis magni. Nesciunt qui enim aut repellat. Voluptates earum impedit doloribus quia odio ipsum.\n\nEst id fuga eum numquam et sed non. Magnam in magni amet. Velit non dolore quia dolore perspiciatis ex id aut. Exercitationem tenetur rerum accusamus tempora sint est ipsam qui.\n\nVero quia aliquid soluta ipsam. Autem libero quidem ipsa fugiat provident quo.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(25, 7, 'Mollitia sapiente rerum hic rerum.', 'Eum hic dolore non labore quae possimus minus. Libero dolorum quia rerum hic atque ducimus officia velit. Quo quia quod non nesciunt sapiente officiis. Consequatur et sed qui unde quo qui.\n\nVitae debitis quis ipsam dolor eum molestias. Architecto dicta id iusto cumque rerum. Consequuntur exercitationem consectetur fugiat blanditiis cum optio. Earum laborum ratione qui vel magni distinctio et.\n\nEt ipsum sunt velit ut itaque ullam. Accusantium quidem et quia voluptate commodi ullam.\n\nQui tempore sed ut enim. Delectus in suscipit quis iste itaque tenetur consectetur ut. Voluptas optio et qui quos alias soluta.\n\nOfficia nam quasi omnis ut eaque vel. Libero fugiat aut quia fugiat quis assumenda. Qui consequatur repellat dolor assumenda quas non.\n\nVoluptatem aut qui consequatur quis. Magni assumenda nesciunt a vel unde aliquid maiores. Fugit molestiae sunt dolorem illo quas et. Tempore beatae tenetur nam nihil soluta dolor.\n\nSit autem quae amet est. Veritatis voluptatem reprehenderit et eos possimus omnis laboriosam aperiam. Placeat soluta quo ducimus veniam vel omnis pariatur.\n\nEt rem est optio aut officia. Voluptatem eaque veritatis provident. Alias voluptatem aliquam et enim impedit dolore. Minus et architecto unde asperiores voluptas tenetur.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(26, 7, 'Rerum excepturi accusantium molestiae fugiat amet quisquam.', 'Et natus rem incidunt vel dignissimos blanditiis. Molestiae et omnis facere neque dignissimos non. Eos vel recusandae quia unde. Aut quia consequatur aut voluptas dicta illum veniam voluptate.\n\nAut et velit nesciunt illum earum ipsum sunt. Dignissimos cupiditate fugit dolores ea. Numquam nostrum fuga voluptatem voluptatibus vel.\n\nDolorum quis optio error laboriosam numquam. Quod praesentium illum veritatis aut ipsam. Sed sed odit iure est ipsa. Laboriosam libero incidunt sed.\n\nDolor enim omnis consequatur et. Repellat suscipit eveniet autem consequatur aperiam animi sint. Deserunt impedit aut aut ipsa nesciunt.\n\nEaque omnis atque nulla mollitia nobis consequatur tempora. In exercitationem quisquam laudantium id totam sapiente eligendi. Iusto est porro ut asperiores beatae ea. Veniam rerum quia fuga aut maxime qui quo.\n\nSint quis aut eveniet debitis. Nemo in et veritatis deserunt saepe. Dolorem eligendi labore eos et voluptatem mollitia.\n\nBeatae vel qui aut placeat est at. Adipisci non qui cumque velit. Architecto et consectetur nemo velit. Ut enim impedit aut vel doloremque voluptatem vel.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(27, 7, 'In recusandae et aliquam quis aliquam dolorem.', 'Magni voluptatibus modi deleniti aut. Molestias iusto sed et et. Corporis velit error optio assumenda error. Rerum repellendus itaque nihil doloribus beatae magni nisi.\n\nIllum quisquam magnam et consequuntur. Voluptatem sint esse ut consequatur in animi ut. Sed qui delectus hic omnis sint architecto ut consequatur.\n\nSaepe corrupti et adipisci ut iusto numquam. Doloremque hic voluptatem maiores provident molestiae. Voluptas soluta praesentium culpa eaque dolorum deserunt. Et autem dolores magni culpa natus cumque.\n\nSuscipit cumque quo dolorum repudiandae cupiditate ut. Quia et et nihil ea voluptatem. Est dolores ab totam soluta libero quasi mollitia. Non hic expedita nemo temporibus qui. Illum omnis veritatis qui sunt quo sed debitis enim.\n\nDelectus rerum laboriosam laboriosam. Beatae facilis molestiae doloremque odit mollitia libero. Quia totam porro dolor non accusamus rem voluptas. Sit fugit totam ut velit molestias explicabo.\n\nVoluptas blanditiis excepturi vero dolorum. Voluptates et unde dolorum illum aut unde voluptas. Rerum laudantium tempora error. Voluptatem quia itaque autem sed voluptates esse nostrum.\n\nInventore id debitis occaecati aut molestiae ut. Est rerum suscipit vel et tenetur. Voluptatem delectus vitae quos dolore at repellendus.\n\nRepellendus velit quia aut est odit omnis vitae. Vel incidunt et magnam voluptatem officia. Sit qui nesciunt consequuntur hic. Explicabo suscipit voluptatem vel.\n\nSint maiores aspernatur et dolorem. Quasi ut magni excepturi corporis est. Omnis adipisci quibusdam esse aliquam ut. Ea sed blanditiis quam hic nihil itaque.\n\nOdio eligendi ex sit animi corrupti voluptas. Omnis consectetur quos voluptatibus delectus. Rerum totam vel in et facilis perspiciatis voluptatibus. Voluptatum illo ad et aut.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(28, 7, 'Deserunt accusantium aut doloribus qui distinctio.', 'Sapiente ratione debitis vel ut animi dolores maxime provident. Minima molestias occaecati expedita ut.\n\nDicta molestias molestiae consequatur quas aut. Excepturi hic vero consequatur et asperiores ut et. Rerum consequatur sed nostrum.\n\nEt debitis aspernatur non libero vel laborum. At dolore omnis asperiores voluptas dolorem labore voluptatem. Perferendis magnam quo eveniet praesentium architecto.\n\nRepudiandae inventore voluptas praesentium quod ab omnis modi. Et delectus qui commodi ducimus magni. Quo sequi nam eos est cum libero quidem est. Commodi occaecati qui et corrupti ut laudantium et et.\n\nAliquid rerum amet cum. Exercitationem atque adipisci qui fuga hic perspiciatis. Eaque est est sint sint doloremque. Similique officiis est eveniet qui ut ut.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(29, 8, 'Et molestiae quis non beatae rerum non.', 'Sequi minima voluptatem odio qui sint et. Rerum vitae aut animi illo et nihil nihil rem. Repellendus dolore sint sed impedit provident recusandae. Adipisci iure ipsam ipsa.\n\nAut reiciendis excepturi sint eveniet laborum iusto. In dolorem impedit minus cum molestias quia repellat. Provident ex ullam est debitis soluta quis molestiae. Nulla modi voluptatem et omnis et.\n\nEa et esse quidem minus reprehenderit dicta. Id incidunt et ut dignissimos neque consequatur corrupti ipsam. Cum vero totam debitis debitis exercitationem ipsam.\n\nConsequatur earum dolor sint odit. Et sit a quod. Consectetur nam distinctio iure libero nisi.\n\nMinima qui voluptas suscipit quas voluptas minima ut maxime. Exercitationem et temporibus quas harum. Deserunt eius quis nihil nobis ea.\n\nDeserunt perferendis voluptatem beatae quasi. Architecto iure et aut corporis. Occaecati laborum aut at quisquam quia. Ipsa in asperiores et et id iusto ea.\n\nNesciunt aut voluptatibus ducimus quidem. Ad ad quia numquam quo. Ullam quasi ducimus beatae a vero minima asperiores.\n\nRem ab quia quod sed velit quasi repudiandae beatae. Pariatur ducimus omnis quos inventore qui quibusdam et. Quis dolorem eveniet expedita qui ipsa. Aut aliquid impedit est quo quo.\n\nSunt a molestiae error molestiae vel error dignissimos. Officiis maxime sunt hic esse dolorem commodi corrupti. Harum iure ea recusandae et. Dolorem repudiandae omnis quia. Error ut unde deserunt vero.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(30, 8, 'Aliquid corporis cumque amet repellendus.', 'Ipsa aut provident blanditiis sequi. Est architecto aut maxime ut eos amet. Odio magni consequatur aperiam minima tempore consequuntur. Dignissimos consequatur reiciendis aut minima commodi.\n\nEt quidem alias similique. Praesentium nihil provident delectus sint. Animi porro autem ipsum hic. Nostrum consequuntur et nesciunt voluptas dolorem nisi porro magnam.\n\nOfficia sunt accusamus iusto dicta quas. Est sed ut eligendi culpa esse deleniti amet. Illum nesciunt illo ducimus qui velit.\n\nVeniam illum veniam nostrum incidunt molestiae rerum unde suscipit. Officia nemo voluptatem eaque eos aut magnam expedita sunt. Deserunt quidem eaque veniam atque aut. Sit voluptas et praesentium qui.\n\nPerspiciatis voluptatem velit omnis est sint et. Quia sit saepe asperiores et eveniet eum. Molestiae tenetur quidem dicta sint vitae suscipit placeat vitae. Sit vitae velit eligendi nemo voluptatem odio laborum.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(31, 8, 'Enim consequuntur ullam vitae sunt perferendis iste.', 'In veritatis ducimus repudiandae quo maiores sint quas. Aut nobis nihil fuga velit. Tempora reiciendis esse expedita porro dolore. Consectetur accusantium molestias et et.\n\nExpedita sed odio labore vitae sapiente enim voluptatibus. Consequuntur accusantium dolores tempore quod ullam ullam. Porro officiis ut beatae fugiat est omnis.\n\nNon vitae et quas accusantium fugiat consequatur commodi et. Repudiandae unde nihil sit et. Corporis tempora voluptatibus rem ut nesciunt incidunt excepturi aut.\n\nPraesentium et in ipsam sunt est. Mollitia laborum atque cum nostrum accusantium. Eos veniam animi ea. Ad ut reiciendis nisi ex fuga minima aliquam.\n\nModi accusantium quae voluptatem recusandae. Consectetur ullam et quia voluptatem molestias asperiores et voluptatem. Dolorem et alias aut enim ut enim quaerat.\n\nVoluptate nobis beatae magni voluptas veniam blanditiis voluptatem. Sunt nobis laborum ullam omnis perferendis. Nesciunt amet explicabo assumenda ab doloribus atque vel sapiente. Et optio eos fugiat vel mollitia iusto occaecati. Quia consequuntur sit eum.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(32, 8, 'Ipsa maxime sunt enim ipsum ducimus ipsum adipisci.', 'Et alias ut eum totam explicabo voluptatem ratione. Aut expedita odit fugiat quo vel. Officiis qui molestiae ut necessitatibus qui. Sed veritatis et sit saepe dignissimos.\n\nAliquid ut molestias exercitationem. Qui optio sequi non. Harum non qui quidem accusamus et. Velit illo aliquam quis dolorem.\n\nRerum sint et qui quo aspernatur vel velit. Assumenda quam recusandae at esse deleniti pariatur. Nihil dolor quo provident alias ea. Facere similique laboriosam dolores et.\n\nSapiente error doloribus veritatis at provident eligendi nemo. Dignissimos totam dolores ea eaque soluta. Rerum autem consequuntur in iusto sit assumenda iste. Voluptate non est enim necessitatibus consectetur numquam iusto.\n\nLibero quia dicta et et et. Aperiam eligendi velit eaque reprehenderit quis tempora. Enim laboriosam reiciendis veritatis atque consequatur id corrupti.\n\nAut magni minima non quae ut. Ratione est natus quis molestias possimus quia culpa. Accusamus nam fugiat itaque et nostrum. Dolor sit sit quam laudantium ab autem distinctio.\n\nId et esse optio repudiandae. Dolores inventore quo sed in consequatur eum. Sint et voluptatibus inventore asperiores sit.\n\nVeritatis commodi error est exercitationem molestias ipsum. Exercitationem et animi aut aliquid. Maxime voluptas est ad rerum soluta odit.\n\nPlaceat omnis mollitia voluptatem occaecati maxime repudiandae. Asperiores sequi enim aliquid. Nesciunt aperiam tenetur itaque illo numquam saepe accusamus eos.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(33, 9, 'Aspernatur aut facere velit dolorem tempora.', 'Nisi beatae numquam illum rerum fuga eum pariatur. Velit dicta quos laborum perspiciatis. Quia id eaque deleniti. Eligendi ea illum nostrum alias.\n\nQuod fugit id ipsum aut ad illo nam. Cumque similique et necessitatibus eligendi harum eum mollitia. Et dolorem enim aut pariatur. Ad ab modi quidem aut amet.\n\nQuos voluptas quasi aliquid impedit velit sed consequatur qui. Quo voluptas a quibusdam saepe tenetur. Corporis ducimus illo et eum.\n\nQuo facilis ipsam quasi. Possimus adipisci minus accusantium iure rem soluta quos. Neque ipsam qui aut dolore repellat iste. Et rerum et voluptatem iste laboriosam repudiandae ipsum.\n\nAt facilis quod veniam qui. Ut dolorum consequatur porro corrupti. Esse labore placeat accusantium qui. Nihil facere doloremque consequatur sunt.\n\nVoluptatem officiis odio est assumenda autem. Quis rerum magni facilis. Sit facere quia consequatur qui consequatur sequi ex maiores.\n\nAtque aut aut corrupti animi iusto sunt. Quas tempora sunt qui molestiae deserunt.\n\nEst dolorum eos aliquam aut. At fugit possimus modi est officiis. Ipsum corrupti qui eius nihil. Quia commodi ut quia et nostrum.\n\nIure consequatur optio architecto error. Omnis enim architecto autem et laudantium. Et dolorem a quia.\n\nHarum tempore sint eius. Et adipisci accusantium aut ipsa. Sed quia voluptas voluptatem aliquid. Consequatur consequatur nostrum quia voluptate est velit. Autem esse cumque molestiae.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(34, 9, 'Qui molestiae non adipisci sapiente suscipit quia facilis.', 'Nihil culpa quam asperiores est. Cumque debitis minima consequatur pariatur enim commodi. Dolor dolorem facere reiciendis nostrum praesentium. Ipsum quidem vel consequatur voluptate tempore.\n\nDeleniti repellendus commodi nesciunt laboriosam hic accusantium quibusdam. Aliquam vel nam id necessitatibus cupiditate possimus repudiandae. Eius aut ut dolorem reprehenderit.\n\nEt voluptatibus qui molestiae natus. Quasi ex consequuntur aperiam dolores quia consectetur facere. Est et minima fugit optio aut recusandae. Labore occaecati aut eligendi numquam ut vero ipsa voluptate.\n\nNon eveniet qui harum dolor accusamus enim dolorem dicta. Repellat eligendi eligendi a omnis qui. Facilis itaque dolorem aut doloremque. Velit accusamus eos labore quidem.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(35, 9, 'Consequatur quisquam totam aut aspernatur ipsum.', 'Optio earum voluptas qui aut beatae mollitia. Velit ipsam vitae numquam dolores ipsam illum ipsa. Totam quidem dolores deleniti in aliquid.\n\nEt aut voluptates minus reiciendis in tempora nihil. Magnam rerum occaecati et aspernatur. Aut aliquid adipisci eos mollitia a.\n\nEius quam dolorum cumque nihil ut id. Sapiente voluptatem in quia. Labore et aut fugit excepturi.\n\nLaborum dolor dolorem eos in et fugiat id. Quae ut blanditiis dolores dolorem adipisci sapiente. Magnam id et nobis. Quidem vel autem sint et perferendis.\n\nArchitecto recusandae non accusantium qui. Aut consectetur ea corrupti ipsam ea. Quasi vero dolorem ut accusamus delectus voluptas voluptates esse. Animi harum quo blanditiis est. Officiis molestiae soluta velit ab.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(36, 9, 'Eveniet soluta ratione voluptatem ut aut.', 'Aut harum eligendi perspiciatis debitis. Dicta magni iure quam nihil. Temporibus dignissimos fugit facilis et excepturi dolore ea eius.\n\nFugiat dolorem consectetur et quisquam. Laborum omnis nobis et asperiores cupiditate molestiae maiores. Ullam aliquam rerum non ut eaque eaque. Iusto enim et mollitia quidem ullam saepe ut qui.\n\nMinima ex fuga ut accusantium et. Quidem voluptas officiis quasi perspiciatis quis et modi. Nulla est molestias aut odio quisquam sed. Aut vel quaerat architecto id.\n\nQui amet sequi impedit est quos. Quaerat eum eaque dolores.\n\nAliquam repudiandae et excepturi iusto cupiditate. Possimus tempore distinctio fuga reiciendis necessitatibus commodi tempore dolor. Nihil minus molestias facilis rerum quia error.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(37, 10, 'Laudantium sint libero perferendis iure eligendi velit sit.', 'In iure dolorem aut perspiciatis fugit omnis. Explicabo possimus eos tempora natus ea qui et. At numquam corporis sed doloribus.\n\nRatione accusantium asperiores et ut illo nihil velit. Debitis sit eum accusamus tempora. Praesentium modi est enim nostrum incidunt.\n\nEst rerum dolorem in. Enim architecto possimus quo natus dolores sunt. Iusto rem id voluptatem tempora iure quisquam.\n\nEum suscipit corrupti aut eum et nulla quidem. Id eveniet possimus numquam atque sint. Quam ex et vel non amet facilis. Et veniam hic et facere.\n\nAliquam ut sunt consequatur aspernatur sunt numquam aut non. Fuga rerum tempora voluptas nemo temporibus quisquam incidunt. Similique eum cumque blanditiis. Sunt repellat voluptatem occaecati et illo.\n\nAdipisci cum omnis reiciendis aperiam cupiditate aliquam. Autem adipisci architecto aut voluptatibus explicabo et eos. Nam eius mollitia eum deleniti.\n\nIn a possimus natus ut. Et adipisci nam soluta et in qui et. Illum in dolorum nisi sit aspernatur.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(38, 10, 'Ut velit debitis labore autem quisquam.', 'Consequatur nihil deserunt maiores soluta cupiditate et. Ipsum eos amet magni. Voluptatem aut nihil odio et magnam eos quia.\n\nConsequuntur optio perferendis consectetur voluptas atque officiis numquam. Aut veniam eos nemo vel vel accusamus. Hic in nihil id aut corporis.\n\nNam veniam natus ipsa exercitationem magnam animi odit pariatur. Vero ut quia molestiae labore ut dicta aliquid quia. Occaecati eaque voluptates quia sed. Soluta vel voluptatem recusandae beatae et qui nostrum id.\n\nMollitia omnis ab voluptatem eius. Illum totam eos unde debitis quia quia. Rerum laborum accusamus cupiditate dolorem. Nihil voluptas totam atque cumque ab id.\n\nAut assumenda eveniet provident eius et minima neque nulla. Quas aut sit eligendi fugit et. Nihil voluptatem facere exercitationem eligendi numquam ut. Eos aut iste aut vel.\n\nAssumenda veniam ea dignissimos saepe. Autem et cum minus inventore. Quaerat fugiat cumque architecto excepturi tempora ea itaque similique.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(39, 10, 'In recusandae harum ut assumenda magnam quia.', 'Neque et et deserunt temporibus eos aperiam minus. Sed aperiam officiis aut qui illo voluptates. Sit rem placeat ea.\n\nIpsum fugit quasi minima maxime. Pariatur est voluptatibus dolore molestias nesciunt non autem. Ducimus molestiae ratione deserunt dolor consequatur. Id sed error quis atque dolor doloremque commodi.\n\nNecessitatibus sint nihil ipsa voluptates qui ut. Quis autem et excepturi repudiandae. Ducimus ducimus laudantium ipsam unde impedit.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(40, 10, 'Quis ut voluptate perspiciatis qui cum.', 'Doloremque alias ea doloremque molestiae. Magni eligendi mollitia dolore natus possimus aliquid id. Sed optio velit ut sed delectus qui nobis. Qui provident omnis voluptas vel eligendi ipsum neque quia.\n\nQuam error fuga sunt eum suscipit et aut. Ut necessitatibus modi facere nemo dolorem. Autem delectus et alias est perspiciatis non. Laborum ab saepe consequatur quos quo incidunt quas sit.\n\nVero aut nisi itaque quos. Tempore nobis rem rerum. Quibusdam est animi ut temporibus porro.\n\nNisi voluptatem repellendus et et. Ex mollitia iste labore sit. Molestiae autem qui ducimus voluptatem saepe.\n\nEt tempore velit vitae. Enim excepturi doloremque maiores rem ut sunt itaque. Iste in ducimus omnis voluptas quos officia.\n\nSapiente veritatis fugit ipsa pariatur aut. Sed ut dolorem ut doloribus. Assumenda eveniet consequatur amet repellendus aut. Sit placeat ipsa molestias aut aperiam id maiores error.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(41, 11, 'Porro omnis quaerat accusamus.', 'Quod unde ab mollitia inventore blanditiis exercitationem. Fugit et maiores repellendus atque et ut quisquam. Et delectus aut voluptatibus necessitatibus consequatur error. Voluptates fugiat qui consequatur impedit sed aut deserunt.\n\nConsequatur animi et at ut ipsam. Facere neque ad cumque. Ipsa aspernatur aut officiis eum expedita. Ullam et aliquid quidem nemo.\n\nUt eligendi aliquam dolores eum praesentium facilis. Nobis aut quaerat nihil facilis dolores. Ut esse eos sunt culpa eum dolorem omnis. Voluptas debitis odio labore officia deserunt qui.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(42, 11, 'Qui deserunt animi eos necessitatibus voluptatibus eveniet consequatur nobis.', 'Minima modi voluptas eos voluptatem officia explicabo. Rem error quo quaerat aut atque magnam. Ut praesentium et in voluptate amet deserunt voluptatem.\n\nOmnis quo doloremque quod praesentium vero. Et quo voluptatum quasi voluptatem. Et voluptas sed reprehenderit libero qui ab. Modi sint quia sit vitae animi est nihil.\n\nDucimus asperiores ea omnis esse. Officiis aut eligendi amet aspernatur. Quis omnis ullam earum consequatur cupiditate consequuntur. Neque quo eligendi a minus qui.\n\nAtque minima delectus eum error est. Recusandae dolorem aut nostrum et. Ut corporis odit quisquam doloribus voluptatem. Voluptatem fugiat dignissimos qui iure. Sit dolor consectetur quidem doloremque repudiandae ea fuga.\n\nConsequatur quisquam aut veritatis qui eum omnis exercitationem. Dolorem cumque et omnis ut. Ullam saepe soluta blanditiis voluptatum.\n\nReiciendis ut ut est dolorem sint sit aliquid. Quae fuga ducimus nisi odio quas dolores. Rerum vel optio voluptate consequatur quod rerum dolor adipisci. Perferendis vitae voluptatibus ullam.\n\nOccaecati velit labore debitis nemo nobis. Id quaerat blanditiis voluptatem et odio. Ipsam ut sunt autem maxime. Eos voluptatem corporis voluptate et ipsa suscipit itaque.\n\nNatus voluptates in vero aperiam qui vel. Blanditiis sit vero hic qui non. Esse aliquid aut amet tenetur. Architecto et autem quia qui.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(43, 11, 'Dolorem dolores similique repudiandae magni.', 'Et quia sit qui exercitationem aperiam in. Eum voluptas amet deserunt veritatis et dolorem iste. Et iure est est temporibus nesciunt ab reiciendis. Accusamus corporis et quas iste dolor sed earum.\n\nVero laudantium ipsa repellendus quod aut neque est. Facilis sint suscipit minus.\n\nRerum delectus quibusdam et ipsam ut. Molestiae quia qui nulla cupiditate. Necessitatibus consectetur aut aut temporibus nulla.\n\nBlanditiis sed rerum rem eaque. Delectus quaerat sit non doloremque ut eveniet. Sequi quia atque quibusdam quas quos. Corrupti rerum et qui consequatur molestiae minima.\n\nAsperiores exercitationem error totam. Distinctio aperiam ullam quaerat reiciendis et iste ipsam. Facere quis suscipit aut quis. Architecto enim sed laboriosam. Aut nemo aut itaque ut.\n\nEligendi doloremque expedita quia ea porro nulla alias. Ipsa et temporibus voluptatibus odio sunt qui temporibus. Sapiente sed omnis a. Natus ad quia facere numquam laudantium similique doloremque illo.\n\nQuos voluptatem voluptates quo. Totam aut earum qui et sed. Temporibus deserunt nihil impedit nesciunt quaerat. Nisi possimus alias quia.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(44, 11, 'Repudiandae assumenda ut nesciunt neque quo.', 'At nesciunt occaecati tenetur optio voluptatem dolor qui ab. Recusandae cumque culpa et officia. Voluptas vel aut qui.\n\nSoluta veritatis sint consequatur dicta explicabo. Similique at modi debitis fuga quia vitae. Sed accusamus vel veniam quis sint. Quibusdam nihil ut iusto.\n\nIllum magnam reprehenderit aut dolores. Quia eius vel suscipit non dolores voluptas omnis voluptate. Omnis quia aut eum velit laboriosam fugiat. Distinctio dicta tempora vero harum unde.\n\nMolestiae eum laboriosam eaque accusantium sint cumque quasi. Voluptate nesciunt illum velit. Quos perspiciatis voluptas sequi eaque sit et iure. Veritatis aut culpa distinctio eos sapiente incidunt.\n\nEt occaecati voluptatem repellat voluptas dolor. Rerum repellendus quos dolore ut ex. Accusamus commodi veritatis architecto sunt. Quas dolores quo enim commodi ab.\n\nTemporibus qui possimus aut. Sapiente illo ut dolores vel. Magni qui aut et repudiandae unde. Voluptate amet labore voluptatem odio.\n\nFacilis iure quo quis aliquam iure placeat placeat. Nemo doloribus et et eum quas veritatis dolores. Sint ut ipsa corporis omnis ut voluptatem reiciendis.\n\nId quis aut voluptatem dolorem et. Laboriosam id in voluptatibus harum maiores optio saepe. Tenetur autem a beatae assumenda sit eaque. Ducimus minus quaerat cum cum et.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(45, 12, 'Quia qui expedita similique.', 'Temporibus omnis occaecati eligendi. Voluptas eos aut ut corrupti repellendus ipsa sed. Sint nisi enim quo ut aut neque corporis eum.\n\nVoluptas ut id sed inventore quae perferendis veritatis. Natus dolor consequatur aut deserunt omnis. Iusto fugiat neque pariatur et.\n\nAut quis magnam est culpa ut sunt rerum itaque. Sapiente repellendus sit culpa nisi suscipit debitis earum tempore. Earum tempore qui ut aliquam. Aliquid consequuntur molestiae quia fugit.\n\nEx qui incidunt sit laboriosam cum. Id sunt quidem nemo enim. Vero qui aliquam tempore ut. Voluptas maiores iusto quis voluptates quia. Id quasi qui laborum cumque itaque.\n\nImpedit commodi ducimus expedita ab. Ut voluptatibus impedit quod maxime aut sunt ea qui. Officiis porro eum repudiandae ullam ut animi placeat. Saepe porro soluta molestias adipisci nihil aut laboriosam.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25');
INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `published`, `created_at`, `updated_at`) VALUES
(46, 12, 'Enim optio sit non optio fuga qui possimus.', 'Et nulla est placeat voluptas nostrum. Voluptas voluptatibus rerum eum. Omnis laboriosam ut id rem sint in voluptas.\n\nSint vel adipisci sunt nulla dolor tempore. Deserunt consectetur nihil rem repellendus voluptatem est. Quisquam et et qui numquam velit. Consequuntur quis tempora magnam tempore qui dolores.\n\nTotam rerum ut dolor et culpa asperiores vel. Blanditiis sit nostrum consectetur sint eaque et ut. Placeat et quo aut eius unde quae. At reprehenderit saepe ratione.\n\nOfficia asperiores nemo excepturi fugiat aut. Consectetur aut aperiam veritatis dolorem sunt sint. Non debitis nihil recusandae repellendus minima. Omnis ut corrupti eum architecto ipsum aut dolor.\n\nQuasi eos ullam nulla. Autem iure esse et tenetur earum accusamus nam facilis. Reiciendis vel a iste expedita impedit. Dignissimos molestias odit in atque consequatur iure. Totam excepturi esse mollitia sit.\n\nSequi nulla expedita quas. Mollitia omnis reiciendis minima nihil. Culpa cupiditate quibusdam consectetur ut maxime sint. Consequatur quis sed aut.\n\nAccusantium id sit repudiandae soluta. Dolorem quos rem dicta magnam. Sunt voluptatum maiores sed sapiente ipsam harum. Impedit omnis sit et assumenda. Voluptatum ad nostrum consequatur iusto rem tempora id.\n\nIusto ut sint eius ea neque nihil. Dolores et quod recusandae odit. Autem et corrupti dolores rerum dolorum est magni debitis. Nihil atque deserunt ut aut. Fuga animi sit eius repellat atque.\n\nVitae accusantium molestiae aut voluptas. Dolorum id cupiditate maiores dolorum nobis voluptatem sed quae. Ratione possimus recusandae asperiores ex repellendus necessitatibus a.\n\nDolorem veritatis et amet consequuntur sint natus vel. Aut aut quia dignissimos velit officia officia quam. Ut esse enim dolor vel tenetur ut quae. Ex deleniti reprehenderit molestias id nostrum laborum.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(47, 12, 'Perferendis rerum enim ratione illum.', 'Alias eum nam pariatur nemo ut quam qui laboriosam. Molestiae reiciendis mollitia dolores eveniet dolorum enim. Quod rem nemo sit rerum in ut natus.\n\nDolor ratione harum voluptatem animi. Reprehenderit ratione voluptatibus exercitationem eum voluptas et libero. Similique inventore sit quibusdam ratione sint. Ea totam libero voluptas facilis tenetur non quia.\n\nEnim harum ea molestiae debitis ipsum. Et dolorem necessitatibus voluptas nisi laboriosam. Quo fugit aut aliquid assumenda assumenda esse nemo.\n\nEt ut saepe at. Maiores amet eum quas non ad quam explicabo odit. Voluptate quas ea aut a.\n\nAut rerum quia nulla natus magnam. Provident sapiente velit explicabo. Maiores reprehenderit et soluta. Nam aut ab dignissimos molestiae sit rerum.\n\nRecusandae necessitatibus eum nihil. Quisquam provident molestiae quo provident cumque. In corrupti possimus mollitia quis fugiat aut est odio. Molestiae sit culpa sit consectetur eos aut hic quod.\n\nDoloribus vel odit sapiente dolorum vero recusandae. Nisi quia sunt et laborum modi provident. Quibusdam labore quasi accusantium consequatur. Maxime dignissimos ipsum eum aut nam.\n\nRatione ut aut a ut soluta voluptas sint illo. Nobis dolorem rerum sunt et sed. Nesciunt harum sapiente minus ut sint a.\n\nId vel velit aspernatur autem cumque sed harum. Dolorum amet qui laboriosam ut dolor quisquam recusandae quo. Odio rerum eum et fuga consectetur in quis. Vel necessitatibus dolore magnam amet.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(48, 12, 'Quam eos rerum facilis eos et ipsam.', 'Modi nesciunt maxime perferendis et a. Ea sit non eius voluptatibus suscipit iure vero labore. Voluptatem praesentium totam minima ut autem excepturi.\n\nEt quia soluta aliquam. Possimus quia autem nesciunt id ipsam ut. Vero aut reiciendis dignissimos ut. Eum occaecati ea cum sed asperiores quia totam.\n\nQuod praesentium esse est architecto voluptas debitis non eos. Magni et fugiat vero. Sed veritatis corporis necessitatibus nisi. Eum accusamus dolore ea eum.\n\nOmnis delectus perferendis fugit incidunt libero ratione. Sit quas qui beatae placeat. Molestiae quia dolor ad voluptates. Temporibus nostrum praesentium porro consequatur voluptatum nesciunt.\n\nLaboriosam neque vel porro amet sit. Neque assumenda voluptatem dolor sequi omnis. Molestiae est ut id officia harum.\n\nPerferendis perferendis quam similique aut perferendis voluptatem cupiditate. Omnis consequatur magni sint nulla et reprehenderit molestiae. Voluptas in doloremque nihil occaecati ut rerum repudiandae similique. Ipsa aut quia rerum eos enim consequatur.\n\nEt error ut sit qui ipsum consequuntur. Sit voluptas ut cum earum. Accusamus quas officiis non dolorem atque ut. Voluptatem id necessitatibus voluptas delectus repellat alias et repellendus.\n\nVero vel voluptas illo vel. Explicabo dolorum consequatur placeat ipsam. Repellendus impedit incidunt quia ab voluptas aut.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(49, 13, 'Distinctio natus in et id et.', 'Aspernatur a aut eius inventore sit adipisci. Tempore porro exercitationem temporibus earum dolor illo placeat. Qui qui blanditiis nostrum non neque voluptatum qui. Et omnis ipsum nam.\n\nVoluptas sint eligendi quis ut repellat. Quo eum non nostrum molestiae dolorem praesentium. Dolore et consequatur labore.\n\nNihil qui delectus est nihil deleniti quos enim. Qui provident ipsam corporis similique. Cum sed et deleniti recusandae.\n\nEt veritatis dolores molestias rerum velit et. Nihil velit ab eos sint. Impedit error dolorem quod. Tempore ab minus corrupti fuga. Reiciendis qui ut quaerat est voluptas et illum.\n\nAsperiores in id est facere aut aspernatur. Labore cumque laudantium nihil. Est qui quibusdam vel nulla sit qui quam. Rem reiciendis omnis quidem quae doloribus et.\n\nUt quas qui et amet. Sed dignissimos tempora qui ex rem quaerat. Voluptas laboriosam qui fuga modi quos rerum. Magni delectus quaerat dolore voluptatum ut numquam pariatur.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(50, 13, 'Et eaque animi qui tenetur tempore.', 'Molestias ad facere accusantium eos ab quo. Quibusdam tempora consequuntur animi aliquid iure nemo commodi. Laborum doloremque et laudantium qui sed.\n\nEum perspiciatis dolor ad et occaecati atque. Qui aut perspiciatis non voluptatem fugiat soluta. Voluptas sit tempore doloremque fugiat.\n\nIllum commodi iste provident iusto architecto et. Inventore nihil ipsa qui. Quam quisquam harum vitae tenetur et ullam. Quia praesentium vero omnis atque nemo dolores accusantium.\n\nLaborum hic rerum doloremque optio molestias exercitationem aliquam. Fugit autem rerum accusamus iste exercitationem. Repellat inventore accusamus tempore nesciunt eius cum aut id.\n\nNemo iste nulla et dolores facilis odit soluta quia. Impedit omnis eius odio inventore illo est ea. Enim molestiae architecto accusamus et et deserunt natus.\n\nNon neque voluptatem ut et et explicabo. Est nihil natus voluptatum consequatur laudantium magnam mollitia. Voluptates natus voluptatem sequi vel et aut. Placeat labore est ut eius sequi consequatur.\n\nIncidunt officiis odit optio voluptas aut dolorem. A temporibus veritatis reprehenderit. Sapiente eaque incidunt id qui. Quisquam est velit quia sed nostrum.\n\nDoloribus nesciunt voluptatem omnis rem sed ratione ut qui. Quas voluptatem necessitatibus excepturi consequatur nostrum nihil. Totam et et delectus modi odit vel quasi.\n\nOmnis ad praesentium sint ratione ut ut. Alias ipsam sit commodi. Corporis qui odit vel eius qui qui.\n\nQuia sed architecto consequuntur sit quasi voluptatibus. Necessitatibus est magni et dolor sit quas. Voluptas quas quae ut ipsum nihil ea.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(51, 13, 'Doloribus sunt praesentium deleniti delectus laboriosam eligendi sapiente.', 'Similique unde voluptas perferendis. Et repellat aliquid amet minus accusamus eos reiciendis dicta. Consequatur omnis laborum consequatur debitis officia. Soluta aut suscipit voluptatem omnis asperiores.\n\nNesciunt vitae odit omnis error. Officiis quisquam voluptas quibusdam. Quod excepturi non quia hic amet omnis et.\n\nAccusamus repellendus qui neque distinctio cumque illum. Quia rem temporibus ut ad similique expedita sed. Odio placeat fugiat aut quos unde illo qui. Hic commodi qui nisi non natus.\n\nQuibusdam qui quis molestiae omnis ut. Quisquam odio consequatur itaque quaerat architecto molestias deserunt. Sit rerum soluta sed fuga sit.\n\nReiciendis mollitia qui praesentium reprehenderit nesciunt est tempore. Aut nemo quia ut quasi. Voluptatem unde atque quod sint et mollitia.\n\nUt qui beatae harum est. Est non omnis sequi rem consequatur.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(52, 13, 'Pariatur autem voluptatibus quae autem dolorem pariatur consequatur.', 'Voluptatem doloribus eveniet sapiente ut totam voluptatem dignissimos iusto. Cumque delectus eaque aliquam facere nihil iste accusantium. Illo voluptatem temporibus et quae qui provident voluptas. Libero neque in et consectetur.\n\nEveniet illum enim deleniti beatae deserunt odio beatae. Sint quisquam distinctio et labore. Harum voluptatem dolor voluptate veritatis. Autem iure delectus ea facilis eos sapiente.\n\nSuscipit ut excepturi et. Est quaerat in aperiam. Enim voluptatem et adipisci eum ipsum reiciendis enim.\n\nExcepturi dolorum quia sint nesciunt sunt. Suscipit necessitatibus maxime reiciendis qui veritatis. Commodi ab est ut eius ducimus cumque. Iusto doloremque velit sunt et.\n\nNam earum quis minima atque. Quas cumque id nulla eius. Fugit cum rem voluptas corrupti est neque. Voluptates doloremque dolore aut ut quod.\n\nCupiditate veniam nesciunt veniam quo voluptas magni. Quasi repellat culpa dolorem. Aspernatur eligendi nostrum excepturi omnis.\n\nEligendi accusantium adipisci enim repudiandae. Et illum ipsa sapiente non. Nemo ratione corporis accusantium qui unde.\n\nRem quia velit harum tenetur. Quis consequatur omnis in voluptas placeat cumque voluptatibus. Ullam est maiores reiciendis quo est atque dolor. Hic ducimus quidem aut. Quae aspernatur velit vitae cum voluptatem illo.\n\nMolestiae sit culpa atque minus est libero. Consequatur dolorem laborum placeat ut distinctio. Necessitatibus magnam quas perspiciatis vel tempore quibusdam. Enim ut similique aut sunt.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(53, 14, 'Reiciendis tempora voluptatem eum eos.', 'Quos rem magnam quis id sunt quia voluptatibus eos. Magni ad vel delectus ut incidunt autem fuga nihil. Maxime in impedit laboriosam reiciendis. Sint deleniti dicta et iure quis nihil qui sit.\n\nSaepe atque maiores molestiae numquam delectus. Placeat at voluptatem minima sunt dicta. Vitae consequatur et magnam repellendus error. Asperiores vitae et rerum quos.\n\nIure aut minima mollitia sunt quia sunt. Et culpa iure voluptatem sint. Veniam neque aut sit. Omnis itaque qui accusamus et beatae.\n\nVelit deleniti reiciendis eos necessitatibus rerum nihil. Nisi nihil quo placeat veritatis. Laudantium id nihil esse. Sint porro officiis commodi autem.\n\nUt nobis et nihil. Aut et consequatur expedita perferendis reprehenderit provident provident. Unde quam laudantium qui mollitia possimus aut unde. At eveniet et labore. Sint incidunt animi quidem consequatur dicta autem minus.\n\nIn at autem dolor consectetur minus quas. Voluptate iusto eum et tenetur repudiandae architecto quisquam. Reprehenderit ratione eos doloremque et ex consectetur tenetur. Aut ullam delectus libero voluptas quas sint autem in.\n\nVoluptatibus accusantium aut rerum dolorem id atque suscipit. Ab a sint error veritatis quod. Quia quo nisi eos expedita deleniti et. Harum beatae quia impedit aspernatur.\n\nVoluptate voluptatem soluta saepe ad ex. Est consequuntur delectus eos qui repellendus explicabo fugiat. Eveniet in est omnis quis iste.\n\nRatione et earum dolores numquam odio. Et quis asperiores nobis reprehenderit voluptatum rerum mollitia. Quibusdam culpa voluptatibus incidunt voluptas.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(54, 14, 'Voluptates doloremque sit veniam provident unde voluptas.', 'Maiores omnis nam repellat non nam. Est dicta esse voluptatem facilis beatae ad rerum. Ut qui qui eaque rerum. Commodi dolor accusantium nostrum soluta perferendis voluptatem et hic.\n\nOfficia accusantium corporis praesentium deleniti. Aliquid error doloribus id ut illum rerum eligendi. Aut consequatur praesentium nostrum dolore voluptatem qui. Dicta sed eum ea.\n\nIllo asperiores et in ipsa nisi quisquam quo. Vitae omnis ea dolor dolor est quis. Libero aut asperiores consectetur at ea cumque iure modi.\n\nEsse aut sit saepe nemo. Quia nemo aperiam consequuntur aperiam et ut rerum. Dicta occaecati adipisci culpa sunt. Ut cupiditate sit ullam quia quia exercitationem ipsum dolores. Tempora molestias impedit et rerum ex.\n\nIllum optio quia qui. In ipsam ratione iure nihil. At ea dolorem ut distinctio est possimus id ut.\n\nSequi voluptas nesciunt eligendi suscipit. Et eos rem quae optio. Veniam earum ut soluta vel numquam vitae reprehenderit voluptas.\n\nEum molestias provident corporis ut. Expedita voluptatem nesciunt explicabo laboriosam et. Quod alias quidem eos veritatis nisi. Molestiae numquam dolorem ut deleniti.\n\nFacere impedit voluptatem molestias labore at numquam. Quo voluptate voluptas consectetur consequatur est earum. Voluptas impedit non autem libero placeat provident impedit. Voluptates totam nihil expedita rerum vel quo et. Deserunt nesciunt voluptatem non eum unde molestiae quae.\n\nVoluptatem laudantium velit explicabo animi dolor ipsam consequatur. Rem incidunt in quo quaerat molestias ea id.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(55, 14, 'Consequatur qui est vero dicta reprehenderit dolorum vel beatae.', 'Aspernatur aut autem rerum cum porro odio qui. Corrupti ipsum repellat nam asperiores consectetur id sit ex. Quia nobis ratione magnam nemo aspernatur et facere accusantium.\n\nOfficiis quia et voluptatem ipsam porro. Excepturi quidem atque qui sapiente maxime repellat. Est nemo repudiandae quo magnam ea. Rem voluptatibus aut beatae dolor unde vitae eveniet rerum.\n\nAccusamus quos enim et amet eveniet voluptate laborum molestias. Neque qui error deleniti soluta aliquam. Molestiae consequatur nihil architecto consequuntur ratione voluptate maiores.\n\nEt hic esse aut. Odit delectus et optio dolorem omnis vel vitae. A et quae quos asperiores.\n\nQuisquam dolor molestiae est ut assumenda vel et. In totam labore mollitia quia. Tempora soluta vitae blanditiis et voluptatibus cumque ea. A qui explicabo quia aliquam. Vero accusantium quia aperiam molestiae tempora eum exercitationem.\n\nExplicabo repellat omnis debitis suscipit modi error fuga. Laudantium sed minus repudiandae rem labore possimus. Quibusdam rem consequatur nemo tenetur unde voluptatem.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(56, 14, 'Soluta possimus sit ullam beatae.', 'Illo quisquam qui fugit quia nihil non voluptatum. Reiciendis expedita ex tempore non aut ut nam. Minus et asperiores magnam dolore quaerat sequi. Est ea sit expedita quia nulla nihil.\n\nNeque nobis repellendus alias corporis sed in. Tempora rerum dicta rem autem ipsum eum odio a. Ut vero reprehenderit libero inventore est. Quo blanditiis dolor recusandae animi culpa sunt voluptatum.\n\nConsequatur aperiam quos debitis ducimus. Dicta sint mollitia aut cum. Asperiores sint laboriosam et quia. Saepe praesentium eum consequatur asperiores. In alias iure enim illum dolorum similique inventore.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(57, 15, 'Quia voluptatem consectetur et.', 'In cum saepe molestiae ex nihil. Eligendi tempora est ut quasi. Est natus ipsa harum debitis dicta. Facere possimus necessitatibus porro consectetur et et voluptatem.\n\nOfficia assumenda facilis labore tenetur. Sint est recusandae distinctio laudantium. Dolor expedita et dolorem quo natus porro non. Iste maiores recusandae quaerat non quia non.\n\nDucimus doloribus molestiae ullam blanditiis ipsam laudantium. Illo inventore alias soluta qui sapiente qui aperiam. Hic dolore qui eius vero.\n\nIste esse qui accusamus sunt minus vitae. Dolor et sed enim et et dolorum neque. Voluptatem quas doloribus omnis dicta quo dolores in voluptas.\n\nPossimus in quis illum quis. Sequi ut voluptatem cum quo delectus facilis. Consectetur vero voluptate quo fugiat sequi. Aut numquam laudantium maxime eius eos.\n\nFuga totam et aspernatur modi harum est iusto. Molestiae qui aut eum aut accusantium voluptatem. Eaque voluptates omnis dolorem excepturi eaque. Ipsa alias debitis est dolorum non.\n\nAdipisci nisi placeat vel voluptatem eos. Enim quo consequatur omnis voluptatibus adipisci corporis. Vitae recusandae assumenda vel expedita.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(58, 15, 'Delectus veritatis quae cupiditate autem.', 'Aliquam doloribus est mollitia ea atque cum. Odio occaecati repudiandae rem error et. Asperiores ut velit non ea omnis sed et quam.\n\nNemo et dolorem et dolorem consequatur. Quibusdam qui aut ab saepe earum.\n\nVoluptatibus molestias ipsa dolor similique doloremque illum dolorem. Voluptas aut hic enim possimus enim dolores. Iste rerum sunt voluptatem. Odit similique magni labore harum consequatur perferendis tempore.\n\nVeniam occaecati voluptatibus nulla neque. Molestias voluptatum facilis nihil a. Placeat eos qui laudantium fuga velit sed dignissimos hic.\n\nMinus hic et perferendis inventore sequi. Laudantium quae velit vel. Repellendus numquam fugiat et temporibus quibusdam et voluptatum.\n\nAut eaque optio ratione et placeat. Expedita libero voluptatem neque ipsa placeat voluptatibus. Qui culpa quas aut nostrum harum. Dicta numquam enim voluptatum nisi molestiae consequuntur sit.\n\nNumquam omnis autem ipsa quaerat repellat ut. Ea dolorum at voluptatibus quas dolores deleniti qui. Quo dolores praesentium dolorem. Voluptates nobis eius illum perferendis hic magnam.\n\nIpsum laborum magnam aliquid ducimus occaecati. Nesciunt dolor et tempore aut. Est est magni dignissimos nobis.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(59, 15, 'Natus quod qui nemo sed reprehenderit blanditiis.', 'Reprehenderit ad et ea voluptatibus fugiat molestias et. Animi autem maiores itaque accusamus exercitationem. Cupiditate eum qui tempore sit. Aut voluptas voluptates commodi eligendi fugiat.\n\nCommodi nostrum fuga ab et praesentium quis mollitia voluptatem. Aperiam architecto eveniet qui voluptatem quia voluptatem. Asperiores eaque aut molestiae consequatur id aut voluptas.\n\nVitae sint eum enim fugiat. Quis delectus iure molestias quis. Nam nihil est facilis eum temporibus veniam natus ut. Perferendis enim asperiores quis cupiditate distinctio est.\n\nEos tempore porro nobis odit quibusdam commodi. Aliquam vitae tenetur perferendis voluptates deserunt et minus. Enim sapiente vitae laudantium molestiae ut numquam.\n\nAut quia harum hic error. Aut corporis occaecati ea non. Ut quasi magni vel aut illum tenetur dolor ut.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(60, 15, 'Ut dolorem aperiam laboriosam repellat quaerat quia.', 'Mollitia totam illum autem eligendi. Qui et voluptas quas ab. Qui nam quos atque sed. Earum pariatur voluptate nisi quisquam doloremque dicta omnis.\n\nSaepe sunt voluptatibus est ipsa est. Dolorem fugit in molestiae eligendi. Aut alias repellat ipsum ut eum. Sequi aut delectus amet deserunt et earum.\n\nEius sint nesciunt occaecati neque. Modi et adipisci quia quo a. Veritatis sit labore error maiores.\n\nOdio ut quia quia. Dolorem perferendis adipisci eum sed ullam. Magni non omnis quia ea voluptas. Molestiae consequuntur et repellat dolore.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(61, 16, 'Dolore omnis nesciunt iure asperiores nemo ea earum.', 'Perferendis et excepturi consequatur illum nihil deserunt aut. Magnam numquam eos aut voluptas amet laboriosam veritatis.\n\nDeleniti reiciendis rerum impedit. Non explicabo quos esse tenetur sunt corrupti. Qui deleniti necessitatibus placeat quia numquam itaque voluptatem. Distinctio quis dolores qui omnis tenetur quas.\n\nAtque dolorem est dolore ratione in ut illum. Dolore enim et qui quod. Illo aut possimus sit omnis. Et provident est assumenda voluptates quia voluptas similique.\n\nOdit voluptas sunt praesentium enim tenetur quas explicabo sed. Veritatis ea expedita cum nesciunt rerum in atque voluptas. Ex odit veritatis nihil voluptate suscipit at.\n\nPariatur sit perspiciatis sit aut aut ab asperiores consequatur. Eos enim et tenetur expedita rerum quae eius.\n\nReprehenderit soluta ad non. Laudantium quibusdam laboriosam quisquam totam quasi voluptatem. Ut nihil ut nisi ut harum.\n\nDolor sint adipisci iure enim molestias deserunt voluptatem. Id labore quam perspiciatis aut. Qui numquam aut ex dicta. Adipisci a minima eum rem.\n\nPlaceat quo deleniti a vel sequi omnis. Eveniet incidunt dolores nihil suscipit odit necessitatibus rerum dolorem. Rem deleniti dignissimos sunt debitis nisi esse labore. Deserunt perspiciatis beatae eum quaerat earum omnis.\n\nLaboriosam molestias vel aut aut nostrum in ipsa. Et officiis quo ex et reprehenderit repellendus ipsam. Fugit qui aut eos id non ea.\n\nReiciendis nihil est velit est consectetur autem inventore. Numquam qui quam unde et qui repellat consequuntur libero. Impedit eaque fugit neque iure ut molestiae. Velit id dolorem vel. Ad sit nam placeat iste quia commodi itaque.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(62, 16, 'Illum provident adipisci nihil et.', 'Labore repellat amet est in eius saepe in. Recusandae est omnis qui quam quis minus dolorem neque.\n\nVel quasi deserunt ab eos dicta. Nostrum placeat vel quod ut iusto accusantium. Et quam molestiae sit quia dolor autem.\n\nFuga ea odit iure quis. Et laborum debitis excepturi consectetur.\n\nVel necessitatibus qui perspiciatis eaque occaecati nihil. Dolore qui earum eum autem et. Et quod vel molestiae dolor rem aut.\n\nFuga hic illum nisi fugiat a sed. Nihil nobis fugit quibusdam voluptas aut nihil sint. Accusamus vero sed porro delectus non.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(63, 16, 'Est eos doloribus optio similique tempore nemo sint.', 'Eum officia deserunt quia reprehenderit odit et autem. Reprehenderit dignissimos ut eaque temporibus. Autem fugit soluta et et et exercitationem. In ea non ut id et excepturi cum.\n\nVeritatis in hic eveniet eius. Ut atque ratione eveniet officia tenetur qui nostrum. Ut nihil facilis earum laborum. Aliquid ipsum pariatur est voluptatem facere.\n\nIllum nisi nulla suscipit nam. Rem commodi aut nobis aperiam.\n\nConsequatur omnis aliquid placeat delectus. Incidunt quisquam doloribus ut vero et. Culpa deserunt est non accusamus consequatur.\n\nEarum quia error omnis ut rerum et omnis. In deserunt sit hic. Eos ut vero iure aut qui. Modi nemo molestias nihil voluptatem hic sed.\n\nFugit natus quam laborum consectetur rerum et. Non dolore reiciendis ut minima. Nostrum cumque et quia omnis aut consequatur maiores.\n\nQuam sunt delectus commodi asperiores odio ab accusamus. Ullam ut ut enim earum odio necessitatibus perferendis. Placeat unde sed rem iste sed est. Perferendis est quia vel eius aperiam.\n\nQuos et quasi quia explicabo eaque totam repellendus. Numquam quos optio aut atque. Suscipit architecto rerum animi rerum itaque rerum harum aut. Expedita qui sequi sint non perspiciatis modi.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(64, 16, 'Eveniet a aut et inventore.', 'Suscipit quaerat facere minima recusandae. Iste consequatur omnis deserunt iste quo praesentium cumque. Itaque optio eos ullam iste.\n\nDolore corporis amet molestiae dolores. Consequatur voluptas vero harum ex facere ipsum.\n\nOmnis voluptas corporis saepe sit. Voluptas qui sint enim asperiores quibusdam suscipit fuga. Assumenda error sit expedita.\n\nNostrum reprehenderit nostrum sint vero blanditiis qui enim. Eum provident consectetur dolorem eveniet.\n\nSunt porro ducimus hic alias temporibus quo nihil. Quidem quas sint aut eveniet illo rem. Nam ipsam sed officia inventore soluta sint voluptates.\n\nPariatur corrupti repellat voluptatem et nulla et illum. Provident cumque voluptas ad sed delectus. Ipsum dignissimos ut et fugit commodi. Omnis excepturi itaque ut voluptates.\n\nRecusandae nulla a ea quisquam. Reprehenderit aperiam eius consequuntur. Consequatur omnis dolores voluptate modi nulla et aut minus.\n\nEt est sit velit saepe inventore qui fugiat aut. Illum voluptas sint totam ut dolores provident. Placeat temporibus et deserunt ab accusantium molestias. Ea inventore nam sit vel vitae consequatur est.\n\nLibero aspernatur consequuntur officiis ad. Quod incidunt sunt ipsa quos et. Nam est accusamus officiis sapiente.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(65, 17, 'Repudiandae laborum est et.', 'Cum nesciunt reiciendis enim recusandae. Dignissimos rerum eos est laborum. Aut illum est dolore doloremque.\n\nQuisquam corporis incidunt ex placeat maiores ut iste. Qui ut error qui eum exercitationem laboriosam. Neque eligendi aut quia aspernatur reprehenderit cum aut.\n\nIn nihil blanditiis iure nihil vel est. Odio harum dolorem sapiente itaque. In mollitia odit est officia velit. Eveniet accusamus facere dolorem.\n\nVel quis sit maiores. Consequatur vel excepturi ex recusandae repudiandae a quo aut. Deleniti ullam labore ad doloribus eum. Rerum sunt animi eos voluptatem.\n\nAccusantium error inventore sint inventore in aliquam sint alias. Magni nisi aut voluptas facere velit adipisci placeat. Sit voluptatibus dolores deserunt adipisci. In aut occaecati earum.\n\nEius id nostrum cupiditate at blanditiis. Optio eaque labore voluptates. Explicabo adipisci quaerat cupiditate illum voluptatum dolores. Occaecati quia iusto aperiam modi recusandae non.\n\nArchitecto in labore excepturi nulla quia sapiente doloribus. Eveniet molestias amet est iste suscipit inventore. Officiis libero cumque sunt quae hic. Id rerum beatae praesentium et perspiciatis.\n\nHarum temporibus maiores aliquam nemo incidunt quam. Porro voluptates consectetur ea quis perspiciatis. Tempore aut ab nesciunt ea dolor corrupti dolorum. Aut et magni ea aut.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(66, 17, 'Voluptas voluptas error vero nulla provident error.', 'Dolorum cupiditate eos et voluptatibus voluptatibus molestiae ipsum. Velit dolor alias perferendis soluta rerum corporis non. Rerum qui aperiam dolor est dolores.\n\nMolestiae qui ea sed. Ipsam tempora pariatur consectetur. Fugiat quaerat et perspiciatis ut culpa delectus eum. Reprehenderit dolorem voluptatibus hic nam sit error.\n\nConsequatur inventore praesentium delectus aliquid unde nobis. Ut odit placeat et exercitationem repellendus nulla repudiandae. Nostrum id accusamus ipsa corporis eum dicta enim.\n\nId aliquid occaecati facere. Voluptas enim et et. Nesciunt eius quia rerum eum molestiae rerum accusamus. Consequatur quam ut dicta eaque rem ut nostrum.\n\nVoluptas voluptates vel illo explicabo est non velit dicta. Excepturi labore minus animi deserunt sed soluta. Suscipit fugit alias laborum voluptas et omnis.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(67, 17, 'Itaque error repellendus in molestiae et sit et porro.', 'Deleniti saepe ad ipsa voluptatem. Occaecati alias omnis ut consequatur.\n\nVero similique quasi ut accusamus. Fuga iure iste autem laborum sint provident.\n\nInventore nam quo libero reprehenderit. Maiores consectetur eaque tempore id.\n\nEum a officiis molestiae quasi excepturi quo. Ut ducimus id reprehenderit et consectetur sint qui ut. Beatae repudiandae voluptatum aliquid natus omnis sed rerum omnis. Eum magni voluptas et.\n\nNon eaque saepe dolor corrupti aut non ullam sit. Est harum est officia asperiores. Dolorum explicabo ullam nihil nihil quo itaque.\n\nAccusantium illo molestiae vel eos illum. Rerum nisi dolor aliquid consectetur labore quia asperiores. Numquam et perferendis quo ut soluta autem mollitia.\n\nSed molestias iste modi qui nemo ducimus ad et. Sit eligendi hic delectus. Id rerum occaecati eius. Et dolor sit omnis nobis ipsum animi ea et.\n\nQui quos cumque est quibusdam quasi nostrum voluptatem. Dolorum autem fugiat ipsa tempore. Tempore quod nihil culpa iure molestias.\n\nNihil occaecati minus distinctio qui. Provident blanditiis rerum aperiam cupiditate sit illo exercitationem. Voluptas culpa soluta ipsum quae corporis. Qui aliquid molestiae quam voluptatem temporibus ratione.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(68, 17, 'Ullam quos itaque ab.', 'Ea consequuntur dolorem minima velit. In ab qui mollitia dolorem. Repellat neque beatae quidem recusandae. Autem possimus ipsum accusantium cum tempore.\n\nAut voluptate cupiditate qui eaque esse molestias autem. Quisquam facere modi culpa cumque repellendus quidem perspiciatis. Illo sequi in odio magnam et velit consequatur. Aut totam autem impedit dolorum nisi nostrum.\n\nDolor necessitatibus aliquam molestiae voluptas magnam. Magnam inventore repellendus nulla ducimus. Ea commodi quis ducimus eius. Laboriosam earum rerum aperiam omnis. Eligendi fugiat saepe voluptatem autem quis nobis modi.\n\nTotam et qui incidunt atque sequi sint ducimus. Facilis voluptatem ut nihil velit rerum sunt veritatis. Nemo atque eaque soluta et unde ea esse hic.\n\nQuia veniam eos culpa dolores velit est commodi. Facilis non quo vitae autem provident rerum ut. Occaecati quo natus iusto quos earum accusamus.\n\nUt alias enim consequatur quo. Aut id dolor omnis possimus voluptatibus accusamus ut. Laboriosam ut modi repudiandae minus nisi. Voluptates dolorem occaecati porro.\n\nQuam eaque quis et maiores numquam numquam consequatur quis. Id aspernatur maiores fugiat perspiciatis quis.\n\nCulpa ut non accusamus. Molestias ea architecto dignissimos. Odit autem hic optio enim temporibus est nobis nobis. Iure in eaque recusandae.\n\nBlanditiis possimus et modi quasi atque est molestiae. In repellat aspernatur vel quia.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(69, 18, 'Adipisci est in ipsum quam ut ratione vero.', 'Fuga nostrum quis voluptatem amet ut voluptatem. Facere eveniet numquam pariatur sint velit. Dolores magnam architecto impedit autem est. Porro consequuntur sunt debitis ea est.\n\nVoluptatem blanditiis deserunt molestiae tempore incidunt perferendis. Aut voluptatem deserunt reiciendis ut. Non sequi quia quae est voluptatum illum dolores. Consequatur saepe ea saepe nulla placeat at dolor.\n\nIste nesciunt qui sunt animi. Harum nulla consequatur nemo ipsum laudantium. Eius aspernatur quibusdam ipsa ut.\n\nDolores necessitatibus voluptatum sint voluptatum. Sed dolores temporibus qui harum. Rem nihil est autem nihil laudantium voluptas labore. Quis aut et dolor quidem laborum error fuga.\n\nIn laudantium consequatur voluptas qui. Qui et soluta dolorem a numquam. Cum id nam eius molestiae quibusdam omnis voluptate. In expedita qui placeat illum in voluptatem molestiae.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(70, 18, 'Maxime commodi dicta animi fuga.', 'Molestias consequatur et eius eveniet. Quibusdam quis aliquid eveniet autem quia et. Ab labore aliquam animi quia beatae. Quo quo voluptatem quibusdam delectus.\n\nQuisquam quis dolore nesciunt placeat voluptas. Tenetur voluptatem eum et dolorem quas cumque.\n\nDicta et eos minus nisi voluptatum. Molestias aut vel voluptatem sit sit. Aliquid ex tempora fugiat facilis eaque architecto. Tempora ducimus nihil est cupiditate non. Sit dolor dolorum praesentium odio explicabo.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(71, 18, 'Harum eligendi et et aut esse est.', 'Et aut natus quibusdam suscipit saepe rem. Nihil iste vero ducimus recusandae et. Non rerum non magni ut quia.\n\nOdio ut est in pariatur quos quam non. Laudantium fugit accusantium sunt molestias aut tenetur alias. Est ipsam qui quam quia.\n\nEos consequuntur ullam odit ad fugit et. Praesentium eos et eos officiis quia non sunt harum. Voluptatibus officiis numquam quasi aut tempora libero. Sapiente blanditiis est ut iure.\n\nUt explicabo iusto eligendi harum perferendis facilis rem. Aperiam voluptate qui delectus nihil ipsum. Ipsa et nisi iusto impedit nihil.\n\nOmnis laborum aut aut aut ea eum. Praesentium id ipsum qui qui enim consectetur sequi. Assumenda et magnam libero deserunt minima distinctio quae. Nobis eaque doloremque modi in.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(72, 18, 'Quia quis cum sed praesentium.', 'Ipsum qui voluptatem incidunt adipisci et. Nam rem soluta est sed aut ex fuga. Cumque enim quisquam cumque aut voluptatem quibusdam. Quia sapiente reiciendis quia dolorum magni et.\n\nQuidem inventore et laudantium voluptatem. Aut nostrum blanditiis et impedit. Rerum consequatur earum dolor quo deleniti. Illum commodi qui eligendi adipisci architecto consequatur impedit est.\n\nAt quia aut asperiores libero animi accusantium. Quia assumenda est ad. Sed hic reprehenderit reprehenderit. Sint omnis est labore exercitationem exercitationem consequatur fuga enim.\n\nVoluptatem ab consequatur ut voluptatem natus vel dolores. Aliquid qui aut ab nisi.\n\nFugiat ut et asperiores corrupti nemo ut. Natus fuga id nulla magni eveniet veritatis qui. Ipsum iste maxime cumque voluptas. Qui ab ipsa in voluptatibus.\n\nSint sed unde ducimus in. Earum amet ratione sapiente ullam qui eos atque. Quis impedit unde nisi vero incidunt illum quis. Quod eligendi perspiciatis voluptatem laudantium expedita similique doloremque.\n\nCorporis autem sapiente inventore labore iste est necessitatibus. Qui rerum porro pariatur odio illum nulla est quibusdam. Sunt sunt atque voluptatem et. Dicta quo et dignissimos id ratione amet et. Eum quibusdam maxime exercitationem nam voluptatem tempore.\n\nTempore est laboriosam quia quis. Dignissimos voluptatem ut molestiae. Velit cupiditate aut ut et. Aut rerum nam eligendi laboriosam iusto.\n\nQuasi amet dolores qui placeat facilis maiores voluptas voluptatem. Aliquid voluptas ut ut fugiat voluptas recusandae quo dicta. Illo et recusandae sapiente quae aut est et.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(73, 19, 'Ipsam cumque inventore natus est sed eos quia unde.', 'Et perspiciatis harum perspiciatis ducimus sint facere. Veniam qui necessitatibus quo accusamus a sed quia quibusdam. Veritatis voluptas est officia veniam officia omnis et.\n\nTotam architecto facilis nobis ut. Molestias harum omnis mollitia perspiciatis. Sunt omnis et laborum rerum sed quae a molestiae. Est sapiente debitis qui aut ex assumenda.\n\nFuga earum modi quia est id animi consequuntur. Ut assumenda voluptas et magni ipsa quaerat. Tempore est dolorum accusamus porro inventore nostrum. Sint molestias culpa id natus impedit temporibus exercitationem.\n\nNeque aperiam nesciunt dolores voluptas dignissimos sunt. Qui atque ipsam omnis ut quibusdam eius.\n\nEveniet fugiat nihil eos harum voluptate quia. Mollitia sed iste omnis laboriosam adipisci. Eum ad est modi odit.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(74, 19, 'Impedit eum dolor mollitia velit.', 'Ad ad repellendus non et. Sit culpa qui voluptas deleniti qui dignissimos. Dolorum similique ipsa ut quod atque.\n\nOmnis libero harum ea. Aut ea laudantium vel nobis aut ut velit. Dolore dolorem cumque non consectetur recusandae. Magni occaecati ex illum excepturi sed aut ex.\n\nUnde soluta aliquam aut ea. Sunt sit expedita corporis sit veritatis ut labore mollitia. Tenetur quod libero minima sit id voluptatibus.\n\nVero aut eligendi id et qui. Sed alias aperiam commodi. Rerum labore quisquam veniam rerum harum occaecati magni. Adipisci minima et ab et reprehenderit. Mollitia omnis voluptates cum qui et et.\n\nPossimus voluptatum sint velit quo aliquam sit blanditiis. Id tenetur dolore vero ullam amet. Cumque eum saepe magni ut voluptatem odit. Consequatur omnis blanditiis esse non placeat est. Dolores quia placeat iure debitis beatae.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(75, 19, 'Fugit ab dolorem porro nobis.', 'Voluptas quae expedita aliquid eveniet repudiandae quia provident. Deleniti voluptas id quam quos natus nisi. Repellendus iure quaerat voluptas consequatur iure iure. Error aut voluptatem laborum qui consequatur.\n\nEst dolorem voluptas incidunt voluptas voluptate deleniti et. Facere blanditiis et ea aliquid ad. Amet ut voluptatem qui.\n\nLaboriosam iste et distinctio magnam. Ex quia possimus deserunt neque iusto quia delectus. Culpa quo consequatur qui. Tempora qui ut quia et ea culpa.\n\nNostrum aliquid odio et consequatur. Et consequatur ad accusamus a. Possimus enim animi culpa possimus dolores eum eius voluptatem.\n\nPorro odio at et distinctio qui. Optio aut perferendis ea ab et odio ducimus. Tenetur at vero ea. Est consectetur ipsam nemo voluptatem enim aliquam temporibus repellendus. Odio ullam omnis quisquam consectetur atque.\n\nQuia sint architecto illo qui odio. Voluptas nobis accusantium iste maiores totam. Ut ducimus repudiandae iste occaecati itaque esse ut vel. Repellendus minus quas quia quas ut maxime.\n\nA dolor et nam eaque. Quia deleniti quia assumenda eaque omnis qui. Aut veniam consequatur eos debitis.\n\nQuos itaque deserunt quod ex perspiciatis quia praesentium. Modi qui quo asperiores repudiandae. Ullam alias cupiditate nesciunt. Aut quia quis repellendus dolores temporibus.\n\nQuidem qui facere et sint non dicta. Cum quasi quasi ut aut velit veritatis.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(76, 19, 'Quod architecto dolorum quia eaque.', 'Modi architecto ut non reprehenderit non voluptatem. Recusandae in incidunt quod magni eum ab. Et libero distinctio vel ut aperiam praesentium. Fugit quia tenetur sint doloribus excepturi ipsum asperiores. Praesentium neque nisi cum eius dolor.\n\nDucimus et itaque ut dolores. Natus qui rerum repellendus rerum officia non dolor esse. Nisi saepe voluptas accusantium sed saepe commodi.\n\nAut id error quis et non. Quidem qui ut omnis quidem non quia ad. Architecto commodi consequatur qui est blanditiis eaque. Et ea natus amet omnis asperiores.\n\nEos corporis ducimus sit omnis placeat nobis rerum. Iste et aliquid iusto inventore eum consequatur non. Facere odit id fugit dolores.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(77, 20, 'Natus in earum et est.', 'Et magnam inventore vel molestiae. Laudantium sed fuga nesciunt vitae consequuntur ut voluptatem voluptates. Quaerat iste eveniet animi unde voluptas velit rerum.\n\nEos dolorem excepturi consequatur ut vero ut. Adipisci est eum occaecati asperiores ipsa reprehenderit. Quia cumque asperiores laboriosam molestiae architecto voluptates.\n\nVoluptatem fugiat dolor eius doloribus deleniti sit est. Et dicta debitis non nihil rerum et est minus. Deleniti cum est voluptas qui.\n\nVeniam quas ea at laborum repudiandae impedit alias. Omnis dignissimos enim quod provident voluptatem dolores. Est corrupti ut placeat asperiores consequatur maxime. Error aspernatur velit amet aut velit ut.\n\nAssumenda ullam placeat nihil nemo quod. Unde id dolorem omnis omnis. Doloribus qui animi dicta itaque id. Amet dignissimos sit voluptates ipsa.\n\nPraesentium et dolores tenetur iusto. Occaecati iusto nulla cumque eveniet. Accusamus tempore numquam laborum et excepturi est eligendi.\n\nEst amet neque sit culpa nobis est. Expedita tenetur sed at tempora quo iure nam quas. Quos enim itaque ipsa saepe. Quam omnis omnis est sint minima.\n\nTempore iure incidunt nisi id ducimus. Fugit qui suscipit repellat reiciendis aliquid distinctio beatae. Sed aliquam officia qui itaque consectetur. Libero tenetur rerum ea nihil nesciunt corrupti.\n\nQui rem ipsum delectus eum reiciendis ipsum. Explicabo ipsum eaque quam deleniti consectetur consectetur odio. Deserunt ad et aut molestiae ducimus distinctio.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(78, 20, 'Recusandae doloremque quia ipsa id veniam nesciunt.', 'Iusto neque numquam pariatur ut neque. Iusto maxime similique sint exercitationem. Temporibus omnis itaque vero facilis. Itaque repellat odio nisi cupiditate cum ut.\n\nQuasi non est reprehenderit eaque. Et voluptatem aut quae aliquid sit similique labore. Repellendus ullam recusandae atque nemo ducimus.\n\nSed necessitatibus eligendi cupiditate. Qui dicta unde sed ut perferendis nisi. Ad dolorem optio qui dolores.\n\nRecusandae quia sed eligendi asperiores eius voluptas. In quam optio in dolores adipisci atque. Est ullam perferendis ut consequatur dolorum tempore sunt et.\n\nQui porro sint illo omnis facilis. Quos quia sunt vitae labore soluta dolorum. Ut voluptatem optio incidunt similique deserunt est. Ut mollitia est voluptatem odio ratione quia.\n\nCumque dolor voluptatem id aut quia est corporis. Sit quos eveniet totam qui quas consectetur ut. Quod qui occaecati iure porro corrupti qui. Commodi sunt itaque quo sapiente.\n\nUt sequi in facilis eos. Molestiae ab consequatur exercitationem. Soluta vel et velit eaque iure in quo. Accusantium dolorem vitae ea ad exercitationem architecto quia.\n\nEt suscipit qui vitae fugiat. Qui autem alias ut vitae aut id. Laborum beatae autem expedita facilis laboriosam. Deserunt et dolorem atque et ullam est similique.\n\nQuo unde voluptatum distinctio quo molestiae nobis aut harum. Iste doloremque et omnis expedita. Mollitia maiores perspiciatis doloribus molestiae quam et facere. Soluta reiciendis maxime asperiores qui magni voluptatibus aperiam. Eius ut debitis eum in.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(79, 20, 'Neque excepturi qui ea.', 'Modi perferendis occaecati facere qui ut vel iusto adipisci. Et enim consectetur quia tempora optio incidunt iusto. Placeat et quo ipsum fugiat labore quia. Fuga id rem corrupti ut praesentium rem dicta sed.\n\nDolorum non non quis neque. Velit cum repellendus perspiciatis accusamus non mollitia aut voluptate. Autem temporibus et ipsam quae ducimus vitae doloremque. Totam rerum et maiores molestiae.\n\nQuis mollitia natus sed magni qui numquam eos voluptatibus. Ut minima et eos in nisi. Voluptatem dolores sit veritatis ut omnis cum.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(80, 20, 'Eaque a ea sint voluptas nostrum.', 'Eum labore cum nisi dolorem. Consequatur animi ut qui corrupti repellat. Nihil quia non quidem eius quos eos non.\n\nDicta ut vitae voluptates officia quasi explicabo. Non quo id dicta unde facere delectus nemo. Non adipisci quae pariatur eos magnam aliquid. Deleniti a doloribus repellat ducimus aliquid et quia neque. Vitae expedita et et sint aliquid sunt vel error.\n\nAt deserunt quam voluptate et et qui eos. Et iste quis sequi eligendi ea. Et vero nisi assumenda consequatur eos nesciunt nihil.\n\nQuisquam consequuntur harum laborum maxime amet. Eligendi totam nihil sequi aut illum ab. Temporibus corporis necessitatibus tempore in exercitationem et sapiente. Quos dolores et rerum accusamus nisi similique.\n\nExplicabo quidem voluptas dolor nobis et quibusdam. Dolor est incidunt vel quam. Suscipit dolores sed et voluptas in temporibus. Deleniti optio officiis vero deleniti non pariatur voluptates.\n\nConsequatur autem quae facere delectus. Et porro architecto dolore pariatur. Ut alias incidunt magnam molestias molestias voluptatem qui expedita. Aut et reiciendis laboriosam et aut deserunt qui.\n\nIusto perspiciatis dolores et. Ut sed error et. Temporibus nostrum voluptates error rem.\n\nReprehenderit et blanditiis optio sint aut nihil. Distinctio voluptate ipsa explicabo aut id velit velit. Quia iste rem sed.\n\nQuo vero eveniet qui eos provident molestias. Iste dignissimos aut iste sed consectetur. Impedit beatae necessitatibus enim dolor consectetur at sint.\n\nHic quos impedit et quos consequuntur. Et fuga qui quis quos tempora eum. Omnis animi sed nulla iusto. Distinctio omnis accusamus tenetur maxime officia doloremque sit.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(81, 21, 'Illum molestiae praesentium dolorem iusto.', 'Illo magni error quisquam aut nam nobis esse. Qui qui dolor quaerat velit sit. Recusandae est placeat tempore qui eveniet.\n\nTempore ratione dicta numquam aperiam impedit. Omnis quibusdam vitae facere nemo quis doloremque ad sit. Quo cumque id similique et ab.\n\nLibero totam at veniam aut minima sed ad. Est perferendis laborum est et accusantium at rerum. Fugiat quisquam error rerum omnis cupiditate.\n\nEst ea expedita pariatur eveniet expedita velit animi. Animi asperiores debitis necessitatibus maiores qui non totam.\n\nVoluptas tempora reprehenderit sit quos dignissimos. Aut voluptatibus in quis mollitia excepturi. Possimus nam impedit odio ipsam similique quae.\n\nRem dicta sed dolore doloremque error nisi consequuntur. Quibusdam tenetur dolor et qui. Atque et hic tempora sed ullam adipisci.\n\nBlanditiis qui qui aliquam earum. Quidem et sed occaecati sunt doloremque consequatur voluptas. Est architecto eligendi aut natus quia.\n\nDolorem dignissimos animi dignissimos ea dolor sed voluptates. Maxime qui saepe aut iusto doloremque dolorum. Impedit eius optio laudantium aliquam consequatur magnam.\n\nDoloribus blanditiis consequatur earum ea commodi. Impedit voluptatem sunt sit tempora at quibusdam. Consequuntur minus exercitationem et provident fugit.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(82, 21, 'Rerum inventore maxime necessitatibus et explicabo odio doloremque voluptatum.', 'Eligendi ut inventore quasi. Rerum veniam vero dolorem eum provident architecto quasi.\n\nDistinctio vero pariatur non nemo. Unde est molestiae nobis aut ut. Itaque corrupti ut suscipit rem. Voluptatem et perspiciatis id nemo.\n\nExplicabo doloremque sunt nesciunt amet. Quisquam provident id dolore eveniet. Iure labore commodi sit quam velit id.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(83, 21, 'Sapiente porro aut aut dolorem excepturi est et.', 'Ut amet beatae quo et repellendus beatae qui. Ad fugit velit eveniet et dolor.\n\nEst quia unde mollitia dolores eos vero maxime. Ipsa qui officiis ex id sunt alias asperiores. Quia qui amet aut.\n\nExplicabo ducimus labore omnis et ea. Explicabo qui architecto ipsum nulla sed. Aut enim fugit eaque occaecati illo officiis dolorum. Odio doloremque eos odit vero vero.\n\nRepudiandae autem sit sint nesciunt voluptas ipsam in perspiciatis. Enim debitis ex perspiciatis rerum sit. Non similique quaerat dolores.\n\nVitae eos iste non eum dolorem. Nemo atque fugit cumque aut. Nihil fugiat occaecati tempora aperiam iure beatae.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(84, 21, 'Maiores inventore quod enim.', 'Exercitationem deleniti velit voluptates sit rerum omnis. Debitis ea sed modi ab dolor ut voluptate. Unde ab et sunt in. Officia laborum consequatur ratione impedit.\n\nHarum soluta laboriosam officiis vel et. Ea excepturi quas corporis aspernatur asperiores officia quaerat deserunt. Laborum praesentium fuga laboriosam non totam nihil suscipit. Architecto consequatur nobis ut qui et sequi necessitatibus. Nisi voluptatem est voluptatibus autem doloremque reprehenderit dolores.\n\nEst accusamus ea consequatur aperiam dolorem et. Rerum fuga id laudantium reprehenderit corrupti quam. Beatae aut dolore amet minima sunt molestiae doloribus. Eos molestias ipsam eius voluptas iusto.\n\nIn aliquid ut earum ratione magni vel harum. Incidunt aut est est quia eligendi facilis aut. Tempora sequi nulla et et impedit earum.\n\nDebitis et et atque consequatur nisi et ullam quo. Voluptatibus qui et quia. Ratione sint omnis sit temporibus quam consequatur. Facere et dicta aut ipsam incidunt.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(85, 22, 'Ea eius labore rerum cumque natus sit quidem.', 'Voluptatem consequatur repudiandae ut nemo magni quos. Necessitatibus rerum qui qui. Voluptatem et debitis molestiae ea.\n\nItaque cupiditate facere saepe et enim aperiam. Quae voluptatibus ut quis quisquam. Velit nihil non facilis natus officiis ut perferendis.\n\nIn autem dolores ducimus ut voluptas omnis soluta omnis. Ipsa aspernatur eius mollitia quis ex et. Ullam qui a et sit quibusdam minima et. Voluptatem quisquam error nemo voluptas cumque neque.\n\nEt sit dolore illo aut adipisci. Maiores aspernatur inventore excepturi deleniti. Ut consequatur omnis quia commodi rerum. Aliquam deleniti et quidem vel ut.\n\nNumquam velit sit distinctio. At qui saepe voluptas quia voluptatibus et. Inventore et nihil vitae saepe quae et. Sapiente eum fugit iusto repellat deleniti aut.\n\nAt beatae consectetur est sunt odit quas. Qui quis tenetur a. Illum asperiores culpa enim repellat eos.\n\nConsectetur aliquid ducimus non. Et dolor rerum porro officiis nesciunt. Eligendi nihil non neque ipsum rem qui. Odio consequatur sapiente temporibus fugiat. Occaecati cumque velit aut soluta est a.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(86, 22, 'Aliquid autem beatae minima corrupti voluptatibus ipsum enim consequuntur.', 'Doloremque et neque perferendis natus. Fuga sequi fuga quaerat mollitia. Deleniti tempora qui est temporibus accusamus. Et velit eveniet non aut dolor eaque.\n\nUnde ut quis aperiam ab neque tempora. Repellendus quod deserunt autem omnis.\n\nMaxime eligendi ullam sit non officia. Consectetur consectetur cum quaerat et asperiores non. Architecto quam dolor facilis ad necessitatibus.\n\nQuasi enim quo velit qui quam. Sint eligendi exercitationem nihil ad quasi. Fugiat sit eligendi et nulla est nam voluptatibus error.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25');
INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `published`, `created_at`, `updated_at`) VALUES
(87, 22, 'Natus vel voluptas quia tempora esse ullam et.', 'Quae ipsum animi et quas iusto aliquam repudiandae impedit. Maxime expedita sit eligendi reiciendis suscipit. Quo voluptas quia molestias ducimus fugiat. Quia illo veniam tenetur voluptas.\n\nOmnis et mollitia et officiis voluptatem. Et perferendis voluptatem mollitia alias. Et aliquid nihil occaecati minus voluptate repellendus fugit magnam.\n\nQuia temporibus mollitia est tenetur. Alias iste animi vel ratione voluptatem aut veritatis. Et veniam eaque voluptas sunt voluptatem praesentium est. Rem consectetur voluptates iure.\n\nQui voluptas soluta at dicta rerum error voluptatem. Voluptatibus non quisquam cupiditate corporis odit omnis accusantium. Laborum dolorum voluptas nihil maxime qui aut laboriosam.\n\nEt in illo voluptates ea omnis. Natus odit qui dolore at nisi modi. Facere laudantium nihil assumenda molestiae rerum unde incidunt.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(88, 22, 'Voluptas sunt excepturi qui aut quasi iure nostrum ducimus.', 'Et est rerum debitis possimus. Ipsam delectus doloribus corrupti at.\n\nPraesentium voluptatibus qui sunt maxime suscipit debitis et maxime. Quia quibusdam veniam aut. Ut et est autem ex quia.\n\nSunt dolorem repellat omnis aut non beatae nisi. Omnis quia accusamus repellendus repellat. Voluptas dolorum vel quis alias incidunt omnis.\n\nEst velit et sint repellat. Ea molestias dolor ratione cumque. Rerum autem perspiciatis perspiciatis facere.\n\nQuia perferendis ea neque odit voluptatem et reiciendis. Possimus ipsum illum inventore eveniet dicta dolor a. Ea praesentium consequatur aliquam dolores blanditiis. Quidem doloribus enim esse sunt. Iure aspernatur magnam velit qui quaerat.\n\nIn labore consectetur beatae vel autem. Fuga alias sequi modi nisi rerum nihil omnis. Quo velit autem et ut. Non aliquam exercitationem aperiam velit sunt non tempora.\n\nEveniet ea sunt dolor consequatur. Ipsa beatae odit qui ea consequatur expedita. Qui delectus aliquid autem veniam non. Quas ut et non sit aperiam molestiae.\n\nVoluptatem cum autem atque atque quia. Qui ad nesciunt libero quia. Ut dolore sit qui.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(89, 23, 'Ipsa ex quia maxime suscipit nesciunt voluptatem.', 'Provident illum deleniti eum nam. Culpa a quia soluta qui fugiat. Ex unde ut commodi esse.\n\nNeque vitae rerum optio iusto odit ea totam magnam. Illo occaecati enim recusandae quis voluptas sed sapiente eius. Et repellendus illum labore corporis pariatur itaque qui. Minus quos saepe hic cum aliquam consequuntur facilis.\n\nNostrum soluta beatae delectus natus. Doloribus voluptates quae adipisci. Harum non deserunt rem mollitia voluptatibus veniam. Numquam expedita dolores qui voluptas.\n\nIn ut ad eaque ab assumenda quis. Quia et vitae enim sunt odit et. Nobis quam vel autem possimus reprehenderit. Dolores excepturi deserunt sunt facilis quia nesciunt. Ullam consequuntur ducimus illo blanditiis.\n\nAlias voluptatibus soluta fugiat reiciendis. Neque doloribus fugiat veniam omnis incidunt dolore dolorem. Aut esse ut molestiae et maiores. Laborum impedit sit molestiae sint atque ut.\n\nIpsum ut asperiores adipisci enim et nihil. Et eum ea dicta hic qui quaerat. Perferendis esse dolores provident magni enim est architecto.\n\nDignissimos quisquam pariatur cumque voluptas consequatur sed placeat reiciendis. Ut repudiandae assumenda quos maxime. Non rerum earum ut consequuntur harum. Ut veritatis nisi dolor qui magni.\n\nVoluptatibus ad ea et dolore voluptatum. Dolore facere et quos praesentium ut placeat expedita. Maxime expedita error rerum eos laboriosam consequatur. Eos ullam aliquid temporibus corrupti debitis.\n\nCommodi sapiente id qui nemo non est fuga. Voluptates vero autem officiis. Praesentium quam aliquam et omnis porro provident. Itaque voluptas sunt aut fugiat dicta.\n\nVoluptatibus et molestias minima est aut enim praesentium. Et magni mollitia facilis. Ipsa et est voluptatem recusandae.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(90, 23, 'Quia ipsum sed neque natus.', 'Sunt ea in quibusdam unde. Incidunt qui sit qui qui voluptas. Eos voluptatem ad debitis non aut omnis autem rerum.\n\nEt quas ducimus quis ad voluptatem asperiores. Dolore enim incidunt at est ut. Ut saepe repudiandae rerum ut. Nostrum beatae fuga et cum dolorum odio unde.\n\nError et doloremque pariatur nihil deserunt. Sapiente est sed aut dolor placeat. Error et vel culpa neque debitis.\n\nAt soluta tenetur alias ad. Dolorem sed repudiandae deleniti. Non autem ex ipsum sed.\n\nNemo est accusamus sed. Fugit non enim est exercitationem aut aperiam ex. Reiciendis rem recusandae maxime quam tempora animi maiores voluptas.\n\nCupiditate voluptatem voluptas autem error. Et vel quo saepe. Quam suscipit et repudiandae omnis dolorem.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(91, 23, 'Perferendis impedit sint tempore nobis ut.', 'Dicta fuga et fugit et. Ducimus corporis sunt quis quo molestias aut animi. Ut mollitia aut itaque non nisi ipsam labore.\n\nQuia quisquam accusamus exercitationem laborum corrupti. Ratione quis architecto dignissimos quos consequatur est ipsum. Laboriosam quos esse non eveniet dolore. Exercitationem possimus sunt ab provident quis eum.\n\nEnim pariatur voluptas amet quisquam consequatur. Vel et ut reprehenderit. Sed accusamus odio et dolorum nesciunt nostrum. Delectus quia magnam et eos vero ut aut.\n\nHic omnis quos autem harum. Unde ex asperiores iusto quo omnis quisquam. Maiores sit quia quas laborum. Distinctio qui architecto qui necessitatibus ipsam quisquam ut eligendi.\n\nOdio et quae ipsam velit aliquam quae quasi dolor. Modi autem sint deserunt rerum non ut temporibus eveniet.\n\nOmnis fugiat suscipit animi maxime libero velit. Ad sed illum blanditiis laborum fugiat doloribus eos. Magnam consequatur corrupti et distinctio repellat. Illum suscipit dignissimos dolore.\n\nError nesciunt asperiores praesentium voluptatum impedit molestiae. Vel rerum pariatur laborum et. Tenetur tenetur corporis magnam sunt est. Sint dicta aut placeat et quas in.\n\nVelit aut illo voluptate enim et et occaecati quod. Perspiciatis et numquam ut molestiae possimus. Quibusdam a laborum voluptas dolorem et nihil eos aut. Et odio voluptas exercitationem suscipit iusto.\n\nSit aspernatur quia tenetur esse ad blanditiis. Id quaerat delectus quam sit et aut doloribus. Qui ut temporibus id aperiam.\n\nLibero ipsam et voluptate rem dolorem mollitia. Autem recusandae aut dolorem tempore odit. Non et vitae corporis velit. Qui omnis qui nemo corrupti eum. Numquam id atque deserunt non.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(92, 23, 'Voluptates consectetur voluptatem aspernatur ducimus atque cumque.', 'Similique et optio laboriosam temporibus quis omnis. Nobis voluptas consequatur expedita ut qui a dolorem. Est et dolorem veritatis consequuntur.\n\nQuo laudantium temporibus beatae dolore id. Est ut quidem harum natus et rerum officia quae.\n\nQuos et mollitia consequatur officiis tempore sit. Eius nostrum dolores optio sequi esse. Explicabo facere dicta quam aut vitae dolorum quam. Sint architecto blanditiis aut aut sequi.\n\nQuas voluptas neque et ut nulla ut sed. Adipisci ullam rerum reprehenderit et error aut recusandae. Corrupti nam qui voluptatem maxime et incidunt.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(93, 24, 'Sint blanditiis nemo exercitationem et vel et veritatis.', 'Voluptas tempora repellendus et architecto ut nobis repellat. Tenetur incidunt voluptatem rerum est beatae. Facere dolores alias et ab accusantium.\n\nSunt veritatis velit nihil debitis quidem assumenda quod. Dolores sint at ipsum rem. Cumque ab minus blanditiis tenetur. Quia quia animi nihil modi eligendi voluptatibus fuga.\n\nAut nihil odio explicabo a. Expedita aut nihil qui et corporis omnis dolorem enim.\n\nEnim ea porro et dicta et nobis. Tenetur qui qui maiores voluptas ut molestiae. Corporis molestiae error quo molestias aut accusamus consequuntur.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(94, 24, 'Rerum perspiciatis suscipit repudiandae et ut repudiandae.', 'Numquam nisi quibusdam aut quas qui asperiores voluptatum. Excepturi nesciunt dignissimos et soluta non sint nihil consequatur. Sit sit eius omnis illum quis aperiam. Et iste saepe iusto earum est ea quia sint. Minus numquam perspiciatis cumque sunt sequi blanditiis omnis velit.\n\nMaiores quo deserunt consequatur sint esse. Explicabo eum est iusto non quibusdam veritatis laborum. Adipisci quia rerum repudiandae dolores. Inventore consequatur eveniet ut nihil aperiam omnis.\n\nIpsum aut odit quisquam est asperiores illum sint. Unde et aut commodi in voluptates quia.\n\nEius nihil ipsum fugiat. Amet harum molestiae et aut. Est labore neque laudantium quae. Qui minus provident aut similique sunt culpa.\n\nAdipisci esse aut qui asperiores illum molestias. Voluptatem aperiam delectus sunt molestiae sit sed. Provident amet explicabo similique. Commodi inventore autem illum.\n\nTempore cum deserunt explicabo perferendis voluptate consequatur sed. Aspernatur ducimus libero nihil soluta pariatur. Aut cupiditate sit consequatur. Perspiciatis architecto non earum quia non pariatur. Omnis illo maiores aut consequuntur dolorem.\n\nQuia beatae voluptas in expedita recusandae. Placeat sapiente sequi repudiandae quo illo ea. Nihil aut sed ullam tempora similique. Eos dolore dolore libero fugit aut.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(95, 24, 'Omnis cumque labore quo aliquid autem occaecati aspernatur.', 'Maiores dolorem aperiam non voluptatem fuga nam. Enim quia ut quaerat dolorem laborum sit. Quod quisquam voluptatem blanditiis vitae hic est.\n\nEveniet vero sed quisquam dolores. Harum voluptatem voluptates voluptatibus minus ipsam distinctio. Quia temporibus eveniet ut et laboriosam eos. Harum quis ipsum fuga beatae. Occaecati alias est vitae nulla ad libero.\n\nAperiam est est possimus cupiditate dolore voluptates aliquam. Et omnis ducimus est aliquid est maiores et. Ut et quia nam nisi. Porro nesciunt et repellat rem sapiente saepe et.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(96, 24, 'Libero optio hic dolorem in rem eligendi quo.', 'Praesentium eius quo dolores rerum. Neque dolorum inventore est iure pariatur sit esse doloribus. Quae ex architecto consectetur sint eligendi. Dolor iste ut quam reiciendis omnis ut.\n\nVoluptatem suscipit quod et nisi. Placeat omnis velit consequatur rem sequi accusamus. Neque provident qui qui vitae.\n\nEarum voluptates provident enim quibusdam quisquam. Rerum saepe debitis quidem repellat. Ducimus vel est rerum rerum. Nostrum possimus laborum doloremque maxime esse culpa consequuntur.\n\nReiciendis laborum dicta repellendus consequatur dignissimos sunt illum qui. Neque et modi beatae mollitia aliquid repudiandae assumenda dolor. Et explicabo molestiae reiciendis similique maxime.\n\nQui eveniet vel laudantium in laborum debitis. Vel non qui eos aperiam suscipit dolores sequi aut. Qui aut repellendus commodi quaerat rem ex aut.\n\nSunt voluptatem iste beatae voluptatum quia fuga repellendus. Consequatur minus ex officia iure sequi eligendi. Hic quibusdam voluptatem hic sequi. Laborum eaque nobis dolorem harum culpa quo.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(97, 25, 'Autem porro optio et et sapiente.', 'Et consequuntur et asperiores quia. Aut consequatur dolorem adipisci vel ut aut illum. Placeat quo est et magni deleniti. Et et ipsa et quia maxime.\n\nHic modi voluptatum soluta in labore sunt assumenda qui. Similique qui facere placeat dignissimos deleniti. Consequuntur eum provident recusandae nemo ratione nulla. Quae et esse fugiat repellendus qui et consequatur. Odit et eos accusamus quidem velit voluptates.\n\nDolorum odit neque ut molestias consequuntur est. Numquam sed incidunt natus repellat est. Veniam omnis a tenetur sed harum saepe atque. Sint quas maiores vel eos facere vel.\n\nCorrupti sed esse eum quae sed est. Ipsam aspernatur consectetur ullam excepturi et. Placeat praesentium repudiandae enim ut dolorem ut vitae.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(98, 25, 'Enim qui ducimus aut qui necessitatibus quia.', 'Voluptatem id impedit omnis veniam atque. Voluptatem et et doloremque quo. Alias omnis animi omnis perspiciatis.\n\nEius molestiae quisquam deleniti et delectus. Omnis fuga itaque ullam nemo quia qui autem. Aliquam eligendi voluptatem nihil consequatur saepe.\n\nUt architecto ullam laborum id. Nobis adipisci eum quaerat praesentium nam. Aut provident et molestiae eaque nesciunt dolorem.\n\nEnim perspiciatis aliquam corporis quasi dolor et dolor. Aut culpa qui perspiciatis et ut. Et molestiae omnis praesentium commodi cupiditate deleniti sed. Nobis qui rerum numquam accusantium.\n\nMaiores qui sit soluta et nihil qui voluptatum. Nihil quas sequi corporis cumque dolorem quibusdam nemo. Itaque optio voluptate eius quaerat. Nobis harum rem similique enim praesentium.\n\nNihil aut quia aliquid voluptatum praesentium illum est. Vel nesciunt inventore nulla placeat quam repellendus corporis. Consequatur tenetur et dignissimos sapiente.\n\nPossimus eveniet et qui voluptatem. Dolor minima ipsam ut est maxime explicabo quia. Reiciendis iste atque debitis.\n\nAssumenda recusandae libero doloribus deleniti dolor. Sunt est natus adipisci eius eum. Sit amet autem sed neque dignissimos omnis mollitia. Provident illum beatae pariatur.\n\nVero similique veritatis et pariatur dolores eos. Fugiat magni labore consequatur enim. Quis cum possimus quaerat velit sapiente.\n\nEnim ducimus est adipisci quaerat ratione repudiandae. Saepe adipisci laudantium sed voluptatum eos. Et qui porro aut perspiciatis at.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(99, 25, 'Ullam et eaque omnis eum iure.', 'Fuga et facere architecto. Sit et quia ut vitae aliquam nesciunt laboriosam aut. Ut nobis omnis explicabo.\n\nNon aliquid omnis est maiores voluptatem et dicta accusamus. Ducimus reprehenderit et beatae mollitia. Sit qui quod pariatur eius vero quaerat consequatur.\n\nRerum iusto harum iste necessitatibus quo nihil. Labore accusantium sed odio omnis. In nihil optio reprehenderit autem id temporibus voluptatem.\n\nAmet aperiam odit ipsam beatae sit consequatur. Ut et qui doloremque et modi perspiciatis vel sunt. Et animi deleniti et harum qui. Itaque minus saepe sit provident quod vel est.\n\nNobis ut voluptas et molestias consequatur sapiente rerum. Debitis animi earum ad et veniam velit. Eos nobis similique debitis voluptatibus.\n\nRerum reprehenderit a quasi laboriosam. Voluptas modi explicabo quasi consequuntur nam eaque labore. Labore consequuntur recusandae provident sunt vel maiores nesciunt.\n\nQuia doloribus rerum aut quia. Dolor occaecati eum eum excepturi sint. Debitis quibusdam aut optio dolor distinctio et fuga quis.\n\nConsequatur occaecati et excepturi. Minima aut atque qui quas consectetur. Dolor nemo animi quae id. Quidem officiis similique sapiente nobis.', 0, '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(100, 25, 'Omnis dolore laboriosam harum enim laborum expedita ea ut.', 'Sit quaerat quibusdam non et. Voluptatem exercitationem laborum ducimus non suscipit id quia qui. Nemo asperiores cum nemo quo vero. Maxime suscipit nam et iusto qui.\n\nNam ad et quae voluptatibus necessitatibus explicabo. Et laborum ullam qui voluptatibus. Autem sit veniam omnis inventore ut. Temporibus consequuntur nobis magni cumque reprehenderit vero ex.\n\nId non vel et eius. Laborum vel incidunt magnam quo rerum ut inventore porro. Voluptates minus voluptas iure illo.\n\nDolor rerum esse nisi quos maiores qui tempore. Accusamus nisi voluptas voluptatem non accusantium nulla tempora. Adipisci qui aut molestiae alias ipsa sed nulla. Aut quia soluta dolores sed magni dolores.\n\nFacilis minus aliquid aut impedit velit adipisci ut. Quas ad tenetur tempora numquam. Doloribus fugit eaque distinctio sed sit.\n\nIn aut vel rerum asperiores error quia eos. Quia molestiae voluptas molestiae itaque qui quo neque quia. Voluptas commodi reiciendis ut commodi quos in sit.\n\nArchitecto iure eum occaecati aut animi consequuntur adipisci. Delectus occaecati voluptatem porro maxime culpa. Non vero quo omnis consectetur quia optio dolor. Maiores sint omnis in dolor voluptate iste.\n\nOmnis eligendi accusantium ab et. Dignissimos dolore qui sit est molestiae laudantium aut. Occaecati a dolorum qui iure nulla. Fugit porro et non blanditiis cumque labore.\n\nSunt vitae fuga ut sapiente ut. Ducimus harum cumque omnis magni et quisquam. Ipsum et repellat sed.\n\nFuga delectus quisquam earum. Recusandae provident voluptatibus eaque est commodi enim aut. Unde voluptatem delectus non velit possimus quo et.', 1, '2019-02-05 19:00:25', '2019-02-05 19:00:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mrs. Norma Bailey', 'admin@rahib.com', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'yRk14dFmkW9XepButiexD84iz1Tf07QdQOUDFnqFFcHGw7m3b8MEhRVei4t8', 'nBQgin5wqdqZAQeBZt7h0LcWmIy2FEfJm841NRz9K1PijpA7CFQkyX7OC4hw', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(2, 'Novella Borer PhD', 'radams@example.net', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'Rlj6GI6ZJ0ZWm4hktmED43iMmWMUUqUjJXoZwhyACOSsFLhkTVT1JB0n2d4S', '7cldLBhJZb', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(3, 'Prof. Valentina Reinger', 'walker32@example.net', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', '5j7vogNcn273CBAfnwERDMNLnr1jjrJTkaqb3RXeBKhpWbghfZSfvivX7v2e', 'U0FiwDpIFS', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(4, 'Zora Spencer', 'hstamm@example.net', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'vqN5bQrfG0lfgrwI0b9OX2vb28firTHT9O1IBa2dHwIUqfy54f37yi7m7Vhz', 'Zkr9kReZ77', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(5, 'Dr. Raphaelle Wintheiser', 'eric.schroeder@example.org', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'nlVlz5Q5kf8yz5iSKuGpDnZ4yrpR8bYi69mKkzDYBiNPkEiEOuDgFaIu8SbP', 'p8O6eikeSm', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(6, 'Vida Hyatt', 'craig.kris@example.net', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'CWJ1pYRo7WySQySKHH5dfv07RcVg8QQg5qqQfvC2CHZ3h6Pk1dZCvEtF3jl0', 'VnnDZzMYWe', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(7, 'Mr. Craig Runte DVM', 'rudy.batz@example.com', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'O0qaW2HmlDc6Mh2C3MMxI1uUxkF1aMtvxQukIRzx6hXQygxGoeRGbs5Km9H3', '8gEvx0rq6i', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(8, 'Miss Rebeka Legros', 'qoberbrunner@example.org', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'YZSqPKB3boct1J2ZpHp4lNR1eMi2uUYFd7KrE4OxhjHzeTr6rsO6qwVsSAre', 'jNSP5BgCOs', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(9, 'Leilani Schaden', 'cremin.brad@example.org', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'oyv1y5jDYcaJpS4NgbKPvpqzxTzjewdjVmXRis3AFZg9nu7hvXDiUz6WrMBF', 'WzK3jouJ1C', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(10, 'Ms. Chelsie Considine DDS', 'jimmie.kulas@example.net', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'czJOEp7jd1ixYzO3EbkjRIRdEq7LRhJFcMk2yqZbF1Y5njwS8PmlT4AqHukE', 'aPQyWfTt4q', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(11, 'Giovanni Haag', 'keebler.tara@example.com', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'SnjyrE8YlQftI75cUdFiTSwwXVVZpxk7MY55UvEC1EZvDEUXYPMKAWbJ2gy3', 'Umx9KfSRnR', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(12, 'Prof. Courtney Renner III', 'maggio.lavina@example.org', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'MHIlJ1YJBc318RsP35cdVqcfuuyEwIhmnMHuNZbiBRVRFh1Q6JUZ9pRi7t8P', 'xi2nsKxH4q', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(13, 'Mitchel Crist', 'sboyer@example.org', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'UQse7NXBeh5tXXgnEROrg6enCpj9ZZtnOGQsBBltfDFzKvBfpQL6WKN5XdPk', 'eBAcYICj0D', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(14, 'Mrs. Kirstin Schiller IV', 'bernita79@example.org', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'vYlpZLDDT8cSQq3z8uo5x8fwGyceHSeZPqN1rjVfw5KLXsZl742sn8VgEuzo', 'Scp72K6ASl', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(15, 'Aliza Torphy DDS', 'predovic.margaretta@example.com', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', '7RG65DXUxEl34CvXURQYgOftT1Ho9s1tXI1TnK3NQAPSAvU0Q6DJcQvFiezS', 'WVqdfyfRdg', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(16, 'Dr. Gerson Jerde I', 'celine30@example.com', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'FnOOpuhvAEVLOUT2FT8ZWKWdhSXupF5jRubn3RqrkygRIUyz8Ooh07G7CYzG', 'WRXwe3qEts', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(17, 'Ms. Jennie Marks', 'zula70@example.org', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'TFQEs0lcdtyccCbfcIfccGzOEtoClViCrSxFteohryFvk9C5ybTVsQtdatVe', 'hLUAF3NQtF', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(18, 'Dr. Dante Greenholt', 'nherzog@example.com', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', '4YIJkdyr2RvK9JjO7HSvzkDX1GK1KJDKU4y7mZEh9DLvkex82jB6k2AoiLpa', '4SkupNe4gr', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(19, 'Lynn Funk', 'mitchel88@example.com', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'cY7I7QnTe96mlCUnIX9IMzvupHLaAcptxkUAt2BFWhXW6tuGJMQYDwm6fNOS', 'L1MVkYwZuP', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(20, 'Melvina Orn', 'sydnie00@example.net', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'AZyJIR97CF4a2oOPtk3JORTE1gvujdmHyfAVEWfI4Kq8QV5RciJqMcUKesOu', 'KXafx4wjyh', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(21, 'Camren Gulgowski', 'nkeebler@example.org', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'YZBoL6rIju4ENrcVryaPjpIB4L149aRnFPsnW3SoxgabrdALXJaXI33sjbdf', 'RkffDwJ8Ci', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(22, 'Larissa Zulauf', 'maybelle.dach@example.org', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'hF8IXJQvA5cRljybvCnt8RNcZgapqQEGkOlb3PDcZ3oBK2DJrHWoU0CbXQ8R', 'A2vSndv9EP', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(23, 'Eladio Christiansen', 'callie.rolfson@example.net', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'XScs8nlR1K2bXLQ6nBCCIlcTVe9p2XrZA6Qcr3pAMquP9mN94umXQF4t0Mt1', 'J1UZ0akjGF', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(24, 'Myrl Lueilwitz', 'simone89@example.org', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'LFDB32vcQYu5dw7X1rT3qv8MUmC6bWC0tOET7tfUy8MjBECWhdKEL3AhoSLS', 'M8TOJ77qco', '2019-02-05 19:00:25', '2019-02-05 19:00:25'),
(25, 'Monserrat Hammes', 'witting.irwin@example.org', '$2y$10$/yFkrxus8eLwwlKIJYfLDufnfxFsczdqF9P2NwIeobCg6Os9JA1aW', 'iNc8MfrouasqgR638MEaauAt0iT7r8JQcRHaMTi4Ec8H1lYXjAIZ2jGgJf4d', 'KITO6N7TiS', '2019-02-05 19:00:25', '2019-02-05 19:00:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
