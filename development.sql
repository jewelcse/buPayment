-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2019 at 06:43 PM
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
(1, '1st', 600, 1000, '2019-09-01', '2019-09-02'),
(2, '2nd', 800, 1000, '2019-09-08', '2019-09-23'),
(3, '3rd', 600, 1000, '2019-09-10', '2019-09-10'),
(4, '4th', 600, 1000, '2019-09-10', '2019-09-07'),
(5, '5th', 600, 900, '2019-09-07', '2019-09-20'),
(6, '6th', 600, 1000, '2019-09-01', '2019-09-16'),
(7, '7th', 600, 1200, '2019-09-01', '2019-09-25'),
(8, '8th', 600, 1200, '2019-09-01', '2019-09-24');

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
(7, '7th', 2500, 0, '2019-09-09', '2019-09-10'),
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
(1, '1st', 1500, 100, '2019-09-01', '2019-09-06'),
(2, '2nd', 1500, 0, '2019-09-03', '2019-09-07'),
(3, '3rd', 1500, 0, '2019-09-02', '2019-09-01'),
(4, '4th', 1500, 0, '2019-09-24', '2019-09-28'),
(5, '5th', 1200, 0, '2019-09-08', '2019-09-17'),
(6, '6th', 1500, 0, '2019-09-08', '2019-09-25'),
(7, '7th', 1500, 0, '2019-09-01', '2019-09-08'),
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
(83, '6th', 'reducing amount and extending time', 'Form Fill up fee ', ' i have no money right now', 1, 'Computer Science & Engineering');

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
(12, '16CSE029', '7th', 300);

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
(28, '7th', 1200, 1),
(29, '7th', 1200, 24),
(30, '5th', 900, 1);

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
(8, '1st', 2500, 1),
(9, '4th', 2500, 1);

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
(18, '8th', 1500, 1);

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
(26, '16CSE029', '110-029-16', 'Md. Showkat Imam', 'Fathers name', 'Mothers name', 'Showkat@gmail.com', '019212718212', '4481', '6th', 'Computer Science & Engineering', 'Science & Engineering');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `changed_development_fee`
--
ALTER TABLE `changed_development_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `development_fees`
--
ALTER TABLE `development_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `formfillup_fees`
--
ALTER TABLE `formfillup_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `semester_fees2`
--
ALTER TABLE `semester_fees2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `s_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
