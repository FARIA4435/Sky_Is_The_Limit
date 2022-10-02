-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2016 at 07:46 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `accomodation`
--

CREATE TABLE IF NOT EXISTS `accomodation` (
`id` int(10) NOT NULL,
  `hotel` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `place` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accomodation`
--

INSERT INTO `accomodation` (`id`, `hotel`, `price`, `place`) VALUES
(1, 'Long Beach Hotel', 4700, 'Dhaka to CoxsBazar'),
(2, 'Hotel Prime Park', 3200, 'Dhaka to CoxsBazar'),
(3, 'Sayeman Hotel', 3500, 'Dhaka to CoxsBazar'),
(4, 'Ocean Paradise', 3000, 'Dhaka to CoxsBazar'),
(5, 'Sea Gull Hotel', 3000, 'Dhaka to CoxsBazar'),
(6, 'Coral View', 2000, 'Dhaka to SaintMartin'),
(7, 'Blue Marine Resort', 2000, 'Dhaka to SaintMartin'),
(8, 'Music Eco Resort', 2000, 'Dhaka to SaintMartin'),
(9, 'Britannia Hotel', 1500, 'Dhaka to SaintMartin'),
(10, 'Hotel Holy Gate', 1500, 'Dhaka to Sylhet'),
(11, 'Rose View ', 1200, 'Dhaka to Sylhet'),
(12, 'The Palace', 2500, 'Dhaka to Sylhet'),
(13, 'Grand Sultan', 5000, 'Dhaka to Sylhet'),
(14, 'Hill View Hotel', 2500, 'Dhaka to BandarBan'),
(15, 'Hotel Green Park', 2000, 'Dhaka to BandarBan'),
(16, 'Hotel Green Land', 2000, 'Dhaka to BandarBan'),
(17, 'Venus Resort', 2000, 'Dhaka to BandarBan'),
(18, 'Holiday Inn', 2500, 'Dhaka to BandarBan'),
(19, 'Hotel Singapore', 2000, 'Dhaka to Sundarban'),
(20, 'Castle Salam', 2500, 'Dhaka to Sundarban'),
(21, 'United 21 Resort', 2000, 'Dhaka to Sundarban'),
(22, 'Suhasini Guest House', 1500, 'Dhaka to Sundarban'),
(23, 'City Inn', 1500, 'Dhaka to Sundarban');

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE IF NOT EXISTS `destination` (
`id` int(10) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `guide` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`id`, `destination`, `guide`) VALUES
(1, 'Dhaka to CoxsBazar', 800),
(2, 'Dhaka to Sylhet', 800),
(3, 'Dhaka to Sundarban', 800),
(5, 'Dhaka to SaintMartin', 800),
(6, 'Dhaka to BandarBan', 800);

-- --------------------------------------------------------

--
-- Table structure for table `favourite`
--

CREATE TABLE IF NOT EXISTS `favourite` (
`id` int(10) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `hotelName` varchar(250) NOT NULL,
  `accomodation` int(10) NOT NULL,
  `guide` int(10) NOT NULL,
  `living` int(10) NOT NULL,
  `nom` int(10) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favourite`
--

INSERT INTO `favourite` (`id`, `uname`, `hotelName`, `accomodation`, `guide`, `living`, `nom`, `price`) VALUES
(10, 'rakib', 'Sayeman Hotel', 3500, 800, 2, 2, 17200),
(11, 'rakib', 'Holiday Inn', 2500, 800, 2, 3, 19800),
(12, 'wahid', 'Long Beach Hotel', 4700, 800, 3, 3, 49500),
(13, 'wahid', 'Rose View ', 1200, 800, 2, 2, 8000),
(14, 'wahid', 'Castle Salam', 2500, 800, 4, 3, 39600),
(15, 'sohan', 'Hotel Singapore', 2000, 800, 3, 3, 25200),
(16, 'wahid', 'Rose View ', 1200, 800, 1, 7, 14000),
(17, 'ilu', 'The Palace', 2500, 800, 2, 3, 19800),
(18, 'ilu', 'Sayeman Hotel', 3500, 800, 1, 3, 12900),
(19, 'alu', 'Hotel Prime Park', 3200, 800, 3, 3, 36000),
(20, 'wahid', 'Hotel Prime Park', 3200, 800, 5, 3, 60000),
(21, 'habib', 'Grand Sultan', 5000, 800, 2, 7, 81200);

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE IF NOT EXISTS `package` (
`id` int(10) NOT NULL,
  `package` varchar(50) NOT NULL,
  `days` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `package`, `days`) VALUES
(1, '3 days 2 nights', 3),
(2, '3 nights 2 days', 2),
(3, '4 nights 4 days', 4),
(4, '1 week', 7);

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE IF NOT EXISTS `picture` (
`id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `fpath` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`id`, `name`, `fpath`, `type`, `user`) VALUES
(13, '10294371_1023497534363860_7483577546571930599_n.jpg', 'uploads/10294371_1023497534363860_7483577546571930599_n.jpg', 'image/jpeg', 'rakib'),
(14, '13087762_1141167192572214_9012831564467864115_n.jpg', 'uploads/13087762_1141167192572214_9012831564467864115_n.jpg', 'image/jpeg', 'rakib'),
(15, 'Screenshot_1.jpg', 'uploads/Screenshot_1.jpg', 'image/jpeg', 'wahid'),
(16, 'tshirt-4.jpg', 'uploads/tshirt-4.jpg', 'image/jpeg', 'wahid'),
(17, 'sample-book-cover.jpg', 'uploads/sample-book-cover.jpg', 'image/jpeg', 'rakib'),
(18, 'Eshop.png', 'uploads/Eshop.png', 'image/png', 'wahid'),
(19, 'lalakhal2.jpg', 'uploads/lalakhal2.jpg', 'image/jpeg', 'wahid'),
(20, 'backgroundImage.jpg', 'uploads/backgroundImage.jpg', 'image/jpeg', 'wahid'),
(21, 'mash.jpg', 'uploads/mash.jpg', 'image/jpeg', 'rocky'),
(22, 'mushfiq.jpg', 'uploads/mushfiq.jpg', 'image/jpeg', 'rocky'),
(23, 'Kotkabeach.jpg', 'uploads/Kotkabeach.jpg', 'image/jpeg', 'wahid'),
(24, 'inani.jpg', 'uploads/inani.jpg', 'image/jpeg', 'wahid'),
(25, 'cox.jpg', 'uploads/cox.jpg', 'image/jpeg', 'wahid'),
(26, 'bus5.jpg', 'uploads/bus5.jpg', 'image/jpeg', 'rakib'),
(27, 'inani.jpg', 'uploads/inani.jpg', 'image/jpeg', 'rakib'),
(28, 'himchori.jpg', 'uploads/himchori.jpg', 'image/jpeg', 'rakib'),
(29, 'hironpoint2.jpg', 'uploads/hironpoint2.jpg', 'image/jpeg', 'rakib'),
(30, 'slider1.jpg', 'uploads/slider1.jpg', 'image/jpeg', 'rakib');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `opinion` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email`, `uname`, `password`, `pic`, `opinion`) VALUES
('fahim', 'alu@gnail.com', 'alu', '123', 'uploads/MY Family.jpg', 'Good Website...Liked It :D'),
('Habib', 'habib@aiub.edu', 'habib', '321', 'uploads/mushfiq.jpg', 'Yes It is helpful. And I liked it.'),
('ILU', 'ilu@aiub.edu', 'ilu', '123', NULL, 'Nice Web Page. Like It...'),
('rakib', 'rakib@mail.com', 'rakib', '123', 'uploads/rakib.jpg', 'hey wahid !!!'),
('rocky', 'rocky@mail.com', 'rocky', '123', 'uploads/rocky.jpg', 'Very Nice Trip'),
('Sohan', 'sohan@aiub.edu', 'sohan', '123', 'uploads/error.png', 'Project Has Completed Successfully  '),
('wahid', 'wahid@mail.com', 'wahid', '123', 'uploads/whd.jpg', 'Thanks For Everything. Enjoyed every moment of the trip :)');

-- --------------------------------------------------------

--
-- Table structure for table `watchlist`
--

CREATE TABLE IF NOT EXISTS `watchlist` (
`id` int(250) NOT NULL,
  `username` varchar(50) NOT NULL,
  `watchlist` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watchlist`
--

INSERT INTO `watchlist` (`id`, `username`, `watchlist`) VALUES
(2, 'rakib', 'Laboni Beach , Coxs Bazar'),
(4, 'rakib', 'Lalakhal, Sylhet'),
(5, 'wahid', 'Boga Lake, Bandarban'),
(6, 'wahid', 'St. Martins Island, Coxs Bazar'),
(7, 'wahid', 'Kuakata, Patuakhali'),
(8, 'wahid', 'Bisnakandi, Sylhet'),
(9, 'wahid', 'Nilachal, Bandarban'),
(10, 'sohan', 'Inani Beach , Coxs Bazar'),
(11, 'sohan', 'Kuakata, Patuakhali'),
(12, 'wahid', 'Nilachal, Bandarban'),
(13, 'wahid', 'St. Martins Island , Coxs Bazar'),
(14, 'rakib', 'Nilgiri, Bandarban'),
(15, 'wahid', 'Laboni Beach, Coxs Bazar'),
(16, 'ilu', 'Laboni Beach, Coxs Bazar'),
(17, 'ilu', 'Inani Beach , Coxs Bazar'),
(18, 'ilu', 'Kuakata, Patuakhali'),
(19, 'ilu', 'St. Martins Island , Coxs Bazar'),
(20, '', 'Inani Beach , Coxs Bazar'),
(21, 'alu', 'Himchori Waterfall , Coxs Bazar'),
(22, 'alu', 'St. Martins Island , Coxs Bazar'),
(23, 'habib', 'Hiron Point, Sundarban'),
(24, 'habib', 'Kalashdeep, Sundarban');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accomodation`
--
ALTER TABLE `accomodation`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourite`
--
ALTER TABLE `favourite`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`uname`);

--
-- Indexes for table `watchlist`
--
ALTER TABLE `watchlist`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accomodation`
--
ALTER TABLE `accomodation`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `favourite`
--
ALTER TABLE `favourite`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `picture`
--
ALTER TABLE `picture`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `watchlist`
--
ALTER TABLE `watchlist`
MODIFY `id` int(250) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
