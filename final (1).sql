-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2020 at 03:31 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final`
--

-- --------------------------------------------------------

--
-- Table structure for table `adoptors`
--

CREATE TABLE `adoptors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `scale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adoptors`
--

INSERT INTO `adoptors` (`id`, `name`, `slug`, `address`, `map`, `region_id`, `image`, `mobile`, `telephone`, `fax`, `about`, `facebook`, `twitter`, `instagram`, `website`, `email`, `status`, `scale`, `created_at`, `updated_at`) VALUES
(21, 'LGU-San Lorenzo Ruiz', 'lgu-san-lorenzo-ruiz', 'Municipal Hall, San Lorenzo Ruiz, Camarines Norte', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.7343608353817!2d121.03130761483982!3d14.557177489830142!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c901e26692d5%3A0x7f236427b345ea66!2sEnrique+Zobel+Foundation%2C+Inc.+-+Makati+Head+Office!5e0!3m2!1sen!2sph!4v1552872639752\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 6, 'lgu-san-lorenzo-ruiz-2019-05-06-5ccfc6cf71b82.png', '09399305810', NULL, NULL, '<p>temporayry empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-05 21:31:59', '2019-05-05 21:31:59'),
(22, 'LGU-Iriga', 'lgu-iriga', 'New City Hall of Iriga City, Camarines Sur', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 6, 'lgu-iriga-2019-05-06-5ccfc6f7a7c54.png', '09399305810', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-05 21:32:39', '2019-05-05 21:32:39'),
(23, 'LGU-Aroroy', 'lgu-aroroy', 'Aroroy, Masbate', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7725.776559113009!2d121.05341194702815!3d14.491102332360022!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397cf13a156afc7%3A0x502dc16e7aacd237!2sFood+and+Nutrition+Research+Institute!5e0!3m2!1sen!2sph!4v1557112653873!5m2!1sen!2sph\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 6, 'lgu-aroroy-2019-05-06-5ccfc72a8f6a2.png', '09399305810', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'medium', '2019-05-05 21:33:30', '2019-05-05 21:33:30'),
(24, 'Central Bicol State University of Agriculture', 'central-bicol-state-university-of-agriculture', 'San Jose, Pili Camarines Sur', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 6, 'central-bicol-state-university-of-agriculture-2019-05-06-5ccfc758b6cd5.png', '09399305810', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-05 21:34:16', '2019-05-05 21:34:16'),
(25, 'LGU-Capiz', 'lgu-capiz', 'Huge St., Roxas City', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 7, 'lgu-capiz-2019-05-06-5ccfc7e31f0b3.png', '9162524647', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-05 21:36:35', '2019-05-05 21:36:35'),
(26, 'University of Antique', 'university-of-antique', 'Mayor Santiago A. Lotilla St., Sibalom, Antique', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 7, 'university-of-antique-2019-05-06-5ccfc81713a51.png', '09175758653', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-05 21:37:27', '2019-05-05 21:37:27'),
(27, 'LGU-Cabatuan, Iloilo', 'lgu-cabatuan-iloilo', 'Brgy. Tigbauan Road, Cabatuan, Iloilo', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7725.776559113009!2d121.05341194702815!3d14.491102332360022!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397cf13a156afc7%3A0x502dc16e7aacd237!2sFood+and+Nutrition+Research+Institute!5e0!3m2!1sen!2sph!4v1557112653873!5m2!1sen!2sph\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 7, 'lgu-cabatuan-iloilo-2019-05-06-5ccfc8ff48cfe.png', '09951954194', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-05 21:41:19', '2019-05-05 21:41:19'),
(28, 'Negrense Volunteer for Change Foundation, Inc.', 'negrense-volunteer-for-change-foundation-inc', 'Room 208, VSB Bldg., 6th Lacson St., Bacolod City', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 7, 'negrense-volunteer-for-change-foundation-inc-2019-05-06-5ccfc92d2754c.png', '09997731083', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-05 21:42:05', '2019-05-05 21:42:05'),
(29, 'LGU-Bayawan', 'lgu-bayawan', 'Poblacion, Bayawan City, Negros Oriental', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7725.776559113009!2d121.05341194702815!3d14.491102332360022!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397cf13a156afc7%3A0x502dc16e7aacd237!2sFood+and+Nutrition+Research+Institute!5e0!3m2!1sen!2sph!4v1557112653873!5m2!1sen!2sph\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 8, 'lgu-bayawan-2019-05-06-5ccfc9599bfc6.png', '09298836329', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-05 21:42:49', '2019-05-05 21:42:49'),
(30, 'LGU-Catarman', 'lgu-catarman', 'Municipal Building, Catarman, Northern Samar', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 9, 'lgu-catarman-2019-05-06-5ccfcd9e25cad.png', '09981925126', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-05 22:01:02', '2019-05-05 22:01:02'),
(31, 'LGU-Palo', 'lgu-palo', 'Brgy. Pawing, Palo, Leyte', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 9, 'lgu-palo-2019-05-06-5ccfcdce95f23.png', '09494291878', NULL, NULL, 'temporary empty', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-05 22:01:50', '2019-05-05 22:01:50'),
(32, 'LGU-Baybay', 'lgu-baybay', 'Baybay, Leyte', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 9, 'lgu-baybay-2019-05-06-5ccfcdfeaef6c.png', '09178084643', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-05 22:02:38', '2019-05-05 22:02:38'),
(33, 'LGU-Tungawan', 'lgu-tungawan', 'Poblacion Tungawan, Zamboanga Sibugay', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7725.776559113009!2d121.05341194702815!3d14.491102332360022!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397cf13a156afc7%3A0x502dc16e7aacd237!2sFood+and+Nutrition+Research+Institute!5e0!3m2!1sen!2sph!4v1557112653873!5m2!1sen!2sph\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 10, 'lgu-tungawan-2019-05-06-5ccfce2ca4cc3.png', '09187066762', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-05 22:03:24', '2019-05-05 22:03:24'),
(34, 'Xavier University', 'xavier-university', 'Cagayan de Oro City', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7725.776559113009!2d121.05341194702815!3d14.491102332360022!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397cf13a156afc7%3A0x502dc16e7aacd237!2sFood+and+Nutrition+Research+Institute!5e0!3m2!1sen!2sph!4v1557112653873!5m2!1sen!2sph\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 11, 'xavier-university-2019-05-06-5ccfce5216225.png', '09293596782', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-05 22:04:02', '2019-05-05 22:04:02'),
(35, 'Mindanao University of Science and Technology', 'mindanao-university-of-science-and-technology', 'Cagayan de Oro City', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.7343608353817!2d121.03130761483982!3d14.557177489830142!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c901e26692d5%3A0x7f236427b345ea66!2sEnrique+Zobel+Foundation%2C+Inc.+-+Makati+Head+Office!5e0!3m2!1sen!2sph!4v1552872639752\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 11, 'mindanao-university-of-science-and-technology-2019-05-06-5ccfce7db0206.png', '09103379399', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-05 22:04:45', '2019-05-05 22:04:45'),
(36, 'LGU-Ozamiz', 'lgu-ozamiz', 'Ozamiz City, Misamis Occidental', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 11, 'lgu-ozamiz-2019-05-06-5ccfceab7b8db.png', '09204836768', NULL, NULL, '<p>temporary emtpty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'medium', '2019-05-05 22:05:31', '2019-05-05 22:05:31'),
(37, 'Davao Del Norte State College', 'davao-del-norte-state-college', 'New Visayas, Panabo City, Davao Del Norte', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.7343608353817!2d121.03130761483982!3d14.557177489830142!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c901e26692d5%3A0x7f236427b345ea66!2sEnrique+Zobel+Foundation%2C+Inc.+-+Makati+Head+Office!5e0!3m2!1sen!2sph!4v1552872639752\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 11, 'davao-del-norte-state-college-2019-05-06-5ccfceddd822e.png', '09066318688', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'medium', '2019-05-05 22:06:22', '2019-05-05 22:06:22'),
(38, 'Sultan Kudarat State University, Regional Communal Food Processing Center', 'sultan-kudarat-state-university-regional-communal-food-processing-center', 'Access, EJC Montilla, Tacurong City', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.7343608353817!2d121.03130761483982!3d14.557177489830142!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c901e26692d5%3A0x7f236427b345ea66!2sEnrique+Zobel+Foundation%2C+Inc.+-+Makati+Head+Office!5e0!3m2!1sen!2sph!4v1552872639752\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 17, 'sultan-kudarat-state-university-regional-communal-food-processing-center-2019-05-06-5ccfcf5f90c80.png', '9999999996', '0642013175', NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'medium', '2019-05-05 22:08:31', '2019-05-05 22:08:31'),
(39, 'LGU-Kidapawan', 'lgu-kidapawan', 'Kidapawan City, North Cotabato', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 17, 'lgu-kidapawan-2019-05-06-5ccfcf966b5c9.png', '09228190918', NULL, NULL, 'temporary empty', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'medium', '2019-05-05 22:09:26', '2019-05-05 22:09:26'),
(40, 'LGU-Guigaquit', 'lgu-guigaquit', 'Guigaquit, Surigao de Norte', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7725.776559113009!2d121.05341194702815!3d14.491102332360022!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397cf13a156afc7%3A0x502dc16e7aacd237!2sFood+and+Nutrition+Research+Institute!5e0!3m2!1sen!2sph!4v1557112653873!5m2!1sen!2sph\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 17, 'lgu-guigaquit-2019-05-06-5ccfcfc3c1852.png', '09351388605', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'small', '2019-05-05 22:10:12', '2019-05-05 22:10:12'),
(41, 'Mamagayon People\'s Organization', 'mamagayon-peoples-organization', 'Brgy. Manungkaling, Mamasapano, Maguindanao', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7725.776559113009!2d121.05341194702815!3d14.491102332360022!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397cf13a156afc7%3A0x502dc16e7aacd237!2sFood+and+Nutrition+Research+Institute!5e0!3m2!1sen!2sph!4v1557112653873!5m2!1sen!2sph\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 12, 'mamagayon-peoples-organization-2019-05-06-5ccfcfee74a00.png', '09328438989', NULL, NULL, '<p>temporary empty</p>', NULL, NULL, NULL, NULL, 'temporaryEmail@gmail.com', 1, 'medium', '2019-05-05 22:10:54', '2019-05-05 22:10:54'),
(42, 'Food and Nutrition Research Institute', 'food-and-nutrition-research-institute', 'Dost Compound General Santos Ave, Taguig, 1630 Metro Manila', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d10847.373403452862!2d120.40515918362674!3d16.006973529395644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBrgy.+Malanay%2C+Sta.+Barbara%2C+Pangasinan!5e0!3m2!1sen!2sph!4v1552628609988\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 13, 'food-and-nutrition-research-institute-2019-09-05-5d70b12e05a38.png', '000000000000', NULL, NULL, '<p><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 16px; text-align: justify; background-color: #f2f2f2;\">he Department of Science and Technology-Food and Nutrition Research Institute (DOST-FNRI) stood proud in this year&rsquo;s gathering of the country&rsquo;s best and brightest scientific minds as the PDRI 2015: Philippine Dietary Reference Intakes bagged the 2019 Outstanding Book Award given by the National Academy of Science and Technology, Philippines (NAST PHL). NAST PHL conferred the award on the second day of the 41st Annual Scientific Meeting (ASM), July 11, 2019, at the EDSA Shangri-La Hotel in Ortigas, Mandaluyong City, in the presence of National Scientists, Academicians, several up-and-coming scientists, and top science administrators and movers in the country.</span></p>', NULL, NULL, NULL, 'www.fnri.dost.gov.ph', 'mas@fnri.dost.gov.p', 1, 'large', '2019-09-04 22:32:58', '2019-09-04 22:54:38'),
(43, 'E. ZOBEL FOUNDATION, INC.', 'e-zobel-foundation-inc', 'Real, Calatagan, Batangas', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3873.386292652773!2d120.66509441483183!3d13.875835390267266!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bdbba9e08e6859%3A0xe28b96f7300737e7!2sReal%2C%20Calatagan%2C%20Batangas!5e0!3m2!1sen!2sph!4v1583223960498!5m2!1sen!2sph\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 5, 'e-zobel-foundation-inc-samahan-ng-mga-inang-gabay-at-lakas-ng-aktibong-komunidad-sigla-2020-03-03-5e5e16dd561b1.jpg', '09175777044', NULL, NULL, '<p class=\"MsoNormal\" style=\"margin-left: 0cm;\"><span lang=\"EN-US\" style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\';\">The Samahan ng mga Inang Gabay at Lakas ng Aktibong Komunidad or known as SIGLA is a community organization composed of financially challenged mothers from a rural, poor community of sugarcane farmers of Brgy. Real, Calatagan, Batangas. They are one of the livelihood projects of the E. Zobel Foundation, Inc. &ndash; a non stock, non-profit private organization.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 0cm;\"><span lang=\"EN-US\" style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'MS Mincho\'; mso-fareast-language: JA;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 0cm;\"><span lang=\"EN-US\" style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\';\">The SIGLA is one of the adaptors of the technology on complementary food and snacks by the Food and Nutrition Research Institute of the Department of Science and Technology (DOST-FNRI). This technology was part of the Malnutrition Reduction Program of the DOST-FNRI to eradicate malnutrition.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 0cm;\"><span lang=\"EN-US\" style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'MS Mincho\'; mso-fareast-language: JA;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 0cm;\"><span lang=\"EN-US\" style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\';\">The SIGLA was committed in producing complementary food and snacks. They are producing two kinds of products: the SIGLA Crunchies and SIGLA Complementary Food Blend. The SIGLA Crunchies is a snack made from grinded rice and mongo. The SIGLA Crunchies is a best substitute for junk food for it&rsquo;s a great source of energy for children. The SIGLA Complementary Food Blend is a powdered mixture made from grinded rice, mongo, and sesame. This food blend can be served as a soup or can be mixed to recipe as it gives makes the food more palatable. It can also be used as a base for other products like pulvoron, meatballs, fishballs etc.</span></p>', NULL, NULL, NULL, NULL, 'notavailable@gmail.com', 1, 'medium', '2020-03-03 08:35:41', '2020-03-11 05:35:37'),
(44, 'Local Government Unit of Calauag', 'local-government-unit-of-calauag', 'Calauag Livelihood Center, Calauag, Quezon', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3872.0193438446063!2d122.28612541483282!3d13.957453890214666!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33a2865d611de51f%3A0xf31a78b40ece4cec!2sCalauag%20Livelihood%20Center!5e0!3m2!1sen!2sph!4v1583977239039!5m2!1sen!2sph\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 5, 'local-government-unit-of-calauag-2020-03-12-5e69933908a5f.png', '09985757163', '0427177129', NULL, '<p class=\"MsoNormal\" style=\"margin-left: 36.0pt; text-indent: .75pt;\"><span lang=\"EN-US\" style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\';\">The establishment of a community-based food processing plant in Calauag for complementary food production was initiated by the LGU with the cooperation of the National Association of Calauagenians (NACS). Through the initiative of FNRI Director Dr. Mario V. Capanzana, the municipality of Calauag was identified as one of the beneficiaries of DOST-FNRI project entitled &ldquo;Roll Out of the FNRI-Developed Complementary/ Snack Foods in the Regions&rdquo;.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 36.0pt; text-indent: .75pt;\"><span lang=\"EN-US\" style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 36.0pt; text-indent: .75pt;\"><span lang=\"EN-US\" style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\';\">The complementary food production facility is temporarily one of the rooms of the Calauag Livelihood Center and was officially launched last July 30, 2013.The insumix, labeled as &ldquo;LSV Mix&rdquo;, had its initial production of 340 packs (30g/pack) last October 29, 2013.Production is intermittent since it depends on the availability of the stocked finished products.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 36.0pt; text-indent: .75pt;\"><span lang=\"EN-US\" style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 36.0pt; text-indent: .75pt;\"><span lang=\"EN-US\" style=\"font-size: 12.0pt; font-family: \'Segoe UI\',\'sans-serif\';\">At present, the insumix is provided for free for the targeted malnourished participants in the barangays; however, an ordinance on LSV Mix to be sold commercially is still being processed. Also, the LGU is currently proposing a permanent processing center and implementation is still undetermined.</span></p>', NULL, NULL, NULL, NULL, 'notavailablelgucaluag@gmail.com', 1, 'medium', '2020-03-12 01:41:13', '2020-03-12 01:41:13');

-- --------------------------------------------------------

--
-- Table structure for table `adoptor_equipment`
--

CREATE TABLE `adoptor_equipment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adoptor_id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `problem` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adoptor_equipment`
--

INSERT INTO `adoptor_equipment` (`id`, `adoptor_id`, `equipment_id`, `problem`, `status`, `created_at`, `updated_at`) VALUES
(29, 21, 12, NULL, 1, '2019-05-05 21:31:59', '2019-05-05 21:31:59'),
(30, 22, 16, NULL, 1, '2019-05-05 21:32:39', '2019-05-05 21:32:39'),
(31, 23, 13, NULL, 1, '2019-05-05 21:33:30', '2019-05-05 21:33:30'),
(32, 24, 16, NULL, 1, '2019-05-05 21:34:16', '2019-05-05 21:34:16'),
(33, 25, 13, NULL, 1, '2019-05-05 21:36:35', '2019-05-05 21:36:35'),
(34, 26, 12, NULL, 1, '2019-05-05 21:37:27', '2019-05-05 21:37:27'),
(35, 27, 12, NULL, 1, '2019-05-05 21:41:19', '2019-05-05 21:41:19'),
(36, 28, 13, NULL, 1, '2019-05-05 21:42:05', '2019-05-05 21:42:05'),
(37, 29, 12, NULL, 1, '2019-05-05 21:42:49', '2019-05-05 21:42:49'),
(38, 30, 12, NULL, 1, '2019-05-05 22:01:02', '2019-05-05 22:01:02'),
(39, 31, 12, NULL, 1, '2019-05-05 22:01:50', '2019-05-05 22:01:50'),
(40, 32, 12, NULL, 1, '2019-05-05 22:02:38', '2019-05-05 22:02:38'),
(41, 33, 12, NULL, 1, '2019-05-05 22:03:24', '2019-05-05 22:03:24'),
(42, 34, 12, NULL, 1, '2019-05-05 22:04:02', '2019-05-05 22:04:02'),
(43, 35, 12, NULL, 1, '2019-05-05 22:04:45', '2019-05-05 22:04:45'),
(44, 36, 13, NULL, 1, '2019-05-05 22:05:31', '2019-05-05 22:05:31'),
(45, 37, 12, NULL, 1, '2019-05-05 22:06:22', '2019-05-05 22:06:22'),
(46, 38, 12, NULL, 1, '2019-05-05 22:08:31', '2019-05-05 22:08:31'),
(47, 39, 16, NULL, 1, '2019-05-05 22:09:26', '2019-05-05 22:09:26'),
(48, 40, 16, NULL, 1, '2019-05-05 22:10:12', '2019-05-05 22:10:12'),
(49, 41, 12, NULL, 1, '2019-05-05 22:10:54', '2019-05-05 22:10:54'),
(60, 42, 12, NULL, 1, '2019-09-04 22:32:58', '2019-09-04 22:32:58'),
(61, 42, 13, NULL, 1, '2019-09-04 22:32:58', '2019-09-04 22:32:58'),
(62, 42, 14, NULL, 1, '2019-09-04 22:32:58', '2019-09-04 22:32:58'),
(63, 42, 15, NULL, 1, '2019-09-04 22:32:58', '2019-09-04 22:32:58'),
(64, 42, 16, NULL, 1, '2019-09-04 22:32:58', '2019-09-04 22:32:58'),
(65, 42, 17, NULL, 1, '2019-09-04 22:32:58', '2019-09-04 22:32:58'),
(66, 43, 12, NULL, 1, '2020-03-03 08:35:41', '2020-03-03 08:35:41'),
(67, 43, 18, NULL, 1, '2020-03-03 08:35:41', '2020-03-03 08:35:41'),
(68, 43, 20, NULL, 1, '2020-03-03 08:35:41', '2020-03-03 08:35:41'),
(69, 43, 21, 'electric problem', 0, '2020-03-03 08:35:41', '2020-03-03 08:35:41'),
(70, 43, 22, NULL, 1, '2020-03-03 08:35:41', '2020-03-03 08:35:41'),
(71, 43, 24, 'For repair (electrical connection)', 0, '2020-03-03 08:35:41', '2020-03-03 08:35:41'),
(72, 43, 25, NULL, 1, '2020-03-03 08:35:41', '2020-03-03 08:35:41'),
(73, 43, 26, NULL, 1, '2020-03-03 08:35:41', '2020-03-03 08:35:41'),
(74, 43, 27, 'Unavailability of parts for maintenance', 0, '2020-03-03 08:35:41', '2020-03-03 08:35:41'),
(75, 43, 28, 'For re-calibration and electrical line maintenance', 0, '2020-03-03 08:35:41', '2020-03-03 08:35:41'),
(76, 43, 30, NULL, 1, '2020-03-03 08:35:41', '2020-03-03 08:35:41'),
(77, 43, 32, NULL, 1, '2020-03-03 08:35:41', '2020-03-03 08:35:41'),
(78, 44, 12, NULL, 1, '2020-03-12 01:41:13', '2020-03-12 01:41:13'),
(79, 44, 16, NULL, 1, '2020-03-12 01:41:13', '2020-03-12 01:41:13'),
(80, 44, 17, NULL, 1, '2020-03-12 01:41:13', '2020-03-12 01:41:13'),
(81, 44, 26, NULL, 1, '2020-03-12 01:41:13', '2020-03-12 01:41:13'),
(82, 44, 27, NULL, 1, '2020-03-12 01:41:13', '2020-03-12 01:41:13'),
(83, 44, 28, NULL, 1, '2020-03-12 01:41:13', '2020-03-12 01:41:13');

-- --------------------------------------------------------

--
-- Table structure for table `adoptor_product`
--

CREATE TABLE `adoptor_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adoptor_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adoptor_product`
--

INSERT INTO `adoptor_product` (`id`, `adoptor_id`, `product_id`, `note`, `status`, `created_at`, `updated_at`) VALUES
(22, 21, 10, NULL, 1, '2019-05-05 21:31:59', '2019-05-05 21:31:59'),
(23, 22, 14, NULL, 1, '2019-05-05 21:32:39', '2019-05-05 21:32:39'),
(24, 23, 10, NULL, 1, '2019-05-05 21:33:30', '2019-05-05 21:33:30'),
(25, 24, 14, NULL, 1, '2019-05-05 21:34:17', '2019-05-05 21:34:17'),
(26, 25, 10, NULL, 1, '2019-05-05 21:36:35', '2019-05-05 21:36:35'),
(27, 26, 10, NULL, 1, '2019-05-05 21:37:27', '2019-05-05 21:37:27'),
(28, 27, 10, NULL, 1, '2019-05-05 21:41:19', '2019-05-05 21:41:19'),
(29, 28, 24, NULL, 1, '2019-05-05 21:42:05', '2019-05-05 21:42:05'),
(30, 29, 10, NULL, 1, '2019-05-05 21:42:49', '2019-05-05 21:42:49'),
(31, 30, 10, NULL, 1, '2019-05-05 22:01:02', '2019-05-05 22:01:02'),
(32, 31, 11, NULL, 1, '2019-05-05 22:01:50', '2019-05-05 22:01:50'),
(33, 32, 11, NULL, 1, '2019-05-05 22:02:38', '2019-05-05 22:02:38'),
(34, 33, 11, NULL, 1, '2019-05-05 22:03:24', '2019-05-05 22:03:24'),
(35, 34, 14, NULL, 1, '2019-05-05 22:04:02', '2019-05-05 22:04:02'),
(36, 35, 16, NULL, 1, '2019-05-05 22:04:45', '2019-05-05 22:04:45'),
(37, 36, 12, NULL, 1, '2019-05-05 22:05:31', '2019-05-05 22:05:31'),
(38, 37, 10, NULL, 1, '2019-05-05 22:06:22', '2019-05-05 22:06:22'),
(39, 38, 10, NULL, 1, '2019-05-05 22:08:31', '2019-05-05 22:08:31'),
(40, 39, 10, NULL, 1, '2019-05-05 22:09:26', '2019-05-05 22:09:26'),
(41, 40, 11, NULL, 1, '2019-05-05 22:10:12', '2019-05-05 22:10:12'),
(42, 41, 10, NULL, 1, '2019-05-05 22:10:54', '2019-05-05 22:10:54'),
(64, 42, 14, NULL, 1, '2019-09-04 22:32:58', '2019-09-04 22:32:58'),
(65, 42, 15, NULL, 1, '2019-09-04 22:32:58', '2019-09-04 22:32:58'),
(66, 42, 16, NULL, 1, '2019-09-04 22:32:58', '2019-09-04 22:32:58'),
(67, 42, 17, NULL, 1, '2019-09-04 22:32:58', '2019-09-04 22:32:58'),
(68, 43, 15, NULL, 1, '2020-03-03 08:35:41', '2020-03-03 08:35:41'),
(69, 43, 17, NULL, 1, '2020-03-03 08:35:41', '2020-03-03 08:35:41'),
(70, 44, 14, NULL, 1, '2020-03-12 01:41:13', '2020-03-12 01:41:13'),
(71, 44, 15, NULL, 1, '2020-03-12 01:41:13', '2020-03-12 01:41:13'),
(72, 44, 16, NULL, 1, '2020-03-12 01:41:13', '2020-03-12 01:41:13'),
(73, 44, 17, NULL, 1, '2020-03-12 01:41:13', '2020-03-12 01:41:13');

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
(10, 2, 14, 'Rice', 'rice-2019-08-13-5d526939741fb.png', 'Description here', '324', '10', '1', '10', '8', NULL, '2019-08-12 23:37:02', '2019-08-22 16:36:52'),
(11, 2, 15, 'RIMO', 'rimo-2019-08-20-5d5b5a8c3a39e.png', 'Description here', '32', '7', '77', '539', '8', NULL, '2019-08-19 18:27:24', '2019-08-28 16:46:39'),
(12, 3, 15, 'sample Prod', 'sample-prod-2019-08-28-5d663c6a620e1.png', 'Description here', '324', '7', '1.5', '11', '8', NULL, '2019-08-28 00:33:46', '2019-08-28 00:33:46'),
(13, 2, 16, 'product3', 'product3-2019-08-29-5d6720a9217a2.png', 'Description here', '324', '7', '1.5', '11', '8', NULL, '2019-08-28 16:47:37', '2019-08-28 16:47:37'),
(14, 2, 17, 'product4', 'product4-2019-08-29-5d6720b9e9da9.png', 'Description here', '324', '7', '1.5', '11', '8', NULL, '2019-08-28 16:47:54', '2019-08-28 16:47:54'),
(15, 3, 16, 'produc5', 'produc5-2019-08-29-5d67232eb08e7.png', 'Description here', '2', '7', '11', '77', '8', NULL, '2019-08-28 16:58:22', '2019-08-28 17:09:20'),
(16, 3, 14, 'rice mongo', 'rice-mongo-2019-08-29-5d6725da705fc.png', 'Description here', '324', '7', '1.5', '11', '10', NULL, '2019-08-28 17:09:46', '2019-08-28 17:09:46'),
(17, 3, 17, 'prod4', 'prod4-2019-08-29-5d6725ed6a9e6.jpg', 'Description here', '324', '7', '1.5', '11', '8', NULL, '2019-08-28 17:10:05', '2019-08-28 17:10:05'),
(18, 43, 15, 'SIGLA Crunchies', 'sigla-crunchies-2020-03-09-5e6599ac52cb1.jpg', 'Brand Name		:	SIGLA Crunchies\r\n\r\nNature of Product	:	Complementary Food and Snacks\r\n\r\nIngredients		: 	Rice, Mongo, Flavoring\r\n\r\nNet weight/Volume	: 	15g/30g\r\n\r\nLot Identification	: 	 YY/MM/DD/Production no.\r\n\r\nColor/Appearance	:	Golden Brown\r\n\r\nTaste/Aroma		: 	Barbeque Flavor/Cheese\r\n\r\nPackaging		: 	Polyethylene Plastic\r\n\r\nStorage Condition	:	Dry room temperature with 24°C to 27°C\r\n\r\nShelf Life		: 	4 months', '15', '7', '0', '0', NULL, NULL, '2020-03-09 01:19:41', '2020-03-09 01:20:46');

-- --------------------------------------------------------

--
-- Table structure for table `adoptor_raw_material`
--

CREATE TABLE `adoptor_raw_material` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adoptor_id` int(11) NOT NULL,
  `raw_material_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `old_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(13, 'App\\User', 1, 'created', 'App\\User', 4, '[]', '{\"name\":\"e.zobel\",\"username\":\"e.zobel\",\"email\":\"e.zobel@gmail.com\",\"password\":\"$2y$10$e\\/VfC1YXz1vkDJvRDEClRuaqhAg2wG57JqDqbEBDEyIMO6aHjTTBG\",\"adoptor_id\":\"43\",\"image\":\"ezobel-2020-03-03-5e5e17222af35.jpg\",\"status\":\"1\",\"id\":4}', 'http://127.0.0.1:8000/admin/user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', NULL, '2020-03-03 08:36:50', '2020-03-03 08:36:50'),
(14, 'App\\User', 1, 'updated', 'App\\User', 4, '{\"name\":\"e.zobel\",\"password\":\"$2y$10$e\\/VfC1YXz1vkDJvRDEClRuaqhAg2wG57JqDqbEBDEyIMO6aHjTTBG\"}', '{\"name\":\"E. ZOBEL FOUNDATION, INC.\",\"password\":\"$2y$10$O07e2xGfFEZqY8PYKcJP\\/.SjDlGa6OuNx5K6Uqlvt7s1po0k.KMw.\"}', 'http://127.0.0.1:8000/admin/user/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', NULL, '2020-03-03 08:37:25', '2020-03-03 08:37:25'),
(15, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"remember_token\":\"VgVt8bQEUtguVKArGWVJ4bTNuFc09ufKD8WAlQ6Ky3dIexnxZAtH9X3sxs4g\"}', '{\"remember_token\":\"RtSxzXbcP5HwhP8Nrt9Q5ofi9s06VjLrp9KPwhO9Hc2CCvPLFNaUPQmkshJN\"}', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', NULL, '2020-03-03 08:37:33', '2020-03-03 08:37:33'),
(16, 'App\\User', 4, 'created', 'App\\Forum', 5, '[]', '{\"user_id\":4,\"title\":\"Odit necessitatibus ea sit dignissimos possimus.\",\"slug\":\"odit-necessitatibus-ea-sit-dignissimos-possimus\",\"body\":\"Ricedsadsadsadsad\",\"view\":0,\"status\":0,\"image\":\"odit-necessitatibus-ea-sit-dignissimos-possimus-2020-03-03-5e5e1bd57d795.jpg\",\"id\":5}', 'http://127.0.0.1:8000/user/forum', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', NULL, '2020-03-03 08:56:53', '2020-03-03 08:56:53'),
(17, 'App\\User', 4, 'created', 'App\\RawMaterial', 5, '[]', '{\"adoptor_id\":43,\"name\":\"1\",\"extension\":\"kg\",\"note\":\"N\\/A\",\"quantity\":\"2\",\"expirationDate\":\"2020-04-18\",\"id\":5}', 'http://127.0.0.1:8000/user/rawMaterial', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-09 06:53:22', '2020-03-09 06:53:22'),
(18, 'App\\User', 4, 'updated', 'App\\RawMaterial', 5, '{\"quantity\":2}', '{\"quantity\":1}', 'http://127.0.0.1:8000/user/RawMaterialUsed', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-09 07:03:41', '2020-03-09 07:03:41'),
(19, 'App\\User', 4, 'created', 'App\\Sale', 3, '[]', '{\"adoptor_id\":43,\"production_id\":\"17\",\"product_id\":15,\"description\":null,\"quantity\":\"2\",\"price\":\"7\",\"total\":14,\"status\":\"Purchase\",\"client_id\":\"15\",\"id\":3}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-09 07:10:41', '2020-03-09 07:10:41'),
(20, 'App\\User', 4, 'created', 'App\\Sale', 4, '[]', '{\"adoptor_id\":43,\"production_id\":\"17\",\"product_id\":15,\"description\":\"for testing purpose only\",\"quantity\":\"1\",\"price\":\"7\",\"total\":7,\"status\":\"Purchase\",\"client_id\":\"6\",\"id\":4}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-11 00:50:52', '2020-03-11 00:50:52'),
(21, 'App\\User', 4, 'created', 'App\\Forum', 6, '[]', '{\"user_id\":4,\"title\":\"requesting for maintenancepurpose purpose purpose\",\"slug\":\"requesting-for-maintenancepurpose-purpose-purpose\",\"body\":\"purpose purpose purpose\",\"view\":0,\"status\":0,\"image\":\"requesting-for-maintenancepurpose-purpose-purpose-2020-03-11-5e683965acdc6.jpg\",\"id\":6}', 'http://127.0.0.1:8000/user/forum', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-11 01:05:43', '2020-03-11 01:05:43'),
(22, 'App\\User', 4, 'created', 'App\\Forum', 7, '[]', '{\"user_id\":4,\"title\":\"dsadsadsadsadsadsa\",\"slug\":\"dsadsadsadsadsadsa\",\"body\":\"dsadsadapurpose purpose purpose purpose\",\"view\":0,\"status\":0,\"image\":\"dsadsadsadsadsadsa-2020-03-11-5e6839dec2680.jpg\",\"id\":7}', 'http://127.0.0.1:8000/user/forum', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-11 01:07:44', '2020-03-11 01:07:44'),
(23, 'App\\User', 1, 'updated', 'App\\Forum', 5, '{\"status\":0}', '{\"status\":\"1\"}', 'http://127.0.0.1:8000/admin/approvePost/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-11 01:33:40', '2020-03-11 01:33:40'),
(24, 'App\\User', 1, 'updated', 'App\\Forum', 6, '{\"status\":0}', '{\"status\":\"1\"}', 'http://127.0.0.1:8000/admin/approvePost/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-11 01:34:15', '2020-03-11 01:34:15'),
(25, 'App\\User', 1, 'updated', 'App\\Forum', 7, '{\"status\":0}', '{\"status\":\"1\"}', 'http://127.0.0.1:8000/admin/approvePost/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-11 01:34:18', '2020-03-11 01:34:18'),
(26, 'App\\User', 1, 'created', 'App\\Comment', 25, '[]', '{\"forum_id\":\"7\",\"user_id\":1,\"comment\":\"dsadsad\",\"id\":25}', 'http://127.0.0.1:8000/admin/comment', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-11 01:34:44', '2020-03-11 01:34:44'),
(27, 'App\\User', 1, 'created', 'App\\Comment', 26, '[]', '{\"forum_id\":\"7\",\"user_id\":1,\"comment\":\"ds\",\"id\":26}', 'http://127.0.0.1:8000/admin/comment', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-11 02:01:00', '2020-03-11 02:01:00'),
(28, 'App\\User', 1, 'deleted', 'App\\Comment', 26, '{\"id\":26,\"forum_id\":7,\"user_id\":1,\"comment\":\"ds\"}', '[]', 'http://127.0.0.1:8000/admin/comment/26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-11 02:02:24', '2020-03-11 02:02:24'),
(29, 'App\\User', 1, 'created', 'App\\Comment', 27, '[]', '{\"forum_id\":\"7\",\"user_id\":1,\"comment\":\"ds\",\"id\":27}', 'http://127.0.0.1:8000/admin/comment', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-11 02:02:29', '2020-03-11 02:02:29'),
(30, 'App\\User', 1, 'updated', 'App\\Product', 14, '{\"image\":\"rice-mongo-instant-2019-05-06-5ccf9d4c90aa0.png\"}', '{\"image\":\"rice-mongo-instant-2020-03-11-5e684763f1e65.png\"}', 'http://127.0.0.1:8000/admin/product/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-11 02:05:24', '2020-03-11 02:05:24'),
(31, 'App\\User', 1, 'updated', 'App\\Product', 14, '{\"name\":\"Rice-mongo instant\",\"slug\":\"rice-mongo-instant\"}', '{\"name\":\"Rice-mongo instant blend\",\"slug\":\"rice-mongo-instant-blend\"}', 'http://127.0.0.1:8000/admin/product/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-11 02:09:40', '2020-03-11 02:09:40'),
(32, 'App\\User', 1, 'updated', 'App\\Product', 15, '{\"image\":\"ready-to-cook-blend-2019-05-06-5ccf9cacb8189.png\"}', '{\"image\":\"ready-to-cook-blend-2020-03-11-5e6848d7e061e.png\"}', 'http://127.0.0.1:8000/admin/product/15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-11 02:11:36', '2020-03-11 02:11:36'),
(33, 'App\\User', 4, 'updated', 'App\\RawMaterial', 5, '{\"quantity\":1}', '{\"quantity\":0}', 'http://127.0.0.1:8000/user/RawMaterialUsed', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:03:23', '2020-03-12 01:03:23'),
(34, 'App\\User', 4, 'created', 'App\\Sale', 5, '[]', '{\"adoptor_id\":43,\"production_id\":\"18\",\"product_id\":15,\"description\":null,\"quantity\":\"50\",\"price\":\"15\",\"total\":750,\"status\":\"Purchase\",\"client_id\":\"4\",\"id\":5}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:04:49', '2020-03-12 01:04:49'),
(35, 'App\\User', 4, 'created', 'App\\Sale', 6, '[]', '{\"adoptor_id\":43,\"production_id\":\"18\",\"product_id\":15,\"description\":null,\"quantity\":\"50\",\"price\":\"15\",\"total\":750,\"status\":\"Purchase\",\"client_id\":\"7\",\"id\":6}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:05:01', '2020-03-12 01:05:01'),
(36, 'App\\User', 4, 'created', 'App\\Sale', 7, '[]', '{\"adoptor_id\":43,\"production_id\":\"18\",\"product_id\":15,\"description\":null,\"quantity\":\"100\",\"price\":\"15\",\"total\":1500,\"status\":\"Purchase\",\"client_id\":\"8\",\"id\":7}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:05:12', '2020-03-12 01:05:12'),
(37, 'App\\User', 4, 'created', 'App\\Sale', 8, '[]', '{\"adoptor_id\":43,\"production_id\":\"18\",\"product_id\":15,\"description\":null,\"quantity\":\"100\",\"price\":\"15\",\"total\":1500,\"status\":\"Purchase\",\"client_id\":\"4\",\"id\":8}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:05:28', '2020-03-12 01:05:28'),
(38, 'App\\User', 4, 'created', 'App\\Sale', 9, '[]', '{\"adoptor_id\":43,\"production_id\":\"18\",\"product_id\":15,\"description\":null,\"quantity\":\"250\",\"price\":\"15\",\"total\":3750,\"status\":\"Purchase\",\"client_id\":\"24\",\"id\":9}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:05:41', '2020-03-12 01:05:41'),
(39, 'App\\User', 4, 'created', 'App\\Sale', 10, '[]', '{\"adoptor_id\":43,\"production_id\":\"18\",\"product_id\":15,\"description\":null,\"quantity\":\"100\",\"price\":\"15\",\"total\":1500,\"status\":\"Purchase\",\"client_id\":\"4\",\"id\":10}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:05:59', '2020-03-12 01:05:59'),
(40, 'App\\User', 4, 'updated', 'App\\Sale', 6, '{\"quantity\":50,\"total\":750}', '{\"quantity\":\"500\",\"total\":7500}', 'http://127.0.0.1:8000/user/sale/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:09:02', '2020-03-12 01:09:02'),
(41, 'App\\User', 4, 'updated', 'App\\Sale', 5, '{\"quantity\":50,\"total\":750}', '{\"quantity\":\"500\",\"total\":7500}', 'http://127.0.0.1:8000/user/sale/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:09:27', '2020-03-12 01:09:27'),
(42, 'App\\User', 4, 'updated', 'App\\Sale', 6, '{\"quantity\":500,\"total\":7500}', '{\"quantity\":\"50\",\"total\":750}', 'http://127.0.0.1:8000/user/sale/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:10:05', '2020-03-12 01:10:05'),
(43, 'App\\User', 4, 'updated', 'App\\Sale', 5, '{\"quantity\":500,\"total\":7500}', '{\"quantity\":\"50\",\"total\":750}', 'http://127.0.0.1:8000/user/sale/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:10:10', '2020-03-12 01:10:10'),
(44, 'App\\User', 4, 'updated', 'App\\Sale', 3, '{\"quantity\":2,\"price\":7,\"total\":14}', '{\"quantity\":\"200\",\"price\":\"15\",\"total\":3000}', 'http://127.0.0.1:8000/user/sale/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:10:18', '2020-03-12 01:10:18'),
(45, 'App\\User', 4, 'updated', 'App\\Sale', 4, '{\"quantity\":1,\"price\":7,\"total\":7}', '{\"quantity\":\"100\",\"price\":\"15\",\"total\":1500}', 'http://127.0.0.1:8000/user/sale/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:10:39', '2020-03-12 01:10:39'),
(46, 'App\\User', 4, 'updated', 'App\\Sale', 8, '{\"quantity\":100,\"total\":1500}', '{\"quantity\":\"1000\",\"total\":15000}', 'http://127.0.0.1:8000/user/sale/8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:10:55', '2020-03-12 01:10:55'),
(47, 'App\\User', 4, 'updated', 'App\\Sale', 7, '{\"quantity\":100,\"total\":1500}', '{\"quantity\":\"1000\",\"total\":15000}', 'http://127.0.0.1:8000/user/sale/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:11:02', '2020-03-12 01:11:02'),
(48, 'App\\User', 4, 'updated', 'App\\Sale', 3, '{\"quantity\":200,\"total\":3000}', '{\"quantity\":\"2000\",\"total\":30000}', 'http://127.0.0.1:8000/user/sale/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:11:46', '2020-03-12 01:11:46'),
(49, 'App\\User', 4, 'deleted', 'App\\Sale', 10, '{\"id\":10,\"adoptor_id\":43,\"production_id\":18,\"product_id\":15,\"client_id\":4,\"description\":null,\"quantity\":100,\"price\":15,\"total\":1500,\"status\":\"Purchase\"}', '[]', 'http://127.0.0.1:8000/user/sale/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:17:00', '2020-03-12 01:17:00'),
(50, 'App\\User', 4, 'created', 'App\\Sale', 11, '[]', '{\"adoptor_id\":43,\"production_id\":\"17\",\"product_id\":15,\"description\":null,\"quantity\":\"20\",\"price\":\"15\",\"total\":300,\"status\":\"Purchase\",\"client_id\":\"4\",\"id\":11}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:18:08', '2020-03-12 01:18:08'),
(51, 'App\\User', 4, 'created', 'App\\Sale', 12, '[]', '{\"adoptor_id\":43,\"production_id\":\"18\",\"product_id\":15,\"description\":null,\"quantity\":\"650\",\"price\":\"15\",\"total\":9750,\"status\":\"Purchase\",\"client_id\":\"4\",\"id\":12}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:20:42', '2020-03-12 01:20:42'),
(52, 'App\\User', 4, 'created', 'App\\Sale', 13, '[]', '{\"adoptor_id\":43,\"production_id\":\"18\",\"product_id\":15,\"description\":null,\"quantity\":\"300\",\"price\":\"15\",\"total\":4500,\"status\":\"Purchase\",\"client_id\":\"5\",\"id\":13}', 'http://127.0.0.1:8000/user/sale', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:20:53', '2020-03-12 01:20:53'),
(53, 'App\\User', 1, 'created', 'App\\User', 5, '[]', '{\"name\":\"LGU Caluag\",\"username\":\"LGU Caluag\",\"email\":\"lgucaluag@gmail.com\",\"password\":\"$2y$10$Xm40gid5SZlxniAcrH7FmuN025K9bo\\/YFrAfqAAjHCsQjE5Lxlc26\",\"adoptor_id\":\"44\",\"image\":\"lgu-caluag-2020-03-12-5e6993ac0bae6.png\",\"status\":\"1\",\"id\":5}', 'http://127.0.0.1:8000/admin/user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:43:08', '2020-03-12 01:43:08'),
(54, 'App\\User', 1, 'updated', 'App\\Product', 16, '{\"image\":\"rice-mongo-curls-2019-05-06-5ccf9d3dabd9d.png\"}', '{\"image\":\"rice-mongo-curls-2020-03-12-5e69951719ce1.png\"}', 'http://127.0.0.1:8000/admin/product/16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:49:12', '2020-03-12 01:49:12'),
(55, 'App\\User', 1, 'updated', 'App\\Product', 17, '{\"image\":\"rice-mongo-crunchies-2019-05-06-5ccf9dac07bc6.png\"}', '{\"image\":\"rice-mongo-crunchies-2020-03-12-5e6995218b22c.png\"}', 'http://127.0.0.1:8000/admin/product/17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 01:49:22', '2020-03-12 01:49:22'),
(56, NULL, NULL, 'created', 'App\\Inquiry', 2, '[]', '{\"user_id\":\"1\",\"name\":\"RAHIB P. ABU HALIL\",\"email\":\"abohalilr@gmail.com\",\"subject\":\"SL September 17, 2019\",\"message\":\"<div class=\\\"fb-post\\\" data-href=\\\"https:\\/\\/www.facebook.com\\/DOST.FNRI\\/photos\\/a.475670645901718\\/1107002399435203\\/?type=3&amp;theater\\\" data-width=\\\"500\\\" data-show-text=\\\"true\\\"><blockquote cite=\\\"https:\\/\\/developers.facebook.com\\/DOST.FNRI\\/photos\\/a.475670645901718\\/1107002399435203\\/?type=3\\\" class=\\\"fb-xfbml-parse-ignore\\\"><p>Try this easy to cook and nutritious FNRI developed recipe at your homes!<\\/p>Posted by <a href=\\\"https:\\/\\/www.facebook.com\\/DOST.FNRI\\/\\\">DOST-Food and Nutrition Research Institute<\\/a> on&nbsp;<a href=\\\"https:\\/\\/developers.facebook.com\\/DOST.FNRI\\/photos\\/a.475670645901718\\/1107002399435203\\/?type=3\\\">Thursday, October 26, 2017<\\/a><\\/blockquote><\\/div>\",\"id\":2}', 'http://127.0.0.1:8000/mail/inquery', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 02:23:44', '2020-03-12 02:23:44'),
(57, NULL, NULL, 'created', 'App\\Inquiry', 3, '[]', '{\"user_id\":\"1\",\"name\":\"RAHIB P. ABU HALIL\",\"email\":\"abohalilr@gmail.com\",\"subject\":\"SL September 17, 2019\",\"message\":\"dsadsadsadsadsadsa\",\"id\":3}', 'http://127.0.0.1:8000/mail/inquery', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 02:26:25', '2020-03-12 02:26:25'),
(58, NULL, NULL, 'created', 'App\\Inquiry', 4, '[]', '{\"user_id\":\"1\",\"name\":\"sample testing account\",\"email\":\"admin@gmail.com\",\"subject\":\"Sick leave RMP Oct 21, 2019\",\"message\":\"dsadsa\",\"id\":4}', 'http://127.0.0.1:8000/mail/inquery', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', NULL, '2020-03-12 02:29:06', '2020-03-12 02:29:06');

-- --------------------------------------------------------

--
-- Table structure for table `chart_samples`
--

CREATE TABLE `chart_samples` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profit` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chart_samples`
--

INSERT INTO `chart_samples` (`id`, `year`, `month`, `profit`, `created_at`, `updated_at`) VALUES
(1, 2017, 'January', 300, NULL, NULL),
(2, 2017, 'February', 1542, NULL, NULL),
(3, 2017, 'March', 380, NULL, NULL),
(4, 2018, 'January', 1000, NULL, NULL),
(5, 2018, 'February', 2500, NULL, NULL),
(6, 2018, 'December', 1900, NULL, NULL),
(7, 2019, 'Novermber', 2000, NULL, NULL),
(8, 2019, 'March', 1500, NULL, NULL),
(9, 2019, 'April', 3000, NULL, NULL),
(10, 2020, 'January', 1500, NULL, NULL);

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
(3, 43, 'LGU-Calatagan', 'Calatagan, Batangas', 'N/A', '2020-03-05 03:18:49', '2020-03-05 03:18:49'),
(4, 43, 'CSWD-Bacoor City', 'Bacoor City, Cavite', 'N/A', '2020-03-05 03:19:42', '2020-03-05 03:28:41'),
(5, 43, 'Kabisig ng Kalahi', 'Makati City', 'N/A', '2020-03-05 03:19:59', '2020-03-05 03:28:48'),
(6, 43, 'LGU-Magdalena', 'Magdalena, Laguna', 'N/A', '2020-03-05 03:20:13', '2020-03-05 03:28:52'),
(7, 43, 'LGU-Quezon', 'Tagkawayan, Quezon', 'N/A', '2020-03-05 03:20:27', '2020-03-05 03:28:59'),
(8, 43, 'Enzotech', 'Gulod, Calatagan, Batangas', 'N/A', '2020-03-05 03:20:40', '2020-03-05 03:29:06'),
(9, 43, 'SILTOS Mart', 'Pob. 2, Calatagan, Batangas', 'N/A', '2020-03-05 03:20:51', '2020-03-05 03:29:11'),
(10, 43, 'Rondillas Restaurant', 'Pob. 2, Calatagan, Batangas', 'N/A', '2020-03-05 03:21:06', '2020-03-05 03:29:16'),
(11, 43, 'Picwise Mart', 'Pob. 3, Calatagan, Batangas', 'N/A', '2020-03-05 03:21:19', '2020-03-05 03:29:21'),
(12, 43, 'Balibago Elem. School', 'Balibago,Calatagan, Batangas', 'N/A', '2020-03-05 03:21:32', '2020-03-05 03:29:26'),
(13, 43, 'Talisay Elem. School', 'Talisay, Calatagan, Batangas', 'N/A', '2020-03-05 03:21:45', '2020-03-05 03:29:32'),
(14, 43, 'Carretonan Elem. School', 'Caretonan, Calatagan, Batangas', 'N/A', '2020-03-05 03:21:58', '2020-03-05 03:29:38'),
(15, 43, 'Kilitisan Elem. School', 'Kilitisan, Calatagan, Batangas', 'N/A', '2020-03-05 03:23:35', '2020-03-05 03:23:35'),
(16, 43, 'Gulod Elem. School', 'Gulod, Calatagan, Batangas', 'N/A', '2020-03-05 03:23:48', '2020-03-05 03:23:48'),
(17, 43, 'Santiago Zobel  Elem. School', 'Balitoc, Calatagan, Batangas', 'N/A', '2020-03-05 03:24:00', '2020-03-05 03:24:00'),
(18, 43, 'Jacobo Zobel  Elem. School', 'Poblacion, Calatagan, Batangas', 'N/A', '2020-03-05 03:24:11', '2020-03-05 03:24:11'),
(19, 43, 'Tanagan  Elem. School', 'Tanagan, Calatagan, Batangas', 'N/A', '2020-03-05 03:24:24', '2020-03-05 03:24:24'),
(20, 43, 'Pedro Palacio Sr. Mem.  Elem. School', 'Sta. Ana, Calatagan, Batangas', 'N/A', '2020-03-05 03:24:35', '2020-03-05 03:24:35'),
(21, 43, 'Angelita Zobel  Elem. School', 'Lucsuhin, Calatagan, Batangas', 'N/A', '2020-03-05 03:24:46', '2020-03-05 03:24:46'),
(22, 43, 'Jose M. Caisip Mem.  Elem. School', 'Biga, Calatagan, Batangas', 'N/A', '2020-03-05 03:24:56', '2020-03-05 03:24:56'),
(23, 43, 'Paraiso  Elem. School', 'Paraiso, Calatagan, Batangas', 'N/A', '2020-03-05 03:25:08', '2020-03-05 03:25:08'),
(24, 43, 'Florencio Firmante  Elem. School', 'Sambungan, Calatagan, Batangas', 'N/A', '2020-03-05 03:25:19', '2020-03-05 03:25:19'),
(25, 43, 'Enrique Zobel  Elem. School', 'Real, Calatagan, Batangas', 'N/A', '2020-03-05 03:25:32', '2020-03-05 03:25:32'),
(26, 43, 'Bucal Elem. School', 'Bucal, Calatagan, Batangas', 'N/A', '2020-03-05 03:25:42', '2020-03-05 03:25:42'),
(27, 43, 'Encarnacion Elem. School', 'Encarnacion, Calatagan, Batangas', 'N/A', '2020-03-05 03:25:54', '2020-03-05 03:25:54'),
(28, 43, 'Hukay Elem. School', 'Hukay, Calatagan, Batangas', 'N/A', '2020-03-05 03:26:05', '2020-03-05 03:26:05'),
(29, 43, 'Luya Elem. School', 'Luya, Calatagan, Batangas', 'N/A', '2020-03-05 03:26:16', '2020-03-05 03:26:16'),
(30, 43, 'Carlosa Elem. School', 'Carlosa, Calatagan, Batangas', 'N/A', '2020-03-05 03:26:29', '2020-03-05 03:26:29'),
(31, 43, 'Baha Elem. School', 'Baha, Calatagan, Batangas', 'N/A', '2020-03-05 03:26:39', '2020-03-05 03:26:39'),
(32, 43, 'Calatagan Day Care Centers', 'Calatagan, Batangas', 'N/A', '2020-03-05 03:26:50', '2020-03-05 03:26:50'),
(33, 43, 'Calatagan National High School', 'Pob. 1, Calatagan, Batangas', 'N/A', '2020-03-05 03:27:00', '2020-03-05 03:27:00'),
(34, 43, 'Lucsuhin National High School', 'Lucsuhin, Calatagan, Batangas', 'N/A', '2020-03-05 03:27:10', '2020-03-05 03:27:10'),
(35, 43, 'Senior High School in Calatagan', 'Pob. 2, Calatagan, Batangas', 'N/A', '2020-03-05 03:27:20', '2020-03-05 03:27:20'),
(36, 43, 'Balayan East Central Elementary School', 'Balayan, Batangas', 'N/A', '2020-03-05 03:27:31', '2020-03-05 03:27:31'),
(37, 43, 'Balayan West Central Elementary School', 'Balayan, Batangas', 'N/A', '2020-03-05 03:27:42', '2020-03-05 03:27:42'),
(38, 43, 'Duhatan Elem. School', 'Duhatan, Balayan, Batangas', 'N/A', '2020-03-05 03:27:52', '2020-03-05 03:27:52'),
(39, 43, 'Canda Elem. School', 'Canda, Balayan, Batangas', 'N/A', '2020-03-05 03:28:03', '2020-03-05 03:28:03'),
(40, 43, 'Santol Elem. School', 'Santol, Balayan, Batangas', 'N/A', '2020-03-05 03:28:14', '2020-03-05 03:28:14'),
(41, 43, 'Balibago Lian  Elem. School', 'Balibago, Lian, Batangas', 'N/A', '2020-03-05 03:28:23', '2020-03-05 03:28:23');

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
(25, 7, 1, 'dsadsad', '2020-03-11 01:34:44', '2020-03-11 01:34:44'),
(27, 7, 1, 'ds', '2020-03-11 02:02:29', '2020-03-11 02:02:29');

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
(12, 'OCTAGONAL MIXER', 'octagonal-mixer', 'octagonal-mixer-2019-05-06-5ccf89e6977d5.png', '<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><em><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Dimensions: Total height = 157 centimeters; Length = 140 centimeters; Diameter (front) = 54 centimeters</span></em></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Description and Use:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">The model above is locally fabricated using food grade stainless steel material. It is powered by 1 Hp (horsepower), Ph1, 220 V induction motor with a speed reducer. Has a capacity of 15 kilograms of grains and 5 kilograms of curls per loading.</span></p>\r\n<p><span lang=\"EN-US\" style=\"font-size: 11.0pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; It is used for coating curls with flavor and/or mixing two or more solid food materials</span></p>\r\n<p>&nbsp;</p>', '2019-05-05 17:12:06', '2019-05-05 17:12:06'),
(13, 'PULVERIZER', 'pulverizer', 'pulverizer-2019-05-06-5ccf8b14c6fe6.png', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Description and Use:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>The equipment above is run by a 60 Hz (Hertz) motor. It can load up to 120 kilograms of sample per hour. The feed is loaded into the hopper connected to a set of two discs (stationary and rotating) that are responsible for the grinding process. The ground end product is then collected from the outlet.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>It is used for grinding low-moisture solid food material such as nuts, corns, coffee, etc.</span></p>', '2019-05-05 17:17:08', '2019-05-05 17:17:08'),
(14, 'HOBART MIXER', 'hobart-mixer', 'hobart-mixer-2019-05-06-5ccf8b3ccc2d2.png', '<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Dimension: Height &ndash; 130cm; Front &ndash; 70cm; Side &ndash; 100cm</span></em></p>\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Description and Use:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>This equipment is powered by a 1Hp, single phase, 220V induction motor. It is multi-speed: 1-slow, 2-moderate and 3-fast. Its bowl has a capacity of about 10kg of food material. There are three (3) stirrers: hook, leaf and wire basket. Hook and leaf can be used for mixing flour and kneading. It has also a drive in front for attaching vegetable dicer and slicer.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>It is used for mixing two or more flours, kneading and slicing and/or dicing fruits and vegetables.</span></p>', '2019-05-05 17:17:48', '2019-05-05 17:17:48'),
(15, 'PEDAL TYPE PLASTIC SEALER', 'pedal-type-plastic-sealer', 'pedal-type-plastic-sealer-2019-05-06-5ccf8be72210a.png', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Use:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>It is used in fusing two thermoplastic surfaces resulting in an airtight seal, e.g. sealing polyethylene (PE) or polypropylene (PP) plastic bags.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Guidelines in Sealing Thermoplastic Bags:</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: justify; text-indent: -18.0pt; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-fareast-font-family: \'Arial Black\'; mso-bidi-font-family: \'Arial Black\';\"><span style=\"mso-list: Ignore;\">A.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp; </span></span></span></strong><!--[endif]--><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Pedal Type Plastic Sealer</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo2;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">1.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Adjust the temperature setting (Table 1) according to the thickness of the plastic bag to be sealed.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo2;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">2.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Plug the sealer and pre-heat the sealing jaws to the desired sealing temperature.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo2;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">3.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Place the plastic bag over the lower sealing jaw and press down the upper sealing jaw with your foot on the pedal (see Table 1 for suggested sealing time).</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo2;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">4.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Release the pedal and remove the plastic bag from the sealing surfaces. Check the seal. If necessary, increase or decrease the temperature sealing, until the lowest setting on the setting timer is found that still makes a good seal.</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo2;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">5.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Should the plastic stick to one or both of the sealing jaws, hold onto the pedal for two (2) to three (3) seconds more before releasing or decrease the sealing temperature. Remove the plastic residue with a dry cloth. Never use water for cleaning.</span></p>', '2019-05-05 17:20:39', '2019-05-05 17:20:39'),
(16, 'IMPULSE PLASTIC SEALER', 'impulse-plastic-sealer', 'impulse-plastic-sealer-2019-05-06-5ccf8c3962677.png', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Guidelines in Sealing Thermoplastic Bags:</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">1.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Adjust the sealer setting according to the thickness of the poly-bag to be sealed (Table 2).</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">2.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Place the plastic bag over the Teflon cloth sealing surface and push down the handle arm completely.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">3.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Firmly hold the arm down through the complete sealing cycle, is the time the sealing indicator illuminates red, and then turns-off quickly.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">4.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Hold in the arm for a second or two after the indicator light turns-off to allow the seal to cool and strengthen under pressure before releasing the arm.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">5.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Check the seal. If necessary, increase or decrease the setting on the sealing timer. Make a seal. Keep experimenting, until the lowest setting on the setting timer is found that still makes a good seal.</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left: 54.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Arial;\"><span style=\"mso-list: Ignore;\">6.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Should the plastic stick to the white silicone rubber strip in the arm (upper sealing surface) or to the Teflon cloth covering the heating element wire (lower sealing surface), hold down the arm longer at the end of the sealing cycle. Remove the plastic residue with a dry cloth. Never use water for cleaning.</span></p>', '2019-05-05 17:22:01', '2019-05-05 17:22:01'),
(17, 'RICE/CORN GRINDER', 'ricecorn-grinder', 'ricecorn-grinder-2019-05-06-5ccf8c91485d0.png', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Dimensions: Front &ndash; 22 cm; Side - 56cm; Height &ndash; 48cm</span></em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Grinding wheel Diameter: 9cm</span></em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Induction Motor: 2 hp (horsepower), single phase, 220 V</span></em></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Description and Use:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>This is locally fabricated. It has a body that is made of aluminum, has feed hopper (0.125 cu. ft. capacity) and a grinding chamber with a fixed cast-iron disc mounted on the chamber and a rotating cast-iron disc mounted on the shaft. The feed is introduced through the hopper that releases the feed to the opening of the central section of the stationary disc. The rotating disc is mounted on the shaft and its grinding gap with the fixed disc can be adjusted to the desired clearance with the gap adjuster. The ground foodstuff is released through a spout at the lower portion of the grinding chamber.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>It is used for coarse grinding and cracking of low-moisture solid foodstuffs, such as corn, rice and coffee.</span></p>', '2019-05-05 17:23:29', '2019-05-05 17:23:29'),
(18, 'FLOUR MILL', 'flour-mill', 'flour-mill-2019-05-06-5ccf8ce30253d.png', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Dimensions: Total Height &ndash; 104 cm; Inside Diameter (grinding chamber) &ndash; 22 cm; Height of Grinding Chamber &ndash; 15 cm; </span></em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Hopper: Front &ndash; 30 cm; Side &ndash; 38 cm; Height &ndash; 6.5 c; </span></em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Product Spout Diameter &ndash; 11 cm</span></em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Description and Use:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">It is powered by a 1 Hp, 220 V induction motor. It has a capacity about 5 kilograms of 80 mesh flour per hour. It has six horizontally rotating hammers. As the hammer rotates, the food materials dropping from the feed hopper are thrown towards the vertically mounted bladed circular walls. The rotation of the hammers creates swirling air, which make food particles rotate with the hammers around the milling chamber. The very fine powder are blown upwards towards an exit tube and collected in the upper airbag. As the bigger particles are forced to rotate through a screen. When the particle size is slightly smaller than the screen holes, they pass through it and collected in the lower airbag. Most of the particle sizes are determined by this screen.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>It is used for milling grains, dried fruits and vegetables and other food materials.</span></p>', '2019-05-05 17:24:51', '2019-05-05 17:24:51'),
(19, 'CEREAL PUFFING MACHINE (FRICTION  TYPE HEATER)', 'cereal-puffing-machine-friction-type-heater', 'cereal-puffing-machine-friction-type-heater-2019-05-06-5ccf8d2e354b7.png', '<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Dimension (mm) &ndash; 550(W) x 790 (L) x 1350 (H); Weight &ndash; 200 kilograms; Main Drive Motor &ndash; 2 KW, 220 V, 50-60 Hz Single Phase; Capacity &ndash; 5-7 kilograms/hour</span></em></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Description and Use:</span></strong></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">The cereal puffing machine is imported from Korea. This is a friction type extruder. It is used for the extrusion of grains (e.g. rice, corn grits, mongo grits, etc.)</span></p>', '2019-05-05 17:26:06', '2019-05-05 17:26:06'),
(20, 'EXTRUDER COOKER (HIGH PRESSURE HIGH TEMPERATURE)', 'extruder-cooker-high-pressure-high-temperature', 'extruder-cooker-high-pressure-high-temperature-2019-05-06-5ccf8d9f36bd0.png', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">Main Drive Motor: 20KW, 220V, Ph3; Cutter Motor: 0.5KW, 220V, Ph3;</span></em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>Agitator Motor: 0.5KW, 220V, Ph3; Band Heater: 10KW; Capacity: 120-150 kg/hr.</span></em></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center;\" align=\"center\"><em style=\"mso-bidi-font-style: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></em></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Description and Use:</span></strong></p>\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>This equipment is imported from China. Its screw is long enough to cook and expand the product in one extrusion zone. </span></p>\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>It is used for extrusion cooking, sterilization and stabilization of foodstuff.</span></p>', '2019-05-05 17:27:59', '2019-05-05 17:27:59'),
(21, 'CABINET DRYER', 'cabinet-dryer', 'cabinet-dryer-2019-05-06-5ccf8dd70db87.png', '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-US\" style=\"font-family: \'Arial Black\',\'sans-serif\'; mso-bidi-font-family: Arial;\">Description and Use:</span></strong></p>\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>This equipment is LPG &ndash; operated and can load up to 80 kilograms of food samples on its 22 stainless aluminum drying trays. It is equipped with three blowers that ensure the uniformity of every drying operation.</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>It is used for dehydration of grains, fruits, vegetables and marine products (e.g. fish, etc.)</span></p>', '2019-05-05 17:28:55', '2019-05-05 17:28:55'),
(22, 'Dough Mixer', 'dough-mixer', 'dough-mixer-2020-03-03-5e5e123da0496.jpg', '<p>empty</p>', '2020-03-03 08:15:57', '2020-03-03 08:15:57'),
(24, 'Steamer', 'steamer', 'steamer-2020-03-03-5e5e12e3ce07c.jpg', '<p>empty</p>', '2020-03-03 08:18:43', '2020-03-03 08:18:43'),
(25, 'Fryer kettle', 'fryer-kettle', 'fryer-kettle-2020-03-03-5e5e12f13147d.jpg', '<p>empty</p>', '2020-03-03 08:18:57', '2020-03-03 08:18:57'),
(26, 'Cooling bin', 'cooling-bin', 'cooling-bin-2020-03-03-5e5e13016f33f.jpg', '<p>empty</p>', '2020-03-03 08:19:13', '2020-03-03 08:19:13'),
(27, 'Foot stamping sealer', 'foot-stamping-sealer', 'foot-stamping-sealer-2020-03-03-5e5e1313b38c9.jpg', '<p>empty</p>', '2020-03-03 08:19:31', '2020-03-03 08:19:31'),
(28, 'Weighing Scale (150kg cap)', 'weighing-scale-150kg-cap', 'weighing-scale-150kg-cap-2020-03-03-5e5e132610e7a.jpg', '<p>empty</p>', '2020-03-03 08:19:50', '2020-03-03 08:19:50'),
(29, 'Auto-packing Machine', 'auto-packing-machine', 'auto-packing-machine-2020-03-03-5e5e13342b8a6.jpg', '<p>empty</p>', '2020-03-03 08:20:04', '2020-03-03 08:20:04'),
(30, 'Mechanical Roaster', 'mechanical-roaster', 'mechanical-roaster-2020-03-03-5e5e1341976e3.jpg', '<p>empty</p>', '2020-03-03 08:20:17', '2020-03-03 08:20:17'),
(31, 'Manual Sealer', 'manual-sealer', 'manual-sealer-2020-03-03-5e5e1355cc70d.jpg', '<p>empty</p>', '2020-03-03 08:20:37', '2020-03-03 08:20:37'),
(32, 'Working Table (mobile', 'working-table-mobile', 'working-table-mobile-2020-03-03-5e5e13663159a.jpg', '<p>empty</p>', '2020-03-03 08:20:54', '2020-03-03 08:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(6, 'How to become an adoptor?', '<p><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">Anyone who is interested in adopting a technology shall follow the protocol on the transfer of technologies shown below:</span></p>\r\n<p><strong><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; background: white; font-weight: normal; mso-bidi-font-weight: bold;\">(1) First, the client must submit a letter of request to the DOST-FNRI director.</span></strong></p>\r\n<p><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">(2) DOST-FNRI will respond to the letter of intent and provide the client with the list of documentary requirements to be submitted</span></p>\r\n<p style=\"margin-left: 72.0pt; text-indent: -18.0pt; mso-list: l0 level1 lfo2;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: black;\"><span style=\"mso-list: Ignore;\">1.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">Technology Needs Assessment (TNA) Report</span></p>\r\n<p style=\"margin-left: 72.0pt; text-indent: -18.0pt; mso-list: l0 level1 lfo2;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: black;\"><span style=\"mso-list: Ignore;\">2.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">Company Profile</span></p>\r\n<p style=\"margin-left: 72.0pt; text-indent: -18.0pt; mso-list: l0 level1 lfo2;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: black;\"><span style=\"mso-list: Ignore;\">3.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">Mayor&rsquo;s Permit to Operate</span></p>\r\n<p style=\"margin-left: 72.0pt; text-indent: -18.0pt; mso-list: l0 level1 lfo2;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: black;\"><span style=\"mso-list: Ignore;\">4.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">Sanitary Permit</span></p>\r\n<p style=\"margin-left: 72.0pt; text-indent: -18.0pt; mso-list: l0 level1 lfo2;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: black;\"><span style=\"mso-list: Ignore;\">5.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">SEC/DTI/CDA/DOLE Registration (whichever is applicable)</span></p>\r\n<p style=\"margin-left: 72.0pt; text-indent: -18.0pt; mso-list: l0 level1 lfo2;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: black;\"><span style=\"mso-list: Ignore;\">6.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">GMP Compliance Status Report</span></p>\r\n<p style=\"margin-left: 72.0pt; text-indent: -18.0pt; mso-list: l0 level1 lfo2;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: black;\"><span style=\"mso-list: Ignore;\">7.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">Floor plan of the production area</span></p>\r\n<p style=\"margin-left: 72.0pt; text-indent: -18.0pt; mso-list: l0 level1 lfo2;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: black;\"><span style=\"mso-list: Ignore;\">8.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">List of available equipment</span></p>\r\n<p style=\"margin-left: 72.0pt; text-indent: -18.0pt; mso-list: l0 level1 lfo2;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: black;\"><span style=\"mso-list: Ignore;\">9.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">Pictures of the production are and existing equipment</span></p>\r\n<p><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>(3)<span style=\"mso-spacerun: yes;\">&nbsp; </span>A consultative meeting will take place on a mutually agreed date, time and venue for the submission of documents, discussion of the client&rsquo;s target market, business plans, terms of reference and provisions of the draft Technology Licensing Agreement (TLA). C. Conduct of Technology Needs Assessment and Site Visit</span></p>\r\n<p><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">(4) The Technology Needs Assessment (TNA) will be conducted by the DOST regional/provincial office (i.e. the DOST office in close proximity to the client&rsquo;s proposed facility). It includes on-site inspection of processing plant/site and client interview. The results of the TNA and appropriate recommendations will be discussed with the client. The client is required to comply.</span></p>\r\n<p><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">(5) A site visit will also be conducted by a DOST-FNRI expert for the assessment of the proposed facility in compliance with the production of the chosen technology. D. Evaluation of Assessment Result</span></p>\r\n<p><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">(6) The DOST-FNRI will discuss the result of TNA and decides if the client is capable of commercializing the technology. E. Final Negotiation</span></p>\r\n<p><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">(7) If the client complies with the minimum requirement needed for the production and commercialization of the technology, the Technology Licensing Agreement (TLA) will be finalized</span></p>\r\n<p><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">(8) If disapproved, the client may further comply with TNA recommendations and reapply F. Signing of the Technology Licensing Agreement (TLA) (1) 4 sets of TLA shall be signed and notarized. Copies will be distributed to the respective DOST Regional Office &amp; Client</span></p>\r\n<p><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">(9) A billing statement (i.e. one-time payment of Technology Licensing Fee) will be sent to the Client. The client pays upon receipt of the billing statement. g. Conduct of Training (1) the client implements the project. This includes the purchase of equipment and raw materials and overall setting-up of the production plant</span></p>\r\n<p><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">(10) DOST-FNRI technical staff will train the client on how to produce the adopted technology (i.e. raw materials, formulation, and packaging)</span></p>\r\n<p><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">(11) The client will start the operation thereafter. h. Production and Marketing</span></p>\r\n<p style=\"margin-left: 72.0pt; text-indent: -18.0pt; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: black;\"><span style=\"mso-list: Ignore;\">a)<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">The client will facilitate the production and commercialization of the adopted technology. </span></p>\r\n<p style=\"margin-left: 72.0pt; text-indent: -18.0pt; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: black;\"><span style=\"mso-list: Ignore;\">b)<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">The client will create its own branding, marketing, promotion, placement, and distribution. </span></p>\r\n<p style=\"margin-left: 72.0pt; text-indent: -18.0pt; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: black;\"><span style=\"mso-list: Ignore;\">c)<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">The client will prepare reports (i.e. production, sales, raw materials, business plan, and marketing plan).</span></p>\r\n<p><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">(12) DOST-FNRI helps in the promotion of the adopted technology by referrals, technology fora, and exhibits. i. Conduct of Monitoring and Evaluation</span></p>\r\n<p><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">(13) The monitoring and evaluation will be conducted using the Technology Transfer and Commercialization Monitoring and Evaluation questionnaire or via phone call, text or email. Main indicators such as production volume, profit generation, job creation will be measured.</span></p>\r\n<p><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">(14) Other after-transfer support such as technical assistance may be requested from the DOST-FNRI.</span></p>\r\n<p><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: black;\">(15) TLA is renewable every 5 years. (5) When the entrepreneur decides not to continue the project, they must inform DOST-FNRI in writing.</span></p>', NULL, '2020-03-11 08:07:05', '2020-03-11 08:07:05'),
(7, 'How much will it cost to adopt technology?', '<p><span style=\"font-size: 13.5pt; line-height: 107%; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; color: #444444; background: white; mso-ansi-language: EN-PH; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Based on the provisions of the Technology Licensing Agreement (TLA) under the Philippine Technology Transfer Act of 2009, most of the DOST-FNRI-developed technologies require a licensing fee (one-time payment) and royalty fee. The licensing and royalty fees pertain to the payment for the use&nbsp; of brand name, scientific, technical, commercial information or &ldquo;know-how&rdquo; for the development and commercialization of technology. A technology licensing fee ranges from Php15,000.00 to Php 100,000.00 depending on the type of technology to be adopted. Meanwhile, a monthly royalty of two percent (2%) of the monthly gross sales of the technology</span></p>', NULL, '2020-03-11 08:08:35', '2020-03-11 08:08:35'),
(8, 'What technologies does the DOST-FNRI offer?', '<p style=\"background: white; margin: 0cm 0cm 11.25pt 0cm;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">DAIRY PRODUCTS</span></strong></p>\r\n<p style=\"text-indent: -18.0pt; mso-list: l6 level1 lfo1; background: white; margin: 0cm 0cm 11.25pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: #444444;\"><span style=\"mso-list: Ignore;\">1.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">Low-Fat, Low-Sugar Ice Cream</span></p>\r\n<p style=\"background: white; margin: 0cm 0cm 11.25pt 0cm;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">FORTIFIED FOODS</span></strong></p>\r\n<p style=\"text-indent: -18.0pt; mso-list: l4 level1 lfo2; background: white; margin: 0cm 0cm 11.25pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: #444444;\"><span style=\"mso-list: Ignore;\">1.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">Iron Rice Premix</span></p>\r\n<p style=\"text-indent: -18.0pt; mso-list: l4 level1 lfo2; background: white; margin: 0cm 0cm 11.25pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: #444444;\"><span style=\"mso-list: Ignore;\">2.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">Iron Fortified Rice</span></p>\r\n<p style=\"text-indent: -18.0pt; mso-list: l4 level1 lfo2; background: white; margin: 0cm 0cm 11.25pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: #444444;\"><span style=\"mso-list: Ignore;\">3.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">Iodine-Rich Drinking Water (Tubig Talino)</span></p>\r\n<p style=\"text-indent: -18.0pt; mso-list: l4 level1 lfo2; background: white; margin: 0cm 0cm 11.25pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: #444444;\"><span style=\"mso-list: Ignore;\">4.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">STABILIZED BROWN RICE</span></p>\r\n<p style=\"background: white; margin: 0cm 0cm 11.25pt 0cm;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">COMPLEMENTARY FOODS</span></strong></p>\r\n<p style=\"text-indent: -18.0pt; mso-list: l1 level1 lfo3; background: white; margin: 0cm 0cm 11.25pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: #444444;\"><span style=\"mso-list: Ignore;\">1.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">Rice-Mongo Blend</span></p>\r\n<p style=\"text-indent: -18.0pt; mso-list: l1 level1 lfo3; background: white; margin: 0cm 0cm 11.25pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: #444444;\"><span style=\"mso-list: Ignore;\">2.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">Rice-Mongo-Sesame Blend</span></p>\r\n<p style=\"text-indent: -18.0pt; mso-list: l1 level1 lfo3; background: white; margin: 0cm 0cm 11.25pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: #444444;\"><span style=\"mso-list: Ignore;\">3.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">Rice-Mongo Crunchies</span></p>\r\n<p style=\"text-indent: -18.0pt; mso-list: l1 level1 lfo3; background: white; margin: 0cm 0cm 11.25pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: #444444;\"><span style=\"mso-list: Ignore;\">4.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">Rice-Mongo Curls</span></p>\r\n<p style=\"text-indent: -18.0pt; mso-list: l1 level1 lfo3; background: white; margin: 0cm 0cm 11.25pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: #444444;\"><span style=\"mso-list: Ignore;\">5.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">Ready-to-Eat Complementary Food (Paste) for Infants and</span></p>\r\n<p style=\"text-indent: -18.0pt; mso-list: l1 level1 lfo3; background: white; margin: 0cm 0cm 11.25pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: #444444;\"><span style=\"mso-list: Ignore;\">6.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">Young Children (Momsie)</span></p>\r\n<p style=\"background: white; margin: 0cm 0cm 11.25pt 0cm;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">Micronutrient Growth Mix (MGM)</span></strong></p>\r\n<p style=\"text-indent: -18.0pt; mso-list: l3 level1 lfo4; background: white; margin: 0cm 0cm 11.25pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: #444444;\"><span style=\"mso-list: Ignore;\">1.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">Fortified Rice Mongo Curls and Instant Blend</span></p>\r\n<p style=\"background: white; margin: 0cm 0cm 11.25pt 0cm;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">FOOD FOR DISASTER/CALAMITY&nbsp;&nbsp;</span></strong></p>\r\n<p style=\"text-indent: -18.0pt; mso-list: l2 level1 lfo5; background: white; margin: 0cm 0cm 11.25pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: #444444;\"><span style=\"mso-list: Ignore;\">1.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">Brown Rice Bar</span></p>\r\n<p style=\"text-indent: -18.0pt; mso-list: l2 level1 lfo5; background: white; margin: 0cm 0cm 11.25pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: #444444;\"><span style=\"mso-list: Ignore;\">2.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">ETHNIC FOODS</span></p>\r\n<p style=\"text-indent: -18.0pt; mso-list: l2 level1 lfo5; background: white; margin: 0cm 0cm 11.25pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: #444444;\"><span style=\"mso-list: Ignore;\">3.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">Putsero Vegetable Mixed</span></p>\r\n<p style=\"text-indent: -18.0pt; mso-list: l2 level1 lfo5; background: white; margin: 0cm 0cm 11.25pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: #444444;\"><span style=\"mso-list: Ignore;\">4.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">Thermally-Processed Instant Laing</span></p>\r\n<p style=\"text-indent: -18.0pt; mso-list: l2 level1 lfo5; background: white; margin: 0cm 0cm 11.25pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: #444444;\"><span style=\"mso-list: Ignore;\">5.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">Instant Kalamansi Extract</span></p>\r\n<p style=\"background: white; margin: 0cm 0cm 11.25pt 0cm;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">SQUASH SUPPLEMENTED PRODUCTS</span></strong></p>\r\n<p style=\"text-indent: -18.0pt; mso-list: l5 level1 lfo6; background: white; margin: 0cm 0cm 11.25pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: #444444;\"><span style=\"mso-list: Ignore;\">1.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">Pancit Canton with Squash</span></p>\r\n<p style=\"background: white; margin: 0cm 0cm 11.25pt 0cm;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">Bakery Products with Squash</span></strong></p>\r\n<p style=\"text-indent: -18.0pt; mso-list: l0 level1 lfo7; background: white; margin: 0cm 0cm 11.25pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: #444444;\"><span style=\"mso-list: Ignore;\">1.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">FRUIT JUICE DRINK</span></p>\r\n<p style=\"text-indent: -18.0pt; mso-list: l0 level1 lfo7; background: white; margin: 0cm 0cm 11.25pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: #444444;\"><span style=\"mso-list: Ignore;\">2.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">Ready-to-Drink Green Mango Juice with Nata</span></p>\r\n<p style=\"text-indent: -18.0pt; mso-list: l0 level1 lfo7; background: white; margin: 0cm 0cm 11.25pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; mso-fareast-font-family: \'Segoe UI\'; color: #444444;\"><span style=\"mso-list: Ignore;\">3.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">Ready-to-Drink Ripe Mango Juice with Nata</span></p>', NULL, '2020-03-11 08:09:19', '2020-03-11 08:09:19'),
(9, 'What are the benefits of being a DOST-FNRI technology adoptor?', '<p style=\"text-align: justify; background: white; margin: 0cm 0cm 11.25pt 18.0pt;\"><span style=\"font-size: 13.5pt; font-family: \'Segoe UI\',\'sans-serif\'; color: #444444;\">The main benefits of becoming a technology adoptor include profit generation and job creation from the production and commercialization of the technology. DOST-FNRI technologies have unique value propositions that are research-based to help improve the nutritional status of the Filipino population.</span></p>', NULL, '2020-03-11 08:09:55', '2020-03-11 08:09:55');

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
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `user_id`, `title`, `slug`, `body`, `image`, `view`, `status`, `created_at`, `updated_at`) VALUES
(5, 4, 'Odit necessitatibus ea sit dignissimos possimus.', 'odit-necessitatibus-ea-sit-dignissimos-possimus', 'Ricedsadsadsadsad', 'odit-necessitatibus-ea-sit-dignissimos-possimus-2020-03-03-5e5e1bd57d795.jpg', 1, 1, '2020-03-03 08:56:53', '2020-03-11 01:33:40'),
(6, 4, 'requesting for maintenancepurpose purpose purpose', 'requesting-for-maintenancepurpose-purpose-purpose', 'purpose purpose purpose', 'requesting-for-maintenancepurpose-purpose-purpose-2020-03-11-5e683965acdc6.jpg', 1, 1, '2020-03-11 01:05:43', '2020-03-11 01:34:28'),
(7, 4, 'dsadsadsadsadsadsa', 'dsadsadsadsadsadsa', 'dsadsadapurpose purpose purpose purpose', 'dsadsadsadsadsadsa-2020-03-11-5e6839dec2680.jpg', 1, 1, '2020-03-11 01:07:44', '2020-03-11 01:34:18');

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
(2, 1, 'RAHIB P. ABU HALIL', 'abohalilr@gmail.com', 'SL September 17, 2019', '<div class=\"fb-post\" data-href=\"https://www.facebook.com/DOST.FNRI/photos/a.475670645901718/1107002399435203/?type=3&amp;theater\" data-width=\"500\" data-show-text=\"true\"><blockquote cite=\"https://developers.facebook.com/DOST.FNRI/photos/a.475670645901718/1107002399435203/?type=3\" class=\"fb-xfbml-parse-ignore\"><p>Try this easy to cook and nutritious FNRI developed recipe at your homes!</p>Posted by <a href=\"https://www.facebook.com/DOST.FNRI/\">DOST-Food and Nutrition Research Institute</a> on&nbsp;<a href=\"https://developers.facebook.com/DOST.FNRI/photos/a.475670645901718/1107002399435203/?type=3\">Thursday, October 26, 2017</a></blockquote></div>', '2020-03-12 02:23:44', '2020-03-12 02:23:44'),
(3, 1, 'RAHIB P. ABU HALIL', 'abohalilr@gmail.com', 'SL September 17, 2019', 'dsadsadsadsadsadsa', '2020-03-12 02:26:25', '2020-03-12 02:26:25'),
(4, 1, 'sample testing account', 'admin@gmail.com', 'Sick leave RMP Oct 21, 2019', 'dsadsa', '2020-03-12 02:29:06', '2020-03-12 02:29:06');

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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(5, '2019_03_12_074244_create_equipment_table', 1),
(6, '2019_03_14_013053_create_products_table', 1),
(7, '2019_03_15_002356_create_adoptors_table', 1),
(8, '2019_03_19_040254_create_jobs_table', 1),
(9, '2019_03_19_052259_create_inquiries_table', 1),
(10, '2019_03_26_014957_create_adoptor_equipment_table', 1),
(11, '2019_03_26_020835_create_adoptor_raw_material_table', 1),
(12, '2019_03_26_021202_create_adoptor_product_table', 1),
(13, '2019_05_24_135753_create_comments_table', 1),
(14, '2019_05_27_103746_add_to_comment_table', 1),
(15, '2019_05_28_143847_create_employees_table', 1),
(16, '2019_06_03_141953_create_clients_table', 1),
(17, '2019_06_03_152610_create_suppliers_table', 1),
(18, '2019_06_10_083642_create_adoptor_products_table', 1),
(19, '2019_06_10_142751_create_productions_table', 1),
(20, '2019_08_16_104159_create_production_raw_materials_table', 1),
(21, '2019_08_16_110405_create_raw_material_useds_table', 1),
(22, '2019_09_09_082630_create_rejects_table', 1),
(23, '2019_12_11_085003_create_faqs_table', 1),
(24, '2020_01_08_141718_create_messages_table', 1),
(25, '2020_01_14_145435_create_forums_table', 1),
(26, '2020_01_15_141233_create_sales_table', 1),
(27, '2020_01_20_095419_create_product_samples_table', 1),
(28, '2020_03_03_084502_chart_sample', 1),
(29, '2020_03_03_132231_create_raw_materials_table', 1),
(100, '2020_03_05_161142_create_other_equipment_table', 5),
(101, '2020_03_09_101844_create_raw_material_lists_table', 6),
(102, '2020_03_10_085215_create_records_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `other_equipment`
--

CREATE TABLE `other_equipment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adoptor_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sourceOfFunds` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_equipment`
--

INSERT INTO `other_equipment` (`id`, `adoptor_id`, `name`, `slug`, `image`, `description`, `note`, `sourceOfFunds`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(1, 43, 'Auto-packing Machine', 'auto-packing-machine', 'default.png', NULL, NULL, 'DOST IV-A (GIA)', 1, 'Operational', '2020-03-05 08:14:52', '2020-03-05 08:14:52'),
(2, 43, 'Manual Sealer', 'manual-sealer', 'default.png', NULL, NULL, 'E. Zobel Foundation Inc.', 1, 'Operational', '2020-03-05 08:15:10', '2020-03-05 08:15:10'),
(3, 43, 'Working Table', 'working-table', 'default.png', NULL, NULL, 'E. Zobel Foundation Inc.', 1, 'Operational', '2020-03-05 08:15:27', '2020-03-05 08:15:27'),
(4, 43, 'Shelves', 'shelves', 'default.png', NULL, NULL, 'E. Zobel Foundation Inc.', 1, 'Operational', '2020-03-05 08:15:43', '2020-03-05 08:15:43');

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
(17, 18, '0', '2020-03-03', '2020-03-09 07:03:00', '2020-03-12 01:18:08'),
(18, 18, '6700', '2020-03-11', '2020-03-12 01:03:13', '2020-03-12 01:20:53');

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
(14, 'Rice-mongo instant blend', 'rice-mongo-instant-blend', 'rice-mongo-instant-2020-03-11-5e684763f1e65.png', '<p style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\"><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; font-weight: bold; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">Rice-mongo instant </span><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">blend is complementary food rich in protein and energy.</span></p>\r\n<p style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\">&nbsp;</p>\r\n<div style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: .38in; text-indent: -.38in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\"><span style=\"font-size: 16.0pt;\"><span style=\"mso-special-format: bullet; font-family: Arial;\">&bull;</span></span><span style=\"font-size: 16pt; font-family: Arial;\">Contains 120 Kcal (energy) and 4 g protein per 30 g, </span><span style=\"font-size: 16pt; font-family: Arial; font-style: italic;\">enough to meet 16.7 % of recommended energy and 28.6 % of recommended protein of 6 months to &lt;10 months old children</span></div>', '<p>empty</p>', '2019-05-05 18:31:07', '2020-03-11 02:09:40'),
(15, 'Ready-to-cook blend', 'ready-to-cook-blend', 'ready-to-cook-blend-2020-03-11-5e6848d7e061e.png', '<p style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\"><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; font-weight: bold; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">R</span><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; font-weight: bold; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">eady-to-cook </span><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; font-weight: bold; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">blend</span><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\"> of rice, </span><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">mung bean </span><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">and sesame seeds is an ideal complementary food for six months old and young children. </span></p>\r\n<p style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\"><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-PH; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">contains 130 Kcal (energy) and 4 grams protein per 30 grams serving portion, enough to meet 18 % of recommended energy and 28.6 % of recommended protein intake of 6 months to &lt;10 months old children.</span></p>', '<p>empty</p>', '2019-05-05 18:32:12', '2020-03-11 02:11:36'),
(16, 'Rice-Mongo Curls', 'rice-mongo-curls', 'rice-mongo-curls-2020-03-12-5e69951719ce1.png', '<p>&nbsp;</p>\r\n<div style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: .38in; text-indent: -.38in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\">\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in; direction: ltr; unicode-bidi: embed; word-break: normal;\"><span style=\"font-size: 16pt; font-family: Arial; font-weight: bold;\">Rice-Mongo Curls </span><span style=\"font-size: 16pt; font-family: Arial;\">are nutritious extruded snack made from a blend of rice flour and mongo flour.</span></p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in; direction: ltr; unicode-bidi: embed; word-break: normal;\"><span style=\"font-size: 16pt; font-family: Arial;\">&nbsp;</span></p>\r\n</div>\r\n<div style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: .38in; text-indent: -.38in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\"><span style=\"font-size: 16.0pt;\"><span style=\"mso-special-format: bullet; font-family: Arial;\">&bull;</span></span><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">Rice-Mongo curls contains 130 kcal and 4g protein per 30g </span><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; font-style: italic; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">(enough to meet 14.3 % of recommended protein the recommended protein intake of 1-3 year old children)</span></div>\r\n<div style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: .38in; text-indent: -.38in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\"><!-- [if ppt]--><span style=\"font-size: 16.0pt;\"><span style=\"mso-special-format: bullet; font-family: Arial;\">&bull;</span></span><!--[endif]--></div>\r\n<div style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: .38in; text-indent: -.38in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\"><span style=\"font-size: 16.0pt;\"><span style=\"mso-special-format: bullet; font-family: Arial;\">&bull;</span></span><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">Recommended<span style=\"mso-spacerun: yes;\">&nbsp; </span>serving per day: 1-2 packs</span></div>\r\n<p>&nbsp;</p>', '<p>empty</p>', '2019-05-05 18:34:37', '2020-03-12 01:49:12'),
(17, 'Rice-Mongo Crunchies', 'rice-mongo-crunchies', 'rice-mongo-crunchies-2020-03-12-5e6995218b22c.png', '<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; direction: ltr; unicode-bidi: embed; word-break: normal; text-align: center;\"><span style=\"font-size: 15pt; font-family: Arial;\">31.8% of RENI for energy </span></p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; direction: ltr; unicode-bidi: embed; word-break: normal; text-align: center;\">&nbsp;</p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; direction: ltr; unicode-bidi: embed; word-break: normal; text-align: center;\"><span style=\"font-size: 15pt; font-family: Arial;\">14.3</span><span style=\"font-size: 15pt; font-family: Arial;\">% for </span><span style=\"font-size: 15pt; font-family: Arial;\">protein </span><span style=\"font-size: 15pt; font-family: Arial;\">of 1 to 3 year-old children.</span></p>\r\n<p style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\"><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-GB; font-weight: bold; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">Rice-Mongo Crunchies </span><span style=\"font-size: 16.0pt; font-family: Arial; mso-ascii-font-family: Arial; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-GB; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: black; mso-style-textfill-fill-alpha: 100.0%;\">are nutritious deep-fried snack made from a blend of rice flour and mongo flour</span></p>\r\n<p style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\">&nbsp;</p>\r\n<div style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: .31in; text-indent: -.31in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\"><span style=\"font-size: 16.0pt;\"><span style=\"mso-special-format: bullet; font-family: Arial;\">&bull;</span></span><span style=\"font-size: 16pt; font-family: Arial;\">Contains 580cal and 8g protein per 100g.</span></div>\r\n<p style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\">&nbsp;</p>\r\n<div style=\"language: en-PH; margin-top: 0pt; margin-bottom: 0pt; margin-left: .31in; text-indent: -.31in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; mso-line-break-override: none; word-break: normal; punctuation-wrap: hanging;\"><span style=\"font-size: 16.0pt;\"><span style=\"mso-special-format: bullet; font-family: Arial;\">&bull;</span></span><span style=\"font-size: 16pt; font-family: Arial;\">Two packs (30g per pack) of Rice-Mongo </span><span style=\"font-size: 16pt; font-family: Arial;\">crunchies</span><span style=\"font-size: 16pt; font-family: Arial;\"> will provide:&nbsp;</span></div>\r\n<p>&nbsp;</p>', '<p>empty</p>', '2019-05-05 18:36:28', '2020-03-12 01:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `product_samples`
--

CREATE TABLE `product_samples` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adoptor_id` int(11) NOT NULL,
  `production_id` int(11) NOT NULL,
  `packs` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `expirationDate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `raw_materials`
--

INSERT INTO `raw_materials` (`id`, `adoptor_id`, `name`, `extension`, `note`, `quantity`, `expirationDate`, `created_at`, `updated_at`) VALUES
(5, 43, '1', 'kg', 'N/A', 0, '2020-04-18', '2020-03-09 06:53:22', '2020-03-12 01:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `raw_material_lists`
--

CREATE TABLE `raw_material_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adoptor_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `raw_material_lists`
--

INSERT INTO `raw_material_lists` (`id`, `adoptor_id`, `name`, `supplier_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 43, 'Rice', 11, NULL, '2020-03-09 05:26:54', '2020-03-09 06:45:45'),
(2, 43, 'Mongo', 4, NULL, '2020-03-09 05:27:10', '2020-03-09 05:27:10'),
(3, 43, 'Sesame Seeds', 4, NULL, '2020-03-09 05:27:22', '2020-03-09 05:27:22'),
(4, 43, 'Flavoring - BBQ', 4, NULL, '2020-03-09 05:27:35', '2020-03-09 05:27:35'),
(5, 43, 'Flavoring - BBQ', 6, NULL, '2020-03-09 05:27:48', '2020-03-09 05:27:48'),
(6, 43, 'Flavoring - Cheese', 6, NULL, '2020-03-09 05:28:01', '2020-03-09 05:28:01'),
(7, 43, 'Flavoring - Sour Cream', 6, NULL, '2020-03-09 05:28:15', '2020-03-09 05:28:15'),
(8, 43, 'Cooking Oil', 4, NULL, '2020-03-09 05:28:26', '2020-03-09 05:28:26'),
(9, 43, 'Plastic - 4x6', 7, NULL, '2020-03-09 05:28:40', '2020-03-09 05:28:40'),
(10, 43, 'Plastic - 4x8', 7, NULL, '2020-03-09 05:38:13', '2020-03-09 05:38:13'),
(11, 43, 'Plastic - 6x10', 7, NULL, '2020-03-09 05:38:22', '2020-03-09 05:38:22'),
(12, 43, 'Plastic - 20x30', 7, NULL, '2020-03-09 05:38:33', '2020-03-09 05:38:33'),
(13, 43, 'Plastic film roll for C30g', 8, NULL, '2020-03-09 05:39:00', '2020-03-09 05:39:00'),
(15, 43, 'Labeling - Crunchies 15g', 10, NULL, '2020-03-09 05:41:34', '2020-03-09 05:41:34'),
(16, 43, 'Labeling - Crunchies 30g', 10, NULL, '2020-03-09 05:41:45', '2020-03-09 05:41:45'),
(17, 43, 'Labeling - Food Blend 60g', 10, NULL, '2020-03-09 05:41:54', '2020-03-09 05:41:54'),
(18, 43, 'Labeling - Food Blend 540g', 10, NULL, '2020-03-09 05:42:05', '2020-03-09 05:42:05');

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
(17, 17, 5, '1', '2020-03-09 07:03:41', '2020-03-09 07:03:41'),
(18, 18, 5, '1', '2020-03-12 01:03:23', '2020-03-12 01:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adoptor_id` int(11) NOT NULL,
  `table` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`id`, `adoptor_id`, `table`, `table_id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(13, 43, 'equipment', 21, '0', '0', '2020-03-11 02:50:48', '2020-03-11 02:50:48'),
(14, 43, 'products', 17, NULL, '1', '2020-03-11 05:18:08', '2020-03-11 05:18:08');

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
(1, 'Region I', 'region-i', '2019-03-11 01:08:19', '2019-03-11 03:06:41'),
(3, 'Region II', 'region-ii', '2019-03-11 01:24:32', '2019-03-11 01:24:32'),
(4, 'Region III', 'region-iii', '2019-03-11 01:26:34', '2019-03-11 01:26:34'),
(5, 'Region IV-A', 'region-iv-a', '2019-03-11 01:48:26', '2019-05-05 21:19:50'),
(6, 'Region V', 'region-v', '2019-03-11 01:48:32', '2019-03-11 01:48:32'),
(7, 'Region VI', 'region-vi', '2019-03-11 01:48:39', '2019-03-11 01:48:39'),
(8, 'Region VII', 'region-vii', '2019-03-11 01:48:45', '2019-03-11 01:48:45'),
(9, 'Region VIII', 'region-viii', '2019-03-11 01:48:55', '2019-03-11 01:48:55'),
(10, 'Region IX', 'region-ix', '2019-03-11 01:49:08', '2019-03-11 01:49:08'),
(11, 'Region X', 'region-x', '2019-03-11 01:49:13', '2019-03-11 01:49:13'),
(12, 'ARMM', 'armm', '2019-03-11 05:16:10', '2019-03-11 05:16:10'),
(13, 'Nation Capital Region - NCR', 'nation-capital-region-ncr', '2019-03-17 01:26:15', '2019-03-17 01:26:15'),
(14, 'Cordillera Administrative Region (CAR)', 'cordillera-administrative-region-car', '2019-05-05 21:11:47', '2019-05-05 21:11:47'),
(15, 'Region IV-B', 'region-iv-b', '2019-05-05 21:20:05', '2019-05-05 21:20:05'),
(16, 'Region XI', 'region-xi', '2019-05-05 22:06:38', '2019-05-05 22:06:38'),
(17, 'Region XII', 'region-xii', '2019-05-05 22:07:30', '2019-05-05 22:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `rejects`
--

CREATE TABLE `rejects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adoptor_id` int(11) NOT NULL,
  `production_id` int(11) NOT NULL,
  `packs` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rejects`
--

INSERT INTO `rejects` (`id`, `adoptor_id`, `production_id`, `packs`, `note`, `created_at`, `updated_at`) VALUES
(4, 43, 17, 1, NULL, '2020-03-09 07:09:53', '2020-03-09 07:09:53');

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
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `adoptor_id`, `production_id`, `product_id`, `client_id`, `description`, `quantity`, `price`, `total`, `status`, `created_at`, `updated_at`) VALUES
(3, 43, 17, 15, 15, NULL, 2000, 15, 30000, 'Purchase', '2020-01-09 07:10:41', '2020-03-12 01:11:46'),
(4, 43, 17, 15, 6, 'for testing purpose only', 100, 15, 1500, 'Purchase', '2020-01-11 00:50:52', '2020-03-12 01:10:39'),
(5, 43, 18, 15, 4, NULL, 50, 15, 750, 'Purchase', '2020-02-12 01:04:49', '2020-03-12 01:10:10'),
(6, 43, 18, 15, 7, NULL, 50, 15, 750, 'Purchase', '2020-02-12 01:05:01', '2020-03-12 01:10:05'),
(7, 43, 18, 15, 8, NULL, 1000, 15, 15000, 'Purchase', '2020-03-12 01:05:12', '2020-03-12 01:11:02'),
(8, 43, 18, 15, 4, NULL, 1000, 15, 15000, 'Purchase', '2020-03-12 01:05:28', '2020-03-12 01:10:55'),
(9, 43, 18, 15, 24, NULL, 250, 15, 3750, 'Purchase', '2020-01-12 01:05:41', '2020-03-12 01:05:41'),
(11, 43, 17, 15, 4, NULL, 20, 15, 300, 'Purchase', '2020-03-12 01:18:08', '2020-03-12 01:18:08'),
(12, 43, 18, 15, 4, NULL, 650, 15, 9750, 'Purchase', '2019-11-12 01:20:42', '2020-03-12 01:20:42'),
(13, 43, 18, 15, 5, NULL, 300, 15, 4500, 'Purchase', '2019-12-12 01:20:53', '2020-03-12 01:20:53');

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
(4, 43, 'Seeds Mansion Mercantile Inc.', '465 M. De Santos St., Brgy. 271 Zone 025 San Nicolas Manila / Local famers from the community', 'N/A', '2020-03-09 01:35:09', '2020-03-09 01:35:09'),
(6, 43, 'Killion Merchandising Corp', '42 Orosco Street, Quiapo, Manila', 'N/A', '2020-03-09 01:35:39', '2020-03-09 01:35:39'),
(7, 43, 'Meyantin Commercial', '827 Carmen Planas St., Brgy. 269 Zone 25, Tondo, Manila', 'N/A', '2020-03-09 01:36:02', '2020-03-09 01:36:02'),
(8, 43, 'Sofitec', '2302 Jose Abad Santos Ave., Tondo Manila', 'N/A', '2020-03-09 01:36:19', '2020-03-09 01:36:19'),
(10, 43, 'Regencia Printing Services', '2467-C Pedro Gil St., Brgy. 879 Zone 96 Dist. VI, Sta. Ana, Manila', 'N/A', '2020-03-09 01:36:47', '2020-03-09 01:36:47'),
(11, 43, 'Dante Lapitan Rice Store', 'New Public Market Pob. 4, Calatagan, Batangas', 'N/A', '2020-03-09 01:38:32', '2020-03-09 01:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `status` int(11) NOT NULL DEFAULT 1,
  `adoptor_id` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `email_verified_at`, `password`, `image`, `status`, `adoptor_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'FNRI- Food and Nutrition Research Institute', 'admin', 'etrasnmotion@gmail.com', NULL, '$2y$10$7R0nFZjPPIKP7KWWuxYxNubmw.tjHmu/DXYOa5mnNyaegWr7Uxxr.', 'fnri-food-and-nutrition-research-institute=2019-05-30=5cef8e4c1eda2.png', 1, 42, NULL, NULL, '2019-09-04 22:55:42'),
(4, 2, 'E. ZOBEL FOUNDATION, INC.', 'e.zobel', 'e.zobel@gmail.com', NULL, '$2y$10$O07e2xGfFEZqY8PYKcJP/.SjDlGa6OuNx5K6Uqlvt7s1po0k.KMw.', 'ezobel-2020-03-03-5e5e17222af35.jpg', 1, 43, NULL, '2020-03-03 08:36:50', '2020-03-03 08:37:25'),
(5, 2, 'LGU Caluag', 'LGU Caluag', 'lgucaluag@gmail.com', NULL, '$2y$10$Xm40gid5SZlxniAcrH7FmuN025K9bo/YFrAfqAAjHCsQjE5Lxlc26', 'lgu-caluag-2020-03-12-5e6993ac0bae6.png', 1, 44, NULL, '2020-03-12 01:43:08', '2020-03-12 01:43:08');

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
-- Indexes for table `adoptor_raw_material`
--
ALTER TABLE `adoptor_raw_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_samples`
--
ALTER TABLE `chart_samples`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
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
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_equipment`
--
ALTER TABLE `other_equipment`
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
-- Indexes for table `product_samples`
--
ALTER TABLE `product_samples`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raw_materials`
--
ALTER TABLE `raw_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raw_material_lists`
--
ALTER TABLE `raw_material_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raw_material_useds`
--
ALTER TABLE `raw_material_useds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `adoptor_equipment`
--
ALTER TABLE `adoptor_equipment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `adoptor_product`
--
ALTER TABLE `adoptor_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `adoptor_products`
--
ALTER TABLE `adoptor_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `adoptor_raw_material`
--
ALTER TABLE `adoptor_raw_material`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `chart_samples`
--
ALTER TABLE `chart_samples`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2210;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `other_equipment`
--
ALTER TABLE `other_equipment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productions`
--
ALTER TABLE `productions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
-- AUTO_INCREMENT for table `product_samples`
--
ALTER TABLE `product_samples`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `raw_materials`
--
ALTER TABLE `raw_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `raw_material_lists`
--
ALTER TABLE `raw_material_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `raw_material_useds`
--
ALTER TABLE `raw_material_useds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rejects`
--
ALTER TABLE `rejects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
