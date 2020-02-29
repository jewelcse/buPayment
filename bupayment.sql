-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2020 at 04:04 PM
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
-- Database: `bupayment`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_development_fees_table`
--

CREATE TABLE `admin_development_fees_table` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `department` int(11) NOT NULL,
  `main_fee` int(11) NOT NULL,
  `misce_fee` int(11) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_development_fees_table`
--

INSERT INTO `admin_development_fees_table` (`id`, `semester`, `department`, `main_fee`, `misce_fee`, `start_date`, `end_date`) VALUES
(1, '1st', 1, 1000, 1000, '2019-09-27', '2020-01-30'),
(2, '2nd', 1, 800, 1000, '2019-09-08', '2019-09-23'),
(3, '3rd', 1, 600, 1000, '2019-09-10', '2019-12-31'),
(4, '4th', 1, 600, 1000, '2019-09-10', '2019-12-20'),
(5, '5th', 1, 600, 900, '2019-09-07', '2019-09-20'),
(6, '6th', 1, 600, 1000, '2019-09-01', '2020-10-26'),
(7, '7th', 1, 600, 1200, '2019-09-01', '2019-12-27'),
(8, '8th', 1, 600, 1000, '2019-09-01', '2020-04-01'),
(9, '1st', 3, 500, 500, '2019-09-25', '2020-09-25'),
(10, '2nd', 3, 800, 600, '2019-09-25', '2019-09-25'),
(11, '3rd', 3, 700, 800, '2019-09-25', '2019-09-25'),
(12, '4th', 3, 800, 600, '2019-09-25', '2019-09-25'),
(13, '5th', 3, 700, 800, '2019-09-25', '2019-09-25'),
(14, '6th', 3, 700, 800, '2019-09-25', '2019-09-25'),
(15, '7th', 3, 700, 800, '2019-09-25', '2019-09-25'),
(16, '8th', 3, 700, 800, '2019-09-25', '2019-09-25'),
(17, '1st', 2, 800, 600, '2019-09-25', '2019-09-25'),
(18, '2nd', 2, 800, 600, '2019-09-25', '2019-09-25'),
(19, '3rd', 2, 800, 600, '2019-09-25', '2019-09-25'),
(20, '4th', 2, 800, 600, '2019-09-25', '2019-09-25'),
(21, '5th', 2, 700, 800, '2019-09-25', '2019-09-25'),
(22, '6th', 2, 700, 800, '2019-09-25', '2019-09-25'),
(23, '7th', 2, 700, 800, '2019-09-25', '2019-09-25'),
(24, '8th', 2, 700, 800, '2019-09-25', '2019-09-25'),
(25, '1st', 4, 800, 600, '2019-09-25', '2020-09-25'),
(26, '2nd', 4, 800, 600, '2019-09-25', '2019-09-25'),
(27, '3rd', 4, 800, 600, '2019-09-25', '2019-09-25'),
(28, '4th', 4, 800000, 600000, '2019-09-25', '2019-09-25'),
(29, '5th', 4, 700, 800, '2019-09-25', '2019-09-25'),
(30, '6th', 4, 700, 800, '2019-09-25', '2019-09-25'),
(31, '7th', 4, 700, 800, '2019-09-25', '2019-09-25'),
(32, '8th', 4, 700, 800, '2019-09-25', '2019-09-25'),
(33, '1st', 5, 800, 600, '2019-09-25', '2019-09-25'),
(34, '2nd', 5, 800, 600, '2019-09-25', '2019-09-25'),
(35, '3rd', 5, 800, 600, '2019-09-25', '2019-09-25'),
(36, '4th', 5, 800, 600, '2019-09-25', '2019-09-25'),
(37, '5th', 5, 700, 800, '2019-09-25', '2019-09-25'),
(38, '6th', 5, 700, 800, '2019-09-25', '2019-09-25'),
(39, '7th', 5, 700, 800, '2019-09-25', '2019-09-25'),
(40, '8th', 5, 700, 800, '2019-09-25', '2019-09-25'),
(41, '1st', 6, 800, 600, '2019-09-25', '2019-09-25'),
(42, '2nd', 6, 800, 600, '2019-09-25', '2019-09-25'),
(43, '3rd', 6, 800, 600, '2019-09-25', '2019-09-25'),
(44, '4th', 6, 800, 600, '2019-09-25', '2019-09-25'),
(45, '5th', 6, 700, 800, '2019-09-25', '2019-09-25'),
(46, '6th', 6, 700, 800, '2019-09-25', '2019-09-25'),
(47, '7th', 6, 700, 800, '2019-09-25', '2019-09-25'),
(48, '8th', 6, 700, 800, '2019-09-25', '2019-09-25'),
(49, '1st', 7, 800, 600, '2019-09-25', '2019-09-25'),
(50, '2nd', 7, 800, 600, '2019-09-25', '2019-09-25'),
(51, '3rd', 7, 800, 600, '2019-09-25', '2019-09-25'),
(52, '4th', 7, 800, 600, '2019-09-25', '2019-09-25'),
(53, '5th', 7, 700, 800, '2019-09-25', '2019-09-25'),
(54, '6th', 7, 700, 800, '2019-09-25', '2019-09-25'),
(55, '7th', 7, 700, 800, '2019-09-25', '2019-09-25'),
(56, '8th', 7, 700, 800, '2019-09-25', '2019-09-25'),
(57, '1st', 8, 800, 600, '2019-09-25', '2019-09-25'),
(58, '2nd', 8, 800, 600, '2019-09-25', '2019-09-25'),
(59, '3rd', 8, 800, 600, '2019-09-25', '2019-09-25'),
(60, '4th', 8, 800, 600, '2019-09-25', '2019-09-25'),
(61, '5th', 8, 700, 800, '2019-09-25', '2019-09-25'),
(62, '6th', 8, 700, 800, '2019-09-25', '2019-09-25'),
(63, '7th', 8, 700, 800, '2019-09-25', '2019-09-25'),
(64, '8th', 8, 700, 800, '2019-09-25', '2019-09-25'),
(65, '1st', 9, 800, 600, '2019-09-25', '2019-09-25'),
(66, '2nd', 9, 800, 600, '2019-09-25', '2019-09-25'),
(67, '3rd', 9, 800, 600, '2019-09-25', '2019-09-25'),
(68, '4th', 9, 800, 600, '2019-09-25', '2019-09-25'),
(69, '5th', 9, 700, 800, '2019-09-25', '2019-09-25'),
(70, '6th', 9, 700, 800, '2019-09-25', '2019-09-25'),
(71, '7th', 9, 700, 800, '2019-09-25', '2019-09-25'),
(72, '8th', 9, 700, 800, '2019-09-25', '2019-09-25'),
(73, '1st', 10, 800, 600, '2019-09-25', '2019-09-25'),
(74, '2nd', 10, 800, 600, '2019-09-25', '2019-09-25'),
(75, '3rd', 10, 800, 600, '2019-09-25', '2019-09-25'),
(76, '4th', 10, 800, 600, '2019-09-25', '2019-09-25'),
(77, '5th', 10, 700, 800, '2019-09-25', '2019-09-25'),
(78, '6th', 10, 700, 800, '2019-09-25', '2019-09-25'),
(79, '7th', 10, 700, 800, '2019-09-25', '2019-09-25'),
(80, '8th', 10, 700, 800, '2019-09-25', '2019-09-25'),
(81, '1st', 11, 800, 600, '2019-09-25', '2019-09-25'),
(82, '2nd', 11, 800, 600, '2019-09-25', '2019-09-25'),
(83, '3rd', 11, 800, 600, '2019-09-25', '2019-09-25'),
(84, '4th', 11, 800, 600, '2019-09-25', '2019-09-25'),
(85, '5th', 11, 700, 800, '2019-09-25', '2019-09-25'),
(86, '6th', 11, 700, 800, '2019-09-25', '2019-09-25'),
(87, '7th', 11, 700, 800, '2019-09-25', '2019-09-25'),
(88, '8th', 11, 700, 800, '2019-09-25', '2019-09-25'),
(89, '1st', 12, 800, 600, '2019-09-25', '2019-09-25'),
(90, '2nd', 12, 800, 600, '2019-09-25', '2019-09-25'),
(91, '3rd', 12, 800, 600, '2019-09-25', '2019-09-25'),
(92, '4th', 12, 800, 600, '2019-09-25', '2019-09-25'),
(93, '5th', 12, 700, 800, '2019-09-25', '2019-09-25'),
(94, '6th', 12, 700, 800, '2019-09-25', '2019-09-25'),
(95, '7th', 12, 700, 800, '2019-09-25', '2019-09-25'),
(96, '8th', 12, 700, 800, '2019-09-25', '2019-09-25'),
(97, '1st', 13, 800, 600, '2019-09-25', '2019-09-25'),
(98, '2nd', 13, 800, 600, '2019-09-25', '2019-09-25'),
(99, '3rd', 13, 800, 600, '2019-09-25', '2019-09-25'),
(100, '4th', 13, 800, 600, '2019-09-25', '2019-09-25'),
(101, '5th', 13, 700, 800, '2019-09-25', '2019-09-25'),
(102, '6th', 13, 700, 800, '2019-09-25', '2019-09-25'),
(103, '7th', 13, 700, 800, '2019-09-25', '2019-09-25'),
(104, '8th', 13, 700, 800, '2019-09-25', '2019-09-25'),
(105, '1st', 14, 800, 600, '2019-09-25', '2019-09-25'),
(106, '2nd', 14, 800, 600, '2019-09-25', '2019-09-25'),
(107, '3rd', 14, 800, 600, '2019-09-25', '2019-09-25'),
(108, '4th', 14, 800, 600, '2019-09-25', '2019-09-25'),
(109, '5th', 14, 700, 800, '2019-09-25', '2019-09-25'),
(110, '6th', 14, 700, 800, '2019-09-25', '2019-09-25'),
(111, '7th', 14, 700, 800, '2019-09-25', '2019-09-25'),
(112, '8th', 14, 700, 800, '2019-09-25', '2019-09-25'),
(113, '1st', 15, 800, 600, '2019-09-25', '2019-09-25'),
(114, '2nd', 15, 800, 600, '2019-09-25', '2019-09-25'),
(115, '3rd', 15, 800, 600, '2019-09-25', '2019-09-25'),
(116, '4th', 15, 800, 600, '2019-09-25', '2019-09-25'),
(117, '5th', 15, 700, 800, '2019-09-25', '2019-09-25'),
(118, '6th', 15, 700, 800, '2019-09-25', '2019-09-25'),
(119, '7th', 15, 700, 800, '2019-09-25', '2019-09-25'),
(120, '8th', 15, 700, 800, '2019-09-25', '2019-09-25'),
(121, '1st', 16, 800, 600, '2019-09-25', '2019-09-25'),
(122, '2nd', 16, 800, 600, '2019-09-25', '2019-09-25'),
(123, '3rd', 16, 800, 600, '2019-09-25', '2019-09-25'),
(124, '4th', 16, 800, 600, '2019-09-25', '2019-09-25'),
(125, '5th', 16, 700, 800, '2019-09-25', '2019-09-25'),
(126, '6th', 16, 700, 800, '2019-09-25', '2019-09-25'),
(127, '7th', 16, 700, 800, '2019-09-25', '2019-09-25'),
(128, '8th', 16, 700, 800, '2019-09-25', '2019-09-25'),
(129, '1st', 17, 800, 600, '2019-09-25', '2019-09-25'),
(130, '2nd', 17, 800, 600, '2019-09-25', '2019-09-25'),
(131, '3rd', 17, 800, 600, '2019-09-25', '2019-09-25'),
(132, '4th', 17, 800, 600, '2019-09-25', '2019-09-25'),
(133, '5th', 17, 700, 800, '2019-09-25', '2019-09-25'),
(134, '6th', 17, 700, 800, '2019-09-25', '2019-09-25'),
(135, '7th', 17, 700, 800, '2019-09-25', '2019-09-25'),
(136, '8th', 17, 700, 800, '2019-09-25', '2019-09-25'),
(137, '1st', 18, 800, 600, '2019-09-25', '2019-09-25'),
(138, '2nd', 18, 800, 600, '2019-09-25', '2019-09-25'),
(139, '3rd', 18, 800, 600, '2019-09-25', '2019-09-25'),
(140, '4th', 18, 800, 600, '2019-09-25', '2019-09-25'),
(141, '5th', 18, 700, 800, '2019-09-25', '2019-09-25'),
(142, '6th', 18, 700, 800, '2019-09-25', '2019-09-25'),
(143, '7th', 18, 700, 800, '2019-09-25', '2019-09-25'),
(144, '8th', 18, 700, 800, '2019-09-25', '2019-09-25');

-- --------------------------------------------------------

--
-- Table structure for table `admin_formfillup_fees_table`
--

CREATE TABLE `admin_formfillup_fees_table` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `main_fee` int(11) NOT NULL,
  `misce_fee` int(11) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_formfillup_fees_table`
--

INSERT INTO `admin_formfillup_fees_table` (`id`, `semester`, `main_fee`, `misce_fee`, `start_date`, `end_date`) VALUES
(1, '1st', 2500, 0, '2019-09-08', '2019-09-10'),
(2, '2nd', 2500, 0, '2019-09-07', '2019-09-27'),
(3, '3rd', 2500, 0, '2019-09-01', '2019-10-01'),
(4, '4th', 2500, 0, '2019-09-09', '2019-09-24'),
(5, '5th', 2500, 0, '2019-09-17', '2019-09-18'),
(6, '6th', 2500, 0, '2019-09-11', '2019-09-16'),
(7, '7th', 2500, 100, '2019-10-15', '2019-11-26'),
(8, '8th', 2500, 500, '2019-09-05', '2020-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `admin_semester_fees_table`
--

CREATE TABLE `admin_semester_fees_table` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `main_fee` int(11) NOT NULL,
  `misce_fee` int(11) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `admin_semester_fees_table`
--

INSERT INTO `admin_semester_fees_table` (`id`, `semester`, `main_fee`, `misce_fee`, `start_date`, `end_date`) VALUES
(1, '1st', 1500, 100, '2019-09-24', '2019-10-05'),
(2, '2nd', 1500, 500, '2019-09-03', '2019-09-07'),
(3, '3rd', 1500, 0, '2019-09-02', '2019-09-01'),
(4, '4th', 1500, 0, '2019-09-24', '2019-09-28'),
(5, '5th', 1200, 0, '2019-09-08', '2019-09-17'),
(6, '6th', 1500, 0, '2019-09-08', '2019-09-25'),
(7, '7th', 1500, 200, '2019-10-29', '2020-11-28'),
(8, '8th', 1500, 0, '2019-09-01', '2020-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `application_form_table`
--

CREATE TABLE `application_form_table` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `feeType` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `student_id` int(11) NOT NULL,
  `department` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application_form_table`
--

INSERT INTO `application_form_table` (`id`, `semester`, `subject`, `feeType`, `reason`, `student_id`, `department`) VALUES
(80, '4th', 'reducing amount and extending time', 'Development fee ', 'i have no money', 1, 'Computer Science & Engineering'),
(81, '5th', 'reducing amount', 'Semester fee ', 'onk taka amr', 6, 'Computer Science & Engineering'),
(82, '5th', 'reducing amount', 'Semester fee ', 'onk taka amr', 6, 'Computer Science & Engineering'),
(83, '6th', 'reducing amount and extending time', 'Form Fill up fee ', ' i have no money right now', 1, 'Computer Science & Engineering'),
(84, '7th', 'reducing amount', 'Development fee ', 'ssasas', 6, 'Computer Science & Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `changed_development_fee`
--

CREATE TABLE `changed_development_fee` (
  `id` int(11) NOT NULL,
  `roll_no` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `changed_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `changed_development_fee`
--

INSERT INTO `changed_development_fee` (`id`, `roll_no`, `semester`, `changed_amount`) VALUES
(5, '16CSE020', '6th', 500),
(9, '16CSE045', '7th', 700),
(10, '16CSE029', '6th', 200),
(11, '16CSE029', '6th', 300),
(12, '16CSE029', '7th', 300),
(13, '16CSE020', '8th', 600),
(14, '16CSE029', '3rd', 444);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `dept_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `dept_name`) VALUES
(1, 'Computer Science & Engineering'),
(2, 'Mathematics'),
(3, 'Physics'),
(4, 'Chemistry'),
(5, 'Geology and Mining'),
(6, 'Statistics'),
(7, 'Soil and Environmental Sciences'),
(8, 'Botany'),
(9, 'Coastal Studies and Disaster Management'),
(10, 'Biochemistry and Biotechnology'),
(11, 'Management Studies'),
(12, 'Accounting and Information Systems'),
(13, 'Marketing'),
(14, 'Finance and Banking'),
(15, 'Economics'),
(16, 'Political Science'),
(17, 'Sociology'),
(18, 'Public Administration'),
(19, 'Bangla'),
(20, 'English'),
(21, 'Philosophy'),
(22, 'Mass Communication & Journalism'),
(23, 'History and Civilization'),
(24, 'Law');

-- --------------------------------------------------------

--
-- Table structure for table `development_fees`
--

CREATE TABLE `development_fees` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `s_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `development_fees`
--

INSERT INTO `development_fees` (`id`, `semester`, `amount`, `s_id`) VALUES
(35, '8th', 500, 1),
(36, '4th', 1000, 6),
(37, '7th', 1200, 6);

-- --------------------------------------------------------

--
-- Table structure for table `formfillup_fees`
--

CREATE TABLE `formfillup_fees` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `s_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formfillup_fees`
--

INSERT INTO `formfillup_fees` (`id`, `semester`, `amount`, `s_id`) VALUES
(12, '7th', 2500, 6);

-- --------------------------------------------------------

--
-- Table structure for table `semester_fees2`
--

CREATE TABLE `semester_fees2` (
  `id` int(11) NOT NULL,
  `semester` varchar(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `s_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester_fees2`
--

INSERT INTO `semester_fees2` (`id`, `semester`, `amount`, `s_id`) VALUES
(22, '7th', 1500, 1),
(23, '7th', 1500, 6);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_Id` int(11) NOT NULL,
  `s_Roll` varchar(200) NOT NULL,
  `s_Reg` varchar(200) NOT NULL,
  `s_Name` varchar(200) NOT NULL,
  `s_Father_name` varchar(200) NOT NULL,
  `s_Mother_name` varchar(200) NOT NULL,
  `s_Email` varchar(200) NOT NULL,
  `s_Phone` varchar(200) NOT NULL,
  `s_Pass` varchar(200) NOT NULL,
  `s_Semester` varchar(200) NOT NULL,
  `s_Department` varchar(200) NOT NULL,
  `s_Faculty` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_Id`, `s_Roll`, `s_Reg`, `s_Name`, `s_Father_name`, `s_Mother_name`, `s_Email`, `s_Phone`, `s_Pass`, `s_Semester`, `s_Department`, `s_Faculty`) VALUES
(1, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Alamgir Chowdhury', 'Nazma Begum', 'jewelcse045@gmail.com', '01930792666', '12345', '7th', 'Computer Science & Engineering', 'Science & Engineering'),
(3, '17CHE023', '110-023-17', 'Saimun Islam', 'Bellal Mia', 'Sultana Begum', 'saimiun@gmail.com', '01307926669', '12345', '5th', 'Chemistry', 'Science & Engineering'),
(6, '16CSE020', '110-020-16', 'Diptonil Singho Dhrubo', 'Dilip kumar Singho', 'Suchitra Singho', 'dhrubo9250@gmail.com', '01982692846', '12345', '6th', 'Computer Science & Engineering', 'Science & Engineering'),
(12, '14Math001', '110-023-17', 's name', 'm name', 'f name', 'fdf@gmail.com', '234324', '4940', '5th', 'Political Science', 'Arts and Humanities'),
(13, '14Math001', '110-023-17', 's name', 'm name', 'f name', 'fdf@gmail.com', '234324', '3015', '5th', 'Political Science', 'Arts and Humanities'),
(15, '16CSE020', '110-045-16', 'stu name', 'fa name', 'mo name', 'dhrubo9250@gmail.com', '01712346378', '8146', '6th', 'Computer Science & Engineering', 'Science & Engineering'),
(21, '13CSE007', '110-007-13', 'Md Mainul Islam Raju', 'Mainul\'s dad name', 'Mainul\'s mom name', 'mainul@gmail.com', '01922623321', '6238', '6th', 'Computer Science & Engineering', 'Science & Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `sub_admin`
--

CREATE TABLE `sub_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `update_development_fee` int(1) NOT NULL,
  `student_information` int(1) NOT NULL,
  `application_letters` int(1) NOT NULL,
  `update_development_fees_table` int(1) NOT NULL,
  `update_semester_fees_table` int(1) NOT NULL,
  `update_formfillup_fees_table` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_admin`
--

INSERT INTO `sub_admin` (`id`, `name`, `password`, `update_development_fee`, `student_information`, `application_letters`, `update_development_fees_table`, `update_semester_fees_table`, `update_formfillup_fees_table`) VALUES
(51, 'jewel', '4981', 1, 1, 1, 1, 1, 1),
(52, 'mazar', '8316', 1, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `super_admin`
--

CREATE TABLE `super_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `super_admin`
--

INSERT INTO `super_admin` (`id`, `name`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_method`
--

CREATE TABLE `transaction_method` (
  `T_id` int(4) NOT NULL,
  `T_method` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_development_fees_table`
--
ALTER TABLE `admin_development_fees_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_development_fees_table_ibfk_1` (`department`);

--
-- Indexes for table `admin_formfillup_fees_table`
--
ALTER TABLE `admin_formfillup_fees_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_semester_fees_table`
--
ALTER TABLE `admin_semester_fees_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_form_table`
--
ALTER TABLE `application_form_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `changed_development_fee`
--
ALTER TABLE `changed_development_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `development_fees`
--
ALTER TABLE `development_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `formfillup_fees`
--
ALTER TABLE `formfillup_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `semester_fees2`
--
ALTER TABLE `semester_fees2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_Id`);

--
-- Indexes for table `sub_admin`
--
ALTER TABLE `sub_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `super_admin`
--
ALTER TABLE `super_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_method`
--
ALTER TABLE `transaction_method`
  ADD PRIMARY KEY (`T_id`,`T_method`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_development_fees_table`
--
ALTER TABLE `admin_development_fees_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `admin_formfillup_fees_table`
--
ALTER TABLE `admin_formfillup_fees_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_semester_fees_table`
--
ALTER TABLE `admin_semester_fees_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `application_form_table`
--
ALTER TABLE `application_form_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `changed_development_fee`
--
ALTER TABLE `changed_development_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `development_fees`
--
ALTER TABLE `development_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `formfillup_fees`
--
ALTER TABLE `formfillup_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `semester_fees2`
--
ALTER TABLE `semester_fees2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `s_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `sub_admin`
--
ALTER TABLE `sub_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `super_admin`
--
ALTER TABLE `super_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaction_method`
--
ALTER TABLE `transaction_method`
  MODIFY `T_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_development_fees_table`
--
ALTER TABLE `admin_development_fees_table`
  ADD CONSTRAINT `admin_development_fees_table_ibfk_1` FOREIGN KEY (`department`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `application_form_table`
--
ALTER TABLE `application_form_table`
  ADD CONSTRAINT `application_form_table_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`s_Id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `development_fees`
--
ALTER TABLE `development_fees`
  ADD CONSTRAINT `development_fees_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `student` (`s_Id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `formfillup_fees`
--
ALTER TABLE `formfillup_fees`
  ADD CONSTRAINT `formfillup_fees_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `student` (`s_Id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `semester_fees2`
--
ALTER TABLE `semester_fees2`
  ADD CONSTRAINT `semester_fees2_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `student` (`s_Id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
