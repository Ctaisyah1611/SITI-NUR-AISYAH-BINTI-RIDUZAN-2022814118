-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2024 at 12:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teacher_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `experience` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `date_of_birth`, `phone_number`, `address`, `email`, `start_date`, `end_date`, `experience`) VALUES
(1, 'SITI NUR AISYAH BINTI RIDZUAN', '2000-06-16', '01456734526', 'NO 12 JALAN 8/2 BANDAR TASIK KESUMA', 'ctaisyah5677@gmail.com', '2019-03-12', '2023-05-31', 4),
(2, 'AMEERA NAFISA BINTI ZARUL ', '1998-02-12', '01853728453', 'NO 2 JALAN SERDANG JAYA SERI KEMBANGAN', 'meeranaz@gmail.com', '2017-09-23', '2022-12-31', 5),
(3, 'FATIMAH BINTI MUHAMMAD', '1988-02-28', '01673829735', 'NO 242 JALAN PANJANG 2/7 BANDAR BARU ', 'faatimah02@gmail.com', '2014-01-02', '2020-11-30', 7),
(4, 'NURAMNI NADHIRAH BINTI MOHD NASIR', '2004-12-11', '0139923066', 'NO,8,TAMAN SERI MENTALOON,05250,ALOR SETAR, KEDAH', 'amninasir@gmail.com.my', '2024-02-14', '2024-02-15', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
