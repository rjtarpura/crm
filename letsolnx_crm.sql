-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Apr 24, 2018 at 05:11 AM
-- Server version: 10.1.31-MariaDB-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `letsolnx_crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `bankname` varchar(255) DEFAULT NULL,
  `branchbank` varchar(255) DEFAULT NULL,
  `account` varchar(11) DEFAULT NULL,
  `iban` varchar(255) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=2 ;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `type`, `bankname`, `branchbank`, `account`, `iban`, `status_id`) VALUES
(1, 'TEST', 0, '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE IF NOT EXISTS `appointments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `contact_id`, `staff_id`, `note`, `start`, `end`, `status`) VALUES
(1, 1, 1, 'I want to meet', '2018-04-25 05:45:00', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` mediumtext,
  `relation_type` varchar(255) NOT NULL,
  `relation` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(277) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `language` varchar(255) NOT NULL,
  `address` text,
  `skype` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `primary` int(11) DEFAULT '0',
  `inactive` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `surname`, `phone`, `extension`, `mobile`, `email`, `username`, `password`, `language`, `address`, `skype`, `linkedin`, `customer_id`, `position`, `primary`, `inactive`) VALUES
(1, 'milan bhai', 'Soni', '', '', '8866739817', 'ehs.milan@gmail.com', '', '$2y$10$rGw2TYo7SO961PP25wcmS.aZUSGrZTuPXf6bURz2pDGmKEDsHFOi6', '', '', '', '', 3, 'Developer', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `isocode` char(2) DEFAULT NULL,
  `shortname` varchar(80) NOT NULL DEFAULT '',
  `longname` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` varchar(6) DEFAULT NULL,
  `un` varchar(12) DEFAULT NULL,
  `dialingcode` varchar(8) DEFAULT NULL,
  `domain` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=251 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `isocode`, `shortname`, `longname`, `iso3`, `numcode`, `un`, `dialingcode`, `domain`) VALUES
(1, 'AF', 'Afghanistan', 'Islamic Republic of Afghanistan', 'AFG', '004', 'yes', '93', '.af'),
(2, 'AX', 'Aland Islands', '&Aring;land Islands', 'ALA', '248', 'no', '358', '.ax'),
(3, 'AL', 'Albania', 'Republic of Albania', 'ALB', '008', 'yes', '355', '.al'),
(4, 'DZ', 'Algeria', 'People''s Democratic Republic of Algeria', 'DZA', '012', 'yes', '213', '.dz'),
(5, 'AS', 'American Samoa', 'American Samoa', 'ASM', '016', 'no', '1+684', '.as'),
(6, 'AD', 'Andorra', 'Principality of Andorra', 'AND', '020', 'yes', '376', '.ad'),
(7, 'AO', 'Angola', 'Republic of Angola', 'AGO', '024', 'yes', '244', '.ao'),
(8, 'AI', 'Anguilla', 'Anguilla', 'AIA', '660', 'no', '1+264', '.ai'),
(9, 'AQ', 'Antarctica', 'Antarctica', 'ATA', '010', 'no', '672', '.aq'),
(10, 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'ATG', '028', 'yes', '1+268', '.ag'),
(11, 'AR', 'Argentina', 'Argentine Republic', 'ARG', '032', 'yes', '54', '.ar'),
(12, 'AM', 'Armenia', 'Republic of Armenia', 'ARM', '051', 'yes', '374', '.am'),
(13, 'AW', 'Aruba', 'Aruba', 'ABW', '533', 'no', '297', '.aw'),
(14, 'AU', 'Australia', 'Commonwealth of Australia', 'AUS', '036', 'yes', '61', '.au'),
(15, 'AT', 'Austria', 'Republic of Austria', 'AUT', '040', 'yes', '43', '.at'),
(16, 'AZ', 'Azerbaijan', 'Republic of Azerbaijan', 'AZE', '031', 'yes', '994', '.az'),
(17, 'BS', 'Bahamas', 'Commonwealth of The Bahamas', 'BHS', '044', 'yes', '1+242', '.bs'),
(18, 'BH', 'Bahrain', 'Kingdom of Bahrain', 'BHR', '048', 'yes', '973', '.bh'),
(19, 'BD', 'Bangladesh', 'People''s Republic of Bangladesh', 'BGD', '050', 'yes', '880', '.bd'),
(20, 'BB', 'Barbados', 'Barbados', 'BRB', '052', 'yes', '1+246', '.bb'),
(21, 'BY', 'Belarus', 'Republic of Belarus', 'BLR', '112', 'yes', '375', '.by'),
(22, 'BE', 'Belgium', 'Kingdom of Belgium', 'BEL', '056', 'yes', '32', '.be'),
(23, 'BZ', 'Belize', 'Belize', 'BLZ', '084', 'yes', '501', '.bz'),
(24, 'BJ', 'Benin', 'Republic of Benin', 'BEN', '204', 'yes', '229', '.bj'),
(25, 'BM', 'Bermuda', 'Bermuda Islands', 'BMU', '060', 'no', '1+441', '.bm'),
(26, 'BT', 'Bhutan', 'Kingdom of Bhutan', 'BTN', '064', 'yes', '975', '.bt'),
(27, 'BO', 'Bolivia', 'Plurinational State of Bolivia', 'BOL', '068', 'yes', '591', '.bo'),
(28, 'BQ', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'BES', '535', 'no', '599', '.bq'),
(29, 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BIH', '070', 'yes', '387', '.ba'),
(30, 'BW', 'Botswana', 'Republic of Botswana', 'BWA', '072', 'yes', '267', '.bw'),
(31, 'BV', 'Bouvet Island', 'Bouvet Island', 'BVT', '074', 'no', 'NONE', '.bv'),
(32, 'BR', 'Brazil', 'Federative Republic of Brazil', 'BRA', '076', 'yes', '55', '.br'),
(33, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'IOT', '086', 'no', '246', '.io'),
(34, 'BN', 'Brunei', 'Brunei Darussalam', 'BRN', '096', 'yes', '673', '.bn'),
(35, 'BG', 'Bulgaria', 'Republic of Bulgaria', 'BGR', '100', 'yes', '359', '.bg'),
(36, 'BF', 'Burkina Faso', 'Burkina Faso', 'BFA', '854', 'yes', '226', '.bf'),
(37, 'BI', 'Burundi', 'Republic of Burundi', 'BDI', '108', 'yes', '257', '.bi'),
(38, 'KH', 'Cambodia', 'Kingdom of Cambodia', 'KHM', '116', 'yes', '855', '.kh'),
(39, 'CM', 'Cameroon', 'Republic of Cameroon', 'CMR', '120', 'yes', '237', '.cm'),
(40, 'CA', 'Canada', 'Canada', 'CAN', '124', 'yes', '1', '.ca'),
(41, 'CV', 'Cape Verde', 'Republic of Cape Verde', 'CPV', '132', 'yes', '238', '.cv'),
(42, 'KY', 'Cayman Islands', 'The Cayman Islands', 'CYM', '136', 'no', '1+345', '.ky'),
(43, 'CF', 'Central African Republic', 'Central African Republic', 'CAF', '140', 'yes', '236', '.cf'),
(44, 'TD', 'Chad', 'Republic of Chad', 'TCD', '148', 'yes', '235', '.td'),
(45, 'CL', 'Chile', 'Republic of Chile', 'CHL', '152', 'yes', '56', '.cl'),
(46, 'CN', 'China', 'People''s Republic of China', 'CHN', '156', 'yes', '86', '.cn'),
(47, 'CX', 'Christmas Island', 'Christmas Island', 'CXR', '162', 'no', '61', '.cx'),
(48, 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'CCK', '166', 'no', '61', '.cc'),
(49, 'CO', 'Colombia', 'Republic of Colombia', 'COL', '170', 'yes', '57', '.co'),
(50, 'KM', 'Comoros', 'Union of the Comoros', 'COM', '174', 'yes', '269', '.km'),
(51, 'CG', 'Congo', 'Republic of the Congo', 'COG', '178', 'yes', '242', '.cg'),
(52, 'CK', 'Cook Islands', 'Cook Islands', 'COK', '184', 'some', '682', '.ck'),
(53, 'CR', 'Costa Rica', 'Republic of Costa Rica', 'CRI', '188', 'yes', '506', '.cr'),
(54, 'CI', 'Cote d''ivoire (Ivory Coast)', 'Republic of C&ocirc;te D''Ivoire (Ivory Coast)', 'CIV', '384', 'yes', '225', '.ci'),
(55, 'HR', 'Croatia', 'Republic of Croatia', 'HRV', '191', 'yes', '385', '.hr'),
(56, 'CU', 'Cuba', 'Republic of Cuba', 'CUB', '192', 'yes', '53', '.cu'),
(57, 'CW', 'Curacao', 'Cura&ccedil;ao', 'CUW', '531', 'no', '599', '.cw'),
(58, 'CY', 'Cyprus', 'Republic of Cyprus', 'CYP', '196', 'yes', '357', '.cy'),
(59, 'CZ', 'Czech Republic', 'Czech Republic', 'CZE', '203', 'yes', '420', '.cz'),
(60, 'CD', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'COD', '180', 'yes', '243', '.cd'),
(61, 'DK', 'Denmark', 'Kingdom of Denmark', 'DNK', '208', 'yes', '45', '.dk'),
(62, 'DJ', 'Djibouti', 'Republic of Djibouti', 'DJI', '262', 'yes', '253', '.dj'),
(63, 'DM', 'Dominica', 'Commonwealth of Dominica', 'DMA', '212', 'yes', '1+767', '.dm'),
(64, 'DO', 'Dominican Republic', 'Dominican Republic', 'DOM', '214', 'yes', '1+809, 8', '.do'),
(65, 'EC', 'Ecuador', 'Republic of Ecuador', 'ECU', '218', 'yes', '593', '.ec'),
(66, 'EG', 'Egypt', 'Arab Republic of Egypt', 'EGY', '818', 'yes', '20', '.eg'),
(67, 'SV', 'El Salvador', 'Republic of El Salvador', 'SLV', '222', 'yes', '503', '.sv'),
(68, 'GQ', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'GNQ', '226', 'yes', '240', '.gq'),
(69, 'ER', 'Eritrea', 'State of Eritrea', 'ERI', '232', 'yes', '291', '.er'),
(70, 'EE', 'Estonia', 'Republic of Estonia', 'EST', '233', 'yes', '372', '.ee'),
(71, 'ET', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'ETH', '231', 'yes', '251', '.et'),
(72, 'FK', 'Falkland Islands (Malvinas)', 'The Falkland Islands (Malvinas)', 'FLK', '238', 'no', '500', '.fk'),
(73, 'FO', 'Faroe Islands', 'The Faroe Islands', 'FRO', '234', 'no', '298', '.fo'),
(74, 'FJ', 'Fiji', 'Republic of Fiji', 'FJI', '242', 'yes', '679', '.fj'),
(75, 'FI', 'Finland', 'Republic of Finland', 'FIN', '246', 'yes', '358', '.fi'),
(76, 'FR', 'France', 'French Republic', 'FRA', '250', 'yes', '33', '.fr'),
(77, 'GF', 'French Guiana', 'French Guiana', 'GUF', '254', 'no', '594', '.gf'),
(78, 'PF', 'French Polynesia', 'French Polynesia', 'PYF', '258', 'no', '689', '.pf'),
(79, 'TF', 'French Southern Territories', 'French Southern Territories', 'ATF', '260', 'no', NULL, '.tf'),
(80, 'GA', 'Gabon', 'Gabonese Republic', 'GAB', '266', 'yes', '241', '.ga'),
(81, 'GM', 'Gambia', 'Republic of The Gambia', 'GMB', '270', 'yes', '220', '.gm'),
(82, 'GE', 'Georgia', 'Georgia', 'GEO', '268', 'yes', '995', '.ge'),
(83, 'DE', 'Germany', 'Federal Republic of Germany', 'DEU', '276', 'yes', '49', '.de'),
(84, 'GH', 'Ghana', 'Republic of Ghana', 'GHA', '288', 'yes', '233', '.gh'),
(85, 'GI', 'Gibraltar', 'Gibraltar', 'GIB', '292', 'no', '350', '.gi'),
(86, 'GR', 'Greece', 'Hellenic Republic', 'GRC', '300', 'yes', '30', '.gr'),
(87, 'GL', 'Greenland', 'Greenland', 'GRL', '304', 'no', '299', '.gl'),
(88, 'GD', 'Grenada', 'Grenada', 'GRD', '308', 'yes', '1+473', '.gd'),
(89, 'GP', 'Guadaloupe', 'Guadeloupe', 'GLP', '312', 'no', '590', '.gp'),
(90, 'GU', 'Guam', 'Guam', 'GUM', '316', 'no', '1+671', '.gu'),
(91, 'GT', 'Guatemala', 'Republic of Guatemala', 'GTM', '320', 'yes', '502', '.gt'),
(92, 'GG', 'Guernsey', 'Guernsey', 'GGY', '831', 'no', '44', '.gg'),
(93, 'GN', 'Guinea', 'Republic of Guinea', 'GIN', '324', 'yes', '224', '.gn'),
(94, 'GW', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'GNB', '624', 'yes', '245', '.gw'),
(95, 'GY', 'Guyana', 'Co-operative Republic of Guyana', 'GUY', '328', 'yes', '592', '.gy'),
(96, 'HT', 'Haiti', 'Republic of Haiti', 'HTI', '332', 'yes', '509', '.ht'),
(97, 'HM', 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', 'HMD', '334', 'no', 'NONE', '.hm'),
(98, 'HN', 'Honduras', 'Republic of Honduras', 'HND', '340', 'yes', '504', '.hn'),
(99, 'HK', 'Hong Kong', 'Hong Kong', 'HKG', '344', 'no', '852', '.hk'),
(100, 'HU', 'Hungary', 'Hungary', 'HUN', '348', 'yes', '36', '.hu'),
(101, 'IS', 'Iceland', 'Republic of Iceland', 'ISL', '352', 'yes', '354', '.is'),
(102, 'IN', 'India', 'Republic of India', 'IND', '356', 'yes', '91', '.in'),
(103, 'ID', 'Indonesia', 'Republic of Indonesia', 'IDN', '360', 'yes', '62', '.id'),
(104, 'IR', 'Iran', 'Islamic Republic of Iran', 'IRN', '364', 'yes', '98', '.ir'),
(105, 'IQ', 'Iraq', 'Republic of Iraq', 'IRQ', '368', 'yes', '964', '.iq'),
(106, 'IE', 'Ireland', 'Ireland', 'IRL', '372', 'yes', '353', '.ie'),
(107, 'IM', 'Isle of Man', 'Isle of Man', 'IMN', '833', 'no', '44', '.im'),
(108, 'IL', 'Israel', 'State of Israel', 'ISR', '376', 'yes', '972', '.il'),
(109, 'IT', 'Italy', 'Italian Republic', 'ITA', '380', 'yes', '39', '.jm'),
(110, 'JM', 'Jamaica', 'Jamaica', 'JAM', '388', 'yes', '1+876', '.jm'),
(111, 'JP', 'Japan', 'Japan', 'JPN', '392', 'yes', '81', '.jp'),
(112, 'JE', 'Jersey', 'The Bailiwick of Jersey', 'JEY', '832', 'no', '44', '.je'),
(113, 'JO', 'Jordan', 'Hashemite Kingdom of Jordan', 'JOR', '400', 'yes', '962', '.jo'),
(114, 'KZ', 'Kazakhstan', 'Republic of Kazakhstan', 'KAZ', '398', 'yes', '7', '.kz'),
(115, 'KE', 'Kenya', 'Republic of Kenya', 'KEN', '404', 'yes', '254', '.ke'),
(116, 'KI', 'Kiribati', 'Republic of Kiribati', 'KIR', '296', 'yes', '686', '.ki'),
(117, 'XK', 'Kosovo', 'Republic of Kosovo', '---', '---', 'some', '381', ''),
(118, 'KW', 'Kuwait', 'State of Kuwait', 'KWT', '414', 'yes', '965', '.kw'),
(119, 'KG', 'Kyrgyzstan', 'Kyrgyz Republic', 'KGZ', '417', 'yes', '996', '.kg'),
(120, 'LA', 'Laos', 'Lao People''s Democratic Republic', 'LAO', '418', 'yes', '856', '.la'),
(121, 'LV', 'Latvia', 'Republic of Latvia', 'LVA', '428', 'yes', '371', '.lv'),
(122, 'LB', 'Lebanon', 'Republic of Lebanon', 'LBN', '422', 'yes', '961', '.lb'),
(123, 'LS', 'Lesotho', 'Kingdom of Lesotho', 'LSO', '426', 'yes', '266', '.ls'),
(124, 'LR', 'Liberia', 'Republic of Liberia', 'LBR', '430', 'yes', '231', '.lr'),
(125, 'LY', 'Libya', 'Libya', 'LBY', '434', 'yes', '218', '.ly'),
(126, 'LI', 'Liechtenstein', 'Principality of Liechtenstein', 'LIE', '438', 'yes', '423', '.li'),
(127, 'LT', 'Lithuania', 'Republic of Lithuania', 'LTU', '440', 'yes', '370', '.lt'),
(128, 'LU', 'Luxembourg', 'Grand Duchy of Luxembourg', 'LUX', '442', 'yes', '352', '.lu'),
(129, 'MO', 'Macao', 'The Macao Special Administrative Region', 'MAC', '446', 'no', '853', '.mo'),
(130, 'MK', 'Macedonia', 'The Former Yugoslav Republic of Macedonia', 'MKD', '807', 'yes', '389', '.mk'),
(131, 'MG', 'Madagascar', 'Republic of Madagascar', 'MDG', '450', 'yes', '261', '.mg'),
(132, 'MW', 'Malawi', 'Republic of Malawi', 'MWI', '454', 'yes', '265', '.mw'),
(133, 'MY', 'Malaysia', 'Malaysia', 'MYS', '458', 'yes', '60', '.my'),
(134, 'MV', 'Maldives', 'Republic of Maldives', 'MDV', '462', 'yes', '960', '.mv'),
(135, 'ML', 'Mali', 'Republic of Mali', 'MLI', '466', 'yes', '223', '.ml'),
(136, 'MT', 'Malta', 'Republic of Malta', 'MLT', '470', 'yes', '356', '.mt'),
(137, 'MH', 'Marshall Islands', 'Republic of the Marshall Islands', 'MHL', '584', 'yes', '692', '.mh'),
(138, 'MQ', 'Martinique', 'Martinique', 'MTQ', '474', 'no', '596', '.mq'),
(139, 'MR', 'Mauritania', 'Islamic Republic of Mauritania', 'MRT', '478', 'yes', '222', '.mr'),
(140, 'MU', 'Mauritius', 'Republic of Mauritius', 'MUS', '480', 'yes', '230', '.mu'),
(141, 'YT', 'Mayotte', 'Mayotte', 'MYT', '175', 'no', '262', '.yt'),
(142, 'MX', 'Mexico', 'United Mexican States', 'MEX', '484', 'yes', '52', '.mx'),
(143, 'FM', 'Micronesia', 'Federated States of Micronesia', 'FSM', '583', 'yes', '691', '.fm'),
(144, 'MD', 'Moldava', 'Republic of Moldova', 'MDA', '498', 'yes', '373', '.md'),
(145, 'MC', 'Monaco', 'Principality of Monaco', 'MCO', '492', 'yes', '377', '.mc'),
(146, 'MN', 'Mongolia', 'Mongolia', 'MNG', '496', 'yes', '976', '.mn'),
(147, 'ME', 'Montenegro', 'Montenegro', 'MNE', '499', 'yes', '382', '.me'),
(148, 'MS', 'Montserrat', 'Montserrat', 'MSR', '500', 'no', '1+664', '.ms'),
(149, 'MA', 'Morocco', 'Kingdom of Morocco', 'MAR', '504', 'yes', '212', '.ma'),
(150, 'MZ', 'Mozambique', 'Republic of Mozambique', 'MOZ', '508', 'yes', '258', '.mz'),
(151, 'MM', 'Myanmar (Burma)', 'Republic of the Union of Myanmar', 'MMR', '104', 'yes', '95', '.mm'),
(152, 'NA', 'Namibia', 'Republic of Namibia', 'NAM', '516', 'yes', '264', '.na'),
(153, 'NR', 'Nauru', 'Republic of Nauru', 'NRU', '520', 'yes', '674', '.nr'),
(154, 'NP', 'Nepal', 'Federal Democratic Republic of Nepal', 'NPL', '524', 'yes', '977', '.np'),
(155, 'NL', 'Netherlands', 'Kingdom of the Netherlands', 'NLD', '528', 'yes', '31', '.nl'),
(156, 'NC', 'New Caledonia', 'New Caledonia', 'NCL', '540', 'no', '687', '.nc'),
(157, 'NZ', 'New Zealand', 'New Zealand', 'NZL', '554', 'yes', '64', '.nz'),
(158, 'NI', 'Nicaragua', 'Republic of Nicaragua', 'NIC', '558', 'yes', '505', '.ni'),
(159, 'NE', 'Niger', 'Republic of Niger', 'NER', '562', 'yes', '227', '.ne'),
(160, 'NG', 'Nigeria', 'Federal Republic of Nigeria', 'NGA', '566', 'yes', '234', '.ng'),
(161, 'NU', 'Niue', 'Niue', 'NIU', '570', 'some', '683', '.nu'),
(162, 'NF', 'Norfolk Island', 'Norfolk Island', 'NFK', '574', 'no', '672', '.nf'),
(163, 'KP', 'North Korea', 'Democratic People''s Republic of Korea', 'PRK', '408', 'yes', '850', '.kp'),
(164, 'MP', 'Northern Mariana Islands', 'Northern Mariana Islands', 'MNP', '580', 'no', '1+670', '.mp'),
(165, 'NO', 'Norway', 'Kingdom of Norway', 'NOR', '578', 'yes', '47', '.no'),
(166, 'OM', 'Oman', 'Sultanate of Oman', 'OMN', '512', 'yes', '968', '.om'),
(167, 'PK', 'Pakistan', 'Islamic Republic of Pakistan', 'PAK', '586', 'yes', '92', '.pk'),
(168, 'PW', 'Palau', 'Republic of Palau', 'PLW', '585', 'yes', '680', '.pw'),
(169, 'PS', 'Palestine', 'State of Palestine (or Occupied Palestinian Territory)', 'PSE', '275', 'some', '970', '.ps'),
(170, 'PA', 'Panama', 'Republic of Panama', 'PAN', '591', 'yes', '507', '.pa'),
(171, 'PG', 'Papua New Guinea', 'Independent State of Papua New Guinea', 'PNG', '598', 'yes', '675', '.pg'),
(172, 'PY', 'Paraguay', 'Republic of Paraguay', 'PRY', '600', 'yes', '595', '.py'),
(173, 'PE', 'Peru', 'Republic of Peru', 'PER', '604', 'yes', '51', '.pe'),
(174, 'PH', 'Phillipines', 'Republic of the Philippines', 'PHL', '608', 'yes', '63', '.ph'),
(175, 'PN', 'Pitcairn', 'Pitcairn', 'PCN', '612', 'no', 'NONE', '.pn'),
(176, 'PL', 'Poland', 'Republic of Poland', 'POL', '616', 'yes', '48', '.pl'),
(177, 'PT', 'Portugal', 'Portuguese Republic', 'PRT', '620', 'yes', '351', '.pt'),
(178, 'PR', 'Puerto Rico', 'Commonwealth of Puerto Rico', 'PRI', '630', 'no', '1+939', '.pr'),
(179, 'QA', 'Qatar', 'State of Qatar', 'QAT', '634', 'yes', '974', '.qa'),
(180, 'RE', 'Reunion', 'R&eacute;union', 'REU', '638', 'no', '262', '.re'),
(181, 'RO', 'Romania', 'Romania', 'ROU', '642', 'yes', '40', '.ro'),
(182, 'RU', 'Russia', 'Russian Federation', 'RUS', '643', 'yes', '7', '.ru'),
(183, 'RW', 'Rwanda', 'Republic of Rwanda', 'RWA', '646', 'yes', '250', '.rw'),
(184, 'BL', 'Saint Barthelemy', 'Saint Barth&eacute;lemy', 'BLM', '652', 'no', '590', '.bl'),
(185, 'SH', 'Saint Helena', 'Saint Helena, Ascension and Tristan da Cunha', 'SHN', '654', 'no', '290', '.sh'),
(186, 'KN', 'Saint Kitts and Nevis', 'Federation of Saint Christopher and Nevis', 'KNA', '659', 'yes', '1+869', '.kn'),
(187, 'LC', 'Saint Lucia', 'Saint Lucia', 'LCA', '662', 'yes', '1+758', '.lc'),
(188, 'MF', 'Saint Martin', 'Saint Martin', 'MAF', '663', 'no', '590', '.mf'),
(189, 'PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'SPM', '666', 'no', '508', '.pm'),
(190, 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'VCT', '670', 'yes', '1+784', '.vc'),
(191, 'WS', 'Samoa', 'Independent State of Samoa', 'WSM', '882', 'yes', '685', '.ws'),
(192, 'SM', 'San Marino', 'Republic of San Marino', 'SMR', '674', 'yes', '378', '.sm'),
(193, 'ST', 'Sao Tome and Principe', 'Democratic Republic of S&atilde;o Tom&eacute; and Pr&iacute;ncipe', 'STP', '678', 'yes', '239', '.st'),
(194, 'SA', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'SAU', '682', 'yes', '966', '.sa'),
(195, 'SN', 'Senegal', 'Republic of Senegal', 'SEN', '686', 'yes', '221', '.sn'),
(196, 'RS', 'Serbia', 'Republic of Serbia', 'SRB', '688', 'yes', '381', '.rs'),
(197, 'SC', 'Seychelles', 'Republic of Seychelles', 'SYC', '690', 'yes', '248', '.sc'),
(198, 'SL', 'Sierra Leone', 'Republic of Sierra Leone', 'SLE', '694', 'yes', '232', '.sl'),
(199, 'SG', 'Singapore', 'Republic of Singapore', 'SGP', '702', 'yes', '65', '.sg'),
(200, 'SX', 'Sint Maarten', 'Sint Maarten', 'SXM', '534', 'no', '1+721', '.sx'),
(201, 'SK', 'Slovakia', 'Slovak Republic', 'SVK', '703', 'yes', '421', '.sk'),
(202, 'SI', 'Slovenia', 'Republic of Slovenia', 'SVN', '705', 'yes', '386', '.si'),
(203, 'SB', 'Solomon Islands', 'Solomon Islands', 'SLB', '090', 'yes', '677', '.sb'),
(204, 'SO', 'Somalia', 'Somali Republic', 'SOM', '706', 'yes', '252', '.so'),
(205, 'ZA', 'South Africa', 'Republic of South Africa', 'ZAF', '710', 'yes', '27', '.za'),
(206, 'GS', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'SGS', '239', 'no', '500', '.gs'),
(207, 'KR', 'South Korea', 'Republic of Korea', 'KOR', '410', 'yes', '82', '.kr'),
(208, 'SS', 'South Sudan', 'Republic of South Sudan', 'SSD', '728', 'yes', '211', '.ss'),
(209, 'ES', 'Spain', 'Kingdom of Spain', 'ESP', '724', 'yes', '34', '.es'),
(210, 'LK', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'LKA', '144', 'yes', '94', '.lk'),
(211, 'SD', 'Sudan', 'Republic of the Sudan', 'SDN', '729', 'yes', '249', '.sd'),
(212, 'SR', 'Suriname', 'Republic of Suriname', 'SUR', '740', 'yes', '597', '.sr'),
(213, 'SJ', 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', 'SJM', '744', 'no', '47', '.sj'),
(214, 'SZ', 'Swaziland', 'Kingdom of Swaziland', 'SWZ', '748', 'yes', '268', '.sz'),
(215, 'SE', 'Sweden', 'Kingdom of Sweden', 'SWE', '752', 'yes', '46', '.se'),
(216, 'CH', 'Switzerland', 'Swiss Confederation', 'CHE', '756', 'yes', '41', '.ch'),
(217, 'SY', 'Syria', 'Syrian Arab Republic', 'SYR', '760', 'yes', '963', '.sy'),
(218, 'TW', 'Taiwan', 'Republic of China (Taiwan)', 'TWN', '158', 'former', '886', '.tw'),
(219, 'TJ', 'Tajikistan', 'Republic of Tajikistan', 'TJK', '762', 'yes', '992', '.tj'),
(220, 'TZ', 'Tanzania', 'United Republic of Tanzania', 'TZA', '834', 'yes', '255', '.tz'),
(221, 'TH', 'Thailand', 'Kingdom of Thailand', 'THA', '764', 'yes', '66', '.th'),
(222, 'TL', 'Timor-Leste (East Timor)', 'Democratic Republic of Timor-Leste', 'TLS', '626', 'yes', '670', '.tl'),
(223, 'TG', 'Togo', 'Togolese Republic', 'TGO', '768', 'yes', '228', '.tg'),
(224, 'TK', 'Tokelau', 'Tokelau', 'TKL', '772', 'no', '690', '.tk'),
(225, 'TO', 'Tonga', 'Kingdom of Tonga', 'TON', '776', 'yes', '676', '.to'),
(226, 'TT', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'TTO', '780', 'yes', '1+868', '.tt'),
(227, 'TN', 'Tunisia', 'Republic of Tunisia', 'TUN', '788', 'yes', '216', '.tn'),
(228, 'TR', 'Turkey', 'Republic of Turkey', 'TUR', '792', 'yes', '90', '.tr'),
(229, 'TM', 'Turkmenistan', 'Turkmenistan', 'TKM', '795', 'yes', '993', '.tm'),
(230, 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'TCA', '796', 'no', '1+649', '.tc'),
(231, 'TV', 'Tuvalu', 'Tuvalu', 'TUV', '798', 'yes', '688', '.tv'),
(232, 'UG', 'Uganda', 'Republic of Uganda', 'UGA', '800', 'yes', '256', '.ug'),
(233, 'UA', 'Ukraine', 'Ukraine', 'UKR', '804', 'yes', '380', '.ua'),
(234, 'AE', 'United Arab Emirates', 'United Arab Emirates', 'ARE', '784', 'yes', '971', '.ae'),
(235, 'GB', 'United Kingdom', 'United Kingdom of Great Britain and Nothern Ireland', 'GBR', '826', 'yes', '44', '.uk'),
(236, 'US', 'United States', 'United States of America', 'USA', '840', 'yes', '1', '.us'),
(237, 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'UMI', '581', 'no', 'NONE', 'NONE'),
(238, 'UY', 'Uruguay', 'Eastern Republic of Uruguay', 'URY', '858', 'yes', '598', '.uy'),
(239, 'UZ', 'Uzbekistan', 'Republic of Uzbekistan', 'UZB', '860', 'yes', '998', '.uz'),
(240, 'VU', 'Vanuatu', 'Republic of Vanuatu', 'VUT', '548', 'yes', '678', '.vu'),
(241, 'VA', 'Vatican City', 'State of the Vatican City', 'VAT', '336', 'no', '39', '.va'),
(242, 'VE', 'Venezuela', 'Bolivarian Republic of Venezuela', 'VEN', '862', 'yes', '58', '.ve'),
(243, 'VN', 'Vietnam', 'Socialist Republic of Vietnam', 'VNM', '704', 'yes', '84', '.vn'),
(244, 'VG', 'Virgin Islands, British', 'British Virgin Islands', 'VGB', '092', 'no', '1+284', '.vg'),
(245, 'VI', 'Virgin Islands, US', 'Virgin Islands of the United States', 'VIR', '850', 'no', '1+340', '.vi'),
(246, 'WF', 'Wallis and Futuna', 'Wallis and Futuna', 'WLF', '876', 'no', '681', '.wf'),
(247, 'EH', 'Western Sahara', 'Western Sahara', 'ESH', '732', 'no', '212', '.eh'),
(248, 'YE', 'Yemen', 'Republic of Yemen', 'YEM', '887', 'yes', '967', '.ye'),
(249, 'ZM', 'Zambia', 'Republic of Zambia', 'ZMB', '894', 'yes', '260', '.zm'),
(250, 'ZW', 'Zimbabwe', 'Republic of Zimbabwe', 'ZWE', '716', 'yes', '263', '.zw');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=180 ;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`) VALUES
(1, 'UAE Dirham', 'AED'),
(2, 'Afghani (Ø‹)', 'AFN'),
(3, 'Lek (Lek)', 'ALL'),
(4, 'Armenian Dram (Õ¤Ö€.)', 'AMD'),
(5, 'Netherlands Antillean Guilder (NAÆ’)', 'ANG'),
(6, 'Kwanza', 'AOA'),
(7, 'Argentine Peso', 'ARS'),
(8, 'Australian Dollar (A$)', 'AUD'),
(9, 'Aruban Florin (Afl)', 'AWG'),
(10, 'Azerbaijanian Manat (â‚¼)', 'AZN'),
(11, 'Convertible Mark (KM)', 'BAM'),
(12, 'Barbados Dollar', 'BBD'),
(13, 'Taka', 'BDT'),
(14, 'Bulgarian Lev (Ð»Ð²)', 'BGN'),
(15, 'Bahraini Dinar (.Ø¯.Ø¨)', 'BHD'),
(16, 'Burundi Franc', 'BIF'),
(17, 'Bermudian Dollar (BD$)', 'BMD'),
(18, 'Brunei Dollar', 'BND'),
(19, 'Boliviano (Bs.)', 'BOB'),
(20, 'Mvdol', 'BOV'),
(21, 'Brazilian Real (R$)', 'BRL'),
(22, 'Bahamian Dollar', 'BSD'),
(23, 'Ngultrum', 'BTN'),
(24, 'Pula (P)', 'BWP'),
(25, 'Belarussian Ruble (Ñ€.)', 'BYN'),
(26, 'Belarussian Ruble (Ñ€.)', 'BYR'),
(27, 'Belize Dollar (BZ$)', 'BZD'),
(28, 'Canadian Dollar (CA$)', 'CAD'),
(29, 'Congolese Franc', 'CDF'),
(30, 'WIR Euro', 'CHE'),
(31, 'Swiss Franc', 'CHF'),
(32, 'WIR Franc', 'CHW'),
(33, 'Unidad de Fomento', 'CLF'),
(34, 'Chilean Peso', 'CLP'),
(35, 'Yuan Renminbi (å…ƒ)', 'CNY'),
(36, 'Colombian Peso', 'COP'),
(37, 'Unidad de Valor Real', 'COU'),
(38, 'Cost Rican Colon (â‚¡)', 'CRC'),
(39, 'Peso Convertible', 'CUC'),
(40, 'Cuban Peso ($MN)', 'CUP'),
(41, 'Cabo Verde Escudo', 'CVE'),
(42, 'Czech Koruna (KÄ)', 'CZK'),
(43, 'Djibouti Franc', 'DJF'),
(44, 'Danish Krone', 'DKK'),
(45, 'Dominican Peso (RD$)', 'DOP'),
(46, 'Algerian Dinar (.Ø¯.Ø¬)', 'DZD'),
(47, 'Estonian Kroon', 'EEK'),
(48, 'Egyptian Pound (.Ø¬.Ù…)', 'EGP'),
(49, 'Nakfa', 'ERN'),
(50, 'Ethiopian Birr', 'ETB'),
(51, 'Euro (â‚¬)', 'EUR'),
(52, 'Fiji Dollar (FJ$)', 'FJD'),
(53, 'Falkland Islands Pound', 'FKP'),
(54, 'Pound Sterling (Â£)', 'GBP'),
(55, 'Lari', 'GEL'),
(56, 'Guernsey Pound', 'GGP'),
(57, 'Ghanaian Cedi (Â¢)', 'GHC'),
(58, 'Ghan Cedi', 'GHS'),
(59, 'Gibraltar Pound', 'GIP'),
(60, 'Dalasi', 'GMD'),
(61, 'Guine Franc', 'GNF'),
(62, 'Quetzal (Q)', 'GTQ'),
(63, 'Guyan Dollar (GY$)', 'GYD'),
(64, 'Hong Kong Dollar (HK$)', 'HKD'),
(65, 'Lempira (L)', 'HNL'),
(66, 'Croatian Kuna (kn)', 'HRK'),
(67, 'Gourde', 'HTG'),
(68, 'Forint (Ft)', 'HUF'),
(69, 'Rupiah (Rp)', 'IDR'),
(70, 'New Israeli Sheqel (â‚ª)', 'ILS'),
(71, 'Manx Pound', 'IMP'),
(72, 'Indian Rupee (INR)', 'INR'),
(73, 'Iraqi Dinar (.Ø¯.Ø¹)', 'IQD'),
(74, 'Iranian Rial (.Ø±.Ø§)', 'IRR'),
(75, 'Iceland Krona', 'ISK'),
(76, 'Jersey Pound', 'JEP'),
(77, 'Jamaican Dollar (J$)', 'JMD'),
(78, 'Jordanian Dinar', 'JOD'),
(79, 'Yen (Â¥)', 'JPY'),
(80, 'Kenyan Shilling (KSh)', 'KES'),
(81, 'Som (ÑÐ¾Ð¼)', 'KGS'),
(82, 'Riel (áŸ›)', 'KHR'),
(83, 'Comoro Franc', 'KMF'),
(84, 'North Korean Won', 'KPW'),
(85, 'Won (â‚©)', 'KRW'),
(86, 'Kuwaiti Dinar (.Ø¯.Ùƒ)', 'KWD'),
(87, 'Cayman Islands Dollar (CI$)', 'KYD'),
(88, 'Tenge (â‚¸)', 'KZT'),
(89, 'Kip (â‚­)', 'LAK'),
(90, 'Lebanese Pound (.Ù„.Ù„)', 'LBP'),
(91, 'Sri Lank Rupee', 'LKR'),
(92, 'Liberian Dollar (L$)', 'LRD'),
(93, 'Loti', 'LSL'),
(94, 'Lithuanian Litas (Lt)', 'LTL'),
(95, 'Latvian Lats (Ls)', 'LVL'),
(96, 'Libyan Dinar (.Ø¯.Ù„)', 'LYD'),
(97, 'Moroccan Dirham (.Ø¯.Ù…)', 'MAD'),
(98, 'Moldovan Leu', 'MDL'),
(99, 'Malagasy riary', 'MGA'),
(100, 'Denar (Ð´ÐµÐ½)', 'MKD'),
(101, 'Kyat', 'MMK'),
(102, 'Tugrik (â‚®)', 'MNT'),
(103, 'Pataca', 'MOP'),
(104, 'Ouguiya', 'MRO'),
(105, 'Mauritius Rupee', 'MUR'),
(106, 'Rufiyaa', 'MVR'),
(107, 'Kwacha', 'MWK'),
(108, 'Mexican Peso', 'MXN'),
(109, 'Mexican Unidad de Inversion (UDI)', 'MXV'),
(110, 'Malaysian Ringgit (RM)', 'MYR'),
(111, 'Mozambique Metical (MT)', 'MZN'),
(112, 'Namibi Dollar (N$)', 'NAD'),
(113, 'Naira (â‚¦)', 'NGN'),
(114, 'Cordob Oro (C$)', 'NIO'),
(115, 'Norwegian Krone', 'NOK'),
(116, 'Nepalese Rupee', 'NPR'),
(117, 'New Zealand Dollar (NZ$)', 'NZD'),
(118, 'Rial Omani (.Ø±.Ø¹)', 'OMR'),
(119, 'Balboa (B/.)', 'PAB'),
(120, 'Nuevo Sol (S/)', 'PEN'),
(121, 'Kina', 'PGK'),
(122, 'Philippine Peso (â‚±)', 'PHP'),
(123, 'Pakistan Rupee', 'PKR'),
(124, 'Zloty (zÅ‚)', 'PLN'),
(125, 'Guarani (Gs)', 'PYG'),
(126, 'Qatari Rial (.Ø±.Ù‚)', 'QAR'),
(127, 'New Romanian Leu (lei)', 'RON'),
(128, 'Serbian Dinar (Ð”Ð¸Ð½.)', 'RSD'),
(129, 'Russian Ruble (â‚½)', 'RUB'),
(130, 'Russian Ruble (â‚½)', 'RUR'),
(131, 'Rwand Franc', 'RWF'),
(132, 'SAR: Saudi Riyal (.Ø±.Ø³)', 'SAR'),
(133, 'SBD: Solomon Islands Dollar (SI$)', 'SBD'),
(134, 'SCR: Seychelles Rupee', 'SCR'),
(135, 'SDG: Sudanese Pound', 'SDG'),
(136, 'SEK: Swedish Krona', 'SEK'),
(137, 'SGD: Singapore Dollar (S$)', 'SGD'),
(138, 'SHP: Saint Helen Pound', 'SHP'),
(139, 'SLL: Leone ', 'SLL'),
(140, 'SOS: Somali Shilling (S)', 'SOS'),
(141, 'SRD: Surinam Dollar', 'SRD'),
(142, 'SSP: South Sudanese Pound', 'SSP'),
(143, 'STD: Dobra', 'STD'),
(144, 'SVC: El Salvador Colon (C)', 'SVC'),
(145, 'SYP: Syrian Pound (.Ù„.Ø³)', 'SYP'),
(146, 'SZL: Lilangeni', 'SZL'),
(147, 'THB: Baht (à¸¿)', 'THB'),
(148, 'TJS: Somoni', 'TJS'),
(149, 'TMT: Turkmenistan New Manat', 'TMT'),
(150, 'TND: Tunisian Dinar (.Ø¯.Øª)', 'TND'),
(151, 'TOP: Paâ€™anga', 'TOP'),
(152, 'TRL: Turkish Lira', 'TRL'),
(153, 'TRY: Turkish Lira (â‚º)', 'TRY'),
(154, 'TTD: Trinidad and Tobago Dollar (TT$)', 'TTD'),
(155, 'TWD: New Taiwan Dollar (NT$)', 'TWD'),
(156, 'TZS: Tanzanian Shilling (TSh)', 'TZS'),
(157, 'UAH: Hryvnia (â‚´)', 'UAH'),
(158, 'UGX: Ugand Shilling (USh) ', 'UGX'),
(159, 'USD: US Dollar ($)', 'USD'),
(160, 'USN: US Dollar (Next day) ', 'USN'),
(161, 'UYI: Uruguay Peso en Unidades Indexadas (URUIURUI)', 'UYI'),
(162, 'UYU: Peso Uruguayo ($U)', 'UYU'),
(163, 'UZS: Uzbekistan Sum (soâ€™m)', 'UZS'),
(164, 'VEF: Bolivar (Bs)', 'VEF'),
(165, 'VND: Dong (â‚«)', 'VND'),
(166, 'VUV: Vatu', 'VUV'),
(167, 'WST: Tala', 'WST'),
(168, 'XAF: CF Franc BEAC', 'XAF'),
(169, 'XCD: East Caribbean Dollar (EC$)', 'XCD'),
(170, 'XDR: SDR (Special Drawing Right)', 'XDR'),
(171, 'XOF: CF Franc BCEAO', 'XOF'),
(172, 'XPF: CFP Franc', 'XPF'),
(173, 'XSU: Sucre', 'XSU'),
(174, 'XUA: ADB Unit of Account', 'XUA'),
(175, 'YER: Yemeni Rial (.Ø±.ÙŠ)', 'YER'),
(176, 'ZAR: Rand (R) ', 'ZAR'),
(177, 'ZMW: Zambian Kwacha', 'ZMW'),
(178, 'ZWD: Zimbabwe Dollar (Z$)', 'ZWD'),
(179, 'ZWL: Zimbabwe Dollar', 'ZWL');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `created` date NOT NULL,
  `staff_id` int(11) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `namesurname` varchar(255) DEFAULT NULL,
  `taxoffice` varchar(255) DEFAULT NULL,
  `taxnumber` int(11) DEFAULT NULL,
  `ssn` varchar(255) DEFAULT NULL,
  `executive` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  `risk` int(11) DEFAULT '0',
  `status_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `type`, `created`, `staff_id`, `company`, `namesurname`, `taxoffice`, `taxnumber`, `ssn`, `executive`, `address`, `zipcode`, `country_id`, `state`, `city`, `town`, `phone`, `fax`, `email`, `web`, `risk`, `status_id`) VALUES
(1, 0, '2018-04-20', 1, 'EHS', '', 'Incom Tax', 0, '', '', 'bjgbyuyj', '380001', 102, 'Gujarat', 'ahmedabad', 'kadi', '9429525290', '', 'ehs.ravip@gmail.com', '', 0, NULL),
(2, 0, '2018-04-23', 1, 'MIS', '', 'incom tax', 2512542, '', 'Milan', '', '', 102, 'Gujarat', 'Ahmedabad', '', '9737424471', '', 'ehs.milan@gmail.com', '', 0, NULL),
(3, 0, '2018-04-23', 1, 'MIS', '', 'incom tax', 2512542, '', 'Milan', '', '', 102, 'Gujarat', 'Ahmedabad', '', '9737424471', '', 'ehs.milan@gmail.com', '', 0, NULL),
(4, 0, '2018-04-23', 1, 'LE', '', 'adnkdj', 0, '', 'sndsj', '', '380008', 102, 'Gujarat', 'Ahmedabad', 'A', '13789731897319', '1398738971', 'test@gmai.com', 'www.test.com', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`) VALUES
(1, 'Administrator'),
(2, 'Sales Agent'),
(4, 'IT Services');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` mediumtext NOT NULL,
  `detail` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  `staffname` varchar(255) NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `public` varchar(255) DEFAULT '0',
  `reminder` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `expensecat`
--

CREATE TABLE IF NOT EXISTS `expensecat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relation_type` varchar(255) DEFAULT NULL,
  `relation` int(11) DEFAULT '0',
  `title` varchar(500) DEFAULT NULL,
  `description` text,
  `category_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relation_type` varchar(255) NOT NULL,
  `relation` int(11) DEFAULT NULL,
  `file_name` mediumtext NOT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE IF NOT EXISTS `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` mediumtext NOT NULL,
  `no` int(11) DEFAULT NULL,
  `serie` varchar(255) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `expense_id` int(11) DEFAULT NULL,
  `proposal_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `datesend` datetime DEFAULT NULL,
  `datepayment` date DEFAULT NULL,
  `duenote` text,
  `status_id` int(11) DEFAULT NULL,
  `sub_total` decimal(11,2) DEFAULT NULL,
  `total_discount` decimal(11,2) DEFAULT NULL,
  `total_tax` decimal(11,2) DEFAULT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `invoicestatus`
--

CREATE TABLE IF NOT EXISTS `invoicestatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relation_type` varchar(255) DEFAULT NULL,
  `relation` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `quantity` decimal(11,2) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `tax` decimal(11,2) DEFAULT '0.00',
  `discount` decimal(11,2) DEFAULT '0.00',
  `total` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=3 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `relation_type`, `relation`, `product_id`, `code`, `name`, `description`, `quantity`, `unit`, `price`, `tax`, `discount`, `total`) VALUES
(1, 'proposal', 1, 0, '', 'New', '', '1.00', 'Unit', '0.00', '0.00', '0.00', '0.00'),
(2, 'proposal', 1, 0, '', 'New', '', '1.00', 'Unit', '0.00', '0.00', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `langcode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `foldername` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=9 ;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `langcode`, `name`, `foldername`) VALUES
(1, 'de_De', 'Deutsch', 'german'),
(2, 'en_US', 'English', 'english'),
(3, 'es_ES', 'EspaÃ±ol', 'spanish'),
(4, 'fr_FR', 'FranÃ§ais', 'french'),
(5, 'pt-pt', 'PortuguÃªs', 'portuguese_pt'),
(6, 'pt-BR', 'PortuguÃªs do Brasil', 'portuguese_br'),
(7, 'tr_TR', 'TÃ¼rkÃ§e', 'turkish'),
(8, 'ru_RU', 'Ð ÑƒÑÑÐºÐ¸Ð¹', 'russian');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE IF NOT EXISTS `leads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `name` varchar(300) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `company` varchar(300) DEFAULT NULL,
  `description` text,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(15) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `assigned_id` int(11) NOT NULL,
  `created` date NOT NULL,
  `status` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `lastcontact` datetime DEFAULT NULL,
  `dateassigned` date DEFAULT NULL,
  `staff_id` int(11) NOT NULL,
  `dateconverted` datetime DEFAULT NULL,
  `lost` tinyint(1) DEFAULT '0',
  `junk` int(11) DEFAULT '0',
  `public` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=3 ;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `type`, `name`, `title`, `company`, `description`, `country_id`, `zip`, `city`, `state`, `email`, `address`, `website`, `phone`, `assigned_id`, `created`, `status`, `source`, `lastcontact`, `dateassigned`, `staff_id`, `dateconverted`, `lost`, `junk`, `public`) VALUES
(1, 1, 'Harvey Dent', 'Mr', 'Joker co', 'Bbj', 102, '380008', 'Ahmedabad', 'Gujarat', 'd@t.com', 'Gvh', '', '', 1, '2018-04-24', 0, 0, NULL, '2018-04-24', 1, NULL, 0, 0, 0),
(2, 1, 'Harvey Dent', 'Mr', 'Joker co', 'Bbj', 102, '380008', 'Ahmedabad', 'Gujarat', 'd@t.com', 'Gvh', '', '', 1, '2018-04-24', 0, 0, NULL, '2018-04-24', 1, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `leadssources`
--

CREATE TABLE IF NOT EXISTS `leadssources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `leadsstatus`
--

CREATE TABLE IF NOT EXISTS `leadsstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail` mediumtext NOT NULL,
  `date` datetime NOT NULL,
  `staff_id` varchar(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `detail`, `date`, `staff_id`, `customer_id`, `project_id`) VALUES
(0, '<a href="staff/staffmember/1"> Administrator</a> logged in the system', '2018-04-20 15:36:04', '1', NULL, 0),
(1, '<a href="staff/staffmember/1"> Administrator</a> added a customer <a href="customers/customer/1">Customer-1</a>', '2018-04-20 15:38:30', '1', NULL, 0),
(2, '<a href="staff/staffmember/1"> Administrator</a> logged in the system', '2018-04-23 09:03:16', '1', NULL, 0),
(3, '<a href="staff/staffmember/1"> Administrator</a> logged in the system', '2018-04-23 09:05:18', '1', NULL, 0),
(4, 'Administrator added  staff.', '2018-04-23 09:11:02', '1', NULL, 0),
(5, '<a href="staff/staffmember/1"> Administrator</a> updated settings', '2018-04-23 09:11:57', '1', NULL, 0),
(6, '<a href="staff/staffmember/1"> Administrator</a> updated settings', '2018-04-23 09:12:11', '1', NULL, 0),
(7, '<a href="staff/staffmember/2"> Snehal</a> logged in the system', '2018-04-23 09:30:34', '2', NULL, 0),
(8, '<a href="staff/staffmember/2"> Snehal</a> logged in the system', '2018-04-23 09:30:59', '2', NULL, 0),
(9, '<a href="staff/staffmember/1"> Administrator</a> logged in the system', '2018-04-23 09:31:14', '1', NULL, 0),
(10, '<a href="staff/staffmember/2"> Snehal</a> logged in the system', '2018-04-23 09:32:21', '2', NULL, 0),
(11, '<a href="staff/staffmember/1"> Administrator</a> logged in the system', '2018-04-23 09:37:47', '1', NULL, 0),
(12, '<a href="staff/staffmember/1"> Administrator</a> logged in the system', '2018-04-23 09:40:11', '1', NULL, 0),
(13, 'Administrator created new project', '2018-04-23 09:46:05', '1', NULL, 1),
(14, 'Administrator created new project', '2018-04-23 09:46:05', '1', NULL, 2),
(15, '<a href="staff/staffmember/1"> Administrator</a> added a customer <a href="customers/customer/2">Customer-2</a>', '2018-04-23 09:48:58', '1', NULL, 0),
(16, '<a href="staff/staffmember/1"> Administrator</a> added a customer <a href="customers/customer/3">Customer-3</a>', '2018-04-23 09:48:58', '1', NULL, 0),
(17, 'Administrator added milan bhai Soni contacts.', '2018-04-23 09:49:55', '1', 3, 0),
(18, '<a href="staff/staffmember/1"> Administrator</a> updated settings', '2018-04-23 09:54:31', '1', NULL, 0),
(19, '<a href="staff/staffmember/1"> Administrator</a> updated settings', '2018-04-23 09:57:59', '1', NULL, 0),
(20, '<a href="staff/staffmember/1"> Administrator</a> logged in the system', '2018-04-23 18:12:41', '1', NULL, 0),
(21, '<a href="staff/staffmember/1"> Administrator</a> logged in the system', '2018-04-23 18:14:28', '1', NULL, 0),
(22, '<a href="staff/staffmember/1"> Administrator</a> added a customer <a href="customers/customer/4">Customer-4</a>', '2018-04-23 18:16:19', '1', NULL, 0),
(23, '<a href="staff/staffmember/1"> Administrator</a> updated settings', '2018-04-23 18:17:55', '1', NULL, 0),
(24, '<a href="staff/staffmember/1"> Administrator</a> added a new account <a href="accounts/account/1"> Account-1</a>', '2018-04-23 18:18:36', '1', NULL, 0),
(25, '<a href="staff/staffmember/1"> Administrator</a> logged in the system', '2018-04-24 06:03:41', '1', NULL, 0),
(26, '<a href="staff/staffmember/1"> Administrator</a> added <a href="proposals/proposal/1">PRO-1</a>.', '2018-04-24 06:11:37', '1', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `main_menu` int(11) DEFAULT '0',
  `icon` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `show_staff` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `order_id`, `name`, `description`, `main_menu`, `icon`, `url`, `show_staff`) VALUES
(1, 1, 'x_menu_panel', NULL, 0, NULL, 'panel', 0),
(2, 2, 'x_menu_finance', NULL, 0, NULL, NULL, 0),
(3, 3, 'x_menu_customers_and_lead', NULL, 0, NULL, NULL, 0),
(4, 4, 'x_menu_track', NULL, 0, NULL, NULL, 0),
(5, 5, 'x_menu_others', NULL, 0, NULL, NULL, 1),
(6, 6, 'x_menu_calendar', NULL, 0, NULL, 'calendar', 0),
(7, 1, 'x_menu_invoices', 'manage_invoices', 2, 'ico-ciuis-invoices', 'invoices', 0),
(8, 2, 'x_menu_proposals', 'manage_proposals', 2, 'ico-ciuis-proposals', 'proposals', 0),
(9, 3, 'x_menu_expenses', 'manage_expenses', 2, 'ico-ciuis-expenses', 'expenses', 0),
(10, 4, 'x_menu_accounts', 'manage_accounts', 2, 'ico-ciuis-accounts', 'accounts', 1),
(11, 1, 'x_menu_customers', 'manage_customers', 3, 'ico-ciuis-customers', 'customers', 0),
(12, 2, 'x_menu_leads', 'manage_leads', 3, 'ico-ciuis-leads', 'leads', 0),
(13, 1, 'x_menu_projects', 'manage_projects', 4, 'ico-ciuis-projects', 'projects', 0),
(14, 2, 'x_menu_tasks', 'manage_tasks', 4, 'ico-ciuis-tasks', 'tasks', 0),
(15, 3, 'x_menu_tickets', 'manage_tickets', 4, 'ico-ciuis-supports', 'tickets', 0),
(16, 4, 'x_menu_products', 'manage_products', 4, 'ico-ciuis-products', 'products', 0),
(17, 1, 'x_menu_staff', 'manage_staff', 5, 'ico-ciuis-staff', 'staff', 1),
(18, 2, 'x_menu_reports', 'manage_reports', 5, 'ico-ciuis-reports', 'report', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(109);

-- --------------------------------------------------------

--
-- Table structure for table `milestones`
--

CREATE TABLE IF NOT EXISTS `milestones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` int(11) NOT NULL DEFAULT '0',
  `name` varchar(400) NOT NULL,
  `description` text,
  `duedate` date NOT NULL,
  `project_id` int(11) NOT NULL,
  `color` varchar(10) DEFAULT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relation_type` varchar(255) NOT NULL,
  `relation` int(11) NOT NULL,
  `description` text,
  `addedfrom` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `target` varchar(255) NOT NULL,
  `markread` tinyint(2) NOT NULL DEFAULT '0',
  `customerread` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `detail` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `public` int(11) DEFAULT NULL,
  `perres` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `target`, `markread`, `customerread`, `date`, `detail`, `staff_id`, `contact_id`, `customer_id`, `public`, `perres`) VALUES
(1, 'http://zoopapps.com/crm/calendar', 1, 0, '2018-04-23 18:14:11', 'milan bhai wants you to make an appointment.', 1, 0, 0, NULL, 'n-img.png');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transactiontype` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `expense_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `not` text NOT NULL,
  `attachment` mediumtext,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permission`, `key`) VALUES
(1, 'x_menu_invoices', 'invoices'),
(2, 'x_menu_proposals', 'proposals'),
(3, 'x_menu_expenses', 'expenses'),
(4, 'x_menu_accounts', 'accounts'),
(5, 'x_menu_customers', 'customers'),
(6, 'x_menu_leads', 'leads'),
(7, 'x_menu_projects', 'projects'),
(8, 'x_menu_tasks', 'tasks'),
(9, 'x_menu_tickets', 'tickets'),
(10, 'x_menu_products', 'products'),
(11, 'x_menu_staff', 'staff'),
(12, 'x_menu_reports', 'report');

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE IF NOT EXISTS `privileges` (
  `staff_id` int(5) NOT NULL,
  `permission_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`staff_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(2, 1),
(2, 3),
(2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `productimage` varchar(255) DEFAULT NULL,
  `purchase_price` decimal(11,2) NOT NULL,
  `sale_price` decimal(11,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `vat` decimal(11,2) NOT NULL,
  `status_id` enum('0','1') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `projectmembers`
--

CREATE TABLE IF NOT EXISTS `projectmembers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `status_id` int(11) NOT NULL DEFAULT '0',
  `customer_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `deadline` date DEFAULT NULL,
  `created` date NOT NULL,
  `finished` datetime DEFAULT NULL,
  `pinned` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `status_id`, `customer_id`, `invoice_id`, `start_date`, `deadline`, `created`, `finished`, `pinned`, `staff_id`) VALUES
(1, 'MIS', 'this is test project', 1, 1, 0, '2018-04-23', '2018-06-07', '2018-04-23', NULL, 0, 1),
(2, 'MIS', 'this is test project', 1, 1, 0, '2018-04-23', '2018-06-07', '2018-04-23', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `proposals`
--

CREATE TABLE IF NOT EXISTS `proposals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` mediumtext NOT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `content` longtext,
  `date` date NOT NULL,
  `created` date NOT NULL,
  `opentill` date DEFAULT NULL,
  `relation_type` varchar(255) DEFAULT NULL,
  `relation` int(11) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `datesend` datetime DEFAULT NULL,
  `comment` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT '0',
  `invoice_id` int(11) DEFAULT NULL,
  `dateconverted` datetime DEFAULT NULL,
  `sub_total` decimal(11,2) DEFAULT NULL,
  `total_discount` decimal(11,2) DEFAULT NULL,
  `total_tax` decimal(11,2) DEFAULT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=2 ;

--
-- Dumping data for table `proposals`
--

INSERT INTO `proposals` (`id`, `token`, `subject`, `content`, `date`, `created`, `opentill`, `relation_type`, `relation`, `assigned`, `addedfrom`, `datesend`, `comment`, `status_id`, `invoice_id`, `dateconverted`, `sub_total`, `total_discount`, `total_tax`, `total`) VALUES
(1, '5032fc4021fe3817d4032003ff9571f2', 'Nsnms', 'Sghs', '2018-04-25', '2018-04-25', '2018-04-28', 'lead', 2, 2, 1, '0000-00-00 00:00:00', 1, 2, NULL, NULL, '0.00', '0.00', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `recurring`
--

CREATE TABLE IF NOT EXISTS `recurring` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relation_type` varchar(255) NOT NULL,
  `relation` int(11) NOT NULL DEFAULT '0',
  `period` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '0 = day | 1 = week | 2 = month | 3 = years',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_date` varchar(250) DEFAULT 'Invalid date',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE IF NOT EXISTS `reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relation_type` varchar(255) NOT NULL,
  `relation` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `description` text,
  `date` datetime NOT NULL,
  `isnotified` int(11) NOT NULL DEFAULT '0',
  `addedfrom` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('06hsj3klm29fth93vh29ic8166hg0jp5', '54.85.176.102', 1524465378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343436353337383b),
('2emkrhbds9qml8h4i0vouinnj6tbnnto', '180.211.104.110', 1524465445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343436353434353b7573725f69647c733a313a2232223b73746166666e616d657c733a363a22536e6568616c223b656d61696c7c733a32303a22736e6568616c2e65687340676d61696c2e636f6d223b726f6f747c4e3b6c616e67756167657c733a373a22656e676c697368223b61646d696e7c4e3b73746166666d656d6265727c733a313a2231223b73746166666176617461727c733a393a226e2d696d672e6a7067223b4c6f67696e4f4b7c623a313b),
('2t97l3gp8reprpdbch7pq4j00biojs1s', '64.233.173.141', 1524465493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343436353433383b7573725f69647c733a313a2231223b73746166666e616d657c733a31333a2241646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b726f6f747c4e3b6c616e67756167657c733a373a22656e676c697368223b61646d696e7c733a313a2231223b73746166666d656d6265727c4e3b73746166666176617461727c733a363a22706d2e6a7067223b4c6f67696e4f4b7c623a313b),
('7hjvftpvcnr7g5n0o1ha2885928j62vi', '180.211.104.110', 1524466201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343436363230313b7573725f69647c733a313a2232223b73746166666e616d657c733a363a22536e6568616c223b656d61696c7c733a32303a22736e6568616c2e65687340676d61696c2e636f6d223b726f6f747c4e3b6c616e67756167657c733a373a22656e676c697368223b61646d696e7c4e3b73746166666d656d6265727c733a313a2231223b73746166666176617461727c733a393a226e2d696d672e6a7067223b4c6f67696e4f4b7c623a313b),
('9p1sj3gn5b7fv68if0lnruoomns983cs', '180.211.104.110', 1524561007, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343536313030373b),
('dc57j73ep58frhf58easig55bopvljt9', '180.211.104.110', 1524463862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343436333836323b7573725f69647c733a313a2231223b73746166666e616d657c733a31333a2241646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b726f6f747c4e3b6c616e67756167657c733a373a22656e676c697368223b61646d696e7c733a313a2231223b73746166666d656d6265727c4e3b73746166666176617461727c733a363a22706d2e6a7067223b4c6f67696e4f4b7c623a313b),
('dp03h7b1g9lgtotvvg8sbli36u9v8a4l', '49.34.91.221', 1524539501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343533393432323b7573725f69647c733a313a2231223b73746166666e616d657c733a31333a2241646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b726f6f747c4e3b6c616e67756167657c733a373a22656e676c697368223b61646d696e7c733a313a2231223b73746166666d656d6265727c4e3b73746166666176617461727c733a363a22706d2e6a7067223b4c6f67696e4f4b7c623a313b),
('huqoiic7si0m8j95u8f6c1pskoerda0h', '180.211.104.110', 1524560979, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343536303937393b),
('jbhi7kopg2199chdhk7llnv2rpdqmjde', '180.211.104.110', 1524464428, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343436343335383b),
('k9ko0urd53d7f2shraevq17cjh02tdpc', '180.211.104.110', 1524466841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343436363834313b7573725f69647c733a313a2231223b73746166666e616d657c733a31333a2241646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b726f6f747c4e3b6c616e67756167657c733a373a22656e676c697368223b61646d696e7c733a313a2231223b73746166666d656d6265727c4e3b73746166666176617461727c733a363a22706d2e6a7067223b4c6f67696e4f4b7c623a313b),
('l9to5fll248jnchj1p6m8omt02n1inrh', '64.233.173.142', 1524539423, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343533393432323b7573725f69647c733a313a2231223b73746166666e616d657c733a31333a2241646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b726f6f747c4e3b6c616e67756167657c733a373a22656e676c697368223b61646d696e7c733a313a2231223b73746166666d656d6265727c4e3b73746166666176617461727c733a363a22706d2e6a7067223b4c6f67696e4f4b7c623a313b),
('lcjjjivktpivqgvemh0094a3o86plpe7', '180.211.104.110', 1524464857, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343436343835373b7573725f69647c733a313a2231223b73746166666e616d657c733a31333a2241646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b726f6f747c4e3b6c616e67756167657c733a373a22656e676c697368223b61646d696e7c733a313a2231223b73746166666d656d6265727c4e3b73746166666176617461727c733a363a22706d2e6a7067223b4c6f67696e4f4b7c623a313b),
('ls3l795eqe598piph7jl5qa3onu0ge34', '180.211.104.110', 1524472143, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343437323134333b636f6e746163745f69647c693a313b637573746f6d65727c693a333b6e616d657c733a31303a226d696c616e2062686169223b7375726e616d657c733a343a22536f6e69223b656d61696c7c733a31393a226568732e6d696c616e40676d61696c2e636f6d223b6c6f676765645f696e7c623a313b),
('rblfono0ssdt3aabn15uvk278m2bc830', '180.211.104.110', 1524465926, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343436353932363b7573725f69647c733a313a2231223b73746166666e616d657c733a31333a2241646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b726f6f747c4e3b6c616e67756167657c733a373a22656e676c697368223b61646d696e7c733a313a2231223b73746166666d656d6265727c4e3b73746166666176617461727c733a363a22706d2e6a7067223b4c6f67696e4f4b7c623a313b),
('rl16su8povahs9mc2ui6ot7uoke029fb', '180.211.104.110', 1524472143, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343437323134333b636f6e746163745f69647c693a313b637573746f6d65727c693a333b6e616d657c733a31303a226d696c616e2062686169223b7375726e616d657c733a343a22536f6e69223b656d61696c7c733a31393a226568732e6d696c616e40676d61696c2e636f6d223b6c6f676765645f696e7c623a313b),
('rt92p31gufmq0pbtgaqhuupotvqpr8er', '180.211.104.110', 1524466446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343436363434363b7573725f69647c733a313a2231223b73746166666e616d657c733a31333a2241646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b726f6f747c4e3b6c616e67756167657c733a373a22656e676c697368223b61646d696e7c733a313a2231223b73746166666d656d6265727c4e3b73746166666176617461727c733a363a22706d2e6a7067223b4c6f67696e4f4b7c623a313b),
('tk5euk544bub1up60drajc8fctclobad', '180.211.104.110', 1524472414, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343437323234363b7573725f69647c733a313a2231223b73746166666e616d657c733a31333a2241646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b726f6f747c4e3b6c616e67756167657c733a373a22656e676c697368223b61646d696e7c733a313a2231223b73746166666d656d6265727c4e3b73746166666176617461727c733a363a22706d2e6a7067223b4c6f67696e4f4b7c623a313b),
('ul7bsppatidtjshnttdoqq3uk4psepe0', '115.248.33.61', 1524496722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343439363435363b7573725f69647c733a313a2231223b73746166666e616d657c733a31333a2241646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b726f6f747c4e3b6c616e67756167657c733a373a22656e676c697368223b61646d696e7c733a313a2231223b73746166666d656d6265727c4e3b73746166666176617461727c733a363a22706d2e6a7067223b4c6f67696e4f4b7c623a313b),
('vivc5628drhhg8k6mcj58beqgrr3fsgc', '180.211.104.110', 1524472246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343437323234363b7573725f69647c733a313a2231223b73746166666e616d657c733a31333a2241646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b726f6f747c4e3b6c616e67756167657c733a373a22656e676c697368223b61646d696e7c733a313a2231223b73746166666d656d6265727c4e3b73746166666176617461727c733a363a22706d2e6a7067223b4c6f67696e4f4b7c623a313b),
('vnrt7umhdt6hfgp718fcdm27lu2uma9k', '180.211.104.110', 1524465784, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343436353738343b7573725f69647c733a313a2232223b73746166666e616d657c733a363a22536e6568616c223b656d61696c7c733a32303a22736e6568616c2e65687340676d61696c2e636f6d223b726f6f747c4e3b6c616e67756167657c733a373a22656e676c697368223b61646d696e7c4e3b73746166666d656d6265727c733a313a2231223b73746166666176617461727c733a393a226e2d696d672e6a7067223b4c6f67696e4f4b7c623a313b);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `settingname` varchar(255) NOT NULL,
  `crm_name` varchar(255) NOT NULL DEFAULT 'Ciuisâ„¢ CRM',
  `company` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) NOT NULL,
  `taxoffice` varchar(255) DEFAULT NULL,
  `vatnumber` varchar(255) DEFAULT NULL,
  `unitseparator` varchar(255) NOT NULL DEFAULT '.',
  `currencyid` int(11) NOT NULL,
  `currencyposition` varchar(255) NOT NULL,
  `termtitle` varchar(255) NOT NULL,
  `termdescription` varchar(255) NOT NULL,
  `dateformat` varchar(255) DEFAULT NULL,
  `default_timezone` varchar(255) NOT NULL,
  `languageid` varchar(255) NOT NULL,
  `smtphost` varchar(255) DEFAULT NULL,
  `smtpport` varchar(255) DEFAULT NULL,
  `emailcharset` varchar(255) DEFAULT NULL,
  `smtpusername` varchar(255) DEFAULT NULL,
  `smtppassoword` varchar(255) DEFAULT NULL,
  `sendermail` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `accepted_files_formats` varchar(255) NOT NULL DEFAULT 'jpg,jpeg,doc,png,txt,docx',
  `allowed_ip_adresses` varchar(255) DEFAULT NULL,
  `pushState` int(11) NOT NULL,
  `voicenotification` int(11) NOT NULL,
  `paypalenable` int(11) NOT NULL,
  `paypalemail` varchar(255) DEFAULT NULL,
  `paypalsandbox` int(11) NOT NULL,
  `paypalcurrency` varchar(255) DEFAULT NULL,
  `converted_lead_status_id` int(11) DEFAULT NULL,
  `two_factor_authentication` int(11) NOT NULL,
  PRIMARY KEY (`settingname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settingname`, `crm_name`, `company`, `email`, `address`, `country_id`, `state`, `city`, `town`, `zipcode`, `phone`, `fax`, `taxoffice`, `vatnumber`, `unitseparator`, `currencyid`, `currencyposition`, `termtitle`, `termdescription`, `dateformat`, `default_timezone`, `languageid`, `smtphost`, `smtpport`, `emailcharset`, `smtpusername`, `smtppassoword`, `sendermail`, `logo`, `accepted_files_formats`, `allowed_ip_adresses`, `pushState`, `voicenotification`, `paypalenable`, `paypalemail`, `paypalsandbox`, `paypalcurrency`, `converted_lead_status_id`, `two_factor_authentication`) VALUES
('ciuis', 'ZOOP CRM', 'Acme Business INC', 'info@businessaddress.com', 'P.O. Box 929 4189 Nunc RoadLebanon KY 69409', 236, 'DC', 'New York', 'New Jersey', '34400', '+1 (389) 737-2852', '+1 (389) 737-2852', 'New York Tax Office', '4530685631', '.', 72, 'before', 'Terms & Conditions', 'Maecenas facilisis ultrices purus non vehicula. Nulla dignissim enim a libero tincidunt, consequat molestie nisi mattis. Phasellus scelerisque fringilla lectus vel tempor.', 'dd.mm.yy', 'Europe/Istanbul', 'english', 'mail.zoopapps.com', '587', 'utf-8', 'milan@zoopapps.com', 'milan@123..', 'milan@zoopapps.com', 'ciuis-icon.png', 'zip|rar|tar|gif|jpg|png|jpeg|pdf|doc|docx|xls|xlsx|mp4|txt|csv|ppt|opt', '', 0, 0, 1, 'yourpaypal@example.com', 0, 'INR', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `staffname` varchar(255) DEFAULT NULL,
  `staffavatar` varchar(300) DEFAULT 'n-img.jpg',
  `department_id` int(11) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birthday` date NOT NULL,
  `password` varchar(100) NOT NULL,
  `root` tinyint(1) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `staffmember` tinyint(1) DEFAULT NULL,
  `last_login` datetime NOT NULL,
  `appointment_availability` int(11) NOT NULL,
  `inactive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=3 ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `role_id`, `language`, `staffname`, `staffavatar`, `department_id`, `phone`, `address`, `email`, `birthday`, `password`, `root`, `admin`, `staffmember`, `last_login`, `appointment_availability`, `inactive`) VALUES
(1, 1, 'english', 'Administrator', 'pm.jpg', 1, '+1-202-555-0160', '71 Pilgrim Avenue Chevy Chase, MD 20815', 'admin@gmail.com', '1992-12-05', '63a9f0ea7bb98050796b649e85481845', NULL, 1, NULL, '2017-08-05 03:02:42', 1, NULL),
(2, 0, 'english', 'Snehal', 'snehal.jpg', 2, '8866739817', 'ahmedabad', 'snehal.ehs@gmail.com', '1993-08-02', '63a9f0ea7bb98050796b649e85481845', NULL, NULL, 1, '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subtasks`
--

CREATE TABLE IF NOT EXISTS `subtasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskid` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `finished` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `staff_id` int(11) NOT NULL,
  `complete` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext,
  `description` text,
  `priority` int(11) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `startdate` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `datefinished` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT '0',
  `relation` int(11) DEFAULT NULL,
  `relation_type` varchar(30) DEFAULT NULL,
  `public` tinyint(1) DEFAULT '0',
  `billable` tinyint(1) DEFAULT '0',
  `billed` tinyint(1) DEFAULT '0',
  `hourly_rate` decimal(11,2) DEFAULT '0.00',
  `milestone` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '0',
  `timer` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tasktimer`
--

CREATE TABLE IF NOT EXISTS `tasktimer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `start` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `end` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `timed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reason` text,
  `project_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ticketreplies`
--

CREATE TABLE IF NOT EXISTS `ticketreplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `message` text,
  `attachment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `customer_id` int(11) NOT NULL,
  `email` text,
  `department_id` int(11) NOT NULL,
  `priority` enum('1','2','3') NOT NULL,
  `status_id` enum('1','2','3','4') NOT NULL,
  `subject` varchar(300) NOT NULL,
  `message` text,
  `date` datetime NOT NULL,
  `lastreply` datetime DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `staff_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE IF NOT EXISTS `todo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `done` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`id`, `description`, `staff_id`, `date`, `done`) VALUES
(1, 'test todo', 2, '2018-04-23 09:39:10', 1),
(2, 'test todo2', 2, '2018-04-23 09:39:26', 0),
(3, 'sdsddsds', 1, '2018-04-23 18:16:59', 0),
(4, 'sdsddsds', 1, '2018-04-23 18:16:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE IF NOT EXISTS `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `user_id` int(10) NOT NULL,
  `contact_id` int(10) NOT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
