-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 02:08 PM
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
-- Database: `filmmoz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `userid` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userid`, `password`) VALUES
('Admin', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `Id` int(11) NOT NULL,
  `name` text NOT NULL,
  `client_contact` text NOT NULL,
  `client_email` text NOT NULL,
  `aadhar` longtext NOT NULL,
  `pan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`Id`, `name`, `client_contact`, `client_email`, `aadhar`, `pan`) VALUES
(1, 'Midknight Studio', '0000000009', 'shrikantgosavi35@gmail.com', 'public/uploads/documents/Screenshot (51).png', 'public/uploads/documents/Screenshot_20230205_104023.png'),
(2, 'Ashish Khatik', '08793891870', 'khatik.321.ashish@gmail.com', 'public/uploads/documents/Screenshot_20221215_035011.png', 'public/uploads/documents/Screenshot_20230123_060418.png');

-- --------------------------------------------------------

--
-- Table structure for table `favourite_movies`
--

CREATE TABLE `favourite_movies` (
  `favourite_movie_id` int(20) NOT NULL,
  `movie_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favourite_movies`
--

INSERT INTO `favourite_movies` (`favourite_movie_id`, `movie_id`, `user_id`) VALUES
(66, 158, 23),
(69, 160, 23),
(70, 159, 23),
(71, 159, 26),
(72, 159, 31),
(73, 158, 31),
(75, 6, 3),
(76, 159, 30);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `hid` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_name` text NOT NULL,
  `total_views` int(11) NOT NULL,
  `date` text NOT NULL ,
  `total_bill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`hid`, `client_id`, `client_name`, `total_views`, `date`, `total_bill`) VALUES
(5, 2, 'Ashish Khatik', 9, '2023-03-02 14:12:06', 108),
(6, 1, 'Midknight Studio', 36, '2023-03-02 14:12:06', 148),
(7, 2, 'Ashish Khatik', 67, '2023-03-02 14:19:56', 804),
(8, 1, 'Midknight Studio', 112, '2023-03-02 14:19:56', 404),
(9, 2, 'Ashish Khatik', 122, '2023-03-27 12:24:25', 1464),
(10, 1, 'Midknight Studio', 198, '2023-03-27 12:24:25', 834);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `fav_movies_id` int(20) NOT NULL,
  `title` text NOT NULL,
  `director_name` text NOT NULL,
  `producer_name` text NOT NULL,
  `actor_name` text NOT NULL,
  `client_name` text NOT NULL,
  `client_id` int(11) NOT NULL,
  `story` text NOT NULL,
  `language` text NOT NULL,
  `file_name` text NOT NULL,
  `trailer` text NOT NULL,
  `category` text NOT NULL,
  `view_count` int(20) NOT NULL,
  `pre_month_views` int(11) NOT NULL,
  `price_per_view` int(11) NOT NULL,
  `thumb_file_name` text NOT NULL,
  `upload_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `user_id`, `fav_movies_id`, `title`, `director_name`, `producer_name`, `actor_name`, `client_name`, `client_id`, `story`, `language`, `file_name`, `trailer`, `category`, `view_count`, `pre_month_views`, `price_per_view`, `thumb_file_name`, `upload_time`, `date`) VALUES
(162, 0, 0, 'IP Man', 'Wilson Yip', 'Raymond Wong', 'Miao Xie, Guan-Ying Chen, Hao Yan Fei', 'Ashish Khatik', 2, 'etyj yliuolyuk', 'English', 'localhost:3000/uploads/movies/Ip Man  The Awakening (2021) 720p BRRip x264 AAC [ Hin,Chi,Eng ] ESub.mkv', 'localhost:3000/uploads/trailer/ip-man-5-official-trailer-2021-kung-fu-master.mp4', 'Action,Drama', 149, 144, 12, 'localhost:3000/uploads/thumbnails/ip man.jpg', '2023-02-27 13:57:23', ''),
(163, 0, 0, 'Ram Setu', 'Abhishek Sharma', 'Chandraprakash Dwivedi', 'Akshay Kumar, Jacqueline Fernandez, Nusharratt Bharucha, Satyadev Kancharana, Subham Jayakar, Jenniffer Piccinato', 'Midknight Studio', 1, 'uyfbgergiurehg', 'Hindi', 'localhost:3000/uploads/movies/Ram setu.mkv', 'localhost:3000/uploads/trailer/yt1s.com - Ram Setu  Official Trailer  Hindi  Akshay Kumar  Only in Theatres 25th Oct 2022.mp4', 'Drama,Comedy', 99, 94, 3, 'localhost:3000/uploads/thumbnails/Ram setu.jpg', '2023-02-27 13:59:42', ''),
(164, 0, 0, 'Kantara', 'Rishab Shetty', 'Vijay Kiragandur', 'Rishab Shetty, Sapthami Gowda, Achyuth Kumar, Pramod Shetty, Kishore Kumar', 'Midknight Studio', 1, 'uyg legrg liuehriguhe lieurbglj jehrbj', 'Hindi', 'localhost:3000/uploads/movies/Kantara - A Legend (2022) UNCUT 720p 10bit DS4K AMZN WEBRip x265 HEVC [Hindi AAC 5.1 + Kannada AAC 5.1] ESub ~ Immortal.mkv', 'localhost:3000/uploads/trailer/kantara-official-trailer-hindi-rishab-shet.mp4', 'Action,Drama,Horror,Adventure', 125, 120, 5, 'localhost:3000/uploads/thumbnails/Kantara.jpg', '2023-03-25 16:19:38', '');

-- --------------------------------------------------------

--
-- Table structure for table `recycle`
--

CREATE TABLE `recycle` (
  `Id` int(11) NOT NULL,
  `name` text NOT NULL,
  `client_contact` text NOT NULL,
  `client_email` text NOT NULL,
  `aadhar` text NOT NULL,
  `pan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recycle`
--

INSERT INTO `recycle` (`Id`, `name`, `client_contact`, `client_email`, `aadhar`, `pan`) VALUES
(23, 'Niraj Trivedi', '0000000000', 'nirajt901@gmail.com', 'public/uploads/documents/Screenshot_20221215_035011.png', 'public/uploads/documents/Screenshot_20230205_104023.png');

-- --------------------------------------------------------

--
-- Table structure for table `sub_package`
--

CREATE TABLE `sub_package` (
  `id` int(11) NOT NULL,
  `p_name` text NOT NULL,
  `price` text NOT NULL,
  `dur_month` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_package`
--

INSERT INTO `sub_package` (`id`, `p_name`, `price`, `dur_month`) VALUES
(2, 'Basic', '45', '30'),
(3, 'Quarterly', '179', '120'),
(4, 'Elite', '109', '60');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(20) NOT NULL,
  `google_id` text NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `sub_plan` text NOT NULL,
  `sub_status` text NOT NULL,
  `sub_purch_date` text NOT NULL,
  `sub_end_date` text NOT NULL,
  `block_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `google_id`, `name`, `email`, `sub_plan`, `sub_status`, `sub_purch_date`, `sub_end_date`, `block_status`) VALUES
(29, '103772830292832098987', 'Devesh kharade', 'devesh12335@gmail.com', '', 'inactive', '', '', 0),
(33, '8999664013', 'devesh', 'devesh1@gmail.com', '120 days', 'active', 'Tue May 02 2023', 'Wed Aug 30 2023', 0);

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `view_id` int(20) NOT NULL,
  `movie_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`view_id`, `movie_id`, `user_id`) VALUES
(14, 3, 1),
(15, 0, 0),
(16, 138, 1),
(17, 138, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `favourite_movies`
--
ALTER TABLE `favourite_movies`
  ADD PRIMARY KEY (`favourite_movie_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `sub_package`
--
ALTER TABLE `sub_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`view_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourite_movies`
--
ALTER TABLE `favourite_movies`
  MODIFY `favourite_movie_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_package`
--
ALTER TABLE `sub_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `view_id` int(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
