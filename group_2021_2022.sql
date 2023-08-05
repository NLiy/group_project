-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2022 at 10:55 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group_2021/2022`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `asset_id` int(11) NOT NULL,
  `asset_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`asset_id`, `asset_name`) VALUES
(1, 'Laptop'),
(2, 'Ipad'),
(3, 'AR Glasses');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_code` varchar(7) NOT NULL,
  `course_name` varchar(100) DEFAULT NULL,
  `course_hour` int(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_code`, `course_name`, `course_hour`) VALUES
('code1', 'Cooking', 6),
('code2', 'Course A', 3),
('code3', 'Course B', 3),
('code4', 'Course C', 4),
('code5', 'Course D', 3),
('code6', 'Course E', 2),
('code7', 'Course F', 4);

-- --------------------------------------------------------

--
-- Table structure for table `course_reg`
--

CREATE TABLE `course_reg` (
  `course_code_reg` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_reg`
--

INSERT INTO `course_reg` (`course_code_reg`) VALUES
('code1'),
('code2'),
('code3'),
('code4'),
('code5'),
('code6');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `form_id` int(11) NOT NULL,
  `student_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneNo` varchar(50) NOT NULL,
  `booking_dateStart` varchar(100) NOT NULL,
  `bookingdateEnd` varchar(100) NOT NULL,
  `booking_time` varchar(50) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`form_id`, `student_name`, `email`, `phoneNo`, `booking_dateStart`, `bookingdateEnd`, `booking_time`, `asset_id`, `student_id`, `status`) VALUES
(1, 'Somerled Peti', 'Somerled@gmail.com', '0136589213', '2008-11-11', '2008-11-15', '08:00 - 10:00', 1, '20110266', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `lecId` varchar(50) NOT NULL,
  `lecName` varchar(50) NOT NULL,
  `lecTel` varchar(30) NOT NULL,
  `lecEmail` varchar(100) NOT NULL,
  `lecPost` varchar(50) NOT NULL,
  `lecEdu` varchar(100) NOT NULL,
  `lecArea` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`lecId`, `lecName`, `lecTel`, `lecEmail`, `lecPost`, `lecEdu`, `lecArea`) VALUES
('1', 'Imran Ilenia', '32', 'Imran@ums.com', 'Head of Department', 'PhD', 'User Interface Design');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id_student` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `alamat` varchar(120) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `no_student` varchar(50) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id_student`, `nama`, `username`, `alamat`, `gender`, `no_telepon`, `no_student`, `password`) VALUES
(1, 'Jamie Ryan', 'jamie', '921 Lorong 10A1 Batu Kawa Heights', 'Male', '0198849587', 'BI20160348', '81dc9bdb52d04dc20036dbd8313ed055'),
(4, 'Ryan', 'ryan', '173 Taman Desa Moyang Malihah 93250 Kuching Sarawak.', 'Male', '0168095800', 'BI20160333', '81dc9bdb52d04dc20036dbd8313ed055'),
(5, 'Mister Hello', 'henyo@gmail.com', 'Hello Island', 'Male', '0165097412', 'BI20110266', 'f30aa7a662c728b7407c54ae6bfd27d1');

-- --------------------------------------------------------

--
-- Table structure for table `student_course`
--

CREATE TABLE `student_course` (
  `id_course` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `course_name` varchar(80) NOT NULL,
  `credit_hour` varchar(50) NOT NULL,
  `course_day` varchar(50) NOT NULL,
  `course_time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_course`
--

INSERT INTO `student_course` (`id_course`, `id_student`, `course_name`, `credit_hour`, `course_day`, `course_time`) VALUES
(1, 1, 'Korean', '2 hours', 'Monday', '2PM - 4PM');

-- --------------------------------------------------------

--
-- Table structure for table `student_eva`
--

CREATE TABLE `student_eva` (
  `student_eva_id` int(11) NOT NULL,
  `student_id` varchar(80) NOT NULL,
  `student_name` varchar(80) NOT NULL,
  `sem_session` varchar(80) NOT NULL,
  `course_code` varchar(80) NOT NULL,
  `section_no` int(11) NOT NULL,
  `rating` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_eva`
--

INSERT INTO `student_eva` (`student_eva_id`, `student_id`, `student_name`, `sem_session`, `course_code`, `section_no`, `rating`) VALUES
(2, '', '', '', '', 0, 0),
(3, '', '', '', '', 0, 0),
(4, '', '', '', '', 0, 0),
(5, '', '', '', '', 0, 0),
(6, 'e2', '231', '1', 'e2', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbladdnews`
--

CREATE TABLE `tbladdnews` (
  `id` int(11) NOT NULL,
  `newtitle` varchar(200) DEFAULT NULL,
  `Category` varchar(200) DEFAULT NULL,
  `Sub_category` varchar(200) DEFAULT NULL,
  `Upload_Image` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladdnews`
--

INSERT INTO `tbladdnews` (`id`, `newtitle`, `Category`, `Sub_category`, `Upload_Image`, `Description`, `create_date`) VALUES
(1, 'Our astrophysicist named among nation’s leaders in her field', '12', '21', '20220624200628-22216.jpg', 'A passionate advocate for science, outreach, sustainability and gender equity, Dr Hurley-Walker’s work in astronomy is a significant contribution to the nation’s research in the field and is helping to inspire the next generation to consider the exciting possibilities of a career in science.\r\nDr Hurley-Walker said she was delighted to be acknowledged by the Astronomical Society of Australia with an award named in Professor Green’s honour.\r\nProfessor Green is a true trailblazer in our field; she was the first female physics PhD student, and later the first female Head of the School of Physics at the University of Sydney, with a prolific career focused on the ecology and structure of the Milky Way Galaxy,” Dr Hurley-Walker said.\r\nIt’s an absolute honour to be acknowledged with an award named in her honour and to be recognised among some of Australia’s brightest minds in the field of astronomy research.\r\nDr Adelle Goodwin, who now works at the Curtin Institute of Radio Astronomy, was named the winner of the Astronomical Society of Australia’s Charlene Heisler Prize for the most outstanding PhD thesis, which was completed at Monash University\r\n', '2022-06-21 17:16:41'),
(2, 'Our faculty graduate creates award to support women in business', '12', '22', '20220624200617-708656.jpg', '“While the representation and recognition of women in the business community is growing, significant under-representation, particularly in leadership positions, endures,” Forrest says.\r\n\r\nThese systemic issues have led Forrest to launch an award to support women studying a Master of Business Administration and associated feed-in courses at this university.\r\n\r\n“I established the Kathryn Forrest Women in Business Administration Award to help women achieve their full potential in business,” she says.\r\n“At the time I was studying my MBA, there weren’t any awards I was eligible for. I didn’t want that to be the case for other women in a similar position.”\r\n\r\nForrest says she hopes the award creates greater awareness of the need and opportunity to create more merit-based opportunities for women in the MBA program.\r\n', '2022-06-21 17:25:27'),
(3, 'How online study became the new norm', '12', '26', '20220624200604-802244.jpg', 'Remote learning has a long and rich history. As early as the 19th century, US educational institutions offered print-based correspondence courses over mail if students were unable to attend classes in person. Then, in 1981, the now-defunct Western Behavioural Sciences Institute in California offered the world’s first online higher education courses, communicating to their students using an antiquated precursor to e-mail on a series of Apple IIEs with 48K of RAM.\r\n\r\nOf course, today’s universities continue this legacy through more powerful innovations. Lectures are streamed online, students can join classrooms through video chat and many education providers deliver free online courses. Yet, some universities have been reluctant to embrace online study, because it lacks face-to-face engagement.', '2022-06-22 17:39:58'),
(4, 'Scholarships provide healing hands', '13', '23', '20220624200650-357537.jpg', 'Harris spent his childhood in the mining town of Collie in rural WA, in a community that didn’t know how accessible a university education could be.\r\n\r\n“I thought university was only for girls and white people,” he laughs.\r\n\r\nLater, as a young adult, he soul-searched those assumptions and set out to give higher education a chance. Although he’d left high school without an ATAR, Harris was eligible for a pathway into Curtin to study the one-year Indigenous Pre-medicine and Health enabling course.\r\n\r\n', '2022-06-24 17:44:16'),
(5, 'From competitive athlete to award-winning research presenter', '14', '24', '20220624200629-614477.jpg', 'As a lifelong athlete Ganci was naturally drawn to a program that focused on the human body and how it works. But after trying to juggle both competitive skating and university for two years, Ganci knew she had to make a choice.\r\n\r\n“I didn’t want to keep sacrificing school for skating, so I just made the transition. But a lot of what I learned in skating has transferred over into my academic and professional life. I now coach skating as my job and I hope to learn even more from the skating world, just from a different perspective.”\r\n\r\nCOVID-19 came along halfway through Ganci’s undergraduate degree. When classes switched to fully online, she missed the interactive aspect, but was able to adapt. What she found challenging was the inconsistency of the hybrid model, when some classes were in person and others were online. “Luckily my practicum semester was all on campus.”', '2022-06-24 17:47:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `name`, `email`, `password`, `create_date`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin1234', '2022-06-15 03:58:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `name`) VALUES
(12, 'Education'),
(13, 'Health'),
(14, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomment`
--

CREATE TABLE `tblcomment` (
  `id` int(11) NOT NULL,
  `postid` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `emailid` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcomment`
--

INSERT INTO `tblcomment` (`id`, `postid`, `name`, `emailid`, `comment`, `status`, `create_date`) VALUES
(6, '5', 'Emily Yin', 'Emily33@gmail.com', 'Such an inspiration to every student', '1', '2022-06-24 18:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblsub_category`
--

CREATE TABLE `tblsub_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(45) DEFAULT NULL,
  `subcategory_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsub_category`
--

INSERT INTO `tblsub_category` (`id`, `category_name`, `subcategory_name`) VALUES
(21, '12', 'Outer Space'),
(22, '12', 'Business'),
(23, '13', 'Scholarships'),
(24, '14', 'Athlete'),
(25, '12', 'Awards'),
(26, '12', 'Online Learning');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine`
--

CREATE TABLE `vaccine` (
  `id_vaccine` int(11) NOT NULL,
  `sejahtera` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `vaccineName` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `batch` varchar(50) NOT NULL,
  `id_student` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vaccine`
--

INSERT INTO `vaccine` (`id_vaccine`, `sejahtera`, `status`, `date`, `vaccineName`, `place`, `batch`, `id_student`) VALUES
(6, '60198849587', 'Yes', '30 August 2022', 'Astra', 'BCCK KUCHING ', 'C202105111', 1),
(7, '60198849587', 'Yes', '1 July 2022', 'Astra', 'BCCK KUCHING ', 'C202105076', 1),
(8, '010232', 'Yes', '13/12/2021', 'Booster', 'UMS', 'UM-321', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`asset_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`lecId`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id_student`);

--
-- Indexes for table `student_course`
--
ALTER TABLE `student_course`
  ADD PRIMARY KEY (`id_course`),
  ADD KEY `id_student` (`id_student`);

--
-- Indexes for table `student_eva`
--
ALTER TABLE `student_eva`
  ADD PRIMARY KEY (`student_eva_id`);

--
-- Indexes for table `tbladdnews`
--
ALTER TABLE `tbladdnews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomment`
--
ALTER TABLE `tblcomment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsub_category`
--
ALTER TABLE `tblsub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vaccine`
--
ALTER TABLE `vaccine`
  ADD PRIMARY KEY (`id_vaccine`),
  ADD KEY `id_student` (`id_student`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `asset_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id_student` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_course`
--
ALTER TABLE `student_course`
  MODIFY `id_course` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_eva`
--
ALTER TABLE `student_eva`
  MODIFY `student_eva_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbladdnews`
--
ALTER TABLE `tbladdnews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `tblcomment`
--
ALTER TABLE `tblcomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblsub_category`
--
ALTER TABLE `tblsub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `vaccine`
--
ALTER TABLE `vaccine`
  MODIFY `id_vaccine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_course`
--
ALTER TABLE `student_course`
  ADD CONSTRAINT `student_course_ibfk_1` FOREIGN KEY (`id_student`) REFERENCES `student` (`id_student`);

--
-- Constraints for table `vaccine`
--
ALTER TABLE `vaccine`
  ADD CONSTRAINT `vaccine_ibfk_1` FOREIGN KEY (`id_student`) REFERENCES `student` (`id_student`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
