-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2021 at 09:42 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(10) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `admin_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `admin_email`, `admin_username`, `admin_password`, `first_name`, `last_name`, `admin_type`) VALUES
(1, 'shivam3092001@gmail.com', 'cvam30', '123', 'Shivam', 'Patel ', '1'),
(2, 'komil@gmail.com', 'kptl', '123', 'Komil', 'Patel', '2'),
(4, 'nancy@gmail.com', 'nancy', '123', 'Nancy', 'LastName', '2'),
(5, 'customer3@gmail.com', 'customer2', '123', 'aaaa', 'aaa', '2'),
(6, 'super2@gmail.com', 'super2', '123', 'Super', 'Admin2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `admin_type`
--

CREATE TABLE `admin_type` (
  `id` int(10) NOT NULL,
  `admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_type`
--

INSERT INTO `admin_type` (`id`, `admin`) VALUES
(1, 'Super Admin'),
(2, 'Customer Admin');

-- --------------------------------------------------------

--
-- Table structure for table `all_jobs`
--

CREATE TABLE `all_jobs` (
  `job_id` int(111) NOT NULL,
  `customer_email` varchar(111) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `des` varchar(111) NOT NULL,
  `country` varchar(111) NOT NULL,
  `state` varchar(111) NOT NULL,
  `city` varchar(100) NOT NULL,
  `keyword` varchar(111) NOT NULL,
  `category` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_jobs`
--

INSERT INTO `all_jobs` (`job_id`, `customer_email`, `job_title`, `des`, `country`, `state`, `city`, `keyword`, `category`) VALUES
(1, 'shivam3092001@gmail.com', 'Full Stack Developer', 'Urgent requirement of a skilled Full stack Developer', 'India', 'Gujarat', 'Anand', 'Full Stack Web Developer', '2'),
(2, 'nancy@gmail.com', 'Web developer', 'Wordpress Website Software company', 'India', 'West-bengal', 'Kolkata', 'wordpress webpages', '2'),
(12, 'shivam3092001@gmail.com', 'PHP Programmer', 'PHP JS CSS HTML programmer required', 'India', 'Gujarat', 'Anand', 'php fresher', '2'),
(13, 'nancy@gmail.com', 'Java Programmer', 'A skilled Java Programmer required', 'Australia', 'Victoria', 'Allambee', 'java programming', '3'),
(14, 'komil@gmail.com', 'Wordpress', 'Wordpress comapny', 'India', 'Gujarat', 'Anand', 'java fresher', '5'),
(16, 'nancy@gmail.com', 'SQL', 'Requirement for Database Management SQL coder', 'India', 'Gujarat', 'Nadiad', 'sql database', '1'),
(17, 'nancy@gmail.com', 'Internship', 'Internship Related to MySQL and database', 'India', 'Gujarat', 'Napad', 'sql database', '1'),
(18, 'nancy@gmail.com', 'Internship', 'internship', 'India', 'Gujarat', 'Anand', 'sql', '1');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `des` varchar(100) NOT NULL,
  `admin` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company`, `des`, `admin`) VALUES
(3, 'Web', 'Web Developement', 'nancy@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker`
--

CREATE TABLE `jobseeker` (
  `id` int(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `mobile_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobseeker`
--

INSERT INTO `jobseeker` (`id`, `email`, `password`, `first_name`, `last_name`, `dob`, `mobile_number`) VALUES
(7, 'amit23@gmail.com', '657', 'shyam', 'thakkar', '2009-12-28', '8780066714'),
(8, 'login1@gmail.com', '123', 'Log', 'In', '2021-06-08', '9998887776'),
(9, 'log1@gmail.com', '123', 'Log', 'In', '2021-06-14', '9998887776'),
(10, 'komilpatel123@gmail.com', '123', 'Komil', 'Patel', '2021-06-22', '9999999999');

-- --------------------------------------------------------

--
-- Table structure for table `job_apply`
--

CREATE TABLE `job_apply` (
  `id` int(11) NOT NULL,
  `first_name` varchar(1111) NOT NULL,
  `last_name` varchar(1111) NOT NULL,
  `dob` date NOT NULL,
  `files` varchar(1111) NOT NULL,
  `id_job` int(11) NOT NULL,
  `job_seeker` varchar(1111) NOT NULL,
  `mobile_number` int(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_apply`
--

INSERT INTO `job_apply` (`id`, `first_name`, `last_name`, `dob`, `files`, `id_job`, `job_seeker`, `mobile_number`) VALUES
(25, 'Komil', 'P', '2021-08-12', 'php1.php', 12, 'komilpatel123@gmail.com', 1231231230),
(26, 'k', 'p', '2021-08-02', 'Weekly_Reports.pdf', 16, 'komilpatel123@gmail.com', 2147483647),
(27, 'Komil', 'Patel', '2021-08-03', 'KOMIL PATEL Resume.pdf', 17, 'komilpatel123@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `job_category`
--

CREATE TABLE `job_category` (
  `id` int(111) NOT NULL,
  `category` varchar(111) NOT NULL,
  `des` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_category`
--

INSERT INTO `job_category` (`id`, `category`, `des`) VALUES
(1, 'SQL', 'Database Management'),
(2, 'java', 'Java Programmer'),
(3, 'php', 'php for entertainment'),
(4, 'python', 'this is for python'),
(5, 'Wordpress', 'This is for Wordpress learner');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(111) NOT NULL,
  `img` varchar(1111) NOT NULL,
  `first_name` varchar(1111) NOT NULL,
  `last_name` varchar(1111) NOT NULL,
  `dob` varchar(1111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `email` varchar(1111) NOT NULL,
  `user_email` varchar(1111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `img`, `first_name`, `last_name`, `dob`, `number`, `email`, `user_email`) VALUES
(3, '469525-middle.png', 'Komil', 'Patel', '2021-06-15', '10101010010', 'komilpatel123@gmail.com', 'komilpatel123@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_jobs`
--
ALTER TABLE `all_jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `jobseeker`
--
ALTER TABLE `jobseeker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_apply`
--
ALTER TABLE `job_apply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_category`
--
ALTER TABLE `job_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `all_jobs`
--
ALTER TABLE `all_jobs`
  MODIFY `job_id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobseeker`
--
ALTER TABLE `jobseeker`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `job_apply`
--
ALTER TABLE `job_apply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `job_category`
--
ALTER TABLE `job_category`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
