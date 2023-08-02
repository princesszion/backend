-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2023 at 07:32 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `age_range`
--

CREATE TABLE `age_range` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `range_age` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `age_range`
--

INSERT INTO `age_range` (`id`, `name`, `range_age`) VALUES
(1, 'Children', '(0-15)years'),
(2, 'Youth', '(16-35)years'),
(3, 'Adult', '36 years+');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add age range', 1, 'add_agerange'),
(2, 'Can change age range', 1, 'change_agerange'),
(3, 'Can delete age range', 1, 'delete_agerange'),
(4, 'Can view age range', 1, 'view_agerange'),
(5, 'Can add crop group', 2, 'add_cropgroup'),
(6, 'Can change crop group', 2, 'change_cropgroup'),
(7, 'Can delete crop group', 2, 'delete_cropgroup'),
(8, 'Can view crop group', 2, 'view_cropgroup'),
(9, 'Can add district', 3, 'add_district'),
(10, 'Can change district', 3, 'change_district'),
(11, 'Can delete district', 3, 'delete_district'),
(12, 'Can view district', 3, 'view_district'),
(13, 'Can add enterprise size', 4, 'add_enterprisesize'),
(14, 'Can change enterprise size', 4, 'change_enterprisesize'),
(15, 'Can delete enterprise size', 4, 'delete_enterprisesize'),
(16, 'Can view enterprise size', 4, 'view_enterprisesize'),
(17, 'Can add gender', 5, 'add_gender'),
(18, 'Can change gender', 5, 'change_gender'),
(19, 'Can delete gender', 5, 'delete_gender'),
(20, 'Can view gender', 5, 'view_gender'),
(21, 'Can add indicators groups', 6, 'add_indicatorsgroups'),
(22, 'Can change indicators groups', 6, 'change_indicatorsgroups'),
(23, 'Can delete indicators groups', 6, 'delete_indicatorsgroups'),
(24, 'Can view indicators groups', 6, 'view_indicatorsgroups'),
(25, 'Can add province', 7, 'add_province'),
(26, 'Can change province', 7, 'change_province'),
(27, 'Can delete province', 7, 'delete_province'),
(28, 'Can view province', 7, 'view_province'),
(29, 'Can add seasons', 8, 'add_seasons'),
(30, 'Can change seasons', 8, 'change_seasons'),
(31, 'Can delete seasons', 8, 'delete_seasons'),
(32, 'Can view seasons', 8, 'view_seasons'),
(33, 'Can add sector of economic activity', 9, 'add_sectorofeconomicactivity'),
(34, 'Can change sector of economic activity', 9, 'change_sectorofeconomicactivity'),
(35, 'Can delete sector of economic activity', 9, 'delete_sectorofeconomicactivity'),
(36, 'Can view sector of economic activity', 9, 'view_sectorofeconomicactivity'),
(37, 'Can add sectors of employment', 10, 'add_sectorsofemployment'),
(38, 'Can change sectors of employment', 10, 'change_sectorsofemployment'),
(39, 'Can delete sectors of employment', 10, 'delete_sectorsofemployment'),
(40, 'Can view sectors of employment', 10, 'view_sectorsofemployment'),
(41, 'Can add source', 11, 'add_source'),
(42, 'Can change source', 11, 'change_source'),
(43, 'Can delete source', 11, 'delete_source'),
(44, 'Can view source', 11, 'view_source'),
(45, 'Can add themes', 12, 'add_themes'),
(46, 'Can change themes', 12, 'change_themes'),
(47, 'Can delete themes', 12, 'delete_themes'),
(48, 'Can view themes', 12, 'view_themes'),
(49, 'Can add unit', 13, 'add_unit'),
(50, 'Can change unit', 13, 'change_unit'),
(51, 'Can delete unit', 13, 'delete_unit'),
(52, 'Can view unit', 13, 'view_unit'),
(53, 'Can add urbanization', 14, 'add_urbanization'),
(54, 'Can change urbanization', 14, 'change_urbanization'),
(55, 'Can delete urbanization', 14, 'delete_urbanization'),
(56, 'Can view urbanization', 14, 'view_urbanization'),
(57, 'Can add years', 15, 'add_years'),
(58, 'Can change years', 15, 'change_years'),
(59, 'Can delete years', 15, 'delete_years'),
(60, 'Can view years', 15, 'view_years'),
(61, 'Can add indicators', 16, 'add_indicators'),
(62, 'Can change indicators', 16, 'change_indicators'),
(63, 'Can delete indicators', 16, 'delete_indicators'),
(64, 'Can view indicators', 16, 'view_indicators'),
(65, 'Can add crops', 17, 'add_crops'),
(66, 'Can change crops', 17, 'change_crops'),
(67, 'Can delete crops', 17, 'delete_crops'),
(68, 'Can view crops', 17, 'view_crops'),
(69, 'Can add log entry', 18, 'add_logentry'),
(70, 'Can change log entry', 18, 'change_logentry'),
(71, 'Can delete log entry', 18, 'delete_logentry'),
(72, 'Can view log entry', 18, 'view_logentry'),
(73, 'Can add permission', 19, 'add_permission'),
(74, 'Can change permission', 19, 'change_permission'),
(75, 'Can delete permission', 19, 'delete_permission'),
(76, 'Can view permission', 19, 'view_permission'),
(77, 'Can add group', 20, 'add_group'),
(78, 'Can change group', 20, 'change_group'),
(79, 'Can delete group', 20, 'delete_group'),
(80, 'Can view group', 20, 'view_group'),
(81, 'Can add user', 21, 'add_user'),
(82, 'Can change user', 21, 'change_user'),
(83, 'Can delete user', 21, 'delete_user'),
(84, 'Can view user', 21, 'view_user'),
(85, 'Can add content type', 22, 'add_contenttype'),
(86, 'Can change content type', 22, 'change_contenttype'),
(87, 'Can delete content type', 22, 'delete_contenttype'),
(88, 'Can view content type', 22, 'view_contenttype'),
(89, 'Can add session', 23, 'add_session'),
(90, 'Can change session', 23, 'change_session'),
(91, 'Can delete session', 23, 'delete_session'),
(92, 'Can view session', 23, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

CREATE TABLE `crops` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` int(11) NOT NULL,
  `crop_group_id` bigint(20) NOT NULL,
  `indicator_id` bigint(20) NOT NULL,
  `season_id` bigint(20) NOT NULL,
  `unit_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crop_group`
--

CREATE TABLE `crop_group` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` int(11) NOT NULL,
  `indicator_id` bigint(20) NOT NULL,
  `years_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` bigint(20) NOT NULL,
  `name` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `name`) VALUES
(1, 'Nyarugenge'),
(2, 'Gasabo'),
(3, 'Kicukiro'),
(4, 'Rubavu'),
(5, 'Nyanza'),
(6, 'Nyabihu'),
(7, 'Gisagara'),
(8, 'Ngororero'),
(9, 'Nyaruguru'),
(10, 'Rusizi'),
(11, 'Huye'),
(12, 'Nyamasheke'),
(13, 'Nyamagabe'),
(14, 'Rulindo'),
(15, 'Ruhango'),
(16, 'Gakenke'),
(17, 'Muhanga'),
(18, 'Musanze'),
(19, 'Kamonyi'),
(20, 'Burera'),
(21, 'Karongi'),
(22, 'Rutsiro'),
(23, 'Gicumbi'),
(24, 'Rwamagana'),
(25, 'Nyagatare'),
(26, 'Gatsibo'),
(27, 'Kayonza'),
(28, 'Kirehe'),
(29, 'Ngoma'),
(30, 'Bugesera'),
(36, 'None');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(18, 'admin', 'logentry'),
(20, 'auth', 'group'),
(19, 'auth', 'permission'),
(21, 'auth', 'user'),
(22, 'contenttypes', 'contenttype'),
(1, 'indicators', 'agerange'),
(2, 'indicators', 'cropgroup'),
(17, 'indicators', 'crops'),
(3, 'indicators', 'district'),
(4, 'indicators', 'enterprisesize'),
(5, 'indicators', 'gender'),
(16, 'indicators', 'indicators'),
(6, 'indicators', 'indicatorsgroups'),
(7, 'indicators', 'province'),
(8, 'indicators', 'seasons'),
(9, 'indicators', 'sectorofeconomicactivity'),
(10, 'indicators', 'sectorsofemployment'),
(11, 'indicators', 'source'),
(12, 'indicators', 'themes'),
(13, 'indicators', 'unit'),
(14, 'indicators', 'urbanization'),
(15, 'indicators', 'years'),
(23, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-08-01 13:16:21.307852'),
(2, 'auth', '0001_initial', '2023-08-01 13:16:21.704487'),
(3, 'admin', '0001_initial', '2023-08-01 13:16:21.800365'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-08-01 13:16:21.808343'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-01 13:16:21.816756'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-08-01 13:16:21.886570'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-08-01 13:16:21.930453'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-08-01 13:16:21.954388'),
(9, 'auth', '0004_alter_user_username_opts', '2023-08-01 13:16:21.962367'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-08-01 13:16:22.013230'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-08-01 13:16:22.015225'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-08-01 13:16:22.025199'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-08-01 13:16:22.044509'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-08-01 13:16:22.064095'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-08-01 13:16:22.088032'),
(16, 'auth', '0011_update_proxy_permissions', '2023-08-01 13:16:22.096011'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-08-01 13:16:22.116054'),
(18, 'indicators', '0001_initial', '2023-08-01 13:16:22.935864'),
(19, 'sessions', '0001_initial', '2023-08-01 13:16:22.973035');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enterprise_size`
--

CREATE TABLE `enterprise_size` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enterprise_size`
--

INSERT INTO `enterprise_size` (`id`, `name`, `size`) VALUES
(1, 'micro', '(1-3)'),
(2, 'small ', '(4-30)'),
(3, 'medium', '(1-3)'),
(4, 'large', '(100+)');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `name`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `indicators`
--

CREATE TABLE `indicators` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` double DEFAULT NULL,
  `age_range_id` bigint(20) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  `gender_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  `sector_of_employment_id` bigint(20) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `theme_id` bigint(20) DEFAULT NULL,
  `unit_id` bigint(20) DEFAULT NULL,
  `urbanisation_id` bigint(20) DEFAULT NULL,
  `year_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `indicators`
--

INSERT INTO `indicators` (`id`, `name`, `value`, `age_range_id`, `district_id`, `gender_id`, `group_id`, `province_id`, `sector_of_employment_id`, `source_id`, `theme_id`, `unit_id`, `urbanisation_id`, `year_id`) VALUES
(1, 'Fertility rate (pregnancies)', 4.8, 1, 17, 2, 7, 2, 2, 1, 11, 3, 1, 1),
(2, 'Fertility rate (pregnancies)', 31.200000000000003, 1, 17, 2, 7, 2, 2, 1, 11, 3, 1, 3),
(3, '      Urban', 3.65, 1, 17, 2, 7, 2, 2, 1, 11, 3, 1, 1),
(4, '      Urban', 31.200000000000003, 1, 17, 2, 7, 2, 2, 1, 11, 3, 1, 3),
(5, '      Rural', 5, 1, 17, 2, 7, 2, 2, 1, 11, 3, 1, 1),
(6, '      Rural', 31.200000000000003, 1, 17, 2, 7, 2, 2, 1, 11, 3, 1, 3),
(7, '% of disability', 5, 1, 17, 2, 7, 2, 2, 1, 11, 3, 1, 1),
(8, '% of disability', 31.200000000000003, 1, 17, 2, 7, 2, 2, 1, 11, 3, 1, 3),
(9, 'Mean time (in minutes, on foot) to health center', 5, 1, 17, 2, 7, 2, 2, 1, 11, 3, 1, 1),
(10, 'Mean time (in minutes, on foot) to health center', 56.5, 1, 17, 2, 7, 2, 2, 1, 11, 3, 1, 3),
(11, '      Urban', 5, 1, 17, 2, 7, 1, 2, 1, 11, 3, 1, 1),
(12, '      Urban', 31.200000000000003, 1, 17, 2, 7, 1, 2, 1, 11, 3, 1, 3),
(13, '      Rural', 5, 1, 21, 2, 7, 1, 2, 1, 11, 3, 1, 1),
(14, '      Rural', 61.2, 1, 21, 2, 7, 1, 2, 1, 11, 3, 1, 3),
(15, '% of population with health insurance', 5, 1, 21, 2, 7, 1, 1, 1, 11, 3, 1, 1),
(16, '% of population with health insurance', 0.7, 1, 21, 2, 7, 1, 1, 1, 11, 3, 1, 3),
(17, '      RAMA', 5, 1, 21, 2, 7, 1, 1, 1, 11, 3, 1, 1),
(18, '      RAMA', 0.044, 1, 21, 2, 7, 1, 1, 1, 11, 3, 1, 3),
(19, '      Mutual insurance', 5, 1, 21, 2, 7, 3, 1, 1, 13, 3, 1, 1),
(20, '      Mutual insurance', 0.94, 1, 21, 2, 7, 3, 1, 1, 13, 3, 1, 3),
(21, '      Employer', 5, 1, 21, 2, 7, 3, 1, 1, 13, 3, 1, 1),
(22, '      Employer', 0.004, 1, 21, 2, 7, 3, 1, 1, 13, 3, 1, 3),
(23, '      MMI', 5, 1, 21, 2, 7, 3, 1, 1, 13, 3, 1, 1),
(24, '      MMI', 0.008, 1, 21, 2, 7, 3, 1, 1, 13, 3, 1, 3),
(25, '      Other insurance', 5, 1, 21, 2, 7, 3, 1, 1, 13, 3, 1, 1),
(26, '      Other insurance', 0.005, 1, 21, 2, 7, 3, 1, 1, 13, 3, 1, 3),
(27, 'Made medical consultation', 5, 1, 21, 2, 7, 3, 1, 1, 13, 3, 1, 1),
(28, 'Made medical consultation', 0.559, 1, 21, 2, 7, 3, 1, 1, 13, 3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `indicators_groups`
--

CREATE TABLE `indicators_groups` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `indicators_groups`
--

INSERT INTO `indicators_groups` (`id`, `name`) VALUES
(1, 'Poverty'),
(2, 'Extreme Poverty'),
(4, 'Consumption per adult equivalent (thousands)'),
(5, 'Ever been to school - national'),
(6, 'main_indicators'),
(7, 'water');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `name`) VALUES
(1, 'kigali'),
(2, 'northern'),
(3, 'southern'),
(4, 'western'),
(5, 'eastern');

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE `seasons` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seasons`
--

INSERT INTO `seasons` (`id`, `name`) VALUES
(1, 'Season A'),
(2, 'Season B'),
(3, 'Season C');

-- --------------------------------------------------------

--
-- Table structure for table `sectors_of_employment`
--

CREATE TABLE `sectors_of_employment` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sectors_of_employment`
--

INSERT INTO `sectors_of_employment` (`id`, `name`) VALUES
(1, 'Formal'),
(2, 'Informal');

-- --------------------------------------------------------

--
-- Table structure for table `sector_of_economic_activity`
--

CREATE TABLE `sector_of_economic_activity` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sector_of_economic_activity`
--

INSERT INTO `sector_of_economic_activity` (`id`, `name`) VALUES
(1, 'Employed population'),
(2, 'Agriculture, forestry and fishing'),
(3, 'Mining and quarrying'),
(4, 'Manufacturing'),
(5, 'Electricity, gas, steam and air conditioning supply'),
(6, 'Water supply, sewerage and waste management'),
(7, 'Construction'),
(8, 'Wholesale, retail trade, repair of motor vehicles, motorcycles');

-- --------------------------------------------------------

--
-- Table structure for table `source`
--

CREATE TABLE `source` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `source`
--

INSERT INTO `source` (`id`, `name`) VALUES
(1, 'NISR_SAS'),
(2, 'World Development Indicators, (World Bank)'),
(3, 'Establishment Census, 2017 (NISR)');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`) VALUES
(1, 'Demographics'),
(2, 'Education'),
(3, 'Health_Energy_Sanitation'),
(4, 'Technology'),
(5, 'labor'),
(6, 'Macroeconomy'),
(7, 'Agriculture'),
(8, 'Trade'),
(9, 'Investment'),
(10, 'Establishment'),
(11, 'Climate & Environment'),
(13, 'Financial Inclusion');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id` bigint(20) NOT NULL,
  `name` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `name`) VALUES
(1, 'Percentage'),
(2, 'Kg/Ha'),
(3, 'Kg');

-- --------------------------------------------------------

--
-- Table structure for table `urbanization`
--

CREATE TABLE `urbanization` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `urbanization`
--

INSERT INTO `urbanization` (`id`, `name`) VALUES
(1, 'rural'),
(2, 'urban');

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` bigint(20) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `name`) VALUES
(1, 2000),
(2, 2001),
(3, 2002),
(4, 2003),
(5, 2004),
(6, 2005),
(7, 2006),
(8, 2007),
(9, 2008),
(10, 2009),
(11, 2010),
(12, 2011),
(13, 2012),
(14, 2013),
(15, 2015),
(16, 2016),
(17, 2017),
(18, 2018),
(19, 2019),
(20, 2020),
(21, 2021),
(22, 2022);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `age_range`
--
ALTER TABLE `age_range`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `crops`
--
ALTER TABLE `crops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crops_crop_group_id_0e579826_fk_crop_group_id` (`crop_group_id`),
  ADD KEY `crops_indicator_id_59d75430_fk_indicators_id` (`indicator_id`),
  ADD KEY `crops_season_id_656e1663_fk_seasons_id` (`season_id`),
  ADD KEY `crops_unit_id_766b18ba_fk_unit_id` (`unit_id`);

--
-- Indexes for table `crop_group`
--
ALTER TABLE `crop_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crop_group_indicator_id_093f1afa_fk_indicators_id` (`indicator_id`),
  ADD KEY `crop_group_years_id_00cf8cba_fk_years_id` (`years_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `enterprise_size`
--
ALTER TABLE `enterprise_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indicators`
--
ALTER TABLE `indicators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indicators_age_range_id_8d372468_fk_age_range_id` (`age_range_id`),
  ADD KEY `indicators_district_id_92145029_fk_district_id` (`district_id`),
  ADD KEY `indicators_gender_id_0732920c_fk_gender_id` (`gender_id`),
  ADD KEY `indicators_group_id_d99e8008_fk_indicators_groups_id` (`group_id`),
  ADD KEY `indicators_province_id_7ce09d9a_fk_province_id` (`province_id`),
  ADD KEY `indicators_sector_of_employment_dbb5c4a2_fk_sectors_o` (`sector_of_employment_id`),
  ADD KEY `indicators_source_id_2692e819_fk_source_id` (`source_id`),
  ADD KEY `indicators_theme_id_3eed8133_fk_themes_id` (`theme_id`),
  ADD KEY `indicators_unit_id_1d39fc7c_fk_unit_id` (`unit_id`),
  ADD KEY `indicators_urbanisation_id_76f4b180_fk_urbanization_id` (`urbanisation_id`),
  ADD KEY `indicators_year_id_03043d5c_fk_years_id` (`year_id`);

--
-- Indexes for table `indicators_groups`
--
ALTER TABLE `indicators_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectors_of_employment`
--
ALTER TABLE `sectors_of_employment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sector_of_economic_activity`
--
ALTER TABLE `sector_of_economic_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `source`
--
ALTER TABLE `source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `urbanization`
--
ALTER TABLE `urbanization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `age_range`
--
ALTER TABLE `age_range`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crops`
--
ALTER TABLE `crops`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crop_group`
--
ALTER TABLE `crop_group`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `enterprise_size`
--
ALTER TABLE `enterprise_size`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `indicators`
--
ALTER TABLE `indicators`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `indicators_groups`
--
ALTER TABLE `indicators_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sectors_of_employment`
--
ALTER TABLE `sectors_of_employment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sector_of_economic_activity`
--
ALTER TABLE `sector_of_economic_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `source`
--
ALTER TABLE `source`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `urbanization`
--
ALTER TABLE `urbanization`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `crops`
--
ALTER TABLE `crops`
  ADD CONSTRAINT `crops_crop_group_id_0e579826_fk_crop_group_id` FOREIGN KEY (`crop_group_id`) REFERENCES `crop_group` (`id`),
  ADD CONSTRAINT `crops_indicator_id_59d75430_fk_indicators_id` FOREIGN KEY (`indicator_id`) REFERENCES `indicators` (`id`),
  ADD CONSTRAINT `crops_season_id_656e1663_fk_seasons_id` FOREIGN KEY (`season_id`) REFERENCES `seasons` (`id`),
  ADD CONSTRAINT `crops_unit_id_766b18ba_fk_unit_id` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`);

--
-- Constraints for table `crop_group`
--
ALTER TABLE `crop_group`
  ADD CONSTRAINT `crop_group_indicator_id_093f1afa_fk_indicators_id` FOREIGN KEY (`indicator_id`) REFERENCES `indicators` (`id`),
  ADD CONSTRAINT `crop_group_years_id_00cf8cba_fk_years_id` FOREIGN KEY (`years_id`) REFERENCES `years` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `indicators`
--
ALTER TABLE `indicators`
  ADD CONSTRAINT `indicators_age_range_id_8d372468_fk_age_range_id` FOREIGN KEY (`age_range_id`) REFERENCES `age_range` (`id`),
  ADD CONSTRAINT `indicators_district_id_92145029_fk_district_id` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`),
  ADD CONSTRAINT `indicators_gender_id_0732920c_fk_gender_id` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
  ADD CONSTRAINT `indicators_group_id_d99e8008_fk_indicators_groups_id` FOREIGN KEY (`group_id`) REFERENCES `indicators_groups` (`id`),
  ADD CONSTRAINT `indicators_province_id_7ce09d9a_fk_province_id` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`),
  ADD CONSTRAINT `indicators_sector_of_employment_dbb5c4a2_fk_sectors_o` FOREIGN KEY (`sector_of_employment_id`) REFERENCES `sectors_of_employment` (`id`),
  ADD CONSTRAINT `indicators_source_id_2692e819_fk_source_id` FOREIGN KEY (`source_id`) REFERENCES `source` (`id`),
  ADD CONSTRAINT `indicators_theme_id_3eed8133_fk_themes_id` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`),
  ADD CONSTRAINT `indicators_unit_id_1d39fc7c_fk_unit_id` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`),
  ADD CONSTRAINT `indicators_urbanisation_id_76f4b180_fk_urbanization_id` FOREIGN KEY (`urbanisation_id`) REFERENCES `urbanization` (`id`),
  ADD CONSTRAINT `indicators_year_id_03043d5c_fk_years_id` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
