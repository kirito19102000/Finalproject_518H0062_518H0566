-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2020 at 05:39 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_banhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `fullname`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Administrator', 'admin', '$2y$10$hQMZTM3KAtneMePjfE5m/O1Ck.4VjNcXyn1SWPF4513V.oYK24pE6', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Bill_ID` int(54) NOT NULL,
  `username` char(100) NOT NULL,
  `Total` int(30) NOT NULL,
  `Note` char(100) DEFAULT NULL,
  `Date_Order` datetime(6) DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`Bill_ID`, `username`, `Total`, `Note`, `Date_Order`) VALUES
(1, 'thang54682777@gmail.com', 244444, NULL, '2020-07-10 00:00:00.000000'),
(2, 'thang54682777@gmail.com', 444444, NULL, '2020-07-10 00:00:00.000000'),
(3, 'thang54682777@gmail.com', 622222, NULL, '2020-07-10 00:00:00.000000'),
(4, 'thang54682777@gmail.com', 622222, NULL, '2020-07-10 00:00:00.000000'),
(5, 'thang54682777@gmail.com', 822222, NULL, '2020-07-10 00:00:00.000000'),
(6, 'thang54682777@gmail.com', 822222, NULL, '2020-07-10 00:00:00.000000'),
(7, 'thang54682777@gmail.com', 822222, NULL, '2020-07-10 00:00:00.000000'),
(8, 'thang54682777@gmail.com', 822222, NULL, '2020-07-10 00:00:00.000000'),
(9, 'thang54682777@gmail.com', 822222, NULL, '2020-07-10 00:00:00.000000'),
(10, 'thang54682777@gmail.com', 322222, NULL, '2020-07-10 00:00:00.000000'),
(11, 'thang54682777@gmail.com', 244444, NULL, '2020-07-10 00:00:00.000000'),
(12, 'thang54682777@gmail.com', 244444, NULL, '2020-07-10 00:00:00.000000'),
(13, 'thang54682777@gmail.com', 244444, NULL, '2020-07-10 00:00:00.000000'),
(14, 'thang54682777@gmail.com', 244444, NULL, '2020-07-10 00:00:00.000000'),
(15, 'thang54682777@gmail.com', 244444, NULL, '2020-07-10 00:00:00.000000'),
(16, 'thang54682777@gmail.com', 244444, NULL, '2020-07-10 00:00:00.000000'),
(17, 'thang54682777@gmail.com', 244444, NULL, '2020-07-10 00:00:00.000000'),
(18, 'thang54682777@gmail.com', 622222, NULL, '2020-07-10 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `Bill_ID` int(30) NOT NULL,
  `Product_ID` char(100) NOT NULL,
  `Price` int(30) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`Bill_ID`, `Product_ID`, `Price`, `create_at`) VALUES
(1, '10', 200000, '2020-07-10 06:41:01'),
(1, '1', 122222, '2020-07-10 06:41:01'),
(1, '1', 122222, '2020-07-10 09:13:47'),
(1, '2', 122222, '2020-07-10 09:13:47'),
(2, '1', 122222, '2020-07-10 09:14:07'),
(2, '2', 122222, '2020-07-10 09:14:07'),
(2, '10', 200000, '2020-07-10 09:14:07'),
(3, '7', 500000, '2020-07-10 12:36:12'),
(3, '2', 122222, '2020-07-10 12:36:12'),
(4, '7', 500000, '2020-07-10 12:36:57'),
(4, '2', 122222, '2020-07-10 12:36:57'),
(5, '7', 500000, '2020-07-10 12:38:06'),
(6, '7', 500000, '2020-07-10 12:38:25'),
(7, '7', 500000, '2020-07-10 12:39:06'),
(8, '7', 500000, '2020-07-10 12:39:47'),
(8, '2', 122222, '2020-07-10 12:39:47'),
(9, '7', 500000, '2020-07-10 12:40:32'),
(9, '2', 122222, '2020-07-10 12:40:32'),
(10, '2', 122222, '2020-07-10 12:40:59'),
(10, '10', 200000, '2020-07-10 12:40:59'),
(11, '1', 122222, '2020-07-10 12:41:55'),
(11, '2', 122222, '2020-07-10 12:41:55'),
(12, '1', 122222, '2020-07-10 12:42:59'),
(12, '2', 122222, '2020-07-10 12:42:59'),
(13, '1', 122222, '2020-07-10 12:43:02'),
(13, '2', 122222, '2020-07-10 12:43:02'),
(14, '1', 122222, '2020-07-10 12:43:33'),
(15, '1', 122222, '2020-07-10 12:46:05'),
(15, '2', 122222, '2020-07-10 12:46:05'),
(16, '1', 122222, '2020-07-10 12:46:24'),
(16, '2', 122222, '2020-07-10 12:46:24'),
(17, '1', 122222, '2020-07-10 12:46:37'),
(17, '2', 122222, '2020-07-10 12:46:38'),
(18, '1', 122222, '2020-07-10 14:11:47'),
(18, '7', 500000, '2020-07-10 14:11:47');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `username` char(100) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Date` datetime(6) NOT NULL,
  `id` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`username`, `Product_ID`, `Date`, `id`) VALUES
('thang54682777@gmail.com', 7, '2020-07-10 00:00:00.000000', 5),
('thang54682777@gmail.com', 2, '2020-07-10 00:00:00.000000', 16),
('thang54682777@gmail.com', 1, '2020-07-10 00:00:00.000000', 18),
('thang54682777@gmail.com', 7, '2020-07-10 00:00:00.000000', 19);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_09_192850_create_readers_table', 2),
(5, '2020_07_10_003638_create_products_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` int(11) NOT NULL,
  `promotion_price` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Name`, `ID_type`, `description`, `unit_price`, `promotion_price`, `image`, `created_at`, `updated_at`, `link`) VALUES
(1, 'Living in the Light: A guide to personal transformation 1902', 'TP1', '\"\"Living In The Light\" is very powerful...it can transform your life.\" Now Shatki Gawain leads readers on a new journey of spiritual growth and fulfillment in \"Living In The Light.\"', 500000, 122222, '1.jpg', '2020-06-01 07:53:40', '2020-07-10 03:59:45', 'https://www.pdfdrive.com/download.pdf?id=10172273&h=84f0f3490acb0a861ce0cf97be914eed&u=cache&ext=pdf'),
(2, 'Give and Take: WHY HELPING OTHERS DRIVES OUR SUCCESS', 'TP1', 'For generations, we have focused on the individual drivers of success: passion, hard work, talent, and luck. But in today’s dramatically reconfigured world, success is increasingly dependent on how we interact with others.', 500000, 122222, '2.jpg', '2020-06-01 07:53:40', '2020-06-10 14:53:40', 'https://sambazmusic.files.wordpress.com/2017/08/give-and-take.pdf'),
(3, 'Mindset: The New Psychology of Success', 'TP2', 'After decades of research, world-renowned Stanford University psychologist Carol S. Dweck, Ph.D., discovered a simple but groundbreaking idea: the power of mindset.', 0, 0, '3.jpg', '2020-06-01 07:53:40', '2020-06-10 14:53:40', 'https://www.pdfdrive.com/download.pdf?id=60365105&h=0f2b23ade7721f946e0002a6382265ac&u=cache&ext=pdf'),
(5, 'Art Models 8: Practical Poses for the Working Artist', 'TP2', 'Whether for work on a finished piece, trying a new technique, or getting in some practice time, artists can work when and where they want using the Art Models series. Chosen specifically for artists who sell their work', 0, 0, '5.jpg', '2020-06-01 07:53:40', '2020-06-10 14:53:40', 'https://www.pdfdrive.com/download.pdf?id=19607431&h=3c61fa131fd6ff013d8cfb3455be766b&u=cache&ext=pdf'),
(6, 'Guitar Scales Easy Music Lessons for begginners', 'TP2', 'Designed for beginners, this book and streaming video course is all you will need for building technique, mastering music theory, and learning everything you need to know about guitar scales and how to use them in your music!', 0, 0, '4.jpg', '2020-06-01 07:53:40', '2020-06-10 14:53:40', 'https://www.pdfdrive.com/download.pdf?id=14525&h=bca490efa845176705a31981be81f53c&u=cache&ext=pdf'),
(7, 'Creating Simple Solos - Amazing Guitar Secrets fỏ begginer', 'TP1', 'Learn the fine art of lead guitar soloing from the ground up with Lead Guitar Secrets . This well-paced, methodical workbook focuses on the essential components of great guitar solos without the typical deluge of dry music theory instruction.', 500000, 0, '6.jpg', '2020-06-01 07:53:40', '2020-06-10 14:53:40', 'https://www.pdfdrive.com/download.pdf?id=1892811&h=788a4fd88136258af652931af45bfaba&u=cache&ext=pdf'),
(8, 'Networking for Dummies--For Dummies; 7th Ed.', 'TP2', 'Networking For Dummies has long been the leading networking beginner book. The 7th Edition provides valuable updates on the latest tools and trends in networking, including updates to Windows XP ', 0, 0, '7.jpg', '2020-06-01 07:53:40', '2020-06-10 14:53:40', 'http://unhas.ac.id/tahir/BAHAN-KULIAH/TEK.%20JARINGAN%20KOMPUTER%20-%20TE/Networking%20for%20Dummies%207th%20Edition.pdf'),
(10, 'Building Arduino Projects for the Internet of Things', 'TP1', 'Gain a strong foundation of Arduino-based device development, from which you can go in any direction according to your specific development needs and desires. ', 1200000, 200000, '8.jpg', '2020-07-10 02:46:27', '2020-07-10 02:46:27', NULL),
(17, 'Python Programming: An Introduction to Computer Science', 'TP2', 'This book is designed to be used as the primary textbook in a college-level first course in computing. It takes a fairly traditional approach, emphasizing problem-solving, design, and programming as the core skills of computer science. However, these idea', 0, 0, '9.jpg', '2020-07-10 13:06:12', '2020-07-10 13:06:17', 'https://www.pdfdrive.com/download.pdf?id=941324&h=c40d2c52e55a2fd7d41e5195837c0a6a&u=cache&ext=pdf'),
(19, 'Cracking the Coding Interview, Fourth Edition: 150 Programming', 'TP2', '150 Programming Interview Questions and Solutions: From binary trees to binary search, this list of 150 questions includes the most common and most useful questions in data structures, algorithms, and knowledge based questions.', 0, 0, '10.jpg', '2020-07-10 13:06:23', '2020-07-10 13:06:23', 'https://www.pdfdrive.com/download.pdf?id=685299&h=2cec5f957c50f17bdd1d162e7ee95379&u=cache&ext=pdf'),
(20, 'The Conscious Parent: Transforming Ourselves, Empowering Our Children', 'TP2', '\r\nWhile we think it’s our responsibility to mold and shape our children’s future, the essential premise of Dr. Shefali Tsabary’s A Call to Conscious Parenting is that our children are born to us to create deep internal transformation within us.', 0, 0, '11.jpg', '2020-07-10 13:08:58', '2020-07-10 13:08:58', 'https://www.pdfdrive.com/download.pdf?id=60737120&h=c348e12c7f8e071873c6ddbf55bd51d5&u=cache&ext=pdf'),
(21, 'On Becoming Baby Wise: Giving Your Infant the Gift of Nighttime Sleep', 'TP2', 'For over 25 years, On Becoming Babywise has been the de facto newborn parenting manual for naturally synchronizing your baby\'s feeding time, waketime and nighttime sleep cycles, so the whole family can sleep through the night. ', 0, 0, '12.jpg', '2020-07-11 13:10:03', '2020-07-12 13:10:03', 'https://www.pdfdrive.com/download.pdf?id=60737119&h=bd3b556302434bb7c880efa5c9d6b006&u=cache&ext=pdf'),
(22, 'No-Drama Discipline: The Whole-Brain Way to Calm the Chaos and Nurture Your Child\'s Developing', 'TP1', 'Highlighting the fascinating link between a child’s neurological development and the way a parent reacts to misbehavior, No-Drama Discipline provides an effective, compassionate road map for dealing with tantrums, tensions, and tears—without causing a sce', 123123123, 2333333, '13.jpg', '2020-07-18 13:12:28', '2020-07-23 13:12:28', 'https://www.pdfdrive.com/download.pdf?id=60737124&h=a56b33f1bd86346ffc92366a7a460d7d&u=cache&ext=pdf'),
(24, 'The Explosive Child: A New Approach for Understanding and Parenting Easily Frustrated,', 'TP1', 'A groundbreaking approach to understanding and parenting children who frequently exhibit severe fits of temper and other intractable behaviors, from a distinguished clinician and pioneer in this field.', 2141233, 0, '14.jpg', '2020-07-17 13:14:57', '2020-07-18 13:14:57', 'https://www.pdfdrive.com/download.pdf?id=60737125&h=c8caba172b2243925f561e4d89f89a3e&u=cache&ext=pdf'),
(25, 'Oh Crap! Potty Training: Everything Modern Parents Need to Know', 'TP1', 'Oh Crap! Potty Training can solve all of these (and other) common issues. This isn’t theory, you’re not bribing with candy, and there are no gimmicks. This is real-world, from-the-trenches potty training information—all the questions and all the ANSWERS y', 123123, 4444, '15.jpg', '2020-07-11 13:16:49', '2020-07-12 13:16:49', 'https://www.pdfdrive.com/download.pdf?id=60737128&h=ed2a191f725e9d73f2da6f55783d0907&u=cache&ext=pdf'),
(26, 'The 5 Second Rule: Transform your Life, Work, and Confidence with Everyday Courage', 'TP1', 'Throughout your life, you\'ve had parents, coaches, teachers, friends and mentors who have pushed you to be better than your excuses and bigger than your fears.  What if the secret to having the confidence and courage to enrich your life and work is simply', 500000, 122222, '16.jpg', '2020-07-17 13:18:29', '2020-07-25 13:18:29', 'https://www.pdfdrive.com/download.pdf?id=60374999&h=9db78554fb2fa0ba02b20920b510fc8a&u=cache&ext=pdf');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `ID` int(100) NOT NULL,
  `Image` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`ID`, `Image`) VALUES
(2, 'banner1.jpg'),
(3, 'fbg1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `type_product`
--

CREATE TABLE `type_product` (
  `ID_type` varchar(255) NOT NULL,
  `Name` char(100) NOT NULL,
  `decription` varchar(100) NOT NULL,
  `image` char(255) NOT NULL,
  `Pay` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type_product`
--

INSERT INTO `type_product` (`ID_type`, `Name`, `decription`, `image`, `Pay`) VALUES
('TP1', 'Pay', '', 'p1392962167_banh74.jpg', '1'),
('TP2', 'Free', '', 'p1392962167_banh74.jpg', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `admin`) VALUES
(10, 'Vincent', 'vince', '$2y$10$VyOAFPWM81hN5FWvAchh3O2BTEvpqvMKltr8HqMoilwgtUIUDaZ7y', NULL, '2020-07-09 17:34:38', '2020-07-09 17:34:38', '0842794801', 0),
(12, 'Marc', 'marcus2', '$2y$10$736eF4tQfo/rQXKMsG75/.7t2gE9hzn.L5dXLXVYZOyUGyLrLHb.W', NULL, '2020-07-10 04:23:48', '2020-07-10 04:23:48', '357225095899490', 0),
(13, 'le duc thang', 'thang54682777@gmail.com', '$2y$10$OBQQz8aC0hZ8oqV3O4sBuO8gcCpPYZWSK0bFk3gzGEIi8gGenAFfy', NULL, '2020-07-10 06:34:41', '2020-07-10 06:34:41', 'thang54682777@gmail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`Bill_ID`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
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
  ADD KEY `password_resets_email_index` (`username`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `type_product`
--
ALTER TABLE `type_product`
  ADD PRIMARY KEY (`ID_type`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `Bill_ID` int(54) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
