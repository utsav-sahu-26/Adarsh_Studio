-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2026 at 04:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adast_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addpackage`
--

CREATE TABLE `tbl_addpackage` (
  `package_id` int(11) NOT NULL,
  `package_name` varchar(150) NOT NULL,
  `budget` float NOT NULL,
  `accessories` varchar(300) NOT NULL,
  `description` varchar(500) NOT NULL,
  `addon` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_addpackage`
--

INSERT INTO `tbl_addpackage` (`package_id`, `package_name`, `budget`, `accessories`, `description`, `addon`) VALUES
(6, 'Pre-Wedding Shooting', 10000, 'Camera', '200 Photos, 50 Video, ', '2025-08-06 06:38:17'),
(7, 'Wedding Shooting', 35000, 'Camera, Stand, Flash', '1000 Photos, 20GB Video,, Standard Quality ', '2025-08-06 06:43:30'),
(8, 'Wedding Shooting', 50000, 'Camera, Stand, Flash and all Accessories', 'Unlimited Photo, 50Gb Video, HD Quality', '2025-08-06 06:46:23'),
(9, 'Wedding Shooting', 645434, 'Camera, Stand, Flash', 'dkshksnckjsd', '2025-08-06 09:36:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `booking_id` int(11) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `name` varchar(80) NOT NULL,
  `mob_no` varchar(20) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `shooting_loc` varchar(80) NOT NULL,
  `expected_date` varchar(30) NOT NULL,
  `budget` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `booking` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`booking_id`, `service_type`, `name`, `mob_no`, `email_id`, `city`, `address`, `shooting_loc`, `expected_date`, `budget`, `details`, `booking`) VALUES
(1, 'Wedding Photography', 'Ajay gupta', '6392689392', 'ajayguptaheera@gmail.com', 'Jaunpur', 'Khasanpur', 'jaunpur', '2025-07-30', '3849', 'jslkj lkdjl', '2025-07-28 17:26:50'),
(2, 'Wedding Photography', 'Ajay gupta', '6392689392', 'ajayguptaheera@gmail.com', 'Jaunpur', 'Khasanpur', 'jaunpur', '2025-08-22', '3443', 'jdks ksdfk;ajd', '2025-08-05 05:30:38'),
(5, 'Family sessions photography', 'Ajay gupta', '6392689392', 'ajayguptaheera@gmail.com', 'Jaunpur', 'Khasanpur', 'lkdflk', '2025-08-22', '983479', 'kjhsdhk', '2025-08-05 17:11:33'),
(6, 'Wedding Photography', 'Ajay gupta', '6392689392', 'ajayguptaheera@gmail.com', 'Jaunpur', 'Khasanpur', 'jaunpur', '2025-08-29', '3456', 'kdfjshkjhs', '2025-08-06 09:31:17'),
(7, 'Pre-wedding Photography', 'lado', '6392689392', 'utsavsahu1312001@gmail.com', 'Jaunpur', 'Khasanpur', 'kshjks', '2025-08-30', '434546556', 'osdfois', '2025-08-20 14:17:01'),
(8, 'Wedding Photography', 'Ajay gupta', '6392689392', 'ajayguptaheera@gmail.com', 'Jaunpur', 'Khasanpur', 'kjhkj', '2025-12-04', '948743', 'djbodhjhok', '2025-12-03 12:00:51'),
(9, 'Birthday Photography', 'Ajay gupta', '6392689392', 'utsavsahu1312001@gmail.com', 'Jaunpur', 'Khasanpur', 'kjhkj', '2025-12-27', '948743', 'fgfguhngym', '2025-12-03 12:03:31'),
(10, 'Select Service type', 'Utsav Sahu', '06392689392', 'utsavsahu1312001@gmail.com', 'Jaunpur', 'Wajidpur-uttri', '', '2026-02-27', '30490', '', '2026-02-13 14:14:42'),
(11, 'Product photography', 'Harshit', '9080978968', 'utsavsahu1312001@gmail.com', 'Jaunpur', 'Khasanpur', 'jaunpur', '2026-02-11', '90889', 's;ldm;dk;lskd;l', '2026-02-13 14:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiry`
--

CREATE TABLE `tbl_enquiry` (
  `enquiryid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobno` varchar(15) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `query_msg` varchar(300) NOT NULL,
  `enquiry_dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_enquiry`
--

INSERT INTO `tbl_enquiry` (`enquiryid`, `name`, `mobno`, `emailid`, `query_msg`, `enquiry_dt`) VALUES
(1, 'Ajay gupta', '6392689392', 'ajayguptaheera@gmail.com', 'lowehjsd whfks', '2025-08-03 06:09:08'),
(3, 'bkb', '6392689392', 'utsavsahu1312001@gmail.com', 'jhklj;lk', '2026-02-06 17:42:58'),
(6, 'Harshit', '023980394', 'slkjfoiw@gamil.com', 'lsalaskmcsa', '2026-02-13 13:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `eventid` int(11) NOT NULL,
  `notification` varchar(500) NOT NULL,
  `saved_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_events`
--

INSERT INTO `tbl_events` (`eventid`, `notification`, `saved_on`) VALUES
(4, 'Excting offer! flat 30% off on event shooting at Rakshabandan.', '2025-08-06 05:48:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `fid` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `mobno` varchar(20) NOT NULL,
  `topic` varchar(200) NOT NULL,
  `feed_msg` varchar(500) NOT NULL,
  `fdt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`fid`, `name`, `emailid`, `mobno`, `topic`, `feed_msg`, `fdt`) VALUES
(1, 'Ajay gupta', 'ajayguptaheera@gmail.com', '6392689392', 'oweu', 'oiwuiklskjd kjfksjd', '2025-08-02 11:35:42'),
(2, 'Utsav Sahu', 'utsavsahu1312001@gmail.com', '6392689392', 'wer', 'hkjshf kshdfkjs jshdkj', '2025-08-02 13:37:34'),
(3, 'Utsav Sahu', 'ajayguptaheera@gmail.com', '6392689392', 'wer', 'xwxw', '2025-08-05 12:20:09'),
(4, '', '', '', '', '', '2025-08-05 13:48:32'),
(5, 'Ajay gupta', 'ajayguptaheera@gmail.com', '6392689392', 'slfd', 'lssuoejf', '2025-08-20 14:17:49'),
(6, 'sarvadeep', 'utsavsahu1312001@gmail.com', '6392689392', 'jhghj', 'jgjhgjhgthug', '2025-12-03 12:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `uploadid` int(11) NOT NULL,
  `imgtitle` varchar(100) NOT NULL,
  `pfile` varchar(100) NOT NULL,
  `uploaddt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`uploadid`, `imgtitle`, `pfile`, `uploaddt`) VALUES
(24, 'lsdkjlks', 'n62Snh_ChatGPT Image Feb 6, 2026, 08_55_00 PM.png', '2026-02-13 13:04:55'),
(25, ';sldc;l,;sdlmdk', 'j4tvVd_download.png', '2026-02-13 13:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `user_id` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`user_id`, `pass`) VALUES
('admin@gmail.com', '3456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_addpackage`
--
ALTER TABLE `tbl_addpackage`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  ADD PRIMARY KEY (`enquiryid`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`uploadid`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_addpackage`
--
ALTER TABLE `tbl_addpackage`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  MODIFY `enquiryid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `eventid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `uploadid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
