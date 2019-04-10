-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 09, 2016 at 11:45 AM
-- Server version: 5.6.31-0ubuntu0.15.10.1
-- PHP Version: 5.6.11-1ubuntu3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unfpa_global_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dashboard_procurement_category`
--

CREATE TABLE `tbl_dashboard_procurement_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(150) NOT NULL,
  `parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dashboard_procurement_category`
--

INSERT INTO `tbl_dashboard_procurement_category` (`category_id`, `category_name`, `parent`) VALUES
(1, 'Contraceptives', 0),
(2, 'Art work & Packaging RH Comm', 1),
(3, 'Combined Low Dose OC Pills', 53),
(4, 'Emergency Contraceptive', 10),
(5, 'Female Condoms', 1),
(6, 'Injectable Contraceptives', 10),
(7, 'Intrauterine Device (IUD)', 1),
(8, 'Laboratory Testing', 1),
(9, 'Lubricants', 1),
(10, 'Male Condoms', 1),
(11, 'Progestogen only Pills', 53),
(12, 'Sampling/inspection of condoms', 1),
(13, 'Subdermal Implants', 53),
(14, 'Testing of condoms', 1),
(15, 'Medical Devices, Supplies and Anatomical Models', 0),
(16, 'Anaesthesia & Resus. Equip', 15),
(17, 'Anatomical Models', 15),
(18, 'Hospital Equipment & Furniture', 15),
(19, 'Kitting Services', 15),
(20, 'Laboratory Equipment', 22),
(21, 'Med. Diagnostic Equip&Supplies', 15),
(22, 'Medical & Surgical Instruments', 15),
(23, 'Medical Attire & Linen', 15),
(24, 'Medical Electrical Equipment', 22),
(25, 'Medical Kits', 15),
(26, 'Medical Sterilization Equipmnt', 15),
(27, 'Medical Supplies', 15),
(28, 'Medical Utensils', 15),
(29, 'Medical&Surgical Instruments', 15),
(30, 'Reproductive Health Kits', 15),
(31, 'Sampling/Testing medical equip', 15),
(32, 'Pharmaceuticals', 0),
(33, 'Anaesthetics', 32),
(34, 'Analgesics', 32),
(35, 'Antiallergics', 32),
(36, 'Anti-Anaemia Medicines', 32),
(37, 'Antibacterials', 32),
(38, 'Antifungal Medicines', 32),
(39, 'Antihypertensive Medicines', 32),
(40, 'Anti-Inflammatory Medicines', 32),
(41, 'Antimalarial Medicines', 32),
(42, 'Antiprotozoal Medicines', 32),
(43, 'Antiseptics', 32),
(44, 'Cardiovascular Medicines', 32),
(45, 'Diagnostic and Lab. Reagents', 32),
(46, 'Gastro-Intestinal Medicines', 32),
(47, 'Intravenous Solutions', 32),
(48, 'Other Pharmaceuticals', 32),
(49, 'Oxytocics and Anti-oxytocics', 32),
(50, 'Respiratory Tract Medicines', 32),
(51, 'Samplin/Inspect Pharmaceutical', 32),
(52, 'Vitamins and Minerals', 32),
(53, 'Hormonal Contraceptives', 1),
(54, 'Test', 15),
(55, 'Testing parent', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_dashboard_procurement_category`
--
ALTER TABLE `tbl_dashboard_procurement_category`
  ADD PRIMARY KEY (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_dashboard_procurement_category`
--
ALTER TABLE `tbl_dashboard_procurement_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
