-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 09, 2016 at 11:43 AM
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
-- Table structure for table `dashboard_country_code`
--

CREATE TABLE `dashboard_country_code` (
  `three_digit_code` varchar(3) DEFAULT NULL,
  `country_code` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dashboard_country_code`
--

INSERT INTO `dashboard_country_code` (`three_digit_code`, `country_code`) VALUES
('AFG', 'AF'),
('AGO', 'AO'),
('ALB', 'AL'),
('ARG', 'AR'),
('ARM', 'AM'),
('AZE', 'AZ'),
('BDI', 'BI'),
('BEN', 'BJ'),
('BFA', 'BF'),
('BGD', 'BD'),
('BIH', 'BA'),
('BLR', 'BY'),
('BOL', 'BO'),
('BRA', 'BR'),
('BTN', 'BT'),
('BWA', 'BW'),
('CAF', 'CF'),
('CHL', 'CL'),
('CHN', 'CN'),
('CIV', 'CI'),
('CMR', 'CM'),
('COD', 'CD'),
('COG', 'CG'),
('COL', 'CO'),
('COM', 'KM'),
('CPV', 'CV'),
('CRI', 'CR'),
('CUB', 'CU'),
('DJI', 'DJ'),
('DOM', 'DO'),
('DZA', 'DZ'),
('ECU', 'EC'),
('EGY', 'EG'),
('ERI', 'ER'),
('ETH', 'ET'),
('GAB', 'GA'),
('GEO', 'GE'),
('GHA', 'GH'),
('GIN', 'GN'),
('GMB', 'GM'),
('GNB', 'GW'),
('GNQ', 'GQ'),
('GTM', 'GT'),
('GUF', 'GF'),
('HND', 'HN'),
('HTI', 'HT'),
('IDN', 'ID'),
('IND', 'IN'),
('IRN', 'IR'),
('IRQ', 'IQ'),
('JAM', 'JM'),
('JOR', 'JO'),
('KAZ', 'KZ'),
('KEN', 'KE'),
('KGZ', 'KG'),
('KHM', 'KH'),
('KOR', 'KP'),
('LAO', 'LA'),
('LBN', 'LB'),
('LBR', 'LR'),
('LBY', 'LY'),
('LKA', 'LK'),
('MDA', 'MD'),
('MDG', 'MG'),
('MDV', 'MV'),
('MEX', 'MX'),
('MKD', 'MK'),
('MLI', 'ML'),
('MMR', 'MM'),
('MNG', 'MN'),
('MOZ', 'MZ'),
('MRT', 'MR'),
('MUS', 'MU'),
('MWI', 'MW'),
('MYS', 'MY'),
('NAM', 'NA'),
('NER', 'NE'),
('NGA', 'NG'),
('NIC', 'NI'),
('NPL', 'NP'),
('OMN', 'OM'),
('PAK', 'PK'),
('PAN', 'PA'),
('PER', 'PE'),
('PHL', 'PH'),
('PNG', 'PG'),
('PRY', 'PY'),
('PSE', 'PS'),
('RWA', 'RW'),
('SDN', 'SD'),
('SEN', 'SN'),
('SLE', 'SL'),
('SLV', 'SV'),
('SOM', 'SO'),
('SRB', 'RS'),
('SSD', 'SS'),
('STP', 'ST'),
('SWZ', 'SZ'),
('SYR', 'SY'),
('TCD', 'TD'),
('TGO', 'TG'),
('THA', 'TH'),
('TJK', 'TJ'),
('TKM', 'TM'),
('TLS', 'TL'),
('TUN', 'TN'),
('TUR', 'TR'),
('TZA', 'TZ'),
('UGA', 'UG'),
('UKR', 'UA'),
('URY', 'UY'),
('VEN', 'VE'),
('VNM', 'VN'),
('YEM', 'YE'),
('ZAF', 'ZA'),
('ZMB', 'ZM'),
('ZWE', 'ZW');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
