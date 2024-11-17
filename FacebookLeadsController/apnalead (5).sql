-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2023 at 12:00 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apnalead`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_address`
--

CREATE TABLE `company_address` (
  `Company_Add_Id` int(11) NOT NULL,
  `Company_Main_Id` int(11) NOT NULL,
  `Company_GST_No` varchar(25) NOT NULL,
  `Company_Address` varchar(150) NOT NULL,
  `Company_Area_Locality` varchar(60) NOT NULL,
  `Company_Landmark` varchar(50) NOT NULL,
  `Company_City` varchar(50) NOT NULL,
  `Company_State` varchar(50) NOT NULL,
  `Company_Country` varchar(40) NOT NULL,
  `Company_Pincode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_address`
--

INSERT INTO `company_address` (`Company_Add_Id`, `Company_Main_Id`, `Company_GST_No`, `Company_Address`, `Company_Area_Locality`, `Company_Landmark`, `Company_City`, `Company_State`, `Company_Country`, `Company_Pincode`) VALUES
(1, 1, 'Holder and Mullen Associa', 'Excepturi officiis b', 'Ortiz and Ramsey Co', 'Ochoa Ware Inc', 'Crosby Combs Associates', 'Pugh Morin Associates', 'Townsend Hopkins Co', '32');

-- --------------------------------------------------------

--
-- Table structure for table `company_emails`
--

CREATE TABLE `company_emails` (
  `company_email_ids` int(10) NOT NULL,
  `company_main_id` int(10) NOT NULL,
  `company_email_name` varchar(100) NOT NULL,
  `company_email_for` varchar(500) NOT NULL,
  `company_email_id` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_emails`
--

INSERT INTO `company_emails` (`company_email_ids`, `company_main_id`, `company_email_name`, `company_email_for`, `company_email_id`) VALUES
(1, 1, 'Navix', '', 'akash@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `company_phone_numbers`
--

CREATE TABLE `company_phone_numbers` (
  `company_phone_id` int(10) NOT NULL,
  `company_main_id` int(10) NOT NULL,
  `company_phone_person_name` varchar(100) NOT NULL,
  `company_phone_number` varchar(15) NOT NULL,
  `company_phone_for` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_phone_numbers`
--

INSERT INTO `company_phone_numbers` (`company_phone_id`, `company_main_id`, `company_phone_person_name`, `company_phone_number`, `company_phone_for`) VALUES
(1, 1, 'Akash', '8115006334', '');

-- --------------------------------------------------------

--
-- Table structure for table `company_policies`
--

CREATE TABLE `company_policies` (
  `PolicyId` int(10) NOT NULL,
  `PolicyName` varchar(100) NOT NULL,
  `PolicyDetails` longtext NOT NULL,
  `PolicyActiveFrom` varchar(40) NOT NULL,
  `PolicyCreatedAt` varchar(40) NOT NULL,
  `PolicyUpdatedAt` varchar(40) NOT NULL,
  `PolicyCreatedBy` varchar(40) NOT NULL,
  `PolicyUpdatedBy` varchar(40) NOT NULL,
  `PolicyCompanyMainId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_policies`
--

INSERT INTO `company_policies` (`PolicyId`, `PolicyName`, `PolicyDetails`, `PolicyActiveFrom`, `PolicyCreatedAt`, `PolicyUpdatedAt`, `PolicyCreatedBy`, `PolicyUpdatedBy`, `PolicyCompanyMainId`) VALUES
(2, 'Leave Policy', 'ekpuaW9xWXFZSSt2L1IrZFlCSllwYjJobWk4UlNhNnR1eWhOc0ZxbHkxND0=', '2022-12-28', '2022-12-28 03:12:02 PM', '2023-02-24 06:27:50 PM', '4', '4', 0),
(3, 'Medical Policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS000QjZHVlVESlVXQkZZb3VQMUNOa0hmaE9GZGVXL1lTbkFKWGZJQVdacUlSc1lFMDJQd3Q4eWtqNjJtQjhBdnBIZUg2M1JVUFRtSHlQK2JXRjJRZ1ZWRm8zcmFPN2FOQlROY3F2Q2lFcTU2', '2022-12-28', '2022-12-28 04:12:42 PM', '2022-12-28 04:12:07 PM', '4', '4', 0),
(4, 'Health &amp; safty Policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS000QjZHVlVESlVXQkZZb3VQMUNOa0hmaE9GZGVXL1lTbkFKWGZJQVdacUlLWit1SklDZDZOZ1RGTXczYmRIYXBCWUNDMjBQb2tqeWdkWjI3UmRKcGl6ck1OMWxtZGVpQ01OY1FsUUlJYWN1', '2022-12-28', '2022-12-28 04:12:56 PM', '2023-02-24 06:28:01 PM', '4', '4', 0),
(5, 'Break Policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS0JYSm1PUW9ubUlQOUZrTEtyZVA4K2taazI3dm81NmtxY09vc0NWME5xWHBiVEpab2poL3BlRkMvczJVNFpBS1NxalRlQ1p3U083b3hhSHkrN1g2KzdoYjQrTk44b2tWTDBLdWFUckg3UjlLV3ZVYlY1VmVkWVd5aWpIK2hYOWpKaGpDcmRpVWMxcDJZSENnTWk3KzRLUUswd2pYdXIxTDY2a2kwN3NyOWtvUjZBUTR4ZVl5U1ROdjlMYThmZGg1QkFWUGRQU1FpQXFHQUlEeEduanY4WW5YQStGMTFGaHVxYjQ0VXZ2MzhvcVIrV1ZsZElwQ0U3cGkwZWJmVjVkMlhBPT0=', '2022-12-28', '2022-12-28 04:12:19 PM', '2022-12-28 04:12:19 PM', '4', '4', 0),
(6, 'Time Off work Policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS0JYSm1PUW9ubUlQOUZrTEtyZVA4K2taazI3dm81NmtxY09vc0NWME5xWHB5eldjNUx6dStmanFEbWl6V2NkN0piNEtQZ216TlFUM283em5zbWNTeWY5dDM2RVdQTGNrQm1jbFFNMGlOTmNwRGtwVEhUN1BKL2VhNUllSElvdzFmaDRqb3R4WlhNazlSNWVBbXdqa0JJN3R5azRmV1RvVEdxSE44MXdubm5PWk9DWm5LSDN1bEY0VitnRU85QXNjT3BjR2ZScU5sWjJUMjFnVHNJUmRNdzY5bzFMazlsYjNWWk8rNStCMlVoUkNGZy92WVhqZ0UxdHdSSC8zdjdrMC9PeHVPc0xaSzFHSzUrdmdwK0NZRkdVPQ==', '2022-12-28', '2022-12-28 04:12:31 PM', '2022-12-28 04:12:31 PM', '4', '4', 0),
(7, 'On Duty Work Policy', 'bTRvTUo3WTU0OWd6dEl0RDRIdWs4VENoVnNJQ1kyb1d2RWhpYXk4MkxWZz0=', '2022-12-28', '2022-12-28 04:12:02 PM', '2022-12-28 04:12:02 PM', '4', '4', 0),
(8, 'Termination of employment policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS0JYSm1PUW9ubUlQOUZrTEtyZVA4K2taazI3dm81NmtxY09vc0NWME5xWHBaSDIxWlgxZnBQd2VCY1R0YmdNRkxrM05UdGdmU2tnbHpSS1dUb0ZWdkFDQjNUR3gzcWs2aUNqNU5wamlJZ1JRWkg3NGtOMUQ4ZzcybUlBd0RMNlkyQm5CREtZMmM2Uml6ZFlUQWhOaTF4VWt2TktTOVhBQnArUVF4VERzZldBQjJ3enJlNllmb05WTG9mV2owVmdlQ3Q3WFhsaXFsNmdpdytwV2lNZHZLZDdHY1M2djdYeDl3VFd1UXpmUkhUcXZXSEZUeHA2ampDT3JQd3I5QStqaG92YjB2R290czNoeGVoTlo1MFBqQ05Db2RsNTgxWGdLU240dVh3SnR0emVwM3cxK2lnZFRTL3lDNnZiTTZnKzR0Zz09', '2022-12-28', '2022-12-28 04:12:16 PM', '2022-12-28 04:12:16 PM', '4', '4', 0),
(9, 'Dress Code Policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS0JYSm1PUW9ubUlQOUZrTEtyZVA4K2taazI3dm81NmtxY09vc0NWME5xWHBMU1l6cStCZFUxeUV5bDI0Rnorb1NGQWZMRzJtc3htSmRZS1pzTit2NGxJMEJ6M0hQTC9SbEZCd2hPcG1wYUt5MmlUcUlkcUUrVm5sVGR2ZU0zbXVxbVJkdXYwaWxzUGdQQUlVaVVoRXFOSnlMRURnaFRETFRxMWVGK2xxTWpxaXpkdmxIZVJxcEwzN3cvWDRyb3h2S1N2dTlmOXA4ZS9xU2tFZHhud05Gb3JyanluM2d4bnQ5dVJaNVFuMUJidjd1OTJEeUpjTDUwR2IvdDhzV2JCUkFXU25ObGFxaExFck5ZSVFKeDJnK2JZPQ==', '2022-12-28', '2022-12-28 04:12:27 PM', '2022-12-28 04:12:27 PM', '4', '4', 0),
(10, 'probation and Confirmantion Policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS0JYSm1PUW9ubUlQOUZrTEtyZVA4K2taazI3dm81NmtxY09vc0NWME5xWHBObFpoWkJaQjN6bkpTTFhJOW5HaGI5Y09XRWw0dDl0dExLeTI4d2gwbXZEbjkvdCs3dG1TRTl1b21vQ3ZrQW0zL1pvaFdZTHlrUzJ2RzRwL1VVV2tuemdvckttaDRQQkdVWFc2QkdOd2Z3WldYZHRSTHV2Y2lWaW4wclJNUWkrTUxxT0syVnMxL0dwWXg5U3NIdmlKNldaRzdVakxQVGEwMVYyUlJRbm9ieHBVQk5JOElnSTd0MTkzUEczN2RNdlpoc1ZFRyswUHJZNy9mYXNzOG1qSzF2MXFlMmxCeWdaNW13ZXFRQTV3NDlNTHRZajl0bWx3MmE4Q3VnSDg2UVF6SHpjam5iZnpwSW8rK1FpMmFnNlY4QT09', '2022-12-28', '2022-12-28 04:12:38 PM', '2022-12-28 04:12:38 PM', '4', '4', 0),
(11, 'Gravience Policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS0JYSm1PUW9ubUlQOUZrTEtyZVA4K2taazI3dm81NmtxY09vc0NWME5xWHBVcU9jRVI2SXYzQlo0cjArUHpPOFlYMTl5NDg0UFVCY1NDTTE2dnpSWVpKV2o1WG1Od1lhVTErbjlkR2JMLzV2OVNoemhWRnZpM2poV1JaUmY3RkxhSnRFazFYNXp5SlZRWmVyTWZncHJLY2w2cEZ0MDhBQXA0djZJY1J1NGd6MS8wWWo4UzlaZ2ZGSDFXbVhuY3BBQ0ZhSkxUdktuVVROQjdoZ3hjdVdvZVVsZjBzQ1lkTkxPN2ZFQTZ3MHVDTTRHNWtnNUg5OUR1M2RkRHlKenlsbVlqSkhFeVpPZ255V2VXL1ZIWWI4NjFrPQ==', '2022-12-28', '2022-12-28 04:12:33 PM', '2022-12-28 04:12:33 PM', '4', '4', 0),
(12, 'Award and recognization Policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS0JYSm1PUW9ubUlQOUZrTEtyZVA4K2taazI3dm81NmtxY09vc0NWME5xWHBJK0k2eE53Q3BkVnhPL0RZQnRCWU54UitBQXpQdEw1ZzZkOGRtTGEwVmtHM0cwOXpsa3VGYi9UdmprRUpjamRFSXVaUDc4ZFhKZGJxLy9sL0p0bzcwTmMwYXVjcjZvOVExU2xadnVEWjUxZEd2a0RMTnpPMUNZNjFQRDNrMGJvdXBwYjlxMXJOaW5GRjl5SmFRT3E3eDU2V1kyUDBZOGFhdXJxdS92VjdLdzFqcGtQYnR3Vko1UVNJdlBvejZoTElrdU9hNGpqRHV5eHh5K1Z3QmorYUp1bTVaNWpPUnB5S1NCcEwwSGFJNFU4MnBxSlU1UlRjUEhiSHE0M0dzZ05o', '2022-12-28', '2022-12-28 04:12:55 PM', '2022-12-28 04:12:55 PM', '4', '4', 0),
(13, 'Travel Policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS0JYSm1PUW9ubUlQOUZrTEtyZVA4K2taazI3dm81NmtxY09vc0NWME5xWHBuV3prWkVpZXVCWDZpKzdlK2tsREsyTWlpNjhzTEhlNXd6NVpyZkdENjBOSHoyS1hQMWJkdWxPeGR1bkVmNUZINTN6VStEeDJxTFRrUlY2Ujd2aUc4eFJpWWQ0WE1PVUlEeXhrMlRSb2p6eTV2aHAwbWxJZ0FWSVlXQTc4QmFOaWhZdFE3M1Npb045ZGF1NDhJVUx0TlFRUUdqOU0vOVFncVEvRkFWUVh1RXNRaHFtRFFpR1lyVGk5V09PeGE0czMyWnR0WTRTWHVNR2VibUJ6L2UrNThnPT0=', '2022-12-28', '2022-12-28 04:12:04 PM', '2022-12-28 04:12:04 PM', '4', '4', 0),
(14, 'Sexual harrasment in the work Policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS0JYSm1PUW9ubUlQOUZrTEtyZVA4K2taazI3dm81NmtxY09vc0NWME5xWHAxVG9QUkVpcEhSYm1icEkvMTlycjRnUmN6MWZLZGQzUjY3N0tIZmRUc2RhUkZnMDd3UUhBT3piMi83VVlaSXNzaFdMM2tPeUZXOGhETDA3MWkyanpPRHA0S1JxNWZ4a0RNUHIybnM0RW1PbmpXUkg4SlE3VFpjbnNXNzRDS1lDSjZlb3F0ZjF3MVJwcXpDcVB4dzdPam1CNFVSQzZwaTUwQ01LVmlZUXZuS20raWNiSGk1bXoxb0dwbzVQbUJzdFBOMC9YWkcvSzNGc3phZXEvREkwZHN3QU1IUWVBNzVyR3BLWDBZM2l4bERkWDdDN1luQjJvdy9yYjJhVmp4N3p5c0pIZ0UxNWlZd0h5SUlPWUVLVis1dz09', '2022-12-28', '2022-12-28 04:12:19 PM', '2022-12-28 04:12:19 PM', '4', '4', 0),
(15, 'Code Of Conduct Policy ', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-12-28', '2022-12-28 04:12:31 PM', '2022-12-28 04:12:31 PM', '4', '4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `company_users`
--

CREATE TABLE `company_users` (
  `company_users_id` int(10) NOT NULL,
  `company_main_id` int(10) NOT NULL,
  `company_alloted_user_id` int(10) NOT NULL,
  `company_user_role` varchar(100) NOT NULL,
  `company_user_status` int(1) NOT NULL,
  `company_user_created_at` varchar(45) NOT NULL,
  `company_user_created_by` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_users`
--

INSERT INTO `company_users` (`company_users_id`, `company_main_id`, `company_alloted_user_id`, `company_user_role`, `company_user_status`, `company_user_created_at`, `company_user_created_by`) VALUES
(1, 1, 1, 'Admin', 1, '2023-10-05 12:04:45 PM', 1),
(2, 1, 2, 'TeamMember', 1, '2023-10-05 12:07:11 PM', 1),
(3, 1, 3, 'TeamMember', 1, '2023-10-05 01:50:52 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `ConfigsId` int(100) NOT NULL,
  `ConfigGroupName` varchar(100) NOT NULL,
  `ConfigCompanyId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`ConfigsId`, `ConfigGroupName`, `ConfigCompanyId`) VALUES
(1, 'WORK_GROUP', 0),
(5, 'PROJECT_TYPES', 0),
(6, 'LEAD_PERIORITY_LEVEL', 0),
(7, 'CALL_STATUS', 0),
(9, 'LEAD_SOURCES', 0);

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE `configurations` (
  `configurationsid` int(100) NOT NULL,
  `configurationname` varchar(50) NOT NULL,
  `configurationvalue` varchar(9999) NOT NULL,
  `configurationtype` varchar(30) NOT NULL DEFAULT 'text',
  `configurationsupportivetext` varchar(1000) NOT NULL DEFAULT 'null'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`configurationsid`, `configurationname`, `configurationvalue`, `configurationtype`, `configurationsupportivetext`) VALUES
(1, 'APP_NAME', 'ApnaLead', 'TEXT', 'null'),
(2, 'TAGLINE', 'LEADS CRM', 'text', 'null'),
(3, 'OWNER_NAME', 'Navix Consultancy Services', 'text', 'null'),
(4, 'PRIMARY_PHONE', '+91 9311382012', 'phone', 'null'),
(5, 'PRIMARY_EMAIL', 'navix365@gmail.com', 'email', 'null'),
(6, 'SHORT_DESCRIPTION', 'SGg4NFRrcUpNV2VzYldONU0zODROUStQS3hCemMwZzZVN1VVWVNLOTljaz0=', 'text', 'null'),
(7, 'PRIMARY_ADDRESS', 'MlhxOWtGd0d3V25Va2hiRDFrNkhsTmFodTgxZUxSNzZEdVVJQkVFWkYyQ3FpekNzc2t3dStQemIzOHY1V0hDSQ==', 'address', 'null'),
(8, 'PRIMARY_MAP_LOCATION_LINK', 'M3N6cEE1V0syMjBKWE9JamJ0d2dERVk0aGNLSGw4cW5SUjYyKzY1NWNvQzVtcmZuc1JkVS81dTRsbFZCaGFuU0ZTVDZ2N1hMNDVuVzNoV3ROaEErZGJRa2hzV2FJbDVjREpGZFo2OUZ0R0pKbnlkNUtuZzFVLzRqdmwycWhnYlZWd0ZGUThnMHA5VE9TdnYwYnpSblZSenlDbUJjNVdFc0xaZEd2Mng5NVBqVnlTYThjZitzaE5ZL04vdU4wdTZnQk1rS3FORnJhYVo5QVBTbzJHczhIaEJTcVgzMStoOHpDM1prRURkV0Z0UFJPMkcyalQ4Mit1Uk5tRWJYUzYrK091R1BkSVR1N3R4ZVpGUTJTSStoM0xCN2xJeko0NXVNMit4Ni9sdyt0M0t2TU45RG5GSXh4U0tmbjRqdzkxcUczNHFlNkhZZHV1SFZTZG9Yc2cwNEpSb0pnbFA5bmlkRk91aHJ2L2NxT0dWUGpTU1A4dEI1MWVOTDVnc05pZlhSYVlQbFdGbVZiQnlQOWk3UE54SFptYjlmUkQ2eEt4SFJhY1gwY1FKd0lXWT0=', 'map', 'null'),
(9, 'SENDER_MAIL_ID', 'navix365@gmail.com', 'email', 'null'),
(10, 'RECEIVER_MAIL', 'navix365@gmail.com', 'email', 'null'),
(11, 'REPLY_TO', 'not available', 'email', 'null'),
(12, 'SUPPORT_MAIL', 'navix365@gmail.com', 'email', 'null'),
(13, 'ENQUIRY_MAIL', 'navix365@gmail.com', 'email', 'null'),
(14, 'ADMIN_MAIL', 'navix365@gmail.com', 'text', 'null'),
(15, 'SMS_API_KEY', 'null', 'text', 'null'),
(16, 'DOWNLOAD_ANDROID_APP_LINK', '', 'link', 'null'),
(17, 'DOWNLOAD_IOS_APP_LINK', '', 'link', 'null'),
(18, 'DOWNLOAD_BROCHER_LINK', '', 'link', 'null'),
(20, 'CONTROL_WORK_ENV', 'DEV', 'boolean', 'dev, prod'),
(21, 'CONTROL_SMS', 'false', 'boolean', 'true, false'),
(23, 'CONTROL_MAILS', 'true', 'boolean', 'true, false'),
(24, 'CONTROL_NOTIFICATION', 'true', 'boolean', 'true, false'),
(25, 'CONTROL_MSG_DISPLAY_TIME', '4500', 'number', '1000, 10000'),
(26, 'CONTROL_APP_LOGS', 'false', 'boolean', 'true, false'),
(27, 'APP_LOGO', 'Saleskumars__25_Aug_2023_05_08_08_70707254864_.png', 'img', 'null'),
(28, 'SMS_OTP_TEMP_ID', 'null', 'text', 'null'),
(29, 'PASS_RESET_OTP_TEMP', 'null', 'text', 'null'),
(30, 'SMS_SENDER_ID', 'null', 'text', 'null'),
(31, 'PG_PROVIDER', 'RAZORAPAY', 'text', 'null'),
(32, 'PG_MODE', 'jhvjhdsbvj', 'text', 'null'),
(33, 'MERCHENT_ID', 'jbcjhbdbfm b', 'text', 'null'),
(34, 'MERCHANT_KEY', 'qkjbdjkfbvjdbvkdbkjvbdkjbjkbdjkfd vjdbvgjhdfhbvdf', 'text', 'null'),
(35, 'ONLINE_PAYMENT_OPTION', 'true', 'boolean', 'true, false'),
(36, 'CONTROL_NOTIFICATION_SOUND', 'true', 'boolean', 'true, false'),
(37, 'FINANCIAL_YEAR', 'September - August', 'text', 'null'),
(38, 'GST_NO', '987YIGFUB43Y48', 'text', 'null'),
(39, 'COMPANY_TYPE', 'PUBLISHING', 'text', 'null'),
(40, 'LOGIN_BG_IMAGE', 'ROOF_N_ASSETS_INFRA_PVT._LTD._Logo_03_Apr_2023_01_04_17_40787472375_.jpg', 'text', 'null'),
(41, 'PRIMARY_AREA', 'M3RKYjIyemJJcnFXZ2xLdzZINzdMNVNqRVJFbkY2ZnpTQ1BmNFdQcUgrMD0=', 'text', 'null'),
(42, 'PRIMARY_CITY', 'Q1o2a0w2NEpQOEFLTHA3ZHdNYjh4UT09', 'text', 'null'),
(43, 'PRIMARY_STATE', 'Rm9nUDlDRTVkV20zWm8wMmEvMEpPZz09', 'text', 'null'),
(44, 'PRIMARY_COUNTRY', 'MmtSc3hhcXA1OU1mNjFaYUJ6VVhIZz09', 'text', 'null'),
(45, 'PRIMARY_PINCODE', 'RjV6emhnOUxVeC9ic29tQ25BV211QT09', 'text', 'null'),
(46, 'TAX_NO', 'DELA61323D1', 'text', 'null'),
(47, 'APP_THEME', 'facebook', 'text', 'null'),
(48, 'DEFAULT_RECORD_LISTING', '15', 'text', 'null'),
(49, 'GOOGLE_MAP_API', '', 'text', 'null'),
(50, 'MINIMUM_ATTANDANCE_RANGE', '', 'text', 'null'),
(51, 'OFFICE_START_TIME', '', 'text', 'null'),
(52, 'OFFICE_MAX_START_TIME', '', 'text', 'null'),
(53, 'OFFICE_HALF_DAY_ALLOWED', '', 'text', 'null'),
(54, 'MAXIMUM_ALLOWED_LATE_CHECK_IN', '', 'text', 'null'),
(55, 'OFFICE_LUNCH_START_TIME', '', 'text', 'null'),
(56, 'OFFICE_END_TIME', '', 'text', 'null'),
(57, 'SHORT_LEAVE_MAX_TIME', '', 'text', 'null'),
(58, 'WORKING_DAYS_IN_MONTH', '', 'text', 'null'),
(59, 'AUTO_MONTHLY_PAYROLL_COSING_DATE', '', 'text', 'null'),
(60, 'MAXIMUM_SHORT_LEAVE_IN_MONTH', '', 'text', 'null'),
(61, 'DEDUCTION_AMOUNT_ON_PER_LATE', '', 'text', 'null'),
(62, 'WEBSITE', '', 'text', 'null'),
(63, 'APP', '', 'text', 'null'),
(64, 'MAX_ORDER_QTY', '', 'text', 'null'),
(65, 'MIN_ORDER_QTY', '', 'text', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `config_companies`
--

CREATE TABLE `config_companies` (
  `company_id` int(10) NOT NULL,
  `company_main_user_id` int(10) NOT NULL,
  `company_name` varchar(500) NOT NULL,
  `indusrty_type` varchar(50) NOT NULL,
  `company_logo` varchar(1000) NOT NULL,
  `company_descriptions` text NOT NULL,
  `company_created_at` varchar(45) NOT NULL,
  `company_created_by` int(10) NOT NULL,
  `company_updated_at` varchar(45) NOT NULL,
  `company_updated_by` int(10) NOT NULL,
  `company_status` int(1) NOT NULL,
  `company_ref_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_companies`
--

INSERT INTO `config_companies` (`company_id`, `company_main_user_id`, `company_name`, `indusrty_type`, `company_logo`, `company_descriptions`, `company_created_at`, `company_created_by`, `company_updated_at`, `company_updated_by`, `company_status`, `company_ref_no`) VALUES
(1, 1, 'Crane and Buck Associates', 'IT Services', 'Array__05_Oct_2023_12_10_25_99108068170_.jpg', 'Voluptas iusto quod ', '2023-10-05 12:04:45 PM', 1, '2023-10-05 12:04:45 PM', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `config_facebook_accounts`
--

CREATE TABLE `config_facebook_accounts` (
  `id` bigint(20) NOT NULL,
  `fb_page_name` varchar(255) NOT NULL,
  `fb_adaccounts_id` varchar(255) NOT NULL,
  `fd_adaccounts_status` varchar(255) NOT NULL DEFAULT 'Active',
  `fb_campaigns_id` varchar(255) NOT NULL,
  `fb_campaigns_name` varchar(255) NOT NULL,
  `fb_campaigns_status` varchar(255) NOT NULL DEFAULT 'Active',
  `fb_adsets_id` varchar(255) NOT NULL,
  `fb_adsets_name` varchar(255) NOT NULL,
  `fd_adsets_status` varchar(255) NOT NULL DEFAULT 'Active',
  `fb_ads_id` varchar(255) NOT NULL,
  `fb_ads_name` varchar(255) NOT NULL,
  `fd_ads_status` varchar(255) NOT NULL DEFAULT 'Active',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` varchar(255) NOT NULL,
  `fb_access_token` longtext NOT NULL,
  `CompanyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_facebook_accounts`
--

INSERT INTO `config_facebook_accounts` (`id`, `fb_page_name`, `fb_adaccounts_id`, `fd_adaccounts_status`, `fb_campaigns_id`, `fb_campaigns_name`, `fb_campaigns_status`, `fb_adsets_id`, `fb_adsets_name`, `fd_adsets_status`, `fb_ads_id`, `fb_ads_name`, `fd_ads_status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `fb_access_token`, `CompanyID`) VALUES
(2, 'University Mantra', '597359049004353', 'Active', '23853756674500045', 'Phd New Automated', 'Active', '23853756674550045', 'Phd-Automated 23rd May', 'Active', '23853756674590045', 'New Leads ad', 'Active', '2023-05-29 16:07:06', '1', '2023-05-29 16:07:06', '1', 'EAAKtlecmNCUBABTCTIw1Jzl8Q5cfJEmIK3dK5KnyAUce4ZAsZC1w7W7hFgGoKZBTXr4Ly80ZBUkMiNjFlgF6GwXFz54pFSl1A3uEhVb1HJr0ZBIaVfaIRoSgiHdKv01ILWTe7ceE15i9F7GzugZBiPoyMrMclcbZB3fhKytdRDX0gHk5rj8EfMN', 0);

-- --------------------------------------------------------

--
-- Table structure for table `config_lead_counters`
--

CREATE TABLE `config_lead_counters` (
  `config_lead_counter_id` int(10) NOT NULL,
  `config_counter_name` varchar(100) NOT NULL,
  `config_counter_primary_search` varchar(100) NOT NULL,
  `CompanyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config_pgs`
--

CREATE TABLE `config_pgs` (
  `ConfigPgId` int(100) NOT NULL,
  `ConfigPgProvider` varchar(100) NOT NULL,
  `ConfigPgMode` varchar(100) NOT NULL,
  `ConfigPgMerchantId` varchar(500) NOT NULL,
  `ConfigPgMerchantKey` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_pgs`
--

INSERT INTO `config_pgs` (`ConfigPgId`, `ConfigPgProvider`, `ConfigPgMode`, `ConfigPgMerchantId`, `ConfigPgMerchantKey`) VALUES
(1, 'RAZORAPAY', 'jhvjhdsbvj', 'jbcjhbdbfm b', 'qkjbdjkfbvjdbvkdbkjvbdkjbjkbdjkfd vjdbvgjhdfhbvdf'),
(2, 'PAYTM', 'DEV', 'HJvgh1gh3234jh4vgc3j4c3gh123', '#bkjbhv23h2v3gh232vghvc2gv3gh');

-- --------------------------------------------------------

--
-- Table structure for table `config_plans`
--

CREATE TABLE `config_plans` (
  `plan_id` int(11) NOT NULL,
  `plan_name` varchar(50) NOT NULL,
  `plan_amount_per_user` varchar(11) NOT NULL,
  `plan_pay_period` varchar(20) NOT NULL,
  `plan_created_at` date NOT NULL,
  `plan_created_by` int(11) NOT NULL,
  `plan_applicable_from` date NOT NULL,
  `plan_updated_at` date NOT NULL,
  `plan_updated_by` int(11) NOT NULL,
  `plan_feature_image` varchar(150) NOT NULL,
  `plan_description` mediumtext NOT NULL,
  `plan_status` int(11) NOT NULL,
  `plan_close_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_plans`
--

INSERT INTO `config_plans` (`plan_id`, `plan_name`, `plan_amount_per_user`, `plan_pay_period`, `plan_created_at`, `plan_created_by`, `plan_applicable_from`, `plan_updated_at`, `plan_updated_by`, `plan_feature_image`, `plan_description`, `plan_status`, `plan_close_at`) VALUES
(1, 'ApnaLead', '280', 'Yearly', '2023-09-14', 1, '0000-00-00', '0000-00-00', 1, 'Array__14_Sep_2023_10_09_17_28567808316_.jpg', 'Grow More Your Business With Our Special Plan', 1, '0000-00-00'),
(2, 'ApnaLead', '350', 'Half-Yearly', '2023-09-14', 1, '0000-00-00', '0000-00-00', 1, 'Array__14_Sep_2023_10_09_41_86942837009_.jpg', 'Grow More Your Business With Our Special Plan', 1, '0000-00-00'),
(3, 'ApnaLead', '500', 'Monthly', '2023-09-14', 1, '0000-00-00', '0000-00-00', 1, 'Array__14_Sep_2023_10_09_11_11219531665_.jpg', 'Grow More Your Business With Our Special Plan', 1, '0000-00-00'),
(4, 'ApnaLead', '0', 'Monthly', '2023-09-14', 1, '0000-00-00', '0000-00-00', 1, 'Array__14_Sep_2023_10_09_51_10396839890_.jpeg', 'Get One Month Free Trial For One User', 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `config_values`
--

CREATE TABLE `config_values` (
  `ConfigValueId` int(100) NOT NULL,
  `ConfigValueGroupId` varchar(100) NOT NULL,
  `ConfigValueDetails` varchar(100) NOT NULL,
  `ConfigReferenceId` varchar(100) NOT NULL,
  `CompanyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_values`
--

INSERT INTO `config_values` (`ConfigValueId`, `ConfigValueGroupId`, `ConfigValueDetails`, `ConfigReferenceId`, `CompanyID`) VALUES
(1, '1', 'Team A', '', 1),
(2, '1', 'Team B', '', 1),
(3, '1', 'Team C', '', 1),
(4, '6', 'HIGH', '', 1),
(5, '6', 'MEDIUM', '', 1),
(6, '6', 'LOW', '', 1),
(7, '7', 'Web-Designing', '', 1),
(8, '7', 'App-Development', '', 1),
(9, '7', 'Software-Development', '', 1),
(10, '7', 'CRM Development', '', 1),
(11, '7', 'Digital Marketing', '', 1),
(12, '9', 'Facebook', '', 1),
(13, '9', 'Instagram', '', 1),
(14, '9', 'Google Ads', '', 1),
(15, '9', 'Trade India', '', 1),
(16, '9', 'India Mart', '', 1),
(17, '9', 'Self', '', 1),
(18, '9', 'Other', '', 1),
(19, '5', 'WEB-TECHNOLIGY', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `expanses`
--

CREATE TABLE `expanses` (
  `ExpansesId` bigint(100) NOT NULL,
  `ExpanseName` varchar(200) NOT NULL,
  `ExpanseCategory` varchar(200) NOT NULL,
  `ExpanseTags` varchar(200) NOT NULL,
  `ExpanseAmount` int(10) NOT NULL,
  `ExpanseDescription` varchar(10000) NOT NULL,
  `ExpanseCreatedBy` varchar(100) NOT NULL,
  `ExpanseCreatedFor` varchar(100) NOT NULL,
  `ExpanseDate` varchar(100) NOT NULL,
  `ExpanseCreatedAt` varchar(100) NOT NULL,
  `ExpanseUpdatedAt` varchar(100) NOT NULL,
  `ExpanseUpdatedBy` varchar(100) NOT NULL,
  `ExpanseReceiptAttachment` varchar(1000) NOT NULL,
  `ExpansePaidStatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expanses`
--

INSERT INTO `expanses` (`ExpansesId`, `ExpanseName`, `ExpanseCategory`, `ExpanseTags`, `ExpanseAmount`, `ExpanseDescription`, `ExpanseCreatedBy`, `ExpanseCreatedFor`, `ExpanseDate`, `ExpanseCreatedAt`, `ExpanseUpdatedAt`, `ExpanseUpdatedBy`, `ExpanseReceiptAttachment`, `ExpansePaidStatus`) VALUES
(1, 'testt', 'test', 'test', 1000, 'ZzJaYWJZRnYwUzFwVjJMZTQvb3NFZz09', '1', '', '2023-03-31', '2023-03-31 04:27:28 PM', '2023-03-31 04:27:28 PM', '1', '', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `LeadsId` int(10) NOT NULL,
  `LeadPersonFullname` varchar(100) NOT NULL,
  `LeadSalutations` varchar(1000) NOT NULL,
  `LeadPersonPhoneNumber` varchar(100) NOT NULL,
  `LeadPersonEmailId` varchar(200) NOT NULL,
  `LeadPersonAddress` varchar(1000) NOT NULL,
  `LeadPersonCreatedAt` varchar(100) NOT NULL,
  `LeadPersonLastUpdatedAt` varchar(100) NOT NULL,
  `LeadPersonCreatedBy` varchar(100) NOT NULL,
  `LeadPersonManagedBy` varchar(100) NOT NULL,
  `LeadPersonStatus` varchar(100) NOT NULL,
  `LeadPriorityLevel` varchar(100) NOT NULL,
  `LeadPersonNotes` varchar(10000) NOT NULL,
  `LeadPersonSource` varchar(1000) NOT NULL,
  `LeadPersonSubStatus` varchar(100) NOT NULL,
  `LeadForCountry` varchar(100) NOT NULL,
  `LeadLastQualification` varchar(100) NOT NULL,
  `LeadUniversityName` varchar(1000) NOT NULL,
  `CompanyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`LeadsId`, `LeadPersonFullname`, `LeadSalutations`, `LeadPersonPhoneNumber`, `LeadPersonEmailId`, `LeadPersonAddress`, `LeadPersonCreatedAt`, `LeadPersonLastUpdatedAt`, `LeadPersonCreatedBy`, `LeadPersonManagedBy`, `LeadPersonStatus`, `LeadPriorityLevel`, `LeadPersonNotes`, `LeadPersonSource`, `LeadPersonSubStatus`, `LeadForCountry`, `LeadLastQualification`, `LeadUniversityName`, `CompanyID`) VALUES
(1, 'Kapil Sharma', 'Mr.', '9319703235', 'gourav@236745bk.S.com', 'Noida sector 3', '2023-10-05 12:17:35 PM', '2023-10-05 12:17:35 PM', '2', '1', 'Number Dose not Exist', 'HIGH', '', '', 'FOLLOW-UP', '', '', '', 1),
(2, 'Rahul Malhotra', 'Mr.', '9319703236', 'rahulkumae@szjk.com', 'Sector 3', '2023-10-05 12:27:23 PM', '2023-10-05 12:27:23 PM', '2', '2', 'Switch Off', 'LOW', '', '', 'FOLLOW-UP', '', '', '', 1),
(3, 'Monika Yadav', 'Mr.', '9319703237', 'goufghfh@hkvj.cm', 'peepal chowk', '2023-10-05 01:53:37 PM', '2023-10-05 01:53:37 PM', '3', '3', 'Call Back', 'HIGH', '', '', 'FOLLOW-UP', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lead_followups`
--

CREATE TABLE `lead_followups` (
  `LeadFollowUpId` int(100) NOT NULL,
  `LeadFollowMainId` varchar(100) NOT NULL,
  `LeadFollowStatus` varchar(100) NOT NULL,
  `LeadFollowCurrentStatus` varchar(100) NOT NULL,
  `LeadFollowUpDate` varchar(100) NOT NULL,
  `LeadFollowUpTime` varchar(100) NOT NULL,
  `LeadFollowUpDescriptions` varchar(1000) NOT NULL,
  `LeadFollowUpHandleBy` varchar(100) NOT NULL,
  `LeadFollowUpCreatedAt` varchar(100) NOT NULL,
  `LeadFollowUpCallType` varchar(100) NOT NULL,
  `LeadFollowUpRemindStatus` varchar(1000) NOT NULL,
  `LeadFollowUpRemindNotes` varchar(1000) NOT NULL,
  `LeadFollowUpUpdatedAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lead_followups`
--

INSERT INTO `lead_followups` (`LeadFollowUpId`, `LeadFollowMainId`, `LeadFollowStatus`, `LeadFollowCurrentStatus`, `LeadFollowUpDate`, `LeadFollowUpTime`, `LeadFollowUpDescriptions`, `LeadFollowUpHandleBy`, `LeadFollowUpCreatedAt`, `LeadFollowUpCallType`, `LeadFollowUpRemindStatus`, `LeadFollowUpRemindNotes`, `LeadFollowUpUpdatedAt`) VALUES
(1, '2', 'Software-Development', 'FOLLOW-UP', '2023-10-05', '12:32 PM', 'Call karna zarrori hai', '2', '2023-10-05 12:30:00 PM', '', 'INACTIVE', 'Call karna zarrori hai', '2023-10-05 12:30:00 PM'),
(2, '1', 'Switch Off', 'FOLLOW-UP', '2023-10-05', '12:39 PM', '', '1', '2023-10-05 12:34:51 PM', '', 'INACTIVE', '', '2023-10-05 12:34:51 PM'),
(3, '2', 'Switch Off', 'FOLLOW-UP', '2023-10-05', '12:40 PM', '', '2', '2023-10-05 12:35:59 PM', '', 'INACTIVE', '', '2023-10-05 12:35:59 PM'),
(4, '1', 'Out Of Coverage Area', 'FOLLOW-UP', '2023-10-05', '12:47 PM', '', '1', '2023-10-05 12:45:32 PM', '', 'INACTIVE', '', '2023-10-05 12:45:32 PM'),
(5, '1', 'Number Dose not Exist', 'FOLLOW-UP', '2023-10-05', '12:51 PM', '', '1', '2023-10-05 12:50:53 PM', '', 'ACTIVE', '', '2023-10-05 12:50:53 PM'),
(6, '2', 'Out Of Coverage Area', 'FOLLOW-UP', '2023-10-05', '12:59 PM', '', '1', '2023-10-05 12:58:18 PM', '', 'INACTIVE', '', '2023-10-05 12:58:18 PM'),
(7, '2', 'Out of Validity', 'FOLLOW-UP', '2023-10-05', '01:10 PM', 'sd', '1', '2023-10-05 01:05:59 PM', '', 'INACTIVE', 'sd', '2023-10-05 01:05:59 PM'),
(8, '3', 'Call Back', 'FOLLOW-UP', '2023-10-05', '01:58 PM', 'Call karna zaroori hai', '3', '2023-10-05 01:54:10 PM', '', 'ACTIVE', 'Call karna zaroori hai', '2023-10-05 01:54:10 PM'),
(9, '0', '', 'FOLLOW-UP', '2023-10-12', '02:08:51 PM', '', '1', '2023-10-05 02:08:51 PM', '', 'ACTIVE', '', '2023-10-05 02:08:51 PM'),
(10, '2', 'Switch Off', '', '', '', 'Call Again\r\n', '1', '2023-10-05 02:10:26 PM', '', 'NONE', 'Call Again\r\n', '2023-10-05 02:10:26 PM');

-- --------------------------------------------------------

--
-- Table structure for table `lead_followup_durations`
--

CREATE TABLE `lead_followup_durations` (
  `leadcallId` int(10) NOT NULL,
  `LeadCallFollowUpMainId` int(10) NOT NULL,
  `leadcallstartat` varchar(45) NOT NULL,
  `leadcallendat` varchar(45) NOT NULL,
  `leadcallcreatedat` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_requirements`
--

CREATE TABLE `lead_requirements` (
  `LeadRequirementID` int(10) NOT NULL,
  `LeadMainId` int(10) NOT NULL,
  `LeadRequirementDetails` varchar(200) NOT NULL,
  `LeadRequirementCreatedAt` varchar(100) NOT NULL,
  `LeadRequirementStatus` varchar(100) NOT NULL,
  `LeadRequirementNotes` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lead_requirements`
--

INSERT INTO `lead_requirements` (`LeadRequirementID`, `LeadMainId`, `LeadRequirementDetails`, `LeadRequirementCreatedAt`, `LeadRequirementStatus`, `LeadRequirementNotes`) VALUES
(1, 1, '1', '', '1', ''),
(2, 2, '1', '', '1', ''),
(3, 3, '1', '', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `lead_uploads`
--

CREATE TABLE `lead_uploads` (
  `leadsUploadId` int(100) NOT NULL,
  `LeadsUploadBy` varchar(100) NOT NULL,
  `LeadsUploadedfor` varchar(100) NOT NULL,
  `LeadsName` varchar(100) NOT NULL,
  `LeadsEmail` varchar(100) NOT NULL,
  `LeadsPhone` varchar(100) NOT NULL,
  `LeadsAddress` varchar(100) NOT NULL,
  `LeadsCity` varchar(100) NOT NULL,
  `LeadsProfession` varchar(100) NOT NULL,
  `LeadsSource` varchar(100) NOT NULL,
  `UploadedOn` varchar(1000) NOT NULL,
  `LeadStatus` varchar(100) NOT NULL,
  `LeadProjectsRef` varchar(100) NOT NULL,
  `LeadsWhatsappPhoneNumber` varchar(100) NOT NULL,
  `CompanyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lead_uploads`
--

INSERT INTO `lead_uploads` (`leadsUploadId`, `LeadsUploadBy`, `LeadsUploadedfor`, `LeadsName`, `LeadsEmail`, `LeadsPhone`, `LeadsAddress`, `LeadsCity`, `LeadsProfession`, `LeadsSource`, `UploadedOn`, `LeadStatus`, `LeadProjectsRef`, `LeadsWhatsappPhoneNumber`, `CompanyID`) VALUES
(1, '1', '1', 'Hello', 'email@gamil.com', 'ji', 'sector 3', 'faridabad', 'web', 'facebook', '2023-10-05 12:10:25 PM', 'UPLOADED', '1', '', 1),
(2, '1', '1', 'Hello', 'email@gamil.com', 'ji', 'sector 4', 'faridabad', 'web', 'google', '2023-10-05 12:10:25 PM', 'UPLOADED', '1', '', 1),
(3, '1', '1', 'Hello', 'email@gamil.com', 'ji', 'sector 5', 'faridabad', 'web', 'instagram', '2023-10-05 12:10:25 PM', 'UPLOADED', '1', '', 1),
(4, '1', '1', 'Hello', 'email@gamil.com', 'ji', 'sector 6', 'faridabad', 'web', '99acre', '2023-10-05 12:10:25 PM', 'UPLOADED', '1', '', 1),
(5, '1', '1', 'Hello', 'email@gamil.com', 'ji', 'sector 7', 'faridabad', 'web', 'housing', '2023-10-05 12:10:25 PM', 'UPLOADED', '1', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `NotificationsId` bigint(100) NOT NULL,
  `NotificationRefNo` varchar(100) NOT NULL,
  `NotificationSenderId` int(10) NOT NULL,
  `NotificationReceiverId` int(10) NOT NULL,
  `NotificationDetails` varchar(10000) NOT NULL,
  `NotificationSendDateTime` varchar(30) NOT NULL,
  `NotificationStatus` varchar(10) NOT NULL,
  `NotificationReadAt` varchar(25) NOT NULL,
  `NotificationResponseModule` varchar(1000) NOT NULL,
  `NotificationName` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `ProjectsId` int(100) NOT NULL,
  `ProjectName` varchar(100) NOT NULL,
  `ProjectTypeId` int(10) NOT NULL,
  `ProjectDescriptions` varchar(10000) NOT NULL,
  `ProjectCreatedAt` varchar(100) NOT NULL,
  `ProjectCreatedBy` varchar(100) NOT NULL,
  `ProjectUpdatedAt` varchar(100) NOT NULL,
  `CompanyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`ProjectsId`, `ProjectName`, `ProjectTypeId`, `ProjectDescriptions`, `ProjectCreatedAt`, `ProjectCreatedBy`, `ProjectUpdatedAt`, `CompanyID`) VALUES
(1, 'Project-1', 19, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-10-05 12:05:50 PM', '1', '2023-10-05 12:05:50 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_media_files`
--

CREATE TABLE `project_media_files` (
  `ProjectMediaFileId` int(10) NOT NULL,
  `ProjectMainId` int(10) NOT NULL,
  `ProjectMediaFileName` varchar(1000) NOT NULL,
  `ProjectMediaFileType` varchar(100) NOT NULL,
  `ProjectMediaFileDocument` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `systemlogs`
--

CREATE TABLE `systemlogs` (
  `LogsId` int(100) NOT NULL,
  `logTitle` varchar(200) NOT NULL,
  `logdesc` varchar(1000) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `systeminfo` varchar(1000) NOT NULL,
  `logtype` varchar(100) NOT NULL,
  `logenv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(100) NOT NULL,
  `UserSalutation` varchar(1000) NOT NULL,
  `UserFullName` varchar(500) NOT NULL,
  `UserPhoneNumber` varchar(100) NOT NULL,
  `UserEmailId` varchar(1000) NOT NULL,
  `UserPassword` varchar(500) NOT NULL,
  `UserCreatedAt` varchar(25) NOT NULL DEFAULT 'current_timestamp(6)',
  `UserUpdatedAt` varchar(25) NOT NULL DEFAULT 'current_timestamp(6)',
  `UserStatus` tinyint(1) NOT NULL DEFAULT 1,
  `UserNotes` longtext NOT NULL,
  `UserCompanyName` varchar(1000) NOT NULL,
  `UserDepartment` varchar(1000) NOT NULL,
  `UserDesignation` varchar(1000) NOT NULL,
  `UserWorkFeilds` varchar(1000) NOT NULL,
  `UserProfileImage` varchar(1000) NOT NULL DEFAULT 'default.png',
  `UserType` varchar(1000) NOT NULL,
  `UserDateOfBirth` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `UserSalutation`, `UserFullName`, `UserPhoneNumber`, `UserEmailId`, `UserPassword`, `UserCreatedAt`, `UserUpdatedAt`, `UserStatus`, `UserNotes`, `UserCompanyName`, `UserDepartment`, `UserDesignation`, `UserWorkFeilds`, `UserProfileImage`, `UserType`, `UserDateOfBirth`) VALUES
(1, 'Mr./Mrs.', 'Akash', '8115006334', 'akash@gmail.com', 'Akash', '2023-10-05 12:04:45 PM', '2023-10-05 12:04:45 PM', 1, '', 'Crane and Buck Associates', 'IT Services', '', '', 'Profile_Photo__UID_1__05_Oct_2023_02_10_29_97271851139_.jpg', 'Admin', ''),
(2, 'Mr/Mrs.', 'Gourav singh', '9319703234', 'gourav4304@gmail.com', '1', '05-10-2023 12:10', '2023-10-05 12:07:11 PM', 1, '', 'Crane and Buck Associates', 'IT Services', '', '', 'Profile_Photo__UID_2__05_Oct_2023_12_10_33_22151719012_.jpg', 'TeamMember', ''),
(3, 'Mr/Mrs.', 'SOLU UPADHYAY', '8115006330', 'rekhaupadhyay00786@gmail.com', '107672', '05-10-2023 01:10', '2023-10-05 01:50:52 PM', 1, '', 'Crane and Buck Associates', 'IT Services', '', '', 'Profile_Photo__UID_3__05_Oct_2023_02_10_52_8983162746_.jpg', 'TeamMember', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `UserAddressId` int(100) NOT NULL,
  `UserAddressUserId` int(100) NOT NULL,
  `UserStreetAddress` varchar(10000) NOT NULL,
  `UserLocality` varchar(200) NOT NULL,
  `UserCity` varchar(200) NOT NULL,
  `UserState` varchar(200) NOT NULL,
  `UserCountry` varchar(200) NOT NULL,
  `UserPincode` varchar(200) NOT NULL,
  `UserAddressType` varchar(100) NOT NULL,
  `UserAddressContactPerson` varchar(1000) NOT NULL,
  `UserAddressNotes` varchar(1000) NOT NULL,
  `UserAddressMapUrl` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_billings`
--

CREATE TABLE `user_billings` (
  `user_billing_id` int(11) NOT NULL,
  `user_billing_ref_no` varchar(50) NOT NULL,
  `user_main_id` int(11) NOT NULL,
  `user_billing_plan_main_id` int(11) NOT NULL,
  `user_billing_from_date` date NOT NULL,
  `user_billing_to_date` date NOT NULL,
  `user_inactive_times` varchar(15) NOT NULL,
  `user_billing_month` varchar(50) NOT NULL,
  `user_billing_created_at` datetime NOT NULL,
  `user_billing_status` int(11) NOT NULL,
  `user_billing_paid_at` datetime NOT NULL,
  `user_billing_net_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_billings`
--

INSERT INTO `user_billings` (`user_billing_id`, `user_billing_ref_no`, `user_main_id`, `user_billing_plan_main_id`, `user_billing_from_date`, `user_billing_to_date`, `user_inactive_times`, `user_billing_month`, `user_billing_created_at`, `user_billing_status`, `user_billing_paid_at`, `user_billing_net_users`) VALUES
(1, '#REFNO-0510231546', 1, 2, '2023-10-05', '2024-04-02', '0', 'October,2023', '2023-10-05 12:05:05', 1, '2023-10-05 12:05:05', 6);

-- --------------------------------------------------------

--
-- Table structure for table `user_documents`
--

CREATE TABLE `user_documents` (
  `UserDocsId` int(100) NOT NULL,
  `UserMainId` varchar(100) NOT NULL,
  `UserDocumentNo` varchar(100) NOT NULL,
  `UserDocumentName` varchar(100) NOT NULL,
  `UserDocumentFile` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_employment_details`
--

CREATE TABLE `user_employment_details` (
  `UserEmpDetailsId` int(100) NOT NULL,
  `UserMainUserId` varchar(10) NOT NULL,
  `UserEmpBackGround` varchar(100) NOT NULL,
  `UserEmpTotalWorkExperience` varchar(100) NOT NULL,
  `UserEmpPreviousOrg` varchar(100) NOT NULL,
  `UserEmpBloodGroup` varchar(100) NOT NULL,
  `UserEmpReraId` varchar(100) NOT NULL,
  `UserEmpReportingMember` varchar(100) NOT NULL,
  `UserEmpJoinedId` varchar(100) NOT NULL,
  `UserEmpCRMStatus` varchar(100) NOT NULL,
  `UserEmpVisitingCard` varchar(100) NOT NULL,
  `UserEmpWorkEmailId` varchar(100) NOT NULL,
  `UserEmpGroupName` varchar(100) NOT NULL,
  `UserEmpType` varchar(100) NOT NULL,
  `UserEmpLocations` varchar(100) NOT NULL,
  `UserEmpRoleStatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_employment_details`
--

INSERT INTO `user_employment_details` (`UserEmpDetailsId`, `UserMainUserId`, `UserEmpBackGround`, `UserEmpTotalWorkExperience`, `UserEmpPreviousOrg`, `UserEmpBloodGroup`, `UserEmpReraId`, `UserEmpReportingMember`, `UserEmpJoinedId`, `UserEmpCRMStatus`, `UserEmpVisitingCard`, `UserEmpWorkEmailId`, `UserEmpGroupName`, `UserEmpType`, `UserEmpLocations`, `UserEmpRoleStatus`) VALUES
(1, '2', '', '', '', '', '', '1', '', '', '', '', 'Team A', '', '', ''),
(2, '3', '', '', '', '', '', '1', '', '', '', '', 'Team B', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_password_change_requests`
--

CREATE TABLE `user_password_change_requests` (
  `PasswordChangeReqId` int(100) NOT NULL,
  `UserIdForPasswordChange` varchar(1000) NOT NULL,
  `PasswordChangeToken` varchar(1000) NOT NULL,
  `PasswordChangeTokenExpireTime` varchar(1000) NOT NULL,
  `PasswordChangeDeviceDetails` varchar(10000) NOT NULL,
  `PasswordChangeRequestStatus` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_plan`
--

CREATE TABLE `user_plan` (
  `user_plan_id` int(11) NOT NULL,
  `user_main_id` int(11) NOT NULL,
  `user_plan_main_id` int(11) NOT NULL,
  `user_plan_amount_per_user` varchar(11) NOT NULL,
  `total_user` int(11) NOT NULL,
  `user_plan_pay_period` varchar(50) NOT NULL,
  `user_plan_started_from` datetime NOT NULL,
  `user_plan_end_at` datetime NOT NULL,
  `user_plan_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_plan`
--

INSERT INTO `user_plan` (`user_plan_id`, `user_main_id`, `user_plan_main_id`, `user_plan_amount_per_user`, `total_user`, `user_plan_pay_period`, `user_plan_started_from`, `user_plan_end_at`, `user_plan_status`) VALUES
(1, 1, 2, '350', 6, 'Half-Yearly', '2023-10-05 12:05:05', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_transactions`
--

CREATE TABLE `user_transactions` (
  `user_txn_id` int(11) NOT NULL,
  `user_billing_main_id` int(11) NOT NULL,
  `user_txn_ref_no` varchar(50) NOT NULL,
  `user_txn_date` datetime NOT NULL,
  `user_txn_amount` varchar(11) NOT NULL,
  `user_txn_pay_mode` varchar(20) NOT NULL,
  `user_txn_payment_id` varchar(60) NOT NULL,
  `user_txn_status` int(11) NOT NULL,
  `user_txn_details` varchar(50) NOT NULL,
  `user_paid_at` datetime NOT NULL,
  `user_txn_tax` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_transactions`
--

INSERT INTO `user_transactions` (`user_txn_id`, `user_billing_main_id`, `user_txn_ref_no`, `user_txn_date`, `user_txn_amount`, `user_txn_pay_mode`, `user_txn_payment_id`, `user_txn_status`, `user_txn_details`, `user_paid_at`, `user_txn_tax`) VALUES
(1, 1, 'TXNNO-0510232772', '2023-10-05 12:05:05', '14868.00', 'Online', 'pay_MkQcSho469EeYw', 1, '', '2023-10-05 12:05:05', '18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_address`
--
ALTER TABLE `company_address`
  ADD PRIMARY KEY (`Company_Add_Id`);

--
-- Indexes for table `company_emails`
--
ALTER TABLE `company_emails`
  ADD PRIMARY KEY (`company_email_ids`);

--
-- Indexes for table `company_phone_numbers`
--
ALTER TABLE `company_phone_numbers`
  ADD PRIMARY KEY (`company_phone_id`);

--
-- Indexes for table `company_policies`
--
ALTER TABLE `company_policies`
  ADD PRIMARY KEY (`PolicyId`);

--
-- Indexes for table `company_users`
--
ALTER TABLE `company_users`
  ADD PRIMARY KEY (`company_users_id`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`ConfigsId`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`configurationsid`);

--
-- Indexes for table `config_companies`
--
ALTER TABLE `config_companies`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `config_facebook_accounts`
--
ALTER TABLE `config_facebook_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config_lead_counters`
--
ALTER TABLE `config_lead_counters`
  ADD PRIMARY KEY (`config_lead_counter_id`);

--
-- Indexes for table `config_pgs`
--
ALTER TABLE `config_pgs`
  ADD PRIMARY KEY (`ConfigPgId`);

--
-- Indexes for table `config_plans`
--
ALTER TABLE `config_plans`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `config_values`
--
ALTER TABLE `config_values`
  ADD PRIMARY KEY (`ConfigValueId`);

--
-- Indexes for table `expanses`
--
ALTER TABLE `expanses`
  ADD PRIMARY KEY (`ExpansesId`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`LeadsId`);

--
-- Indexes for table `lead_followups`
--
ALTER TABLE `lead_followups`
  ADD PRIMARY KEY (`LeadFollowUpId`);

--
-- Indexes for table `lead_followup_durations`
--
ALTER TABLE `lead_followup_durations`
  ADD PRIMARY KEY (`leadcallId`);

--
-- Indexes for table `lead_requirements`
--
ALTER TABLE `lead_requirements`
  ADD PRIMARY KEY (`LeadRequirementID`);

--
-- Indexes for table `lead_uploads`
--
ALTER TABLE `lead_uploads`
  ADD PRIMARY KEY (`leadsUploadId`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`NotificationsId`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`ProjectsId`);

--
-- Indexes for table `project_media_files`
--
ALTER TABLE `project_media_files`
  ADD PRIMARY KEY (`ProjectMediaFileId`);

--
-- Indexes for table `systemlogs`
--
ALTER TABLE `systemlogs`
  ADD PRIMARY KEY (`LogsId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`UserAddressId`);

--
-- Indexes for table `user_billings`
--
ALTER TABLE `user_billings`
  ADD PRIMARY KEY (`user_billing_id`),
  ADD KEY `test` (`user_main_id`),
  ADD KEY `user_billings_ibfk_1` (`user_billing_plan_main_id`);

--
-- Indexes for table `user_documents`
--
ALTER TABLE `user_documents`
  ADD PRIMARY KEY (`UserDocsId`);

--
-- Indexes for table `user_employment_details`
--
ALTER TABLE `user_employment_details`
  ADD PRIMARY KEY (`UserEmpDetailsId`);

--
-- Indexes for table `user_password_change_requests`
--
ALTER TABLE `user_password_change_requests`
  ADD PRIMARY KEY (`PasswordChangeReqId`);

--
-- Indexes for table `user_plan`
--
ALTER TABLE `user_plan`
  ADD PRIMARY KEY (`user_plan_id`),
  ADD KEY `user_plan` (`user_plan_main_id`);

--
-- Indexes for table `user_transactions`
--
ALTER TABLE `user_transactions`
  ADD PRIMARY KEY (`user_txn_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company_address`
--
ALTER TABLE `company_address`
  MODIFY `Company_Add_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_emails`
--
ALTER TABLE `company_emails`
  MODIFY `company_email_ids` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_phone_numbers`
--
ALTER TABLE `company_phone_numbers`
  MODIFY `company_phone_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_policies`
--
ALTER TABLE `company_policies`
  MODIFY `PolicyId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `company_users`
--
ALTER TABLE `company_users`
  MODIFY `company_users_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `ConfigsId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `configurationsid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `config_companies`
--
ALTER TABLE `config_companies`
  MODIFY `company_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `config_facebook_accounts`
--
ALTER TABLE `config_facebook_accounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `config_lead_counters`
--
ALTER TABLE `config_lead_counters`
  MODIFY `config_lead_counter_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `config_pgs`
--
ALTER TABLE `config_pgs`
  MODIFY `ConfigPgId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `config_plans`
--
ALTER TABLE `config_plans`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `config_values`
--
ALTER TABLE `config_values`
  MODIFY `ConfigValueId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `expanses`
--
ALTER TABLE `expanses`
  MODIFY `ExpansesId` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `LeadsId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lead_followups`
--
ALTER TABLE `lead_followups`
  MODIFY `LeadFollowUpId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lead_followup_durations`
--
ALTER TABLE `lead_followup_durations`
  MODIFY `leadcallId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_requirements`
--
ALTER TABLE `lead_requirements`
  MODIFY `LeadRequirementID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lead_uploads`
--
ALTER TABLE `lead_uploads`
  MODIFY `leadsUploadId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `NotificationsId` bigint(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `ProjectsId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_media_files`
--
ALTER TABLE `project_media_files`
  MODIFY `ProjectMediaFileId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `systemlogs`
--
ALTER TABLE `systemlogs`
  MODIFY `LogsId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `UserAddressId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_billings`
--
ALTER TABLE `user_billings`
  MODIFY `user_billing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_documents`
--
ALTER TABLE `user_documents`
  MODIFY `UserDocsId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_employment_details`
--
ALTER TABLE `user_employment_details`
  MODIFY `UserEmpDetailsId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_password_change_requests`
--
ALTER TABLE `user_password_change_requests`
  MODIFY `PasswordChangeReqId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_plan`
--
ALTER TABLE `user_plan`
  MODIFY `user_plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_transactions`
--
ALTER TABLE `user_transactions`
  MODIFY `user_txn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_billings`
--
ALTER TABLE `user_billings`
  ADD CONSTRAINT `user_billings_ibfk_1` FOREIGN KEY (`user_billing_plan_main_id`) REFERENCES `config_plans` (`plan_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
