-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 09, 2016 at 11:44 AM
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
-- Table structure for table `country_code`
--

CREATE TABLE `country_code` (
  `id` int(11) NOT NULL,
  `c_name` varchar(42) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country_code`
--

INSERT INTO `country_code` (`id`, `c_name`, `cc`, `region_id`) VALUES
(1, 'Afghanistan', 'AF', 3),
(2, 'Albania', 'AL', 4),
(3, 'Armenia', 'AM', 4),
(4, 'Angola', 'AO', 0),
(5, 'Argentina', 'AR', 5),
(6, 'Azerbaijan.2', 'AZ', 4),
(7, 'Bosnia and Herzegovina', 'BA', 4),
(8, 'Bangladesh', 'BD', 3),
(9, 'Burkina Faso', 'BF', 1),
(10, 'Burundi', 'BI', 0),
(11, 'Benin', 'BJ', 1),
(12, 'Bolivia, Plurinational State of', 'BO', 5),
(13, 'Brazil', 'BR', 5),
(14, 'Bhutan', 'BT', 3),
(15, 'Botswana', 'BW', 0),
(16, 'Belarus', 'BY', 4),
(17, 'Congo, the Democratic Republic of the', 'CD', 0),
(18, 'Central African Republic', 'CF', 1),
(19, 'Congo', 'CG', 1),
(20, 'Côte d\'Ivoire', 'CI', 1),
(21, 'Chile', 'CL', 5),
(22, 'Cameroon', 'CM', 1),
(23, 'China.3', 'CN', 3),
(24, 'Colombia', 'CO', 5),
(25, 'Costa Rica', 'CR', 5),
(26, 'Cuba', 'CU', 5),
(27, 'Cabo Verde', 'CV', 1),
(28, 'Djibouti', 'DJ', 2),
(29, 'Dominican Republic', 'DO', 5),
(30, 'Algeria', 'DZ', 2),
(31, 'Ecuador', 'EC', 5),
(32, 'Egypt', 'EG', 2),
(33, 'Eritrea', 'ER', 0),
(34, 'Ethiopia', 'ET', 0),
(35, 'Gabon', 'GA', 1),
(36, 'Georgia.8', 'GE', 4),
(37, 'Ghana', 'GH', 1),
(38, 'Gambia', 'GM', 1),
(39, 'Guinea', 'GN', 1),
(40, 'Equatorial Guinea', 'GQ', 1),
(41, 'Guatemala', 'GT', 5),
(42, 'Guinea-Bissau', 'GW', 1),
(43, 'Honduras', 'HN', 5),
(44, 'Haiti', 'HT', 5),
(45, 'Indonesia', 'ID', 3),
(46, 'India', 'IN', 3),
(47, 'Iraq', 'IQ', 2),
(48, 'Iran, Islamic Republic of', 'IR', 3),
(49, 'Jordan', 'JO', 2),
(50, 'Kenya', 'KE', 0),
(51, 'Kyrgyzstan', 'KG', 4),
(52, 'Cambodia', 'KH', 3),
(53, 'Comoros', 'KM', 0),
(54, 'Korea, Democratic People\'s Republic', 'KP', NULL),
(55, 'Kazakhstan', 'KZ', 4),
(56, 'Lao People\'s Democratic Republic', 'LA', 3),
(57, 'Lebanon', 'LB', 2),
(58, 'Sri Lanka', 'LK', 3),
(59, 'Liberia', 'LR', 1),
(60, 'Lesotho', 'LS', 0),
(61, 'Libya', 'LY', 2),
(62, 'Morocco', 'MA', 2),
(63, 'Moldova, Republic of.12', 'MD', 4),
(64, 'Madagascar', 'MG', 0),
(65, 'Macedonia, the former Yugoslav Republic of', 'MK', 4),
(66, 'Mali', 'ML', 1),
(67, 'Myanmar', 'MM', 3),
(68, 'Mongolia', 'MN', 3),
(69, 'Mauritania', 'MR', 1),
(70, 'Mauritius.11', 'MU', 0),
(71, 'Maldives', 'MV', 3),
(72, 'Malawi', 'MW', 0),
(73, 'Mexico', 'MX', 5),
(74, 'Malaysia.10', 'MY', 3),
(75, 'Mozambique', 'MZ', 0),
(76, 'Namibia', 'NA', 0),
(77, 'Niger', 'NE', 1),
(78, 'Nigeria', 'NG', 1),
(79, 'Nicaragua', 'NI', 5),
(80, 'Nepal', 'NP', 3),
(81, 'Oman', 'OM', 2),
(82, 'Panama', 'PA', 5),
(83, 'Peru', 'PE', 5),
(84, 'Papua New Guinea', 'PG', 3),
(85, 'Philippines', 'PH', 3),
(86, 'Pakistan', 'PK', 3),
(87, 'Palestine.14', 'PS', 2),
(88, 'Paraguay', 'PY', 5),
(89, 'Serbia.15', 'RS', 4),
(90, 'Rwanda', 'RW', 0),
(91, 'Sudan', 'SD', 2),
(92, 'Sierra Leone', 'SL', 1),
(93, 'Senegal', 'SN', 1),
(94, 'Somalia', 'SO', 2),
(95, 'South Sudan', 'SS', 0),
(96, 'Sao Tome and Principe', 'ST', 1),
(97, 'El Salvador', 'SV', 5),
(98, 'Syrian Arab Republic', 'SY', 2),
(99, 'Swaziland', 'SZ', 0),
(100, 'Chad', 'TD', 1),
(101, 'Togo', 'TG', 1),
(102, 'Thailand', 'TH', 3),
(103, 'Tajikistan', 'TJ', 4),
(104, 'Timor-Leste', 'TL', 3),
(105, 'Turkmenistan', 'TM', 4),
(106, 'Tunisia', 'TN', 2),
(107, 'Turkey', 'TR', 4),
(108, 'Tanzania, United Republic of.17', 'TZ', 0),
(109, 'Ukraine', 'UA', 4),
(110, 'Uganda', 'UG', 0),
(111, 'Uruguay', 'UY', 5),
(112, 'Uzbekistan', 'UZ', 4),
(113, 'Venezuela, Bolivarian Republic of', 'VE', 5),
(114, 'Viet Nam', 'VN', 3),
(115, 'Kosovo Office', 'XK', 4),
(116, 'Yemen', 'YE', 2),
(117, 'South Africa', 'ZA', 0),
(118, 'Zambia', 'ZM', 0),
(119, 'Zimbabwe', 'ZW', 0),
(120, 'Caribbean SRO', 'JM ', 5),
(121, 'Pacific-SRO', 'FJ ', 3),
(122, 'Antigua and Barbuda', 'AG', 5),
(123, 'Aruba', 'AW', NULL),
(124, 'Australia.1', 'AU', NULL),
(125, 'Austria', 'AT', NULL),
(126, 'Bahamas', 'BS', 5),
(127, 'Bahrain', 'BH', NULL),
(128, 'Barbados', 'BB', NULL),
(129, 'Belgium', 'BE', NULL),
(130, 'Belize', 'BZ', NULL),
(131, 'Brunei Darussalam', 'BN', NULL),
(132, 'Bulgaria', 'BG', NULL),
(133, 'Canada', 'CA', NULL),
(134, 'China, Hong Kong SAR.4', 'HK', NULL),
(135, 'China, Macao SAR.5', 'MO', NULL),
(136, 'Croatia', 'HR', NULL),
(137, 'Curacao', 'CW', NULL),
(138, 'Cyprus.6', 'CY', NULL),
(139, 'Czech Republic', 'CZ', NULL),
(140, 'Denmark', 'DK', NULL),
(141, 'Dominica', 'DM', NULL),
(142, 'Estonia', 'EE', NULL),
(143, 'Fiji', 'FJ1', 3),
(144, 'Finland.7', 'FI', NULL),
(145, 'France', 'FR', NULL),
(146, 'French Guiana', 'GF', NULL),
(147, 'French Polynesia', 'PF', NULL),
(148, 'Germany', 'DE', NULL),
(149, 'Greece', 'GR', NULL),
(150, 'Grenada', 'GD', NULL),
(151, 'Guadeloupe.9', 'GP', 5),
(152, 'Guam', 'GU', NULL),
(153, 'Guyana', 'GY', NULL),
(154, 'Hungary', 'HU', NULL),
(155, 'Iceland', 'IS', NULL),
(156, 'Ireland', 'IE', NULL),
(157, 'Israel', 'IL', NULL),
(158, 'Italy', 'IT', NULL),
(159, 'Jamaica', 'JM1', 5),
(160, 'Japan', 'JP', 3),
(161, 'Kiribati', 'KI', NULL),
(162, 'Korea, Republic of', 'KR', NULL),
(163, 'Kuwait', 'KW', NULL),
(164, 'Latvia', 'LV', NULL),
(165, 'Lithuania', 'LT', NULL),
(166, 'Luxembourg', 'LU', NULL),
(167, 'Malta', 'MT', NULL),
(168, 'Martinique', 'MQ', NULL),
(169, 'Micronesia (Federated States of)', 'FM', NULL),
(170, 'Montenegro', 'ME', NULL),
(171, 'Netherlands', 'NL', NULL),
(172, 'New Caledonia', 'NC', NULL),
(173, 'New Zealand', 'NZ', NULL),
(174, 'Norway.13', 'NO', NULL),
(175, 'Poland', 'PL', NULL),
(176, 'Portugal', 'PT', NULL),
(177, 'Puerto Rico', 'PR', 5),
(178, 'Qatar', 'QA', NULL),
(179, 'Reunion', 'RE', NULL),
(180, 'Romania', 'RO', NULL),
(181, 'Russian Federation', 'RU', NULL),
(182, 'Saint Kitts and Nevis', 'KN', 5),
(183, 'Saint Lucia', 'LC', NULL),
(184, 'Saint Vincent and the Grenadines', 'VC', NULL),
(185, 'Samoa', 'WS', NULL),
(186, 'San Marino', 'SM', NULL),
(187, 'Saudi Arabia', 'SA', NULL),
(188, 'Seychelles', 'SC', 0),
(189, 'Singapore', 'SG', NULL),
(190, 'Slovakia', 'SK', NULL),
(191, 'Slovenia', 'SI', NULL),
(192, 'Solomon Islands', 'SB', NULL),
(193, 'Spain.16', 'ES', NULL),
(194, 'Suriname', 'SR', NULL),
(195, 'Sweden', 'SE', NULL),
(196, 'Switzerland', 'CH', NULL),
(197, 'Tonga', 'TO', NULL),
(198, 'Trinidad and Tobago', 'TT', 5),
(199, 'Turks and Caicos Islands', 'TC', 5),
(200, 'Tuvalu', 'TV', NULL),
(201, 'United Arab Emirates', 'AE', NULL),
(202, 'United Kingdom', 'GB', NULL),
(203, 'United States of America', 'US', NULL),
(204, 'United States Virgin Islands', 'VI', 5),
(205, 'Vanuatu ', 'VU', NULL),
(206, 'Western Sahara', 'EH', NULL),
(207, 'Asia & the Pacific.d', 'ASIA', 3),
(208, 'Eastern Europe & Central Asia', 'EECA', 4),
(209, 'West & Central Africa', 'WCA', 1),
(210, 'Arab States.c', 'ARAB', 2),
(211, 'Latin America & the Caribbean.e', 'LAC', 5),
(212, 'East & Southern Africa', 'ESA', 0),
(213, 'WORLD', 'WORLD', NULL),
(214, 'More Developed Regions', 'MDREGION', NULL),
(215, 'Less Developed Regions', 'LDREGION', NULL),
(216, 'Least Developed Regions', 'LEDREGION', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country_code`
--
ALTER TABLE `country_code`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country_code`
--
ALTER TABLE `country_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
