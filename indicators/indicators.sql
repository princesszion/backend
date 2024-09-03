-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2023 at 03:27 PM
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

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `indicators`
--
ALTER TABLE `indicators`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

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
