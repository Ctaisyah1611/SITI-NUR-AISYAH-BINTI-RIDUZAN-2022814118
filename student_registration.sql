-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2024 at 01:05 PM
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
-- Database: `kindergarten_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Stu_Id` int(7) NOT NULL,
  `Stu_Name` varchar(30) NOT NULL,
  `Birth_Year` int(4) NOT NULL,
  `Stu_Gender` varchar(6) NOT NULL,
  `Current_Year` int(4) NOT NULL,
  `Stu_Age` int(3) NOT NULL,
  `Stu_Class` varchar(30) NOT NULL,
  `Parent_Name` varchar(30) NOT NULL,
  `Contact_Num` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Stu_Id`, `Stu_Name`, `Birth_Year`, `Stu_Gender`, `Current_Year`, `Stu_Age`, `Stu_Class`, `Parent_Name`, `Contact_Num`) VALUES
(20232810, 'QISTINA RAISYA AKMAL ', 2018, 'Female', 2024, 6, 'Class Alpha', 'AKMAL BIN JAMAL', '0146075536'),
(20237432, 'NUR MELISSA BINTI ZIZAN', 2018, 'Female', 2024, 6, 'Class Beta', 'ZIZAN BIN RAHIM ', '0133676674'),
(20234557, 'NUR AMERNA BINTI FAUZI', 2018, 'Female', 2024, 6, 'Class Charlie', 'IZATI BINTI ZAMRI', '0114413004'),
(20235481, 'SYED AHMAD BIN SYED ZAKI', 2019, 'Male', 2024, 5, 'Class Alpha', 'ASYIKIN BINTI ZAHAR ', '0136613731'),
(20236451, 'AMNA MEDINA BINTI HARIZ ', 2019, 'Female', 2024, 5, 'Class Beta', 'NINA BINTI ARIF ', '0122244171'),
(20231054, 'MUHAMMAD ALIF BIN HARIZ ', 2019, 'Male', 2024, 5, 'Class Charlie', 'NINA BINTI ALIF ', '0122244171'),
(20238148, 'AIN AMIRAH BINTI ALI ', 2020, 'Female', 2024, 4, 'Class Alpha', 'ALI BIN ALIF ', '0115061430'),
(20235264, 'AMIR BADRISHAH BIN ABU ', 2020, 'Male', 2024, 4, 'Class Beta', 'ABU BIN ARIFIN ', '0126670053'),
(20236112, 'AIDA ELYANA BINTI ZAIDI', 2020, 'Female', 2024, 4, 'Class Charlie', 'AZIZAH BINTI KAMAL', '0115543111');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
