-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2021 at 09:45 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moon_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(255) NOT NULL,
  `course_name` tinytext NOT NULL,
  `tutor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `tutor`) VALUES
(1, 'WEB DEVELOPMENT', 'Andrew Bada'),
(2, 'ANDROID PROGRAMMING', 'Grace Ndondu'),
(3, 'MACHINE LEARNING\r\n', 'winfred'),
(4, 'GRAPHICS DESIGN', 'John Kamau'),
(5, 'GAME DEVELOPMENT', 'Grace Musyoka'),
(6, 'NETWORKING', 'Grace Ndondu');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `exam_name` varchar(255) NOT NULL,
  `exam_title` varchar(255) NOT NULL,
  `exam_datetime` datetime NOT NULL,
  `exam_duration` varchar(30) NOT NULL,
  `exam_status` enum('pending','activated','completed','created') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `topic` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `notes` varchar(50) NOT NULL,
  `classroom` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`id`, `course_id`, `topic`, `title`, `description`, `notes`, `classroom`, `url`) VALUES
(12, 3, 'Topic 1', 'Introduction', 'Note: You will need to create a new directory called \"uploads\" in the directory where \"upload.php\" file resides. The uploaded files will be saved there.Note: You will need to create a new directory called \"uploads\" in the directory where \"upload.php\" file', '2021-04-20-11-58-28.flv', '', ''),
(13, 2, 'Topic 1', 'Introduction', 'Note: You will need to create a new directory called \"uploads\" in the directory where \"upload.php\" file resides. The uploaded files will be saved there.Note: You will need to create a new directory called \"uploads\" in the directory where \"upload.php\" file', 'AlgorithmsNotesForProfessionals (1).txt', 'password: 542199', 'https://demo2.bigbluebutton.org/html5client/join?sessionToken=linezcx2krn1u6mt'),
(14, 1, 'Topic 1', 'Introduction', '&nbsp; join class&nbsp; join class&nbsp; join class&nbsp; join class&nbsp; join class&nbsp; join class&nbsp; join class&nbsp; join class&nbsp; join class&nbsp; join class&nbsp; join class&nbsp; join class&nbsp; join class&nbsp; join class&nbsp; join class', 'MySQLNotesForProfessionals.pdf', '', 'https://demo.bigbluebutton.org/gl/gra-tjg-1j4-ztk'),
(15, 3, 'Topic 2', 'news 6', 'Note: You will need to create a new directory called \"uploads\" in the directory where \"upload.php\" file resides. The uploaded files will be saved there.Note: You will need to create a new directory called \"uploads\" in the directory where \"upload.php\" file', 'SRS.pptx', ' password: 632101', 'https://demo.bigbluebutton.org/gl/gra-zph-jb3-wch'),
(16, 2, 'Topic 1', 'news 2', ' lesson.classroom, lesson.url, lesson.classroom, lesson.url, lesson.classroom, lesson.url, lesson.classroom, lesson.url, lesson.classroom, lesson.url, lesson.classroom, lesson.url, lesson.classroom, lesson.url, lesson.classroom, lesson.url, lesson.classro', 'SRS.pptx', ' password: 632101', 'https://demo.bigbluebutton.org/gl/gra-tjg-1j4-ztk'),
(17, 0, 'Topic 2', 'Introduction', ' join class  join class  join class  join class  join class  join class  join class  join class  join class  join class  join class  join class  join class  join class  join class join class  join class  join class  join class  join class  join class  joi', 'AlgorithmsNotesForProfessionals (1) (1).txt', ' password: 632101', 'https://demo.bigbluebutton.org/gl/gra-zph-jb3-wch'),
(18, 0, 'Topic 2', 'Introduction', ' join class  join class  join class  join class  join class  join class  join class  join class  join class  join class  join class  join class  join class  join class  join class join class  join class  join class  join class  join class  join class  joi', 'AlgorithmsNotesForProfessionals (1) (1).txt', ' password: 632101', 'https://demo.bigbluebutton.org/gl/gra-zph-jb3-wch'),
(19, 3, 'Topic 1', 'Introduction', 'Due to increased demand, recordings are temporarily disabled and the maximum duration of a meeting has been reduced to 60 minutes on this server. (k8s)Due to increased demand, recordings are temporarily disabled and the maximum duration of a meeting has b', 'Research Proposal.docx', ' password: 632101', 'https://demo.bigbluebutton.org/gl/gra-zph-jb3-wch'),
(20, 2, 'Topic 4', 'samples', 'https://meet.google.com/rey-uycy-wahhttps://meet.google.com/rey-uycy-wahhttps://meet.google.com/rey-uycy-wahhttps://meet.google.com/rey-uycy-wahhttps://meet.google.com/rey-uycy-wahvv', 'elearning research proposal.docx', ' password: 632101', 'https://demo.bigbluebutton.org/gl/gra-zph-jb3-wch');

-- --------------------------------------------------------

--
-- Table structure for table `my_courses`
--

CREATE TABLE `my_courses` (
  `id` int(11) NOT NULL,
  `course` varchar(30) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `my_courses`
--

INSERT INTO `my_courses` (`id`, `course`, `course_id`, `user_id`) VALUES
(119, 'MACHINE LEARNING\r\n', 3, 10),
(120, 'NETWORKING', 6, 10),
(121, 'ANDROID PROGRAMMING', 2, 10),
(125, 'WEB DEVELOPMENT', 1, 11),
(129, 'WEB DEVELOPMENT', 1, 10),
(131, 'NETWORKING', 6, 10),
(132, 'GAME DEVELOPMENT', 5, 10),
(133, 'GAME DEVELOPMENT', 5, 10),
(134, 'WEB DEVELOPMENT', 1, 12),
(135, 'ANDROID PROGRAMMING', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `message` varchar(300) NOT NULL,
  `posted` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `message`, `posted`, `user_id`) VALUES
(1, 'news 1', 'The meta element represents various kinds of metadata that cannot be expressed using the title, base, link, style, and script elements.The meta element represents various kinds of metadata that cannot be expressed using the title, base, link, style, and script elements.', '2021-05-08 21:08:48', 2),
(2, 'news 2', 'The meta element represents various kinds of metadata that cannot be expressed using the title, base, link, style, and script elements.The meta element represents various kinds of metadata that cannot be expressed using the title, base, link, style, and script elements.The meta element represents va', '2021-05-08 21:08:52', 2),
(3, 'event 3', 'The meta element represents various kinds of metadata that cannot be expressed using the title, base, link, style, and script elements.The meta element represents various kinds of metadata that cannot be expressed using the title, base, link, style, and script elements.', '2021-05-12 17:08:58', 1),
(14, 'graduation party', 'graduation partygraduation partyvvgraduation partygraduation partygraduation partygraduation partygraduation partygraduation partygraduation party', '2021-06-16 08:35:35', 2),
(15, 'assignment', 'messagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessage', '2021-06-18 08:57:52', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users_table`
--

CREATE TABLE `users_table` (
  `id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_staff` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_table`
--

INSERT INTO `users_table` (`id`, `name`, `email`, `password`, `is_staff`) VALUES
(1, 'Grace', 'musyokagrace97@gmail.com', '1234', 1),
(2, 'Bada', 'badakomora06@gmail.com', '1234', 1),
(3, 'ndondu', 'musyokagrace@zetech.ac.ke', '1234', 0),
(10, 'Saudah ', 'andrew@example.com', '1234', 0),
(11, 'sasha', 'sasha@gmail.com', '1234', 0),
(12, 'nick', 'nick@gmail.com', '1234', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_courses`
--
ALTER TABLE `my_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `my_courses`
--
ALTER TABLE `my_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `my_courses`
--
ALTER TABLE `my_courses`
  ADD CONSTRAINT `my_courses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users_table` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
