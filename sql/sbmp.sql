-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2023 at 04:58 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sbmp`
--

-- --------------------------------------------------------

--
-- Table structure for table `faculty_feedback`
--

CREATE TABLE `faculty_feedback` (
  `id` int(11) NOT NULL,
  `faculty` text NOT NULL,
  `program` text NOT NULL,
  `course_code` text NOT NULL,
  `sem` text NOT NULL,
  `year` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fb_questions`
--

CREATE TABLE `fb_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `qtype` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fb_questions`
--

INSERT INTO `fb_questions` (`id`, `question`, `qtype`) VALUES
(1, 'Passion & enthusiasm to teach', 'F'),
(2, 'Subject Knowledge', 'F'),
(3, 'Clarity & emphasis on concept', 'F'),
(4, 'Motivating & inspiring the students', 'F'),
(5, 'Creating interest in subjects', 'F'),
(6, 'Quality on illustrative visuals, examples and application', 'F'),
(7, 'Regularity, punctuality and uniform coverage of syllabus', 'F'),
(8, 'Discipline & control over the class', 'F'),
(9, 'Clarity in Board writing and voice clarity', 'F'),
(10, 'Effective utilization of lecture/practical allotted time', 'F'),
(11, 'Promoting student thinking and Inviting students interaction', 'F'),
(12, 'Use of modern teaching aids (internet/ computers/videos/NPTEL Lectures/working models)', 'F'),
(13, 'Availability of teacher to solve academic and non-academic problems', 'F'),
(14, 'Availability of equipments/computers', 'L'),
(15, 'Availability of lab manuals', 'L'),
(16, 'Availability of user manuals', 'L'),
(17, 'Functioning and maintenance of equipments/computers', 'L'),
(18, 'Infrastructure of the Campus (Eg. Building, Classroom, Washrooms, etc.)', 'I'),
(19, 'Career Guidance activities (Eg. MPSC, UPSC, GATE, IES, GRE, Study Abroad, etc.)', 'I'),
(20, 'Placements & Pre Placement Activities (Eg. Mock Interviews, GD, Aptitude test, etc.)', 'I'),
(21, 'Industry institute interaction. (Eg. Providing assistance for Internship, projects, etc.)', 'I'),
(22, 'Sports & Extra -Curricular Activities (Eg. Intra/Inter College events, etc.)', 'I'),
(23, 'Co-Curricular Activities (Eg. Technical events, Guest lecture, seminar, workshop, etc.)', 'I'),
(24, 'Library facilities (Reading room and resources)', 'I'),
(25, 'Exam Cell (Assistance for exam form filling to the Result sheet distribution)', 'I'),
(26, 'Canteen (eg. Hygiene /Quality of Food, Space avaibility, etc.)', 'I'),
(27, 'Self-learning facilities (Eg. Internet, Digital Library, etc.)', 'I'),
(28, 'Safety & Security System.(Eg. Emergency exit, Fire extinguisher', 'I'),
(29, 'Anti Ragging Policy', 'I'),
(30, 'Admin (Student section and Account section)', 'I');

-- --------------------------------------------------------

--
-- Table structure for table `sem_courses`
--

CREATE TABLE `sem_courses` (
  `id` int(11) NOT NULL,
  `sem` text NOT NULL,
  `year` int(4) NOT NULL,
  `course` text NOT NULL,
  `code` text NOT NULL,
  `Faculty` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sem_courses`
--

INSERT INTO `sem_courses` (`id`, `sem`, `year`, `course`, `code`, `Faculty`) VALUES
(1, 'III', 2021, 'Programming in Java', 'PRJ190901', 'Manish Solanki'),
(2, 'III', 2021, 'Data Structure', 'DST198915', 'Swapna Naik'),
(3, 'III', 2021, 'Database Management System', 'DBS198917', 'Pankaj Rathod'),
(4, 'III', 2021, 'Data Communicarion & Networking', 'DCN190902', 'Krishna Bhatt'),
(5, 'III', 2021, 'Computer Graphics', 'CGR198920', 'Radhika Patwardhan'),
(6, 'III', 2021, 'Multimedia & Animation', 'MSA190903', 'Swapna Naik'),
(7, 'III', 2021, 'Open Source Technology', 'OST190904', 'Manish Solanki');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty_feedback`
--
ALTER TABLE `faculty_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fb_questions`
--
ALTER TABLE `fb_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sem_courses`
--
ALTER TABLE `sem_courses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faculty_feedback`
--
ALTER TABLE `faculty_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fb_questions`
--
ALTER TABLE `fb_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sem_courses`
--
ALTER TABLE `sem_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
