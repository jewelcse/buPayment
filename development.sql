-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2019 at 02:35 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

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
  `main_fee` int(11) NOT NULL,
  `misce_fee` int(11) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_development_fees_table`
--

INSERT INTO `admin_development_fees_table` (`id`, `semester`, `main_fee`, `misce_fee`, `start_date`, `end_date`) VALUES
(1, '1st', 600, 1000, '2019-09-25', '2019-10-05'),
(2, '2nd', 800, 1000, '2019-09-08', '2019-09-23'),
(3, '3rd', 600, 1000, '2019-09-10', '2019-12-31'),
(4, '4th', 600, 1000, '2019-09-10', '2019-12-20'),
(5, '5th', 600, 900, '2019-09-07', '2019-09-20'),
(6, '6th', 600, 1000, '2019-09-01', '2019-10-26'),
(7, '7th', 600, 1200, '2019-09-01', '2019-12-27'),
(8, '8th', 600, 1000, '2019-09-01', '2019-10-24');

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
(7, '7th', 2500, 0, '2019-10-15', '2019-11-26'),
(8, '8th', 2500, 500, '2019-09-05', '2019-09-24');

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
(2, '2nd', 1500, 0, '2019-09-03', '2019-09-07'),
(3, '3rd', 1500, 0, '2019-09-02', '2019-09-01'),
(4, '4th', 1500, 0, '2019-09-24', '2019-09-28'),
(5, '5th', 1200, 0, '2019-09-08', '2019-09-17'),
(6, '6th', 1500, 0, '2019-09-08', '2019-09-25'),
(7, '7th', 1500, 0, '2019-10-29', '2019-11-28'),
(8, '8th', 1500, 0, '2019-09-01', '2019-09-23');

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
(84, '7th', 'reducing amount', 'Development fee ', 'ssasas', 6, 'Computer Science & Engineering'),
(85, '6TH', 'reducing amount', 'Semester fee ', 'rerererererer', 6, 'Computer Science & Engineering'),
(87, '6th', 'reducing amount', 'Semester fee ', 'I have no money right now.', 6, 'Computer Science & Engineering'),
(88, '7th', 'reducing amount', 'Semester fee ', 'no problem', 6, 'Computer Science & Engineering'),
(89, '4th', 'reducing amount', 'Development fee ', 'erwerwerw', 1, 'Computer Science & Engineering');

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
(8, '16CSE045', '6th', 200),
(9, '16CSE045', '8th', 500),
(10, '16CSE029', '6th', 200),
(11, '16CSE029', '6th', 300),
(12, '16CSE029', '7th', 300),
(13, '16CSE020', '8th', 600),
(14, '16CSE029', '3rd', 444);

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
(4, '14Math001', '110-001-14', 'Md Islam', 'Md Rahim', 'Sayerra Begum', 'islam@gmail.com', '01727826112', '12345', '8th', 'Mathematics', 'Science & Engineering'),
(6, '16CSE020', '110-020-16', 'Diptonil Singho Dhrubo', 'Dilip kumar Singho', 'Suchitra Singho', 'dhrubo9250@gmail.com', '01982692846', '12345', '6th', 'Computer Science & Engineering', 'Science & Engineering'),
(12, '14Math001', '110-023-17', 's name', 'm name', 'f name', 'fdf@gmail.com', '234324', '4940', '5th', 'Political Science', 'Arts and Humanities'),
(13, '14Math001', '110-023-17', 's name', 'm name', 'f name', 'fdf@gmail.com', '234324', '3015', '5th', 'Political Science', 'Arts and Humanities'),
(15, '16CSE020', '110-045-16', 'stu name', 'fa name', 'mo name', 'dhrubo9250@gmail.com', '01712346378', '8146', '6th', 'Computer Science & Engineering', 'Science & Engineering'),
(21, '13CSE007', '110-007-13', 'Md Mainul Islam Raju', 'Mainul\'s dad name', 'Mainul\'s mom name', 'mainul@gmail.com', '01922623321', '6238', '6th', 'Computer Science & Engineering', 'Science & Engineering'),
(23, '17CSE014', '110-014-17', 'Md Islam', 'Father\'s name', 'Mother\'s name', 'islam@gmail.com', '2222222', '12345', '4th', 'Computer Science & Engineering', 'Science & Engineering'),
(24, '16CSE041', '110-041-16', 'Bipul Mondal', 'Fathers name', 'Mothers name', 'bipul@gmail.com', '01927382323', '2305', '7th', 'Computer Science & Engineering', 'Science & Engineering'),
(25, '16CSE030', '110-030-16', 'Md. Imam Hossain', 'Fathers name', 'Mothers Name', 'imam@gmail.com', '01792712112', '5052', '7th', 'Computer Science & Engineering', 'Science & Engineering'),
(26, '16CSE029', '110-029-16', 'Md. Showkat Imam', 'Fathers name', 'Mothers name', 'Showkat@gmail.com', '019212718212', '4481', '6th', 'Computer Science & Engineering', 'Science & Engineering'),
(44, '16CSE001', '110-045-16', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '1382', '7th', 'CSE', 'Science and engineering'),
(45, '16CSE002', '110-045-17', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '1913', '8th', 'CSE', 'Science and engineering'),
(46, '16CSE003', '110-045-18', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '5364', '9th', 'CSE', 'Science and engineering'),
(47, '16CSE004', '110-045-19', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '1973', '10th', 'CSE', 'Science and engineering'),
(48, '16CSE005', '110-045-20', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '9604', '11th', 'CSE', 'Science and engineering'),
(49, '16CSE006', '110-045-21', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '6516', '12th', 'CSE', 'Science and engineering'),
(50, '16CSE007', '110-045-22', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '5807', '13th', 'CSE', 'Science and engineering'),
(51, '16CSE008', '110-045-23', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '1611', '14th', 'CSE', 'Science and engineering'),
(52, '16CSE009', '110-045-24', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '1258', '15th', 'CSE', 'Science and engineering'),
(53, '16CSE010', '110-045-25', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '7423', '16th', 'CSE', 'Science and engineering'),
(54, '16CSE011', '110-045-26', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '4023', '17th', 'CSE', 'Science and engineering'),
(55, '16CSE012', '110-045-27', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '3759', '18th', 'CSE', 'Science and engineering'),
(56, '16CSE013', '110-045-28', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '9808', '19th', 'CSE', 'Science and engineering'),
(57, '16CSE014', '110-045-29', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '8190', '20th', 'CSE', 'Science and engineering'),
(58, '16CSE015', '110-045-30', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '2518', '21st', 'CSE', 'Science and engineering'),
(59, '16CSE016', '110-045-31', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '5172', '22nd', 'CSE', 'Science and engineering'),
(60, '16CSE017', '110-045-32', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '1765', '23rd', 'CSE', 'Science and engineering'),
(61, '16CSE001', '110-045-16', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '8449', '7th', 'CSE', 'Science and engineering'),
(62, '16CSE002', '110-045-17', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '6037', '8th', 'CSE', 'Science and engineering'),
(63, '16CSE001', '110-045-16', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '3526', '7th', 'CSE', 'Science and engineering'),
(64, '16CSE002', '110-045-17', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '4288', '8th', 'CSE', 'Science and engineering'),
(65, '16CSE003', '110-045-18', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '4584', '9th', 'CSE', 'Science and engineering'),
(66, '16CSE004', '110-045-19', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '8607', '10th', 'CSE', 'Science and engineering'),
(67, '16CSE005', '110-045-20', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '3259', '11th', 'CSE', 'Science and engineering'),
(68, '16CSE006', '110-045-21', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '5892', '12th', 'CSE', 'Science and engineering'),
(69, '16CSE007', '110-045-22', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '4584', '13th', 'CSE', 'Science and engineering'),
(70, '16CSE008', '110-045-23', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '6925', '14th', 'CSE', 'Science and engineering'),
(71, '16CSE009', '110-045-24', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '3118', '15th', 'CSE', 'Science and engineering'),
(72, '16CSE010', '110-045-25', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '4261', '16th', 'CSE', 'Science and engineering'),
(73, '16CSE011', '110-045-26', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '2104', '17th', 'CSE', 'Science and engineering'),
(74, '16CSE012', '110-045-27', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '6775', '18th', 'CSE', 'Science and engineering'),
(75, '16CSE013', '110-045-28', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '7490', '19th', 'CSE', 'Science and engineering'),
(76, '16CSE014', '110-045-29', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '6949', '20th', 'CSE', 'Science and engineering'),
(77, '16CSE015', '110-045-30', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '6569', '21st', 'CSE', 'Science and engineering'),
(78, '16CSE016', '110-045-31', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '2992', '22nd', 'CSE', 'Science and engineering'),
(79, '16CSE017', '110-045-32', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '6681', '23rd', 'CSE', 'Science and engineering'),
(80, '16CSE001', '110-045-16', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '5256', '7th', 'CSE', 'Science and engineering'),
(81, '16CSE002', '110-045-17', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '2806', '8th', 'CSE', 'Science and engineering'),
(82, '16CSE001', '110-045-16', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '6300', '7th', 'CSE', 'Science and engineering'),
(83, '16CSE002', '110-045-17', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '2438', '8th', 'CSE', 'Science and engineering'),
(84, '16CSE001', '110-045-16', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '2797', '7th', 'CSE', 'Science and engineering'),
(85, '16CSE002', '110-045-17', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '9802', '8th', 'CSE', 'Science and engineering'),
(86, '16CSE001', '110-045-16', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '5854', '7th', 'CSE', 'Science and engineering'),
(87, '16CSE002', '110-045-17', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '9007', '8th', 'CSE', 'Science and engineering'),
(88, '16CSE003', '110-045-18', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '6383', '9th', 'CSE', 'Science and engineering'),
(89, '16CSE004', '110-045-19', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '1038', '10th', 'CSE', 'Science and engineering'),
(90, '16CSE005', '110-045-20', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '4590', '11th', 'CSE', 'Science and engineering'),
(91, '16CSE006', '110-045-21', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '7154', '12th', 'CSE', 'Science and engineering'),
(92, '16CSE007', '110-045-22', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '4626', '13th', 'CSE', 'Science and engineering'),
(93, '16CSE008', '110-045-23', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '7225', '14th', 'CSE', 'Science and engineering'),
(94, '16CSE009', '110-045-24', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '1410', '15th', 'CSE', 'Science and engineering'),
(95, '16CSE010', '110-045-25', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '2385', '16th', 'CSE', 'Science and engineering'),
(96, '16CSE011', '110-045-26', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '7286', '17th', 'CSE', 'Science and engineering'),
(97, '16CSE012', '110-045-27', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '1741', '18th', 'CSE', 'Science and engineering'),
(98, '16CSE013', '110-045-28', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '9696', '19th', 'CSE', 'Science and engineering'),
(99, '16CSE014', '110-045-29', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '7226', '20th', 'CSE', 'Science and engineering'),
(100, '16CSE015', '110-045-30', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '3455', '21st', 'CSE', 'Science and engineering'),
(101, '16CSE016', '110-045-31', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '7659', '22nd', 'CSE', 'Science and engineering'),
(102, '16CSE017', '110-045-32', 'Hafsa', 'Fathersname', 'Mothersname', 'hafsa@gmail.com', '1927372234', '8156', '23rd', 'CSE', 'Science and engineering');

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
(40, 'sohan', '3022', 1, 0, 1, 0, 0, 1),
(47, 'jewel', '8539', 0, 1, 1, 1, 1, 1);

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
-- Table structure for table `testcsv`
--

CREATE TABLE `testcsv` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testcsv`
--

INSERT INTO `testcsv` (`id`, `name`, `price`, `description`) VALUES
(1, 'Jewel', '100', 'this is description'),
(2, 'Imam', '200', 'this is description');

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
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `testcsv`
--
ALTER TABLE `testcsv`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `changed_development_fee`
--
ALTER TABLE `changed_development_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `s_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `sub_admin`
--
ALTER TABLE `sub_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `super_admin`
--
ALTER TABLE `super_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testcsv`
--
ALTER TABLE `testcsv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction_method`
--
ALTER TABLE `transaction_method`
  MODIFY `T_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application_form_table`
--
ALTER TABLE `application_form_table`
  ADD CONSTRAINT `application_form_table_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`s_Id`);

--
-- Constraints for table `development_fees`
--
ALTER TABLE `development_fees`
  ADD CONSTRAINT `development_fees_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `student` (`s_Id`);

--
-- Constraints for table `formfillup_fees`
--
ALTER TABLE `formfillup_fees`
  ADD CONSTRAINT `formfillup_fees_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `student` (`s_Id`);

--
-- Constraints for table `semester_fees2`
--
ALTER TABLE `semester_fees2`
  ADD CONSTRAINT `semester_fees2_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `student` (`s_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
