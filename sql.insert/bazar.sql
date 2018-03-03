-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2015 at 06:53 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bazar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(100) NOT NULL,
  `admin_id` int(100) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_id`, `email`, `password`, `user_name`, `pass`) VALUES
(1, 1, 'md.tarekhossen@yahoo.com', '12345', 'cracked', 'tarek4415');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
`all` int(255) NOT NULL,
  `id1` int(11) NOT NULL,
  `id2` int(11) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `message0`
--

CREATE TABLE IF NOT EXISTS `message0` (
`id` int(255) NOT NULL,
  `msg` varchar(420) CHARACTER SET utf8 NOT NULL,
  `writer` int(100) NOT NULL,
  `from_id` int(100) NOT NULL,
  `from_name` varchar(25) CHARACTER SET utf8 NOT NULL,
  `on_post` varchar(30) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `on_post_id` int(255) DEFAULT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `message0`
--

INSERT INTO `message0` (`id`, `msg`, `writer`, `from_id`, `from_name`, `on_post`, `on_post_id`, `date`) VALUES
(1, 'tygd', 10, 3, 'Tarek', 'tarek""D', NULL, '17/03/15 06:01:33am'),
(3, 'valo &#2489;&#2527;&#2503;&#2459;&#2503; carry on\r\n', 3, 9, 'user9', 'test2', NULL, '17/03/15 01:09:43pm'),
(4, 'tydbfd , \r\ndcdcbd', 3, 9, 'user9', 'test2', NULL, '17/03/15 01:12:40pm'),
(5, 'nj , \r\n , fdd', 3, 9, 'user9', 'test2', NULL, '17/03/15 01:12:58pm'),
(6, 'tavds ', 3, 9, 'user9', 'test2', NULL, '17/03/15 01:13:40pm'),
(10, '&#2463;&#2503;&#2488;&#2509;&#2463;&#2495;&#2434; &#2478;&#2503;&#2488;&#2503;&#2460; &#2404; bangla', 3, 9, 'user9 a', 'test2', 70, '17/03/15 02:07:30pm'),
(12, 'bangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbanglade', 3, 9, 'user9 a', 'test2', 70, '17/03/15 02:14:26pm'),
(13, '&#2438;&#2478;&#2494;&#2480; &#2476;&#2494;&#2434;&#2482;&#2494; &#2470;&#2503;&#2486;  bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangl', 3, 9, 'user9 a', 'test2', 70, '17/03/15 02:15:08pm'),
(14, '&#2438;&#2478;&#2494;&#2480; &#2476;&#2494;&#2434;&#2482;&#2494; &#2470;&#2503;&#2486; &#2438;&#2478;&#2494;&#2480; &#2476;&#2494;&#2434;&#2482;&#2494; &#2470;&#2503;&#2486; bangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh b', 3, 9, 'user9 a', 'test2', 70, '17/03/15 02:18:50pm'),
(15, 'bangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbang', 3, 9, 'user9 a', 'test2', 70, '17/03/15 03:02:12pm'),
(16, 'bangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbang', 3, 9, 'user9 a', 'test2', 70, '17/03/15 03:04:34pm'),
(17, 'bangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh banglades', 3, 9, 'user9 a', 'test2', 70, '17/03/15 03:06:24pm'),
(18, 'bangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh banglades', 3, 9, 'user9 a', 'test2', 69, '17/03/15 03:07:37pm'),
(19, 'bangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh banglades', 3, 9, 'user9 a', 'test2', 69, '17/03/15 03:07:47pm'),
(20, 'bangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh banglades', 3, 9, 'user9 a', 'test2', 69, '17/03/15 03:07:58pm'),
(21, 'bangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh banglades', 3, 9, 'user9 a', 'test2', 69, '17/03/15 03:08:07pm'),
(22, 'bangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh banglades', 3, 9, 'user9 a', 'test2', 69, '17/03/15 03:08:55pm'),
(24, 'bangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh banglades', 3, 9, 'user9 a', 'title testing', 68, '17/03/15 03:09:21pm'),
(25, 'bangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh banglades', 3, 9, 'user9 a', 'title testing', 68, '17/03/15 03:09:27pm'),
(26, 'bangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh banglades', 3, 9, 'user9 a', 'title testing', 68, '17/03/15 03:09:32pm'),
(27, 'bangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh banglades', 3, 9, 'user9 a', 'title testing', 68, '17/03/15 03:09:37pm'),
(28, 'bangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh banglades', 3, 9, 'user9 a', 'title testing', 68, '17/03/15 03:09:42pm'),
(29, 'bangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh banglades', 3, 9, 'user9 a', 'title testing', 68, '17/03/15 03:09:47pm'),
(30, 'bangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh banglades', 3, 9, 'user9 a', 'title testing', 68, '17/03/15 03:09:53pm'),
(31, 'bangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh banglades', 3, 9, 'user9 a', 'title testing', 68, '17/03/15 03:09:59pm'),
(32, 'bangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladesh bangladesh bangladeshbangladebangladesh banglades', 3, 9, 'user9 a', 'title testing', 68, '17/03/15 03:10:05pm'),
(33, 'BANGLADESH BANGLADESH BANGLADESH BANGLADESH BANGLADESH BANGLADESH ', 9, 3, 'Tarek Hossen', '"d"D"d"d"', 114, '19/03/15 11:29:30am'),
(34, 'BANGLADESH BANGLADESH BANGLADESH BANGLADESH  DBNDFDECHND BANGLADESH BANGLADESH BANGLADESH ', 3, 9, 'user9 a', 'test2', 70, '19/03/15 11:32:08am'),
(36, 'C LKJCMNKDXZJCZDXCZ XXZBANGLADESH V', 9, 3, 'Tarek Hossen', '"d"D"d"d"', 114, '19/03/15 11:32:30am');

-- --------------------------------------------------------

--
-- Table structure for table `message1`
--

CREATE TABLE IF NOT EXISTS `message1` (
`id` int(255) NOT NULL,
  `msg` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `writer` int(100) NOT NULL,
  `from_id` int(100) NOT NULL,
  `from_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `on_post` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `on_post_id` int(255) DEFAULT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `message1`
--

INSERT INTO `message1` (`id`, `msg`, `writer`, `from_id`, `from_name`, `on_post`, `on_post_id`, `date`) VALUES
(1, '', 10, 3, 'Tarek', 'tarek""D', NULL, '17/03/15 01:04:48pm');

-- --------------------------------------------------------

--
-- Table structure for table `message2`
--

CREATE TABLE IF NOT EXISTS `message2` (
`id` int(255) NOT NULL,
  `msg` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `writer` int(100) NOT NULL,
  `from_id` int(100) NOT NULL,
  `from_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `on_post` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `on_post_id` int(255) DEFAULT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `msg0`
--

CREATE TABLE IF NOT EXISTS `msg0` (
`id` int(255) NOT NULL,
  `msg` varchar(445) COLLATE utf8_unicode_ci NOT NULL,
  `send_to` int(100) NOT NULL,
  `send_from` int(100) NOT NULL,
  `send_from_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `msg0`
--

INSERT INTO `msg0` (`id`, `msg`, `send_to`, `send_from`, `send_from_name`, `date`) VALUES
(2, 'same t sdndsl sds', 9, 3, 'Tarek Hossen', ''),
(3, 'BANGLADESH BANGLADESH BANGLADESH BANGLADESH BANGLADESH BANGLADESH BANGLADESH BANGLADESH ', 9, 3, 'Tarek Hossen', '19/03/15 06:27:25am '),
(4, ' write here!BANGLADESH BANGLADESH BANGLADESH BANGLADESH BANGLADESH BANGLADESH ', 9, 3, 'Tarek Hossen', '19/03/15 06:27:37am '),
(5, ' write here!BANGLADESH BANGLADESH BANGLADESH BANGLADESH BANGLADESH BANGLADESH BANGLADESH BANGLADESH BANGLADESH BANGLADESH BANGLADESH BANGLADESH BANGLADESH BANGLADESH BANGLADESH BANGLADESH ', 9, 3, 'Tarek Hossen', '19/03/15 06:27:47am '),
(8, ' write here!BANGLADESH BANGLADESH BANGLADESH BANGLADESH BANGLADESH \r\n', 9, 3, 'Tarek Hossen', '19/03/15 06:55:29am '),
(9, ' write here!bangladesh bangladesh testing personal messages write here!bangladesh bangladesh testing personal messages write here!bangladesh bangladesh testing personal messages write here!bangladesh bangladesh testing personal messages write here!bangladesh bangladesh testing personal messages write here!bangladesh bangladesh testing personal messages write here!bangladesh bangladesh testing personal messagesv write here!bangladesh banglade', 3, 9, 'user9 a', '20/03/15 07:22:12am '),
(10, ' write here!  write here!bangladesh bangladesh testing personal messages write here!bangladesh bangladesh testing personal messages write here!bangladesh bangladesh testing personal messages', 9, 3, 'Tarek Hossen', '20/03/15 07:24:14am '),
(11, 'vghcvdsc kire beta ki koros', 9, 3, 'Tarek Hossen', '23/03/15 07:17:44am ');

-- --------------------------------------------------------

--
-- Table structure for table `msg1`
--

CREATE TABLE IF NOT EXISTS `msg1` (
`id` int(255) NOT NULL,
  `msg` varchar(445) COLLATE utf8_unicode_ci NOT NULL,
  `send_to` int(10) NOT NULL,
  `send_from` int(100) NOT NULL,
  `send_from_name` varchar(445) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `msg2`
--

CREATE TABLE IF NOT EXISTS `msg2` (
`id` int(100) NOT NULL,
  `msg` varchar(445) COLLATE utf8_unicode_ci NOT NULL,
  `send_to` int(100) NOT NULL,
  `send_from` int(100) NOT NULL,
  `send_from_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
`post_id` int(100) NOT NULL,
  `post_date` varchar(20) CHARACTER SET utf8 NOT NULL,
  `post_title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `post_type` varchar(15) CHARACTER SET utf8 NOT NULL,
  `post_content` varchar(9999) CHARACTER SET utf8 NOT NULL,
  `person_id` int(250) NOT NULL,
  `person_name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `person_email` varchar(40) CHARACTER SET utf8 NOT NULL,
  `person_phone` varchar(15) NOT NULL,
  `price` int(4) NOT NULL,
  `activated` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=149 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_date`, `post_title`, `post_type`, `post_content`, `person_id`, `person_name`, `person_email`, `person_phone`, `price`, `activated`) VALUES
(1, '2015-01-31', 'amar kobita', 'poem', 'yrfk fnk\r\nfrjnfkjrf\r\nfjknjvfv\r\n\r\nfrfrfnvjk', 1, 'tarek', 'tarekvai@sahitto.com', '+8801684093813', 900, 1),
(3, '0000-00-00', 'tare', 'lyrics', 'fafr', 2, 'tare', 'asfa', '01684093813', 100, 1),
(6, '0000-00-00', 'one story', 'story', 'this is also for testing ', 1, 'safiq', 'safiq@gmail.com', '01684093813', 120, 1),
(7, '0000-00-00', 'one story', 'story', 'this is also for testing ', 2, 'safiq', 'safiq@gmail.com', '01684093813', 120, 1),
(30, '0000-00-00', 'tarek', 'lyrics', 'feef', 0, 'tarvbdk', 'fedferdfe', '01684093813', 120, 1),
(33, '0000-00-00', 'tarek', 'lyrics', 'feef', 0, 'tarvbdk', 'fedferdfe', '01684093813', 120, 1),
(43, '0000-00-00', 'news for die', 'story', 'once there was a land there was a big ghost every year they had to select a man to be the male for the ghost that, was a news for die to <br>the poor gyu who is selected<br> to be male for ghost ', 1, 'tarek vai', 'md.tarekhossen@yahoo.com', '01684093813', 200, 1),
(44, '0000-00-00', 'news for die', 'story', 'once there was a land there was a big ghost every year they had to select a man to be the male for the ghost that, was a news for die to <br>the poor gyu who is selected<br> to be male for ghost ', 1, 'tarek vai', 'md.tarekhossen@yahoo.com', '01684093813', 200, 1),
(46, '0000-00-00', 'news for die', 'story', 'once there was a land there was a big ghost every year they had to select a man to be the male for the ghost that, was a news for die to <br>the poor gyu who is selected<br> to be male for ghost ', 1, 'tarek vai', 'md.tarekhossen@yahoo.com', '01684093813', 200, 1),
(47, '0000-00-00', 'news for die', 'story', 'once there was a land there was a big ghost every year they had to select a man to be the male for the ghost that, was a news for die to <br>the poor gyu who is selected<br> to be male for ghost ', 1, 'tarek vai', 'md.tarekhossen@yahoo.com', '01684093813', 200, 1),
(48, '0000-00-00', 'news for die', 'story', 'ince there was a land<br> there was a big ghost every year they had to select a man to be the male for the ghost that, was a news for die to the poor gyu who is selected<br> to be male for ghost \r\n', 1, 'tarek vai', 'md.tarekhossen@yahoo.com', '01684093813', 200, 1),
(49, '0000-00-00', 'news for die', 'story', 'ince there was a land<br> there was a big ghost every year they had to select a man to be the male for the ghost that, was a news for die to the poor gyu who is selected<br> to be male for ghost \r\n', 1, 'tarek vai', 'md.tarekhossen@yahoo.com', '01684093813', 200, 1),
(50, '0000-00-00', 'news for die', 'story', 'ince there was a land<br> there was a big ghost every year they had to select a man to be the male for the ghost that, was a news for die to the poor gyu who is selected<br> to be male for ghost \r\n', 1, 'tarek vai', 'md.tarekhossen@yahoo.com', '01684093813', 200, 0),
(52, '0000-00-00', 'tgrd', 'jokes', 'fwfw', 0, 'wfwef', 'wfwef', '01684093813', 123, 0),
(53, '0000-00-00', 'tgrd', 'story', 'fwfw', 0, 'wfwef', 'wfwef', '01684093813', 123, 0),
(54, '0000-00-00', 'tgrd', 'story', 'fwfw', 0, 'wfwef', 'wfwef', '01684093813', 123, 0),
(56, '0000-00-00', 'tgrd', 'story', 'fwfw', 0, 'wfwef', 'wfwef', '01684093813', 123, 0),
(57, '0000-00-00', 'post title', 'story', 'ghdasjdcbws', 1, 'tarek', 'md.tarekhossen@yahoo.com', '01684093813', 120, 0),
(58, '0000-00-00', 'post title', 'poem', 'ghdasjdcbws', 1, 'tarek', 'md.tarekhossen@yahoo.com', '01684093813', 120, 0),
(59, '0000-00-00', 'post title', 'post type', 'ghdasjdcbws', 1, 'tarek', 'md.tarekhossen@yahoo.com', '01684093813', 120, 0),
(60, '0000-00-00', 'post title', 'post type', 'ghdasjdcbws', 1, 'tarek', 'md.tarekhossen@yahoo.com', '01684093813', 120, 0),
(61, '0000-00-00', 'post title', 'post type', 'ghdasjdcbws', 1, 'tarek', 'md.tarekhossen@yahoo.com', '01684093813', 120, 0),
(62, '0000-00-00', 'post title', 'type', 'keudhiueddekdhbednw', 0, 'kedfuiw', 'kedheauns', '01684093813', 123, 0),
(63, '0000-00-00', 'post title', 'type', 'keudhiueddekdhbednw', 0, 'kedfuiw', 'kedheauns', '01684093813', 123, 0),
(65, '0000-00-00', 'post title', 'type', 'keudhiueddekdhbednw', 0, 'kedfuiw', 'kedheauns', '01684093813', 123, 0),
(69, '0000-00-00', 'test2', 'history', '3ttrhjeofonf fwnfwoienfodf wqfwwe fwfuqw dfwrwenkgthqorioqwhr wrqweirh wqer qwr qwerwrw r wer w r wr r wrhriwrw rwr wrqwrhweir wrw r wrqwrwer welr qw rwq rwrqwrw erwr w rewr qewp', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 120, 1),
(70, '0000-00-00', 'test2', 'poem', 'rkfv yug  u   g iugigu gi ighiug igkhiihk i i ii   g hohigj  g kjhjkg j ljyjfukhligujyfydsesrd t  f   l   gfkk uglihl fjgklhl fiulo uffiuhuyf  hfytgoijoli kyt yfghlgu ikj ikgoj     oiuydfkhtjd  y    tdfkhkb  yugui  uf urv g', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 200, 1),
(71, '0000-00-00', 'tofnewdf', 'poem', 'fewnfewnnfewlk de fefewfewnfewnnfewlk de fefewew ewlekd scewkjdj ekwfewnfewnnfewlk de fefewew ewlekd scewkjdj ekwfewnfewnnfewlk de fefewew ewlekd scewkjdj ekwew ewlekd scewkjdj ekw', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 100, 1),
(73, '26/02/15 05:57:50pm', 'twhjfdasd', 'poem', '<br>sq<br>rfg<br>ew<br>sq<br>rfg<br>ew<br>sq<br>rfg<br>ew', 9, 'user9', 'user9@gmail.com', '01684093813', 123, 0),
(74, '26/02/15 05:59:44pm', 'testing bangla', 'poem', 'ADSBjhb $post_type=clean_string($_POST["type"]);$post_content=clean_string($_POST["post"]); DSKJ', 9, 'user9', 'user9@gmail.com', '01684093813', 200, 0),
(75, '26/02/15 06:02:09pm', 'TSDFJ', 'drama', 'DSCJKSZ$post_type=clean_string($_POST["type"]);\r\n$post_content=clean_string($_POST["post"]);$post_type=clean_string($_POST["type"]);\r\n$post_content=clean_string($_POST["post"]);$post_type=clean_string($_POST["type"]);\r\n$post_content=clean_string($_POST["post"]);$post_type=clean_string($_POST["type"]);\r\n$post_content=clean_string($_POST["post"]);', 9, 'user9', 'user9@gmail.com', '01684093813', 200, 0),
(80, '27/02/15 04:22:49pm', 'sdfg', 'story', '''''''''''''''''''''''''''''''', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 123, 0),
(81, '27/02/15 04:30:52pm', ''''''''''''''''' ', 'drama', '''''''''''''''''''''''', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 123, 0),
(82, '27/02/15 04:31:26pm', 'tagfa''''''''', 'drama', '''''''''d''''''d''''''''/''''''''''d//''''', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 1234, 0),
(83, '27/02/15 04:31:56pm', 'fdfa""df', 'others', '''''""', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 123, 0),
(84, '27/02/15 04:34:07pm', 'fdfa""df', 'others', '''''""', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 123, 0),
(85, '27/02/15 04:54:21pm', '""""', 'story', '"""""', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 123456, 0),
(86, '27/02/15 05:04:01pm', '""""', 'story', '""""""', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 123, 0),
(87, '27/02/15 05:05:16pm', '""""', 'story', '""""""', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 123, 0),
(88, '27/02/15 05:06:02pm', '""""', 'story', '""""""', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 123, 0),
(89, '27/02/15 05:06:23pm', '""""', 'story', '""""""', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 123, 0),
(90, '27/02/15 05:08:08pm', '""""', 'story', '""""""', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 123, 0),
(93, '27/02/15 05:20:06pm', '""""', 'story', '"""""', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 120, 0),
(94, '27/02/15 05:26:24pm', '""""', 'poem', '""""""""', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 123, 1),
(95, '27/02/15 05:26:54pm', '""', 'lyrics', '"""""', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 234, 1),
(96, '28/02/15 05:43:18pm', 'tagfa''''''''', 'story', 'fds''''''''''', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 122, 0),
(97, '28/02/15 05:44:37pm', 'tagfa''''''''', 'story', '''''''''c''d''d''''', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 1234, 0),
(98, '28/02/15 05:52:44pm', 'tagfa''''''''', 'story', '""vdcxnj""csx', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 1233, 0),
(99, '28/02/15 05:55:51pm', 'tagfa''''''''', 'story', '""vdcxnj""csx', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 1233, 0),
(100, '28/02/15 05:57:38pm', 'tagfa''''''''', 'story', '''''''''c''d''d''''', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 1234, 0),
(101, '28/02/15 05:58:31pm', 'ta""""""', 'drama', '"S"S"S"S"S"S""F"D"FD"', 9, 'user9', 'user9@gmail.com', '01684093813', 1234567, 1),
(102, '28/02/15 06:00:12pm', 'tagfa''''''''', 'story', 'mysql_real_escape_string("""D"D"D"")', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 1234567, 0),
(105, '28/02/15 06:24:36pm', '""" """ ', 'story', '\\r\\n\\" \\''\\" \\" \\" sdsjkdxnasjkxnasxZ<', 9, 'user9', 'user9@gmail.com', '01684093813', 1234567, 0),
(106, '28/02/15 06:29:42pm', 'this "" is title', 'poem', '""d KNC""D"""''', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 124, 1),
(107, '28/02/15 06:30:56pm', 'this "" is title', 'poem', '""d KNC""D"""''', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 1245, 0),
(109, '28/02/15 06:34:00pm', 'tarek""D', 'poem', 'A"s"dsAD"d''sd', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 9, 0),
(110, '28/02/15 06:35:14pm', 'tarek""D', 'lyrics', 'A"s"dsAD"d''sd 9', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 99, 1),
(111, '28/02/15 06:36:06pm', 'tarek""D', 'jokes', 'A"s"dsAD"d''sd 9', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 99, 1),
(112, '28/02/15 06:36:24pm', '13"', 'story', '"des"ds', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 123456, 0),
(113, '28/02/15 06:38:39pm', 'dsgsd""', 'story', '"dA"Fd''''\r\nfd', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 1234, 0),
(114, '28/02/15 06:42:05pm', '"d"D"d"d"', 'drama', '\\"d\\"D\\"\\"\\"d\\"\\"\\"D\\"D\\"d\\''D\\"d\\''gfg\\"RgRg', 9, 'user9', 'user9@gmail.com', '01684093813', 123, 1),
(116, '28/02/15 06:45:46pm', 'tarek\\"\\"D', 'story', '\\" \\" \\"fa \\"a \\"a\\'' \\''a\\" Fa', 10, 'md tarek', 'user10@gmail.com', '0167534934839', 1233, 1),
(117, '19/03/15 01:31:00pm', 'tsome thing', 'jokes', 'bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh ', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 1),
(118, '19/03/15 01:31:11pm', 'tsome thing', 'lyrics', 'bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh ', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 1),
(119, '19/03/15 01:31:18pm', 'tsome thing', 'drama', 'bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh ', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 0),
(120, '19/03/15 01:31:22pm', 'tsome thing', 'lyrics', 'bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh ', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 1),
(121, '19/03/15 01:31:27pm', 'tsome thing', 'jokes', 'bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh ', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 1),
(122, '19/03/15 01:31:32pm', 'tsome thing', 'lyrics', 'bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh ', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 1),
(123, '19/03/15 01:31:37pm', 'tsome thing', 'jokes', 'bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh ', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 1),
(124, '19/03/15 01:31:41pm', 'tsome thing', 'lyrics', 'bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh ', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 1),
(125, '19/03/15 01:31:46pm', 'tsome thing', 'jokes', 'bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh ', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 1),
(126, '19/03/15 01:31:52pm', 'tsome thing', 'lyrics', 'bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh ', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 1),
(127, '19/03/15 01:31:57pm', 'tsome thing', 'lyrics', 'bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh ', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 1),
(128, '19/03/15 01:32:02pm', 'tsome thing', 'lyrics', 'bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh ', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 1),
(129, '19/03/15 01:33:29pm', 'tsome thing', 'jokes', 'bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh bangladesh ', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 1),
(130, '21/03/15 02:22:14pm', '&#2463;&#2494;&#2439;&#2463;&#2503;&#2482; &#2463;&#2503;&#2488;&#2509;&#2463;', 'drama', '&#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486;\\r\\n&#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486; &#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486;  ', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 1),
(131, '24/03/15 11:35:24pm', 'this is title &lt;br&gt;&lt;h1&gt; title&gt;&lt;/h1&gt;', 'drama', 'tarek \\&quot;\\&quot; \\&quot;\\&quot;\\r\\ntarek &lt;br&gt;&lt;br&gt;\\r\\ntarek\\r\\n\\r\\nt\\r\\nt\\r\\nt\\r\\nt\\r\\n', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 1),
(132, '24/03/15 11:43:23pm', 'title &lt;h1&gt;&lt;br&gt;', 'story', 'tarek\\r\\ntarek&lt;br&gt;\\&quot;\\&quot;&lt;h1&gt;taha&lt;/h1&gt;\\r\\ntarek', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 1, 1),
(133, '24/03/15 11:47:25pm', 'tarsjhs', 'drama', 'taerk\\r\\ntarek\\r\\ntark\\r\\n', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 1, 1),
(134, '24/03/15 11:52:15pm', 'tsfytfds&lt;br&gt;', 'story', 'tarfyde\\r\\ntadrftyasda\\r\\nagfdtasdahj\\r\\nt&lt;br&gt;&lt;br&gt;&lt;br&gt;a\\r\\ntarek', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 1, 1),
(135, '24/03/15 11:54:03pm', 'tara', 'story', 'atydgas\\r\\nasjygasbd\\r\\ndkjasdk\\r\\n', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 1),
(136, '24/03/15 11:56:39pm', 'traftda', 'story', 'dushd\\r\\ndjsdygshds\\r\\ndsvddhbs\\r\\nashdbasjdhas\\r\\n', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 1),
(137, '24/03/15 11:58:36pm', 'tary', 'story', 'bangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh \\r\\nbangladesh bangladesh ', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 0),
(138, '25/03/15 12:02:08am', 'tarsd', 'poem', 'adaskj\\r\\nsndsd\\r\\nsdnkasnda\\r\\ndasdnkdnkajd\\r\\nadasmdlkadnas\\r\\nddandkadas\\r\\nd', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 0),
(139, '25/03/15 12:05:09am', 'traeat', 'jokes', '$new1=htmlentities($new1);\\r\\n$new1=str_replace(PHP_EOL , &quot;&lt;br&gt;&quot;,$new1);$new1=htmlentities($new1);\\r\\n$new1=str_replace(PHP_EOL , &quot;&lt;br&gt;&quot;,$new1);', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 1),
(140, '25/03/15 12:08:25am', 'traeat', 'story', 'BangladeshBangladeshBangladeshBangladeshBangladeshBangladeshvBangladeshBangladeshBangladeshBangladesh', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 1, 0),
(141, '25/03/15 12:14:04am', 'tare', 'lyrics', 'tafdsdv\r\nasdgysdas\r\nasgdasydgasyh\r\n', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 121, 1),
(142, '25/03/15 12:17:07am', 'tarek', 'poem', 'bangladesh\r\nbangladesh\r\nbangladesh\r\nbangladesh\r\nbangladesh\r\nbangladesh\r\nbangladesh\r\n\r\n\r\ntxfyat\r\n\r\n', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 10, 0),
(143, '27/03/15 11:51:44pm', 'à¦Ÿà¦¾à¦‡à¦Ÿà§‡à¦²', 'story', 'à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\n\r\n\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\n\r\n\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\n\r\n\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\n\r\n\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\n\r\n\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\n', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 1),
(144, '27/03/15 11:52:56pm', 'à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ ', 'poem', 'à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\n', 3, 'Tarek', 'tarekllf01@gmail.com', '01684093813', 0, 1),
(145, '28/03/15 01:51:13am', 'rehyerh', 'lyrics', 'ghdfhghsh ht ghsh shj sjhjrh', 7, 'user7', 'user7@gmail.com', '01684093813', 9, 1),
(146, '30/03/15 04:50:59pm', 'à¦Ÿà¦¾à¦‡à¦Ÿà§‡à¦² à¦Ÿà§‡à¦¸à§à¦Ÿà¦¿à¦‚ à¦«à¦° à¦¬à¦¾à¦‚à¦²à¦¾ à¦«à¦°à¦®à§à¦¯à¦¾à¦Ÿ ', 'story', 'à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ \r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ ', 1, 'Md tarek', 'md.tarekhossen@yahoo.com', '01684093813', 120, 1),
(147, '30/03/15 05:28:26pm', 'echo &quot;helo&quot;;', 'story', 'à¦¸à§à¦Ÿà§à¦°à¦¿à¦‚ nfdsndjs ssk xs x ss  dummy words padding-top:2px;', 1, 'Md tarek', 'md.tarekhossen@yahoo.com', '01684093813', 123, 1),
(148, '30/03/15 05:29:13pm', 'yicvxvdsxxczxz cxzcdsihcftFdv   dfbdf Z ydtgfd ddnb td ddihddsd s didhasdAd ', 'story', 'atfda ayatdasyu yicvxvdsxxczxz cxzcdsihcftFdv   dfbdf Z ydtgfd ddnb td ddihddsd s didhasdAd yicvxvdsxxczxz cxzcdsihcftFdv   dfbdf Z ydtgfd ddnb td ddihddsd s didhasdAd yicvxvdsxxczxz cxzcdsihcftFdv   dfbdf Z ydtgfd ddnb td ddihddsd s didhasdAd yicvxvdsxxczxz cxzcdsihcftFdv   dfbdf Z ydtgfd ddnb td ddihddsd s didhasdAd ', 1, 'Md tarek', 'md.tarekhossen@yahoo.com', '01684093813', 123, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`user_id` int(250) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `login_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(10) NOT NULL,
  `gender` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'male',
  `phone` varchar(15) NOT NULL,
  `password` varchar(30) NOT NULL,
  `register_date` varchar(20) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `activated` int(1) NOT NULL DEFAULT '0',
  `fb` varchar(50) DEFAULT NULL,
  `fba` int(1) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `login_name`, `city`, `gender`, `phone`, `password`, `register_date`, `image_name`, `activated`, `fb`, `fba`) VALUES
(1, 'Md tarek', 'Hossen', 'md.tarekhossen@yahoo.com', 'md.tarekhossen', 'Dhaka', 'male', '01684093813', '123456', '2015-02-05', 'md.tarekhossen@yahoo.com.jpg', 1, 'www.facebook.com/gfygvhj\r\n\r\n', 1),
(2, 'naeem', 'Hossen', 'naeem@gmail.com', 'naeem', 'Dhaka', 'male', '01684093813', 't01684093813', '2015-02-06', '', 1, NULL, NULL),
(3, 'Tarek', 'Hossen', 'tarekllf01@gmail.com', 'tarekllf01', 'Dhaka', 'male', '01684093813', '12345', '2015-02-07', 'tarekllf01@gmail.com.jpg', 1, 'facebook.com/md.tarek', 1),
(4, 'tarek mia', 'vAI', 'tarek@gmail.com', 'tarek', 'Dhaka', 'male', '01600000000', '12345', '0000-00-00', 'sad+boy+alone+broken+heart+sad+boy[1].jpg', 1, NULL, NULL),
(5, 'tarek', 'naeem', 'tarek1@gmail.com', 'tarek1', 'dhaka', 'male', '01684093813', '12345', '0000-00-00', 'alone_emo_boy[1].jpg', 1, '#', 1),
(6, 'user6', 'user', 'user6@gmail.com', 'user6', 'tongi', 'male', '01600000000', '12345', '0000-00-00', 'Tarek1.jpg', 1, NULL, NULL),
(7, 'user7', 'b', 'user7@gmail.com', 'user7', 'Dhaka', 'male', '01684093813', '12345', '0000-00-00', 'New album.jpg', 1, 'www.facebook.com/your profile \r\n\r\n', 2),
(8, 'user8', 'a', 'user8@gmail.com', 'user8', 'Dhaka', 'male', '0167534934839', '12345', '0000-00-00', 'Tarek2.jpg', 1, NULL, NULL),
(9, 'user9', 'a', 'user9@gmail.com', 'user9', 'Dhaka', 'male', '01684093813', '12345', '0000-00-00', 'user9@gmail.com.GIF', 1, 'www.facebook.com/myfrofile\r\n\r\n', 1),
(10, 'md tarek', 'hossen', 'user10@gmail.com', 'user10', 'gazipur', 'male', '0167534934839', '12345', '0000-00-00', 'user10@gmail.com.png', 1, '', NULL),
(11, 'user11', 'hi', 'user11@gmail.com', 'user11', 'Dhaka', 'male', '01684093813', '12345', '0000-00-00', 'Tarek 001.JPG', 1, 'www.facebook.com/tarek \r\n\r\n', 1),
(12, 'user12', 'ds', 'user12@gmail.com', 'user12', 'dhaka', 'male', '01684093813', '12345', '15/02/26 11:28:30am', 'IMG0056A.jpg', 1, NULL, NULL),
(21, 'Tarek', 'mia', 'tarekllf02@gmail.com', 'tarekllf02', 'dhaka', 'male', '01684093813', '12345', '15/03/06 06:25:54pm', '1420286680_Flag_of_Bangladesh.png', 1, NULL, 2),
(22, 'kuddus', 'mia', 'kuddusmia@gmail.com', 'kuddusmia', 'Dhaka', 'male', '01677766252', '12345', '15/03/07 12:40:21pm', '741px-&#2476;&#2494;&#2434;&#2482;&#2494;&#2470;&#2503;&#2486;&#2503;_&#2480;&#2434;&#2474;&#2497;&#', 0, NULL, 2),
(23, 'kuddus', 'b', 'kuddusb@gmail.com', 'kuddusb', 'Dhaka', 'male', '0167534934839', '12345', '15/03/07 12:49:59pm', 'administration.jpg', 0, NULL, 0),
(24, 'kuddus', 'bs', 'kuddusbs@gmail.com', 'kuddusbs', 'Dhaka', 'male', '0167534934839', '12345', '15/03/07 01:22:17pm', 'kuddusbs@gmail.com.jpg', 0, NULL, 0),
(26, 'tarek', 'hossen', 'tarekllf03@gmail.com', 'tarekllf03', 'Dhaka', 'male', '01684093813', '12345', '15/03/28 10:37:43pm', 'tarekllf03@gmail.com.jpg', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`,`admin_id`), ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
 ADD PRIMARY KEY (`all`);

--
-- Indexes for table `message0`
--
ALTER TABLE `message0`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message1`
--
ALTER TABLE `message1`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message2`
--
ALTER TABLE `message2`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msg0`
--
ALTER TABLE `msg0`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msg1`
--
ALTER TABLE `msg1`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msg2`
--
ALTER TABLE `msg2`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `email` (`email`), ADD UNIQUE KEY `login_name` (`login_name`), ADD UNIQUE KEY `login_name_2` (`login_name`), ADD UNIQUE KEY `login_name_3` (`login_name`), ADD UNIQUE KEY `login_name_4` (`login_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
MODIFY `all` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `message0`
--
ALTER TABLE `message0`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `message1`
--
ALTER TABLE `message1`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `message2`
--
ALTER TABLE `message2`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `msg0`
--
ALTER TABLE `msg0`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `msg1`
--
ALTER TABLE `msg1`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `msg2`
--
ALTER TABLE `msg2`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
MODIFY `post_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(250) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
