-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2019 at 05:34 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `development`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `development_fees`
--

CREATE TABLE `development_fees` (
  `id` int(11) NOT NULL,
  `s_roll` varchar(255) NOT NULL,
  `s_reg` varchar(255) NOT NULL,
  `s_name` text NOT NULL,
  `s_department` varchar(255) NOT NULL,
  `s_semester` varchar(255) NOT NULL,
  `s_development_fee` int(11) NOT NULL,
  `s_phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `development_fees`
--

INSERT INTO `development_fees` (`id`, `s_roll`, `s_reg`, `s_name`, `s_department`, `s_semester`, `s_development_fee`, `s_phone`) VALUES
(1, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '7th', 1600, 1930792666),
(2, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', 'Semester', 1600, 1930792666),
(3, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '2nd', 1600, 1930792666),
(4, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '7th', 1600, 1930792666),
(5, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '5th', 1600, 120182981),
(6, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '7th', 1600, 1930792666),
(7, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '8th', 1600, 1930792677),
(8, '16CSE019', '110-019-16', 'Balam', 'Botany', '6th', 1600, 193828211),
(9, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '5th', 1600, 1930792666),
(10, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '7th', 1600, 193038932),
(11, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '7th', 1600, 1930792662),
(12, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '7th', 1600, 9),
(13, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '7th', 1600, 1930793232),
(14, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '7th', 1600, 80878787),
(15, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '7th', 1600, 323232323),
(16, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '5th', 1600, 547),
(17, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '8th', 1600, 445322323),
(18, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '5th', 1600, 5644664),
(19, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '7th', 1600, 565656566),
(20, '17CHE023', '110-023-17', 'Saimun Islam', 'Chemistry', '7th', 1600, 212321212),
(21, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '7th', 1600, 9932244),
(22, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '8th', 1600, 193908766);

-- --------------------------------------------------------

--
-- Table structure for table `formfillup_fees`
--

CREATE TABLE `formfillup_fees` (
  `id` int(11) NOT NULL,
  `s_roll` varchar(255) NOT NULL,
  `s_reg` varchar(255) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `s_department` varchar(255) NOT NULL,
  `s_semester` varchar(255) NOT NULL,
  `s_formfillup_fee` int(11) NOT NULL,
  `s_phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formfillup_fees`
--

INSERT INTO `formfillup_fees` (`id`, `s_roll`, `s_reg`, `s_name`, `s_department`, `s_semester`, `s_formfillup_fee`, `s_phone`) VALUES
(1, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '7th', 2500, 19737232),
(2, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '4th', 2500, 9767676),
(3, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '4th', 2500, 9767676),
(4, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '6th', 2500, 12121208);

-- --------------------------------------------------------

--
-- Table structure for table `semester_fees`
--

CREATE TABLE `semester_fees` (
  `id` int(11) NOT NULL,
  `s_roll` varchar(255) NOT NULL,
  `s_reg` varchar(255) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `s_department` varchar(255) NOT NULL,
  `s_semester` varchar(255) NOT NULL,
  `s_semester_fee` int(11) NOT NULL,
  `s_phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester_fees`
--

INSERT INTO `semester_fees` (`id`, `s_roll`, `s_reg`, `s_name`, `s_department`, `s_semester`, `s_semester_fee`, `s_phone`) VALUES
(1, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '7th', 1500, 1930792666),
(2, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '7th', 1500, 19232317),
(3, '16CSE045', '110-045-16', 'Jewel Chowdhury', 'Computer Science & Engineering', '7th', 1500, 1992323232);

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
(14, '', '110-045-16', 'ami', 'f name', 'm name', 'dhrubo9250@gmail.com', '232332333', '1701', '7th', 'Computer Science & Engineering', 'Science & Engineering'),
(15, '16CSE020', '110-045-16', 'stu name', 'fa name', 'mo name', 'dhrubo9250@gmail.com', '01712346378', '8146', '6th', 'Computer Science & Engineering', 'Science & Engineering'),
(21, '13CSE007', '110-007-13', 'Md Mainul Islam Raju', 'Mainul\'s dad name', 'Mainul\'s mom name', 'mainul@gmail.com', '01922623321', '6238', '6th', 'Computer Science & Engineering', 'Science & Engineering'),
(22, '11', '11', '11', '11', '11', '11', '11111', '1207', '1st', 'Computer Science & Engineering', 'Science & Engineering'),
(25, '15cse34', '121223', 'sasasdasa', 'adssdsdsd', 'fgfgfgfg', 'jewelcse045@gmail.com', '12232323', '2223', '3th', 'Computer Science & Engineering', 'Science & Engineering');

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
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `development_fees`
--
ALTER TABLE `development_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `formfillup_fees`
--
ALTER TABLE `formfillup_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester_fees`
--
ALTER TABLE `semester_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_Id`);

--
-- Indexes for table `transaction_method`
--
ALTER TABLE `transaction_method`
  ADD PRIMARY KEY (`T_id`,`T_method`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `development_fees`
--
ALTER TABLE `development_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `formfillup_fees`
--
ALTER TABLE `formfillup_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `semester_fees`
--
ALTER TABLE `semester_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `s_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `transaction_method`
--
ALTER TABLE `transaction_method`
  MODIFY `T_id` int(4) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
