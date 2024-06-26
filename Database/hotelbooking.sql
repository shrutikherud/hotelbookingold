-- SQLBook: Code
-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2023 at 06:27 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hbwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(1, 'shruti', '12345'),
(2, 'nikita', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `address`) VALUES
(21, 21, 'WelcomHotel', 5000, 10000, NULL, 'sk', '1234567890', 'xyz'),
(25, 25, 'Windsor', 6000, 18000, NULL, 'isha', '8796012493', 'mumbai'),
(27, 27, 'Mementos', 6000, 24000, NULL, 'shiv', '8765432159', 'pune'),
(34, 34, 'ITC Hotel', 9000, 18000, NULL, 'shruti', '9527060549', 'nashik'),
(37, 37, 'Gardenia', 4000, 16000, NULL, 'sidd', '9632587410', 'banglore'),
(41, 41, 'Windsor', 6000, 12000, '4', 'raj', '9876543210', 'abc'),
(151, 151, 'ITC Hotel', 9000, 9000, '19', 'ketaki', '9745861203', 'nagpur'),
(159, 159, 'Mementos', 6000, 6000, '7', 'shiv', '8765432159', 'pune'),
(161, 161, 'Windsor', 6000, 12000, '7', 'shruti', '9527060549', 'nashik'),
(162, 162, 'Mementos', 6000, 6000, '10', 'shiv', '8765432159', 'pune'),
(163, 163, 'ITC Hotel', 9000, 18000, '2', 'shruti', '9527060549', 'nashik');


-- --------------------------------------------------------

--
-- Table structure for table `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `arrival` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `booking_status` varchar(100) NOT NULL DEFAULT 'pending',
  `order_id` varchar(150) NOT NULL,
  `trans_id` varchar(200) DEFAULT NULL,
  `trans_amt` int(11) NOT NULL,
  `trans_status` varchar(100) NOT NULL DEFAULT 'pending',
  `trans_resp_msg` varchar(200) DEFAULT NULL,
  `rate_review` int(11) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `check_out`, `arrival`, `refund`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `trans_resp_msg`, `rate_review`, `datentime`) VALUES
(12, 2, 3, '2022-08-20', '2022-08-24', 1, NULL, 'booked', 'ORD_2445093', '20220820111212800110168173403969278', 1200, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-20 00:20:23'),
(13, 2, 4, '2022-08-20','2022-08-26', 1, NULL, 'booked','ORD_29233995', '20220820111212800110168584503978338', 3000, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-20 00:20:45'),
(14, 2, 5, '2022-08-20', '2022-08-24', 1, NULL,'booked', 'ORD_28902800', '20220820111212800110168816503988359', 2400, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-20 00:21:06'),
(16, 2, 5, '2022-08-26', '2022-08-28', 1, NULL, 'booked', 'ORD_28784829', '20220825111212800110168627505415606', 1200, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-25 01:52:04'),
(21, 9, 4, '2024-04-24', '2024-04-26', 0, NULL, 'pending', 'ORD_96897561',NULL, 0, 'pending', NULL, NULL, '2024-04-22 15:18:28'),
(25, 13, 1, '2024-04-27', '2024-04-30', 0, NULL, 'pending', 'ORD_135778170', NULL, 0, 'pending', NULL, NULL, '2024-04-23 23:56:34'),
(27, 12, 5, '2024-04-26', '2024-04-30', 0, NULL, 'pending', 'ORD_128109812',NULL, 0, 'pending', NULL, NULL, '2024-04-24 00:39:13'),
(34, 11, 6, '2024-04-26', '2024-04-28', 0, NULL, 'pending', 'ORD_1120588', NULL, 0, 'pending', NULL, NULL, '2024-04-25 01:50:18'),
(37, 14, 2, '2024-05-02', '2024-05-06', 0, NULL, 'pending', 'ORD_1472661', NULL, 0, 'pending', NULL, NULL, '2024-04-25 16:06:00'),
(38, 14, 3, '2024-04-26', '2024-04-27', 1, NULL, 'booked', 'ORD_1469359', NULL, 0, 'TXN_SUCCESS', NULL, 1, '2024-04-25 16:10:54'),
(41, 10, 1, '2024-04-27', '2024-04-29', 1, NULL, 'booked', 'ORD_1015021', NULL, 0, 'TXN_SUCCESS', NULL, 0, '2024-04-25 17:39:55'),
(44, 10, 5, '2024-04-27', '2024-04-28', 0, NULL, 'booked', 'ORD_1019855', NULL, 0, 'TXN_SUCCESS', NULL, NULL, '2024-04-25 17:58:36'),
(151, 15, 6, '2024-04-29', '2024-04-30', 1, NULL, 'booked', 'ORD_1596490', NULL, 0, 'TXN_SUCCESS', NULL, 0, '2024-04-25 22:52:52'),
(159, 12, 5, '2024-04-28', '2024-04-29', 1, NULL, 'booked', 'ORD_1255269', NULL, 0, 'TXN_SUCCESS', NULL, 0, '2024-04-28 23:00:22'),
(161, 11, 1, '2024-05-21', '2024-05-23', 1, NULL, 'booked', 'ORD_1169698', NULL, 0, 'TXN_SUCCESS', NULL, 0, '2024-05-20 14:01:44'),
(162, 12, 5, '2024-05-28', '2024-05-29', 1, NULL, 'booked', 'ORD_1237359', NULL, 0, 'TXN_SUCCESS', NULL, 0, '2024-05-20 14:30:56'),
(163, 11, 6, '2024-05-28', '2024-05-30', 1, NULL, 'booked', 'ORD_1190066', NULL, 0, 'TXN_SUCCESS', NULL, 1, '2024-05-20 14:42:35');


-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(4, 'IMG_62045.png'),
(5, 'IMG_93127.png'),
(6, 'IMG_99736.png'),
(8, 'IMG_40905.png'),
(9, 'IMG_55677.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gmap` varchar(100) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, 'MES-IMCC College, Mayur Colony, Kothrud, Pune', 'https://maps.app.goo.gl/hGdes7yRyCPvJJbi7', 918529636985, 911122233355, 'shruti.kherud@gmail.com', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.twitter.com/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3783.5406572848756!2d73.814649874967!3d18.504454469666832!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2bfbfebf71269%3A0x867cff78f72ea691!2sMES-IMCC%20College!5e0!3m2!1sen!2sin!4v1709322540762!5m2!1sen!2sin');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(13, 'IMG_43553.svg', 'Wifi', 'Enjoy fast and reliable internet access throughout the hotel premises. Stay connected anytime, anywhere within the hotel premises. Utilize our Wi-Fi service in our dedicated business center for work-related tasks.'),
(14, 'IMG_49949.svg', 'Air conditioner', 'Each room and suite is equipped with its own air conditioning unit, allowing guests to personalize their comfort settings. Easily adjust the temperature to suit your preferences, ensuring a comfortable stay regardless of the weather outside.'),
(15, 'IMG_41622.svg', 'Television', 'Each room and suite is equipped with a high-definition television set, offering a wide selection of channels for your entertainment. Choose from a diverse range of channels, including local and international news, sports, movies.'),
(17, 'IMG_47816.svg', 'Spa', 'Step into a serene oasis designed to soothe your senses and calm your mind, offering an escape from the hustle and bustle of everyday life. Our team of experienced therapists is dedicated to providing personalized treatments.'),
(18, 'IMG_96423.svg', 'Room Heater', 'Guests can adjust the temperature according to their preferences with our easy-to-use room heaters. Whether you prefer a toasty atmosphere for a relaxing evening or a mild warmth for a peaceful nights sleep, our heaters offer customizable settings to suit your needs.'),
(19, 'IMG_27079.svg', 'Geyser', 'Geysers are designed to heat water quickly, ensuring that guests have access to hot water whenever they need it, whether its for showering, bathing, or other purposes.');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(13, 'bedroom'),
(14, 'balcony'),
(15, 'kitchen'),
(17, 'sofa');

-- --------------------------------------------------------

--
-- Table structure for table `rating_review`
--

CREATE TABLE `rating_review` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating_review`
--

INSERT INTO `rating_review` (`sr_no`, `booking_id`, `room_id`, `user_id`, `rating`, `review`, `seen`, `datentime`) VALUES
(4, 14, 5, 9, 5, 'Absolutely Exceptional Experience! From the moment we stepped into the lobby, we were greeted with warmth and hospitality. The staff went beyond to ensure our stay was nothing short of perfection.', 1, '2022-08-20 00:22:25'),
(5, 13, 4, 10, 3, 'Average Experience. Our stay at the hotel was decent overall. In summary, while our stay was satisfactory, we feel that there is room for improvement to elevate the overall guest experience.', 1, '2022-08-20 00:22:30'),
(6, 12, 3, 11, 1, 'Disappointing Experience. From the moment we arrived, we encountered numerous issues that made our visit unpleasant. The staff appeared disorganized and overwhelmed, which resulted in a lengthy wait.', 1, '2022-08-20 00:22:34'),
(8, 14, 2, 12, 2, 'Mediocre Experience. While it had some positive aspects, there were several significant drawbacks that detracted from our overall enjoyment. Overall, while our stay was not terrible, it was far better', 1, '2022-08-20 00:22:25'),
(9, 12, 1, 13, 4, 'Great Stay, Minor Improvements Needed. Overall, we had a great stay and would consider returning in the future. With a few tweaks and improvements, this hotel could easily earn a 5-star rating from us', 1, '2022-08-20 00:22:34'),
(10, 12, 5, 14, 4, 'Overall, our stay at this hotel surpassed all expectations. Every aspect, from the luxurious accommodations to the impeccable service, contributed to an unforgettable experience.', 1, '2022-08-20 00:22:34'),
(11, 16, 3, 15, 3, 'Additionally, we found the amenities to be lacking compared to other hotels in the same price range. While our stay was satisfactory, we feel that there is room for improvement.', 1, '2022-09-08 01:14:18');
(12, 38, 3, 14, 3, 'nice hotel', 1, '2024-04-27 16:48:10');
(13, 163, 6, 11, 3, 'Service was ok(moderate).', 0, '2024-05-20 14:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(1, 'Windsor', 159, 6000, 56, 4, 1, 'Inspired to resonate with a timeless English manor, ITC Windsor efficiently merges old world charm with world class service standards to create distinctive experiences.', 1, 0),
(2, 'Gardenia', 785, 4000, 85, 3, 1, 'A tribute to the gardens of Bengaluru, ITC Gardenia offers rooms & suites inspired by nature, naturally air-cooled public spaces, signature gourmet & wellness experiences.', 1, 0),
(3, 'ITC Maratha', 250, 3000, 10, 5, 3, 'Inspired by the Maratha dynasty & located close to the airport, this luxury hotel in Mumbai combines European and Indian sensibilities with vintage charm and contemporary efficiency.', 1, 0),
(4, 'WelcomHotel', 300, 5000, 10, 3, 2, 'Designed for those who demand more to make the most out of their stay, Welcomhotel is the new age travelers key to curated immersive experiences that enrich both business and leisure journeys. Present in locations ranging from hills to beaches, and deserts to cities, our hotels skillfully blend together local aesthetics and modern day comforts.', 1, 0),
(5, 'Mementos', 600, 6000, 2, 5, 2, 'Mementos by ITC Hotels is a collection of luxury hotels that offer the rarest of luxuries: great memories. Every detail of the Mementos experience is designed to create exquisite moments, unique to each destination and transform them into something truly unforgettable. So that from the time you arrive, after you depart, every moment stays.', 1, 0),
(6, 'ITC Hotel', 500, 9000, 12, 6, 1, 'With ‘Namaste’ as the enduring symbol of its brand experience and ‘Responsible Luxury’ as the guiding premise, ITC Hotels are an archetype of the culture and ethos of each destination offering authentic, indigenous luxury experiences which are in harmony with the environment and society.', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(29, 4, 14),
(30, 4, 18),
(31, 4, 19),
(35, 6, 13),
(36, 6, 14),
(37, 6, 18),
(38, 6, 19),
(39, 5, 13),
(40, 5, 14),
(41, 5, 18),
(42, 3, 14),
(43, 3, 15),
(44, 3, 18),
(45, 3, 19),
(46, 1, 13),
(47, 1, 15),
(48, 2, 19),
(49, 2, 17),
(50, 2, 14),
(51, 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(13, 3, 17),
(14, 3, 14),
(15, 2, 17),
(16, 4, 13),
(17, 4, 14),
(18, 4, 15),
(19, 1, 13),
(20, 2, 14),
(21, 1, 14),
(22, 6, 13),
(23, 6, 14),
(24, 6, 15),
(25, 5, 13),
(26, 5, 14),
(27, 5, 15),
(28, 3, 13);


-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(15, 3, 'IMG_39782.png', 0),
(16, 3, 'IMG_65019.png', 1),
(17, 4, 'IMG_44867.png', 0),
(18, 4, 'IMG_78809.png', 1),
(19, 4, 'IMG_11892.png', 0),
(21, 5, 'IMG_17474.png', 0),
(22, 5, 'IMG_42663.png', 1),
(23, 5, 'IMG_70583.png', 0),
(24, 6, 'IMG_67761.png', 0),
(25, 6, 'IMG_69824.png', 1),
(26, 1, 'IMG_12338.jpg', 1),
(27, 1, 'IMG_34263.jpg', 0),
(28, 2, 'IMG_22401.jpg', 1),
(29, 2, 'IMG_13860.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'Get Hotels', 'Welcome to our Hotel Booking System! We are here to redefine your travel experience with seamless booking and exceptional hospitality. Our user-friendly platform offers a diverse range of accommodations tailored to your needs.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(16, 'Shruti', '3.jpg'),
(17, 'Nikita', '2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  -- `email` varchar(150) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `aadhar` varchar(12) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  -- `profile` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  -- `is_verified` int(11) NOT NULL DEFAULT 0,
  -- `token` varchar(200) DEFAULT NULL,
  -- `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `phonenum`, `aadhar`,`address`, `pincode`, `dob`, `password`, `status`, `datentime`) VALUES
(2, 'neal', '123', "",'ad',  123324, '2022-06-12',  '$2y$10$2IsUjaIwxb/UuaR7abvUNOs/VKmwy848VPsNnswF4bIFRIMDE36zm',  1, '2022-06-12 16:05:59'),
(9, 'sk', '1234567890',"511513113161" ,'xyz',  2132, '2006-12-02',  '$2y$10$gWRQW2PZtIKkP.f.Wu.mCe/ssU8er/G4ygEpvI78e5elpwrXh.U0y',  1, '2024-04-22 14:38:38'),
(10, 'raj', '9876543210', "324621532365",'abc',  4256, '2004-07-12',  '$2y$10$LH4chlbK50m0vtw7iw.oMeL2wj3/qicUat/gebreIXxjgbutHhmvC', 1, '2024-04-22 15:19:46'),
(11, 'shruti', '9527060549', "656472326950",'nashik',  4256, '2002-09-07',  '$2y$10$TYVjKnsj1i7wf9AYLjYZKeXmVQEYohD9aYl6NEdzu8jQ8yBDPX73.', 1, '2024-04-22 15:21:07'),
(12, 'shiv', '8765432159', "212465931611",'pune',  54232, '1997-06-29',  '$2y$10$JXmcaCt6R22Z/CC8pt0weem.iApHyrqniD4Rs5CaE1chO6fybAUlm', 1, '2024-04-22 15:22:09'),
(13, 'isha', '8796012493', "565426236613",'mumbai',  2246, '2002-12-16',  '$2y$10$txwex7TeA4qItv173QVeJundU.9haDXGNwXasUEenaipEnVTRUmCq', 1, '2024-04-22 15:23:27'),
(14, 'sidd', '9632587410', "123502895334",'banglore',  54920, '2004-03-25',  '$2y$10$7F.mLVj.t5VFrBBAERn1zedIf1WtRG2S/USDBLpSx9ctpTVE9ZHTe', 1, '2024-04-22 15:24:52'),
(15, 'ketaki', '9745861203', "124035499635",'nagpur',  1024, '2002-06-11',  '$2y$10$D64UZw8kbdvE.E8ApfSVxuR2magugSCAvvV8v9.c.fZLvAnphQW/6', 1, '2024-04-22 15:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phonenum` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `phonenum`, `subject`, `message`, `datentime`, `seen`) VALUES
(14, 'sk', '1234567890', 'enquiry', 'rates', '2024-04-22 13:46:44', 1),
(15, 'shruti', '9527060549', 'service', 'maintenance', '2024-04-22 17:16:20', 1),
(16, 'isha', '8796012493', 'hotel enquiry', 'how many beds are available in one room?', '2024-04-22 17:17:34', 0),
(17, 'shiv', '8765432159', 'xyz', 'pqrs', '2024-04-22 17:19:10', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `facilities id` (`facilities_id`),
  ADD KEY `room id` (`room_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `features id` (`features_id`),
  ADD KEY `rm id` (`room_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rating_review`
--
ALTER TABLE `rating_review`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`);

--
-- Constraints for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD CONSTRAINT `rating_review_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`),
  ADD CONSTRAINT `rating_review_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `rating_review_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`);

--
-- Constraints for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `rm id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
