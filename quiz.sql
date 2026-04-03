-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2024 at 09:27 AM
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
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'akshay@gmail.com', '123456'),
(2, 'vamshi@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(100) NOT NULL,
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `qid`, `ansid`) VALUES
(4, '5b85857d00f34', '5b85857d0ab77'),
(5, '5b85857d333f0', '5b85857d391b2'),
(6, '5b85857d59559', '5b85857d69efd'),
(7, '5b85857d917d6', '5b85857d97980'),
(8, '5b85857db810f', '5b85857dbd701'),
(44, '6621f1e48b3b1', '6621f1e48ba92'),
(45, '6621f1e48d951', '6621f1e48de2e'),
(46, '6621f1e48f00b', '6621f1e48f2a0'),
(47, '6621f1e490040', '6621f1e49031a'),
(48, '6621f1e491419', '6621f1e491872');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `username`, `subject`, `feedback`, `date`, `time`) VALUES
('66026111d8d0b', 'nizam', 'nizam@gmail.com', 'quiz', 'excellent', '2024-03-26', '06:45:53am'),
('66027e2ced382', 'akshara', 'akshara@lfdc.edu.in', 'quiz', 'good', '2024-03-26', '08:50:04am'),
('66266d4e1b503', 'samyuktha', 'samosa@gmail.com', 'quiz', 'Excellent, Creative , knowledgeable, and very useful for the students .', '2024-04-22', '03:59:42pm'),
('66266dee93a53', 'V.AKSHIT', 'akshit@gmail.com', 'quiz', 'very nice website , very easy to use and very useful for students to improve or test their knowledge on different topics', '2024-04-22', '04:02:22pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `timestamp` bigint(50) NOT NULL,
  `status` varchar(40) NOT NULL,
  `score_updated` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `username`, `eid`, `score`, `level`, `correct`, `wrong`, `date`, `timestamp`, `status`, `score_updated`) VALUES
(31, '201021468012@gmail.com', '6621ec39a76ad', 20, 5, 5, 0, '2024-04-19 04:29:21', 1713500888, 'finished', 'true'),
(32, 'akshara@gmail.com', '6621ec39a76ad', 11, 4, 3, 1, '2024-04-19 14:18:30', 1713536244, 'finished', 'true'),
(33, 'nizam@gmail.com', '6621ec39a76ad', 15, 5, 4, 1, '2024-04-19 14:20:53', 1713536413, 'finished', 'true'),
(34, 'nizam@gmail.com', '5b85847bbe794', 3, 5, 2, 3, '2024-04-19 14:29:03', 1713536871, 'finished', 'true'),
(40, 'sam123@gmail.com', '6621ec39a76ad', 4, 2, 1, 0, '2024-04-21 05:36:36', 1713677495, 'finished', 'true'),
(41, 'sam123@gmail.com', '5b85847bbe794', -2, 2, 0, 2, '2024-04-21 05:38:57', 1713677816, 'finished', 'true'),
(42, 'ishaan@gmail.com', '6621ec39a76ad', -1, 1, 0, 1, '2024-04-21 07:45:58', 1713685257, 'finished', 'true'),
(43, 'ishaan@gmail.com', '5b85847bbe794', 2, 2, 1, 1, '2024-04-21 07:54:46', 1713685965, 'finished', 'true'),
(44, 'pavan@123gmail.com', '6621ec39a76ad', 0, 5, 1, 4, '2024-04-22 06:43:41', 1713768085, 'finished', 'true'),
(45, 'pavan@123gmail.com', '5b85847bbe794', 3, 5, 2, 3, '2024-04-22 06:46:51', 1713768290, 'finished', 'true'),
(46, 'kunal@gmail.com', '6621ec39a76ad', 15, 5, 4, 1, '2024-04-22 07:39:04', 1713771500, 'finished', 'true'),
(47, 'samosa@gmail.com', '6621ec39a76ad', 5, 5, 2, 3, '2024-04-22 07:45:08', 1713771803, 'finished', 'true'),
(48, 'akshith@gmail.com', '6621ec39a76ad', 5, 5, 2, 3, '2024-04-22 14:19:29', 1713795428, 'finished', 'true'),
(50, 'yashaswi@gmail.com', '5b85847bbe794', 7, 5, 3, 2, '2024-04-23 05:31:09', 1713850182, 'finished', 'true'),
(51, 'yashaswi@gmail.com', '6621ec39a76ad', 5, 4, 2, 3, '2024-04-23 05:34:52', 1713850412, 'finished', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `qid`, `option`, `optionid`) VALUES
(13, '5b85857d00f34', ' Hello World!Hello World!', '5b85857d0ab77'),
(14, '5b85857d00f34', ' Hello World! * 2', '5b85857d0af5f'),
(15, '5b85857d00f34', 'Hello World!', '5b85857d0b347'),
(16, '5b85857d00f34', 'None of the above.', '5b85857d0b72f'),
(17, '5b85857d333f0', '( \'abcd\', 786 , 2.23, \'john\', 70.2 )', '5b85857d389e2'),
(18, '5b85857d333f0', 'abcd', '5b85857d38dca'),
(19, '5b85857d333f0', '(786, 2.23)', '5b85857d391b2'),
(20, '5b85857d333f0', 'None of the above.', '5b85857d3959a'),
(21, '5b85857d59559', 'int(x [,base])', '5b85857d69b15'),
(22, '5b85857d59559', 'long(x [,base] )', '5b85857d69efd'),
(23, '5b85857d59559', 'float(x)', '5b85857d6a2e5'),
(24, '5b85857d59559', 'str(x)', '5b85857d6a6cd'),
(25, '5b85857d917d6', 'unichr(x)', '5b85857d97980'),
(26, '5b85857d917d6', 'ord(x)', '5b85857d97d68'),
(27, '5b85857d917d6', 'hex(x)', '5b85857d98150'),
(28, '5b85857d917d6', 'oct(x)', '5b85857d98538'),
(29, '5b85857db810f', 'choice(seq)', '5b85857dbd701'),
(30, '5b85857db810f', 'randrange ([start,] stop [,step])', '5b85857dbdae9'),
(31, '5b85857db810f', 'random()', '5b85857dbded1'),
(32, '5b85857db810f', 'seed([x])', '5b85857dbe2b9'),
(173, '6621f1e48b3b1', 'denis ritche', '6621f1e48ba8d'),
(174, '6621f1e48b3b1', 'tim berners lee', '6621f1e48ba91'),
(175, '6621f1e48b3b1', 'james gosling', '6621f1e48ba92'),
(176, '6621f1e48b3b1', 'Guido van Rossum', '6621f1e48ba93'),
(177, '6621f1e48d951', '6', '6621f1e48de24'),
(178, '6621f1e48d951', '8', '6621f1e48de2e'),
(179, '6621f1e48d951', '5', '6621f1e48de2f'),
(180, '6621f1e48d951', '7', '6621f1e48de30'),
(181, '6621f1e48f00b', '32 and 32', '6621f1e48f29c'),
(182, '6621f1e48f00b', '64 and 32', '6621f1e48f29f'),
(183, '6621f1e48f00b', '32 and 64', '6621f1e48f2a0'),
(184, '6621f1e48f00b', '64 and 64', '6621f1e48f2a1'),
(185, '6621f1e490040', '50', '6621f1e490318'),
(186, '6621f1e490040', '10', '6621f1e490319'),
(187, '6621f1e490040', 'compile error', '6621f1e49031a'),
(188, '6621f1e490040', 'exception', '6621f1e49031b'),
(189, '6621f1e491419', 'compile error', '6621f1e49186b'),
(190, '6621f1e491419', 'I', '6621f1e491870'),
(191, '6621f1e491419', 'throws exception', '6621f1e491871'),
(192, '6621f1e491419', '24 I', '6621f1e491872');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `choice`, `sn`) VALUES
(4, '5b85847bbe794', '5b85857d00f34', 'What is the output of print str * 2 if str = \'Hello World!\'?', 4, 1),
(5, '5b85847bbe794', '5b85857d333f0', 'What is the output of print tuple[1:3] if tuple = ( \'abcd\', 786 , 2.23, \'john\', 70.2 )?', 4, 2),
(6, '5b85847bbe794', '5b85857d59559', 'Which of the following function convert a string to a long in python?', 4, 3),
(7, '5b85847bbe794', '5b85857d917d6', 'Which of the following function convert an integer to an unicode character in python?', 4, 4),
(8, '5b85847bbe794', '5b85857db810f', 'Which of the following function returns a random item from a list, tuple, or string?', 4, 5),
(44, '6621ec39a76ad', '6621f1e48b3b1', 'who developed java ?', 4, 1),
(45, '6621ec39a76ad', '6621f1e48d951', 'number of primitive datatypes in java ?', 4, 2),
(46, '6621ec39a76ad', '6621f1e48f00b', 'What is the size of float and double in java?', 4, 3),
(47, '6621ec39a76ad', '6621f1e490040', 'Find the output of the following program.\r\n\r\npublic class Solution{\r\n       public static void main(String[] args){\r\n                     short x = 10;\r\n                     x =  x * 5;\r\n                     System.out.print(x);\r\n       }\r\n}', 4, 4),
(48, '6621ec39a76ad', '6621f1e491419', 'Find the output of the following code.\r\n\r\nint Integer = 24;\r\nchar String  = ‘I’;\r\nSystem.out.print(Integer);\r\nSystem.out.print(String);', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `eid`, `title`, `correct`, `wrong`, `total`, `time`, `date`, `status`) VALUES
(2, '5b85847bbe794', 'Python', 3, 1, 5, 2, '2024-04-22 07:25:55', 'enabled'),
(14, '6621ec39a76ad', 'Java', 4, 1, 5, 5, '2024-04-22 07:45:47', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `username`, `score`, `time`) VALUES
(27, '201021468012@gmail.com', 20, '2024-04-19 04:29:21'),
(28, 'akshara@gmail.com', 11, '2024-04-19 14:18:30'),
(29, 'nizam@gmail.com', 18, '2024-04-19 14:29:03'),
(33, 'sam123@gmail.com', 2, '2024-04-21 05:38:57'),
(34, 'ishaan@gmail.com', 1, '2024-04-21 07:54:46'),
(35, 'pavan@123gmail.com', 3, '2024-04-22 06:46:51'),
(36, 'kunal@gmail.com', 15, '2024-04-22 07:39:04'),
(37, 'samosa@gmail.com', 5, '2024-04-22 07:45:08'),
(38, 'akshith@gmail.com', 5, '2024-04-22 14:19:29'),
(40, 'yashaswi@gmail.com', 12, '2024-04-23 05:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rollno` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phno` bigint(10) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `rollno`, `branch`, `gender`, `username`, `phno`, `password`) VALUES
(52, 'Abhilash', '201021468012', 'BSC.MPCS', 'M', '201021468012@gmail.com', 9875642319, 'e10adc3949ba59abbe56e057f20f883e'),
(10, 'Akshara', '201021467030', 'BSC.MSCS', 'F', 'akshara@gmail.com', 7894561232, 'e10adc3949ba59abbe56e057f20f883e'),
(67, 'K . Akshay', '201021467035', 'BSC.MPCS', 'M', 'akshayraj@gmail.com', 9828661442, 'e10adc3949ba59abbe56e057f20f883e'),
(69, 'V.akshith', '201021468001', 'BTMC', 'M', 'akshith@gmail.com', 9856743292, 'e10adc3949ba59abbe56e057f20f883e'),
(63, 'Ishaan', '201021468002', 'BSC.MPCS', 'M', 'ishaan@gmail.com', 6985574123, 'e10adc3949ba59abbe56e057f20f883e'),
(65, 'V.kunal', '201021468016', 'BSC.MECS', 'M', 'kunal@gmail.com', 9856743299, 'e10adc3949ba59abbe56e057f20f883e'),
(56, 'Nizam', '201021467029', 'BSC.MSCS', 'M', 'nizam@gmail.com', 9587641235, 'e10adc3949ba59abbe56e057f20f883e'),
(64, 'M Pavan', '201021474021', 'BSC.MECS', 'M', 'pavan@123gmail.com', 6303601332, '81dc9bdb52d04dc20036dbd8313ed055'),
(66, 'Samyuktha', '201021468003', 'BSC.MSCS', 'F', 'samosa@gmail.com', 9988775566, 'e10adc3949ba59abbe56e057f20f883e'),
(71, 'Yashaswi', '201021467015', 'BSC.MSCS', 'F', 'yashaswi@gmail.com', 1234567890, '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `user_answer`
--

CREATE TABLE `user_answer` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `correctans` varchar(50) NOT NULL,
  `eid` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_answer`
--

INSERT INTO `user_answer` (`id`, `qid`, `ans`, `correctans`, `eid`, `username`) VALUES
(1, '58027e82e62e3', '58027e82f2412', '58027e82f2412', '5802790f793b1', 'sonudoo'),
(2, '58027e833dd54', '58027e8347514', '58027e8347514', '5802790f793b1', 'sonudoo'),
(3, '58027e8371483', '58027e838f19a', '58027e838f19a', '5802790f793b1', 'sonudoo'),
(4, '5b85857d00f34', '5b85857d0af5f', '5b85857d0ab77', '5b85847bbe794', 'pravin'),
(5, '5b85857d333f0', '5b85857d389e2', '5b85857d391b2', '5b85847bbe794', 'pravin'),
(6, '5b85857d59559', '5b85857d69efd', '5b85857d69efd', '5b85847bbe794', 'pravin'),
(7, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'pravin'),
(8, '5b85857db810f', '5b85857dbdae9', '5b85857dbd701', '5b85847bbe794', 'pravin'),
(9, '5b85857d00f34', '5b85857d0ab77', '5b85857d0ab77', '5b85847bbe794', 'mugunth'),
(10, '5b85857d333f0', '5b85857d391b2', '5b85857d391b2', '5b85847bbe794', 'mugunth'),
(11, '5b85857d59559', '5b85857d69efd', '5b85857d69efd', '5b85847bbe794', 'mugunth'),
(12, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'mugunth'),
(13, '5b85857db810f', '5b85857dbded1', '5b85857dbd701', '5b85847bbe794', 'mugunth'),
(14, '5b85857d00f34', '5b85857d0af5f', '5b85857d0ab77', '5b85847bbe794', 'akshay'),
(15, '5b85857db810f', '5b85857dbdae9', '5b85857dbd701', '5b85847bbe794', 'akshay'),
(16, '5b85857db810f', '5b85857dbdae9', '5b85857dbd701', '5b85847bbe794', 'nizam'),
(17, '5b85857d00f34', '5b85857d0af5f', '5b85857d0ab77', '5b85847bbe794', 'kunal'),
(18, '5b85857d333f0', '5b85857d391b2', '5b85857d391b2', '5b85847bbe794', 'kunal'),
(19, '5b85857d59559', '5b85857d6a6cd', '5b85857d69efd', '5b85847bbe794', 'kunal'),
(20, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'kunal'),
(21, '5b85857db810f', '5b85857dbdae9', '5b85857dbd701', '5b85847bbe794', 'kunal'),
(22, '5b85857d00f34', '5b85857d0b347', '5b85857d0ab77', '5b85847bbe794', 'akshara'),
(23, '5b85857d333f0', '5b85857d389e2', '5b85857d391b2', '5b85847bbe794', 'akshara'),
(24, '5b85857d917d6', '5b85857d97d68', '5b85857d97980', '5b85847bbe794', 'akshara'),
(25, '5b85857db810f', '5b85857dbdae9', '5b85857dbd701', '5b85847bbe794', 'akshara'),
(26, '5b85857d59559', '5b85857d69efd', '5b85857d69efd', '5b85847bbe794', 'akshara'),
(27, '5b85857d00f34', '5b85857d0ab77', '5b85857d0ab77', '5b85847bbe794', 'kaluri vamshi'),
(28, '5b85857d333f0', '5b85857d38dca', '5b85857d391b2', '5b85847bbe794', 'kaluri vamshi'),
(29, '5b85857d59559', '5b85857d69efd', '5b85857d69efd', '5b85847bbe794', 'kaluri vamshi'),
(30, '5b85857d917d6', '5b85857d97d68', '5b85857d97980', '5b85847bbe794', 'kaluri vamshi'),
(31, '5b85857db810f', '5b85857dbe2b9', '5b85857dbd701', '5b85847bbe794', 'kaluri vamshi'),
(32, '5b85857d00f34', '5b85857d0b347', '5b85857d0ab77', '5b85847bbe794', 'adarsh'),
(33, '5b85857d333f0', '5b85857d389e2', '5b85857d391b2', '5b85847bbe794', 'adarsh'),
(34, '5b85857d59559', '5b85857d69b15', '5b85857d69efd', '5b85847bbe794', 'adarsh'),
(35, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'adarsh'),
(36, '5b85857db810f', '5b85857dbd701', '5b85857dbd701', '5b85847bbe794', 'adarsh'),
(37, '5b85857d00f34', '5b85857d0ab77', '5b85857d0ab77', '5b85847bbe794', 'addy_123'),
(38, '5b85857d333f0', '5b85857d38dca', '5b85857d391b2', '5b85847bbe794', 'addy_123'),
(39, '5b85857d59559', '5b85857d6a2e5', '5b85857d69efd', '5b85847bbe794', 'addy_123'),
(40, '5b85857d917d6', '5b85857d97d68', '5b85857d97980', '5b85847bbe794', 'addy_123'),
(41, '5b85857db810f', '5b85857dbdae9', '5b85857dbd701', '5b85847bbe794', 'addy_123'),
(42, '5b85857d00f34', '5b85857d0af5f', '5b85857d0ab77', '5b85847bbe794', 'rajesh123'),
(43, '5b85857d333f0', '5b85857d38dca', '5b85857d391b2', '5b85847bbe794', 'rajesh123'),
(44, '5b85857d59559', '5b85857d69b15', '5b85857d69efd', '5b85847bbe794', 'rajesh123'),
(45, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'rajesh123'),
(46, '5b85857db810f', '5b85857dbe2b9', '5b85857dbd701', '5b85847bbe794', 'rajesh123'),
(47, '5b85857d00f34', '5b85857d0af5f', '5b85857d0ab77', '5b85847bbe794', 'arun'),
(48, '5b85857d333f0', '5b85857d389e2', '5b85857d391b2', '5b85847bbe794', 'arun'),
(49, '5b85857d59559', '5b85857d6a2e5', '5b85857d69efd', '5b85847bbe794', 'arun'),
(50, '5b85857db810f', '5b85857dbd701', '5b85857dbd701', '5b85847bbe794', 'arun'),
(51, '5b85857d917d6', '5b85857d97d68', '5b85857d97980', '5b85847bbe794', 'arun'),
(52, '5b85857d00f34', '5b85857d0af5f', '5b85857d0ab77', '5b85847bbe794', 'rohan'),
(53, '5b85857d333f0', '5b85857d389e2', '5b85857d391b2', '5b85847bbe794', 'rohan'),
(54, '5b85857d59559', '5b85857d69b15', '5b85857d69efd', '5b85847bbe794', 'rohan'),
(55, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'rohan'),
(56, '5b85857db810f', '5b85857dbd701', '5b85857dbd701', '5b85847bbe794', 'rohan'),
(57, '5b85857d00f34', '5b85857d0ab77', '5b85857d0ab77', '5b85847bbe794', 'shiva'),
(58, '5b85857d333f0', '5b85857d389e2', '5b85857d391b2', '5b85847bbe794', 'shiva'),
(59, '5b85857d59559', '5b85857d69b15', '5b85857d69efd', '5b85847bbe794', 'shiva'),
(60, '5b85857d00f34', '5b85857d0ab77', '5b85857d0ab77', '5b85847bbe794', 'sunny'),
(61, '5b85857d333f0', '5b85857d389e2', '5b85857d391b2', '5b85847bbe794', 'sunny'),
(62, '5b85857d59559', '5b85857d69b15', '5b85857d69efd', '5b85847bbe794', 'sunny'),
(63, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'sunny'),
(64, '5b85857db810f', '5b85857dbd701', '5b85857dbd701', '5b85847bbe794', 'sunny'),
(65, '5b85857d00f34', '5b85857d0ab77', '5b85857d0ab77', '5b85847bbe794', 'sam123'),
(66, '5b85857d333f0', '5b85857d3959a', '5b85857d391b2', '5b85847bbe794', 'sam123'),
(67, '5b85857d59559', '5b85857d69b15', '5b85857d69efd', '5b85847bbe794', 'sam123'),
(68, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'sam123'),
(69, '5b85857db810f', '5b85857dbded1', '5b85857dbd701', '5b85847bbe794', 'sam123'),
(70, '5b85857d00f34', '5b85857d0ab77', '5b85857d0ab77', '5b85847bbe794', 'bharath'),
(71, '5b85857d333f0', '5b85857d389e2', '5b85857d391b2', '5b85847bbe794', 'bharath'),
(72, '5b85857d59559', '5b85857d69b15', '5b85857d69efd', '5b85847bbe794', 'bharath'),
(73, '5b85857d917d6', '5b85857d98150', '5b85857d97980', '5b85847bbe794', 'bharath'),
(74, '5b85857db810f', '5b85857dbd701', '5b85857dbd701', '5b85847bbe794', 'bharath'),
(75, '5b85857d00f34', '5b85857d0ab77', '5b85857d0ab77', '5b85847bbe794', 'joker'),
(76, '5b85857d333f0', '5b85857d38dca', '5b85857d391b2', '5b85847bbe794', 'joker'),
(77, '5b85857d59559', '5b85857d69b15', '5b85857d69efd', '5b85847bbe794', 'joker'),
(78, '5b85857d00f34', '5b85857d0ab77', '5b85857d0ab77', '5b85847bbe794', 'hero'),
(79, '5b85857d00f34', '5b85857d0af5f', '5b85857d0ab77', '5b85847bbe794', 'lll'),
(80, '5b85857d333f0', '5b85857d389e2', '5b85857d391b2', '5b85847bbe794', 'lll'),
(81, '5b85857d59559', '5b85857d69b15', '5b85857d69efd', '5b85847bbe794', 'lll'),
(82, '6616481f7a9b3', '6616481f7b278', '6616481f7b26f', '66164511dee2e', 'kunal'),
(83, '6616481f7d118', '6616481f7d7c9', '6616481f7d7cd', '66164511dee2e', 'kunal'),
(84, '6616481f7f2b7', '6616481f7f840', '6616481f7f840', '66164511dee2e', 'kunal'),
(85, '6616481f817d3', '6616481f81e9f', '6616481f81e9f', '66164511dee2e', 'kunal'),
(86, '6616481f83a51', '6616481f840cb', '6616481f840cb', '66164511dee2e', 'kunal'),
(87, '6616481f7a9b3', '6616481f7b278', '6616481f7b26f', '66164511dee2e', '201021467039@gmail.com'),
(88, '6616481f7d118', '6616481f7d7cd', '6616481f7d7cd', '66164511dee2e', '201021467039@gmail.com'),
(89, '6616481f7f2b7', '6616481f7f840', '6616481f7f840', '66164511dee2e', '201021467039@gmail.com'),
(90, '6616481f817d3', '6616481f81e9f', '6616481f81e9f', '66164511dee2e', '201021467039@gmail.com'),
(91, '6616481f83a51', '6616481f840cb', '6616481f840cb', '66164511dee2e', '201021467039@gmail.com'),
(92, '661a5cecc7087', '661a5ceccd6c5', '661a5ceccd6c5', '661a5ce14583b', 'srinivas@gmail.com'),
(93, '661a5cecd83a2', '661a5cecd8a84', '661a5cecd8a80', '661a5ce14583b', 'srinivas@gmail.com'),
(94, '6616481f7a9b3', '6616481f7b278', '6616481f7b26f', '66164511dee2e', 'vivek@gmail.com'),
(95, '6616481f7d118', '6616481f7d7c9', '6616481f7d7cd', '66164511dee2e', 'vivek@gmail.com'),
(96, '6616481f7f2b7', '6616481f7f83f', '6616481f7f840', '66164511dee2e', 'vivek@gmail.com'),
(97, '6616481f817d3', '6616481f81e9f', '6616481f81e9f', '66164511dee2e', 'vivek@gmail.com'),
(98, '6616481f83a51', '6616481f840cb', '6616481f840cb', '66164511dee2e', 'vivek@gmail.com'),
(99, '6616481f7a9b3', '6616481f7b278', '6616481f7b26f', '66164511dee2e', 'tony@gmail.com'),
(100, '6616481f7d118', '6616481f7d7c9', '6616481f7d7cd', '66164511dee2e', 'tony@gmail.com'),
(101, '6616481f7f2b7', '6616481f7f83f', '6616481f7f840', '66164511dee2e', 'tony@gmail.com'),
(102, '6616481f817d3', '6616481f81e9f', '6616481f81e9f', '66164511dee2e', 'tony@gmail.com'),
(103, '6616481f83a51', '6616481f840cb', '6616481f840cb', '66164511dee2e', 'tony@gmail.com'),
(104, '6621f1e48b3b1', '6621f1e48ba92', '6621f1e48ba92', '6621ec39a76ad', '201021468012@gmail.com'),
(105, '6621f1e48d951', '6621f1e48de2e', '6621f1e48de2e', '6621ec39a76ad', '201021468012@gmail.com'),
(106, '6621f1e48f00b', '6621f1e48f2a0', '6621f1e48f2a0', '6621ec39a76ad', '201021468012@gmail.com'),
(107, '6621f1e490040', '6621f1e49031a', '6621f1e49031a', '6621ec39a76ad', '201021468012@gmail.com'),
(108, '6621f1e491419', '6621f1e491872', '6621f1e491872', '6621ec39a76ad', '201021468012@gmail.com'),
(109, '6621f1e48b3b1', '6621f1e48ba92', '6621f1e48ba92', '6621ec39a76ad', 'akshara@gmail.com'),
(110, '6621f1e48d951', '6621f1e48de2e', '6621f1e48de2e', '6621ec39a76ad', 'akshara@gmail.com'),
(111, '6621f1e48f00b', '6621f1e48f2a0', '6621f1e48f2a0', '6621ec39a76ad', 'akshara@gmail.com'),
(112, '6621f1e490040', '6621f1e49031b', '6621f1e49031a', '6621ec39a76ad', 'akshara@gmail.com'),
(113, '6621f1e48b3b1', '6621f1e48ba92', '6621f1e48ba92', '6621ec39a76ad', 'nizam@gmail.com'),
(114, '6621f1e48d951', '6621f1e48de24', '6621f1e48de2e', '6621ec39a76ad', 'nizam@gmail.com'),
(115, '6621f1e48f00b', '6621f1e48f2a0', '6621f1e48f2a0', '6621ec39a76ad', 'nizam@gmail.com'),
(116, '6621f1e490040', '6621f1e49031a', '6621f1e49031a', '6621ec39a76ad', 'nizam@gmail.com'),
(117, '6621f1e491419', '6621f1e491872', '6621f1e491872', '6621ec39a76ad', 'nizam@gmail.com'),
(118, '5b85857d00f34', '5b85857d0af5f', '5b85857d0ab77', '5b85847bbe794', 'nizam@gmail.com'),
(119, '5b85857d333f0', '5b85857d389e2', '5b85857d391b2', '5b85847bbe794', 'nizam@gmail.com'),
(120, '5b85857d59559', '5b85857d69efd', '5b85857d69efd', '5b85847bbe794', 'nizam@gmail.com'),
(121, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'nizam@gmail.com'),
(122, '5b85857db810f', '5b85857dbded1', '5b85857dbd701', '5b85847bbe794', 'nizam@gmail.com'),
(123, '6621f1e48b3b1', '6621f1e48ba92', '6621f1e48ba92', '6621ec39a76ad', 'saiadarshvautrey@gmail.com'),
(124, '6621f1e48d951', '6621f1e48de2e', '6621f1e48de2e', '6621ec39a76ad', 'saiadarshvautrey@gmail.com'),
(125, '6621f1e48f00b', '6621f1e48f2a0', '6621f1e48f2a0', '6621ec39a76ad', 'saiadarshvautrey@gmail.com'),
(126, '6621f1e490040', '6621f1e490318', '6621f1e49031a', '6621ec39a76ad', 'saiadarshvautrey@gmail.com'),
(127, '6621f1e491419', '6621f1e491871', '6621f1e491872', '6621ec39a76ad', 'saiadarshvautrey@gmail.com'),
(129, '6621f1e48b3b1', '6621f1e48ba92', '6621f1e48ba92', '6621ec39a76ad', 'vijay@gmail.com'),
(130, '5b85857d00f34', '5b85857d0af5f', '5b85857d0ab77', '5b85847bbe794', 'vijay@gmail.com'),
(131, '6621f1e48b3b1', '6621f1e48ba93', '6621f1e48ba92', '6621ec39a76ad', 'praveen@gmail.com'),
(132, '5b85857d00f34', '5b85857d0ab77', '5b85857d0ab77', '5b85847bbe794', 'praveen@gmail.com'),
(133, '5b85857d333f0', '5b85857d3959a', '5b85857d391b2', '5b85847bbe794', 'praveen@gmail.com'),
(135, '6621f1e48b3b1', '6621f1e48ba92', '6621f1e48ba92', '6621ec39a76ad', 'sam123@gmail.com'),
(137, '5b85857d00f34', '5b85857d0af5f', '5b85857d0ab77', '5b85847bbe794', 'sam123@gmail.com'),
(138, '5b85857d333f0', '5b85857d38dca', '5b85857d391b2', '5b85847bbe794', 'sam123@gmail.com'),
(139, '6621f1e48b3b1', '6621f1e48ba91', '6621f1e48ba92', '6621ec39a76ad', 'ishaan@gmail.com'),
(140, '5b85857d00f34', '5b85857d0ab77', '5b85857d0ab77', '5b85847bbe794', 'ishaan@gmail.com'),
(141, '5b85857d333f0', '5b85857d38dca', '5b85857d391b2', '5b85847bbe794', 'ishaan@gmail.com'),
(142, '6621f1e48b3b1', '6621f1e48ba92', '6621f1e48ba92', '6621ec39a76ad', 'pavan@123gmail.com'),
(143, '6621f1e48d951', '6621f1e48de24', '6621f1e48de2e', '6621ec39a76ad', 'pavan@123gmail.com'),
(144, '6621f1e48f00b', '6621f1e48f29c', '6621f1e48f2a0', '6621ec39a76ad', 'pavan@123gmail.com'),
(145, '6621f1e490040', '6621f1e490319', '6621f1e49031a', '6621ec39a76ad', 'pavan@123gmail.com'),
(146, '6621f1e491419', '6621f1e491870', '6621f1e491872', '6621ec39a76ad', 'pavan@123gmail.com'),
(147, '5b85857d00f34', '5b85857d0b347', '5b85857d0ab77', '5b85847bbe794', 'pavan@123gmail.com'),
(148, '5b85857d333f0', '5b85857d38dca', '5b85857d391b2', '5b85847bbe794', 'pavan@123gmail.com'),
(149, '5b85857d59559', '5b85857d69efd', '5b85857d69efd', '5b85847bbe794', 'pavan@123gmail.com'),
(150, '5b85857d917d6', '5b85857d98150', '5b85857d97980', '5b85847bbe794', 'pavan@123gmail.com'),
(151, '5b85857db810f', '5b85857dbd701', '5b85857dbd701', '5b85847bbe794', 'pavan@123gmail.com'),
(152, '6621f1e48b3b1', '6621f1e48ba92', '6621f1e48ba92', '6621ec39a76ad', 'kunal@gmail.com'),
(153, '6621f1e48d951', '6621f1e48de2e', '6621f1e48de2e', '6621ec39a76ad', 'kunal@gmail.com'),
(154, '6621f1e48f00b', '6621f1e48f2a0', '6621f1e48f2a0', '6621ec39a76ad', 'kunal@gmail.com'),
(155, '6621f1e490040', '6621f1e49031a', '6621f1e49031a', '6621ec39a76ad', 'kunal@gmail.com'),
(156, '6621f1e491419', '6621f1e491871', '6621f1e491872', '6621ec39a76ad', 'kunal@gmail.com'),
(157, '6621f1e48b3b1', '6621f1e48ba92', '6621f1e48ba92', '6621ec39a76ad', 'samosa@gmail.com'),
(158, '6621f1e48d951', '6621f1e48de24', '6621f1e48de2e', '6621ec39a76ad', 'samosa@gmail.com'),
(159, '6621f1e48f00b', '6621f1e48f29f', '6621f1e48f2a0', '6621ec39a76ad', 'samosa@gmail.com'),
(160, '6621f1e490040', '6621f1e490318', '6621f1e49031a', '6621ec39a76ad', 'samosa@gmail.com'),
(161, '6621f1e491419', '6621f1e491872', '6621f1e491872', '6621ec39a76ad', 'samosa@gmail.com'),
(162, '6621f1e48b3b1', '6621f1e48ba92', '6621f1e48ba92', '6621ec39a76ad', 'akshith@gmail.com'),
(163, '6621f1e48d951', '6621f1e48de2e', '6621f1e48de2e', '6621ec39a76ad', 'akshith@gmail.com'),
(164, '6621f1e48f00b', '6621f1e48f29c', '6621f1e48f2a0', '6621ec39a76ad', 'akshith@gmail.com'),
(165, '6621f1e490040', '6621f1e49031b', '6621f1e49031a', '6621ec39a76ad', 'akshith@gmail.com'),
(166, '6621f1e491419', '6621f1e49186b', '6621f1e491872', '6621ec39a76ad', 'akshith@gmail.com'),
(167, '6621f1e491419', '6621f1e491871', '6621f1e491872', '6621ec39a76ad', 'siri@gmail.com'),
(168, '5b85857d00f34', '5b85857d0ab77', '5b85857d0ab77', '5b85847bbe794', 'yashaswi@gmail.com'),
(169, '5b85857d333f0', '5b85857d3959a', '5b85857d391b2', '5b85847bbe794', 'yashaswi@gmail.com'),
(170, '5b85857d59559', '5b85857d69efd', '5b85857d69efd', '5b85847bbe794', 'yashaswi@gmail.com'),
(171, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'yashaswi@gmail.com'),
(172, '5b85857db810f', '5b85857dbded1', '5b85857dbd701', '5b85847bbe794', 'yashaswi@gmail.com'),
(173, '6621f1e48b3b1', '6621f1e48ba91', '6621f1e48ba92', '6621ec39a76ad', 'yashaswi@gmail.com'),
(174, '6621f1e48d951', '6621f1e48de2e', '6621f1e48de2e', '6621ec39a76ad', 'yashaswi@gmail.com'),
(175, '6621f1e48f00b', '6621f1e48f29f', '6621f1e48f2a0', '6621ec39a76ad', 'yashaswi@gmail.com'),
(176, '6621f1e491419', '6621f1e491871', '6621f1e491872', '6621ec39a76ad', 'yashaswi@gmail.com'),
(177, '6621f1e490040', '6621f1e49031a', '6621f1e49031a', '6621ec39a76ad', 'yashaswi@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
