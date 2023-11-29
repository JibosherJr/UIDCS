-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 28, 2023 at 11:39 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websitelogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `logindetails`
--

DROP TABLE IF EXISTS `logindetails`;
CREATE TABLE IF NOT EXISTS `logindetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `logindetails`
--

INSERT INTO `logindetails` (`id`, `username`, `password`) VALUES
(100, 'jibosherjr', 'password'),
(101, 'login', 'password'),
(102, 'admin', 'admin'),
(103, 'student', 'student'),
(104, 'faculty', 'faculty'),
(105, 'department', 'department');

-- --------------------------------------------------------

--
-- Table structure for table `studentcourses`
--

DROP TABLE IF EXISTS `studentcourses`;
CREATE TABLE IF NOT EXISTS `studentcourses` (
  `courseid` text,
  `coursename` text,
  `coursetime` text,
  `courseday` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `studentcourses`
--

INSERT INTO `studentcourses` (`courseid`, `coursename`, `coursetime`, `courseday`) VALUES
('CS1003', 'Programming and Problem Solving for Engineers', '9:00-11:15', 'Monday'),
('CS1023', 'Data Structures and Algorithms for Engineers', '11:30-12:50', 'Tuesday'),
('CS1073', 'Introduction to Computer Programming I (in Java)', '13:00-15:15', 'Wednesday'),
('CS1083', 'Introduction to Computer Programming II (in Java)', '15:30-16:15', 'Thursday'),
('CS1103', 'Introduction to Databases', '16:30-18:15', 'Friday'),
('CS1203', 'Overview of Computer Science', '14:00-15:30', 'Monday'),
('CS1303', 'Discrete Structures', '10:45-12:00', 'Tuesday'),
('CS2043', 'Introduction to Software Engineering', '13:30-15:00', 'Wednesday'),
('CS2053', 'Introduction to Game Development', '16:45-18:30', 'Thursday'),
('CS2063', 'Introduction to Mobile Application Development', '15:15-16:45', 'Friday'),
('CS2253', 'Machine Level Programming', '9:30-11:00', 'Monday'),
('CS2263', 'Systems Software Development', '14:15-15:45', 'Tuesday'),
('CS2333', 'Computability and Formal Languages', '12:00-13:30', 'Wednesday'),
('CS2383', 'Data Structures and Algorithms', '15:45-17:15', 'Thursday'),
('CS2413', 'Information Security', '11:30-13:00', 'Friday'),
('CS2545', 'Data Science for Big Data Analytics', '10:00-11:30', 'Monday'),
('CS2613', 'Programming Languages Laboratory', '13:15-14:45', 'Tuesday'),
('CS2999', 'Problem Solving for Programmers', '16:00-17:30', 'Wednesday'),
('CS3383', 'Algorithm Design and Analysis', '17:45-19:15', 'Thursday'),
('CS3025', 'Human-Computer Interaction', '14:30-16:00', 'Friday'),
('CS3035', 'Building User Interfaces', '9:00-10:30', 'Monday'),
('CS3103', 'Programming on the Web', '10:45-12:15', 'Tuesday'),
('CS3113', 'Introduction to Numerical Methods', '13:30-15:00', 'Wednesday'),
('CS3383', 'Algorithm Design and Analysis', '15:15-16:45', 'Thursday'),
('CS3413', 'Operating Systems I', '17:00-18:30', 'Friday'),
('CS3543', 'Database Systems and Administration', '9:30-11:00', 'Monday'),
('CS3703', 'Multimedia Design', '11:15-12:45', 'Tuesday'),
('CS3853', 'Computer Architecture and Organization', '13:45-15:15', 'Wednesday'),
('CS3873', 'Net-centric Computing', '15:30-17:00', 'Thursday'),
('CS3997', 'Professional Practice', '17:15-18:45', 'Friday'),
('CS4015', 'Software Architecture and Design Patterns ', '14:00-15:30', 'Monday'),
('CS4065', 'Interactive Human-Centered Systems', '10:45-12:15', 'Tuesday'),
('CS4355', 'Cryptanalysis and Database Security', '12:30-14:00', 'Wednesday'),
('CS4405', 'Operating Systems II', '14:45-16:15', 'Thursday'),
('CS4411', 'Fundamentals of Information Assurance', '16:30-18:00', 'Friday'),
('CS4413', 'Foundations of Privacy', '9:00-10:30', 'Monday'),
('CS4415', 'Network Security', '10:45-12:15', 'Tuesday'),
('CS4417', 'Software Security', '13:30-15:00', 'Wednesday'),
('CS4419', 'Digital Forensics', '15:15-16:45', 'Thursday'),
('CS4495', 'Cybersecurity Capstone Project', '17:00-18:30', 'Friday'),
('CS4545', 'Big Data Systems', '9:30-11:00', 'Monday'),
('CS4613', 'Programming Language Interpretation', '11:15-12:45', 'Tuesday'),
('CS4725', 'Introduction to Artificial Intelligence', '13:45-15:15', 'Wednesday'),
('CS4735', 'Computer Graphics', '15:30-17:00', 'Thursday'),
('CS4745', 'Introduction to Parallel Processing', '17:15-18:45', 'Friday'),
('CS4765', 'Natural Language Processing', '14:00-15:30', 'Monday'),
('CS4805', 'Embedded Systems', '10:45-12:15', 'Tuesday'),
('CS4865', 'Principles of Data Communications and Networks Modeling', '12:30-14:00', 'Wednesday'),
('CS4905', 'Introduction to Compiler Construction', '14:45-16:15', 'Thursday'),
('CS4935', 'Advanced Algorithmic Techniques', '16:30-18:00', 'Friday'),
('CS4983', 'Senior Technical Report', '9:00-10:30', 'Monday'),
('CS4995', 'Topics in Computing', '10:45-12:15', 'Tuesday'),
('CS4997', 'Honours Thesis', '13:30-15:00', 'Wednesday'),
('CS4998', 'Open Source Project', '15:15-16:45', 'Thursday'),
('CS4999', 'Directed Studies in Computer Science', '17:00-18:30', 'Friday');

-- --------------------------------------------------------

--
-- Table structure for table `studentschedule`
--

DROP TABLE IF EXISTS `studentschedule`;
CREATE TABLE IF NOT EXISTS `studentschedule` (
  `courseid` text NOT NULL,
  `coursename` text NOT NULL,
  `coursetime` text NOT NULL,
  `courseday` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `studentschedule`
--

INSERT INTO `studentschedule` (`courseid`, `coursename`, `coursetime`, `courseday`) VALUES
('CS4419', 'Digital Forensics', '5:15-16:45', 'Thursday'),
('CS4355', 'Cryptanalysis and Database Security', '12:30-14:00', 'Wednesday'),
('CS4015', 'Software Architecture and Design Patterns', '14:00-15:30', 'Monday'),
('CS3103', 'Programming on the Web', '10:45-12:15', 'Tuesday'),
('CS3025', 'Human-Computer Interaction', '14:30-16:00', 'Friday');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
